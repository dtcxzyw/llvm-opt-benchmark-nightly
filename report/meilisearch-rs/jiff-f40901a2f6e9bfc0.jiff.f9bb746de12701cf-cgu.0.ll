Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4036
inline.NumDeleted: 1352
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 60
begin_hunk_0
@1827 = private unnamed_addr constant [8 x i8] c"BCE year", align 1
@1828 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @1827, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@1829 = private unnamed_addr constant [8 x i8] c"iso-year", align 1
@1830 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @1829, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@1831 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @770, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@1832 = private unnamed_addr constant [27 x i8] c"Unix timestamp milliseconds", align 1
@1833 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @1832, [8 x i8] c"\1B\00\00\00\00\00\00\00" }>, align 8
@1834 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @609, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@1835 = private unnamed_addr constant [23 x i8] c"signed duration seconds", align 1
@1836 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @1835, [8 x i8] c"\17\00\00\00\00\00\00\00" }>, align 8
@1837 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @778, [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@1838 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @612, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@1839 = private unnamed_addr constant [29 x i8] c"expected to find `AM` or `PM`", align 1
@1840 = private unnamed_addr constant [82 x i8] c"expected to find `AM` or `PM`, but the remaining input is too short to contain one", align 1
@1841 = private unnamed_addr constant [76 x i8] c"expected to find the start of an IANA time zone identifier name or component", align 1
@1842 = private unnamed_addr constant [108 x i8] c"expected to find the start of an IANA time zone identifier name or component, but found end of input instead", align 1
@1843 = private unnamed_addr constant [40 x i8] c"expected to find month name abbreviation", align 1
@1844 = private unnamed_addr constant [93 x i8] c"expected to find month name abbreviation, but the remaining input is too short to contain one", align 1
@1845 = private unnamed_addr constant [37 x i8] c"expected to find weekday abbreviation", align 1
@1846 = private unnamed_addr constant [90 x i8] c"expected to find weekday abbreviation, but the remaining input is too short to contain one", align 1
@1847 = private unnamed_addr constant [54 x i8] c"failed to find expected value, available choices are: ", align 1
@1848 = private unnamed_addr constant [68 x i8] c"expected at least one fractional decimal digit, but did not find any", align 1
@1849 = private unnamed_addr constant [32 x i8] c"expected to match literal byte `", align 1
@1850 = private unnamed_addr constant [38 x i8] c"` from format string, but found byte `", align 1
@1851 = private unnamed_addr constant [10 x i8] c"` in input", align 1
@1852 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @1849, [8 x i8] c" \00\00\00\00\00\00\00", ptr @1850, [8 x i8] c"&\00\00\00\00\00\00\00", ptr @1851, [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@1853 = private unnamed_addr constant [44 x i8] c"` from format string, but found end of input", align 1
@1854 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @1849, [8 x i8] c" \00\00\00\00\00\00\00", ptr @1853, [8 x i8] c",\00\00\00\00\00\00\00" }>, align 8
@1855 = private unnamed_addr constant [41 x i8] c"expected non-empty input for directive `%", align 1
@1856 = private unnamed_addr constant [25 x i8] c"`, but found end of input", align 1
@1857 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @1855, [8 x i8] c")\00\00\00\00\00\00\00", ptr @1856, [8 x i8] c"\19\00\00\00\00\00\00\00" }>, align 8
@1858 = private unnamed_addr constant [40 x i8] c"parsing locale clock time is not allowed", align 1
@1859 = private unnamed_addr constant [34 x i8] c"parsing locale date is not allowed", align 1
@1860 = private unnamed_addr constant [43 x i8] c"parsing locale date and time is not allowed", align 1
@1861 = private unnamed_addr constant [48 x i8] c"parsing locale 12-hour clock time is not allowed", align 1
@1862 = private unnamed_addr constant [45 x i8] c"parsing time zone abbreviation is not allowed", align 1
@1863 = private unnamed_addr constant [26 x i8] c"failed to parse day number", align 1
@1864 = private unnamed_addr constant [34 x i8] c"failed to parse day of year number", align 1
@1865 = private unnamed_addr constant [39 x i8] c"failed to parse year number for century", align 1
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
@switch.table._ZN4jiff5civil8datetime13DateTimeRound5round17ha18a1310279c63e0E = private unnamed_addr constant [8 x i32] [i32 1, i32 1000, i32 1000000, i32 0, i32 0, i32 0, i32 0, i32 0], align 8
@switch.table._ZN4jiff5civil8datetime13DateTimeRound5round17ha18a1310279c63e0E.645 = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 1, i32 60, i32 3600, i32 86400, i32 604800], align 8
@switch.table._ZN4jiff5zoned5Zoned12memory_usage17h23ac1346e53ad5faE = private unnamed_addr constant [6 x i16] [i16 0, i16 0, i16 0, i16 0, i16 368, i16 104], align 8
@switch.table._ZN4jiff9timestamp14TimestampRound5round17hfd5119684f5b84aaE = private unnamed_addr constant [12 x i64] [i64 86400000000000, i64 86400000000, i64 86400000, i64 86400, i64 1440, i64 24, i64 1000, i64 1000, i64 1000, i64 60, i64 60, i64 2], align 8
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !98, !noalias !99
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 194, ptr %i.f, align 8, !alias.scope !98, !noalias !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i16 0, ptr %i.g, align 8, !alias.scope !98, !noalias !99
  call void @_ZN4jiff3fmt8friendly7printer11SpanPrinter33print_signed_duration_designators17h0bbefdaaa9a44930E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @"_ZN101_$LT$jiff..fmt..serde..duration..friendly..compact..CompactDuration$u20$as$u20$core..fmt..Display$GT$3fmt7PRINTER17h5df30344be501886E", ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !100
  %i.h = load ptr, ptr %i.b, align 8, !noalias !97, !nonnull !11, !align !13, !noundef !11
  %i.i = load i16, ptr %i.g, align 8, !noalias !97, !noundef !11
  %i.j = zext i16 %i.i to i64
  %i.k = call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.j), !noalias !101 ; 2 uses
  br i1 %i.k, label %bb.b, label %_ZN4jiff3fmt8friendly7printer11SpanPrinter14print_duration17h4c5c727e859d3615E.exit

_ZN4jiff3fmt8friendly7printer11SpanPrinter14print_duration17h4c5c727e859d3615E.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102
  store i8 3, ptr %i.a, align 8, !noalias !102
  %i.l = call noundef ptr @"_ZN4jiff5error3fmt99_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h6f96ac308df63112E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !noalias !101 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.l, ptr %i.d, align 8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !103
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.c = load i8, ptr %i.b, align 4, !range !14, !alias.scope !107, !noalias !108, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.e = load i8, ptr %i.d, align 4, !range !14, !alias.scope !108, !noalias !107, !noundef !11
  %i.f = icmp eq i8 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %i.h = load i16, ptr %i.g, align 2, !alias.scope !107, !noalias !108, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.j = load i16, ptr %i.i, align 2, !alias.scope !108, !noalias !107, !noundef !11
  %i.k = icmp eq i16 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load i32, ptr %i.l, align 8, !alias.scope !107, !noalias !108, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i32, ptr %i.n, align 8, !alias.scope !108, !noalias !107, !noundef !11
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !107, !noalias !108, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !108, !noalias !107, !noundef !11
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.w = load i32, ptr %i.v, align 8, !alias.scope !107, !noalias !108, !noundef !11
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !108, !noalias !107, !noundef !11
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.f, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !107, !noalias !108, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !108, !noalias !107, !noundef !11
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.g:                                             ; preds = %bb.f
  %i.af = load i64, ptr %i.a, align 8, !alias.scope !107, !noalias !108, !noundef !11
  %i.ag = load i64, ptr %1, align 8, !alias.scope !108, !noalias !107, !noundef !11
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !107, !noalias !108, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !108, !noalias !107, !noundef !11
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.i, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !107, !noalias !108, !noundef !11
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !108, !noalias !107, !noundef !11
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !107, !noalias !108, !noundef !11
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !108, !noalias !107, !noundef !11
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %bb.k, label %"_ZN66_$LT$jiff..span..SpanFieldwise$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd7588fe82ae6c58cE.exit"

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !107, !noalias !108, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !108, !noalias !107, !noundef !11
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

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %.val12, i64 20
  %i.l = load i64, ptr %i.k, align 8, !range !15, !noundef !11
  %.not.i = icmp eq i64 %i.l, -9223372036854775808
  br i1 %.not.i, label %.thread63, label %bb.e

.thread63:                                        ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.n = load i32, ptr %i.m, align 4, !noundef !11
  %i.o = load i64, ptr %1, align 8, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 8, !noundef !11
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %.val12, i64 28
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
end_hunk_0
begin_hunk_1_@"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0a98337e122d8fe8E":bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @960, i64 noundef 5), !noalias !311
  br label %"_ZN71_$LT$jiff..shared..posix..HourIanaError$u20$as$u20$core..fmt..Debug$GT$3fmt17h270d85625c31ffc8E.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !313
  store ptr %i.b, ptr %i.a, align 8, !noalias !313
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @959, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @958)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !313
  br label %"_ZN71_$LT$jiff..shared..posix..HourIanaError$u20$as$u20$core..fmt..Debug$GT$3fmt17h270d85625c31ffc8E.exit"

"_ZN71_$LT$jiff..shared..posix..HourIanaError$u20$as$u20$core..fmt..Debug$GT$3fmt17h270d85625c31ffc8E.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0e2a419991f7756bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.c = load i8, ptr %i.b, align 1, !range !27, !alias.scope !317, !noalias !318, !noundef !11
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1117, i64 noundef 13), !noalias !317
  br label %"_ZN74_$LT$jiff..error..util..ParseFractionError$u20$as$u20$core..fmt..Debug$GT$3fmt17h887515eed026b9beE.exit"

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1696, i64 noundef 13), !noalias !317
  br label %"_ZN74_$LT$jiff..error..util..ParseFractionError$u20$as$u20$core..fmt..Debug$GT$3fmt17h887515eed026b9beE.exit"

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !319
  store ptr %i.f, ptr %i.a, align 8, !noalias !319
  %i.g = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1118, i64 noundef 12, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !319
  br label %"_ZN74_$LT$jiff..error..util..ParseFractionError$u20$as$u20$core..fmt..Debug$GT$3fmt17h887515eed026b9beE.exit"

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1119, i64 noundef 6), !noalias !317
  br label %"_ZN74_$LT$jiff..error..util..ParseFractionError$u20$as$u20$core..fmt..Debug$GT$3fmt17h887515eed026b9beE.exit"

"_ZN74_$LT$jiff..error..util..ParseFractionError$u20$as$u20$core..fmt..Debug$GT$3fmt17h887515eed026b9beE.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ed6be4994790391E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !322
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1754, i64 noundef 14)
  %i.d = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1756, i64 noundef 4, ptr noundef nonnull align 1 @1788, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !322
  store i16 0, ptr %i.b, align 2, !noalias !322
  %i.e = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1757, i64 noundef 3, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1709)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !322
  store i16 99, ptr %i.a, align 2, !noalias !322
  %i.f = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1758, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1709)
  %i.g = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !322
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0eeab43e7a885381E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !326, !noalias !327, !nonnull !11, !align !13, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !326, !noalias !327, !noundef !11
  %i.e = tail call noundef zeroext i1 @"_ZN60_$LT$std..ffi..os_str..OsStr$u20$as$u20$core..fmt..Debug$GT$3fmt17h523fedaeaea44e01E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !326
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h100e54c43c1f49eeE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %.val = load i8, ptr %i.a, align 1, !range !28, !noundef !11 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h100e54c43c1f49eeE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h100e54c43c1f49eeE.610", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h124c0978d6cbba62E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !330
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1754, i64 noundef 14)
  %i.d = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1756, i64 noundef 4, ptr noundef nonnull align 1 @1792, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !330
  store i8 0, ptr %i.b, align 1, !noalias !330
  %i.e = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1757, i64 noundef 3, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1764)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !330
  store i8 99, ptr %i.a, align 1, !noalias !330
  %i.f = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1758, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1764)
  %i.g = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !330
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h13ef8be94ceea2bfE"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !333
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1754, i64 noundef 14)
  %i.d = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1756, i64 noundef 4, ptr noundef nonnull align 1 @1771, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !333
  store i64 0, ptr %i.b, align 8, !noalias !333
  %i.e = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1757, i64 noundef 3, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !333
  store i64 86399999999999, ptr %i.a, align 8, !noalias !333
  %i.f = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1758, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @640)
  %i.g = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !333
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1409139cd9b5a257E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %.val = load i8, ptr %i.a, align 1, !range !29, !noundef !11 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1409139cd9b5a257E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1409139cd9b5a257E.611", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c3c0a383a761ea9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.c = load i8, ptr %i.b, align 1, !range !18, !alias.scope !337, !noalias !338, !noundef !11
  %i.d = icmp eq i8 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @960, i64 noundef 5), !noalias !337
  br label %"_ZN68_$LT$jiff..shared..posix..MonthError$u20$as$u20$core..fmt..Debug$GT$3fmt17hdd8cfd6ae3a6bffbE.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !339
  store ptr %i.b, ptr %i.a, align 8, !noalias !339
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @959, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @958)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !339
  br label %"_ZN68_$LT$jiff..shared..posix..MonthError$u20$as$u20$core..fmt..Debug$GT$3fmt17hdd8cfd6ae3a6bffbE.exit"

"_ZN68_$LT$jiff..shared..posix..MonthError$u20$as$u20$core..fmt..Debug$GT$3fmt17hdd8cfd6ae3a6bffbE.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c84333a556ded47E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.b = load i8, ptr %i.a, align 1, !range !30, !alias.scope !343, !noalias !344, !noundef !11 ; 2 uses
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN53_$LT$jiff..span..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h213add3c726e3375E.648", i64 %i.d
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext), !noalias !343
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c90f89bba6c56a1E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.bb = load i8, ptr %i.ba, align 1, !range !31, !alias.scope !348, !noalias !349, !noundef !11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 52 uses
  switch i8 %i.bb, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
    i8 29, label %bb.ae
    i8 30, label %bb.af
    i8 31, label %bb.ag
    i8 32, label %bb.ah
    i8 33, label %bb.ai
    i8 34, label %bb.aj
    i8 35, label %bb.ak
    i8 36, label %bb.al
    i8 37, label %bb.am
    i8 38, label %bb.an
    i8 39, label %bb.ao
    i8 40, label %bb.ap
    i8 41, label %bb.aq
    i8 42, label %bb.ar
    i8 43, label %bb.as
    i8 44, label %bb.at
    i8 45, label %bb.au
    i8 46, label %bb.av
    i8 47, label %bb.aw
    i8 48, label %bb.ax
    i8 49, label %bb.ay
    i8 50, label %bb.az
    i8 51, label %bb.ba
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !350
  store ptr %i.bc, ptr %i.az, align 8, !noalias !350
  %i.bd = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @651, i64 noundef 7, ptr noundef nonnull align 1 %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @650)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !350
  br label %"_ZN63_$LT$jiff..util..b..BoundsError$u20$as$u20$core..fmt..Debug$GT$3fmt17h0acea12bb05f1cffE.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !350
  store ptr %i.bc, ptr %i.ay, align 8, !noalias !350
  %i.be = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @653, i64 noundef 18, ptr noundef nonnull align 1 %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @652)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !350
  br label %"_ZN63_$LT$jiff..util..b..BoundsError$u20$as$u20$core..fmt..Debug$GT$3fmt17h0acea12bb05f1cffE.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !350
  store ptr %i.bc, ptr %i.ax, align 8, !noalias !350
  %i.bf = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @655, i64 noundef 14, ptr noundef nonnull align 1 %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @654)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !350
  br label %"_ZN63_$LT$jiff..util..b..BoundsError$u20$as$u20$core..fmt..Debug$GT$3fmt17h0acea12bb05f1cffE.exit"

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !350
  store ptr %i.bc, ptr %i.aw, align 8, !noalias !350
  %i.bg = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @453, i64 noundef 3, ptr noundef nonnull align 1 %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @656)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !350
  br label %"_ZN63_$LT$jiff..util..b..BoundsError$u20$as$u20$core..fmt..Debug$GT$3fmt17h0acea12bb05f1cffE.exit"

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !350
  store ptr %i.bc, ptr %i.av, align 8, !noalias !350
  %i.bh = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @658, i64 noundef 9, ptr noundef nonnull align 1 %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @657)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !350
  br label %"_ZN63_$LT$jiff..util..b..BoundsError$u20$as$u20$core..fmt..Debug$GT$3fmt17h0acea12bb05f1cffE.exit"

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !350
  store ptr %i.bc, ptr %i.au, align 8, !noalias !350
  %i.bi = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @454, i64 noundef 4, ptr noundef nonnull align 1 %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @659)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !350
  br label %"_ZN63_$LT$jiff..util..b..BoundsError$u20$as$u20$core..fmt..Debug$GT$3fmt17h0acea12bb05f1cffE.exit"

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !350
  store ptr %i.bc, ptr %i.at, align 8, !noalias !350
  %i.bj = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @661, i64 noundef 6, ptr noundef nonnull align 1 %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @660)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !350
  br label %"_ZN63_$LT$jiff..util..b..BoundsError$u20$as$u20$core..fmt..Debug$GT$3fmt17h0acea12bb05f1cffE.exit"

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !350
  store ptr %i.bc, ptr %i.as, align 8, !noalias !350
  %i.bk = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @663, i64 noundef 7, ptr noundef nonnull align 1 %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @662)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !350
  br label %"_ZN63_$LT$jiff..util..b..BoundsError$u20$as$u20$core..fmt..Debug$GT$3fmt17h0acea12bb05f1cffE.exit"

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !350
  store ptr %i.bc, ptr %i.ar, align 8, !noalias !350
  %i.bl = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @665, i64 noundef 7, ptr noundef nonnull align 1 %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @664)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !350
  br label %"_ZN63_$LT$jiff..util..b..BoundsError$u20$as$u20$core..fmt..Debug$GT$3fmt17h0acea12bb05f1cffE.exit"

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !350
  store ptr %i.bc, ptr %i.aq, align 8, !noalias !350
  %i.bm = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @667, i64 noundef 9, ptr noundef nonnull align 1 %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @666)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !350
  br label %"_ZN63_$LT$jiff..util..b..BoundsError$u20$as$u20$core..fmt..Debug$GT$3fmt17h0acea12bb05f1cffE.exit"

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !350
  store ptr %i.bc, ptr %i.ap, align 8, !noalias !350
  %i.bn = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @669, i64 noundef 11, ptr noundef nonnull align 1 %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @668)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !350
  br label %"_ZN63_$LT$jiff..util..b..BoundsError$u20$as$u20$core..fmt..Debug$GT$3fmt17h0acea12bb05f1cffE.exit"

bb.m:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h6078b03b0458b140E":bb.a
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
    i8 29, label %bb.ae
    i8 30, label %bb.af
    i8 31, label %bb.ag
    i8 32, label %bb.ah
    i8 33, label %bb.ai
    i8 34, label %bb.aj
    i8 35, label %bb.ak
    i8 36, label %bb.al
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1656, i64 noundef 12), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1657, i64 noundef 20), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1658, i64 noundef 14), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1659, i64 noundef 24), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1660, i64 noundef 25), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.g:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1661, i64 noundef 33), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.h:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1662, i64 noundef 27), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.i:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1663, i64 noundef 35), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !546
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.o, ptr %i.d, align 8, !noalias !546
  %i.p = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1665, i64 noundef 14, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1666, i64 noundef 9, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1664)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !546
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.k:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1667, i64 noundef 23), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.l:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !546
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store ptr %i.s, ptr %i.c, align 8, !noalias !546
  %i.t = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1668, i64 noundef 24, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1669, i64 noundef 8, ptr noundef nonnull readonly align 1 %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1030, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1069, i64 noundef 3, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !546
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !546
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.u, ptr %i.b, align 8, !noalias !546
  %i.v = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1670, i64 noundef 30, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1669, i64 noundef 8, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !546
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !546
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.w, ptr %i.a, align 8, !noalias !546
  %i.x = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1671, i64 noundef 16, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1056, i64 noundef 9, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !546
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.o:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1672, i64 noundef 25), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.p:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1673, i64 noundef 20), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.q:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1674, i64 noundef 27), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.r:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1675, i64 noundef 35), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.s:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1676, i64 noundef 30), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.t:                                             ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1020, i64 noundef 8), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.u:                                             ; preds = %bb.a
  %i.ae = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1677, i64 noundef 14), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.v:                                             ; preds = %bb.a
  %i.af = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1678, i64 noundef 12), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.w:                                             ; preds = %bb.a
  %i.ag = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1679, i64 noundef 22), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.x:                                             ; preds = %bb.a
  %i.ah = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1021, i64 noundef 9), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.y:                                             ; preds = %bb.a
  %i.ai = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1680, i64 noundef 18), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.z:                                             ; preds = %bb.a
  %i.aj = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1681, i64 noundef 16), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.aa:                                            ; preds = %bb.a
  %i.ak = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1682, i64 noundef 24), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.ab:                                            ; preds = %bb.a
  %i.al = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1022, i64 noundef 11), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.ac:                                            ; preds = %bb.a
  %i.am = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1683, i64 noundef 21), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.ad:                                            ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1684, i64 noundef 10), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.ae:                                            ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1025, i64 noundef 11), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.af:                                            ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1685, i64 noundef 21), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.ag:                                            ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1686, i64 noundef 14), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.ah:                                            ; preds = %bb.a
  %i.ar = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1687, i64 noundef 18), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.ai:                                            ; preds = %bb.a
  %i.as = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1026, i64 noundef 9), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.aj:                                            ; preds = %bb.a
  %i.at = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1688, i64 noundef 17), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.ak:                                            ; preds = %bb.a
  %i.au = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1689, i64 noundef 16), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

bb.al:                                            ; preds = %bb.a
  %i.av = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1690, i64 noundef 26), !noalias !544
  br label %"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit"

"_ZN74_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Debug$GT$3fmt17h288e170ccfa56a8dE.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ %i.n, %bb.i ], [ %i.p, %bb.j ], [ %i.q, %bb.k ], [ %i.t, %bb.l ], [ %i.v, %bb.m ], [ %i.x, %bb.n ], [ %i.y, %bb.o ], [ %i.z, %bb.p ], [ %i.aa, %bb.q ], [ %i.ab, %bb.r ], [ %i.ac, %bb.s ], [ %i.ad, %bb.t ], [ %i.ae, %bb.u ], [ %i.af, %bb.v ], [ %i.ag, %bb.w ], [ %i.ah, %bb.x ], [ %i.ai, %bb.y ], [ %i.aj, %bb.z ], [ %i.ak, %bb.aa ], [ %i.al, %bb.ab ], [ %i.am, %bb.ac ], [ %i.an, %bb.ad ], [ %i.ao, %bb.ae ], [ %i.ap, %bb.af ], [ %i.aq, %bb.ag ], [ %i.ar, %bb.ah ], [ %i.as, %bb.ai ], [ %i.at, %bb.aj ], [ %i.au, %bb.ak ], [ %i.av, %bb.al ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h61570d97803fcd28E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.b = load i8, ptr %i.a, align 1, !range !41, !alias.scope !550, !noalias !551, !noundef !11
  %switch.tableidx = add nsw i8 %i.b, -1          ; 2 uses
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN66_$LT$jiff..civil..weekday..Weekday$u20$as$u20$core..fmt..Debug$GT$3fmt17h59cf32bd568f684eE", i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN66_$LT$jiff..civil..weekday..Weekday$u20$as$u20$core..fmt..Debug$GT$3fmt17h59cf32bd568f684eE.657", i64 %i.d
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext), !noalias !550
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h62031f1106e1ddcfE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %i.e = load i8, ptr %i.d, align 1, !range !32, !alias.scope !555, !noalias !556, !noundef !11 ; 2 uses
  %i.f = add nsw i8 %i.e, -7
  %i.g = icmp samesign ugt i8 %i.e, 6
  %narrow.i = select i1 %i.g, i8 %i.f, i8 5
  switch i8 %narrow.i, label %bb.b [
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
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1563, i64 noundef 20), !noalias !555
  br label %"_ZN72_$LT$jiff..shared..posix..PosixDateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd56af3d26c60336dE.exit"

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1564, i64 noundef 24), !noalias !555
  br label %"_ZN72_$LT$jiff..shared..posix..PosixDateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd56af3d26c60336dE.exit"

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !557
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.j, ptr %i.c, align 8, !noalias !557
  %i.k = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1566, i64 noundef 10, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1565)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !557
  br label %"_ZN72_$LT$jiff..shared..posix..PosixDateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd56af3d26c60336dE.exit"

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !557
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.l, ptr %i.b, align 8, !noalias !557
  %i.m = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1568, i64 noundef 12, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1567)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !557
  br label %"_ZN72_$LT$jiff..shared..posix..PosixDateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd56af3d26c60336dE.exit"

bb.g:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1569, i64 noundef 14), !noalias !555
  br label %"_ZN72_$LT$jiff..shared..posix..PosixDateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd56af3d26c60336dE.exit"

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !557
  store ptr %i.d, ptr %i.a, align 8, !noalias !557
  %i.o = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1571, i64 noundef 14, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1570)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !557
  br label %"_ZN72_$LT$jiff..shared..posix..PosixDateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd56af3d26c60336dE.exit"

"_ZN72_$LT$jiff..shared..posix..PosixDateError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd56af3d26c60336dE.exit": ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.k, %bb.e ], [ %i.m, %bb.f ], [ %i.n, %bb.g ], [ %i.o, %bb.h ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h621420535e1a91deE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.f = load i8, ptr %i.e, align 1, !range !29, !alias.scope !561, !noalias !562, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !563
  store ptr %i.g, ptr %i.d, align 8, !noalias !563
  %i.h = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1579, i64 noundef 9, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1578)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !563
  br label %"_ZN74_$LT$jiff..shared..posix..PosixOffsetError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8110b8b20b9714c6E.exit"

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1580, i64 noundef 17), !noalias !561
  br label %"_ZN74_$LT$jiff..shared..posix..PosixOffsetError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8110b8b20b9714c6E.exit"

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1581, i64 noundef 17), !noalias !561
  br label %"_ZN74_$LT$jiff..shared..posix..PosixOffsetError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8110b8b20b9714c6E.exit"

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !563
  store ptr %i.g, ptr %i.c, align 8, !noalias !563
  %i.k = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @455, i64 noundef 6, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1582)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !563
  br label %"_ZN74_$LT$jiff..shared..posix..PosixOffsetError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8110b8b20b9714c6E.exit"

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !563
  store ptr %i.g, ptr %i.b, align 8, !noalias !563
  %i.l = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1584, i64 noundef 12, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1583)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !563
  br label %"_ZN74_$LT$jiff..shared..posix..PosixOffsetError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8110b8b20b9714c6E.exit"

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !563
  store ptr %i.g, ptr %i.a, align 8, !noalias !563
  %i.m = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @456, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1585)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !563
  br label %"_ZN74_$LT$jiff..shared..posix..PosixOffsetError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8110b8b20b9714c6E.exit"

"_ZN74_$LT$jiff..shared..posix..PosixOffsetError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8110b8b20b9714c6E.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h62381ff365f0175eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.c = load i8, ptr %i.b, align 1, !range !18, !alias.scope !567, !noalias !568, !noundef !11
  %i.d = icmp eq i8 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @960, i64 noundef 5), !noalias !567
  br label %"_ZN72_$LT$jiff..shared..posix..HourPosixError$u20$as$u20$core..fmt..Debug$GT$3fmt17he33a12c30fd4320eE.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !569
  store ptr %i.b, ptr %i.a, align 8, !noalias !569
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @959, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @958)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !569
  br label %"_ZN72_$LT$jiff..shared..posix..HourPosixError$u20$as$u20$core..fmt..Debug$GT$3fmt17he33a12c30fd4320eE.exit"

"_ZN72_$LT$jiff..shared..posix..HourPosixError$u20$as$u20$core..fmt..Debug$GT$3fmt17he33a12c30fd4320eE.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h62917f7348568c4fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %.val = load i8, ptr %i.a, align 1, !range !21, !noundef !11
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 22, i64 23
  %.1.i = select i1 %i.b, ptr @1751, ptr @1750
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.1.i, i64 noundef %..i)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h63944fc913d5f126E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.c = load i8, ptr %i.b, align 1, !range !42, !alias.scope !573, !noalias !574, !noundef !11 ; 2 uses
  %i.d = add nsw i8 %i.c, -10
  %i.e = icmp samesign ugt i8 %i.c, 9
  %narrow.i = select i1 %i.e, i8 %i.d, i8 8
  switch i8 %narrow.i, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @595, i64 noundef 11), !noalias !573
  br label %"_ZN62_$LT$jiff..error..zoned..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7516c4d1cce6291dE.exit"

end_hunk_2
begin_hunk_3_@_ZN4jiff15signed_duration14SignedDuration14datetime_until17hde8cf2e952b3bc03E:bb.a
  %i.ao = mul nsw i64 %i.an, 86400
  br label %_ZN4jiff15signed_duration14SignedDuration10date_until17h0d00057dcb7e1bd0E.exit

_ZN4jiff15signed_duration14SignedDuration10date_until17h0d00057dcb7e1bd0E.exit: ; preds = %bb.a, %bb.b
  %.sroa.019.0.i.i = phi i64 [ %i.ao, %bb.b ], [ 0, %bb.a ]
  %.sroa.04.0.copyload = load i64, ptr %0, align 4 ; 4 uses
  %.sroa.06.0.copyload = load i64, ptr %1, align 4 ; 4 uses
  %i.ap = shl i64 %.sroa.06.0.copyload, 24
  %i.aq = ashr i64 %i.ap, 56
  %i.ar = shl i64 %.sroa.06.0.copyload, 16
  %i.as = ashr i64 %i.ar, 56
  %i.at = shl i64 %.sroa.06.0.copyload, 8
  %i.au = ashr i64 %i.at, 56
  %sext.i.i = shl i64 %.sroa.06.0.copyload, 32
  %i.av = ashr exact i64 %sext.i.i, 32
  %i.aw = shl i64 %.sroa.04.0.copyload, 24
  %i.ax = ashr i64 %i.aw, 56
  %i.ay = shl i64 %.sroa.04.0.copyload, 16
  %i.az = ashr i64 %i.ay, 56
  %i.ba = shl i64 %.sroa.04.0.copyload, 8
  %i.bb = ashr i64 %i.ba, 56
  %sext27.i.i = shl i64 %.sroa.04.0.copyload, 32
  %i.bc = ashr exact i64 %sext27.i.i, 32
  %reass.add.i.i = sub nsw i64 %i.au, %i.bb
  %reass.mul.i.i = mul nsw i64 %reass.add.i.i, 1000000000
  %reass.add43.i.i = sub nsw i64 %i.aq, %i.ax
  %reass.mul44.i.i = mul nsw i64 %reass.add43.i.i, 3600000000000
  %reass.add46.i.i = sub nsw i64 %i.as, %i.az
  %reass.mul47.i.i = mul nsw i64 %reass.add46.i.i, 60000000000
  %i.bd = sub nsw i64 %i.av, %i.bc
  %i.be = add nsw i64 %i.bd, %reass.mul.i.i
  %i.bf = add nsw i64 %i.be, %reass.mul44.i.i
  %i.bg = add nsw i64 %i.bf, %reass.mul47.i.i     ; 2 uses
  %i.bh = sdiv i64 %i.bg, 1000000000
  %i.bi = srem i64 %i.bg, 1000000000              ; 2 uses
  %i.bj = trunc nsw i64 %i.bi to i32              ; 5 uses
  %i.bk = add nsw i64 %i.bh, %.sroa.019.0.i.i     ; 7 uses
  %i.bl = icmp eq i64 %i.bi, 0
  br i1 %i.bl, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZN4jiff15signed_duration14SignedDuration10date_until17h0d00057dcb7e1bd0E.exit
  %i.bm = icmp eq i64 %i.bk, 0
  br i1 %i.bm, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = tail call i64 @llvm.scmp.i64.i64(i64 %i.bk, i64 0)
  %i.bo = tail call i64 @llvm.scmp.i64.i32(i32 %i.bj, i32 0)
  %.not.i = icmp eq i64 %i.bn, %i.bo
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = icmp slt i64 %i.bk, 0
  br i1 %i.bp, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = add nsw i64 %i.bk, -1
  %i.br = add nsw i32 %i.bj, 1000000000
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bs = add nsw i64 %i.bk, 1
  %i.bt = add nsw i32 %i.bj, -1000000000
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZN4jiff15signed_duration14SignedDuration10date_until17h0d00057dcb7e1bd0E.exit, %bb.g, %bb.f, %bb.d
  %.sroa.6.0.ph = phi i32 [ %i.bt, %bb.g ], [ %i.bj, %bb.c ], [ 0, %_ZN4jiff15signed_duration14SignedDuration10date_until17h0d00057dcb7e1bd0E.exit ], [ %i.bj, %bb.d ], [ %i.br, %bb.f ]
  %.sroa.4.0.ph = phi i64 [ %i.bs, %bb.g ], [ 0, %bb.c ], [ %i.bk, %_ZN4jiff15signed_duration14SignedDuration10date_until17h0d00057dcb7e1bd0E.exit ], [ %i.bk, %bb.d ], [ %i.bq, %bb.f ]
  %i.bu = insertvalue { i64, i32 } poison, i64 %.sroa.4.0.ph, 0
  %i.bv = insertvalue { i64, i32 } %i.bu, i32 %.sroa.6.0.ph, 1
  ret { i64, i32 } %i.bv
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_ZN4jiff15signed_duration14SignedDuration15timestamp_until17hfff8f977205e4ab0E(i64 noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, -9223372036854775808
  br i1 %i.a, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.b = sub nsw i64 0, %0
  %i.c = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %2, i64 %i.b) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 0         ; 4 uses
  %i.e = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.e, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.f = sub i32 %3, %1                           ; 6 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp sgt i32 %i.f, 999999999
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp slt i32 %i.f, -999999999
  br i1 %i.i, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.j = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 1) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i, label %bb.j, !prof !23

