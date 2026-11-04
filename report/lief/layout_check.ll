Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/layout_check?download=true
inline.NumInlined: 4839
inline.NumDeleted: 1623
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0
@stderr = external local_unnamed_addr global ptr, align 8
@.str.128 = private unnamed_addr constant [28 x i8] c"%s:%d: assertion failed: %s\00", align 1
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], comdat, align 16
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", comdat, align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], comdat, align 16
@.str.134 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTINSt6locale5facetE = external constant ptr
@_ZTIN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetISt6localeEE, ptr @_ZTINSt6locale5facetE }, comdat, align 8
@_ZTSN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant [36 x i8] c"N3fmt3v1212format_facetISt6localeEE\00", comdat, align 1
@_ZTVN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetISt6localeEE, ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev, ptr @_ZN3fmt3v1212format_facetISt6localeED0Ev, ptr @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, comdat, align 8
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@.str.136 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.137 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr hidden local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr hidden local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr hidden local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr hidden local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr hidden local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr hidden local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", comdat, align 16
@.str.139 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], comdat, align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [24 x %"class.fmt::v12::detail::uint128_fallback"] [%"class.fmt::v12::detail::uint128_fallback" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128_fallback" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128_fallback" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128_fallback" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128_fallback" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128_fallback" { i64 7239297505920716784, i64 -1063354554122040811 }], comdat, align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = linkonce_odr hidden local_unnamed_addr constant [27 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125, i64 390625, i64 1953125, i64 9765625, i64 48828125, i64 244140625, i64 1220703125, i64 6103515625, i64 30517578125, i64 152587890625, i64 762939453125, i64 3814697265625, i64 19073486328125, i64 95367431640625, i64 476837158203125, i64 2384185791015625, i64 11920928955078125, i64 59604644775390625, i64 298023223876953125, i64 1490116119384765625], comdat, align 16
@.str.151 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.152 = private unnamed_addr constant [102 x i8] c"/opt-bench/work/lief/LIEF/build/_deps/lief_spdlog_project-src/include/spdlog/fmt/bundled/format-inl.h\00", align 1
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTIN3fmt3v1212format_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr hidden constant [25 x i8] c"N3fmt3v1212format_errorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.154 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.155 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.156 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.157 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.158 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.159 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.160 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.161 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.162 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.163 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.164 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.167 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.168 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.169 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.171 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.172 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@_ZTVN4LIEF10SpanStreamE = linkonce_odr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4LIEF10SpanStreamE, ptr @_ZN4LIEF12BinaryStreamD2Ev, ptr @_ZN4LIEF10SpanStreamD0Ev, ptr @_ZNK4LIEF10SpanStream4sizeEv, ptr @_ZN4LIEF12BinaryStream9peek_dataERSt6vectorIhSaIhEEmmm, ptr @_ZN4LIEF12BinaryStream9read_dataERSt6vectorIhSaIhEEm, ptr @_ZNK4LIEF10SpanStream1pEv, ptr @_ZN4LIEF12BinaryStream5startEv, ptr @_ZN4LIEF12BinaryStream1pEv, ptr @_ZN4LIEF12BinaryStream3endEv, ptr @_ZNK4LIEF10SpanStream5startEv, ptr @_ZNK4LIEF10SpanStream3endEv, ptr @_ZNK4LIEF10SpanStream7read_atEmmm, ptr @_ZNK4LIEF12BinaryStream7peek_inEPvmmm, ptr @_ZN4LIEF12BinaryStream11bind_binaryERNS_6BinaryE] }, comdat, align 8
@_ZTIN4LIEF10SpanStreamE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4LIEF10SpanStreamE, ptr @_ZTIN4LIEF12BinaryStreamE }, comdat, align 8
@_ZTSN4LIEF10SpanStreamE = linkonce_odr constant [20 x i8] c"N4LIEF10SpanStreamE\00", comdat, align 1
@_ZTIN4LIEF12BinaryStreamE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4LIEF12BinaryStreamE }, comdat, align 8
@_ZTSN4LIEF12BinaryStreamE = linkonce_odr constant [22 x i8] c"N4LIEF12BinaryStreamE\00", comdat, align 1
@.str.230 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"LIEF\00", align 1
@.str.232 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.233 = private unnamed_addr constant [7 x i8] c"SYMTAB\00", align 1
@.str.234 = private unnamed_addr constant [11 x i8] c"SYMTAB_STR\00", align 1
@.str.235 = private unnamed_addr constant [17 x i8] c"DYSYMTAB_LOC_REL\00", align 1
@.str.236 = private unnamed_addr constant [17 x i8] c"DYSYMTAB_EXT_REL\00", align 1
@.str.237 = private unnamed_addr constant [22 x i8] c"DYSYMTAB_INDIRECT_SYM\00", align 1
@.str.238 = private unnamed_addr constant [18 x i8] c"DYLD_INFO_REBASES\00", align 1
@.str.239 = private unnamed_addr constant [15 x i8] c"DYLD_INFO_BIND\00", align 1
@.str.240 = private unnamed_addr constant [20 x i8] c"DYLD_INFO_WEAK_BIND\00", align 1
@.str.241 = private unnamed_addr constant [20 x i8] c"DYLD_INFO_LAZY_BIND\00", align 1
@.str.242 = private unnamed_addr constant [17 x i8] c"DYLD_INFO_EXPORT\00", align 1
@.str.243 = private unnamed_addr constant [19 x i8] c"SEGMENT_SPLIT_INFO\00", align 1
@.str.244 = private unnamed_addr constant [10 x i8] c"ATOM_INFO\00", align 1
@.str.245 = private unnamed_addr constant [16 x i8] c"FUNCTION_STARTS\00", align 1
@.str.246 = private unnamed_addr constant [13 x i8] c"DATA_IN_CODE\00", align 1
@.str.247 = private unnamed_addr constant [15 x i8] c"CODE_SIGNATURE\00", align 1
@.str.248 = private unnamed_addr constant [17 x i8] c"DYLD_EXPORT_TRIE\00", align 1
@.str.249 = private unnamed_addr constant [20 x i8] c"DYLD_CHAINED_FIXUPS\00", align 1
@.str.250 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZZN6spdlog7details2os9thread_idEvE3tid = linkonce_odr hidden thread_local global i64 0, comdat, align 8
@_ZGVZN6spdlog7details2os9thread_idEvE3tid = linkonce_odr hidden thread_local local_unnamed_addr global i64 0, comdat, align 8
@.str.251 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"
@switch.table._ZN4LIEF5MachO13LayoutChecker14check_linkeditEv.99 = private unnamed_addr constant [17 x ptr] [ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249], align 8
@switch.table._ZN4LIEF5MachO13LayoutChecker20check_chained_fixupsEv = private unnamed_addr constant [3 x i8] c"\04\08\10", align 4

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
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker18check_initializersEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.LIEF::SpanStream", align 8  ; 17 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.LIEF::SpanStream", align 8 ; 14 uses
  %11 = alloca %"class.LIEF::result", align 8     ; 6 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52, !nonnull !53, !align !54 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.n = load i32, ptr %i.m, align 8, !tbaa !60
  %.fr = freeze i32 %i.n                          ; 3 uses
  %i.o = icmp eq i32 %.fr, -17958194
  %i.p = icmp eq i32 %.fr, -822415874
  %spec.select.i.i = or i1 %i.o, %i.p
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(552) %i.l) #24 ; 3 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !52, !nonnull !53, !align !54 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 256
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 264
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !66   ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !67   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 384307168202282325
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.251) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not259 = icmp eq ptr %i.x, %i.y
  br i1 %.not259, label %._crit_edge.thread, label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE7reserveEm.exit

