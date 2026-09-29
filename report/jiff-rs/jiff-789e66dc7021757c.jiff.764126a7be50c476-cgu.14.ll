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
begin_hunk_1_@_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCsa9sSWSfjDbm_4jiff:bb.a

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
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.m = icmp samesign ult i8 %i.i, 7
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.014.1.insert.ext.i = zext nneg i8 %i.i to i24
  %.sroa.014.1.insert.shift.i = shl nuw nsw i24 %.sroa.014.1.insert.ext.i, 8
  %.sroa.014.1.insert.insert.i = or disjoint i24 %.sroa.014.1.insert.shift.i, 8
  %i.n = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.014.1.insert.insert.i) #24, !noalias !313
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.o = zext nneg i8 %i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr @31, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !range !6, !alias.scope !312, !noalias !314, !noundef !4 ; 2 uses
  %i.r = add i64 %i.k, -1000000001
  %or.cond.i30 = icmp ult i64 %i.r, -1000000000
  br i1 %or.cond.i30, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.d
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %.thread.i
    i8 1, label %3
    i8 2, label %bb.e
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

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i: ; preds = %bb.d
  %i.s = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 10), !noalias !313
  br label %bb.g

default.unreachable:                              ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  unreachable

3:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %.thread.i

4:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.e

5:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.e

6:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.e

7:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.e

8:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.e

9:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.e

bb.e:                                             ; preds = %9, %8, %7, %6, %5, %4, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.08.0.i = phi i64 [ 2, %9 ], [ 60, %8 ], [ 1000, %7 ], [ 86400, %4 ], [ 1440, %5 ], [ 24, %6 ], [ 86400000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ] ; 2 uses
  %i.t = icmp samesign ult i64 %i.k, %.sroa.08.0.i
  br i1 %i.t, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  %.sroa.020.1.insert.ext.i = zext nneg i8 %i.q to i24
  %.sroa.020.1.insert.shift.i = shl nuw nsw i24 %.sroa.020.1.insert.ext.i, 8
  %.sroa.020.2.insert.ext.i = zext nneg i8 %i.i to i24
  %.sroa.020.2.insert.shift.i = shl nuw nsw i24 %.sroa.020.2.insert.ext.i, 16
  %.sroa.020.1.insert.insert.i = or disjoint i24 %.sroa.020.2.insert.shift.i, %.sroa.020.1.insert.shift.i
  %.sroa.020.2.insert.insert.i = or disjoint i24 %.sroa.020.1.insert.insert.i, 3
  %i.u = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.020.2.insert.insert.i) #24, !noalias !313
  br label %bb.g

.thread.i:                                        ; preds = %bb.e, %3, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.08.028.i = phi i64 [ %.sroa.08.0.i, %bb.e ], [ 86400000000000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 86400000000, %3 ]
  %i.v = urem i64 %.sroa.08.028.i, %i.k
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.o, label %bb.f

bb.g:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, %bb.f, %bb.c
  %.sroa.9.1.ph = phi ptr [ %i.n, %bb.c ], [ %i.u, %bb.f ], [ %i.s, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !315
  store ptr %.sroa.9.1.ph, ptr %i.c, align 8, !noalias !315
  %i.x = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 0)
          to label %bb.n unwind label %bb.h, !noalias !315

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.z = icmp eq ptr %.sroa.9.1.ph, null
  br i1 %i.z, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = atomicrmw sub ptr %.sroa.9.1.ph, i64 1 release, align 8, !noalias !316
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %common.resume

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #24
          to label %common.resume unwind label %bb.k, !noalias !315

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !315
  unreachable

common.resume:                                    ; preds = %bb.ak, %bb.al, %bb.am, %bb.ae, %bb.af, %bb.ag, %bb.aa, %bb.y, %bb.z, %bb.h, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.dl, %bb.ae ], [ %i.y, %bb.h ], [ %i.cr, %bb.aa ], [ %i.y, %bb.j ], [ %i.y, %bb.i ], [ %i.cr, %bb.z ], [ %i.cr, %bb.y ], [ %i.dl, %bb.ag ], [ %i.dl, %bb.af ], [ %i.du, %bb.am ], [ %i.du, %bb.al ], [ %i.du, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit, %bb.r, %bb.ao, %bb.l
  %.sink = phi i32 [ 1, %bb.n ], [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit ], [ 1, %bb.r ], [ 0, %bb.ao ], [ 0, %bb.l ]
  store i32 %.sink, ptr %0, align 8
  ret void

bb.n:                                             ; preds = %bb.g
  %i.ae = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.9.1.ph, ptr noundef %i.x), !noalias !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !315
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  br label %bb.m