bb.g:                                             ; preds = %bb.e
  %i.l = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 -1) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i, label %bb.h, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, i1 } %i.l, 0
  %i.o = add nsw i32 %i.f, 1000000000
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h, %bb.e
  %.sroa.010.1.i.i = phi i32 [ %i.s, %bb.j ], [ %i.o, %bb.h ], [ %i.f, %bb.e ] ; 6 uses
  %.sroa.0.1.i.i = phi i64 [ %i.r, %bb.j ], [ %i.n, %bb.h ], [ %i.d, %bb.e ] ; 7 uses
  %i.p = icmp eq i64 %.sroa.0.1.i.i, 0
  %i.q = icmp eq i32 %.sroa.010.1.i.i, 0
  %or.cond.i.i = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond.i.i, label %"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE.exit", label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.r = extractvalue { i64, i1 } %i.j, 0
  %i.s = add nsw i32 %i.f, -1000000000
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.t = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.0.1.i.i, i64 0)
  %i.u = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.010.1.i.i, i32 0)
  %.not.i.i = icmp eq i64 %i.t, %i.u
  br i1 %.not.i.i, label %"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = icmp slt i64 %.sroa.0.1.i.i, 0
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = add nsw i64 %.sroa.0.1.i.i, -1
  %i.x = add nsw i32 %.sroa.010.1.i.i, 1000000000
  br label %"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE.exit"

bb.n:                                             ; preds = %bb.l
  %i.y = add nsw i64 %.sroa.0.1.i.i, 1
  %i.z = add nsw i32 %.sroa.010.1.i.i, -1000000000
  br label %"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE.exit"

_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i: ; preds = %bb.g, %bb.f, %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1974, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1975) #45
  unreachable

"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE.exit": ; preds = %bb.c, %bb.i, %bb.k, %bb.m, %bb.n
  %.sroa.6.0.ph.i = phi i32 [ %.sroa.010.1.i.i, %bb.k ], [ %i.x, %bb.m ], [ %i.z, %bb.n ], [ %.sroa.010.1.i.i, %bb.i ], [ 0, %bb.c ]
  %.sroa.4.0.ph.i = phi i64 [ %.sroa.0.1.i.i, %bb.k ], [ %i.w, %bb.m ], [ %i.y, %bb.n ], [ %.sroa.0.1.i.i, %bb.i ], [ %i.d, %bb.c ]
  %i.aa = insertvalue { i64, i32 } poison, i64 %.sroa.4.0.ph.i, 0
  %i.ab = insertvalue { i64, i32 } %i.aa, i32 %.sroa.6.0.ph.i, 1
  ret { i64, i32 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff15signed_duration19SignedDurationRound5round17h4d539854842aa040E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !30, !noundef !11 ; 5 uses
  %i.d = icmp samesign ugt i8 %i.c, 5
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !noundef !11  ; 2 uses
  %i.f = add i64 %i.e, -1000000001
  %or.cond.i.i = icmp ult i64 %i.f, -1000000000
  %i.g = shl nuw nsw i64 %i.e, 32
  %.sroa.0.0.insert.insert.i.i = select i1 %or.cond.i.i, i64 2561, i64 %i.g ; 2 uses
  %i.h = trunc i64 %.sroa.0.0.insert.insert.i.i to i1
  br i1 %i.h, label %bb.d, label %switch.lookup

bb.c:                                             ; preds = %bb.a
  %.sroa.07.1.insert.ext.i = zext nneg i8 %i.c to i24
  %.sroa.07.1.insert.shift.i = shl nuw nsw i24 %.sroa.07.1.insert.ext.i, 8
  %.sroa.07.1.insert.insert.i = or disjoint i24 %.sroa.07.1.insert.shift.i, 9
  %i.i = tail call noundef ptr @"_ZN4jiff5error4unit110_$LT$impl$u20$core..convert..From$LT$jiff..error..unit..UnitConfigError$GT$$u20$for$u20$jiff..error..Error$GT$4from17haa2deed9d06057adE"(i24 %.sroa.07.1.insert.insert.i), !noalias !1304
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h9b210e81f6355345E"(i8 noundef 2, i8 noundef 10), !noalias !1305
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.76.0.ph = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.76.0.ph, ptr %i.k, align 8
  store i64 1, ptr %0, align 8
  br label %bb.h

switch.lookup:                                    ; preds = %bb.b
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i, 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.m = load i8, ptr %i.l, align 1, !range !28, !noundef !11
  %i.n = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN4jiff9timestamp14TimestampRound5round17hfd5119684f5b84aaE.646, i64 %i.n
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.ext = zext i32 %switch.load to i64
  %i.o = zext nneg i8 %i.c to i64
  %switch.gep11 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN4jiff9timestamp14TimestampRound5round17hfd5119684f5b84aaE.647, i64 %i.o
  %switch.load12 = load i16, ptr %switch.gep11, align 2
  %switch.ext13 = zext i16 %switch.load12 to i64
  %i.p = mul nuw nsw i64 %.sroa.6.0.extract.shift.i.i, %switch.ext ; 2 uses
  %i.q = urem i64 %i.p, 1000000000
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = mul nuw nsw i64 %.sroa.6.0.extract.shift.i.i, %switch.ext13
  %i.t = udiv i64 %i.p, 1000000000
  %i.u = add nuw nsw i64 %i.t, %i.s
  call fastcc void @_ZN4jiff4util5round9RoundMode17round_by_duration17hf05f9d8f95be315dE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i8 noundef range(i8 0, 9) %i.m, i64 noundef %2, i32 noundef %3, i64 noundef %i.u, i32 noundef %i.r)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.v = load i64, ptr %i.a, align 8, !range !53, !alias.scope !1307, !noalias !1306, !noundef !11
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %switch.lookup
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1307, !noalias !1306, !noundef !11
  %i.z = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$12with_context28_$u7b$$u7b$closure$u7d$$u7d$17h165caa3a26d21674E"(i8 %i.c, ptr noundef %i.y), !noalias !1308
  %i.aa = ptrtoint ptr %i.z to i64
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$12with_context17h16018d696a36af42E.exit"

bb.g:                                             ; preds = %switch.lookup
  %i.ab = load i64, ptr %i.x, align 8, !alias.scope !1307, !noalias !1306, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !1307, !noalias !1306, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ad, ptr %i.ae, align 8, !alias.scope !1306, !noalias !1307
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$12with_context17h16018d696a36af42E.exit"

"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$12with_context17h16018d696a36af42E.exit": ; preds = %bb.f, %bb.g
  %.sink.i3 = phi i64 [ %i.aa, %bb.f ], [ %i.ab, %bb.g ]
  %storemerge.i = phi i64 [ 1, %bb.f ], [ 0, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i3, ptr %i.af, align 8, !alias.scope !1306, !noalias !1307
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !1306, !noalias !1307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$12with_context17h16018d696a36af42E.exit", %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff15signed_duration21parse_iso_or_friendly17hd981613663ac94e1E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 8
  %i.d = call noundef ptr @"_ZN4jiff5error3fmt99_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h6f96ac308df63112E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %1, align 1, !noundef !11   ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 45, label %bb.e
    i8 43, label %bb.e
  ]

bb.d:                                             ; preds = %bb.i, %_ZN4jiff3fmt8friendly6parser10SpanParser14parse_duration17h0db155df77dde45bE.exit, %bb.f, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c, %bb.c
  %.not13 = icmp eq i64 %2, 1
  br i1 %.not13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.h, align 1
  store i8 1, ptr %i.b, align 8
  %i.i = call noundef ptr @"_ZN4jiff5error3fmt99_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h6f96ac308df63112E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.k = load i8, ptr %i.f, align 1, !noundef !11
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %.sroa.04.0 = phi i8 [ %i.k, %bb.g ], [ %i.g, %bb.c ]
  %i.l = and i8 %.sroa.04.0, -33
  %or.cond3 = icmp eq i8 %i.l, 80
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4jiff3fmt8temporal6parser10SpanParser21parse_signed_duration3imp17hf154bc2794d10802E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nonnull readonly align 1 captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %2)
  br label %bb.d

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1316
  call void @_ZN4jiff3fmt8friendly6parser10SpanParser14parse_duration3imp17h0d500ea116c888fcE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nonnull readonly align 1 captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %2), !noalias !1315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.m = load i64, ptr %i.a, align 8, !range !53, !alias.scope !1318, !noalias !1319, !noundef !11
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1318, !noalias !1319, !noundef !11
  %i.q = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h68fb01295b7a4c56E"(ptr noundef %i.p)
  %i.r = ptrtoint ptr %i.q to i64
  br label %_ZN4jiff3fmt8friendly6parser10SpanParser14parse_duration17h0db155df77dde45bE.exit

bb.l:                                             ; preds = %bb.j
  %i.s = load i64, ptr %i.o, align 8, !alias.scope !1318, !noalias !1319, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i32, ptr %i.t, align 8, !alias.scope !1318, !noalias !1319, !noundef !11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.u, ptr %i.v, align 8, !alias.scope !1320, !noalias !1321
  br label %_ZN4jiff3fmt8friendly6parser10SpanParser14parse_duration17h0db155df77dde45bE.exit

_ZN4jiff3fmt8friendly6parser10SpanParser14parse_duration17h0db155df77dde45bE.exit: ; preds = %bb.k, %bb.l
  %.sink.i.i = phi i64 [ %i.r, %bb.k ], [ %i.s, %bb.l ]
  %storemerge.i.i = phi i64 [ 1, %bb.k ], [ 0, %bb.l ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i.i, ptr %i.w, align 8, !alias.scope !1320, !noalias !1321
  store i64 %storemerge.i.i, ptr %0, align 8, !alias.scope !1320, !noalias !1321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1316
  br label %bb.d
}

; Function Attrs: cold nonlazybind uwtable
define { i64, ptr } @_ZN4jiff2tz2db12concatenated5inner8Database9from_path17hc7a65342ef959259E(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1) unnamed_addr #13 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = tail call noundef ptr @"_ZN96_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..CrateFeatureError$GT$$GT$4from17h2ef43b54a128a837E"(i8 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.c = call fastcc noundef ptr @_ZN4jiff5error5Error7context17hd510637dfff66126E(ptr noundef %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.c, 1
  ret { i64, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN4jiff2tz2db16TimeZoneDatabase3get17h8dace9c727dce1bbE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !11
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %_ZN4jiff5error2tz2db5Error39failed_time_zone_no_database_configured17hf1650db85221e377E.exit, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !1336
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !1336 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %i.h = ptrtoint ptr %i.f to i64
  br label %_ZN4jiff5error2tz2db5Error39failed_time_zone_no_database_configured17hf1650db85221e377E.exit

bb.d:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !1337
  unreachable

_ZN4jiff5error2tz2db5Error39failed_time_zone_no_database_configured17hf1650db85221e377E.exit: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.c
  %.sroa.10.0.i.i = phi i64 [ %i.h, %bb.c ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ]
  %i.i = inttoptr i64 %.sroa.10.0.i.i to ptr      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !1338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 3, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %.sroa.317.0..sroa_idx, align 8
  %i.j = call noundef ptr @"_ZN4jiff5error2tz2db102_$LT$impl$u20$core..convert..From$LT$jiff..error..tz..db..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h81fa0cf09363c700E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_ZN4jiff5error2tz2db5Error16failed_time_zone17ha4362585b7cd6dafE.exit, %_ZN4jiff5error2tz2db5Error39failed_time_zone_no_database_configured17hf1650db85221e377E.exit
  %.sroa.3.0 = phi ptr [ %i.t, %_ZN4jiff5error2tz2db5Error16failed_time_zone17ha4362585b7cd6dafE.exit ], [ %i.j, %_ZN4jiff5error2tz2db5Error39failed_time_zone_no_database_configured17hf1650db85221e377E.exit ]
  %i.k = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.3.0, 1
end_hunk_3
begin_hunk_4_@"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$6format17hba04c3c00b5ddfc4E":bb.a
  %i.ki = call { i64, ptr } @_ZN4jiff3fmt6buffer14BorrowedWriter5flush17hf57020ce8e680904E(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ka) ; 2 uses
  %i.kj = extractvalue { i64, ptr } %i.ki, 0
  %i.kk = trunc nuw i64 %i.kj to i1
  br i1 %i.kk, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.pre2545 = load i64, ptr %i.kc, align 8, !alias.scope !5419, !noalias !5418
  %.pre2546 = load i16, ptr %i.ke, align 8, !alias.scope !5419, !noalias !5418 ; 2 uses
  %.pre2547 = zext i16 %.pre2546 to i64           ; 2 uses
  %i.kl = icmp eq i64 %.pre2545, %.pre2547
  call void @llvm.experimental.noalias.scope.decl(metadata !5419)
  br i1 %i.kl, label %bb.w, label %_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E.exit, !prof !67

bb.w:                                             ; preds = %bb.v
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !5420
  unreachable

_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E.exit: ; preds = %bb.t, %bb.v
  %i.km = phi i16 [ %.pre2546, %bb.v ], [ %i.kf, %bb.t ]
  %.pre-phi2655 = phi i64 [ %.pre2547, %bb.v ], [ %i.kg, %bb.t ]
  %i.kn = load ptr, ptr %i.kb, align 8, !alias.scope !5419, !noalias !5418, !nonnull !11, !align !13, !noundef !11
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %.pre-phi2655
  store i8 37, ptr %i.ko, align 1, !noalias !5420
  %i.kp = add i16 %i.km, 1
  store i16 %i.kp, ptr %i.ke, align 8, !alias.scope !5419, !noalias !5418
  br label %.loopexit

bb.x:                                             ; preds = %bb.u
  %i.kq = extractvalue { i64, ptr } %i.ki, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.x, %_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E.exit, %bb.a, %bb.uj, %bb.ue, %bb.uc, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit50", %bb.s
  %.sroa.9.0 = phi ptr [ %i.ccw, %bb.ue ], [ %.sroa.9.1, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit50" ], [ undef, %_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E.exit ], [ %i.jz, %bb.s ], [ %i.cdj, %bb.uj ], [ %i.ccr, %bb.uc ], [ undef, %bb.a ], [ %i.kq, %bb.x ], [ undef, %.backedge ]
  %.sroa.0.0 = phi i64 [ 1, %bb.ue ], [ 1, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit50" ], [ 0, %_ZN4jiff3fmt6buffer14BorrowedWriter16write_ascii_char17h1887c21f69737539E.exit ], [ 1, %bb.s ], [ 1, %bb.uj ], [ 1, %bb.uc ], [ 0, %bb.a ], [ 1, %bb.x ], [ 0, %.backedge ]
  %i.kr = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ks = insertvalue { i64, ptr } %i.kr, ptr %.sroa.9.0, 1
  ret { i64, ptr } %i.ks

"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit": ; preds = %bb.n, %._crit_edge.thread.i.i.i
  %.sroa.0.0.lcssa1922.i.i.i = phi i64 [ %.sroa.0.0.lcssa19.i.i.i, %._crit_edge.thread.i.i.i ], [ 0, %bb.n ] ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.75.0.copyload.i.i, i64 %.sroa.0.0.lcssa1922.i.i.i ; 3 uses
  %i.ku = sub nuw i64 %.sroa.8.0.copyload.i.i, %.sroa.0.0.lcssa1922.i.i.i ; 3 uses
  store ptr %i.kt, ptr %i.eg, align 8, !alias.scope !5421, !noalias !5422
  store i64 %i.ku, ptr %i.eh, align 8, !alias.scope !5421, !noalias !5422
  call void @llvm.experimental.noalias.scope.decl(metadata !5423)
  %.not.i41 = icmp eq i64 %i.ku, 0
  br i1 %.not.i41, label %bb.y, label %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread_crit_edge"

"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread_crit_edge": ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit"
  %.sroa.16.0.extract.trunc = trunc nsw i64 %.sroa.0.0.lcssa1922.i.i.i to i8
  %.sroa.4.2.insert.ext = zext i8 %.sroa.5.0.copyload.i.i to i32
  %.sroa.4.2.insert.shift = shl nuw nsw i32 %.sroa.4.2.insert.ext, 8
  %.sroa.4.1.insert.ext = zext nneg i8 %i.jl to i32
  %i.kv = or disjoint i32 %.sroa.4.2.insert.shift, %.sroa.4.1.insert.ext
  %.pre3012 = load i8, ptr %i.kt, align 1, !noalias !5424
  %i.kw = zext i8 %.sroa.5.0.copyload.i.i to i64
  %i.kx = shl nuw nsw i64 %i.kw, 40
  br label %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"

"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread": ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread_crit_edge", %bb.d
  %i.ky = phi i8 [ %.pre3012, %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread_crit_edge" ], [ %i.je, %bb.d ] ; 8 uses
  %.sroa.16.0.extract.trunc2674 = phi i8 [ %.sroa.16.0.extract.trunc, %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread_crit_edge" ], [ 0, %bb.d ] ; 2 uses
  %.sroa.9.0.extract.trunc2673 = phi i8 [ %.sroa.0.0.ph.i.i, %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread_crit_edge" ], [ 5, %bb.d ] ; 8 uses
  %.sroa.6.0.extract.trunc2672 = phi i8 [ %.sroa.5.0.copyload.i.i, %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread_crit_edge" ], [ 0, %bb.d ] ; 3 uses
  %.sroa.6.0.extract.shift2671 = phi i64 [ %i.kx, %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread_crit_edge" ], [ 0, %bb.d ] ; 2 uses
  %.sroa.4.02669 = phi i32 [ %i.kv, %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread_crit_edge" ], [ 327680, %bb.d ] ; 4 uses
  %i.kz = phi i64 [ %i.ku, %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread_crit_edge" ], [ %i.iz, %bb.d ]
  %i.la = phi ptr [ %i.kt, %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread_crit_edge" ], [ %i.ja, %bb.d ]
  switch i8 %i.ky, label %bb.z [
    i8 37, label %.thread2726
    i8 65, label %bb.aa
    i8 97, label %bb.ag
    i8 66, label %bb.am
    i8 98, label %bb.as
    i8 67, label %bb.at
    i8 99, label %bb.ay
    i8 68, label %bb.bi
    i8 100, label %bb.dc
    i8 101, label %bb.dh
    i8 70, label %bb.dm
    i8 102, label %bb.fh
    i8 71, label %bb.fm
    i8 103, label %bb.fs
    i8 72, label %bb.fy
    i8 104, label %bb.fz
    i8 73, label %bb.ga
    i8 106, label %bb.gb
    i8 107, label %bb.gi
    i8 108, label %bb.gj
    i8 77, label %bb.gk
    i8 109, label %bb.gl
    i8 78, label %bb.gq
    i8 110, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit683"
    i8 80, label %bb.gw
    i8 112, label %bb.ha
    i8 81, label %bb.hk
    i8 113, label %bb.hl
    i8 82, label %bb.hu
    i8 114, label %bb.io
    i8 83, label %bb.iy
    i8 115, label %bb.iz
    i8 84, label %bb.jd
    i8 116, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit600"
    i8 85, label %bb.kh
    i8 117, label %bb.kx
    i8 86, label %bb.ld
    i8 87, label %bb.li
    i8 119, label %bb.ma
    i8 88, label %bb.mg
    i8 120, label %bb.mm
    i8 89, label %bb.ms
    i8 121, label %bb.mx
    i8 90, label %bb.nc
    i8 122, label %bb.ox
    i8 46, label %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$8bump_fmt17hd881d98b9f681129E.exit475"
  ]

bb.y:                                             ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit"
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #45, !noalias !5424, !inline_history !4353
  unreachable

bb.z:                                             ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !5424
  store i8 %i.ky, ptr %i.gy, align 1, !noalias !5424
  store i8 34, ptr %i.du, align 8, !noalias !5424
  %i.lb = call noundef ptr @"_ZN4jiff5error3fmt7strtime108_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h57bc27f59ec061bdE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.du), !noalias !5424, !inline_history !4353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !5424
  br label %.thread2479

bb.aa:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  %.val.i = load ptr, ptr %i.en, align 8, !alias.scope !5423, !noalias !5425, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.val.i, i64 109
  %i.ld = load i8, ptr %i.lc, align 1, !range !26, !noalias !5426, !noundef !11 ; 2 uses
  %.not.i.i861 = icmp eq i8 %i.ld, 0
  br i1 %.not.i.i861, label %bb.ab, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h5f6c4580089777bfE.exit.i"

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !5427
  call fastcc void @_ZN4jiff3fmt7strtime14BrokenDownTime7to_date17hf8614c6855a6894eE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val.i), !noalias !5426
  %i.le = load i16, ptr %i.al, align 8, !range !62, !noalias !5427, !noundef !11
  %i.lf = trunc nuw i16 %i.le to i1
  br i1 %i.lf, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.03.0.copyload.i.i.i868 = load i32, ptr %i.gw, align 2, !noalias !5427 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5427
  %.sroa.4.0.extract.shift.i.i.i.i869 = lshr i32 %.sroa.03.0.copyload.i.i.i868, 16 ; 2 uses
  %.sroa.4.0.extract.trunc.i.i.i.i870 = trunc i32 %.sroa.4.0.extract.shift.i.i.i.i869 to i8
  %sext.i.i.i.i871 = shl i32 %.sroa.4.0.extract.shift.i.i.i.i869, 24
  %i.lg = ashr exact i32 %sext.i.i.i.i871, 24     ; 2 uses
  %i.lh = icmp ult i8 %.sroa.4.0.extract.trunc.i.i.i.i870, 3 ; 2 uses
  %i.li = or disjoint i32 %i.lg, 12
  %.sroa.0.0.i.i.i.i.i872 = select i1 %i.lh, i32 %i.li, i32 %i.lg
  %sext4.i.i.i.i873 = shl i32 %.sroa.03.0.copyload.i.i.i868, 16
  %i.lj = ashr exact i32 %sext4.i.i.i.i873, 16
  %i.lk = add nsw i32 %i.lj, 32800
  %.neg.i.i.i.i.i874 = sext i1 %i.lh to i32
  %i.ll = add nsw i32 %i.lk, %.neg.i.i.i.i.i874   ; 3 uses
  %i.lm = ashr i32 %.sroa.03.0.copyload.i.i.i868, 24
  %i.ln = udiv i32 %i.ll, 100
  %i.lo = mul nuw nsw i32 %i.ll, 1461
  %i.lp = lshr i32 %i.lo, 2
  %i.lq = udiv i32 %i.ll, 400
  %i.lr = mul nsw i32 %.sroa.0.0.i.i.i.i.i872, 979
  %i.ls = add nsw i32 %i.lr, -2919
  %i.lt = lshr i32 %i.ls, 5
  %i.lu = add nsw i32 %i.lm, -12699420
  %i.lv = sub nuw nsw i32 %i.lu, %i.ln
  %i.lw = add nuw nsw i32 %i.lv, %i.lq
  %i.lx = add nsw i32 %i.lw, %i.lp
  %i.ly = add nsw i32 %i.lx, %i.lt
  %i.lz = srem i32 %i.ly, 7                       ; 2 uses
  %i.ma = icmp slt i32 %i.lz, 0
  %i.mb = select i1 %i.ma, i32 7, i32 0
  %spec.select.i.i.i.i.i.i875 = add nsw i32 %i.mb, %i.lz
  %i.mc = trunc nuw nsw i32 %spec.select.i.i.i.i.i.i875 to i8
  %i.md = add nuw nsw i8 %i.mc, 1
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h5f6c4580089777bfE.exit.i"

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !5428), !noalias !5424
  call void @llvm.experimental.noalias.scope.decl(metadata !5429), !noalias !5424
  %i.me = load ptr, ptr %i.gx, align 8, !alias.scope !5430, !noalias !5427, !noundef !11 ; 2 uses
  %i.mf = icmp eq ptr %i.me, null
  br i1 %i.mf, label %bb.oy, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mg = atomicrmw sub ptr %i.me, i64 1 release, align 8, !noalias !5431
  %i.mh = icmp eq i64 %i.mg, 1
  br i1 %i.mh, label %bb.af, label %bb.oy

bb.af:                                            ; preds = %bb.ae
  fence acquire, !noalias !5424
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.gx), !noalias !5427, !inline_history !0
  br label %bb.oy

"_ZN4core6option15Option$LT$T$GT$7or_else17h5f6c4580089777bfE.exit.i": ; preds = %bb.ac, %bb.aa
  %.sroa.0.0.i.i862 = phi i8 [ %i.ld, %bb.aa ], [ %i.md, %bb.ac ]
  %switch.tableidx = add nsw i8 %.sroa.0.0.i.i862, -1 ; 2 uses
  %i.mi = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN66_$LT$jiff..civil..weekday..Weekday$u20$as$u20$core..fmt..Debug$GT$3fmt17h59cf32bd568f684eE.657", i64 %i.mi
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.mj = zext nneg i8 %switch.tableidx to i64
  %switch.gep3183 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN66_$LT$jiff..civil..weekday..Weekday$u20$as$u20$core..fmt..Debug$GT$3fmt17h59cf32bd568f684eE", i64 %i.mj
  %switch.load3184 = load i8, ptr %switch.gep3183, align 1
  %switch.ext = zext i8 %switch.load3184 to i64
  br label %.thread2726

bb.ag:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  %.val63.i = load ptr, ptr %i.en, align 8, !alias.scope !5423, !noalias !5425, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.val63.i, i64 109
  %i.ml = load i8, ptr %i.mk, align 1, !range !26, !noalias !5432, !noundef !11 ; 2 uses
  %.not.i.i847 = icmp eq i8 %i.ml, 0
  br i1 %.not.i.i847, label %bb.ah, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h1fd9d64f35813e5aE.exit.i"

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5433
  call fastcc void @_ZN4jiff3fmt7strtime14BrokenDownTime7to_date17hf8614c6855a6894eE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val63.i), !noalias !5432
  %i.mm = load i16, ptr %i.am, align 8, !range !62, !noalias !5433, !noundef !11
  %i.mn = trunc nuw i16 %i.mm to i1
  br i1 %i.mn, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.03.0.copyload.i.i.i853 = load i32, ptr %i.gu, align 2, !noalias !5433 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5433
  %.sroa.4.0.extract.shift.i.i.i.i854 = lshr i32 %.sroa.03.0.copyload.i.i.i853, 16 ; 2 uses
  %.sroa.4.0.extract.trunc.i.i.i.i855 = trunc i32 %.sroa.4.0.extract.shift.i.i.i.i854 to i8
  %sext.i.i.i.i856 = shl i32 %.sroa.4.0.extract.shift.i.i.i.i854, 24
  %i.mo = ashr exact i32 %sext.i.i.i.i856, 24     ; 2 uses
  %i.mp = icmp ult i8 %.sroa.4.0.extract.trunc.i.i.i.i855, 3 ; 2 uses
  %i.mq = or disjoint i32 %i.mo, 12
  %.sroa.0.0.i.i.i.i.i857 = select i1 %i.mp, i32 %i.mq, i32 %i.mo
  %sext4.i.i.i.i858 = shl i32 %.sroa.03.0.copyload.i.i.i853, 16
  %i.mr = ashr exact i32 %sext4.i.i.i.i858, 16
  %i.ms = add nsw i32 %i.mr, 32800
  %.neg.i.i.i.i.i859 = sext i1 %i.mp to i32
  %i.mt = add nsw i32 %i.ms, %.neg.i.i.i.i.i859   ; 3 uses
  %i.mu = ashr i32 %.sroa.03.0.copyload.i.i.i853, 24
  %i.mv = udiv i32 %i.mt, 100
  %i.mw = mul nuw nsw i32 %i.mt, 1461
  %i.mx = lshr i32 %i.mw, 2
  %i.my = udiv i32 %i.mt, 400
  %i.mz = mul nsw i32 %.sroa.0.0.i.i.i.i.i857, 979
  %i.na = add nsw i32 %i.mz, -2919
  %i.nb = lshr i32 %i.na, 5
  %i.nc = add nsw i32 %i.mu, -12699420
  %i.nd = sub nuw nsw i32 %i.nc, %i.mv
  %i.ne = add nuw nsw i32 %i.nd, %i.my
  %i.nf = add nsw i32 %i.ne, %i.mx
  %i.ng = add nsw i32 %i.nf, %i.nb
  %i.nh = srem i32 %i.ng, 7                       ; 2 uses
  %i.ni = icmp slt i32 %i.nh, 0
  %i.nj = select i1 %i.ni, i32 7, i32 0
  %spec.select.i.i.i.i.i.i860 = add nsw i32 %i.nj, %i.nh
  %i.nk = trunc nuw nsw i32 %spec.select.i.i.i.i.i.i860 to i8
  %i.nl = add nuw nsw i8 %i.nk, 1
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h1fd9d64f35813e5aE.exit.i"

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !5434), !noalias !5424
  call void @llvm.experimental.noalias.scope.decl(metadata !5435), !noalias !5424
  %i.nm = load ptr, ptr %i.gv, align 8, !alias.scope !5436, !noalias !5433, !noundef !11 ; 2 uses
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %bb.oz, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.no = atomicrmw sub ptr %i.nm, i64 1 release, align 8, !noalias !5437
  %i.np = icmp eq i64 %i.no, 1
  br i1 %i.np, label %bb.al, label %bb.oz

bb.al:                                            ; preds = %bb.ak
  fence acquire, !noalias !5424
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.gv), !noalias !5433, !inline_history !0
  br label %bb.oz

"_ZN4core6option15Option$LT$T$GT$7or_else17h1fd9d64f35813e5aE.exit.i": ; preds = %bb.ai, %bb.ag
  %.sroa.0.0.i.i848 = phi i8 [ %i.ml, %bb.ag ], [ %i.nl, %bb.ai ]
  %i.nq = sext i8 %.sroa.0.0.i.i848 to i64
  %i.nr = getelementptr [8 x i8], ptr @"switch.table._ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$6format17hba04c3c00b5ddfc4E.629", i64 %i.nq
  %switch.gep3187 = getelementptr i8, ptr %i.nr, i64 -8
  %switch.load3188 = load ptr, ptr %switch.gep3187, align 8
  br label %.thread2726

bb.am:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  %.val64.i = load ptr, ptr %i.en, align 8, !alias.scope !5423, !noalias !5425, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.val64.i, i64 92
  %i.nt = load i8, ptr %i.ns, align 4, !range !21, !noalias !5438, !noundef !11
  %i.nu = trunc nuw i8 %i.nt to i1
  %i.nv = getelementptr inbounds nuw i8, ptr %.val64.i, i64 93
  %i.nw = load i8, ptr %i.nv, align 1, !noalias !5438
  br i1 %i.nu, label %"_ZN4core6option15Option$LT$T$GT$7or_else17hafbc0573d786f94dE.exit.thread.i", label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !5439
  call fastcc void @_ZN4jiff3fmt7strtime14BrokenDownTime7to_date17hf8614c6855a6894eE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val64.i), !noalias !5438
  %i.nx = load i16, ptr %i.aq, align 8, !range !62, !noalias !5439, !noundef !11
  %i.ny = trunc nuw i16 %i.nx to i1
  br i1 %i.ny, label %bb.ao, label %"_ZN4core6option15Option$LT$T$GT$7or_else17hafbc0573d786f94dE.exit.i"

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !5440), !noalias !5424
  call void @llvm.experimental.noalias.scope.decl(metadata !5441), !noalias !5424
  %i.nz = load ptr, ptr %i.gt, align 8, !alias.scope !5442, !noalias !5439, !noundef !11 ; 2 uses
  %i.oa = icmp eq ptr %i.nz, null
  br i1 %i.oa, label %bb.pa, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ob = atomicrmw sub ptr %i.nz, i64 1 release, align 8, !noalias !5443
  %i.oc = icmp eq i64 %i.ob, 1
  br i1 %i.oc, label %bb.aq, label %bb.pa

bb.aq:                                            ; preds = %bb.ap
  fence acquire, !noalias !5424
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.gt), !noalias !5439, !inline_history !0
  br label %bb.pa

"_ZN4core6option15Option$LT$T$GT$7or_else17hafbc0573d786f94dE.exit.i": ; preds = %bb.an
  %.sroa.63.0.copyload.i.i.i842 = load i8, ptr %.sroa.63.0..sroa_idx.i.i.i841, align 4, !noalias !5439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5439
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17hafbc0573d786f94dE.exit.thread.i"

"_ZN4core6option15Option$LT$T$GT$7or_else17hafbc0573d786f94dE.exit.thread.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17hafbc0573d786f94dE.exit.i", %bb.am
  %.pn3.i3.i843 = phi i8 [ %.sroa.63.0.copyload.i.i.i842, %"_ZN4core6option15Option$LT$T$GT$7or_else17hafbc0573d786f94dE.exit.i" ], [ %i.nw, %bb.am ] ; 2 uses
  %switch.tableidx3189 = add i8 %.pn3.i3.i843, -1 ; 3 uses
  %i.od = icmp ult i8 %switch.tableidx3189, 12
  br i1 %i.od, label %switch.lookup3190, label %bb.ar, !prof !63

bb.ar:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17hafbc0573d786f94dE.exit.thread.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !5438
  store i8 %.pn3.i3.i843, ptr %i.ap, align 1, !noalias !5438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !5438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5438
  store ptr %i.ap, ptr %i.an, align 8, !noalias !5438
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E", ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !5438
  store ptr @213, ptr %i.ao, align 8, !noalias !5438
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 1, ptr %i.oe, align 8, !noalias !5438
  %i.of = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr null, ptr %i.of, align 8, !noalias !5438
  %i.og = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.an, ptr %i.og, align 8, !noalias !5438
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 1, ptr %i.oh, align 8, !noalias !5438
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #45, !noalias !5438
  unreachable

bb.as:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !5424
  %.val66.i = load ptr, ptr %i.en, align 8, !alias.scope !5423, !noalias !5425, !nonnull !11, !align !12, !noundef !11
  call fastcc void @"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$16fmt_month_abbrev17ha95669ebf8fdc6aeE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ea, ptr nonnull %.val66.i), !noalias !5424, !inline_history !4353
  %i.oi = load i8, ptr %i.gs, align 8, !range !27, !noalias !5424, !noundef !11 ; 2 uses
  %i.oj = icmp eq i8 %i.oi, 3
  %i.ok = load ptr, ptr %i.ea, align 8, !noalias !5424 ; 2 uses
  br i1 %i.oj, label %bb.pb, label %bb.pc

bb.at:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  %.val67.i = load ptr, ptr %i.en, align 8, !alias.scope !5423, !noalias !5425, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.val67.i, i64 80
  %i.om = load i16, ptr %i.ol, align 8, !range !62, !noalias !5444, !noundef !11
  %i.on = getelementptr inbounds nuw i8, ptr %.val67.i, i64 82
  %i.oo = load i16, ptr %i.on, align 2, !noalias !5444
  %i.op = trunc nuw i16 %i.om to i1
  br i1 %i.op, label %bb.pe, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !5445
  call fastcc void @_ZN4jiff3fmt7strtime14BrokenDownTime7to_date17hf8614c6855a6894eE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val67.i), !noalias !5444
  %i.oq = load i16, ptr %i.ar, align 8, !range !62, !noalias !5445, !noundef !11
  %i.or = trunc nuw i16 %i.oq to i1
  br i1 %i.or, label %bb.av, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6d09f38f7e2c5e54E.exit.i"

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !5446), !noalias !5424
  call void @llvm.experimental.noalias.scope.decl(metadata !5447), !noalias !5424
  %i.os = load ptr, ptr %i.gr, align 8, !alias.scope !5448, !noalias !5445, !noundef !11 ; 2 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %bb.pd, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ou = atomicrmw sub ptr %i.os, i64 1 release, align 8, !noalias !5449
  %i.ov = icmp eq i64 %i.ou, 1
  br i1 %i.ov, label %bb.ax, label %bb.pd

