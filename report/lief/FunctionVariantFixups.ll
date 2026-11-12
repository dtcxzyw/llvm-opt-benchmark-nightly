Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/FunctionVariantFixups?download=true
inline.NumInlined: 2915
inline.NumDeleted: 866
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 48
begin_hunk_0

$_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_ = comdat any

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

$_ZZN6spdlog7details2os9thread_idEvE3tid = comdat any

$_ZGVZN6spdlog7details2os9thread_idEvE3tid = comdat any

@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1212format_facetISt6localeE2idE), align 8
@_ZTVN4LIEF5MachO21FunctionVariantFixupsE = constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN4LIEF5MachO21FunctionVariantFixupsE, ptr @_ZNK4LIEF6ObjecteqERKS0_, ptr @_ZNK4LIEF6ObjectneERKS0_, ptr @_ZN4LIEF5MachO21FunctionVariantFixupsD2Ev, ptr @_ZN4LIEF5MachO21FunctionVariantFixupsD0Ev, ptr @_ZNK4LIEF5MachO11LoadCommand6acceptERNS_7VisitorE, ptr @_ZNK4LIEF5MachO21FunctionVariantFixups5cloneEv, ptr @_ZNK4LIEF5MachO21FunctionVariantFixups5printERSo] }, align 8
@.str = private unnamed_addr constant [48 x i8] c"Failed to read FunctionVariantFixups.fixups[{}]\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"{}+{:#x} ({:#x})\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"seg[{}]+{:#x}\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c" -> variant #{}\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c" [PAC: key={} addr={} diversity={:#06x}]\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"nb_fixups = {}\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"  [{:04d}] {}\0A\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTIN4LIEF5MachO21FunctionVariantFixupsE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4LIEF5MachO21FunctionVariantFixupsE, ptr @_ZTIN4LIEF5MachO11LoadCommandE }, align 8
@_ZTSN4LIEF5MachO21FunctionVariantFixupsE = constant [37 x i8] c"N4LIEF5MachO21FunctionVariantFixupsE\00", align 1
@_ZTIN4LIEF5MachO11LoadCommandE = external constant ptr
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.9 = private unnamed_addr constant [98 x i8] c"/opt-bench/work/lief/LIEF/build/_deps/lief_spdlog_project-src/include/spdlog/fmt/bundled/format.h\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"%s:%d: assertion failed: %s\00", align 1
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], comdat, align 16
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", comdat, align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], comdat, align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTINSt6locale5facetE = external constant ptr
@_ZTIN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetISt6localeEE, ptr @_ZTINSt6locale5facetE }, comdat, align 8
@_ZTSN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant [36 x i8] c"N3fmt3v1212format_facetISt6localeEE\00", comdat, align 1
@_ZTVN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetISt6localeEE, ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev, ptr @_ZN3fmt3v1212format_facetISt6localeED0Ev, ptr @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, comdat, align 8
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@.str.18 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr hidden local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr hidden local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr hidden local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr hidden local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr hidden local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr hidden local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", comdat, align 16
@.str.21 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], comdat, align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [24 x %"class.fmt::v12::detail::uint128_fallback"] [%"class.fmt::v12::detail::uint128_fallback" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128_fallback" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128_fallback" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128_fallback" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128_fallback" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128_fallback" { i64 7239297505920716784, i64 -1063354554122040811 }], comdat, align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = linkonce_odr hidden local_unnamed_addr constant [27 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125, i64 390625, i64 1953125, i64 9765625, i64 48828125, i64 244140625, i64 1220703125, i64 6103515625, i64 30517578125, i64 152587890625, i64 762939453125, i64 3814697265625, i64 19073486328125, i64 95367431640625, i64 476837158203125, i64 2384185791015625, i64 11920928955078125, i64 59604644775390625, i64 298023223876953125, i64 1490116119384765625], comdat, align 16
@.str.33 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.34 = private unnamed_addr constant [102 x i8] c"/opt-bench/work/lief/LIEF/build/_deps/lief_spdlog_project-src/include/spdlog/fmt/bundled/format-inl.h\00", align 1
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTIN3fmt3v1212format_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr hidden constant [25 x i8] c"N3fmt3v1212format_errorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.36 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.42 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.53 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.54 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@_ZTVN4LIEF5MachO11LoadCommandE = external constant { [9 x ptr] }, align 8
@.str.111 = private unnamed_addr constant [5 x i8] c"LIEF\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"IA\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"IB\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"DA\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"DB\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZZN6spdlog7details2os9thread_idEvE3tid = linkonce_odr hidden thread_local global i64 0, comdat, align 8
@_ZGVZN6spdlog7details2os9thread_idEvE3tid = linkonce_odr hidden thread_local local_unnamed_addr global i64 0, comdat, align 8
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.118 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"
@switch.table._ZNK4LIEF5MachO21FunctionVariantFixups5Fixup9to_stringB5cxx11Ev = private unnamed_addr constant [4 x ptr] [ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], align 8

@_ZN4LIEF5MachO21FunctionVariantFixupsC1ERKNS0_7details21linkedit_data_commandE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF5MachO21FunctionVariantFixupsC2ERKNS0_7details21linkedit_data_commandE
@_ZN4LIEF5MachO21FunctionVariantFixups5FixupC1ERKNS0_7details24function_variant_fixup_tE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF5MachO21FunctionVariantFixups5FixupC2ERKNS0_7details24function_variant_fixup_tE

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
define void @_ZN4LIEF5MachO21FunctionVariantFixupsC2ERKNS0_7details21linkedit_data_commandE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !252
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !253
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.b, ptr %i.f, align 8, !tbaa !254
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.d, ptr %i.g, align 8, !tbaa !255
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.h, align 8, !tbaa !256
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4LIEF5MachO21FunctionVariantFixupsE, i64 16), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load <2 x i32>, ptr %i.j, align 4, !tbaa !55
  store <2 x i32> %i.k, ptr %i.i, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4LIEF5MachO21FunctionVariantFixups5FixupC2ERKNS0_7details24function_variant_fixup_tE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 15), (16, 18), (24, 32)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !258
  store i32 %i.a, ptr %0, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 15
  store i32 %i.e, ptr %i.b, align 4, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.c, align 4
  %i.h = lshr i32 %i.g, 4
  %i.i = and i32 %i.h, 255
  store i32 %i.i, ptr %i.f, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.c, align 4
  %i.l = lshr i32 %i.k, 12
  %i.m = trunc i32 %i.l to i8
  %i.n = and i8 %i.m, 1
  store i8 %i.n, ptr %i.j, align 4, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.p = load i32, ptr %i.c, align 4
  %i.q = lshr i32 %i.p, 13
  %i.r = trunc i32 %i.q to i8
  %i.s = and i8 %i.r, 1
  store i8 %i.s, ptr %i.o, align 1, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.u = load i32, ptr %i.c, align 4
  %i.v = lshr i32 %i.u, 14
  %i.w = trunc i32 %i.v to i8
  %i.x = and i8 %i.w, 3
  store i8 %i.x, ptr %i.t, align 2, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = load i32, ptr %i.c, align 4
  %3 = lshr i32 %2, 16
  %4 = trunc nuw i32 %3 to i16
  store i16 %4, ptr %i.y, align 8, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.z, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF5MachO21FunctionVariantFixups13parse_payloadERNS_10SpanStreamE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.43") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"struct.LIEF::MachO::details::function_variant_fixup_t", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.LIEF::result", align 8      ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %1) #24 ; 2 uses
  %i.f = lshr i64 %i.e, 3                         ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.117) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not12 = icmp eq i64 %i.f, 0
  br i1 %.not12, label %_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE7reserveEm.exit.thread, label %.lr.ph

