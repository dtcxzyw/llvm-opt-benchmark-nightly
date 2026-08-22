Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/GnuHash?download=true
inline.NumInlined: 3520
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0
$_ZNK3fmt3v126detail16native_formatterIycLNS1_4typeE4EE6formatINS0_7contextEEEDTcldtfp0_3outEERKyRT_ = comdat any

$_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINS0_9join_viewIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESE_cEEEEvPvRNS0_13parse_contextIcEERS3_ = comdat any

$_ZNK3fmt3v129formatterINS0_9join_viewIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEESA_cEEcvE6formatINS0_7contextEEEDTcldtfp0_3outEERKSB_RT_ = comdat any

$_ZNK3fmt3v126detail16native_formatterIjcLNS1_4typeE2EE6formatINS0_7contextEEEDTcldtfp0_3outEERKjRT_ = comdat any

$_ZN4LIEF12BinaryStream15peek_objects_atImEENS_10ok_error_tEmRSt6vectorIT_SaIS4_EEm = comdat any

$_ZN4LIEF12BinaryStream15peek_objects_atIjEENS_10ok_error_tEmRSt6vectorIT_SaIS4_EEm = comdat any

$_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_ = comdat any

$_ZN6spdlog6logger4log_IJRKjS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_ = comdat any

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

$_ZZN6spdlog7details2os9thread_idEvE3tid = comdat any

$_ZGVZN6spdlog7details2os9thread_idEvE3tid = comdat any

@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1212format_facetISt6localeE2idE), align 8
@.str = private unnamed_addr constant [17 x i8] c"Parsing GNU hash\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to read bucket count\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to read symndx\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to read maskwords\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Failed to read shift2\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"maskwords is not a power of 2\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"GNU hash maskwords corrupted\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"GNU hash buckets corrupted\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to read hash values (count={})\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"GNU hash: symbol index ({}) is larger than the max bucket ({})\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Number of buckets:           {}\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"First symbol index:          {}\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Shift Count:                 {}\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Bloom filters:               [{:#x}]\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Buckets:                     [{}]\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Hash values:                 [{:#x}]\0A\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVN4LIEF3ELF7GnuHashE = constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN4LIEF3ELF7GnuHashE, ptr @_ZNK4LIEF6ObjecteqERKS0_, ptr @_ZNK4LIEF6ObjectneERKS0_, ptr @_ZN4LIEF3ELF7GnuHashD2Ev, ptr @_ZN4LIEF3ELF7GnuHashD0Ev, ptr @_ZNK4LIEF3ELF7GnuHash6acceptERNS_7VisitorE] }, align 8
@_ZTIN4LIEF3ELF7GnuHashE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4LIEF3ELF7GnuHashE, ptr @_ZTIN4LIEF6ObjectE }, align 8
@_ZTSN4LIEF3ELF7GnuHashE = constant [20 x i8] c"N4LIEF3ELF7GnuHashE\00", align 1
@_ZTIN4LIEF6ObjectE = external constant ptr
@.str.17 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.19 = private unnamed_addr constant [98 x i8] c"/opt-bench/work/lief/LIEF/build/_deps/lief_spdlog_project-src/include/spdlog/fmt/bundled/format.h\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [28 x i8] c"%s:%d: assertion failed: %s\00", align 1
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], comdat, align 16
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", comdat, align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], comdat, align 16
@.str.26 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTINSt6locale5facetE = external constant ptr
@_ZTIN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetISt6localeEE, ptr @_ZTINSt6locale5facetE }, comdat, align 8
@_ZTSN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant [36 x i8] c"N3fmt3v1212format_facetISt6localeEE\00", comdat, align 1
@_ZTVN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetISt6localeEE, ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev, ptr @_ZN3fmt3v1212format_facetISt6localeED0Ev, ptr @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, comdat, align 8
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@.str.28 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr hidden local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr hidden local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr hidden local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr hidden local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr hidden local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr hidden local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", comdat, align 16
@.str.31 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], comdat, align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [24 x %"class.fmt::v12::detail::uint128_fallback"] [%"class.fmt::v12::detail::uint128_fallback" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128_fallback" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128_fallback" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128_fallback" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128_fallback" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128_fallback" { i64 7239297505920716784, i64 -1063354554122040811 }], comdat, align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = linkonce_odr hidden local_unnamed_addr constant [27 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125, i64 390625, i64 1953125, i64 9765625, i64 48828125, i64 244140625, i64 1220703125, i64 6103515625, i64 30517578125, i64 152587890625, i64 762939453125, i64 3814697265625, i64 19073486328125, i64 95367431640625, i64 476837158203125, i64 2384185791015625, i64 11920928955078125, i64 59604644775390625, i64 298023223876953125, i64 1490116119384765625], comdat, align 16
@.str.43 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.44 = private unnamed_addr constant [102 x i8] c"/opt-bench/work/lief/LIEF/build/_deps/lief_spdlog_project-src/include/spdlog/fmt/bundled/format-inl.h\00", align 1
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTIN3fmt3v1212format_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr hidden constant [25 x i8] c"N3fmt3v1212format_errorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.46 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.52 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.53 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.63 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.64 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"LIEF\00", align 1
@_ZZN6spdlog7details2os9thread_idEvE3tid = linkonce_odr hidden thread_local global i64 0, comdat, align 8
@_ZGVZN6spdlog7details2os9thread_idEvE3tid = linkonce_odr hidden thread_local local_unnamed_addr global i64 0, comdat, align 8
@.str.122 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.123 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"

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
define weak_odr hidden void @_ZN4LIEF3ELF7GnuHash5parseINS0_7details5ELF64EEESt10unique_ptrIS1_St14default_deleteIS1_EERNS_10SpanStreamEm(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"class.std::vector.46", align 8   ; 10 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 1, ptr nonnull @.str, i64 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 21 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25, !noalias !19 ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.j, i8 0, i64 104, i1 false), !noalias !19
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.j) #24, !noalias !19
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF7GnuHashE, i64 16), ptr %i.j, align 8, !tbaa !22, !noalias !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.k, i8 0, i64 96, i1 false), !noalias !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i64 64, ptr %i.l, align 8, !tbaa !24
  %i.m = load i64, ptr %i.h, align 8, !tbaa !14   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.n = load ptr, ptr %1, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i64 %i.p(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.d, i64 noundef %i.m, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.r = and i64 %i.q, 4294967296
  %.not.i.i = icmp eq i64 %i.r, 0
  store i64 %i.m, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.b

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.s = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.1, i64 27)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.d) #24
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.m, %bb.b ], [ %.pre.i, %bb.c ]
  %i.y = load i32, ptr %i.d, align 4, !tbaa !37   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.z = add i64 %i.x, 4                          ; 4 uses
  store i64 %i.z, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 0, ptr %i.c, align 4, !tbaa !37
  %i.aa = load ptr, ptr %1, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.c, i64 noundef %i.z, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.ae = and i64 %i.ad, 4294967296
  %.not.i.i17 = icmp eq i64 %i.ae, 0
  store i64 %i.z, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i17, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread, label %bb.d

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.af = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ag, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.2, i64 21)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.ah = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22