_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE7reserveEm.exit: ; preds = %bb.c
  %i.ae = mul nuw nsw i64 %i.ac, 24
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #26 ; 4 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ac ; 2 uses
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !52  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 256
  %.pre344 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !68, !noalias !435 ; 3 uses
  %.phi.trans.insert345 = getelementptr inbounds nuw i8, ptr %.pre, i64 264
  %.pre346 = load ptr, ptr %.phi.trans.insert345, align 8, !tbaa !68, !noalias !436 ; 2 uses
  %.pre352 = ptrtoint ptr %.pre346 to i64
  %.pre353 = ptrtoint ptr %.pre344 to i64
  %.pre355 = sub i64 %.pre352, %.pre353
  %.pre357 = ashr exact i64 %.pre355, 3
  %i.ah = icmp eq ptr %.pre346, %.pre344
  br i1 %i.ah, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE9push_backEOS3_.exit
  %i.ai = icmp eq ptr %.sroa.0203.1, %.sroa.13.1
  br i1 %i.ai, label %._crit_edge.thread, label %bb.i

.lr.ph:                                           ; preds = %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE7reserveEm.exit, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE9push_backEOS3_.exit
  %.sroa.0203.0298 = phi ptr [ %.sroa.0203.1, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE9push_backEOS3_.exit ], [ %i.af, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE7reserveEm.exit ] ; 7 uses
  %.sroa.13.0297 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE9push_backEOS3_.exit ], [ %i.af, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE7reserveEm.exit ] ; 9 uses
  %.sroa.4193.0296 = phi ptr [ %i.bl, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE9push_backEOS3_.exit ], [ %.pre344, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE7reserveEm.exit ] ; 2 uses
  %.sroa.8194.0295 = phi i64 [ %i.bm, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE9push_backEOS3_.exit ], [ 0, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE7reserveEm.exit ]
  %.sroa.24.0294 = phi ptr [ %.sroa.24.1, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE9push_backEOS3_.exit ], [ %i.ag, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE7reserveEm.exit ] ; 3 uses
  %i.aj = load ptr, ptr %.sroa.4193.0296, align 8, !tbaa !70 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.al = load <2 x i32>, ptr %i.ak, align 8
  %13 = and <2 x i32> %i.al, splat (i32 4)
  %14 = icmp ne <2 x i32> %13, zeroinitializer    ; 2 uses
  %15 = extractelement <2 x i1> %14, i64 0
  %16 = extractelement <2 x i1> %14, i64 1
  %17 = select i1 %16, i1 true, i1 %15
  br i1 %17, label %bb.d, label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.an = load i64, ptr %i.am, align 8, !tbaa !88 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !89
  %i.aq = add i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !90 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.13.0297, %.sroa.24.0294
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.an, ptr %.sroa.13.0297, align 8, !tbaa !91
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.0297, i64 8
  store i64 %i.aq, ptr %.sroa.5183.0..sroa_idx, align 8, !tbaa !91
  %.sroa.6186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.0297, i64 16
  store i64 %i.as, ptr %.sroa.6186.0..sroa_idx, align 8, !tbaa !91
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.13.0297, i64 24
  br label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.au = ptrtoint ptr %.sroa.13.0297 to i64
  %i.av = ptrtoint ptr %.sroa.0203.0298 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.g, label %_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #25
  unreachable

