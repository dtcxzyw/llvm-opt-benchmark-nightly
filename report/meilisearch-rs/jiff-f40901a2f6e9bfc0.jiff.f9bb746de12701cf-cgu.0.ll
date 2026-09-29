Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4035
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 60
begin_hunk_0
@1866 = private unnamed_addr constant [82 x i8] c"failed to parse fractional second component (up to 9 digits, nanosecond precision)", align 1
@1867 = private unnamed_addr constant [27 x i8] c"failed to parse hour number", align 1
@1868 = private unnamed_addr constant [36 x i8] c"failed to parse ISO 8601 week number", align 1
@1869 = private unnamed_addr constant [34 x i8] c"failed to parse ISO 8601 week year", align 1
@1870 = private unnamed_addr constant [42 x i8] c"failed to parse 2-digit ISO 8601 week year", align 1
@1871 = private unnamed_addr constant [29 x i8] c"failed to parse minute number", align 1
@1872 = private unnamed_addr constant [40 x i8] c"failed to parse Monday-based week number", align 1
@1873 = private unnamed_addr constant [28 x i8] c"failed to parse month number", align 1
@1874 = private unnamed_addr constant [29 x i8] c"failed to parse second number", align 1
@1875 = private unnamed_addr constant [40 x i8] c"failed to parse Sunday-based week number", align 1
@1876 = private unnamed_addr constant [43 x i8] c"failed to parse Unix timestamp (in seconds)", align 1
@1877 = private unnamed_addr constant [30 x i8] c"failed to parse weekday number", align 1
@1878 = private unnamed_addr constant [20 x i8] c"failed to parse year", align 1
@1879 = private unnamed_addr constant [28 x i8] c"failed to parse 2-digit year", align 1
@1880 = private unnamed_addr constant [23 x i8] c"unrecognized month name", align 1
@1881 = private unnamed_addr constant [33 x i8] c"unrecognized weekday abbreviation", align 1
@1882 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/jiff-0.2.28/src/error/tz/zic.rs\00", align 1
@1883 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1882, [16 x i8] c"d\00\00\00\00\00\00\00\0D\00\00\00\0D\00\00\00" }>, align 8
@1884 = private unnamed_addr constant [33 x i8] c"invalid fraction, no digits found", align 1
@1885 = private unnamed_addr constant [8 x i8] c"\09\00\00\00\00\00\00\00", align 8
@1886 = private unnamed_addr constant [43 x i8] c"invalid fraction, too many digits (at most ", align 1
@1887 = private unnamed_addr constant [13 x i8] c" are allowed)", align 1
@1888 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @1886, [8 x i8] c"+\00\00\00\00\00\00\00", ptr @1887, [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
@1889 = private unnamed_addr constant [47 x i8] c"invalid fractional digit, expected 0-9 but got ", align 1
@1890 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @1889, [8 x i8] c"/\00\00\00\00\00\00\00" }>, align 8
@1891 = private unnamed_addr constant [54 x i8] c"fractional number too big to parse into 64-bit integer", align 1
@1892 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h62031f1106e1ddcfE" }>, align 8
@1893 = private unnamed_addr constant [4 x i8] c"Date", align 1
@1894 = private unnamed_addr constant [12 x i8] c"ExpectedTime", align 1
@1895 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he9eae7a1cebcb1a5E" }>, align 8
@1896 = private unnamed_addr constant [59 x i8] c"incomplete time in POSIX time zone string (missing minutes)", align 1
@1897 = private unnamed_addr constant [59 x i8] c"incomplete time in POSIX time zone string (missing seconds)", align 1
@1898 = private unnamed_addr constant [59 x i8] c"failed to parse sign for time offset POSIX time zone string", align 1
@1899 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha77a1e0061996a9aE" }>, align 8
@1900 = private unnamed_addr constant [18 x i8] c"PosixTimeZoneError", align 1
@1901 = private unnamed_addr constant [30 x i8] c"invalid week-of-month digits: ", align 1
@1902 = private unnamed_addr constant [64 x i8] c"parsed week-of-month, but it's not in supported range of `1..=5`", align 1
@1903 = private unnamed_addr constant [21 x i8] c"ExceedsLocalTimeTypes", align 1
@1904 = private unnamed_addr constant [20 x i8] c"number of days for `", align 1
@1905 = private unnamed_addr constant [36 x i8] c"` is invalid, must be in range `1..=", align 1
@1906 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @1904, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @1905, [8 x i8] c"$\00\00\00\00\00\00\00", ptr @1111, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@1907 = private unnamed_addr constant <{ [2 x i8], [14 x i8], [4 x i8], [12 x i8], [12 x i8], [4 x i8], [2 x i8], [14 x i8], [2 x i8], [14 x i8], [12 x i8], [4 x i8] }> <{ [2 x i8] c"\02\00", [14 x i8] undef, [4 x i8] c"\00\00\04\00", [12 x i8] undef, [12 x i8] c"\00\00\00\00\00\00\00\00 \00\00\E9", [4 x i8] undef, [2 x i8] c"\02\00", [14 x i8] undef, [2 x i8] c"\02\00", [14 x i8] undef, [12 x i8] c"\01\00\00\00\00\00\00\00 \00\00\E0", [4 x i8] undef }>, align 8
@1908 = private unnamed_addr constant [53 x i8] c"number of days is invalid, must be in range `1..=365`", align 1
@1909 = private unnamed_addr constant [21 x i8] c"parameter 'day' for `", align 1
@1910 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @1909, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @190, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @1905, [8 x i8] c"$\00\00\00\00\00\00\00", ptr @1111, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@1911 = private unnamed_addr constant [144 x i8] c"\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\E9\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00 \00\00\E9\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00 \00\00\E0\00\00\00\00", align 8
@1912 = private unnamed_addr constant [37 x i8] c"adding seconds to datetime overflowed", align 1
@1913 = private unnamed_addr constant [22 x i8] c"day of year is invalid", align 1
@1914 = private unnamed_addr constant [4 x i8] c"}K\BD\FF", align 4
@1915 = private unnamed_addr constant [4 x i8] c"\A0\C0,\00", align 4
@1916 = private unnamed_addr constant [70 x i8] c"adding to epoch day resulted in a value outside the allowed range of `", align 1
@1917 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @1916, [8 x i8] c"F\00\00\00\00\00\00\00", ptr @1594, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @1111, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@1918 = private unnamed_addr constant [52 x i8] c"adding to epoch day overflowed 32-bit signed integer", align 1
@1919 = private unnamed_addr constant [68 x i8] c"invalid nth weekday of month, must be non-zero and in range `-5..=5`", align 1
@1920 = private unnamed_addr constant [125 x i8] c"returning tomorrow for `9999-12-31` is not possible because it is greater than Jiff's supported\0A                 maximum date", align 1
@1921 = private unnamed_addr constant [116 x i8] c"creating a date for a year following `9999` is not possible because it is greater than Jiff's supported maximum date", align 1
@1922 = private unnamed_addr constant [114 x i8] c"creating a date for a year preceding `-9999` is not possible because it is less than Jiff's supported minimum date", align 1
@1923 = private unnamed_addr constant [124 x i8] c"returning yesterday for `-9999-01-01` is not possible because it is less than Jiff's supported\0A                 minimum date", align 1
@1924 = private unnamed_addr constant [21 x i8] c"ZoneInfo(unavailable)", align 1
@1925 = private unnamed_addr constant [23 x i8] c"requires date to format", align 1
@1926 = private unnamed_addr constant [57 x i8] c"requires instant (a timestamp or a date, time and offset)", align 1
@1927 = private unnamed_addr constant [25 x i8] c"requires time zone offset", align 1
@1928 = private unnamed_addr constant [23 x i8] c"requires time to format", align 1
@1929 = private unnamed_addr constant [34 x i8] c"requires IANA time zone identifier", align 1
@1930 = private unnamed_addr constant [80 x i8] c"requires IANA time zone identifier or time zone offset, but neither were present", align 1
@1931 = private unnamed_addr constant [45 x i8] c"invalid format string, it must be valid UTF-8", align 1
@1932 = private unnamed_addr constant [37 x i8] c"zero precision with %f is not allowed", align 1
@1933 = private unnamed_addr constant [37 x i8] c"zero precision with %N is not allowed", align 1
@1934 = private unnamed_addr constant [51 x i8] c"expected digit after `-` sign, but got end of input", align 1
@1935 = private unnamed_addr constant [51 x i8] c"expected digit after `+` sign, but got end of input", align 1
@1936 = private unnamed_addr constant [26 x i8] c"ExpectedDayOfWeekAfterWeek", align 1
@1937 = private unnamed_addr constant [21 x i8] c"ExpectedDotAfterMonth", align 1
@1938 = private unnamed_addr constant [20 x i8] c"ExpectedDotAfterWeek", align 1
@1939 = private unnamed_addr constant [22 x i8] c"ExpectedWeekAfterMonth", align 1
@1940 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c3c0a383a761ea9E" }>, align 8
@1941 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcb138571ab6c00cdE" }>, align 8
@1942 = private unnamed_addr constant [11 x i8] c"WeekOfMonth", align 1
@1943 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hda71a0de0e84a3deE" }>, align 8
@1944 = private unnamed_addr constant [7 x i8] c"Weekday", align 1
@1945 = private unnamed_addr constant [4 x i8] c"a\92\FE\FF", align 4
@1946 = private unnamed_addr constant [4 x i8] c"\9Fm\01\00", align 4
@1947 = private unnamed_addr constant [59 x i8] c"found local time type with out-of-bounds time zone offset: ", align 1
@1948 = private unnamed_addr constant [27 x i8] c", Jiff's allowed range is `", align 1
@1949 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @1947, [8 x i8] c";\00\00\00\00\00\00\00", ptr @1948, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @1594, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @1111, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@1950 = private unnamed_addr constant [11 x i8] c"ForDateTime", align 1
@1951 = private unnamed_addr constant [9 x i8] c"ForOffset", align 1
@1952 = private unnamed_addr constant [17 x i8] c"ForSignedDuration", align 1
@1953 = private unnamed_addr constant [7 x i8] c"ForSpan", align 1
@1954 = private unnamed_addr constant [7 x i8] c"ForTime", align 1
@1955 = private unnamed_addr constant [12 x i8] c"ForTimestamp", align 1
@1956 = private unnamed_addr constant [126 x i8] c"expected time specification after `/` following a date\0A                 specification in a POSIX time zone DST transition rule", align 1
@1957 = private unnamed_addr constant [44 x i8] c"failed to parse DST time zone abbreviation: ", align 1
@1958 = private unnamed_addr constant [49 x i8] c"failed to parse standard time zone abbreviation: ", align 1
@1959 = private unnamed_addr constant [62 x i8] c"an empty string is not a valid POSIX time zone transition rule", align 1
@1960 = private unnamed_addr constant [63 x i8] c"expected `,` after parsing DST offset in POSIX time zone string", align 1
@1961 = private unnamed_addr constant [141 x i8] c"found DST abbreviation in POSIX time zone string, but no transition rule (this is technically allowed by POSIX, but has unspecified behavior)", align 1
@1962 = private unnamed_addr constant [152 x i8] c"found DST abbreviation and offset in POSIX time zone string, but no transition rule (this is technically allowed by POSIX, but has unspecified behavior)", align 1
@1963 = private unnamed_addr constant [92 x i8] c"after parsing DST offset in POSIX time zone string, found end of string after a trailing `,`", align 1
@1964 = private unnamed_addr constant [135 x i8] c"expected entire POSIX TZ string to be a valid time zone transition rule, but found data after parsing a valid time zone transition rule", align 1
@1965 = private unnamed_addr constant [28 x i8] c"failed to parse DST offset: ", align 1
@1966 = private unnamed_addr constant [33 x i8] c"failed to parse standard offset: ", align 1
@1967 = private unnamed_addr constant [81 x i8] c"found time zone transition type index that exceeds the number of local time types", align 1
@1968 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/jiff-0.2.28/src/error/tz/system.rs\00", align 1
@1969 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1968, [16 x i8] c"g\00\00\00\00\00\00\00\0D\00\00\00\0D\00\00\00" }>, align 8
@1970 = private unnamed_addr constant [55 x i8] c"expected day-of-week after week in POSIX time zone rule", align 1
@1971 = private unnamed_addr constant [48 x i8] c"expected `.` after month in POSIX time zone rule", align 1
@1972 = private unnamed_addr constant [47 x i8] c"expected `.` after week in POSIX time zone rule", align 1
@1973 = private unnamed_addr constant [49 x i8] c"expected week after month in POSIX time zone rule", align 1
@1974 = private unnamed_addr constant [42 x i8] c"overflow when subtracting signed durations", align 1
@1975 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"g\00\00\00\00\00\00\00=\0A\00\00\0E\00\00\00" }>, align 8
@1976 = private unnamed_addr constant [24 x i8] c"failed rounding datetime", align 1
@1977 = private unnamed_addr constant [32 x i8] c"failed rounding time zone offset", align 1
@1978 = private unnamed_addr constant [31 x i8] c"failed rounding signed duration", align 1
@1979 = private unnamed_addr constant [20 x i8] c"failed rounding span", align 1
@1980 = private unnamed_addr constant [20 x i8] c"failed rounding time", align 1
@1981 = private unnamed_addr constant [25 x i8] c"failed rounding timestamp", align 1
@1982 = private unnamed_addr constant [38 x i8] c"invalid zero-based Julian day digits: ", align 1
@1983 = private unnamed_addr constant [74 x i8] c"parsed zero-based Julian day, but it's not in supported range of `0..=365`", align 1
@1984 = private unnamed_addr constant [10 x i8] c"InvalidEnd", align 1
@1985 = private unnamed_addr constant [13 x i8] c"InvalidLength", align 1
@1986 = private unnamed_addr constant [12 x i8] c"InvalidStart", align 1
@1987 = private unnamed_addr constant [10 x i8] c"MissingNul", align 1
@1988 = private unnamed_addr constant [25 x i8] c"Concatenated(unavailable)", align 1
@1989 = private unnamed_addr constant [7 x i8] c"TooLong", align 1
@1990 = private unnamed_addr constant [25 x i8] c"UnexpectedEndAfterOpening", align 1
@1991 = private unnamed_addr constant [18 x i8] c"UnexpectedLastByte", align 1
@1992 = private unnamed_addr constant [37 x i8] c"invalid one-based Julian day digits: ", align 1
@1993 = private unnamed_addr constant [73 x i8] c"parsed one-based Julian day, but it's not in supported range of `1..=365`", align 1
@1994 = private unnamed_addr constant [61 x i8] c"found invalid end of time zone designator for local time type", align 1
@1995 = private unnamed_addr constant [64 x i8] c"found invalid length of time zone designator for local time type", align 1
@1996 = private unnamed_addr constant [63 x i8] c"found invalid start of time zone designator for local time type", align 1
@1997 = private unnamed_addr constant [44 x i8] c"found invalid UTF-8 in time zone designators", align 1
@1998 = private unnamed_addr constant [54 x i8] c"could not find NUL terminator for time zone designator", align 1
@1999 = private unnamed_addr constant [49 x i8] c"quoted time zone abbreviation must be valid UTF-8", align 1
@2000 = private unnamed_addr constant [52 x i8] c"expected quoted time zone abbreviation with at most ", align 1
@2001 = private unnamed_addr constant [48 x i8] c" bytes, but found an abbreviation that is longer", align 1
@2002 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2000, [8 x i8] c"4\00\00\00\00\00\00\00", ptr @2001, [8 x i8] c"0\00\00\00\00\00\00\00" }>, align 8
@2003 = private unnamed_addr constant [109 x i8] c"expected quoted time zone abbreviation to have length of 3 or more bytes, but an abbreviation that is shorter", align 1
@2004 = private unnamed_addr constant [120 x i8] c"found non-empty quoted time zone abbreviation, but found end of input before an end-of-quoted abbreviation `>` character", align 1
@2005 = private unnamed_addr constant [155 x i8] c"found opening `<` quote for time zone abbreviation in POSIX time zone transition rule, and expected a name following it, but found the end of input instead", align 1
@2006 = private unnamed_addr constant [110 x i8] c"found non-empty quoted time zone abbreviation, but found did not find end-of-quoted abbreviation `>` character", align 1
@2007 = private unnamed_addr constant [51 x i8] c"unquoted time zone abbreviation must be valid UTF-8", align 1
@2008 = private unnamed_addr constant [54 x i8] c"expected unquoted time zone abbreviation with at most ", align 1
@2009 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2008, [8 x i8] c"6\00\00\00\00\00\00\00", ptr @2001, [8 x i8] c"0\00\00\00\00\00\00\00" }>, align 8
@2010 = private unnamed_addr constant [111 x i8] c"expected unquoted time zone abbreviation to have length of 3 or more bytes, but an abbreviation that is shorter", align 1
@2011 = private unnamed_addr constant [75 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/slice.rs\00", align 1
@2012 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2011, [16 x i8] c"J\00\00\00\00\00\00\00\BD\01\00\00\1D\00\00\00" }>, align 8
@2013 = private unnamed_addr constant [11 x i8] c"Designation", align 1
@2014 = private unnamed_addr constant [3 x i8] c"Dst", align 1
@2015 = private unnamed_addr constant [6 x i8] c"Offset", align 1
@2016 = private unnamed_addr constant [48 x i8] c"an integer number of seconds from the Unix epoch", align 1
@2017 = private unnamed_addr constant [1 x i8] c"<", align 1
@2018 = private unnamed_addr constant [1 x i8] c">", align 1
@2019 = private unnamed_addr constant [145 x i8] c"expected last transition in TZif file to have a time zone abbreviation matching the abbreviation derived from the POSIX time zone transition rule", align 1
@2020 = private unnamed_addr constant [127 x i8] c"expected last transition in TZif file to have a DST status matching the status derived from the POSIX time zone transition rule", align 1
@2021 = private unnamed_addr constant [125 x i8] c"expected last transition in TZif file to have DST offset matching the offset derived from the POSIX time zone transition rule", align 1
@2022 = private unnamed_addr constant [52 x i8] c"an integer number of nanoseconds from the Unix epoch", align 1
@"_ZN93_$LT$jiff..fmt..serde..span..friendly..compact..CompactSpan$u20$as$u20$core..fmt..Display$GT$3fmt7PRINTER17h33f3448656110b3aE" = internal constant <{ ptr, [5 x i8], [1 x i8], [1 x i8], [1 x i8], [2 x i8], [6 x i8] }> <{ ptr @12, [5 x i8] c"\03\05\00\01\00", [1 x i8] undef, [1 x i8] zeroinitializer, [1 x i8] undef, [2 x i8] zeroinitializer, [6 x i8] undef }>, align 8
@2023 = private unnamed_addr constant [53 x i8] c"an integer number of microseconds from the Unix epoch", align 1
@2024 = private unnamed_addr constant [53 x i8] c"an integer number of milliseconds from the Unix epoch", align 1
@2025 = private unnamed_addr constant [27 x i8] c"an unsigned duration string", align 1
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h01dd0fa585a46afeE" = private unnamed_addr constant [8 x i8] c"\02\0B\0E\16\14\0F\0F\11", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h01dd0fa585a46afeE.609" = private unnamed_addr constant [8 x ptr] [ptr @1121, ptr @1122, ptr @1123, ptr @1124, ptr @1125, ptr @1126, ptr @1127, ptr @1128], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h100e54c43c1f49eeE" = private unnamed_addr constant [9 x i8] c"\0C\0F\0E\0C\10\18\0B\12\11", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h100e54c43c1f49eeE.610" = private unnamed_addr constant [9 x ptr] [ptr @1722, ptr @1723, ptr @1724, ptr @1725, ptr @1726, ptr @1727, ptr @1728, ptr @1729, ptr @1730], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1409139cd9b5a257E" = private unnamed_addr constant [6 x i8] c"\0B\09\11\07\07\0C", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1409139cd9b5a257E.611" = private unnamed_addr constant [6 x ptr] [ptr @1950, ptr @1951, ptr @1952, ptr @1953, ptr @1954, ptr @1955], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1d8f4d7190df2357E" = private unnamed_addr constant [12 x i8] c"\10\11\11\0F\0F\10\0D\0E\0C\0A\0B\04", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1d8f4d7190df2357E.613" = private unnamed_addr constant [12 x ptr] [ptr @838, ptr @839, ptr @840, ptr @841, ptr @842, ptr @843, ptr @844, ptr @845, ptr @846, ptr @847, ptr @848, ptr @849], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h92c9b66cab48267aE" = private unnamed_addr constant [6 x i8] c"\0B\07\08\0D\19\12", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h92c9b66cab48267aE.615" = private unnamed_addr constant [6 x ptr] [ptr @1728, ptr @1989, ptr @982, ptr @969, ptr @1990, ptr @1991], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb9e12b3f8efcff11E" = private unnamed_addr constant [12 x i8] c"\15\0B\0D\15\10\10\0F\0E\10\0F\17\17", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb9e12b3f8efcff11E.616" = private unnamed_addr constant [12 x ptr] [ptr @1603, ptr @1604, ptr @1605, ptr @1606, ptr @1607, ptr @1608, ptr @1609, ptr @1610, ptr @1611, ptr @1612, ptr @1613, ptr @1614], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hbdf5d22f33596f98E" = private unnamed_addr constant [4 x i8] c"\05\0E\0C\06", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hbdf5d22f33596f98E.617" = private unnamed_addr constant [4 x ptr] [ptr @883, ptr @1120, ptr @1118, ptr @1119], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc4c319dc1012f201E" = private unnamed_addr constant [3 x i8] c"\0B\03\06", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc4c319dc1012f201E.618" = private unnamed_addr constant [3 x ptr] [ptr @2013, ptr @2014, ptr @2015], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hddb9fa976ecf983eE" = private unnamed_addr constant [4 x i8] c"\0F  \18", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hddb9fa976ecf983eE.619" = private unnamed_addr constant [4 x ptr] [ptr @1276, ptr @1277, ptr @1278, ptr @1279], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he37d6fc5fb35330aE" = private unnamed_addr constant [3 x i8] c"\08\10\0C", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he37d6fc5fb35330aE.620" = private unnamed_addr constant [3 x ptr] [ptr @863, ptr @864, ptr @865], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hee280ec5b62de6f4E" = private unnamed_addr constant [10 x i8] c"\0D\1C\11\18\11\1A\1A\19\14\17", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hee280ec5b62de6f4E.621" = private unnamed_addr constant [10 x ptr] [ptr @576, ptr @577, ptr @578, ptr @579, ptr @580, ptr @581, ptr @582, ptr @583, ptr @584, ptr @585], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf344332cb6557bd9E" = private unnamed_addr constant [3 x i8] c"\0B\07\08", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf344332cb6557bd9E.622" = private unnamed_addr constant [3 x ptr] [ptr @1728, ptr @1989, ptr @982], align 8
@switch.table._ZN4jiff2tz6offset11OffsetRound5round17h1fbcc31b77914064E = private unnamed_addr constant [3 x i16] [i16 1, i16 60, i16 3600], align 8
@switch.table._ZN4jiff2tz8timezone8TimeZone16kind_description17h8b73a6394c92358fE = private unnamed_addr constant [6 x i8] c"\04\03\0B\05\04\05", align 8
@switch.table._ZN4jiff2tz8timezone8TimeZone16kind_description17h8b73a6394c92358fE.624 = private unnamed_addr constant [6 x ptr] [ptr @92, ptr @89, ptr @90, ptr @91, ptr @92, ptr @93], align 8
@"switch.table._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$16fmt_month_abbrev17ha95669ebf8fdc6aeE" = private unnamed_addr constant [12 x ptr] [ptr @153, ptr @154, ptr @155, ptr @156, ptr @157, ptr @158, ptr @159, ptr @160, ptr @161, ptr @162, ptr @163, ptr @164], align 8
@"switch.table._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$6format17hba04c3c00b5ddfc4E.629" = private unnamed_addr constant [7 x ptr] [ptr @178, ptr @179, ptr @180, ptr @181, ptr @182, ptr @183, ptr @184], align 8
@"switch.table._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$6format17hba04c3c00b5ddfc4E.630" = private unnamed_addr constant [12 x ptr] [ptr @201, ptr @202, ptr @203, ptr @204, ptr @157, ptr @205, ptr @206, ptr @207, ptr @208, ptr @209, ptr @210, ptr @211], align 8
@"switch.table._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$6format17hba04c3c00b5ddfc4E.631" = private unnamed_addr constant [12 x i8] c"\07\08\05\05\03\04\04\06\09\07\08\08", align 8
@switch.table._ZN4jiff3fmt8friendly6parser10SpanParser5parse17hcd2ed01925437758E = private unnamed_addr constant [22 x i8] [i8 6, i8 poison, i8 poison, i8 poison, i8 5, i8 poison, i8 poison, i8 poison, i8 poison, i8 4, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 9], align 1
@switch.table._ZN4jiff3fmt8temporal6parser10SpanParser10parse_span3imp17hfc090d168009fba9E = private unnamed_addr constant [54 x i8] [i8 6, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 8, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 9, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 6, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 8, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 7, i8 poison, i8 9], align 1
@switch.table._ZN4jiff3fmt8temporal6parser10SpanParser16parse_time_units17h5396e4098003ff80E = private unnamed_addr constant [44 x i8] [i8 5, i8 poison, i8 poison, i8 poison, i8 poison, i8 4, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 5, i8 poison, i8 poison, i8 poison, i8 poison, i8 4, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 3], align 1
@switch.table._ZN4jiff4span18unit_start_and_end17hd45f832f0e91c650E = private unnamed_addr constant [10 x i8] c"\22 \1F\1E\1D\1C\1B\1A\19\18", align 1
@switch.table._ZN4jiff4span5Nudge18relative_invariant17hf5816d3597116f74E = private unnamed_addr constant [7 x i32] [i32 1, i32 1000, i32 1000000, i32 0, i32 0, i32 0, i32 0], align 8
@switch.table._ZN4jiff4span5Nudge18relative_invariant17hf5816d3597116f74E.633 = private unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 0, i32 1, i32 60, i32 3600, i32 86400], align 8
@switch.table._ZN4jiff4span9SpanTotal5total17h175a92fa97d17efcE.641 = private unnamed_addr constant [8 x i64] [i64 0, i64 0, i64 0, i64 1000000000, i64 60000000000, i64 3600000000000, i64 86400000000000, i64 604800000000000], align 8
@switch.table._ZN4jiff4span9SpanTotal5total17h175a92fa97d17efcE.643 = private unnamed_addr constant [6 x i64] [i64 0, i64 0, i64 0, i64 1000000000, i64 60000000000, i64 3600000000000], align 8
@switch.table._ZN4jiff4util5round9Increment10for_limits17h85c6ade5a369d533E = private unnamed_addr constant [12 x i64] [i64 86400000000000, i64 86400000000, i64 86400000, i64 86400, i64 1440, i64 24, i64 1000, i64 1000, i64 1000, i64 60, i64 60, i64 2], align 8
@switch.table._ZN4jiff5civil8datetime13DateTimeRound5round17ha18a1310279c63e0E = private unnamed_addr constant [8 x i32] [i32 1, i32 1000, i32 1000000, i32 0, i32 0, i32 0, i32 0, i32 0], align 8
@switch.table._ZN4jiff5civil8datetime13DateTimeRound5round17ha18a1310279c63e0E.645 = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 1, i32 60, i32 3600, i32 86400, i32 604800], align 8
@switch.table._ZN4jiff5zoned5Zoned12memory_usage17h23ac1346e53ad5faE = private unnamed_addr constant [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 368, i16 104], align 8
@switch.table._ZN4jiff9timestamp14TimestampRound5round17hfd5119684f5b84aaE = private unnamed_addr constant [6 x i64] [i64 86400000000000, i64 86400000000, i64 86400000, i64 86400, i64 1440, i64 24], align 8
@switch.table._ZN4jiff9timestamp14TimestampRound5round17hfd5119684f5b84aaE.646 = private unnamed_addr constant [6 x i32] [i32 1, i32 1000, i32 1000000, i32 0, i32 0, i32 0], align 8
@switch.table._ZN4jiff9timestamp14TimestampRound5round17hfd5119684f5b84aaE.647 = private unnamed_addr constant [6 x i16] [i16 0, i16 0, i16 0, i16 1, i16 60, i16 3600], align 8
@"switch.table._ZN53_$LT$jiff..span..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h213add3c726e3375E.648" = private unnamed_addr constant [10 x ptr] [ptr @459, ptr @458, ptr @457, ptr @456, ptr @455, ptr @454, ptr @453, ptr @452, ptr @451, ptr @450], align 8
@"switch.table._ZN56_$LT$jiff..span..UnitSet$u20$as$u20$core..fmt..Debug$GT$3fmt17h2c259dc90c6827c2E" = private unnamed_addr constant [10 x ptr] [ptr @2, ptr @3, ptr @4, ptr @5, ptr @6, ptr @7, ptr @8, ptr @9, ptr @10, ptr @11], align 8
@"switch.table._ZN56_$LT$jiff..span..UnitSet$u20$as$u20$core..fmt..Debug$GT$3fmt17h2c259dc90c6827c2E.649" = private unnamed_addr constant [10 x i8] c"\02\03\02\01\01\01\01\01\02\01", align 8
@"switch.table._ZN66_$LT$jiff..civil..weekday..Weekday$u20$as$u20$core..fmt..Debug$GT$3fmt17h59cf32bd568f684eE" = private unnamed_addr constant [7 x i8] c"\06\07\09\08\06\08\06", align 8
@"switch.table._ZN66_$LT$jiff..civil..weekday..Weekday$u20$as$u20$core..fmt..Debug$GT$3fmt17h59cf32bd568f684eE.657" = private unnamed_addr constant [7 x ptr] [ptr @224, ptr @225, ptr @226, ptr @227, ptr @228, ptr @229, ptr @223], align 8
@"switch.table._ZN66_$LT$jiff..shared..tzif..CountKind$u20$as$u20$core..fmt..Debug$GT$3fmt17he7f21575998fd81fE" = private unnamed_addr constant [6 x i8] c"\02\03\04\04\04\04", align 8
@"switch.table._ZN66_$LT$jiff..shared..tzif..CountKind$u20$as$u20$core..fmt..Debug$GT$3fmt17he7f21575998fd81fE.658" = private unnamed_addr constant [6 x ptr] [ptr @850, ptr @851, ptr @852, ptr @853, ptr @854, ptr @855], align 8
@"switch.table._ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE" = private unnamed_addr constant [3 x i8] c"\09\11\0D", align 8
@"switch.table._ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.681" = private unnamed_addr constant [3 x ptr] [ptr @995, ptr @996, ptr @997], align 8
@"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.704" = private unnamed_addr constant [10 x ptr] [ptr @617, ptr @616, ptr @615, ptr @614, ptr @613, ptr @612, ptr @611, ptr @610, ptr @609, ptr @608], align 8
@"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.705" = private unnamed_addr constant [10 x i8] c"\0B\0C\0C\07\07\05\04\05\06\05", align 8
@"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.708" = private unnamed_addr constant [11 x i64] [i64 86400000000000, i64 86400000000, i64 86400000, i64 86400, i64 1440, i64 24, i64 1000, i64 1000, i64 1000, i64 60, i64 60], align 8
@"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E" = private unnamed_addr constant [10 x ptr] [ptr @779, ptr @778, ptr @777, ptr @776, ptr @775, ptr @774, ptr @773, ptr @772, ptr @771, ptr @770], align 8
@"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710" = private unnamed_addr constant [10 x i8] c"\0A\0B\0B\06\06\04\03\04\05\04", align 8
@"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E" = private unnamed_addr constant [8 x i8] c"\07\0C\10\18\16\10\10\13", align 8
@"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E.713" = private unnamed_addr constant [8 x ptr] [ptr @1460, ptr @1461, ptr @1462, ptr @1463, ptr @1464, ptr @1465, ptr @1466, ptr @1467], align 8

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN101_$LT$jiff..fmt..serde..duration..friendly..compact..CompactDuration$u20$as$u20$core..fmt..Display$GT$3fmt17h16622291ccdfe47fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [194 x i8], align 1               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !96
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !97, !noalias !98
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 194, ptr %i.f, align 8, !alias.scope !97, !noalias !98
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i16 0, ptr %i.g, align 8, !alias.scope !97, !noalias !98
  call void @_ZN4jiff3fmt8friendly7printer11SpanPrinter33print_signed_duration_designators17h0bbefdaaa9a44930E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @"_ZN101_$LT$jiff..fmt..serde..duration..friendly..compact..CompactDuration$u20$as$u20$core..fmt..Display$GT$3fmt7PRINTER17h5df30344be501886E", ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !99
  %i.h = load ptr, ptr %i.b, align 8, !noalias !96, !nonnull !11, !align !13, !noundef !11
  %i.i = load i16, ptr %i.g, align 8, !noalias !96, !noundef !11
  %i.j = zext i16 %i.i to i64
  %i.k = call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.j), !noalias !100 ; 2 uses
  br i1 %i.k, label %bb.b, label %_ZN4jiff3fmt8friendly7printer11SpanPrinter14print_duration17h4c5c727e859d3615E.exit