bb.ax:                                            ; preds = %bb.aw
  fence acquire, !noalias !5424
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.gr), !noalias !5445, !inline_history !0
  br label %bb.pd

"_ZN4core6option15Option$LT$T$GT$7or_else17h6d09f38f7e2c5e54E.exit.i": ; preds = %bb.au
  %.sroa.02.0.copyload.i.i.i836 = load i16, ptr %i.gq, align 2, !noalias !5445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5445
  br label %bb.pe

bb.ay:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  call void @llvm.experimental.noalias.scope.decl(metadata !5450)
  %i.ow = load ptr, ptr %0, align 8, !alias.scope !5450, !noalias !5451, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.ox = load ptr, ptr %i.en, align 8, !alias.scope !5450, !noalias !5451, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.oy = load ptr, ptr %i.ek, align 8, !alias.scope !5450, !noalias !5451, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.oz = icmp eq i8 %.sroa.9.0.extract.trunc2673, 3
  br i1 %i.oz, label %bb.bd, label %bb.az
end_hunk_4
begin_hunk_5_@_ZN4jiff4span9SpanTotal5total17h175a92fa97d17efcE:bb.a
bb.m:                                             ; preds = %bb.h
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.544.0..sroa_idx, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 %i.ar, ptr %i.c, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.au, ptr %.sroa.419.0..sroa_idx, align 8
  %i.bn = icmp samesign ugt i8 %i.l, 5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 3 uses
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = invoke fastcc { i64, i32 } @_ZN4jiff4span4Span21to_invariant_duration17h60c16e205a3952feE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bo)
          to label %switch.lookup153 unwind label %bb.q ; 2 uses

bb.o:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.br = load i8, ptr %i.bq, align 4, !range !14, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.554)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.567)
  %.not82 = icmp ne i64 %i.ar, 2                  ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.554, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.419.0..sroa_idx, i64 32, i1 false)
  %.sroa.364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br i1 %.not82, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.u, %bb.q
  %.sroa.032.0 = phi i1 [ false, %bb.q ], [ %.not82, %bb.u ]
  %.pn85 = phi { ptr, i32 } [ %i.bs, %bb.q ], [ %i.bu, %bb.u ]
  %.not87 = icmp eq i64 %i.ar, 2
  %or.cond = or i1 %.not87, %.sroa.032.0
  br i1 %or.cond, label %bb.ao, label %bb.ap

bb.q:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  %.sroa.364.0.copyload = load i64, ptr %.sroa.364.0..sroa_idx, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.075.0.copyload = load i64, ptr %i.bt, align 8
  %.sroa.276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.567, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.276.0..sroa_idx, i64 32, i1 false)
  %.sroa.377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.377.0.copyload = load i64, ptr %.sroa.377.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.567, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.364.0..sroa_idx, i64 32, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.656.0 = phi i64 [ %.sroa.364.0.copyload, %bb.r ], [ undef, %bb.s ]
  %.sroa.065.0 = phi i64 [ %.sroa.075.0.copyload, %bb.r ], [ 2, %bb.s ] ; 4 uses
  %.sroa.669.0 = phi i64 [ %.sroa.377.0.copyload, %bb.r ], [ undef, %bb.s ]
  %.sroa.032.2 = xor i1 %.not82, true
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.ar, ptr %i.g, align 8
  %.sroa.554.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.554.0..sroa_idx55, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.554, i64 32, i1 false)
  %.sroa.656.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %.sroa.656.0, ptr %.sroa.656.0..sroa_idx57, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.567.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.567.0..sroa_idx68, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.567, i64 32, i1 false)
  %.sroa.669.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.sroa.669.0, ptr %.sroa.669.0..sroa_idx70, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.554)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.567)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_ZN4jiff4span4Span13without_lower17h564853f4000e6c34E(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %i.bo, i8 noundef %i.l)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.ab, %bb.y, %bb.v, %bb.t
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val109 = load ptr, ptr %i.bv, align 8
  tail call fastcc void @"_ZN4core3ptr41drop_in_place$LT$jiff..span..Relative$GT$17ha33f09ef30dc606cE"(i64 %.sroa.065.0, ptr %.val109) #47
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val103 = load ptr, ptr %i.bw, align 8
  tail call fastcc void @"_ZN4core3ptr41drop_in_place$LT$jiff..span..Relative$GT$17ha33f09ef30dc606cE"(i64 %i.ar, ptr %.val103) #47
  br label %bb.p

bb.v:                                             ; preds = %bb.t
  %i.bx = sext i8 %i.br to i64
  invoke fastcc void @_ZN4jiff4span18unit_start_and_end17hd45f832f0e91c650E(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %i.d, i8 noundef %i.l, i64 noundef %i.bx)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.by = load i64, ptr %i.e, align 8, !range !53, !noundef !11
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.bz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cb = load ptr, ptr %i.ca, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cc, align 8
  store i64 1, ptr %0, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val107 = load ptr, ptr %i.cd, align 8
  tail call fastcc void @"_ZN4core3ptr41drop_in_place$LT$jiff..span..Relative$GT$17ha33f09ef30dc606cE"(i64 %.sroa.065.0, ptr %.val107)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val99 = load ptr, ptr %i.ce, align 8
  tail call fastcc void @"_ZN4core3ptr41drop_in_place$LT$jiff..span..Relative$GT$17ha33f09ef30dc606cE"(i64 %i.ar, ptr %.val99)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.af

bb.y:                                             ; preds = %bb.w
  %.sroa.045.0.copyload = load i64, ptr %i.ca, align 8 ; 2 uses
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.446.0.copyload = load i32, ptr %.sroa.446.0..sroa_idx, align 8 ; 2 uses
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.648.0.copyload = load i64, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.749.0.copyload = load i32, ptr %.sroa.749.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cf = invoke fastcc { i64, i32 } @"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE"(i64 noundef %.sroa.648.0.copyload, i32 noundef %.sroa.749.0.copyload, i64 noundef %.sroa.045.0.copyload, i32 noundef %.sroa.446.0.copyload)
          to label %bb.z unwind label %bb.u       ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.cg = extractvalue { i64, i32 } %i.cf, 0
  %i.ch = extractvalue { i64, i32 } %i.cf, 1
  %i.ci = sext i64 %i.cg to i128
  %i.cj = mul nsw i128 %i.ci, 1000000000
  %i.ck = sext i32 %i.ch to i128
  %i.cl = add nsw i128 %i.cj, %i.ck
  %i.cm = sitofp i128 %i.cl to double
  switch i64 %.sroa.065.0, label %bb.ac [
    i64 2, label %bb.aa
    i64 0, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cn = load i64, ptr %.sroa.567.0..sroa_idx68, align 8, !noundef !11
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cp = load i32, ptr %i.co, align 8, !noundef !11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %.sroa.530.0 = phi i32 [ %i.cu, %bb.ad ], [ %i.cp, %bb.aa ]
  %.sroa.029.0 = phi i64 [ %i.cs, %bb.ad ], [ %i.cn, %bb.aa ]
  %i.cq = invoke fastcc { i64, i32 } @"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE"(i64 noundef %.sroa.029.0, i32 noundef %.sroa.530.0, i64 noundef %.sroa.045.0.copyload, i32 noundef %.sroa.446.0.copyload)
          to label %bb.ae unwind label %bb.u      ; 2 uses

bb.ac:                                            ; preds = %bb.z
  %i.cr = load ptr, ptr %.sroa.567.0..sroa_idx68, align 8, !nonnull !11, !align !12, !noundef !11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac
  %.sroa.051.0 = phi ptr [ %i.cr, %bb.ac ], [ %.sroa.567.0..sroa_idx68, %bb.z ] ; 2 uses
  %i.cs = load i64, ptr %.sroa.051.0, align 8, !noundef !11
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.051.0, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !noundef !11
  br label %bb.ab

bb.ae:                                            ; preds = %bb.ab
  %i.cv = call fastcc noundef i64 @_ZN4jiff4span4Span8get_unit17ha7eddf39c7f7e735E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bo, i8 noundef %i.l)
  %i.cw = extractvalue { i64, i32 } %i.cq, 0
  %i.cx = sext i64 %i.cw to i128
  %i.cy = mul nsw i128 %i.cx, 1000000000
  %i.cz = extractvalue { i64, i32 } %i.cq, 1
  %i.da = sext i32 %i.cz to i128
  %i.db = add nsw i128 %i.cy, %i.da
  %i.dc = sitofp i128 %i.db to double
  %i.dd = sitofp i64 %i.cv to double
  %i.de = fdiv double %i.dc, %i.cm
  %i.df = sitofp i8 %i.br to double
  %i.dg = fmul double %i.de, %i.df
  %i.dh = fadd double %i.dg, %i.dd
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.dh, ptr %i.di, align 8
  store i64 0, ptr %0, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val105 = load ptr, ptr %i.dj, align 8
  tail call fastcc void @"_ZN4core3ptr41drop_in_place$LT$jiff..span..Relative$GT$17ha33f09ef30dc606cE"(i64 %.sroa.065.0, ptr %.val105)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val101 = load ptr, ptr %i.dk, align 8
  tail call fastcc void @"_ZN4core3ptr41drop_in_place$LT$jiff..span..Relative$GT$17ha33f09ef30dc606cE"(i64 %i.ar, ptr %.val101)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.an, %bb.af, %bb.e, %switch.lookup, %bb.k, %bb.ae
  ret void

bb.af:                                            ; preds = %switch.lookup153, %bb.x
  %.sroa.032.3 = phi i1 [ true, %switch.lookup153 ], [ %.sroa.032.2, %bb.x ]
  %.not88 = icmp ne i64 %i.ar, 2
  %brmerge.not = and i1 %.not88, %.sroa.032.3
  br i1 %brmerge.not, label %bb.ag, label %.critedge

switch.lookup153:                                 ; preds = %bb.n
  %i.dl = zext nneg i8 %i.l to i64
  %switch.gep154 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN4jiff9timestamp14TimestampRound5round17hfd5119684f5b84aaE.646, i64 %i.dl
  %switch.load155 = load i32, ptr %switch.gep154, align 4
  %i.dm = zext nneg i8 %i.l to i64
  %switch.gep156 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4jiff4span9SpanTotal5total17h175a92fa97d17efcE.643, i64 %i.dm
  %switch.load157 = load i64, ptr %switch.gep156, align 8
  %i.dn = extractvalue { i64, i32 } %i.bp, 0
  %i.do = sext i64 %i.dn to i128
  %i.dp = mul nsw i128 %i.do, 1000000000
  %i.dq = extractvalue { i64, i32 } %i.bp, 1
  %i.dr = sext i32 %i.dq to i128
  %i.ds = add nsw i128 %i.dp, %i.dr
  %i.dt = sitofp i128 %i.ds to double
  %i.du = zext nneg i64 %switch.load157 to i128
  %i.dv = zext nneg i32 %switch.load155 to i128
  %i.dw = add nuw nsw i128 %i.du, %i.dv
  %i.dx = uitofp nneg i128 %i.dw to double
  %i.dy = fdiv double %i.dt, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.dy, ptr %i.dz, align 8
  store i64 0, ptr %0, align 8
  br label %bb.af

bb.ag:                                            ; preds = %bb.af
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val97 = load ptr, ptr %i.ea, align 8          ; 3 uses
  %i.eb = icmp eq i64 %i.ar, 0
  br i1 %i.eb, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.ec = ptrtoint ptr %.val97 to i64
  %i.ed = and i64 %i.ec, 7
  switch i64 %i.ed, label %bb.ai [
    i64 1, label %bb.an
    i64 2, label %bb.an
    i64 3, label %bb.an
    i64 0, label %bb.an
    i64 4, label %bb.aj
    i64 5, label %bb.al
  ]

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9931
  %i.ee = getelementptr i8, ptr %.val97, i64 -20  ; 2 uses
  store ptr %i.ee, ptr %i.b, align 8, !noalias !9931
  %i.ef = atomicrmw sub ptr %i.ee, i64 1 release, align 8, !noalias !9932
  %i.eg = icmp eq i64 %i.ef, 1
  br i1 %i.eg, label %bb.ak, label %"_ZN4core3ptr400drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..tzif..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$$GT$17hd089d87e4f9bd5ceE.exit.i.i.i.i.i.i.i"

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0a3f70bfa2a38bd6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b), !noalias !9931
  br label %"_ZN4core3ptr400drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..tzif..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$$GT$17hd089d87e4f9bd5ceE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr400drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..tzif..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$$GT$17hd089d87e4f9bd5ceE.exit.i.i.i.i.i.i.i": ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9931
  br label %bb.an

bb.al:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9931
  %i.eh = getelementptr i8, ptr %.val97, i64 -21  ; 2 uses
  store ptr %i.eh, ptr %i.a, align 8, !noalias !9931
  %i.ei = atomicrmw sub ptr %i.eh, i64 1 release, align 8, !noalias !9933
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.am, label %"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i.i.i.i"

bb.am:                                            ; preds = %bb.al
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc66d1eb56d3b66d3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a), !noalias !9931
  br label %"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i.i.i.i": ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9931
  br label %bb.an

bb.an:                                            ; preds = %bb.ag, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %"_ZN4core3ptr400drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..tzif..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$$GT$17hd089d87e4f9bd5ceE.exit.i.i.i.i.i.i.i", %"_ZN4core3ptr138drop_in_place$LT$alloc..sync..Arc$LT$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$$GT$17hdabacece7f184d8cE.exit.i.i.i.i.i.i.i"
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.val94 = load i64, ptr %i.ek, align 8, !range !53, !noundef !11
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.val95 = load ptr, ptr %i.el, align 8
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$jiff..span..RelativeZoned$GT$17h5b1b81c4426d6711E"(i64 %.val94, ptr %.val95)
  br label %.critedge

bb.ao:                                            ; preds = %bb.ap, %bb.p
  resume { ptr, i32 } %.pn85

bb.ap:                                            ; preds = %bb.p
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val91 = load ptr, ptr %i.em, align 8
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$jiff..span..RelativeZoned$GT$17h5b1b81c4426d6711E"(i64 %i.ar, ptr %.val91) #47
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.val = load i64, ptr %i.en, align 8, !range !53, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.val89 = load ptr, ptr %i.eo, align 8
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$jiff..span..RelativeZoned$GT$17h5b1b81c4426d6711E"(i64 %.val, ptr %.val89) #47
  br label %bb.ao
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN4jiff4util1b102_$LT$impl$u20$core..convert..From$LT$jiff..util..b..BoundsError$GT$$u20$for$u20$jiff..error..Error$GT$4from17h1864ecdf257f5c1dE"(i8 noundef range(i8 0, 52) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef %0)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN4jiff4util1b109_$LT$impl$u20$core..convert..From$LT$jiff..util..b..SpecialBoundsError$GT$$u20$for$u20$jiff..error..Error$GT$4from17he6f9c2aee0cd9036E"(i8 noundef range(i8 0, 4) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZN4jiff5error5Error14special_bounds17h6a430a2de9cef607E(i8 noundef %0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 6400, -4294960894) i64 @_ZN4jiff4util1b10SpanMonths11checked_add17hb891e4cd14f7afcdE(i32 noundef %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZN4jiff4util1b6Bounds11checked_add17hc125ea3836743cdfE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i32, i1 } %i.a, 0         ; 2 uses
  %i.d = add i32 %i.c, -239977
  %narrow.i.i = icmp ult i32 %i.d, -479953
  %.sroa.0.0.i.i = zext i1 %narrow.i.i to i64
  %.sroa.41.0.insert.ext.i.i = zext i32 %i.c to i64
  %.sroa.41.0.insert.shift.i.i = shl nuw i64 %.sroa.41.0.insert.ext.i.i, 32
  %.sroa.3.0.insert.insert.i.i = or disjoint i64 %.sroa.41.0.insert.shift.i.i, %.sroa.0.0.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i, 6400
  br label %_ZN4jiff4util1b6Bounds11checked_add17hc125ea3836743cdfE.exit

_ZN4jiff4util1b6Bounds11checked_add17hc125ea3836743cdfE.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.b ], [ 6401, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 6400, -4294960894) i64 @_ZN4jiff4util1b10SpanMonths11checked_mul17hee0889978bf91a30E(i32 noundef %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %0, i32 %1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZN4jiff4util1b6Bounds11checked_mul17h4e77631e6ebfbed2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i32, i1 } %i.a, 0         ; 2 uses
  %i.d = add i32 %i.c, -239977
  %narrow.i.i = icmp ult i32 %i.d, -479953
  %.sroa.0.0.i.i = zext i1 %narrow.i.i to i64
  %.sroa.41.0.insert.ext.i.i = zext i32 %i.c to i64
  %.sroa.41.0.insert.shift.i.i = shl nuw i64 %.sroa.41.0.insert.ext.i.i, 32
  %.sroa.3.0.insert.insert.i.i = or disjoint i64 %.sroa.41.0.insert.shift.i.i, %.sroa.0.0.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i, 6400
  br label %_ZN4jiff4util1b6Bounds11checked_mul17h4e77631e6ebfbed2E.exit

_ZN4jiff4util1b6Bounds11checked_mul17h4e77631e6ebfbed2E.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.b ], [ 6401, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4jiff4util1b11SpanMinutes11checked_mul17hc367dac1e2ece5a5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.c, 10518456960
  %or.cond.i.i = icmp ult i64 %i.d, 21036913921
  br i1 %or.cond.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 29, ptr %i.e, align 1, !alias.scope !9938
  br label %_ZN4jiff4util1b6Bounds11checked_mul17hf793273c535a3c9cE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.f, align 8, !alias.scope !9938
  br label %_ZN4jiff4util1b6Bounds11checked_mul17hf793273c535a3c9cE.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 29, ptr %i.g, align 1, !alias.scope !9939
  br label %_ZN4jiff4util1b6Bounds11checked_mul17hf793273c535a3c9cE.exit

_ZN4jiff4util1b6Bounds11checked_mul17hf793273c535a3c9cE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %storemerge.i = phi i8 [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %storemerge.i, ptr %0, align 8, !alias.scope !9939
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN4jiff4util1b11SpanSeconds11checked_mul17heaec23c93bbca5d2E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0         ; 2 uses
  br i1 %i.b, label %bb.e, label %bb.b
end_hunk_5
begin_hunk_6_@_ZN4jiff4util4utf86decode17h97ece18b6d229b67E:bb.a

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
  %i.m = load i8, ptr %.sroa.04.0, align 1, !noalias !9975, !noundef !11 ; 5 uses
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %bb.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7afb4a2674b99222E.exit12.i": ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 1
  %i.p = and i8 %i.m, 31
  %i.q = zext nneg i8 %i.p to i32                 ; 3 uses
  %i.r = icmp samesign ne i64 %.sroa.6.0, 1
  call void @llvm.assume(i1 %i.r)
  %i.s = load i8, ptr %i.o, align 1, !noalias !9975, !noundef !11
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
  %i.ab = load i8, ptr %i.z, align 1, !noalias !9975, !noundef !11
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
  %i.al = load i8, ptr %i.aj, align 1, !noalias !9975, !noundef !11
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
  call void @llvm.experimental.noalias.scope.decl(metadata !9976)
  %i.au = load i64, ptr %i.b, align 8, !range !53, !alias.scope !9976, !noalias !9977, !noundef !11
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.m, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc981e5c158f3aba0E.exit", !prof !23

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9978
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !noalias !9977
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @324) #45, !noalias !9976
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc981e5c158f3aba0E.exit": ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !9976, !noalias !9977, !nonnull !11, !align !13, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !9976, !noalias !9977, !noundef !11
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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr nonnull readonly align 1 %0, i64 %.sroa.0.0, i1 false), !alias.scope !9983, !noalias !9984
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
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4jiff9timestamp14TimestampRound5round17hfd5119684f5b84aaE, i64 %i.l
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
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !9992
end_hunk_6
begin_hunk_7_@"_ZN4jiff6shared5posix90_$LT$impl$u20$core..fmt..Display$u20$for$u20$jiff..shared..PosixTimeZone$LT$ABBREV$GT$$GT$3fmt17h6730636a83689674E":bb.a

bb.k:                                             ; preds = %"_ZN100_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17he9a66b1664d820afE.exit.i"
  %i.ah = add i32 %.val2, 3600
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !alias.scope !11630, !noalias !11635, !noundef !11
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
  %i.b = load i8, ptr %i.a, align 4, !range !76, !noundef !11 ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 8, !range !73, !noundef !11
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
  %i.aa = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef 23), !noalias !11645
  %i.ab = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31d4b772b39a2270E"(i1 noundef zeroext false, ptr noundef nonnull %i.aa), !noalias !11646
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
  %i.b = load i8, ptr %i.a, align 4, !range !76, !noundef !11
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
  %i.i = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef 23), !noalias !11652
  %i.j = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31d4b772b39a2270E"(i1 noundef zeroext true, ptr noundef nonnull %i.i), !noalias !11653
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  store i64 2, ptr %0, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !range !73, !noundef !11
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
  %i.f = tail call noundef ptr @"_ZN4jiff5error4unit110_$LT$impl$u20$core..convert..From$LT$jiff..error..unit..UnitConfigError$GT$$u20$for$u20$jiff..error..Error$GT$4from17haa2deed9d06057adE"(i24 %.sroa.013.1.insert.insert.i.i), !noalias !11663
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = zext nneg i8 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr @335, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !range !32, !noalias !11663, !noundef !11 ; 2 uses
  %i.j = add i64 %i.d, -1000000001
  %or.cond.i.i.i = icmp ult i64 %i.j, -1000000000
  %i.k = shl nuw nsw i64 %i.d, 32
  %.sroa.0.0.insert.insert.i.i.i = select i1 %or.cond.i.i.i, i64 2561, i64 %i.k ; 2 uses
  %.sroa.618.0.extract.shift.i.i = lshr i64 %.sroa.0.0.insert.insert.i.i.i, 32 ; 2 uses
  %i.l = trunc i64 %.sroa.0.0.insert.insert.i.i.i to i1
  br i1 %i.l, label %bb.d, label %switch.lookup.a

bb.d:                                             ; preds = %bb.c
  %i.m = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 10), !noalias !11663
  br label %bb.i

switch.lookup.a:                                  ; preds = %bb.c
  %4 = zext nneg i8 %i.i to i64
  %switch.gep.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4jiff9timestamp14TimestampRound5round17hfd5119684f5b84aaE, i64 %4
  %switch.load.a = load i64, ptr %switch.gep.a, align 8 ; 2 uses
  %.not.i.i = icmp sgt i64 %i.d, %switch.load.a
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %switch.lookup.a
  %i.n = icmp eq i64 %i.d, 0
  br i1 %i.n, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %switch.lookup.a
  %.sroa.019.1.insert.ext.i.i = zext nneg i8 %i.i to i24
  %.sroa.019.1.insert.shift.i.i = shl nuw nsw i24 %.sroa.019.1.insert.ext.i.i, 8
  %.sroa.019.2.insert.ext.i.i = zext nneg i8 %i.c to i24
  %.sroa.019.2.insert.shift.i.i = shl nuw nsw i24 %.sroa.019.2.insert.ext.i.i, 16
  %.sroa.019.1.insert.insert.i.i = or disjoint i24 %.sroa.019.2.insert.shift.i.i, %.sroa.019.1.insert.shift.i.i
  %.sroa.019.2.insert.insert.i.i = or disjoint i24 %.sroa.019.1.insert.insert.i.i, 3
  %i.o = tail call noundef ptr @"_ZN4jiff5error4unit110_$LT$impl$u20$core..convert..From$LT$jiff..error..unit..UnitConfigError$GT$$u20$for$u20$jiff..error..Error$GT$4from17haa2deed9d06057adE"(i24 %.sroa.019.2.insert.insert.i.i), !noalias !11663
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h3e6118cf5f85921cE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #45, !noalias !11663
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.p = srem i64 %switch.load.a, %i.d
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %switch.lookup10, label %bb.f

bb.i:                                             ; preds = %bb.b, %bb.d, %bb.f
  %.sroa.6.0.ph.i = phi ptr [ %i.f, %bb.b ], [ %i.o, %bb.f ], [ %i.m, %bb.d ]
  %i.r = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h52dcc0fce49e06ceE"(i8 noundef 5, ptr noundef nonnull %.sroa.6.0.ph.i), !noalias !11664
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11665)
  %i.al = add i64 %i.ai, -253402207201
  %or.cond.i.i = icmp ult i64 %i.al, -631107230402
  br i1 %or.cond.i.i, label %bb.l, label %_ZN4jiff4util1b6Bounds5check17h270400218b5c88d6E.exit.i

bb.l:                                             ; preds = %bb.k
  %i.am = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 40), !noalias !11665
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !alias.scope !11665
  br label %_ZN4jiff9timestamp9Timestamp13from_duration17habfe0c4fdadcb2b2E.exit

_ZN4jiff4util1b6Bounds5check17h270400218b5c88d6E.exit.i: ; preds = %bb.k
  %i.ao = icmp eq i64 %i.ai, -377705023201
  %i.ap = icmp slt i32 %i.ak, 0
  %or.cond.i = and i1 %i.ao, %i.ap
  br i1 %or.cond.i, label %bb.n, label %bb.m, !prof !56

bb.m:                                             ; preds = %_ZN4jiff4util1b6Bounds5check17h270400218b5c88d6E.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.aq, align 8, !alias.scope !11665
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ak, ptr %i.ar, align 8, !alias.scope !11665
  br label %_ZN4jiff9timestamp9Timestamp13from_duration17habfe0c4fdadcb2b2E.exit

bb.n:                                             ; preds = %_ZN4jiff4util1b6Bounds5check17h270400218b5c88d6E.exit.i
  %i.as = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef 40), !noalias !11665
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !11665
  br label %_ZN4jiff9timestamp9Timestamp13from_duration17habfe0c4fdadcb2b2E.exit

_ZN4jiff9timestamp9Timestamp13from_duration17habfe0c4fdadcb2b2E.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.i
  %.sink.i.sink = phi i64 [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.n ], [ 0, %bb.m ]
  store i64 %.sink.i.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4jiff9timestamp19TimestampArithmetic11checked_add17h075d2fddf872a84eE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11685)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !76, !alias.scope !11685, !noalias !11686, !noundef !11 ; 3 uses
  %i.c = tail call i8 @llvm.smax.i8(i8 %i.b, i8 1)
  switch i8 %i.c, label %default.unreachable [
    i8 1, label %bb.v
    i8 2, label %bb.b
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !alias.scope !11685, !noalias !11686, !noundef !11
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !alias.scope !11685, !noalias !11686, !noundef !11 ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef 23), !noalias !11687
  %i.h = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h31d4b772b39a2270E"(i1 noundef zeroext true, ptr noundef nonnull %i.g), !noalias !11688
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  br label %_ZN4jiff9timestamp9Timestamp20checked_add_duration17hcf73e2a0dcbe8082E.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.8.0.ph.ph = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  %.sroa.14.0.ph.ph.in.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.14.0.ph.ph.in = load i32, ptr %.sroa.14.0.ph.ph.in.in, align 8, !alias.scope !11685, !noalias !11686, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11689)
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
  %i.ad = add nsw i64 %.sroa.0.1.i.i, -1
  %i.ae = add nsw i32 %.sroa.010.1.i.i, 1000000000
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.af = add nsw i64 %.sroa.0.1.i.i, 1
  %i.ag = add nsw i32 %.sroa.010.1.i.i, -1000000000
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.f
  %.sroa.7.0.ph.i = phi i32 [ %.sroa.010.1.i.i, %bb.n ], [ %i.ae, %bb.p ], [ %i.ag, %bb.q ], [ %.sroa.010.1.i.i, %bb.l ], [ 0, %bb.f ] ; 2 uses
  %.sroa.5.0.ph.i = phi i64 [ %.sroa.0.1.i.i, %bb.n ], [ %i.ad, %bb.p ], [ %i.af, %bb.q ], [ %.sroa.0.1.i.i, %bb.l ], [ %i.k, %bb.f ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11690)
  %i.ah = add i64 %.sroa.5.0.ph.i, -253402207201
  %or.cond.i.i.i = icmp ult i64 %i.ah, -631107230402
  br i1 %or.cond.i.i.i, label %bb.s, label %_ZN4jiff4util1b6Bounds5check17h270400218b5c88d6E.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.ai = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef range(i8 0, 52) 40), !noalias !11691
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !11691
  br label %_ZN4jiff9timestamp9Timestamp20checked_add_duration17hcf73e2a0dcbe8082E.exit

_ZN4jiff4util1b6Bounds5check17h270400218b5c88d6E.exit.i.i: ; preds = %bb.r
  %i.ak = icmp eq i64 %.sroa.5.0.ph.i, -377705023201
  %i.al = icmp slt i32 %.sroa.7.0.ph.i, 0
  %or.cond.i8.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i8.i, label %bb.u, label %bb.t, !prof !56

bb.t:                                             ; preds = %_ZN4jiff4util1b6Bounds5check17h270400218b5c88d6E.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.ph.i, ptr %i.am, align 8, !alias.scope !11691
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.0.ph.i, ptr %i.an, align 8, !alias.scope !11691
  br label %_ZN4jiff9timestamp9Timestamp20checked_add_duration17hcf73e2a0dcbe8082E.exit

bb.u:                                             ; preds = %_ZN4jiff4util1b6Bounds5check17h270400218b5c88d6E.exit.i.i
  %i.ao = tail call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef 40), !noalias !11691
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !alias.scope !11691
  br label %_ZN4jiff9timestamp9Timestamp20checked_add_duration17hcf73e2a0dcbe8082E.exit

_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit.i: ; preds = %bb.j, %bb.i, %bb.e
  %i.aq = tail call noundef ptr @"_ZN4jiff5error9timestamp105_$LT$impl$u20$core..convert..From$LT$jiff..error..timestamp..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h7319ec39f69556bbE"(i1 noundef zeroext false), !noalias !11689
end_hunk_7
begin_hunk_8_@_ZN4jiff9timestamp9Timestamp3now17h3934face156a0996E:bb.a
  %i.w = icmp eq i64 %.sroa.53.0, -377705023201
  %i.x = icmp slt i32 %.sroa.9.1, 0
  %or.cond.i = and i1 %i.w, %i.x
  br i1 %or.cond.i, label %bb.h, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hf60836b48df16f92E.exit", !prof !56

bb.h:                                             ; preds = %_ZN4jiff4util1b6Bounds5check17h270400218b5c88d6E.exit.i
  %i.y = call fastcc noalias noundef nonnull ptr @_ZN4jiff5error5Error6bounds17h66a72a993116514bE(i8 noundef 40), !noalias !11716
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h
  %.sroa.5.0.ph.in = phi ptr [ %i.y, %bb.h ], [ %i.v, %bb.g ], [ %i.t, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11717
  store ptr %.sroa.5.0.ph.in, ptr %i.a, align 8, !noalias !11717
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @443, i64 noundef 20, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @445) #45
          to label %bb.m unwind label %bb.j, !noalias !11717

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !11718)
  %i.aa = load ptr, ptr %i.a, align 8, !alias.scope !11719, !noalias !11717, !noundef !11 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !11720
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i"

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i" unwind label %bb.n, !noalias !11717, !inline_history !25