_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ay = sdiv exact i64 %i.aw, 24                ; 3 uses
  %i.az = icmp eq ptr %.sroa.13.0297, %.sroa.0203.0298 ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.az, i64 1, i64 %i.ay
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ay ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ay
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 384307168202282325)
  %i.bd = select i1 %i.bb, i64 384307168202282325, i64 %i.bc ; 3 uses
  %.not.i.i.i.i106 = icmp ne i64 %i.bd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i106)
  %i.be = mul nuw nsw i64 %i.bd, 24
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #26 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.aw ; 3 uses
  store i64 %i.an, ptr %i.bg, align 8, !tbaa !91
  %.sroa.5183.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.aq, ptr %.sroa.5183.0..sroa_idx184, align 8, !tbaa !91
  %.sroa.6186.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %i.as, ptr %.sroa.6186.0..sroa_idx187, align 8, !tbaa !91
  br i1 %i.az, label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i ], [ %i.bf, %_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0203.0298, %_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !92, !alias.scope !437
  %i.bh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bh, %.sroa.13.0297
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !416

_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bf, %_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bi, %.lr.ph.i.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i27.i.i.i = icmp eq ptr %.sroa.0203.0298, null
  br i1 %.not.i27.i.i.i, label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0203.0298, i64 noundef %i.aw) #27
  br label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.bd
  br label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.e, %.lr.ph
  %.sroa.24.1 = phi ptr [ %.sroa.24.0294, %.lr.ph ], [ %i.bk, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.24.0294, %bb.e ] ; 13 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0297, %.lr.ph ], [ %i.bj, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.at, %bb.e ] ; 6 uses
  %.sroa.0203.1 = phi ptr [ %.sroa.0203.0298, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0203.0298, %bb.e ] ; 18 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.4193.0296, i64 8
  %i.bm = add nuw nsw i64 %.sroa.8194.0295, 1     ; 2 uses
  %.not260 = icmp eq i64 %i.bm, %.pre357
  br i1 %.not260, label %._crit_edge, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.c, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE7reserveEm.exit, %._crit_edge
  %.sroa.0203.0.lcssa404 = phi ptr [ %.sroa.0203.1, %._crit_edge ], [ %i.af, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE7reserveEm.exit ], [ null, %bb.c ]
  %.sroa.24.0.lcssa402 = phi ptr [ %.sroa.24.1, %._crit_edge ], [ %i.ag, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tSaIS3_EE7reserveEm.exit ], [ null, %bb.c ]
  %i.bn = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str)
  br label %.thread239

bb.i:                                             ; preds = %._crit_edge
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !52, !nonnull !53, !align !54 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !95, !noalias !438 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 144
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !95, !noalias !439 ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3
  %.not261301 = icmp eq ptr %i.bs, %i.bq
  br i1 %.not261301, label %._crit_edge306, label %.lr.ph305

.lr.ph305:                                        ; preds = %bb.i, %.thread
  %.sroa.4174.0303 = phi ptr [ %i.ci, %.thread ], [ %i.bq, %bb.i ] ; 2 uses
  %.sroa.8175.0302 = phi i64 [ %i.cj, %.thread ], [ 0, %bb.i ]
  %i.bx = load ptr, ptr %.sroa.4174.0303, align 8, !tbaa !97 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !98 ; 2 uses
  %i.ca = icmp ne i64 %i.bz, 17
  %i.cb = icmp ne i64 %i.bz, 26
  %spec.select.i.i108.not = and i1 %i.ca, %i.cb
  %i.cc = icmp eq ptr %i.bx, null
  %i.cd = or i1 %i.cc, %spec.select.i.i108.not
  br i1 %i.cd, label %.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !441 ; 2 uses
  store i64 %i.cf, ptr %i.d, align 8, !tbaa !91
  %i.cg = tail call fastcc noundef zeroext i1 @_ZZN4LIEF5MachO13LayoutChecker18check_initializersEvENK8ranges_t7containEm(ptr %.sroa.0203.1, ptr %.sroa.13.1, i64 noundef %i.cf)
  br i1 %i.cg, label %bb.k, label %.thread214

.thread214:                                       ; preds = %bb.j
  %i.ch = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.thread239

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.thread

.thread:                                          ; preds = %.lr.ph305, %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.4174.0303, i64 8
  %i.cj = add nuw nsw i64 %.sroa.8175.0302, 1     ; 2 uses
  %.not261 = icmp eq i64 %i.cj, %i.bw
  br i1 %.not261, label %._crit_edge306, label %.lr.ph305

._crit_edge306:                                   ; preds = %.thread, %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 232
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !100, !noalias !442 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 240
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !100, !noalias !443 ; 2 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 3
  %.not262314 = icmp eq ptr %i.cn, %i.cl
  br i1 %.not262314, label %.thread239, label %.lr.ph318

.lr.ph318:                                        ; preds = %._crit_edge306
  %i.cs = select i1 %spec.select.i.i, i64 3, i64 7 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph318, %.thread232
  %.sroa.4163.0316 = phi ptr [ %i.cl, %.lr.ph318 ], [ %i.hl, %.thread232 ] ; 2 uses
  %.sroa.8164.0315 = phi i64 [ 0, %.lr.ph318 ], [ %i.hm, %.thread232 ]
  %i.cy = load ptr, ptr %.sroa.4163.0316, align 8, !tbaa !102 ; 21 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 116
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !105
  %i.db = and i32 %i.da, 255
  %i.dc = add nsw i32 %i.db, -9
  %switch = icmp ult i32 %i.dc, 2
  br i1 %switch, label %.critedge, label %.thread232

.critedge:                                        ; preds = %bb.l
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !62
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call noundef i64 %i.df(ptr noundef nonnull align 8 dereferenceable(64) %i.cy) #24
  %i.dh = and i64 %i.dg, %i.cs
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.di = load ptr, ptr %i.cy, align 8, !tbaa !62
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(64) %i.cy) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.dl = load ptr, ptr %i.cy, align 8, !tbaa !62
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call noundef i64 %i.dn(ptr noundef nonnull align 8 dereferenceable(64) %i.cy) #24
  store i64 %i.do, ptr %i.e, align 8, !tbaa !91
  %i.dp = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.dq = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO13LayoutChecker18check_initializersEv:bb.a

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.us: ; preds = %bb.s, %bb.r
  %i.fh = phi i64 [ %i.ez, %bb.r ], [ %.pre.i.us, %bb.s ]
  %i.fi = load i32, ptr %i.c, align 4, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.fj = add i64 %i.fh, 4                        ; 3 uses
  store i64 %i.fj, ptr %i.ct, align 8, !tbaa !111
  %i.fk = zext i32 %i.fi to i64
  %i.fl = add i64 %i.t, %i.fk
  %i.fm = call fastcc noundef zeroext i1 @_ZZN4LIEF5MachO13LayoutChecker18check_initializersEvENK8ranges_t7containEm(ptr %.sroa.0203.1, ptr %.sroa.13.1, i64 noundef %i.fl)
  br i1 %i.fm, label %.split.us, label %.split311.us, !llvm.loop !428