_ZN4jiff3fmt8friendly7printer11SpanPrinter14print_duration17h4c5c727e859d3615E.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !96
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  store i8 3, ptr %i.a, align 8, !noalias !101
  %i.l = call noundef ptr @"_ZN4jiff5error3fmt99_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h6f96ac308df63112E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !noalias !100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.l, ptr %i.d, align 8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !102
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d), !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4jiff3fmt8friendly7printer11SpanPrinter14print_duration17h4c5c727e859d3615E.exit, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN103_$LT$$RF$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$LT$jiff..span..SpanFieldwise$GT$$GT$2eq17h11fa41fb534a144dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.c = load i8, ptr %i.b, align 4, !range !14, !alias.scope !106, !noalias !107, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.e = load i8, ptr %i.d, align 4, !range !14, !alias.scope !107, !noalias !106, !noundef !11
  %i.f = icmp eq i8 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %i.h = load i16, ptr %i.g, align 2, !alias.scope !106, !noalias !107, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.j = load i16, ptr %i.i, align 2, !alias.scope !107, !noalias !106, !noundef !11
  %i.k = icmp eq i16 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load i32, ptr %i.l, align 8, !alias.scope !106, !noalias !107, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i32, ptr %i.n, align 8, !alias.scope !107, !noalias !106, !noundef !11
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !106, !noalias !107, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !107, !noalias !106, !noundef !11
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.w = load i32, ptr %i.v, align 8, !alias.scope !106, !noalias !107, !noundef !11
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !107, !noalias !106, !noundef !11
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.f, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !106, !noalias !107, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !107, !noalias !106, !noundef !11
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.g:                                             ; preds = %bb.f
  %i.af = load i64, ptr %i.a, align 8, !alias.scope !106, !noalias !107, !noundef !11
  %i.ag = load i64, ptr %1, align 8, !alias.scope !107, !noalias !106, !noundef !11
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !106, !noalias !107, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !107, !noalias !106, !noundef !11
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.i, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !106, !noalias !107, !noundef !11
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !107, !noalias !106, !noundef !11
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !106, !noalias !107, !noundef !11
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !107, !noalias !106, !noundef !11
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %bb.k, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !106, !noalias !107, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !107, !noalias !106, !noundef !11
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i = phi i1 [ %i.bb, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN104_$LT$jiff..fmt..strtime..BrokenDownTime$u20$as$u20$core..convert..From$LT$$RF$jiff..zoned..Zoned$GT$$GT$4from17hab1607e82a26618aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12 = load ptr, ptr %i.a, align 8, !noundef !11 ; 8 uses
  %i.b = ptrtoint ptr %.val12 to i64
  %i.c = and i64 %i.b, 7                          ; 2 uses
  switch i64 %i.c, label %bb.b [
    i64 1, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
    i64 2, label %bb.i
    i64 3, label %bb.i
    i64 0, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val12, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !align !13, !noundef !11 ; 2 uses
  %.not4.i = icmp eq ptr %i.e, null
  br i1 %.not4.i, label %.thread56, label %bb.f

.thread56:                                        ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i32, ptr %i.f, align 4, !noundef !11
  %i.h = load i64, ptr %1, align 8, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !noundef !11
  br label %"_ZN4core3ptr55drop_in_place$LT$jiff..fmt..strtime..BrokenDownTime$GT$17hf9957abf06720009E.exit"
end_hunk_0
begin_hunk_1_@_ZN4jiff4util4utf86decode17h97ece18b6d229b67E:bb.a

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.g, align 8, !noundef !11 ; 4 uses
  %.not16 = icmp eq i64 %i.h, 0
  br i1 %.not16, label %bb.i, label %bb.j, !prof !23

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !11, !align !13, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !11
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc981e5c158f3aba0E.exit", %bb.e
  %.sroa.6.0 = phi i64 [ %i.ba, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc981e5c158f3aba0E.exit" ], [ %i.k, %bb.e ] ; 4 uses
  %.sroa.04.0 = phi ptr [ %i.ay, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc981e5c158f3aba0E.exit" ], [ %i.i, %bb.e ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = icmp samesign eq i64 %.sroa.6.0, 0
  br i1 %i.l, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i8, ptr %.sroa.04.0, align 1, !noalias !10022, !noundef !11 ; 5 uses
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %bb.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i": ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 1
  %i.p = and i8 %i.m, 31
  %i.q = zext nneg i8 %i.p to i32                 ; 3 uses
  %i.r = icmp samesign ne i64 %.sroa.6.0, 1
  call void @llvm.assume(i1 %i.r)
  %i.s = load i8, ptr %i.o, align 1, !noalias !10022, !noundef !11
  %i.t = shl nuw nsw i32 %i.q, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32                 ; 2 uses
  %i.w = or disjoint i32 %i.t, %i.v
  %i.x = icmp samesign ugt i8 %i.m, -33
  br i1 %i.x, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit14.i", label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i8 %i.m to i32
  br label %bb.n

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit14.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i"
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 2
  %i.aa = icmp samesign ne i64 %.sroa.6.0, 2
  call void @llvm.assume(i1 %i.aa)
  %i.ab = load i8, ptr %i.z, align 1, !noalias !10022, !noundef !11
  %i.ac = shl nuw nsw i32 %i.v, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae            ; 2 uses
  %i.ag = shl nuw nsw i32 %i.q, 12
  %i.ah = or disjoint i32 %i.af, %i.ag
  %i.ai = icmp samesign ugt i8 %i.m, -17
  br i1 %i.ai, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit16.i", label %bb.n

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit16.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit14.i"
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 3
  %i.ak = icmp samesign ne i64 %.sroa.6.0, 3
  call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.aj, align 1, !noalias !10022, !noundef !11
  %i.am = shl nuw nsw i32 %i.q, 18
  %i.an = and i32 %i.am, 1835008
  %i.ao = shl nuw nsw i32 %i.af, 6
  %i.ap = and i8 %i.al, 63
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %i.as = or disjoint i32 %i.ar, %i.an
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.1.0.copyload = load i8, ptr %.sroa.1.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 1
  %i.at = call fastcc i32 @_ZN4jiff4util4utf89Utf8Error3new17h5a5b5e6262d9ed0bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i8 %.sroa.1.0.copyload, i8 %.sroa.2.0.copyload)
  %.sroa.4.1.insert.ext = zext nneg i32 %i.at to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not17 = icmp ugt i64 %i.h, %1
  br i1 %.not17, label %bb.k, label %bb.l, !prof !23

bb.k:                                             ; preds = %bb.j
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.h, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @326) #45
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !10023)
  %i.au = load i64, ptr %i.b, align 8, !range !53, !alias.scope !10023, !noalias !10024, !noundef !11
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.m, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc981e5c158f3aba0E.exit", !prof !23

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10025
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !noalias !10024
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @324) #45, !noalias !10023
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc981e5c158f3aba0E.exit": ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !10023, !noalias !10024, !nonnull !11, !align !13, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !10023, !noalias !10024, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.n:                                             ; preds = %bb.h, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit16.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit14.i"
  %.sroa.4.0.i.ph = phi i32 [ %i.ah, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit14.i" ], [ %i.as, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit16.i" ], [ %i.w, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i" ], [ %i.y, %bb.h ] ; 2 uses
  %i.bb = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %i.bb)
  %.sroa.49.4.insert.ext = zext nneg i32 %.sroa.4.0.i.ph to i64
  %.sroa.49.4.insert.shift = shl nuw nsw i64 %.sroa.49.4.insert.ext, 24
  br label %bb.b