bb.m:                                             ; preds = %bb.i
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !11717
  unreachable

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i": ; preds = %bb.l, %bb.k, %bb.j
  resume { ptr, i32 } %i.z

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hf60836b48df16f92E.exit": ; preds = %_ZN4jiff4util1b6Bounds5check17h270400218b5c88d6E.exit.i
  %i.af = insertvalue { i64, i32 } poison, i64 %.sroa.53.0, 0
  %i.ag = insertvalue { i64, i32 } %i.af, i32 %.sroa.9.1, 1
  ret { i64, i32 } %i.ag
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 dereferenceable_or_null(24) ptr @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$jiff..fmt..Write$GT$10as_mut_vec17h968b8f44ec469643E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #20 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$jiff..fmt..Write$GT$10write_char17h2c2b93cc9d635ffaE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  %.sroa.0.i = alloca i32, align 4                ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11737)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i32 0, ptr %.sroa.0.i, align 4, !noalias !11737
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %.sroa.0.i, align 4, !alias.scope !11738, !noalias !11737
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %.sroa.0.i, align 4, !alias.scope !11738, !noalias !11737
  %.sroa.0.i.1.i.1.i.1..sroa_idx8 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  store i8 %i.f, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx8, align 1, !alias.scope !11738, !noalias !11737
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit.i

bb.e:                                             ; preds = %bb.b
  %i.t = icmp samesign ult i32 %1, 65536
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = or disjoint i8 %i.l, -32
  store i8 %i.u, ptr %.sroa.0.i, align 4, !alias.scope !11738, !noalias !11737
  %.sroa.0.i.1.i.1.i.1..sroa_idx7 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  store i8 %i.j, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx7, align 1, !alias.scope !11738, !noalias !11737
  %.sroa.0.i.2.i.2.i.2..sroa_idx9 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  store i8 %i.f, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx9, align 2, !alias.scope !11738, !noalias !11737
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit.i

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %.sroa.0.i, align 4, !alias.scope !11738, !noalias !11737
  %.sroa.0.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  store i8 %i.n, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx, align 1, !alias.scope !11738, !noalias !11737
  %.sroa.0.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  store i8 %i.j, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx, align 2, !alias.scope !11738, !noalias !11737
  %.sroa.0.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 3
  store i8 %i.f, ptr %.sroa.0.i.3.i.3.i.3..sroa_idx, align 1, !alias.scope !11738, !noalias !11737
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit.i

_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit.i: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.sroa.0.05.i.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11742)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !11743, !noalias !11744, !noundef !11 ; 3 uses
  %i.x = load i64, ptr %i.a, align 8, !range !50, !alias.scope !11743, !noalias !11744, !noundef !11
  %i.y = sub i64 %i.x, %i.w
  %i.z = icmp ugt i64 %.sroa.0.05.i.i, %i.y
  br i1 %i.z, label %bb.h, label %_ZN4jiff3fmt5Write10write_char17h9b8624d39719f101E.exit, !prof !23

bb.h:                                             ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h38682c382e765932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.w, i64 noundef %.sroa.0.05.i.i)
  %.pre.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !11745, !noalias !11744
  br label %_ZN4jiff3fmt5Write10write_char17h9b8624d39719f101E.exit

_ZN4jiff3fmt5Write10write_char17h9b8624d39719f101E.exit: ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit.i, %bb.h
  %i.aa = phi i64 [ %i.w, %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit.i ], [ %.pre.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !11745, !noalias !11744, !nonnull !11, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0.i, i64 %.sroa.0.05.i.i, i1 false), !noalias !11745
  %i.af = add nuw i64 %i.aa, %.sroa.0.05.i.i
  store i64 %i.af, ptr %i.v, align 8, !alias.scope !11745, !noalias !11744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret { i64, ptr } { i64 0, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$jiff..fmt..Write$GT$9write_str17hfb574b6112997fd2E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11761)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !11762, !noalias !11763, !noundef !11 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !range !50, !alias.scope !11762, !noalias !11763, !noundef !11
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %"_ZN58_$LT$alloc..string..String$u20$as$u20$jiff..fmt..Write$GT$9write_str17h0eb9b5c69139193aE.exit", !prof !23

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h38682c382e765932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.c, i64 noundef %2)
  %.pre.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !11764, !noalias !11763
  br label %"_ZN58_$LT$alloc..string..String$u20$as$u20$jiff..fmt..Write$GT$9write_str17h0eb9b5c69139193aE.exit"

"_ZN58_$LT$alloc..string..String$u20$as$u20$jiff..fmt..Write$GT$9write_str17h0eb9b5c69139193aE.exit": ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !11764, !noalias !11763, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !11764
  %i.l = add i64 %i.g, %2
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !11764, !noalias !11763
  ret { i64, ptr } { i64 0, ptr undef }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h71ca773022667bfcE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @449, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$jiff..span..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h213add3c726e3375E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !30, !noundef !11 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN53_$LT$jiff..span..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h213add3c726e3375E.648", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN55_$LT$jiff..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he15c9f028ee61d34E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !noundef !11
  %i.e = and i32 %i.d, 8388608
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11784)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !11784, !noalias !11785, !noundef !11 ; 4 uses
  %.not6.peel.i = icmp eq ptr %i.g, null          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.05.0.peel.i = select i1 %.not6.peel.i, ptr @360, ptr %i.h
  %i.i = tail call noundef zeroext i1 @"_ZN61_$LT$jiff..error..ErrorKind$u20$as$u20$core..fmt..Display$GT$3fmt17h6a3e35b3af105e84E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.05.0.peel.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !11784 ; 2 uses
  %brmerge = or i1 %i.i, %.not6.peel.i
  br i1 %brmerge, label %"_ZN57_$LT$jiff..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h3ade376af4cb0b39E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !53, !noalias !11786, !noundef !11
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.peel.i", label %"_ZN57_$LT$jiff..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h3ade376af4cb0b39E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.peel.i": ; preds = %bb.c
  %i.m = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 2), !noalias !11784
  br i1 %i.m, label %"_ZN57_$LT$jiff..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h3ade376af4cb0b39E.exit", label %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33.i"

"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.peel.i", %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.i"
  %.pn = phi ptr [ %i.q, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.i" ], [ %i.g, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.peel.i" ]
  %.sroa.12.0.i3 = getelementptr inbounds nuw i8, ptr %.pn, i64 24 ; 2 uses
  %i.n = load ptr, ptr %.sroa.12.0.i3, align 8, !noalias !11784, !noundef !11 ; 2 uses
  %.not6.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.05.0.i = select i1 %.not6.i, ptr @360, ptr %i.o
  %i.p = tail call noundef zeroext i1 @"_ZN61_$LT$jiff..error..ErrorKind$u20$as$u20$core..fmt..Display$GT$3fmt17h6a3e35b3af105e84E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.05.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !11784
  br i1 %i.p, label %"_ZN57_$LT$jiff..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h3ade376af4cb0b39E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33.i"
  %i.q = load ptr, ptr %.sroa.12.0.i3, align 8, !noalias !11787, !noundef !11 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN57_$LT$jiff..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h3ade376af4cb0b39E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !53, !noalias !11786, !noundef !11
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.i", label %"_ZN57_$LT$jiff..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h3ade376af4cb0b39E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.i": ; preds = %bb.e
  %i.u = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 2), !noalias !11784
  br i1 %i.u, label %"_ZN57_$LT$jiff..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h3ade376af4cb0b39E.exit", label %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33.i", !llvm.loop !7

bb.f:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %0, align 8, !noundef !11  ; 3 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @449, i64 noundef 5)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @461, i64 noundef 4, ptr noundef nonnull align 1 %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @460)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.x, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @463, i64 noundef 5, ptr noundef nonnull align 1 %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @462)
  %i.aa = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN57_$LT$jiff..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h3ade376af4cb0b39E.exit"

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @449, i64 noundef 5)
  %i.ab = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @461, i64 noundef 4, ptr noundef nonnull align 1 @465, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @466)
  %i.ac = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN57_$LT$jiff..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h3ade376af4cb0b39E.exit"

"_ZN57_$LT$jiff..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h3ade376af4cb0b39E.exit": ; preds = %bb.d, %bb.e, %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33.i", %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.i", %bb.b, %bb.c, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.peel.i", %bb.g, %bb.h
  %.sroa.0.0.in = phi i1 [ %i.ac, %bb.h ], [ %i.aa, %bb.g ], [ %i.i, %bb.b ], [ true, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.peel.i" ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ true, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.i" ], [ true, %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33.i" ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN55_$LT$jiff..span..Span$u20$as$u20$core..fmt..Display$GT$3fmt17hd11c3007835ae857E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [306 x i8], align 1               ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [78 x i8], align 1                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8, !noundef !11
  %i.k = and i32 %i.j, 8388608
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11819
  store ptr %i.f, ptr %i.e, align 8, !alias.scope !11820, !noalias !11821
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 78, ptr %i.m, align 8, !alias.scope !11820, !noalias !11821
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i16 0, ptr %i.n, align 8, !alias.scope !11820, !noalias !11821
  call void @_ZN4jiff3fmt8temporal7printer11SpanPrinter15print_span_impl17ha18461465727eeadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_ZN4jiff3fmt8temporal20DEFAULT_SPAN_PRINTER17h421320b5fcc1fecbE, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e), !noalias !11822
  %i.o = load ptr, ptr %i.e, align 8, !noalias !11819, !nonnull !11, !align !13, !noundef !11
  %i.p = load i16, ptr %i.n, align 8, !noalias !11819, !noundef !11
  %i.q = zext i16 %i.p to i64
  %i.r = call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.q), !noalias !11823
  br i1 %i.r, label %bb.d, label %_ZN4jiff3fmt8temporal7printer11SpanPrinter10print_span17h2f47e76b8ad21f7dE.exit

_ZN4jiff3fmt8temporal7printer11SpanPrinter10print_span17h2f47e76b8ad21f7dE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11819
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11824
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !11825, !noalias !11826
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 306, ptr %i.s, align 8, !alias.scope !11825, !noalias !11826
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i16 0, ptr %i.t, align 8, !alias.scope !11825, !noalias !11826
  call void @_ZN4jiff3fmt8friendly7printer11SpanPrinter22print_span_designators17h8a0baad01b77487dE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_ZN4jiff3fmt8friendly20DEFAULT_SPAN_PRINTER17hb82d7ac384bb4706E, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !11827
  %i.u = load ptr, ptr %i.b, align 8, !noalias !11824, !nonnull !11, !align !13, !noundef !11
  %i.v = load i16, ptr %i.t, align 8, !noalias !11824, !noundef !11
  %i.w = zext i16 %i.v to i64
  %i.x = call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.u, i64 noundef %i.w), !noalias !11828
  br i1 %i.x, label %bb.g, label %_ZN4jiff3fmt8friendly7printer11SpanPrinter10print_span17h2387c8213979be26E.exit

_ZN4jiff3fmt8friendly7printer11SpanPrinter10print_span17h2387c8213979be26E.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11824
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11829
  store i8 3, ptr %i.d, align 8, !noalias !11829
  %i.y = call noundef ptr @"_ZN4jiff5error3fmt99_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h6f96ac308df63112E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d), !noalias !11823 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.y, ptr %i.g, align 8
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !11830
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.e, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g), !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4jiff3fmt8friendly7printer11SpanPrinter10print_span17h2387c8213979be26E.exit, %_ZN4jiff3fmt8temporal7printer11SpanPrinter10print_span17h2f47e76b8ad21f7dE.exit, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit8", %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"
  %.sroa.0.1 = phi i1 [ true, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit" ], [ false, %_ZN4jiff3fmt8temporal7printer11SpanPrinter10print_span17h2f47e76b8ad21f7dE.exit ], [ false, %_ZN4jiff3fmt8friendly7printer11SpanPrinter10print_span17h2387c8213979be26E.exit ], [ true, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit8" ]
  ret i1 %.sroa.0.1

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11831
  store i8 3, ptr %i.a, align 8, !noalias !11831
  %i.ab = call noundef ptr @"_ZN4jiff5error3fmt99_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h6f96ac308df63112E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !noalias !11828 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ab, ptr %i.h, align 8
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !11832
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.h, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit8"

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h), !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit8"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit8": ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN55_$LT$jiff..zoned..Zoned$u20$as$u20$core..fmt..Debug$GT$3fmt17hcaa87dff5f06398cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 1                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11846)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !11846, !noalias !11847, !noundef !11
  %i.f = and i32 %i.e, 268435456
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.i = load i16, ptr %i.h, align 2, !alias.scope !11846, !noalias !11847, !noundef !11 ; 2 uses
  %i.j = icmp ugt i16 %i.i, 255
  %i.k = shl nuw i16 %i.i, 8
  %i.l = or disjoint i16 %i.k, 1
  %.sroa.017.0.i = select i1 %i.j, i16 -255, i16 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.423.2.insert.insert.i = phi i16 [ %.sroa.017.0.i, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11848
  store i8 0, ptr %i.c, align 1, !noalias !11848
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i16 %.sroa.423.2.insert.insert.i, ptr %.sroa.6.0..sroa_idx10.i, align 1, !noalias !11848
  %.sroa.612.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 84, ptr %.sroa.612.0..sroa_idx15.i, align 1, !noalias !11848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11848
  store ptr %1, ptr %i.a, align 8, !noalias !11849
  %i.m = call { i64, ptr } @_ZN4jiff3fmt8temporal7printer15DateTimePrinter11print_zoned17h945f53315e19e41eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @197) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11848
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1                 ; 2 uses
  br i1 %i.o, label %bb.d, label %"_ZN57_$LT$jiff..zoned..Zoned$u20$as$u20$core..fmt..Display$GT$3fmt17h7bf69a8bf9801d05E.exit"

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { i64, ptr } %i.m, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11848
  store ptr %i.p, ptr %i.b, align 8, !noalias !11848
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !11850
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i"

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b), !noalias !11847, !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i": ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11848
  br label %"_ZN57_$LT$jiff..zoned..Zoned$u20$as$u20$core..fmt..Display$GT$3fmt17h7bf69a8bf9801d05E.exit"

"_ZN57_$LT$jiff..zoned..Zoned$u20$as$u20$core..fmt..Display$GT$3fmt17h7bf69a8bf9801d05E.exit": ; preds = %bb.c, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11848
  ret i1 %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN56_$LT$jiff..span..UnitSet$u20$as$u20$core..fmt..Debug$GT$3fmt17h2c259dc90c6827c2E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
.split:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.val18 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val19 = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val19, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !11, !noalias !11861, !nonnull !11 ; 4 uses
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 1 %.val18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @467, i64 noundef 1), !noalias !11861, !inline_history !79
  br i1 %i.g, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39, label %bb.a

bb.a:                                             ; preds = %.split
  %i.h = load i16, ptr %0, align 2, !noundef !11  ; 2 uses
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %.split68, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.1050.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.01.073 = phi i16 [ %i.h, %.lr.ph ], [ %i.w, %bb.c ] ; 2 uses
  %.sroa.03.072 = phi i32 [ 0, %.lr.ph ], [ %i.s, %bb.c ] ; 3 uses
  %i.k = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.01.073, i1 true)
  %switch.tableidx.i = add nsw i16 %i.k, -6       ; 2 uses
  %i.l = icmp ult i16 %switch.tableidx.i, 10
  br i1 %i.l, label %_ZN4jiff4span7UnitSet12largest_unit17hc90b8c5c5d517267E.exit, label %_ZN4jiff4span7UnitSet12largest_unit17hc90b8c5c5d517267E.exit.thread

_ZN4jiff4span7UnitSet12largest_unit17hc90b8c5c5d517267E.exit: ; preds = %bb.b
  %switch.idx.cast.i = trunc nuw nsw i16 %switch.tableidx.i to i8
  %switch.offset.i = sub nuw nsw i8 9, %switch.idx.cast.i ; 3 uses
  %i.m = icmp sgt i32 %.sroa.03.072, 0
  br i1 %i.m, label %.split66, label %switch.lookup

_ZN4jiff4span7UnitSet12largest_unit17hc90b8c5c5d517267E.exit.thread: ; preds = %bb.b, %bb.c
  %.sroa.03.0.lcssa.ph = phi i32 [ %.sroa.03.072, %bb.b ], [ %i.s, %bb.c ]
  %i.n = icmp eq i32 %.sroa.03.0.lcssa.ph, 0
  br i1 %i.n, label %.split68, label %bb.d

.split66:                                         ; preds = %_ZN4jiff4span7UnitSet12largest_unit17hc90b8c5c5d517267E.exit
  %i.o = call noundef zeroext i1 %i.f(ptr noundef nonnull align 1 %.val18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @185, i64 noundef 2), !noalias !11862, !inline_history !79
  br i1 %i.o, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39, label %switch.lookup

switch.lookup:                                    ; preds = %.split66, %_ZN4jiff4span7UnitSet12largest_unit17hc90b8c5c5d517267E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = zext nneg i8 %switch.offset.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN56_$LT$jiff..span..UnitSet$u20$as$u20$core..fmt..Debug$GT$3fmt17h2c259dc90c6827c2E", i64 %i.p
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.q = zext nneg i8 %switch.offset.i to i64
  %switch.gep79 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN56_$LT$jiff..span..UnitSet$u20$as$u20$core..fmt..Debug$GT$3fmt17h2c259dc90c6827c2E.649", i64 %i.q
  %switch.load80 = load i8, ptr %switch.gep79, align 1
  %switch.ext = zext i8 %switch.load80 to i64
  store ptr %switch.load, ptr %i.b, align 8
  store i64 %switch.ext, ptr %i.j, align 8
  store ptr %i.b, ptr %i.c, align 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11863
  store ptr @87, ptr %i.a, align 8
  store i64 1, ptr %.sroa.547.0..sroa_idx, align 8
  store ptr %i.c, ptr %.sroa.748.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.849.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.1050.0..sroa_idx, align 8
  %i.r = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val18, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val19, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !11863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.r, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %i.s = add i32 %.sroa.03.072, 1                 ; 2 uses
  %i.t = zext nneg i8 %switch.offset.i to i16
  %i.u = shl nuw nsw i16 1, %i.t
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.01.073, %i.v              ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %_ZN4jiff4span7UnitSet12largest_unit17hc90b8c5c5d517267E.exit.thread, label %bb.b

.split68:                                         ; preds = %bb.a, %_ZN4jiff4span7UnitSet12largest_unit17hc90b8c5c5d517267E.exit.thread
  %i.y = call noundef zeroext i1 %i.f(ptr noundef nonnull align 1 %.val18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @468, i64 noundef 3), !noalias !11864, !inline_history !79
  br i1 %i.y, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39, label %bb.d

bb.d:                                             ; preds = %.split68, %_ZN4jiff4span7UnitSet12largest_unit17hc90b8c5c5d517267E.exit.thread
  %i.z = call noundef zeroext i1 %i.f(ptr noundef nonnull align 1 %.val18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @469, i64 noundef 1), !noalias !11865, !inline_history !79
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit39: ; preds = %switch.lookup, %.split66, %bb.d, %.split68, %.split
  %.sroa.0.2 = phi i1 [ true, %.split68 ], [ true, %.split ], [ %i.z, %bb.d ], [ true, %.split66 ], [ true, %switch.lookup ]
  ret i1 %.sroa.0.2
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN57_$LT$jiff..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h3ade376af4cb0b39E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33.peel":
  %i.a = load ptr, ptr %0, align 8, !noundef !11  ; 4 uses
  %.not6.peel = icmp eq ptr %i.a, null            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.05.0.peel = select i1 %.not6.peel, ptr @360, ptr %i.b
  %i.c = tail call noundef zeroext i1 @"_ZN61_$LT$jiff..error..ErrorKind$u20$as$u20$core..fmt..Display$GT$3fmt17h6a3e35b3af105e84E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.05.0.peel, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.c, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread", label %bb.a

bb.a:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33.peel"
  br i1 %.not6.peel, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread.peel", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !53, !noalias !11882, !noundef !11
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.peel", label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread.peel"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.peel": ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 2)
  br i1 %i.h, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread", label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread.peel"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread.peel": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.peel", %bb.b, %bb.a
  %.sroa.0.0.i2.i.i.i52.peel = phi ptr [ %i.g, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.peel" ], [ null, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.sroa.12.349.peel = phi ptr [ %i.g, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.peel" ], [ %0, %bb.b ], [ %0, %bb.a ]
  %.not.not.not62 = icmp eq ptr %.sroa.0.0.i2.i.i.i52.peel, null
  br i1 %.not.not.not62, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread", label %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33"

"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread.peel", %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread"
  %.sroa.12.064 = phi ptr [ %.sroa.12.349, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread" ], [ %.sroa.12.349.peel, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread.peel" ] ; 3 uses
  %.sroa.21.063 = phi ptr [ %.sroa.0.0.i2.i.i.i52, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread" ], [ %.sroa.0.0.i2.i.i.i52.peel, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread.peel" ]
  %i.i = load ptr, ptr %.sroa.21.063, align 8, !noundef !11 ; 2 uses
  %.not6 = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.05.0 = select i1 %.not6, ptr @360, ptr %i.j
  %i.k = tail call noundef zeroext i1 @"_ZN61_$LT$jiff..error..ErrorKind$u20$as$u20$core..fmt..Display$GT$3fmt17h6a3e35b3af105e84E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.05.0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.k, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread", label %bb.c

bb.c:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33"
  %i.l = load ptr, ptr %.sroa.12.064, align 8, !noalias !11882, !noundef !11 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !53, !noalias !11882, !noundef !11
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit", label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit": ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 2)
  br i1 %i.q, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread", label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread": ; preds = %bb.d, %bb.c, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit"
  %.sroa.0.0.i2.i.i.i52 = phi ptr [ %i.p, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit" ], [ null, %bb.d ], [ null, %bb.c ] ; 2 uses
  %.sroa.12.349 = phi ptr [ %i.p, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit" ], [ %.sroa.12.064, %bb.d ], [ %.sroa.12.064, %bb.c ]
  %.not.not.not = icmp eq ptr %.sroa.0.0.i2.i.i.i52, null
  br i1 %.not.not.not, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread", label %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33", !llvm.loop !7

"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread", %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit", %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33", %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread.peel", %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.peel", %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33.peel"
  %.not30 = phi i1 [ true, %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33.peel" ], [ true, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.peel" ], [ false, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread.peel" ], [ true, %"_ZN4core6option15Option$LT$T$GT$7or_else17h3b2215ff69ba67e4E.exit.thread33" ], [ true, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit" ], [ false, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h4242dec00fe57810E.exit.thread" ]
  ret i1 %.not30
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN57_$LT$jiff..error..IOError$u20$as$u20$core..fmt..Debug$GT$3fmt17h03fa61a80f789b53E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @471, i64 noundef 7)
  %i.b = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @473, i64 noundef 3, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @472)
  %i.c = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN57_$LT$jiff..zoned..Zoned$u20$as$u20$core..fmt..Display$GT$3fmt17h7bf69a8bf9801d05E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 1                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !noundef !11
  %i.f = and i32 %i.e, 268435456
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.i = load i16, ptr %i.h, align 2, !noundef !11 ; 2 uses
  %i.j = icmp ugt i16 %i.i, 255
  %i.k = shl nuw i16 %i.i, 8
  %i.l = or disjoint i16 %i.k, 1
  %.sroa.017.0 = select i1 %i.j, i16 -255, i16 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.423.2.insert.insert = phi i16 [ %.sroa.017.0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i16 %.sroa.423.2.insert.insert, ptr %.sroa.6.0..sroa_idx10, align 1
  %.sroa.612.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 84, ptr %.sroa.612.0..sroa_idx15, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !11893
  %i.m = call { i64, ptr } @_ZN4jiff3fmt8temporal7printer15DateTimePrinter11print_zoned17h945f53315e19e41eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @197) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1                 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { i64, ptr } %i.m, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.p, ptr %i.b, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !11894
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b), !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h631179a280c97600E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11899)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !11899, !noundef !11 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
end_hunk_8
begin_hunk_9_@"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h38682c382e765932E":bb.a
  %i.e = load i64, ptr %0, align 8, !range !50, !alias.scope !11976, !noundef !11 ; 3 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %.sroa.0.0.i32.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -1) 8) ; 3 uses
  %i.g = icmp slt i64 %.sroa.0.0.i32.i, 0
  br i1 %i.g, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11976
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.h, align 8, !alias.scope !11976, !nonnull !11, !noundef !11
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !11977, !noalias !11976
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11977, !noalias !11976
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 1, %bb.c ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.j, align 8, !alias.scope !11977, !noalias !11976
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17haa4a6953bb14243eE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 1, i64 noundef %.sroa.0.0.i32.i, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !11976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11976
  %i.k = load i64, ptr %i.b, align 8, !range !53, !noalias !11976, !noundef !11
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"
  %i.n = load i64, ptr %i.m, align 8, !range !15, !noalias !11976, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !11976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11976
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.b ], [ undef, %bb.a ], [ %i.p, %bb.d ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.n, %bb.d ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @548) #45
  unreachable

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h1525d8074e4e7f32E.exit.i"
  %i.q = load ptr, ptr %i.m, align 8, !noalias !11976, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11976
  store ptr %i.q, ptr %i.h, align 8, !alias.scope !11976
  store i64 %.sroa.0.0.i32.i, ptr %0, align 8, !alias.scope !11976
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN60_$LT$jiff..civil..date..Date$u20$as$u20$core..fmt..Debug$GT$3fmt17h37dbb97a4a500342E"(ptr noalias noundef readonly align 2 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11990
  store ptr %1, ptr %i.a, align 8, !noalias !11991
  %i.c = call { i64, ptr } @_ZN4jiff3fmt8temporal7printer15DateTimePrinter10print_date17h5e899837f0a4541bE(ptr noalias readonly align 1 captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %0, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @197) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11990
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1                 ; 2 uses
  br i1 %i.e, label %bb.b, label %"_ZN62_$LT$jiff..civil..date..Date$u20$as$u20$core..fmt..Display$GT$3fmt17ha25d26d09da70725E.exit"

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.c, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11990
  store ptr %i.f, ptr %i.b, align 8, !noalias !11990
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !11992
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i"

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b), !noalias !11993, !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i": ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11990
  br label %"_ZN62_$LT$jiff..civil..date..Date$u20$as$u20$core..fmt..Display$GT$3fmt17ha25d26d09da70725E.exit"

"_ZN62_$LT$jiff..civil..date..Date$u20$as$u20$core..fmt..Display$GT$3fmt17ha25d26d09da70725E.exit": ; preds = %bb.a, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i"
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN60_$LT$jiff..error..AdhocError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd5db3d836ae1c98aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN60_$LT$jiff..util..b..Day$u20$as$u20$jiff..util..b..Bounds$GT$5error17h29eed28e1a14c57aE"() unnamed_addr #14 {
bb.a:
  ret i8 3
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN61_$LT$jiff..error..ErrorKind$u20$as$u20$core..fmt..Display$GT$3fmt17h6a3e35b3af105e84E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = load i8, ptr %0, align 8, !range !51, !noundef !11 ; 3 uses
  %i.k = icmp ne i8 %i.j, 10
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nsw i8 %i.j, -4
  %i.m = icmp samesign ugt i8 %i.j, 3
  %narrow = select i1 %i.m, i8 %i.l, i8 6
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.h
    i8 5, label %bb.k
    i8 6, label %bb.l
    i8 7, label %bb.m
    i8 8, label %bb.n
    i8 9, label %bb.o
    i8 10, label %bb.p
    i8 11, label %bb.q
    i8 12, label %bb.r
    i8 13, label %bb.s
    i8 14, label %bb.t
    i8 15, label %bb.u
    i8 16, label %bb.v
    i8 17, label %bb.w
    i8 18, label %bb.x
    i8 19, label %bb.y
    i8 20, label %bb.ab
    i8 21, label %bb.ac
    i8 22, label %bb.ad
    i8 23, label %bb.ae
    i8 24, label %bb.af
    i8 25, label %bb.ag
    i8 26, label %bb.ah
    i8 27, label %bb.ai
    i8 28, label %bb.al
    i8 29, label %bb.am
    i8 30, label %bb.an
    i8 31, label %bb.ao
    i8 32, label %bb.ap
    i8 34, label %bb.as
    i8 36, label %bb.au
    i8 37, label %bb.av
    i8 38, label %bb.aw
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12031)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !12031, !noalias !12032, !nonnull !11, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !12031, !noalias !12032, !noundef !11
  %i.r = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !12031
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = tail call noundef zeroext i1 @"_ZN65_$LT$jiff..util..b..BoundsError$u20$as$u20$core..fmt..Display$GT$3fmt17hae395bb18b528f3aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = tail call noundef zeroext i1 @"_ZN64_$LT$jiff..error..civil..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h6de1374f45efc782E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12033)
  %i.w = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @994, i64 noundef 45), !noalias !12033
  br i1 %i.w, label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit", label %switch.lookup

switch.lookup:                                    ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.y = load i8, ptr %i.x, align 1, !range !22, !alias.scope !12033, !noalias !12034, !noundef !11 ; 2 uses
  %i.z = zext nneg i8 %i.y to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE", i64 %i.z
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.aa = zext nneg i8 %i.y to i64
  %switch.gep13 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.681", i64 %i.aa
  %switch.load14 = load ptr, ptr %switch.gep13, align 8
  %i.ab = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load14, i64 noundef %switch.ext, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !12033
  br i1 %i.ab, label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit", label %bb.g

default.unreachable:                              ; preds = %bb.y
  unreachable

bb.g:                                             ; preds = %switch.lookup
  %i.ac = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @998, i64 noundef 16), !noalias !12033
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.h:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12035)
  %i.ae = load i8, ptr %i.ad, align 1, !range !21, !alias.scope !12035, !noalias !12036, !noundef !11
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @867, i64 noundef 39), !noalias !12035
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.j:                                             ; preds = %bb.h
  %i.ah = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @866, i64 noundef 34), !noalias !12035
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12037)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12038
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !12037, !noalias !12039, !nonnull !11, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !12037, !noalias !12039, !noundef !11
  store ptr %i.aj, ptr %i.i, align 8, !noalias !12038
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.al, ptr %i.am, align 8, !noalias !12038
  %i.an = call noundef zeroext i1 @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !12037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12038
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.l:                                             ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @"_ZN62_$LT$jiff..error..fmt..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h24367f7c7b6f4abbE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.m:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aq = tail call noundef zeroext i1 @"_ZN72_$LT$jiff..error..fmt..friendly..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h43a9f35b46fa77b2E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.n:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.as = tail call noundef zeroext i1 @"_ZN70_$LT$jiff..error..fmt..offset..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hbe86c25a20796303E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.o:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.au = tail call noundef zeroext i1 @"_ZN71_$LT$jiff..error..fmt..rfc2822..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hf09732ed8c1b5e38E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(3) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.p:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aw = tail call noundef zeroext i1 @"_ZN71_$LT$jiff..error..fmt..rfc9557..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h8f3dd05cbdd4861fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.av, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.q:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = tail call noundef zeroext i1 @"_ZN72_$LT$jiff..error..fmt..temporal..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hf71d012ccec1c06bE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.r:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ba = tail call noundef zeroext i1 @"_ZN68_$LT$jiff..error..fmt..util..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h32bfa56c4b6d3aafE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.s:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = tail call noundef zeroext i1 @"_ZN71_$LT$jiff..error..fmt..strtime..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h29d13180ae1e5d92E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.t:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.be = tail call noundef zeroext i1 @"_ZN77_$LT$jiff..error..fmt..strtime..FormatError$u20$as$u20$core..fmt..Display$GT$3fmt17h5052cf3a96912db6E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.u:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = tail call noundef zeroext i1 @"_ZN76_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$core..fmt..Display$GT$3fmt17h188e427a3f9e07b6E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.v:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = tail call noundef zeroext i1 @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bh, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.w:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bk = tail call noundef zeroext i1 @"_ZN76_$LT$jiff..shared..util..itime..RangeError$u20$as$u20$core..fmt..Display$GT$3fmt17h0f8570c9850b0770E"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.x:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12040)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12041
  store ptr %i.bl, ptr %i.h, align 8, !noalias !12041
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1f5eabe1a22f526cE", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !12041
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.bm, align 8, !alias.scope !12040, !noalias !12042
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !12040, !noalias !12042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12043
  store ptr @1562, ptr %i.g, align 8, !noalias !12041
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !12041
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !12041
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !12041
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !12041
  %i.bn = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !12044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12041
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.y:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12046)
  %i.bp = load i8, ptr %i.bo, align 1, !range !22, !alias.scope !12045, !noalias !12046, !noundef !11
  switch i8 %i.bp, label %default.unreachable [
    i8 0, label %bb.z
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit13.i
    i8 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.bq, align 8, !alias.scope !12046, !noalias !12045
  %.val7.i = load ptr, ptr %1, align 8, !alias.scope !12046, !noalias !12045
  %i.br = getelementptr inbounds nuw i8, ptr %.val8.i, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !11, !noalias !12047, !nonnull !11
  %i.bt = tail call noundef zeroext i1 %i.bs(ptr noundef nonnull align 1 %.val7.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1422, i64 noundef 31), !noalias !12047, !inline_history !12048
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit13.i: ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bv = load i8, ptr %i.bu, align 2, !alias.scope !12045, !noalias !12046, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12049
  store i8 %i.bv, ptr %i.e, align 1, !noalias !12049
  store ptr %i.e, ptr %i.f, align 8, !noalias !12049
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN63_$LT$jiff..util..escape..Byte$u20$as$u20$core..fmt..Display$GT$3fmt17h2ce559cbc213b887E", ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !12049
  %.val5.i = load ptr, ptr %1, align 8, !alias.scope !12046, !noalias !12045, !nonnull !11, !noundef !11
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6.i = load ptr, ptr %i.bw, align 8, !alias.scope !12046, !noalias !12045, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12050
  store ptr @1424, ptr %i.d, align 8, !noalias !12049
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !12049
  %.sroa.721.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %.sroa.721.0..sroa_idx.i, align 8, !noalias !12049
  %.sroa.822.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.822.0..sroa_idx.i, align 8, !noalias !12049
  %.sroa.1023.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.1023.0..sroa_idx.i, align 8, !noalias !12049
  %i.bx = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val5.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val6.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !12050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12049
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.aa:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i = load ptr, ptr %i.by, align 8, !alias.scope !12046, !noalias !12045
  %.val.i1 = load ptr, ptr %1, align 8, !alias.scope !12046, !noalias !12045
  %i.bz = getelementptr inbounds nuw i8, ptr %.val4.i, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !invariant.load !11, !noalias !12051, !nonnull !11
  %i.cb = tail call noundef zeroext i1 %i.ca(ptr noundef nonnull align 1 %.val.i1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1425, i64 noundef 43), !noalias !12051, !inline_history !12048
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ab:                                            ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cd = tail call noundef zeroext i1 @"_ZN76_$LT$jiff..error..util..ParseFractionError$u20$as$u20$core..fmt..Display$GT$3fmt17h5680375a439f48e8E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ac:                                            ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cf = tail call noundef zeroext i1 @"_ZN78_$LT$jiff..shared..posix..PosixTimeZoneError$u20$as$u20$core..fmt..Display$GT$3fmt17ha68b1b52aecb0a1bE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(4) %i.ce, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ad:                                            ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ch = tail call noundef zeroext i1 @"_ZN80_$LT$jiff..error..util..RoundingIncrementError$u20$as$u20$core..fmt..Display$GT$3fmt17he607232d54640d03E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.cg, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"

bb.ae:                                            ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cj = tail call noundef zeroext i1 @"_ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.exit"
end_hunk_9
begin_hunk_10_@"_ZN62_$LT$jiff..civil..date..Date$u20$as$u20$core..fmt..Display$GT$3fmt17ha25d26d09da70725E":bb.a

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN62_$LT$jiff..error..AdhocError$u20$as$u20$core..fmt..Display$GT$3fmt17h6b8fd77ac032b8daE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN62_$LT$jiff..error..fmt..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h24367f7c7b6f4abbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i8, ptr %0, align 8, !range !27, !noundef !11
  switch i8 %i.h, label %default.unreachable26 [
    i8 0, label %bb.b
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i8 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit19
    i8 3, label %bb.c
  ]

default.unreachable26:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @586, i64 noundef 97)
  br label %bb.d

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.k, ptr %i.f, align 1
  store ptr %i.f, ptr %i.g, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN63_$LT$jiff..util..escape..Byte$u20$as$u20$core..fmt..Display$GT$3fmt17h2ce559cbc213b887E", ptr %.sroa.47.0..sroa_idx, align 8
  %.val13 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12078
  store ptr @589, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.m = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val14, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !12078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit19: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !11, !align !13, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !noundef !11
  store ptr %i.p, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.r, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1ccec5baee4d50acE", ptr %.sroa.43.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.t, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @"_ZN62_$LT$jiff..util..escape..Bytes$u20$as$u20$core..fmt..Debug$GT$3fmt17hf0f5b4ea73c130e1E", ptr %.sroa.411.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.u, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12079
  store ptr @593, ptr %i.a, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.722.0..sroa_idx, align 8
  %.sroa.823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.823.0..sroa_idx, align 8
  %.sroa.1024.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1024.0..sroa_idx, align 8
  %i.v = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val12, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @594, i64 noundef 45)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit19, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.b ], [ %i.m, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.v, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit19 ], [ %i.w, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN62_$LT$jiff..util..b..Month$u20$as$u20$jiff..util..b..Bounds$GT$5error17h9f09402dfc4ff9c2E"() unnamed_addr #14 {
bb.a:
  ret i8 15
}