.split:                                           ; preds = %bb.p, %.thread222
  %i.fn = phi i64 [ %i.gn, %.thread222 ], [ 0, %bb.p ]
  %i.fo = load ptr, ptr %3, align 8, !tbaa !62
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = call noundef i64 %i.fq(ptr noundef nonnull align 8 dereferenceable(24) %3) #24, !inline_history !426
  %i.fs = icmp ult i64 %i.fn, %i.fr
  br i1 %i.fs, label %bb.t, label %.split308.us

bb.t:                                             ; preds = %.split
  %i.ft = load i64, ptr %i.ct, align 8, !tbaa !111 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !91
  %i.fu = load ptr, ptr %3, align 8, !tbaa !62
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 96
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = call i64 %i.fw(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.b, i64 noundef %i.ft, i64 noundef 8, i64 noundef 0) #24, !inline_history !429
  %i.fy = and i64 %i.fx, 4294967296
  %.not.i.i118 = icmp eq i64 %i.fy, 0
  store i64 %i.ft, ptr %i.ct, align 8, !tbaa !111
  br i1 %.not.i.i118, label %_ZNK4LIEF12BinaryStream4peekImEENS_6resultIT_EEv.exit.i, label %bb.u

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i64 %i.ez, ptr %i.g, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.fz = load ptr, ptr %i.cy, align 8, !tbaa !62
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %i.cy) #24
  %i.gc = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.gd = load ptr, ptr %4, align 8, !tbaa !106   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !107
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i116: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.gi = load i8, ptr %i.cu, align 8, !tbaa !112, !range !118, !noundef !53
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZN4LIEF11swap_endianImEEvPT_(ptr noundef nonnull %i.b) #24
  %.pre.i119 = load i64, ptr %i.ct, align 8, !tbaa !111
  br label %bb.w

_ZNK4LIEF12BinaryStream4peekImEENS_6resultIT_EEv.exit.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZNK4LIEF12BinaryStream4readImEENS_6resultIT_EEv.exit

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.gk = phi i64 [ %i.ft, %bb.u ], [ %.pre.i119, %bb.v ]
  %i.gl = load i64, ptr %i.b, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.fca.0.insert.i4.i = insertvalue { i64, i8 } poison, i64 %i.gl, 0
  %.fca.1.insert.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i4.i, i8 1, 1
  %i.gm = add i64 %i.gk, 8                        ; 2 uses
  store i64 %i.gm, ptr %i.ct, align 8, !tbaa !111
  br label %_ZNK4LIEF12BinaryStream4readImEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readImEENS_6resultIT_EEv.exit: ; preds = %_ZNK4LIEF12BinaryStream4peekImEENS_6resultIT_EEv.exit.i, %bb.w
  %i.gn = phi i64 [ %i.ft, %_ZNK4LIEF12BinaryStream4peekImEENS_6resultIT_EEv.exit.i ], [ %i.gm, %bb.w ] ; 3 uses
  %.fca.1.insert.i6.i = phi { i64, i8 } [ { i64 1, i8 0 }, %_ZNK4LIEF12BinaryStream4peekImEENS_6resultIT_EEv.exit.i ], [ %.fca.1.insert.i5.i, %bb.w ] ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %.fca.1.insert.i6.i, 1
  %i.go = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.go, label %.thread222, label %bb.x

bb.x:                                             ; preds = %_ZNK4LIEF12BinaryStream4readImEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 %i.gn, ptr %i.h, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.gp = load ptr, ptr %i.cy, align 8, !tbaa !62
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %i.cy) #24
  %i.gs = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.gt = load ptr, ptr %5, align 8, !tbaa !106   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.x
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !107
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i121

.thread222:                                       ; preds = %_ZNK4LIEF12BinaryStream4readImEENS_6resultIT_EEv.exit
  %.fca.0.extract = extractvalue { i64, i8 } %.fca.1.insert.i6.i, 0
  %i.gy = and i64 %.fca.0.extract, 67108863
  %i.gz = add i64 %i.gy, %i.t
  %i.ha = call fastcc noundef zeroext i1 @_ZZN4LIEF5MachO13LayoutChecker18check_initializersEvENK8ranges_t7containEm(ptr %.sroa.0203.1, ptr %.sroa.13.1, i64 noundef %i.gz)
  br i1 %i.ha, label %.split, label %.split311.us, !llvm.loop !428

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i121: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %bb.y

.split311.us:                                     ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.us, %.thread222
  %i.hb = phi i64 [ %i.gn, %.thread222 ], [ %i.fj, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i64 %i.hb, ptr %i.i, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.hc = load ptr, ptr %i.cy, align 8, !tbaa !62
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %i.cy) #24
  %i.hf = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.hg = load ptr, ptr %6, align 8, !tbaa !106   ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %.split311.us
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !107
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %.split311.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  br label %bb.y

.split308.us:                                     ; preds = %.split.us, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.thread232