_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE7reserveEm.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = shl nuw nsw i64 %i.f, 5
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #26 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !70
  store ptr %i.k, ptr %i.i, align 8, !tbaa !71
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.f
  store ptr %i.l, ptr %i.h, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNK4LIEF12BinaryStream4readINS_5MachO7details24function_variant_fixup_tEEENS_6resultIT_EEv.exit
  %i.n = phi i64 [ 0, %.lr.ph ], [ %i.z, %_ZNK4LIEF12BinaryStream4readINS_5MachO7details24function_variant_fixup_tEEENS_6resultIT_EEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.o = load i64, ptr %i.m, align 8, !tbaa !263  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i64 0, ptr %3, align 8
  %i.p = load ptr, ptr %1, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i64 %i.r(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %3, i64 noundef %i.o, i64 noundef 8, i64 noundef 0) #24, !inline_history !259
  %i.t = and i64 %i.s, 4294967296
  %i.u = load i64, ptr %3, align 8
  store i64 %i.o, ptr %i.m, align 8, !tbaa !263
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details24function_variant_fixup_tEEENS_6resultIT_EEv.exit.thread, label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details24function_variant_fixup_tEEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readINS_5MachO7details24function_variant_fixup_tEEENS_6resultIT_EEv.exit.thread: ; preds = %bb.d
  store i64 1, ptr %4, align 8
  store i8 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.111) #24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.w, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 1, ptr nonnull @.str, i64 47, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.loopexit

