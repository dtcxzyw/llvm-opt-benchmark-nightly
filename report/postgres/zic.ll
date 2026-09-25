Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/zic?download=true
inline.NumInlined: 153
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0
@.str.38 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"%s: linking target %s/%s failed: %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"%s: Can't remove %s/%s: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [48 x i8] c"symbolic link used because hard link failed: %s\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"%s: Can't read %s/%s: %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"%s: Can't create %s/%s: %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"copy used because hard link failed: %s\00", align 1
@.str.48 = private unnamed_addr constant [43 x i8] c"copy used because symbolic link failed: %s\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@nrules = internal unnamed_addr global i64 0, align 8
@rules = internal unnamed_addr global ptr null, align 8
@.str.50 = private unnamed_addr constant [33 x i8] c"same rule name in multiple files\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"%s in ruleless zone\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"invalid saved time\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"%ld%c%d%c%d%c%1d%*[0]%c%*[0123456789]%c\00", align 1
@.str.55 = private unnamed_addr constant [56 x i8] c"fractional seconds rejected by pre-2018 versions of zic\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"time overflow\00", align 1
@.str.57 = private unnamed_addr constant [61 x i8] c"values over 24 hours not handled by pre-2007 versions of zic\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.59 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"%s: Cannot open %s: %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"line too long\00", align 1
@infile.nada = internal global i8 0, align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"#expires %ld\00", align 1
@comment_leapexpires = internal global i64 -1, align 8
@.str.63 = private unnamed_addr constant [27 x i8] c"input line of unknown type\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"%s: panic: Invalid l_value %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"expected continuation line not found\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"Odd number of quotation marks\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"size overflow\00", align 1
@.str.68 = private unnamed_addr constant [49 x i8] c"wrong number of fields on Zone continuation line\00", align 1
@inzsub.z = internal global %struct.zone zeroinitializer, align 8
@.str.69 = private unnamed_addr constant [18 x i8] c"invalid UT offset\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"invalid abbreviation format\00", align 1
@.str.71 = private unnamed_addr constant [52 x i8] c"format '%s' not handled by pre-2015 versions of zic\00", align 1
@max_format_len = internal unnamed_addr global i32 0, align 4
@.str.72 = private unnamed_addr constant [5 x i8] c"only\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.76 = private unnamed_addr constant [71 x i8] c"Zone continuation line end time is not after end time of previous line\00", align 1
@nzones_alloc = internal unnamed_addr global i64 0, align 8
@namecheck.benign = internal constant [56 x i8] c"-/_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@namecheck.printable_and_not_benign = internal constant [41 x i8] c" !\22#$%&'()*+,.0123456789:;<=>?@[\\]^`{|}~\00", align 16
@.str.77 = private unnamed_addr constant [34 x i8] c"file name '%s' contains byte '%c'\00", align 1
@.str.78 = private unnamed_addr constant [35 x i8] c"file name '%s' contains byte '\\%o'\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"empty file name\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"file name '%s' begins with '/'\00", align 1
@.str.81 = private unnamed_addr constant [29 x i8] c"file name '%s' contains '//'\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"file name '%s' ends with '/'\00", align 1
@.str.83 = private unnamed_addr constant [41 x i8] c"file name '%s' contains '%.*s' component\00", align 1
@.str.84 = private unnamed_addr constant [46 x i8] c"file name '%s' component contains leading '-'\00", align 1
@.str.85 = private unnamed_addr constant [55 x i8] c"file name '%s' contains overlength component '%.*s...'\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"invalid month name\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"invalid time of day\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"invalid starting year\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"invalid ending year\00", align 1
@.str.91 = private unnamed_addr constant [39 x i8] c"starting year greater than ending year\00", align 1
@.str.92 = private unnamed_addr constant [47 x i8] c"year type \22%s\22 is unsupported; use \22-\22 instead\00", align 1
@len_months = internal unnamed_addr constant [2 x [12 x i32]] [[12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31]], align 16
@.str.93 = private unnamed_addr constant [21 x i8] c"invalid day of month\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"invalid weekday name\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"January\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"February\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"March\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"April\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"June\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"July\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"August\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"September\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"October\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"November\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"December\00", align 1
@mon_names = internal constant [13 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.96, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.97, i32 1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.98, i32 2, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.99, i32 3, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.100, i32 4, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.101, i32 5, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.102, i32 6, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.103, i32 7, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.104, i32 8, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.105, i32 9, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.106, i32 10, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.107, i32 11, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.109 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@begin_years = internal constant [3 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.109, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.110, i32 1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } zeroinitializer], align 16
@end_years = internal constant [4 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.109, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.110, i32 1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.72, i32 2, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.113 = private unnamed_addr constant [12 x i8] c"last-Sunday\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"last-Monday\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"last-Tuesday\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"last-Wednesday\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"last-Thursday\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"last-Friday\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"last-Saturday\00", align 1
@lasts = internal constant [8 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.113, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.114, i32 1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.115, i32 2, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.116, i32 3, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.117, i32 4, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.118, i32 5, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.119, i32 6, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.121 = private unnamed_addr constant [7 x i8] c"Sunday\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"Monday\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"Tuesday\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"Wednesday\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"Thursday\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"Friday\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"Saturday\00", align 1
@wday_names = internal constant [8 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.121, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.122, i32 1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.123, i32 2, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.124, i32 3, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.125, i32 4, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.126, i32 5, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.127, i32 6, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } zeroinitializer], align 16
@len_years = internal unnamed_addr constant [2 x i32] [i32 365, i32 366], align 4
@.str.129 = private unnamed_addr constant [29 x i8] c"use of 2/29 in non leap-year\00", align 1
@.str.130 = private unnamed_addr constant [79 x i8] c"rule goes past start/end of month; will not work with pre-2004 versions of zic\00", align 1
@.str.131 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"Leap\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"Expires\00", align 1
@leap_line_codes = internal constant [3 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.132, i32 3, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.133, i32 4, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.135 = private unnamed_addr constant [5 x i8] c"Rule\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"Zone\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@zi_line_codes = internal constant [4 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.135, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.136, i32 1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.137, i32 2, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.140 = private unnamed_addr constant [43 x i8] c"\22%s\22 is undocumented; use \22last%s\22 instead\00", align 1
@.str.141 = private unnamed_addr constant [35 x i8] c"\22%s\22 is ambiguous in pre-2017c zic\00", align 1
@inrule.r = internal global %struct.rule zeroinitializer, align 8
@.str.142 = private unnamed_addr constant [36 x i8] c"wrong number of fields on Rule line\00", align 1
@.str.143 = private unnamed_addr constant [23 x i8] c"Invalid rule name \22%s\22\00", align 1
@max_abbrvar_len = internal unnamed_addr global i32 7, align 4
@nrules_alloc = internal unnamed_addr global i64 0, align 8
@.str.144 = private unnamed_addr constant [36 x i8] c"wrong number of fields on Zone line\00", align 1
@.str.145 = private unnamed_addr constant [52 x i8] c"\22Zone %s\22 line and -l option are mutually exclusive\00", align 1
@.str.146 = private unnamed_addr constant [52 x i8] c"\22Zone %s\22 line and -p option are mutually exclusive\00", align 1
@.str.147 = private unnamed_addr constant [45 x i8] c"duplicate zone name %s (file \22%s\22, line %ld)\00", align 1
@.str.148 = private unnamed_addr constant [36 x i8] c"wrong number of fields on Link line\00", align 1
@.str.149 = private unnamed_addr constant [32 x i8] c"blank TARGET field on Link line\00", align 1
@nlinks_alloc = internal unnamed_addr global i64 0, align 8
@.str.150 = private unnamed_addr constant [36 x i8] c"wrong number of fields on Leap line\00", align 1
@.str.151 = private unnamed_addr constant [46 x i8] c"invalid Rolling/Stationary field on Leap line\00", align 1
@.str.153 = private unnamed_addr constant [38 x i8] c"invalid CORRECTION field on Leap line\00", align 1
@.str.154 = private unnamed_addr constant [21 x i8] c"invalid leaping year\00", align 1
@leapseen = internal unnamed_addr global i1 false, align 1
@leapmaxyear = internal unnamed_addr global i64 0, align 8
@leapminyear = internal unnamed_addr global i64 0, align 8
@.str.155 = private unnamed_addr constant [15 x i8] c"time too small\00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"time too large\00", align 1
@.str.157 = private unnamed_addr constant [27 x i8] c"leap second precedes Epoch\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"Rolling\00", align 1
@.str.159 = private unnamed_addr constant [11 x i8] c"Stationary\00", align 1
@leap_types = internal constant [3 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.158, i32 1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.159, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } zeroinitializer], align 16
@leapcnt = internal unnamed_addr global i32 0, align 4
@.str.161 = private unnamed_addr constant [22 x i8] c"too many leap seconds\00", align 1
@trans = internal unnamed_addr global [50 x i64] zeroinitializer, align 16
@corr = internal unnamed_addr global [50 x i64] zeroinitializer, align 16
@roll = internal unnamed_addr global [50 x i8] zeroinitializer, align 16
@.str.162 = private unnamed_addr constant [39 x i8] c"wrong number of fields on Expires line\00", align 1
@leapexpires = internal unnamed_addr global i64 -1, align 8
@.str.163 = private unnamed_addr constant [23 x i8] c"multiple Expires lines\00", align 1
@timecnt = internal unnamed_addr global i64 0, align 8
@typecnt = internal unnamed_addr global i32 0, align 4
@charcnt = internal unnamed_addr global i32 0, align 4
@max_year = internal unnamed_addr global i64 0, align 8
@min_year = internal unnamed_addr global i64 0, align 8
@.str.164 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.165 = private unnamed_addr constant [39 x i8] c"no POSIX environment variable for zone\00", align 1
@.str.166 = private unnamed_addr constant [52 x i8] c"%s: pre-%d clients may mishandle distant timestamps\00", align 1
@.str.167 = private unnamed_addr constant [27 x i8] c"two rules for same instant\00", align 1
@attypes = internal unnamed_addr global ptr null, align 8
@.str.168 = private unnamed_addr constant [69 x i8] c"cannot determine time zone abbreviation to use just after until time\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c":%02d\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"J%d\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"M%d.%d.%d\00", align 1
@.str.173 = private unnamed_addr constant [41 x i8] c"%%z UT offset magnitude exceeds 99:59:59\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"%z\00", align 1
@.str.175 = private unnamed_addr constant [23 x i8] c"UT offset out of range\00", align 1
@chars = internal global [50 x i8] zeroinitializer, align 16
@utoffs = internal unnamed_addr global [256 x i64] zeroinitializer, align 16
@isdsts = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@desigidx = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@ttisstds = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@ttisuts = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@.str.176 = private unnamed_addr constant [26 x i8] c"too many local time types\00", align 1
@.str.177 = private unnamed_addr constant [49 x i8] c"Local time zone must be set--see zic manual page\00", align 1
@.str.178 = private unnamed_addr constant [51 x i8] c"time zone abbreviation has fewer than 3 characters\00", align 1
@.str.179 = private unnamed_addr constant [47 x i8] c"time zone abbreviation has too many characters\00", align 1
@.str.180 = private unnamed_addr constant [51 x i8] c"time zone abbreviation differs from POSIX standard\00", align 1
@.str.181 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.182 = private unnamed_addr constant [47 x i8] c"too many, or too long, time zone abbreviations\00", align 1
@timecnt_alloc = internal unnamed_addr global i64 0, align 8
@writezone.tzh = internal global %struct.tzhead zeroinitializer, align 4
@.str.183 = private unnamed_addr constant [58 x i8] c"reference clients mishandle more than %d transition times\00", align 1
@.str.184 = private unnamed_addr constant [63 x i8] c"pre-2014 clients may mishandle more than 1200 transition times\00", align 1
@.str.185 = private unnamed_addr constant [29 x i8] c"%s: Cannot remove %s/%s: %s\0A\00", align 1
@.str.186 = private unnamed_addr constant [29 x i8] c"%s: Cannot create %s/%s: %s\0A\00", align 1
@.str.187 = private unnamed_addr constant [26 x i8] c"too many transition times\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c"%s\09%ld%s\0A\00", align 1
@.str.190 = private unnamed_addr constant [3 x i8] c"\09D\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.192 = private unnamed_addr constant [19 x i8] c"alignment overflow\00", align 1
@.str.193 = private unnamed_addr constant [32 x i8] c"Leap seconds too close together\00", align 1
@.str.194 = private unnamed_addr constant [41 x i8] c"\22#expires\22 is obsolescent; use \22Expires\22\00", align 1
@.str.195 = private unnamed_addr constant [45 x i8] c"last Leap time does not precede Expires time\00", align 1
@switch.table.rulesub = private unnamed_addr constant [20 x i8] [i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 1, i8 poison, i8 0, i8 poison, i8 poison, i8 1], align 1
@switch.table.rulesub.1 = private unnamed_addr constant [20 x i8] [i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 1, i8 poison, i8 0, i8 poison, i8 poison, i8 1], align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  %i.b = alloca [4 x i8], align 1                 ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [4 x i8], align 1                 ; 11 uses
  %i.e = alloca [4 x i8], align 1                 ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [4 x i8], align 1                 ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [4 x i8], align 1                 ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [256 x i8], align 16              ; 24 uses
  %i.m = alloca [256 x i32], align 16             ; 7 uses
  %i.n = alloca [50 x i8], align 16               ; 7 uses
  %i.o = alloca [50 x i32], align 16              ; 9 uses
  %i.p = alloca [8 x i8], align 1                 ; 11 uses
  %i.q = alloca [8 x i8], align 1                 ; 11 uses
  %i.r = alloca [8 x i8], align 1                 ; 11 uses
  %2 = alloca %struct.rule, align 8               ; 12 uses
  %3 = alloca %struct.rule, align 8               ; 12 uses
  %4 = alloca %struct.rule, align 8               ; 9 uses
  %i.s = alloca ptr, align 8                      ; 8 uses
  %i.t = alloca ptr, align 8                      ; 6 uses
  %i.u = tail call i32 @umask(i32 noundef 18) #25
  %i.v = or i32 %i.u, 18
  %i.w = tail call i32 @umask(i32 noundef %i.v) #25 ; 0 uses
  %i.x = load ptr, ptr %1, align 8
  store ptr %i.x, ptr @progname, align 8
  %i.y = icmp sgt i32 %0, 1
  br i1 %i.y, label %.lr.ph.preheader, label %.preheader86.preheader

.preheader86.preheader:                           ; preds = %bb.b, %bb.a
  br label %.preheader86

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader86.preheader, label %.lr.ph, !llvm.loop !8

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(10) @.str) #26
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.ad = tail call i32 (ptr, ...) @pg_printf(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #25 ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8          ; 2 uses
  %i.af = tail call i32 @ferror(ptr noundef %i.ae) #25
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.d, label %.thread15.i

bb.d:                                             ; preds = %bb.c
  %i.ag = tail call i32 @fclose(ptr noundef %i.ae)
  %.not10.i = icmp eq i32 %i.ag, 0
  br i1 %.not10.i, label %close_file.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call ptr @__errno_location() #27
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = tail call ptr @pg_strerror(i32 noundef %i.ai) #25 ; 2 uses
  %.not11.i = icmp eq ptr %i.aj, null
  br i1 %.not11.i, label %close_file.exit, label %.thread15.i

.thread15.i:                                      ; preds = %bb.e, %bb.c
  %i.ak = phi ptr [ %i.aj, %bb.e ], [ @.str.24, %bb.c ]
  %i.al = load ptr, ptr @stderr, align 8
  %i.am = load ptr, ptr @progname, align 8
  %i.an = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.25, ptr noundef %i.am, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.ak) #25 ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.f:                                             ; preds = %.lr.ph
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(7) @.str.3) #26
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr @stdout, align 8
  tail call fastcc void @usage(ptr noundef %i.aq, i32 noundef 0) #29
  unreachable

