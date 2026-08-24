Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/AuxiliaryWeakExternal?download=true
inline.NumInlined: 2922
inline.NumDeleted: 872
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0

$_ZN4LIEF12BinaryStream11bind_binaryERNS_6BinaryE = comdat any

$_ZN4LIEF4COFF21AuxiliaryWeakExternalC2ERKS1_ = comdat any

$_ZN6spdlog6logger4log_IJRKiEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_ = comdat any

$_ZN6spdlog7details10backtracer9push_backERKNS0_7log_msgE = comdat any

$_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEE9push_backEOS2_ = comdat any

$_ZZN3fmt3v126detail15do_count_digitsEjE5table = comdat any

$_ZZN3fmt3v126detail7digits2EmE4data = comdat any

$_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = comdat any

$_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = comdat any

$_ZTIN3fmt3v1212format_facetISt6localeEE = comdat any

$_ZTSN3fmt3v1212format_facetISt6localeEE = comdat any

$_ZTVN3fmt3v1212format_facetISt6localeEE = comdat any

$_ZZN3fmt3v126detail12is_printableEjE11singletons0 = comdat any

$_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = comdat any

$_ZZN3fmt3v126detail12is_printableEjE11singletons1 = comdat any

$_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = comdat any

$_ZZN3fmt3v126detail12is_printableEjE7normal0 = comdat any

$_ZZN3fmt3v126detail12is_printableEjE7normal1 = comdat any

$_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = comdat any

$_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = comdat any

$_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = comdat any

$_ZTVN3fmt3v1212format_errorE = comdat any

$_ZTIN3fmt3v1212format_errorE = comdat any

$_ZTSN3fmt3v1212format_errorE = comdat any

$_ZTVN4LIEF10SpanStreamE = comdat any

$_ZTIN4LIEF10SpanStreamE = comdat any

$_ZTSN4LIEF10SpanStreamE = comdat any

$_ZTIN4LIEF12BinaryStreamE = comdat any

$_ZTSN4LIEF12BinaryStreamE = comdat any

$_ZZN6spdlog7details2os9thread_idEvE3tid = comdat any

$_ZGVZN6spdlog7details2os9thread_idEvE3tid = comdat any