.thread232:                                       ; preds = %bb.l, %.split308.us
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.4163.0316, i64 8
  %i.hm = add nuw nsw i64 %.sroa.8164.0315, 1     ; 2 uses
  %.not262 = icmp eq i64 %i.hm, %i.cr
  br i1 %.not262, label %.thread241, label %bb.l

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i116
  %.9.ph = phi i1 [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i116 ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %i.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.thread239

.thread241:                                       ; preds = %.thread232
  %.pre347 = load ptr, ptr %i.k, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert348 = getelementptr inbounds nuw i8, ptr %.pre347, i64 232
  %.pre349 = load ptr, ptr %.phi.trans.insert348, align 8, !tbaa !100, !noalias !444 ; 3 uses
  %.phi.trans.insert350 = getelementptr inbounds nuw i8, ptr %.pre347, i64 240
  %.pre351 = load ptr, ptr %.phi.trans.insert350, align 8, !tbaa !100, !noalias !445 ; 2 uses
  %.pre359 = ptrtoint ptr %.pre351 to i64
  %.pre361 = ptrtoint ptr %.pre349 to i64
  %i.hn = icmp eq ptr %.pre351, %.pre349
  %i.ho = sub i64 %.pre359, %.pre361
  %i.hp = ashr exact i64 %i.ho, 3
  br i1 %i.hn, label %.thread239, label %.lr.ph326

.lr.ph326:                                        ; preds = %.thread241
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.ht = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.hu = getelementptr inbounds nuw i8, ptr %10, i64 32
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph326, %.thread252
  %.sroa.4149.0324 = phi ptr [ %.pre349, %.lr.ph326 ], [ %i.ld, %.thread252 ] ; 2 uses
  %.sroa.8.0323 = phi i64 [ 0, %.lr.ph326 ], [ %i.le, %.thread252 ]
  %i.hv = load ptr, ptr %.sroa.4149.0324, align 8, !tbaa !102 ; 19 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 116
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !105
  %i.hy = and i32 %i.hx, 255
  %.not94 = icmp eq i32 %i.hy, 22
  br i1 %.not94, label %bb.aa, label %.thread252

bb.aa:                                            ; preds = %bb.z
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 160
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !446
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 120
  %i.ic = load <2 x i32>, ptr %i.ib, align 8
  %18 = and <2 x i32> %i.ic, splat (i32 2)
  %19 = icmp ne <2 x i32> %18, zeroinitializer    ; 2 uses
  %20 = extractelement <2 x i1> %19, i64 0
  %21 = extractelement <2 x i1> %19, i64 1
  %22 = select i1 %21, i1 true, i1 %20
  br i1 %22, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.id = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4LIEF5MachO7Section12segment_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) %i.hv) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ie = load ptr, ptr %i.hv, align 8, !tbaa !62
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 40
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %i.hv) #24
  %i.ih = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %i.id, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %i.ii = load ptr, ptr %7, align 8, !tbaa !106   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.ab
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !107
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.thread239

bb.ac:                                            ; preds = %bb.aa
  %i.in = load ptr, ptr %i.hv, align 8, !tbaa !62
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 72
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = call noundef i64 %i.ip(ptr noundef nonnull align 8 dereferenceable(64) %i.hv) #24
  %i.ir = and i64 %i.iq, 3
  %.not95 = icmp eq i64 %i.ir, 0
  br i1 %.not95, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.is = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4LIEF5MachO7Section12segment_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) %i.hv) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.it = load ptr, ptr %i.hv, align 8, !tbaa !62
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(64) %i.hv) #24
  %i.iw = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %i.is, ptr noundef nonnull align 8 dereferenceable(32) %8)
  %i.ix = load ptr, ptr %8, align 8, !tbaa !106   ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.ad
  %i.ja = load i64, ptr %i.iy, align 8, !tbaa !107
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.jb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.thread239

bb.ae:                                            ; preds = %bb.ac
  %i.jc = load ptr, ptr %i.hv, align 8, !tbaa !62
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 88
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = call noundef i64 %i.je(ptr noundef nonnull align 8 dereferenceable(192) %i.hv) #24, !inline_history !425
  %i.jg = and i64 %i.jf, 3
  %.not96 = icmp eq i64 %i.jg, 0
  br i1 %.not96, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4LIEF5MachO7Section12segment_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) %i.hv) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ji = load ptr, ptr %i.hv, align 8, !tbaa !62
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %i.hv) #24
  %i.jl = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(32) %i.jh, ptr noundef nonnull align 8 dereferenceable(32) %9)
  %i.jm = load ptr, ptr %9, align 8, !tbaa !106   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.af
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !107
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.thread239

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.jr = load ptr, ptr %i.hv, align 8, !tbaa !62
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 56
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = call { ptr, i64 } %i.jt(ptr noundef nonnull align 8 dereferenceable(192) %i.hv) #24 ; 2 uses
  %i.jv = extractvalue { ptr, i64 } %i.ju, 0
  %i.jw = extractvalue { ptr, i64 } %i.ju, 1
  store i64 0, ptr %i.hq, align 8, !tbaa !111
  store i8 0, ptr %i.hr, align 8, !tbaa !112
  store i32 3, ptr %i.hs, align 4, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %10, align 8, !tbaa !62
  store ptr %i.jv, ptr %i.ht, align 8, !tbaa !115
  store i64 %i.jw, ptr %i.hu, align 8, !tbaa !116
  %i.jx = call noundef i64 @_ZNK4LIEF10SpanStream4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #24, !inline_history !426
  %.not328 = icmp eq i64 %i.jx, 0
  br i1 %.not328, label %._crit_edge321, label %.lr.ph320