.preheader86:                                     ; preds = %.preheader86.backedge, %.preheader86.preheader
  %.0 = phi i1 [ false, %.preheader86.preheader ], [ %.0.be, %.preheader86.backedge ] ; 13 uses
  %i.ar = call i32 @getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #25
  switch i32 %i.ar, label %bb.h [
    i32 -1, label %bb.ay
    i32 98, label %bb.i
    i32 100, label %bb.r
    i32 108, label %bb.u
    i32 112, label %bb.x
    i32 116, label %bb.aa
    i32 121, label %bb.ad
    i32 76, label %bb.ae
    i32 118, label %bb.ah
    i32 80, label %bb.ai
    i32 114, label %bb.aj
    i32 115, label %bb.ax
  ]

bb.h:                                             ; preds = %.preheader86
  %i.as = load ptr, ptr @stderr, align 8
  call fastcc void @usage(ptr noundef %i.as, i32 noundef 1) #29
  unreachable

bb.i:                                             ; preds = %.preheader86
  %i.at = load ptr, ptr @optarg, align 8          ; 3 uses
  %i.au = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(5) @.str.5) #26
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr @bloat, align 4
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @error(ptr noundef nonnull @.str.6)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 -1, ptr @bloat, align 4
  br label %.preheader86.backedge

bb.m:                                             ; preds = %bb.i
  %i.ay = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(4) @.str.7) #26
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ba = load i32, ptr @bloat, align 4
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @error(ptr noundef nonnull @.str.6)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i32 1, ptr @bloat, align 4
  br label %.preheader86.backedge

bb.q:                                             ; preds = %bb.m
  call void (ptr, ...) @error(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.at)
  br label %.preheader86.backedge

bb.r:                                             ; preds = %.preheader86
  %i.bc = load ptr, ptr @directory, align 8
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.be = load ptr, ptr @optarg, align 8
  %i.bf = call noalias ptr @strdup(ptr noundef %i.be) #25
  store ptr %i.bf, ptr @directory, align 8
  br label %.preheader86.backedge

bb.t:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr @stderr, align 8
  %i.bh = load ptr, ptr @progname, align 8
  %i.bi = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.bg, ptr noundef nonnull @.str.9, ptr noundef %i.bh) #25 ; 0 uses
  br label %close_file.exit

bb.u:                                             ; preds = %.preheader86
  %i.bj = load ptr, ptr @lcltime, align 8
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr @optarg, align 8
  %i.bm = call noalias ptr @strdup(ptr noundef %i.bl) #25
  store ptr %i.bm, ptr @lcltime, align 8
  br label %.preheader86.backedge

bb.w:                                             ; preds = %bb.u
  %i.bn = load ptr, ptr @stderr, align 8
  %i.bo = load ptr, ptr @progname, align 8
  %i.bp = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.10, ptr noundef %i.bo) #25 ; 0 uses
  br label %close_file.exit

bb.x:                                             ; preds = %.preheader86
  %i.bq = load ptr, ptr @psxrules, align 8
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bs = load ptr, ptr @optarg, align 8
  %i.bt = call noalias ptr @strdup(ptr noundef %i.bs) #25
  store ptr %i.bt, ptr @psxrules, align 8
  br label %.preheader86.backedge

bb.z:                                             ; preds = %bb.x
  %i.bu = load ptr, ptr @stderr, align 8
  %i.bv = load ptr, ptr @progname, align 8
  %i.bw = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.bu, ptr noundef nonnull @.str.11, ptr noundef %i.bv) #25 ; 0 uses
  br label %close_file.exit

bb.aa:                                            ; preds = %.preheader86
  %i.bx = load ptr, ptr @tzdefault, align 8
  %.not58 = icmp eq ptr %i.bx, null
  br i1 %.not58, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = load ptr, ptr @stderr, align 8
end_hunk_0
begin_hunk_1_@main:bb.a
..loopexit_crit_edge.us.i:                        ; preds = %bb.cj
  %i.jg = icmp slt i64 %.0.us.lcssa.i, %i.ig
  br i1 %i.jg, label %.lr.ph78.split.us.i, label %.lr.ph80.i.preheader, !llvm.loop !17

bb.ck:                                            ; preds = %bb.ck, %.lr.ph72.i.new
  %.270.i = phi i64 [ 0, %.lr.ph72.i.new ], [ %i.jx, %bb.ck ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph72.i.new ], [ %niter.next.7, %bb.ck ]
  %i.jh = getelementptr inbounds nuw [200 x i8], ptr %i.ih, i64 %.270.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i8 0, i64 16, i1 false)
  %i.jj = getelementptr inbounds nuw [200 x i8], ptr %i.ih, i64 %.270.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, i8 0, i64 16, i1 false)
  %i.jl = getelementptr inbounds nuw [200 x i8], ptr %i.ih, i64 %.270.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i8 0, i64 16, i1 false)
  %i.jn = getelementptr inbounds nuw [200 x i8], ptr %i.ih, i64 %.270.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, i8 0, i64 16, i1 false)
  %i.jp = getelementptr inbounds nuw [200 x i8], ptr %i.ih, i64 %.270.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 864
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jq, i8 0, i64 16, i1 false)
  %i.jr = getelementptr inbounds nuw [200 x i8], ptr %i.ih, i64 %.270.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 1064
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.js, i8 0, i64 16, i1 false)
  %i.jt = getelementptr inbounds nuw [200 x i8], ptr %i.ih, i64 %.270.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 1264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ju, i8 0, i64 16, i1 false)
  %i.jv = getelementptr inbounds nuw [200 x i8], ptr %i.ih, i64 %.270.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 1464
  %i.jx = add nuw nsw i64 %.270.i, 8              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jw, i8 0, i64 16, i1 false)
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader60.i.unr-lcssa, label %bb.ck, !llvm.loop !18

