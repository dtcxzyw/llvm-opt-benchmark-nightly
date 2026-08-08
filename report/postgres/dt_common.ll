inline.NumInlined: 40
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.21 = private unnamed_addr constant [4 x i8] c"Tue\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"Wed\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"Thu\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"Fri\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"Sat\00", align 1
@pgtypes_date_weekdays_short = local_unnamed_addr global [8 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr null], align 16
@.str.26 = private unnamed_addr constant [8 x i8] c"January\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"February\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"March\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"April\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"June\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"July\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"August\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"September\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"October\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"November\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"December\00", align 1
@pgtypes_date_months = local_unnamed_addr global [13 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.4, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr null], align 16
@deltacache = internal unnamed_addr global [25 x ptr] zeroinitializer, align 16
@deltatktbl = internal constant [61 x %struct.datetkn] [%struct.datetkn { [11 x i8] c"@\00\00\00\00\00\00\00\00\00\00", i8 8, i32 0 }, %struct.datetkn { [11 x i8] c"ago\00\00\00\00\00\00\00\00", i8 19, i32 0 }, %struct.datetkn { [11 x i8] c"c\00\00\00\00\00\00\00\00\00\00", i8 17, i32 27 }, %struct.datetkn { [11 x i8] c"cent\00\00\00\00\00\00\00", i8 17, i32 27 }, %struct.datetkn { [11 x i8] c"centuries\00\00", i8 17, i32 27 }, %struct.datetkn { [11 x i8] c"century\00\00\00\00", i8 17, i32 27 }, %struct.datetkn { [11 x i8] c"d\00\00\00\00\00\00\00\00\00\00", i8 17, i32 21 }, %struct.datetkn { [11 x i8] c"day\00\00\00\00\00\00\00\00", i8 17, i32 21 }, %struct.datetkn { [11 x i8] c"days\00\00\00\00\00\00\00", i8 17, i32 21 }, %struct.datetkn { [11 x i8] c"dec\00\00\00\00\00\00\00\00", i8 17, i32 26 }, %struct.datetkn { [11 x i8] c"decade\00\00\00\00\00", i8 17, i32 26 }, %struct.datetkn { [11 x i8] c"decades\00\00\00\00", i8 17, i32 26 }, %struct.datetkn { [11 x i8] c"decs\00\00\00\00\00\00\00", i8 17, i32 26 }, %struct.datetkn { [11 x i8] c"h\00\00\00\00\00\00\00\00\00\00", i8 17, i32 20 }, %struct.datetkn { [11 x i8] c"hour\00\00\00\00\00\00\00", i8 17, i32 20 }, %struct.datetkn { [11 x i8] c"hours\00\00\00\00\00\00", i8 17, i32 20 }, %struct.datetkn { [11 x i8] c"hr\00\00\00\00\00\00\00\00\00", i8 17, i32 20 }, %struct.datetkn { [11 x i8] c"hrs\00\00\00\00\00\00\00\00", i8 17, i32 20 }, %struct.datetkn { [11 x i8] c"m\00\00\00\00\00\00\00\00\00\00", i8 17, i32 19 }, %struct.datetkn { [11 x i8] c"microsecon\00", i8 17, i32 30 }, %struct.datetkn { [11 x i8] c"mil\00\00\00\00\00\00\00\00", i8 17, i32 28 }, %struct.datetkn { [11 x i8] c"millennia\00\00", i8 17, i32 28 }, %struct.datetkn { [11 x i8] c"millennium\00", i8 17, i32 28 }, %struct.datetkn { [11 x i8] c"millisecon\00", i8 17, i32 29 }, %struct.datetkn { [11 x i8] c"mils\00\00\00\00\00\00\00", i8 17, i32 28 }, %struct.datetkn { [11 x i8] c"min\00\00\00\00\00\00\00\00", i8 17, i32 19 }, %struct.datetkn { [11 x i8] c"mins\00\00\00\00\00\00\00", i8 17, i32 19 }, %struct.datetkn { [11 x i8] c"minute\00\00\00\00\00", i8 17, i32 19 }, %struct.datetkn { [11 x i8] c"minutes\00\00\00\00", i8 17, i32 19 }, %struct.datetkn { [11 x i8] c"mon\00\00\00\00\00\00\00\00", i8 17, i32 23 }, %struct.datetkn { [11 x i8] c"mons\00\00\00\00\00\00\00", i8 17, i32 23 }, %struct.datetkn { [11 x i8] c"month\00\00\00\00\00\00", i8 17, i32 23 }, %struct.datetkn { [11 x i8] c"months\00\00\00\00\00", i8 17, i32 23 }, %struct.datetkn { [11 x i8] c"ms\00\00\00\00\00\00\00\00\00", i8 17, i32 29 }, %struct.datetkn { [11 x i8] c"msec\00\00\00\00\00\00\00", i8 17, i32 29 }, %struct.datetkn { [11 x i8] c"msecond\00\00\00\00", i8 17, i32 29 }, %struct.datetkn { [11 x i8] c"mseconds\00\00\00", i8 17, i32 29 }, %struct.datetkn { [11 x i8] c"msecs\00\00\00\00\00\00", i8 17, i32 29 }, %struct.datetkn { [11 x i8] c"qtr\00\00\00\00\00\00\00\00", i8 17, i32 24 }, %struct.datetkn { [11 x i8] c"quarter\00\00\00\00", i8 17, i32 24 }, %struct.datetkn { [11 x i8] c"s\00\00\00\00\00\00\00\00\00\00", i8 17, i32 18 }, %struct.datetkn { [11 x i8] c"sec\00\00\00\00\00\00\00\00", i8 17, i32 18 }, %struct.datetkn { [11 x i8] c"second\00\00\00\00\00", i8 17, i32 18 }, %struct.datetkn { [11 x i8] c"seconds\00\00\00\00", i8 17, i32 18 }, %struct.datetkn { [11 x i8] c"secs\00\00\00\00\00\00\00", i8 17, i32 18 }, %struct.datetkn { [11 x i8] c"timezone\00\00\00", i8 17, i32 4 }, %struct.datetkn { [11 x i8] c"timezone_h\00", i8 17, i32 34 }, %struct.datetkn { [11 x i8] c"timezone_m\00", i8 17, i32 35 }, %struct.datetkn { [11 x i8] c"us\00\00\00\00\00\00\00\00\00", i8 17, i32 30 }, %struct.datetkn { [11 x i8] c"usec\00\00\00\00\00\00\00", i8 17, i32 30 }, %struct.datetkn { [11 x i8] c"usecond\00\00\00\00", i8 17, i32 30 }, %struct.datetkn { [11 x i8] c"useconds\00\00\00", i8 17, i32 30 }, %struct.datetkn { [11 x i8] c"usecs\00\00\00\00\00\00", i8 17, i32 30 }, %struct.datetkn { [11 x i8] c"w\00\00\00\00\00\00\00\00\00\00", i8 17, i32 22 }, %struct.datetkn { [11 x i8] c"week\00\00\00\00\00\00\00", i8 17, i32 22 }, %struct.datetkn { [11 x i8] c"weeks\00\00\00\00\00\00", i8 17, i32 22 }, %struct.datetkn { [11 x i8] c"y\00\00\00\00\00\00\00\00\00\00", i8 17, i32 25 }, %struct.datetkn { [11 x i8] c"year\00\00\00\00\00\00\00", i8 17, i32 25 }, %struct.datetkn { [11 x i8] c"years\00\00\00\00\00\00", i8 17, i32 25 }, %struct.datetkn { [11 x i8] c"yr\00\00\00\00\00\00\00\00\00", i8 17, i32 25 }, %struct.datetkn { [11 x i8] c"yrs\00\00\00\00\00\00\00\00", i8 17, i32 25 }], align 16
@.str.37 = private unnamed_addr constant [15 x i8] c"%04d-%02d-%02d\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"%04d-%02d-%02d %s\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"BC\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"%02d/%02d\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"/%04d\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"/%04d %s\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"%02d.%02d\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c".%04d\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c".%04d %s\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"%02d-%02d\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"-%04d\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"-%04d %s\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"%04d-%02d-%02d %02d:%02d\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c":%02d.%06d\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c":%02d\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c" BC\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"%+03d:%02d\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"%+03d\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"/%04d %02d:%02d\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c" %.*s\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c".%04d %02d:%02d\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"%02d %3s\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"%3s %02d\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c" %02d:%02d\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c" %04d\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c" %+03d:%02d\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c" %+03d\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"a.m.\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"p.m.\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"A.M.\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"P.M.\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"%I:%M:%S %p\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@datetktbl = internal constant [277 x %struct.datetkn] [%struct.datetkn { [11 x i8] c"-infinity\00\00", i8 0, i32 9 }, %struct.datetkn { [11 x i8] c"acsst\00\00\00\00\00\00", i8 6, i32 37800 }, %struct.datetkn { [11 x i8] c"acst\00\00\00\00\00\00\00", i8 6, i32 -14400 }, %struct.datetkn { [11 x i8] c"act\00\00\00\00\00\00\00\00", i8 5, i32 -18000 }, %struct.datetkn { [11 x i8] c"ad\00\00\00\00\00\00\00\00\00", i8 18, i32 0 }, %struct.datetkn { [11 x i8] c"adt\00\00\00\00\00\00\00\00", i8 6, i32 -10800 }, %struct.datetkn { [11 x i8] c"aesst\00\00\00\00\00\00", i8 6, i32 39600 }, %struct.datetkn { [11 x i8] c"aest\00\00\00\00\00\00\00", i8 5, i32 36000 }, %struct.datetkn { [11 x i8] c"aft\00\00\00\00\00\00\00\00", i8 5, i32 16200 }, %struct.datetkn { [11 x i8] c"ahst\00\00\00\00\00\00\00", i8 5, i32 -36000 }, %struct.datetkn { [11 x i8] c"akdt\00\00\00\00\00\00\00", i8 6, i32 -28800 }, %struct.datetkn { [11 x i8] c"akst\00\00\00\00\00\00\00", i8 6, i32 -32400 }, %struct.datetkn { [11 x i8] c"allballs\00\00\00", i8 0, i32 16 }, %struct.datetkn { [11 x i8] c"almst\00\00\00\00\00\00", i8 5, i32 25200 }, %struct.datetkn { [11 x i8] c"almt\00\00\00\00\00\00\00", i8 5, i32 21600 }, %struct.datetkn { [11 x i8] c"am\00\00\00\00\00\00\00\00\00", i8 9, i32 0 }, %struct.datetkn { [11 x i8] c"amst\00\00\00\00\00\00\00", i8 6, i32 18000 }, %struct.datetkn { [11 x i8] c"amt\00\00\00\00\00\00\00\00", i8 5, i32 14400 }, %struct.datetkn { [11 x i8] c"anast\00\00\00\00\00\00", i8 6, i32 46800 }, %struct.datetkn { [11 x i8] c"anat\00\00\00\00\00\00\00", i8 5, i32 43200 }, %struct.datetkn { [11 x i8] c"apr\00\00\00\00\00\00\00\00", i8 1, i32 4 }, %struct.datetkn { [11 x i8] c"april\00\00\00\00\00\00", i8 1, i32 4 }, %struct.datetkn { [11 x i8] c"art\00\00\00\00\00\00\00\00", i8 5, i32 -10800 }, %struct.datetkn { [11 x i8] c"ast\00\00\00\00\00\00\00\00", i8 5, i32 -14400 }, %struct.datetkn { [11 x i8] c"at\00\00\00\00\00\00\00\00\00", i8 8, i32 0 }, %struct.datetkn { [11 x i8] c"aug\00\00\00\00\00\00\00\00", i8 1, i32 8 }, %struct.datetkn { [11 x i8] c"august\00\00\00\00\00", i8 1, i32 8 }, %struct.datetkn { [11 x i8] c"awsst\00\00\00\00\00\00", i8 6, i32 32400 }, %struct.datetkn { [11 x i8] c"awst\00\00\00\00\00\00\00", i8 5, i32 28800 }, %struct.datetkn { [11 x i8] c"awt\00\00\00\00\00\00\00\00", i8 6, i32 -10800 }, %struct.datetkn { [11 x i8] c"azost\00\00\00\00\00\00", i8 6, i32 0 }, %struct.datetkn { [11 x i8] c"azot\00\00\00\00\00\00\00", i8 5, i32 -3600 }, %struct.datetkn { [11 x i8] c"azst\00\00\00\00\00\00\00", i8 6, i32 18000 }, %struct.datetkn { [11 x i8] c"azt\00\00\00\00\00\00\00\00", i8 5, i32 14400 }, %struct.datetkn { [11 x i8] c"bc\00\00\00\00\00\00\00\00\00", i8 18, i32 1 }, %struct.datetkn { [11 x i8] c"bdst\00\00\00\00\00\00\00", i8 5, i32 7200 }, %struct.datetkn { [11 x i8] c"bdt\00\00\00\00\00\00\00\00", i8 5, i32 21600 }, %struct.datetkn { [11 x i8] c"bnt\00\00\00\00\00\00\00\00", i8 5, i32 28800 }, %struct.datetkn { [11 x i8] c"bort\00\00\00\00\00\00\00", i8 5, i32 28800 }, %struct.datetkn { [11 x i8] c"bot\00\00\00\00\00\00\00\00", i8 5, i32 -14400 }, %struct.datetkn { [11 x i8] c"bra\00\00\00\00\00\00\00\00", i8 5, i32 -10800 }, %struct.datetkn { [11 x i8] c"bst\00\00\00\00\00\00\00\00", i8 6, i32 3600 }, %struct.datetkn { [11 x i8] c"bt\00\00\00\00\00\00\00\00\00", i8 5, i32 10800 }, %struct.datetkn { [11 x i8] c"btt\00\00\00\00\00\00\00\00", i8 5, i32 21600 }, %struct.datetkn { [11 x i8] c"cadt\00\00\00\00\00\00\00", i8 6, i32 37800 }, %struct.datetkn { [11 x i8] c"cast\00\00\00\00\00\00\00", i8 5, i32 34200 }, %struct.datetkn { [11 x i8] c"cat\00\00\00\00\00\00\00\00", i8 5, i32 -36000 }, %struct.datetkn { [11 x i8] c"cct\00\00\00\00\00\00\00\00", i8 5, i32 28800 }, %struct.datetkn { [11 x i8] c"cdt\00\00\00\00\00\00\00\00", i8 6, i32 -18000 }, %struct.datetkn { [11 x i8] c"cest\00\00\00\00\00\00\00", i8 6, i32 7200 }, %struct.datetkn { [11 x i8] c"cet\00\00\00\00\00\00\00\00", i8 5, i32 3600 }, %struct.datetkn { [11 x i8] c"cetdst\00\00\00\00\00", i8 6, i32 7200 }, %struct.datetkn { [11 x i8] c"chadt\00\00\00\00\00\00", i8 6, i32 49500 }, %struct.datetkn { [11 x i8] c"chast\00\00\00\00\00\00", i8 5, i32 45900 }, %struct.datetkn { [11 x i8] c"ckt\00\00\00\00\00\00\00\00", i8 5, i32 43200 }, %struct.datetkn { [11 x i8] c"clst\00\00\00\00\00\00\00", i8 6, i32 -10800 }, %struct.datetkn { [11 x i8] c"clt\00\00\00\00\00\00\00\00", i8 5, i32 -14400 }, %struct.datetkn { [11 x i8] c"cot\00\00\00\00\00\00\00\00", i8 5, i32 -18000 }, %struct.datetkn { [11 x i8] c"cst\00\00\00\00\00\00\00\00", i8 5, i32 -21600 }, %struct.datetkn { [11 x i8] c"cvt\00\00\00\00\00\00\00\00", i8 5, i32 25200 }, %struct.datetkn { [11 x i8] c"cxt\00\00\00\00\00\00\00\00", i8 5, i32 25200 }, %struct.datetkn { [11 x i8] c"d\00\00\00\00\00\00\00\00\00\00", i8 17, i32 21 }, %struct.datetkn { [11 x i8] c"davt\00\00\00\00\00\00\00", i8 5, i32 25200 }, %struct.datetkn { [11 x i8] c"ddut\00\00\00\00\00\00\00", i8 5, i32 36000 }, %struct.datetkn { [11 x i8] c"dec\00\00\00\00\00\00\00\00", i8 1, i32 12 }, %struct.datetkn { [11 x i8] c"december\00\00\00", i8 1, i32 12 }, %struct.datetkn { [11 x i8] c"dnt\00\00\00\00\00\00\00\00", i8 5, i32 3600 }, %struct.datetkn { [11 x i8] c"dow\00\00\00\00\00\00\00\00", i8 17, i32 32 }, %struct.datetkn { [11 x i8] c"doy\00\00\00\00\00\00\00\00", i8 17, i32 33 }, %struct.datetkn { [11 x i8] c"dst\00\00\00\00\00\00\00\00", i8 28, i32 3600 }, %struct.datetkn { [11 x i8] c"easst\00\00\00\00\00\00", i8 6, i32 -18000 }, %struct.datetkn { [11 x i8] c"east\00\00\00\00\00\00\00", i8 5, i32 -21600 }, %struct.datetkn { [11 x i8] c"eat\00\00\00\00\00\00\00\00", i8 5, i32 10800 }, %struct.datetkn { [11 x i8] c"edt\00\00\00\00\00\00\00\00", i8 6, i32 -14400 }, %struct.datetkn { [11 x i8] c"eest\00\00\00\00\00\00\00", i8 6, i32 10800 }, %struct.datetkn { [11 x i8] c"eet\00\00\00\00\00\00\00\00", i8 5, i32 7200 }, %struct.datetkn { [11 x i8] c"eetdst\00\00\00\00\00", i8 6, i32 10800 }, %struct.datetkn { [11 x i8] c"egst\00\00\00\00\00\00\00", i8 6, i32 0 }, %struct.datetkn { [11 x i8] c"egt\00\00\00\00\00\00\00\00", i8 5, i32 -3600 }, %struct.datetkn { [11 x i8] c"epoch\00\00\00\00\00\00", i8 0, i32 11 }, %struct.datetkn { [11 x i8] c"est\00\00\00\00\00\00\00\00", i8 5, i32 -18000 }, %struct.datetkn { [11 x i8] c"feb\00\00\00\00\00\00\00\00", i8 1, i32 2 }, %struct.datetkn { [11 x i8] c"february\00\00\00", i8 1, i32 2 }, %struct.datetkn { [11 x i8] c"fjst\00\00\00\00\00\00\00", i8 6, i32 -46800 }, %struct.datetkn { [11 x i8] c"fjt\00\00\00\00\00\00\00\00", i8 5, i32 -43200 }, %struct.datetkn { [11 x i8] c"fkst\00\00\00\00\00\00\00", i8 6, i32 -10800 }, %struct.datetkn { [11 x i8] c"fkt\00\00\00\00\00\00\00\00", i8 5, i32 -7200 }, %struct.datetkn { [11 x i8] c"fri\00\00\00\00\00\00\00\00", i8 16, i32 5 }, %struct.datetkn { [11 x i8] c"friday\00\00\00\00\00", i8 16, i32 5 }, %struct.datetkn { [11 x i8] c"fst\00\00\00\00\00\00\00\00", i8 5, i32 3600 }, %struct.datetkn { [11 x i8] c"fwt\00\00\00\00\00\00\00\00", i8 6, i32 7200 }, %struct.datetkn { [11 x i8] c"galt\00\00\00\00\00\00\00", i8 5, i32 -21600 }, %struct.datetkn { [11 x i8] c"gamt\00\00\00\00\00\00\00", i8 5, i32 -32400 }, %struct.datetkn { [11 x i8] c"gest\00\00\00\00\00\00\00", i8 6, i32 18000 }, %struct.datetkn { [11 x i8] c"get\00\00\00\00\00\00\00\00", i8 5, i32 14400 }, %struct.datetkn { [11 x i8] c"gft\00\00\00\00\00\00\00\00", i8 5, i32 -10800 }, %struct.datetkn { [11 x i8] c"gilt\00\00\00\00\00\00\00", i8 5, i32 43200 }, %struct.datetkn { [11 x i8] c"gmt\00\00\00\00\00\00\00\00", i8 5, i32 0 }, %struct.datetkn { [11 x i8] c"gst\00\00\00\00\00\00\00\00", i8 5, i32 36000 }, %struct.datetkn { [11 x i8] c"gyt\00\00\00\00\00\00\00\00", i8 5, i32 -14400 }, %struct.datetkn { [11 x i8] c"h\00\00\00\00\00\00\00\00\00\00", i8 17, i32 20 }, %struct.datetkn { [11 x i8] c"hdt\00\00\00\00\00\00\00\00", i8 6, i32 -32400 }, %struct.datetkn { [11 x i8] c"hkt\00\00\00\00\00\00\00\00", i8 5, i32 28800 }, %struct.datetkn { [11 x i8] c"hst\00\00\00\00\00\00\00\00", i8 5, i32 -36000 }, %struct.datetkn { [11 x i8] c"ict\00\00\00\00\00\00\00\00", i8 5, i32 25200 }, %struct.datetkn { [11 x i8] c"idle\00\00\00\00\00\00\00", i8 5, i32 43200 }, %struct.datetkn { [11 x i8] c"idlw\00\00\00\00\00\00\00", i8 5, i32 -43200 }, %struct.datetkn { [11 x i8] c"infinity\00\00\00", i8 0, i32 10 }, %struct.datetkn { [11 x i8] c"iot\00\00\00\00\00\00\00\00", i8 5, i32 18000 }, %struct.datetkn { [11 x i8] c"irkst\00\00\00\00\00\00", i8 6, i32 32400 }, %struct.datetkn { [11 x i8] c"irkt\00\00\00\00\00\00\00", i8 5, i32 28800 }, %struct.datetkn { [11 x i8] c"irt\00\00\00\00\00\00\00\00", i8 5, i32 12600 }, %struct.datetkn { [11 x i8] c"isodow\00\00\00\00\00", i8 17, i32 37 }, %struct.datetkn { [11 x i8] c"ist\00\00\00\00\00\00\00\00", i8 5, i32 7200 }, %struct.datetkn { [11 x i8] c"it\00\00\00\00\00\00\00\00\00", i8 5, i32 12600 }, %struct.datetkn { [11 x i8] c"j\00\00\00\00\00\00\00\00\00\00", i8 17, i32 31 }, %struct.datetkn { [11 x i8] c"jan\00\00\00\00\00\00\00\00", i8 1, i32 1 }, %struct.datetkn { [11 x i8] c"january\00\00\00\00", i8 1, i32 1 }, %struct.datetkn { [11 x i8] c"javt\00\00\00\00\00\00\00", i8 5, i32 25200 }, %struct.datetkn { [11 x i8] c"jayt\00\00\00\00\00\00\00", i8 5, i32 32400 }, %struct.datetkn { [11 x i8] c"jd\00\00\00\00\00\00\00\00\00", i8 17, i32 31 }, %struct.datetkn { [11 x i8] c"jst\00\00\00\00\00\00\00\00", i8 5, i32 32400 }, %struct.datetkn { [11 x i8] c"jt\00\00\00\00\00\00\00\00\00", i8 5, i32 27000 }, %struct.datetkn { [11 x i8] c"jul\00\00\00\00\00\00\00\00", i8 1, i32 7 }, %struct.datetkn { [11 x i8] c"julian\00\00\00\00\00", i8 17, i32 31 }, %struct.datetkn { [11 x i8] c"july\00\00\00\00\00\00\00", i8 1, i32 7 }, %struct.datetkn { [11 x i8] c"jun\00\00\00\00\00\00\00\00", i8 1, i32 6 }, %struct.datetkn { [11 x i8] c"june\00\00\00\00\00\00\00", i8 1, i32 6 }, %struct.datetkn { [11 x i8] c"kdt\00\00\00\00\00\00\00\00", i8 6, i32 36000 }, %struct.datetkn { [11 x i8] c"kgst\00\00\00\00\00\00\00", i8 6, i32 21600 }, %struct.datetkn { [11 x i8] c"kgt\00\00\00\00\00\00\00\00", i8 5, i32 18000 }, %struct.datetkn { [11 x i8] c"kost\00\00\00\00\00\00\00", i8 5, i32 43200 }, %struct.datetkn { [11 x i8] c"krast\00\00\00\00\00\00", i8 6, i32 25200 }, %struct.datetkn { [11 x i8] c"krat\00\00\00\00\00\00\00", i8 5, i32 28800 }, %struct.datetkn { [11 x i8] c"kst\00\00\00\00\00\00\00\00", i8 5, i32 32400 }, %struct.datetkn { [11 x i8] c"lhdt\00\00\00\00\00\00\00", i8 6, i32 39600 }, %struct.datetkn { [11 x i8] c"lhst\00\00\00\00\00\00\00", i8 5, i32 37800 }, %struct.datetkn { [11 x i8] c"ligt\00\00\00\00\00\00\00", i8 5, i32 36000 }, %struct.datetkn { [11 x i8] c"lint\00\00\00\00\00\00\00", i8 5, i32 50400 }, %struct.datetkn { [11 x i8] c"lkt\00\00\00\00\00\00\00\00", i8 5, i32 21600 }, %struct.datetkn { [11 x i8] c"m\00\00\00\00\00\00\00\00\00\00", i8 17, i32 23 }, %struct.datetkn { [11 x i8] c"magst\00\00\00\00\00\00", i8 6, i32 43200 }, %struct.datetkn { [11 x i8] c"magt\00\00\00\00\00\00\00", i8 5, i32 39600 }, %struct.datetkn { [11 x i8] c"mar\00\00\00\00\00\00\00\00", i8 1, i32 3 }, %struct.datetkn { [11 x i8] c"march\00\00\00\00\00\00", i8 1, i32 3 }, %struct.datetkn { [11 x i8] c"mart\00\00\00\00\00\00\00", i8 5, i32 -34200 }, %struct.datetkn { [11 x i8] c"mawt\00\00\00\00\00\00\00", i8 5, i32 21600 }, %struct.datetkn { [11 x i8] c"may\00\00\00\00\00\00\00\00", i8 1, i32 5 }, %struct.datetkn { [11 x i8] c"mdt\00\00\00\00\00\00\00\00", i8 6, i32 -21600 }, %struct.datetkn { [11 x i8] c"mest\00\00\00\00\00\00\00", i8 6, i32 7200 }, %struct.datetkn { [11 x i8] c"met\00\00\00\00\00\00\00\00", i8 5, i32 3600 }, %struct.datetkn { [11 x i8] c"metdst\00\00\00\00\00", i8 6, i32 7200 }, %struct.datetkn { [11 x i8] c"mewt\00\00\00\00\00\00\00", i8 5, i32 3600 }, %struct.datetkn { [11 x i8] c"mez\00\00\00\00\00\00\00\00", i8 5, i32 3600 }, %struct.datetkn { [11 x i8] c"mht\00\00\00\00\00\00\00\00", i8 5, i32 43200 }, %struct.datetkn { [11 x i8] c"mm\00\00\00\00\00\00\00\00\00", i8 17, i32 19 }, %struct.datetkn { [11 x i8] c"mmt\00\00\00\00\00\00\00\00", i8 5, i32 23400 }, %struct.datetkn { [11 x i8] c"mon\00\00\00\00\00\00\00\00", i8 16, i32 1 }, %struct.datetkn { [11 x i8] c"monday\00\00\00\00\00", i8 16, i32 1 }, %struct.datetkn { [11 x i8] c"mpt\00\00\00\00\00\00\00\00", i8 5, i32 36000 }, %struct.datetkn { [11 x i8] c"msd\00\00\00\00\00\00\00\00", i8 6, i32 14400 }, %struct.datetkn { [11 x i8] c"msk\00\00\00\00\00\00\00\00", i8 5, i32 10800 }, %struct.datetkn { [11 x i8] c"mst\00\00\00\00\00\00\00\00", i8 5, i32 -25200 }, %struct.datetkn { [11 x i8] c"mt\00\00\00\00\00\00\00\00\00", i8 5, i32 30600 }, %struct.datetkn { [11 x i8] c"mut\00\00\00\00\00\00\00\00", i8 5, i32 14400 }, %struct.datetkn { [11 x i8] c"mvt\00\00\00\00\00\00\00\00", i8 5, i32 18000 }, %struct.datetkn { [11 x i8] c"myt\00\00\00\00\00\00\00\00", i8 5, i32 28800 }, %struct.datetkn { [11 x i8] c"nct\00\00\00\00\00\00\00\00", i8 5, i32 39600 }, %struct.datetkn { [11 x i8] c"ndt\00\00\00\00\00\00\00\00", i8 6, i32 -9000 }, %struct.datetkn { [11 x i8] c"nft\00\00\00\00\00\00\00\00", i8 5, i32 -12600 }, %struct.datetkn { [11 x i8] c"nor\00\00\00\00\00\00\00\00", i8 5, i32 3600 }, %struct.datetkn { [11 x i8] c"nov\00\00\00\00\00\00\00\00", i8 1, i32 11 }, %struct.datetkn { [11 x i8] c"november\00\00\00", i8 1, i32 11 }, %struct.datetkn { [11 x i8] c"novst\00\00\00\00\00\00", i8 6, i32 25200 }, %struct.datetkn { [11 x i8] c"novt\00\00\00\00\00\00\00", i8 5, i32 21600 }, %struct.datetkn { [11 x i8] c"now\00\00\00\00\00\00\00\00", i8 0, i32 12 }, %struct.datetkn { [11 x i8] c"npt\00\00\00\00\00\00\00\00", i8 5, i32 20700 }, %struct.datetkn { [11 x i8] c"nst\00\00\00\00\00\00\00\00", i8 5, i32 -12600 }, %struct.datetkn { [11 x i8] c"nt\00\00\00\00\00\00\00\00\00", i8 5, i32 -39600 }, %struct.datetkn { [11 x i8] c"nut\00\00\00\00\00\00\00\00", i8 5, i32 -39600 }, %struct.datetkn { [11 x i8] c"nzdt\00\00\00\00\00\00\00", i8 6, i32 46800 }, %struct.datetkn { [11 x i8] c"nzst\00\00\00\00\00\00\00", i8 5, i32 43200 }, %struct.datetkn { [11 x i8] c"nzt\00\00\00\00\00\00\00\00", i8 5, i32 43200 }, %struct.datetkn { [11 x i8] c"oct\00\00\00\00\00\00\00\00", i8 1, i32 10 }, %struct.datetkn { [11 x i8] c"october\00\00\00\00", i8 1, i32 10 }, %struct.datetkn { [11 x i8] c"omsst\00\00\00\00\00\00", i8 6, i32 25200 }, %struct.datetkn { [11 x i8] c"omst\00\00\00\00\00\00\00", i8 5, i32 21600 }, %struct.datetkn { [11 x i8] c"on\00\00\00\00\00\00\00\00\00", i8 8, i32 0 }, %struct.datetkn { [11 x i8] c"pdt\00\00\00\00\00\00\00\00", i8 6, i32 -25200 }, %struct.datetkn { [11 x i8] c"pet\00\00\00\00\00\00\00\00", i8 5, i32 -18000 }, %struct.datetkn { [11 x i8] c"petst\00\00\00\00\00\00", i8 6, i32 46800 }, %struct.datetkn { [11 x i8] c"pett\00\00\00\00\00\00\00", i8 5, i32 43200 }, %struct.datetkn { [11 x i8] c"pgt\00\00\00\00\00\00\00\00", i8 5, i32 36000 }, %struct.datetkn { [11 x i8] c"phot\00\00\00\00\00\00\00", i8 5, i32 46800 }, %struct.datetkn { [11 x i8] c"pht\00\00\00\00\00\00\00\00", i8 5, i32 28800 }, %struct.datetkn { [11 x i8] c"pkt\00\00\00\00\00\00\00\00", i8 5, i32 18000 }, %struct.datetkn { [11 x i8] c"pm\00\00\00\00\00\00\00\00\00", i8 9, i32 1 }, %struct.datetkn { [11 x i8] c"pmdt\00\00\00\00\00\00\00", i8 6, i32 -7200 }, %struct.datetkn { [11 x i8] c"pont\00\00\00\00\00\00\00", i8 5, i32 39600 }, %struct.datetkn { [11 x i8] c"pst\00\00\00\00\00\00\00\00", i8 5, i32 -28800 }, %struct.datetkn { [11 x i8] c"pwt\00\00\00\00\00\00\00\00", i8 5, i32 32400 }, %struct.datetkn { [11 x i8] c"pyst\00\00\00\00\00\00\00", i8 6, i32 -10800 }, %struct.datetkn { [11 x i8] c"pyt\00\00\00\00\00\00\00\00", i8 5, i32 -14400 }, %struct.datetkn { [11 x i8] c"ret\00\00\00\00\00\00\00\00", i8 6, i32 14400 }, %struct.datetkn { [11 x i8] c"s\00\00\00\00\00\00\00\00\00\00", i8 17, i32 18 }, %struct.datetkn { [11 x i8] c"sadt\00\00\00\00\00\00\00", i8 6, i32 37800 }, %struct.datetkn { [11 x i8] c"sast\00\00\00\00\00\00\00", i8 5, i32 34200 }, %struct.datetkn { [11 x i8] c"sat\00\00\00\00\00\00\00\00", i8 16, i32 6 }, %struct.datetkn { [11 x i8] c"saturday\00\00\00", i8 16, i32 6 }, %struct.datetkn { [11 x i8] c"sct\00\00\00\00\00\00\00\00", i8 6, i32 14400 }, %struct.datetkn { [11 x i8] c"sep\00\00\00\00\00\00\00\00", i8 1, i32 9 }, %struct.datetkn { [11 x i8] c"sept\00\00\00\00\00\00\00", i8 1, i32 9 }, %struct.datetkn { [11 x i8] c"september\00\00", i8 1, i32 9 }, %struct.datetkn { [11 x i8] c"set\00\00\00\00\00\00\00\00", i8 5, i32 -3600 }, %struct.datetkn { [11 x i8] c"sst\00\00\00\00\00\00\00\00", i8 6, i32 7200 }, %struct.datetkn { [11 x i8] c"sun\00\00\00\00\00\00\00\00", i8 16, i32 0 }, %struct.datetkn { [11 x i8] c"sunday\00\00\00\00\00", i8 16, i32 0 }, %struct.datetkn { [11 x i8] c"swt\00\00\00\00\00\00\00\00", i8 5, i32 3600 }, %struct.datetkn { [11 x i8] c"t\00\00\00\00\00\00\00\00\00\00", i8 23, i32 3 }, %struct.datetkn { [11 x i8] c"tft\00\00\00\00\00\00\00\00", i8 5, i32 18000 }, %struct.datetkn { [11 x i8] c"that\00\00\00\00\00\00\00", i8 5, i32 -36000 }, %struct.datetkn { [11 x i8] c"thu\00\00\00\00\00\00\00\00", i8 16, i32 4 }, %struct.datetkn { [11 x i8] c"thur\00\00\00\00\00\00\00", i8 16, i32 4 }, %struct.datetkn { [11 x i8] c"thurs\00\00\00\00\00\00", i8 16, i32 4 }, %struct.datetkn { [11 x i8] c"thursday\00\00\00", i8 16, i32 4 }, %struct.datetkn { [11 x i8] c"tjt\00\00\00\00\00\00\00\00", i8 5, i32 18000 }, %struct.datetkn { [11 x i8] c"tkt\00\00\00\00\00\00\00\00", i8 5, i32 -36000 }, %struct.datetkn { [11 x i8] c"tmt\00\00\00\00\00\00\00\00", i8 5, i32 18000 }, %struct.datetkn { [11 x i8] c"today\00\00\00\00\00\00", i8 0, i32 14 }, %struct.datetkn { [11 x i8] c"tomorrow\00\00\00", i8 0, i32 15 }, %struct.datetkn { [11 x i8] c"tot\00\00\00\00\00\00\00\00", i8 5, i32 46800 }, %struct.datetkn { [11 x i8] c"truk\00\00\00\00\00\00\00", i8 5, i32 36000 }, %struct.datetkn { [11 x i8] c"tue\00\00\00\00\00\00\00\00", i8 16, i32 2 }, %struct.datetkn { [11 x i8] c"tues\00\00\00\00\00\00\00", i8 16, i32 2 }, %struct.datetkn { [11 x i8] c"tuesday\00\00\00\00", i8 16, i32 2 }, %struct.datetkn { [11 x i8] c"tvt\00\00\00\00\00\00\00\00", i8 5, i32 43200 }, %struct.datetkn { [11 x i8] c"ulast\00\00\00\00\00\00", i8 6, i32 32400 }, %struct.datetkn { [11 x i8] c"ulat\00\00\00\00\00\00\00", i8 5, i32 28800 }, %struct.datetkn { [11 x i8] c"ut\00\00\00\00\00\00\00\00\00", i8 5, i32 0 }, %struct.datetkn { [11 x i8] c"utc\00\00\00\00\00\00\00\00", i8 5, i32 0 }, %struct.datetkn { [11 x i8] c"uyst\00\00\00\00\00\00\00", i8 6, i32 -7200 }, %struct.datetkn { [11 x i8] c"uyt\00\00\00\00\00\00\00\00", i8 5, i32 -10800 }, %struct.datetkn { [11 x i8] c"uzst\00\00\00\00\00\00\00", i8 6, i32 21600 }, %struct.datetkn { [11 x i8] c"uzt\00\00\00\00\00\00\00\00", i8 5, i32 18000 }, %struct.datetkn { [11 x i8] c"vet\00\00\00\00\00\00\00\00", i8 5, i32 -14400 }, %struct.datetkn { [11 x i8] c"vlast\00\00\00\00\00\00", i8 6, i32 39600 }, %struct.datetkn { [11 x i8] c"vlat\00\00\00\00\00\00\00", i8 5, i32 36000 }, %struct.datetkn { [11 x i8] c"vut\00\00\00\00\00\00\00\00", i8 5, i32 39600 }, %struct.datetkn { [11 x i8] c"wadt\00\00\00\00\00\00\00", i8 6, i32 28800 }, %struct.datetkn { [11 x i8] c"wakt\00\00\00\00\00\00\00", i8 5, i32 43200 }, %struct.datetkn { [11 x i8] c"wast\00\00\00\00\00\00\00", i8 5, i32 25200 }, %struct.datetkn { [11 x i8] c"wat\00\00\00\00\00\00\00\00", i8 5, i32 -3600 }, %struct.datetkn { [11 x i8] c"wdt\00\00\00\00\00\00\00\00", i8 6, i32 32400 }, %struct.datetkn { [11 x i8] c"wed\00\00\00\00\00\00\00\00", i8 16, i32 3 }, %struct.datetkn { [11 x i8] c"wednesday\00\00", i8 16, i32 3 }, %struct.datetkn { [11 x i8] c"weds\00\00\00\00\00\00\00", i8 16, i32 3 }, %struct.datetkn { [11 x i8] c"west\00\00\00\00\00\00\00", i8 6, i32 3600 }, %struct.datetkn { [11 x i8] c"wet\00\00\00\00\00\00\00\00", i8 5, i32 0 }, %struct.datetkn { [11 x i8] c"wetdst\00\00\00\00\00", i8 6, i32 3600 }, %struct.datetkn { [11 x i8] c"wft\00\00\00\00\00\00\00\00", i8 5, i32 43200 }, %struct.datetkn { [11 x i8] c"wgst\00\00\00\00\00\00\00", i8 6, i32 -7200 }, %struct.datetkn { [11 x i8] c"wgt\00\00\00\00\00\00\00\00", i8 5, i32 -10800 }, %struct.datetkn { [11 x i8] c"wst\00\00\00\00\00\00\00\00", i8 5, i32 28800 }, %struct.datetkn { [11 x i8] c"y\00\00\00\00\00\00\00\00\00\00", i8 17, i32 25 }, %struct.datetkn { [11 x i8] c"yakst\00\00\00\00\00\00", i8 6, i32 36000 }, %struct.datetkn { [11 x i8] c"yakt\00\00\00\00\00\00\00", i8 5, i32 32400 }, %struct.datetkn { [11 x i8] c"yapt\00\00\00\00\00\00\00", i8 5, i32 36000 }, %struct.datetkn { [11 x i8] c"ydt\00\00\00\00\00\00\00\00", i8 6, i32 -28800 }, %struct.datetkn { [11 x i8] c"yekst\00\00\00\00\00\00", i8 6, i32 21600 }, %struct.datetkn { [11 x i8] c"yekt\00\00\00\00\00\00\00", i8 5, i32 18000 }, %struct.datetkn { [11 x i8] c"yesterday\00\00", i8 0, i32 13 }, %struct.datetkn { [11 x i8] c"yst\00\00\00\00\00\00\00\00", i8 5, i32 -32400 }, %struct.datetkn { [11 x i8] c"z\00\00\00\00\00\00\00\00\00\00", i8 5, i32 0 }, %struct.datetkn { [11 x i8] c"zp4\00\00\00\00\00\00\00\00", i8 5, i32 -14400 }, %struct.datetkn { [11 x i8] c"zp5\00\00\00\00\00\00\00\00", i8 5, i32 -18000 }, %struct.datetkn { [11 x i8] c"zp6\00\00\00\00\00\00\00\00", i8 5, i32 -21600 }, %struct.datetkn { [11 x i8] c"zulu\00\00\00\00\00\00\00", i8 5, i32 0 }], align 16
@datecache = internal unnamed_addr global [25 x ptr] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -128, 128) i32 @DecodeUnits(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr @deltacache, i64 %i.a ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 10) #15
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i8, ptr %1, align 1
  %i.g = sext i8 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.02130.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @deltatktbl, i64 960), %bb.c ], [ %.122.i, %bb.f ] ; 2 uses
  %.02329.i = phi ptr [ @deltatktbl, %bb.c ], [ %.124.i, %bb.f ] ; 3 uses
  %i.h = ptrtoint ptr %.02130.i to i64
  %i.i = ptrtoint ptr %.02329.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr i64 %i.j, 5
  %i.l = getelementptr inbounds [16 x i8], ptr %.02329.i, i64 %i.k ; 5 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = sext i8 %i.m to i32
  %i.o = sub nsw i32 %i.g, %i.n                   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 10) #15 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.019.i = phi i32 [ %i.q, %bb.e ], [ %i.o, %bb.d ]
  %i.s = icmp slt i32 %.019.i, 0                  ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 -16
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.124.i = select i1 %i.s, ptr %.02329.i, ptr %i.u ; 2 uses
  %.122.i = select i1 %i.s, ptr %i.t, ptr %.02130.i ; 2 uses
  %.not.not.i = icmp ult ptr %.122.i, %.124.i
  br i1 %.not.not.i, label %datebsearch.exit, label %bb.d, !llvm.loop !3