@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1212format_facetISt6localeE2idE), align 8
@.str = private unnamed_addr constant [55 x i8] c"Failed to parse AuxiliaryWeakExternal field (line: {})\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SEARCH_NOLIBRARY\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"SEARCH_LIBRARY\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"SEARCH_ALIAS\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ANTI_DEPENDENCY\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"AuxiliaryWeakExternal {\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"  Symbol index: {}\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"  Characteristics: {} ({})\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN4LIEF4COFF21AuxiliaryWeakExternalE = constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4LIEF4COFF21AuxiliaryWeakExternalE, ptr @_ZNK4LIEF4COFF21AuxiliaryWeakExternal5cloneEv, ptr @_ZNK4LIEF4COFF21AuxiliaryWeakExternal9to_stringB5cxx11Ev, ptr @_ZN4LIEF4COFF21AuxiliaryWeakExternalD2Ev, ptr @_ZN4LIEF4COFF21AuxiliaryWeakExternalD0Ev] }, align 8
@_ZTIN4LIEF4COFF21AuxiliaryWeakExternalE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4LIEF4COFF21AuxiliaryWeakExternalE, ptr @_ZTIN4LIEF4COFF15AuxiliarySymbolE }, align 8
@_ZTSN4LIEF4COFF21AuxiliaryWeakExternalE = constant [36 x i8] c"N4LIEF4COFF21AuxiliaryWeakExternalE\00", align 1
@_ZTIN4LIEF4COFF15AuxiliarySymbolE = external constant ptr
@.str.12 = private unnamed_addr constant [98 x i8] c"/opt-bench/work/lief/LIEF/build/_deps/lief_spdlog_project-src/include/spdlog/fmt/bundled/format.h\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [28 x i8] c"%s:%d: assertion failed: %s\00", align 1
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], comdat, align 16
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", comdat, align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], comdat, align 16
@.str.19 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTINSt6locale5facetE = external constant ptr
@_ZTIN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetISt6localeEE, ptr @_ZTINSt6locale5facetE }, comdat, align 8
@_ZTSN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant [36 x i8] c"N3fmt3v1212format_facetISt6localeEE\00", comdat, align 1
@_ZTVN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetISt6localeEE, ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev, ptr @_ZN3fmt3v1212format_facetISt6localeED0Ev, ptr @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, comdat, align 8
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@.str.21 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr hidden local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr hidden local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr hidden local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr hidden local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr hidden local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr hidden local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", comdat, align 16
@.str.24 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], comdat, align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [24 x %"class.fmt::v12::detail::uint128_fallback"] [%"class.fmt::v12::detail::uint128_fallback" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128_fallback" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128_fallback" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128_fallback" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128_fallback" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128_fallback" { i64 7239297505920716784, i64 -1063354554122040811 }], comdat, align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = linkonce_odr hidden local_unnamed_addr constant [27 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125, i64 390625, i64 1953125, i64 9765625, i64 48828125, i64 244140625, i64 1220703125, i64 6103515625, i64 30517578125, i64 152587890625, i64 762939453125, i64 3814697265625, i64 19073486328125, i64 95367431640625, i64 476837158203125, i64 2384185791015625, i64 11920928955078125, i64 59604644775390625, i64 298023223876953125, i64 1490116119384765625], comdat, align 16
@.str.36 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.37 = private unnamed_addr constant [102 x i8] c"/opt-bench/work/lief/LIEF/build/_deps/lief_spdlog_project-src/include/spdlog/fmt/bundled/format-inl.h\00", align 1
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTIN3fmt3v1212format_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr hidden constant [25 x i8] c"N3fmt3v1212format_errorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.39 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.45 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.46 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.56 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.57 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@_ZTVN4LIEF10SpanStreamE = linkonce_odr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4LIEF10SpanStreamE, ptr @_ZN4LIEF12BinaryStreamD2Ev, ptr @_ZN4LIEF10SpanStreamD0Ev, ptr @_ZNK4LIEF10SpanStream4sizeEv, ptr @_ZN4LIEF12BinaryStream9peek_dataERSt6vectorIhSaIhEEmmm, ptr @_ZN4LIEF12BinaryStream9read_dataERSt6vectorIhSaIhEEm, ptr @_ZNK4LIEF10SpanStream1pEv, ptr @_ZN4LIEF12BinaryStream5startEv, ptr @_ZN4LIEF12BinaryStream1pEv, ptr @_ZN4LIEF12BinaryStream3endEv, ptr @_ZNK4LIEF10SpanStream5startEv, ptr @_ZNK4LIEF10SpanStream3endEv, ptr @_ZNK4LIEF10SpanStream7read_atEmmm, ptr @_ZNK4LIEF12BinaryStream7peek_inEPvmmm, ptr @_ZN4LIEF12BinaryStream11bind_binaryERNS_6BinaryE] }, comdat, align 8
@_ZTIN4LIEF10SpanStreamE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4LIEF10SpanStreamE, ptr @_ZTIN4LIEF12BinaryStreamE }, comdat, align 8
@_ZTSN4LIEF10SpanStreamE = linkonce_odr constant [20 x i8] c"N4LIEF10SpanStreamE\00", comdat, align 1
@_ZTIN4LIEF12BinaryStreamE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4LIEF12BinaryStreamE }, comdat, align 8
@_ZTSN4LIEF12BinaryStreamE = linkonce_odr constant [22 x i8] c"N4LIEF12BinaryStreamE\00", comdat, align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"LIEF\00", align 1
@_ZTVN4LIEF4COFF15AuxiliarySymbolE = external constant { [6 x ptr] }, align 8
@_ZZN6spdlog7details2os9thread_idEvE3tid = linkonce_odr hidden thread_local global i64 0, comdat, align 8
@_ZGVZN6spdlog7details2os9thread_idEvE3tid = linkonce_odr hidden thread_local local_unnamed_addr global i64 0, comdat, align 8
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.116 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"
@switch.table._ZNK4LIEF4COFF21AuxiliaryWeakExternal9to_stringB5cxx11Ev = private unnamed_addr constant [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #1 section ".text.startup" comdat($_ZN3fmt3v1212format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF4COFF21AuxiliaryWeakExternal5parseERKSt6vectorIhSaIhEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.38") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"class.LIEF::SpanStream", align 8  ; 11 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::vector.46", align 16   ; 8 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.e = load ptr, ptr %1, align 8, !tbaa !8      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i8 0, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 3, ptr %i.m, align 4, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %5, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.e, ptr %i.n, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.j, ptr %i.o, align 8, !tbaa !23
  %i.p = icmp ult i64 %i.j, 4
  %.not = icmp eq ptr %i.e, null
  %or.cond = or i1 %.not, %i.p
  br i1 %or.cond, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.a
  %i.q = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.115) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 29, ptr %i.b, align 4, !tbaa !24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKiEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.r, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 3, ptr nonnull @.str, i64 54, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.s = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25, !noalias !30 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 4, ptr %i.t, align 8, !tbaa !33, !noalias !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !noalias !30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF4COFF21AuxiliaryWeakExternalE, i64 16), ptr %i.s, align 8, !tbaa !19, !noalias !30
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false), !noalias !30
  store ptr %i.s, ptr %0, align 8, !tbaa !39, !alias.scope !30
  br label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.a
  %i.w = load i32, ptr %i.e, align 1
  store i64 4, ptr %i.k, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.x = call { ptr, i8 } @_ZNK4LIEF10SpanStream7read_atEmmm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 4, i64 noundef 4, i64 noundef 0) #24, !inline_history !42 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.x, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.x, 1
  %i.y = trunc nuw i8 %.fca.1.extract.i to i1
  %i.z = icmp ne ptr %.fca.0.extract.i, null
  %or.cond.not.i = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond.not.i, label %bb.b, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit6.thread

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit6.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  store i64 4, ptr %i.k, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.aa = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.115) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 35, ptr %i.c, align 4, !tbaa !24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKiEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ab, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 3, ptr nonnull @.str, i64 54, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.ac = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25, !noalias !43 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 4, ptr %i.ad, align 8, !tbaa !33, !noalias !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false), !noalias !43
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF4COFF21AuxiliaryWeakExternalE, i64 16), ptr %i.ac, align 8, !tbaa !19, !noalias !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 0, i64 32, i1 false), !noalias !43
  store ptr %i.ac, ptr %0, align 8, !tbaa !39, !alias.scope !43
  br label %bb.f