bb.o:                                             ; preds = %.thread.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.al = load i8, ptr %i.ak, align 2, !noundef !4
  %i.am = load i32, ptr %2, align 4, !noundef !4
  %i.an = sext i8 %i.ah to i64
  %i.ao = mul nsw i64 %i.an, 3600000000000
  %i.ap = sext i8 %i.aj to i64
  %i.aq = mul nsw i64 %i.ap, 60000000000
  %i.ar = add nsw i64 %i.aq, %i.ao
  %i.as = sext i8 %i.al to i64
  %i.at = mul nsw i64 %i.as, 1000000000
  %i.au = add nsw i64 %i.ar, %i.at
  %i.av = sext i32 %i.am to i64
  %i.aw = add nsw i64 %i.au, %i.av                ; 2 uses
  %i.ax = sdiv i64 %i.aw, 1000000000
  %i.ay = srem i64 %i.aw, 1000000000
  %i.az = trunc nsw i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i16, ptr %i.ba, align 4, !noundef !4 ; 2 uses
  %.sroa.02.0 = tail call i64 @llvm.scmp.i64.i16(i16 %i.bb, i16 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !range !12, !noundef !4
  %i.be = tail call { i64, i32 } @_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit8duration(i8 noundef %i.i), !noalias !317 ; 2 uses
  %i.bf = extractvalue { i64, i32 } %i.be, 0
  %i.bg = extractvalue { i64, i32 } %i.be, 1
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.k, %i.bh                 ; 2 uses
  %i.bj = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.bf, i64 %i.k) ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %bb.q, label %bb.p, !prof !8

bb.p:                                             ; preds = %bb.o
  %i.bl = extractvalue { i64, i1 } %i.bj, 0
  %i.bm = sdiv i64 %i.bi, 1000000000
  %i.bn = srem i64 %i.bi, 1000000000
  %i.bo = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bl, i64 %i.bm) ; 2 uses
  %i.bp = extractvalue { i64, i1 } %i.bo, 1
  br i1 %i.bp, label %bb.q, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit, !prof !8

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27, !noalias !317
  unreachable

_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit: ; preds = %bb.p
  %i.bq = trunc nsw i64 %i.bn to i32
  %i.br = extractvalue { i64, i1 } %i.bo, 0
  call void @_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode17round_by_duration(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i8 noundef range(i8 0, 9) %i.bd, i64 noundef %i.ax, i32 noundef %i.az, i64 noundef %i.br, i32 noundef %i.bq), !noalias !318
  %i.bs = load i64, ptr %i.g, align 8, !range !13, !noundef !4
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit
  %i.bv = load ptr, ptr %i.bu, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bv, ptr %i.bw, align 8
  br label %bb.m

bb.s:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit
  %i.bx = load i64, ptr %i.bu, align 8, !noundef !4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ca = sdiv i64 %i.bx, 86400
  %i.cb = srem i64 %i.bx, 86400                   ; 3 uses
  %i.cc = mul nsw i64 %i.ca, %.sroa.02.0
  %.not.i.i = icmp slt i64 %i.cb, 0
  br i1 %.not.i.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.s
  %i.cd = icmp eq i64 %i.cb, 0
  br i1 %i.cd, label %bb.v, label %bb.u

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread: ; preds = %bb.s
  %i.ce = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 2), !noalias !319
  br label %bb.x

bb.t:                                             ; preds = %bb.v
  %i.cf = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 5631) #24, !noalias !319
  br label %bb.x

bb.u:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.689.0.extract.trunc.i = trunc nuw nsw i64 %i.cb to i32 ; 2 uses
  %i.cg = udiv i32 %.sroa.689.0.extract.trunc.i, 3600 ; 2 uses
  %i.ch = urem i32 %.sroa.689.0.extract.trunc.i, 3600 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.w, %bb.u, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.629.0.i = phi i32 [ 0, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ %i.cg, %bb.u ], [ %i.cq, %bb.w ]
  %or.cond1.i = icmp ult i32 %i.bz, 1000000000
  br i1 %or.cond1.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit, label %bb.t, !prof !9