datebsearch.exit:                                 ; preds = %bb.f
  store ptr null, ptr %i.b, align 8
  br label %bb.g

.loopexit:                                        ; preds = %bb.e, %bb.b
  %.0.ph = phi ptr [ %i.c, %bb.b ], [ %i.l, %bb.e ] ; 3 uses
  store ptr %.0.ph, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.0.ph, i64 11
  %i.w = load i8, ptr %i.v, align 1
  %i.x = sext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %.0.ph, i64 12
  %i.z = load i32, ptr %i.y, align 4
  br label %bb.g

bb.g:                                             ; preds = %datebsearch.exit, %.loopexit
  %storemerge = phi i32 [ %i.z, %.loopexit ], [ 0, %datebsearch.exit ]
  %.012 = phi i32 [ %i.x, %.loopexit ], [ 31, %datebsearch.exit ]
  store i32 %storemerge, ptr %2, align 4
  ret i32 %.012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @date2j(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 2                       ; 2 uses
  %.015.v = select i1 %i.a, i32 1, i32 13
  %.015 = add i32 %.015.v, %1
  %.0.v = select i1 %i.a, i32 4800, i32 4799
  %.0 = add i32 %.0.v, %0                         ; 4 uses
  %.neg = sdiv i32 %.0, -100
  %i.b = mul i32 %.0, 365
  %i.c = sdiv i32 %.0, 4
  %i.d = sdiv i32 %.0, 400
  %i.e = mul i32 %.015, 7834
  %i.f = sdiv i32 %i.e, 256
  %i.g = add i32 %2, -32167
  %i.h = add i32 %i.g, %i.b
  %i.i = add i32 %i.h, %i.c
  %i.j = add i32 %i.i, %.neg
  %i.k = add i32 %i.j, %i.d
  %i.l = add i32 %i.k, %i.f
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @j2date(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = add i32 %0, 32044                        ; 2 uses
  %i.b = udiv i32 %i.a, 146097                    ; 2 uses
  %.neg = mul i32 %i.b, 1073595727
  %i.c = add i32 %.neg, %i.a
  %i.d = shl i32 %i.c, 2
  %i.e = or disjoint i32 %i.d, 3
  %i.f = mul nuw nsw i32 %i.b, 3
  %i.g = udiv i32 %i.e, 146097
  %i.h = add i32 %0, 32104
  %i.i = add i32 %i.h, %i.f
  %i.j = add i32 %i.i, %i.g                       ; 2 uses
  %i.k = udiv i32 %i.j, 1461                      ; 2 uses
  %.neg24 = mul i32 %i.k, -1461
  %i.l = add i32 %.neg24, %i.j                    ; 3 uses
  %i.m = shl i32 %i.l, 2                          ; 2 uses
  %.not = icmp ult i32 %i.m, 1461
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = add i32 %i.l, 305
  %i.o = urem i32 %i.n, 365
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = add i32 %i.l, 306
  %i.q = urem i32 %i.p, 366
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i32 [ %i.o, %bb.b ], [ %i.q, %bb.c ]
  %i.s = udiv i32 %i.m, 1461
  %i.t = add nuw nsw i32 %i.r, 123                ; 2 uses
  %i.u = shl nuw nsw i32 %i.k, 2
  %i.v = add nsw i32 %i.u, -4800
  %i.w = add nsw i32 %i.v, %i.s
  store i32 %i.w, ptr %1, align 4
  %i.x = mul nuw nsw i32 %i.t, 2141
  %i.y = lshr i32 %i.x, 16                        ; 2 uses
  %i.z = mul nuw nsw i32 %i.y, 3917
  %i.aa = lshr i32 %i.z, 7
  %i.ab = sub nsw i32 %i.t, %i.aa
  store i32 %i.ab, ptr %3, align 4
  %i.ac = trunc nuw nsw i32 %i.y to i8
  %.lhs.trunc = add nuw nsw i8 %i.ac, 10
  %i.ad = urem i8 %.lhs.trunc, 12
  %narrow = add nuw nsw i8 %i.ad, 1
  %i.ae = zext nneg i8 %narrow to i32
  store i32 %i.ae, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @EncodeDateOnly(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #5 {
bb.a:
  switch i32 %1, label %bb.n [
    i32 1, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %i.b, i32 noundef %i.e, i32 noundef %i.g) #16 ; 0 uses
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.i = sub i32 1, %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %2, ptr noundef nonnull @.str.38, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m, ptr noundef nonnull @.str.39) #16 ; 0 uses
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  br i1 %3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8
  %i.s = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %2, ptr noundef nonnull @.str.40, i32 noundef %i.p, i32 noundef %i.r) #16 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %2, ptr noundef nonnull @.str.40, i32 noundef %i.u, i32 noundef %i.w) #16 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i32, ptr %i.y, align 4              ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.41, i32 noundef %i.z) #16 ; 0 uses
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.ad = sub i32 1, %i.z
  %i.ae = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.42, i32 noundef %i.ad, ptr noundef nonnull @.str.39) #16 ; 0 uses
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %2, ptr noundef nonnull @.str.43, i32 noundef %i.ag, i32 noundef %i.ai) #16 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.al = load i32, ptr %i.ak, align 4            ; 3 uses
  %i.am = icmp sgt i32 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 2 uses
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.44, i32 noundef %i.al) #16 ; 0 uses
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.ap = sub i32 1, %i.al
  %i.aq = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.45, i32 noundef %i.ap, ptr noundef nonnull @.str.39) #16 ; 0 uses
  br label %bb.t