.lr.ph80.i:                                       ; preds = %.lr.ph80.i.preheader, %bb.cr
  %.479.i = phi i64 [ %i.ky, %bb.cr ], [ 0, %.lr.ph80.i.preheader ] ; 2 uses
  %i.jy = load ptr, ptr @zones, align 8
  %i.jz = getelementptr inbounds nuw [200 x i8], ptr %i.jy, i64 %.479.i ; 7 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 72
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %bb.cl, label %bb.cr

bb.cl:                                            ; preds = %.lr.ph80.i
  %i.kd = load ptr, ptr %i.jz, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kf = load i64, ptr %i.ke, align 8
  store ptr %i.kd, ptr @filename, align 8
  store i64 %i.kf, ptr @linenum, align 8
  store ptr null, ptr @rfilename, align 8
  store i64 -1, ptr @rlinenum, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kh = load ptr, ptr %i.kg, align 8            ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jz, i64 49
  %i.kj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kh) #26 ; 2 uses
  %.not.i.i63 = icmp eq i64 %i.kj, 0
  br i1 %.not.i.i63, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kj
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -1 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1
  switch i8 %i.km, label %bb.cp [
    i8 100, label %bb.co
    i8 115, label %bb.cn
  ]

bb.cn:                                            ; preds = %bb.cm
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.kn = phi i1 [ false, %bb.cn ], [ true, %bb.cm ]
  store i8 0, ptr %i.kl, align 1
  %i.ko = call fastcc i64 @gethms(ptr noundef nonnull %i.kh, ptr noundef nonnull @.str.53)
  br label %getsave.exit.i

bb.cp:                                            ; preds = %bb.cm, %bb.cl
  %i.kp = call fastcc i64 @gethms(ptr noundef nonnull %i.kh, ptr noundef nonnull @.str.53) ; 2 uses
  %i.kq = icmp ne i64 %i.kp, 0
  br label %getsave.exit.i

getsave.exit.i:                                   ; preds = %bb.cp, %bb.co
  %i.kr = phi i64 [ %i.kp, %bb.cp ], [ %i.ko, %bb.co ]
  %i.ks = phi i1 [ %i.kq, %bb.cp ], [ %i.kn, %bb.co ]
  %i.kt = zext i1 %i.ks to i8
  store i8 %i.kt, ptr %i.ki, align 1
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jz, i64 56
  store i64 %i.kr, ptr %i.ku, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.kw = load i8, ptr %i.kv, align 8
  %i.kx = icmp eq i8 %i.kw, 115
  br i1 %i.kx, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %getsave.exit.i
  call void (ptr, ...) @error(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %getsave.exit.i, %.lr.ph80.i
  %i.ky = add nuw nsw i64 %.479.i, 1              ; 2 uses
  %i.kz = load i64, ptr @nzones, align 8
  %i.la = icmp slt i64 %i.ky, %i.kz
  br i1 %i.la, label %.lr.ph80.i, label %._crit_edge81.i, !llvm.loop !19

._crit_edge81.i:                                  ; preds = %bb.cr, %.loopexit61.thread.i, %.loopexit61.i
  %.b.i = load i1, ptr @errors, align 1
  br i1 %.b.i, label %bb.cs, label %associate.exit

bb.cs:                                            ; preds = %._crit_edge81.i
  call void @exit(i32 noundef 1) #28
  unreachable

associate.exit:                                   ; preds = %._crit_edge81.i
  %i.lb = load ptr, ptr @directory, align 8       ; 4 uses
  %i.lc = call i32 @chdir(ptr noundef %i.lb) #25
  %.not.i68 = icmp eq i32 %i.lc, 0
  br i1 %.not.i68, label %change_directory.exit, label %bb.ct

bb.ct:                                            ; preds = %associate.exit
  %i.ld = tail call ptr @__errno_location() #27   ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4            ; 2 uses
  %i.lf = icmp eq i32 %i.le, 2
  br i1 %i.lf, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @mkdirs(ptr noundef %i.lb, i1 noundef zeroext false)
  %i.lg = call i32 @chdir(ptr noundef %i.lb) #25
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %change_directory.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.li = load i32, ptr %i.ld, align 4
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.ct
  %.0.i69 = phi i32 [ %i.le, %bb.ct ], [ %i.li, %bb.cv ] ; 2 uses
  %.not7.i = icmp eq i32 %.0.i69, 0
  br i1 %.not7.i, label %change_directory.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lj = load ptr, ptr @stderr, align 8
  %i.lk = load ptr, ptr @progname, align 8
  %i.ll = call ptr @pg_strerror(i32 noundef %.0.i69) #25
  %i.lm = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.lj, ptr noundef nonnull @.str.35, ptr noundef %i.lk, ptr noundef %i.lb, ptr noundef %i.ll) #25 ; 0 uses
  call void @exit(i32 noundef 1) #28
  unreachable

change_directory.exit:                            ; preds = %associate.exit, %bb.cu, %bb.cw
  %i.ln = load i64, ptr @nzones, align 8          ; 2 uses
  %i.lo = icmp sgt i64 %i.ln, 0
  br i1 %i.lo, label %.preheader85.lr.ph, label %.preheader84

.preheader85.lr.ph:                               ; preds = %change_directory.exit
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 73
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 74
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 73
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.mh = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.mi = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.mj = getelementptr inbounds nuw i8, ptr %i.q, i64 3 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 5 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.mn = getelementptr inbounds nuw i8, ptr %i.q, i64 7
  %i.mo = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.mp = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.mq = getelementptr inbounds nuw i8, ptr %i.p, i64 3 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.p, i64 5 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.mu = getelementptr inbounds nuw i8, ptr %i.p, i64 7
  %i.mv = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.mw = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.mx = getelementptr inbounds nuw i8, ptr %i.r, i64 3 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.r, i64 5 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.nb = getelementptr inbounds nuw i8, ptr %i.r, i64 7
  %i.nc = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.nd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ne = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.nf = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ng = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.nh = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.ni = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.nj = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.nl = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.nm = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.nn = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.no = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.np = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.nt = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.nu = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br label %.preheader85

.preheader85:                                     ; preds = %.preheader85.lr.ph, %outzone.exit
  %i.ny = phi i64 [ %i.ln, %.preheader85.lr.ph ], [ %i.btw, %outzone.exit ]
  %.043182 = phi i64 [ 0, %.preheader85.lr.ph ], [ %.041.lcssa, %outzone.exit ] ; 5 uses
  %i.nz = load ptr, ptr @zones, align 8           ; 3 uses
  %i.oa = add nsw i64 %.043182, 1
  %smax = call i64 @llvm.smax.i64(i64 %i.ny, i64 %i.oa) ; 3 uses
  %i.ob = add nsw i64 %smax, -1                   ; 2 uses
  %exitcond289.not680 = icmp eq i64 %.043182, %i.ob
  br i1 %exitcond289.not680, label %.critedge, label %.lr.ph682

.preheader84:                                     ; preds = %outzone.exit, %change_directory.exit
  %i.oc = load i64, ptr @nlinks, align 8
  %i.od = icmp sgt i64 %i.oc, 0
  br i1 %i.od, label %.lr.ph187, label %._crit_edge188

bb.cy:                                            ; preds = %.lr.ph682
  %exitcond289.not = icmp eq i64 %.041, %i.ob
  br i1 %exitcond289.not, label %.critedge, label %.lr.ph682, !llvm.loop !20

.lr.ph682:                                        ; preds = %.preheader85, %bb.cy
  %.041.in681 = phi i64 [ %.041, %bb.cy ], [ %.043182, %.preheader85 ]
  %.041 = add nsw i64 %.041.in681, 1              ; 4 uses
  %i.oe = getelementptr inbounds [200 x i8], ptr %i.nz, i64 %.041
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = icmp eq ptr %i.og, null
  br i1 %i.oh, label %bb.cy, label %..critedge_crit_edge684, !llvm.loop !20

..critedge_crit_edge684:                          ; preds = %.lr.ph682
  br label %.critedge, !llvm.loop !20

.critedge:                                        ; preds = %bb.cy, %..critedge_crit_edge684, %.preheader85
  %.041.lcssa = phi i64 [ %smax, %.preheader85 ], [ %.041, %..critedge_crit_edge684 ], [ %smax, %bb.cy ] ; 4 uses
  %i.oi = getelementptr inbounds [200 x i8], ptr %i.nz, i64 %.043182 ; 5 uses
  %i.oj = sub i64 %.041.lcssa, %.043182           ; 6 uses
  %i.ok = load i32, ptr @max_format_len, align 4
  %i.ol = add i32 %i.ok, 2
  %i.om = load i32, ptr @max_abbrvar_len, align 4
  %i.on = add i32 %i.ol, %i.om                    ; 2 uses
  %i.oo = shl i32 %i.on, 1
  %i.op = add i32 %i.on, 1
  %i.oq = sext i32 %i.op to i64                   ; 2 uses
  %i.or = call noalias ptr @malloc(i64 noundef %i.oq) #30 ; 18 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %bb.cz, label %emalloc.exit.i

bb.cz:                                            ; preds = %.critedge
  %i.ot = tail call ptr @__errno_location() #27
  %i.ou = load i32, ptr %i.ot, align 4
  %i.ov = call ptr @pg_strerror(i32 noundef %i.ou) #25
  call fastcc void @memory_exhausted(ptr noundef %i.ov) #29
  unreachable

emalloc.exit.i:                                   ; preds = %.critedge
  %i.ow = call noalias ptr @malloc(i64 noundef %i.oq) #30 ; 7 uses
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %bb.da, label %emalloc.exit348.i

bb.da:                                            ; preds = %emalloc.exit.i
  %i.oy = tail call ptr @__errno_location() #27
  %i.oz = load i32, ptr %i.oy, align 4
  %i.pa = call ptr @pg_strerror(i32 noundef %i.oz) #25
  call fastcc void @memory_exhausted(ptr noundef %i.pa) #29
  unreachable

emalloc.exit348.i:                                ; preds = %emalloc.exit.i
  %i.pb = add i32 %i.oo, 46
  %i.pc = sext i32 %i.pb to i64
  %i.pd = call noalias ptr @malloc(i64 noundef %i.pc) #30 ; 15 uses
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %bb.db, label %emalloc.exit349.i

bb.db:                                            ; preds = %emalloc.exit348.i
  %i.pf = tail call ptr @__errno_location() #27
  %i.pg = load i32, ptr %i.pf, align 4
  %i.ph = call ptr @pg_strerror(i32 noundef %i.pg) #25
  call fastcc void @memory_exhausted(ptr noundef %i.ph) #29
  unreachable

