Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/DyldChainedFixupsCreator?download=true
inline.NumInlined: 4364
inline.NumDeleted: 1650
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0
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
@.str = private unnamed_addr constant [27 x i8] c"Too many imports ({:#08x})\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"No library found for symbol '{}'\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Library '{}' not found\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Segment not found for relocation at {:#018x}\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Unsupported chained pointer format: {}\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to resolve symbol: '{}'\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Segment not found for address {:#018x}\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Processing segment: {}\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"  {}: #{} values\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"      address:        {:#018x}\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"      target_offset:  {:#018x}\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"      segment_offset: {:#018x}\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"      page_idx: {}\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"      delta: {:#018x}\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"      offset: {:#018x}\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"        [next] address:        {:#018x}\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"        [next] target_offset:  {:#018x}\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"        [next] page_idx: {}\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"        [next] delta: {:#018x}\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"        [next] offset: {:#018x}\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"      next: {} (stride: {})\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"Adding chained_starts_in_segment[{}] ({} pages)\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@.str.22 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.24 = private unnamed_addr constant [98 x i8] c"/opt-bench/work/lief/LIEF/build/_deps/lief_spdlog_project-src/include/spdlog/fmt/bundled/format.h\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [28 x i8] c"%s:%d: assertion failed: %s\00", align 1
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], comdat, align 16
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", comdat, align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], comdat, align 16
@.str.31 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTINSt6locale5facetE = external constant ptr
@_ZTIN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetISt6localeEE, ptr @_ZTINSt6locale5facetE }, comdat, align 8
@_ZTSN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant [36 x i8] c"N3fmt3v1212format_facetISt6localeEE\00", comdat, align 1
@_ZTVN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetISt6localeEE, ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev, ptr @_ZN3fmt3v1212format_facetISt6localeED0Ev, ptr @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, comdat, align 8
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@.str.33 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr hidden local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr hidden local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr hidden local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr hidden local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr hidden local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr hidden local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", comdat, align 16
@.str.36 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], comdat, align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [24 x %"class.fmt::v12::detail::uint128_fallback"] [%"class.fmt::v12::detail::uint128_fallback" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128_fallback" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128_fallback" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128_fallback" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128_fallback" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128_fallback" { i64 7239297505920716784, i64 -1063354554122040811 }], comdat, align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = linkonce_odr hidden local_unnamed_addr constant [27 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125, i64 390625, i64 1953125, i64 9765625, i64 48828125, i64 244140625, i64 1220703125, i64 6103515625, i64 30517578125, i64 152587890625, i64 762939453125, i64 3814697265625, i64 19073486328125, i64 95367431640625, i64 476837158203125, i64 2384185791015625, i64 11920928955078125, i64 59604644775390625, i64 298023223876953125, i64 1490116119384765625], comdat, align 16
@.str.48 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.49 = private unnamed_addr constant [102 x i8] c"/opt-bench/work/lief/LIEF/build/_deps/lief_spdlog_project-src/include/spdlog/fmt/bundled/format-inl.h\00", align 1
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTIN3fmt3v1212format_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr hidden constant [25 x i8] c"N3fmt3v1212format_errorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.51 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.57 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.58 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.66 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.68 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.69 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"LIEF\00", align 1
@_ZZN6spdlog7details2os9thread_idEvE3tid = linkonce_odr hidden thread_local global i64 0, comdat, align 8
@_ZGVZN6spdlog7details2os9thread_idEvE3tid = linkonce_odr hidden thread_local local_unnamed_addr global i64 0, comdat, align 8
@.str.127 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.131 = private unnamed_addr constant [18 x i8] c"unordered_map::at\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"
@switch.table._ZN4LIEF5MachO24DyldChainedFixupsCreator6createERNS0_6BinaryE = private unnamed_addr constant [12 x i8] c"\08\04\00\00\00\00\00\00\00\00\00\08", align 8

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
define hidden noundef i64 @_ZNK4LIEF5MachO24DyldChainedFixupsCreator16binding_rebase_t4addrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(88) %i.a) #23
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 13) i32 @_ZN4LIEF5MachO24DyldChainedFixupsCreator14pointer_formatERKNS0_6BinaryEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !56
  %i.b = icmp ugt i64 %1, 16777215
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.126) #23
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 4, ptr nonnull @.str, i64 26, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !68
  %i.g = icmp eq i32 %i.f, 16777228
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, 16777215
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %1, 65535
  %. = select i1 %i.l, i32 12, i32 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %., %bb.e ], [ 2, %bb.d ], [ 2, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS0_6BinaryERKNS0_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.std::pair.174", align 8    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.c = load i16, ptr %i.b, align 2, !tbaa !355
  %i.d = lshr i16 %i.c, 8                         ; 2 uses
  %i.e = zext nneg i16 %i.d to i64
  %7 = add nsw i16 %i.d, -1
  %switch = icmp ult i16 %7, 253
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  %or.cond = select i1 %switch, i1 true, i1 %i.h
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !56   ; 2 uses
  %.sroa.754.0.extract.shift57 = and i64 %i.l, -4294967296
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.f, align 8, !tbaa !74   ; 11 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.126) #23
  %i.p = load ptr, ptr %2, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.r(ptr noundef nonnull align 8 dereferenceable(56) %2) #23
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.1, i64 32, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77, !noalias !356 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !77, !noalias !356 ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = ashr exact i64 %i.aa, 3                 ; 2 uses
  %.not80 = icmp eq ptr %i.x, %i.v
  br i1 %.not80, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val1.val.i.i.i.peel = load ptr, ptr %i.v, align 8, !tbaa !78, !noalias !357 ; 2 uses
  %i.ad = getelementptr i8, ptr %.val1.val.i.i.i.peel, i64 64
  %.val1.val.val2.i.i.i.peel = load i64, ptr %i.ad, align 8, !tbaa !74, !noalias !357
  %i.ae = icmp eq i64 %.val1.val.val2.i.i.i.peel, %i.m
  br i1 %i.ae, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i.peel"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel": ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr i8, ptr %.val1.val.i.i.i.peel, i64 56
  %.val1.val.val.i.i.i.peel = load ptr, ptr %i.af, align 8, !noalias !357
  %i.ag = load ptr, ptr %3, align 8, !tbaa !79, !noalias !357
  %bcmp.i.i.i.i.i.i.peel = tail call i32 @bcmp(ptr readonly %.val1.val.val.i.i.i.peel, ptr %i.ag, i64 %i.m), !noalias !357
  %i.ah = icmp eq i32 %bcmp.i.i.i.i.i.i.peel, 0
  br i1 %i.ah, label %.critedge.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i.peel"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i.peel": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel", %.lr.ph.i.i.i
  %.not81.peel = icmp eq i64 %i.aa, 8
  br i1 %.not81.peel, label %.critedge.i.i.i, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i.peel.next

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i.peel.next: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i.peel"
  %.val1.val.i.i.i.peel90 = load ptr, ptr %i.ac, align 8, !tbaa !78, !noalias !357 ; 2 uses
  %i.ai = getelementptr i8, ptr %.val1.val.i.i.i.peel90, i64 64
  %.val1.val.val2.i.i.i.peel91 = load i64, ptr %i.ai, align 8, !tbaa !74, !noalias !357
  %i.aj = icmp eq i64 %.val1.val.val2.i.i.i.peel91, %i.m
  br i1 %i.aj, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel92", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i.peel95"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel92": ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i.peel.next
  %i.ak = getelementptr i8, ptr %.val1.val.i.i.i.peel90, i64 56
  %.val1.val.val.i.i.i.peel93 = load ptr, ptr %i.ak, align 8, !noalias !357
  %i.al = load ptr, ptr %3, align 8, !tbaa !79, !noalias !357
  %bcmp.i.i.i.i.i.i.peel94 = tail call i32 @bcmp(ptr readonly %.val1.val.val.i.i.i.peel93, ptr %i.al, i64 %i.m), !noalias !357
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i.i.peel94, 0
  br i1 %i.am, label %.critedge.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i.peel95"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i.peel95": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel92", %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i.peel.next
  %.not81.peel96 = icmp eq i64 %i.aa, 16
  br i1 %.not81.peel96, label %.critedge.i.i.i, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i.peel95", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i"
  %i.an = phi i64 [ %i.au, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i" ], [ 2, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i.peel95" ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.an
  %.val1.val.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !78, !noalias !357 ; 2 uses
  %i.ap = getelementptr i8, ptr %.val1.val.i.i.i, i64 64
  %.val1.val.val2.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !74, !noalias !357
  %i.aq = icmp eq i64 %.val1.val.val2.i.i.i, %i.m
  br i1 %i.aq, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i": ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i
  %i.ar = getelementptr i8, ptr %.val1.val.i.i.i, i64 56
  %.val1.val.val.i.i.i = load ptr, ptr %i.ar, align 8, !noalias !357
  %i.as = load ptr, ptr %3, align 8, !tbaa !79, !noalias !357
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val1.val.val.i.i.i, ptr %i.as, i64 %i.m), !noalias !357
  %i.at = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.at, label %.critedge.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i", %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i
  %i.au = add nuw nsw i64 %i.an, 1                ; 2 uses
  %.not81 = icmp eq i64 %i.au, %i.ab
  br i1 %.not81, label %.critedge.i.i.i.thread, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEC2ERKSE_.exit.i.i.i, !llvm.loop !348