bb.n:                                             ; preds = %bb.a
  br i1 %3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load i32, ptr %i.at, align 8
  %i.av = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef %i.as, i32 noundef %i.au) #16 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef %i.ax, i32 noundef %i.az) #16 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bc = load i32, ptr %i.bb, align 4            ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 2 uses
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bf = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.be, ptr noundef nonnull @.str.47, i32 noundef %i.bc) #16 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bg = sub i32 1, %i.bc
  %i.bh = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.be, ptr noundef nonnull @.str.48, i32 noundef %i.bg, ptr noundef nonnull @.str.39) #16 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.l, %bb.m, %bb.i, %bb.j, %bb.c, %bb.d
  ret void
}

declare i32 @pg_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @TrimTrailingZeros(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15 ; 2 uses
  %sext = shl i64 %i.a, 32
  %i.b = ashr exact i64 %sext, 32                 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 48
  br i1 %i.f, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = trunc i64 %i.a to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.h = phi i64 [ %i.m, %bb.b ], [ %i.b, %.lr.ph.preheader ]
  %.07 = phi i32 [ %i.l, %bb.b ], [ %i.g, %.lr.ph.preheader ]
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -3
  %i.k = load i8, ptr %i.j, align 1
  %.not = icmp eq i8 %i.k, 46
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = add i32 %.07, -1                         ; 2 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m ; 2 uses
  store i8 0, ptr %i.n, align 1
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 48
  br i1 %i.q, label %.lr.ph, label %.critedge, !llvm.loop !5

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @EncodeDateTime(ptr nofree noundef captures(none) %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, -1
  %spec.select = and i1 %2, %i.c                  ; 4 uses
  switch i32 %5, label %bb.aj [
    i32 1, label %bb.b
    i32 2, label %bb.k
    i32 3, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = sub i32 1, %i.e
end_hunk_0
begin_hunk_1_@ParseDateTime:bb.a

bb.z:                                             ; preds = %._crit_edge216
  %i.gs = and i32 %.lcssa182, 1024
  %.not139 = icmp eq i32 %i.gs, 0
  br i1 %.not139, label %.loopexit164, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv313
  store i32 6, ptr %i.gt, align 4
  %i.gu = load ptr, ptr %5, align 8               ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  store ptr %i.gv, ptr %5, align 8
  %i.gw = load i8, ptr %i.gu, align 1
  %i.gx = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.gw) #16
  %i.gy = getelementptr inbounds nuw i8, ptr %.0127.ph314, i64 2 ; 2 uses
  store i8 %i.gx, ptr %i.fk, align 1
  %i.gz = load ptr, ptr %i.c, align 8
  %i.ha = load ptr, ptr %5, align 8               ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.gz, i64 %i.hc
  %i.he = load i16, ptr %i.hd, align 2
  %i.hf = and i16 %i.he, 1024
  %.not140218 = icmp eq i16 %i.hf, 0
  br i1 %.not140218, label %.loopexit, label %.lr.ph221

.lr.ph221:                                        ; preds = %bb.aa, %.lr.ph221
  %i.hg = phi ptr [ %i.hm, %.lr.ph221 ], [ %i.ha, %bb.aa ] ; 2 uses
  %.11219 = phi ptr [ %i.hk, %.lr.ph221 ], [ %i.gy, %bb.aa ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  store ptr %i.hh, ptr %5, align 8
  %i.hi = load i8, ptr %i.hg, align 1
  %i.hj = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.hi) #16
  %i.hk = getelementptr inbounds nuw i8, ptr %.11219, i64 1 ; 2 uses
  store i8 %i.hj, ptr %.11219, align 1
  %i.hl = load ptr, ptr %i.c, align 8
  %i.hm = load ptr, ptr %5, align 8               ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2
  %i.hr = and i16 %i.hq, 1024
  %.not140 = icmp eq i16 %i.hr, 0
  br i1 %.not140, label %.loopexit, label %.lr.ph221, !llvm.loop !17

bb.ab:                                            ; preds = %bb.v
  %i.hs = and i32 %i.j, 4
  %.not136 = icmp eq i32 %i.hs, 0
  br i1 %.not136, label %.loopexit164, label %.backedge

.loopexit.sink.split:                             ; preds = %.lr.ph227, %bb.o, %._crit_edge192
  %.12.ph = phi ptr [ %.1.lcssa, %._crit_edge192 ], [ %.7223, %bb.o ], [ %.7, %.lr.ph227 ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv313
  store i32 0, ptr %i.ht, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.m, %switch.early.test, %bb.t, %switch.early.test156, %.lr.ph221, %.loopexit.sink.split, %bb.aa, %._crit_edge209, %._crit_edge201
  %.12 = phi ptr [ %.2, %switch.early.test ], [ %.9, %bb.t ], [ %i.gy, %bb.aa ], [ %.10, %switch.early.test156 ], [ %.5, %bb.m ], [ %.8.lcssa, %._crit_edge209 ], [ %.12.ph, %.loopexit.sink.split ], [ %i.hk, %.lr.ph221 ], [ %.3.lcssa, %._crit_edge201 ], [ %.4, %bb.j ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.12, i64 1
  store i8 0, ptr %.12, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %.pre = load ptr, ptr %5, align 8
  %i.hv = load i8, ptr %.pre, align 1
  %.not185 = icmp eq i8 %i.hv, 0
  br i1 %.not185, label %.outer._crit_edge, label %.lr.ph, !llvm.loop !14

.outer._crit_edge:                                ; preds = %.loopexit, %.backedge, %bb.a
  %indvars.iv311 = phi i64 [ %indvars.iv313, %.backedge ], [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ]
  %.0126.ph256 = trunc i64 %indvars.iv311 to i32
  store i32 %.0126.ph256, ptr %4, align 4
  br label %.loopexit164

.loopexit164:                                     ; preds = %.lr.ph, %bb.z, %bb.ab, %.outer._crit_edge
  %.0 = phi i32 [ 0, %.outer._crit_edge ], [ -1, %bb.ab ], [ -1, %bb.z ], [ -1, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

declare zeroext i8 @pg_tolower(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @DecodeDateTime(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, ptr nofree noundef initializes((0, 12), (32, 36)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, i1 noundef zeroext %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %7 = alloca %struct.tm, align 8                 ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %8 = alloca %struct.tm, align 8                 ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %9 = alloca %struct.tm, align 8                 ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %10 = alloca %struct.tm, align 8                ; 3 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 38 uses
  %i.g = alloca i8, align 1                       ; 9 uses
  %i.h = alloca i32, align 4                      ; 14 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store i8 0, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  store i32 2, ptr %3, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 14 uses
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 13 uses
  store i32 0, ptr %i.m, align 4
  store i32 0, ptr %4, align 8
  store i32 0, ptr %5, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 8 uses
  store i32 -1, ptr %i.n, align 8
  store i32 0, ptr %i.h, align 4
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = add nsw i32 %2, -1
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.w = zext nneg i32 %i.q to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.dc
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.dc ] ; 14 uses
  %.0282481 = phi i32 [ 0, %.lr.ph ], [ %.1283, %bb.dc ] ; 18 uses
  %.0284480 = phi i32 [ 0, %.lr.ph ], [ %.6290, %bb.dc ] ; 23 uses
  %.0292475 = phi i32 [ 2, %.lr.ph ], [ %.2294, %bb.dc ] ; 29 uses
  %.0295474 = phi i1 [ false, %.lr.ph ], [ %.2297, %bb.dc ] ; 30 uses
  %.0305473 = phi i1 [ false, %.lr.ph ], [ %.2307, %bb.dc ] ; 29 uses
  %i.x = getelementptr [4 x i8], ptr %1, i64 %indvars.iv ; 9 uses
  %i.y = load i32, ptr %i.x, align 4
  switch i32 %i.y, label %.thread417 [
    i32 2, label %bb.c
    i32 3, label %bb.aa
    i32 4, label %bb.af
    i32 0, label %bb.am
    i32 1, label %bb.bo
    i32 6, label %bb.bo
  ]

bb.c:                                             ; preds = %bb.b
  %i.z = icmp eq i32 %.0284480, 31
  br i1 %i.z, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i32 @strtoint(ptr noundef %i.ab, ptr noundef nonnull %i.i, i32 noundef 10) #16 ; 2 uses
  %i.ad = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %.not356 = icmp eq i8 %i.ae, 45
  br i1 %.not356, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.af = add i32 %i.ac, 32044                    ; 2 uses
  %i.ag = udiv i32 %i.af, 146097                  ; 2 uses
  %.neg.i = mul i32 %i.ag, 1073595727
  %i.ah = add i32 %.neg.i, %i.af
  %i.ai = shl i32 %i.ah, 2
  %i.aj = or disjoint i32 %i.ai, 3
  %i.ak = mul nuw nsw i32 %i.ag, 3
  %i.al = udiv i32 %i.aj, 146097
  %i.am = add i32 %i.ac, 32104
  %i.an = add i32 %i.am, %i.ak
  %i.ao = add i32 %i.an, %i.al                    ; 2 uses
  %i.ap = udiv i32 %i.ao, 1461                    ; 2 uses
  %.neg24.i = mul i32 %i.ap, -1461
  %i.aq = add i32 %.neg24.i, %i.ao                ; 3 uses
  %i.ar = shl i32 %i.aq, 2                        ; 2 uses
  %.not.i = icmp ult i32 %i.ar, 1461
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = add i32 %i.aq, 305
  %i.at = urem i32 %i.as, 365
  br label %j2date.exit

bb.g:                                             ; preds = %bb.e
  %i.au = add i32 %i.aq, 306
  %i.av = urem i32 %i.au, 366
  br label %j2date.exit

j2date.exit:                                      ; preds = %bb.f, %bb.g
  %i.aw = phi i32 [ %i.at, %bb.f ], [ %i.av, %bb.g ]
  %i.ax = udiv i32 %i.ar, 1461
  %i.ay = add nuw nsw i32 %i.aw, 123              ; 2 uses
  %i.az = shl nuw nsw i32 %i.ap, 2
  %i.ba = add nsw i32 %i.az, -4800
  %i.bb = add nsw i32 %i.ba, %i.ax
  store i32 %i.bb, ptr %i.t, align 4
  %i.bc = mul nuw nsw i32 %i.ay, 2141
  %i.bd = lshr i32 %i.bc, 16                      ; 2 uses
  %i.be = mul nuw nsw i32 %i.bd, 3917
  %i.bf = lshr i32 %i.be, 7
  %i.bg = sub nsw i32 %i.ay, %i.bf
  store i32 %i.bg, ptr %i.s, align 4
  %i.bh = trunc nuw nsw i32 %i.bd to i8
  %.lhs.trunc.i = add nuw nsw i8 %i.bh, 10
  %i.bi = urem i8 %.lhs.trunc.i, 12
  %narrow.i = add nuw nsw i8 %i.bi, 1
  %i.bj = zext nneg i8 %narrow.i to i32
  store i32 %i.bj, ptr %i.r, align 8
  %i.bk = call fastcc i32 @DecodeTimezone(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.h)
  %.not357 = icmp eq i32 %i.bk, 0
  br i1 %.not357, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.d, %j2date.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  br label %.thread417

bb.h:                                             ; preds = %j2date.exit
  store i32 7214, ptr %i.f, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  br label %bb.da

bb.i:                                             ; preds = %bb.c
  %i.bl = and i32 %.0282481, 14
  %i.bm = icmp eq i32 %i.bl, 14
  %i.bn = icmp ne i32 %.0284480, 0                ; 2 uses
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.bo = tail call ptr @__ctype_b_loc() #17
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 7 uses
  %i.bs = load i8, ptr %i.br, align 1             ; 3 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = and i16 %i.bv, 2048
  %i.bx = icmp ne i16 %i.bw, 0
  %or.cond9 = select i1 %i.bx, i1 true, i1 %i.bn
  br i1 %or.cond9, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  switch i32 %.0284480, label %.thread417 [
    i32 3, label %bb.l
    i32 0, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.by = and i32 %.0282481, 7168
  %i.bz = icmp eq i32 %i.by, 7168
  br i1 %i.bz, label %.thread417, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.br, i32 noundef 45) #15 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.thread417, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = call fastcc i32 @DecodeTimezone(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.h)
  %.not355 = icmp eq i32 %i.cc, 0
  br i1 %.not355, label %bb.o, label %.thread417

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.ca, align 1
  %i.cd = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.ce = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cd) #15
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = call fastcc i32 @DecodeNumberField(i32 noundef %i.cf, ptr noundef nonnull %i.cd, i32 noundef %.0282481, ptr noundef %i.f, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %i.g) ; 2 uses
  store i32 %i.cg, ptr %i.x, align 4
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %.thread417, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = load i32, ptr %i.f, align 4
  %i.cj = or i32 %i.ci, 32
  store i32 %i.cj, ptr %i.f, align 4
  br label %bb.da

bb.q:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %.not20.i = icmp eq i8 %i.bs, 0
  br i1 %.not20.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %i.ck = phi i8 [ %i.cq, %bb.r ], [ %i.bs, %bb.q ]
  %.01221.i = phi ptr [ %i.cp, %bb.r ], [ %i.br, %bb.q ] ; 2 uses
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = and i16 %i.cn, 1024
  %.not13.i = icmp eq i16 %i.co, 0
  br i1 %.not13.i, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.01221.i, i64 1 ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 1             ; 2 uses
  %.not.i369 = icmp eq i8 %i.cq, 0
  br i1 %.not.i369, label %.critedge.i, label %.lr.ph.i, !llvm.loop !18

.critedge.i:                                      ; preds = %bb.r, %.lr.ph.i, %bb.q
  %.012.lcssa.i = phi ptr [ %i.br, %bb.q ], [ %.01221.i, %.lr.ph.i ], [ %i.cp, %bb.r ] ; 5 uses
  %i.cr = call fastcc i32 @DecodeTimezone(ptr noundef nonnull %.012.lcssa.i, ptr noundef nonnull %i.e)
  %.not14.i = icmp eq i32 %i.cr, 0
  br i1 %.not14.i, label %bb.s, label %DecodePosixTimezone.exit.thread

bb.s:                                             ; preds = %.critedge.i
  %i.cs = load i8, ptr %.012.lcssa.i, align 1     ; 2 uses
  store i8 0, ptr %.012.lcssa.i, align 1
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datecache, i64 192), align 16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.br, ptr noundef nonnull dereferenceable(1) %i.ct, i64 noundef 10) #15
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %DecodeSpecial.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cw = load i8, ptr %i.br, align 1
  %i.cx = sext i8 %i.cw to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %.02130.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @datetktbl, i64 4416), %bb.u ], [ %.122.i.i.i, %bb.x ] ; 2 uses
  %.02329.i.i.i = phi ptr [ @datetktbl, %bb.u ], [ %.124.i.i.i, %bb.x ] ; 3 uses
  %i.cy = ptrtoint ptr %.02130.i.i.i to i64
  %i.cz = ptrtoint ptr %.02329.i.i.i to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr i64 %i.da, 5
  %i.dc = getelementptr inbounds [16 x i8], ptr %.02329.i.i.i, i64 %i.db ; 5 uses
  %i.dd = load i8, ptr %i.dc, align 4
  %i.de = sext i8 %i.dd to i32
  %i.df = sub nsw i32 %i.cx, %i.de                ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dh = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.br, ptr noundef nonnull dereferenceable(1) %i.dc, i64 noundef 10) #15 ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %DecodeSpecial.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.019.i.i.i = phi i32 [ %i.dh, %bb.w ], [ %i.df, %bb.v ]
  %i.dj = icmp slt i32 %.019.i.i.i, 0             ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dc, i64 -16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %.124.i.i.i = select i1 %i.dj, ptr %.02329.i.i.i, ptr %i.dl ; 2 uses
  %.122.i.i.i = select i1 %i.dj, ptr %i.dk, ptr %.02130.i.i.i ; 2 uses
  %.not.not.i.i.i = icmp ult ptr %.122.i.i.i, %.124.i.i.i
  br i1 %.not.not.i.i.i, label %DecodeSpecial.exit.thread.i, label %bb.v, !llvm.loop !3

DecodeSpecial.exit.thread.i:                      ; preds = %bb.x
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @datecache, i64 192), align 16
  store i8 %i.cs, ptr %.012.lcssa.i, align 1
  br label %DecodePosixTimezone.exit.thread