bb.o:                                             ; preds = %bb.f
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #45
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc range(i32 0, 67108864) i32 @_ZN4jiff4util4utf89Utf8Error3new17h5a5b5e6262d9ed0bE(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef range(i64 1, 0) %1, i8 %.8.val, i8 %.9.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca i24, align 4                  ; 5 uses
  %i.a = trunc nuw i8 %.8.val to i1
  %i.b = zext i8 %.9.val to i64
  %.sroa.0.0 = select i1 %i.a, i64 %i.b, i64 %1   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.0, i8 0, i64 3, i1 false)
  %i.c = icmp ult i64 %.sroa.0.0, 4
  br i1 %i.c, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @328) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %.sroa.0.0, %1
  br i1 %.not, label %bb.e, label %bb.d, !prof !57

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr nonnull readonly align 1 %0, i64 %.sroa.0.0, i1 false), !alias.scope !10030, !noalias !10031
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.05.0.copyload = load i24, ptr %.sroa.0, align 4
  %i.d = trunc nuw nsw i64 %.sroa.0.0 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %.sroa.2.0.insert.shift = shl nuw nsw i32 %i.d, 24
  %.sroa.0.0.insert.ext = zext i24 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.05.0.copyload to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.0.0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @327) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff4util5round9Increment10for_limits17h85c6ade5a369d533E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 10) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef range(i64 6, 8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext nneg i8 %1 to i64                   ; 2 uses
  %i.b = icmp samesign ugt i64 %4, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.013.1.insert.ext = zext nneg i8 %1 to i24
  %.sroa.013.1.insert.shift = shl nuw nsw i24 %.sroa.013.1.insert.ext, 8
  %.sroa.013.1.insert.insert = or disjoint i24 %.sroa.013.1.insert.shift, 8
  %i.c = tail call noundef ptr @"_ZN4jiff5error4unit110_$LT$impl$u20$core..convert..From$LT$jiff..error..unit..UnitConfigError$GT$$u20$for$u20$jiff..error..Error$GT$4from17haa2deed9d06057adE"(i24 %.sroa.013.1.insert.insert)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.f = load i8, ptr %i.e, align 1, !range !32, !noundef !11 ; 2 uses
  %i.g = add i64 %2, -1000000001
  %or.cond.i = icmp ult i64 %i.g, -1000000000
  %i.h = shl nuw nsw i64 %2, 32
  %.sroa.0.0.insert.insert.i = select i1 %or.cond.i, i64 2561, i64 %i.h ; 2 uses
  %.sroa.618.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i, 32
  %.sroa.618.0.extract.trunc = trunc nuw i64 %.sroa.618.0.extract.shift to i32
  %i.i = trunc i64 %.sroa.0.0.insert.insert.i to i1
  br i1 %i.i, label %bb.e, label %switch.lookup

bb.d:                                             ; preds = %bb.e, %bb.j, %bb.g, %bb.b
  %.sink = phi i32 [ 1, %bb.e ], [ 0, %bb.j ], [ 1, %bb.g ], [ 1, %bb.b ]
  store i32 %.sink, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  %i.j = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 10)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.d

