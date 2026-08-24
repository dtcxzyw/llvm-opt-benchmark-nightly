Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ThreadCommand?download=true
inline.NumInlined: 2709
inline.NumDeleted: 747
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0
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
@_ZTVN4LIEF5MachO13ThreadCommandE = constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN4LIEF5MachO13ThreadCommandE, ptr @_ZNK4LIEF6ObjecteqERKS0_, ptr @_ZNK4LIEF6ObjectneERKS0_, ptr @_ZN4LIEF5MachO13ThreadCommandD2Ev, ptr @_ZN4LIEF5MachO13ThreadCommandD0Ev, ptr @_ZNK4LIEF5MachO13ThreadCommand6acceptERNS_7VisitorE, ptr @_ZNK4LIEF5MachO13ThreadCommand5cloneEv, ptr @_ZNK4LIEF5MachO13ThreadCommand5printERSo] }, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unknown architecture\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"flavor={:#x}, count={:#x}, pc={:#08x}\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTIN4LIEF5MachO13ThreadCommandE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4LIEF5MachO13ThreadCommandE, ptr @_ZTIN4LIEF5MachO11LoadCommandE }, align 8
@_ZTSN4LIEF5MachO13ThreadCommandE = constant [29 x i8] c"N4LIEF5MachO13ThreadCommandE\00", align 1
@_ZTIN4LIEF5MachO11LoadCommandE = external constant ptr
@.str.4 = private unnamed_addr constant [98 x i8] c"/opt-bench/work/lief/LIEF/build/_deps/lief_spdlog_project-src/include/spdlog/fmt/bundled/format.h\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"%s:%d: assertion failed: %s\00", align 1
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], comdat, align 16
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", comdat, align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], comdat, align 16
@.str.11 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTINSt6locale5facetE = external constant ptr
@_ZTIN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetISt6localeEE, ptr @_ZTINSt6locale5facetE }, comdat, align 8
@_ZTSN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant [36 x i8] c"N3fmt3v1212format_facetISt6localeEE\00", comdat, align 1
@_ZTVN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetISt6localeEE, ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev, ptr @_ZN3fmt3v1212format_facetISt6localeED0Ev, ptr @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, comdat, align 8
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@.str.13 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr hidden local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr hidden local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr hidden local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr hidden local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr hidden local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr hidden local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", comdat, align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], comdat, align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [24 x %"class.fmt::v12::detail::uint128_fallback"] [%"class.fmt::v12::detail::uint128_fallback" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128_fallback" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128_fallback" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128_fallback" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128_fallback" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128_fallback" { i64 7239297505920716784, i64 -1063354554122040811 }], comdat, align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = linkonce_odr hidden local_unnamed_addr constant [27 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125, i64 390625, i64 1953125, i64 9765625, i64 48828125, i64 244140625, i64 1220703125, i64 6103515625, i64 30517578125, i64 152587890625, i64 762939453125, i64 3814697265625, i64 19073486328125, i64 95367431640625, i64 476837158203125, i64 2384185791015625, i64 11920928955078125, i64 59604644775390625, i64 298023223876953125, i64 1490116119384765625], comdat, align 16
@.str.28 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.29 = private unnamed_addr constant [102 x i8] c"/opt-bench/work/lief/LIEF/build/_deps/lief_spdlog_project-src/include/spdlog/fmt/bundled/format-inl.h\00", align 1
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTIN3fmt3v1212format_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr hidden constant [25 x i8] c"N3fmt3v1212format_errorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.31 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.37 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.48 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.49 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@_ZTVN4LIEF5MachO11LoadCommandE = external constant { [9 x ptr] }, align 8
@.str.106 = private unnamed_addr constant [5 x i8] c"LIEF\00", align 1
@.str.107 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZZN6spdlog7details2os9thread_idEvE3tid = linkonce_odr hidden thread_local global i64 0, comdat, align 8
@_ZGVZN6spdlog7details2os9thread_idEvE3tid = linkonce_odr hidden thread_local local_unnamed_addr global i64 0, comdat, align 8
@.str.108 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"