.lr.ph320:                                        ; preds = %bb.ag, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.jy = load i64, ptr %i.hq, align 8, !tbaa !111 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !117
  %i.jz = load ptr, ptr %10, align 8, !tbaa !62
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 96
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = call i64 %i.kb(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull %i.a, i64 noundef %i.jy, i64 noundef 4, i64 noundef 0) #24, !inline_history !427
  %i.kd = and i64 %i.kc, 4294967296
  %.not.i.i138 = icmp eq i64 %i.kd, 0
  store i64 %i.jy, ptr %i.hq, align 8, !tbaa !111
  br i1 %.not.i.i138, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit143.thread, label %bb.ah

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit143.thread: ; preds = %.lr.ph320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store i40 1, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  store i64 %i.jy, ptr %i.j, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.ke = load ptr, ptr %i.hv, align 8, !tbaa !62
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(64) %i.hv) #24
  %i.kh = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ki = load ptr, ptr %12, align 8, !tbaa !106  ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

bb.ah:                                            ; preds = %.lr.ph320
  %i.kl = load i8, ptr %i.hr, align 8, !tbaa !112, !range !118, !noundef !53
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.ai, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit143

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #24
  %.pre.i141 = load i64, ptr %i.hq, align 8, !tbaa !111
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit143

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit143: ; preds = %bb.ah, %bb.ai
  %i.kn = phi i64 [ %i.jy, %bb.ah ], [ %.pre.i141, %bb.ai ]
  %i.ko = load i32, ptr %i.a, align 4, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.kp = add i64 %i.kn, 4                        ; 2 uses
  store i64 %i.kp, ptr %i.hq, align 8, !tbaa !111
  %i.kq = zext i32 %i.ko to i64                   ; 2 uses
  %i.kr = or disjoint i64 %i.kq, 4294967296
  %i.ks = trunc nuw nsw i64 %i.kr to i40
  store i40 %i.ks, ptr %11, align 8
  %i.kt = add i64 %i.t, %i.kq
  %i.ku = call fastcc noundef zeroext i1 @_ZZN4LIEF5MachO13LayoutChecker18check_initializersEvENK8ranges_t7containEm(ptr %.sroa.0203.1, ptr %.sroa.13.1, i64 noundef %i.kt)
  br i1 %i.ku, label %bb.ak, label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit143.thread
  %i.kv = load i64, ptr %i.kj, align 8, !tbaa !107
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit143.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  br label %.thread256

bb.aj:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit143
  %i.kx = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.9, ptr noundef nonnull align 4 dereferenceable(4) %11)
  br label %.thread256

.thread256:                                       ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %.15.ph = phi i1 [ %i.kx, %bb.aj ], [ %i.kh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.thread239

bb.ak:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ky = load ptr, ptr %10, align 8, !tbaa !62
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = call noundef i64 %i.la(ptr noundef nonnull align 8 dereferenceable(24) %10) #24, !inline_history !426
  %i.lc = icmp ult i64 %i.kp, %i.lb
  br i1 %i.lc, label %.lr.ph320, label %._crit_edge321, !llvm.loop !434

._crit_edge321:                                   ; preds = %bb.ak, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.thread252

.thread252:                                       ; preds = %bb.z, %._crit_edge321
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.4149.0324, i64 8
  %i.le = add nuw nsw i64 %.sroa.8.0323, 1        ; 2 uses
  %.not263 = icmp eq i64 %i.le, %i.hp
  br i1 %.not263, label %.thread239, label %bb.z

end_hunk_1
begin_hunk_2_@_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcjjEEEbSA_DpRKT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !583
  store ptr %1, ptr %6, align 8, !tbaa !123, !noalias !583
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.b, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !91, !noalias !583
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !126, !noalias !583
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %7, ptr %i.ab, align 8, !tbaa !128, !noalias !583
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 8909, ptr %i.ac, align 8, !tbaa !130, !noalias !583
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %8, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !107, !noalias !583
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr null, ptr %i.ad, align 8, !tbaa !131, !noalias !583
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(56) %6), !noalias !583
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !583
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !132, !noalias !585 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 4611686018427387903
  call void @llvm.assume(i1 %i.af)
  %i.ag = load ptr, ptr %7, align 8, !tbaa !121, !noalias !585 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  store ptr %i.ah, ptr %9, align 8, !tbaa !133, !alias.scope !585
  %i.ai = icmp eq ptr %i.ag, null
  %i.aj = icmp ne i64 %i.ae, 0
  %or.cond.i.i.i = and i1 %i.aj, %i.ai
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.230) #25
  unreachable