switch.lookup:                                    ; preds = %bb.c
  %i.l = zext nneg i8 %i.f to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4jiff4util5round9Increment10for_limits17h85c6ade5a369d533E, i64 %i.l
  %switch.load = load i64, ptr %switch.gep, align 8 ; 2 uses
  %i.m = icmp slt i64 %2, %switch.load
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %switch.lookup
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.i, %switch.lookup
  %.sroa.019.1.insert.ext = zext nneg i8 %i.f to i24
  %.sroa.019.1.insert.shift = shl nuw nsw i24 %.sroa.019.1.insert.ext, 8
  %.sroa.019.2.insert.ext = zext nneg i8 %1 to i24
  %.sroa.019.2.insert.shift = shl nuw nsw i24 %.sroa.019.2.insert.ext, 16
  %.sroa.019.1.insert.insert = or disjoint i24 %.sroa.019.1.insert.shift, %.sroa.019.2.insert.shift
  %.sroa.019.2.insert.insert = or disjoint i24 %.sroa.019.1.insert.insert, 3
  %i.o = tail call noundef ptr @"_ZN4jiff5error4unit110_$LT$impl$u20$core..convert..From$LT$jiff..error..unit..UnitConfigError$GT$$u20$for$u20$jiff..error..Error$GT$4from17haa2deed9d06057adE"(i24 %.sroa.019.2.insert.insert)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h3e6118cf5f85921cE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @332) #45
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.q = srem i64 %switch.load, %2
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.618.0.extract.trunc, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.t, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff4util5round9RoundMode17round_by_duration17hf05f9d8f95be315dE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 9) %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = sext i64 %4 to i128
  %i.b = mul nsw i128 %i.a, 1000000000
  %i.c = sext i32 %5 to i128
  %i.d = add nsw i128 %i.b, %i.c                  ; 7 uses
  %i.e = icmp sgt i128 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @337, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @338) #45
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
  br i1 %i.l, label %_ZN4jiff4util5round9RoundMode13round_by_i12817hb692b034e351b6caE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i128 %.decomposed, 0            ; 4 uses
  %..i = select i1 %i.m, i128 -1, i128 1          ; 6 uses
  %i.n = shl nsw i128 %.decomposed, 1
  %.sroa.026.0.i = tail call i128 @llvm.abs.i128(i128 %i.n, i1 true) ; 3 uses
  %i.o = icmp eq i128 %.sroa.026.0.i, %i.d        ; 3 uses
  %i.p = icmp samesign ugt i128 %.sroa.026.0.i, %i.d ; 4 uses
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
  %spec.select30.i = add nsw i128 %.lobit.i, %i.j
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.r = add nsw i128 %..i, %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.04.0.i = phi i128 [ %spec.select43.i, %bb.m ], [ %spec.select32.i, %bb.l ], [ %spec.select.i, %bb.e ], [ %spec.select30.i, %bb.f ], [ %i.r, %bb.g ], [ %i.j, %bb.d ], [ %spec.select31.i, %bb.k ], [ %spec.select37.i, %bb.j ], [ %spec.select36.i, %bb.i ] ; 2 uses
  %i.s = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.sroa.04.0.i, i128 range(i128 1, 9223372036854775809147483648) %i.d) ; 2 uses
  %i.t = extractvalue { i128, i1 } %i.s, 1
  br i1 %i.t, label %bb.o, label %bb.n, !prof !23