@_ZN4LIEF5MachO13ThreadCommandC1ERKNS0_7details14thread_commandENS0_6Header8CPU_TYPEE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4LIEF5MachO13ThreadCommandC2ERKNS0_7details14thread_commandENS0_6Header8CPU_TYPEE
@_ZN4LIEF5MachO13ThreadCommandC1EjjNS0_6Header8CPU_TYPEE = unnamed_addr alias void (ptr, i32, i32, i32), ptr @_ZN4LIEF5MachO13ThreadCommandC2EjjNS0_6Header8CPU_TYPEE

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
define void @_ZN4LIEF5MachO13ThreadCommandC2ERKNS0_7details14thread_commandENS0_6Header8CPU_TYPEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !8
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.b, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.d, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.h, align 8, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4LIEF5MachO13ThreadCommandE, i64 16), ptr %0, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load <2 x i32>, ptr %i.j, align 4, !tbaa !26
  store <2 x i32> %i.k, ptr %i.i, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %2, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4LIEF5MachO13ThreadCommandC2EjjNS0_6Header8CPU_TYPEE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = shl i32 %2, 2                            ; 2 uses
  %i.b = add i32 %i.a, 16                         ; 2 uses
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 5, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.b, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4LIEF5MachO13ThreadCommandE, i64 16), ptr %0, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %1, ptr %i.g, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %2, ptr %i.h, align 4, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %3, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = zext i32 %i.b to i64
  %i.l = add nsw i64 %i.k, -16                    ; 4 uses
  %i.m = icmp ugt i32 %i.a, -17
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.107) #24
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %bb.c

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25 ; 3 uses
  store ptr %i.n, ptr %i.j, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.o, ptr %i.p, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit:            ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, %bb.c
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.o, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.q, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK4LIEF5MachO13ThreadCommand2pcEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27
  switch i32 %i.d, label %bb.n [
    i32 7, label %bb.b
    i32 16777223, label %bb.d
    i32 12, label %bb.f
    i32 16777228, label %bb.h
    i32 18, label %bb.j
    i32 16777234, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 64
  br i1 %i.l, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35
  %i.o = zext i32 %i.n to i64
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !32   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ult i64 %i.v, 168
  br i1 %i.w, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.y = load i64, ptr %i.x, align 8, !tbaa !37
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !32  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ult i64 %i.af, 68
  br i1 %i.ag, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !39
  %i.aj = zext i32 %i.ai to i64
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !32 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, 272
  br i1 %i.ar, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 256
  %i.at = load i64, ptr %i.as, align 8, !tbaa !41
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !34
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !32 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp ult i64 %i.ba, 160
  br i1 %i.bb, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load i32, ptr %i.ax, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 %i.bc, ptr %i.b, align 4, !tbaa !26
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #23
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.be = zext i32 %i.bd to i64
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !34
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !32 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = icmp ult i64 %i.bl, 312
  br i1 %i.bm, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load i64, ptr %i.bi, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !47
  call void @_ZN4LIEF11swap_endianImEEvPT_(ptr noundef nonnull %i.a) #23
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bp = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.106) #23
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef 4, ptr nonnull @.str, i64 20)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.08 = phi i64 [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.n ], [ %i.o, %bb.c ], [ %i.y, %bb.e ], [ %i.aj, %bb.g ], [ %i.at, %bb.i ], [ %i.be, %bb.k ], [ %i.bo, %bb.m ]
  ret i64 %.08
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF5MachO13ThreadCommand6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(96) %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4LIEF5MachO13ThreadCommand5printERSo(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.fmt::v12::basic_memory_buffer.447", align 8 ; 10 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.1067", align 16 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4LIEF5MachO11LoadCommand5printERSo(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !53
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !54
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.b, i64 noundef 1) #23 ; 0 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef signext 10) #23 ; 0 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  %i.p = call noundef i64 @_ZNK4LIEF5MachO13ThreadCommand2pcEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !63
  store i32 %i.m, ptr %4, align 16, !tbaa !53, !noalias !63
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.o, ptr %i.q, align 16, !tbaa !53, !noalias !63
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.p, ptr %i.r, align 16, !tbaa !53, !noalias !63
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !66
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
end_hunk_0