.critedge.i.i.i:                                  ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i.peel", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel92", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i.peel95", %bb.f
  %.lcssa.i.i.i = phi i64 [ 0, %bb.f ], [ 1, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel92" ], [ 2, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i.peel95" ], [ 0, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i.peel" ], [ 1, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i.peel" ], [ %i.an, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.i.i.i" ] ; 4 uses
  %i.av = icmp eq i64 %.lcssa.i.i.i, %i.ab
  br i1 %i.av, label %.critedge.i.i.i.thread, label %_ZSt10__distanceIN4LIEF12ref_iteratorIRKSt6vectorIPNS0_5MachO12DylibCommandESaIS5_EES5_N9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit

.critedge.i.i.i.thread:                           ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4LIEF5MachO24DyldChainedFixupsCreator7lib2ordERKNS3_6BinaryERKNS3_6SymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS2_12ref_iteratorIRKSt6vectorIPNS3_12DylibCommandESaISP_EESP_NS_17__normal_iteratorIPKSP_SR_EEEEEEbT_.exit.thread7.i.i.i", %.critedge.i.i.i
  %i.aw = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.126) #23
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ax, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.2, i64 22, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.thread

_ZSt10__distanceIN4LIEF12ref_iteratorIRKSt6vectorIPNS0_5MachO12DylibCommandESaIS5_EES5_N9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit: ; preds = %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.ay, ptr %6, align 8, !tbaa !81
  %i.az = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.m, ptr %i.a, align 8, !tbaa !56
  %i.ba = icmp ugt i64 %i.m, 15
  br i1 %i.ba, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %_ZSt10__distanceIN4LIEF12ref_iteratorIRKSt6vectorIPNS0_5MachO12DylibCommandESaIS5_EES5_N9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit
  %i.bb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.bb, ptr %6, align 8, !tbaa !79
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !52
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %_ZSt10__distanceIN4LIEF12ref_iteratorIRKSt6vectorIPNS0_5MachO12DylibCommandESaIS5_EES5_N9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit
  %i.bd = phi ptr [ %i.bb, %bb.g ], [ %i.ay, %_ZSt10__distanceIN4LIEF12ref_iteratorIRKSt6vectorIPNS0_5MachO12DylibCommandESaIS5_EES5_N9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit ] ; 2 uses
  %cond = icmp eq i64 %i.m, 1
  br i1 %cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.be = load i8, ptr %i.az, align 1, !tbaa !52
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !52
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2IRS6_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.az, i64 %i.m, i1 false)
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2IRS6_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2IRS6_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.h, %bb.i
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !74
  %i.bh = load ptr, ptr %6, align 8, !tbaa !79
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %.lcssa.i.i.i, ptr %i.bj, align 8, !tbaa !83
  %i.bk = call { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS8_EEES6_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %6) ; 0 uses
  %i.bl = load ptr, ptr %6, align 8, !tbaa !79    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ay
  br i1 %i.bm, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2IRS6_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.bn = load i64, ptr %i.ay, align 8, !tbaa !52
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #24
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2IRS6_RmTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.sroa.754.0.extract.shift59 = and i64 %.lcssa.i.i.i, 9223372032559808512
  br label %.thread