bb.i:                                             ; preds = %bb.d
  %i.u = xor i1 %i.m, true
  %or.cond.i = and i1 %i.o, %i.u
  %or.cond33.i = or i1 %i.p, %or.cond.i
  %i.v = select i1 %or.cond33.i, i128 %..i, i128 0
  %spec.select36.i = add nsw i128 %i.v, %i.j
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  %or.cond3.i = and i1 %i.m, %i.o
  %or.cond34.i = or i1 %i.p, %or.cond3.i
  %i.w = select i1 %or.cond34.i, i128 %..i, i128 0
  %spec.select37.i = add nsw i128 %i.w, %i.j
  br label %bb.h

bb.k:                                             ; preds = %bb.d
  %.not.i = icmp samesign ult i128 %.sroa.026.0.i, %i.d
  %i.x = select i1 %.not.i, i128 0, i128 %..i
  %spec.select31.i = add nsw i128 %i.x, %i.j
  br label %bb.h

bb.l:                                             ; preds = %bb.d
  %i.y = select i1 %i.p, i128 %..i, i128 0
  %spec.select32.i = add nsw i128 %i.y, %i.j
  br label %bb.h

bb.m:                                             ; preds = %bb.d
  %.not38.i = trunc i128 %i.j to i1
  %or.cond40.not.i = and i1 %i.o, %.not38.i
  %or.cond42.i = or i1 %i.p, %or.cond40.not.i
  %i.z = select i1 %or.cond42.i, i128 %..i, i128 0
  %spec.select43.i = add nsw i128 %i.z, %i.j
  br label %bb.h