DecodeSpecial.exit.i:                             ; preds = %bb.w, %bb.t
  %.0.ph.i.i = phi ptr [ %i.ct, %bb.t ], [ %i.dc, %bb.w ] ; 3 uses
  store ptr %.0.ph.i.i, ptr getelementptr inbounds nuw (i8, ptr @datecache, i64 192), align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.ph.i.i, i64 11
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = sext i8 %i.dn to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.ph.i.i, i64 12
  %i.dq = load i32, ptr %i.dp, align 4
  store i8 %i.cs, ptr %.012.lcssa.i, align 1
  %.off.i = add nsw i32 %i.do, -5
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.y, label %DecodePosixTimezone.exit.thread

DecodePosixTimezone.exit.thread:                  ; preds = %.critedge.i, %DecodeSpecial.exit.i, %DecodeSpecial.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %.thread417

bb.y:                                             ; preds = %DecodeSpecial.exit.i
  %i.dr = load i32, ptr %i.e, align 4
  %i.ds = add i32 %i.dq, %i.dr
  %i.dt = sub i32 0, %i.ds
  store i32 %i.dt, ptr %i.h, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  store i32 4, ptr %i.x, align 4
  store i32 32, ptr %i.f, align 4
  br label %bb.da

bb.z:                                             ; preds = %bb.i
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call fastcc i32 @DecodeDate(ptr noundef %i.dv, i32 noundef %.0282481, ptr noundef %i.f, ptr noundef %4, i1 noundef zeroext %6)
  %.not352 = icmp eq i32 %i.dw, 0
  br i1 %.not352, label %bb.da, label %.thread417

bb.aa:                                            ; preds = %bb.b
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call i32 @DecodeTime(ptr noundef %i.dy, ptr noundef nonnull %i.f, ptr noundef %4, ptr noundef nonnull %5)
  %.not351 = icmp eq i32 %i.dz, 0
  br i1 %.not351, label %bb.ab, label %.thread417