bb.w:                                             ; preds = %bb.u
  %.lhs.trunc = trunc nuw nsw i32 %i.ch to i16    ; 2 uses
  %i.cj = udiv i16 %.lhs.trunc, 60
  %i.ck = urem i16 %.lhs.trunc, 60
  %i.cl = zext nneg i16 %i.ck to i32
  %i.cm = shl nuw nsw i16 %i.cj, 8
  %i.cn = zext nneg i16 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cl, 16
  %i.cp = or disjoint i32 %i.co, %i.cn
  %i.cq = or i32 %i.cp, %i.cg
  br label %bb.v

bb.x:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread, %bb.t
  %.sroa.739.0.ph = phi ptr [ %i.cf, %bb.t ], [ %i.ce, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !320
  store ptr %.sroa.739.0.ph, ptr %i.d, align 8, !noalias !320
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
          to label %bb.ab unwind label %bb.y, !noalias !321

bb.y:                                             ; preds = %bb.x
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  call void @llvm.experimental.noalias.scope.decl(metadata !323), !noalias !321
  %i.cs = load ptr, ptr %i.d, align 8, !alias.scope !324, !noalias !321, !noundef !4 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %common.resume, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !325
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.aa, label %common.resume

bb.aa:                                            ; preds = %bb.z
  fence acquire, !noalias !321
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24
          to label %common.resume unwind label %bb.ac

bb.ab:                                            ; preds = %bb.x
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !321
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit: ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !4
  %i.cz = sext i8 %i.cy to i64
  %i.da = add nsw i64 %i.cc, -1
  %i.db = add nsw i64 %i.da, %i.cz                ; 4 uses
  %i.dc = add nsw i64 %i.db, -7304485
  %or.cond.i28 = icmp ult i64 %i.dc, -14608969
  br i1 %or.cond.i28, label %bb.ad, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.de = load i8, ptr %i.dd, align 2, !noundef !4
  %.sroa.423.0.insert.ext = zext i8 %i.de to i32
  %.sroa.423.0.insert.shift = shl nuw nsw i32 %.sroa.423.0.insert.ext, 16
  %.sroa.022.0.insert.ext = zext i16 %i.bb to i32
  %.sroa.423.0.insert.insert = or disjoint i32 %.sroa.423.0.insert.shift, %.sroa.022.0.insert.ext
  %.sroa.022.0.insert.insert = or disjoint i32 %.sroa.423.0.insert.insert, 16777216
  %.sroa.622.0.extract.trunc.i = trunc nsw i64 %i.db to i32 ; 2 uses
  %i.df = icmp slt i64 %i.db, 0
  %i.dg = sub nsw i32 0, %.sroa.622.0.extract.trunc.i
  %.sroa.016.0.i = select i1 %i.df, i32 %i.dg, i32 %.sroa.622.0.extract.trunc.i ; 2 uses
  %i.dh = icmp eq i32 %.sroa.016.0.i, 0
  %masksel.i = select i1 %i.dh, i16 0, i16 64
  %.sroa.0.0.i.i = tail call i8 @llvm.scmp.i8.i64(i64 %i.db, i64 0)
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
  %i.di = load i16, ptr %i.f, align 8, !range !10, !noundef !4
  %i.dj = trunc nuw i16 %i.di to i1
  br i1 %i.dj, label %bb.aj, label %bb.ao

bb.ad:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit
  %i.dk = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 27), !noalias !326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !327
  store ptr %i.dk, ptr %i.b, align 8, !noalias !327
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28
          to label %bb.ah unwind label %bb.ae, !noalias !328

bb.ae:                                            ; preds = %bb.ad
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.dm = load ptr, ptr %i.b, align 8, !alias.scope !331, !noalias !327, !noundef !4 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %common.resume, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !332
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.ag, label %common.resume

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %common.resume unwind label %bb.ai, !noalias !328

bb.ah:                                            ; preds = %bb.ad
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !328
  unreachable

bb.aj:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ds, ptr %i.a, align 8
  %i.dt = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error5civilNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 0)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dv = icmp eq ptr %i.ds, null
  br i1 %i.dv, label %common.resume, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dw = atomicrmw sub ptr %i.ds, i64 1 release, align 8, !noalias !333
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.am, label %common.resume

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtB8_5civil5ErrorE0Ba_.exit: ; preds = %bb.aj
  %i.dz = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ds, ptr noundef %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dz, ptr %i.ea, align 8
  br label %bb.m