emalloc.exit349.i:                                ; preds = %emalloc.exit348.i
  store i64 0, ptr @timecnt, align 8
  store i32 0, ptr @typecnt, align 4
  store i32 0, ptr @charcnt, align 4
  %i.pi = icmp eq i64 %i.oj, 1                    ; 2 uses
  store i64 1970, ptr @max_year, align 8
  store i64 1970, ptr @min_year, align 8
  %.b333.i = load i1, ptr @leapseen, align 1
  br i1 %.b333.i, label %bb.dc, label %updateminmax.exit350.i

bb.dc:                                            ; preds = %emalloc.exit349.i
  %i.pj = load i64, ptr @leapminyear, align 8     ; 5 uses
  %i.pk = icmp slt i64 %i.pj, 1970
  br i1 %i.pk, label %updateminmax.exit.sink.split.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.not1100.i = icmp eq i64 %i.pj, 1970
  br i1 %.not1100.i, label %updateminmax.exit.i, label %updateminmax.exit.sink.split.i

updateminmax.exit.sink.split.i:                   ; preds = %bb.dd, %bb.dc
  %min_year.sink.i = phi ptr [ @min_year, %bb.dc ], [ @max_year, %bb.dd ]
  %.ph1096.i = phi i64 [ %i.pj, %bb.dc ], [ 1970, %bb.dd ]
  %.ph1097.i = phi i64 [ 1970, %bb.dc ], [ %i.pj, %bb.dd ]
  store i64 %i.pj, ptr %min_year.sink.i, align 8
  br label %updateminmax.exit.i

updateminmax.exit.i:                              ; preds = %updateminmax.exit.sink.split.i, %bb.dd
  %i.pl = phi i64 [ 1970, %bb.dd ], [ %.ph1096.i, %updateminmax.exit.sink.split.i ] ; 2 uses
  %i.pm = phi i64 [ 1970, %bb.dd ], [ %.ph1097.i, %updateminmax.exit.sink.split.i ] ; 2 uses
  %i.pn = load i64, ptr @leapmaxyear, align 8     ; 2 uses
  %i.po = icmp ne i64 %i.pn, 9223372036854775807
  %i.pp = zext i1 %i.po to i64
  %i.pq = add i64 %i.pn, %i.pp                    ; 6 uses
  %i.pr = icmp sgt i64 %i.pl, %i.pq
  br i1 %i.pr, label %bb.de, label %bb.df

bb.de:                                            ; preds = %updateminmax.exit.i
  store i64 %i.pq, ptr @min_year, align 8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %updateminmax.exit.i
  %min_year.promoted673836.i = phi i64 [ %i.pq, %bb.de ], [ %i.pl, %updateminmax.exit.i ] ; 2 uses
  %i.ps = icmp slt i64 %i.pm, %i.pq
  br i1 %i.ps, label %bb.dg, label %updateminmax.exit350.i

bb.dg:                                            ; preds = %bb.df
  store i64 %i.pq, ptr @max_year, align 8
  br label %updateminmax.exit350.i

updateminmax.exit350.i:                           ; preds = %bb.dg, %bb.df, %emalloc.exit349.i
  %min_year.promoted673.i = phi i64 [ %min_year.promoted673836.i, %bb.dg ], [ %min_year.promoted673836.i, %bb.df ], [ 1970, %emalloc.exit349.i ]
  %max_year.promoted683.i = phi i64 [ %i.pq, %bb.dg ], [ %i.pm, %bb.df ], [ 1970, %emalloc.exit349.i ]
  %i.pt = icmp sgt i64 %i.oj, 0                   ; 2 uses
  br i1 %i.pt, label %.lr.ph695.i, label %._crit_edge696.i

.lr.ph695.i:                                      ; preds = %updateminmax.exit350.i
  %i.pu = add nsw i64 %i.oj, -1
  br label %bb.dh

bb.dh:                                            ; preds = %._crit_edge.i79, %.lr.ph695.i
  %.0285694.i = phi i1 [ %i.pi, %.lr.ph695.i ], [ %.1286.lcssa.i, %._crit_edge.i79 ] ; 2 uses
  %.0322693.i = phi i64 [ 0, %.lr.ph695.i ], [ %i.ri, %._crit_edge.i79 ] ; 3 uses
  %min_year.promoted682692.i = phi i64 [ %min_year.promoted673.i, %.lr.ph695.i ], [ %min_year.promoted674.i, %._crit_edge.i79 ] ; 3 uses
  %max_year.promoted684691.i = phi i64 [ %max_year.promoted683.i, %.lr.ph695.i ], [ %max_year.promoted685.i, %._crit_edge.i79 ] ; 3 uses
  %i.pv = getelementptr inbounds nuw [200 x i8], ptr %i.oi, i64 %.0322693.i ; 3 uses
  %i.pw = icmp slt i64 %.0322693.i, %i.pu
  br i1 %i.pw, label %bb.di, label %updateminmax.exit351.i

bb.di:                                            ; preds = %bb.dh
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 104
  %i.py = load i64, ptr %i.px, align 8            ; 6 uses
  %i.pz = icmp sgt i64 %min_year.promoted682692.i, %i.py
  br i1 %i.pz, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i64 %i.py, ptr @min_year, align 8
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %min_year.promoted681.i = phi i64 [ %i.py, %bb.dj ], [ %min_year.promoted682692.i, %bb.di ] ; 2 uses
  %i.qa = icmp slt i64 %max_year.promoted684691.i, %i.py
  br i1 %i.qa, label %bb.dl, label %updateminmax.exit351.i

bb.dl:                                            ; preds = %bb.dk
  store i64 %i.py, ptr @max_year, align 8
  br label %updateminmax.exit351.i

updateminmax.exit351.i:                           ; preds = %bb.dl, %bb.dk, %bb.dh
  %max_year.promoted690.i = phi i64 [ %i.py, %bb.dl ], [ %max_year.promoted684691.i, %bb.dk ], [ %max_year.promoted684691.i, %bb.dh ] ; 3 uses
  %min_year.promoted680.i = phi i64 [ %min_year.promoted681.i, %bb.dl ], [ %min_year.promoted681.i, %bb.dk ], [ %min_year.promoted682692.i, %bb.dh ] ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 72
  %i.qc = load i64, ptr %i.qb, align 8            ; 2 uses
  %i.qd = icmp sgt i64 %i.qc, 0
  br i1 %i.qd, label %.lr.ph.i80, label %._crit_edge.i79

.lr.ph.i80:                                       ; preds = %updateminmax.exit351.i
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pv, i64 64
  %i.qf = load ptr, ptr %i.qe, align 8
  br label %bb.dm

bb.dm:                                            ; preds = %.thread.i81, %.lr.ph.i80
  %max_year.promoted689.i = phi i64 [ %max_year.promoted690.i, %.lr.ph.i80 ], [ %max_year.promoted686.i, %.thread.i81 ] ; 3 uses
  %min_year.promoted679.i = phi i64 [ %min_year.promoted680.i, %.lr.ph.i80 ], [ %min_year.promoted675.i, %.thread.i81 ] ; 3 uses
  %.1286672.i = phi i1 [ %.0285694.i, %.lr.ph.i80 ], [ %.2287.i, %.thread.i81 ]
  %.0319671.i = phi i64 [ 0, %.lr.ph.i80 ], [ %i.rh, %.thread.i81 ] ; 2 uses
  %i.qg = phi i64 [ %min_year.promoted680.i, %.lr.ph.i80 ], [ %i.rg, %.thread.i81 ] ; 4 uses
  %i.qh = phi i64 [ %max_year.promoted690.i, %.lr.ph.i80 ], [ %i.rf, %.thread.i81 ] ; 4 uses
  %i.qi = getelementptr inbounds nuw [112 x i8], ptr %i.qf, i64 %.0319671.i ; 5 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.qk = load i8, ptr %i.qj, align 8, !range !6, !noundef !7
  %i.ql = trunc nuw i8 %i.qk to i1
  br i1 %i.ql, label %bb.dn, label %updateminmax.exit352.thread.i

bb.dn:                                            ; preds = %bb.dm
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qn = load i64, ptr %i.qm, align 8            ; 8 uses
end_hunk_1
begin_hunk_2_@main:bb.a
  %.3364.i.i = phi i32 [ 1, %bb.oi ], [ %.0361.lcssa.i.i, %._crit_edge665.i.i ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 5), i8 0, i64 15, i1 false)
  store i32 1718180436, ptr @writezone.tzh, align 4
  store i8 %i.apl, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 4), align 4
  %i.bit = lshr i32 %.3368.i.i, 24
  %i.biu = trunc nuw i32 %i.bit to i8
  store i8 %i.biu, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 20), align 4
  %i.biv = lshr i32 %.3368.i.i, 16
  %i.biw = trunc i32 %i.biv to i8
  store i8 %i.biw, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 21), align 1
  %i.bix = lshr i32 %.3368.i.i, 8
  %i.biy = trunc i32 %i.bix to i8
  store i8 %i.biy, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 22), align 2
  %i.biz = trunc i32 %.3368.i.i to i8
  store i8 %i.biz, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 23), align 1
  %i.bja = lshr i32 %.3372.i.i, 24
  %i.bjb = trunc nuw i32 %i.bja to i8
  store i8 %i.bjb, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 24), align 4
  %i.bjc = lshr i32 %.3372.i.i, 16
  %i.bjd = trunc i32 %i.bjc to i8
  store i8 %i.bjd, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 25), align 1
  %i.bje = lshr i32 %.3372.i.i, 8
  %i.bjf = trunc i32 %i.bje to i8
  store i8 %i.bjf, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 26), align 2
  %i.bjg = trunc i32 %.3372.i.i to i8
  store i8 %i.bjg, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 27), align 1
  %i.bjh = lshr i32 %.1385.i.i, 24
  %i.bji = trunc nuw i32 %i.bjh to i8
  store i8 %i.bji, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 28), align 4
  %i.bjj = lshr i32 %.1385.i.i, 16
  %i.bjk = trunc i32 %i.bjj to i8
  store i8 %i.bjk, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 29), align 1
  %i.bjl = lshr i32 %.1385.i.i, 8
  %i.bjm = trunc i32 %i.bjl to i8
  store i8 %i.bjm, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 30), align 2
  %i.bjn = trunc i32 %.1385.i.i to i8
  store i8 %i.bjn, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 31), align 1
  %i.bjo = trunc nuw i8 %.3381.i.i to i1          ; 4 uses
  %i.bjp = zext i1 %.1377.shrunk.i.i to i64
  %i.bjq = add nuw nsw i64 %i.bjp, %.pre753.i.i
  %i.bjr = add i64 %i.bjq, %.2390.i.i             ; 4 uses
  %i.bjs = lshr i64 %i.bjr, 24
  %i.bjt = trunc i64 %i.bjs to i8
  store i8 %i.bjt, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 32), align 4
  %i.bju = lshr i64 %i.bjr, 16
  %i.bjv = trunc i64 %i.bju to i8
  store i8 %i.bjv, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 33), align 1
  %i.bjw = lshr i64 %i.bjr, 8
  %i.bjx = trunc i64 %i.bjw to i8
  store i8 %i.bjx, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 34), align 2
  %i.bjy = trunc i64 %i.bjr to i8
  store i8 %i.bjy, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 35), align 1
  %i.bjz = lshr i32 %.2375.i.i, 24
  %i.bka = trunc nuw i32 %i.bjz to i8
  store i8 %i.bka, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 36), align 4
  %i.bkb = lshr i32 %.2375.i.i, 16
  %i.bkc = trunc i32 %i.bkb to i8
  store i8 %i.bkc, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 37), align 1
  %i.bkd = lshr i32 %.2375.i.i, 8
  %i.bke = trunc i32 %i.bkd to i8
  store i8 %i.bke, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 38), align 2
  %i.bkf = trunc i32 %.2375.i.i to i8
  store i8 %i.bkf, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 39), align 1
  %i.bkg = sext i32 %.3364.i.i to i64
  %i.bkh = lshr i32 %.3364.i.i, 24
  %i.bki = trunc nuw i32 %i.bkh to i8
  store i8 %i.bki, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 40), align 4
  %i.bkj = lshr i32 %.3364.i.i, 16
  %i.bkk = trunc i32 %i.bkj to i8
  store i8 %i.bkk, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 41), align 1
  %i.bkl = lshr i32 %.3364.i.i, 8
  %i.bkm = trunc i32 %i.bkl to i8
  store i8 %i.bkm, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 42), align 2
  %i.bkn = trunc i32 %.3364.i.i to i8
  store i8 %i.bkn, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 43), align 1
  %i.bko = call i64 @fwrite(ptr noundef nonnull @writezone.tzh, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %char.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 4), align 4
  %chari.i.i = sext i8 %char.i.i to i32
  %fputc.i.i = call i32 @fputc(i32 %chari.i.i, ptr nonnull %.1.i403.i) ; 0 uses
  %i.bkp = call i64 @fwrite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 5), i64 noundef 15, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bkq = call i64 @fwrite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 20), i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bkr = call i64 @fwrite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 24), i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bks = call i64 @fwrite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 28), i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bkt = call i64 @fwrite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 32), i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bku = call i64 @fwrite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 36), i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bkv = call i64 @fwrite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 40), i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  br i1 %i.azb, label %bb.ol, label %bb.oj