bb.ab:                                            ; preds = %bb.aa
  %i.ea = load i32, ptr %i.l, align 8             ; 2 uses
end_hunk_1
begin_hunk_2_@DecodeDateTime:bb.a
bb.ae:                                            ; preds = %bb.ad
  %i.ef = load i32, ptr %4, align 8
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.thread417, label %bb.da

bb.af:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = call fastcc i32 @DecodeTimezone(ptr noundef %i.ei, ptr noundef nonnull %i.j)
  %.not347 = icmp eq i32 %i.ej, 0
  br i1 %.not347, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.ek = icmp eq i64 %indvars.iv, 0
  %i.el = and i32 %.0282481, 32
  %.not348 = icmp eq i32 %i.el, 0
  %or.cond359 = select i1 %i.ek, i1 true, i1 %.not348
  br i1 %or.cond359, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.em = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = icmp eq i32 %i.eo, 4
  br i1 %i.ep, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.eq = tail call ptr @__ctype_b_loc() #17
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.em
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2
  %i.ey = and i16 %i.ex, 1024
  %.not349 = icmp eq i16 %i.ey, 0
  br i1 %.not349, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ez = load i32, ptr %i.j, align 4
  %i.fa = load i32, ptr %i.h, align 4
  %i.fb = sub i32 %i.fa, %i.ez
  br label %.thread423

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.fc = load i32, ptr %i.j, align 4
  br label %.thread423

.thread423:                                       ; preds = %bb.aj, %bb.ak
  %storemerge350 = phi i32 [ %i.fc, %bb.ak ], [ %i.fb, %bb.aj ]
  %storemerge = phi i32 [ 32, %bb.ak ], [ 0, %bb.aj ]
  store i32 %storemerge350, ptr %i.h, align 4
  store i32 %storemerge, ptr %i.f, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  br label %bb.da

bb.al:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  br label %.thread417

bb.am:                                            ; preds = %bb.b
  %.not335 = icmp eq i32 %.0284480, 0
  br i1 %.not335, label %bb.bg, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = call i32 @strtoint(ptr noundef %i.fe, ptr noundef nonnull %i.k, i32 noundef 10) #16 ; 9 uses
  %i.fg = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.fh = load i8, ptr %i.fg, align 1
  switch i8 %i.fh, label %.thread430 [
    i8 46, label %bb.ao
    i8 0, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  switch i32 %.0284480, label %.thread430 [
    i32 18, label %bb.ax
    i32 31, label %bb.ba
    i32 3, label %bb.be
  ]

bb.ap:                                            ; preds = %bb.an
  switch i32 %.0284480, label %.thread430 [
    i32 25, label %bb.aq
    i32 23, label %bb.ar
    i32 21, label %bb.au
    i32 20, label %bb.av
    i32 19, label %bb.aw
    i32 18, label %bb.ax
    i32 4, label %bb.az
    i32 31, label %bb.ba
    i32 3, label %bb.be
  ]

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.ff, ptr %i.t, align 4
  store i32 4, ptr %i.f, align 4
  br label %bb.bf

bb.ar:                                            ; preds = %bb.ap
  %i.fi = and i32 %.0282481, 1026
  %or.cond360.not = icmp eq i32 %i.fi, 1026
  br i1 %or.cond360.not, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 %i.ff, ptr %i.m, align 4
  store i32 2048, ptr %i.f, align 4
  br label %bb.bf

bb.at:                                            ; preds = %bb.ar
  store i32 %i.ff, ptr %i.r, align 8
  store i32 2, ptr %i.f, align 4
  br label %bb.bf

bb.au:                                            ; preds = %bb.ap
  store i32 %i.ff, ptr %i.s, align 4
  store i32 8, ptr %i.f, align 4
  br label %bb.bf

bb.av:                                            ; preds = %bb.ap
  store i32 %i.ff, ptr %i.l, align 8
  store i32 1024, ptr %i.f, align 4
  br label %bb.bf

bb.aw:                                            ; preds = %bb.ap
  store i32 %i.ff, ptr %i.m, align 4
  store i32 2048, ptr %i.f, align 4
  br label %bb.bf

bb.ax:                                            ; preds = %bb.ao, %bb.ap
  store i32 %i.ff, ptr %4, align 8
  store i32 4096, ptr %i.f, align 4
  %i.fj = load i8, ptr %i.fg, align 1
  %i.fk = icmp eq i8 %i.fj, 46
  br i1 %i.fk, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  %i.fl = call double @strtod(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.k) #16
  %i.fm = load ptr, ptr %i.k, align 8
  %i.fn = load i8, ptr %i.fm, align 1
  %.not344 = icmp eq i8 %i.fn, 0
  br i1 %.not344, label %.thread425, label %.thread430

.thread425:                                       ; preds = %bb.ay
  %i.fo = fmul double %i.fl, 1.000000e+06
  %i.fp = fptosi double %i.fo to i32
  store i32 %i.fp, ptr %5, align 4
  br label %bb.bf

bb.az:                                            ; preds = %bb.ap
  store i32 32, ptr %i.f, align 4
  %i.fq = load ptr, ptr %i.fd, align 8
  %i.fr = call fastcc i32 @DecodeTimezone(ptr noundef %i.fq, ptr noundef nonnull %i.h)
  %.not343 = icmp eq i32 %i.fr, 0
  br i1 %.not343, label %bb.bf, label %.thread430

bb.ba:                                            ; preds = %bb.ao, %bb.ap
  store i32 14, ptr %i.f, align 4
  %i.fs = add i32 %i.ff, 32044                    ; 2 uses
  %i.ft = udiv i32 %i.fs, 146097                  ; 2 uses
  %.neg.i370 = mul i32 %i.ft, 1073595727
  %i.fu = add i32 %.neg.i370, %i.fs
  %i.fv = shl i32 %i.fu, 2
  %i.fw = or disjoint i32 %i.fv, 3
  %i.fx = mul nuw nsw i32 %i.ft, 3
  %i.fy = udiv i32 %i.fw, 146097
  %i.fz = add i32 %i.ff, 32104
  %i.ga = add i32 %i.fz, %i.fx
  %i.gb = add i32 %i.ga, %i.fy                    ; 2 uses
  %i.gc = udiv i32 %i.gb, 1461                    ; 2 uses
  %.neg24.i371 = mul i32 %i.gc, -1461
  %i.gd = add i32 %.neg24.i371, %i.gb             ; 3 uses
  %i.ge = shl i32 %i.gd, 2                        ; 2 uses
  %.not.i372 = icmp ult i32 %i.ge, 1461
  br i1 %.not.i372, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gf = add i32 %i.gd, 305
  %i.gg = urem i32 %i.gf, 365
  br label %j2date.exit375

bb.bc:                                            ; preds = %bb.ba
  %i.gh = add i32 %i.gd, 306
  %i.gi = urem i32 %i.gh, 366
  br label %j2date.exit375

j2date.exit375:                                   ; preds = %bb.bb, %bb.bc
  %i.gj = phi i32 [ %i.gg, %bb.bb ], [ %i.gi, %bb.bc ]
  %i.gk = udiv i32 %i.ge, 1461
  %i.gl = add nuw nsw i32 %i.gj, 123              ; 2 uses
  %i.gm = shl nuw nsw i32 %i.gc, 2
  %i.gn = add nsw i32 %i.gm, -4800
  %i.go = add nsw i32 %i.gn, %i.gk
  store i32 %i.go, ptr %i.t, align 4
  %i.gp = mul nuw nsw i32 %i.gl, 2141
  %i.gq = lshr i32 %i.gp, 16                      ; 2 uses
  %i.gr = mul nuw nsw i32 %i.gq, 3917
  %i.gs = lshr i32 %i.gr, 7
  %i.gt = sub nsw i32 %i.gl, %i.gs
  store i32 %i.gt, ptr %i.s, align 4
  %i.gu = trunc nuw nsw i32 %i.gq to i8
  %.lhs.trunc.i373 = add nuw nsw i8 %i.gu, 10
  %i.gv = urem i8 %.lhs.trunc.i373, 12
  %narrow.i374 = add nuw nsw i8 %i.gv, 1
  %i.gw = zext nneg i8 %narrow.i374 to i32
  store i32 %i.gw, ptr %i.r, align 8
  %i.gx = load i8, ptr %i.fg, align 1
  %i.gy = icmp eq i8 %i.gx, 46
  br i1 %i.gy, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %j2date.exit375
  %i.gz = call double @strtod(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.k) #16
  %i.ha = load ptr, ptr %i.k, align 8
  %i.hb = load i8, ptr %i.ha, align 1
  %.not342 = icmp eq i8 %i.hb, 0
  br i1 %.not342, label %.thread427, label %.thread430

.thread427:                                       ; preds = %bb.bd
  store i32 7182, ptr %i.f, align 4
  %i.hc = fmul double %i.gz, 8.640000e+10
  %i.hd = fptosi double %i.hc to i64              ; 2 uses
  %i.he = sdiv i64 %i.hd, 3600000000              ; 2 uses
  %i.hf = trunc i64 %i.he to i32
  store i32 %i.hf, ptr %i.l, align 8
  %sext.i = shl i64 %i.he, 32
  %i.hg = ashr exact i64 %sext.i, 32
  %.neg.i376 = mul nsw i64 %i.hg, -3600000000
  %i.hh = add i64 %.neg.i376, %i.hd               ; 2 uses
  %i.hi = sdiv i64 %i.hh, 60000000                ; 2 uses
  %i.hj = trunc i64 %i.hi to i32
  store i32 %i.hj, ptr %i.m, align 4
  %sext13.i = shl i64 %i.hi, 32
  %i.hk = ashr exact i64 %sext13.i, 32
  %.neg14.i = mul nsw i64 %i.hk, -60000000
  %i.hl = add i64 %.neg14.i, %i.hh                ; 2 uses
  %i.hm = sdiv i64 %i.hl, 1000000                 ; 2 uses
  %i.hn = trunc i64 %i.hm to i32
  store i32 %i.hn, ptr %4, align 8
  %.neg16.i = mul i64 %i.hm, 4293967296
  %i.ho = add i64 %.neg16.i, %i.hl
  %i.hp = trunc i64 %i.ho to i32
  store i32 %i.hp, ptr %5, align 4
  br label %bb.bf

bb.be:                                            ; preds = %bb.ao, %bb.ap
  %i.hq = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.hr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hq) #15
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = or i32 %.0282481, 14
  %i.hu = call fastcc i32 @DecodeNumberField(i32 noundef %i.hs, ptr noundef nonnull %i.hq, i32 noundef %i.ht, ptr noundef %i.f, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %i.g) ; 2 uses
  store i32 %i.hu, ptr %i.x, align 4
  %i.hv = icmp sgt i32 %i.hu, -1
  %i.hw = load i32, ptr %i.f, align 4
  %.not341 = icmp eq i32 %i.hw, 7168
  %or.cond366 = select i1 %i.hv, i1 %.not341, i1 false
  br i1 %or.cond366, label %bb.bf, label %.thread430

.thread430:                                       ; preds = %bb.ao, %bb.ap, %bb.be, %bb.an, %bb.ay, %bb.az, %bb.bd
  %.7.ph = phi i32 [ -1, %bb.bd ], [ -1, %bb.az ], [ -1, %bb.ay ], [ -1, %bb.an ], [ -1, %bb.be ], [ -1, %bb.ap ], [ 1, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  br label %.thread417

bb.bf:                                            ; preds = %bb.aq, %bb.au, %bb.av, %bb.aw, %bb.at, %bb.as, %bb.ax, %bb.az, %j2date.exit375, %bb.be, %.thread425, %.thread427
  store i32 2, ptr %3, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  br label %bb.da

bb.bg:                                            ; preds = %bb.am
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.hy = load ptr, ptr %i.hx, align 8            ; 6 uses
  %i.hz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hy) #15 ; 2 uses
  %i.ia = trunc i64 %i.hz to i32                  ; 4 uses
  %i.ib = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.hy, i32 noundef 46) #15 ; 2 uses
  %.not336 = icmp ne ptr %i.ib, null              ; 2 uses
  %i.ic = and i32 %.0282481, 14
  %.not337 = icmp eq i32 %i.ic, 0
  %or.cond361 = select i1 %.not336, i1 %.not337, i1 false
  br i1 %or.cond361, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.id = call fastcc i32 @DecodeDate(ptr noundef nonnull %i.hy, i32 noundef %.0282481, ptr noundef %i.f, ptr noundef %4, i1 noundef zeroext %6)
  %.not338 = icmp eq i32 %i.id, 0
  br i1 %.not338, label %bb.da, label %.thread417

bb.bi:                                            ; preds = %bb.bg
  br i1 %.not336, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %sext = shl i64 %i.hz, 32
  %i.ie = ashr exact i64 %sext, 32
  %i.if = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ib) #15
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = icmp ugt i64 %i.ig, 2
  br i1 %i.ih, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ii = call fastcc i32 @DecodeNumberField(i32 noundef %i.ia, ptr noundef nonnull %i.hy, i32 noundef %.0282481, ptr noundef %i.f, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %i.g) ; 2 uses
  store i32 %i.ii, ptr %i.x, align 4
  %i.ij = icmp slt i32 %i.ii, 0
  br i1 %i.ij, label %.thread417, label %bb.da

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %i.ik = icmp sgt i32 %i.ia, 4
  br i1 %i.ik, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.il = call fastcc i32 @DecodeNumberField(i32 noundef %i.ia, ptr noundef nonnull %i.hy, i32 noundef %.0282481, ptr noundef %i.f, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %i.g) ; 2 uses
  store i32 %i.il, ptr %i.x, align 4
  %i.im = icmp slt i32 %i.il, 0
  br i1 %i.im, label %.thread417, label %bb.da

bb.bn:                                            ; preds = %bb.bl
  %i.in = call fastcc i32 @DecodeNumber(i32 noundef %i.ia, ptr noundef nonnull %i.hy, i32 noundef %.0282481, ptr noundef %i.f, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %i.g, i1 noundef zeroext %6)
  %.not339 = icmp eq i32 %i.in, 0
  br i1 %.not339, label %bb.da, label %.thread417

bb.bo:                                            ; preds = %bb.b, %bb.b
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ip = load ptr, ptr %i.io, align 8            ; 3 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr @datecache, i64 %indvars.iv ; 3 uses
  %i.ir = load ptr, ptr %i.iq, align 8            ; 3 uses
  %.not.i377 = icmp eq ptr %i.ir, null
  br i1 %.not.i377, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.is = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ip, ptr noundef nonnull dereferenceable(1) %i.ir, i64 noundef 10) #15
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %DecodeSpecial.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.iu = load i8, ptr %i.ip, align 1
  %i.iv = sext i8 %i.iu to i32
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %bb.bq
  %.02130.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @datetktbl, i64 4416), %bb.bq ], [ %.122.i.i, %bb.bt ] ; 2 uses
  %.02329.i.i = phi ptr [ @datetktbl, %bb.bq ], [ %.124.i.i, %bb.bt ] ; 3 uses
  %i.iw = ptrtoint ptr %.02130.i.i to i64
  %i.ix = ptrtoint ptr %.02329.i.i to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = ashr i64 %i.iy, 5
  %i.ja = getelementptr inbounds [16 x i8], ptr %.02329.i.i, i64 %i.iz ; 5 uses
  %i.jb = load i8, ptr %i.ja, align 4
  %i.jc = sext i8 %i.jb to i32
  %i.jd = sub nsw i32 %i.iv, %i.jc                ; 2 uses
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.jf = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ip, ptr noundef nonnull dereferenceable(1) %i.ja, i64 noundef 10) #15 ; 2 uses
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %DecodeSpecial.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.019.i.i = phi i32 [ %i.jf, %bb.bs ], [ %i.jd, %bb.br ]
  %i.jh = icmp slt i32 %.019.i.i, 0               ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %i.ja, i64 -16
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %.124.i.i = select i1 %i.jh, ptr %.02329.i.i, ptr %i.jj ; 2 uses
  %.122.i.i = select i1 %i.jh, ptr %i.ji, ptr %.02130.i.i ; 2 uses
  %.not.not.i.i = icmp ult ptr %.122.i.i, %.124.i.i
  br i1 %.not.not.i.i, label %.thread442, label %bb.br, !llvm.loop !3

.thread442:                                       ; preds = %bb.bt
  store ptr null, ptr %i.iq, align 8
  br label %.thread417