; Function Attrs: noinline nonlazybind uwtable
define noundef zeroext i1 @"_ZN62_$LT$jiff..util..escape..Bytes$u20$as$u20$core..fmt..Debug$GT$3fmt17hf0f5b4ea73c130e1E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #15 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @575, i64 noundef 1)
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @"_ZN64_$LT$jiff..util..escape..Bytes$u20$as$u20$core..fmt..Display$GT$3fmt17h52b264184d91b88dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @575, i64 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN63_$LT$jiff..error..FilePathError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb9bff046ebb1b315E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @604, i64 noundef 13)
  %i.b = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @606, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @605)
  %i.c = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN63_$LT$jiff..error..span..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h6703f9d836e4ff3dE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = load i8, ptr %0, align 1, !range !32, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  switch i8 %i.j, label %default.unreachable39 [
    i8 0, label %bb.b
    i8 1, label %switch.lookup
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %switch.lookup47
    i8 5, label %switch.lookup53
    i8 6, label %bb.e
    i8 7, label %bb.f
    i8 8, label %bb.g
    i8 9, label %bb.h
    i8 10, label %bb.i
    i8 11, label %bb.j
  ]

default.unreachable39:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @607, i64 noundef 73)
  br label %bb.k

switch.lookup:                                    ; preds = %bb.a
  %i.m = load i8, ptr %i.k, align 1, !range !30, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = zext nneg i8 %i.m to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.704", i64 %i.o
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.p = zext nneg i8 %i.m to i64
  %switch.gep45 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.705", i64 %i.p
  %switch.load46 = load i8, ptr %switch.gep45, align 1
  %switch.ext = zext i8 %switch.load46 to i64
  store ptr %switch.load, ptr %i.h, align 8
  store i64 %switch.ext, ptr %i.n, align 8
  store ptr %i.h, ptr %i.i, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val15 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16 = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12086
  store ptr @620, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.r = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val16, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !12086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @621, i64 noundef 62)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @622, i64 noundef 105)
  br label %bb.k

switch.lookup47:                                  ; preds = %bb.a
  %i.u = load i8, ptr %i.k, align 1, !range !30, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = zext nneg i8 %i.u to i64
  %switch.gep48 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.704", i64 %i.w
  %switch.load49 = load ptr, ptr %switch.gep48, align 8
  %i.x = zext nneg i8 %i.u to i64
  %switch.gep50 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.705", i64 %i.x
  %switch.load51 = load i8, ptr %switch.gep50, align 1
  %switch.ext52 = zext i8 %switch.load51 to i64
  store ptr %switch.load49, ptr %i.f, align 8
  store i64 %switch.ext52, ptr %i.v, align 8
  store ptr %i.f, ptr %i.g, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.47.0..sroa_idx, align 8
  %.val13 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.y, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12087
  store ptr @624, ptr %i.b, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.528.0..sroa_idx, align 8
  %.sroa.729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %.sroa.729.0..sroa_idx, align 8
  %.sroa.830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.830.0..sroa_idx, align 8
  %.sroa.1031.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1031.0..sroa_idx, align 8
  %i.z = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val14, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !12087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.k

switch.lookup53:                                  ; preds = %bb.a
  %i.aa = load i8, ptr %i.k, align 1, !range !30, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = zext nneg i8 %i.aa to i64
  %switch.gep54 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.704", i64 %i.ac
  %switch.load55 = load ptr, ptr %switch.gep54, align 8
  %i.ad = zext nneg i8 %i.aa to i64
  %switch.gep56 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.705", i64 %i.ad
  %switch.load57 = load i8, ptr %switch.gep56, align 1
  %switch.ext58 = zext i8 %switch.load57 to i64
  store ptr %switch.load55, ptr %i.d, align 8
  store i64 %switch.ext58, ptr %i.ab, align 8
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.411.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.ae, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12088
  store ptr @626, ptr %i.a, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.735.0..sroa_idx, align 8
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.836.0..sroa_idx, align 8
  %.sroa.1037.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1037.0..sroa_idx, align 8
  %i.af = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val12, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.ag = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @627, i64 noundef 36)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.ah = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @628, i64 noundef 45)
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.ai = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @629, i64 noundef 37)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.aj = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @630, i64 noundef 62)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.ak = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @631, i64 noundef 83)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.al = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @632, i64 noundef 62)
  br label %bb.k

bb.k:                                             ; preds = %switch.lookup53, %switch.lookup47, %switch.lookup, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.b ], [ %i.r, %switch.lookup ], [ %i.s, %bb.c ], [ %i.t, %bb.d ], [ %i.z, %switch.lookup47 ], [ %i.af, %switch.lookup53 ], [ %i.ag, %bb.e ], [ %i.ah, %bb.f ], [ %i.ai, %bb.g ], [ %i.aj, %bb.h ], [ %i.ak, %bb.i ], [ %i.al, %bb.j ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN63_$LT$jiff..fmt..offset..Numeric$u20$as$u20$core..fmt..Debug$GT$3fmt17hedc101462a85cfb5E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN65_$LT$jiff..fmt..offset..Numeric$u20$as$u20$core..fmt..Display$GT$3fmt17h545f15e416c58e1bE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN63_$LT$jiff..shared..TzifDateTime$u20$as$u20$core..fmt..Debug$GT$3fmt17h35c21ad8bcf794b5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [2 x i8], align 2                 ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i32, ptr %i.k, align 8, !noundef !11
  %i.m = and i32 %i.l, 8388608
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @639, i64 noundef 12)
  %i.o = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @641, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @640)
  %i.p = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_ZN4core3fmt9Formatter11debug_tuple17h287fb5cf395e5aedE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @639, i64 noundef 12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.q = load i64, ptr %0, align 8, !noundef !11  ; 6 uses
  %i.r = lshr i64 %i.q, 48
  %i.s = trunc nuw i64 %i.r to i16
  store i16 %i.s, ptr %i.g, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.t = lshr i64 %i.q, 40
  %i.u = trunc i64 %i.t to i8
  store i8 %i.u, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.v = lshr i64 %i.q, 32
  %i.w = trunc i64 %i.v to i8
  store i8 %i.w, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.x = lshr i64 %i.q, 24
  %i.y = trunc i64 %i.x to i8
  store i8 %i.y, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = lshr i64 %i.q, 16
  %i.aa = trunc i64 %i.z to i8
  store i8 %i.aa, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = lshr i64 %i.q, 8
  %i.ac = trunc i64 %i.ab to i8
  store i8 %i.ac, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i16$GT$3fmt17h5e7056a81f88a921E", ptr %.sroa.43.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.ad, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E", ptr %.sroa.47.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.ae, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E", ptr %.sroa.411.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.d, ptr %i.af, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E", ptr %.sroa.415.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.c, ptr %i.ag, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E", ptr %.sroa.419.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.b, ptr %i.ah, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E", ptr %.sroa.423.0..sroa_idx, align 8
  store ptr @642, ptr %i.h, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 6, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr @643, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 6, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.a, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 6, ptr %i.am, align 8
  %i.an = call noundef align 8 dereferenceable(24) ptr @_ZN4core3fmt8builders10DebugTuple5field17hf87b1547c504b9ffE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @644)
  %i.ao = call noundef zeroext i1 @_ZN4core3fmt8builders10DebugTuple6finish17h725fa46a38425d91E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.p, %bb.b ], [ %i.ao, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN63_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Display$GT$3fmt17ha66cb654ecf6bf30E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [1 x i8], align 1                 ; 2 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = load i32, ptr %0, align 4, !noundef !11  ; 4 uses
  %i.l = icmp slt i32 %i.k, 0
  %spec.select = select i1 %i.l, ptr @190, ptr @191
  store ptr %spec.select, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.m, align 8
  %i.n = sdiv i32 %i.k, 3600
  %i.o = trunc i32 %i.n to i8                     ; 2 uses
  %.sroa.010.0 = tail call i8 @llvm.abs.i8(i8 %i.o, i1 false)
  store i8 %.sroa.010.0, ptr %i.i, align 1
  %i.p = sdiv i32 %i.k, 60
  %i.q = srem i32 %i.p, 60                        ; 3 uses
  %i.r = trunc nsw i32 %i.q to i8                 ; 2 uses
  %i.s = icmp slt i32 %i.q, 0
  %i.t = sub nsw i8 0, %i.r
end_hunk_10
begin_hunk_11_@"_ZN63_$LT$jiff..util..escape..Byte$u20$as$u20$core..fmt..Display$GT$3fmt17h2ce559cbc213b887E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12112
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !12111
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @746) #45, !noalias !12110
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hc981e5c158f3aba0E.exit": ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !12110, !noalias !12111, !nonnull !11, !align !13, !noundef !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !12110, !noalias !12111, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.w, i64 noundef %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.aa = icmp ne i64 %i.n, 3
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.n
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !range !80, !alias.scope !12108, !noalias !12109, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.ad, ptr %i.ae, align 1
  %exitcond36.1.not = icmp eq i64 %wide.trip.count, 2
  br i1 %exitcond36.1.not, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.af = icmp samesign ult i64 %i.n, 2
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !range !80, !alias.scope !12108, !noalias !12109, !noundef !11 ; 3 uses
  %i.aj = add nsw i8 %i.ai, -97
  %i.ak = icmp ult i8 %i.aj, 6
  %i.al = add nsw i8 %i.ai, -32
  %spec.select.2 = select i1 %i.ak, i8 %i.al, i8 %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %spec.select.2, ptr %i.am, align 1
  %exitcond36.2.not = icmp eq i64 %wide.trip.count, 3
  br i1 %exitcond36.2.not, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.an = icmp eq i64 %i.n, 0
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !range !80, !alias.scope !12108, !noalias !12109, !noundef !11 ; 3 uses
  %i.aq = add nsw i8 %i.ap, -97
  %i.ar = icmp ult i8 %i.aq, 6
  %i.as = add nsw i8 %i.ap, -32
  %spec.select.3 = select i1 %i.ar, i8 %i.as, i8 %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %spec.select.3, ptr %i.at, align 1
  %exitcond36.3.not = icmp eq i64 %wide.trip.count, 4
  tail call void @llvm.assume(i1 %exitcond36.3.not)
  br label %._crit_edge
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hf3a269e0e3ccc031E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @749, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @750, i64 noundef 11, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @747, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @751, i64 noundef 9, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @748)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN64_$LT$jiff..error..civil..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h6de1374f45efc782E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !30, !noundef !11
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @752, i64 noundef 26)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @753, i64 noundef 34)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @754, i64 noundef 26)
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @755, i64 noundef 30)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @756, i64 noundef 26)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @757, i64 noundef 73)
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @758, i64 noundef 73)
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @759, i64 noundef 72)
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @760, i64 noundef 68)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @761, i64 noundef 34)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ], [ %i.i, %bb.i ], [ %i.j, %bb.j ], [ %i.k, %bb.k ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN64_$LT$jiff..error..zoned..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hf248ac896a375958E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load i8, ptr %0, align 1, !range !42, !noundef !11 ; 4 uses
  %i.e = add nsw i8 %i.d, -10
  %i.f = icmp samesign ugt i8 %i.d, 9
  %narrow = select i1 %i.f, i8 %i.e, i8 8
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %switch.lookup
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @762, i64 noundef 50)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @763, i64 noundef 44)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @764, i64 noundef 51)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @765, i64 noundef 45)
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @766, i64 noundef 58)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 59)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @768, i64 noundef 61)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @769, i64 noundef 46)
  br label %bb.k

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = zext nneg i8 %i.d to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.p
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.q = zext nneg i8 %i.d to i64
  %switch.gep6 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.q
  %switch.load7 = load i8, ptr %switch.gep6, align 1
  %switch.ext = zext i8 %switch.load7 to i64
  store ptr %switch.load, ptr %i.b, align 8
  store i64 %switch.ext, ptr %i.o, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12115
  store ptr @782, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.s = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %switch.lookup, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.l, %bb.h ], [ %i.m, %bb.i ], [ %i.n, %bb.j ], [ %i.s, %switch.lookup ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN64_$LT$jiff..fmt..strtime..Display$u20$as$u20$core..fmt..Debug$GT$3fmt17h71672f39198c91ebE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @783, i64 noundef 7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !align !13, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i64, ptr %i.e, align 8, !noundef !11
  store ptr %i.d, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.g, align 8
  %i.h = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @785, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @784)
  %i.i = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @787, i64 noundef 2, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @786)
  %i.j = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @"_ZN64_$LT$jiff..shared..PosixRule$u20$as$u20$core..cmp..PartialEq$GT$2eq17h9c5362d9e5bf902aE"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #25 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12123)
  %i.a = load i8, ptr %0, align 4, !range !22, !alias.scope !12122, !noalias !12123, !noundef !11 ; 2 uses
  %i.b = load i8, ptr %1, align 4, !range !22, !alias.scope !12123, !noalias !12122, !noundef !11
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread"

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %.split
    i8 1, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit"
    i8 2, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.g, %bb.b
  unreachable

.split:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2, !alias.scope !12122, !noalias !12123, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 2, !alias.scope !12123, !noalias !12122, !noundef !11
  %i.h = icmp eq i16 %i.e, %i.g
  br i1 %i.h, label %bb.e, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread"

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !12122, !noalias !12123, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !12123, !noalias !12122, !noundef !11
  %i.m = icmp eq i8 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread"

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = load i8, ptr %i.n, align 2, !alias.scope !12122, !noalias !12123, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 2, !alias.scope !12123, !noalias !12122, !noundef !11
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %.split5, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread"

.split5:                                          ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !12122, !noalias !12123, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !12123, !noalias !12122, !noundef !11
  %i.w = icmp eq i8 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread"

"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit": ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.y = load i16, ptr %i.x, align 2, !alias.scope !12122, !noalias !12123, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !alias.scope !12123, !noalias !12122, !noundef !11
  %i.ab = icmp eq i16 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread"

bb.e:                                             ; preds = %.split5, %.split, %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit"
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !noundef !11
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread"

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12125)
  %i.aj = load i8, ptr %i.ah, align 4, !range !22, !alias.scope !12124, !noalias !12125, !noundef !11 ; 2 uses
  %i.ak = load i8, ptr %i.ai, align 4, !range !22, !alias.scope !12125, !noalias !12124, !noundef !11
  %i.al = icmp eq i8 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread"

bb.g:                                             ; preds = %bb.f
  switch i8 %i.aj, label %default.unreachable [
    i8 0, label %.split7
    i8 1, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit3"
    i8 2, label %bb.h
  ]

.split7:                                          ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.an = load i16, ptr %i.am, align 2, !alias.scope !12124, !noalias !12125, !noundef !11
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ap = load i16, ptr %i.ao, align 2, !alias.scope !12125, !noalias !12124, !noundef !11
  %i.aq = icmp eq i16 %i.an, %i.ap
  br i1 %i.aq, label %bb.j, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread"

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !12124, !noalias !12125, !noundef !11
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !12125, !noalias !12124, !noundef !11
  %i.av = icmp eq i8 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread"

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ax = load i8, ptr %i.aw, align 2, !alias.scope !12124, !noalias !12125, !noundef !11
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.az = load i8, ptr %i.ay, align 2, !alias.scope !12125, !noalias !12124, !noundef !11
  %i.ba = icmp eq i8 %i.ax, %i.az
  br i1 %i.ba, label %.split8, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread"

.split8:                                          ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !12124, !noalias !12125, !noundef !11
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !12125, !noalias !12124, !noundef !11
  %i.bf = icmp eq i8 %i.bc, %i.be
  br i1 %i.bf, label %bb.j, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread"

"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit3": ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bh = load i16, ptr %i.bg, align 2, !alias.scope !12124, !noalias !12125, !noundef !11
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bj = load i16, ptr %i.bi, align 2, !alias.scope !12125, !noalias !12124, !noundef !11
  %i.bk = icmp eq i16 %i.bh, %i.bj
  br i1 %i.bk, label %bb.j, label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread"

"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread": ; preds = %bb.h, %bb.i, %bb.f, %bb.c, %bb.d, %bb.a, %.split8, %.split7, %.split5, %.split, %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit3", %bb.e, %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit", %bb.j
  %.sroa.0.0 = phi i1 [ %i.bp, %bb.j ], [ false, %bb.e ], [ false, %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit" ], [ false, %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit3" ], [ false, %.split8 ], [ false, %.split ], [ false, %.split5 ], [ false, %bb.c ], [ false, %.split7 ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.i ], [ false, %bb.h ]
  ret i1 %.sroa.0.0

bb.j:                                             ; preds = %.split8, %.split7, %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit3"
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !noundef !11
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !noundef !11
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br label %"_ZN63_$LT$jiff..shared..PosixDay$u20$as$u20$core..cmp..PartialEq$GT$2eq17h83c27e4baed5f1dbE.exit.thread"
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN64_$LT$jiff..util..b..Century$u20$as$u20$jiff..util..b..Bounds$GT$5error17h7aea225ec9442f9bE"() unnamed_addr #14 {
bb.a:
  ret i8 0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN64_$LT$jiff..util..b..ISOWeek$u20$as$u20$jiff..util..b..Bounds$GT$5error17ha5791123a1f4c3c1E"() unnamed_addr #14 {
end_hunk_11
begin_hunk_12_@"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3a149c5282c2a42cE":bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @807, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @808)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @464, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3f9e1079f038e87dE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !55, !noundef !11
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @807, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @809)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @464, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7d2f8172a8f42aefE"(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i16, ptr %0, align 2, !range !62, !noundef !11
  %i.c = trunc nuw i16 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @807, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @811)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @464, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h80398d650f056dbbE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !22, !noundef !11
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @807, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @812)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @464, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h97edc9039a91e554E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !21, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @807, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @813)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @464, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9fb0b59083098ec1E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !26, !noundef !11
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @807, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @814)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @464, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hae41f18da3dedacfE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !53, !noundef !11
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @807, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @815)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @464, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd1409d4865e98586E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !55, !noundef !11
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @807, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @816)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @464, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$jiff..civil..weekday..Weekday$u20$as$u20$core..fmt..Debug$GT$3fmt17h59cf32bd568f684eE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !41, !noundef !11
  %switch.tableidx = add nsw i8 %i.a, -1          ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN66_$LT$jiff..civil..weekday..Weekday$u20$as$u20$core..fmt..Debug$GT$3fmt17h59cf32bd568f684eE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN66_$LT$jiff..civil..weekday..Weekday$u20$as$u20$core..fmt..Debug$GT$3fmt17h59cf32bd568f684eE.657", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN66_$LT$jiff..error..fmt..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h169ebc076bea4a1bE"(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error3fmt99_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h6f96ac308df63112E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN66_$LT$jiff..fmt..strtime..Display$u20$as$u20$core..fmt..Display$GT$3fmt17h659038e3841ab781E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [100 x i8], align 1               ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !11, !align !13, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %1, ptr %i.g, align 8, !noalias !12248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12248
  store i8 0, ptr %i.f, align 1, !noalias !12248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12249
  store ptr %i.e, ptr %i.d, align 8, !alias.scope !12250, !noalias !12251
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 100, ptr %i.m, align 8, !alias.scope !12250, !noalias !12251
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i16 0, ptr %i.n, align 8, !alias.scope !12250, !noalias !12251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12249
  store ptr %i.d, ptr %i.c, align 8, !alias.scope !12252, !noalias !12253
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.o, align 8, !alias.scope !12252, !noalias !12253
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr @197, ptr %i.p, align 8, !alias.scope !12252, !noalias !12253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12249
  store ptr %i.f, ptr %i.b, align 8, !noalias !12249
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.q, align 8, !noalias !12249
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.l, ptr %i.r, align 8, !noalias !12249
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %0, ptr %i.s, align 8, !noalias !12249
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.t, align 8, !noalias !12249
  %i.u = call { i64, ptr } @"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$6format17hba04c3c00b5ddfc4E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.x = extractvalue { i64, ptr } %i.u, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12254
  store i8 6, ptr %i.a, align 8, !noalias !12254
  %i.y = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h2bfe5a8911315e0bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef %i.x), !noalias !12255 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.y, ptr %i.h, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.09.0.copyload.i.i = load ptr, ptr %i.c, align 8, !noalias !12249, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.410.0.copyload.i.i = load ptr, ptr %i.o, align 8, !noalias !12249, !nonnull !11, !noundef !11
  %.sroa.511.0.copyload.i.i = load ptr, ptr %i.p, align 8, !noalias !12249, !nonnull !11, !noundef !11
  %i.z = load ptr, ptr %.sroa.09.0.copyload.i.i, align 8, !noalias !12256, !nonnull !11, !align !13, !noundef !11
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload.i.i, i64 16 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8, !noalias !12256, !noundef !11
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.511.0.copyload.i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !11, !noalias !12256, !nonnull !11
  %i.af = call { i64, ptr } %i.ae(ptr noundef nonnull align 1 %.sroa.410.0.copyload.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef %i.ac), !noalias !12256, !inline_history !12241 ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.c, label %_ZN4jiff3fmt7strtime14BrokenDownTime6format17h0dd38e12411d8f41E.exit

_ZN4jiff3fmt7strtime14BrokenDownTime6format17h0dd38e12411d8f41E.exit: ; preds = %bb.b
  store i16 0, ptr %i.aa, align 8, !noalias !12256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ai = extractvalue { i64, ptr } %i.af, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ai, ptr %i.h, align 8
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit", label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.pn15.i.i.ph7 = phi ptr [ %i.y, %.thread ], [ %i.ai, %bb.c ]
  %i.ak = atomicrmw sub ptr %.pn15.i.i.ph7, i64 1 release, align 8, !noalias !12257
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.e, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h), !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4jiff3fmt7strtime14BrokenDownTime6format17h0dd38e12411d8f41E.exit, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"
  %i.am = phi i1 [ false, %_ZN4jiff3fmt7strtime14BrokenDownTime6format17h0dd38e12411d8f41E.exit ], [ true, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit" ]
  ret i1 %i.am
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$jiff..shared..tzif..CountKind$u20$as$u20$core..fmt..Debug$GT$3fmt17he7f21575998fd81fE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !29, !noundef !11 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN66_$LT$jiff..shared..tzif..CountKind$u20$as$u20$core..fmt..Debug$GT$3fmt17he7f21575998fd81fE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN66_$LT$jiff..shared..tzif..CountKind$u20$as$u20$core..fmt..Debug$GT$3fmt17he7f21575998fd81fE.658", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN66_$LT$jiff..util..b..DayOfYear$u20$as$u20$jiff..util..b..Bounds$GT$5error17h9534044ab243806bE"() unnamed_addr #14 {
bb.a:
  ret i8 4
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN66_$LT$jiff..util..b..Increment$u20$as$u20$jiff..util..b..Bounds$GT$5error17h7adce59e4e425781E"() unnamed_addr #14 {
bb.a:
  ret i8 9
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN66_$LT$jiff..util..b..SpanHours$u20$as$u20$jiff..util..b..Bounds$GT$5error17h93873feb5e89d0c4E"() unnamed_addr #14 {
bb.a:
  ret i8 28
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN66_$LT$jiff..util..b..SpanWeeks$u20$as$u20$jiff..util..b..Bounds$GT$5error17h2510514fffe5c299E"() unnamed_addr #14 {
bb.a:
  ret i8 26
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN66_$LT$jiff..util..b..SpanYears$u20$as$u20$jiff..util..b..Bounds$GT$5error17h89875f40a59d3d5eE"() unnamed_addr #14 {
bb.a:
  ret i8 24
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN66_$LT$jiff..util..utf8..Utf8Error$u20$as$u20$core..fmt..Display$GT$3fmt17hb9a5f2a80bdaa267E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12262)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !12262, !noundef !11 ; 2 uses
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = icmp ult i8 %i.e, 4
  br i1 %i.g, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.f, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329) #45, !noalias !12262
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %i.h, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN62_$LT$jiff..util..escape..Bytes$u20$as$u20$core..fmt..Debug$GT$3fmt17hf0f5b4ea73c130e1E", ptr %.sroa.42.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.i, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12263
  store ptr @860, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.j = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1f5eabe1a22f526cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = tail call noundef zeroext i1 @"_ZN60_$LT$std..ffi..os_str..OsStr$u20$as$u20$core..fmt..Debug$GT$3fmt17h523fedaeaea44e01E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4878152d24610678E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$core..array..TryFromSliceError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8b4f2226071a9a78E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @862, i64 noundef 17, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @861)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN67_$LT$jiff..error..duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hb10744065c188b97E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !21, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @867, i64 noundef 39)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @866, i64 noundef 34)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN67_$LT$jiff..error..span..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h066ca36b9cb77ba7E"(i8 noundef range(i8 0, 12) %0, i8 %1) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error4span100_$LT$impl$u20$core..convert..From$LT$jiff..error..span..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h59cd6d1a1463cddaE"(i8 noundef %0, i8 %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN67_$LT$jiff..tz..db..TimeZoneDatabase$u20$as$u20$core..fmt..Debug$GT$3fmt17h22b6b408e3e98f7fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @894, i64 noundef 17)
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !noundef !11  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 1, !range !22, !noundef !11
  switch i8 %i.d, label %default.unreachable2 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @895, i64 noundef 12)
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.a, %bb.i, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.e, %bb.d ], [ true, %bb.a ], [ %i.i, %bb.i ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable2:                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1924, i64 noundef 21)
  br i1 %i.f, label %bb.e, label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1988, i64 noundef 25)
  br i1 %i.g, label %bb.e, label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1753, i64 noundef 20)
  br i1 %i.h, label %bb.e, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @896, i64 noundef 1)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN67_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..fmt..Debug$GT$3fmt17h523b90ce554cfdbdE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [64 x i8], align 8                ; 11 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
end_hunk_12
begin_hunk_13_@"_ZN67_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..fmt..Debug$GT$3fmt17h523b90ce554cfdbdE":bb.a
  store i64 4, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !12270
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @574, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !12270
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !12270
  %i.ai = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val22.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12270
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !align !13, !noundef !11 ; 2 uses
  %.not7 = icmp eq ptr %i.ak, null
  br i1 %.not7, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.al = getelementptr i8, ptr %i.k, i64 20
  %i.am = load i64, ptr %i.al, align 8, !range !15, !noundef !11
  %.not = icmp eq i64 %i.am, -9223372036854775808
  br i1 %.not, label %bb.l, label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @898, i64 noundef 6)
  br i1 %i.an, label %bb.o, label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !11
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %.sink8 = phi ptr [ %i.ak, %bb.i ], [ @897, %bb.f ]
  %.sink = phi i64 [ %i.ap, %bb.i ], [ 5, %bb.f ]
  store ptr %.sink8, ptr %i.j, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_ZN4core3fmt9Formatter11debug_tuple17h287fb5cf395e5aedE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @407, i64 noundef 4)
  %i.ar = call noundef align 8 dereferenceable(24) ptr @_ZN4core3fmt8builders10DebugTuple5field17hf87b1547c504b9ffE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @466)
  %i.as = call noundef zeroext i1 @_ZN4core3fmt8builders10DebugTuple6finish17h725fa46a38425d91E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  %i.at = getelementptr i8, ptr %i.k, i64 28
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !11, !noundef !11
  %i.av = getelementptr i8, ptr %i.k, i64 36
  %i.aw = load i64, ptr %i.av, align 8, !noundef !11
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %.sink10 = phi ptr [ %i.au, %bb.k ], [ @897, %bb.g ]
  %.sink9 = phi i64 [ %i.aw, %bb.k ], [ 5, %bb.g ]
  store ptr %.sink10, ptr %i.h, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sink9, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_ZN4core3fmt9Formatter11debug_tuple17h287fb5cf395e5aedE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @407, i64 noundef 4)
  %i.ay = call noundef align 8 dereferenceable(24) ptr @_ZN4core3fmt8builders10DebugTuple5field17hf87b1547c504b9ffE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @466)
  %i.az = call noundef zeroext i1 @_ZN4core3fmt8builders10DebugTuple6finish17h725fa46a38425d91E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.o

bb.m:                                             ; preds = %bb.h
  %i.ba = getelementptr i8, ptr %i.k, i64 -5
  %i.bb = tail call fastcc noundef zeroext i1 @"_ZN4jiff6shared5posix90_$LT$impl$u20$core..fmt..Display$u20$for$u20$jiff..shared..PosixTimeZone$LT$ABBREV$GT$$GT$3fmt17h6730636a83689674E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(88) %i.ba, ptr noalias noundef align 8 dereferenceable(24) %1)
  br i1 %i.bb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @896, i64 noundef 1)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.h, %bb.c, %bb.d, %bb.e, %bb.j, %bb.l, %bb.n
  %.sroa.0.0.shrunk = phi i1 [ %i.n, %bb.c ], [ %i.o, %bb.d ], [ %i.ai, %bb.e ], [ %i.as, %bb.j ], [ %i.az, %bb.l ], [ %i.bc, %bb.n ], [ true, %bb.h ], [ true, %bb.m ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN67_$LT$jiff..util..b..LeapSecond$u20$as$u20$jiff..util..b..Bounds$GT$5error17hc8ff75fca1099742E"() unnamed_addr #14 {
bb.a:
  ret i8 11
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN67_$LT$jiff..util..b..Nanosecond$u20$as$u20$jiff..util..b..Bounds$GT$5error17hfb5f9f2cbe1ea65aE"() unnamed_addr #14 {
bb.a:
  ret i8 16
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN67_$LT$jiff..util..b..NthWeekday$u20$as$u20$jiff..util..b..Bounds$GT$5error17h291de55b8df5388dE"() unnamed_addr #14 {
bb.a:
  ret i8 17
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN67_$LT$jiff..util..b..SpanMonths$u20$as$u20$jiff..util..b..Bounds$GT$5error17h02c9bb9398a5edb2E"() unnamed_addr #14 {
bb.a:
  ret i8 25
}

