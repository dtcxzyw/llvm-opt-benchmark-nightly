inline.NumInlined: 368
inline.NumDeleted: 121
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [256 x i8] }
%"class.absl::lts_20250512::int128" = type { i128 }
%"class.absl::lts_20250512::uint128" = type { i64, i64 }

$_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

@.str = private unnamed_addr constant [79 x i8] c"/opt-bench/work/protobuf/protobuf/build/_deps/absl-src/absl/strings/numbers.cc\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Check %s failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"out != nullptr\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Output pointer must not be nullptr.\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@_ZN4absl12lts_2025051216numbers_internal8kHexCharE = local_unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@_ZN4absl12lts_2025051216numbers_internal9kHexTableE = local_unnamed_addr constant [513 x i8] c"000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f8f9fafbfcfdfeff\00", align 16
@_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE = external local_unnamed_addr constant [256 x i8], align 16
@.str.16 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@__const._ZN4absl12lts_20250512L7PowFiveEmi.powers_of_five = private unnamed_addr constant [13 x i32] [i32 1, i32 5, i32 25, i32 125, i32 625, i32 3125, i32 15625, i32 78125, i32 390625, i32 1953125, i32 9765625, i32 48828125, i32 244140625], align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_111kAsciiToIntE = internal unnamed_addr constant %"struct.std::array" { [256 x i8] c"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\00\01\02\03\04\05\06\07\08\09$$$$$$$\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$$$$$$\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$" }, align 1
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIaE13kVmaxOverBaseE = internal unnamed_addr constant [37 x i8] c"\00\00?*\1F\19\15\12\0F\0E\0C\0B\0A\09\09\08\07\07\07\06\06\06\05\05\05\05\04\04\04\04\04\04\03\03\03\03\03", align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIaE13kVminOverBaseE = internal unnamed_addr constant [37 x i8] c"\00\00\C0\D6\E0\E7\EB\EE\F0\F2\F4\F5\F6\F7\F7\F8\F8\F9\F9\FA\FA\FA\FB\FB\FB\FB\FC\FC\FC\FC\FC\FC\FC\FD\FD\FD\FD", align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIsE13kVmaxOverBaseE = internal unnamed_addr constant [37 x i16] [i16 0, i16 0, i16 16383, i16 10922, i16 8191, i16 6553, i16 5461, i16 4681, i16 4095, i16 3640, i16 3276, i16 2978, i16 2730, i16 2520, i16 2340, i16 2184, i16 2047, i16 1927, i16 1820, i16 1724, i16 1638, i16 1560, i16 1489, i16 1424, i16 1365, i16 1310, i16 1260, i16 1213, i16 1170, i16 1129, i16 1092, i16 1057, i16 1023, i16 992, i16 963, i16 936, i16 910], align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIsE13kVminOverBaseE = internal unnamed_addr constant [37 x i16] [i16 0, i16 0, i16 -16384, i16 -10922, i16 -8192, i16 -6553, i16 -5461, i16 -4681, i16 -4096, i16 -3640, i16 -3276, i16 -2978, i16 -2730, i16 -2520, i16 -2340, i16 -2184, i16 -2048, i16 -1927, i16 -1820, i16 -1724, i16 -1638, i16 -1560, i16 -1489, i16 -1424, i16 -1365, i16 -1310, i16 -1260, i16 -1213, i16 -1170, i16 -1129, i16 -1092, i16 -1057, i16 -1024, i16 -992, i16 -963, i16 -936, i16 -910], align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIiE13kVmaxOverBaseE = internal unnamed_addr constant [37 x i32] [i32 0, i32 0, i32 1073741823, i32 715827882, i32 536870911, i32 429496729, i32 357913941, i32 306783378, i32 268435455, i32 238609294, i32 214748364, i32 195225786, i32 178956970, i32 165191049, i32 153391689, i32 143165576, i32 134217727, i32 126322567, i32 119304647, i32 113025455, i32 107374182, i32 102261126, i32 97612893, i32 93368854, i32 89478485, i32 85899345, i32 82595524, i32 79536431, i32 76695844, i32 74051160, i32 71582788, i32 69273666, i32 67108863, i32 65075262, i32 63161283, i32 61356675, i32 59652323], align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIiE13kVminOverBaseE = internal unnamed_addr constant [37 x i32] [i32 0, i32 0, i32 -1073741824, i32 -715827882, i32 -536870912, i32 -429496729, i32 -357913941, i32 -306783378, i32 -268435456, i32 -238609294, i32 -214748364, i32 -195225786, i32 -178956970, i32 -165191049, i32 -153391689, i32 -143165576, i32 -134217728, i32 -126322567, i32 -119304647, i32 -113025455, i32 -107374182, i32 -102261126, i32 -97612893, i32 -93368854, i32 -89478485, i32 -85899345, i32 -82595524, i32 -79536431, i32 -76695844, i32 -74051160, i32 -71582788, i32 -69273666, i32 -67108864, i32 -65075262, i32 -63161283, i32 -61356675, i32 -59652323], align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIlE13kVmaxOverBaseE = internal unnamed_addr constant [37 x i64] [i64 0, i64 0, i64 4611686018427387903, i64 3074457345618258602, i64 2305843009213693951, i64 1844674407370955161, i64 1537228672809129301, i64 1317624576693539401, i64 1152921504606846975, i64 1024819115206086200, i64 922337203685477580, i64 838488366986797800, i64 768614336404564650, i64 709490156681136600, i64 658812288346769700, i64 614891469123651720, i64 576460752303423487, i64 542551296285575047, i64 512409557603043100, i64 485440633518672410, i64 461168601842738790, i64 439208192231179800, i64 419244183493398900, i64 401016175515425035, i64 384307168202282325, i64 368934881474191032, i64 354745078340568300, i64 341606371735362066, i64 329406144173384850, i64 318047311615681924, i64 307445734561825860, i64 297528130221121800, i64 288230376151711743, i64 279496122328932600, i64 271275648142787523, i64 263524915338707880, i64 256204778801521550], align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIlE13kVminOverBaseE = internal unnamed_addr constant [37 x i64] [i64 0, i64 0, i64 -4611686018427387904, i64 -3074457345618258602, i64 -2305843009213693952, i64 -1844674407370955161, i64 -1537228672809129301, i64 -1317624576693539401, i64 -1152921504606846976, i64 -1024819115206086200, i64 -922337203685477580, i64 -838488366986797800, i64 -768614336404564650, i64 -709490156681136600, i64 -658812288346769700, i64 -614891469123651720, i64 -576460752303423488, i64 -542551296285575047, i64 -512409557603043100, i64 -485440633518672410, i64 -461168601842738790, i64 -439208192231179800, i64 -419244183493398900, i64 -401016175515425035, i64 -384307168202282325, i64 -368934881474191032, i64 -354745078340568300, i64 -341606371735362066, i64 -329406144173384850, i64 -318047311615681924, i64 -307445734561825860, i64 -297528130221121800, i64 -288230376151711744, i64 -279496122328932600, i64 -271275648142787523, i64 -263524915338707880, i64 -256204778801521550], align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesINS0_6int128EE13kVmaxOverBaseE = internal unnamed_addr constant [37 x %"class.absl::lts_20250512::int128"] [%"class.absl::lts_20250512::int128" zeroinitializer, %"class.absl::lts_20250512::int128" zeroinitializer, %"class.absl::lts_20250512::int128" { i128 85070591730234615865843651857942052863 }, %"class.absl::lts_20250512::int128" { i128 56713727820156410577229101238628035242 }, %"class.absl::lts_20250512::int128" { i128 42535295865117307932921825928971026431 }, %"class.absl::lts_20250512::int128" { i128 34028236692093846346337460743176821145 }, %"class.absl::lts_20250512::int128" { i128 28356863910078205288614550619314017621 }, %"class.absl::lts_20250512::int128" { i128 24305883351495604533098186245126300818 }, %"class.absl::lts_20250512::int128" { i128 21267647932558653966460912964485513215 }, %"class.absl::lts_20250512::int128" { i128 18904575940052136859076367079542678414 }, %"class.absl::lts_20250512::int128" { i128 17014118346046923173168730371588410572 }, %"class.absl::lts_20250512::int128" { i128 15467380314588111975607936701444009611 }, %"class.absl::lts_20250512::int128" { i128 14178431955039102644307275309657008810 }, %"class.absl::lts_20250512::int128" { i128 13087783343113017825514407978144931209 }, %"class.absl::lts_20250512::int128" { i128 12152941675747802266549093122563150409 }, %"class.absl::lts_20250512::int128" { i128 11342745564031282115445820247725607048 }, %"class.absl::lts_20250512::int128" { i128 10633823966279326983230456482242756607 }, %"class.absl::lts_20250512::int128" { i128 10008304909439366572452194336228476807 }, %"class.absl::lts_20250512::int128" { i128 9452287970026068429538183539771339207 }, %"class.absl::lts_20250512::int128" { i128 8954799129498380617457226511362321354 }, %"class.absl::lts_20250512::int128" { i128 8507059173023461586584365185794205286 }, %"class.absl::lts_20250512::int128" { i128 8101961117165201511032728748375433606 }, %"class.absl::lts_20250512::int128" { i128 7733690157294055987803968350722004805 }, %"class.absl::lts_20250512::int128" { i128 7397442759150836162247274074603656770 }, %"class.absl::lts_20250512::int128" { i128 7089215977519551322153637654828504405 }, %"class.absl::lts_20250512::int128" { i128 6805647338418769269267492148635364229 }, %"class.absl::lts_20250512::int128" { i128 6543891671556508912757203989072465604 }, %"class.absl::lts_20250512::int128" { i128 6301525313350712286358789026514226138 }, %"class.absl::lts_20250512::int128" { i128 6076470837873901133274546561281575204 }, %"class.absl::lts_20250512::int128" { i128 5866937360705835576954734610892555369 }, %"class.absl::lts_20250512::int128" { i128 5671372782015641057722910123862803524 }, %"class.absl::lts_20250512::int128" { i128 5488425272918362313925396894060777604 }, %"class.absl::lts_20250512::int128" { i128 5316911983139663491615228241121378303 }, %"class.absl::lts_20250512::int128" { i128 5155793438196037325202645567148003203 }, %"class.absl::lts_20250512::int128" { i128 5004152454719683286226097168114238403 }, %"class.absl::lts_20250512::int128" { i128 4861176670299120906619637249025260163 }, %"class.absl::lts_20250512::int128" { i128 4726143985013034214769091769885669603 }], align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesINS0_6int128EE13kVminOverBaseE = internal unnamed_addr constant [37 x %"class.absl::lts_20250512::int128"] [%"class.absl::lts_20250512::int128" zeroinitializer, %"class.absl::lts_20250512::int128" zeroinitializer, %"class.absl::lts_20250512::int128" { i128 -85070591730234615865843651857942052864 }, %"class.absl::lts_20250512::int128" { i128 -56713727820156410577229101238628035242 }, %"class.absl::lts_20250512::int128" { i128 -42535295865117307932921825928971026432 }, %"class.absl::lts_20250512::int128" { i128 -34028236692093846346337460743176821145 }, %"class.absl::lts_20250512::int128" { i128 -28356863910078205288614550619314017621 }, %"class.absl::lts_20250512::int128" { i128 -24305883351495604533098186245126300818 }, %"class.absl::lts_20250512::int128" { i128 -21267647932558653966460912964485513216 }, %"class.absl::lts_20250512::int128" { i128 -18904575940052136859076367079542678414 }, %"class.absl::lts_20250512::int128" { i128 -17014118346046923173168730371588410572 }, %"class.absl::lts_20250512::int128" { i128 -15467380314588111975607936701444009611 }, %"class.absl::lts_20250512::int128" { i128 -14178431955039102644307275309657008810 }, %"class.absl::lts_20250512::int128" { i128 -13087783343113017825514407978144931209 }, %"class.absl::lts_20250512::int128" { i128 -12152941675747802266549093122563150409 }, %"class.absl::lts_20250512::int128" { i128 -11342745564031282115445820247725607048 }, %"class.absl::lts_20250512::int128" { i128 -10633823966279326983230456482242756608 }, %"class.absl::lts_20250512::int128" { i128 -10008304909439366572452194336228476807 }, %"class.absl::lts_20250512::int128" { i128 -9452287970026068429538183539771339207 }, %"class.absl::lts_20250512::int128" { i128 -8954799129498380617457226511362321354 }, %"class.absl::lts_20250512::int128" { i128 -8507059173023461586584365185794205286 }, %"class.absl::lts_20250512::int128" { i128 -8101961117165201511032728748375433606 }, %"class.absl::lts_20250512::int128" { i128 -7733690157294055987803968350722004805 }, %"class.absl::lts_20250512::int128" { i128 -7397442759150836162247274074603656770 }, %"class.absl::lts_20250512::int128" { i128 -7089215977519551322153637654828504405 }, %"class.absl::lts_20250512::int128" { i128 -6805647338418769269267492148635364229 }, %"class.absl::lts_20250512::int128" { i128 -6543891671556508912757203989072465604 }, %"class.absl::lts_20250512::int128" { i128 -6301525313350712286358789026514226138 }, %"class.absl::lts_20250512::int128" { i128 -6076470837873901133274546561281575204 }, %"class.absl::lts_20250512::int128" { i128 -5866937360705835576954734610892555369 }, %"class.absl::lts_20250512::int128" { i128 -5671372782015641057722910123862803524 }, %"class.absl::lts_20250512::int128" { i128 -5488425272918362313925396894060777604 }, %"class.absl::lts_20250512::int128" { i128 -5316911983139663491615228241121378304 }, %"class.absl::lts_20250512::int128" { i128 -5155793438196037325202645567148003203 }, %"class.absl::lts_20250512::int128" { i128 -5004152454719683286226097168114238403 }, %"class.absl::lts_20250512::int128" { i128 -4861176670299120906619637249025260163 }, %"class.absl::lts_20250512::int128" { i128 -4726143985013034214769091769885669603 }], align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIhE13kVmaxOverBaseE = internal unnamed_addr constant [37 x i8] c"\00\00\7FU?3*$\1F\1C\19\17\15\13\12\11\0F\0F\0E\0D\0C\0C\0B\0B\0A\0A\09\09\09\08\08\08\07\07\07\07\07", align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesItE13kVmaxOverBaseE = internal unnamed_addr constant [37 x i16] [i16 0, i16 0, i16 32767, i16 21845, i16 16383, i16 13107, i16 10922, i16 9362, i16 8191, i16 7281, i16 6553, i16 5957, i16 5461, i16 5041, i16 4681, i16 4369, i16 4095, i16 3855, i16 3640, i16 3449, i16 3276, i16 3120, i16 2978, i16 2849, i16 2730, i16 2621, i16 2520, i16 2427, i16 2340, i16 2259, i16 2184, i16 2114, i16 2047, i16 1985, i16 1927, i16 1872, i16 1820], align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesIjE13kVmaxOverBaseE = internal unnamed_addr constant [37 x i32] [i32 0, i32 0, i32 2147483647, i32 1431655765, i32 1073741823, i32 858993459, i32 715827882, i32 613566756, i32 536870911, i32 477218588, i32 429496729, i32 390451572, i32 357913941, i32 330382099, i32 306783378, i32 286331153, i32 268435455, i32 252645135, i32 238609294, i32 226050910, i32 214748364, i32 204522252, i32 195225786, i32 186737708, i32 178956970, i32 171798691, i32 165191049, i32 159072862, i32 153391689, i32 148102320, i32 143165576, i32 138547332, i32 134217727, i32 130150524, i32 126322567, i32 122713351, i32 119304647], align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesImE13kVmaxOverBaseE = internal unnamed_addr constant [37 x i64] [i64 0, i64 0, i64 9223372036854775807, i64 6148914691236517205, i64 4611686018427387903, i64 3689348814741910323, i64 3074457345618258602, i64 2635249153387078802, i64 2305843009213693951, i64 2049638230412172401, i64 1844674407370955161, i64 1676976733973595601, i64 1537228672809129301, i64 1418980313362273201, i64 1317624576693539401, i64 1229782938247303441, i64 1152921504606846975, i64 1085102592571150095, i64 1024819115206086200, i64 970881267037344821, i64 922337203685477580, i64 878416384462359600, i64 838488366986797800, i64 802032351030850070, i64 768614336404564650, i64 737869762948382064, i64 709490156681136600, i64 683212743470724133, i64 658812288346769700, i64 636094623231363848, i64 614891469123651720, i64 595056260442243600, i64 576460752303423487, i64 558992244657865200, i64 542551296285575047, i64 527049830677415760, i64 512409557603043100], align 16
@_ZN4absl12lts_2025051212_GLOBAL__N_112LookupTablesINS0_7uint128EE13kVmaxOverBaseE = internal unnamed_addr constant [37 x %"class.absl::lts_20250512::uint128"] [%"class.absl::lts_20250512::uint128" zeroinitializer, %"class.absl::lts_20250512::uint128" zeroinitializer, %"class.absl::lts_20250512::uint128" { i64 -1, i64 9223372036854775807 }, %"class.absl::lts_20250512::uint128" { i64 6148914691236517205, i64 6148914691236517205 }, %"class.absl::lts_20250512::uint128" { i64 -1, i64 4611686018427387903 }, %"class.absl::lts_20250512::uint128" { i64 3689348814741910323, i64 3689348814741910323 }, %"class.absl::lts_20250512::uint128" { i64 -6148914691236517206, i64 3074457345618258602 }, %"class.absl::lts_20250512::uint128" { i64 5270498306774157604, i64 2635249153387078802 }, %"class.absl::lts_20250512::uint128" { i64 -1, i64 2305843009213693951 }, %"class.absl::lts_20250512::uint128" { i64 -4099276460824344804, i64 2049638230412172401 }, %"class.absl::lts_20250512::uint128" { i64 -7378697629483820647, i64 1844674407370955161 }, %"class.absl::lts_20250512::uint128" { i64 8384883669867978007, i64 1676976733973595601 }, %"class.absl::lts_20250512::uint128" { i64 6148914691236517205, i64 1537228672809129301 }, %"class.absl::lts_20250512::uint128" { i64 4256940940086819603, i64 1418980313362273201 }, %"class.absl::lts_20250512::uint128" { i64 2635249153387078802, i64 1317624576693539401 }, %"class.absl::lts_20250512::uint128" { i64 1229782938247303441, i64 1229782938247303441 }, %"class.absl::lts_20250512::uint128" { i64 -1, i64 1152921504606846975 }, %"class.absl::lts_20250512::uint128" { i64 1085102592571150095, i64 1085102592571150095 }, %"class.absl::lts_20250512::uint128" { i64 -2049638230412172402, i64 1024819115206086200 }, %"class.absl::lts_20250512::uint128" { i64 -1941762534074689644, i64 970881267037344821 }, %"class.absl::lts_20250512::uint128" { i64 -3689348814741910324, i64 922337203685477580 }, %"class.absl::lts_20250512::uint128" { i64 -4392081922311798004, i64 878416384462359600 }, %"class.absl::lts_20250512::uint128" { i64 -5030930201920786805, i64 838488366986797800 }, %"class.absl::lts_20250512::uint128" { i64 4812194106185100421, i64 802032351030850070 }, %"class.absl::lts_20250512::uint128" { i64 -6148914691236517206, i64 768614336404564650 }, %"class.absl::lts_20250512::uint128" { i64 -6640827866535438582, i64 737869762948382064 }, %"class.absl::lts_20250512::uint128" { i64 -7094901566811366007, i64 709490156681136600 }, %"class.absl::lts_20250512::uint128" { i64 -1366425486941448268, i64 683212743470724133 }, %"class.absl::lts_20250512::uint128" { i64 -7905747460161236407, i64 658812288346769700 }, %"class.absl::lts_20250512::uint128" { i64 -3180473116156819245, i64 636094623231363848 }, %"class.absl::lts_20250512::uint128" { i64 -8608480567731124088, i64 614891469123651720 }, %"class.absl::lts_20250512::uint128" { i64 -8925843906633654008, i64 595056260442243600 }, %"class.absl::lts_20250512::uint128" { i64 -1, i64 576460752303423487 }, %"class.absl::lts_20250512::uint128" { i64 8943875914525843207, i64 558992244657865200 }, %"class.absl::lts_20250512::uint128" { i64 -8680820740569200761, i64 542551296285575047 }, %"class.absl::lts_20250512::uint128" { i64 8432797290838652167, i64 527049830677415760 }, %"class.absl::lts_20250512::uint128" { i64 8198552921648689607, i64 512409557603043100 }], align 16

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051210SimpleAtofESt17basic_string_viewIcSt11char_traitsIcEEPf(i64 %0, ptr %1, ptr noundef initializes((0, 4)) %2) local_unnamed_addr #0 {
bb.a:
  store float 0.000000e+00, ptr %2, align 4, !tbaa !7
  %i.a = tail call { i64, ptr } @_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 4 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ashr i64 %i.b, 2                         ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i.preheader.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.a
  %i.h = and i64 %i.b, 3
  %scevgep.i.i = getelementptr i8, ptr %i.c, i64 %i.h
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.preheader.i.i
  %.sroa.03.3.i.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.d, %.lr.ph.i.i.i.preheader.i.i ] ; 8 uses
  %.015.i.i.i.i.i = phi i64 [ %i.ag, %bb.e ], [ %i.f, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !noalias !10
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9, !noalias !10
  %i.n = and i8 %i.m, 8
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9, !noalias !10
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9, !noalias !10
  %i.t = and i8 %i.s, 8
  %.not9.i.i = icmp eq i8 %i.t, 0
  br i1 %.not9.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9, !noalias !10
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9, !noalias !10
  %i.z = and i8 %i.y, 8
  %.not10.i.i = icmp eq i8 %i.z, 0
  br i1 %.not10.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9, !noalias !10
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9, !noalias !10
  %i.af = and i8 %i.ae, 8
  %.not11.i.i = icmp eq i8 %i.af, 0
  br i1 %.not11.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = add nsw i64 %.015.i.i.i.i.i, -1
  %i.ah = icmp sgt i64 %.015.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !17

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.a
  %.sroa.03.0.i.i.i.i = phi ptr [ %i.d, %bb.a ], [ %scevgep.i.i, %bb.e ] ; 5 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.i.i.i.i to i64
  %i.ai = sub i64 %.pre-phi.i.i.i.i.i, %i.e
  switch i64 %i.ai, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit [
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i, i64 -1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9, !noalias !10
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9, !noalias !10
  %i.ao = and i8 %i.an, 8
  %.not12.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not12.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i.i
  %.sroa.03.2.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.03.2.i.i.i.i, i64 -1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9, !noalias !10
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9, !noalias !10
  %i.au = and i8 %i.at, 8
  %.not13.i.i = icmp eq i8 %i.au, 0
  br i1 %.not13.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.sroa.03.1.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ap, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.03.1.i.i.i.i, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9, !noalias !10
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9, !noalias !10
  %i.ba = and i8 %i.az, 8
  %.not14.i.i = icmp eq i8 %i.ba, 0
  %spec.select.i.i.i.i = select i1 %.not14.i.i, ptr %.sroa.03.1.i.i.i.i, ptr %i.c
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.bb = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37: ; preds = %bb.c
  %i.bc = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39: ; preds = %bb.b
  %i.bd = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39, %._crit_edge.i.i.i.i.i, %bb.f, %bb.g, %bb.h
  %.sink.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.h ], [ %.sroa.03.2.i.i.i.i, %bb.g ], [ %.sroa.03.0.i.i.i.i, %bb.f ], [ %i.c, %._crit_edge.i.i.i.i.i ], [ %i.bd, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39 ], [ %i.bc, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37 ], [ %i.bb, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit ], [ %.sroa.03.3.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.be = ptrtoint ptr %.sink.i.i.i.i.i to i64
  %i.bf = sub i64 %i.be, %i.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.bf) ; 3 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bg, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bh = load i8, ptr %i.c, align 1, !tbaa !9
  %i.bi = icmp eq i8 %i.bh, 43
  br i1 %i.bi, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.bk = add i64 %.sroa.speculated.i.i.i, -1     ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.bn = icmp eq i8 %i.bm, 45
  br i1 %i.bn, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sroa.8.0 = phi ptr [ %i.c, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.bj, %bb.j ], [ %i.bj, %bb.k ], [ %i.c, %bb.i ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 0, %bb.j ], [ %i.bk, %bb.k ], [ %.sroa.speculated.i.i.i, %bb.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 %.sroa.0.0 ; 2 uses
  %i.bp = tail call { ptr, i32 } @_ZN4absl12lts_2025051210from_charsEPKcS2_RfNS0_12chars_formatE(ptr noundef %.sroa.8.0, ptr noundef %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3) ; 2 uses
  %i.bq = extractvalue { ptr, i32 } %i.bp, 1      ; 2 uses
  %i.br = icmp ne i32 %i.bq, 22
  %i.bs = extractvalue { ptr, i32 } %i.bp, 0
  %.not = icmp eq ptr %i.bs, %i.bo
  %or.cond = select i1 %i.br, i1 %.not, i1 false
  br i1 %or.cond, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bt = icmp eq i32 %i.bq, 34
  br i1 %i.bt, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bu = load float, ptr %2, align 4, !tbaa !7   ; 2 uses
  %i.bv = fcmp ogt float %i.bu, 1.000000e+00
  br i1 %i.bv, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = fcmp olt float %i.bu, -1.000000e+00
  br i1 %i.bw, label %.sink.split, label %bb.p

.sink.split:                                      ; preds = %bb.o, %bb.n
  %.sink = phi float [ +inf, %bb.n ], [ -inf, %bb.o ]
  store float %.sink, ptr %2, align 4, !tbaa !7
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.l, %bb.o, %bb.m, %bb.k
  %.1 = phi i1 [ false, %bb.k ], [ true, %bb.m ], [ false, %bb.l ], [ true, %bb.o ], [ true, %.sink.split ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { ptr, i32 } @_ZN4absl12lts_2025051210from_charsEPKcS2_RfNS0_12chars_formatE(ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051210SimpleAtodESt17basic_string_viewIcSt11char_traitsIcEEPd(i64 %0, ptr %1, ptr noundef initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  store double 0.000000e+00, ptr %2, align 8, !tbaa !19
  %i.a = tail call { i64, ptr } @_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 4 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ashr i64 %i.b, 2                         ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i.preheader.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.a
  %i.h = and i64 %i.b, 3
  %scevgep.i.i = getelementptr i8, ptr %i.c, i64 %i.h
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.preheader.i.i
  %.sroa.03.3.i.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.d, %.lr.ph.i.i.i.preheader.i.i ] ; 8 uses
  %.015.i.i.i.i.i = phi i64 [ %i.ag, %bb.e ], [ %i.f, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !noalias !21
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9, !noalias !21
  %i.n = and i8 %i.m, 8
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9, !noalias !21
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9, !noalias !21
  %i.t = and i8 %i.s, 8
  %.not9.i.i = icmp eq i8 %i.t, 0
  br i1 %.not9.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9, !noalias !21
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9, !noalias !21
  %i.z = and i8 %i.y, 8
  %.not10.i.i = icmp eq i8 %i.z, 0
  br i1 %.not10.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9, !noalias !21
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9, !noalias !21
  %i.af = and i8 %i.ae, 8
  %.not11.i.i = icmp eq i8 %i.af, 0
  br i1 %.not11.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = add nsw i64 %.015.i.i.i.i.i, -1
  %i.ah = icmp sgt i64 %.015.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !17

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.a
  %.sroa.03.0.i.i.i.i = phi ptr [ %i.d, %bb.a ], [ %scevgep.i.i, %bb.e ] ; 5 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.i.i.i.i to i64
  %i.ai = sub i64 %.pre-phi.i.i.i.i.i, %i.e
  switch i64 %i.ai, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit [
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i, i64 -1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9, !noalias !21
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9, !noalias !21
  %i.ao = and i8 %i.an, 8
  %.not12.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not12.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i.i
  %.sroa.03.2.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.03.2.i.i.i.i, i64 -1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9, !noalias !21
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9, !noalias !21
  %i.au = and i8 %i.at, 8
  %.not13.i.i = icmp eq i8 %i.au, 0
  br i1 %.not13.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.sroa.03.1.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ap, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.03.1.i.i.i.i, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9, !noalias !21
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9, !noalias !21
  %i.ba = and i8 %i.az, 8
  %.not14.i.i = icmp eq i8 %i.ba, 0
  %spec.select.i.i.i.i = select i1 %.not14.i.i, ptr %.sroa.03.1.i.i.i.i, ptr %i.c
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.bb = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37: ; preds = %bb.c
  %i.bc = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39: ; preds = %bb.b
  %i.bd = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39, %._crit_edge.i.i.i.i.i, %bb.f, %bb.g, %bb.h
  %.sink.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.h ], [ %.sroa.03.2.i.i.i.i, %bb.g ], [ %.sroa.03.0.i.i.i.i, %bb.f ], [ %i.c, %._crit_edge.i.i.i.i.i ], [ %i.bd, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit39 ], [ %i.bc, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit37 ], [ %i.bb, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit ], [ %.sroa.03.3.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.be = ptrtoint ptr %.sink.i.i.i.i.i to i64
  %i.bf = sub i64 %i.be, %i.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.bf) ; 3 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bg, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bh = load i8, ptr %i.c, align 1, !tbaa !9
  %i.bi = icmp eq i8 %i.bh, 43
  br i1 %i.bi, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.bk = add i64 %.sroa.speculated.i.i.i, -1     ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.bn = icmp eq i8 %i.bm, 45
  br i1 %i.bn, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sroa.8.0 = phi ptr [ %i.c, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.bj, %bb.j ], [ %i.bj, %bb.k ], [ %i.c, %bb.i ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 0, %bb.j ], [ %i.bk, %bb.k ], [ %.sroa.speculated.i.i.i, %bb.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 %.sroa.0.0 ; 2 uses
  %i.bp = tail call { ptr, i32 } @_ZN4absl12lts_2025051210from_charsEPKcS2_RdNS0_12chars_formatE(ptr noundef %.sroa.8.0, ptr noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 3) ; 2 uses
  %i.bq = extractvalue { ptr, i32 } %i.bp, 1      ; 2 uses
  %i.br = icmp ne i32 %i.bq, 22
  %i.bs = extractvalue { ptr, i32 } %i.bp, 0
  %.not = icmp eq ptr %i.bs, %i.bo
  %or.cond = select i1 %i.br, i1 %.not, i1 false
  br i1 %or.cond, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bt = icmp eq i32 %i.bq, 34
  br i1 %i.bt, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bu = load double, ptr %2, align 8, !tbaa !19 ; 2 uses
  %i.bv = fcmp ogt double %i.bu, 1.000000e+00
  br i1 %i.bv, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = fcmp olt double %i.bu, -1.000000e+00
  br i1 %i.bw, label %.sink.split, label %bb.p

.sink.split:                                      ; preds = %bb.o, %bb.n
  %.sink = phi double [ +inf, %bb.n ], [ -inf, %bb.o ]
  store double %.sink, ptr %2, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.l, %bb.o, %bb.m, %bb.k
  %.1 = phi i1 [ false, %bb.k ], [ true, %bb.m ], [ false, %bb.l ], [ true, %bb.o ], [ true, %.sink.split ]
  ret i1 %.1
}

declare { ptr, i32 } @_ZN4absl12lts_2025051210from_charsEPKcS2_RdNS0_12chars_formatE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051210SimpleAtobESt17basic_string_viewIcSt11char_traitsIcEEPb(i64 %0, ptr %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 68), i32 noundef 113, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 4, ptr nonnull @.str.4) #15
  br i1 %i.a, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.5) #15
  br i1 %i.b, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 3, ptr nonnull @.str.6) #15
  br i1 %i.c, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.7) #15
  br i1 %i.d, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.8) #15
  br i1 %i.e, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 5, ptr nonnull @.str.9) #15
  br i1 %i.f, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.g = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.10) #15
  br i1 %i.g, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 2, ptr nonnull @.str.11) #15
  br i1 %i.h, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.i = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.12) #15
  br i1 %i.i, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.j = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %0, ptr %1, i64 1, ptr nonnull @.str.13) #15
  br i1 %i.j, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi i8 [ 1, %bb.c ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ]
  store i8 %.sink, ptr %2, align 1, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %.0 = phi i1 [ false, %bb.l ], [ true, %.sink.split ]
  ret i1 %.0
}