DecodeSpecial.exit:                               ; preds = %bb.bs, %bb.bp
  %.0.ph.i = phi ptr [ %i.ir, %bb.bp ], [ %i.ja, %bb.bs ] ; 3 uses
  store ptr %.0.ph.i, ptr %i.iq, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.ph.i, i64 11
  %i.jl = load i8, ptr %i.jk, align 1             ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.ph.i, i64 12
  %i.jn = load i32, ptr %i.jm, align 4            ; 13 uses
  %i.jo = icmp eq i8 %i.jl, 8
  br i1 %i.jo, label %bb.dc, label %bb.bu

bb.bu:                                            ; preds = %DecodeSpecial.exit
  %i.jp = zext nneg i8 %i.jl to i32
  %i.jq = shl nuw i32 1, %i.jp                    ; 3 uses
  store i32 %i.jq, ptr %i.f, align 4
  switch i8 %i.jl, label %.thread417 [
    i8 0, label %bb.bv
    i8 1, label %bb.co
    i8 28, label %bb.cs
    i8 6, label %bb.ct
    i8 5, label %bb.cu
    i8 23, label %bb.cy
    i8 9, label %bb.da
    i8 18, label %bb.cv
    i8 16, label %bb.cw
    i8 17, label %bb.cx
  ]

bb.bv:                                            ; preds = %bb.bu
  switch i32 %i.jn, label %bb.cn [
    i32 12, label %bb.bw
    i32 13, label %bb.bz
    i32 14, label %bb.ce
    i32 15, label %bb.ch
    i32 16, label %bb.cm
  ]

bb.bw:                                            ; preds = %bb.bv
  store i32 7214, ptr %i.f, align 4
  store i32 2, ptr %3, align 4
  %i.jr = call i64 @time(ptr noundef null) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 %i.jr, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.js = tail call ptr @__errno_location() #17   ; 2 uses
  store i32 0, ptr %i.js, align 4
  %i.jt = call ptr @localtime_r(ptr noundef nonnull %i.d, ptr noundef nonnull %10) #16 ; 10 uses
  %.not.i.i378 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i378, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 320, ptr %i.js, align 4
  br label %GetCurrentDateTime.exit

bb.by:                                            ; preds = %bb.bw
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 20
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = add i32 %i.jv, 1900
  store i32 %i.jw, ptr %i.t, align 4
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jy = load i32, ptr %i.jx, align 8
  %i.jz = add i32 %i.jy, 1
  store i32 %i.jz, ptr %i.r, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  %i.kb = load i32, ptr %i.ka, align 4
  store i32 %i.kb, ptr %i.s, align 4
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.kd = load i32, ptr %i.kc, align 8
  store i32 %i.kd, ptr %i.l, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.kf = load i32, ptr %i.ke, align 4
  store i32 %i.kf, ptr %i.m, align 4
  %i.kg = load i32, ptr %i.jt, align 8
  store i32 %i.kg, ptr %4, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.ki = load i32, ptr %i.kh, align 8
  store i32 %i.ki, ptr %i.n, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jt, i64 40
  %i.kk = load i64, ptr %i.kj, align 8
  store i64 %i.kk, ptr %i.u, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  %i.km = load ptr, ptr %i.kl, align 8
  store ptr %i.km, ptr %i.v, align 8
  br label %GetCurrentDateTime.exit

GetCurrentDateTime.exit:                          ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.da

bb.bz:                                            ; preds = %bb.bv
  store i32 14, ptr %i.f, align 4
  store i32 2, ptr %3, align 4
  %i.kn = call i64 @time(ptr noundef null) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 %i.kn, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.ko = tail call ptr @__errno_location() #17   ; 2 uses
  store i32 0, ptr %i.ko, align 4
  %i.kp = call ptr @localtime_r(ptr noundef nonnull %i.c, ptr noundef nonnull %9) #16 ; 10 uses
  %.not.i.i379 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i379, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 320, ptr %i.ko, align 4
  %.pre495 = load i32, ptr %i.t, align 4
  %.pre496 = load i32, ptr %i.r, align 8
  %.pre497 = load i32, ptr %i.s, align 4
  br label %GetCurrentDateTime.exit380

bb.cb:                                            ; preds = %bb.bz
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 20
  %i.kr = load i32, ptr %i.kq, align 4
  %i.ks = add i32 %i.kr, 1900                     ; 2 uses
  store i32 %i.ks, ptr %i.t, align 4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.ku = load i32, ptr %i.kt, align 8
  %i.kv = add i32 %i.ku, 1                        ; 2 uses
  store i32 %i.kv, ptr %i.r, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  %i.kx = load i32, ptr %i.kw, align 4            ; 2 uses
  store i32 %i.kx, ptr %i.s, align 4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kz = load i32, ptr %i.ky, align 8
  store i32 %i.kz, ptr %i.l, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  %i.lb = load i32, ptr %i.la, align 4
  store i32 %i.lb, ptr %i.m, align 4
  %i.lc = load i32, ptr %i.kp, align 8
  store i32 %i.lc, ptr %4, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.le = load i32, ptr %i.ld, align 8
  store i32 %i.le, ptr %i.n, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  %i.lg = load i64, ptr %i.lf, align 8
  store i64 %i.lg, ptr %i.u, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kp, i64 48
  %i.li = load ptr, ptr %i.lh, align 8
  store ptr %i.li, ptr %i.v, align 8
  br label %GetCurrentDateTime.exit380

GetCurrentDateTime.exit380:                       ; preds = %bb.ca, %bb.cb
  %i.lj = phi i32 [ %.pre497, %bb.ca ], [ %i.kx, %bb.cb ]
  %i.lk = phi i32 [ %.pre496, %bb.ca ], [ %i.kv, %bb.cb ] ; 2 uses
  %i.ll = phi i32 [ %.pre495, %bb.ca ], [ %i.ks, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.lm = icmp sgt i32 %i.lk, 2                   ; 2 uses
  %.015.v.i = select i1 %i.lm, i32 1, i32 13
  %.015.i = add i32 %.015.v.i, %i.lk
  %.0.v.i = select i1 %i.lm, i32 4800, i32 4799
  %.0.i381 = add i32 %.0.v.i, %i.ll               ; 4 uses
  %.neg.i382 = sdiv i32 %.0.i381, -100
  %i.ln = mul i32 %.0.i381, 365
  %i.lo = sdiv i32 %.0.i381, 4
  %i.lp = sdiv i32 %.0.i381, 400
  %i.lq = mul i32 %.015.i, 7834
  %i.lr = sdiv i32 %i.lq, 256
  %i.ls = add i32 %i.lj, -32167
  %i.lt = add i32 %i.ls, %i.ln
  %i.lu = add i32 %i.lt, %i.lo
  %i.lv = add i32 %i.lu, %.neg.i382
  %i.lw = add i32 %i.lv, %i.lp
  %i.lx = add i32 %i.lw, %i.lr                    ; 2 uses
  %i.ly = add i32 %i.lx, 32043                    ; 2 uses
  %i.lz = udiv i32 %i.ly, 146097                  ; 2 uses
  %.neg.i383 = mul i32 %i.lz, 1073595727
  %i.ma = add i32 %.neg.i383, %i.ly
  %i.mb = shl i32 %i.ma, 2
  %i.mc = or disjoint i32 %i.mb, 3
  %i.md = mul nuw nsw i32 %i.lz, 3
  %i.me = udiv i32 %i.mc, 146097
  %i.mf = add i32 %i.lx, 32103
  %i.mg = add i32 %i.mf, %i.md
  %i.mh = add i32 %i.mg, %i.me                    ; 2 uses
  %i.mi = udiv i32 %i.mh, 1461                    ; 2 uses
  %.neg24.i384 = mul i32 %i.mi, -1461
  %i.mj = add i32 %.neg24.i384, %i.mh             ; 3 uses
  %i.mk = shl i32 %i.mj, 2                        ; 2 uses
  %.not.i385 = icmp ult i32 %i.mk, 1461
  br i1 %.not.i385, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %GetCurrentDateTime.exit380
  %i.ml = add i32 %i.mj, 305
  %i.mm = urem i32 %i.ml, 365
  br label %j2date.exit388

bb.cd:                                            ; preds = %GetCurrentDateTime.exit380
  %i.mn = add i32 %i.mj, 306
  %i.mo = urem i32 %i.mn, 366
  br label %j2date.exit388

j2date.exit388:                                   ; preds = %bb.cc, %bb.cd
  %i.mp = phi i32 [ %i.mm, %bb.cc ], [ %i.mo, %bb.cd ]
  %i.mq = udiv i32 %i.mk, 1461
  %i.mr = add nuw nsw i32 %i.mp, 123              ; 2 uses
  %i.ms = shl nuw nsw i32 %i.mi, 2
  %i.mt = add nsw i32 %i.ms, -4800
  %i.mu = add nsw i32 %i.mt, %i.mq
  store i32 %i.mu, ptr %i.t, align 4
  %i.mv = mul nuw nsw i32 %i.mr, 2141
  %i.mw = lshr i32 %i.mv, 16                      ; 2 uses
  %i.mx = mul nuw nsw i32 %i.mw, 3917
  %i.my = lshr i32 %i.mx, 7
  %i.mz = sub nsw i32 %i.mr, %i.my
  store i32 %i.mz, ptr %i.s, align 4
  %i.na = trunc nuw nsw i32 %i.mw to i8
  %.lhs.trunc.i386 = add nuw nsw i8 %i.na, 10
  %i.nb = urem i8 %.lhs.trunc.i386, 12
  %narrow.i387 = add nuw nsw i8 %i.nb, 1
  %i.nc = zext nneg i8 %narrow.i387 to i32
  store i32 %i.nc, ptr %i.r, align 8
  store i32 0, ptr %i.l, align 8
  store i32 0, ptr %i.m, align 4
  store i32 0, ptr %4, align 8
  br label %bb.da

bb.ce:                                            ; preds = %bb.bv
  store i32 14, ptr %i.f, align 4
  store i32 2, ptr %3, align 4
  %i.nd = call i64 @time(ptr noundef null) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.nd, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ne = tail call ptr @__errno_location() #17   ; 2 uses
  store i32 0, ptr %i.ne, align 4
  %i.nf = call ptr @localtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %8) #16 ; 10 uses
  %.not.i.i389 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i389, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 320, ptr %i.ne, align 4
  br label %GetCurrentDateTime.exit390

bb.cg:                                            ; preds = %bb.ce
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 20
  %i.nh = load i32, ptr %i.ng, align 4
  %i.ni = add i32 %i.nh, 1900
  store i32 %i.ni, ptr %i.t, align 4
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nk = load i32, ptr %i.nj, align 8
  %i.nl = add i32 %i.nk, 1
  store i32 %i.nl, ptr %i.r, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  %i.nn = load i32, ptr %i.nm, align 4
  store i32 %i.nn, ptr %i.s, align 4
  %i.no = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.np = load i32, ptr %i.no, align 8
  store i32 %i.np, ptr %i.l, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.nr = load i32, ptr %i.nq, align 4
  store i32 %i.nr, ptr %i.m, align 4
  %i.ns = load i32, ptr %i.nf, align 8
  store i32 %i.ns, ptr %4, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  %i.nu = load i32, ptr %i.nt, align 8
  store i32 %i.nu, ptr %i.n, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nf, i64 40
  %i.nw = load i64, ptr %i.nv, align 8
  store i64 %i.nw, ptr %i.u, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nf, i64 48
  %i.ny = load ptr, ptr %i.nx, align 8
  store ptr %i.ny, ptr %i.v, align 8
  br label %GetCurrentDateTime.exit390

GetCurrentDateTime.exit390:                       ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.l, align 8
  store i32 0, ptr %i.m, align 4
  store i32 0, ptr %4, align 8
  br label %bb.da

bb.ch:                                            ; preds = %bb.bv
  store i32 14, ptr %i.f, align 4
  store i32 2, ptr %3, align 4
  %i.nz = call i64 @time(ptr noundef null) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.nz, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.oa = tail call ptr @__errno_location() #17   ; 2 uses
  store i32 0, ptr %i.oa, align 4
  %i.ob = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %7) #16 ; 10 uses
  %.not.i.i391 = icmp eq ptr %i.ob, null
  br i1 %.not.i.i391, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 320, ptr %i.oa, align 4
  %.pre = load i32, ptr %i.t, align 4
  %.pre493 = load i32, ptr %i.r, align 8
  %.pre494 = load i32, ptr %i.s, align 4
  br label %GetCurrentDateTime.exit392

bb.cj:                                            ; preds = %bb.ch
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 20
  %i.od = load i32, ptr %i.oc, align 4
  %i.oe = add i32 %i.od, 1900                     ; 2 uses
  store i32 %i.oe, ptr %i.t, align 4
  %i.of = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.og = load i32, ptr %i.of, align 8
  %i.oh = add i32 %i.og, 1                        ; 2 uses
  store i32 %i.oh, ptr %i.r, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ob, i64 12
  %i.oj = load i32, ptr %i.oi, align 4            ; 2 uses
  store i32 %i.oj, ptr %i.s, align 4
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.ol = load i32, ptr %i.ok, align 8
  store i32 %i.ol, ptr %i.l, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.on = load i32, ptr %i.om, align 4
  store i32 %i.on, ptr %i.m, align 4
  %i.oo = load i32, ptr %i.ob, align 8
  store i32 %i.oo, ptr %4, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.ob, i64 32
  %i.oq = load i32, ptr %i.op, align 8
  store i32 %i.oq, ptr %i.n, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.ob, i64 40
  %i.os = load i64, ptr %i.or, align 8
  store i64 %i.os, ptr %i.u, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ob, i64 48
  %i.ou = load ptr, ptr %i.ot, align 8
  store ptr %i.ou, ptr %i.v, align 8
  br label %GetCurrentDateTime.exit392