bb.f:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !585
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !91, !noalias !585
  %i.ak = icmp samesign ugt i64 %i.ae, 15
  br i1 %i.ak, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.al = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.al, ptr %9, align 8, !tbaa !106, !alias.scope !585
  %i.am = load i64, ptr %i.a, align 8, !tbaa !91, !noalias !585
  store i64 %i.am, ptr %i.ah, align 8, !tbaa !107, !alias.scope !585
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.an = phi ptr [ %i.al, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  switch i64 %i.ae, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ao = load i8, ptr %i.ag, align 1, !tbaa !107
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !107
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.ag, i64 %i.ae, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !91, !noalias !585 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !134, !alias.scope !585
  %i.ar = load ptr, ptr %9, align 8, !tbaa !106, !alias.scope !585
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !585
  %i.at = load ptr, ptr %7, align 8, !tbaa !121, !noalias !583 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.p
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.at) #24
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !583
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !582
  %i.au = load ptr, ptr %0, align 8, !tbaa !106   ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  %i.ax = load ptr, ptr %9, align 8, !tbaa !106   ; 5 uses
  %i.ay = icmp eq ptr %i.ax, %i.ah                ; 2 uses
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  br i1 %i.ay, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  br i1 %i.ay, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.az = load i64, ptr %i.aq, align 8, !tbaa !134 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  switch i64 %i.az, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !107
  store i8 %i.bb, ptr %i.au, align 1, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ax, i64 %i.az, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bc = load i64, ptr %i.aq, align 8, !tbaa !134 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !134
  %i.be = load ptr, ptr %0, align 8, !tbaa !106
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !107
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %0, align 8, !tbaa !106
  %i.bh = load <2 x i64>, ptr %i.aq, align 8, !tbaa !107
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !tbaa !107
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bi = load i64, ptr %i.av, align 8, !tbaa !107
  store ptr %i.ax, ptr %0, align 8, !tbaa !106
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load <2 x i64>, ptr %i.aq, align 8, !tbaa !107
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.au, ptr %9, align 8, !tbaa !106
  store i64 %i.bi, ptr %i.ah, align 8, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ah, ptr %9, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bl = phi ptr [ %i.au, %bb.n ], [ %i.ah, %bb.o ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.aq, align 8, !tbaa !134
  store i8 0, ptr %i.bl, align 1, !tbaa !107
  %i.bm = load ptr, ptr %9, align 8, !tbaa !106   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ah
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bo = load i64, ptr %i.ah, align 8, !tbaa !107
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker10check_mainEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !53, !align !54 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.d = load i32, ptr %i.c, align 4, !tbaa !158
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %bb.b, label %.thread60

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZNK4LIEF5MachO6Binary12main_commandEv(ptr noundef nonnull align 8 dereferenceable(552) %i.b) #24 ; 2 uses
  %.not40.not.not = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !53, !align !54 ; 3 uses
  br i1 %.not40.not.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(552) %i.f) #24
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !587
  %i.m = add i64 %i.l, %i.j
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.o = tail call noundef ptr @_ZNK4LIEF5MachO6Binary28segment_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552) %i.n, i64 noundef %i.m) #24 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread60.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.r = load <2 x i32>, ptr %i.q, align 8
  %1 = and <2 x i32> %i.r, splat (i32 4)
  %2 = icmp ne <2 x i32> %1, zeroinitializer      ; 2 uses
  %3 = extractelement <2 x i1> %2, i64 0
  %4 = extractelement <2 x i1> %2, i64 1
  %5 = select i1 %4, i1 true, i1 %3
  br i1 %5, label %.thread, label %.thread60.sink.split

bb.e:                                             ; preds = %bb.b
  %i.s = tail call noundef ptr @_ZNK4LIEF5MachO6Binary14thread_commandEv(ptr noundef nonnull align 8 dereferenceable(552) %i.f) #24 ; 2 uses
  %.not41.not = icmp eq ptr %i.s, null
  br i1 %.not41.not, label %.thread60.sink.split, label %bb.f

.thread:                                          ; preds = %bb.d
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.u = tail call noundef ptr @_ZNK4LIEF5MachO6Binary14thread_commandEv(ptr noundef nonnull align 8 dereferenceable(552) %i.t) #24 ; 2 uses
  %.not41.not69 = icmp eq ptr %i.u, null
  br i1 %.not41.not69, label %.thread60, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.v = phi ptr [ %i.u, %.thread ], [ %i.s, %bb.e ]
  %i.w = tail call noundef i64 @_ZNK4LIEF5MachO13ThreadCommand2pcEv(ptr noundef nonnull align 8 dereferenceable(96) %i.v) #24 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.thread60.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.z = tail call noundef ptr @_ZNK4LIEF5MachO6Binary28segment_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552) %i.y, i64 noundef %i.w) #24 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.thread60.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ac = load <2 x i32>, ptr %i.ab, align 8
  %6 = and <2 x i32> %i.ac, splat (i32 4)
  %7 = icmp ne <2 x i32> %6, zeroinitializer      ; 2 uses
  %8 = extractelement <2 x i1> %7, i64 0
  %9 = extractelement <2 x i1> %7, i64 1
  %10 = select i1 %9, i1 true, i1 %8
  br i1 %10, label %.thread60, label %.thread60.sink.split

.thread60.sink.split:                             ; preds = %bb.e, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %.str.28.sink = phi ptr [ @.str.27, %bb.d ], [ @.str.28, %bb.f ], [ @.str.26, %bb.g ], [ @.str.26, %bb.c ], [ @.str.27, %bb.h ], [ @.str.29, %bb.e ]
  %i.ad = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %.str.28.sink)
  br label %.thread60

.thread60:                                        ; preds = %.thread60.sink.split, %.thread, %bb.h, %bb.a
  %.8 = phi i1 [ true, %bb.a ], [ true, %bb.h ], [ true, %.thread ], [ %i.ad, %.thread60.sink.split ]
  ret i1 %.8
}

declare noundef ptr @_ZNK4LIEF5MachO6Binary12main_commandEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #4

declare noundef ptr @_ZNK4LIEF5MachO6Binary28segment_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552), i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4LIEF5MachO6Binary14thread_commandEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #4

declare noundef i64 @_ZNK4LIEF5MachO13ThreadCommand2pcEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker17check_valid_pathsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !53, !align !54 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95, !noalias !592 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95, !noalias !593 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %.not3435 = icmp eq ptr %i.f, %i.d
  br i1 %.not3435, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.k = icmp eq i64 %i.i, 8
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.b
  %i.l = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.l, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.039.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.2.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.01638.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %.218.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.sroa.422.037.epil.init = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.unr-lcssa ]
  %lcmp.mod56 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.m = load ptr, ptr %.sroa.422.037.epil.init, align 8, !tbaa !97
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !98   ; 2 uses
  switch i64 %i.o, label %._crit_edge [
    i64 13, label %.thread.epil
    i64 2147483683, label %.thread.fold.split.epil
    i64 2147483672, label %.thread.fold.split.epil
    i64 12, label %.thread.fold.split.epil
    i64 2147483679, label %.thread.fold.split.epil
  ]

.thread.fold.split.epil:                          ; preds = %.lr.ph.epil.preheader, %.lr.ph.epil.preheader, %.lr.ph.epil.preheader, %.lr.ph.epil.preheader
  br label %.thread.epil