bb.e:                                             ; preds = %bb.d
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.c) #24
  %.pre.i20 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22: ; preds = %bb.d, %bb.e
  %i.aj = phi i64 [ %i.z, %bb.d ], [ %.pre.i20, %bb.e ]
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.al = add i64 %i.aj, 4                        ; 4 uses
  store i64 %i.al, ptr %i.h, align 8, !tbaa !14
  store i32 %i.ak, ptr %i.k, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !37
  %i.am = load ptr, ptr %1, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.b, i64 noundef %i.al, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.aq = and i64 %i.ap, 4294967296
  %.not.i.i23 = icmp eq i64 %i.aq, 0
  store i64 %i.al, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i23, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.as, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.3, i64 24)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22
  %i.at = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #24
  %.pre.i26 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28: ; preds = %bb.f, %bb.g
  %i.av = phi i64 [ %i.al, %bb.f ], [ %.pre.i26, %bb.g ]
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !37  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ax = add i64 %i.av, 4                        ; 4 uses
  store i64 %i.ax, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !37
  %i.ay = load ptr, ptr %1, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, i64 noundef %i.ax, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.bc = and i64 %i.bb, 4294967296
  %.not.i.i29 = icmp eq i64 %i.bc, 0
  store i64 %i.ax, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i29, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34.thread, label %bb.h

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.be, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.4, i64 21)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.h:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28
  %i.bf = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34

bb.i:                                             ; preds = %bb.h
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #24
  %.pre.i32 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34: ; preds = %bb.h, %bb.i
  %i.bh = phi i64 [ %i.ax, %bb.h ], [ %.pre.i32, %bb.i ]
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bj = add i64 %i.bh, 4
  store i64 %i.bj, ptr %i.h, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !43
  %i.bl = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aw)
  %.not = icmp samesign ult i32 %i.bl, 2
  br i1 %.not, label %bb.j, label %.thread

.thread:                                          ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34
  %i.bm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bn, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 3, ptr nonnull @.str.5, i64 29)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.bo = icmp eq i32 %i.aw, 0
  br i1 %i.bo, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.bp = zext i32 %i.aw to i64                   ; 2 uses
  %i.bq = load i64, ptr %i.h, align 8, !tbaa !14
  %i.br = call i64 @_ZN4LIEF12BinaryStream15peek_objects_atImEENS_10ok_error_tEmRSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.bp)
  %i.bs = and i64 %i.br, 4294967296
  %.not.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = shl nuw nsw i64 %i.bp, 3
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !14
  %i.bv = add i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.h, align 8, !tbaa !14
  %.pre = load ptr, ptr %11, align 8, !tbaa !44
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre85 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !44
  %i.bw = ptrtoint ptr %.pre85 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %i.bx = phi i64 [ 0, %bb.j ], [ %i.bw, %bb.l ]
  %i.by = phi ptr [ null, %bb.j ], [ %.pre, %bb.l ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bx, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3                 ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !45
  %.pre8.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !tbaa !46
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cg = phi ptr [ %.pre8.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.db, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i.i ] ; 3 uses
  %i.ch = phi ptr [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dc, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i.i ] ; 3 uses
  %.07.i.i.i.i.i = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i ], [ %i.de, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.dd, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = load i64, ptr %.056.i.i.i.i.i, align 8, !tbaa !47
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !47
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !45
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !48 ; 4 uses
  %i.cl = ptrtoint ptr %i.cg to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 6 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775800
  br i1 %i.co, label %bb.q, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.cp = ashr exact i64 %i.cn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cq = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %i.cp ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cp
  %i.cs = call i64 @llvm.umin.i64(i64 %i.cq, i64 1152921504606846975)
  %i.ct = select i1 %i.cr, i64 1152921504606846975, i64 %i.cs ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ct, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i)
  %i.cu = shl nuw nsw i64 %i.ct, 3
  %i.cv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #25 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.cn ; 2 uses
  %i.cx = load i64, ptr %.056.i.i.i.i.i, align 8, !tbaa !47
  store i64 %i.cx, ptr %i.cw, align 8, !tbaa !47
  %i.cy = icmp sgt i64 %i.cn, 0
  br i1 %i.cy, label %bb.r, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cv, ptr align 8 %i.ck, i64 %i.cn, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cn) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  store ptr %i.cv, ptr %i.bz, align 8, !tbaa !48
  store ptr %i.cz, ptr %i.ce, align 8, !tbaa !45
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ct ; 2 uses
  store ptr %i.da, ptr %i.cf, align 8, !tbaa !46
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i, %bb.o
  %i.db = phi ptr [ %i.cg, %bb.o ], [ %i.da, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i ]
  %i.dc = phi ptr [ %i.cj, %bb.o ], [ %i.cz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 8
  %i.de = add nsw i64 %.07.i.i.i.i.i, -1
  %i.df = icmp sgt i64 %.07.i.i.i.i.i, 1
  br i1 %i.df, label %bb.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_.exit, !llvm.loop !49

bb.t:                                             ; preds = %bb.k
  %i.dg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dh, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.6, i64 28)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSERKm.exit.i.i.i.i.i, %bb.m, %bb.t
  %i.di = zext i32 %i.y to i64                    ; 2 uses
  %i.dj = icmp eq i32 %i.y, 0
  br i1 %i.dj, label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread, label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.dl = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dm = call i64 @_ZN4LIEF12BinaryStream15peek_objects_atIjEENS_10ok_error_tEmRSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 noundef %i.di)
  %i.dn = and i64 %i.dm, 4294967296
  %.not.i35 = icmp eq i64 %i.dn, 0
  br i1 %.not.i35, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = shl nuw nsw i64 %i.di, 2
  %i.dp = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dq = add i64 %i.dp, %i.do
  store i64 %i.dq, ptr %i.h, align 8, !tbaa !14
  br label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.dr = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ds, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.7, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread

_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread: ; preds = %bb.v, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_.exit, %bb.w
  %.not15 = icmp eq i64 %2, 0
  br i1 %.not15, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread
  %i.dt = load i32, ptr %i.k, align 8, !tbaa !42  ; 2 uses
  %i.du = zext i32 %i.dt to i64
  %.not16 = icmp ult i64 %2, %i.du
  br i1 %.not16, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.dv = trunc i64 %2 to i32
  %i.dw = sub i32 %i.dv, %i.dt                    ; 2 uses
  store i32 %i.dw, ptr %i.e, align 4, !tbaa !37
  %i.dx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.dy = zext i32 %i.dw to i64
  %i.dz = call i64 @_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 noundef %i.dy)
  %i.ea = and i64 %i.dz, 4294967296
  %.not84 = icmp eq i64 %i.ea, 0
  br i1 %.not84, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  call void @_ZN4LIEF7logging6Logger3errIJjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x, %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit.thread
  %i.ec = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ed = sub i64 %i.ec, %i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !51
  %i.ef = ptrtoint ptr %i.j to i64
  store i64 %i.ef, ptr %0, align 8, !tbaa !52
  %i.eg = load ptr, ptr %11, align 8, !tbaa !48   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !46
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #27
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZNSt10unique_ptrIN4LIEF3ELF7GnuHashESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34.thread
  store ptr null, ptr %0, align 8, !tbaa !54
  %i.em = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(104) %i.j) #24, !inline_history !56
  br label %_ZNSt10unique_ptrIN4LIEF3ELF7GnuHashESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3ELF7GnuHashESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.ad, %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call i64 @_ZN4LIEF12BinaryStream15peek_objects_atIjEENS_10ok_error_tEmRSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2)
  %i.e = and i64 %i.d, 4294967296
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl i64 %2, 2
  %i.g = load i64, ptr %i.b, align 8, !tbaa !14
  %i.h = add i64 %i.g, %i.f
  store i64 %i.h, ptr %i.b, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.2.1 = phi i64 [ 4294967297, %bb.a ], [ 4294967297, %bb.c ], [ 1, %bb.b ]
  ret i64 %.sroa.2.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7logging6Logger3errIJjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN4LIEF3ELF7GnuHash5parseINS0_7details5ELF32EEESt10unique_ptrIS1_St14default_deleteIS1_EERNS_10SpanStreamEm(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"class.std::vector.51", align 8   ; 10 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 1, ptr nonnull @.str, i64 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 21 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25, !noalias !57 ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.j, i8 0, i64 104, i1 false), !noalias !57
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.j) #24, !noalias !57
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF7GnuHashE, i64 16), ptr %i.j, align 8, !tbaa !22, !noalias !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.k, i8 0, i64 96, i1 false), !noalias !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i64 32, ptr %i.l, align 8, !tbaa !24
  %i.m = load i64, ptr %i.h, align 8, !tbaa !14   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.n = load ptr, ptr %1, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i64 %i.p(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.d, i64 noundef %i.m, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.r = and i64 %i.q, 4294967296
  %.not.i.i = icmp eq i64 %i.r, 0
  store i64 %i.m, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.b

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.s = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.1, i64 27)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.d) #24
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.m, %bb.b ], [ %.pre.i, %bb.c ]
  %i.y = load i32, ptr %i.d, align 4, !tbaa !37   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.z = add i64 %i.x, 4                          ; 4 uses
  store i64 %i.z, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 0, ptr %i.c, align 4, !tbaa !37
  %i.aa = load ptr, ptr %1, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.c, i64 noundef %i.z, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.ae = and i64 %i.ad, 4294967296
  %.not.i.i17 = icmp eq i64 %i.ae, 0
  store i64 %i.z, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i17, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread, label %bb.d

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.af = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ag, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.2, i64 21)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.ah = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22

bb.e:                                             ; preds = %bb.d
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.c) #24
  %.pre.i20 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22: ; preds = %bb.d, %bb.e
  %i.aj = phi i64 [ %i.z, %bb.d ], [ %.pre.i20, %bb.e ]
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.al = add i64 %i.aj, 4                        ; 4 uses
  store i64 %i.al, ptr %i.h, align 8, !tbaa !14
  store i32 %i.ak, ptr %i.k, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !37
  %i.am = load ptr, ptr %1, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.b, i64 noundef %i.al, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.aq = and i64 %i.ap, 4294967296
  %.not.i.i23 = icmp eq i64 %i.aq, 0
  store i64 %i.al, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i23, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.as, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.3, i64 24)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22
  %i.at = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #24
  %.pre.i26 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28: ; preds = %bb.f, %bb.g
  %i.av = phi i64 [ %i.al, %bb.f ], [ %.pre.i26, %bb.g ]
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !37  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ax = add i64 %i.av, 4                        ; 4 uses
  store i64 %i.ax, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !37
  %i.ay = load ptr, ptr %1, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, i64 noundef %i.ax, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.bc = and i64 %i.bb, 4294967296
  %.not.i.i29 = icmp eq i64 %i.bc, 0
  store i64 %i.ax, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i29, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34.thread, label %bb.h

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.be, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.4, i64 21)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.h:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28
  %i.bf = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34