bb.n:                                             ; preds = %bb.h
  %i.aa = extractvalue { i128, i1 } %i.s, 0
  br label %_ZN4jiff4util5round9RoundMode13round_by_i12817hb692b034e351b6caE.exit

bb.o:                                             ; preds = %bb.h
  %i.ab = icmp sgt i128 %.sroa.04.0.i, -1
  %.35.i = select i1 %i.ab, i128 170141183460469231731687303715884105727, i128 -170141183460469231731687303715884105728
  br label %_ZN4jiff4util5round9RoundMode13round_by_i12817hb692b034e351b6caE.exit

_ZN4jiff4util5round9RoundMode13round_by_i12817hb692b034e351b6caE.exit: ; preds = %bb.c, %bb.n, %bb.o
  %.sroa.0.0.i = phi i128 [ %i.i, %bb.c ], [ %i.aa, %bb.n ], [ %.35.i, %bb.o ] ; 2 uses
  %i.ac = add i128 %.sroa.0.0.i, 9223372036854775808999999999
  %or.cond = icmp ult i128 %i.ac, 18446744073709551616999999999
  br i1 %or.cond, label %bb.q, label %bb.p, !prof !20

bb.p:                                             ; preds = %_ZN4jiff4util5round9RoundMode13round_by_i12817hb692b034e351b6caE.exit
  %i.ad = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef 23)
  br label %bb.r