.thread.epil:                                     ; preds = %.thread.fold.split.epil, %.lr.ph.epil.preheader
  %.11728.ph.epil = phi i8 [ 1, %.lr.ph.epil.preheader ], [ %.01638.epil.init, %.thread.fold.split.epil ]
  %.not.epil = icmp ne i64 %i.o, 13
  %i.p = zext i1 %.not.epil to i32
  %spec.select.epil = add nsw i32 %.039.epil.init, %i.p
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %.thread.epil, %._crit_edge.unr-lcssa
  %.218.lcssa = phi i8 [ %.218.1, %._crit_edge.unr-lcssa ], [ %.01638.epil.init, %.lr.ph.epil.preheader ], [ %.11728.ph.epil, %.thread.epil ]
  %.2.lcssa = phi i32 [ %.2.1, %._crit_edge.unr-lcssa ], [ %.039.epil.init, %.lr.ph.epil.preheader ], [ %spec.select.epil, %.thread.epil ]
  %i.q = trunc nuw i8 %.218.lcssa to i1           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.s = load i32, ptr %i.r, align 4, !tbaa !158  ; 2 uses
  %i.t = icmp eq i32 %i.s, 6
  br i1 %i.t, label %bb.c, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.v = load i32, ptr %i.u, align 4, !tbaa !158  ; 2 uses
  %i.w = icmp eq i32 %i.v, 6
  br i1 %i.w, label %.thread32.sink.split, label %.thread50

.lr.ph:                                           ; preds = %bb.b, %.lr.ph.preheader.new
  %.039 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.2.1, %bb.b ] ; 2 uses
  %.01638 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %.218.1, %bb.b ] ; 2 uses
  %.sroa.422.037 = phi ptr [ %i.d, %.lr.ph.preheader.new ], [ %i.ag, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.b ]
  %i.x = load ptr, ptr %.sroa.422.037, align 8, !tbaa !97
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !98   ; 2 uses
  switch i64 %i.z, label %.lr.ph.1 [
    i64 13, label %.thread
    i64 2147483683, label %.thread.fold.split
    i64 2147483672, label %.thread.fold.split
    i64 12, label %.thread.fold.split
    i64 2147483679, label %.thread.fold.split
  ]

.thread.fold.split:                               ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.thread.fold.split
  %.11728.ph = phi i8 [ 1, %.lr.ph ], [ %.01638, %.thread.fold.split ]
  %.not = icmp ne i64 %i.z, 13
  %i.aa = zext i1 %.not to i32
  %spec.select = add nsw i32 %.039, %i.aa
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %.thread
  %.218 = phi i8 [ %.01638, %.lr.ph ], [ %.11728.ph, %.thread ] ; 2 uses
  %.2 = phi i32 [ %.039, %.lr.ph ], [ %spec.select, %.thread ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.422.037, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !97
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !98 ; 2 uses
  switch i64 %i.ae, label %bb.b [
    i64 13, label %.thread.1
    i64 2147483683, label %.thread.fold.split.1
    i64 2147483672, label %.thread.fold.split.1
    i64 12, label %.thread.fold.split.1
    i64 2147483679, label %.thread.fold.split.1
  ]

.thread.fold.split.1:                             ; preds = %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1
  br label %.thread.1

.thread.1:                                        ; preds = %.thread.fold.split.1, %.lr.ph.1
  %.11728.ph.1 = phi i8 [ 1, %.lr.ph.1 ], [ %.218, %.thread.fold.split.1 ]
  %.not.1 = icmp ne i64 %i.ae, 13
  %i.af = zext i1 %.not.1 to i32
  %spec.select.1 = add nsw i32 %.2, %i.af
  br label %bb.b

bb.b:                                             ; preds = %.thread.1, %.lr.ph.1
  %.218.1 = phi i8 [ %.218, %.lr.ph.1 ], [ %.11728.ph.1, %.thread.1 ] ; 3 uses
  %.2.1 = phi i32 [ %.2, %.lr.ph.1 ], [ %spec.select.1, %.thread.1 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.422.037, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  br i1 %i.q, label %.thread32, label %.thread32.sink.split

bb.d:                                             ; preds = %._crit_edge
  %i.ah = icmp eq i32 %.2.lcssa, 0
  br i1 %i.q, label %.thread32.sink.split, label %.thread50

.thread50:                                        ; preds = %._crit_edge.thread, %bb.d
  %.0.lcssa4753 = phi i1 [ %i.ah, %bb.d ], [ true, %._crit_edge.thread ]
  %i.ai = phi i32 [ %i.s, %bb.d ], [ %i.v, %._crit_edge.thread ]
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.e, label %.thread32

bb.e:                                             ; preds = %.thread50
  %i.ak = tail call noundef zeroext i1 @_ZNK4LIEF5MachO6Binary3hasENS0_11LoadCommand4TYPEE(ptr noundef nonnull align 8 dereferenceable(552) %i.b, i64 noundef 14) #24
  %or.cond = and i1 %.0.lcssa4753, %i.ak
  br i1 %or.cond, label %.thread32.sink.split, label %.thread32

.thread32.sink.split:                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.thread
  %.str.34.sink = phi ptr [ @.str.33, %bb.d ], [ @.str.32, %bb.c ], [ @.str.32, %._crit_edge.thread ], [ @.str.34, %bb.e ]
  %i.al = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %.str.34.sink)
  br label %.thread32

.thread32:                                        ; preds = %.thread32.sink.split, %bb.c, %.thread50, %bb.e
  %.120 = phi i1 [ true, %bb.e ], [ true, %.thread50 ], [ true, %bb.c ], [ %i.al, %.thread32.sink.split ]
  ret i1 %.120
}

declare noundef zeroext i1 @_ZNK4LIEF5MachO6Binary3hasENS0_11LoadCommand4TYPEE(ptr noundef nonnull align 8 dereferenceable(552), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker14check_linkeditEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %struct.chunk_t, align 8            ; 4 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52, !nonnull !53, !align !54 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !155  ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !655  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
end_hunk_2