declare void @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64, ptr, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = mul nuw nsw i64 %i.a, 103
  %i.c = lshr i64 %i.b, 10
  %i.d = trunc nuw nsw i64 %i.c to i32            ; 2 uses
  %.neg = mul i32 %i.d, 246
  %i.e = add i32 %.neg, %0
  %i.f = shl i32 %i.e, 8
  %i.g = add i32 %i.f, %i.d
  %i.h = trunc i32 %i.g to i16
  %i.i = add i16 %i.h, 12336
  store i16 %i.i, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define noundef nonnull ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef %0, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 1)) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %0, 10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %0 to i8
  %i.c = or disjoint i8 %i.b, 48
  store i8 %i.c, ptr %1, align 1, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %0, 100000000
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = udiv i32 %0, 10000
  %i.g = urem i32 %0, 10000
  %i.h = zext nneg i32 %i.f to i64
  %i.i = zext nneg i32 %i.g to i64
  %i.j = shl nuw nsw i64 %i.i, 32
  %i.k = or disjoint i64 %i.j, %i.h               ; 2 uses
  %i.l = mul nuw nsw i64 %i.k, 10486
  %i.m = lshr i64 %i.l, 20
  %i.n = and i64 %i.m, 545460846719               ; 2 uses
  %.neg.i = mul nsw i64 %i.n, -100
  %i.o = add nsw i64 %.neg.i, %i.k
  %i.p = shl nsw i64 %i.o, 16
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = mul i64 %i.q, 103
  %i.s = lshr i64 %i.r, 10
  %i.t = and i64 %i.s, 4222189076152335           ; 2 uses
  %.neg16.i = mul i64 %i.t, 72057594037927926
  %i.u = add i64 %.neg16.i, %i.q
  %i.v = shl i64 %i.u, 8
  %i.w = add i64 %i.v, %i.t                       ; 3 uses
  %i.x = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.w, i1 true) ; 2 uses
  %i.z = and i64 %i.y, 56
  %i.aa = add i64 %i.w, 3472328296227680304
  %i.ab = lshr i64 %i.aa, %i.z
  store i64 %i.ab, ptr %1, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = lshr i64 %i.y, 3
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113EncodeFullU32EjPc.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = udiv i32 %0, 100000000                  ; 3 uses
  %i.ah = urem i32 %0, 100000000                  ; 2 uses
  %i.ai = udiv i32 %i.ah, 10000
  %i.aj = urem i32 %i.ah, 10000
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = shl nuw nsw i64 %i.al, 32
  %i.an = or disjoint i64 %i.am, %i.ak            ; 2 uses
  %i.ao = mul nuw nsw i64 %i.an, 10486
  %i.ap = lshr i64 %i.ao, 20
  %i.aq = and i64 %i.ap, 545460846719             ; 2 uses
  %.neg.i3 = mul nsw i64 %i.aq, -100
  %i.ar = add nsw i64 %.neg.i3, %i.an
  %i.as = shl nsw i64 %i.ar, 16
end_hunk_0