_ZNK4LIEF12BinaryStream4readINS_5MachO7details24function_variant_fixup_tEEENS_6resultIT_EEv.exit: ; preds = %bb.d
  %i.x = add i64 %i.o, 8
  store i64 %i.x, ptr %i.m, align 8, !tbaa !263
  store i64 %i.u, ptr %4, align 8
  store i8 1, ptr %.sroa.2.0..sroa_idx, align 8
  %i.y = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE12emplace_backIJRNS1_7details24function_variant_fixup_tEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.z = add nuw nsw i64 %i.n, 1                  ; 3 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !73
  %i.aa = icmp samesign ult i64 %i.z, %i.f
  br i1 %i.aa, label %bb.d, label %.loopexit, !llvm.loop !260

.loopexit:                                        ; preds = %_ZNK4LIEF12BinaryStream4readINS_5MachO7details24function_variant_fixup_tEEENS_6resultIT_EEv.exit, %_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE7reserveEm.exit.thread, %_ZNK4LIEF12BinaryStream4readINS_5MachO7details24function_variant_fixup_tEEENS_6resultIT_EEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE12emplace_backIJRNS1_7details24function_variant_fixup_tEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4LIEF5MachO21FunctionVariantFixups5FixupC1ERKNS0_7details24function_variant_fixup_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(8) %1) #24
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.f, ptr %i.a, align 8, !tbaa !71
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !70     ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775776
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

_ZNKSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 5                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 288230376151711743)
  %i.p = select i1 %i.n, i64 288230376151711743, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 5
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #26 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @_ZN4LIEF5MachO21FunctionVariantFixups5FixupC1ERKNS0_7details24function_variant_fixup_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 4 dereferenceable(8) %1) #24
  %.not10.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i, i64 32, i1 false), !tbaa.struct !79, !alias.scope !273
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !272

_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE12_M_check_lenEmPKc.exit.i ], [ %i.u, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i23.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE17_M_realloc_insertIJRNS1_7details24function_variant_fixup_tEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #27
  br label %_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE17_M_realloc_insertIJRNS1_7details24function_variant_fixup_tEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit

_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE17_M_realloc_insertIJRNS1_7details24function_variant_fixup_tEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, %bb.e
  store ptr %i.r, ptr %0, align 8, !tbaa !70
  store ptr %i.v, ptr %i.a, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !72
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE17_M_realloc_insertIJRNS1_7details24function_variant_fixup_tEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit, %bb.b
  %i.aa = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EE17_M_realloc_insertIJRNS1_7details24function_variant_fixup_tEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit ], [ %i.e, %bb.b ]
  ret ptr %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF5MachO21FunctionVariantFixups5Fixup9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer.466", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.fmt::v12::basic_memory_buffer.466", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.fmt::v12::basic_memory_buffer.466", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.fmt::v12::basic_memory_buffer.466", align 8 ; 10 uses
  %10 = alloca %"struct.fmt::v12::detail::format_arg_store.1112", align 16 ; 6 uses
  %11 = alloca %"struct.fmt::v12::detail::format_arg_store.1111", align 16 ; 4 uses
  %12 = alloca %"struct.fmt::v12::detail::format_arg_store.1110", align 16 ; 5 uses
  %13 = alloca %"struct.fmt::v12::detail::format_arg_store.1108", align 16 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 30 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_0