bb.oj:                                            ; preds = %._crit_edge665._crit_edge.i.i
  %i.bkw = load i32, ptr @bloat, align 4
  %i.bkx = icmp sgt i32 %i.bkw, -1
  br i1 %i.bkx, label %.thread570.i.i, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  store i32 0, ptr %i.k, align 4
  %i.bky = call i64 @fwrite(ptr noundef nonnull %i.k, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  %i.bkz = call i32 @putc(i32 noundef 0, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bla = call i32 @putc(i32 noundef 0, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.blb = call i32 @putc(i32 noundef 0, ptr noundef nonnull %.1.i403.i) ; 0 uses
  br label %.loopexit584.i.i

bb.ol:                                            ; preds = %._crit_edge665._crit_edge.i.i
  %.b414.i.i = load i1, ptr @print_abbrevs, align 1
  br i1 %.b414.i.i, label %.preheader587.i.i, label %.thread568.i.i

.preheader587.i.i:                                ; preds = %bb.ol
  %i.blc = icmp slt i64 %.1392.i.i, %.0387.i.i
  br i1 %i.blc, label %.lr.ph670.i.i, label %._crit_edge671.thread.i.i

.lr.ph670.i.i:                                    ; preds = %.preheader587.i.i
  %i.bld = add nsw i64 %.0387.i.i, -1
  br label %bb.om

bb.om:                                            ; preds = %bb.op, %.lr.ph670.i.i
  %.8669.i.i = phi i64 [ %.1392.i.i, %.lr.ph670.i.i ], [ %i.bmb, %bb.op ] ; 4 uses
  %i.ble = icmp eq i64 %.8669.i.i, %i.bld
  br i1 %i.ble, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.blf = getelementptr [8 x i8], ptr %i.apt, i64 %.8669.i.i
  %i.blg = getelementptr i8, ptr %i.blf, i64 8
  %i.blh = load i64, ptr %i.blg, align 8
  %i.bli = load i64, ptr @print_cutoff, align 8
  %i.blj = icmp sgt i64 %i.blh, %i.bli
  br i1 %i.blj, label %bb.oo, label %bb.op

bb.oo:                                            ; preds = %bb.on, %bb.om
  %i.blk = getelementptr inbounds i8, ptr %i.apy, i64 %.8669.i.i
  %i.bll = load i8, ptr %i.blk, align 1
  %i.blm = zext i8 %i.bll to i64                  ; 3 uses
  %i.bln = getelementptr inbounds nuw i8, ptr @desigidx, i64 %i.blm
  %i.blo = load i8, ptr %i.bln, align 1
  %i.blp = zext i8 %i.blo to i64
  %i.blq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.blp
  %i.blr = load i32, ptr %i.blq, align 4
  %i.bls = sext i32 %i.blr to i64
  %i.blt = getelementptr inbounds i8, ptr %i.n, i64 %i.bls
  %i.blu = load ptr, ptr @stdout, align 8
  %i.blv = getelementptr inbounds nuw [8 x i8], ptr @utoffs, i64 %i.blm
  %i.blw = load i64, ptr %i.blv, align 8
  %i.blx = getelementptr inbounds nuw i8, ptr @isdsts, i64 %i.blm
  %i.bly = load i8, ptr %i.blx, align 1
  %.not440.i.i = icmp eq i8 %i.bly, 0
  %i.blz = select i1 %.not440.i.i, ptr @.str.26, ptr @.str.190
  %i.bma = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.blu, ptr noundef nonnull @.str.189, ptr noundef nonnull %i.blt, i64 noundef %i.blw, ptr noundef nonnull %i.blz) #25 ; 0 uses
  br label %bb.op

bb.op:                                            ; preds = %bb.oo, %bb.on
  %i.bmb = add i64 %.8669.i.i, 1                  ; 2 uses
  %exitcond734.not.i.i = icmp eq i64 %i.bmb, %.0387.i.i
  br i1 %exitcond734.not.i.i, label %._crit_edge671.i.i, label %bb.om, !llvm.loop !50

._crit_edge671.thread.i.i:                        ; preds = %.preheader587.i.i
  %i.bmc = load i8, ptr %i.ayy, align 1
  %i.bmd = zext i8 %i.bmc to i64
  %i.bme = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bmd
  %i.bmf = load i32, ptr %i.bme, align 4
  %i.bmg = sext i32 %i.bmf to i64
  %i.bmh = getelementptr inbounds i8, ptr %i.n, i64 %i.bmg
  %i.bmi = load ptr, ptr @stdout, align 8
  %i.bmj = load i64, ptr %i.ayz, align 8
  %i.bmk = load i8, ptr %i.aza, align 1
  %.not429.i.i = icmp eq i8 %i.bmk, 0
  %i.bml = select i1 %.not429.i.i, ptr @.str.26, ptr @.str.190
  %i.bmm = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.bmi, ptr noundef nonnull @.str.189, ptr noundef nonnull %i.bmh, i64 noundef %i.bmj, ptr noundef nonnull %i.bml) #25 ; 0 uses
  br label %._crit_edge671.i.i

._crit_edge671.i.i:                               ; preds = %bb.op, %._crit_edge671.thread.i.i
  %i.bmn = load i64, ptr @lo_time, align 8        ; 2 uses
  br i1 %i.bjo, label %.thread569.i.i, label %puttzcodepass.exit.i.i

.thread570.i.i:                                   ; preds = %bb.oj
  %i.bmo = load i64, ptr @lo_time, align 8
  %i.bmp = call i64 @llvm.smax.i64(i64 %i.bmo, i64 -2147483648) ; 6 uses
  br i1 %i.bjo, label %.thread571.i.i, label %puttzcodepass.exit.i.i

.thread568.i.i:                                   ; preds = %bb.ol
  %i.bmq = load i64, ptr @lo_time, align 8        ; 2 uses
  br i1 %i.bjo, label %.thread569.i.i, label %puttzcodepass.exit.i.i

.thread571.i.i:                                   ; preds = %.thread570.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.bmr = lshr i64 %i.bmp, 24
  %i.bms = trunc i64 %i.bmr to i8
  store i8 %i.bms, ptr %i.i, align 1
  %i.bmt = lshr i64 %i.bmp, 16
  %i.bmu = trunc i64 %i.bmt to i8
  store i8 %i.bmu, ptr %i.ng, align 1
  %i.bmv = lshr i64 %i.bmp, 8
  %i.bmw = trunc i64 %i.bmv to i8
  store i8 %i.bmw, ptr %i.nh, align 1
  %i.bmx = trunc i64 %i.bmp to i8
  store i8 %i.bmx, ptr %i.ni, align 1
  %i.bmy = call i64 @fwrite(ptr noundef nonnull %i.i, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br label %puttzcodepass.exit.i.i

.thread569.i.i:                                   ; preds = %.thread568.i.i, %._crit_edge671.i.i
  %i.bmz = phi i64 [ %i.bmq, %.thread568.i.i ], [ %i.bmn, %._crit_edge671.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  %5 = bitcast i64 %i.bmz to <8 x i8>
  %6 = shufflevector <8 x i8> %5, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %6, ptr %i.j, align 8
  %i.bna = call i64 @fwrite(ptr noundef nonnull %i.j, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  br label %puttzcodepass.exit.i.i

puttzcodepass.exit.i.i:                           ; preds = %.thread569.i.i, %.thread571.i.i, %.thread568.i.i, %.thread570.i.i, %._crit_edge671.i.i
  %i.bnb = phi i64 [ %i.bmq, %.thread568.i.i ], [ %i.bmp, %.thread570.i.i ], [ %i.bmn, %._crit_edge671.i.i ], [ %i.bmp, %.thread571.i.i ], [ %i.bmz, %.thread569.i.i ]
  %i.bnc = icmp slt i64 %.1392.i.i, %.0387.i.i    ; 2 uses
  br i1 %i.bnc, label %.lr.ph673.i.i, label %._crit_edge674.i.i

.lr.ph673.i.i:                                    ; preds = %puttzcodepass.exit.i.i, %puttzcodepass.exit481.i.i
  %.9672.i.i = phi i64 [ %i.bno, %puttzcodepass.exit481.i.i ], [ %.1392.i.i, %puttzcodepass.exit.i.i ] ; 2 uses
  %i.bnd = getelementptr inbounds [8 x i8], ptr %i.apt, i64 %.9672.i.i
  %i.bne = load i64, ptr %i.bnd, align 8
  %..i.i = call i64 @llvm.smax.i64(i64 %i.bne, i64 %i.bnb) ; 5 uses
  br i1 %i.azb, label %bb.or, label %bb.oq

bb.oq:                                            ; preds = %.lr.ph673.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.bnf = lshr i64 %..i.i, 24
  %i.bng = trunc i64 %i.bnf to i8
  store i8 %i.bng, ptr %i.g, align 1
  %i.bnh = lshr i64 %..i.i, 16
  %i.bni = trunc i64 %i.bnh to i8
  store i8 %i.bni, ptr %i.nj, align 1
  %i.bnj = lshr i64 %..i.i, 8
  %i.bnk = trunc i64 %i.bnj to i8
  store i8 %i.bnk, ptr %i.nk, align 1
  %i.bnl = trunc i64 %..i.i to i8
  store i8 %i.bnl, ptr %i.nl, align 1
  %i.bnm = call i64 @fwrite(ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %puttzcodepass.exit481.i.i

bb.or:                                            ; preds = %.lr.ph673.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %7 = bitcast i64 %..i.i to <8 x i8>
  %8 = shufflevector <8 x i8> %7, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %8, ptr %i.h, align 8
  %i.bnn = call i64 @fwrite(ptr noundef nonnull %i.h, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  br label %puttzcodepass.exit481.i.i

puttzcodepass.exit481.i.i:                        ; preds = %bb.or, %bb.oq
  %i.bno = add i64 %.9672.i.i, 1                  ; 2 uses
  %exitcond735.not.i.i = icmp eq i64 %i.bno, %.0387.i.i
  br i1 %exitcond735.not.i.i, label %._crit_edge674.i.i, label %.lr.ph673.i.i, !llvm.loop !51

._crit_edge674.i.i:                               ; preds = %puttzcodepass.exit481.i.i, %puttzcodepass.exit.i.i
  br i1 %.1377.shrunk.i.i, label %bb.os, label %puttzcodepass.exit482.i.i

bb.os:                                            ; preds = %._crit_edge674.i.i
  %i.bnp = load i64, ptr @hi_time, align 8
  %i.bnq = add i64 %i.bnp, 1                      ; 5 uses
  br i1 %i.azb, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.bnr = lshr i64 %i.bnq, 24
  %i.bns = trunc i64 %i.bnr to i8
  store i8 %i.bns, ptr %i.e, align 1
  %i.bnt = lshr i64 %i.bnq, 16
  %i.bnu = trunc i64 %i.bnt to i8
  store i8 %i.bnu, ptr %i.nm, align 1
  %i.bnv = lshr i64 %i.bnq, 8
  %i.bnw = trunc i64 %i.bnv to i8
  store i8 %i.bnw, ptr %i.nn, align 1
  %i.bnx = trunc i64 %i.bnq to i8
  store i8 %i.bnx, ptr %i.no, align 1
  %i.bny = call i64 @fwrite(ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %puttzcodepass.exit482.i.i

bb.ou:                                            ; preds = %bb.os
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %9 = bitcast i64 %i.bnq to <8 x i8>
  %10 = shufflevector <8 x i8> %9, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %10, ptr %i.f, align 8
  %i.bnz = call i64 @fwrite(ptr noundef nonnull %i.f, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %puttzcodepass.exit482.i.i

puttzcodepass.exit482.i.i:                        ; preds = %bb.ou, %bb.ot, %._crit_edge674.i.i
  br i1 %i.bjo, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %puttzcodepass.exit482.i.i
  %i.boa = call i32 @putc(i32 noundef 0, ptr noundef nonnull %.1.i403.i) ; 0 uses
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %puttzcodepass.exit482.i.i
  br i1 %i.bnc, label %.lr.ph677.i.i, label %._crit_edge678.i.i

.lr.ph677.i.i:                                    ; preds = %bb.ow, %.lr.ph677.i.i
  %.10675.i.i = phi i64 [ %i.boh, %.lr.ph677.i.i ], [ %.1392.i.i, %bb.ow ] ; 2 uses
  %i.bob = getelementptr inbounds i8, ptr %i.apy, i64 %.10675.i.i
  %i.boc = load i8, ptr %i.bob, align 1
  %i.bod = zext i8 %i.boc to i64
  %i.boe = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bod
  %i.bof = load i32, ptr %i.boe, align 4          ; 2 uses
  %i.bog = call i32 @putc(i32 noundef %i.bof, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.boh = add i64 %.10675.i.i, 1                 ; 2 uses
  %exitcond736.not.i.i = icmp eq i64 %i.boh, %.0387.i.i
  br i1 %exitcond736.not.i.i, label %._crit_edge678.i.i, label %.lr.ph677.i.i, !llvm.loop !52

._crit_edge678.i.i:                               ; preds = %.lr.ph677.i.i, %bb.ow
  %.0383.lcssa.i.i = phi i32 [ 0, %bb.ow ], [ %i.bof, %.lr.ph677.i.i ]
  br i1 %.1377.shrunk.i.i, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %._crit_edge678.i.i
  %i.boi = call i32 @putc(i32 noundef %.0383.lcssa.i.i, ptr noundef nonnull %.1.i403.i) ; 0 uses
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %._crit_edge678.i.i
  %i.boj = load i32, ptr @typecnt, align 4        ; 2 uses
  %i.bok = sext i32 %i.boj to i64                 ; 2 uses
  %i.bol = icmp slt i64 %.pre-phi751.i.i, %i.bok
  br i1 %i.bol, label %.lr.ph682.preheader.i.i, label %._crit_edge683.i.i

.lr.ph682.preheader.i.i:                          ; preds = %bb.oy
  %i.bom = load i8, ptr %i.bag, align 1
  %.not439.peel.i.i = icmp eq i8 %i.bom, 0
  br i1 %.not439.peel.i.i, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %.lr.ph682.preheader.i.i
  %i.bon = getelementptr inbounds nuw [8 x i8], ptr @utoffs, i64 %i.baf
  %i.boo = load i64, ptr %i.bon, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.bop = lshr i64 %i.boo, 24
  %i.boq = trunc i64 %i.bop to i8
  store i8 %i.boq, ptr %i.d, align 1
  %i.bor = lshr i64 %i.boo, 16
  %i.bos = trunc i64 %i.bor to i8
  store i8 %i.bos, ptr %i.np, align 1
  %i.bot = lshr i64 %i.boo, 8
  %i.bou = trunc i64 %i.bot to i8
  store i8 %i.bou, ptr %i.nq, align 1
  %i.bov = trunc i64 %i.boo to i8
  store i8 %i.bov, ptr %i.nr, align 1
  %i.bow = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.box = getelementptr inbounds nuw i8, ptr @isdsts, i64 %i.baf
  %i.boy = load i8, ptr %i.box, align 1
  %i.boz = sext i8 %i.boy to i32
  %i.bpa = call i32 @putc(i32 noundef %i.boz, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bpb = getelementptr inbounds nuw i8, ptr @desigidx, i64 %i.baf
  %i.bpc = load i8, ptr %i.bpb, align 1
  %i.bpd = zext i8 %i.bpc to i64
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bpd
  %i.bpf = load i32, ptr %i.bpe, align 4
  %i.bpg = call i32 @putc(i32 noundef %i.bpf, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %.pre742.i.i = load i32, ptr @typecnt, align 4  ; 2 uses
  %.pre747.i.i = sext i32 %.pre742.i.i to i64
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %.lr.ph682.preheader.i.i
  %.pre-phi.i.i = phi i64 [ %.pre747.i.i, %bb.oz ], [ %i.bok, %.lr.ph682.preheader.i.i ]
  %i.bph = phi i32 [ %.pre742.i.i, %bb.oz ], [ %i.boj, %.lr.ph682.preheader.i.i ]
  %i.bpi = add nsw i64 %.pre-phi751.i.i, 1        ; 2 uses
  %i.bpj = icmp slt i64 %i.bpi, %.pre-phi.i.i
  br i1 %i.bpj, label %.lr.ph682.i.i, label %._crit_edge683.i.i

.lr.ph682.i.i:                                    ; preds = %bb.pa, %bb.pc
  %i.bpk = phi i32 [ %i.bqk, %bb.pc ], [ %i.bph, %bb.pa ]
  %.11680.i.i = phi i64 [ %i.bql, %bb.pc ], [ %i.bpi, %bb.pa ] ; 3 uses
  %i.bpl = icmp eq i64 %.11680.i.i, %i.baf
  %i.bpm = select i1 %i.bpl, i64 %i.bgg, i64 %.11680.i.i
  %sext811.i.i = shl i64 %i.bpm, 32
  %i.bpn = ashr exact i64 %sext811.i.i, 32        ; 4 uses
  %i.bpo = getelementptr inbounds i8, ptr %i.l, i64 %i.bpn
  %i.bpp = load i8, ptr %i.bpo, align 1
  %.not439.i.i = icmp eq i8 %i.bpp, 0
  br i1 %.not439.i.i, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %.lr.ph682.i.i
  %i.bpq = getelementptr inbounds [8 x i8], ptr @utoffs, i64 %i.bpn
  %i.bpr = load i64, ptr %i.bpq, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.bps = lshr i64 %i.bpr, 24
  %i.bpt = trunc i64 %i.bps to i8
  store i8 %i.bpt, ptr %i.d, align 1
  %i.bpu = lshr i64 %i.bpr, 16
  %i.bpv = trunc i64 %i.bpu to i8
  store i8 %i.bpv, ptr %i.np, align 1
  %i.bpw = lshr i64 %i.bpr, 8
  %i.bpx = trunc i64 %i.bpw to i8
  store i8 %i.bpx, ptr %i.nq, align 1
  %i.bpy = trunc i64 %i.bpr to i8
  store i8 %i.bpy, ptr %i.nr, align 1
  %i.bpz = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.bqa = getelementptr inbounds i8, ptr @isdsts, i64 %i.bpn
  %i.bqb = load i8, ptr %i.bqa, align 1
  %i.bqc = sext i8 %i.bqb to i32
  %i.bqd = call i32 @putc(i32 noundef %i.bqc, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bqe = getelementptr inbounds i8, ptr @desigidx, i64 %i.bpn
  %i.bqf = load i8, ptr %i.bqe, align 1
  %i.bqg = zext i8 %i.bqf to i64
  %i.bqh = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bqg
  %i.bqi = load i32, ptr %i.bqh, align 4
  %i.bqj = call i32 @putc(i32 noundef %i.bqi, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %.pre743.i.i = load i32, ptr @typecnt, align 4
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %.lr.ph682.i.i
  %i.bqk = phi i32 [ %.pre743.i.i, %bb.pb ], [ %i.bpk, %.lr.ph682.i.i ] ; 2 uses
  %i.bql = add nsw i64 %.11680.i.i, 1             ; 2 uses
  %i.bqm = sext i32 %i.bqk to i64
  %i.bqn = icmp slt i64 %i.bql, %i.bqm
  br i1 %i.bqn, label %.lr.ph682.i.i, label %._crit_edge683.i.i, !llvm.loop !53

._crit_edge683.i.i:                               ; preds = %bb.pc, %bb.pa, %bb.oy
  %.not430.i.i = icmp eq i32 %.3364.i.i, 0
  br i1 %.not430.i.i, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %._crit_edge683.i.i
  %i.bqo = call i64 @fwrite(ptr noundef nonnull %i.n, i64 noundef 1, i64 noundef %i.bkg, ptr noundef nonnull %.1.i403.i) ; 0 uses
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %._crit_edge683.i.i
  %i.bqp = sext i32 %i.azs to i64
  %i.bqq = icmp slt i32 %.0386555.i.i, %i.azs
  br i1 %i.bqq, label %.lr.ph691.preheader.i.i, label %._crit_edge692.i.i

.lr.ph691.preheader.i.i:                          ; preds = %bb.pe
  %i.bqr = sext i32 %.0386555.i.i to i64
  br label %.lr.ph691.i.i

.lr.ph691.i.i:                                    ; preds = %puttzcodepass.exit487.i.i, %.lr.ph691.preheader.i.i
  %.12689.i.i = phi i64 [ %i.bss, %puttzcodepass.exit487.i.i ], [ %i.bqr, %.lr.ph691.preheader.i.i ] ; 6 uses
  %i.bqs = getelementptr inbounds i8, ptr @roll, i64 %.12689.i.i
  %i.bqt = load i8, ptr %i.bqs, align 1
  %.not435.i.i = icmp eq i8 %i.bqt, 0
  br i1 %.not435.i.i, label %bb.ps, label %bb.pf

bb.pf:                                            ; preds = %.lr.ph691.i.i
  %i.bqu = load i64, ptr @timecnt, align 8        ; 4 uses
  %i.bqv = icmp eq i64 %i.bqu, 0
  br i1 %i.bqv, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.bqw = getelementptr inbounds [8 x i8], ptr @trans, i64 %.12689.i.i
  %i.bqx = load i64, ptr %i.bqw, align 8          ; 3 uses
  %i.bqy = load i64, ptr %i.apt, align 8
  %i.bqz = icmp slt i64 %i.bqx, %i.bqy
  br i1 %i.bqz, label %bb.ph, label %.preheader.i404.i

.preheader.i404.i:                                ; preds = %bb.pg
  %i.bra = icmp sgt i64 %i.bqu, 1
  br i1 %i.bra, label %.lr.ph685.i.i, label %.critedge.i405.i

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %i.brb = load i32, ptr @typecnt, align 4
  %i.brc = call i32 @llvm.smax.i32(i32 %i.brb, i32 1)
  %smax.i.i = zext nneg i32 %i.brc to i64
  br label %bb.pi

bb.pi:                                            ; preds = %bb.pj, %bb.ph
  %.2348.i.i = phi i64 [ 0, %bb.ph ], [ %i.brf, %bb.pj ] ; 3 uses
  %i.brd = getelementptr inbounds nuw i8, ptr @isdsts, i64 %.2348.i.i
  %i.bre = load i8, ptr %i.brd, align 1
  %.not437.i.i = icmp eq i8 %i.bre, 0
  br i1 %.not437.i.i, label %.loopexit.loopexit.i.i, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.brf = add nuw nsw i64 %.2348.i.i, 1          ; 2 uses
  %exitcond739.not.i.i = icmp eq i64 %i.brf, %smax.i.i
  br i1 %exitcond739.not.i.i, label %.loopexit.loopexit.i.i, label %bb.pi, !llvm.loop !54

.lr.ph685.i.i:                                    ; preds = %.preheader.i404.i, %bb.pk
  %.3349684.i.i = phi i64 [ %i.bri, %bb.pk ], [ 1, %.preheader.i404.i ] ; 3 uses
  %i.brg = getelementptr inbounds nuw [8 x i8], ptr %i.apt, i64 %.3349684.i.i
  %i.brh = load i64, ptr %i.brg, align 8
  %.not436.i.i = icmp slt i64 %i.bqx, %i.brh
  br i1 %.not436.i.i, label %.critedge.i405.i, label %bb.pk

bb.pk:                                            ; preds = %.lr.ph685.i.i
  %i.bri = add nuw nsw i64 %.3349684.i.i, 1       ; 2 uses
  %exitcond738.not.i.i = icmp eq i64 %i.bri, %i.bqu
  br i1 %exitcond738.not.i.i, label %.critedge.i405.i, label %.lr.ph685.i.i, !llvm.loop !55

.critedge.i405.i:                                 ; preds = %bb.pk, %.lr.ph685.i.i, %.preheader.i404.i
  %.3349.lcssa.i.i = phi i64 [ 1, %.preheader.i404.i ], [ %i.bqu, %bb.pk ], [ %.3349684.i.i, %.lr.ph685.i.i ]
  %i.brj = getelementptr i8, ptr %i.apy, i64 %.3349.lcssa.i.i
  %i.brk = getelementptr i8, ptr %i.brj, i64 -1
  %i.brl = load i8, ptr %i.brk, align 1
  %i.brm = zext i8 %i.brl to i64
  br label %.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.pj, %bb.pi
  %.4350.ph.i.i = phi i64 [ %.2348.i.i, %bb.pi ], [ 0, %bb.pj ]
  %.phi.trans.insert.i.i = getelementptr inbounds [8 x i8], ptr @trans, i64 %.12689.i.i
  %.pre744.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %.critedge.i405.i
  %i.brn = phi i64 [ %i.bqx, %.critedge.i405.i ], [ %.pre744.i.i, %.loopexit.loopexit.i.i ] ; 6 uses
  %.4350.i.i = phi i64 [ %i.brm, %.critedge.i405.i ], [ %.4350.ph.i.i, %.loopexit.loopexit.i.i ]
  %i.bro = getelementptr inbounds nuw [8 x i8], ptr @utoffs, i64 %.4350.i.i
  %i.brp = load i64, ptr %i.bro, align 8          ; 2 uses
  %i.brq = sub i64 0, %i.brp                      ; 2 uses
  %i.brr = icmp slt i64 %i.brn, 0
  br i1 %i.brr, label %bb.pl, label %bb.po

bb.pl:                                            ; preds = %.loopexit.i.i
  %i.brs = sub nsw i64 -9223372036854775808, %i.brn
  %i.brt = icmp sgt i64 %i.brs, %i.brq
  br i1 %i.brt, label %bb.pm, label %bb.pr

bb.pm:                                            ; preds = %bb.pl
  %.not11.i485.i.i = icmp eq i64 %i.brn, -9223372036854775808
  br i1 %.not11.i485.i.i, label %tadd.exit486.i.i, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  call fastcc void @time_overflow() #29
  unreachable

bb.po:                                            ; preds = %.loopexit.i.i
  %i.bru = sub nuw nsw i64 9223372036854775807, %i.brn
  %i.brv = icmp slt i64 %i.bru, %i.brq
  br i1 %i.brv, label %bb.pp, label %bb.pr

bb.pp:                                            ; preds = %bb.po
  %.not.i484.i.i = icmp eq i64 %i.brn, 9223372036854775807
  br i1 %.not.i484.i.i, label %tadd.exit486.i.i, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  call fastcc void @time_overflow() #29
  unreachable

bb.pr:                                            ; preds = %bb.po, %bb.pl
  %i.brw = sub i64 %i.brn, %i.brp
  br label %tadd.exit486.i.i

bb.ps:                                            ; preds = %.lr.ph691.i.i
  %i.brx = getelementptr inbounds [8 x i8], ptr @trans, i64 %.12689.i.i
  %i.bry = load i64, ptr %i.brx, align 8
  br label %tadd.exit486.i.i

tadd.exit486.i.i:                                 ; preds = %bb.ps, %bb.pr, %bb.pp, %bb.pm
  %.0.i406.i = phi i64 [ %i.bry, %bb.ps ], [ -9223372036854775808, %bb.pm ], [ %i.brw, %bb.pr ], [ 9223372036854775807, %bb.pp ] ; 5 uses
  br i1 %i.azb, label %bb.pu, label %bb.pt

bb.pt:                                            ; preds = %tadd.exit486.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.brz = lshr i64 %.0.i406.i, 24
  %i.bsa = trunc i64 %i.brz to i8
  store i8 %i.bsa, ptr %i.b, align 1
  %i.bsb = lshr i64 %.0.i406.i, 16
  %i.bsc = trunc i64 %i.bsb to i8
  store i8 %i.bsc, ptr %i.ns, align 1
  %i.bsd = lshr i64 %.0.i406.i, 8
  %i.bse = trunc i64 %i.bsd to i8
  store i8 %i.bse, ptr %i.nt, align 1
  %i.bsf = trunc i64 %.0.i406.i to i8
  store i8 %i.bsf, ptr %i.nu, align 1
  %i.bsg = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %puttzcodepass.exit487.i.i

bb.pu:                                            ; preds = %tadd.exit486.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %11 = bitcast i64 %.0.i406.i to <8 x i8>
  %12 = shufflevector <8 x i8> %11, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %12, ptr %i.c, align 8
  %i.bsh = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %puttzcodepass.exit487.i.i

puttzcodepass.exit487.i.i:                        ; preds = %bb.pu, %bb.pt
  %i.bsi = getelementptr inbounds [8 x i8], ptr @corr, i64 %.12689.i.i
  %i.bsj = load i64, ptr %i.bsi, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bsk = lshr i64 %i.bsj, 24
  %i.bsl = trunc i64 %i.bsk to i8
  store i8 %i.bsl, ptr %i.a, align 1
  %i.bsm = lshr i64 %i.bsj, 16
  %i.bsn = trunc i64 %i.bsm to i8
  store i8 %i.bsn, ptr %i.nv, align 1
  %i.bso = lshr i64 %i.bsj, 8
  %i.bsp = trunc i64 %i.bso to i8
  store i8 %i.bsp, ptr %i.nw, align 1
  %i.bsq = trunc i64 %i.bsj to i8
  store i8 %i.bsq, ptr %i.nx, align 1
  %i.bsr = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bss = add nsw i64 %.12689.i.i, 1             ; 2 uses
  %exitcond740.not.i.i = icmp eq i64 %i.bss, %i.bqp
  br i1 %exitcond740.not.i.i, label %._crit_edge692.i.i, label %.lr.ph691.i.i, !llvm.loop !56

._crit_edge692.i.i:                               ; preds = %puttzcodepass.exit487.i.i, %bb.pe
  %.not431.i.i = icmp ne i32 %.3372.i.i, 0
  %i.bst = load i32, ptr @typecnt, align 4        ; 3 uses
  %i.bsu = sext i32 %i.bst to i64                 ; 2 uses
  %i.bsv = icmp slt i64 %.pre-phi751.i.i, %i.bsu
  %or.cond700.i.i = select i1 %.not431.i.i, i1 %i.bsv, i1 false
  br i1 %or.cond700.i.i, label %.lr.ph694.i.i, label %.loopexit586.i.i

.lr.ph694.i.i:                                    ; preds = %._crit_edge692.i.i, %bb.pw
  %i.bsw = phi i32 [ %i.btd, %bb.pw ], [ %i.bst, %._crit_edge692.i.i ]
  %.13693.i.i = phi i64 [ %i.bte, %bb.pw ], [ %.pre-phi751.i.i, %._crit_edge692.i.i ] ; 3 uses
  %i.bsx = getelementptr inbounds i8, ptr %i.l, i64 %.13693.i.i
  %i.bsy = load i8, ptr %i.bsx, align 1
  %.not434.i.i = icmp eq i8 %i.bsy, 0
  br i1 %.not434.i.i, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %.lr.ph694.i.i
  %i.bsz = getelementptr inbounds i8, ptr @ttisstds, i64 %.13693.i.i
  %i.bta = load i8, ptr %i.bsz, align 1, !range !6, !noundef !7
  %i.btb = zext nneg i8 %i.bta to i32
  %i.btc = call i32 @putc(i32 noundef %i.btb, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %.pre745.i.i = load i32, ptr @typecnt, align 4
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %.lr.ph694.i.i
  %i.btd = phi i32 [ %i.bsw, %.lr.ph694.i.i ], [ %.pre745.i.i, %bb.pv ] ; 3 uses
  %i.bte = add nsw i64 %.13693.i.i, 1             ; 2 uses
  %i.btf = sext i32 %i.btd to i64                 ; 2 uses
  %i.btg = icmp slt i64 %i.bte, %i.btf
  br i1 %i.btg, label %.lr.ph694.i.i, label %.loopexit586.i.i, !llvm.loop !57

.loopexit586.i.i:                                 ; preds = %bb.pw, %._crit_edge692.i.i
  %.pre-phi748.i.i = phi i64 [ %i.bsu, %._crit_edge692.i.i ], [ %i.btf, %bb.pw ]
  %i.bth = phi i32 [ %i.bst, %._crit_edge692.i.i ], [ %i.btd, %bb.pw ]
  %.not432.i.i = icmp ne i32 %.3368.i.i, 0
  %i.bti = icmp slt i64 %.pre-phi751.i.i, %.pre-phi748.i.i
  %or.cond703.i.i = select i1 %.not432.i.i, i1 %i.bti, i1 false
  br i1 %or.cond703.i.i, label %.lr.ph696.i.i, label %.loopexit584.i.i

.lr.ph696.i.i:                                    ; preds = %.loopexit586.i.i, %bb.py
  %i.btj = phi i32 [ %i.btq, %bb.py ], [ %i.bth, %.loopexit586.i.i ]
  %.14695.i.i = phi i64 [ %i.btr, %bb.py ], [ %.pre-phi751.i.i, %.loopexit586.i.i ] ; 3 uses
  %i.btk = getelementptr inbounds i8, ptr %i.l, i64 %.14695.i.i
  %i.btl = load i8, ptr %i.btk, align 1
  %.not433.i.i = icmp eq i8 %i.btl, 0
  br i1 %.not433.i.i, label %bb.px, label %bb.py

bb.px:                                            ; preds = %.lr.ph696.i.i
  %i.btm = getelementptr inbounds i8, ptr @ttisuts, i64 %.14695.i.i
  %i.btn = load i8, ptr %i.btm, align 1, !range !6, !noundef !7
  %i.bto = zext nneg i8 %i.btn to i32
  %i.btp = call i32 @putc(i32 noundef %i.bto, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %.pre746.i.i = load i32, ptr @typecnt, align 4
  br label %bb.py

bb.py:                                            ; preds = %bb.px, %.lr.ph696.i.i
  %i.btq = phi i32 [ %i.btj, %.lr.ph696.i.i ], [ %.pre746.i.i, %bb.px ] ; 2 uses
  %i.btr = add nsw i64 %.14695.i.i, 1             ; 2 uses
  %i.bts = sext i32 %i.btq to i64
  %i.btt = icmp slt i64 %i.btr, %i.bts
  br i1 %i.btt, label %.lr.ph696.i.i, label %.loopexit584.i.i, !llvm.loop !58

.loopexit584.i.i:                                 ; preds = %bb.py, %.loopexit586.i.i, %bb.ok
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  br i1 %i.azb, label %outzone.exit, label %bb.nc, !llvm.loop !59

outzone.exit:                                     ; preds = %.loopexit584.i.i
  %i.btu = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef nonnull %.1.i403.i, ptr noundef nonnull @.str.191, ptr noundef nonnull %i.pd) #25 ; 0 uses
  %i.btv = load ptr, ptr @directory, align 8
  call fastcc void @close_file(ptr noundef nonnull %.1.i403.i, ptr noundef %i.btv, ptr noundef %i.apn)
  call void @free(ptr noundef %i.apt) #25
  call void @free(ptr noundef %i.or) #25
  call void @free(ptr noundef %i.ow) #25
  call void @free(ptr noundef %i.pd) #25
  %i.btw = load i64, ptr @nzones, align 8         ; 2 uses
  %i.btx = icmp slt i64 %.041.lcssa, %i.btw
  br i1 %i.btx, label %.preheader85, label %.preheader84, !llvm.loop !60

.lr.ph187:                                        ; preds = %.preheader84, %.loopexit
  %.144185 = phi i64 [ %i.buy, %.loopexit ], [ 0, %.preheader84 ] ; 3 uses
  %i.bty = load ptr, ptr @links, align 8
  %i.btz = getelementptr inbounds nuw [32 x i8], ptr %i.bty, i64 %.144185 ; 4 uses
  %i.bua = load ptr, ptr %i.btz, align 8
  %i.bub = getelementptr inbounds nuw i8, ptr %i.btz, i64 8
  %i.buc = load i64, ptr %i.bub, align 8
  store ptr %i.bua, ptr @filename, align 8
  store i64 %i.buc, ptr @linenum, align 8
  store ptr null, ptr @rfilename, align 8
  store i64 -1, ptr @rlinenum, align 8
  %i.bud = getelementptr inbounds nuw i8, ptr %i.btz, i64 16
  %i.bue = load ptr, ptr %i.bud, align 8
  %i.buf = getelementptr inbounds nuw i8, ptr %i.btz, i64 24
  %i.bug = load ptr, ptr %i.buf, align 8
  call fastcc void @dolink(ptr noundef %i.bue, ptr noundef %i.bug, i1 noundef zeroext false)
  %.b = load i1, ptr @noise, align 1
  %i.buh = load i64, ptr @nlinks, align 8         ; 3 uses
  %i.bui = icmp sgt i64 %i.buh, 0
  %or.cond190 = select i1 %.b, i1 %i.bui, i1 false
  br i1 %or.cond190, label %.lr.ph184.preheader, label %.loopexit

.lr.ph184.preheader:                              ; preds = %.lr.ph187
  %.pre291 = load ptr, ptr @links, align 8
  br label %.lr.ph184

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %bb.qa
  %i.buj = phi i64 [ %i.but, %bb.qa ], [ %i.buh, %.lr.ph184.preheader ]
  %i.buk = phi ptr [ %i.buu, %bb.qa ], [ %.pre291, %.lr.ph184.preheader ] ; 3 uses
  %.142183 = phi i64 [ %i.buv, %bb.qa ], [ 0, %.lr.ph184.preheader ] ; 2 uses
  %i.bul = getelementptr inbounds nuw [32 x i8], ptr %i.buk, i64 %.144185
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bul, i64 24
  %i.bun = load ptr, ptr %i.bum, align 8
  %i.buo = getelementptr inbounds nuw [32 x i8], ptr %i.buk, i64 %.142183
  %i.bup = getelementptr inbounds nuw i8, ptr %i.buo, i64 16
  %i.buq = load ptr, ptr %i.bup, align 8
  %i.bur = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bun, ptr noundef nonnull dereferenceable(1) %i.buq) #26
  %i.bus = icmp eq i32 %i.bur, 0
  br i1 %i.bus, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %.lr.ph184
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.21)
  %.pre290 = load ptr, ptr @links, align 8
  %.pre292 = load i64, ptr @nlinks, align 8
  br label %bb.qa

bb.qa:                                            ; preds = %.lr.ph184, %bb.pz
  %i.but = phi i64 [ %i.buj, %.lr.ph184 ], [ %.pre292, %bb.pz ] ; 3 uses
  %i.buu = phi ptr [ %i.buk, %.lr.ph184 ], [ %.pre290, %bb.pz ]
  %i.buv = add nuw nsw i64 %.142183, 1            ; 2 uses
  %i.buw = icmp slt i64 %i.buv, %i.but
  br i1 %i.buw, label %.lr.ph184, label %.loopexit, !llvm.loop !61

.loopexit:                                        ; preds = %bb.qa, %.lr.ph187
  %i.bux = phi i64 [ %i.buh, %.lr.ph187 ], [ %i.but, %bb.qa ]
  %i.buy = add nuw nsw i64 %.144185, 1            ; 2 uses
  %i.buz = icmp slt i64 %i.buy, %i.bux
  br i1 %i.buz, label %.lr.ph187, label %._crit_edge188, !llvm.loop !62

._crit_edge188:                                   ; preds = %.loopexit, %.preheader84
  %i.bva = load ptr, ptr @lcltime, align 8        ; 2 uses
  %.not54 = icmp eq ptr %i.bva, null
  br i1 %.not54, label %bb.qc, label %bb.qb

bb.qb:                                            ; preds = %._crit_edge188
  store ptr @.str.22, ptr @filename, align 8
  store i64 1, ptr @linenum, align 8
  store ptr null, ptr @rfilename, align 8
  store i64 -1, ptr @rlinenum, align 8
  %i.bvb = load ptr, ptr @tzdefault, align 8
  call fastcc void @dolink(ptr noundef nonnull %i.bva, ptr noundef %i.bvb, i1 noundef zeroext true)
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %._crit_edge188
  %i.bvc = load ptr, ptr @psxrules, align 8       ; 2 uses
  %.not55 = icmp eq ptr %i.bvc, null
  br i1 %.not55, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  store ptr @.str.22, ptr @filename, align 8
  store i64 1, ptr @linenum, align 8
  store ptr null, ptr @rfilename, align 8
  store i64 -1, ptr @rlinenum, align 8
  call fastcc void @dolink(ptr noundef nonnull %i.bvc, ptr noundef nonnull @.str.23, i1 noundef zeroext true)
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qd, %bb.qc
  %.b53 = load i1, ptr @warnings, align 1
  br i1 %.b53, label %bb.qf, label %bb.qh

bb.qf:                                            ; preds = %bb.qe
  %i.bvd = load ptr, ptr @stderr, align 8         ; 2 uses
  %i.bve = call i32 @ferror(ptr noundef %i.bvd) #25
  %.not56 = icmp eq i32 %i.bve, 0
end_hunk_2
