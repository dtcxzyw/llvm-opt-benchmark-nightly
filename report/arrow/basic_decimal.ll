Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/basic_decimal?download=true
inline.NumInlined: 502
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 21
begin_hunk_0
$_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE13kLowWordIndexE = comdat any

$_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE9kBitWidthE = comdat any

$_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE10kByteWidthE = comdat any

$_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE9kNumWordsE = comdat any

$_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE17LittleEndianArrayE = comdat any

$_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE14kHighWordIndexE = comdat any

$_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE13kLowWordIndexE = comdat any

$_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE9kBitWidthE = comdat any

$_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE10kByteWidthE = comdat any

$_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE9kNumWordsE = comdat any

$_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE17LittleEndianArrayE = comdat any

$_ZN5arrow17SmallBasicDecimalIiE13kMaxPrecisionE = comdat any

$_ZN5arrow17SmallBasicDecimalIiE9kMaxScaleE = comdat any

$_ZN5arrow17SmallBasicDecimalIiE9kBitWidthE = comdat any

$_ZN5arrow17SmallBasicDecimalIiE10kByteWidthE = comdat any

$_ZN5arrow17SmallBasicDecimalIlE13kMaxPrecisionE = comdat any

$_ZN5arrow17SmallBasicDecimalIlE9kMaxScaleE = comdat any

$_ZN5arrow17SmallBasicDecimalIlE9kBitWidthE = comdat any

$_ZN5arrow17SmallBasicDecimalIlE10kByteWidthE = comdat any

$_ZN5arrow13DecimalTraitsINS_14BasicDecimal32EE9kMaxValueE = comdat any

$_ZN5arrow13DecimalTraitsINS_14BasicDecimal64EE9kMaxValueE = comdat any

@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE14kHighWordIndexE = weak_odr local_unnamed_addr constant i32 1, comdat, align 4
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE13kLowWordIndexE = weak_odr local_unnamed_addr constant i32 0, comdat, align 4
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE9kBitWidthE = weak_odr local_unnamed_addr constant i32 128, comdat, align 4
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE10kByteWidthE = weak_odr local_unnamed_addr constant i32 16, comdat, align 4
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE9kNumWordsE = weak_odr local_unnamed_addr constant i32 2, comdat, align 4
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE17LittleEndianArrayE = weak_odr local_unnamed_addr constant %"struct.arrow::GenericBasicDecimal<arrow::BasicDecimal128, 128>::LittleEndianArrayTag" undef, comdat, align 1
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE14kHighWordIndexE = weak_odr local_unnamed_addr constant i32 3, comdat, align 4
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE13kLowWordIndexE = weak_odr local_unnamed_addr constant i32 0, comdat, align 4
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE9kBitWidthE = weak_odr local_unnamed_addr constant i32 256, comdat, align 4
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE10kByteWidthE = weak_odr local_unnamed_addr constant i32 32, comdat, align 4
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE9kNumWordsE = weak_odr local_unnamed_addr constant i32 4, comdat, align 4
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE17LittleEndianArrayE = weak_odr local_unnamed_addr constant %"struct.arrow::GenericBasicDecimal<arrow::BasicDecimal256, 256>::LittleEndianArrayTag" undef, comdat, align 1
@_ZN5arrow17SmallBasicDecimalIiE13kMaxPrecisionE = weak_odr local_unnamed_addr constant i32 9, comdat, align 4
@_ZN5arrow17SmallBasicDecimalIiE9kMaxScaleE = weak_odr local_unnamed_addr constant i32 9, comdat, align 4
@_ZN5arrow17SmallBasicDecimalIiE9kBitWidthE = weak_odr local_unnamed_addr constant i32 32, comdat, align 4
@_ZN5arrow17SmallBasicDecimalIiE10kByteWidthE = weak_odr local_unnamed_addr constant i32 4, comdat, align 4
@_ZN5arrow17SmallBasicDecimalIlE13kMaxPrecisionE = weak_odr local_unnamed_addr constant i32 18, comdat, align 4
@_ZN5arrow17SmallBasicDecimalIlE9kMaxScaleE = weak_odr local_unnamed_addr constant i32 18, comdat, align 4
@_ZN5arrow17SmallBasicDecimalIlE9kBitWidthE = weak_odr local_unnamed_addr constant i32 64, comdat, align 4
@_ZN5arrow17SmallBasicDecimalIlE10kByteWidthE = weak_odr local_unnamed_addr constant i32 8, comdat, align 4
@_ZN5arrowL21kDecimal32PowersOfTenE = internal constant [10 x { i32 }] [{ i32 } { i32 1 }, { i32 } { i32 10 }, { i32 } { i32 100 }, { i32 } { i32 1000 }, { i32 } { i32 10000 }, { i32 } { i32 100000 }, { i32 } { i32 1000000 }, { i32 } { i32 10000000 }, { i32 } { i32 100000000 }, { i32 } { i32 1000000000 }], align 16
@_ZN5arrow13DecimalTraitsINS_14BasicDecimal32EE9kMaxValueE = linkonce_odr constant { i32 } { i32 999999999 }, comdat, align 4
@_ZN5arrowL25kDecimal32HalfPowersOfTenE = internal constant [10 x { i32 }] [{ i32 } zeroinitializer, { i32 } { i32 5 }, { i32 } { i32 50 }, { i32 } { i32 500 }, { i32 } { i32 5000 }, { i32 } { i32 50000 }, { i32 } { i32 500000 }, { i32 } { i32 5000000 }, { i32 } { i32 50000000 }, { i32 } { i32 500000000 }], align 16
@_ZN5arrowL21kDecimal64PowersOfTenE = internal constant [19 x { i64 }] [{ i64 } { i64 1 }, { i64 } { i64 10 }, { i64 } { i64 100 }, { i64 } { i64 1000 }, { i64 } { i64 10000 }, { i64 } { i64 100000 }, { i64 } { i64 1000000 }, { i64 } { i64 10000000 }, { i64 } { i64 100000000 }, { i64 } { i64 1000000000 }, { i64 } { i64 10000000000 }, { i64 } { i64 100000000000 }, { i64 } { i64 1000000000000 }, { i64 } { i64 10000000000000 }, { i64 } { i64 100000000000000 }, { i64 } { i64 1000000000000000 }, { i64 } { i64 10000000000000000 }, { i64 } { i64 100000000000000000 }, { i64 } { i64 1000000000000000000 }], align 16
@_ZN5arrow13DecimalTraitsINS_14BasicDecimal64EE9kMaxValueE = linkonce_odr constant { i64 } { i64 999999999999999999 }, comdat, align 8
@_ZN5arrowL25kDecimal64HalfPowersOfTenE = internal constant [19 x { i64 }] [{ i64 } zeroinitializer, { i64 } { i64 5 }, { i64 } { i64 50 }, { i64 } { i64 500 }, { i64 } { i64 5000 }, { i64 } { i64 50000 }, { i64 } { i64 500000 }, { i64 } { i64 5000000 }, { i64 } { i64 50000000 }, { i64 } { i64 500000000 }, { i64 } { i64 5000000000 }, { i64 } { i64 50000000000 }, { i64 } { i64 500000000000 }, { i64 } { i64 5000000000000 }, { i64 } { i64 50000000000000 }, { i64 } { i64 500000000000000 }, { i64 } { i64 5000000000000000 }, { i64 } { i64 50000000000000000 }, { i64 } { i64 500000000000000000 }], align 16
@_ZN5arrowL22kDecimal128PowersOfTenE = internal constant [39 x { %"struct.std::array" }] [{ %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 1, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 10, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 100, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 1000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 10000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 100000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 1000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 10000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 100000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 1000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 10000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 100000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 1000000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 10000000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 100000000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 1000000000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 10000000000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 100000000000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 1000000000000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 -8446744073709551616, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 7766279631452241920, i64 5] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 3875820019684212736, i64 54] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 1864712049423024128, i64 542] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 200376420520689664, i64 5421] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 2003764205206896640, i64 54210] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 1590897978359414784, i64 542101] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 -2537764290115403776, i64 5421010] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 -6930898827444486144, i64 54210108] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 4477988020393345024, i64 542101086] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 7886392056514347008, i64 5421010862] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 5076944270305263616, i64 54210108624] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 -4570789518076018688, i64 542101086242] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 -8814407033341083648, i64 5421010862427] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 4089650035136921600, i64 54210108624275] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 4003012203950112768, i64 542101086242752] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 3136633892082024448, i64 5421010862427522] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 -5527149226598858752, i64 54210108624275221] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 68739955140067328, i64 542101086242752217] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 687399551400673280, i64 5421010862427522170] } }], align 16
@_ZN5arrowL26kDecimal128HalfPowersOfTenE = internal constant [39 x { %"struct.std::array" }] [{ %"struct.std::array" } zeroinitializer, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 5, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 50, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 500, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 5000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 50000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 500000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 5000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 50000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 500000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 5000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 50000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 500000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 5000000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 50000000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 500000000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 5000000000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 50000000000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 500000000000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 5000000000000000000, i64 0] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 -5340232221128654848, i64 2] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 1937910009842106368, i64 27] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 932356024711512064, i64 271] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 -9123183826594430976, i64 2710] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 1001882102603448320, i64 27105] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 -8427923047675068416, i64 271050] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 7954489891797073920, i64 2710505] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 5757922623132532736, i64 27105054] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 2238994010196672512, i64 271050543] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 3943196028257173504, i64 2710505431] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 2538472135152631808, i64 27105054312] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 6937977277816766464, i64 271050543121] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 -4407203516670541824, i64 2710505431213] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 -7178547019286315008, i64 27105054312137] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 2001506101975056384, i64 271050543121376] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 1568316946041012224, i64 2710505431213761] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 -2763574613299429376, i64 27105054312137610] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 -9189002059284742144, i64 271050543121376108] } }, { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 343699775700336640, i64 2710505431213761085] } }], align 16
@_ZN5arrowL19kMaxDecimal128ValueE = internal constant { %"struct.std::array" } { %"struct.std::array" { [2 x i64] [i64 687399551400673279, i64 5421010862427522170] } }, align 8
@_ZN5arrowL22kDecimal256PowersOfTenE = internal constant [77 x { %"struct.std::array.2" }] [{ %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 1, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 10, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 100, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 1000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 10000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 100000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 1000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 10000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 100000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 1000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 10000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 100000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 1000000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 10000000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 100000000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 1000000000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 10000000000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 100000000000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 1000000000000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -8446744073709551616, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 7766279631452241920, i64 5, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 3875820019684212736, i64 54, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 1864712049423024128, i64 542, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 200376420520689664, i64 5421, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 2003764205206896640, i64 54210, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 1590897978359414784, i64 542101, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -2537764290115403776, i64 5421010, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -6930898827444486144, i64 54210108, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 4477988020393345024, i64 542101086, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 7886392056514347008, i64 5421010862, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 5076944270305263616, i64 54210108624, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -4570789518076018688, i64 542101086242, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -8814407033341083648, i64 5421010862427, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 4089650035136921600, i64 54210108624275, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 4003012203950112768, i64 542101086242752, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 3136633892082024448, i64 5421010862427522, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -5527149226598858752, i64 54210108624275221, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 68739955140067328, i64 542101086242752217, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 687399551400673280, i64 5421010862427522170, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 6873995514006732800, i64 -1130123596853433148, i64 2, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -5047021154770878464, i64 7145508105175220139, i64 29, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 4870020673419870208, i64 -2331895243086005067, i64 293, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -6640025486929952768, i64 -4872208357150499052, i64 2938, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 7386721425538678784, i64 6618148649623664334, i64 29387, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 80237960548581376, i64 -7605489798601563120, i64 293873, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 802379605485813760, i64 -2267921691177424736, i64 2938735, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 8023796054858137600, i64 -4232472838064695744, i64 29387358, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 6450984253743169536, i64 -5431240233227854204, i64 293873587, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 9169610316303040512, i64 1027829888850112811, i64 2938735877, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -537617205517352960, i64 -8168445185208423502, i64 29387358770, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -5376172055173529600, i64 -7897475557246028547, i64 293873587705, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 1578511669393358848, i64 -5187779277622078999, i64 2938735877055, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -2661627379775963136, i64 3462439444907864858, i64 29387358770557, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -8169529724050079744, i64 -2269093698340454644, i64 293873587705571, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -7908320945662590976, i64 -4244192909694994819, i64 2938735877055718, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -5296233161787703296, i64 -5548440949530844953, i64 29387358770557187, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 2377900603251621888, i64 -144177274179794675, i64 293873587705571876, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 5332261958806667264, i64 -1441772741797946749, i64 2938735877055718769, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -2017612633061982208, i64 4029016655730084128, i64 -7506129376861915533, i64 1] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -1729382256910270464, i64 3396678409881738056, i64 -1274317473780948864, i64 15] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 1152921504606846976, i64 -2926704048601722663, i64 5703569335900062977, i64 159] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -6917529027641081856, i64 7626447661401876602, i64 1695461137871974930, i64 1593] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 4611686018427387904, i64 2477500319180559562, i64 -1492132694989802312, i64 15930] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -9223372036854775808, i64 6328259118096044006, i64 3525417123811528497, i64 159309] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 7942358959831785217, i64 -1639316909303818259, i64 1593091] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 5636613303479645706, i64 2053574980671369030, i64 15930919] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 1025900813667802212, i64 2089005733004138687, i64 159309191] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 -8187735937031529496, i64 2443313256331835254, i64 1593091911] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 -8090383075477088496, i64 5986388489608800929, i64 15930919111] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 -7116854459932678496, i64 4523652674959354447, i64 159309191113] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 2618431695511421504, i64 8343038602174441244, i64 1593091911132] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 7737572881404663424, i64 -8803334346803345639, i64 15930919111324] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 3588752519208427776, i64 4200376900514301694, i64 159309191113245] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 -1005962955334825472, i64 5110280857723913709, i64 1593091911132452] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 8387114520361296896, i64 -4237423643889517749, i64 15930919111324522] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 -8362575164934789120, i64 -5480748291476074254, i64 159309191113245227] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 8607968719199866880, i64 532749306367912313, i64 1593091911132452277] } }], align 16
@_ZN5arrowL26kDecimal256HalfPowersOfTenE = internal constant [77 x { %"struct.std::array.2" }] [{ %"struct.std::array.2" } zeroinitializer, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 5, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 50, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 500, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 5000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 50000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 500000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 5000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 50000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 500000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 5000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 50000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 500000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 5000000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 50000000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 500000000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 5000000000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 50000000000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 500000000000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 5000000000000000000, i64 0, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -5340232221128654848, i64 2, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 1937910009842106368, i64 27, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 932356024711512064, i64 271, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -9123183826594430976, i64 2710, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 1001882102603448320, i64 27105, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -8427923047675068416, i64 271050, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 7954489891797073920, i64 2710505, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 5757922623132532736, i64 27105054, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 2238994010196672512, i64 271050543, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 3943196028257173504, i64 2710505431, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 2538472135152631808, i64 27105054312, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 6937977277816766464, i64 271050543121, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -4407203516670541824, i64 2710505431213, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -7178547019286315008, i64 27105054312137, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 2001506101975056384, i64 271050543121376, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 1568316946041012224, i64 2710505431213761, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -2763574613299429376, i64 27105054312137610, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -9189002059284742144, i64 271050543121376108, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 343699775700336640, i64 2710505431213761085, i64 0, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 3436997757003366400, i64 8658310238428059234, i64 1, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -2523510577385439232, i64 -5650617984267165739, i64 14, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -6788361700144840704, i64 -1165947621543002534, i64 146, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 5903359293389799424, i64 6787267858279526282, i64 1469, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 3693360712769339392, i64 -5914297712042943641, i64 14693, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 40118980274290688, i64 -3802744899300781560, i64 146936, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 401189802742906880, i64 -1133960845588712368, i64 1469367, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 4011898027429068800, i64 7107135617822427936, i64 14693679, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 3225492126871584768, i64 -2715620116613927102, i64 146936793, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -4638566878703255552, i64 -8709457092429719403, i64 1469367938, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 8954563434096099328, i64 5139149444250564057, i64 14693679385, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -2688086027586764800, i64 -3948737778623014274, i64 146936793852, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -8434116202158096384, i64 -2593889638811039500, i64 1469367938527, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 7892558346966794240, i64 -7492152314400843379, i64 14693679385278, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 5138607174829735936, i64 -1134546849170227322, i64 146936793852785, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -3954160472831295488, i64 7101275582007278398, i64 1469367938527859, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -2648116580893851648, i64 -2774220474765422477, i64 14693679385278593, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -8034421735228964864, i64 9151283399764878470, i64 146936793852785938, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -6557241057451442176, i64 -720886370898973375, i64 1469367938527859384, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 8214565720323784704, i64 -7208863708989733744, i64 -3753064688430957767, i64 0] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 8358680908399640576, i64 1698339204940869028, i64 -637158736890474432, i64 7] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -8646911284551352320, i64 -1463352024300861332, i64 -6371587368904744320, i64 79] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 5764607523034234880, i64 3813223830700938301, i64 -8375641467918788343, i64 796] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 2305843009213693952, i64 1238750159590279781, i64 8477305689359874652, i64 7965] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 4611686018427387904, i64 -6059242477806753805, i64 -7460663474949011560, i64 79654] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 -9223372036854775808, i64 -5252192556938883200, i64 -819658454651909130, i64 796545] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 2818306651739822853, i64 -8196584546519091293, i64 7965459] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 -8710421630020874702, i64 -8178869170352706465, i64 79654595] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 5129504068339011060, i64 -8001715408688858181, i64 796545955] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 -4045191537738544248, i64 -6230177792050375344, i64 7965459555] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 -3558427229966339248, i64 -6961545699375098585, i64 79654595556] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 1309215847755710752, i64 4171519301087220622, i64 796545955566] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 -5354585596152444096, i64 4821704863453102988, i64 7965459555662] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 1794376259604213888, i64 -7123183586597624961, i64 79654595556622] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 -502981477667412736, i64 2555140428861956854, i64 796545955566226] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 -5029814776674127360, i64 7104660214910016933, i64 7965459555662261] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 5042084454387381248, i64 -2740374145738037127, i64 79654595556622613] } }, { %"struct.std::array.2" } { %"struct.std::array.2" { [4 x i64] [i64 0, i64 -4919387677254842368, i64 -8956997383670819652, i64 796545955566226138] } }], align 16