bb.i:                                             ; preds = %bb.h
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #24
  %.pre.i32 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34: ; preds = %bb.h, %bb.i
  %i.bh = phi i64 [ %i.ax, %bb.h ], [ %.pre.i32, %bb.i ]
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bj = add i64 %i.bh, 4
  store i64 %i.bj, ptr %i.h, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !43
  %i.bl = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aw)
  %.not = icmp samesign ult i32 %i.bl, 2
  br i1 %.not, label %bb.j, label %.thread

.thread:                                          ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34
  %i.bm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bn, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 3, ptr nonnull @.str.5, i64 29)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.bo = icmp eq i32 %i.aw, 0
  br i1 %i.bo, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.bp = zext i32 %i.aw to i64                   ; 2 uses
  %i.bq = load i64, ptr %i.h, align 8, !tbaa !14
  %i.br = call i64 @_ZN4LIEF12BinaryStream15peek_objects_atIjEENS_10ok_error_tEmRSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.bp)
  %i.bs = and i64 %i.br, 4294967296
  %.not.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = shl nuw nsw i64 %i.bp, 2
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !14
  %i.bv = add i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.h, align 8, !tbaa !14
  %.pre = load ptr, ptr %11, align 8, !tbaa !60
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre86 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60
  %i.bw = ptrtoint ptr %.pre86 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %i.bx = phi i64 [ 0, %bb.j ], [ %i.bw, %bb.l ]
  %i.by = phi ptr [ null, %bb.j ], [ %.pre, %bb.l ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bx, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2                 ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !45
  %.pre9.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !tbaa !46
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cg = phi ptr [ %.pre9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.db, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i ] ; 3 uses
  %i.ch = phi ptr [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dc, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i ] ; 3 uses
  %.08.i.i.i.i.i = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i ], [ %i.de, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i ] ; 2 uses
  %.057.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.dd, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i ] ; 2 uses
  %i.ci = load i32, ptr %.057.i.i.i.i.i, align 4, !tbaa !37
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !47
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !45
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cl = load ptr, ptr %i.bz, align 8, !tbaa !48 ; 4 uses
  %i.cm = ptrtoint ptr %i.cg to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 6 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %bb.q, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.cq = ashr exact i64 %i.co, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i)
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #25 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store i64 %i.cj, ptr %i.cx, align 8, !tbaa !47
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.r, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr align 8 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.co) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  store ptr %i.cw, ptr %i.bz, align 8, !tbaa !48
  store ptr %i.cz, ptr %i.ce, align 8, !tbaa !45
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu ; 2 uses
  store ptr %i.da, ptr %i.cf, align 8, !tbaa !46
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, %bb.o
  %i.db = phi ptr [ %i.cg, %bb.o ], [ %i.da, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i ]
  %i.dc = phi ptr [ %i.ck, %bb.o ], [ %i.cz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i, i64 4
  %i.de = add nsw i64 %.08.i.i.i.i.i, -1
  %i.df = icmp sgt i64 %.08.i.i.i.i.i, 1
  br i1 %i.df, label %bb.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit, !llvm.loop !61

bb.t:                                             ; preds = %bb.k
  %i.dg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dh, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.6, i64 28)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i, %bb.m, %bb.t
  %i.di = zext i32 %i.y to i64                    ; 2 uses
  %i.dj = icmp eq i32 %i.y, 0
  br i1 %i.dj, label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread, label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.dl = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dm = call i64 @_ZN4LIEF12BinaryStream15peek_objects_atIjEENS_10ok_error_tEmRSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 noundef %i.di)
  %i.dn = and i64 %i.dm, 4294967296
  %.not.i35 = icmp eq i64 %i.dn, 0
  br i1 %.not.i35, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = shl nuw nsw i64 %i.di, 2
  %i.dp = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dq = add i64 %i.dp, %i.do
  store i64 %i.dq, ptr %i.h, align 8, !tbaa !14
  br label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread

bb.w:                                             ; preds = %bb.u
  %i.dr = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ds, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.7, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread

_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread: ; preds = %bb.v, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit, %bb.w
  %.not15 = icmp eq i64 %2, 0
  br i1 %.not15, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread
  %i.dt = load i32, ptr %i.k, align 8, !tbaa !42  ; 2 uses
  %i.du = zext i32 %i.dt to i64
  %.not16 = icmp ult i64 %2, %i.du
  br i1 %.not16, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.dv = trunc i64 %2 to i32
  %i.dw = sub i32 %i.dv, %i.dt                    ; 2 uses
  store i32 %i.dw, ptr %i.e, align 4, !tbaa !37
  %i.dx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.dy = zext i32 %i.dw to i64
  %i.dz = call i64 @_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 noundef %i.dy)
  %i.ea = and i64 %i.dz, 4294967296
  %.not85 = icmp eq i64 %i.ea, 0
  br i1 %.not85, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  call void @_ZN4LIEF7logging6Logger3errIJjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x, %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread
  %i.ec = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ed = sub i64 %i.ec, %i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !51
  %i.ef = ptrtoint ptr %i.j to i64
  store i64 %i.ef, ptr %0, align 8, !tbaa !52
  %i.eg = load ptr, ptr %11, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !63
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #27
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZNSt10unique_ptrIN4LIEF3ELF7GnuHashESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34.thread
  store ptr null, ptr %0, align 8, !tbaa !54
  %i.em = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(104) %i.j) #24, !inline_history !56
  br label %_ZNSt10unique_ptrIN4LIEF3ELF7GnuHashESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3ELF7GnuHashESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.ad, %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN4LIEF3ELF7GnuHash5parseINS0_7details9ELF32_x32EEESt10unique_ptrIS1_St14default_deleteIS1_EERNS_10SpanStreamEm(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"class.std::vector.51", align 8   ; 10 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 1, ptr nonnull @.str, i64 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 21 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25, !noalias !64 ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.j, i8 0, i64 104, i1 false), !noalias !64
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.j) #24, !noalias !64
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF7GnuHashE, i64 16), ptr %i.j, align 8, !tbaa !22, !noalias !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.k, i8 0, i64 96, i1 false), !noalias !64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i64 32, ptr %i.l, align 8, !tbaa !24
  %i.m = load i64, ptr %i.h, align 8, !tbaa !14   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.n = load ptr, ptr %1, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i64 %i.p(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.d, i64 noundef %i.m, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.r = and i64 %i.q, 4294967296
  %.not.i.i = icmp eq i64 %i.r, 0
  store i64 %i.m, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.b

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.s = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.1, i64 27)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.d) #24
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.m, %bb.b ], [ %.pre.i, %bb.c ]
  %i.y = load i32, ptr %i.d, align 4, !tbaa !37   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.z = add i64 %i.x, 4                          ; 4 uses
  store i64 %i.z, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 0, ptr %i.c, align 4, !tbaa !37
  %i.aa = load ptr, ptr %1, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.c, i64 noundef %i.z, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.ae = and i64 %i.ad, 4294967296
  %.not.i.i17 = icmp eq i64 %i.ae, 0
  store i64 %i.z, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i17, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread, label %bb.d

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.af = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ag, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.2, i64 21)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.ah = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22

bb.e:                                             ; preds = %bb.d
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.c) #24
  %.pre.i20 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22: ; preds = %bb.d, %bb.e
  %i.aj = phi i64 [ %i.z, %bb.d ], [ %.pre.i20, %bb.e ]
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.al = add i64 %i.aj, 4                        ; 4 uses
  store i64 %i.al, ptr %i.h, align 8, !tbaa !14
  store i32 %i.ak, ptr %i.k, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !37
  %i.am = load ptr, ptr %1, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.b, i64 noundef %i.al, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.aq = and i64 %i.ap, 4294967296
  %.not.i.i23 = icmp eq i64 %i.aq, 0
  store i64 %i.al, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i23, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.as, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.3, i64 24)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22
  %i.at = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #24
  %.pre.i26 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28: ; preds = %bb.f, %bb.g
  %i.av = phi i64 [ %i.al, %bb.f ], [ %.pre.i26, %bb.g ]
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !37  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ax = add i64 %i.av, 4                        ; 4 uses
  store i64 %i.ax, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !37
  %i.ay = load ptr, ptr %1, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, i64 noundef %i.ax, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.bc = and i64 %i.bb, 4294967296
  %.not.i.i29 = icmp eq i64 %i.bc, 0
  store i64 %i.ax, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i29, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34.thread, label %bb.h

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.be, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.4, i64 21)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.h:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28
  %i.bf = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34

bb.i:                                             ; preds = %bb.h
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #24
  %.pre.i32 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34: ; preds = %bb.h, %bb.i
  %i.bh = phi i64 [ %i.ax, %bb.h ], [ %.pre.i32, %bb.i ]
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bj = add i64 %i.bh, 4
  store i64 %i.bj, ptr %i.h, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !43
  %i.bl = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aw)
  %.not = icmp samesign ult i32 %i.bl, 2
  br i1 %.not, label %bb.j, label %.thread

.thread:                                          ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34
  %i.bm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bn, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 3, ptr nonnull @.str.5, i64 29)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.bo = icmp eq i32 %i.aw, 0
  br i1 %i.bo, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.bp = zext i32 %i.aw to i64                   ; 2 uses
  %i.bq = load i64, ptr %i.h, align 8, !tbaa !14
  %i.br = call i64 @_ZN4LIEF12BinaryStream15peek_objects_atIjEENS_10ok_error_tEmRSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.bp)
  %i.bs = and i64 %i.br, 4294967296
  %.not.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = shl nuw nsw i64 %i.bp, 2
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !14
  %i.bv = add i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.h, align 8, !tbaa !14
  %.pre = load ptr, ptr %11, align 8, !tbaa !60
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre86 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60
  %i.bw = ptrtoint ptr %.pre86 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %i.bx = phi i64 [ 0, %bb.j ], [ %i.bw, %bb.l ]
  %i.by = phi ptr [ null, %bb.j ], [ %.pre, %bb.l ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bx, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2                 ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !45
  %.pre9.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !tbaa !46
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cg = phi ptr [ %.pre9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.db, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i ] ; 3 uses
  %i.ch = phi ptr [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dc, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i ] ; 3 uses
  %.08.i.i.i.i.i = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i ], [ %i.de, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i ] ; 2 uses
  %.057.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.dd, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i ] ; 2 uses
  %i.ci = load i32, ptr %.057.i.i.i.i.i, align 4, !tbaa !37
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !47
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !45
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cl = load ptr, ptr %i.bz, align 8, !tbaa !48 ; 4 uses
  %i.cm = ptrtoint ptr %i.cg to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 6 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %bb.q, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.cq = ashr exact i64 %i.co, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i)
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #25 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store i64 %i.cj, ptr %i.cx, align 8, !tbaa !47
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.r, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr align 8 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.co) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  store ptr %i.cw, ptr %i.bz, align 8, !tbaa !48
  store ptr %i.cz, ptr %i.ce, align 8, !tbaa !45
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu ; 2 uses
  store ptr %i.da, ptr %i.cf, align 8, !tbaa !46
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, %bb.o
  %i.db = phi ptr [ %i.cg, %bb.o ], [ %i.da, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i ]
  %i.dc = phi ptr [ %i.ck, %bb.o ], [ %i.cz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i, i64 4
  %i.de = add nsw i64 %.08.i.i.i.i.i, -1
  %i.df = icmp sgt i64 %.08.i.i.i.i.i, 1
  br i1 %i.df, label %bb.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit, !llvm.loop !61

bb.t:                                             ; preds = %bb.k
  %i.dg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dh, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.6, i64 28)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i, %bb.m, %bb.t
  %i.di = zext i32 %i.y to i64                    ; 2 uses
  %i.dj = icmp eq i32 %i.y, 0
  br i1 %i.dj, label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread, label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.dl = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dm = call i64 @_ZN4LIEF12BinaryStream15peek_objects_atIjEENS_10ok_error_tEmRSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 noundef %i.di)
  %i.dn = and i64 %i.dm, 4294967296
  %.not.i35 = icmp eq i64 %i.dn, 0
  br i1 %.not.i35, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = shl nuw nsw i64 %i.di, 2
  %i.dp = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dq = add i64 %i.dp, %i.do
  store i64 %i.dq, ptr %i.h, align 8, !tbaa !14
  br label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread

bb.w:                                             ; preds = %bb.u
  %i.dr = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ds, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.7, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread

_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread: ; preds = %bb.v, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit, %bb.w
  %.not15 = icmp eq i64 %2, 0
  br i1 %.not15, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread
  %i.dt = load i32, ptr %i.k, align 8, !tbaa !42  ; 2 uses
  %i.du = zext i32 %i.dt to i64
  %.not16 = icmp ult i64 %2, %i.du
  br i1 %.not16, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.dv = trunc i64 %2 to i32
  %i.dw = sub i32 %i.dv, %i.dt                    ; 2 uses
  store i32 %i.dw, ptr %i.e, align 4, !tbaa !37
  %i.dx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.dy = zext i32 %i.dw to i64
  %i.dz = call i64 @_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 noundef %i.dy)
  %i.ea = and i64 %i.dz, 4294967296
  %.not85 = icmp eq i64 %i.ea, 0
  br i1 %.not85, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  call void @_ZN4LIEF7logging6Logger3errIJjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x, %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread
  %i.ec = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ed = sub i64 %i.ec, %i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !51
  %i.ef = ptrtoint ptr %i.j to i64
  store i64 %i.ef, ptr %0, align 8, !tbaa !52
  %i.eg = load ptr, ptr %11, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !63
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #27
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZNSt10unique_ptrIN4LIEF3ELF7GnuHashESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34.thread
  store ptr null, ptr %0, align 8, !tbaa !54
  %i.em = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(104) %i.j) #24, !inline_history !56
  br label %_ZNSt10unique_ptrIN4LIEF3ELF7GnuHashESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3ELF7GnuHashESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.ad, %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN4LIEF3ELF7GnuHash5parseINS0_7details11ELF32_arm64EEESt10unique_ptrIS1_St14default_deleteIS1_EERNS_10SpanStreamEm(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"class.std::vector.51", align 8   ; 10 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 1, ptr nonnull @.str, i64 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 21 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25, !noalias !67 ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.j, i8 0, i64 104, i1 false), !noalias !67
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.j) #24, !noalias !67
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF7GnuHashE, i64 16), ptr %i.j, align 8, !tbaa !22, !noalias !67
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.k, i8 0, i64 96, i1 false), !noalias !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i64 32, ptr %i.l, align 8, !tbaa !24
  %i.m = load i64, ptr %i.h, align 8, !tbaa !14   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.n = load ptr, ptr %1, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i64 %i.p(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.d, i64 noundef %i.m, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.r = and i64 %i.q, 4294967296
  %.not.i.i = icmp eq i64 %i.r, 0
  store i64 %i.m, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.b

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.s = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.1, i64 27)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.d) #24
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.m, %bb.b ], [ %.pre.i, %bb.c ]
  %i.y = load i32, ptr %i.d, align 4, !tbaa !37   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.z = add i64 %i.x, 4                          ; 4 uses
  store i64 %i.z, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 0, ptr %i.c, align 4, !tbaa !37
  %i.aa = load ptr, ptr %1, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.c, i64 noundef %i.z, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.ae = and i64 %i.ad, 4294967296
  %.not.i.i17 = icmp eq i64 %i.ae, 0
  store i64 %i.z, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i17, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread, label %bb.d

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.af = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ag, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.2, i64 21)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.ah = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22

bb.e:                                             ; preds = %bb.d
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.c) #24
  %.pre.i20 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22: ; preds = %bb.d, %bb.e
  %i.aj = phi i64 [ %i.z, %bb.d ], [ %.pre.i20, %bb.e ]
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.al = add i64 %i.aj, 4                        ; 4 uses
  store i64 %i.al, ptr %i.h, align 8, !tbaa !14
  store i32 %i.ak, ptr %i.k, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !37
  %i.am = load ptr, ptr %1, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.b, i64 noundef %i.al, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.aq = and i64 %i.ap, 4294967296
  %.not.i.i23 = icmp eq i64 %i.aq, 0
  store i64 %i.al, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i23, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.as, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.3, i64 24)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22
  %i.at = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #24
  %.pre.i26 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28: ; preds = %bb.f, %bb.g
  %i.av = phi i64 [ %i.al, %bb.f ], [ %.pre.i26, %bb.g ]
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !37  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ax = add i64 %i.av, 4                        ; 4 uses
  store i64 %i.ax, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !37
  %i.ay = load ptr, ptr %1, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, i64 noundef %i.ax, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.bc = and i64 %i.bb, 4294967296
  %.not.i.i29 = icmp eq i64 %i.bc, 0
  store i64 %i.ax, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i29, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34.thread, label %bb.h

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.be, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.4, i64 21)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i