bb.ao:                                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.025.0.copyload = load i32, ptr %i.eb, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bz, ptr %i.ec, align 4
  %.sroa_idx37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.629.0.i, ptr %.sroa_idx37, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.025.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.m
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
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = zext nneg i8 %i.e to i64
  %i.j = getelementptr inbounds nuw i8, ptr @33, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !range !6, !alias.scope !363, !noalias !365, !noundef !4 ; 2 uses
  %i.l = add i64 %i.f, -1000000001
  %or.cond.i18 = icmp ult i64 %i.l, -1000000000
  br i1 %or.cond.i18, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.c
  switch i8 %i.k, label %default.unreachable [
    i8 0, label %.thread.i
    i8 1, label %3
    i8 2, label %bb.d
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
  %i.m = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 10), !noalias !364
  br label %bb.f

default.unreachable:                              ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  unreachable

3:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %.thread.i

4:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.d

5:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.d

6:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.d

7:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.d

8:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.d

9:                                                ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.d

bb.d:                                             ; preds = %9, %8, %7, %6, %5, %4, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.08.0.i = phi i64 [ 2, %9 ], [ 60, %8 ], [ 1000, %7 ], [ 86400, %4 ], [ 1440, %5 ], [ 24, %6 ], [ 86400000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ] ; 2 uses
  %i.n = icmp samesign ult i64 %i.f, %.sroa.08.0.i
  br i1 %i.n, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %.thread.i, %bb.d
  %.sroa.020.1.insert.ext.i = zext nneg i8 %i.k to i24
  %.sroa.020.1.insert.shift.i = shl nuw nsw i24 %.sroa.020.1.insert.ext.i, 8
  %.sroa.020.2.insert.ext.i = zext nneg i8 %i.e to i24
  %.sroa.020.2.insert.shift.i = shl nuw nsw i24 %.sroa.020.2.insert.ext.i, 16
  %.sroa.020.1.insert.insert.i = or disjoint i24 %.sroa.020.2.insert.shift.i, %.sroa.020.1.insert.shift.i
  %.sroa.020.2.insert.insert.i = or disjoint i24 %.sroa.020.1.insert.insert.i, 3
  %i.o = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.020.2.insert.insert.i) #24, !noalias !364
  br label %bb.f

.thread.i:                                        ; preds = %bb.d, %3, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.08.028.i = phi i64 [ %.sroa.08.0.i, %bb.d ], [ 86400000000000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 86400000000, %3 ]
  %i.p = urem i64 %.sroa.08.028.i, %i.f
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.l, label %bb.e

bb.f:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, %bb.e, %bb.b
  %.sroa.9.1.ph = phi ptr [ %i.h, %bb.b ], [ %i.o, %bb.e ], [ %i.m, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !366
  store ptr %.sroa.9.1.ph, ptr %i.a, align 8, !noalias !366
  %i.r = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 4)
          to label %bb.k unwind label %bb.g, !noalias !366

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.t = icmp eq ptr %.sroa.9.1.ph, null
  br i1 %i.t, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = atomicrmw sub ptr %.sroa.9.1.ph, i64 1 release, align 8, !noalias !367
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %common.resume unwind label %bb.j, !noalias !366

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !366
  unreachable

common.resume:                                    ; preds = %bb.z, %bb.x, %bb.y, %bb.g, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.s, %bb.i ], [ %i.s, %bb.h ], [ %i.cd, %bb.y ], [ %i.cd, %bb.x ], [ %i.cd, %bb.z ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.f
  %i.x = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sroa.9.1.ph, ptr noundef %i.r), !noalias !366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !366
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  br label %bb.ac

bb.l:                                             ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !range !12, !noundef !4
  %i.ab = shl i64 %2, 24
  %i.ac = ashr i64 %i.ab, 56
  %i.ad = mul nsw i64 %i.ac, 3600000000000
  %i.ae = shl i64 %2, 16
  %i.af = ashr i64 %i.ae, 56
  %i.ag = mul nsw i64 %i.af, 60000000000
  %i.ah = shl i64 %2, 8
  %i.ai = ashr i64 %i.ah, 56
  %i.aj = mul nsw i64 %i.ai, 1000000000
  %sext = shl i64 %2, 32
  %i.ak = ashr exact i64 %sext, 32
  %i.al = add nsw i64 %i.ag, %i.ak
  %i.am = add nsw i64 %i.al, %i.ad
  %i.an = add nsw i64 %i.am, %i.aj                ; 2 uses
  %i.ao = sdiv i64 %i.an, 1000000000
  %i.ap = srem i64 %i.an, 1000000000
  %i.aq = trunc nsw i64 %i.ap to i32
  %i.ar = tail call { i64, i32 } @_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit8duration(i8 noundef %i.e), !noalias !368 ; 2 uses
  %i.as = extractvalue { i64, i32 } %i.ar, 0
  %i.at = extractvalue { i64, i32 } %i.ar, 1
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.f, %i.au                 ; 2 uses
  %i.aw = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.as, i64 %i.f) ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  br i1 %i.ax, label %bb.n, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  %i.ay = extractvalue { i64, i1 } %i.aw, 0
  %i.az = sdiv i64 %i.av, 1000000000
  %i.ba = srem i64 %i.av, 1000000000
  %i.bb = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ay, i64 %i.az) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1
  br i1 %i.bc, label %bb.n, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit, !prof !8

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27, !noalias !368
  unreachable