@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC1Ev = weak_odr unnamed_addr alias void (ptr), ptr @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC2Ev
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC1ERKSt5arrayImLm2EE = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC2ERKSt5arrayImLm2EE
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC1ENS2_20LittleEndianArrayTagERKSt5arrayImLm2EE = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC2ENS2_20LittleEndianArrayTagERKSt5arrayImLm2EE
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC1EPKh = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC2EPKh
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC1Ev = weak_odr unnamed_addr alias void (ptr), ptr @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC2Ev
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC1ERKSt5arrayImLm4EE = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC2ERKSt5arrayImLm4EE
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC1ENS2_20LittleEndianArrayTagERKSt5arrayImLm4EE = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC2ENS2_20LittleEndianArrayTagERKSt5arrayImLm4EE
@_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC1EPKh = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC2EPKh
@_ZN5arrow17SmallBasicDecimalIiEC1Ev = weak_odr unnamed_addr alias void (ptr), ptr @_ZN5arrow17SmallBasicDecimalIiEC2Ev
@_ZN5arrow17SmallBasicDecimalIiEC1EPKh = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow17SmallBasicDecimalIiEC2EPKh
@_ZN5arrow17SmallBasicDecimalIlEC1Ev = weak_odr unnamed_addr alias void (ptr), ptr @_ZN5arrow17SmallBasicDecimalIlEC2Ev
@_ZN5arrow17SmallBasicDecimalIlEC1EPKh = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow17SmallBasicDecimalIlEC2EPKh

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat($_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC5Ev) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC2ERKSt5arrayImLm2EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat($_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC5ERKSt5arrayImLm2EE) align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC2ENS2_20LittleEndianArrayTagERKSt5arrayImLm2EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat($_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC5ENS2_20LittleEndianArrayTagERKSt5arrayImLm2EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC2EPKh(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat($_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEC5EPKh) align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE19native_endian_arrayEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr { i64, i64 } @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE19little_endian_arrayEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !7
  %.fca.0.insert.i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i, i64 %.sroa.2.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE19native_endian_bytesEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE27mutable_native_endian_bytesEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr { i64, i64 } @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE7ToBytesEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE7ToBytesEPh(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE4SignEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = ashr i64 %i.b, 63
  %i.d = or i64 %i.c, 1
  ret i64 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EE10IsNegativeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp slt i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::array", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = load i128, ptr %0, align 8
  %i.b = load i128, ptr %1, align 8
  %i.c = icmp ne i128 %i.a, %i.b                  ; 2 uses
  %i.d = zext i1 %i.c to i32                      ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat($_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC5Ev) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC2ERKSt5arrayImLm4EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat($_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC5ERKSt5arrayImLm4EE) align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC2ENS2_20LittleEndianArrayTagERKSt5arrayImLm4EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat($_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC5ENS2_20LittleEndianArrayTagERKSt5arrayImLm4EE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC2EPKh(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 comdat($_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEC5EPKh) align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE19native_endian_arrayEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE19little_endian_arrayEv(ptr dead_on_unwind noalias writable sret(%"struct.std::array.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE19native_endian_bytesEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE27mutable_native_endian_bytesEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE7ToBytesEv(ptr dead_on_unwind noalias writable sret(%"struct.std::array.3") align 1 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE7ToBytesEPh(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE4SignEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = ashr i64 %i.b, 63
  %i.d = or i64 %i.c, 1
  ret i64 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE10IsNegativeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp slt i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEcvbEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::array.2", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.a = load i128, ptr %0, align 8
  %i.b = load i128, ptr %1, align 8
  %i.c = xor i128 %i.a, %i.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load i128, ptr %i.d, align 8
  %i.g = load i128, ptr %i.e, align 8
  %i.h = xor i128 %i.f, %i.g
  %i.i = or i128 %i.c, %i.h
  %i.j = icmp ne i128 %i.i, 0                     ; 2 uses
  %i.k = zext i1 %i.j to i32                      ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow17SmallBasicDecimalIiEC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #0 comdat($_ZN5arrow17SmallBasicDecimalIiEC5Ev) align 2 {
bb.a:
  store i32 0, ptr %0, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow17SmallBasicDecimalIiEC2EPKh(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %1) unnamed_addr #0 comdat($_ZN5arrow17SmallBasicDecimalIiEC5EPKh) align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 1
  store i32 %i.a, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i32 @_ZNK5arrow17SmallBasicDecimalIiE19native_endian_arrayEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr i32 @_ZNK5arrow17SmallBasicDecimalIiE19little_endian_arrayEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZNK5arrow17SmallBasicDecimalIiE19native_endian_bytesEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZN5arrow17SmallBasicDecimalIiE27mutable_native_endian_bytesEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i32 @_ZNK5arrow17SmallBasicDecimalIiE7ToBytesEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZNK5arrow17SmallBasicDecimalIiE7ToBytesEPh(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  store i32 %i.a, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK5arrow17SmallBasicDecimalIiE4SignEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  %i.b = ashr i32 %i.a, 31
  %i.c = or i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow17SmallBasicDecimalIiE10IsNegativeEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  %i.b = icmp slt i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow17SmallBasicDecimalIiEcvbEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i32 @_ZNK5arrow17SmallBasicDecimalIiE5valueEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZNK5arrow17SmallBasicDecimalIiE23CountLeadingBinaryZerosEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  %i.b = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 false)
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK5arrow17SmallBasicDecimalIiE8low_bitsEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  %i.b = sext i32 %i.a to i64
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow17SmallBasicDecimalIlEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat($_ZN5arrow17SmallBasicDecimalIlEC5Ev) align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow17SmallBasicDecimalIlEC2EPKh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat($_ZN5arrow17SmallBasicDecimalIlEC5EPKh) align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 1
  store i64 %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i64 @_ZNK5arrow17SmallBasicDecimalIlE19native_endian_arrayEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr i64 @_ZNK5arrow17SmallBasicDecimalIlE19little_endian_arrayEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZNK5arrow17SmallBasicDecimalIlE19native_endian_bytesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZN5arrow17SmallBasicDecimalIlE27mutable_native_endian_bytesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i64 @_ZNK5arrow17SmallBasicDecimalIlE7ToBytesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZNK5arrow17SmallBasicDecimalIlE7ToBytesEPh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  store i64 %i.a, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK5arrow17SmallBasicDecimalIlE4SignEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  %i.b = ashr i64 %i.a, 63
  %i.c = or i64 %i.b, 1
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow17SmallBasicDecimalIlE10IsNegativeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  %i.b = icmp slt i64 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow17SmallBasicDecimalIlEcvbEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  %i.b = icmp ne i64 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i64 @_ZNK5arrow17SmallBasicDecimalIlE5valueEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i32 @_ZNK5arrow17SmallBasicDecimalIlE23CountLeadingBinaryZerosEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@_ZN5arrowcoERKNS_14BasicDecimal64E:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @_ZN5arrowplERKNS_14BasicDecimal64ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8, !tbaa !13
  %i.c = add nsw i64 %i.b, %i.a
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @_ZN5arrowmiERKNS_14BasicDecimal64ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8, !tbaa !13
  %i.c = sub nsw i64 %i.a, %i.b
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @_ZN5arrowdvERKNS_14BasicDecimal64ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8, !tbaa !13
  %i.c = sdiv i64 %i.a, %i.b
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 -9223372036854775807, -9223372036854775808) i64 @_ZN5arrowrmERKNS_14BasicDecimal64ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZNK5arrow14BasicDecimal646DivideERKS0_PS0_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !13
  %i.d = srem i64 %i.c, %i.a
  br label %_ZNK5arrow14BasicDecimal646DivideERKS0_PS0_S3_.exit

_ZNK5arrow14BasicDecimal646DivideERKS0_PS0_S3_.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i64 [ 0, %bb.a ], [ %i.d, %bb.b ]
  ret i64 %.sroa.02.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1286NegateEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 8, !tbaa !9
  %i.b = load i64, ptr %0, align 8, !tbaa !9
  %i.c = icmp ne i64 %i.b, 0
  %i.d = sext i1 %i.c to i64
  %i.e = insertelement <2 x i64> <i64 0, i64 poison>, i64 %i.d, i64 1
  %i.f = sub <2 x i64> %i.e, %i.a
  store <2 x i64> %i.f, ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1283AbsEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.thread

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = sub i64 0, %i.d
  %i.g = sext i1 %i.e to i64
  %.sroa.6.0.i = sub i64 %i.g, %i.b
  store i64 %i.f, ptr %0, align 8
  store i64 %.sroa.6.0.i, ptr %i.a, align 8
  br label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.thread

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.thread: ; preds = %bb.a, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i64 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %0, align 8, !tbaa !9
  %i.h = load i64, ptr %1, align 8, !tbaa !9
  %i.i = icmp ult i64 %i.g, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.j = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrow15BasicDecimal1283AbsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow15BasicDecimal1283AbsEv.exit:
  %.sroa.0.0.copyload1 = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp slt i64 %.sroa.6.0.copyload, 0      ; 2 uses
  %i.b = icmp ne i64 %.sroa.0.0.copyload1, 0
  %i.c = sub i64 0, %.sroa.0.0.copyload1
  %i.d = sext i1 %i.b to i64
  %.sroa.6.0.i.i = sub i64 %i.d, %.sroa.6.0.copyload
  %.sroa.6.0 = select i1 %i.a, i64 %.sroa.6.0.i.i, i64 %.sroa.6.0.copyload
  %.sroa.0.0 = select i1 %i.a, i64 %i.c, i64 %.sroa.0.0.copyload1
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5arrow15BasicDecimal12815FitsInPrecisionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload1.i = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 3 uses
  %i.a = icmp slt i64 %.sroa.6.0.copyload.i, 0    ; 2 uses
  %i.b = icmp ne i64 %.sroa.0.0.copyload1.i, 0
  %i.c = sub i64 0, %.sroa.0.0.copyload1.i
  %i.d = sext i1 %i.b to i64
  %.sroa.6.0.i.i.i = sub i64 %i.d, %.sroa.6.0.copyload.i
  %.sroa.6.0.i = select i1 %i.a, i64 %.sroa.6.0.i.i.i, i64 %.sroa.6.0.copyload.i ; 2 uses
  %.sroa.0.0.i = select i1 %i.a, i64 %i.c, i64 %.sroa.0.0.copyload1.i
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9    ; 2 uses
  %i.i = icmp slt i64 %.sroa.6.0.i, %i.h
  br i1 %i.i, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %.sroa.6.0.i, %i.h
  br i1 %i.j, label %bb.c, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.f, align 16, !tbaa !9
  %i.l = icmp ult i64 %.sroa.0.0.i, %i.k
  br label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.l, %bb.c ]
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128pLERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  %i.e = add i64 %i.d, %i.b
  %i.f = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.e, %i.j
  store i64 %i.h, ptr %0, align 8
  store i64 %i.k, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128mIERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  %i.e = sub i64 %i.b, %i.d
  %i.f = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.g, %i.f
  %.neg = sext i1 %i.i to i64
  %i.j = add i64 %i.e, %.neg
  store i64 %i.h, ptr %0, align 8
  store i64 %i.j, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128dVERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, ptr noundef nonnull %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 3) i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [33 x i32], align 16              ; 15 uses
  %i.b = alloca [33 x i32], align 16              ; 38 uses
  %i.c = alloca [32 x i32], align 16              ; 26 uses
  %i.d = alloca [32 x i32], align 16              ; 9 uses
  %.val = load i64, ptr %1, align 8               ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.e, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.b, align 16, !tbaa !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 5 uses
  %.val100.i = load i64, ptr %0, align 8          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val101.i = load i64, ptr %i.g, align 8        ; 5 uses
  %i.h = icmp slt i64 %.val101.i, 0               ; 4 uses
  %i.i = icmp ne i64 %.val100.i, 0
  %i.j = sub i64 0, %.val100.i
  %i.k = sext i1 %i.i to i64
  %.sroa.6.0.i.i.i.i.i = sub i64 %i.k, %.val101.i
  %.sroa.6.0.i.i.i = select i1 %i.h, i64 %.sroa.6.0.i.i.i.i.i, i64 %.val101.i ; 5 uses
  %.sroa.0.0.i.i.i = select i1 %i.h, i64 %i.j, i64 %.val100.i ; 9 uses
  %.not.i.i.not = icmp eq i64 %.sroa.6.0.i.i.i, 0 ; 2 uses
  %.0.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.0.i.sroa.gep4.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %.0.i.sroa.gep5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.0.i.sroa.gep15.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.0.i.sroa.gep16.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.0.i.sroa.gep17.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.0.i.sroa.gep18.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.0.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.0.i.i.sroa.gep41 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.i.i.sroa.gep42 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.i.i.sroa.gep43 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.0.i.i.sroa.gep46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.0.i.i.sroa.gep47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.i.i.sroa.gep48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.i.i.sroa.gep49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br i1 %.not.i.i.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %.sroa.6.0.i.i.i, 4294967295
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i64 %.sroa.6.0.i.i.i, 32
  %i.n = trunc nuw i64 %i.m to i32
  store i32 %i.n, ptr %i.f, align 4, !tbaa !6
  %i.o = trunc i64 %.sroa.6.0.i.i.i to i32
  store i32 %i.o, ptr %.0.i.sroa.gep5.i, align 8, !tbaa !6
  %i.p = lshr i64 %.sroa.0.0.i.i.i, 32
  %i.q = trunc nuw i64 %i.p to i32
  store i32 %i.q, ptr %.0.i.sroa.gep4.i, align 4, !tbaa !6
  %i.r = trunc i64 %.sroa.0.0.i.i.i to i32        ; 2 uses
  store i32 %i.r, ptr %.0.i.sroa.gep.i, align 16, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = trunc nuw i64 %.sroa.6.0.i.i.i to i32
  store i32 %i.s, ptr %i.f, align 4, !tbaa !6
  %i.t = lshr i64 %.sroa.0.0.i.i.i, 32
  %i.u = trunc nuw i64 %i.t to i32
  store i32 %i.u, ptr %.0.i.sroa.gep5.i, align 8, !tbaa !6
  %i.v = trunc i64 %.sroa.0.0.i.i.i to i32        ; 2 uses
  store i32 %i.v, ptr %.0.i.sroa.gep4.i, align 4, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

bb.e:                                             ; preds = %bb.a
  %i.w = icmp ugt i64 %.sroa.0.0.i.i.i, 4294967295
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = lshr i64 %.sroa.0.0.i.i.i, 32
  %i.y = trunc nuw i64 %i.x to i32
  store i32 %i.y, ptr %i.f, align 4, !tbaa !6
  %i.z = trunc i64 %.sroa.0.0.i.i.i to i32        ; 2 uses
  store i32 %i.z, ptr %.0.i.sroa.gep5.i, align 8, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.aa, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = trunc nuw i64 %.sroa.0.0.i.i.i to i32   ; 2 uses
  store i32 %i.ab, ptr %i.f, align 4, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %i.ac = phi i32 [ %i.r, %bb.c ], [ %i.v, %bb.d ], [ %i.z, %bb.f ], [ %i.ab, %bb.h ], [ 0, %bb.g ]
  %.0.i.sroa.phi.i = phi ptr [ %.0.i.sroa.gep.i, %bb.c ], [ %.0.i.sroa.gep4.i, %bb.d ], [ %.0.i.sroa.gep5.i, %bb.f ], [ %i.f, %bb.h ], [ %i.b, %bb.g ] ; 5 uses
  %.0.i.sroa.phi14.i = phi ptr [ %.0.i.sroa.gep15.i, %bb.c ], [ %.0.i.sroa.gep16.i, %bb.d ], [ %.0.i.sroa.gep17.i, %bb.f ], [ %.0.i.sroa.gep18.i, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ad = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.ae = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ true, %bb.g ] ; 3 uses
  %.not.i.i.i = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ true, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.af = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.h ], [ false, %bb.g ] ; 2 uses
  %min.iters.check24 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.h ], [ true, %bb.g ]
  %.0.i.i.sroa.phi = phi ptr [ %.0.i.i.sroa.gep, %bb.c ], [ %.0.i.i.sroa.gep41, %bb.d ], [ %.0.i.i.sroa.gep42, %bb.f ], [ %.0.i.i.sroa.gep43, %bb.h ], [ %i.b, %bb.g ] ; 2 uses
  %.0.i.i.sroa.phi45 = phi ptr [ %.0.i.i.sroa.gep46, %bb.c ], [ %.0.i.i.sroa.gep47, %bb.d ], [ %.0.i.i.sroa.gep48, %bb.f ], [ %.0.i.i.sroa.gep49, %bb.h ], [ %i.b, %bb.g ]
  %exitcond.not.i.i.2 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.f ], [ false, %bb.h ], [ false, %bb.g ]
  %exitcond.not.i.i.3 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ]
  %i.ag = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ false, %bb.h ], [ false, %bb.g ]
  %.0.i.i = phi i64 [ 4, %bb.c ], [ 3, %bb.d ], [ 2, %bb.f ], [ 1, %bb.h ], [ 0, %bb.g ] ; 10 uses
  %i.ah = add nuw nsw i64 %.0.i.i, 1              ; 3 uses
  %i.ai = icmp slt i64 %.val4, 0                  ; 2 uses
  %i.aj = icmp ne i64 %.val, 0
  %i.ak = sub i64 0, %.val
  %i.al = sext i1 %i.aj to i64
  %.sroa.6.0.i.i.i.i102.i = sub i64 %i.al, %.val4
  %.sroa.6.0.i.i103.i = select i1 %i.ai, i64 %.sroa.6.0.i.i.i.i102.i, i64 %.val4 ; 5 uses
  %.sroa.0.0.i.i104.i = select i1 %i.ai, i64 %i.ak, i64 %.val ; 9 uses
  %.not.i106.i.not.not = icmp eq i64 %.sroa.6.0.i.i103.i, 0 ; 3 uses
  br i1 %.not.i106.i.not.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i
  %i.am = icmp ugt i64 %.sroa.6.0.i.i103.i, 4294967295
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = lshr i64 %.sroa.6.0.i.i103.i, 32
  %i.ap = trunc nuw i64 %i.ao to i32              ; 2 uses
  store i32 %i.ap, ptr %i.c, align 16, !tbaa !6
  %i.aq = trunc i64 %.sroa.6.0.i.i103.i to i32
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !6
  %i.ar = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.as = trunc nuw i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.as, ptr %i.at, align 8, !tbaa !6
  %i.au = trunc i64 %.sroa.0.0.i.i104.i to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.au, ptr %i.av, align 4, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.k:                                             ; preds = %bb.i
  %i.aw = trunc nuw i64 %.sroa.6.0.i.i103.i to i32 ; 2 uses
  store i32 %i.aw, ptr %i.c, align 16, !tbaa !6
  %i.ax = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.ay = trunc nuw i64 %i.ax to i32
  store i32 %i.ay, ptr %i.an, align 4, !tbaa !6
  %i.az = trunc i64 %.sroa.0.0.i.i104.i to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.l:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i
  %i.bb = icmp ugt i64 %.sroa.0.0.i.i104.i, 4294967295
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.bd = trunc nuw i64 %i.bc to i32              ; 2 uses
  store i32 %i.bd, ptr %i.c, align 16, !tbaa !6
  %i.be = trunc i64 %.sroa.0.0.i.i104.i to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.n:                                             ; preds = %bb.l
  %i.bg = icmp eq i64 %.sroa.0.0.i.i104.i, 0
  br i1 %i.bg, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = trunc nuw i64 %.sroa.0.0.i.i104.i to i32 ; 2 uses
  store i32 %i.bh, ptr %i.c, align 16, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j
  %i.bi = phi i32 [ %i.ap, %bb.j ], [ %i.aw, %bb.k ], [ %i.bd, %bb.m ], [ %i.bh, %bb.o ], [ undef, %bb.n ] ; 7 uses
  %i.bj = phi i1 [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.m ], [ true, %bb.o ], [ false, %bb.n ]
  %i.bk = phi i1 [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.m ], [ false, %bb.o ], [ false, %bb.n ] ; 2 uses
  %i.bl = phi i1 [ true, %bb.j ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.n ] ; 2 uses
  %.0.i107.i = phi i64 [ 4, %bb.j ], [ 3, %bb.k ], [ 2, %bb.m ], [ 1, %bb.o ], [ 0, %bb.n ] ; 10 uses
  %.not.not.i = icmp samesign ult i64 %.0.i.i, %.0.i107.i
  br i1 %.not.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.q:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i
  switch i64 %.0.i107.i, label %bb.ac [
    i64 0, label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bm = zext i32 %i.bi to i64                   ; 8 uses
  %i.bn = load i32, ptr %i.b, align 16, !tbaa !6  ; 2 uses
  %i.bo = udiv i32 %i.bn, %i.bi
  store i32 %i.bo, ptr %i.a, align 16, !tbaa !6
  %i.bp = urem i32 %i.bn, %i.bi
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  br i1 %i.ae, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.r
  %.lcssa40 = phi i64 [ %i.bq, %bb.r ], [ %i.db, %bb.u ], [ %i.dk, %bb.v ], [ %i.dt, %bb.w ], [ %i.ec, %bb.x ]
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.s
  %i.br = load i32, ptr %i.a, align 16, !tbaa !6
  %.not.i.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i.i, label %.lr.ph37.i.i.thread.i.i, label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

.lr.ph37.i.i.thread.i.i:                          ; preds = %.lr.ph.preheader.i.i.i.i
  %i.bs = getelementptr [4 x i8], ptr %i.a, i64 %i.ah ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !6
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %i.bs, i64 -8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !6
  %i.by = zext i32 %i.bx to i64
  %i.bz = shl nuw i64 %i.by, 32
  %i.ca = or disjoint i64 %i.bz, %i.bv
  %.phi.trans.insert.i32.i.i = getelementptr i8, ptr %i.bs, i64 -12 ; 2 uses
  %.pre.i33.i.i = load i32, ptr %.phi.trans.insert.i32.i.i, align 4, !tbaa !6
  %i.cb = zext i32 %.pre.i33.i.i to i64
  br label %.preheader.i.thread28.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.s
  %i.cc = load i32, ptr %.0.i.sroa.phi14.i, align 4, !tbaa !6
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  br i1 %i.ae, label %bb.y, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ce = getelementptr i8, ptr %.0.i.sroa.phi14.i, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !6
  %i.cg = zext i32 %i.cf to i64
  %i.ch = shl nuw i64 %i.cg, 32
  %i.ci = or disjoint i64 %i.ch, %i.cd            ; 3 uses
  br i1 %.not.i.i.i, label %bb.y, label %.lr.ph37.i.i.i.i

.preheader.i.thread28.i.i.i:                      ; preds = %.lr.ph37.i.i.i.i, %.lr.ph37.i.i.thread.i.i
  %i.cj = phi i64 [ %i.cb, %.lr.ph37.i.i.thread.i.i ], [ %i.cr, %.lr.ph37.i.i.i.i ]
  %.phi.trans.insert.i34.i.i = phi ptr [ %.phi.trans.insert.i32.i.i, %.lr.ph37.i.i.thread.i.i ], [ %.phi.trans.insert.i.i.i, %.lr.ph37.i.i.i.i ]
  %i.ck = phi i64 [ %i.ca, %.lr.ph37.i.i.thread.i.i ], [ %i.ci, %.lr.ph37.i.i.i.i ]
  %i.cl = getelementptr i8, ptr %.phi.trans.insert.i34.i.i, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !6
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw i64 %i.cn, 32
  %i.cp = or disjoint i64 %i.co, %i.cj
  br label %bb.y

.lr.ph37.i.i.i.i:                                 ; preds = %bb.t
  %i.cq = add nsw i64 %.0.i.i, -2                 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cq ; 2 uses
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !6
  %i.cr = zext i32 %.pre.i.i.i to i64             ; 2 uses
  %i.cs = icmp eq i64 %i.cq, 0
  br i1 %i.cs, label %bb.y, label %.preheader.i.thread28.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.ct = shl nuw i64 %i.bq, 32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !6
  %i.cw = zext i32 %i.cv to i64
  %i.cx = or disjoint i64 %i.ct, %i.cw            ; 2 uses
  %i.cy = udiv i64 %i.cx, %i.bm
  %i.cz = trunc i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !6
  %i.db = urem i64 %i.cx, %i.bm                   ; 2 uses
  br i1 %.not.i.i.i, label %bb.s, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = shl nuw i64 %i.db, 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !6
  %i.df = zext i32 %i.de to i64
  %i.dg = or disjoint i64 %i.dc, %i.df            ; 2 uses
  %i.dh = udiv i64 %i.dg, %i.bm
  %i.di = trunc i64 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !6
  %i.dk = urem i64 %i.dg, %i.bm                   ; 2 uses
  br i1 %exitcond.not.i.i.2, label %bb.s, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = shl nuw i64 %i.dk, 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !6
  %i.do = zext i32 %i.dn to i64
  %i.dp = or disjoint i64 %i.dl, %i.do            ; 2 uses
  %i.dq = udiv i64 %i.dp, %i.bm
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !6
  %i.dt = urem i64 %i.dp, %i.bm                   ; 2 uses
  br i1 %exitcond.not.i.i.3, label %bb.s, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = shl nuw i64 %i.dt, 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dw = load i32, ptr %i.dv, align 16, !tbaa !6
  %i.dx = zext i32 %i.dw to i64
  %i.dy = or disjoint i64 %i.du, %i.dx            ; 2 uses
  %i.dz = udiv i64 %i.dy, %i.bm
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.ea, ptr %i.eb, align 16, !tbaa !6
  %i.ec = urem i64 %i.dy, %i.bm
  br label %bb.s

bb.y:                                             ; preds = %.lr.ph37.i.i.i.i, %.preheader.i.thread28.i.i.i, %bb.t, %._crit_edge.i.i.i.i
  %.sroa.0.i.0.i.i = phi i64 [ %i.ck, %.preheader.i.thread28.i.i.i ], [ %i.ci, %bb.t ], [ %i.ci, %.lr.ph37.i.i.i.i ], [ %i.cd, %._crit_edge.i.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.cp, %.preheader.i.thread28.i.i.i ], [ 0, %bb.t ], [ %i.cr, %.lr.ph37.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i ]
  store i64 %.sroa.0.i.0.i.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  store i64 %.lcssa40, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.ed = xor i64 %.val101.i, %.val4
  %i.ee = icmp slt i64 %i.ed, 0
  br i1 %i.ee, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ef = load <2 x i64>, ptr %2, align 8, !tbaa !9
  %i.eg = load i64, ptr %2, align 8, !tbaa !9
  %i.eh = icmp ne i64 %i.eg, 0
  %i.ei = sext i1 %i.eh to i64
  %i.ej = insertelement <2 x i64> <i64 0, i64 poison>, i64 %i.ei, i64 1
  %i.ek = sub <2 x i64> %i.ej, %i.ef
  store <2 x i64> %i.ek, ptr %2, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %i.h, label %bb.ab, label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.el = load <2 x i64>, ptr %3, align 8, !tbaa !9
  %i.em = load i64, ptr %3, align 8, !tbaa !9
  %i.en = icmp ne i64 %i.em, 0
  %i.eo = sext i1 %i.en to i64
  %i.ep = insertelement <2 x i64> <i64 0, i64 poison>, i64 %i.eo, i64 1
  %i.eq = sub <2 x i64> %i.ep, %i.el
  store <2 x i64> %i.eq, ptr %3, align 8
  br label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i: ; preds = %bb.ab, %bb.aa, %.lr.ph.preheader.i.i.i.i
  %.023.i.i = phi i32 [ 0, %bb.ab ], [ 0, %bb.aa ], [ 2, %.lr.ph.preheader.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.ac:                                            ; preds = %bb.q
  %i.er = sub nuw nsw i64 %i.ah, %.0.i107.i       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.es = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bi, i1 false) ; 14 uses
  %.not.i = icmp eq i32 %i.es, 0                  ; 2 uses
  %.pre11 = add nsw i64 %.0.i107.i, -1            ; 9 uses
  br i1 %.not.i, label %.lr.ph34.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac
  %i.et = sub nuw nsw i32 32, %i.es               ; 4 uses
  %min.iters.check = icmp ult i64 %.pre11, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %.pre11, -8                    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert20 = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat21 = shufflevector <4 x i32> %broadcast.splatinsert20, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.bi, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load22, %vector.body ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 20
  %wide.load = load <4 x i32>, ptr %i.ew, align 4, !tbaa !6 ; 3 uses
  %wide.load22 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !6 ; 4 uses
  %i.ey = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ez = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load22, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fa = shl <4 x i32> %i.ey, %broadcast.splat21
  %i.fb = shl <4 x i32> %i.ez, %broadcast.splat21
  %i.fc = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.fd = lshr <4 x i32> %wide.load22, %broadcast.splat
  %i.fe = or disjoint <4 x i32> %i.fc, %i.fa
  %i.ff = or disjoint <4 x i32> %i.fd, %i.fb
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <4 x i32> %i.fe, ptr %i.eu, align 16, !tbaa !6
  store <4 x i32> %i.ff, ptr %i.fg, align 16, !tbaa !6
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load22, i64 3
  %cmp.n = icmp eq i64 %.pre11, %n.vec
  br i1 %cmp.n, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.ph39 = phi i32 [ %i.bi, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ]
  %.019.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i:    ; preds = %scalar.ph, %middle.block
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre11 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !6
  %i.fk = shl i32 %i.fj, %i.es
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !6
  br i1 %i.af, label %.lr.ph.i113.i.preheader, label %._crit_edge.i112.i

.lr.ph.i113.i.preheader:                          ; preds = %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i
  br i1 %min.iters.check24, label %.lr.ph.i113.i.preheader38, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph.i113.i.preheader
  %n.vec26 = and i64 %.0.i.i, 4                   ; 2 uses
  %broadcast.splatinsert29 = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat30 = shufflevector <4 x i32> %broadcast.splatinsert29, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert27 = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat28 = shufflevector <4 x i32> %broadcast.splatinsert27, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load32 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !6 ; 3 uses
  %i.fm = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %wide.load32, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fn = shl <4 x i32> %i.fm, %broadcast.splat28
  %i.fo = lshr <4 x i32> %wide.load32, %broadcast.splat30
  %i.fp = or disjoint <4 x i32> %i.fo, %i.fn
  store <4 x i32> %i.fp, ptr %i.b, align 16, !tbaa !6
  %vector.recur.extract34 = extractelement <4 x i32> %wide.load32, i64 3
  %cmp.n35 = icmp eq i64 %.0.i.i, %n.vec26
  br i1 %cmp.n35, label %._crit_edge.i112.loopexit.i, label %.lr.ph.i113.i.preheader38

.lr.ph.i113.i.preheader38:                        ; preds = %.lr.ph.i113.i.preheader, %vector.ph25
  %.ph = phi i32 [ 0, %.lr.ph.i113.i.preheader ], [ %vector.recur.extract34, %vector.ph25 ]
  %.019.i115.i.ph = phi i64 [ 0, %.lr.ph.i113.i.preheader ], [ %n.vec26, %vector.ph25 ]
  br label %.lr.ph.i113.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.fq = phi i32 [ %i.fv, %scalar.ph ], [ %.ph39, %scalar.ph.preheader ]
  %.019.i.i = phi i64 [ %i.ft, %scalar.ph ], [ %.019.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.019.i.i
  %i.fs = shl i32 %i.fq, %i.es
  %i.ft = add nuw nsw i64 %.019.i.i, 1            ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !6  ; 2 uses
  %i.fw = lshr i32 %i.fv, %i.et
  %i.fx = or disjoint i32 %i.fw, %i.fs
  store i32 %i.fx, ptr %i.fr, align 4, !tbaa !6
  %exitcond.not.i109.i = icmp eq i64 %i.ft, %.pre11
  br i1 %exitcond.not.i109.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph, !llvm.loop !22

._crit_edge.i112.loopexit.i:                      ; preds = %.lr.ph.i113.i, %vector.ph25
  %.pre.i = load i32, ptr %.0.i.sroa.phi.i, align 4, !tbaa !6
  br label %._crit_edge.i112.i

._crit_edge.i112.i:                               ; preds = %._crit_edge.i112.loopexit.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i
  %i.fy = phi i32 [ %.pre.i, %._crit_edge.i112.loopexit.i ], [ %i.ac, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i ]
  %i.fz = shl i32 %i.fy, %i.es
  store i32 %i.fz, ptr %.0.i.sroa.phi.i, align 4, !tbaa !6
  %.pre = load i32, ptr %i.c, align 16, !tbaa !6
  br label %.lr.ph34.i

.lr.ph.i113.i:                                    ; preds = %.lr.ph.i113.i.preheader38, %.lr.ph.i113.i
  %i.ga = phi i32 [ %i.gf, %.lr.ph.i113.i ], [ %.ph, %.lr.ph.i113.i.preheader38 ]
  %.019.i115.i = phi i64 [ %i.gd, %.lr.ph.i113.i ], [ %.019.i115.i.ph, %.lr.ph.i113.i.preheader38 ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.019.i115.i
  %i.gc = shl i32 %i.ga, %i.es
  %i.gd = add nuw nsw i64 %.019.i115.i, 1         ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !6  ; 2 uses
  %i.gg = lshr i32 %i.gf, %i.et
  %i.gh = or disjoint i32 %i.gg, %i.gc
  store i32 %i.gh, ptr %i.gb, align 4, !tbaa !6
  %exitcond.not.i116.i = icmp eq i64 %i.gd, %.0.i.i
  br i1 %exitcond.not.i116.i, label %._crit_edge.i112.loopexit.i, label %.lr.ph.i113.i, !llvm.loop !23

.lr.ph34.i:                                       ; preds = %bb.ac, %._crit_edge.i112.i
  %i.gi = phi i32 [ %.pre, %._crit_edge.i112.i ], [ %i.bi, %bb.ac ] ; 5 uses
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !6
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre11
  %i.go = add nsw i64 %.0.i107.i, -2              ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.go
  %i.gq = add nsw i64 %.0.i107.i, -3              ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gq
  %i.gs = add nsw i64 %.0.i107.i, -4              ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gs
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre11
  %i.gv = add nsw i64 %.0.i107.i, -2              ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gv
  %i.gx = add nsw i64 %.0.i107.i, -3              ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gx
  %i.gz = add nsw i64 %.0.i107.i, -4              ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gz
  br label %bb.ah

._crit_edge35.i:                                  ; preds = %._crit_edge.thread.i
  br i1 %.not.i, label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i, label %.preheader.i119.i

.preheader.i119.i:                                ; preds = %._crit_edge35.i
  br i1 %i.af, label %.lr.ph.i121.i, label %._crit_edge.i120.i

.lr.ph.i121.i:                                    ; preds = %.preheader.i119.i
  %i.hb = sub nuw nsw i32 32, %i.es               ; 4 uses
  %i.hc = load i32, ptr %.0.i.i.sroa.phi, align 4, !tbaa !6
  %i.hd = lshr i32 %i.hc, %i.es
  %i.he = getelementptr [4 x i8], ptr %i.b, i64 %i.ah
  %i.hf = getelementptr i8, ptr %i.he, i64 -8
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !6
  %i.hh = shl i32 %i.hg, %i.hb
  %i.hi = or disjoint i32 %i.hh, %i.hd
  store i32 %i.hi, ptr %.0.i.i.sroa.phi, align 4, !tbaa !6
  br i1 %i.ag, label %bb.ad, label %._crit_edge.i120.i

._crit_edge.i120.i:                               ; preds = %.lr.ph.i121.i, %bb.ad, %bb.ae, %bb.af, %.preheader.i119.i
  %i.hj = load i32, ptr %i.b, align 16, !tbaa !6
  %i.hk = lshr i32 %i.hj, %i.es
  store i32 %i.hk, ptr %i.b, align 16, !tbaa !6
  br label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i

bb.ad:                                            ; preds = %.lr.ph.i121.i
  %.0.i122.i.1 = add nsw i64 %.0.i.i, -1          ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.i122.i.1 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !6
  %i.hn = lshr i32 %i.hm, %i.es
  %i.ho = getelementptr i8, ptr %.0.i.i.sroa.phi45, i64 -8
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !6
  %i.hq = shl i32 %i.hp, %i.hb
  %i.hr = or disjoint i32 %i.hq, %i.hn
  store i32 %i.hr, ptr %i.hl, align 4, !tbaa !6
  br i1 %.not.i.i.not, label %._crit_edge.i120.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.0.i122.i.2 = add nsw i64 %.0.i.i, -2          ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.i122.i.2 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !6
  %i.hu = lshr i32 %i.ht, %i.es
  %i.hv = getelementptr [4 x i8], ptr %i.b, i64 %.0.i122.i.1
  %i.hw = getelementptr i8, ptr %i.hv, i64 -8
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !6
  %i.hy = shl i32 %i.hx, %i.hb
  %i.hz = or disjoint i32 %i.hy, %i.hu
  store i32 %i.hz, ptr %i.hs, align 4, !tbaa !6
  br i1 %i.ad, label %bb.af, label %._crit_edge.i120.i

bb.af:                                            ; preds = %bb.ae
  %i.ia = getelementptr [4 x i8], ptr %i.b, i64 %.0.i.i
  %i.ib = getelementptr i8, ptr %i.ia, i64 -12    ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !6
  %i.id = lshr i32 %i.ic, %i.es
end_hunk_1
begin_hunk_2_@_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_:bb.a
  %i.lb = icmp ult i32 %i.jp, %i.kz
  br i1 %i.lb, label %.lr.ph30.i, label %._crit_edge.thread.i

bb.an:                                            ; preds = %.lr.ph.i
  %i.lc = load i32, ptr %i.gp, align 4, !tbaa !6
  %i.ld = zext i32 %i.lc to i64
  %i.le = mul nuw i64 %i.ld, %i.kn
  %i.lf = add nuw i64 %i.le, %spec.select.i       ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.go
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !6  ; 2 uses
  %i.lj = trunc i64 %i.lf to i32                  ; 2 uses
  %i.lk = sub i32 %i.li, %i.lj
  store i32 %i.lk, ptr %i.lh, align 4, !tbaa !6
  %i.ll = lshr i64 %i.lf, 32
  %i.lm = icmp ult i32 %i.li, %i.lj
  %i.ln = zext i1 %i.lm to i64
  %spec.select.i.1 = add nuw nsw i64 %i.ll, %i.ln ; 2 uses
  br i1 %.not.i106.i.not.not, label %._crit_edge.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lo = load i32, ptr %i.gr, align 4, !tbaa !6
  %i.lp = zext i32 %i.lo to i64
  %i.lq = mul nuw i64 %i.lp, %i.kn
  %i.lr = add nuw i64 %i.lq, %spec.select.i.1     ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.gq
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !6  ; 2 uses
  %i.lv = trunc i64 %i.lr to i32                  ; 2 uses
  %i.lw = sub i32 %i.lu, %i.lv
  store i32 %i.lw, ptr %i.lt, align 4, !tbaa !6
  %i.lx = lshr i64 %i.lr, 32
  %i.ly = icmp ult i32 %i.lu, %i.lv
  %i.lz = zext i1 %i.ly to i64
  %spec.select.i.2 = add nuw nsw i64 %i.lx, %i.lz ; 2 uses
  br i1 %i.bl, label %bb.ap, label %._crit_edge.i

bb.ap:                                            ; preds = %bb.ao
  %i.ma = load i32, ptr %i.gt, align 4, !tbaa !6
  %i.mb = zext i32 %i.ma to i64
  %i.mc = mul nuw i64 %i.mb, %i.kn
  %i.md = add nuw i64 %i.mc, %spec.select.i.2     ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.gs
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 4 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !6  ; 2 uses
  %i.mh = trunc i64 %i.md to i32                  ; 2 uses
  %i.mi = sub i32 %i.mg, %i.mh
  store i32 %i.mi, ptr %i.mf, align 4, !tbaa !6
  %i.mj = lshr i64 %i.md, 32
  %i.mk = icmp ult i32 %i.mg, %i.mh
  %i.ml = zext i1 %i.mk to i64
  %spec.select.i.3 = add nuw nsw i64 %i.mj, %i.ml
  br label %._crit_edge.i

._crit_edge31.i:                                  ; preds = %.lr.ph30.i.3, %.lr.ph30.i.2, %.lr.ph30.i.1, %.lr.ph30.i
  %.lcssa = phi i64 [ %i.mt, %.lr.ph30.i ], [ %i.nd, %.lr.ph30.i.1 ], [ %i.nn, %.lr.ph30.i.2 ], [ %i.nx, %.lr.ph30.i.3 ]
  %i.mm = add i32 %.2.i, -1
  %i.mn = trunc nuw nsw i64 %.lcssa to i32
  %i.mo = add i32 %i.la, %i.mn
  store i32 %i.mo, ptr %i.jo, align 4, !tbaa !6
  br label %._crit_edge.thread.i

.lr.ph30.i:                                       ; preds = %._crit_edge.i
  %i.mp = load i32, ptr %i.gu, align 4, !tbaa !6  ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %.pre11
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !6
  %add.narrowed = add i32 %i.mp, %i.ms            ; 2 uses
  %add.narrowed.overflow = icmp ult i32 %add.narrowed, %i.mp
  store i32 %add.narrowed, ptr %i.mr, align 4, !tbaa !6
  %i.mt = zext i1 %add.narrowed.overflow to i64   ; 2 uses
  br i1 %i.bk, label %.lr.ph30.i.1, label %._crit_edge31.i

.lr.ph30.i.1:                                     ; preds = %.lr.ph30.i
  %i.mu = load i32, ptr %i.gw, align 4, !tbaa !6
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.gv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 4 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !6
  %i.mz = zext i32 %i.my to i64
  %i.na = add nuw nsw i64 %i.mt, %i.mv
  %i.nb = add nuw nsw i64 %i.na, %i.mz            ; 2 uses
  %i.nc = trunc i64 %i.nb to i32
  store i32 %i.nc, ptr %i.mx, align 4, !tbaa !6
  %i.nd = lshr i64 %i.nb, 32                      ; 2 uses
  br i1 %.not.i106.i.not.not, label %._crit_edge31.i, label %.lr.ph30.i.2

.lr.ph30.i.2:                                     ; preds = %.lr.ph30.i.1
  %i.ne = load i32, ptr %i.gy, align 4, !tbaa !6
  %i.nf = zext i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.gx
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 4 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !6
  %i.nj = zext i32 %i.ni to i64
  %i.nk = add nuw nsw i64 %i.nd, %i.nf
  %i.nl = add nuw nsw i64 %i.nk, %i.nj            ; 2 uses
  %i.nm = trunc i64 %i.nl to i32
  store i32 %i.nm, ptr %i.nh, align 4, !tbaa !6
  %i.nn = lshr i64 %i.nl, 32                      ; 2 uses
  br i1 %i.bl, label %.lr.ph30.i.3, label %._crit_edge31.i

.lr.ph30.i.3:                                     ; preds = %.lr.ph30.i.2
  %i.no = load i32, ptr %i.ha, align 4, !tbaa !6
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.gz
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 4 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !6
  %i.nt = zext i32 %i.ns to i64
  %i.nu = add nuw nsw i64 %i.nn, %i.np
  %i.nv = add nuw nsw i64 %i.nu, %i.nt            ; 2 uses
  %i.nw = trunc i64 %i.nv to i32
  store i32 %i.nw, ptr %i.nr, align 4, !tbaa !6
  %i.nx = lshr i64 %i.nv, 32
  br label %._crit_edge31.i

._crit_edge.thread.i:                             ; preds = %._crit_edge31.i, %._crit_edge.i, %bb.am
  %.3.i = phi i32 [ %i.mm, %._crit_edge31.i ], [ %.2.i, %._crit_edge.i ], [ %.2.i, %bb.am ]
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.09033.i
  store i32 %.3.i, ptr %i.ny, align 4, !tbaa !6
  %exitcond.not.i = icmp eq i64 %i.jq, %i.er
  br i1 %exitcond.not.i, label %._crit_edge35.i, label %bb.ah, !llvm.loop !25

bb.aq:                                            ; preds = %.lr.ph37.i.i.i, %.preheader.i.thread28.i.i, %bb.ag, %.lr.ph37.preheader.i.i.i
  %.sroa.0.i.0.i = phi i64 [ %i.ix, %.lr.ph37.preheader.i.i.i ], [ %i.jf, %.preheader.i.thread28.i.i ], [ %i.jd, %bb.ag ], [ %i.jd, %.lr.ph37.i.i.i ]
  %.sink.i.i = phi i64 [ 0, %.lr.ph37.preheader.i.i.i ], [ %i.jk, %.preheader.i.thread28.i.i ], [ 0, %bb.ag ], [ %i.jm, %.lr.ph37.i.i.i ]
  store i64 %.sroa.0.i.0.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i125.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink.i.i, ptr %.sroa.4.0..sroa_idx.i125.i, align 8
  br i1 %i.ad, label %.lr.ph.preheader.i.i143.i, label %._crit_edge.i.i129.i

.lr.ph.preheader.i.i143.i:                        ; preds = %bb.aq
  %i.nz = getelementptr i8, ptr %.0.i.sroa.phi.i, i64 -16
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !6
  %.not.i.i146.i = icmp eq i32 %i.oa, 0
  br i1 %.not.i.i146.i, label %._crit_edge.i.i129.i, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

._crit_edge.i.i129.i:                             ; preds = %.lr.ph.preheader.i.i143.i, %bb.aq
  %i.ob = load i32, ptr %.0.i.sroa.phi.i, align 4, !tbaa !6
  %i.oc = zext i32 %i.ob to i64                   ; 2 uses
  br i1 %i.ae, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i.i129.i
  %i.od = getelementptr i8, ptr %.0.i.sroa.phi.i, i64 -4
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !6
  %i.of = zext i32 %i.oe to i64
  %i.og = shl nuw i64 %i.of, 32
  %i.oh = or disjoint i64 %i.og, %i.oc            ; 3 uses
  br i1 %.not.i.i.i, label %bb.as, label %.lr.ph37.i.i132.i

.preheader.i.thread28.i135.i:                     ; preds = %.lr.ph37.i.i132.i
  %i.oi = getelementptr i8, ptr %.phi.trans.insert.i133.i, i64 -4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !6
  %i.ok = zext i32 %i.oj to i64
  %i.ol = shl nuw i64 %i.ok, 32
  %i.om = or disjoint i64 %i.ol, %i.oo
  br label %bb.as

.lr.ph37.i.i132.i:                                ; preds = %bb.ar
  %i.on = add nsw i64 %.0.i.i, -2                 ; 2 uses
  %.phi.trans.insert.i133.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.on ; 2 uses
  %.pre.i134.i = load i32, ptr %.phi.trans.insert.i133.i, align 4, !tbaa !6
  %i.oo = zext i32 %.pre.i134.i to i64            ; 2 uses
  %i.op = icmp eq i64 %i.on, 0
  br i1 %i.op, label %bb.as, label %.preheader.i.thread28.i135.i

bb.as:                                            ; preds = %.lr.ph37.i.i132.i, %.preheader.i.thread28.i135.i, %bb.ar, %._crit_edge.i.i129.i
  %.sroa.0.i128.0.i = phi i64 [ %i.oh, %.preheader.i.thread28.i135.i ], [ %i.oh, %bb.ar ], [ %i.oh, %.lr.ph37.i.i132.i ], [ %i.oc, %._crit_edge.i.i129.i ]
  %.sink.i137.i = phi i64 [ %i.om, %.preheader.i.thread28.i135.i ], [ 0, %bb.ar ], [ %i.oo, %.lr.ph37.i.i132.i ], [ 0, %._crit_edge.i.i129.i ]
  store i64 %.sroa.0.i128.0.i, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i139.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sink.i137.i, ptr %.sroa.4.0..sroa_idx.i139.i, align 8
  %i.oq = xor i64 %.val101.i, %.val4
  %i.or = icmp slt i64 %i.oq, 0
  br i1 %i.or, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.os = load <2 x i64>, ptr %2, align 8, !tbaa !9
  %i.ot = load i64, ptr %2, align 8, !tbaa !9
  %i.ou = icmp ne i64 %i.ot, 0
  %i.ov = sext i1 %i.ou to i64
  %i.ow = insertelement <2 x i64> <i64 0, i64 poison>, i64 %i.ov, i64 1
  %i.ox = sub <2 x i64> %i.ow, %i.os
  store <2 x i64> %i.ox, ptr %2, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  br i1 %i.h, label %bb.av, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

bb.av:                                            ; preds = %bb.au
  %i.oy = load <2 x i64>, ptr %3, align 8, !tbaa !9
  %i.oz = load i64, ptr %3, align 8, !tbaa !9
  %i.pa = icmp ne i64 %i.oz, 0
  %i.pb = sext i1 %i.pa to i64
  %i.pc = insertelement <2 x i64> <i64 0, i64 poison>, i64 %i.pb, i64 1
  %i.pd = sub <2 x i64> %i.pc, %i.oy
  store <2 x i64> %i.pd, ptr %3, align 8
  br label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i: ; preds = %bb.av, %bb.au, %.lr.ph.preheader.i.i143.i, %.lr.ph.preheader.i.i.i
  %.0.i = phi i32 [ 0, %bb.av ], [ 2, %.lr.ph.preheader.i.i143.i ], [ 0, %bb.au ], [ 2, %.lr.ph.preheader.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit: ; preds = %bb.p, %bb.q, %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i
  %.1.i = phi i32 [ 0, %bb.p ], [ %.0.i, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i ], [ %.023.i.i, %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i ], [ 1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128oRERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
  %i.b = load i64, ptr %0, align 8, !tbaa !9
  %i.c = or i64 %i.b, %i.a
  store i64 %i.c, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9
  %i.h = or i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128aNERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
  %i.b = load i64, ptr %0, align 8, !tbaa !9
  %i.c = and i64 %i.b, %i.a
  store i64 %i.c, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9
  %i.h = and i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128lSEj(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 64
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9
  %i.d = zext nneg i32 %1 to i64                  ; 2 uses
  %i.e = shl i64 %i.c, %i.d
  %i.f = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.g = sub nuw nsw i32 64, %1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 %i.f, %i.h
  %i.j = or i64 %i.i, %i.e
  %i.k = shl i64 %i.f, %i.d
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ult i32 %1, 128
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %0, align 8, !tbaa !9
  %i.n = add nsw i32 %1, -64
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.010 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %i.j, %bb.c ], [ %i.p, %bb.e ], [ 0, %bb.d ]
  store i64 %.010, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128rSEj(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 64
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load i64, ptr %0, align 8, !tbaa !9
  %i.c = zext nneg i32 %1 to i64                  ; 2 uses
  %i.d = lshr i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.g = sub nuw nsw i32 64, %1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl i64 %i.f, %i.h
  %i.j = or i64 %i.i, %i.d
  %i.k = ashr i64 %i.f, %i.c
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ult i32 %1, 128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9    ; 3 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %1, -64
  %i.p = zext nneg i32 %i.o to i64
  %i.q = ashr i64 %i.n, %i.p
  %i.r = ashr i64 %i.n, 63
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = ashr i64 %i.n, 63                        ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.011 = phi i64 [ %i.j, %bb.c ], [ %i.q, %bb.e ], [ %i.s, %bb.f ]
  %.0 = phi i64 [ %i.k, %bb.c ], [ %i.r, %bb.e ], [ %i.s, %bb.f ]
  store i64 %.011, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128mLERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 4 uses
  %i.e = xor i64 %i.d, %i.b
  %isneg = icmp sgt i64 %i.e, -1
  %.sroa.0.0.copyload1.i = load i64, ptr %0, align 8 ; 3 uses
  %i.f = icmp slt i64 %i.b, 0                     ; 2 uses
  %i.g = icmp ne i64 %.sroa.0.0.copyload1.i, 0
  %i.h = sub i64 0, %.sroa.0.0.copyload1.i
  %i.i = sext i1 %i.g to i64
  %.sroa.6.0.i.i.i = sub i64 %i.i, %i.b
  %.sroa.6.0.i = select i1 %i.f, i64 %.sroa.6.0.i.i.i, i64 %i.b
  %.sroa.0.0.i = select i1 %i.f, i64 %i.h, i64 %.sroa.0.0.copyload1.i
  %.sroa.0.0.copyload1.i9 = load i64, ptr %1, align 8 ; 3 uses
  %i.j = icmp slt i64 %i.d, 0                     ; 2 uses
  %i.k = icmp ne i64 %.sroa.0.0.copyload1.i9, 0
  %i.l = sub i64 0, %.sroa.0.0.copyload1.i9
  %i.m = sext i1 %i.k to i64
  %.sroa.6.0.i.i.i12 = sub i64 %i.m, %i.d
  %.sroa.6.0.i13 = select i1 %i.j, i64 %.sroa.6.0.i.i.i12, i64 %i.d
  %.sroa.0.0.i14 = select i1 %i.j, i64 %i.l, i64 %.sroa.0.0.copyload1.i9
  %i.n = sext i64 %.sroa.6.0.i to i128
  %i.o = shl nsw i128 %i.n, 64
  %i.p = zext i64 %.sroa.0.0.i to i128
  %i.q = or disjoint i128 %i.o, %i.p
  %i.r = sext i64 %.sroa.6.0.i13 to i128
  %i.s = shl nsw i128 %i.r, 64
  %i.t = zext i64 %.sroa.0.0.i14 to i128
  %i.u = or disjoint i128 %i.s, %i.t
  %i.v = mul i128 %i.u, %i.q                      ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = trunc nuw i128 %i.w to i64               ; 2 uses
  %i.y = trunc i128 %i.v to i64                   ; 3 uses
  store i64 %i.y, ptr %0, align 8
  store i64 %i.x, ptr %i.a, align 8
  br i1 %isneg, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = sub i64 0, %i.y
  %i.ab = sext i1 %i.z to i64
  %.sroa.6.0.i17 = sub i64 %i.ab, %i.x
  store i64 %i.aa, ptr %0, align 8
  store i64 %.sroa.6.0.i17, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowleERKNS_15BasicDecimal128ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i64 %i.b, %i.d
  br i1 %i.e, label %_ZN5arrowgtERKNS_15BasicDecimal128ES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, %i.d
  br i1 %i.f, label %bb.c, label %_ZN5arrowgtERKNS_15BasicDecimal128ES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  %i.h = load i64, ptr %0, align 8, !tbaa !9
  %i.i = icmp uge i64 %i.g, %i.h
  br label %_ZN5arrowgtERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowgtERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i64 %i.b, %i.d
  br i1 %i.e, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, %i.d
  br i1 %i.f, label %bb.c, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  %i.h = load i64, ptr %0, align 8, !tbaa !9
  %i.i = icmp ult i64 %i.g, %i.h
  br label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowgeERKNS_15BasicDecimal128ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i64 %i.b, %i.d
  br i1 %i.e, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, %i.d
  br i1 %i.f, label %bb.c, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %0, align 8, !tbaa !9
  %i.h = load i64, ptr %1, align 8, !tbaa !9
  %i.i = icmp uge i64 %i.g, %i.h
  br label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowngERKNS_15BasicDecimal128E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.d = icmp ne i64 %i.c, 0
  %i.e = sub i64 0, %i.c
  %i.f = sext i1 %i.d to i64
  %.sroa.6.0.i = sub i64 %i.f, %i.b
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.e, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0.i, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowcoERKNS_15BasicDecimal128E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = xor i64 %i.b, -1
  %i.d = load i64, ptr %0, align 8, !tbaa !9
  %i.e = xor i64 %i.d, -1
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.e, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.c, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowplERKNS_15BasicDecimal128ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = add i64 %i.e, %i.b
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  %i.h = add i64 %i.g, %i.c                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.c
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.f, %i.j
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.h, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.k, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowmiERKNS_15BasicDecimal128ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = sub i64 %i.b, %i.e
  %i.g = load i64, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.h = sub i64 %i.c, %i.g
  %i.i = icmp ugt i64 %i.g, %i.c
  %.neg.i = sext i1 %i.i to i64
  %i.j = add i64 %i.f, %.neg.i
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.h, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.j, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowmlERKNS_15BasicDecimal128ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
_ZN5arrow15BasicDecimal128mLERKS0_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !9      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9    ; 4 uses
  %i.f = xor i64 %i.e, %i.b
  %isneg.i = icmp sgt i64 %i.f, -1                ; 2 uses
  %i.g = icmp slt i64 %i.b, 0                     ; 2 uses
  %i.h = icmp ne i64 %i.c, 0
  %i.i = sub i64 0, %i.c
  %i.j = sext i1 %i.h to i64
  %.sroa.6.0.i.i.i.i = sub i64 %i.j, %i.b
  %.sroa.6.0.i.i = select i1 %i.g, i64 %.sroa.6.0.i.i.i.i, i64 %i.b
  %.sroa.0.0.i.i = select i1 %i.g, i64 %i.i, i64 %i.c
  %.sroa.0.0.copyload1.i9.i = load i64, ptr %1, align 8 ; 3 uses
  %i.k = icmp slt i64 %i.e, 0                     ; 2 uses
  %i.l = icmp ne i64 %.sroa.0.0.copyload1.i9.i, 0
  %i.m = sub i64 0, %.sroa.0.0.copyload1.i9.i
  %i.n = sext i1 %i.l to i64
  %.sroa.6.0.i.i.i12.i = sub i64 %i.n, %i.e
  %.sroa.6.0.i13.i = select i1 %i.k, i64 %.sroa.6.0.i.i.i12.i, i64 %i.e
  %.sroa.0.0.i14.i = select i1 %i.k, i64 %i.m, i64 %.sroa.0.0.copyload1.i9.i
  %i.o = sext i64 %.sroa.6.0.i.i to i128
  %i.p = shl nsw i128 %i.o, 64
  %i.q = zext i64 %.sroa.0.0.i.i to i128
  %i.r = or disjoint i128 %i.p, %i.q
  %i.s = sext i64 %.sroa.6.0.i13.i to i128
  %i.t = shl nsw i128 %i.s, 64
  %i.u = zext i64 %.sroa.0.0.i14.i to i128
  %i.v = or disjoint i128 %i.t, %i.u
  %i.w = mul i128 %i.v, %i.r                      ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = trunc nuw i128 %i.x to i64               ; 2 uses
  %i.z = trunc i128 %i.w to i64                   ; 3 uses
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = sub i64 0, %i.z
  %i.ac = sext i1 %i.aa to i64
  %.sroa.6.0.i17.i = sub i64 %i.ac, %i.y
  %.sroa.5.0 = select i1 %isneg.i, i64 %i.y, i64 %.sroa.6.0.i17.i
  %.sroa.0.0 = select i1 %isneg.i, i64 %i.z, i64 %i.ab
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define { i64, i64 } @_ZN5arrowdvERKNS_15BasicDecimal128ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  %3 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define { i64, i64 } @_ZN5arrowrmERKNS_15BasicDecimal128ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  %3 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, ptr noundef nonnull %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef range(i32 0, 4) i32 @_ZNK5arrow14BasicDecimal327RescaleEiiPS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4
  store i32 %i.b, ptr %3, align 4
  br label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sub nsw i32 %2, %1                       ; 2 uses
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @_ZN5arrowL21kDecimal32PowersOfTenE, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = icmp slt i32 %i.c, 0
  %i.i = load i32, ptr %0, align 4                ; 2 uses
  br i1 %i.h, label %.split17.i, label %bb.d

.split17.i:                                       ; preds = %bb.c
  %i.j = sdiv i32 %i.i, %i.g
  store i32 %i.j, ptr %3, align 4
  %i.k = load i32, ptr %0, align 4, !tbaa !11
  %i.l = srem i32 %i.k, %i.g
  %.fr.i = freeze i32 %i.l
  %.not.i = icmp eq i32 %.fr.i, 0
  br i1 %.not.i, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.m = mul i32 %i.i, %i.g                       ; 3 uses
  store i32 %i.m, ptr %3, align 4
  %i.n = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.p = icmp slt i32 %i.m, %i.n
  %cond.fr16.i = freeze i1 %i.p
  br i1 %cond.fr16.i, label %bb.e, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit, !prof !18

_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i: ; preds = %bb.d
  %i.q = icmp sgt i32 %i.m, %i.n
  %cond.fr.i = freeze i1 %i.q
  br i1 %cond.fr.i, label %bb.e, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit, !prof !18

bb.e:                                             ; preds = %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i, %.split.i, %.split17.i
  br label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit

_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit: ; preds = %bb.b, %.split17.i, %.split.i, %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i, %bb.e
  %.1.i = phi i32 [ 0, %bb.b ], [ 3, %bb.e ], [ 0, %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i ], [ 0, %.split17.i ], [ 0, %.split.i ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef range(i32 0, 4) i32 @_ZNK5arrow14BasicDecimal647RescaleEiiPS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8
  store i64 %i.b, ptr %3, align 8
  br label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sub nsw i32 %2, %1                       ; 2 uses
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL21kDecimal64PowersOfTenE, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp slt i32 %i.c, 0
  %i.i = load i64, ptr %0, align 8                ; 2 uses
  br i1 %i.h, label %.split17.i, label %bb.d

.split17.i:                                       ; preds = %bb.c
  %i.j = sdiv i64 %i.i, %i.g
  store i64 %i.j, ptr %3, align 8
  %i.k = load i64, ptr %0, align 8, !tbaa !13
  %i.l = srem i64 %i.k, %i.g
  %.fr.i = freeze i64 %i.l
  %.not.i = icmp eq i64 %.fr.i, 0
  br i1 %.not.i, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.m = mul i64 %i.i, %i.g                       ; 3 uses
  store i64 %i.m, ptr %3, align 8
  %i.n = load i64, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.p = icmp slt i64 %i.m, %i.n
  %cond.fr16.i = freeze i1 %i.p
  br i1 %cond.fr16.i, label %bb.e, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit, !prof !18

_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i: ; preds = %bb.d
  %i.q = icmp sgt i64 %i.m, %i.n
  %cond.fr.i = freeze i1 %i.q
  br i1 %cond.fr.i, label %bb.e, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit, !prof !18

bb.e:                                             ; preds = %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i, %.split.i, %.split17.i
  br label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit

_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit: ; preds = %bb.b, %.split17.i, %.split.i, %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i, %bb.e
  %.1.i = phi i32 [ 0, %bb.b ], [ 3, %bb.e ], [ 0, %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i ], [ 0, %.split17.i ], [ 0, %.split.i ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK5arrow15BasicDecimal1287RescaleEiiPS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5arrow14DecimalRescaleINS_15BasicDecimal128EEENS_13DecimalStatusERKT_iiPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5arrow14DecimalRescaleINS_15BasicDecimal128EEENS_13DecimalStatusERKT_iiPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::BasicDecimal128", align 8 ; 5 uses
  %5 = alloca %"class.arrow::GenericBasicDecimal", align 8 ; 4 uses
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

bb.c:                                             ; preds = %bb.a
  %i.b = sub nsw i32 %2, %1                       ; 2 uses
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true)
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.d ; 3 uses
  %i.f = icmp slt i32 %i.b, 0
  br i1 %i.f, label %.split, label %bb.d

.split:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.g = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.e, ptr noundef %3, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.h = load i128, ptr %4, align 8
  %i.i = load i128, ptr %5, align 8
  %i.j = icmp ne i128 %i.h, %i.i
  %i.k = zext i1 %i.j to i32
  %bcmp.i.i.i.i.i.i.i.fr = freeze i32 %i.k
  %.not9.i.i.i.i.i.i.i.not = icmp eq i32 %bcmp.i.i.i.i.i.i.i.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br i1 %.not9.i.i.i.i.i.i.i.not, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, !prof !26

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !9    ; 4 uses
  %i.n = load i64, ptr %0, align 8, !tbaa !9      ; 3 uses
  %i.o = xor i64 %.sroa.4.0.copyload, %i.m
  %isneg.i.i.i = icmp sgt i64 %i.o, -1            ; 2 uses
  %i.p = icmp slt i64 %i.m, 0                     ; 2 uses
  %i.q = icmp ne i64 %i.n, 0
  %i.r = sub i64 0, %i.n
  %i.s = sext i1 %i.q to i64
  %.sroa.6.0.i.i.i.i.i.i = sub i64 %i.s, %i.m
  %.sroa.6.0.i.i.i.i = select i1 %i.p, i64 %.sroa.6.0.i.i.i.i.i.i, i64 %i.m
  %.sroa.0.0.i.i.i.i = select i1 %i.p, i64 %i.r, i64 %i.n
  %i.t = sext i64 %.sroa.6.0.i.i.i.i to i128
  %i.u = shl nsw i128 %i.t, 64
  %i.v = zext i64 %.sroa.0.0.i.i.i.i to i128
  %i.w = or disjoint i128 %i.u, %i.v
  %i.x = sext i64 %.sroa.4.0.copyload to i128
  %i.y = shl nsw i128 %i.x, 64
  %i.z = zext i64 %.sroa.0.0.copyload to i128
  %i.aa = or disjoint i128 %i.y, %i.z
  %i.ab = mul i128 %i.aa, %i.w                    ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = trunc nuw i128 %i.ac to i64             ; 2 uses
  %i.ae = trunc i128 %i.ab to i64                 ; 3 uses
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = sub i64 0, %i.ae
  %i.ah = sext i1 %i.af to i64
  %.sroa.6.0.i17.i.i.i = sub i64 %i.ah, %i.ad
  %.sroa.5.0.i.i = select i1 %isneg.i.i.i, i64 %i.ad, i64 %.sroa.6.0.i17.i.i.i ; 5 uses
  %.sroa.0.0.i.i = select i1 %isneg.i.i.i, i64 %i.ae, i64 %i.ag ; 3 uses
  store i64 %.sroa.0.0.i.i, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !9   ; 5 uses
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp slt i64 %.sroa.5.0.i.i, %i.ai
  br i1 %i.ak, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %bb.g

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i:    ; preds = %bb.d
  %i.al = icmp slt i64 %i.ai, %.sroa.5.0.i.i
  br i1 %i.al, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i
  %i.am = icmp eq i64 %i.ai, %.sroa.5.0.i.i
  br i1 %i.am, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

bb.g:                                             ; preds = %bb.e
  %i.an = icmp eq i64 %.sroa.5.0.i.i, %i.ai
  br i1 %i.an, label %.split21, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

.split21:                                         ; preds = %bb.g
  %i.ao = load i64, ptr %0, align 8, !tbaa !9
  %i.ap = icmp ult i64 %.sroa.0.0.i.i, %i.ao
  %cond.fr22 = freeze i1 %i.ap
  br i1 %cond.fr22, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17, !prof !27

_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit: ; preds = %bb.f
  %i.aq = load i64, ptr %0, align 8, !tbaa !9
  %i.ar = icmp ult i64 %i.aq, %.sroa.0.0.i.i
  %cond.fr = freeze i1 %i.ar
  br i1 %cond.fr, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17, !prof !27

_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread: ; preds = %bb.e, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i, %.split21, %.split, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17: ; preds = %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit, %.split, %.split21, %bb.g, %bb.f, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 3, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread ], [ 0, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit ], [ 0, %.split21 ], [ 0, %.split ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZNK5arrow15BasicDecimal12819GetWholeAndFractionEiPS0_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.a
  %i.c = tail call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %2, ptr noundef %3) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal12818GetScaleMultiplierEi(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal12822GetHalfScaleMultiplierEi(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL26kDecimal128HalfPowersOfTenE, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal12811GetMaxValueEv() local_unnamed_addr #5 align 2 {
bb.a:
  ret ptr @_ZN5arrowL19kMaxDecimal128ValueE
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @_ZN5arrow15BasicDecimal12811GetMaxValueEi(i32 noundef %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  %i.e = load i64, ptr %i.b, align 16, !tbaa !9
  %i.f = add i64 %i.e, -1
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.f, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.d, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK5arrow15BasicDecimal12815IncreaseScaleByEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 4 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !9      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 2 uses
  %i.h = xor i64 %i.g, %i.d
  %isneg.i.i = icmp sgt i64 %i.h, -1              ; 2 uses
  %i.i = icmp slt i64 %i.d, 0                     ; 2 uses
  %i.j = icmp ne i64 %i.e, 0
  %i.k = sub i64 0, %i.e
  %i.l = sext i1 %i.j to i64
  %.sroa.6.0.i.i.i.i.i = sub i64 %i.l, %i.d
  %.sroa.6.0.i.i.i = select i1 %i.i, i64 %.sroa.6.0.i.i.i.i.i, i64 %i.d
  %.sroa.0.0.i.i.i = select i1 %i.i, i64 %i.k, i64 %i.e
  %.sroa.0.0.copyload1.i9.i.i = load i64, ptr %i.b, align 16
  %i.m = sext i64 %.sroa.6.0.i.i.i to i128
  %i.n = shl nsw i128 %i.m, 64
  %i.o = zext i64 %.sroa.0.0.i.i.i to i128
  %i.p = or disjoint i128 %i.n, %i.o
  %i.q = sext i64 %i.g to i128
  %i.r = shl nsw i128 %i.q, 64
  %i.s = zext i64 %.sroa.0.0.copyload1.i9.i.i to i128
  %i.t = or disjoint i128 %i.r, %i.s
  %i.u = mul i128 %i.p, %i.t                      ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = trunc nuw i128 %i.v to i64               ; 2 uses
  %i.x = trunc i128 %i.u to i64                   ; 3 uses
  %i.y = icmp ne i64 %i.x, 0
  %i.z = sub i64 0, %i.x
  %i.aa = sext i1 %i.y to i64
  %.sroa.6.0.i17.i.i = sub i64 %i.aa, %i.w
  %.sroa.5.0.i = select i1 %isneg.i.i, i64 %i.w, i64 %.sroa.6.0.i17.i.i
  %.sroa.0.0.i = select i1 %isneg.i.i, i64 %i.x, i64 %i.z
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define { i64, i64 } @_ZNK5arrow15BasicDecimal12813ReduceScaleByEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::BasicDecimal128", align 8 ; 8 uses
  %4 = alloca %"class.arrow::BasicDecimal128", align 8 ; 8 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.d = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  br i1 %2, label %bb.d, label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL26kDecimal128HalfPowersOfTenE, i64 %i.b ; 2 uses
  %.sroa.05.0.copyload = load i64, ptr %i.e, align 16
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i, label %_ZN5arrow15BasicDecimal1283AbsEv.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i:    ; preds = %bb.d
  %i.i = load i64, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.j = icmp ne i64 %i.i, 0
  %i.k = sub i64 0, %i.i
  %i.l = sext i1 %i.j to i64
  %.sroa.6.0.i.i = sub i64 %i.l, %i.g
  store i64 %i.k, ptr %4, align 8
  br label %_ZN5arrow15BasicDecimal1283AbsEv.exit

_ZN5arrow15BasicDecimal1283AbsEv.exit:            ; preds = %bb.d, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i
  %i.m = phi i64 [ %i.g, %bb.d ], [ %.sroa.6.0.i.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i ] ; 2 uses
  %i.n = icmp slt i64 %i.m, %.sroa.46.0.copyload
  br i1 %i.n, label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow15BasicDecimal1283AbsEv.exit
  %i.o = icmp ne i64 %i.m, %.sroa.46.0.copyload
  %i.p = load i64, ptr %4, align 8
  %i.q = icmp uge i64 %i.p, %.sroa.05.0.copyload
  %or.cond = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond, label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread, label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7

_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9
  %i.t = ashr i64 %i.s, 63                        ; 2 uses
  %i.u = or i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !9
  %i.x = add i64 %i.t, %i.w
  %i.y = load i64, ptr %3, align 8, !tbaa !9      ; 2 uses
  %i.z = add i64 %i.u, %i.y                       ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = zext i1 %i.aa to i64
  %i.ac = add i64 %i.x, %i.ab
  store i64 %i.z, ptr %3, align 8
  store i64 %i.ac, ptr %i.v, align 8
  br label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7

_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7: ; preds = %bb.e, %_ZN5arrow15BasicDecimal1283AbsEv.exit, %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7, %bb.b
  %.fca.0.load = load i64, ptr %3, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 129) i32 @_ZNK5arrow15BasicDecimal12823CountLeadingBinaryZerosEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !9
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 false)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.i = trunc nuw nsw i64 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal2566NegateEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.b = sub i64 0, %i.a
  store i64 %i.b, ptr %0, align 8, !tbaa !9
  %i.c = icmp eq i64 %i.a, 0
  %i.d = zext i1 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = xor i64 %i.f, -1
  %i.h = add i64 %i.d, %i.g                       ; 2 uses
  store i64 %i.h, ptr %i.e, align 8, !tbaa !9
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 %i.d, i64 0          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9
  %i.m = xor i64 %i.l, -1
  %i.n = add i64 %i.j, %i.m                       ; 2 uses
  store i64 %i.n, ptr %i.k, align 8, !tbaa !9
  %i.o = icmp eq i64 %i.n, 0
  %i.p = select i1 %i.o, i64 %i.j, i64 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9
  %i.s = xor i64 %i.r, -1
  %i.t = add i64 %i.p, %i.s
  store i64 %i.t, ptr %i.q, align 8, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal2563AbsEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.e = sub i64 0, %i.d
  store i64 %i.e, ptr %0, align 8, !tbaa !9
  %i.f = icmp eq i64 %i.d, 0
  %i.g = zext i1 %i.f to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9
  %i.j = xor i64 %i.i, -1
  %i.k = add i64 %i.g, %i.j                       ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !tbaa !9
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 %i.g, i64 0          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9
  %i.p = xor i64 %i.o, -1
  %i.q = add i64 %i.m, %i.p                       ; 2 uses
  store i64 %i.q, ptr %i.n, align 8, !tbaa !9
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.r, i64 %i.m, i64 0
  %i.t = xor i64 %i.b, -1
  %i.u = add nuw i64 %i.s, %i.t
  store i64 %i.u, ptr %i.a, align 8, !tbaa !9
  br label %_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit.thread

_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit.thread: ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.b, %i.d
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9    ; 2 uses
  %.not2 = icmp eq i64 %i.g, %i.i
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i64 %i.g, %i.i
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9    ; 2 uses
  %.not3 = icmp eq i64 %i.l, %i.n
  br i1 %.not3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ult i64 %i.l, %i.n
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = load i64, ptr %0, align 8, !tbaa !9
  %i.q = load i64, ptr %1, align 8, !tbaa !9
  %i.r = icmp ult i64 %i.p, %i.q
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %i.s = phi i1 [ %i.e, %bb.b ], [ %i.j, %bb.d ], [ %i.o, %bb.f ], [ %i.r, %bb.g ]
  ret i1 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow15BasicDecimal2563AbsERKS0_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp slt i64 %.sroa.10.0.copyload, 0
  br i1 %i.a, label %bb.b, label %_ZN5arrow15BasicDecimal2563AbsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = sub i64 0, %.sroa.0.0.copyload
  %i.c = icmp eq i64 %.sroa.0.0.copyload, 0
  %i.d = zext i1 %i.c to i64                      ; 2 uses
  %i.e = xor i64 %.sroa.6.0.copyload, -1
  %i.f = add i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = select i1 %i.g, i64 %i.d, i64 0          ; 2 uses
  %i.i = xor i64 %.sroa.8.0.copyload, -1
  %i.j = add i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 %i.h, i64 0
  %i.m = xor i64 %.sroa.10.0.copyload, -1
  %i.n = add nuw i64 %i.l, %i.m
  br label %_ZN5arrow15BasicDecimal2563AbsEv.exit

_ZN5arrow15BasicDecimal2563AbsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.10.0 = phi i64 [ %i.n, %bb.b ], [ %.sroa.10.0.copyload, %bb.a ]
  %.sroa.8.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.8.0.copyload, %bb.a ]
  %.sroa.6.0 = phi i64 [ %i.f, %bb.b ], [ %.sroa.6.0.copyload, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.b, %bb.b ], [ %.sroa.0.0.copyload, %bb.a ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx4, align 8
  %.sroa.10.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx6, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256pLERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
end_hunk_2
begin_hunk_3_@_ZN5arrow15BasicDecimal256mIERKS0_:bb.a
  %.2.1.i = select i1 %i.u, i64 %i.v, i64 %spec.select.1.i
  store i64 %i.t, ptr %i.r, align 8, !tbaa !9
  %i.w = add i64 %.2.1.i, %i.h                    ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.h                  ; 2 uses
  %spec.select.2.i = zext i1 %i.x to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !9    ; 2 uses
  %i.aa = add i64 %i.w, %i.z                      ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = select i1 %i.x, i64 2, i64 1
  %.2.2.i = select i1 %i.ab, i64 %i.ac, i64 %spec.select.2.i
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !9
  %i.af = add i64 %i.l, %i.ae
  %i.ag = add i64 %i.af, %.2.2.i
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrowngERKNS_15BasicDecimal256E(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  %i.a = sub i64 0, %.sroa.0.0.copyload
  %i.b = icmp eq i64 %.sroa.0.0.copyload, 0
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  %i.d = xor i64 %.sroa.6.0.copyload, -1
  %i.e = add i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = select i1 %i.f, i64 %i.c, i64 0          ; 2 uses
  %i.h = xor i64 %.sroa.8.0.copyload, -1
  %i.i = add i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 %i.g, i64 0
  %i.l = xor i64 %.sroa.10.0.copyload, -1
  %i.m = add i64 %i.k, %i.l
  store i64 %i.a, ptr %0, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %.sroa.8.0..sroa_idx4, align 8
  %.sroa.10.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %.sroa.10.0..sroa_idx6, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256lSEj(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 6                           ; 6 uses
  %i.c = icmp ugt i32 %1, 255
  br i1 %i.c, label %.loopexit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = and i32 %1, 63                           ; 3 uses
  %i.e = zext nneg i32 %i.d to i64                ; 4 uses
  %.not30.not = icmp eq i32 %i.d, 0
  %i.f = sub nuw nsw i32 64, %i.d
  %i.g = zext nneg i32 %i.f to i64                ; 3 uses
  br i1 %.not30.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.neg = xor i32 %i.b, -1
  %i.h = zext nneg i32 %i.b to i64                ; 3 uses
  %i.i = sext i32 %.neg to i64
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.i ; 3 uses
  %i.j = sub nuw nsw i64 3, %i.h
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = shl i64 %i.l, %i.e                       ; 2 uses
  store i64 %i.n, ptr %i.m, align 8, !tbaa !9
  %.not31.not53 = icmp ult i32 %1, 192
  br i1 %.not31.not53, label %.lr.ph.split, label %.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.o = zext nneg i32 %i.b to i64                ; 3 uses
  %i.p = sub nuw nsw i64 3, %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %i.s, align 8, !tbaa !9
  %.not.us.not = icmp ult i32 %1, 192
  br i1 %.not.us.not, label %.lr.ph.split.us.1, label %.preheader

.lr.ph.split.us.1:                                ; preds = %.lr.ph.split.us.preheader
  %i.t = sub nuw nsw i64 2, %i.o
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %i.w, align 8, !tbaa !9
  %.not.us.not.1 = icmp ult i32 %1, 128
  br i1 %.not.us.not.1, label %.lr.ph.split.us.2, label %.preheader

.lr.ph.split.us.2:                                ; preds = %.lr.ph.split.us.1
  %i.x = sub nuw nsw i64 1, %i.o
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !9
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.split, %.lr.ph.split.2, %.lr.ph.split.us.preheader, %.lr.ph.split.us.1, %.lr.ph.split.us.2, %.lr.ph.split.preheader
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %.lr.ph.split.1, %.preheader
  %i.ab = add nsw i32 %i.b, -1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 8
  br label %.loopexit.sink.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader
  %gep = getelementptr i8, ptr %invariant.gep, i64 24
  %i.af = load i64, ptr %gep, align 8, !tbaa !9
  %i.ag = lshr i64 %i.af, %i.g
  %i.ah = or i64 %i.ag, %i.n
  store i64 %i.ah, ptr %i.m, align 8, !tbaa !9
  %i.ai = sub nuw nsw i64 2, %i.h
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = shl i64 %i.ak, %i.e                     ; 2 uses
  store i64 %i.am, ptr %i.al, align 8, !tbaa !9
  %.not31.not = icmp ult i32 %1, 128
  br i1 %.not31.not, label %.lr.ph.split.1, label %.preheader

.lr.ph.split.1:                                   ; preds = %.lr.ph.split
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 16
  %i.an = load i64, ptr %gep.1, align 8, !tbaa !9
  %i.ao = lshr i64 %i.an, %i.g
  %i.ap = or i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !9
  %i.aq = sub nuw nsw i64 1, %i.h
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = shl i64 %i.as, %i.e                     ; 2 uses
  store i64 %i.au, ptr %i.at, align 8, !tbaa !9
  %cond = icmp eq i32 %i.b, 0
  br i1 %cond, label %.lr.ph.split.2, label %.lr.ph41.preheader

.lr.ph.split.2:                                   ; preds = %.lr.ph.split.1
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 8
  %i.av = load i64, ptr %gep.2, align 8, !tbaa !9
  %i.aw = lshr i64 %i.av, %i.g
  %i.ax = or i64 %i.aw, %i.au
  store i64 %i.ax, ptr %i.at, align 8, !tbaa !9
  %i.ay = load i64, ptr %0, align 8, !tbaa !9
  %i.az = shl i64 %i.ay, %i.e
  store i64 %i.az, ptr %0, align 8, !tbaa !9
  br label %.preheader

.loopexit.sink.split:                             ; preds = %bb.b, %.lr.ph41.preheader
  %.sink = phi i64 [ %i.ae, %.lr.ph41.preheader ], [ 32, %bb.b ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %0, i8 0, i64 %.sink, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.preheader, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256rSEj(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.2", align 8     ; 10 uses
  %3 = alloca %"struct.std::array.2", align 8     ; 8 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9
  %i.d = ashr i64 %i.c, 63                        ; 12 uses
  %i.e = lshr i32 %1, 6                           ; 3 uses
  %i.f = icmp ugt i32 %1, 255
  br i1 %i.f, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !tbaa !9
  %.06.i.i.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %.06.i.i.i.i.ptr.1.i, align 8, !tbaa !9
  %.06.i.i.i.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.06.i.i.i.i.ptr.2.i, align 8, !tbaa !9
  store i64 %i.d, ptr %i.b, align 8, !tbaa !9
  br label %bb.l

.lr.ph:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  store i64 %i.d, ptr %2, align 8
  %.06.i.i.i.i.ptr.1.i25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %.06.i.i.i.i.ptr.1.i25, align 8
  %.06.i.i.i.i.ptr.2.i26 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.d, ptr %.06.i.i.i.i.ptr.2.i26, align 8
  %.06.i.i.i.i.ptr.3.i27 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.d, ptr %.06.i.i.i.i.ptr.3.i27, align 8
  %i.g = and i32 %1, 63                           ; 3 uses
  %i.h = zext nneg i32 %i.g to i64                ; 4 uses
  %.not = icmp eq i32 %i.g, 0
  %i.i = sub nuw nsw i32 64, %i.g
  %i.j = zext nneg i32 %i.i to i64                ; 4 uses
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.k = lshr i32 %1, 6                           ; 4 uses
  %i.l = zext nneg i32 %i.k to i64                ; 5 uses
  %i.m = zext nneg i32 %i.e to i64                ; 4 uses
  %i.n = or disjoint i32 %i.k, 4
  %i.o = sub nuw nsw i32 %i.n, %i.e
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.l ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !9
  %i.r = lshr i64 %i.q, %i.h
  %i.s = sub nuw nsw i64 %i.l, %i.m
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.s
  %.not24 = icmp eq i32 %i.k, 3
  br i1 %.not24, label %bb.e, label %bb.d

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.u = lshr exact i32 %1, 3
  %i.v = zext nneg i32 %i.u to i64
  %scevgep = getelementptr i8, ptr %3, i64 %i.v
  %i.w = shl nuw nsw i32 %i.e, 3
  %narrow = sub nuw nsw i32 32, %i.w
  %i.x = zext nneg i32 %narrow to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %scevgep, i64 %i.x, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %.lr.ph.split.us.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.l

bb.d:                                             ; preds = %.lr.ph.split.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.in.sroa.speculate.load. = load i64, ptr %i.y, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.preheader, %bb.d
  %.in.sroa.speculated = phi i64 [ %.in.sroa.speculate.load., %bb.d ], [ %i.d, %.lr.ph.split.preheader ]
  %i.z = shl i64 %.in.sroa.speculated, %i.j
  %i.aa = or i64 %i.z, %i.r
  store i64 %i.aa, ptr %i.t, align 8
  %indvars.iv.next = add nuw nsw i64 %i.l, 1      ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !9
  %i.ad = lshr i64 %i.ac, %i.h
  %i.ae = sub nuw nsw i64 %indvars.iv.next, %i.m
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ae
  %.not24.1 = icmp eq i64 %indvars.iv.next, 3
  br i1 %.not24.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.in.sroa.speculate.load..1 = load i64, ptr %i.ag, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.1
  %.in.sroa.speculated.1 = phi i64 [ %.in.sroa.speculate.load..1, %bb.f ], [ %i.d, %.lr.ph.split.1 ]
  %i.ah = shl i64 %.in.sroa.speculated.1, %i.j
  %i.ai = or i64 %i.ah, %i.ad
  store i64 %i.ai, ptr %i.af, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %i.l, 2    ; 4 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split.2

.lr.ph.split.2:                                   ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !9
  %i.al = lshr i64 %i.ak, %i.h
  %i.am = sub nuw nsw i64 %indvars.iv.next.1, %i.m
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.am
  %.not24.2 = icmp eq i64 %indvars.iv.next.1, 3
  br i1 %.not24.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.in.sroa.speculate.load..2 = load i64, ptr %i.ao, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.2
  %.in.sroa.speculated.2 = phi i64 [ %.in.sroa.speculate.load..2, %bb.h ], [ %i.d, %.lr.ph.split.2 ]
  %i.ap = shl i64 %.in.sroa.speculated.2, %i.j
  %i.aq = or i64 %i.ap, %i.al
  store i64 %i.aq, ptr %i.an, align 8
  %indvars.iv.next.2 = add nuw nsw i64 %i.l, 3    ; 3 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !9
  %i.at = lshr i64 %i.as, %i.h
  %i.au = sub nuw nsw i64 %indvars.iv.next.2, %i.m
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.au
  %.not24.3 = icmp eq i32 %i.k, 0
  br i1 %.not24.3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.in.sroa.speculate.load..3 = load i64, ptr %i.aw, align 8, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.3
  %.in.sroa.speculated.3 = phi i64 [ %.in.sroa.speculate.load..3, %bb.j ], [ %i.d, %.lr.ph.split.3 ]
  %i.ax = shl i64 %.in.sroa.speculated.3, %i.j
  %i.ay = or i64 %i.ax, %i.at
  store i64 %i.ay, ptr %i.av, align 8
  br label %._crit_edge

bb.l:                                             ; preds = %bb.c, %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 4 uses
  %i.e = xor i64 %i.d, %i.b
  %isneg = icmp sgt i64 %i.e, -1
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !noalias !35 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !35 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !35 ; 2 uses
  %i.f = icmp slt i64 %i.b, 0
  br i1 %i.f, label %bb.b, label %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %.sroa.0.0.copyload.i
  %i.h = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.i = zext i1 %i.h to i64                      ; 2 uses
  %i.j = xor i64 %.sroa.6.0.copyload.i, -1
  %i.k = add i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 %i.i, i64 0          ; 2 uses
  %i.n = xor i64 %.sroa.8.0.copyload.i, -1
  %i.o = add i64 %i.m, %i.n                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = select i1 %i.p, i64 %i.m, i64 0
  %i.r = xor i64 %i.b, -1
  %i.s = add nuw i64 %i.q, %i.r
  br label %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit

_ZN5arrow15BasicDecimal2563AbsERKS0_.exit:        ; preds = %bb.a, %bb.b
  %.sroa.10.0.i = phi i64 [ %i.s, %bb.b ], [ %i.b, %bb.a ]
  %.sroa.8.0.i = phi i64 [ %i.o, %bb.b ], [ %.sroa.8.0.copyload.i, %bb.a ]
  %.sroa.6.0.i = phi i64 [ %i.k, %bb.b ], [ %.sroa.6.0.copyload.i, %bb.a ]
  %.sroa.0.0.i = phi i64 [ %i.g, %bb.b ], [ %.sroa.0.0.copyload.i, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i3 = load i64, ptr %1, align 8, !noalias !36 ; 3 uses
  %.sroa.6.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i5 = load i64, ptr %.sroa.6.0..sroa_idx.i4, align 8, !noalias !36 ; 2 uses
  %.sroa.8.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload.i7 = load i64, ptr %.sroa.8.0..sroa_idx.i6, align 8, !noalias !36 ; 2 uses
  %i.t = icmp slt i64 %i.d, 0
  br i1 %i.t, label %bb.c, label %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17

bb.c:                                             ; preds = %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit
  %i.u = sub i64 0, %.sroa.0.0.copyload.i3
  %i.v = icmp eq i64 %.sroa.0.0.copyload.i3, 0
  %i.w = zext i1 %i.v to i64                      ; 2 uses
  %i.x = xor i64 %.sroa.6.0.copyload.i5, -1
  %i.y = add i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 %i.w, i64 0         ; 2 uses
  %i.ab = xor i64 %.sroa.8.0.copyload.i7, -1
  %i.ac = add i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = select i1 %i.ad, i64 %i.aa, i64 0
  %i.af = xor i64 %i.d, -1
  %i.ag = add nuw i64 %i.ae, %i.af
  br label %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17

_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17:      ; preds = %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit, %bb.c
  %.sroa.10.0.i10 = phi i64 [ %i.ag, %bb.c ], [ %i.d, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit ]
  %.sroa.8.0.i11 = phi i64 [ %i.ac, %bb.c ], [ %.sroa.8.0.copyload.i7, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit ]
  %.sroa.6.0.i12 = phi i64 [ %i.y, %bb.c ], [ %.sroa.6.0.copyload.i5, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit ]
  %.sroa.0.0.i13 = phi i64 [ %i.u, %bb.c ], [ %.sroa.0.0.copyload.i3, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit ]
  %i.ah = zext i64 %.sroa.0.0.i to i128           ; 3 uses
  %i.ai = zext i64 %.sroa.0.0.i13 to i128         ; 4 uses
  %i.aj = mul nuw i128 %i.ai, %i.ah               ; 2 uses
  %i.ak = trunc i128 %i.aj to i64                 ; 3 uses
  %i.al = lshr i128 %i.aj, 64
  %i.am = zext i64 %.sroa.6.0.i to i128           ; 3 uses
  %i.an = mul nuw i128 %i.ai, %i.am
  %i.ao = add nuw i128 %i.al, %i.an               ; 2 uses
  %i.ap = lshr i128 %i.ao, 64
  %i.aq = zext i64 %.sroa.8.0.i to i128           ; 2 uses
  %i.ar = mul nuw i128 %i.ai, %i.aq
  %i.as = add nuw i128 %i.ap, %i.ar               ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = zext i64 %.sroa.10.0.i to i128
  %i.av = mul nuw nsw i128 %i.ai, %i.au
  %i.aw = zext i64 %.sroa.6.0.i12 to i128         ; 3 uses
  %i.ax = mul nuw i128 %i.aw, %i.ah
  %i.ay = and i128 %i.ao, 18446744073709551615
  %i.az = add nuw i128 %i.ay, %i.ax               ; 2 uses
  %i.ba = trunc i128 %i.az to i64                 ; 2 uses
  %i.bb = lshr i128 %i.az, 64
  %i.bc = mul nuw i128 %i.aw, %i.am
  %i.bd = and i128 %i.as, 18446744073709551615
  %i.be = add nuw i128 %i.bd, %i.bc
  %i.bf = add nuw i128 %i.be, %i.bb               ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = mul nuw i128 %i.aw, %i.aq
  %i.bi = zext i64 %.sroa.8.0.i11 to i128         ; 2 uses
  %i.bj = mul nuw i128 %i.bi, %i.ah
  %i.bk = and i128 %i.bf, 18446744073709551615
  %i.bl = add nuw i128 %i.bk, %i.bj               ; 2 uses
  %i.bm = trunc i128 %i.bl to i64                 ; 2 uses
  %i.bn = lshr i128 %i.bl, 64
  %i.bo = mul nuw i128 %i.bi, %i.am
  %i.bp = add i128 %i.bh, %i.bo
  %i.bq = add i128 %i.bp, %i.av
  %i.br = add i128 %i.bq, %i.at
  %i.bs = add i128 %i.br, %i.bg
  %i.bt = add i128 %i.bs, %i.bn
  %i.bu = trunc i128 %i.bt to i64
  %i.bv = mul i64 %.sroa.10.0.i10, %.sroa.0.0.i
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  store i64 %i.ak, ptr %0, align 8
  store i64 %i.ba, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i64 %i.bm, ptr %.sroa.8.0..sroa_idx.i, align 8
  store i64 %i.bw, ptr %i.a, align 8, !tbaa !7
  br i1 %isneg, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17
  %i.bx = sub i64 0, %i.ak
  store i64 %i.bx, ptr %0, align 8, !tbaa !9
  %i.by = icmp eq i64 %i.ak, 0
  %i.bz = zext i1 %i.by to i64                    ; 2 uses
  %i.ca = xor i64 %i.ba, -1
  %i.cb = add i64 %i.ca, %i.bz                    ; 2 uses
  store i64 %i.cb, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !9
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = select i1 %i.cc, i64 %i.bz, i64 0       ; 2 uses
  %i.ce = xor i64 %i.bm, -1
  %i.cf = add i64 %i.cd, %i.ce                    ; 2 uses
  store i64 %i.cf, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !9
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = select i1 %i.cg, i64 %i.cd, i64 0
  %i.ci = xor i64 %i.bw, -1
  %i.cj = add i64 %i.ch, %i.ci
  store i64 %i.cj, ptr %i.a, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit17
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 3) i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array.2", align 8     ; 13 uses
  %5 = alloca %"struct.std::array.2", align 8     ; 13 uses
  %6 = alloca %"struct.std::array.2", align 8     ; 13 uses
  %i.a = alloca [65 x i32], align 16              ; 10 uses
  %7 = alloca %"class.arrow::BasicDecimal256", align 8 ; 13 uses
  %8 = alloca %"class.arrow::BasicDecimal256", align 8 ; 13 uses
  %i.b = alloca [65 x i32], align 16              ; 25 uses
  %i.c = alloca [64 x i32], align 16              ; 22 uses
  %i.d = alloca [64 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.b, align 16, !tbaa !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %i.h = icmp slt i64 %i.g, 0                     ; 5 uses
  %.035.i.i.i.i.lcssa.sroa.gep186 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.035.i.i.i.i.lcssa.sroa.gep187 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.035.i.i.i.i.lcssa.sroa.gep188 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.035.i.i.i.lcssa.sroa.gep189 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.035.i.i.i.lcssa.sroa.gep190 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.035.i.i.i.lcssa.sroa.gep191 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.035.i.i144.i.lcssa.sroa.gep192 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.035.i.i144.i.lcssa.sroa.gep193 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.035.i.i144.i.lcssa.sroa.gep194 = getelementptr inbounds nuw i8, ptr %4, i64 24
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %8, align 8, !tbaa !9      ; 2 uses
  %i.j = sub i64 0, %i.i
  store i64 %i.j, ptr %8, align 8, !tbaa !9
  %i.k = icmp eq i64 %i.i, 0
  %i.l = zext i1 %i.k to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9
  %i.o = xor i64 %i.n, -1
  %i.p = add i64 %i.l, %i.o                       ; 2 uses
  store i64 %i.p, ptr %i.m, align 8, !tbaa !9
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 %i.l, i64 0          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9
  %i.u = xor i64 %i.t, -1
  %i.v = add i64 %i.r, %i.u                       ; 2 uses
  store i64 %i.v, ptr %i.s, align 8, !tbaa !9
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 %i.r, i64 0
  %i.y = xor i64 %i.g, -1
  %i.z = add nuw i64 %i.x, %i.y                   ; 2 uses
  store i64 %i.z, ptr %i.f, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = phi i64 [ %i.z, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.01827.lcssa.i.i.i = phi i64 [ 3, %bb.c ], [ 2, %bb.e ], [ 1, %bb.f ] ; 2 uses
  %.lcssa30.i.i.i = phi i64 [ %i.aa, %bb.c ], [ %i.ad, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  %.not21.i.i.i = icmp ugt i64 %.lcssa30.i.i.i, 4294967295
  br i1 %.not21.i.i.i, label %.lr.ph.preheader.i.i.i, label %.loopexit.i.i.i

.thread.i.i:                                      ; preds = %bb.g
  %.not21.i6.i.i = icmp ugt i64 %i.ag, 4294967295
  br i1 %.not21.i6.i.i, label %.lr.ph.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.thread.i.i
  %i.ab = trunc nuw i64 %i.ag to i32
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !9  ; 2 uses
  %.not.1.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.1.i.i.i, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !9  ; 2 uses
  %.not.2.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.2.i.i.i, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.ag = load i64, ptr %8, align 8, !tbaa !9     ; 3 uses
  %.not.3.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.3.i.i.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i, label %.thread.i.i

.loopexit.i.i.i:                                  ; preds = %bb.d
  %i.ah = trunc nuw i64 %.lcssa30.i.i.i to i32
  store i32 %i.ah, ptr %i.e, align 4, !tbaa !6
  %i.ai = add nsw i64 %.01827.lcssa.i.i.i, -1
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.loopexit.i.i.i, %.thread.i.i, %bb.d
  %.140.i.i.i = phi i64 [ %i.ai, %.loopexit.i.i.i ], [ %.01827.lcssa.i.i.i, %bb.d ], [ 0, %.thread.i.i ] ; 4 uses
  %.01939.i.i.i = phi i64 [ 1, %.loopexit.i.i.i ], [ 0, %bb.d ], [ 0, %.thread.i.i ] ; 3 uses
  %i.aj = add nsw i64 %.140.i.i.i, 1              ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %i.aj, -4                      ; 4 uses
  %i.ak = sub nsw i64 %.140.i.i.i, %n.vec
  %i.al = shl nsw i64 %n.vec, 1
  %i.am = or disjoint i64 %.01939.i.i.i, %i.al    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = sub i64 %.140.i.i.i, %index
  %i.ao = shl nuw i64 %index, 1
  %i.ap = or disjoint i64 %.01939.i.i.i, %i.ao    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.an ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ar, align 8, !tbaa !9 ; 2 uses
  %wide.load83 = load <2 x i64>, ptr %i.as, align 8, !tbaa !9 ; 2 uses
  %i.at = lshr <2 x i64> %wide.load, splat (i64 32)
  %i.au = shufflevector <2 x i64> %i.at, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.av = lshr <2 x i64> %wide.load83, splat (i64 32)
  %i.aw = shufflevector <2 x i64> %i.av, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ap
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ap
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = shufflevector <2 x i64> %i.au, <2 x i64> %wide.load, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %interleaved.vec = trunc <4 x i64> %i.ba to <4 x i32>
  store <4 x i32> %interleaved.vec, ptr %i.ax, align 4, !tbaa !6
  %i.bb = shufflevector <2 x i64> %i.aw, <2 x i64> %wide.load83, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %interleaved.vec85 = trunc <4 x i64> %i.bb to <4 x i32>
  store <4 x i32> %interleaved.vec85, ptr %i.az, align 4, !tbaa !6
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.029.i.i.i.ph = phi i64 [ %.140.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.ak, %middle.block ]
  %.12028.i.i.i.ph = phi i64 [ %.01939.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.029.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i ], [ %.029.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.12028.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i ], [ %.12028.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.029.i.i.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !9  ; 2 uses
  %i.bf = lshr i64 %i.be, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.12028.i.i.i ; 2 uses
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !6
  %i.bi = trunc i64 %i.be to i32
  %i.bj = add nuw nsw i64 %.12028.i.i.i, 2        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !6
  %i.bl = add nsw i64 %.029.i.i.i, -1
  %.not44.i.i.i = icmp eq i64 %.029.i.i.i, 0
  br i1 %.not44.i.i.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i, label %.lr.ph.i.i.i, !llvm.loop !38

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.g, %.loopexit.i.thread.i.i
  %.120.lcssa.i.i.i = phi i64 [ 1, %.loopexit.i.thread.i.i ], [ 0, %bb.g ], [ %i.am, %middle.block ], [ %i.bj, %.lr.ph.i.i.i ] ; 30 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %i.bm = add i64 %.120.lcssa.i.i.i, 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !9  ; 3 uses
  %i.bp = icmp slt i64 %i.bo, 0                   ; 3 uses
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i
  %i.bq = load i64, ptr %7, align 8, !tbaa !9     ; 2 uses
  %i.br = sub i64 0, %i.bq
  store i64 %i.br, ptr %7, align 8, !tbaa !9
  %i.bs = icmp eq i64 %i.bq, 0
  %i.bt = zext i1 %i.bs to i64                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !9
  %i.bw = xor i64 %i.bv, -1
  %i.bx = add i64 %i.bt, %i.bw                    ; 2 uses
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !9
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = select i1 %i.by, i64 %i.bt, i64 0       ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !9
  %i.cc = xor i64 %i.cb, -1
  %i.cd = add i64 %i.bz, %i.cc                    ; 2 uses
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !9
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = select i1 %i.ce, i64 %i.bz, i64 0
  %i.cg = xor i64 %i.bo, -1
  %i.ch = add nuw i64 %i.cf, %i.cg                ; 2 uses
  store i64 %i.ch, ptr %i.bn, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i
  %i.ci = phi i64 [ %i.ch, %bb.h ], [ %i.bo, %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i ] ; 2 uses
  %.not.i.i99.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i99.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.01827.lcssa.i.i100.i = phi i64 [ 3, %bb.i ], [ 2, %bb.k ], [ 1, %bb.l ] ; 2 uses
  %.lcssa30.i.i101.i = phi i64 [ %i.ci, %bb.i ], [ %i.cl, %bb.k ], [ %i.cn, %bb.l ] ; 2 uses
  %.not21.i.i102.i = icmp ugt i64 %.lcssa30.i.i101.i, 4294967295
  br i1 %.not21.i.i102.i, label %.lr.ph.preheader.i.i104.i, label %.loopexit.i.i103.i

.thread.i115.i:                                   ; preds = %bb.m
  %.not21.i6.i116.i = icmp ugt i64 %i.co, 4294967295
  br i1 %.not21.i6.i116.i, label %.lr.ph.preheader.i.i104.i, label %.loopexit.i.thread.i117.i

.loopexit.i.thread.i117.i:                        ; preds = %.thread.i115.i
  %i.cj = trunc nuw i64 %i.co to i32
  store i32 %i.cj, ptr %i.c, align 16, !tbaa !6
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i

bb.k:                                             ; preds = %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !9  ; 2 uses
  %.not.1.i.i112.i = icmp eq i64 %i.cl, 0
  br i1 %.not.1.i.i112.i, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !9  ; 2 uses
  %.not.2.i.i113.i = icmp eq i64 %i.cn, 0
  br i1 %.not.2.i.i113.i, label %bb.m, label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.co = load i64, ptr %7, align 8, !tbaa !9     ; 3 uses
  %.not.3.i.i114.i = icmp eq i64 %i.co, 0
  br i1 %.not.3.i.i114.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i, label %.thread.i115.i

.loopexit.i.i103.i:                               ; preds = %bb.j
  %i.cp = trunc nuw i64 %.lcssa30.i.i101.i to i32
  store i32 %i.cp, ptr %i.c, align 16, !tbaa !6
  %i.cq = add nsw i64 %.01827.lcssa.i.i100.i, -1
  br label %.lr.ph.preheader.i.i104.i

.lr.ph.preheader.i.i104.i:                        ; preds = %.loopexit.i.i103.i, %.thread.i115.i, %bb.j
  %.140.i.i105.i = phi i64 [ %i.cq, %.loopexit.i.i103.i ], [ %.01827.lcssa.i.i100.i, %bb.j ], [ 0, %.thread.i115.i ] ; 4 uses
  %.01939.i.i106.i = phi i64 [ 1, %.loopexit.i.i103.i ], [ 0, %bb.j ], [ 0, %.thread.i115.i ] ; 3 uses
  %i.cr = add nsw i64 %.140.i.i105.i, 1           ; 3 uses
  %min.iters.check88 = icmp ult i64 %i.cr, 4
  br i1 %min.iters.check88, label %.lr.ph.i.i107.i.preheader, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph.preheader.i.i104.i
  %n.vec90 = and i64 %i.cr, -4                    ; 4 uses
  %i.cs = sub nsw i64 %.140.i.i105.i, %n.vec90
  %i.ct = shl nsw i64 %n.vec90, 1
  %i.cu = or disjoint i64 %.01939.i.i106.i, %i.ct ; 2 uses
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph89
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next99, %vector.body91 ] ; 3 uses
  %i.cv = sub i64 %.140.i.i105.i, %index92
  %i.cw = shl nuw i64 %index92, 1
  %i.cx = or disjoint i64 %.01939.i.i106.i, %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.cv ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -24
  %wide.load93 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !9 ; 2 uses
  %wide.load94 = load <2 x i64>, ptr %i.da, align 8, !tbaa !9 ; 2 uses
  %i.db = lshr <2 x i64> %wide.load93, splat (i64 32)
  %i.dc = shufflevector <2 x i64> %i.db, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.dd = lshr <2 x i64> %wide.load94, splat (i64 32)
  %i.de = shufflevector <2 x i64> %i.dd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cx
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cx
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = shufflevector <2 x i64> %i.dc, <2 x i64> %wide.load93, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %interleaved.vec97 = trunc <4 x i64> %i.di to <4 x i32>
  store <4 x i32> %interleaved.vec97, ptr %i.df, align 4, !tbaa !6
  %i.dj = shufflevector <2 x i64> %i.de, <2 x i64> %wide.load94, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %interleaved.vec98 = trunc <4 x i64> %i.dj to <4 x i32>
  store <4 x i32> %interleaved.vec98, ptr %i.dh, align 4, !tbaa !6
  %index.next99 = add nuw i64 %index92, 4         ; 2 uses
  %i.dk = icmp eq i64 %index.next99, %n.vec90
  br i1 %i.dk, label %middle.block100, label %vector.body91, !llvm.loop !39

middle.block100:                                  ; preds = %vector.body91
  %cmp.n101 = icmp eq i64 %i.cr, %n.vec90
  br i1 %cmp.n101, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i, label %.lr.ph.i.i107.i.preheader

.lr.ph.i.i107.i.preheader:                        ; preds = %.lr.ph.preheader.i.i104.i, %middle.block100
  %.029.i.i108.i.ph = phi i64 [ %.140.i.i105.i, %.lr.ph.preheader.i.i104.i ], [ %i.cs, %middle.block100 ]
  %.12028.i.i109.i.ph = phi i64 [ %.01939.i.i106.i, %.lr.ph.preheader.i.i104.i ], [ %i.cu, %middle.block100 ]
  br label %.lr.ph.i.i107.i

.lr.ph.i.i107.i:                                  ; preds = %.lr.ph.i.i107.i.preheader, %.lr.ph.i.i107.i
  %.029.i.i108.i = phi i64 [ %i.dt, %.lr.ph.i.i107.i ], [ %.029.i.i108.i.ph, %.lr.ph.i.i107.i.preheader ] ; 3 uses
  %.12028.i.i109.i = phi i64 [ %i.dr, %.lr.ph.i.i107.i ], [ %.12028.i.i109.i.ph, %.lr.ph.i.i107.i.preheader ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.029.i.i108.i
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !9  ; 2 uses
  %i.dn = lshr i64 %i.dm, 32
  %i.do = trunc nuw i64 %i.dn to i32
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.12028.i.i109.i ; 2 uses
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !6
  %i.dq = trunc i64 %i.dm to i32
  %i.dr = add nuw nsw i64 %.12028.i.i109.i, 2     ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.dq, ptr %i.ds, align 4, !tbaa !6
  %i.dt = add nsw i64 %.029.i.i108.i, -1
  %.not44.i.i110.i = icmp eq i64 %.029.i.i108.i, 0
  br i1 %.not44.i.i110.i, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i, label %.lr.ph.i.i107.i, !llvm.loop !40

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i: ; preds = %.lr.ph.i.i107.i, %middle.block100, %bb.m, %.loopexit.i.thread.i117.i
  %.120.lcssa.i.i111.i = phi i64 [ 1, %.loopexit.i.thread.i117.i ], [ 0, %bb.m ], [ %i.cu, %middle.block100 ], [ %i.dr, %.lr.ph.i.i107.i ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %.not.not.i = icmp slt i64 %.120.lcssa.i.i.i, %.120.lcssa.i.i111.i
  br i1 %.not.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.o:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i
  switch i64 %.120.lcssa.i.i111.i, label %bb.z [
    i64 0, label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit
    i64 1, label %.lr.ph.i.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.du = load i32, ptr %i.c, align 16, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.dv = zext i32 %i.du to i64                   ; 6 uses
  %i.dw = add i64 %.120.lcssa.i.i.i, 1            ; 2 uses
  %i.dx = icmp eq i64 %.120.lcssa.i.i.i, 0
  br i1 %i.dx, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.dw, -2
  br label %bb.u

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.u
  %i.dy = and i64 %.120.lcssa.i.i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dy, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge.i.i

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.032.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ha, %._crit_edge.i.i.unr-lcssa ] ; 2 uses
  %.02231.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gz, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod172 = trunc i64 %i.dw to i1
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.dz = shl nuw i64 %.02231.i.i.epil.init, 32
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.032.i.i.epil.init
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !6
  %i.ec = zext i32 %i.eb to i64
  %i.ed = or disjoint i64 %i.dz, %i.ec            ; 2 uses
  %i.ee = udiv i64 %i.ed, %i.dv
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.032.i.i.epil.init
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !6
  %i.eh = urem i64 %i.ed, %i.dv
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa168 = phi i64 [ %i.gz, %._crit_edge.i.i.unr-lcssa ], [ %i.eh, %.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ei = icmp sgt i64 %.120.lcssa.i.i.i, 7
  br i1 %i.ei, label %.lr.ph.i.i.i.preheader.i, label %.lr.ph37.i.i.i.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %._crit_edge.i.i
  %i.ej = add nsw i64 %.120.lcssa.i.i.i, -8
  br label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ek = add nsw i64 %.02533.i.i.i.i, -1
  %i.el = icmp sgt i64 %.02533.i.i.i.i, 0
  br i1 %i.el, label %.lr.ph.i.i.i.i, label %.lr.ph37.i.i.i.i, !llvm.loop !41

.lr.ph.i.i.i.i:                                   ; preds = %bb.p, %.lr.ph.i.i.i.preheader.i
  %.02533.i.i.i.i = phi i64 [ %i.ek, %bb.p ], [ %i.ej, %.lr.ph.i.i.i.preheader.i ] ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.02533.i.i.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !6
  %.not.i.i.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i

.preheader.i.i.i.i:                               ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %.thread.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.035.i.i.i.i.lcssa, %.thread.i.i.i.i ], [ 1, %bb.q ], [ 2, %bb.r ], [ 3, %bb.s ], [ 4, %bb.t ] ; 2 uses
  %i.eo = icmp samesign ult i64 %.0.lcssa.i.i.i.i, 4
  br i1 %i.eo, label %.lr.ph39.preheader.i.i.i.i, label %bb.v

.lr.ph39.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.ep = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 3    ; 2 uses
  %scevgep.i.i.i.i = getelementptr i8, ptr %6, i64 %i.ep
  %i.eq = sub nuw nsw i64 32, %i.ep
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.eq, i1 false)
  br label %bb.v

.lr.ph37.i.i.i.i:                                 ; preds = %._crit_edge.i.i, %bb.p
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.120.lcssa.i.i.i ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !6
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = icmp eq i64 %.120.lcssa.i.i.i, 0
  br i1 %i.eu, label %.thread.i.i.i.i, label %bb.q

.thread.i.i.i.i:                                  ; preds = %.lr.ph37.i.i.i.i.3, %.lr.ph37.i.i.i.i.2, %.lr.ph37.i.i.i.i.1, %.lr.ph37.i.i.i.i
  %.035.i.i.i.i.lcssa.sroa.phi = phi ptr [ %6, %.lr.ph37.i.i.i.i ], [ %.035.i.i.i.i.lcssa.sroa.gep186, %.lr.ph37.i.i.i.i.1 ], [ %.035.i.i.i.i.lcssa.sroa.gep187, %.lr.ph37.i.i.i.i.2 ], [ %.035.i.i.i.i.lcssa.sroa.gep188, %.lr.ph37.i.i.i.i.3 ]
  %.035.i.i.i.i.lcssa = phi i64 [ 1, %.lr.ph37.i.i.i.i ], [ 2, %.lr.ph37.i.i.i.i.1 ], [ 3, %.lr.ph37.i.i.i.i.2 ], [ 4, %.lr.ph37.i.i.i.i.3 ]
  %.lcssa164 = phi i64 [ %i.et, %.lr.ph37.i.i.i.i ], [ %i.fd, %.lr.ph37.i.i.i.i.1 ], [ %i.fo, %.lr.ph37.i.i.i.i.2 ], [ %i.fz, %.lr.ph37.i.i.i.i.3 ]
  store i64 %.lcssa164, ptr %.035.i.i.i.i.lcssa.sroa.phi, align 8
  br label %.preheader.i.i.i.i

bb.q:                                             ; preds = %.lr.ph37.i.i.i.i
  %i.ev = add nsw i64 %.120.lcssa.i.i.i, -2       ; 3 uses
  %i.ew = getelementptr i8, ptr %i.er, i64 -4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !6
  %i.ey = zext i32 %i.ex to i64
  %i.ez = shl nuw i64 %i.ey, 32
  %i.fa = or disjoint i64 %i.ez, %i.et
  store i64 %i.fa, ptr %6, align 8
  %.not = icmp eq i64 %.120.lcssa.i.i.i, 1
  br i1 %.not, label %.preheader.i.i.i.i, label %.lr.ph37.i.i.i.i.1

.lr.ph37.i.i.i.i.1:                               ; preds = %bb.q
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ev ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !6
  %i.fd = zext i32 %i.fc to i64                   ; 2 uses
  %i.fe = icmp eq i64 %i.ev, 0
  br i1 %i.fe, label %.thread.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph37.i.i.i.i.1
  %i.ff = add nsw i64 %.120.lcssa.i.i.i, -4       ; 3 uses
  %i.fg = getelementptr i8, ptr %i.fb, i64 -4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !6
  %i.fi = zext i32 %i.fh to i64
  %i.fj = shl nuw i64 %i.fi, 32
  %i.fk = or disjoint i64 %i.fj, %i.fd
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.fk, ptr %i.fl, align 8
  %.not195 = icmp eq i64 %i.ev, 1
  br i1 %.not195, label %.preheader.i.i.i.i, label %.lr.ph37.i.i.i.i.2

.lr.ph37.i.i.i.i.2:                               ; preds = %bb.r
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ff ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !6
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = icmp eq i64 %i.ff, 0
  br i1 %i.fp, label %.thread.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph37.i.i.i.i.2
  %i.fq = getelementptr i8, ptr %i.fm, i64 -4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !6
  %i.fs = zext i32 %i.fr to i64
  %i.ft = shl nuw i64 %i.fs, 32
  %i.fu = or disjoint i64 %i.ft, %i.fo
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.fu, ptr %i.fv, align 8
  %.not196 = icmp eq i64 %i.ff, 1
  br i1 %.not196, label %.preheader.i.i.i.i, label %.lr.ph37.i.i.i.i.3

.lr.ph37.i.i.i.i.3:                               ; preds = %bb.s
  %i.fw = add nsw i64 %.120.lcssa.i.i.i, -6       ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !6
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = icmp eq i64 %i.fw, 0
  br i1 %i.ga, label %.thread.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph37.i.i.i.i.3
  %i.gb = getelementptr i8, ptr %i.fx, i64 -4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !6
  %i.gd = zext i32 %i.gc to i64
  %i.ge = shl nuw i64 %i.gd, 32
  %i.gf = or disjoint i64 %i.ge, %i.fz
  %i.gg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.gf, ptr %i.gg, align 8
  br label %.preheader.i.i.i.i

_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.new
  %.032.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ha, %bb.u ] ; 4 uses
  %.02231.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.gz, %bb.u ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.u ]
  %i.gh = shl nuw i64 %.02231.i.i, 32
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.032.i.i
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !6
  %i.gk = zext i32 %i.gj to i64
  %i.gl = or disjoint i64 %i.gh, %i.gk            ; 2 uses
  %i.gm = udiv i64 %i.gl, %i.dv
  %i.gn = trunc i64 %i.gm to i32
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.032.i.i
  store i32 %i.gn, ptr %i.go, align 8, !tbaa !6
  %i.gp = urem i64 %i.gl, %i.dv
  %i.gq = or disjoint i64 %.032.i.i, 1            ; 2 uses
  %i.gr = shl nuw i64 %i.gp, 32
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gq
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !6
  %i.gu = zext i32 %i.gt to i64
  %i.gv = or disjoint i64 %i.gr, %i.gu            ; 2 uses
  %i.gw = udiv i64 %i.gv, %i.dv
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gq
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !6
  %i.gz = urem i64 %i.gv, %i.dv                   ; 3 uses
  %i.ha = add nuw nsw i64 %.032.i.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.u, !llvm.loop !42

bb.v:                                             ; preds = %.lr.ph39.preheader.i.i.i.i, %.preheader.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, i8 0, i64 24, i1 false)
  store i64 %.lcssa168, ptr %3, align 8
  %i.hb = xor i1 %i.h, %i.bp
  br i1 %i.hb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hc = load i64, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.hd = sub i64 0, %i.hc
  store i64 %i.hd, ptr %2, align 8, !tbaa !9
  %i.he = icmp eq i64 %i.hc, 0
  %i.hf = zext i1 %i.he to i64                    ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !9
  %i.hi = xor i64 %i.hh, -1
  %i.hj = add i64 %i.hf, %i.hi                    ; 2 uses
  store i64 %i.hj, ptr %i.hg, align 8, !tbaa !9
  %i.hk = icmp eq i64 %i.hj, 0
  %i.hl = select i1 %i.hk, i64 %i.hf, i64 0       ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !9
  %i.ho = xor i64 %i.hn, -1
  %i.hp = add i64 %i.hl, %i.ho                    ; 2 uses
  store i64 %i.hp, ptr %i.hm, align 8, !tbaa !9
  %i.hq = icmp eq i64 %i.hp, 0
  %i.hr = select i1 %i.hq, i64 %i.hl, i64 0
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !9
  %i.hu = xor i64 %i.ht, -1
  %i.hv = add i64 %i.hr, %i.hu
  store i64 %i.hv, ptr %i.hs, align 8, !tbaa !9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.h, label %bb.y, label %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

bb.y:                                             ; preds = %bb.x
  %i.hw = load i64, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.hx = sub i64 0, %i.hw
  store i64 %i.hx, ptr %3, align 8, !tbaa !9
  %i.hy = icmp eq i64 %i.hw, 0
  %i.hz = zext i1 %i.hy to i64                    ; 2 uses
  %i.ia = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !9
  %i.ib = xor i64 %i.ia, -1
  %i.ic = add i64 %i.hz, %i.ib                    ; 2 uses
  store i64 %i.ic, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !9
  %i.id = icmp eq i64 %i.ic, 0
  %i.ie = select i1 %i.id, i64 %i.hz, i64 0       ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !9
  %i.ih = xor i64 %i.ig, -1
  %i.ii = add i64 %i.ie, %i.ih                    ; 2 uses
  store i64 %i.ii, ptr %i.if, align 8, !tbaa !9
  %i.ij = icmp eq i64 %i.ii, 0
  %i.ik = select i1 %i.ij, i64 %i.ie, i64 0
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !9
  %i.in = xor i64 %i.im, -1
  %i.io = add i64 %i.ik, %i.in
  store i64 %i.io, ptr %i.il, align 8, !tbaa !9
  br label %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i: ; preds = %bb.y, %bb.x, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i
  %.023.i.i = phi i32 [ 2, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i ], [ 0, %bb.x ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.z:                                             ; preds = %bb.o
  %i.ip = sub i64 %i.bm, %.120.lcssa.i.i111.i     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.iq = load i32, ptr %i.c, align 16, !tbaa !6  ; 3 uses
  %i.ir = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.iq, i1 false) ; 13 uses
  %i.is = icmp sgt i64 %.120.lcssa.i.i111.i, 0    ; 2 uses
  %i.it = icmp ne i32 %i.ir, 0                    ; 3 uses
  %or.cond.i.i = and i1 %i.is, %i.it
  br i1 %or.cond.i.i, label %.lr.ph.i120.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.i

.lr.ph.i120.i:                                    ; preds = %bb.z
  %i.iu = add nsw i64 %.120.lcssa.i.i111.i, -1    ; 4 uses
  %i.iv = sub nuw nsw i32 32, %i.ir               ; 2 uses
  %min.iters.check105 = icmp ult i64 %.120.lcssa.i.i111.i, 9
  br i1 %min.iters.check105, label %scalar.ph104.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %.lr.ph.i120.i
  %n.vec107 = and i64 %i.iu, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.iv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert108 = insertelement <4 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat109 = shufflevector <4 x i32> %broadcast.splatinsert108, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.iq, i64 3
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph106
  %index111 = phi i64 [ 0, %vector.ph106 ], [ %index.next114, %vector.body110 ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph106 ], [ %wide.load113, %vector.body110 ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index111 ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index111 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 20
  %wide.load112 = load <4 x i32>, ptr %i.iy, align 4, !tbaa !6 ; 3 uses
  %wide.load113 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !6 ; 4 uses
  %i.ja = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load112, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jb = shufflevector <4 x i32> %wide.load112, <4 x i32> %wide.load113, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jc = shl <4 x i32> %i.ja, %broadcast.splat109
  %i.jd = shl <4 x i32> %i.jb, %broadcast.splat109
  %i.je = lshr <4 x i32> %wide.load112, %broadcast.splat
  %i.jf = lshr <4 x i32> %wide.load113, %broadcast.splat
  %i.jg = or disjoint <4 x i32> %i.je, %i.jc
  %i.jh = or disjoint <4 x i32> %i.jf, %i.jd
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store <4 x i32> %i.jg, ptr %i.iw, align 16, !tbaa !6
  store <4 x i32> %i.jh, ptr %i.ji, align 16, !tbaa !6
  %index.next114 = add nuw i64 %index111, 8       ; 2 uses
  %i.jj = icmp eq i64 %index.next114, %n.vec107
  br i1 %i.jj, label %middle.block115, label %vector.body110, !llvm.loop !43

middle.block115:                                  ; preds = %vector.body110
  %vector.recur.extract = extractelement <4 x i32> %wide.load113, i64 3
  %cmp.n116 = icmp eq i64 %i.iu, %n.vec107
  br i1 %cmp.n116, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph104.preheader

scalar.ph104.preheader:                           ; preds = %.lr.ph.i120.i, %middle.block115
  %.ph163 = phi i32 [ %i.iq, %.lr.ph.i120.i ], [ %vector.recur.extract, %middle.block115 ]
  %.019.i.i.ph = phi i64 [ 0, %.lr.ph.i120.i ], [ %n.vec107, %middle.block115 ]
  br label %scalar.ph104

_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i:    ; preds = %scalar.ph104, %middle.block115
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iu ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !6
  %i.jm = shl i32 %i.jl, %i.ir
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !6
  br label %.preheader.i123.i

scalar.ph104:                                     ; preds = %scalar.ph104.preheader, %scalar.ph104
  %i.jn = phi i32 [ %i.js, %scalar.ph104 ], [ %.ph163, %scalar.ph104.preheader ]
  %.019.i.i = phi i64 [ %i.jq, %scalar.ph104 ], [ %.019.i.i.ph, %scalar.ph104.preheader ] ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.019.i.i
  %i.jp = shl i32 %i.jn, %i.ir
  %i.jq = add nuw nsw i64 %.019.i.i, 1            ; 3 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !6  ; 2 uses
  %i.jt = lshr i32 %i.js, %i.iv
  %i.ju = or disjoint i32 %i.jt, %i.jp
  store i32 %i.ju, ptr %i.jo, align 4, !tbaa !6
  %exitcond.not.i121.i = icmp eq i64 %i.jq, %i.iu
  br i1 %exitcond.not.i121.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph104, !llvm.loop !44

_ZN5arrowL14ShiftArrayLeftEPjll.exit.i:           ; preds = %bb.z
  br i1 %i.it, label %.preheader.i123.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i

.preheader.i123.i:                                ; preds = %_ZN5arrowL14ShiftArrayLeftEPjll.exit.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i
  %i.jv = icmp sgt i64 %.120.lcssa.i.i.i, 0
  br i1 %i.jv, label %.lr.ph.i125.i, label %._crit_edge.i124.i

.lr.ph.i125.i:                                    ; preds = %.preheader.i123.i
  %i.jw = sub nuw nsw i32 32, %i.ir               ; 2 uses
  %min.iters.check119 = icmp ult i64 %.120.lcssa.i.i.i, 8
  br i1 %min.iters.check119, label %scalar.ph118.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph.i125.i
  %n.vec121 = and i64 %.120.lcssa.i.i.i, 9223372036854775800 ; 3 uses
  %broadcast.splatinsert122 = insertelement <4 x i32> poison, i32 %i.jw, i64 0
  %broadcast.splat123 = shufflevector <4 x i32> %broadcast.splatinsert122, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert124 = insertelement <4 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat125 = shufflevector <4 x i32> %broadcast.splatinsert124, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph120
  %index127 = phi i64 [ 0, %vector.ph120 ], [ %index.next131, %vector.body126 ] ; 3 uses
  %vector.recur128 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph120 ], [ %wide.load130, %vector.body126 ]
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index127 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index127 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 20
  %wide.load129 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !6 ; 3 uses
  %wide.load130 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !6 ; 4 uses
  %i.kb = shufflevector <4 x i32> %vector.recur128, <4 x i32> %wide.load129, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.kc = shufflevector <4 x i32> %wide.load129, <4 x i32> %wide.load130, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.kd = shl <4 x i32> %i.kb, %broadcast.splat125
  %i.ke = shl <4 x i32> %i.kc, %broadcast.splat125
  %i.kf = lshr <4 x i32> %wide.load129, %broadcast.splat123
  %i.kg = lshr <4 x i32> %wide.load130, %broadcast.splat123
  %i.kh = or disjoint <4 x i32> %i.kf, %i.kd
  %i.ki = or disjoint <4 x i32> %i.kg, %i.ke
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store <4 x i32> %i.kh, ptr %i.jx, align 16, !tbaa !6
  store <4 x i32> %i.ki, ptr %i.kj, align 16, !tbaa !6
  %index.next131 = add nuw i64 %index127, 8       ; 2 uses
  %i.kk = icmp eq i64 %index.next131, %n.vec121
  br i1 %i.kk, label %middle.block132, label %vector.body126, !llvm.loop !45

middle.block132:                                  ; preds = %vector.body126
  %vector.recur.extract133 = extractelement <4 x i32> %wide.load130, i64 3
  %cmp.n134 = icmp eq i64 %.120.lcssa.i.i.i, %n.vec121
  br i1 %cmp.n134, label %._crit_edge.i124.i, label %scalar.ph118.preheader

scalar.ph118.preheader:                           ; preds = %.lr.ph.i125.i, %middle.block132
  %.ph = phi i32 [ 0, %.lr.ph.i125.i ], [ %vector.recur.extract133, %middle.block132 ]
  %.019.i127.i.ph = phi i64 [ 0, %.lr.ph.i125.i ], [ %n.vec121, %middle.block132 ]
  br label %scalar.ph118

._crit_edge.i124.i:                               ; preds = %scalar.ph118, %middle.block132, %.preheader.i123.i
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.120.lcssa.i.i.i ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !6
  %i.kn = shl i32 %i.km, %i.ir
  store i32 %i.kn, ptr %i.kl, align 4, !tbaa !6
  br label %_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i

scalar.ph118:                                     ; preds = %scalar.ph118.preheader, %scalar.ph118
  %i.ko = phi i32 [ %i.kt, %scalar.ph118 ], [ %.ph, %scalar.ph118.preheader ]
  %.019.i127.i = phi i64 [ %i.kr, %scalar.ph118 ], [ %.019.i127.i.ph, %scalar.ph118.preheader ] ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.019.i127.i
  %i.kq = shl i32 %i.ko, %i.ir
  %i.kr = add nuw nsw i64 %.019.i127.i, 1         ; 3 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !6  ; 2 uses
  %i.ku = lshr i32 %i.kt, %i.jw
  %i.kv = or disjoint i32 %i.ku, %i.kq
  store i32 %i.kv, ptr %i.kp, align 4, !tbaa !6
  %exitcond.not.i128.i = icmp eq i64 %i.kr, %.120.lcssa.i.i.i
  br i1 %exitcond.not.i128.i, label %._crit_edge.i124.i, label %scalar.ph118, !llvm.loop !46

_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i:        ; preds = %._crit_edge.i124.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.i
  %i.kw = icmp sgt i64 %i.ip, 0
  br i1 %i.kw, label %.lr.ph185.i, label %._crit_edge186.i

.lr.ph185.i:                                      ; preds = %_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i
  %i.kx = load i32, ptr %i.c, align 16, !tbaa !6  ; 5 uses
  %i.ky = zext i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !6
  %i.lb = zext i32 %i.la to i64
  %i.lc = add i64 %.120.lcssa.i.i111.i, -1        ; 6 uses
  %xtraiter174 = and i64 %.120.lcssa.i.i111.i, 1
  %i.ld = icmp eq i64 %i.lc, 0
  %unroll_iter178 = and i64 %.120.lcssa.i.i111.i, 9223372036854775806
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  %lcmp.mod177 = trunc i64 %.120.lcssa.i.i111.i to i1
  %xtraiter180 = and i64 %.120.lcssa.i.i111.i, 1
  %i.le = icmp eq i64 %i.lc, 0
  %unroll_iter184 = and i64 %.120.lcssa.i.i111.i, 9223372036854775806
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  %lcmp.mod183 = trunc i64 %.120.lcssa.i.i111.i to i1
  br label %bb.af

._crit_edge186.i:                                 ; preds = %._crit_edge.thread.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i
  br i1 %i.it, label %.preheader.i131.i, label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i

.preheader.i131.i:                                ; preds = %._crit_edge186.i
  %i.lf = icmp sgt i64 %.120.lcssa.i.i.i, 0
  br i1 %i.lf, label %.lr.ph.i133.i, label %._crit_edge.i132.i

.lr.ph.i133.i:                                    ; preds = %.preheader.i131.i
  %i.lg = sub nuw nsw i32 32, %i.ir               ; 2 uses
  %min.iters.check138 = icmp ult i64 %.120.lcssa.i.i.i, 8
  br i1 %min.iters.check138, label %scalar.ph137.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %.lr.ph.i133.i
  %n.vec140 = and i64 %.120.lcssa.i.i.i, 9223372036854775800 ; 3 uses
  %i.lh = sub i64 %i.bm, %n.vec140
  %broadcast.splatinsert141 = insertelement <4 x i32> poison, i32 %i.lg, i64 0
  %broadcast.splat142 = shufflevector <4 x i32> %broadcast.splatinsert141, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert143 = insertelement <4 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat144 = shufflevector <4 x i32> %broadcast.splatinsert143, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph139
  %index146 = phi i64 [ 0, %vector.ph139 ], [ %index.next151, %vector.body145 ] ; 2 uses
  %i.li = sub i64 %i.bm, %index146                ; 2 uses
  %i.lj = getelementptr [4 x i8], ptr %i.b, i64 %i.li ; 2 uses
  %i.lk = getelementptr i8, ptr %i.lj, i64 -16    ; 2 uses
  %i.ll = getelementptr i8, ptr %i.lj, i64 -32    ; 2 uses
  %wide.load147 = load <4 x i32>, ptr %i.lk, align 4, !tbaa !6
  %wide.load148 = load <4 x i32>, ptr %i.ll, align 4, !tbaa !6
  %i.lm = lshr <4 x i32> %wide.load147, %broadcast.splat144
  %i.ln = lshr <4 x i32> %wide.load148, %broadcast.splat144
  %i.lo = getelementptr [4 x i8], ptr %i.b, i64 %i.li ; 2 uses
  %i.lp = getelementptr i8, ptr %i.lo, i64 -20
  %i.lq = getelementptr i8, ptr %i.lo, i64 -36
  %wide.load149 = load <4 x i32>, ptr %i.lp, align 4, !tbaa !6
  %wide.load150 = load <4 x i32>, ptr %i.lq, align 4, !tbaa !6
  %i.lr = shl <4 x i32> %wide.load149, %broadcast.splat142
  %i.ls = shl <4 x i32> %wide.load150, %broadcast.splat142
  %i.lt = or disjoint <4 x i32> %i.lr, %i.lm
  %i.lu = or disjoint <4 x i32> %i.ls, %i.ln
  store <4 x i32> %i.lt, ptr %i.lk, align 4, !tbaa !6
  store <4 x i32> %i.lu, ptr %i.ll, align 4, !tbaa !6
  %index.next151 = add nuw i64 %index146, 8       ; 2 uses
  %i.lv = icmp eq i64 %index.next151, %n.vec140
  br i1 %i.lv, label %middle.block152, label %vector.body145, !llvm.loop !47

middle.block152:                                  ; preds = %vector.body145
  %cmp.n153 = icmp eq i64 %.120.lcssa.i.i.i, %n.vec140
  br i1 %cmp.n153, label %._crit_edge.i132.i, label %scalar.ph137.preheader

scalar.ph137.preheader:                           ; preds = %.lr.ph.i133.i, %middle.block152
  %.0.in17.i.i.ph = phi i64 [ %i.bm, %.lr.ph.i133.i ], [ %i.lh, %middle.block152 ]
  br label %scalar.ph137

._crit_edge.i132.i:                               ; preds = %scalar.ph137, %middle.block152, %.preheader.i131.i
  %i.lw = load i32, ptr %i.b, align 16, !tbaa !6
  %i.lx = lshr i32 %i.lw, %i.ir
  store i32 %i.lx, ptr %i.b, align 16, !tbaa !6
  br label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i

scalar.ph137:                                     ; preds = %scalar.ph137.preheader, %scalar.ph137
  %.0.in17.i.i = phi i64 [ %.0.i.i, %scalar.ph137 ], [ %.0.in17.i.i.ph, %scalar.ph137.preheader ] ; 3 uses
  %.0.i.i = add nsw i64 %.0.in17.i.i, -1          ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.i.i ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !6
  %i.ma = lshr i32 %i.lz, %i.ir
  %i.mb = getelementptr [4 x i8], ptr %i.b, i64 %.0.in17.i.i
  %i.mc = getelementptr i8, ptr %i.mb, i64 -8
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !6
  %i.me = shl i32 %i.md, %i.lg
  %i.mf = or disjoint i32 %i.me, %i.ma
  store i32 %i.mf, ptr %i.ly, align 4, !tbaa !6
  %i.mg = icmp samesign ugt i64 %.0.in17.i.i, 2
  br i1 %i.mg, label %scalar.ph137, label %._crit_edge.i132.i, !llvm.loop !48

_ZN5arrowL15ShiftArrayRightEPjll.exit.i:          ; preds = %._crit_edge.i132.i, %._crit_edge186.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.mh = icmp sgt i64 %i.ip, 8
  br i1 %i.mh, label %.lr.ph.i.i135.preheader.i, label %.lr.ph37.preheader.i.i.i

.lr.ph.i.i135.preheader.i:                        ; preds = %_ZN5arrowL15ShiftArrayRightEPjll.exit.i
  %i.mi = add nsw i64 %i.ip, -9
  br label %.lr.ph.i.i135.i

bb.aa:                                            ; preds = %.lr.ph.i.i135.i
  %i.mj = add nsw i64 %.02533.i.i.i, -1
  %i.mk = icmp sgt i64 %.02533.i.i.i, 0
  br i1 %i.mk, label %.lr.ph.i.i135.i, label %.lr.ph37.preheader.i.i.i, !llvm.loop !41

.lr.ph.i.i135.i:                                  ; preds = %bb.aa, %.lr.ph.i.i135.preheader.i
  %.02533.i.i.i = phi i64 [ %i.mj, %bb.aa ], [ %i.mi, %.lr.ph.i.i135.preheader.i ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02533.i.i.i
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !6
  %.not.i.i136.i = icmp eq i32 %i.mm, 0
  br i1 %.not.i.i136.i, label %bb.aa, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i

.lr.ph37.preheader.i.i.i:                         ; preds = %bb.aa, %_ZN5arrowL15ShiftArrayRightEPjll.exit.i
  %i.mn = add nsw i64 %i.ip, -1                   ; 3 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.mn ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !6
  %i.mq = zext i32 %i.mp to i64                   ; 2 uses
  %i.mr = icmp eq i64 %i.mn, 0
  br i1 %i.mr, label %.thread.i.i.i, label %bb.ab

.preheader.i.i.i:                                 ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae, %.thread.i.i.i
  %.0.lcssa.i.i.i = phi i64 [ %.035.i.i.i.lcssa, %.thread.i.i.i ], [ 1, %bb.ab ], [ 2, %bb.ac ], [ 3, %bb.ad ], [ 4, %bb.ae ] ; 2 uses
  %i.ms = icmp samesign ult i64 %.0.lcssa.i.i.i, 4
  br i1 %i.ms, label %.lr.ph39.preheader.i.i.i, label %bb.al

.lr.ph39.preheader.i.i.i:                         ; preds = %.preheader.i.i.i
  %i.mt = shl nuw nsw i64 %.0.lcssa.i.i.i, 3      ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %5, i64 %i.mt
  %i.mu = sub nuw nsw i64 32, %i.mt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.mu, i1 false)
  br label %bb.al

.thread.i.i.i:                                    ; preds = %.lr.ph37.i.i.i.3, %.lr.ph37.i.i.i.2, %.lr.ph37.i.i.i.1, %.lr.ph37.preheader.i.i.i
  %.035.i.i.i.lcssa.sroa.phi = phi ptr [ %5, %.lr.ph37.preheader.i.i.i ], [ %.035.i.i.i.lcssa.sroa.gep189, %.lr.ph37.i.i.i.1 ], [ %.035.i.i.i.lcssa.sroa.gep190, %.lr.ph37.i.i.i.2 ], [ %.035.i.i.i.lcssa.sroa.gep191, %.lr.ph37.i.i.i.3 ]
  %.035.i.i.i.lcssa = phi i64 [ 1, %.lr.ph37.preheader.i.i.i ], [ 2, %.lr.ph37.i.i.i.1 ], [ 3, %.lr.ph37.i.i.i.2 ], [ 4, %.lr.ph37.i.i.i.3 ]
  %.lcssa158 = phi i64 [ %i.mq, %.lr.ph37.preheader.i.i.i ], [ %i.nd, %.lr.ph37.i.i.i.1 ], [ %i.no, %.lr.ph37.i.i.i.2 ], [ %i.nz, %.lr.ph37.i.i.i.3 ]
  store i64 %.lcssa158, ptr %.035.i.i.i.lcssa.sroa.phi, align 8
  br label %.preheader.i.i.i

bb.ab:                                            ; preds = %.lr.ph37.preheader.i.i.i
  %i.mv = add nsw i64 %i.ip, -3                   ; 3 uses
  %i.mw = getelementptr i8, ptr %i.mo, i64 -4
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !6
  %i.my = zext i32 %i.mx to i64
  %i.mz = shl nuw i64 %i.my, 32
  %i.na = or disjoint i64 %i.mz, %i.mq
  store i64 %i.na, ptr %5, align 8
  %.not197 = icmp eq i64 %i.mn, 1
  br i1 %.not197, label %.preheader.i.i.i, label %.lr.ph37.i.i.i.1

.lr.ph37.i.i.i.1:                                 ; preds = %bb.ab
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.mv ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !6
  %i.nd = zext i32 %i.nc to i64                   ; 2 uses
  %i.ne = icmp eq i64 %i.mv, 0
  br i1 %i.ne, label %.thread.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph37.i.i.i.1
  %i.nf = add nsw i64 %i.ip, -5                   ; 3 uses
  %i.ng = getelementptr i8, ptr %i.nb, i64 -4
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !6
  %i.ni = zext i32 %i.nh to i64
  %i.nj = shl nuw i64 %i.ni, 32
  %i.nk = or disjoint i64 %i.nj, %i.nd
  %i.nl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.nk, ptr %i.nl, align 8
  %.not198 = icmp eq i64 %i.mv, 1
  br i1 %.not198, label %.preheader.i.i.i, label %.lr.ph37.i.i.i.2

.lr.ph37.i.i.i.2:                                 ; preds = %bb.ac
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.nf ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !6
  %i.no = zext i32 %i.nn to i64                   ; 2 uses
  %i.np = icmp eq i64 %i.nf, 0
  br i1 %i.np, label %.thread.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph37.i.i.i.2
  %i.nq = getelementptr i8, ptr %i.nm, i64 -4
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !6
  %i.ns = zext i32 %i.nr to i64
  %i.nt = shl nuw i64 %i.ns, 32
  %i.nu = or disjoint i64 %i.nt, %i.no
  %i.nv = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.nu, ptr %i.nv, align 8
  %.not199 = icmp eq i64 %i.nf, 1
  br i1 %.not199, label %.preheader.i.i.i, label %.lr.ph37.i.i.i.3

.lr.ph37.i.i.i.3:                                 ; preds = %bb.ad
  %i.nw = add nsw i64 %i.ip, -7                   ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.nw ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !6
  %i.nz = zext i32 %i.ny to i64                   ; 2 uses
  %i.oa = icmp eq i64 %i.nw, 0
  br i1 %i.oa, label %.thread.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph37.i.i.i.3
  %i.ob = getelementptr i8, ptr %i.nx, i64 -4
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !6
  %i.od = zext i32 %i.oc to i64
  %i.oe = shl nuw i64 %i.od, 32
  %i.of = or disjoint i64 %i.oe, %i.nz
  %i.og = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.of, ptr %i.og, align 8
  br label %.preheader.i.i.i

_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i: ; preds = %.lr.ph.i.i135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN5arrowL16FixDivisionSignsINS_15BasicDecimal256EEEvPT_S3_bb.exit.i

bb.af:                                            ; preds = %._crit_edge.thread.i, %.lr.ph185.i
  %.090184.i = phi i64 [ 0, %.lr.ph185.i ], [ %i.oj, %._crit_edge.thread.i ] ; 3 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.090184.i ; 10 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !6  ; 4 uses
  %i.oj = add nuw nsw i64 %.090184.i, 1           ; 3 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.oj
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !6  ; 2 uses
  %.not98.i = icmp eq i32 %i.oi, %i.kx
  br i1 %.not98.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.om = zext i32 %i.ol to i64
  %i.on = zext i32 %i.oi to i64
  %i.oo = shl nuw i64 %i.on, 32
  %i.op = or disjoint i64 %i.oo, %i.om
  %i.oq = udiv i64 %i.op, %i.ky
  %i.or = trunc i64 %i.oq to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.088.i = phi i32 [ %i.or, %bb.ag ], [ -1, %bb.af ] ; 2 uses
  %i.os = mul i32 %.088.i, %i.kx
  %i.ot = sub i32 %i.ol, %i.os
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !6
  %i.ow = zext i32 %i.ov to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %.189.i = phi i32 [ %.088.i, %bb.ah ], [ %i.pd, %bb.aj ] ; 3 uses
  %.087.i = phi i32 [ %i.ot, %bb.ah ], [ %i.pe, %bb.aj ] ; 2 uses
  %i.ox = zext i32 %.189.i to i64
  %i.oy = mul nuw i64 %i.ox, %i.lb
  %i.oz = zext i32 %.087.i to i64
  %i.pa = shl nuw i64 %i.oz, 32
  %i.pb = or disjoint i64 %i.pa, %i.ow
  %i.pc = icmp ugt i64 %i.oy, %i.pb
  br i1 %i.pc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.pd = add i32 %.189.i, -1                     ; 2 uses
  %i.pe = add i32 %.087.i, %i.kx                  ; 2 uses
  %i.pf = icmp ult i32 %i.pe, %i.kx
  br i1 %i.pf, label %bb.ak, label %bb.ai, !llvm.loop !49

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2.i = phi i32 [ %i.pd, %bb.aj ], [ %.189.i, %bb.ai ] ; 4 uses
  br i1 %i.is, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.ak
  %i.pg = zext i32 %.2.i to i64                   ; 3 uses
  br i1 %i.ld, label %.epil.preheader173, label %.lr.ph.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod175.not, label %._crit_edge.i, label %.epil.preheader173
end_hunk_3
begin_hunk_4_@_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_:bb.a
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !6
  %i.sf = zext i32 %i.se to i64
  %i.sg = add nuw nsw i64 %i.rx, %i.sb
  %i.sh = add nuw nsw i64 %i.sg, %i.sf            ; 2 uses
  %i.si = trunc i64 %i.sh to i32
  store i32 %i.si, ptr %i.sd, align 4, !tbaa !6
  %i.sj = lshr i64 %i.sh, 32                      ; 3 uses
  %i.sk = add nsw i64 %.082179.i, -2              ; 2 uses
  %niter185.next.1 = add i64 %niter185, 2         ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %._crit_edge182.i.unr-lcssa, label %.lr.ph181.i, !llvm.loop !51

._crit_edge.thread.i:                             ; preds = %._crit_edge182.i, %._crit_edge.i, %bb.ak
  %.3.i = phi i32 [ %i.rk, %._crit_edge182.i ], [ %.2.i, %._crit_edge.i ], [ %.2.i, %bb.ak ]
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.090184.i
  store i32 %.3.i, ptr %i.sl, align 4, !tbaa !6
  %exitcond.not.i = icmp eq i64 %i.oj, %i.ip
  br i1 %exitcond.not.i, label %._crit_edge186.i, label %bb.af, !llvm.loop !52

bb.al:                                            ; preds = %.lr.ph39.preheader.i.i.i, %.preheader.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.sm = add i64 %.120.lcssa.i.i.i, -8           ; 2 uses
  %i.sn = icmp sgt i64 %i.sm, -1
  br i1 %i.sn, label %.lr.ph.i.i149.i, label %.lr.ph37.i.i143.i

bb.am:                                            ; preds = %.lr.ph.i.i149.i
  %i.so = add nsw i64 %.02533.i.i150.i, -1
  %i.sp = icmp sgt i64 %.02533.i.i150.i, 0
  br i1 %i.sp, label %.lr.ph.i.i149.i, label %.lr.ph37.i.i143.i, !llvm.loop !41

.lr.ph.i.i149.i:                                  ; preds = %bb.al, %bb.am
  %.02533.i.i150.i = phi i64 [ %i.so, %bb.am ], [ %i.sm, %bb.al ] ; 3 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.02533.i.i150.i
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !6
  %.not.i.i151.i = icmp eq i32 %i.sr, 0
  br i1 %.not.i.i151.i, label %bb.am, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit152.i

.preheader.i.i146.i:                              ; preds = %bb.an, %bb.ao, %bb.ap, %bb.aq, %.thread.i.i148.i
  %.0.lcssa.i.i147.i = phi i64 [ %.035.i.i144.i.lcssa, %.thread.i.i148.i ], [ 1, %bb.an ], [ 2, %bb.ao ], [ 3, %bb.ap ], [ 4, %bb.aq ] ; 2 uses
  %i.ss = icmp samesign ult i64 %.0.lcssa.i.i147.i, 4
  br i1 %i.ss, label %.lr.ph39.preheader.i.i138.i, label %bb.ar

.lr.ph39.preheader.i.i138.i:                      ; preds = %.preheader.i.i146.i
  %i.st = shl nuw nsw i64 %.0.lcssa.i.i147.i, 3   ; 2 uses
  %scevgep.i.i140.i = getelementptr i8, ptr %4, i64 %i.st
  %i.su = sub nuw nsw i64 32, %i.st
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i140.i, i8 0, i64 %i.su, i1 false)
  br label %bb.ar

.lr.ph37.i.i143.i:                                ; preds = %bb.al, %bb.am
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.120.lcssa.i.i.i ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !6
  %i.sx = zext i32 %i.sw to i64                   ; 2 uses
  %i.sy = icmp eq i64 %.120.lcssa.i.i.i, 0
  br i1 %i.sy, label %.thread.i.i148.i, label %bb.an

.thread.i.i148.i:                                 ; preds = %.lr.ph37.i.i143.i.3, %.lr.ph37.i.i143.i.2, %.lr.ph37.i.i143.i.1, %.lr.ph37.i.i143.i
  %.035.i.i144.i.lcssa.sroa.phi = phi ptr [ %4, %.lr.ph37.i.i143.i ], [ %.035.i.i144.i.lcssa.sroa.gep192, %.lr.ph37.i.i143.i.1 ], [ %.035.i.i144.i.lcssa.sroa.gep193, %.lr.ph37.i.i143.i.2 ], [ %.035.i.i144.i.lcssa.sroa.gep194, %.lr.ph37.i.i143.i.3 ]
  %.035.i.i144.i.lcssa = phi i64 [ 1, %.lr.ph37.i.i143.i ], [ 2, %.lr.ph37.i.i143.i.1 ], [ 3, %.lr.ph37.i.i143.i.2 ], [ 4, %.lr.ph37.i.i143.i.3 ]
  %.lcssa = phi i64 [ %i.sx, %.lr.ph37.i.i143.i ], [ %i.th, %.lr.ph37.i.i143.i.1 ], [ %i.ts, %.lr.ph37.i.i143.i.2 ], [ %i.ud, %.lr.ph37.i.i143.i.3 ]
  store i64 %.lcssa, ptr %.035.i.i144.i.lcssa.sroa.phi, align 8
  br label %.preheader.i.i146.i

bb.an:                                            ; preds = %.lr.ph37.i.i143.i
  %i.sz = add nsw i64 %.120.lcssa.i.i.i, -2       ; 3 uses
  %i.ta = getelementptr i8, ptr %i.sv, i64 -4
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !6
  %i.tc = zext i32 %i.tb to i64
  %i.td = shl nuw i64 %i.tc, 32
  %i.te = or disjoint i64 %i.td, %i.sx
  store i64 %i.te, ptr %4, align 8
  %.not200 = icmp eq i64 %.120.lcssa.i.i.i, 1
  br i1 %.not200, label %.preheader.i.i146.i, label %.lr.ph37.i.i143.i.1

.lr.ph37.i.i143.i.1:                              ; preds = %bb.an
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.sz ; 2 uses
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !6
  %i.th = zext i32 %i.tg to i64                   ; 2 uses
  %i.ti = icmp eq i64 %i.sz, 0
  br i1 %i.ti, label %.thread.i.i148.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph37.i.i143.i.1
  %i.tj = add nsw i64 %.120.lcssa.i.i.i, -4       ; 3 uses
  %i.tk = getelementptr i8, ptr %i.tf, i64 -4
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !6
  %i.tm = zext i32 %i.tl to i64
  %i.tn = shl nuw i64 %i.tm, 32
  %i.to = or disjoint i64 %i.tn, %i.th
  %i.tp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.to, ptr %i.tp, align 8
  %.not201 = icmp eq i64 %i.sz, 1
  br i1 %.not201, label %.preheader.i.i146.i, label %.lr.ph37.i.i143.i.2

.lr.ph37.i.i143.i.2:                              ; preds = %bb.ao
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.tj ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !6
  %i.ts = zext i32 %i.tr to i64                   ; 2 uses
  %i.tt = icmp eq i64 %i.tj, 0
  br i1 %i.tt, label %.thread.i.i148.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph37.i.i143.i.2
  %i.tu = getelementptr i8, ptr %i.tq, i64 -4
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !6
  %i.tw = zext i32 %i.tv to i64
  %i.tx = shl nuw i64 %i.tw, 32
  %i.ty = or disjoint i64 %i.tx, %i.ts
  %i.tz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ty, ptr %i.tz, align 8
  %.not202 = icmp eq i64 %i.tj, 1
  br i1 %.not202, label %.preheader.i.i146.i, label %.lr.ph37.i.i143.i.3

.lr.ph37.i.i143.i.3:                              ; preds = %bb.ap
  %i.ua = add nsw i64 %.120.lcssa.i.i.i, -6       ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ua ; 2 uses
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !6
  %i.ud = zext i32 %i.uc to i64                   ; 2 uses
  %i.ue = icmp eq i64 %i.ua, 0
  br i1 %i.ue, label %.thread.i.i148.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph37.i.i143.i.3
  %i.uf = getelementptr i8, ptr %i.ub, i64 -4
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !6
  %i.uh = zext i32 %i.ug to i64
  %i.ui = shl nuw i64 %i.uh, 32
  %i.uj = or disjoint i64 %i.ui, %i.ud
  %i.uk = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.uj, ptr %i.uk, align 8
  br label %.preheader.i.i146.i

_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit152.i: ; preds = %.lr.ph.i.i149.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN5arrowL16FixDivisionSignsINS_15BasicDecimal256EEEvPT_S3_bb.exit.i

bb.ar:                                            ; preds = %.lr.ph39.preheader.i.i138.i, %.preheader.i.i146.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ul = xor i1 %i.h, %i.bp
  br i1 %i.ul, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.um = load i64, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.un = sub i64 0, %i.um
  store i64 %i.un, ptr %2, align 8, !tbaa !9
  %i.uo = icmp eq i64 %i.um, 0
  %i.up = zext i1 %i.uo to i64                    ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !9
  %i.us = xor i64 %i.ur, -1
  %i.ut = add i64 %i.up, %i.us                    ; 2 uses
  store i64 %i.ut, ptr %i.uq, align 8, !tbaa !9
  %i.uu = icmp eq i64 %i.ut, 0
  %i.uv = select i1 %i.uu, i64 %i.up, i64 0       ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !9
  %i.uy = xor i64 %i.ux, -1
  %i.uz = add i64 %i.uv, %i.uy                    ; 2 uses
  store i64 %i.uz, ptr %i.uw, align 8, !tbaa !9
  %i.va = icmp eq i64 %i.uz, 0
  %i.vb = select i1 %i.va, i64 %i.uv, i64 0
  %i.vc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !9
  %i.ve = xor i64 %i.vd, -1
  %i.vf = add i64 %i.vb, %i.ve
  store i64 %i.vf, ptr %i.vc, align 8, !tbaa !9
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %i.h, label %bb.au, label %_ZN5arrowL16FixDivisionSignsINS_15BasicDecimal256EEEvPT_S3_bb.exit.i

bb.au:                                            ; preds = %bb.at
  %i.vg = load i64, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.vh = sub i64 0, %i.vg
  store i64 %i.vh, ptr %3, align 8, !tbaa !9
  %i.vi = icmp eq i64 %i.vg, 0
  %i.vj = zext i1 %i.vi to i64                    ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !9
  %i.vm = xor i64 %i.vl, -1
  %i.vn = add i64 %i.vj, %i.vm                    ; 2 uses
  store i64 %i.vn, ptr %i.vk, align 8, !tbaa !9
  %i.vo = icmp eq i64 %i.vn, 0
  %i.vp = select i1 %i.vo, i64 %i.vj, i64 0       ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !9
  %i.vs = xor i64 %i.vr, -1
  %i.vt = add i64 %i.vp, %i.vs                    ; 2 uses
  store i64 %i.vt, ptr %i.vq, align 8, !tbaa !9
  %i.vu = icmp eq i64 %i.vt, 0
  %i.vv = select i1 %i.vu, i64 %i.vp, i64 0
  %i.vw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !9
  %i.vy = xor i64 %i.vx, -1
  %i.vz = add i64 %i.vv, %i.vy
  store i64 %i.vz, ptr %i.vw, align 8, !tbaa !9
  br label %_ZN5arrowL16FixDivisionSignsINS_15BasicDecimal256EEEvPT_S3_bb.exit.i

_ZN5arrowL16FixDivisionSignsINS_15BasicDecimal256EEEvPT_S3_bb.exit.i: ; preds = %bb.au, %bb.at, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit152.i, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i
  %.0.i = phi i32 [ 2, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit152.i ], [ 2, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i ], [ 0, %bb.at ], [ 0, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit: ; preds = %bb.n, %bb.o, %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i, %_ZN5arrowL16FixDivisionSignsINS_15BasicDecimal256EEEvPT_S3_bb.exit.i
  %.1.i = phi i32 [ 0, %bb.n ], [ %.0.i, %_ZN5arrowL16FixDivisionSignsINS_15BasicDecimal256EEEvPT_S3_bb.exit.i ], [ %.023.i.i, %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK5arrow15BasicDecimal2567RescaleEiiPS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5arrow14DecimalRescaleINS_15BasicDecimal256EEENS_13DecimalStatusERKT_iiPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5arrow14DecimalRescaleINS_15BasicDecimal256EEENS_13DecimalStatusERKT_iiPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::BasicDecimal256", align 8 ; 6 uses
  %5 = alloca %"class.arrow::GenericBasicDecimal.1", align 8 ; 5 uses
  %6 = alloca %"class.arrow::BasicDecimal256", align 8 ; 5 uses
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.b = sub nsw i32 %2, %1                       ; 2 uses
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true)
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.d ; 2 uses
  %i.f = icmp slt i32 %i.b, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.g = call noundef i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, ptr noundef %3, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.h = load i128, ptr %4, align 8
  %i.i = load i128, ptr %5, align 8
  %i.j = xor i128 %i.h, %i.i
  %i.k = getelementptr i8, ptr %4, i64 16
  %i.l = getelementptr i8, ptr %5, i64 16
  %i.m = load i128, ptr %i.k, align 8
  %i.n = load i128, ptr %i.l, align 8
  %i.o = xor i128 %i.m, %i.n
  %i.p = or i128 %i.j, %i.o
  %i.q = icmp ne i128 %i.p, 0                     ; 2 uses
  %i.r = zext i1 %i.q to i32                      ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal256EEEbRKT_iS4_PS2_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.s = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !9    ; 4 uses
  %i.v = icmp slt i64 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !9    ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.u, %i.x            ; 2 uses
  br i1 %i.v, label %bb.f, label %_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit.thread.i

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp slt i64 %i.u, %i.x
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal256EEEbRKT_iS4_PS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !9  ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.aa, %i.ac
  br i1 %.not2.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp ult i64 %i.aa, %i.ac
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal256EEEbRKT_iS4_PS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !9  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !9  ; 2 uses
  %.not3.i.i.i = icmp eq i64 %i.af, %i.ah
  br i1 %.not3.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ult i64 %i.af, %i.ah
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal256EEEbRKT_iS4_PS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = load i64, ptr %0, align 8, !tbaa !9
  %i.ak = load i64, ptr %3, align 8, !tbaa !9
  %i.al = icmp ult i64 %i.aj, %i.ak
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal256EEEbRKT_iS4_PS2_.exit

_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit.thread.i: ; preds = %bb.e
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit.thread.i
  %i.am = icmp slt i64 %i.x, %i.u
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal256EEEbRKT_iS4_PS2_.exit

bb.n:                                             ; preds = %_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit.thread.i
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !9  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !9  ; 2 uses
  %.not2.i13.i = icmp eq i64 %i.ao, %i.aq
  br i1 %.not2.i13.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp ult i64 %i.ao, %i.aq
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal256EEEbRKT_iS4_PS2_.exit

bb.p:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !9  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !9  ; 2 uses
  %.not3.i14.i = icmp eq i64 %i.at, %i.av
  br i1 %.not3.i14.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = icmp ult i64 %i.at, %i.av
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal256EEEbRKT_iS4_PS2_.exit

bb.r:                                             ; preds = %bb.p
  %i.ax = load i64, ptr %3, align 8, !tbaa !9
  %i.ay = load i64, ptr %0, align 8, !tbaa !9
  %i.az = icmp ult i64 %i.ax, %i.ay
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal256EEEbRKT_iS4_PS2_.exit

_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal256EEEbRKT_iS4_PS2_.exit: ; preds = %bb.d, %bb.g, %bb.i, %bb.k, %bb.l, %bb.m, %bb.o, %bb.q, %bb.r
  %.0.i = phi i1 [ %i.q, %bb.d ], [ %i.al, %bb.l ], [ %i.y, %bb.g ], [ %i.ad, %bb.i ], [ %i.ai, %bb.k ], [ %i.am, %bb.m ], [ %i.ar, %bb.o ], [ %i.aw, %bb.q ], [ %i.az, %bb.r ]
  %. = select i1 %.0.i, i32 3, i32 0, !prof !53
  br label %bb.s

bb.s:                                             ; preds = %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal256EEEbRKT_iS4_PS2_.exit, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %., %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal256EEEbRKT_iS4_PS2_.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK5arrow15BasicDecimal25615IncreaseScaleByEi(ptr dead_on_unwind noalias nofree nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrowmlERKNS_15BasicDecimal256ES2_(ptr dead_on_unwind noalias nofree nonnull writable sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZNK5arrow15BasicDecimal25613ReduceScaleByEib(ptr dead_on_unwind noalias nofree writable sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::BasicDecimal256", align 8 ; 12 uses
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.d = call noundef i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull %0, ptr noundef nonnull %4) ; 0 uses
  br i1 %3, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds [32 x i8], ptr @_ZN5arrowL26kDecimal256HalfPowersOfTenE, i64 %i.b ; 4 uses
  %.sroa.04.0.copyload = load i64, ptr %i.e, align 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.45.0.copyload = load i64, ptr %.sroa.45.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZN5arrow15BasicDecimal2563AbsEv.exit

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %4, align 8, !tbaa !9      ; 2 uses
  %i.j = sub i64 0, %i.i
  store i64 %i.j, ptr %4, align 8, !tbaa !9
  %i.k = icmp eq i64 %i.i, 0
  %i.l = zext i1 %i.k to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9
  %i.o = xor i64 %i.n, -1
  %i.p = add i64 %i.l, %i.o                       ; 2 uses
  store i64 %i.p, ptr %i.m, align 8, !tbaa !9
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 %i.l, i64 0          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9
  %i.u = xor i64 %i.t, -1
  %i.v = add i64 %i.r, %i.u                       ; 2 uses
  store i64 %i.v, ptr %i.s, align 8, !tbaa !9
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 %i.r, i64 0
  %i.y = xor i64 %i.g, -1
  %i.z = add nuw i64 %i.x, %i.y
  br label %_ZN5arrow15BasicDecimal2563AbsEv.exit

_ZN5arrow15BasicDecimal2563AbsEv.exit:            ; preds = %bb.d, %bb.e
  %i.aa = phi i64 [ %i.g, %bb.d ], [ %i.z, %bb.e ] ; 2 uses
  %.not.i.i = icmp eq i64 %i.aa, %.sroa.6.0.copyload
  br i1 %.not.i.i, label %bb.f, label %.split

.split:                                           ; preds = %_ZN5arrow15BasicDecimal2563AbsEv.exit
  %i.ab = icmp slt i64 %i.aa, %.sroa.6.0.copyload
  br i1 %i.ab, label %bb.h, label %_ZN5arrow15BasicDecimal256CI2NS_19GenericBasicDecimalIS0_Li256ELi4EEEIllEET_.exit

bb.f:                                             ; preds = %_ZN5arrow15BasicDecimal2563AbsEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !9  ; 2 uses
  %.not2.i.i = icmp eq i64 %i.ad, %.sroa.5.0.copyload
  br i1 %.not2.i.i, label %bb.g, label %_ZN5arrowgeERKNS_15BasicDecimal256ES2_.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !9  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.af, %.sroa.45.0.copyload
  br i1 %.not3.i.i, label %.split10, label %.split11

.split11:                                         ; preds = %bb.g
  %i.ag = icmp ult i64 %i.af, %.sroa.45.0.copyload
  br i1 %i.ag, label %bb.h, label %_ZN5arrow15BasicDecimal256CI2NS_19GenericBasicDecimalIS0_Li256ELi4EEEIllEET_.exit

.split10:                                         ; preds = %bb.g
  %i.ah = load i64, ptr %4, align 8, !tbaa !9
  %i.ai = icmp ult i64 %i.ah, %.sroa.04.0.copyload
  br i1 %i.ai, label %bb.h, label %_ZN5arrow15BasicDecimal256CI2NS_19GenericBasicDecimalIS0_Li256ELi4EEEIllEET_.exit

_ZN5arrowgeERKNS_15BasicDecimal256ES2_.exit:      ; preds = %bb.f
  %i.aj = icmp ult i64 %i.ad, %.sroa.5.0.copyload
  br i1 %i.aj, label %bb.h, label %_ZN5arrow15BasicDecimal256CI2NS_19GenericBasicDecimalIS0_Li256ELi4EEEIllEET_.exit

_ZN5arrow15BasicDecimal256CI2NS_19GenericBasicDecimalIS0_Li256ELi4EEEIllEET_.exit: ; preds = %.split11, %.split10, %.split, %_ZN5arrowgeERKNS_15BasicDecimal256ES2_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !9
  %i.am = ashr i64 %i.al, 63                      ; 6 uses
  %i.an = or i64 %i.am, 1
  %i.ao = load i64, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.ap = add i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %.2.i = zext i1 %i.aq to i64
  store i64 %i.ap, ptr %0, align 8, !tbaa !9
  %i.ar = add nsw i64 %i.am, %.2.i                ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.am               ; 2 uses
  %spec.select.1.i = zext i1 %i.as to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !9  ; 2 uses
  %i.av = add i64 %i.ar, %i.au                    ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = select i1 %i.as, i64 2, i64 1
  %.2.1.i = select i1 %i.aw, i64 %i.ax, i64 %spec.select.1.i
  store i64 %i.av, ptr %i.at, align 8, !tbaa !9
  %i.ay = add nsw i64 %.2.1.i, %i.am              ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.am               ; 2 uses
  %spec.select.2.i = zext i1 %i.az to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !9  ; 2 uses
  %i.bc = add i64 %i.ay, %i.bb                    ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = select i1 %i.az, i64 2, i64 1
  %.2.2.i = select i1 %i.bd, i64 %i.be, i64 %spec.select.2.i
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !9
  %i.bh = add i64 %i.bg, %i.am
  %i.bi = add i64 %i.bh, %.2.2.i
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %.split11, %.split10, %.split, %_ZN5arrowgeERKNS_15BasicDecimal256ES2_.exit, %_ZN5arrow15BasicDecimal256CI2NS_19GenericBasicDecimalIS0_Li256ELi4EEEIllEET_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5arrow15BasicDecimal25615FitsInPrecisionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !noalias !56 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !56 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !56 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !56 ; 3 uses
  %i.a = icmp slt i64 %.sroa.10.0.copyload.i, 0
  br i1 %i.a, label %bb.b, label %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = sub i64 0, %.sroa.0.0.copyload.i
  %i.c = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.d = zext i1 %i.c to i64                      ; 2 uses
  %i.e = xor i64 %.sroa.6.0.copyload.i, -1
  %i.f = add i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = select i1 %i.g, i64 %i.d, i64 0          ; 2 uses
  %i.i = xor i64 %.sroa.8.0.copyload.i, -1
  %i.j = add i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 %i.h, i64 0
  %i.m = xor i64 %.sroa.10.0.copyload.i, -1
  %i.n = add nuw i64 %i.l, %i.m
  br label %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit

_ZN5arrow15BasicDecimal2563AbsERKS0_.exit:        ; preds = %bb.a, %bb.b
  %.sroa.10.0.i = phi i64 [ %i.n, %bb.b ], [ %.sroa.10.0.copyload.i, %bb.a ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ %i.j, %bb.b ], [ %.sroa.8.0.copyload.i, %bb.a ] ; 2 uses
  %.sroa.6.0.i = phi i64 [ %i.f, %bb.b ], [ %.sroa.6.0.copyload.i, %bb.a ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.b, %bb.b ], [ %.sroa.0.0.copyload.i, %bb.a ]
  %i.o = sext i32 %1 to i64
  %i.p = getelementptr inbounds [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9    ; 2 uses
  %.not.i = icmp eq i64 %.sroa.10.0.i, %i.r
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit
  %i.s = icmp slt i64 %.sroa.10.0.i, %i.r
  br label %_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit

bb.d:                                             ; preds = %_ZN5arrow15BasicDecimal2563AbsERKS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load i64, ptr %i.t, align 16, !tbaa !9   ; 2 uses
  %.not2.i = icmp eq i64 %.sroa.8.0.i, %i.u
  br i1 %.not2.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ult i64 %.sroa.8.0.i, %i.u
  br label %_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !9    ; 2 uses
  %.not3.i = icmp eq i64 %.sroa.6.0.i, %i.x
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp ult i64 %.sroa.6.0.i, %i.x
  br label %_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit

bb.h:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.p, align 16, !tbaa !9
  %i.aa = icmp ult i64 %.sroa.0.0.i, %i.z
  br label %_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit

_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit:      ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  %i.ab = phi i1 [ %i.s, %bb.c ], [ %i.v, %bb.e ], [ %i.y, %bb.g ], [ %i.aa, %bb.h ]
  ret i1 %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZNK5arrow15BasicDecimal25619GetWholeAndFractionEiPS0_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.a
  %i.c = tail call noundef i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %2, ptr noundef %3) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal25618GetScaleMultiplierEi(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal25622GetHalfScaleMultiplierEi(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr @_ZN5arrowL26kDecimal256HalfPowersOfTenE, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow15BasicDecimal25611GetMaxValueEi(ptr dead_on_unwind noalias nofree writable sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.c = load i64, ptr %0, align 8, !tbaa !9, !alias.scope !59 ; 2 uses
  %i.d = add i64 %i.c, -1
  %.not = icmp eq i64 %i.c, 0                     ; 3 uses
  store i64 %i.d, ptr %0, align 8, !tbaa !9, !alias.scope !59
  %i.e = sext i1 %.not to i64
  %i.f = xor i1 %.not, true                       ; 2 uses
  %spec.select.1.i.i = zext i1 %i.f to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9, !alias.scope !59 ; 2 uses
  %i.i = add i64 %i.h, %i.e                       ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h                  ; 2 uses
  %i.k = select i1 %.not, i64 1, i64 2
  %.2.1.i.i = select i1 %i.j, i64 %i.k, i64 %spec.select.1.i.i
  store i64 %i.i, ptr %i.g, align 8, !tbaa !9, !alias.scope !59
  %i.l = select i1 %i.j, i1 true, i1 %i.f         ; 2 uses
  %spec.select.2.i.i = zext i1 %i.l to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9, !alias.scope !59 ; 2 uses
  %i.o = add i64 %i.n, -1
  %i.p = add i64 %i.o, %.2.1.i.i                  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = select i1 %i.l, i64 2, i64 1
  %.2.2.i.i = select i1 %i.q, i64 %i.r, i64 %spec.select.2.i.i
  store i64 %i.p, ptr %i.m, align 8, !tbaa !9, !alias.scope !59
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9, !alias.scope !59
  %i.u = add i64 %i.t, -1
  %i.v = add i64 %i.u, %.2.2.i.i
  store i64 %i.v, ptr %i.s, align 8, !tbaa !9, !alias.scope !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrowplERKNS_15BasicDecimal256ES2_(ptr dead_on_unwind noalias nofree writable sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load i64, ptr %2, align 8, !tbaa !9
  %i.b = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.c = add i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %.2.i = zext i1 %i.d to i64
  store i64 %i.c, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.g = add i64 %i.f, %.2.i                      ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.f                  ; 2 uses
  %spec.select.1.i = zext i1 %i.h to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9    ; 2 uses
  %i.k = add i64 %i.g, %i.j                       ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = select i1 %i.h, i64 2, i64 1
  %.2.1.i = select i1 %i.l, i64 %i.m, i64 %spec.select.1.i
  store i64 %i.k, ptr %i.i, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9    ; 2 uses
  %i.p = add i64 %.2.1.i, %i.o                    ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o                  ; 2 uses
  %spec.select.2.i = zext i1 %i.q to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9    ; 2 uses
  %i.t = add i64 %i.p, %i.s                       ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = select i1 %i.q, i64 2, i64 1
  %.2.2.i = select i1 %i.u, i64 %i.v, i64 %spec.select.2.i
  store i64 %i.t, ptr %i.r, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !9
  %i.aa = add i64 %i.z, %i.x
  %i.ab = add i64 %i.aa, %.2.2.i
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrowcoERKNS_15BasicDecimal256E(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x i64>, ptr %1, align 8, !tbaa !9
  %i.c = xor <2 x i64> %i.b, splat (i64 -1)
  store <2 x i64> %i.c, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <2 x i64>, ptr %i.a, align 8, !tbaa !9
  %i.e = xor <2 x i64> %i.d, splat (i64 -1)
  store <2 x i64> %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256dVERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal256", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %0, ptr noundef nonnull %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrowdvERKNS_15BasicDecimal256ES2_(ptr dead_on_unwind noalias nofree writable sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %"class.arrow::BasicDecimal256", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %0, ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!4, !4, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTSN5arrow17SmallBasicDecimalIiEE", !5, i64 0}
!11 = !{!10, !5, i64 0}
!12 = !{!"_ZTSN5arrow17SmallBasicDecimalIlEE", !8, i64 0}
!13 = !{!12, !8, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"branch_weights", !"expected", i32 2146234828, i32 1248820}
!18 = !{!"branch_weights", !"expected", i32 1248820, i32 2146234828}
!19 = !{i64 0, i64 16, !7}
!20 = !{i64 0, i64 32, !7}
!21 = distinct !{!21, !14, !15, !16}
!22 = distinct !{!22, !14, !16, !15}
!23 = distinct !{!23, !14, !16, !15}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!27 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!28 = distinct !{!28, !"_ZN5arrowngERKNS_15BasicDecimal256E"}
!29 = distinct !{!29, !28, !"_ZN5arrowngERKNS_15BasicDecimal256E: argument 0"}
!30 = !{!29}
!31 = distinct !{!31, !"_ZN5arrow15BasicDecimal2563AbsERKS0_"}
!32 = distinct !{!32, !31, !"_ZN5arrow15BasicDecimal2563AbsERKS0_: argument 0"}
!33 = distinct !{!33, !"_ZN5arrow15BasicDecimal2563AbsERKS0_"}
!34 = distinct !{!34, !33, !"_ZN5arrow15BasicDecimal2563AbsERKS0_: argument 0"}
!35 = !{!32}
!36 = !{!34}
!37 = distinct !{!37, !14, !15, !16}
!38 = distinct !{!38, !14, !16, !15}
!39 = distinct !{!39, !14, !15, !16}
!40 = distinct !{!40, !14, !16, !15}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14, !15, !16}
!44 = distinct !{!44, !14, !16, !15}
!45 = distinct !{!45, !14, !15, !16}
!46 = distinct !{!46, !14, !16, !15}
!47 = distinct !{!47, !14, !15, !16}
!48 = distinct !{!48, !14, !16, !15}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = distinct !{!54, !"_ZN5arrow15BasicDecimal2563AbsERKS0_"}
!55 = distinct !{!55, !54, !"_ZN5arrow15BasicDecimal2563AbsERKS0_: argument 0"}
!56 = !{!55}
!57 = distinct !{!57, !"_ZN5arrowplERKNS_15BasicDecimal256ES2_"}
!58 = distinct !{!58, !57, !"_ZN5arrowplERKNS_15BasicDecimal256ES2_: argument 0"}
!59 = !{!58}
end_hunk_4