bb.h:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28
  %i.bf = load i8, ptr %i.u, align 8, !tbaa !39, !range !40, !noundef !41
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34

bb.i:                                             ; preds = %bb.h
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #24
  %.pre.i32 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34: ; preds = %bb.h, %bb.i
  %i.bh = phi i64 [ %i.ax, %bb.h ], [ %.pre.i32, %bb.i ]
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bj = add i64 %i.bh, 4
  store i64 %i.bj, ptr %i.h, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !43
  %i.bl = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aw)
  %.not = icmp samesign ult i32 %i.bl, 2
  br i1 %.not, label %bb.j, label %.thread

.thread:                                          ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34
  %i.bm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bn, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 3, ptr nonnull @.str.5, i64 29)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.bo = icmp eq i32 %i.aw, 0
  br i1 %i.bo, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.bp = zext i32 %i.aw to i64                   ; 2 uses
  %i.bq = load i64, ptr %i.h, align 8, !tbaa !14
  %i.br = call i64 @_ZN4LIEF12BinaryStream15peek_objects_atIjEENS_10ok_error_tEmRSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.bp)
  %i.bs = and i64 %i.br, 4294967296
  %.not.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = shl nuw nsw i64 %i.bp, 2
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !14
  %i.bv = add i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.h, align 8, !tbaa !14
  %.pre = load ptr, ptr %11, align 8, !tbaa !60
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre86 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60
  %i.bw = ptrtoint ptr %.pre86 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %i.bx = phi i64 [ 0, %bb.j ], [ %i.bw, %bb.l ]
  %i.by = phi ptr [ null, %bb.j ], [ %.pre, %bb.l ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bx, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2                 ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !45
  %.pre9.i.i.i.i.i = load ptr, ptr %i.cf, align 8, !tbaa !46
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cg = phi ptr [ %.pre9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.db, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i ] ; 3 uses
  %i.ch = phi ptr [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dc, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i ] ; 3 uses
  %.08.i.i.i.i.i = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i ], [ %i.de, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i ] ; 2 uses
  %.057.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.dd, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i ] ; 2 uses
  %i.ci = load i32, ptr %.057.i.i.i.i.i, align 4, !tbaa !37
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !47
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !45
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cl = load ptr, ptr %i.bz, align 8, !tbaa !48 ; 4 uses
  %i.cm = ptrtoint ptr %i.cg to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 6 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %bb.q, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.cq = ashr exact i64 %i.co, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i)
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #25 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store i64 %i.cj, ptr %i.cx, align 8, !tbaa !47
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.r, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr align 8 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.co) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  store ptr %i.cw, ptr %i.bz, align 8, !tbaa !48
  store ptr %i.cz, ptr %i.ce, align 8, !tbaa !45
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu ; 2 uses
  store ptr %i.da, ptr %i.cf, align 8, !tbaa !46
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, %bb.o
  %i.db = phi ptr [ %i.cg, %bb.o ], [ %i.da, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i ]
  %i.dc = phi ptr [ %i.ck, %bb.o ], [ %i.cz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i, i64 4
  %i.de = add nsw i64 %.08.i.i.i.i.i, -1
  %i.df = icmp sgt i64 %.08.i.i.i.i.i, 1
  br i1 %i.df, label %bb.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit, !llvm.loop !61

bb.t:                                             ; preds = %bb.k
  %i.dg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dh, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.6, i64 28)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i.i.i.i.i, %bb.m, %bb.t
  %i.di = zext i32 %i.y to i64                    ; 2 uses
  %i.dj = icmp eq i32 %i.y, 0
  br i1 %i.dj, label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread, label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.dl = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dm = call i64 @_ZN4LIEF12BinaryStream15peek_objects_atIjEENS_10ok_error_tEmRSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 noundef %i.di)
  %i.dn = and i64 %i.dm, 4294967296
  %.not.i35 = icmp eq i64 %i.dn, 0
  br i1 %.not.i35, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = shl nuw nsw i64 %i.di, 2
  %i.dp = load i64, ptr %i.h, align 8, !tbaa !14
  %i.dq = add i64 %i.dp, %i.do
  store i64 %i.dq, ptr %i.h, align 8, !tbaa !14
  br label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread

bb.w:                                             ; preds = %bb.u
  %i.dr = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ds, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.7, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread

_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread: ; preds = %bb.v, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt20back_insert_iteratorIS3_ImSaImEEEET0_T_SC_SB_.exit, %bb.w
  %.not15 = icmp eq i64 %2, 0
  br i1 %.not15, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread
  %i.dt = load i32, ptr %i.k, align 8, !tbaa !42  ; 2 uses
  %i.du = zext i32 %i.dt to i64
  %.not16 = icmp ult i64 %2, %i.du
  br i1 %.not16, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.dv = trunc i64 %2 to i32
  %i.dw = sub i32 %i.dv, %i.dt                    ; 2 uses
  store i32 %i.dw, ptr %i.e, align 4, !tbaa !37
  %i.dx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.dy = zext i32 %i.dw to i64
  %i.dz = call i64 @_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 noundef %i.dy)
  %i.ea = and i64 %i.dz, 4294967296
  %.not85 = icmp eq i64 %i.ea, 0
  br i1 %.not85, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  call void @_ZN4LIEF7logging6Logger3errIJjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x, %_ZN4LIEF12BinaryStream12read_objectsIjEENS_10ok_error_tERSt6vectorIT_SaIS4_EEm.exit37.thread
  %i.ec = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ed = sub i64 %i.ec, %i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !51
  %i.ef = ptrtoint ptr %i.j to i64
  store i64 %i.ef, ptr %0, align 8, !tbaa !52
  %i.eg = load ptr, ptr %11, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !63
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #27
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZNSt10unique_ptrIN4LIEF3ELF7GnuHashESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit34.thread
  store ptr null, ptr %0, align 8, !tbaa !54
  %i.em = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(104) %i.j) #24, !inline_history !56
  br label %_ZNSt10unique_ptrIN4LIEF3ELF7GnuHashESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3ELF7GnuHashESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.ad, %_ZNKSt14default_deleteIN4LIEF3ELF7GnuHashEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden i64 @_ZN4LIEF3ELF7GnuHash10nb_symbolsINS0_7details5ELF64EEENS_6resultIjEERNS_10SpanStreamE(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %1 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i32 0, ptr %i.e, align 4, !tbaa !37
  %i.j = load ptr, ptr %0, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call i64 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.e, i64 noundef %i.i, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.n = and i64 %i.m, 4294967296
  %.not.i.i = icmp eq i64 %i.n, 0
  store i64 %i.i, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.b

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !39, !range !40, !noundef !41
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.e) #24
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i64 [ %i.i, %bb.b ], [ %.pre.i, %bb.c ]
  %i.s = load i32, ptr %i.e, align 4, !tbaa !37   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.t = add i64 %i.r, 4                          ; 4 uses
  store i64 %i.t, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.u = load ptr, ptr %0, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i64 %i.w(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.d, i64 noundef %i.t, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.y = and i64 %i.x, 4294967296
  %.not.i.i22 = icmp eq i64 %i.y, 0
  store i64 %i.t, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i22, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit27.thread, label %bb.d

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit27.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.v

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.z = load i8, ptr %i.o, align 8, !tbaa !39, !range !40, !noundef !41
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit27

bb.e:                                             ; preds = %bb.d
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.d) #24
  %.pre.i25 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit27

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit27: ; preds = %bb.d, %bb.e
  %i.ab = phi i64 [ %i.t, %bb.d ], [ %.pre.i25, %bb.e ]
  %i.ac = load i32, ptr %i.d, align 4, !tbaa !37  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.ad = add i64 %i.ab, 4                        ; 4 uses
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 0, ptr %i.c, align 4, !tbaa !37
  %i.ae = load ptr, ptr %0, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.c, i64 noundef %i.ad, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.ai = and i64 %i.ah, 4294967296
  %.not.i.i28 = icmp eq i64 %i.ai, 0
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i28, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit33.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit33.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.v

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit27
  %i.aj = load i8, ptr %i.o, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit33

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.c) #24
  %.pre.i31 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit33

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit33: ; preds = %bb.f, %bb.g
  %i.al = phi i64 [ %i.ad, %bb.f ], [ %.pre.i31, %bb.g ]
  %i.am = load i32, ptr %i.c, align 4, !tbaa !37  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !37
  %i.an = add i64 %i.al, 8                        ; 2 uses
  store i64 %i.an, ptr %i.h, align 8, !tbaa !14
  %i.ao = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.am)
  %.not = icmp samesign ult i32 %i.ao, 2
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit33
  %i.ap = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.121) #24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef 3, ptr nonnull @.str.5, i64 29)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.u

bb.i:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit33
  %i.ar = zext i32 %i.am to i64
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = add i64 %i.an, %i.as                    ; 2 uses
  store i64 %i.at, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i32 0, ptr %i.g, align 4, !tbaa !37
  %i.au = zext i32 %i.s to i64
  %.not79 = icmp eq i32 %i.s, 0
  br i1 %.not79, label %_ZNK4LIEF12BinaryStream8can_readIjEEbv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.m
  %i.av = phi i32 [ %i.bi, %bb.m ], [ 0, %bb.i ]  ; 3 uses
  %i.aw = phi i64 [ %i.bg, %bb.m ], [ %i.at, %bb.i ] ; 4 uses
  %.01878 = phi i64 [ %i.bj, %bb.m ], [ 0, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !37
  %i.ax = load ptr, ptr %0, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call i64 %i.az(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.b, i64 noundef %i.aw, i64 noundef 4, i64 noundef 0) #24, !inline_history !38
  %i.bb = and i64 %i.ba, 4294967296
  %.not.i.i34 = icmp eq i64 %i.bb, 0
  store i64 %i.aw, ptr %i.h, align 8, !tbaa !14
  br i1 %.not.i.i34, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit39.thread, label %bb.j

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit39.thread: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.critedge

bb.j:                                             ; preds = %.lr.ph
  %i.bc = load i8, ptr %i.o, align 8, !tbaa !39, !range !40, !noundef !41
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.k, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit39

bb.k:                                             ; preds = %bb.j
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #24
  %.pre.i37 = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit39

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit39: ; preds = %bb.j, %bb.k
  %i.be = phi i64 [ %i.aw, %bb.j ], [ %.pre.i37, %bb.k ]
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !37  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.bg = add i64 %i.be, 4                        ; 3 uses
  store i64 %i.bg, ptr %i.h, align 8, !tbaa !14
  %i.bh = icmp ugt i32 %i.bf, %i.av
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit39
  store i32 %i.bf, ptr %i.g, align 4, !tbaa !37
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit39
  %i.bi = phi i32 [ %i.bf, %bb.l ], [ %i.av, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit39 ] ; 2 uses
  %i.bj = add nuw nsw i64 %.01878, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %i.au
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !70

.critedge:                                        ; preds = %bb.m, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit39.thread
  %i.bk = phi i64 [ %i.aw, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit39.thread ], [ %i.bg, %bb.m ]
  %i.bl = phi i32 [ %i.av, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit39.thread ], [ %i.bi, %bb.m ] ; 4 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZNK4LIEF12BinaryStream8can_readIjEEbv.exit.thread, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.bn = icmp ult i32 %i.bl, %i.ac
  br i1 %i.bn, label %bb.o, label %bb.p

end_hunk_0