GetCurrentDateTime.exit392:                       ; preds = %bb.ci, %bb.cj
  %i.ov = phi i32 [ %.pre494, %bb.ci ], [ %i.oj, %bb.cj ]
  %i.ow = phi i32 [ %.pre493, %bb.ci ], [ %i.oh, %bb.cj ] ; 2 uses
  %i.ox = phi i32 [ %.pre, %bb.ci ], [ %i.oe, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.oy = icmp sgt i32 %i.ow, 2                   ; 2 uses
  %.015.v.i393 = select i1 %i.oy, i32 1, i32 13
  %.015.i394 = add i32 %.015.v.i393, %i.ow
  %.0.v.i395 = select i1 %i.oy, i32 4800, i32 4799
  %.0.i396 = add i32 %.0.v.i395, %i.ox            ; 4 uses
  %.neg.i397 = sdiv i32 %.0.i396, -100
  %i.oz = mul i32 %.0.i396, 365
  %i.pa = sdiv i32 %.0.i396, 4
  %i.pb = sdiv i32 %.0.i396, 400
  %i.pc = mul i32 %.015.i394, 7834
  %i.pd = sdiv i32 %i.pc, 256
  %i.pe = add i32 %i.ov, -32167
  %i.pf = add i32 %i.pe, %i.oz
  %i.pg = add i32 %i.pf, %i.pa
  %i.ph = add i32 %i.pg, %.neg.i397
  %i.pi = add i32 %i.ph, %i.pb
  %i.pj = add i32 %i.pi, %i.pd                    ; 2 uses
  %i.pk = add i32 %i.pj, 32045                    ; 2 uses
  %i.pl = udiv i32 %i.pk, 146097                  ; 2 uses
  %.neg.i398 = mul i32 %i.pl, 1073595727
  %i.pm = add i32 %.neg.i398, %i.pk
  %i.pn = shl i32 %i.pm, 2
  %i.po = or disjoint i32 %i.pn, 3
  %i.pp = mul nuw nsw i32 %i.pl, 3
  %i.pq = udiv i32 %i.po, 146097
  %i.pr = add i32 %i.pj, 32105
  %i.ps = add i32 %i.pr, %i.pp
  %i.pt = add i32 %i.ps, %i.pq                    ; 2 uses
  %i.pu = udiv i32 %i.pt, 1461                    ; 2 uses
  %.neg24.i399 = mul i32 %i.pu, -1461
  %i.pv = add i32 %.neg24.i399, %i.pt             ; 3 uses
  %i.pw = shl i32 %i.pv, 2                        ; 2 uses
  %.not.i400 = icmp ult i32 %i.pw, 1461
  br i1 %.not.i400, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %GetCurrentDateTime.exit392
  %i.px = add i32 %i.pv, 305
  %i.py = urem i32 %i.px, 365
  br label %j2date.exit403

bb.cl:                                            ; preds = %GetCurrentDateTime.exit392
  %i.pz = add i32 %i.pv, 306
  %i.qa = urem i32 %i.pz, 366
  br label %j2date.exit403

j2date.exit403:                                   ; preds = %bb.ck, %bb.cl
  %i.qb = phi i32 [ %i.py, %bb.ck ], [ %i.qa, %bb.cl ]
  %i.qc = udiv i32 %i.pw, 1461
  %i.qd = add nuw nsw i32 %i.qb, 123              ; 2 uses
  %i.qe = shl nuw nsw i32 %i.pu, 2
  %i.qf = add nsw i32 %i.qe, -4800
  %i.qg = add nsw i32 %i.qf, %i.qc
  store i32 %i.qg, ptr %i.t, align 4
  %i.qh = mul nuw nsw i32 %i.qd, 2141
  %i.qi = lshr i32 %i.qh, 16                      ; 2 uses
  %i.qj = mul nuw nsw i32 %i.qi, 3917
  %i.qk = lshr i32 %i.qj, 7
  %i.ql = sub nsw i32 %i.qd, %i.qk
  store i32 %i.ql, ptr %i.s, align 4
  %i.qm = trunc nuw nsw i32 %i.qi to i8
  %.lhs.trunc.i401 = add nuw nsw i8 %i.qm, 10
  %i.qn = urem i8 %.lhs.trunc.i401, 12
  %narrow.i402 = add nuw nsw i8 %i.qn, 1
  %i.qo = zext nneg i8 %narrow.i402 to i32
  store i32 %i.qo, ptr %i.r, align 8
  store i32 0, ptr %i.l, align 8
  store i32 0, ptr %i.m, align 4
  store i32 0, ptr %4, align 8
  br label %bb.da

bb.cm:                                            ; preds = %bb.bv
  store i32 7200, ptr %i.f, align 4
  store i32 2, ptr %3, align 4
  store i32 0, ptr %i.l, align 8
  store i32 0, ptr %i.m, align 4
  store i32 0, ptr %4, align 8
  store i32 0, ptr %i.h, align 4
  br label %bb.da

bb.cn:                                            ; preds = %bb.bv
  store i32 %i.jn, ptr %3, align 4
  br label %bb.da

bb.co:                                            ; preds = %bb.bu
  %i.qp = and i32 %.0282481, 2
  %i.qq = icmp eq i32 %i.qp, 0
  %or.cond11 = select i1 %i.qq, i1 true, i1 %.0295474
  %i.qr = and i32 %.0282481, 8
  %.not334 = icmp ne i32 %i.qr, 0
  %or.cond362.not = select i1 %or.cond11, i1 true, i1 %.not334
  br i1 %or.cond362.not, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qs = load i32, ptr %i.r, align 8             ; 2 uses
  %i.qt = add i32 %i.qs, -1
  %or.cond363 = icmp ult i32 %i.qt, 31
  br i1 %or.cond363, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i32 %i.qs, ptr %i.s, align 4
  store i32 8, ptr %i.f, align 4
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.co
  store i32 %i.jn, ptr %i.r, align 8
  br label %bb.da

bb.cs:                                            ; preds = %bb.bu
  %i.qu = or i32 %i.jq, 64
  store i32 %i.qu, ptr %i.f, align 4
  store i32 1, ptr %i.n, align 8
  %i.qv = load i32, ptr %i.h, align 4
  %i.qw = sub i32 %i.qv, %i.jn
  store i32 %i.qw, ptr %i.h, align 4
  br label %bb.da

bb.ct:                                            ; preds = %bb.bu
  %i.qx = or i32 %i.jq, 32
  store i32 %i.qx, ptr %i.f, align 4
  store i32 1, ptr %i.n, align 8
  %i.qy = sub i32 0, %i.jn
  store i32 %i.qy, ptr %i.h, align 4
  store i32 4, ptr %i.x, align 4
  br label %bb.da

bb.cu:                                            ; preds = %bb.bu
  store i32 0, ptr %i.n, align 8
  %i.qz = sub i32 0, %i.jn
  store i32 %i.qz, ptr %i.h, align 4
  store i32 4, ptr %i.x, align 4
  br label %bb.da

bb.cv:                                            ; preds = %bb.bu
  %i.ra = icmp eq i32 %i.jn, 1
  br label %bb.da

bb.cw:                                            ; preds = %bb.bu
  store i32 %i.jn, ptr %i.p, align 8
  br label %bb.da

bb.cx:                                            ; preds = %bb.bu
  store i32 0, ptr %i.f, align 4
  br label %bb.da

bb.cy:                                            ; preds = %bb.bu
  store i32 0, ptr %i.f, align 4
  %i.rb = and i32 %.0282481, 14
  %.not329 = icmp eq i32 %i.rb, 14
  %.not330 = icmp samesign ult i64 %indvars.iv, %i.w
  %or.cond367 = and i1 %.not330, %.not329
  br i1 %or.cond367, label %bb.cz, label %.thread417

bb.cz:                                            ; preds = %bb.cy
  %i.rc = getelementptr i8, ptr %i.x, i64 4
  %i.rd = load i32, ptr %i.rc, align 4
  switch i32 %i.rd, label %.thread417 [
    i32 0, label %bb.da
    i32 3, label %bb.da
    i32 2, label %bb.da
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cz, %bb.cz, %bb.bu, %bb.bk, %bb.bn, %bb.bm, %bb.bh, %bb.bf, %.thread423, %bb.p, %bb.h, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cm, %bb.cn, %j2date.exit403, %GetCurrentDateTime.exit390, %j2date.exit388, %GetCurrentDateTime.exit, %bb.ac, %bb.ae, %bb.z, %bb.y
  %.1306 = phi i1 [ %.0305473, %bb.h ], [ %.0305473, %bb.p ], [ %.0305473, %bb.y ], [ %.0305473, %bb.z ], [ %.0305473, %bb.ae ], [ %.0305473, %bb.ac ], [ %.0305473, %.thread423 ], [ %.0305473, %bb.bf ], [ %.0305473, %bb.cw ], [ %.0305473, %bb.cn ], [ %.0305473, %GetCurrentDateTime.exit ], [ %.0305473, %j2date.exit388 ], [ %.0305473, %GetCurrentDateTime.exit390 ], [ %.0305473, %j2date.exit403 ], [ %.0305473, %bb.cm ], [ %.0305473, %bb.bu ], [ %.0305473, %bb.cr ], [ %.0305473, %bb.cs ], [ %.0305473, %bb.ct ], [ %.0305473, %bb.cu ], [ %.0305473, %bb.cx ], [ %.0305473, %bb.bk ], [ %i.ra, %bb.cv ], [ %.0305473, %bb.bh ], [ %.0305473, %bb.bm ], [ %.0305473, %bb.bn ], [ %.0305473, %bb.cz ], [ %.0305473, %bb.cz ], [ %.0305473, %bb.cz ]
  %.1296 = phi i1 [ %.0295474, %bb.h ], [ %.0295474, %bb.p ], [ %.0295474, %bb.y ], [ %.0295474, %bb.z ], [ %.0295474, %bb.ae ], [ %.0295474, %bb.ac ], [ %.0295474, %.thread423 ], [ %.0295474, %bb.bf ], [ %.0295474, %bb.cw ], [ %.0295474, %bb.cn ], [ %.0295474, %GetCurrentDateTime.exit ], [ %.0295474, %j2date.exit388 ], [ %.0295474, %GetCurrentDateTime.exit390 ], [ %.0295474, %j2date.exit403 ], [ %.0295474, %bb.cm ], [ %.0295474, %bb.bu ], [ true, %bb.cr ], [ %.0295474, %bb.cs ], [ %.0295474, %bb.ct ], [ %.0295474, %bb.cu ], [ %.0295474, %bb.cx ], [ %.0295474, %bb.bk ], [ %.0295474, %bb.cv ], [ %.0295474, %bb.bh ], [ %.0295474, %bb.bm ], [ %.0295474, %bb.bn ], [ %.0295474, %bb.cz ], [ %.0295474, %bb.cz ], [ %.0295474, %bb.cz ]
  %.1293 = phi i32 [ %.0292475, %bb.h ], [ %.0292475, %bb.p ], [ %.0292475, %bb.y ], [ %.0292475, %bb.z ], [ %.0292475, %bb.ae ], [ %.0292475, %bb.ac ], [ %.0292475, %.thread423 ], [ %.0292475, %bb.bf ], [ %.0292475, %bb.cw ], [ %.0292475, %bb.cn ], [ %.0292475, %GetCurrentDateTime.exit ], [ %.0292475, %j2date.exit388 ], [ %.0292475, %GetCurrentDateTime.exit390 ], [ %.0292475, %j2date.exit403 ], [ %.0292475, %bb.cm ], [ %i.jn, %bb.bu ], [ %.0292475, %bb.cr ], [ %.0292475, %bb.cs ], [ %.0292475, %bb.ct ], [ %.0292475, %bb.cu ], [ %.0292475, %bb.cx ], [ %.0292475, %bb.bk ], [ %.0292475, %bb.cv ], [ %.0292475, %bb.bh ], [ %.0292475, %bb.bm ], [ %.0292475, %bb.bn ], [ %.0292475, %bb.cz ], [ %.0292475, %bb.cz ], [ %.0292475, %bb.cz ]
  %.5289 = phi i32 [ 0, %bb.h ], [ 0, %bb.p ], [ 0, %bb.y ], [ 0, %bb.z ], [ %.0284480, %bb.ae ], [ %.0284480, %bb.ac ], [ %.0284480, %.thread423 ], [ 0, %bb.bf ], [ %.0284480, %bb.cw ], [ %.0284480, %bb.cn ], [ %.0284480, %GetCurrentDateTime.exit ], [ %.0284480, %j2date.exit388 ], [ %.0284480, %GetCurrentDateTime.exit390 ], [ %.0284480, %j2date.exit403 ], [ %.0284480, %bb.cm ], [ %.0284480, %bb.bu ], [ %.0284480, %bb.cr ], [ %.0284480, %bb.cs ], [ %.0284480, %bb.ct ], [ %.0284480, %bb.cu ], [ %i.jn, %bb.cx ], [ 0, %bb.bk ], [ %.0284480, %bb.cv ], [ 0, %bb.bh ], [ 0, %bb.bm ], [ 0, %bb.bn ], [ %i.jn, %bb.cz ], [ %i.jn, %bb.cz ], [ %i.jn, %bb.cz ]
  %i.re = load i32, ptr %i.f, align 4             ; 2 uses
  %i.rf = and i32 %i.re, %.0282481
  %.not358 = icmp eq i32 %i.rf, 0
  br i1 %.not358, label %bb.db, label %.thread417

bb.db:                                            ; preds = %bb.da
  %i.rg = or i32 %i.re, %.0282481
  br label %bb.dc

bb.dc:                                            ; preds = %DecodeSpecial.exit, %bb.db
  %.2307 = phi i1 [ %.1306, %bb.db ], [ %.0305473, %DecodeSpecial.exit ] ; 2 uses
  %.2297 = phi i1 [ %.1296, %bb.db ], [ %.0295474, %DecodeSpecial.exit ]
  %.2294 = phi i32 [ %.1293, %bb.db ], [ %.0292475, %DecodeSpecial.exit ] ; 3 uses
  %.6290 = phi i32 [ %.5289, %bb.db ], [ %.0284480, %DecodeSpecial.exit ]
  %.1283 = phi i32 [ %i.rg, %bb.db ], [ %.0282481, %DecodeSpecial.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.dc
  br i1 %.2307, label %bb.dd, label %._crit_edge.thread

bb.dd:                                            ; preds = %._crit_edge
  %i.rh = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.ri = load i32, ptr %i.rh, align 4            ; 2 uses
  %i.rj = icmp sgt i32 %i.ri, 0
  br i1 %i.rj, label %bb.de, label %.thread417

bb.de:                                            ; preds = %bb.dd
  %i.rk = sub nsw i32 1, %i.ri
  store i32 %i.rk, ptr %i.rh, align 4
  br label %bb.dj

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0282.lcssa527 = phi i32 [ %.1283, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %.0292.lcssa525 = phi i32 [ %.2294, %._crit_edge ], [ 2, %bb.a ] ; 4 uses
  %i.rl = load i8, ptr %i.g, align 1, !range !20, !noundef !21
  %i.rm = trunc nuw i8 %i.rl to i1
  br i1 %i.rm, label %bb.df, label %bb.dj

bb.df:                                            ; preds = %._crit_edge.thread
  %i.rn = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.ro = load i32, ptr %i.rn, align 4            ; 4 uses
  %i.rp = icmp slt i32 %i.ro, 70
  br i1 %i.rp, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.rq = add nsw i32 %i.ro, 2000
  store i32 %i.rq, ptr %i.rn, align 4
  br label %bb.dj

bb.dh:                                            ; preds = %bb.df
  %i.rr = icmp samesign ult i32 %i.ro, 100
  br i1 %i.rr, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.rs = add nuw nsw i32 %i.ro, 1900
  store i32 %i.rs, ptr %i.rn, align 4
  br label %bb.dj

bb.dj:                                            ; preds = %._crit_edge.thread, %bb.dh, %bb.di, %bb.dg, %bb.de
  %.0282.lcssa526 = phi i32 [ %.0282.lcssa527, %._crit_edge.thread ], [ %.0282.lcssa527, %bb.dh ], [ %.0282.lcssa527, %bb.di ], [ %.0282.lcssa527, %bb.dg ], [ %.1283, %bb.de ] ; 3 uses
  %.0292.lcssa524 = phi i32 [ %.0292.lcssa525, %._crit_edge.thread ], [ %.0292.lcssa525, %bb.dh ], [ %.0292.lcssa525, %bb.di ], [ %.0292.lcssa525, %bb.dg ], [ %.2294, %bb.de ] ; 2 uses
  %cond368 = icmp eq i32 %.0292.lcssa524, 2
  br i1 %cond368, label %bb.dp, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.rt = load i32, ptr %i.l, align 8             ; 4 uses
  %i.ru = icmp sgt i32 %i.rt, 12
  br i1 %i.ru, label %.thread417, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  switch i32 %.0292.lcssa524, label %bb.dp [
    i32 0, label %bb.dm
    i32 1, label %bb.dn
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.rv = icmp eq i32 %i.rt, 12
  br i1 %i.rv, label %.sink.split, label %bb.dp

bb.dn:                                            ; preds = %bb.dl
  %.not324 = icmp eq i32 %i.rt, 12
  br i1 %.not324, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.rw = add nsw i32 %i.rt, 12
  br label %.sink.split

.sink.split:                                      ; preds = %bb.dm, %bb.do
  %.sink = phi i32 [ %i.rw, %bb.do ], [ 0, %bb.dm ]
end_hunk_2
begin_hunk_3_@DecodeDate:bb.a
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %bb.w ], [ 0, %bb.r ] ; 2 uses
  %.261113 = phi i32 [ %.362, %bb.w ], [ %.160, %bb.r ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv132
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.w, label %bb.s

bb.s:                                             ; preds = %.lr.ph115
  %i.cf = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cd) #15
  %i.cg = trunc i64 %i.cf to i32                  ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 1
  br i1 %i.ch, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = call fastcc i32 @DecodeNumber(i32 noundef %i.cg, ptr noundef nonnull %i.cd, i32 noundef %.261113, ptr noundef %i.c, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %i.b, i1 noundef zeroext %4)
  %.not69 = icmp eq i32 %i.ci, 0
  br i1 %.not69, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cj = load i32, ptr %i.c, align 4             ; 3 uses
  %i.ck = and i32 %i.cj, %.261113
  %.not70 = icmp eq i32 %i.ck, 0
  br i1 %.not70, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.cl = or i32 %i.cj, %.261113
  %i.cm = load i32, ptr %2, align 4
  %i.cn = or i32 %i.cm, %i.cj
  store i32 %i.cn, ptr %2, align 4
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph115, %bb.v
  %.362 = phi i32 [ %.261113, %.lr.ph115 ], [ %i.cl, %bb.v ] ; 2 uses
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %indvars.iv.next150
  br i1 %exitcond136.not, label %._crit_edge116, label %.lr.ph115, !llvm.loop !28

._crit_edge116:                                   ; preds = %bb.w
  %i.co = and i32 %.362, -32801
  %.not = icmp eq i32 %i.co, 14
  br i1 %.not, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %._crit_edge116
  br i1 %.2, label %bb.y, label %.thread163

bb.y:                                             ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4            ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.cs = sub nsw i32 1, %i.cq
  store i32 %i.cs, ptr %i.cp, align 4
  br label %.loopexit

.thread163:                                       ; preds = %._crit_edge.thread, %bb.x
  %i.ct = load i8, ptr %i.b, align 1, !range !20, !noundef !21
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %.thread163
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4            ; 4 uses
  %i.cx = icmp slt i32 %i.cw, 70
  br i1 %i.cx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cy = add nsw i32 %i.cw, 2000
  store i32 %i.cy, ptr %i.cv, align 4
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %i.cz = icmp samesign ult i32 %i.cw, 100
  br i1 %i.cz, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.da = add nuw nsw i32 %i.cw, 1900
  store i32 %i.da, ptr %i.cv, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.m, %bb.u, %bb.t, %bb.s, %._crit_edge.thread, %.thread, %bb.z, %bb.ab, %bb.ad, %bb.ac, %.thread163, %bb.y, %._crit_edge116
  %.0 = phi i32 [ -1, %._crit_edge116 ], [ 0, %bb.ad ], [ -1, %bb.u ], [ 0, %bb.ab ], [ 0, %bb.z ], [ -1, %.thread ], [ -1, %bb.y ], [ 0, %.thread163 ], [ 0, %bb.ac ], [ -1, %._crit_edge.thread ], [ -1, %bb.s ], [ -1, %bb.t ], [ -1, %bb.m ], [ -1, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 4) i32 @DecodeNumber(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef nonnull writeonly captures(none) %6, i1 noundef zeroext %7) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %3, align 4
  %i.b = call i32 @strtoint(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 10) #16 ; 12 uses
  %i.c = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1
  switch i8 %i.e, label %bb.z [
    i8 46, label %bb.c
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp sgt i64 %i.h, 2
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = or i32 %2, 14
  %i.k = call fastcc i32 @DecodeNumberField(i32 noundef %0, ptr noundef %1, i32 noundef %i.j, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.l = call double @strtod(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #16
  %i.m = fptosi double %i.l to i32
  store i32 %i.m, ptr %5, align 4
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = load i8, ptr %i.n, align 1
  %.not98 = icmp eq i8 %i.o, 0
  br i1 %.not98, label %bb.f, label %bb.z

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.p = icmp eq i32 %0, 3
  br i1 %i.p, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = and i32 %2, 4                            ; 2 uses
  %i.r = icmp ne i32 %i.q, 0
  %i.s = add i32 %i.b, -1
  %i.t = icmp ult i32 %i.s, 366
  %or.cond3 = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond3, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  store i32 32778, ptr %3, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %i.b, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %.0.i = add i32 %i.w, 4799                      ; 4 uses
  %.neg.i = sdiv i32 %.0.i, -100
  %i.x = mul i32 %.0.i, 365
  %i.y = sdiv i32 %.0.i, 4
  %i.z = sdiv i32 %.0.i, 400
  %i.aa = add nuw nsw i32 %i.b, -31738
  %i.ab = add i32 %i.aa, %i.x
  %i.ac = add i32 %i.ab, %i.y
  %i.ad = add i32 %i.ac, %.neg.i
  %i.ae = add i32 %i.ad, %i.z                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ah = add i32 %i.ae, 32043                    ; 2 uses
  %i.ai = udiv i32 %i.ah, 146097                  ; 2 uses
  %.neg.i106 = mul i32 %i.ai, 1073595727
  %i.aj = add i32 %.neg.i106, %i.ah
  %i.ak = shl i32 %i.aj, 2
  %i.al = or disjoint i32 %i.ak, 3
  %i.am = mul nuw nsw i32 %i.ai, 3
  %i.an = udiv i32 %i.al, 146097
  %i.ao = add i32 %i.ae, 32103
  %i.ap = add i32 %i.ao, %i.am
  %i.aq = add i32 %i.ap, %i.an                    ; 2 uses
  %i.ar = udiv i32 %i.aq, 1461                    ; 2 uses
  %.neg24.i = mul i32 %i.ar, -1461
  %i.as = add i32 %.neg24.i, %i.aq                ; 3 uses
  %i.at = shl i32 %i.as, 2                        ; 2 uses
  %.not.i = icmp ult i32 %i.at, 1461
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = add i32 %i.as, 305
  %i.av = urem i32 %i.au, 365
  br label %j2date.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = add i32 %i.as, 306
  %i.ax = urem i32 %i.aw, 366
  br label %j2date.exit

j2date.exit:                                      ; preds = %bb.i, %bb.j
  %i.ay = phi i32 [ %i.av, %bb.i ], [ %i.ax, %bb.j ]
  %i.az = udiv i32 %i.at, 1461
  %i.ba = add nuw nsw i32 %i.ay, 123              ; 2 uses
  %i.bb = shl nuw nsw i32 %i.ar, 2
  %i.bc = add nsw i32 %i.bb, -4800
  %i.bd = add nsw i32 %i.bc, %i.az
  store i32 %i.bd, ptr %i.v, align 4
  %i.be = mul nuw nsw i32 %i.ba, 2141
  %i.bf = lshr i32 %i.be, 16                      ; 2 uses
  %i.bg = mul nuw nsw i32 %i.bf, 3917
  %i.bh = lshr i32 %i.bg, 7
  %i.bi = sub nsw i32 %i.ba, %i.bh
  store i32 %i.bi, ptr %i.ag, align 4
  %i.bj = trunc nuw nsw i32 %i.bf to i8
  %.lhs.trunc.i = add nuw nsw i8 %i.bj, 10
  %i.bk = urem i8 %.lhs.trunc.i, 12
  %narrow.i = add nuw nsw i8 %i.bk, 1
  %i.bl = zext nneg i8 %narrow.i to i32
  store i32 %i.bl, ptr %i.af, align 4
  br label %bb.z

bb.k:                                             ; preds = %bb.f
  %i.bm = icmp sgt i32 %0, 3
  br i1 %i.bm, label %bb.l, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.k
  %.pre = and i32 %2, 4
  br label %.thread

bb.l:                                             ; preds = %bb.k
  store i32 4, ptr %3, align 4
  %i.bn = and i32 %2, 12
  %or.cond = icmp eq i32 %i.bn, 4
  br i1 %or.cond, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = add i32 %i.bp, -1
  %or.cond103 = icmp ult i32 %i.bq, 31
  br i1 %or.cond103, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.bp, ptr %i.br, align 4
  store i32 8, ptr %3, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.b, ptr %i.bs, align 4
  br label %bb.z

.thread:                                          ; preds = %..thread_crit_edge, %bb.g
  %.pre-phi = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.q, %bb.g ]
  %.not99 = icmp eq i32 %.pre-phi, 0              ; 2 uses
  br i1 %.not99, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.bt = and i32 %2, 2
  %i.bu = icmp eq i32 %i.bt, 0                    ; 2 uses
  %i.bv = add i32 %i.b, -1                        ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 12
  %or.cond7 = select i1 %i.bu, i1 %i.bw, i1 false
  br i1 %or.cond7, label %bb.q, label %.thread107

bb.q:                                             ; preds = %bb.p
  store i32 2, ptr %3, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.b, ptr %i.bx, align 8
  br label %bb.z

bb.r:                                             ; preds = %.thread
  %.not = xor i1 %7, true
  %i.by = and i32 %2, 2
  %.not100 = icmp eq i32 %i.by, 0                 ; 2 uses
  %or.cond104 = and i1 %.not100, %.not
  br i1 %or.cond104, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %bb.r
  %.pre114 = add i32 %i.b, -1
  br label %.thread107

bb.s:                                             ; preds = %bb.r
  %i.bz = and i32 %2, 8
  %i.ca = icmp eq i32 %i.bz, 0
  %i.cb = add i32 %i.b, -1                        ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 31
  %or.cond11 = select i1 %i.ca, i1 %i.cc, i1 false
  br i1 %or.cond11, label %bb.t, label %.thread107

bb.t:                                             ; preds = %bb.s
  store i32 8, ptr %3, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.b, ptr %i.cd, align 4
  br label %bb.z

.thread107:                                       ; preds = %bb.p, %._crit_edge, %bb.s
  %.pre-phi115 = phi i32 [ %.pre114, %._crit_edge ], [ %i.cb, %bb.s ], [ %i.bv, %bb.p ] ; 2 uses
  %.not100113 = phi i1 [ true, %._crit_edge ], [ %.not100, %bb.s ], [ %i.bu, %bb.p ]
  %i.ce = icmp ult i32 %.pre-phi115, 12
  %or.cond15 = select i1 %.not100113, i1 %i.ce, i1 false
  br i1 %or.cond15, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread107
  store i32 2, ptr %3, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.b, ptr %i.cf, align 8
  br label %bb.z

bb.v:                                             ; preds = %.thread107
  %i.cg = and i32 %2, 8
  %i.ch = icmp eq i32 %i.cg, 0
  %i.ci = icmp ult i32 %.pre-phi115, 31
  %or.cond19 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond19, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 8, ptr %3, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.b, ptr %i.cj, align 4
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.ck = icmp eq i32 %0, 2
  %or.cond105 = and i1 %i.ck, %.not99
  br i1 %or.cond105, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 4, ptr %3, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.b, ptr %i.cl, align 4
  store i8 1, ptr %6, align 1
  br label %bb.z

bb.z:                                             ; preds = %j2date.exit, %bb.q, %bb.u, %bb.y, %bb.w, %bb.t, %bb.o, %bb.x, %bb.b, %bb.e, %bb.a, %bb.d
  %.0 = phi i32 [ -1, %bb.e ], [ %i.k, %bb.d ], [ -1, %bb.a ], [ -1, %bb.x ], [ -1, %bb.b ], [ 0, %bb.o ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.y ], [ 0, %bb.u ], [ 0, %bb.q ], [ 0, %j2date.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @PGTYPEStimestamp_defmt_scan(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #5 {
bb.a:
  %10 = alloca %union.un_fmt_comb, align 8        ; 37 uses
  %i.a = alloca ptr, align 8                      ; 43 uses
  %11 = alloca %struct.tm, align 8                ; 9 uses
  %12 = alloca %struct.tm, align 8                ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.c = load ptr, ptr %0, align 8
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load i8, ptr %1, align 1                 ; 2 uses
  %.not353 = icmp eq i8 %i.d, 0
  br i1 %.not353, label %.loopexit316, label %.preheader315

.preheader315:                                    ; preds = %bb.a, %.backedge
  %i.e = phi i8 [ %i.p, %.backedge ], [ %i.d, %bb.a ]
  %.0262354 = phi ptr [ %.0262.be, %.backedge ], [ %1, %bb.a ] ; 2 uses
  %i.f = icmp eq i8 %i.e, 32
  br i1 %i.f, label %.lr.ph, label %.preheader314

.preheader314:                                    ; preds = %.lr.ph, %.preheader315
  %.1263.lcssa = phi ptr [ %.0262354, %.preheader315 ], [ %i.g, %.lr.ph ] ; 34 uses
  %.promoted = load ptr, ptr %i.a, align 8
  br label %bb.b

.lr.ph:                                           ; preds = %.preheader315, %.lr.ph
  %.1263338 = phi ptr [ %i.g, %.lr.ph ], [ %.0262354, %.preheader315 ]
  %i.g = getelementptr inbounds nuw i8, ptr %.1263338, i64 1 ; 3 uses
  %.pr = load i8, ptr %i.g, align 1
  %i.h = icmp eq i8 %.pr, 32
  br i1 %i.h, label %.lr.ph, label %.preheader314, !llvm.loop !29

bb.b:                                             ; preds = %bb.b, %.preheader314
  %i.i = phi ptr [ %.promoted, %.preheader314 ], [ %i.l, %bb.b ] ; 21 uses
  %i.j = load i8, ptr %i.i, align 1               ; 7 uses
  %i.k = icmp eq i8 %i.j, 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 7 uses
  br i1 %i.k, label %bb.b, label %bb.c, !llvm.loop !30

bb.c:                                             ; preds = %bb.b
  store ptr %i.i, ptr %i.a, align 8
  %i.m = load i8, ptr %.1263.lcssa, align 1       ; 2 uses
  %.not285 = icmp eq i8 %i.m, 37
  br i1 %.not285, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i8 %i.m, %i.j
  br i1 %i.n, label %bb.e, label %.loopexit316

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.1263.lcssa, i64 1
  store ptr %i.l, ptr %i.a, align 8
  br label %.backedgethread-pre-split

.backedgethread-pre-split:                        ; preds = %bb.r, %bb.o, %bb.k, %bb.h, %bb.e, %bb.p, %bb.m, %bb.j, %bb.g, %bb.bm, %bb.av, %bb.ad, %bb.bb, %bb.az, %bb.bn, %bb.bh, %.loopexit313, %bb.bf, %bb.bg, %bb.aw, %.tail306.thread, %bb.am, %.tail298.thread, %bb.ai, %bb.ae, %bb.x, %bb.y, %bb.q, %bb.n, %bb.l, %bb.i, %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.au, %bb.at, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.t, %bb.s
  %.0262.be.ph = phi ptr [ %i.s, %bb.h ], [ %i.ad, %bb.k ], [ %i.o, %bb.e ], [ %i.ao, %bb.o ], [ %i.ba, %bb.p ], [ %i.hq, %bb.bn ], [ %i.hf, %.loopexit313 ], [ %i.hf, %bb.bh ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bf ], [ %i.gy, %bb.be ], [ %i.gu, %bb.bd ], [ %i.gq, %bb.bc ], [ %i.gm, %bb.bb ], [ %i.gi, %bb.ba ], [ %i.ge, %bb.az ], [ %i.cw, %bb.ad ], [ %i.fw, %bb.aw ], [ %i.ft, %bb.au ], [ %i.fc, %bb.at ], [ %i.du, %.tail306.thread ], [ %i.du, %bb.am ], [ %i.cy, %.tail298.thread ], [ %i.cy, %bb.ai ], [ %i.fw, %bb.av ], [ %i.cw, %bb.ae ], [ %i.ct, %bb.ac ], [ %i.cr, %bb.ab ], [ %i.cm, %bb.aa ], [ %i.cj, %bb.z ], [ %i.cc, %bb.x ], [ %i.cc, %bb.y ], [ %i.bz, %bb.w ], [ %i.bq, %bb.t ], [ %i.bm, %bb.s ], [ %i.ad, %bb.j ], [ %i.ba, %bb.q ], [ %i.s, %bb.g ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ], [ %i.ad, %bb.l ], [ %i.hq, %bb.bm ], [ %i.s, %bb.i ], [ %i.ba, %bb.r ] ; 2 uses
  %.0257.be.ph = phi i32 [ 1, %bb.h ], [ 1, %bb.k ], [ 0, %bb.e ], [ 1, %bb.o ], [ 1, %bb.p ], [ 0, %bb.bn ], [ %.8, %.loopexit313 ], [ 1, %bb.bh ], [ %i.he, %bb.bg ], [ 1, %bb.bf ], [ %i.gz, %bb.be ], [ %spec.store.select5, %bb.bd ], [ %spec.store.select4, %bb.bc ], [ %spec.store.select7, %bb.bb ], [ %spec.store.select, %bb.ba ], [ %spec.store.select6, %bb.az ], [ 1, %bb.ad ], [ 0, %bb.aw ], [ %i.fu, %bb.au ], [ %.7, %bb.at ], [ %.6, %.tail306.thread ], [ 0, %bb.am ], [ %.3260, %.tail298.thread ], [ 0, %bb.ai ], [ 1, %bb.av ], [ 0, %bb.ae ], [ %i.cu, %bb.ac ], [ %i.cs, %bb.ab ], [ %i.cn, %bb.aa ], [ %i.ck, %bb.z ], [ %i.cd, %bb.x ], [ %i.cd, %bb.y ], [ %i.ca, %bb.w ], [ %i.br, %bb.t ], [ %i.bn, %bb.s ], [ 1, %bb.j ], [ 0, %bb.q ], [ 1, %bb.g ], [ 0, %bb.n ], [ 1, %bb.m ], [ 0, %bb.l ], [ 1, %bb.bm ], [ 0, %bb.i ], [ 1, %bb.r ]
  %.pr410 = load i8, ptr %.0262.be.ph, align 1
  br label %.backedge

.backedge:                                        ; preds = %.backedgethread-pre-split, %bb.f, %bb.f, %bb.bo, %bb.f, %bb.f
  %i.p = phi i8 [ %.pr410, %.backedgethread-pre-split ], [ %i.r, %bb.f ], [ %i.r, %bb.f ], [ %i.r, %bb.bo ], [ %i.r, %bb.f ], [ %i.r, %bb.f ] ; 2 uses
  %.0262.be = phi ptr [ %.0262.be.ph, %.backedgethread-pre-split ], [ %i.q, %bb.f ], [ %i.q, %bb.f ], [ %i.q, %bb.bo ], [ %i.q, %bb.f ], [ %i.q, %bb.f ]
  %.0257.be = phi i32 [ %.0257.be.ph, %.backedgethread-pre-split ], [ 0, %bb.f ], [ 0, %bb.f ], [ 1, %bb.bo ], [ 0, %bb.f ], [ 0, %bb.f ] ; 2 uses
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.preheader315, !llvm.loop !31

end_hunk_3