; Function Attrs: noinline nonlazybind uwtable
define noundef zeroext i1 @"_ZN67_$LT$jiff..util..escape..RepeatByte$u20$as$u20$core..fmt..Debug$GT$3fmt17hc8dd050b8bb0b20eE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #15 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @575, i64 noundef 1)
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @"_ZN69_$LT$jiff..util..escape..RepeatByte$u20$as$u20$core..fmt..Display$GT$3fmt17h551d6ba216f98873E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @575, i64 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN68_$LT$jiff..error..civil..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h98de5ccbccf1df12E"(i8 noundef range(i8 0, 10) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error5civil101_$LT$impl$u20$core..convert..From$LT$jiff..error..civil..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h086afd2f63d46e2eE"(i8 noundef %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN68_$LT$jiff..error..fmt..util..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h32bfa56c4b6d3aafE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = load i8, ptr %0, align 1, !range !44, !noundef !11 ; 5 uses
  %i.ad = icmp ne i8 %i.ac, 20
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = add nsw i8 %i.ac, -10
  %.inv = icmp samesign ult i8 %i.ac, 10
  %narrow = select i1 %.inv, i8 10, i8 %i.ae
  switch i8 %narrow, label %bb.b [
    i8 0, label %switch.lookup
    i8 1, label %bb.c
    i8 2, label %switch.lookup168
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %switch.lookup174
    i8 7, label %switch.lookup180
    i8 8, label %bb.g
    i8 9, label %switch.lookup186
    i8 10, label %switch.lookup192
    i8 11, label %switch.lookup198
    i8 12, label %switch.lookup204
    i8 13, label %switch.lookup210
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !range !30, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ai = zext nneg i8 %i.ag to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.704", i64 %i.ai
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.aj = zext nneg i8 %i.ag to i64
  %switch.gep166 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.705", i64 %i.aj
  %switch.load167 = load i8, ptr %switch.gep166, align 1
  %switch.ext = zext i8 %switch.load167 to i64
  store ptr %switch.load, ptr %i.aa, align 8
  store i64 %switch.ext, ptr %i.ah, align 8
  store ptr %i.aa, ptr %i.ab, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val55 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val56 = load ptr, ptr %i.ak, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12291
  store ptr @925, ptr %i.i, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.ab, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.al = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val55, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val56, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i), !noalias !12291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.am = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @926, i64 noundef 29)
  br label %bb.h

switch.lookup168:                                 ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !range !30, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aq = zext nneg i8 %i.ao to i64
  %switch.gep169 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.aq
  %switch.load170 = load ptr, ptr %switch.gep169, align 8
  %i.ar = zext nneg i8 %i.ao to i64
  %switch.gep171 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.ar
  %switch.load172 = load i8, ptr %switch.gep171, align 1
  %switch.ext173 = zext i8 %switch.load172 to i64
  store ptr %switch.load170, ptr %i.y, align 8
  store i64 %switch.ext173, ptr %i.ap, align 8
  store ptr %i.y, ptr %i.z, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.47.0..sroa_idx, align 8
  %.val53 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val54 = load ptr, ptr %i.as, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12292
  store ptr @929, ptr %i.h, align 8
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 2, ptr %.sroa.598.0..sroa_idx, align 8
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.z, ptr %.sroa.799.0..sroa_idx, align 8
  %.sroa.8100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %.sroa.8100.0..sroa_idx, align 8
  %.sroa.10101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.10101.0..sroa_idx, align 8
  %i.at = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val53, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val54, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h), !noalias !12292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.au = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @930, i64 noundef 86)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.av = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @931, i64 noundef 56)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.aw = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @932, i64 noundef 80)
  br label %bb.h

switch.lookup174:                                 ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !range !30, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ba = zext nneg i8 %i.ay to i64
  %switch.gep175 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.704", i64 %i.ba
  %switch.load176 = load ptr, ptr %switch.gep175, align 8
  %i.bb = zext nneg i8 %i.ay to i64
  %switch.gep177 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.705", i64 %i.bb
  %switch.load178 = load i8, ptr %switch.gep177, align 1
  %switch.ext179 = zext i8 %switch.load178 to i64
  store ptr %switch.load176, ptr %i.w, align 8
  store i64 %switch.ext179, ptr %i.az, align 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.411.0..sroa_idx, align 8
  %.val51 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val52 = load ptr, ptr %i.bc, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12293
  store ptr @935, ptr %i.g, align 8
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %.sroa.5104.0..sroa_idx, align 8
  %.sroa.7105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.x, ptr %.sroa.7105.0..sroa_idx, align 8
  %.sroa.8106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.8106.0..sroa_idx, align 8
  %.sroa.10107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10107.0..sroa_idx, align 8
  %i.bd = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val51, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val52, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !12293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.h

switch.lookup180:                                 ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !range !30, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bh = zext nneg i8 %i.bf to i64
  %switch.gep181 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.704", i64 %i.bh
  %switch.load182 = load ptr, ptr %switch.gep181, align 8
  %i.bi = zext nneg i8 %i.bf to i64
  %switch.gep183 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.705", i64 %i.bi
  %switch.load184 = load i8, ptr %switch.gep183, align 1
  %switch.ext185 = zext i8 %switch.load184 to i64
  store ptr %switch.load182, ptr %i.u, align 8
  store i64 %switch.ext185, ptr %i.bg, align 8
  store ptr %i.u, ptr %i.v, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.415.0..sroa_idx, align 8
  %.val49 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val50 = load ptr, ptr %i.bj, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12294
  store ptr @938, ptr %i.f, align 8
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.5110.0..sroa_idx, align 8
  %.sroa.7111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.v, ptr %.sroa.7111.0..sroa_idx, align 8
  %.sroa.8112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.8112.0..sroa_idx, align 8
  %.sroa.10113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.10113.0..sroa_idx, align 8
  %i.bk = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val50, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !12294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.bl = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @939, i64 noundef 66)
  br label %bb.h

switch.lookup186:                                 ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !range !30, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bp = zext nneg i8 %i.bn to i64
  %switch.gep187 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.bp
  %switch.load188 = load ptr, ptr %switch.gep187, align 8
  %i.bq = zext nneg i8 %i.bn to i64
  %switch.gep189 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.bq
  %switch.load190 = load i8, ptr %switch.gep189, align 1
  %switch.ext191 = zext i8 %switch.load190 to i64
  store ptr %switch.load188, ptr %i.s, align 8
  store i64 %switch.ext191, ptr %i.bo, align 8
  store ptr %i.s, ptr %i.t, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.419.0..sroa_idx, align 8
  %.val47 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val48 = load ptr, ptr %i.br, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12295
  store ptr @942, ptr %i.e, align 8
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.5116.0..sroa_idx, align 8
  %.sroa.7117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.t, ptr %.sroa.7117.0..sroa_idx, align 8
  %.sroa.8118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.8118.0..sroa_idx, align 8
  %.sroa.10119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.10119.0..sroa_idx, align 8
  %i.bs = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val47, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val48, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !12295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.h

switch.lookup192:                                 ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !range !30, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bw = zext nneg i8 %i.ac to i64
  %switch.gep193 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.bw
  %switch.load194 = load ptr, ptr %switch.gep193, align 8
  %i.bx = zext nneg i8 %i.ac to i64
  %switch.gep195 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.bx
  %switch.load196 = load i8, ptr %switch.gep195, align 1
  %switch.ext197 = zext i8 %switch.load196 to i64
  store ptr %switch.load194, ptr %i.r, align 8
  store i64 %switch.ext197, ptr %i.bv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.by = zext nneg i8 %i.bu to i64
  %switch.gep217 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.by
  %switch.load218 = load ptr, ptr %switch.gep217, align 8
  %i.bz = zext nneg i8 %i.bu to i64
  %switch.gep219 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.bz
  %switch.load220 = load i8, ptr %switch.gep219, align 1
  %switch.ext221 = zext i8 %switch.load220 to i64
  store ptr %switch.load218, ptr %i.q, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %switch.ext221, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.423.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.cb, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.427.0..sroa_idx, align 8
  %.val45 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val46 = load ptr, ptr %i.cc, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12296
  store ptr @946, ptr %i.d, align 8
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 3, ptr %.sroa.5122.0..sroa_idx, align 8
  %.sroa.7123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.p, ptr %.sroa.7123.0..sroa_idx, align 8
  %.sroa.8124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 2, ptr %.sroa.8124.0..sroa_idx, align 8
  %.sroa.10125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.10125.0..sroa_idx, align 8
  %i.cd = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val45, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val46, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !12296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.h

switch.lookup198:                                 ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !range !30, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ch = zext nneg i8 %i.cf to i64
  %switch.gep199 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.ch
  %switch.load200 = load ptr, ptr %switch.gep199, align 8
  %i.ci = zext nneg i8 %i.cf to i64
  %switch.gep201 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.ci
  %switch.load202 = load i8, ptr %switch.gep201, align 1
  %switch.ext203 = zext i8 %switch.load202 to i64
  store ptr %switch.load200, ptr %i.n, align 8
  store i64 %switch.ext203, ptr %i.cg, align 8
  store ptr %i.n, ptr %i.o, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.431.0..sroa_idx, align 8
  %.val43 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val44 = load ptr, ptr %i.cj, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12297
  store ptr @948, ptr %i.c, align 8
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.5128.0..sroa_idx, align 8
  %.sroa.7129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.o, ptr %.sroa.7129.0..sroa_idx, align 8
  %.sroa.8130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.8130.0..sroa_idx, align 8
  %.sroa.10131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10131.0..sroa_idx, align 8
  %i.ck = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val43, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val44, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !12297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.h

switch.lookup204:                                 ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !range !30, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.co = zext nneg i8 %i.cm to i64
  %switch.gep205 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.co
  %switch.load206 = load ptr, ptr %switch.gep205, align 8
  %i.cp = zext nneg i8 %i.cm to i64
  %switch.gep207 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.cp
  %switch.load208 = load i8, ptr %switch.gep207, align 1
  %switch.ext209 = zext i8 %switch.load208 to i64
  store ptr %switch.load206, ptr %i.l, align 8
  store i64 %switch.ext209, ptr %i.cn, align 8
  store ptr %i.l, ptr %i.m, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.435.0..sroa_idx, align 8
  %.val41 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val42 = load ptr, ptr %i.cq, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12298
  store ptr @950, ptr %i.b, align 8
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.5134.0..sroa_idx, align 8
  %.sroa.7135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.m, ptr %.sroa.7135.0..sroa_idx, align 8
  %.sroa.8136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.8136.0..sroa_idx, align 8
  %.sroa.10137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.10137.0..sroa_idx, align 8
  %i.cr = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val42, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !12298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.h

switch.lookup210:                                 ; preds = %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !range !30, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cv = zext nneg i8 %i.ct to i64
  %switch.gep211 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.704", i64 %i.cv
  %switch.load212 = load ptr, ptr %switch.gep211, align 8
  %i.cw = zext nneg i8 %i.ct to i64
  %switch.gep213 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.705", i64 %i.cw
  %switch.load214 = load i8, ptr %switch.gep213, align 1
  %switch.ext215 = zext i8 %switch.load214 to i64
  store ptr %switch.load212, ptr %i.j, align 8
  store i64 %switch.ext215, ptr %i.cu, align 8
  store ptr %i.j, ptr %i.k, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.439.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val40 = load ptr, ptr %i.cx, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12299
  store ptr @953, ptr %i.a, align 8
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5140.0..sroa_idx, align 8
  %.sroa.7141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %.sroa.7141.0..sroa_idx, align 8
  %.sroa.8142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8142.0..sroa_idx, align 8
  %.sroa.10143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10143.0..sroa_idx, align 8
  %i.cy = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val40, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup210, %switch.lookup204, %switch.lookup198, %switch.lookup192, %switch.lookup186, %switch.lookup180, %switch.lookup174, %switch.lookup168, %switch.lookup, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.al, %switch.lookup ], [ %i.am, %bb.c ], [ %i.at, %switch.lookup168 ], [ %i.au, %bb.d ], [ %i.av, %bb.e ], [ %i.aw, %bb.f ], [ %i.bd, %switch.lookup174 ], [ %i.bk, %switch.lookup180 ], [ %i.bl, %bb.g ], [ %i.bs, %switch.lookup186 ], [ %i.cd, %switch.lookup192 ], [ %i.ck, %switch.lookup198 ], [ %i.cr, %switch.lookup204 ], [ %i.cy, %switch.lookup210 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN68_$LT$jiff..error..timestamp..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9c9b31de2d875a98E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !21, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @955, i64 noundef 32)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @954, i64 noundef 36)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN68_$LT$jiff..error..tz..posix..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9cbbe6d7b8d58efaE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !21, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @957, i64 noundef 30)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @956, i64 noundef 63)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN68_$LT$jiff..error..zoned..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h170e3ab613c4c051E"(i8 noundef range(i8 0, 18) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error5zoned101_$LT$impl$u20$core..convert..From$LT$jiff..error..zoned..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17hbf6e6c69979d0e71E"(i8 noundef %0)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$jiff..fmt..StdFmtWrite$LT$W$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h26e9e5ef0fefb923E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12309)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !12309, !noalias !12310, !nonnull !11, !align !13, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !12309, !noalias !12310, !nonnull !11, !align !12, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !11, !noalias !12311, !nonnull !11
  %i.g = tail call { i64, ptr } %i.f(ptr noundef nonnull align 1 %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !12309, !inline_history !12312 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = trunc nuw i64 %i.h to i1                 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, ptr } %i.g, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !12313
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a), !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"
  ret i1 %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @"_ZN68_$LT$jiff..fmt..StdFmtWrite$LT$W$GT$$u20$as$u20$jiff..fmt..Write$GT$9write_str17hf548db9dad3667d0E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  %i.b = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 3, ptr %i.a, align 8
  %i.c = call noundef ptr @"_ZN4jiff5error3fmt99_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h6f96ac308df63112E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.c, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.d = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN68_$LT$jiff..shared..tzif..CountKind$u20$as$u20$core..fmt..Display$GT$3fmt17h5949c181efb458cbE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !29, !noundef !11
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @961, i64 noundef 13)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @962, i64 noundef 14)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @963, i64 noundef 11)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @964, i64 noundef 11)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @965, i64 noundef 11)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @966, i64 noundef 11)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN68_$LT$jiff..shared..tzif..TzifError$u20$as$u20$core..fmt..Display$GT$3fmt17hbf41e9acb7913402E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !range !32, !noundef !11 ; 3 uses
  %i.b = icmp ne i8 %i.a, 8
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i8 %i.a, -2
  %i.d = icmp samesign ugt i8 %i.a, 1
  %narrow = select i1 %i.d, i8 %i.c, i8 6
  switch i8 %narrow, label %bb.b [
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
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @985, i64 noundef 21)
  br i1 %i.e, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @986, i64 noundef 21)
  br i1 %i.f, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.u

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @987, i64 noundef 28)
  br i1 %i.g, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @988, i64 noundef 28)
  br i1 %i.h, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.w

bb.g:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @989, i64 noundef 78)
  br i1 %i.i, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.x

bb.h:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @990, i64 noundef 28)
  br i1 %i.j, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.ab

bb.i:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @991, i64 noundef 34)
  br i1 %i.k, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.ac

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12328)
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1459, i64 noundef 20), !noalias !12328
  br i1 %i.l, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %switch.lookup

switch.lookup:                                    ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1, !range !26, !alias.scope !12328, !noalias !12329, !noundef !11 ; 2 uses
  %i.o = zext nneg i8 %i.n to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E", i64 %i.o
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.p = zext nneg i8 %i.n to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E.713", i64 %i.p
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.q = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext), !noalias !12328
  br i1 %i.q, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.k

default.unreachable:                              ; preds = %bb.x
  unreachable

bb.k:                                             ; preds = %switch.lookup
  %i.r = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1468, i64 noundef 42), !noalias !12328
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.l:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @992, i64 noundef 39)
  br i1 %i.s, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.ad

bb.m:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @993, i64 noundef 44)
  br i1 %i.t, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.ae

bb.n:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12330)
  %i.v = load i8, ptr %i.u, align 1, !range !36, !alias.scope !12330, !noalias !12331, !noundef !11 ; 2 uses
  %i.w = icmp samesign ugt i8 %i.v, 12
  %i.x = zext nneg i8 %i.v to i64
  %i.y = add nsw i64 %i.x, -12
  %i.z = select i1 %i.w, i64 %i.y, i64 0
  switch i64 %i.z, label %bb.o [
    i64 0, label %bb.p
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 3, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aa = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1238, i64 noundef 39), !noalias !12330
  br i1 %i.aa, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.ab = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1239, i64 noundef 96), !noalias !12330
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.r:                                             ; preds = %bb.n
  %i.ac = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1240, i64 noundef 93), !noalias !12330
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.s:                                             ; preds = %bb.n
  %i.ad = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1241, i64 noundef 96), !noalias !12330
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.t:                                             ; preds = %bb.p
  %i.ae = tail call noundef zeroext i1 @"_ZN78_$LT$jiff..shared..posix..PosixTimeZoneError$u20$as$u20$core..fmt..Display$GT$3fmt17ha68b1b52aecb0a1bE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(4) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit": ; preds = %bb.ah, %bb.ag, %switch.lookup4, %bb.af, %bb.aa, %bb.z, %bb.y, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.k, %switch.lookup, %bb.j, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.ad, %bb.ac, %bb.ab, %bb.w, %bb.v, %bb.u
  %.sroa.0.0.shrunk = phi i1 [ %i.ap, %bb.aa ], [ %i.r, %bb.k ], [ true, %bb.c ], [ %i.ag, %bb.u ], [ true, %bb.d ], [ %i.ai, %bb.v ], [ true, %bb.e ], [ %i.ak, %bb.w ], [ true, %bb.f ], [ true, %bb.p ], [ true, %bb.g ], [ %i.ar, %bb.ab ], [ true, %bb.h ], [ %i.as, %bb.ac ], [ true, %bb.m ], [ true, %bb.i ], [ %i.au, %bb.ad ], [ true, %bb.l ], [ true, %switch.lookup ], [ true, %bb.j ], [ %i.ad, %bb.s ], [ %i.ae, %bb.t ], [ %i.ab, %bb.q ], [ %i.ac, %bb.r ], [ %i.an, %bb.y ], [ %i.ao, %bb.z ], [ %i.bc, %bb.ah ], [ true, %switch.lookup4 ], [ true, %bb.af ], [ %i.bb, %bb.ag ]
  ret i1 %.sroa.0.0.shrunk

bb.u:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ag = tail call noundef zeroext i1 @"_ZN70_$LT$jiff..shared..tzif..HeaderError$u20$as$u20$core..fmt..Display$GT$3fmt17h1b3f7ed974816849E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.v:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ai = tail call noundef zeroext i1 @"_ZN70_$LT$jiff..shared..tzif..HeaderError$u20$as$u20$core..fmt..Display$GT$3fmt17h1b3f7ed974816849E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.w:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ak = tail call noundef zeroext i1 @"_ZN70_$LT$jiff..shared..tzif..HeaderError$u20$as$u20$core..fmt..Display$GT$3fmt17h1b3f7ed974816849E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.x:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12332)
  %i.am = load i8, ptr %i.al, align 1, !range !22, !alias.scope !12332, !noalias !12333, !noundef !11
  switch i8 %i.am, label %default.unreachable [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.an = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2019, i64 noundef 145), !noalias !12332
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.z:                                             ; preds = %bb.x
  %i.ao = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2020, i64 noundef 127), !noalias !12332
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.aa:                                            ; preds = %bb.x
  %i.ap = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2021, i64 noundef 125), !noalias !12332
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.ab:                                            ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ar = tail call noundef zeroext i1 @"_ZN73_$LT$jiff..shared..tzif..IndicatorError$u20$as$u20$core..fmt..Display$GT$3fmt17hea85e46ca27e5ce6E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.ac:                                            ; preds = %bb.i
  %i.as = tail call noundef zeroext i1 @"_ZN77_$LT$jiff..shared..tzif..LocalTimeTypeError$u20$as$u20$core..fmt..Display$GT$3fmt17h5af3464e611c26f6E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.ad:                                            ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.au = tail call noundef zeroext i1 @"_ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.ae:                                            ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12334)
  %i.aw = load i8, ptr %i.av, align 1, !range !28, !alias.scope !12334, !noalias !12335, !noundef !11 ; 3 uses
  %.not.i = icmp eq i8 %i.aw, 8
  br i1 %.not.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ax = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1459, i64 noundef 20), !noalias !12336
  br i1 %i.ax, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %switch.lookup4

switch.lookup4:                                   ; preds = %bb.af
  %i.ay = zext nneg i8 %i.aw to i64
  %switch.gep5 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E", i64 %i.ay
  %switch.load6 = load i8, ptr %switch.gep5, align 1
  %switch.ext7 = zext i8 %switch.load6 to i64
  %i.az = zext nneg i8 %i.aw to i64
  %switch.gep8 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E.713", i64 %i.az
  %switch.load9 = load ptr, ptr %switch.gep8, align 8
  %i.ba = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load9, i64 noundef %switch.ext7), !noalias !12336
  br i1 %i.ba, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.ag

bb.ag:                                            ; preds = %switch.lookup4
  %i.bb = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1468, i64 noundef 42), !noalias !12336
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.ah:                                            ; preds = %bb.ae
  %i.bc = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1967, i64 noundef 81), !noalias !12334
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN68_$LT$jiff..util..b..Increment32$u20$as$u20$jiff..util..b..Bounds$GT$5error17h280688b271ca08c1E"() unnamed_addr #14 {
bb.a:
  ret i8 10
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN68_$LT$jiff..util..b..Microsecond$u20$as$u20$jiff..util..b..Bounds$GT$5error17hf0c0b3240287b399E"() unnamed_addr #14 {
bb.a:
  ret i8 12
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN68_$LT$jiff..util..b..Millisecond$u20$as$u20$jiff..util..b..Bounds$GT$5error17h011fe4eb2b669700E"() unnamed_addr #14 {
bb.a:
  ret i8 13
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN68_$LT$jiff..util..b..OffsetHours$u20$as$u20$jiff..util..b..Bounds$GT$5error17h193694cd69050f1dE"() unnamed_addr #14 {
bb.a:
  ret i8 18
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN68_$LT$jiff..util..b..SpanMinutes$u20$as$u20$jiff..util..b..Bounds$GT$5error17hc7a6be8d65dac489E"() unnamed_addr #14 {
bb.a:
  ret i8 29
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN68_$LT$jiff..util..b..SpanSeconds$u20$as$u20$jiff..util..b..Bounds$GT$5error17h1e2d5d3a18769d8aE"() unnamed_addr #14 {
bb.a:
  ret i8 30
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN68_$LT$jiff..util..b..UnixSeconds$u20$as$u20$jiff..util..b..Bounds$GT$5error17h76c66b5090ca693fE"() unnamed_addr #14 {
bb.a:
  ret i8 40
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN68_$LT$jiff..util..borrow..StringCow$u20$as$u20$core..fmt..Display$GT$3fmt17hb29dee012332078fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !11, !noundef !11
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !11
  %i.a = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.5.0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @994, i64 noundef 45)
  br i1 %i.a, label %bb.c, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !range !22, !noundef !11 ; 2 uses
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE", i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep3 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN69_$LT$jiff..error..CrateFeatureError$u20$as$u20$core..fmt..Display$GT$3fmt17h07025367d06b83cfE.681", i64 %i.d
  %switch.load4 = load ptr, ptr %switch.gep3, align 8
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load4, i64 noundef %switch.ext, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @998, i64 noundef 16)
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ true, %bb.a ], [ true, %switch.lookup ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN69_$LT$jiff..error..tz..db..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17hee6074a822284a2eE"(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error2tz2db102_$LT$impl$u20$core..convert..From$LT$jiff..error..tz..db..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h81fa0cf09363c700E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN69_$LT$jiff..error..tz..offset..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h93b21f8cdfc01738E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 11 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [4 x i8], align 4                 ; 4 uses
  %i.u = load i32, ptr %0, align 8, !range !46, !noundef !11
  switch i32 %i.u, label %default.unreachable88 [
    i32 0, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit59
    i32 4, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit64
    i32 5, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit69
    i32 6, label %bb.d
  ]

default.unreachable88:                            ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !noundef !11
  store i32 %i.w, ptr %i.t, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.t, ptr %i.s, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN63_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Display$GT$3fmt17ha66cb654ecf6bf30E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val53 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val54 = load ptr, ptr %i.x, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12345
  store ptr @1097, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.s, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.y = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val53, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val54, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !12345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1098, i64 noundef 53)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1099, i64 noundef 42)
  br label %bb.e

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit59: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !11
  store i32 %i.ac, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !noundef !11
  store i32 %i.ae, ptr %i.q, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !noundef !11
  store i32 %i.ag, ptr %i.p, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.ah, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.r, ptr %i.n, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN63_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Display$GT$3fmt17ha66cb654ecf6bf30E", ptr %.sroa.47.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.ai, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @"_ZN73_$LT$jiff..tz..timezone..DiagnosticName$u20$as$u20$core..fmt..Display$GT$3fmt17h7549617a6beaaee3E", ptr %.sroa.411.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.q, ptr %i.aj, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @"_ZN63_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Display$GT$3fmt17ha66cb654ecf6bf30E", ptr %.sroa.415.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.p, ptr %i.ak, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr @"_ZN63_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Display$GT$3fmt17ha66cb654ecf6bf30E", ptr %.sroa.419.0..sroa_idx, align 8
  %.val51 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val52 = load ptr, ptr %i.al, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12346
  store ptr @1105, ptr %i.c, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 5, ptr %.sroa.571.0..sroa_idx, align 8
  %.sroa.772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.n, ptr %.sroa.772.0..sroa_idx, align 8
  %.sroa.873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 4, ptr %.sroa.873.0..sroa_idx, align 8
  %.sroa.1074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.1074.0..sroa_idx, align 8
  %i.am = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val51, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val52, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !12346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.e

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit64: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !noundef !11
  store i32 %i.ao, ptr %i.m, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !noundef !11
  store i32 %i.aq, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !noundef !11
  store i32 %i.as, ptr %i.k, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.at, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.m, ptr %i.i, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN63_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Display$GT$3fmt17ha66cb654ecf6bf30E", ptr %.sroa.423.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.au, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @"_ZN73_$LT$jiff..tz..timezone..DiagnosticName$u20$as$u20$core..fmt..Display$GT$3fmt17h7549617a6beaaee3E", ptr %.sroa.427.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.l, ptr %i.av, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @"_ZN63_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Display$GT$3fmt17ha66cb654ecf6bf30E", ptr %.sroa.431.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.k, ptr %i.aw, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr @"_ZN63_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Display$GT$3fmt17ha66cb654ecf6bf30E", ptr %.sroa.435.0..sroa_idx, align 8
  %.val49 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val50 = load ptr, ptr %i.ax, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12347
  store ptr @1108, ptr %i.b, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 5, ptr %.sroa.577.0..sroa_idx, align 8
  %.sroa.778.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %.sroa.778.0..sroa_idx, align 8
  %.sroa.879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 4, ptr %.sroa.879.0..sroa_idx, align 8
  %.sroa.1080.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1080.0..sroa_idx, align 8
  %i.ay = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val50, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !12347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.e
end_hunk_13
begin_hunk_14_@"_ZN71_$LT$jiff..fmt..strtime..BrokenDownTime$u20$as$u20$core..fmt..Debug$GT$3fmt17hb23c266b15502fe6E":bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.h, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @1427, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.i, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @1427, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.j, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @1427, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.k, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @1427, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.l, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @1427, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.m, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr @1427, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.n, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr @1428, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr %i.o, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr @1429, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr %i.p, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store ptr @1430, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store ptr %i.q, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr @1431, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store ptr %0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @1432, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr %i.r, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store ptr @1433, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store ptr %i.a, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store ptr @1434, ptr %i.bb, align 8
  %i.bc = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_fields_finish17h0cfcbb638c0202c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1446, i64 noundef 14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1445, i64 noundef 18, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.bc
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$jiff..shared..posix..MinuteError$u20$as$u20$core..fmt..Display$GT$3fmt17h9b9bbbdf93dde691E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !18, !noundef !11 ; 2 uses
  %i.b = icmp eq i8 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1448, i64 noundef 59)
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1447, i64 noundef 23)
  br i1 %i.d, label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1422, i64 noundef 31), !noalias !12489
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.f:                                             ; preds = %bb.d
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1449, i64 noundef 61), !noalias !12489
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.g:                                             ; preds = %bb.d
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1450, i64 noundef 31), !noalias !12489
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.h:                                             ; preds = %bb.d
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1451, i64 noundef 57), !noalias !12489
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit": ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.c, %bb.b ], [ true, %bb.c ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !27, !noundef !11
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1422, i64 noundef 31)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1449, i64 noundef 61)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1450, i64 noundef 31)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1451, i64 noundef 57)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$jiff..shared..posix..SecondError$u20$as$u20$core..fmt..Display$GT$3fmt17hed50535b504127e7E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !18, !noundef !11 ; 2 uses
  %i.b = icmp eq i8 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1453, i64 noundef 59)
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1452, i64 noundef 23)
  br i1 %i.d, label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1422, i64 noundef 31), !noalias !12492
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.f:                                             ; preds = %bb.d
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1449, i64 noundef 61), !noalias !12492
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.g:                                             ; preds = %bb.d
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1450, i64 noundef 31), !noalias !12492
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.h:                                             ; preds = %bb.d
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1451, i64 noundef 57), !noalias !12492
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit": ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.c, %bb.b ], [ true, %bb.c ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1459, i64 noundef 20)
  br i1 %i.a, label %bb.c, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !range !26, !noundef !11 ; 2 uses
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E", i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep3 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E.713", i64 %i.d
  %switch.load4 = load ptr, ptr %switch.gep3, align 8
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load4, i64 noundef %switch.ext)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1468, i64 noundef 42)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup, %bb.a
  %.sroa.0.0 = phi i1 [ true, %switch.lookup ], [ true, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN71_$LT$jiff..tz..timezone..repr..Repr$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0d3a26b8553c16faE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !11  ; 15 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 7                          ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !noundef !11  ; 17 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = and i64 %i.e, 7
  %.not = icmp eq i64 %i.c, %i.f
  br i1 %.not, label %bb.b, label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"

bb.b:                                             ; preds = %bb.a
  switch i64 %i.c, label %bb.c [
    i64 1, label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"
    i64 2, label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"
    i64 3, label %bb.d
    i64 0, label %bb.e
    i64 4, label %bb.j
    i64 5, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %.unshifted7 = xor i64 %i.e, %i.b
  %i.g = and i64 %.unshifted7, 4294967280
  %i.h = icmp eq i64 %i.g, 0
  br label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12509)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !12508, !noalias !12509, !align !13, !noundef !11 ; 2 uses
  %.not.not.i = icmp eq ptr %i.j, null
  br i1 %.not.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.val21.i = load i64, ptr %i.k, align 8, !alias.scope !12508, !noalias !12509, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !12509, !noalias !12508, !align !13, !noundef !11 ; 2 uses
  %.not17.i = icmp eq ptr %i.m, null
  br i1 %.not17.i, label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit", label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !12509, !noalias !12508, !align !13, !noundef !11
  %.not16.i = icmp eq ptr %i.o, null
  br i1 %.not16.i, label %.critedge.i, label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.sroa.09.0.val20.i = load i64, ptr %i.p, align 8, !alias.scope !12509, !noalias !12508, !noundef !11
  %.not19.i = icmp eq i64 %.val21.i, %.sroa.09.0.val20.i
  br i1 %.not19.i, label %bb.i, label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"

bb.i:                                             ; preds = %bb.h
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.j, ptr nonnull %i.m, i64 %.val21.i), !noalias !12510
  %i.q = icmp eq i32 %bcmp.i, 0
  br i1 %i.q, label %.critedge.i, label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"

.critedge.i:                                      ; preds = %bb.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.s = load i32, ptr %i.r, align 8, !alias.scope !12508, !noalias !12509, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.u = load i32, ptr %i.t, align 8, !alias.scope !12509, !noalias !12508, !noundef !11
  %i.v = icmp eq i32 %i.s, %i.u
  br label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12512)
  %i.w = getelementptr i8, ptr %i.a, i64 20
  %i.x = load i64, ptr %i.w, align 8, !range !15, !alias.scope !12511, !noalias !12512, !noundef !11
  %.not.i = icmp eq i64 %i.x, -9223372036854775808
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %i.a, i64 28
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !12511, !noalias !12512, !nonnull !11, !noundef !11
  %i.z = getelementptr i8, ptr %i.a, i64 36
  %.val21.i8 = load i64, ptr %i.z, align 8, !alias.scope !12511, !noalias !12512, !noundef !11 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.d, i64 20
  %i.ab = load i64, ptr %i.aa, align 8, !range !15, !alias.scope !12512, !noalias !12511, !noundef !11
  %.not17.i9 = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %.not17.i9, label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit", label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %i.d, i64 20
  %i.ad = load i64, ptr %i.ac, align 8, !range !15, !alias.scope !12512, !noalias !12511, !noundef !11
  %.not16.i15 = icmp eq i64 %i.ad, -9223372036854775808
  br i1 %.not16.i15, label %.critedge.i14, label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"

bb.m:                                             ; preds = %bb.k
  %i.ae = getelementptr i8, ptr %i.d, i64 36
  %.sroa.09.0.val20.i10 = load i64, ptr %i.ae, align 8, !alias.scope !12512, !noalias !12511, !noundef !11
  %.not19.i11 = icmp eq i64 %.val21.i8, %.sroa.09.0.val20.i10
  br i1 %.not19.i11, label %bb.n, label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr i8, ptr %i.d, i64 28
  %.sroa.09.0.val.i = load ptr, ptr %i.af, align 8, !alias.scope !12512, !noalias !12511, !nonnull !11, !noundef !11
  %bcmp.i13 = tail call i32 @bcmp(ptr nonnull %.val.i, ptr nonnull %.sroa.09.0.val.i, i64 %.val21.i8), !noalias !12513
  %i.ag = icmp eq i32 %bcmp.i13, 0
  br i1 %i.ag, label %.critedge.i14, label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"

.critedge.i14:                                    ; preds = %bb.n, %bb.l
  %i.ah = getelementptr i8, ptr %i.a, i64 132
  %i.ai = load i32, ptr %i.ah, align 8, !alias.scope !12511, !noalias !12512, !noundef !11
  %i.aj = getelementptr i8, ptr %i.d, i64 132
  %i.ak = load i32, ptr %i.aj, align 8, !alias.scope !12512, !noalias !12511, !noundef !11
  %i.al = icmp eq i32 %i.ai, %i.ak
  br label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"