.thread:                                          ; preds = %bb.a, %.critedge.i.i.i.thread, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit, %bb.c, %bb.e
  %.sroa.050.3 = phi i64 [ 2, %bb.e ], [ %.lcssa.i.i.i, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit ], [ %i.l, %bb.c ], [ 2, %.critedge.i.i.i.thread ], [ %i.e, %bb.a ]
  %.sroa.754.sroa.0.3 = phi i64 [ 0, %bb.e ], [ %.sroa.754.0.extract.shift59, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit ], [ %.sroa.754.0.extract.shift57, %bb.c ], [ 0, %.critedge.i.i.i.thread ], [ 0, %bb.a ]
  %.sroa.754.sroa.5.3 = phi i8 [ 0, %bb.e ], [ 1, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmED2Ev.exit ], [ 1, %bb.c ], [ 0, %.critedge.i.i.i.thread ], [ 1, %bb.a ]
  %.sroa.050.0.insert.ext = and i64 %.sroa.050.3, 4294967295
  %.sroa.050.0.insert.insert = or disjoint i64 %.sroa.754.sroa.0.3, %.sroa.050.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.050.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.754.sroa.5.3, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4LIEF5MachO24DyldChainedFixupsCreator11find_symbolERKNS0_6BinaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85, !noalias !363 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85, !noalias !364 ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
end_hunk_0