_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit: ; preds = %bb.m
  %i.bd = trunc nsw i64 %i.ba to i32
  %i.be = extractvalue { i64, i1 } %i.bb, 0
  call void @_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode17round_by_duration(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i8 noundef range(i8 0, 9) %i.aa, i64 noundef %i.ao, i32 noundef %i.aq, i64 noundef %i.be, i32 noundef %i.bd), !noalias !369
  %i.bf = load i64, ptr %i.c, align 8, !range !13, !noundef !4
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit
  %i.bi = load ptr, ptr %i.bh, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8
  br label %bb.ac

bb.p:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit
  %i.bk = load i64, ptr %i.bh, align 8, !noundef !4 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bn = icmp eq i64 %i.bk, 86400
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 0, ptr %i.bo, align 4
  br label %bb.ac

bb.r:                                             ; preds = %bb.p
  %or.cond = icmp ugt i64 %i.bk, 86399
  br i1 %or.cond, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.r
  %i.bp = icmp eq i64 %i.bk, 0
  br i1 %i.bp, label %bb.u, label %bb.t

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread: ; preds = %bb.r
  %i.bq = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 2), !noalias !370
  br label %bb.w

bb.s:                                             ; preds = %bb.u
  %i.br = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 5631) #24, !noalias !370
  br label %bb.w

bb.t:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.689.0.extract.trunc.i = trunc nuw nsw i64 %i.bk to i32 ; 2 uses
  %i.bs = udiv i32 %.sroa.689.0.extract.trunc.i, 3600 ; 2 uses
  %i.bt = urem i32 %.sroa.689.0.extract.trunc.i, 3600 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.t, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.629.0.i = phi i32 [ 0, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ %i.bs, %bb.t ], [ %i.cc, %bb.v ]
  %or.cond1.i = icmp ult i32 %i.bm, 1000000000
  br i1 %or.cond1.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit, label %bb.s, !prof !9

bb.v:                                             ; preds = %bb.t
  %.lhs.trunc = trunc nuw nsw i32 %i.bt to i16    ; 2 uses
  %i.bv = udiv i16 %.lhs.trunc, 60
  %i.bw = urem i16 %.lhs.trunc, 60
  %i.bx = zext nneg i16 %i.bw to i32
  %i.by = shl nuw nsw i16 %i.bv, 8
  %i.bz = zext nneg i16 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bx, 16
  %i.cb = or disjoint i32 %i.ca, %i.bz
  %i.cc = or disjoint i32 %i.cb, %i.bs
  br label %bb.u

bb.w:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread, %bb.s
  %.sroa.727.0.ph = phi ptr [ %i.br, %bb.s ], [ %i.bq, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b14CivilDaySecondNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !371
  store ptr %.sroa.727.0.ph, ptr %i.b, align 8, !noalias !371
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
          to label %bb.aa unwind label %bb.x, !noalias !372

bb.x:                                             ; preds = %bb.w
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.experimental.noalias.scope.decl(metadata !374), !noalias !372
  %i.ce = load ptr, ptr %i.b, align 8, !alias.scope !375, !noalias !372, !noundef !4 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !376
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.z, label %common.resume

bb.z:                                             ; preds = %bb.y
  fence acquire, !noalias !372
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %common.resume unwind label %bb.ab

bb.aa:                                            ; preds = %bb.w
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !372
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit: ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bm, ptr %i.cj, align 4
  %.sroa_idx25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.629.0.i, ptr %.sroa_idx25, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.k, %bb.q, %bb.o, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit
  %.sink = phi i32 [ 1, %bb.k ], [ 0, %bb.q ], [ 1, %bb.o ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit ]
  store i32 %.sink, ptr %0, align 8
  ret void
end_hunk_1