bb.o:                                             ; preds = %bb.b
  %i.am = getelementptr i8, ptr %i.a, i64 -5      ; 2 uses
  %i.an = getelementptr i8, ptr %i.d, i64 -5      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12517)
  %i.ao = getelementptr i8, ptr %i.a, i64 81
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !12518, !noalias !12519, !noundef !11
  %i.aq = getelementptr i8, ptr %i.d, i64 81
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !12519, !noalias !12518, !noundef !11
  %i.as = icmp eq i8 %i.ap, %i.ar
  br i1 %i.as, label %"_ZN89_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h50b1dcf23867d62dE.exit.i", label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"

"_ZN89_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h50b1dcf23867d62dE.exit.i": ; preds = %bb.o
  %i.at = getelementptr i8, ptr %i.d, i64 51      ; 2 uses
  %i.au = getelementptr i8, ptr %i.a, i64 51      ; 2 uses
  %i.av = load i128, ptr %i.au, align 1
  %i.aw = load i128, ptr %i.at, align 1
  %i.ax = xor i128 %i.av, %i.aw
  %i.ay = getelementptr i8, ptr %i.au, i64 14
  %i.az = getelementptr i8, ptr %i.at, i64 14
  %i.ba = load i128, ptr %i.ay, align 1
  %i.bb = load i128, ptr %i.az, align 1
  %i.bc = xor i128 %i.ba, %i.bb
  %i.bd = or i128 %i.ax, %i.bc
  %i.be = icmp ne i128 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"

bb.p:                                             ; preds = %"_ZN89_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h50b1dcf23867d62dE.exit.i"
  %i.bh = getelementptr i8, ptr %i.a, i64 47
  %i.bi = load i32, ptr %i.bh, align 4, !alias.scope !12514, !noalias !12515, !noundef !11
  %i.bj = getelementptr i8, ptr %i.d, i64 47
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !12515, !noalias !12514, !noundef !11
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.q, label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"

bb.q:                                             ; preds = %bb.p
  %i.bm = load i8, ptr %i.am, align 4, !range !27, !alias.scope !12514, !noalias !12515, !noundef !11
  %.not.i16 = icmp eq i8 %i.bm, 3                 ; 2 uses
  %i.bn = load i8, ptr %i.an, align 4, !range !27, !alias.scope !12515, !noalias !12514, !noundef !11
  %i.bo = icmp eq i8 %i.bn, 3                     ; 2 uses
  %brmerge.i = or i1 %.not.i16, %i.bo
  %.mux.i = and i1 %.not.i16, %i.bo
  br i1 %brmerge.i, label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12521)
  %i.bp = getelementptr i8, ptr %i.a, i64 45
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !12522, !noalias !12523, !noundef !11
  %i.br = getelementptr i8, ptr %i.d, i64 45
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !12523, !noalias !12522, !noundef !11
  %i.bt = icmp eq i8 %i.bq, %i.bs
  br i1 %i.bt, label %"_ZN89_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h50b1dcf23867d62dE.exit4.i", label %"_ZN126_$LT$jiff..tz..tzif..Tzif$LT$STR$C$ABBREV$C$TYPES$C$TIMESTAMPS$C$STARTS$C$ENDS$C$INFOS$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hcc24d117cabcb98aE.exit"

"_ZN89_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h50b1dcf23867d62dE.exit4.i": ; preds = %bb.r
  %i.bu = getelementptr i8, ptr %i.d, i64 15      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.a, i64 15      ; 2 uses
  %i.bw = load i128, ptr %i.bv, align 1
  %i.bx = load i128, ptr %i.bu, align 1
  %i.by = xor i128 %i.bw, %i.bx
  %i.bz = getelementptr i8, ptr %i.bv, i64 14
  %i.ca = getelementptr i8, ptr %i.bu, i64 14
  %i.cb = load i128, ptr %i.bz, align 1
  %i.cc = load i128, ptr %i.ca, align 1
  %i.cd = xor i128 %i.cb, %i.cc
  %i.ce = or i128 %i.by, %i.cd
end_hunk_14
begin_hunk_15_@"_ZN72_$LT$jiff..util..b..SpecialBoundsError$u20$as$u20$core..fmt..Display$GT$3fmt17h1321e7223a7e301fE":bb.a

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @1591, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 26, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i128 -377705023201000000000, ptr %i.h, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i128 253402207200000000000, ptr %i.g, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.411.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %i.l, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..Display$u20$for$u20$i128$GT$3fmt17h5198bb067eb04a3bE", ptr %.sroa.423.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.g, ptr %i.m, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..Display$u20$for$u20$i128$GT$3fmt17h5198bb067eb04a3bE", ptr %.sroa.427.0..sroa_idx, align 8
  %.val31 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val32 = load ptr, ptr %i.n, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12551
  store ptr @1595, ptr %i.c, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 3, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %.sroa.751.0..sroa_idx, align 8
  %.sroa.852.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 3, ptr %.sroa.852.0..sroa_idx, align 8
  %.sroa.1053.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.1053.0..sroa_idx, align 8
  %i.o = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val31, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !12551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit37: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @1596, ptr %i.f, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h2fb6b2129e0605faE", ptr %.sroa.47.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @1597, ptr %i.p, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h2fb6b2129e0605faE", ptr %.sroa.415.0..sroa_idx, align 8
  %.val29 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12552
  store ptr @1599, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.r = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val30, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !12552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit42: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @1600, ptr %i.e, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.43.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @1601, ptr %i.s, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.419.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.t, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12553
  store ptr @1599, ptr %i.a, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.544.0..sroa_idx, align 8
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.745.0..sroa_idx, align 8
  %.sroa.846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.846.0..sroa_idx, align 8
  %.sroa.1047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1047.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val28, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1602, i64 noundef 69)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit42, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit37, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.o, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.r, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit37 ], [ %i.u, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit42 ], [ %i.v, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN72_$LT$jiff..util..b..ZonedDaySeconds$u20$as$u20$jiff..util..b..Bounds$GT$5error17he99fe8dc686dc1b5E"() unnamed_addr #14 {
bb.a:
  ret i8 51
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN73_$LT$$RF$mut$u20$dyn$u20$jiff..fmt..Write$u20$as$u20$jiff..fmt..Write$GT$9write_str17hef3b720a8b0b06a1E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !align !12, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  ret { i64, ptr } %i.f
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN73_$LT$jiff..error..tz..offset..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h3d53130fa9836492E"(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error2tz6offset106_$LT$impl$u20$core..convert..From$LT$jiff..error..tz..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17hf36be4dc343d11c1E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(3) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = load i8, ptr %0, align 1, !range !43, !noundef !11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !range !32, !noundef !11 ; 22 uses
  switch i8 %i.am, label %default.unreachable200 [
    i8 0, label %switch.lookup
    i8 1, label %switch.lookup230
    i8 2, label %switch.lookup236
    i8 3, label %bb.b
    i8 4, label %switch.lookup242
    i8 5, label %switch.lookup248
    i8 6, label %switch.lookup254
    i8 7, label %switch.lookup260
    i8 8, label %switch.lookup266
    i8 9, label %switch.lookup272
    i8 10, label %switch.lookup278
  ]

default.unreachable200:                           ; preds = %bb.a
  unreachable

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = zext nneg i8 %i.ao to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.aq
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.ar = zext nneg i8 %i.ao to i64
  %switch.gep228 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.ar
  %switch.load229 = load i8, ptr %switch.gep228, align 1
  %switch.ext = zext i8 %switch.load229 to i64
  store ptr %switch.load, ptr %i.ak, align 8
  store i64 %switch.ext, ptr %i.ap, align 8
  store ptr %i.ak, ptr %i.al, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val77 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val78 = load ptr, ptr %i.as, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12578
  store ptr @1617, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.al, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.at = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val77, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val78, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l), !noalias !12578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.c

switch.lookup230:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.av = zext nneg i8 %i.ao to i64
  %switch.gep231 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.av
  %switch.load232 = load ptr, ptr %switch.gep231, align 8
  %i.aw = zext nneg i8 %i.ao to i64
  %switch.gep233 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.aw
  %switch.load234 = load i8, ptr %switch.gep233, align 1
  %switch.ext235 = zext i8 %switch.load234 to i64
  store ptr %switch.load232, ptr %i.ai, align 8
  store i64 %switch.ext235, ptr %i.au, align 8
  store ptr %i.ai, ptr %i.aj, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.47.0..sroa_idx, align 8
  %.val75 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val76 = load ptr, ptr %i.ax, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12579
  store ptr @1619, ptr %i.k, align 8
  %.sroa.5135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 2, ptr %.sroa.5135.0..sroa_idx, align 8
  %.sroa.7136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.aj, ptr %.sroa.7136.0..sroa_idx, align 8
  %.sroa.8137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 1, ptr %.sroa.8137.0..sroa_idx, align 8
  %.sroa.10138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %.sroa.10138.0..sroa_idx, align 8
  %i.ay = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val75, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val76, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k), !noalias !12579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.c

switch.lookup236:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ba = zext nneg i8 %i.ao to i64
  %switch.gep237 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.ba
  %switch.load238 = load ptr, ptr %switch.gep237, align 8
  %i.bb = zext nneg i8 %i.ao to i64
  %switch.gep239 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.bb
  %switch.load240 = load i8, ptr %switch.gep239, align 1
  %switch.ext241 = zext i8 %switch.load240 to i64
  store ptr %switch.load238, ptr %i.ag, align 8
  store i64 %switch.ext241, ptr %i.az, align 8
  store ptr %i.ag, ptr %i.ah, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.411.0..sroa_idx, align 8
  %.val73 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val74 = load ptr, ptr %i.bc, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12580
  store ptr @1621, ptr %i.j, align 8
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 2, ptr %.sroa.5141.0..sroa_idx, align 8
  %.sroa.7142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.ah, ptr %.sroa.7142.0..sroa_idx, align 8
  %.sroa.8143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 1, ptr %.sroa.8143.0..sroa_idx, align 8
  %.sroa.10144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %.sroa.10144.0..sroa_idx, align 8
  %i.bd = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val73, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val74, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j), !noalias !12580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.be = icmp eq i8 %i.ao, 11
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !range !30, !noundef !11 ; 4 uses
  br i1 %i.be, label %switch.lookup284, label %switch.lookup290

switch.lookup242:                                 ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !range !30, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bk = zext nneg i8 %i.bi to i64
  %switch.gep243 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.bk
  %switch.load244 = load ptr, ptr %switch.gep243, align 8
  %i.bl = zext nneg i8 %i.bi to i64
  %switch.gep245 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.bl
  %switch.load246 = load i8, ptr %switch.gep245, align 1
  %switch.ext247 = zext i8 %switch.load246 to i64
  store ptr %switch.load244, ptr %i.aa, align 8
  store i64 %switch.ext247, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.bm = zext nneg i8 %i.ao to i64
  %switch.gep297 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.bm
  %switch.load298 = load ptr, ptr %switch.gep297, align 8
  %i.bn = zext nneg i8 %i.ao to i64
  %switch.gep299 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.bn
  %switch.load300 = load i8, ptr %switch.gep299, align 1
  %switch.ext301 = zext i8 %switch.load300 to i64
  store ptr %switch.load298, ptr %i.z, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %switch.ext301, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.aa, ptr %i.y, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.427.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.bp, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.431.0..sroa_idx, align 8
  %.val67 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val68 = load ptr, ptr %i.bq, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12581
  store ptr @1631, ptr %i.g, align 8
  %.sroa.5159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 3, ptr %.sroa.5159.0..sroa_idx, align 8
  %.sroa.7160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.y, ptr %.sroa.7160.0..sroa_idx, align 8
  %.sroa.8161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %.sroa.8161.0..sroa_idx, align 8
  %.sroa.10162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.10162.0..sroa_idx, align 8
  %i.br = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val67, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val68, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !12581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.c

switch.lookup248:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bt = zext nneg i8 %i.ao to i64
  %switch.gep249 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.bt
  %switch.load250 = load ptr, ptr %switch.gep249, align 8
  %i.bu = zext nneg i8 %i.ao to i64
  %switch.gep251 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.bu
  %switch.load252 = load i8, ptr %switch.gep251, align 1
  %switch.ext253 = zext i8 %switch.load252 to i64
  store ptr %switch.load250, ptr %i.w, align 8
  store i64 %switch.ext253, ptr %i.bs, align 8
  store ptr %i.w, ptr %i.x, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.435.0..sroa_idx, align 8
  %.val65 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val66 = load ptr, ptr %i.bv, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12582
  store ptr @1634, ptr %i.f, align 8
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.5165.0..sroa_idx, align 8
  %.sroa.7166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.x, ptr %.sroa.7166.0..sroa_idx, align 8
  %.sroa.8167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.8167.0..sroa_idx, align 8
  %.sroa.10168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.10168.0..sroa_idx, align 8
  %i.bw = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val65, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val66, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !12582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.c

switch.lookup254:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.by = zext nneg i8 %i.ao to i64
  %switch.gep255 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.by
  %switch.load256 = load ptr, ptr %switch.gep255, align 8
  %i.bz = zext nneg i8 %i.ao to i64
  %switch.gep257 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.bz
  %switch.load258 = load i8, ptr %switch.gep257, align 1
  %switch.ext259 = zext i8 %switch.load258 to i64
  store ptr %switch.load256, ptr %i.u, align 8
  store i64 %switch.ext259, ptr %i.bx, align 8
  store ptr %i.u, ptr %i.v, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.439.0..sroa_idx, align 8
  %.val63 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val64 = load ptr, ptr %i.ca, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12583
  store ptr @1636, ptr %i.e, align 8
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.5171.0..sroa_idx, align 8
  %.sroa.7172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.v, ptr %.sroa.7172.0..sroa_idx, align 8
  %.sroa.8173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.8173.0..sroa_idx, align 8
  %.sroa.10174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.10174.0..sroa_idx, align 8
  %i.cb = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val63, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val64, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !12583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.c

switch.lookup260:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cd = zext nneg i8 %i.ao to i64
  %switch.gep261 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.cd
  %switch.load262 = load ptr, ptr %switch.gep261, align 8
  %i.ce = zext nneg i8 %i.ao to i64
  %switch.gep263 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.ce
  %switch.load264 = load i8, ptr %switch.gep263, align 1
  %switch.ext265 = zext i8 %switch.load264 to i64
  store ptr %switch.load262, ptr %i.s, align 8
  store i64 %switch.ext265, ptr %i.cc, align 8
  store ptr %i.s, ptr %i.t, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.443.0..sroa_idx, align 8
  %.val61 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val62 = load ptr, ptr %i.cf, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12584
  store ptr @1638, ptr %i.d, align 8
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.5177.0..sroa_idx, align 8
  %.sroa.7178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.t, ptr %.sroa.7178.0..sroa_idx, align 8
  %.sroa.8179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.8179.0..sroa_idx, align 8
  %.sroa.10180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.10180.0..sroa_idx, align 8
  %i.cg = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val61, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val62, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !12584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.c

switch.lookup266:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ci = zext nneg i8 %i.ao to i64
  %switch.gep267 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.704", i64 %i.ci
  %switch.load268 = load ptr, ptr %switch.gep267, align 8
  %i.cj = zext nneg i8 %i.ao to i64
  %switch.gep269 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.705", i64 %i.cj
  %switch.load270 = load i8, ptr %switch.gep269, align 1
  %switch.ext271 = zext i8 %switch.load270 to i64
  store ptr %switch.load268, ptr %i.q, align 8
  store i64 %switch.ext271, ptr %i.ch, align 8
  store ptr %i.q, ptr %i.r, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.447.0..sroa_idx, align 8
  %.val59 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val60 = load ptr, ptr %i.ck, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12585
  store ptr @1641, ptr %i.c, align 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.5183.0..sroa_idx, align 8
  %.sroa.7184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.r, ptr %.sroa.7184.0..sroa_idx, align 8
  %.sroa.8185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.8185.0..sroa_idx, align 8
  %.sroa.10186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10186.0..sroa_idx, align 8
  %i.cl = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val59, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val60, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !12585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.c

switch.lookup272:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cn = zext nneg i8 %i.ao to i64
  %switch.gep273 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.704", i64 %i.cn
  %switch.load274 = load ptr, ptr %switch.gep273, align 8
  %i.co = zext nneg i8 %i.ao to i64
  %switch.gep275 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.705", i64 %i.co
  %switch.load276 = load i8, ptr %switch.gep275, align 1
  %switch.ext277 = zext i8 %switch.load276 to i64
  store ptr %switch.load274, ptr %i.o, align 8
  store i64 %switch.ext277, ptr %i.cm, align 8
  store ptr %i.o, ptr %i.p, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.451.0..sroa_idx, align 8
  %.val57 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val58 = load ptr, ptr %i.cp, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12586
  store ptr @1644, ptr %i.b, align 8
  %.sroa.5189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.5189.0..sroa_idx, align 8
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.p, ptr %.sroa.7190.0..sroa_idx, align 8
  %.sroa.8191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.8191.0..sroa_idx, align 8
  %.sroa.10192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.10192.0..sroa_idx, align 8
  %i.cq = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val57, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val58, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !12586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.c

switch.lookup278:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cs = zext nneg i8 %i.ao to i64
  %switch.gep279 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.cs
  %switch.load280 = load ptr, ptr %switch.gep279, align 8
  %i.ct = zext nneg i8 %i.ao to i64
  %switch.gep281 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.ct
  %switch.load282 = load i8, ptr %switch.gep281, align 1
  %switch.ext283 = zext i8 %switch.load282 to i64
  store ptr %switch.load280, ptr %i.m, align 8
  store i64 %switch.ext283, ptr %i.cr, align 8
  store ptr %i.m, ptr %i.n, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.455.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val56 = load ptr, ptr %i.cu, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12587
  store ptr @1646, ptr %i.a, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.7196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %.sroa.7196.0..sroa_idx, align 8
  %.sroa.8197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8197.0..sroa_idx, align 8
  %.sroa.10198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10198.0..sroa_idx, align 8
  %i.cv = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val56, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup278, %switch.lookup272, %switch.lookup266, %switch.lookup260, %switch.lookup254, %switch.lookup248, %switch.lookup242, %switch.lookup290, %switch.lookup284, %switch.lookup236, %switch.lookup230, %switch.lookup
  %.sroa.0.0.in = phi i1 [ %i.at, %switch.lookup ], [ %i.ay, %switch.lookup230 ], [ %i.bd, %switch.lookup236 ], [ %i.da, %switch.lookup284 ], [ %i.dh, %switch.lookup290 ], [ %i.br, %switch.lookup242 ], [ %i.bw, %switch.lookup248 ], [ %i.cb, %switch.lookup254 ], [ %i.cg, %switch.lookup260 ], [ %i.cl, %switch.lookup266 ], [ %i.cq, %switch.lookup272 ], [ %i.cv, %switch.lookup278 ]
  ret i1 %.sroa.0.0.in

switch.lookup284:                                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.cx = zext nneg i8 %i.bg to i64
  %switch.gep285 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.704", i64 %i.cx
  %switch.load286 = load ptr, ptr %switch.gep285, align 8
  %i.cy = zext nneg i8 %i.bg to i64
  %switch.gep287 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.705", i64 %i.cy
  %switch.load288 = load i8, ptr %switch.gep287, align 1
  %switch.ext289 = zext i8 %switch.load288 to i64
  store ptr %switch.load286, ptr %i.ae, align 8
  store i64 %switch.ext289, ptr %i.cw, align 8
  store ptr %i.ae, ptr %i.af, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.415.0..sroa_idx, align 8
  %.val71 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val72 = load ptr, ptr %i.cz, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12588
  store ptr @1624, ptr %i.i, align 8
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 2, ptr %.sroa.5147.0..sroa_idx, align 8
  %.sroa.7148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.af, ptr %.sroa.7148.0..sroa_idx, align 8
  %.sroa.8149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %.sroa.8149.0..sroa_idx, align 8
  %.sroa.10150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %.sroa.10150.0..sroa_idx, align 8
  %i.da = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val72, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i), !noalias !12588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.c

switch.lookup290:                                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.db = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.dc = zext nneg i8 %i.bg to i64
  %switch.gep291 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.704", i64 %i.dc
  %switch.load292 = load ptr, ptr %switch.gep291, align 8
  %i.dd = zext nneg i8 %i.bg to i64
  %switch.gep293 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.705", i64 %i.dd
  %switch.load294 = load i8, ptr %switch.gep293, align 1
  %switch.ext295 = zext i8 %switch.load294 to i64
  store ptr %switch.load292, ptr %i.ad, align 8
  store i64 %switch.ext295, ptr %i.db, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.de = zext nneg i8 %i.ao to i64
  %switch.gep303 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN73_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$core..fmt..Display$GT$3fmt17h7bda9c48ae20e2fbE.708", i64 %i.de
  %switch.load304 = load i64, ptr %switch.gep303, align 8
  store i64 %switch.load304, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ad, ptr %i.ab, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.419.0..sroa_idx, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ac, ptr %i.df, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E", ptr %.sroa.423.0..sroa_idx, align 8
  %.val69 = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val70 = load ptr, ptr %i.dg, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12589
  store ptr @1627, ptr %i.h, align 8
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 3, ptr %.sroa.5153.0..sroa_idx, align 8
  %.sroa.7154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.ab, ptr %.sroa.7154.0..sroa_idx, align 8
  %.sroa.8155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 2, ptr %.sroa.8155.0..sroa_idx, align 8
  %.sroa.10156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.10156.0..sroa_idx, align 8
  %i.dh = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val70, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h), !noalias !12589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$jiff..fmt..rfc9557..ParsedTimeZone$u20$as$u20$core..fmt..Display$GT$3fmt17h62c56c7c5e11fc51E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !21, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !range !21, !noundef !11 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1647, i64 noundef 1)
  br i1 %i.f, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !align !13, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !11
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1647, i64 noundef 1)
  br i1 %i.k, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw i8 %i.d to i1
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.m = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.j)
  br i1 %i.m, label %bb.g, label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @189, i64 noundef 1)
  br i1 %i.n, label %bb.g, label %bb.e

.sink.split:                                      ; preds = %bb.e, %"_ZN70_$LT$jiff..fmt..offset..ParsedOffset$u20$as$u20$core..fmt..Display$GT$3fmt17h9188cba811a82d46E.exit", %.split
  %i.o = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1648, i64 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %.split, %"_ZN70_$LT$jiff..fmt..offset..ParsedOffset$u20$as$u20$core..fmt..Display$GT$3fmt17h9188cba811a82d46E.exit", %bb.j, %bb.b, %bb.e, %bb.f, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.e ], [ true, %bb.b ], [ true, %bb.j ], [ true, %"_ZN70_$LT$jiff..fmt..offset..ParsedOffset$u20$as$u20$core..fmt..Display$GT$3fmt17h9188cba811a82d46E.exit" ], [ true, %.split ], [ true, %bb.c ], [ true, %bb.f ], [ %i.o, %.sink.split ]
  ret i1 %.sroa.0.0.shrunk

bb.h:                                             ; preds = %bb.b
  %i.p = trunc nuw i8 %i.d to i1
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12593)
  %i.q = load i32, ptr %i.e, align 4, !range !47, !alias.scope !12593, !noalias !12594, !noundef !11
  %.not.i = icmp eq i32 %i.q, 2
  br i1 %.not.i, label %"_ZN70_$LT$jiff..fmt..offset..ParsedOffset$u20$as$u20$core..fmt..Display$GT$3fmt17h9188cba811a82d46E.exit", label %.split

.split:                                           ; preds = %bb.i
  %i.r = tail call noundef zeroext i1 @"_ZN65_$LT$jiff..fmt..offset..Numeric$u20$as$u20$core..fmt..Display$GT$3fmt17h545f15e416c58e1bE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.r, label %bb.g, label %.sink.split

"_ZN70_$LT$jiff..fmt..offset..ParsedOffset$u20$as$u20$core..fmt..Display$GT$3fmt17h9188cba811a82d46E.exit": ; preds = %bb.i
  %i.s = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1235, i64 noundef 1), !noalias !12593
  br i1 %i.s, label %bb.g, label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.t = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @189, i64 noundef 1)
  br i1 %i.t, label %bb.g, label %bb.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$jiff..fmt..serde..tz..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17he2c86b209f60c270E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1649, i64 noundef 117)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$jiff..shared..posix..HourIanaError$u20$as$u20$core..fmt..Display$GT$3fmt17h4da0375a5a57aa84E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !18, !noundef !11 ; 2 uses
  %i.b = icmp eq i8 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1651, i64 noundef 61)
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1650, i64 noundef 21)
  br i1 %i.d, label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1422, i64 noundef 31), !noalias !12597
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.f:                                             ; preds = %bb.d
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1449, i64 noundef 61), !noalias !12597
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.g:                                             ; preds = %bb.d
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1450, i64 noundef 31), !noalias !12597
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.h:                                             ; preds = %bb.d
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1451, i64 noundef 57), !noalias !12597
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit": ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.c, %bb.b ], [ true, %bb.c ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$jiff..shared..tzif..IndicatorError$u20$as$u20$core..fmt..Display$GT$3fmt17hea85e46ca27e5ce6E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !39, !noundef !11 ; 5 uses
  %i.b = icmp ne i8 %i.a, 11
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i8 %i.a, -8
  %i.d = icmp samesign ugt i8 %i.a, 7
  %narrow = select i1 %i.d, i8 %i.c, i8 3
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
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1652, i64 noundef 81)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1653, i64 noundef 58)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1654, i64 noundef 114)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.f:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1459, i64 noundef 20), !noalias !12600
  br i1 %i.h, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %switch.lookup

switch.lookup:                                    ; preds = %bb.f
  %i.i = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E", i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.j = zext nneg i8 %i.a to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E.713", i64 %i.j
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext), !noalias !12600
  br i1 %i.k, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.g

bb.g:                                             ; preds = %switch.lookup
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1468, i64 noundef 42), !noalias !12600
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.h:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1655, i64 noundef 73)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit": ; preds = %bb.g, %switch.lookup, %bb.f, %bb.h, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %i.m, %bb.h ], [ true, %switch.lookup ], [ true, %bb.f ], [ %i.l, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN73_$LT$jiff..tz..timezone..DiagnosticName$u20$as$u20$core..fmt..Display$GT$3fmt17h7549617a6beaaee3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  %i.c = load ptr, ptr %i.b, align 8, !noundef !11 ; 7 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  switch i64 %i.e, label %bb.b [
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 0, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @89, i64 noundef 3)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @90, i64 noundef 11)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = trunc i64 %i.d to i32
  %i.i = ashr i32 %i.h, 4
  store i32 %i.i, ptr %i.a, align 4
  %i.j = call noundef zeroext i1 @"_ZN63_$LT$jiff..tz..offset..Offset$u20$as$u20$core..fmt..Display$GT$3fmt17ha66cb654ecf6bf30E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !align !13, !noundef !11 ; 2 uses
  %.not10 = icmp eq ptr %i.l, null
  br i1 %.not10, label %bb.k, label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.c, i64 20
  %i.n = load i64, ptr %i.m, align 8, !range !15, !noundef !11
  %.not = icmp eq i64 %i.n, -9223372036854775808
  br i1 %.not, label %bb.m, label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.c, i64 -5
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN4jiff6shared5posix90_$LT$impl$u20$core..fmt..Display$u20$for$u20$jiff..shared..PosixTimeZone$LT$ABBREV$GT$$GT$3fmt17h6730636a83689674E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(88) %i.o, ptr noalias noundef align 8 dereferenceable(24) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %bb.k, %bb.h, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.j, %bb.e ], [ %i.s, %bb.k ], [ %i.x, %bb.m ], [ %i.p, %bb.h ]
  ret i1 %.sroa.0.0.in

bb.j:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.r = load i64, ptr %i.q, align 8, !noundef !11
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j
  %.sroa.5.0 = phi i64 [ %i.r, %bb.j ], [ 5, %bb.f ]
  %.sroa.01.0 = phi ptr [ %i.l, %bb.j ], [ @897, %bb.f ]
  %i.s = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.5.0)
  br label %bb.i

bb.l:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.c, i64 28
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !11, !noundef !11
  %i.v = getelementptr i8, ptr %i.c, i64 36
  %i.w = load i64, ptr %i.v, align 8, !noundef !11
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.l
  %.sroa.54.0 = phi i64 [ %i.w, %bb.l ], [ 5, %bb.g ]
  %.sroa.03.0 = phi ptr [ %i.u, %bb.l ], [ @897, %bb.g ]
  %i.x = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.03.0, i64 noundef %.sroa.54.0)
  br label %bb.i
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN73_$LT$jiff..util..b..SpanMicroseconds$u20$as$u20$jiff..util..b..Bounds$GT$5error17hf8b6f4300c11416aE"() unnamed_addr #14 {
bb.a:
  ret i8 32
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN73_$LT$jiff..util..b..SpanMilliseconds$u20$as$u20$jiff..util..b..Bounds$GT$5error17h4beee822218d3c5dE"() unnamed_addr #14 {
bb.a:
  ret i8 31
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN73_$LT$jiff..util..b..SubsecNanosecond$u20$as$u20$jiff..util..b..Bounds$GT$5error17h682667f5f60890daE"() unnamed_addr #14 {
bb.a:
  ret i8 35
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN73_$LT$jiff..util..b..UnixMicroseconds$u20$as$u20$jiff..util..b..Bounds$GT$5error17h16a6185570a568b5E"() unnamed_addr #14 {
bb.a:
  ret i8 39
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN73_$LT$jiff..util..b..UnixMilliseconds$u20$as$u20$jiff..util..b..Bounds$GT$5error17h114c58ddb3c7d537E"() unnamed_addr #14 {
bb.a:
  ret i8 38
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN73_$LT$jiff..util..b..WeekdayMondayOne$u20$as$u20$jiff..util..b..Bounds$GT$5error17hb6f414412ee2e3d8E"() unnamed_addr #14 {
bb.a:
  ret i8 43
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN73_$LT$jiff..util..b..WeekdaySundayOne$u20$as$u20$jiff..util..b..Bounds$GT$5error17h0a3a416e110dd5d4E"() unnamed_addr #14 {
bb.a:
  ret i8 45
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN74_$LT$jiff..error..fmt..offset..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h920bc7b7bc3624deE"(i8 noundef range(i8 0, 24) %0, i8 %1) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef %0, i8 %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load i8, ptr %0, align 1, !range !32, !noundef !11 ; 4 uses
  %i.e = add nsw i8 %i.d, -10
  %i.f = icmp samesign ugt i8 %i.d, 9
  %narrow = select i1 %i.f, i8 %i.e, i8 2
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %switch.lookup
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1691, i64 noundef 110)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1692, i64 noundef 61)
  br label %bb.e

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = zext nneg i8 %i.d to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E", i64 %i.j
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.k = zext nneg i8 %i.d to i64
  %switch.gep6 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN74_$LT$jiff..error..signed_duration..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h39fac8b7aae1e105E.710", i64 %i.k
  %switch.load7 = load i8, ptr %switch.gep6, align 1
  %switch.ext = zext i8 %switch.load7 to i64
  store ptr %switch.load, ptr %i.b, align 8
  store i64 %switch.ext, ptr %i.i, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12603
  store ptr @1695, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.m = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.m, %switch.lookup ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN74_$LT$jiff..fmt..temporal..pieces..Pieces$u20$as$u20$core..fmt..Display$GT$3fmt17h4aba01586a1954cfE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [73 x i8], align 1                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [4 x i8], align 1                 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !noundef !11
  %i.j = and i32 %i.i, 268435456
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.m = load i16, ptr %i.l, align 2, !noundef !11 ; 2 uses
  %i.n = icmp ugt i16 %i.m, 255
  %i.o = shl nuw i16 %i.m, 8
  %i.p = or disjoint i16 %i.o, 1
  %.sroa.017.0 = select i1 %i.n, i16 -255, i16 %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.423.2.insert.insert = phi i16 [ %.sroa.017.0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 0, ptr %i.g, align 1
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i16 %.sroa.423.2.insert.insert, ptr %.sroa.6.0..sroa_idx10, align 1
  %.sroa.612.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store i8 84, ptr %.sroa.612.0..sroa_idx15, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8, !noalias !12626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12626
  store ptr %i.d, ptr %i.c, align 8, !alias.scope !12627, !noalias !12628
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 73, ptr %i.q, align 8, !alias.scope !12627, !noalias !12628
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i16 0, ptr %i.r, align 8, !alias.scope !12627, !noalias !12628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12626
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !12629, !noalias !12630
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.s, align 8, !alias.scope !12629, !noalias !12630
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @197, ptr %i.t, align 8, !alias.scope !12629, !noalias !12630
  %i.u = call { i64, ptr } @_ZN4jiff3fmt8temporal7printer15DateTimePrinter16print_pieces_wtr17h687c584dba2535bfE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.d, label %_ZN4jiff3fmt6buffer14BorrowedWriter6finish17h537184321e779862E.exit.i

_ZN4jiff3fmt6buffer14BorrowedWriter6finish17h537184321e779862E.exit.i: ; preds = %bb.c
  %i.x = load ptr, ptr %i.c, align 8, !noalias !12631, !nonnull !11, !align !13, !noundef !11
  %i.y = load i16, ptr %i.r, align 8, !noalias !12631, !noundef !11
  %i.z = zext i16 %i.y to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !12632)
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !12632, !noalias !12633, !nonnull !11, !align !12, !noundef !11
  %i.aa = call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.x, i64 noundef %i.z), !noalias !12634
  br i1 %i.aa, label %.thread, label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter12print_pieces17hd373a79f9c96102cE.exit

.thread:                                          ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter6finish17h537184321e779862E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12635
  store i8 3, ptr %i.a, align 8, !noalias !12635
  %i.ab = call noundef ptr @"_ZN4jiff5error3fmt99_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h6f96ac308df63112E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !noalias !12634 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ab, ptr %i.f, align 8
  br label %bb.e