bb.b:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.ag = load i32, ptr %.fca.0.extract.i, align 1 ; 2 uses
  store i32 %i.ag, ptr %i.a, align 4
  store i64 4, ptr %i.k, align 8, !tbaa !41
  %i.ah = load i8, ptr %i.l, align 8, !tbaa !13, !range !46, !noundef !47
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.c, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit6

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #24
  %.pre.i4 = load i64, ptr %i.k, align 8, !tbaa !41
  %i.aj = add i64 %.pre.i4, 4
  %.pre31 = load i32, ptr %i.a, align 4, !tbaa !24
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit6

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit6: ; preds = %bb.b, %bb.c
  %i.ak = phi i32 [ %i.ag, %bb.b ], [ %.pre31, %bb.c ]
  %i.al = phi i64 [ 8, %bb.b ], [ %i.aj, %bb.c ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store i64 %i.al, ptr %i.k, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.am = load ptr, ptr %5, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.al, i64 noundef 10, i64 noundef 0) #24, !inline_history !48
  %i.aq = and i64 %i.ap, 4294967296
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.d, label %.thread

.thread:                                          ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit6
  %i.ar = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25, !noalias !49 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !52, !noalias !49
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 4, ptr %i.au, align 8, !tbaa !33, !noalias !49
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !noalias !49
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF4COFF21AuxiliaryWeakExternalE, i64 16), ptr %i.ar, align 8, !tbaa !19, !noalias !49
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i32 %i.w, ptr %i.aw, align 8, !tbaa !53, !noalias !49
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  store i32 %i.ak, ptr %i.ax, align 4, !tbaa !55, !noalias !49
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.az = load <2 x ptr>, ptr %6, align 16, !tbaa !56, !noalias !49
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !tbaa !56, !noalias !49
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store ptr %i.at, ptr %i.ba, align 8, !tbaa !52, !noalias !49
  store ptr %i.ar, ptr %0, align 8, !tbaa !39
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit6
  %i.bb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.115) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 41, ptr %i.d, align 4, !tbaa !24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKiEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 3, ptr nonnull @.str, i64 54, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.bd = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25, !noalias !57 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 4, ptr %i.be, align 8, !tbaa !33, !noalias !57
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false), !noalias !57
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF4COFF21AuxiliaryWeakExternalE, i64 16), ptr %i.bd, align 8, !tbaa !19, !noalias !57
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i8 0, i64 32, i1 false), !noalias !57
  %.pre = load ptr, ptr %6, align 16, !tbaa !8    ; 3 uses
  store ptr %i.bd, ptr %0, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !52
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %.pre to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.bl) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.thread, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit6.thread, %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF12BinaryStream9read_dataERSt6vectorIhSaIhEEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41
  %i.c = load ptr, ptr %0, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 %i.e(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %2, i64 noundef 0) #24
  %i.g = and i64 %i.f, 4294967296
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !tbaa !41
  %i.i = add i64 %i.h, %2
  store i64 %i.i, ptr %i.a, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.2.0 = phi i64 [ 4294967297, %bb.b ], [ 1, %bb.a ]
  ret i64 %.sroa.2.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF12BinaryStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN4LIEF4COFF9to_stringENS0_21AuxiliaryWeakExternal15CHARACTERISTICSE(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4LIEF4COFF21AuxiliaryWeakExternal9to_stringB5cxx11Ev, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi ptr [ @.str.1, %bb.a ], [ %switch.load, %switch.lookup ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF4COFF21AuxiliaryWeakExternal9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 align 2 {
_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer.473", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.fmt::v12::basic_memory_buffer.473", align 8 ; 10 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.1107", align 16 ; 5 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.1105", align 16 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 30 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.c) #24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 328
  store ptr null, ptr %i.d, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 336
  store i8 0, ptr %i.e, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 337
  store i8 0, ptr %i.f, align 1, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.h, ptr %8, align 8, !tbaa !19
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.j = getelementptr i8, ptr %i.h, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %8, i64 %i.k
  store ptr %i.i, ptr %i.l, align 8, !tbaa !19
  %i.m = load ptr, ptr %8, align 8, !tbaa !19
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %8, i64 %i.o
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.p, ptr noundef null) #24
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %8, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.c, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.q, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #24
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.q, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 16, ptr %i.t, align 8, !tbaa !77
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 4 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !83
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.w, align 8, !tbaa !84
  store i8 0, ptr %i.v, align 8, !tbaa !85
  %i.x = load ptr, ptr %8, align 8, !tbaa !19
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %8, i64 %i.z
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.aa, ptr noundef nonnull %i.q) #24
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.6, i64 noundef 24) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !86
  store i32 %i.ad, ptr %7, align 16, !tbaa !85, !noalias !86
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !89
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !noalias !89
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.af, align 8, !tbaa !92, !noalias !89
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !94, !noalias !89
  store i64 500, ptr %i.ae, align 8, !tbaa !95, !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !89
  store ptr @.str.7, ptr %3, align 8, !tbaa !56, !noalias !89
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 19, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !96, !noalias !89
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.ai, align 8, !tbaa !97, !noalias !89
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %i.aj, align 8, !tbaa !100, !noalias !89
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 2, ptr %i.ak, align 8, !tbaa !102, !noalias !89
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %7, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !85, !noalias !89
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr null, ptr %i.al, align 8, !tbaa !104, !noalias !89
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.7, i64 19, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !89
end_hunk_0