bb.q:                                             ; preds = %_ZN4jiff4util5round9RoundMode13round_by_i12817hb692b034e351b6caE.exit
  %.sroa.0.0.i.frozen = freeze i128 %.sroa.0.0.i  ; 2 uses
  %i.ae = sdiv i128 %.sroa.0.0.i.frozen, 1000000000 ; 2 uses
  %i.af = trunc nsw i128 %i.ae to i64
  %i.ag = mul i128 %i.ae, 1000000000
  %.decomposed3 = sub i128 %.sroa.0.0.i.frozen, %i.ag
  %i.ah = trunc nsw i128 %.decomposed3 to i32
  %i.ai = inttoptr i64 %i.af to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ah, ptr %i.aj, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink = phi ptr [ %i.ai, %bb.q ], [ %i.ad, %bb.p ]
  %storemerge = phi i64 [ 0, %bb.q ], [ 1, %bb.p ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ak, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff4util6borrow9StringCow10into_owned17he526c980c5e8dfc7E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !15, !noundef !11
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !align !13, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 7 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h975a8781437437e3E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10039
end_hunk_1
begin_hunk_2_@"_ZN4jiff6shared5posix90_$LT$impl$u20$core..fmt..Display$u20$for$u20$jiff..shared..PosixTimeZone$LT$ABBREV$GT$$GT$3fmt17h6730636a83689674E":bb.a

bb.k:                                             ; preds = %"_ZN100_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17he9a66b1664d820afE.exit.i"
  %i.ah = add i32 %.val2, 3600
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !alias.scope !11677, !noalias !11682, !noundef !11
  %.not.i = icmp eq i32 %i.aj, %i.ah
  br i1 %.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ak = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @423, i64 noundef 1)
  br i1 %i.ak, label %"_ZN4jiff6shared5posix54_$LT$impl$u20$jiff..shared..PosixDst$LT$ABBREV$GT$$GT$7display17h798bcae0fe7c9b44E.exit", label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.al = call noundef zeroext i1 @"_ZN4jiff6shared5posix74_$LT$impl$u20$core..fmt..Display$u20$for$u20$jiff..shared..PosixOffset$GT$3fmt17h5d394341be6ba7c3E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.al, label %"_ZN4jiff6shared5posix54_$LT$impl$u20$jiff..shared..PosixDst$LT$ABBREV$GT$$GT$7display17h798bcae0fe7c9b44E.exit", label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.am = call noundef zeroext i1 @"_ZN4jiff6shared5posix72_$LT$impl$u20$core..fmt..Display$u20$for$u20$jiff..shared..PosixRule$GT$3fmt17h2f51ac6205a64e6eE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(52) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4jiff6shared5posix54_$LT$impl$u20$jiff..shared..PosixDst$LT$ABBREV$GT$$GT$7display17h798bcae0fe7c9b44E.exit"

"_ZN4jiff6shared5posix54_$LT$impl$u20$jiff..shared..PosixDst$LT$ABBREV$GT$$GT$7display17h798bcae0fe7c9b44E.exit": ; preds = %bb.n, %bb.m, %bb.l, %"_ZN100_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17he9a66b1664d820afE.exit.i", %"_ZN100_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17he9a66b1664d820afE.exit", %bb.f, %bb.e
  %.sroa.0.0 = phi i1 [ true, %"_ZN100_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17he9a66b1664d820afE.exit" ], [ true, %bb.e ], [ false, %bb.f ], [ %i.am, %bb.n ], [ true, %bb.l ], [ true, %bb.m ], [ true, %"_ZN100_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17he9a66b1664d820afE.exit.i" ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff8duration8Duration11checked_neg17hbca5f0470d0ba640E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !75, !noundef !11 ; 2 uses
  %i.c = tail call i8 @llvm.smax.i8(i8 %i.b, i8 1)
  switch i8 %i.c, label %default.unreachable [
    i8 1, label %switch.lookup
    i8 2, label %bb.b
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !11
  %switch.offset = sub nsw i8 0, %i.b
  %i.i = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.i, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load <2 x i64>, ptr %i.f, align 8
  store <2 x i64> %i.j, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.h, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.86.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load <4 x i32>, ptr %i.e, align 8
  store <4 x i32> %i.k, ptr %.sroa.86.0..sroa_idx, align 8
  %.sroa.1210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load <2 x i16>, ptr %i.d, align 8
  store <2 x i16> %i.l, ptr %.sroa.1210.0..sroa_idx, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %1, align 8, !noundef !11  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !noundef !11 ; 2 uses
  %i.p = icmp eq i64 %i.m, -9223372036854775808
  br i1 %i.p, label %bb.f, label %bb.e, !prof !23

bb.c:                                             ; preds = %bb.a
  %i.q = load i64, ptr %1, align 8, !noundef !11  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !range !72, !noundef !11
  %i.t = icmp eq i64 %i.q, -9223372036854775808
  br i1 %i.t, label %.split44, label %bb.g

bb.d:                                             ; preds = %bb.e, %bb.f, %.split44, %bb.h, %switch.lookup
  %.sink = phi i8 [ 2, %bb.e ], [ 3, %bb.f ], [ 2, %.split44 ], [ 4, %bb.h ], [ %switch.offset, %switch.lookup ]
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sink, ptr %.sroa.520.0..sroa_idx, align 4
  ret void

bb.e:                                             ; preds = %bb.b
  %i.u = sub nsw i64 0, %i.m
  %i.v = sub i32 0, %i.o
  store i64 %i.u, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.v, ptr %.sroa.418.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %.sroa.042.0 = tail call i32 @llvm.abs.i32(i32 %i.o, i1 false)
  %i.w = tail call fastcc { i64, i32 } @_ZN4core4time8Duration3new17heaed37e477563ad0E(i64 noundef -9223372036854775808, i32 noundef %.sroa.042.0) ; 2 uses
  %i.x = extractvalue { i64, i32 } %i.w, 0
  %i.y = extractvalue { i64, i32 } %i.w, 1
  store i64 %i.x, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.y, ptr %.sroa.423.0..sroa_idx, align 8
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.z = icmp slt i64 %i.q, 0
  br i1 %i.z, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef 23), !noalias !11692
  %i.ab = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31d4b772b39a2270E"(i1 noundef zeroext false, ptr noundef nonnull %i.aa), !noalias !11693
  store ptr %i.ab, ptr %0, align 8
  br label %bb.d

bb.i:                                             ; preds = %bb.g
  %i.ac = sub nsw i64 0, %i.q
  br label %.split44

.split44:                                         ; preds = %bb.c, %bb.i
  %.sroa.027.0 = phi i64 [ %i.ac, %bb.i ], [ -9223372036854775808, %bb.c ]
  %.sroa.628.0 = sub nsw i32 0, %i.s
  store i64 %.sroa.027.0, ptr %0, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.628.0, ptr %.sroa.437.0..sroa_idx, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff8duration8Duration9to_signed17hfc9e114e756d4820E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !75, !noundef !11
  %i.c = tail call i8 @llvm.smax.i8(i8 %i.b, i8 1)
  switch i8 %i.c, label %default.unreachable [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !noundef !11
  store i64 1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.f, ptr %.sroa.53.0..sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !noundef !11  ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.g, !prof !23

bb.e:                                             ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  ret void

bb.f:                                             ; preds = %bb.d
  %i.i = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef 23), !noalias !11699
  %i.j = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31d4b772b39a2270E"(i1 noundef zeroext true, ptr noundef nonnull %i.i), !noalias !11700
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  store i64 2, ptr %0, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !range !72, !noundef !11
  store i64 1, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.m, ptr %.sroa.58.0..sroa_idx, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff9timestamp14TimestampRound5round17hfd5119684f5b84aaE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !30, !noundef !11 ; 6 uses
  %i.d = load i64, ptr %1, align 8, !noundef !11  ; 5 uses
  %i.e = icmp samesign ult i8 %i.c, 6
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.013.1.insert.ext.i.i = zext nneg i8 %i.c to i24
  %.sroa.013.1.insert.shift.i.i = shl nuw nsw i24 %.sroa.013.1.insert.ext.i.i, 8
  %.sroa.013.1.insert.insert.i.i = or disjoint i24 %.sroa.013.1.insert.shift.i.i, 8
  %i.f = tail call noundef ptr @"_ZN4jiff5error4unit110_$LT$impl$u20$core..convert..From$LT$jiff..error..unit..UnitConfigError$GT$$u20$for$u20$jiff..error..Error$GT$4from17haa2deed9d06057adE"(i24 %.sroa.013.1.insert.insert.i.i), !noalias !11710
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = zext nneg i8 %i.c to i64                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr @335, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !range !32, !noalias !11710, !noundef !11
  %i.j = add i64 %i.d, -1000000001
  %or.cond.i.i.i = icmp ult i64 %i.j, -1000000000
  %i.k = shl nuw nsw i64 %i.d, 32
  %.sroa.0.0.insert.insert.i.i.i = select i1 %or.cond.i.i.i, i64 2561, i64 %i.k ; 2 uses
  %.sroa.618.0.extract.shift.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i, 32 ; 2 uses
  %i.l = trunc i64 %.sroa.0.0.insert.insert.i.i.i to i1
  br i1 %i.l, label %bb.d, label %switch.lookup

bb.d:                                             ; preds = %bb.c
  %i.m = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 10), !noalias !11710
  br label %bb.i