_ZN4jiff3fmt8temporal7printer15DateTimePrinter12print_pieces17hd373a79f9c96102cE.exit: ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter6finish17h537184321e779862E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12626
  %i.ac = extractvalue { i64, ptr } %i.u, 1       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ac, ptr %i.f, align 8
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit", label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.pn.i2732 = phi ptr [ %i.ab, %.thread ], [ %i.ac, %bb.d ]
  %i.ae = atomicrmw sub ptr %.pn.i2732, i64 1 release, align 8, !noalias !12636
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.f, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f), !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.g

bb.g:                                             ; preds = %_ZN4jiff3fmt8temporal7printer15DateTimePrinter12print_pieces17hd373a79f9c96102cE.exit, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"
  %i.ag = phi i1 [ false, %_ZN4jiff3fmt8temporal7printer15DateTimePrinter12print_pieces17hd373a79f9c96102cE.exit ], [ true, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %i.ag
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN74_$LT$jiff..shared..posix..HourPosixError$u20$as$u20$core..fmt..Display$GT$3fmt17h33cf4ad6194bacfaE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !18, !noundef !11 ; 2 uses
  %i.b = icmp eq i8 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1697, i64 noundef 57)
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1650, i64 noundef 21)
  br i1 %i.d, label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1422, i64 noundef 31), !noalias !12639
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.f:                                             ; preds = %bb.d
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1449, i64 noundef 61), !noalias !12639
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.g:                                             ; preds = %bb.d
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1450, i64 noundef 31), !noalias !12639
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.h:                                             ; preds = %bb.d
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1451, i64 noundef 57), !noalias !12639
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit": ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.c, %bb.b ], [ true, %bb.c ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN74_$LT$jiff..shared..posix..PosixDateError$u20$as$u20$core..fmt..Display$GT$3fmt17hc3f2b268f06decc4E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !32, !noundef !11 ; 2 uses
  %i.b = add nsw i8 %i.a, -7
  %i.c = icmp samesign ugt i8 %i.a, 6
  %narrow = select i1 %i.c, i8 %i.b, i8 5
  switch i8 %narrow, label %bb.b [
end_hunk_15
begin_hunk_16_@"_ZN77_$LT$jiff..error..fmt..strtime..FormatError$u20$as$u20$core..fmt..Display$GT$3fmt17h5052cf3a96912db6E":bb.a
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1925, i64 noundef 23)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1926, i64 noundef 57)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1927, i64 noundef 25)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1928, i64 noundef 23)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1929, i64 noundef 34)
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1930, i64 noundef 80)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1931, i64 noundef 45)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1932, i64 noundef 37)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1933, i64 noundef 37)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ], [ %i.i, %bb.i ], [ %i.j, %bb.j ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN77_$LT$jiff..error..unit..UnitConfigError$u20$as$u20$jiff..error..IntoError$GT$10into_error17he215554e5266c136E"(i24 %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error4unit110_$LT$impl$u20$core..convert..From$LT$jiff..error..unit..UnitConfigError$GT$$u20$for$u20$jiff..error..Error$GT$4from17haa2deed9d06057adE"(i24 %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$jiff..fmt..serde..tz..TemporalTimeZone$u20$as$u20$core..fmt..Display$GT$3fmt17ha711235b1992f0abE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !12756
  %i.d = call { i64, ptr } @_ZN4jiff3fmt8temporal7printer15DateTimePrinter19print_time_zone_wtr17h5cc1c7b7a8823a41E(ptr noalias readonly align 1 captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @197) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1                 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.d, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !12757
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b), !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load i8, ptr %0, align 1, !range !21, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12764)
  %i.g = load i8, ptr %i.f, align 1, !range !22, !alias.scope !12763, !noalias !12764, !noundef !11
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2007, i64 noundef 51), !noalias !12763
  br label %"_ZN85_$LT$jiff..shared..posix..UnquotedAbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h7558e7f72912e9f2E.exit"

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12765
  store i64 30, ptr %i.b, align 8, !noalias !12765
  store ptr %i.b, ptr %i.c, align 8, !noalias !12765
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !12765
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !12764, !noalias !12763, !nonnull !11, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i = load ptr, ptr %i.i, align 8, !alias.scope !12764, !noalias !12763, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12766
  store ptr @2009, ptr %i.a, align 8, !noalias !12765
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !12765
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !12765
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !12765
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !12765
  %i.j = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12765
  br label %"_ZN85_$LT$jiff..shared..posix..UnquotedAbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h7558e7f72912e9f2E.exit"

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2010, i64 noundef 111), !noalias !12763
  br label %"_ZN85_$LT$jiff..shared..posix..UnquotedAbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h7558e7f72912e9f2E.exit"

bb.e:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @"_ZN83_$LT$jiff..shared..posix..QuotedAbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17ha85f640f6c7abeb4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN85_$LT$jiff..shared..posix..UnquotedAbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h7558e7f72912e9f2E.exit"

"_ZN85_$LT$jiff..shared..posix..UnquotedAbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h7558e7f72912e9f2E.exit": ; preds = %bb.d, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i, %bb.c, %bb.e
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.e ], [ %i.h, %bb.c ], [ %i.j, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i ], [ %i.k, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$jiff..shared..posix..OptionalSignError$u20$as$u20$core..fmt..Display$GT$3fmt17hb76919a842160feaE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !21, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %. = select i1 %i.b, ptr @1935, ptr @1934
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %., i64 noundef 51)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$jiff..shared..tzif..LocalTimeTypeError$u20$as$u20$core..fmt..Display$GT$3fmt17h5af3464e611c26f6E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = load i8, ptr %0, align 4, !range !21, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12772)
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1459, i64 noundef 20), !noalias !12772
  br i1 %i.f, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %switch.lookup

switch.lookup:                                    ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !26, !alias.scope !12772, !noalias !12773, !noundef !11 ; 2 uses
  %i.i = zext nneg i8 %i.h to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E", i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.j = zext nneg i8 %i.h to i64
  %switch.gep13 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E.713", i64 %i.j
  %switch.load14 = load ptr, ptr %switch.gep13, align 8
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load14, i64 noundef %switch.ext), !noalias !12772
  br i1 %i.k, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1468, i64 noundef 42), !noalias !12772
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !noundef !11
  store i32 %i.n, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.43.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @1945, ptr %i.o, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.47.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @1946, ptr %i.p, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.411.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12774
  store ptr @1949, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.r = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val12, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit": ; preds = %bb.c, %switch.lookup, %bb.b, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.r, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ true, %switch.lookup ], [ true, %bb.b ], [ %i.l, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN77_$LT$jiff..util..b..RawBoundsError$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h03ba06dc64a00f3bE"(ptr nonnull %.0.val, ptr nofree nonnull readonly captures(address, read_provenance) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 -9223372036854775808, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 9223372036854775807, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1836, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12777
  store ptr @1595, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN77_$LT$jiff..util..b..RawBoundsError$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h09a67695e6e247aeE"(ptr nonnull %.0.val, ptr nofree nonnull readonly captures(address, read_provenance) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 1, ptr %i.d, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 366, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1769, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i16$GT$3fmt17h5e7056a81f88a921E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i16$GT$3fmt17h5e7056a81f88a921E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12780
  store ptr @1595, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN77_$LT$jiff..util..b..RawBoundsError$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h0eb7104ca896f9bfE"(ptr nonnull %.0.val, ptr nofree nonnull readonly captures(address, read_provenance) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 -25, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 25, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1790, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12783
  store ptr @1595, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !12783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN77_$LT$jiff..util..b..RawBoundsError$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h1026c6b5a1fc98bcE"(ptr nonnull %.0.val, ptr nofree nonnull readonly captures(address, read_provenance) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 999999999, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1784, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3819dbe23b30ceccE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12786
  store ptr @1595, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_16
begin_hunk_17_@"_ZN78_$LT$jiff..shared..posix..PosixTimeZoneError$u20$as$u20$core..fmt..Display$GT$3fmt17ha68b1b52aecb0a1bE":bb.a
    i8 9, label %bb.l
    i8 10, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1957, i64 noundef 44)
  br i1 %i.j, label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit", label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1958, i64 noundef 49)
  br i1 %i.k, label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit", label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1959, i64 noundef 62)
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

bb.f:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1960, i64 noundef 63)
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

bb.g:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1961, i64 noundef 141)
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

bb.h:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1962, i64 noundef 152)
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

bb.i:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1963, i64 noundef 92)
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

bb.j:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1964, i64 noundef 135)
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

bb.k:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1965, i64 noundef 28)
  br i1 %i.r, label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit", label %bb.x

bb.l:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1966, i64 noundef 33)
  br i1 %i.s, label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit", label %bb.y

bb.m:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @"_ZN74_$LT$jiff..shared..posix..PosixRuleError$u20$as$u20$core..fmt..Display$GT$3fmt17h844ea6a3dc8b729dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

bb.n:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13035)
  %i.v = load i8, ptr %i.u, align 1, !range !21, !alias.scope !13034, !noalias !13035, !noundef !11
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br i1 %i.w, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13037)
  %i.y = load i8, ptr %i.x, align 1, !range !22, !alias.scope !13038, !noalias !13039, !noundef !11
  switch i8 %i.y, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i.i
    i8 2, label %bb.q
  ]

default.unreachable:                              ; preds = %bb.t, %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.z = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2007, i64 noundef 51), !noalias !13038
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i.i: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13040
  store i64 30, ptr %i.e, align 8, !noalias !13040
  store ptr %i.e, ptr %i.f, align 8, !noalias !13040
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !13040
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !13039, !noalias !13038, !nonnull !11, !noundef !11
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !13039, !noalias !13038, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13041
  store ptr @2009, ptr %i.d, align 8, !noalias !13040
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !13040
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !13040
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !13040
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !13040
  %i.ab = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !13041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13040
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

bb.q:                                             ; preds = %bb.o
  %i.ac = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2010, i64 noundef 111), !noalias !13038
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

bb.r:                                             ; preds = %bb.n
  %i.ad = tail call noundef zeroext i1 @"_ZN83_$LT$jiff..shared..posix..QuotedAbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17ha85f640f6c7abeb4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit": ; preds = %bb.w, %bb.v, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i.i2, %bb.u, %bb.r, %bb.q, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i.i, %bb.p, %bb.l, %bb.k, %bb.d, %bb.c, %bb.y, %bb.x, %bb.m, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ %i.t, %bb.m ], [ true, %bb.l ], [ true, %bb.c ], [ %i.ac, %bb.q ], [ %i.l, %bb.e ], [ %i.m, %bb.f ], [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.p, %bb.i ], [ %i.q, %bb.j ], [ true, %bb.d ], [ %i.ap, %bb.x ], [ true, %bb.k ], [ %i.ar, %bb.y ], [ %i.ad, %bb.r ], [ %i.z, %bb.p ], [ %i.ab, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i.i ], [ %i.an, %bb.w ], [ %i.aj, %bb.u ], [ %i.al, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i.i2 ], [ %i.am, %bb.v ]
  ret i1 %.sroa.0.0.shrunk

bb.s:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13043)
  %i.af = load i8, ptr %i.ae, align 1, !range !21, !alias.scope !13042, !noalias !13043, !noundef !11
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br i1 %i.ag, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13045)
  %i.ai = load i8, ptr %i.ah, align 1, !range !22, !alias.scope !13046, !noalias !13047, !noundef !11
  switch i8 %i.ai, label %default.unreachable [
    i8 0, label %bb.u
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i.i2
    i8 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.aj = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2007, i64 noundef 51), !noalias !13046
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit.i.i2: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13048
  store i64 30, ptr %i.b, align 8, !noalias !13048
  store ptr %i.b, ptr %i.c, align 8, !noalias !13048
  %.sroa.43.0..sroa_idx.i.i3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.43.0..sroa_idx.i.i3, align 8, !noalias !13048
  %.val.i.i4 = load ptr, ptr %1, align 8, !alias.scope !13047, !noalias !13046, !nonnull !11, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i.i5 = load ptr, ptr %i.ak, align 8, !alias.scope !13047, !noalias !13046, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13049
  store ptr @2009, ptr %i.a, align 8, !noalias !13048
  %.sroa.5.0..sroa_idx.i.i6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i6, align 8, !noalias !13048
  %.sroa.7.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx.i.i7, align 8, !noalias !13048
  %.sroa.8.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i8, align 8, !noalias !13048
  %.sroa.10.0..sroa_idx.i.i9 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i9, align 8, !noalias !13048
  %i.al = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4.i.i5, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13048
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

bb.v:                                             ; preds = %bb.t
  %i.am = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2010, i64 noundef 111), !noalias !13046
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

bb.w:                                             ; preds = %bb.s
  %i.an = tail call noundef zeroext i1 @"_ZN83_$LT$jiff..shared..posix..QuotedAbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17ha85f640f6c7abeb4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

bb.x:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ap = tail call noundef zeroext i1 @"_ZN76_$LT$jiff..shared..posix..PosixOffsetError$u20$as$u20$core..fmt..Display$GT$3fmt17ha2ae2db3c56dd8e6E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"

bb.y:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ar = tail call noundef zeroext i1 @"_ZN76_$LT$jiff..shared..posix..PosixOffsetError$u20$as$u20$core..fmt..Display$GT$3fmt17ha2ae2db3c56dd8e6E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN77_$LT$jiff..shared..posix..AbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h9287ed2313bda776E.exit"
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$jiff..shared..tzif..TransitionTypeError$u20$as$u20$core..fmt..Display$GT$3fmt17h35ef58c7a0287b49E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !28, !noundef !11 ; 3 uses
  %.not = icmp eq i8 %i.a, 8
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1459, i64 noundef 20), !noalias !13052
  br i1 %i.b, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %switch.lookup

switch.lookup:                                    ; preds = %bb.b
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E", i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %i.a to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E.713", i64 %i.d
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext), !noalias !13052
  br i1 %i.e, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1468, i64 noundef 42), !noalias !13052
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1967, i64 noundef 81)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit": ; preds = %bb.c, %switch.lookup, %bb.b, %bb.d
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.d ], [ true, %switch.lookup ], [ true, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN78_$LT$jiff..util..b..SignedDurationSeconds$u20$as$u20$jiff..util..b..Bounds$GT$5error17h05c2968eca4f6737E"() unnamed_addr #14 {
bb.a:
  ret i8 23
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN79_$LT$jiff..error..tz..concatenated..Error$u20$as$u20$jiff..error..IntoError$GT$10into_error17h31955ebb0a6cdcfeE"(i8 noundef range(i8 0, 12) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error2tz12concatenated112_$LT$impl$u20$core..convert..From$LT$jiff..error..tz..concatenated..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h5c08d8825cca4106E"(i8 noundef %0)
  ret ptr %i.a
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$jiff..error..tz..system..disabled..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hb595a993e00dd497E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #27 {
bb.a:
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @29, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1969) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$jiff..shared..posix..WeekdayOfMonthError$u20$as$u20$core..fmt..Display$GT$3fmt17ha2d940b9eee6d2ccE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !38, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1970, i64 noundef 55)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1971, i64 noundef 48)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1972, i64 noundef 47)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1973, i64 noundef 49)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN70_$LT$jiff..shared..posix..MonthError$u20$as$u20$core..fmt..Display$GT$3fmt17hf902331d23e75197E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @"_ZN76_$LT$jiff..shared..posix..WeekOfMonthError$u20$as$u20$core..fmt..Display$GT$3fmt17h1515998c40e6f94fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @"_ZN72_$LT$jiff..shared..posix..WeekdayError$u20$as$u20$core..fmt..Display$GT$3fmt17he81a362aecb53b35E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.h, %bb.g ], [ %i.i, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i32 } @"_ZN79_$LT$jiff..signed_duration..SignedDuration$u20$as$u20$core..ops..arith..Sub$GT$3sub17hf12c49f7385626daE"(i64 noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, -9223372036854775808
  br i1 %i.a, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.b = sub nsw i64 0, %2
  %i.c = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %i.b) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 0         ; 4 uses
  %i.e = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.e, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.f = sub i32 %1, %3                           ; 6 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp sgt i32 %i.f, 999999999
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp slt i32 %i.f, -999999999
  br i1 %i.i, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.j = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 1) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit, label %bb.j, !prof !23

bb.g:                                             ; preds = %bb.e
  %i.l = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 -1) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit, label %bb.h, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, i1 } %i.l, 0
  %i.o = add nsw i32 %i.f, 1000000000
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h, %bb.e
  %.sroa.010.1.i = phi i32 [ %i.s, %bb.j ], [ %i.o, %bb.h ], [ %i.f, %bb.e ] ; 6 uses
  %.sroa.0.1.i = phi i64 [ %i.r, %bb.j ], [ %i.n, %bb.h ], [ %i.d, %bb.e ] ; 7 uses
  %i.p = icmp eq i64 %.sroa.0.1.i, 0
  %i.q = icmp eq i32 %.sroa.010.1.i, 0
  %or.cond.i = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond.i, label %bb.o, label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.r = extractvalue { i64, i1 } %i.j, 0
  %i.s = add nsw i32 %i.f, -1000000000
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.t = tail call i64 @llvm.scmp.i64.i64(i64 %.sroa.0.1.i, i64 0)
  %i.u = tail call i64 @llvm.scmp.i64.i32(i32 %.sroa.010.1.i, i32 0)
  %.not.i = icmp eq i64 %i.t, %i.u
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = icmp slt i64 %.sroa.0.1.i, 0
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = add nsw i64 %.sroa.0.1.i, -1
  %i.x = add nsw i32 %.sroa.010.1.i, 1000000000
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.y = add nsw i64 %.sroa.0.1.i, 1
  %i.z = add nsw i32 %.sroa.010.1.i, -1000000000
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %bb.c
  %.sroa.6.0.ph = phi i32 [ %.sroa.010.1.i, %bb.k ], [ %i.x, %bb.m ], [ %i.z, %bb.n ], [ %.sroa.010.1.i, %bb.i ], [ 0, %bb.c ]
  %.sroa.4.0.ph = phi i64 [ %.sroa.0.1.i, %bb.k ], [ %i.w, %bb.m ], [ %i.y, %bb.n ], [ %.sroa.0.1.i, %bb.i ], [ %i.d, %bb.c ]
  %i.aa = insertvalue { i64, i32 } poison, i64 %.sroa.4.0.ph, 0
  %i.ab = insertvalue { i64, i32 } %i.aa, i32 %.sroa.6.0.ph, 1
  ret { i64, i32 } %i.ab

_ZN4jiff15signed_duration14SignedDuration11checked_add17h9bbb525dba3d6c6eE.exit: ; preds = %bb.g, %bb.f, %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1974, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1975) #45
  unreachable
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 52) i8 @"_ZN79_$LT$jiff..util..b..SignedSubsecNanosecond$u20$as$u20$jiff..util..b..Bounds$GT$5error17h6a5bc83ed306c79bE"() unnamed_addr #14 {
bb.a:
  ret i8 36
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN80_$LT$jiff..error..fmt..strtime..ParseError$u20$as$u20$jiff..error..IntoError$GT$10into_error17h54850e29e05c1339E"(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error3fmt7strtime113_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..ParseError$GT$$u20$for$u20$jiff..error..Error$GT$4from17h1478f724f04103dbE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN80_$LT$jiff..error..util..ParseFractionError$u20$as$u20$jiff..error..IntoError$GT$10into_error17h3924c1dfc5190af3E"(i8 noundef range(i8 0, 4) %0, i8 %1) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error4util113_$LT$impl$u20$core..convert..From$LT$jiff..error..util..ParseFractionError$GT$$u20$for$u20$jiff..error..Error$GT$4from17h7b7caabb129a072eE"(i8 noundef %0, i8 %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$jiff..error..util..RoundingIncrementError$u20$as$u20$core..fmt..Display$GT$3fmt17he607232d54640d03E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !29, !noundef !11
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
end_hunk_17
begin_hunk_18_@"_ZN82_$LT$jiff..fmt..temporal..parser..ParsedDateTime$u20$as$u20$core..fmt..Display$GT$3fmt17h20ce31518e57f9c3E":bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i8, ptr %i.n, align 8, !range !22, !noundef !11
  %.not = icmp eq i8 %i.o, 2
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %"_ZN78_$LT$jiff..fmt..temporal..parser..ParsedDate$u20$as$u20$core..fmt..Display$GT$3fmt17hd35b4f6839f3122fE.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !13096)
  call void @llvm.experimental.noalias.scope.decl(metadata !13097)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 8, !alias.scope !13098, !noalias !13099, !noundef !11
  %i.s = and i32 %i.r, 268435456
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.v = load i16, ptr %i.u, align 2, !alias.scope !13098, !noalias !13099, !noundef !11 ; 2 uses
  %i.w = icmp ugt i16 %i.v, 255
  %i.x = shl nuw i16 %i.v, 8
  %i.y = or disjoint i16 %i.x, 1
  %.sroa.017.0.i.i = select i1 %i.w, i16 -255, i16 %i.y
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.423.2.insert.insert.i.i = phi i16 [ %.sroa.017.0.i.i, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13100
  store i8 0, ptr %i.c, align 1, !noalias !13100
  %.sroa.6.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i16 %.sroa.423.2.insert.insert.i.i, ptr %.sroa.6.0..sroa_idx10.i.i, align 1, !noalias !13100
  %.sroa.612.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 84, ptr %.sroa.612.0..sroa_idx15.i.i, align 1, !noalias !13100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13100
  store ptr %1, ptr %i.a, align 8, !noalias !13101
  %i.z = call { i64, ptr } @_ZN4jiff3fmt8temporal7printer15DateTimePrinter10print_time17hbeea800f3df06505E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.p, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @197) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13100
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %"_ZN78_$LT$jiff..fmt..temporal..parser..ParsedTime$u20$as$u20$core..fmt..Display$GT$3fmt17hb7909c1113ca50b4E.exit"

bb.h:                                             ; preds = %bb.g
  %i.ac = extractvalue { i64, ptr } %i.z, 1       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13100
  store ptr %i.ac, ptr %i.b, align 8, !noalias !13100
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %"_ZN78_$LT$jiff..fmt..temporal..parser..ParsedTime$u20$as$u20$core..fmt..Display$GT$3fmt17hb7909c1113ca50b4E.exit.thread", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !13102
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.j, label %"_ZN78_$LT$jiff..fmt..temporal..parser..ParsedTime$u20$as$u20$core..fmt..Display$GT$3fmt17hb7909c1113ca50b4E.exit.thread"

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b), !noalias !13099, !inline_history !0
  br label %"_ZN78_$LT$jiff..fmt..temporal..parser..ParsedTime$u20$as$u20$core..fmt..Display$GT$3fmt17hb7909c1113ca50b4E.exit.thread"

"_ZN78_$LT$jiff..fmt..temporal..parser..ParsedTime$u20$as$u20$core..fmt..Display$GT$3fmt17hb7909c1113ca50b4E.exit.thread": ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13100
  br label %"_ZN76_$LT$jiff..fmt..rfc9557..ParsedAnnotations$u20$as$u20$core..fmt..Display$GT$3fmt17hc6ef4f0764535bd5E.exit"

"_ZN78_$LT$jiff..fmt..temporal..parser..ParsedTime$u20$as$u20$core..fmt..Display$GT$3fmt17hb7909c1113ca50b4E.exit": ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13100
  br label %bb.k

bb.k:                                             ; preds = %"_ZN78_$LT$jiff..fmt..temporal..parser..ParsedTime$u20$as$u20$core..fmt..Display$GT$3fmt17hb7909c1113ca50b4E.exit", %"_ZN78_$LT$jiff..fmt..temporal..parser..ParsedDate$u20$as$u20$core..fmt..Display$GT$3fmt17hd35b4f6839f3122fE.exit"
  %i.ag = load i32, ptr %0, align 8, !range !65, !noundef !11
  switch i32 %i.ag, label %.split [
    i32 3, label %bb.l
    i32 2, label %"_ZN70_$LT$jiff..fmt..offset..ParsedOffset$u20$as$u20$core..fmt..Display$GT$3fmt17h9188cba811a82d46E.exit"
  ]

"_ZN76_$LT$jiff..fmt..rfc9557..ParsedAnnotations$u20$as$u20$core..fmt..Display$GT$3fmt17hc6ef4f0764535bd5E.exit": ; preds = %bb.m, %bb.l, %.split, %"_ZN78_$LT$jiff..fmt..temporal..parser..ParsedTime$u20$as$u20$core..fmt..Display$GT$3fmt17hb7909c1113ca50b4E.exit.thread", %"_ZN78_$LT$jiff..fmt..temporal..parser..ParsedDate$u20$as$u20$core..fmt..Display$GT$3fmt17hd35b4f6839f3122fE.exit.thread", %"_ZN70_$LT$jiff..fmt..offset..ParsedOffset$u20$as$u20$core..fmt..Display$GT$3fmt17h9188cba811a82d46E.exit"
  %.sroa.0.0 = phi i1 [ true, %.split ], [ true, %"_ZN78_$LT$jiff..fmt..temporal..parser..ParsedDate$u20$as$u20$core..fmt..Display$GT$3fmt17hd35b4f6839f3122fE.exit.thread" ], [ true, %"_ZN78_$LT$jiff..fmt..temporal..parser..ParsedTime$u20$as$u20$core..fmt..Display$GT$3fmt17hb7909c1113ca50b4E.exit.thread" ], [ true, %"_ZN70_$LT$jiff..fmt..offset..ParsedOffset$u20$as$u20$core..fmt..Display$GT$3fmt17h9188cba811a82d46E.exit" ], [ false, %bb.l ], [ %i.al, %bb.m ]
  ret i1 %.sroa.0.0

.split:                                           ; preds = %bb.k
  %i.ah = call noundef zeroext i1 @"_ZN65_$LT$jiff..fmt..offset..Numeric$u20$as$u20$core..fmt..Display$GT$3fmt17h545f15e416c58e1bE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ah, label %"_ZN76_$LT$jiff..fmt..rfc9557..ParsedAnnotations$u20$as$u20$core..fmt..Display$GT$3fmt17hc6ef4f0764535bd5E.exit", label %bb.l

"_ZN70_$LT$jiff..fmt..offset..ParsedOffset$u20$as$u20$core..fmt..Display$GT$3fmt17h9188cba811a82d46E.exit": ; preds = %bb.k
  %i.ai = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1235, i64 noundef 1), !noalias !13103
  br i1 %i.ai, label %"_ZN76_$LT$jiff..fmt..rfc9557..ParsedAnnotations$u20$as$u20$core..fmt..Display$GT$3fmt17hc6ef4f0764535bd5E.exit", label %bb.l

bb.l:                                             ; preds = %bb.k, %.split, %"_ZN70_$LT$jiff..fmt..offset..ParsedOffset$u20$as$u20$core..fmt..Display$GT$3fmt17h9188cba811a82d46E.exit"
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !22, !alias.scope !13104, !noalias !13105, !noundef !11
  %.not.i3 = icmp eq i8 %i.ak, 2
  br i1 %.not.i3, label %"_ZN76_$LT$jiff..fmt..rfc9557..ParsedAnnotations$u20$as$u20$core..fmt..Display$GT$3fmt17hc6ef4f0764535bd5E.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = call noundef zeroext i1 @"_ZN73_$LT$jiff..fmt..rfc9557..ParsedTimeZone$u20$as$u20$core..fmt..Display$GT$3fmt17h62c56c7c5e11fc51E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN76_$LT$jiff..fmt..rfc9557..ParsedAnnotations$u20$as$u20$core..fmt..Display$GT$3fmt17hc6ef4f0764535bd5E.exit"
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$jiff..fmt..temporal..parser..ParsedTimeZone$u20$as$u20$core..fmt..Display$GT$3fmt17h0d53c7dd5b40c086E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = tail call noundef zeroext i1 @"_ZN64_$LT$jiff..util..escape..Bytes$u20$as$u20$core..fmt..Display$GT$3fmt17h52b264184d91b88dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$jiff..shared..posix..PosixJulianNoLeapError$u20$as$u20$core..fmt..Display$GT$3fmt17h87a3186f630b7e40E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !18, !noundef !11 ; 2 uses
  %i.b = icmp eq i8 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1993, i64 noundef 73)
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1992, i64 noundef 37)
  br i1 %i.d, label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1422, i64 noundef 31), !noalias !13108
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.f:                                             ; preds = %bb.d
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1449, i64 noundef 61), !noalias !13108
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.g:                                             ; preds = %bb.d
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1450, i64 noundef 31), !noalias !13108
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

bb.h:                                             ; preds = %bb.d
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1451, i64 noundef 57), !noalias !13108
  br label %"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit"

"_ZN71_$LT$jiff..shared..posix..NumberError$u20$as$u20$core..fmt..Display$GT$3fmt17hc15a7de0b188c07dE.exit": ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.c, %bb.b ], [ true, %bb.c ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !39, !noundef !11 ; 4 uses
  %i.b = add nsw i8 %i.a, -8
  %i.c = icmp samesign ugt i8 %i.a, 7
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
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1994, i64 noundef 61)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1995, i64 noundef 64)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1996, i64 noundef 63)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.f:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1997, i64 noundef 44)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.g:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1998, i64 noundef 54)
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

bb.h:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1459, i64 noundef 20), !noalias !13111
  br i1 %i.i, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %switch.lookup

switch.lookup:                                    ; preds = %bb.h
  %i.j = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E", i64 %i.j
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.k = zext nneg i8 %i.a to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN82_$LT$jiff..shared..tzif..TimeZoneDesignatorError$u20$as$u20$core..fmt..Display$GT$3fmt17h5206d8ee92082022E.713", i64 %i.k
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext), !noalias !13111
  br i1 %i.l, label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit", label %bb.i

bb.i:                                             ; preds = %switch.lookup
  %i.m = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1468, i64 noundef 42), !noalias !13111
  br label %"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit"

"_ZN71_$LT$jiff..shared..tzif..SplitAtError$u20$as$u20$core..fmt..Display$GT$3fmt17haa6f888ecaafd6d3E.exit": ; preds = %bb.i, %switch.lookup, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.h, %bb.g ], [ true, %switch.lookup ], [ true, %bb.h ], [ %i.m, %bb.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN83_$LT$jiff..shared..posix..QuotedAbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17ha85f640f6c7abeb4E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load i8, ptr %0, align 1, !range !29, !noundef !11
  switch i8 %i.d, label %default.unreachable5 [
    i8 0, label %bb.b
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
  ]

default.unreachable5:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1999, i64 noundef 49)
  br label %bb.g

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 30, ptr %i.b, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13114
  store ptr @2002, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2003, i64 noundef 109)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2004, i64 noundef 120)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2005, i64 noundef 155)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2006, i64 noundef 110)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull ptr @"_ZN84_$LT$jiff..error..util..RoundingIncrementError$u20$as$u20$jiff..error..IntoError$GT$10into_error17h4cf84757e498b562E"(i8 noundef range(i8 0, 6) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef ptr @"_ZN4jiff5error4util117_$LT$impl$u20$core..convert..From$LT$jiff..error..util..RoundingIncrementError$GT$$u20$for$u20$jiff..error..Error$GT$4from17h3fd0e74711979ac2E"(i8 noundef %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN85_$LT$jiff..shared..posix..UnquotedAbbreviationError$u20$as$u20$core..fmt..Display$GT$3fmt17h7558e7f72912e9f2E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load i8, ptr %0, align 1, !range !22, !noundef !11
  switch i8 %i.d, label %default.unreachable5 [
    i8 0, label %bb.b
    i8 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i8 2, label %bb.c
  ]

default.unreachable5:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2007, i64 noundef 51)
  br label %bb.d

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 30, ptr %i.b, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13117
  store ptr @2009, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2010, i64 noundef 111)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZN85_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h7b1eea9fba001bedE"(ptr noalias nofree noundef align 1 captures(none) dereferenceable(10) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13125)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !13126, !noalias !13125, !noundef !11
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = add i64 %2, %i.c                         ; 3 uses
  %i.e = icmp ult i64 %i.d, %i.c
  %i.f = icmp ugt i64 %i.d, 9
  %or.cond.not.i.not = or i1 %i.e, %i.f           ; 2 uses
  br i1 %or.cond.not.i.not, label %"_ZN4jiff6shared4util9array_str17ArrayStr$LT$_$GT$8push_str17h257a5ea6ee499c9eE.exit", label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !alias.scope !13127, !noalias !13128
  %i.h = trunc nuw nsw i64 %i.d to i8
  store i8 %i.h, ptr %i.a, align 1, !alias.scope !13126, !noalias !13125
  br label %"_ZN4jiff6shared4util9array_str17ArrayStr$LT$_$GT$8push_str17h257a5ea6ee499c9eE.exit"

"_ZN4jiff6shared4util9array_str17ArrayStr$LT$_$GT$8push_str17h257a5ea6ee499c9eE.exit": ; preds = %bb.a, %bb.b
  ret i1 %or.cond.not.i.not
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN86_$LT$jiff..civil..iso_week_date..ISOWeekDate$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h46146ffe8240ddbdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13136
  call void @_ZN4jiff3fmt8temporal6parser14DateTimeParser19parse_iso_week_date17hd23ef7e581b1d5faE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nonnull readonly align 1 captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !13135
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  %i.e = load i8, ptr %i.d, align 1, !range !26, !noalias !13136, !noundef !11 ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  %i.g = load ptr, ptr %i.c, align 8, !noalias !13136 ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13136
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.75.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %.sroa.75.0..sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(11) %.sroa.514.0..sroa_idx.i, i64 11, i1 false), !noalias !13136
  %.sroa.715.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.sroa.715.0.copyload.i = load i32, ptr %.sroa.715.0..sroa_idx.i, align 4, !noalias !13136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13136
  store ptr %i.g, ptr %i.b, align 8, !noalias !13136
  %.sroa.77.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  store i8 %i.e, ptr %.sroa.77.0..sroa_idx8.i, align 1, !noalias !13136
  %.sroa.8.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
end_hunk_18