switch.lookup:                                    ; preds = %bb.c
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4jiff9timestamp14TimestampRound5round17hfd5119684f5b84aaE, i64 %i.g
  %switch.load = load i64, ptr %switch.gep, align 8 ; 2 uses
  %.not.i.i = icmp sgt i64 %i.d, %switch.load
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %switch.lookup
  %i.n = icmp eq i64 %i.d, 0
  br i1 %i.n, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %switch.lookup
  %.sroa.019.1.insert.ext.i.i = zext nneg i8 %i.i to i24
  %.sroa.019.1.insert.shift.i.i = shl nuw nsw i24 %.sroa.019.1.insert.ext.i.i, 8
  %.sroa.019.2.insert.ext.i.i = zext nneg i8 %i.c to i24
  %.sroa.019.2.insert.shift.i.i = shl nuw nsw i24 %.sroa.019.2.insert.ext.i.i, 16
  %.sroa.019.1.insert.insert.i.i = or disjoint i24 %.sroa.019.2.insert.shift.i.i, %.sroa.019.1.insert.shift.i.i
  %.sroa.019.2.insert.insert.i.i = or disjoint i24 %.sroa.019.1.insert.insert.i.i, 3
  %i.o = tail call noundef ptr @"_ZN4jiff5error4unit110_$LT$impl$u20$core..convert..From$LT$jiff..error..unit..UnitConfigError$GT$$u20$for$u20$jiff..error..Error$GT$4from17haa2deed9d06057adE"(i24 %.sroa.019.2.insert.insert.i.i), !noalias !11710
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h3e6118cf5f85921cE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #45, !noalias !11710
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.p = srem i64 %switch.load, %i.d
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %switch.lookup10, label %bb.f

bb.i:                                             ; preds = %bb.b, %bb.d, %bb.f
  %.sroa.6.0.ph.i = phi ptr [ %i.f, %bb.b ], [ %i.o, %bb.f ], [ %i.m, %bb.d ]
  %i.r = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h52dcc0fce49e06ceE"(i8 noundef 5, ptr noundef nonnull %.sroa.6.0.ph.i), !noalias !11711
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  br label %_ZN4jiff9timestamp9Timestamp13from_duration17habfe0c4fdadcb2b2E.exit

switch.lookup10:                                  ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.u = load i8, ptr %i.t, align 1, !range !28, !noundef !11
  %i.v = zext nneg i8 %i.c to i64
  %switch.gep11 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN4jiff9timestamp14TimestampRound5round17hfd5119684f5b84aaE.646, i64 %i.v
  %switch.load12 = load i32, ptr %switch.gep11, align 4
  %switch.ext = zext i32 %switch.load12 to i64
  %i.w = zext nneg i8 %i.c to i64
  %switch.gep13 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN4jiff9timestamp14TimestampRound5round17hfd5119684f5b84aaE.647, i64 %i.w
  %switch.load14 = load i16, ptr %switch.gep13, align 2
  %switch.ext15 = zext i16 %switch.load14 to i64
  %i.x = mul nuw nsw i64 %.sroa.618.0.extract.shift.i.i, %switch.ext ; 2 uses
  %i.y = urem i64 %i.x, 1000000000
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = mul nuw nsw i64 %.sroa.618.0.extract.shift.i.i, %switch.ext15
  %i.ab = udiv i64 %i.x, 1000000000
  %i.ac = add nuw nsw i64 %i.ab, %i.aa
  call fastcc void @_ZN4jiff4util5round9RoundMode17round_by_duration17hf05f9d8f95be315dE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i8 noundef range(i8 0, 9) %i.u, i64 noundef %2, i32 noundef %3, i64 noundef %i.ac, i32 noundef %i.z)
  %i.ad = load i64, ptr %i.a, align 8, !range !53, !noundef !11
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %switch.lookup10
  %i.ag = load ptr, ptr %i.af, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  br label %_ZN4jiff9timestamp9Timestamp13from_duration17habfe0c4fdadcb2b2E.exit

bb.k:                                             ; preds = %switch.lookup10
  %i.ai = load i64, ptr %i.af, align 8, !noundef !11 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11712)
  %i.al = add i64 %i.ai, -253402207201
  %or.cond.i.i = icmp ult i64 %i.al, -631107230402
  br i1 %or.cond.i.i, label %bb.l, label %_ZN4jiff4util1b6Bounds5check17h270400218b5c88d6E.exit.i

bb.l:                                             ; preds = %bb.k
  %i.am = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 40), !noalias !11712
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !alias.scope !11712
  br label %_ZN4jiff9timestamp9Timestamp13from_duration17habfe0c4fdadcb2b2E.exit

_ZN4jiff4util1b6Bounds5check17h270400218b5c88d6E.exit.i: ; preds = %bb.k
  %i.ao = icmp eq i64 %i.ai, -377705023201
  %i.ap = icmp slt i32 %i.ak, 0
  %or.cond.i = and i1 %i.ao, %i.ap
  br i1 %or.cond.i, label %bb.n, label %bb.m, !prof !56

bb.m:                                             ; preds = %_ZN4jiff4util1b6Bounds5check17h270400218b5c88d6E.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.aq, align 8, !alias.scope !11712
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ak, ptr %i.ar, align 8, !alias.scope !11712
  br label %_ZN4jiff9timestamp9Timestamp13from_duration17habfe0c4fdadcb2b2E.exit

bb.n:                                             ; preds = %_ZN4jiff4util1b6Bounds5check17h270400218b5c88d6E.exit.i
  %i.as = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef 40), !noalias !11712
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !11712
  br label %_ZN4jiff9timestamp9Timestamp13from_duration17habfe0c4fdadcb2b2E.exit

_ZN4jiff9timestamp9Timestamp13from_duration17habfe0c4fdadcb2b2E.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.i
  %.sink.i.sink = phi i64 [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.n ], [ 0, %bb.m ]
  store i64 %.sink.i.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4jiff9timestamp19TimestampArithmetic11checked_add17h075d2fddf872a84eE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11732)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !75, !alias.scope !11732, !noalias !11733, !noundef !11 ; 3 uses
  %i.c = tail call i8 @llvm.smax.i8(i8 %i.b, i8 1)
  switch i8 %i.c, label %default.unreachable [
    i8 1, label %bb.v
    i8 2, label %bb.b
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !alias.scope !11732, !noalias !11733, !noundef !11
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !alias.scope !11732, !noalias !11733, !noundef !11 ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef 23), !noalias !11734
  %i.h = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31d4b772b39a2270E"(i1 noundef zeroext true, ptr noundef nonnull %i.g), !noalias !11735
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  br label %_ZN4jiff9timestamp9Timestamp20checked_add_duration17hcf73e2a0dcbe8082E.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.8.0.ph.ph = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  %.sroa.14.0.ph.ph.in.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.14.0.ph.ph.in = load i32, ptr %.sroa.14.0.ph.ph.in.in, align 8, !alias.scope !11732, !noalias !11733, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11736)
  %i.j = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 %.sroa.8.0.ph.ph) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 0         ; 4 uses
  %i.l = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.l, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i, label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.m = add i32 %.sroa.14.0.ph.ph.in, %3         ; 6 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp sgt i32 %i.m, 999999999
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = icmp slt i32 %i.m, -999999999
  br i1 %i.p, label %bb.j, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.k, i64 1) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i, label %bb.m, !prof !23

bb.j:                                             ; preds = %bb.h
  %i.s = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.k, i64 -1) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i, label %bb.k, !prof !23

bb.k:                                             ; preds = %bb.j
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = add nsw i32 %i.m, 1000000000
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k, %bb.h
  %.sroa.010.1.i.i = phi i32 [ %i.z, %bb.m ], [ %i.v, %bb.k ], [ %i.m, %bb.h ] ; 6 uses
  %.sroa.0.1.i.i = phi i64 [ %i.y, %bb.m ], [ %i.u, %bb.k ], [ %i.k, %bb.h ] ; 7 uses
  %i.w = icmp eq i64 %.sroa.0.1.i.i, 0
  %i.x = icmp eq i32 %.sroa.010.1.i.i, 0
  %or.cond.i.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i.i, label %bb.r, label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.y = extractvalue { i64, i1 } %i.q, 0
  %i.z = add nsw i32 %i.m, -1000000000
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.aa = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.0.1.i.i, i64 0)
  %i.ab = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.010.1.i.i, i32 0)
  %.not.i.i = icmp eq i64 %i.aa, %i.ab
  br i1 %.not.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = icmp slt i64 %.sroa.0.1.i.i, 0
  br i1 %i.ac, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_2
