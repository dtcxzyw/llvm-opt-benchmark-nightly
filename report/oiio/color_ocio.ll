Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/color_ocio?download=true
inline.NumInlined: 6229
inline.NumDeleted: 1603
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 53
begin_hunk_0
@.str.82 = private unnamed_addr constant [20 x i8] c"(dst).initialized()\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"IBA::ociolook\00", align 1
@.str.85 = private unnamed_addr constant [56 x i8] c"Could not construct the color transform (unknown error)\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"ImageBufAlgo::ociolook() error\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"IBA::ociodisplay\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"oiio:ColorSpace\00", align 1
@.str.89 = private unnamed_addr constant [34 x i8] c"ImageBufAlgo::ociodisplay() error\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"IBA::ociofiletransform\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"Unknown filetransform name\00", align 1
@.str.92 = private unnamed_addr constant [40 x i8] c"ImageBufAlgo::ociofiletransform() error\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"IBA::ocionamedtransform\00", align 1
@.str.94 = private unnamed_addr constant [41 x i8] c"ImageBufAlgo::ocionamedtransform() error\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"Exif:ColorSpace\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"tiff:ColorSpace\00", align 1
@.str.97 = private unnamed_addr constant [31 x i8] c"tiff:PhotometricInterpretation\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"oiio:Gamma\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"g18_rec709_scene\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"g22_rec709_scene\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"g24_rec709_scene\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"g{}_rec709_scene\00", align 1
@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTIN16OpenColorIO_v2_59TransformE = external constant ptr
@_ZTIN16OpenColorIO_v2_514GroupTransformE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_514GroupTransformE, ptr @_ZTIN16OpenColorIO_v2_59TransformE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_514GroupTransformE = linkonce_odr constant [37 x i8] c"N16OpenColorIO_v2_514GroupTransformE\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"{} has type {}\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTISt12system_error = external constant ptr
@.str.107 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVSt12system_error = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.111 = private unnamed_addr constant [21 x i8] c"cannot write to file\00", align 1
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], align 16
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], align 16
@.str.114 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTINSt6locale5facetE = external constant ptr
@_ZTIN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetISt6localeEE, ptr @_ZTINSt6locale5facetE }, align 8
@_ZTSN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant [36 x i8] c"N3fmt3v1212format_facetISt6localeEE\00", align 1
@_ZTVN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetISt6localeEE, ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev, ptr @_ZN3fmt3v1212format_facetISt6localeED0Ev, ptr @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, align 8
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@.str.116 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr hidden local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr hidden local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr hidden local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr hidden local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr hidden local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr hidden local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", align 16
@.str.119 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [24 x %"class.fmt::v12::detail::uint128_fallback"] [%"class.fmt::v12::detail::uint128_fallback" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128_fallback" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128_fallback" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128_fallback" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128_fallback" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128_fallback" { i64 7239297505920716784, i64 -1063354554122040811 }], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = linkonce_odr hidden local_unnamed_addr constant [27 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125, i64 390625, i64 1953125, i64 9765625, i64 48828125, i64 244140625, i64 1220703125, i64 6103515625, i64 30517578125, i64 152587890625, i64 762939453125, i64 3814697265625, i64 19073486328125, i64 95367431640625, i64 476837158203125, i64 2384185791015625, i64 11920928955078125, i64 59604644775390625, i64 298023223876953125, i64 1490116119384765625], align 16
@.str.131 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@_ZTIN3fmt3v1212format_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr hidden constant [25 x i8] c"N3fmt3v1212format_errorE\00", align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, align 8
@.str.133 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.134 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.135 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.136 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.137 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.138 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.139 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.140 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.141 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.142 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.143 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.146 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.147 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.148 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.150 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.151 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE = external local_unnamed_addr global double, align 8
@.str.152 = private unnamed_addr constant [17 x i8] c"Timer {}: {:g}s\0A\00", align 1
@.str.153 = private unnamed_addr constant [74 x i8] c"Aliases: scene_linear={}   lin_srgb={}   srgb={}   ACEScg={}   Rec709={}\0A\00", align 1
@_ZN11OpenImageIO4v3_13pvt14oiio_log_timesE = external local_unnamed_addr global i32, align 4
@_ZTISt12length_error = external constant ptr
@.str.155 = private unnamed_addr constant [41 x i8] c"The hash table exceeds its maximum size.\00", align 1
@.str.156 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket = linkonce_odr hidden global %"class.tsl::detail_robin_hash::bucket_entry" zeroinitializer, align 8
@_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket = linkonce_odr hidden global i64 0, align 8
@_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11OpenImageIO4v3_119ColorProcessor_OCIOE, ptr @_ZN11OpenImageIO4v3_119ColorProcessor_OCIOD2Ev, ptr @_ZN11OpenImageIO4v3_119ColorProcessor_OCIOD0Ev, ptr @_ZNK11OpenImageIO4v3_119ColorProcessor_OCIO6isNoOpEv, ptr @_ZNK11OpenImageIO4v3_119ColorProcessor_OCIO19hasChannelCrosstalkEv, ptr @_ZNK11OpenImageIO4v3_119ColorProcessor_OCIO5applyEPfiiilll] }, align 8
@_ZTIN11OpenImageIO4v3_119ColorProcessor_OCIOE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11OpenImageIO4v3_119ColorProcessor_OCIOE, ptr @_ZTIN11OpenImageIO4v3_114ColorProcessorE }, align 8
@_ZTSN11OpenImageIO4v3_119ColorProcessor_OCIOE = linkonce_odr hidden constant [42 x i8] c"N11OpenImageIO4v3_119ColorProcessor_OCIOE\00", align 1
@_ZTIN11OpenImageIO4v3_114ColorProcessorE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11OpenImageIO4v3_114ColorProcessorE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11OpenImageIO4v3_114ColorProcessorE = linkonce_odr constant [37 x i8] c"N11OpenImageIO4v3_114ColorProcessorE\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, align 1
@_ZTVN11OpenImageIO4v3_121ColorProcessor_MatrixE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11OpenImageIO4v3_121ColorProcessor_MatrixE, ptr @_ZN11OpenImageIO4v3_114ColorProcessorD2Ev, ptr @_ZN11OpenImageIO4v3_121ColorProcessor_MatrixD0Ev, ptr @_ZNK11OpenImageIO4v3_114ColorProcessor6isNoOpEv, ptr @_ZNK11OpenImageIO4v3_114ColorProcessor19hasChannelCrosstalkEv, ptr @_ZNK11OpenImageIO4v3_121ColorProcessor_Matrix5applyEPfiiilll] }, align 8
@_ZTIN11OpenImageIO4v3_121ColorProcessor_MatrixE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11OpenImageIO4v3_121ColorProcessor_MatrixE, ptr @_ZTIN11OpenImageIO4v3_114ColorProcessorE }, align 8
@_ZTSN11OpenImageIO4v3_121ColorProcessor_MatrixE = linkonce_odr hidden constant [44 x i8] c"N11OpenImageIO4v3_121ColorProcessor_MatrixE\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c"lin_ap0_scene\00", align 1
@.str.158 = private unnamed_addr constant [16 x i8] c"lin_p3d65_scene\00", align 1
@.str.159 = private unnamed_addr constant [18 x i8] c"lin_rec2020_scene\00", align 1
@.str.160 = private unnamed_addr constant [19 x i8] c"lin_adobergb_scene\00", align 1
@.str.161 = private unnamed_addr constant [20 x i8] c"lin_ciexyzd65_scene\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"srgb_ap1_scene\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"g22_ap1_scene\00", align 1
@.str.164 = private unnamed_addr constant [17 x i8] c"srgb_p3d65_scene\00", align 1
@.str.165 = private unnamed_addr constant [19 x i8] c"g22_adobergb_scene\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.167 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.168 = private unnamed_addr constant [20 x i8] c"srgb_rec709_display\00", align 1
@.str.169 = private unnamed_addr constant [19 x i8] c"g24_rec709_display\00", align 1
@.str.170 = private unnamed_addr constant [19 x i8] c"srgb_p3d65_display\00", align 1
@.str.171 = private unnamed_addr constant [20 x i8] c"srgbe_p3d65_display\00", align 1
@.str.172 = private unnamed_addr constant [17 x i8] c"pq_p3d65_display\00", align 1
@.str.173 = private unnamed_addr constant [19 x i8] c"pq_rec2020_display\00", align 1
@.str.174 = private unnamed_addr constant [20 x i8] c"hlg_rec2020_display\00", align 1
@.str.175 = private unnamed_addr constant [19 x i8] c"g22_rec709_display\00", align 1
@.str.176 = private unnamed_addr constant [21 x i8] c"g22_adobergb_display\00", align 1
@.str.177 = private unnamed_addr constant [18 x i8] c"g26_p3d65_display\00", align 1
@.str.178 = private unnamed_addr constant [19 x i8] c"g26_xyzd65_display\00", align 1
@.str.179 = private unnamed_addr constant [18 x i8] c"pq_xyzd65_display\00", align 1
@_ZN11OpenImageIO4v3_112_GLOBAL__N_117color_interop_idsE = internal constant [28 x { ptr, %"struct.std::array", i8 }] [{ ptr, %"struct.std::array", i8 } { ptr @.str.27, %"struct.std::array" zeroinitializer, i8 0 }, { ptr, %"struct.std::array", i8 } { ptr @.str.157, %"struct.std::array" zeroinitializer, i8 0 }, { ptr, %"struct.std::array", i8 } { ptr @.str.15, %"struct.std::array" { [4 x i32] [i32 1, i32 8, i32 1, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.158, %"struct.std::array" { [4 x i32] [i32 12, i32 8, i32 1, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.159, %"struct.std::array" { [4 x i32] [i32 9, i32 8, i32 10, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.160, %"struct.std::array" zeroinitializer, i8 0 }, { ptr, %"struct.std::array", i8 } { ptr @.str.161, %"struct.std::array" { [4 x i32] [i32 10, i32 8, i32 2, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.18, %"struct.std::array" { [4 x i32] [i32 1, i32 13, i32 1, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.100, %"struct.std::array" { [4 x i32] [i32 1, i32 4, i32 1, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.99, %"struct.std::array" zeroinitializer, i8 0 }, { ptr, %"struct.std::array", i8 } { ptr @.str.162, %"struct.std::array" zeroinitializer, i8 0 }, { ptr, %"struct.std::array", i8 } { ptr @.str.163, %"struct.std::array" zeroinitializer, i8 0 }, { ptr, %"struct.std::array", i8 } { ptr @.str.164, %"struct.std::array" { [4 x i32] [i32 12, i32 13, i32 1, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.165, %"struct.std::array" zeroinitializer, i8 0 }, { ptr, %"struct.std::array", i8 } { ptr @.str.166, %"struct.std::array" zeroinitializer, i8 0 }, { ptr, %"struct.std::array", i8 } { ptr @.str.167, %"struct.std::array" zeroinitializer, i8 0 }, { ptr, %"struct.std::array", i8 } { ptr @.str.168, %"struct.std::array" { [4 x i32] [i32 1, i32 13, i32 1, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.169, %"struct.std::array" { [4 x i32] [i32 1, i32 1, i32 1, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.170, %"struct.std::array" { [4 x i32] [i32 12, i32 13, i32 1, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.171, %"struct.std::array" { [4 x i32] [i32 12, i32 13, i32 1, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.172, %"struct.std::array" { [4 x i32] [i32 12, i32 16, i32 9, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.173, %"struct.std::array" { [4 x i32] [i32 9, i32 16, i32 9, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.174, %"struct.std::array" { [4 x i32] [i32 9, i32 18, i32 9, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.175, %"struct.std::array" zeroinitializer, i8 0 }, { ptr, %"struct.std::array", i8 } { ptr @.str.176, %"struct.std::array" zeroinitializer, i8 0 }, { ptr, %"struct.std::array", i8 } { ptr @.str.177, %"struct.std::array" { [4 x i32] [i32 12, i32 17, i32 1, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.178, %"struct.std::array" { [4 x i32] [i32 10, i32 17, i32 2, i32 1] }, i8 1 }, { ptr, %"struct.std::array", i8 } { ptr @.str.179, %"struct.std::array" { [4 x i32] [i32 10, i32 16, i32 2, i32 1] }, i8 1 }], align 16
@__FUNCTION__._ZN11OpenImageIO4v3_1L28colorconvert_impl_float_rgbaERNS0_8ImageBufERKS1_PKNS0_14ColorProcessorEbNS0_3ROIEi = private unnamed_addr constant [29 x i8] c"colorconvert_impl_float_rgba\00", align 1
@.str.181 = private unnamed_addr constant [143 x i8] c"R.localpixels() && A.localpixels() && R.spec().format == TypeFloat && A.spec().format == TypeFloat && R.nchannels() == 4 && A.nchannels() == 4\00", align 1
@_ZTIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EEEUlllllE_ = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EEEUlllllE_ }, align 8
@_ZTSZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EEEUlllllE_ = linkonce_odr hidden constant [101 x i8] c"ZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EEEUlllllE_\00", align 1
@"_ZTIZN11OpenImageIO4v3_1L28colorconvert_impl_float_rgbaERNS0_8ImageBufERKS1_PKNS0_14ColorProcessorEbNS0_3ROIEiE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN11OpenImageIO4v3_1L28colorconvert_impl_float_rgbaERNS0_8ImageBufERKS1_PKNS0_14ColorProcessorEbNS0_3ROIEiE3$_0" }, align 8
@"_ZTSZN11OpenImageIO4v3_1L28colorconvert_impl_float_rgbaERNS0_8ImageBufERKS1_PKNS0_14ColorProcessorEbNS0_3ROIEiE3$_0" = internal constant [112 x i8] c"ZN11OpenImageIO4v3_1L28colorconvert_impl_float_rgbaERNS0_8ImageBufERKS1_PKNS0_14ColorProcessorEbNS0_3ROIEiE3$_0\00", align 1
@.str.182 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [93 x i8] c"St15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [95 x i8] c"St15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTIZN11OpenImageIO4v3_1L17colorconvert_implIffEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11OpenImageIO4v3_1L17colorconvert_implIffEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ }, align 8
@_ZTSZN11OpenImageIO4v3_1L17colorconvert_implIffEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ = internal constant [109 x i8] c"ZN11OpenImageIO4v3_1L17colorconvert_implIffEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_\00", align 1
@_ZTIZN11OpenImageIO4v3_1L17colorconvert_implIfhEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11OpenImageIO4v3_1L17colorconvert_implIfhEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ }, align 8
@_ZTSZN11OpenImageIO4v3_1L17colorconvert_implIfhEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ = internal constant [109 x i8] c"ZN11OpenImageIO4v3_1L17colorconvert_implIfhEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_\00", align 1
@_ZTIZN11OpenImageIO4v3_1L17colorconvert_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlSB_E_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11OpenImageIO4v3_1L17colorconvert_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlSB_E_ }, align 8
@_ZTSZN11OpenImageIO4v3_1L17colorconvert_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlSB_E_ = internal constant [125 x i8] c"ZN11OpenImageIO4v3_1L17colorconvert_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlSB_E_\00", align 1
@_ZTIZN11OpenImageIO4v3_1L17colorconvert_implIftEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11OpenImageIO4v3_1L17colorconvert_implIftEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ }, align 8
@_ZTSZN11OpenImageIO4v3_1L17colorconvert_implIftEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ = internal constant [109 x i8] c"ZN11OpenImageIO4v3_1L17colorconvert_implIftEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_\00", align 1
@_ZTIZN11OpenImageIO4v3_1L17colorconvert_implIhhEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11OpenImageIO4v3_1L17colorconvert_implIhhEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ }, align 8
@_ZTSZN11OpenImageIO4v3_1L17colorconvert_implIhhEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ = internal constant [109 x i8] c"ZN11OpenImageIO4v3_1L17colorconvert_implIhhEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_\00", align 1
@_ZTIZN11OpenImageIO4v3_1L17colorconvert_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlSB_E_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11OpenImageIO4v3_1L17colorconvert_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlSB_E_ }, align 8
@_ZTSZN11OpenImageIO4v3_1L17colorconvert_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlSB_E_ = internal constant [127 x i8] c"ZN11OpenImageIO4v3_1L17colorconvert_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlSB_E_\00", align 1
@_ZTIZN11OpenImageIO4v3_1L17colorconvert_implIttEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN11OpenImageIO4v3_1L17colorconvert_implIttEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ }, align 8
@_ZTSZN11OpenImageIO4v3_1L17colorconvert_implIttEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_ = internal constant [109 x i8] c"ZN11OpenImageIO4v3_1L17colorconvert_implIttEEbRNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEiEUlS9_E_\00", align 1
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.103, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_color_ocio.cpp, ptr null }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"

@_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN11OpenImageIO4v3_111ColorConfigC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE
@_ZN11OpenImageIO4v3_111ColorConfigD1Ev = unnamed_addr alias void (ptr), ptr @_ZN11OpenImageIO4v3_111ColorConfigD2Ev

declare noundef i32 @_ZN11OpenImageIO4v3_17Strutil4stoiENS0_17basic_string_viewIcSt11char_traitsIcEEEPmi(ptr noundef dead_on_return, ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN11OpenImageIO4v3_17Sysutil6getenvENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv() local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.7, ptr %0, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  resume { ptr, i32 } %i.f
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_111ColorConfig19supportsOpenColorIOEv() local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN11OpenImageIO4v3_1L12disable_ocioE, align 4, !tbaa !63
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN11OpenImageIO4v3_111ColorConfig23OpenColorIO_version_hexEv() local_unnamed_addr #4 align 2 {
bb.a:
  ret i32 33882368
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_111ColorConfig4Impl9inventoryEv(ptr noundef nonnull align 8 dereferenceable(385) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"struct.fmt::v12::detail::format_arg_store.224", align 16 ; 5 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::shared_ptr.10", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = load i8, ptr @_ZN11OpenImageIO4v3_1L10colordebugE, align 1, !tbaa !72, !range !73, !noundef !74
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.i = load i64, ptr %i.h, align 8, !tbaa !78
  store ptr %i.g, ptr %1, align 16, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !79
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !81
  call void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.k, ptr nonnull @.str.8, i64 23, i64 13, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !86     ; 2 uses
  %i.m = icmp ne ptr %i.l, null
  %i.n = load i32, ptr @_ZN11OpenImageIO4v3_1L12disable_ocioE, align 4
  %i.o = icmp eq i32 %i.n, 0
  %or.cond.not = select i1 %i.m, i1 %i.o, i1 false
  br i1 %or.cond.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef i32 @_ZNK16OpenColorIO_v2_56Config17getNumColorSpacesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  br i1 %i.z, label %bb.g, label %.thread

bb.e:                                             ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %.0219 = phi i1 [ false, %.lr.ph ], [ %i.z, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit ]
  %.030218 = phi i32 [ 0, %.lr.ph ], [ %i.aa, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit ] ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !86
  %i.u = call noundef ptr @_ZNK16OpenColorIO_v2_56Config24getColorSpaceNameByIndexEi(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %.030218) ; 3 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !69
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #38
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %bb.e, %bb.f
  %i.w = phi i64 [ %i.v, %bb.f ], [ 0, %bb.e ]
  store i64 %i.w, ptr %i.r, align 8, !tbaa !70
  store ptr @.str.9, ptr %3, align 8, !tbaa !69
  store i64 3, ptr %i.s, align 8, !tbaa !70
  %i.x = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
  %i.y = xor i1 %i.x, true
  %i.z = or i1 %.0219, %i.y                       ; 2 uses
  %i.aa = add nuw nsw i32 %.030218, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.aa, %i.p
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !439

bb.g:                                             ; preds = %._crit_edge
  %i.ab = load ptr, ptr %0, align 8, !tbaa !86
  %i.ac = call noundef i32 @_ZNK16OpenColorIO_v2_56Config17getNumColorSpacesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph225, label %._crit_edge226

.lr.ph225:                                        ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.h

._crit_edge226:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !89 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !89 ; 2 uses
  %.not227 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not227, label %._crit_edge231, label %.lr.ph230

bb.h:                                             ; preds = %.lr.ph225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.047223 = phi i32 [ 0, %.lr.ph225 ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.ak = load ptr, ptr %0, align 8, !tbaa !86
  %i.al = call noundef ptr @_ZNK16OpenColorIO_v2_56Config24getColorSpaceNameByIndexEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i32 noundef %.047223) ; 4 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !90
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.107) #39
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  store i64 %i.an, ptr %i.c, align 8, !tbaa !91
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.j
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc75:                                         ; preds = %.noexc.i
  store ptr %i.ap, ptr %4, align 8, !tbaa !77
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !91
  store i64 %i.aq, ptr %i.ae, align 8, !tbaa !79
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc75, %bb.j
  %i.ar = phi ptr [ %i.ap, %.noexc75 ], [ %i.ae, %bb.j ] ; 2 uses
  switch i64 %i.an, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.as = load i8, ptr %i.al, align 1, !tbaa !79
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !79
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %i.al, i64 %i.an, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i
  %i.at = load i64, ptr %i.c, align 8, !tbaa !91  ; 2 uses
  store i64 %i.at, ptr %i.af, align 8, !tbaa !78
  %i.au = load ptr, ptr %4, align 8, !tbaa !77
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  invoke void @_ZN11OpenImageIO4v3_111ColorConfig4Impl3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr noundef nonnull align 8 dereferenceable(385) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %.047223, i32 noundef 0)
end_hunk_0
begin_hunk_1_@_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE:bb.a
  br label %bb.bf

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.di = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.di, ptr %18, align 8, !tbaa !69
  %i.dj = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dk = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !70
  store ptr @.str.26, ptr %19, align 8, !tbaa !69
  %i.dl = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 6, ptr %i.dl, align 8, !tbaa !70
  %i.dm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %18, ptr noundef nonnull dead_on_return %19)
          to label %bb.ar unwind label %bb.af

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.dm, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dn = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.dn, ptr %20, align 8, !tbaa !69
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dp = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !70
  store ptr @.str.27, ptr %21, align 8, !tbaa !69
  %i.dq = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 13, ptr %i.dq, align 8, !tbaa !70
  %i.dr = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %20, ptr noundef nonnull dead_on_return %21)
          to label %bb.at unwind label %bb.af

bb.at:                                            ; preds = %bb.as
  br i1 %i.dr, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at, %bb.ar
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !78 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !77
  store ptr %i.dw, ptr %0, align 8, !tbaa !69
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.dx, align 8, !tbaa !70
  br label %bb.bf

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.dy = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.dy, ptr %22, align 8, !tbaa !69
  %i.dz = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ea = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.ea, ptr %i.dz, align 8, !tbaa !70
  store ptr @.str.10, ptr %23, align 8, !tbaa !69
  %i.eb = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 12, ptr %i.eb, align 8, !tbaa !70
  %i.ec = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %22, ptr noundef nonnull dead_on_return %23)
          to label %bb.ax unwind label %bb.af

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.ec, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !78 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !77
  store ptr %i.eh, ptr %0, align 8, !tbaa !69
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ee, ptr %i.ei, align 8, !tbaa !70
  br label %bb.bf

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %i.ej = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.ej, ptr %24, align 8, !tbaa !69
  %i.ek = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.el = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !70
  store ptr @.str.20, ptr %25, align 8, !tbaa !69
  %i.em = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 6, ptr %i.em, align 8, !tbaa !70
  %i.en = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %24, ptr noundef nonnull dead_on_return %25)
          to label %bb.bb unwind label %bb.af

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.en, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !78 ; 2 uses
  %.not12 = icmp eq i64 %i.ep, 0
  br i1 %.not12, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !77
  store ptr %i.er, ptr %0, align 8, !tbaa !69
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ep, ptr %i.es, align 8, !tbaa !70
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.et = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.et, ptr %0, align 8, !tbaa !69
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.ev, ptr %i.eu, align 8, !tbaa !70
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.az, %bb.av, %bb.ap, %bb.ae
  %i.ew = atomicrmw sub ptr %i.bh, i32 1073741824 release, align 4 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bf
  %i.ex = load ptr, ptr %i.b, align 8, !tbaa !95  ; 8 uses
  %.not.i.i20 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i20, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 4294967297
  %i.fb = trunc i64 %i.ez to i32                  ; 2 uses
  br i1 %i.fa, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.ey, align 8, !tbaa !97
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !98
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !100
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #38, !inline_history !3
  %i.fg = load ptr, ptr %i.ex, align 8, !tbaa !100
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #38, !inline_history !3
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bj:                                            ; preds = %bb.bh
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i21 = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i21, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fk = add nsw i32 %i.fb, -1
  store i32 %i.fk, ptr %i.ey, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22

bb.bl:                                            ; preds = %bb.bj
  %i.fl = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i23 = phi i32 [ %i.fb, %bb.bk ], [ %i.fl, %bb.bl ]
  %i.fm = icmp eq i32 %.0.i.i.i.i23, 1
  br i1 %i.fm, label %bb.bm, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #38
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bg, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret void

bb.bn:                                            ; preds = %bb.p, %bb.q, %bb.af
  %.pn10 = phi { ptr, i32 } [ %i.ch, %bb.af ], [ %i.ap, %bb.q ], [ %i.ao, %bb.p ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_121equivalent_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEES4_(ptr nofree noundef readonly captures(none) dead_on_return %0, ptr nofree noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.7, ptr %2, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  resume { ptr, i32 } %i.f

_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.g = load ptr, ptr %0, align 8, !tbaa !69
  store ptr %i.g, ptr %3, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !70
  store i64 %i.j, ptr %i.h, align 8, !tbaa !70
  %i.k = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %i.k, ptr %4, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !70
  store i64 %i.n, ptr %i.l, align 8, !tbaa !70
  %i.o = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig10equivalentENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4)
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_7ustringES2_S2_S2_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.19") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.OpenImageIO::v3_1::ColorProcCacheKey", align 8 ; 11 uses
  %12 = alloca %"class.std::shared_ptr.19", align 16 ; 14 uses
  %13 = alloca %"class.std::shared_ptr.16", align 16 ; 15 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %17 = alloca %"class.std::shared_ptr.42", align 8 ; 10 uses
  %18 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %21 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %22 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %24 = alloca %"class.std::shared_ptr.45", align 8 ; 7 uses
  %25 = alloca %"class.std::shared_ptr.16", align 16 ; 7 uses
  %26 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %27 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %28 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !78
  store i8 0, ptr %i.a, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  store ptr %2, ptr %11, align 8, !tbaa !146
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %3, ptr %i.c, align 8, !tbaa !146
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %4, ptr %i.d, align 8, !tbaa !146
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %5, ptr %i.e, align 8, !tbaa !146
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.not.i.i = icmp eq ptr %2, null                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.f, i8 0, i64 41, i1 false)
  br i1 %.not.i.i, label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %2, i64 -64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !180
  br label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i

_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i:     ; preds = %bb.b, %bb.a
  %.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.not.i5.i = icmp eq ptr %3, null               ; 2 uses
  br i1 %.not.i5.i, label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i, label %bb.c

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i
  %i.i = getelementptr inbounds i8, ptr %3, i64 -64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !180
  %i.k = mul i64 %i.j, 14033
  br label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i

_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i:    ; preds = %bb.c, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i
  %.0.i6.i = phi i64 [ %i.k, %bb.c ], [ 0, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i ]
  %.not.i8.i = icmp eq ptr %4, null               ; 2 uses
  br i1 %.not.i8.i, label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i, label %bb.d

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i
  %i.l = getelementptr inbounds i8, ptr %4, i64 -64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !180
  %i.n = mul i64 %i.m, 823
  br label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i

_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i:   ; preds = %bb.d, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i
  %.0.i9.i = phi i64 [ %i.n, %bb.d ], [ 0, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i ]
  %.not.i11.i = icmp eq ptr %5, null              ; 2 uses
  br i1 %.not.i11.i, label %_ZN11OpenImageIO4v3_117ColorProcCacheKeyC2ENS0_7ustringES2_S2_S2_S2_S2_S2_S2_S2_b.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i
  %i.o = getelementptr inbounds i8, ptr %5, i64 -64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !180
  %i.q = mul i64 %i.p, 28411
  br label %_ZN11OpenImageIO4v3_117ColorProcCacheKeyC2ENS0_7ustringES2_S2_S2_S2_S2_S2_S2_S2_b.exit

_ZN11OpenImageIO4v3_117ColorProcCacheKeyC2ENS0_7ustringES2_S2_S2_S2_S2_S2_S2_S2_b.exit: ; preds = %bb.e, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i
  %.0.i12.i = phi i64 [ %i.q, %bb.e ], [ 0, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i ]
  %i.r = add i64 %.0.i6.i, %.0.i.i
  %i.s = add i64 %i.r, %.0.i9.i
  %i.t = add i64 %i.s, %.0.i12.i
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 80
  store i64 %i.t, ptr %i.u, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.v = load ptr, ptr %1, align 8, !tbaa !159
  invoke void @_ZN11OpenImageIO4v3_111ColorConfig4Impl8findprocERKNS0_17ColorProcCacheKeyE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %12, ptr noundef nonnull align 8 dereferenceable(385) %i.v, ptr noundef nonnull align 8 dereferenceable(88) %11)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_117ColorProcCacheKeyC2ENS0_7ustringES2_S2_S2_S2_S2_S2_S2_S2_b.exit
  %i.w = load ptr, ptr %12, align 16, !tbaa !143  ; 2 uses
  %.not190 = icmp eq ptr %i.w, null
  br i1 %.not190, label %bb.h, label %.thread264

.thread264:                                       ; preds = %bb.f
  store ptr %i.w, ptr %0, align 8, !tbaa !143
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !95
  store ptr %i.z, ptr %i.x, align 8, !tbaa !95
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_117ColorProcCacheKeyC2ENS0_7ustringES2_S2_S2_S2_S2_S2_S2_S2_b.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.ab = load ptr, ptr %1, align 8, !tbaa !159   ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !86
  %i.ad = icmp ne ptr %i.ac, null
  %i.ae = load i32, ptr @_ZN11OpenImageIO4v3_1L12disable_ocioE, align 4
  %i.af = icmp eq i32 %i.ae, 0
  %or.cond.not = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond.not, label %bb.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit134

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i.i, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds i8, ptr %2, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !184, !noalias !512
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit: ; preds = %bb.i, %bb.j
  %.0.i.i44 = phi i64 [ %i.ah, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %2, ptr %9, align 8, !tbaa !69, !noalias !513
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.0.i.i44, ptr %i.ai, align 8, !tbaa !70, !noalias !513
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %14, ptr noundef nonnull align 8 dereferenceable(385) %i.ab, ptr noundef nonnull dead_on_return %9)
          to label %bb.k unwind label %bb.ei

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.aj = load ptr, ptr %14, align 8, !tbaa !69   ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.aj, ptr %8, align 8, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !70
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !70
  %i.an = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %8)
          to label %bb.m unwind label %bb.ei

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ao = phi ptr [ null, %bb.k ], [ %i.an, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %.not.i5.i, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit47, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds i8, ptr %3, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !184, !noalias !514
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit47

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit47: ; preds = %bb.m, %bb.n
  %.0.i.i46 = phi i64 [ %i.aq, %bb.n ], [ 0, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ar = load ptr, ptr %1, align 8, !tbaa !159, !noalias !515
  store ptr %3, ptr %7, align 8, !tbaa !69, !noalias !515
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
end_hunk_1
begin_hunk_2_@_ZNK11OpenImageIO4v3_111ColorConfig20get_color_interop_idEPKi:bb.a
  %.not.1 = icmp eq i64 %.011.add.1, 896
  br i1 %.not.1, label %bb.j, label %bb.b

bb.j:                                             ; preds = %bb.i
  store ptr @.str.7, ptr %0, align 8, !tbaa !69
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.e, %bb.j
  %.sink = phi i64 [ 0, %bb.j ], [ %i.n, %bb.e ], [ 0, %.critedge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.aa, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, i64 } @_ZNK11OpenImageIO4v3_111ColorConfig8get_cicpENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.a = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %i.a, ptr %3, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  store i64 %i.d, ptr %i.b, align 8, !tbaa !70
  call void @_ZNK11OpenImageIO4v3_111ColorConfig20get_color_interop_idENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %3)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !70   ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.critedge12, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  %.010.idx17 = phi i64 [ 0, %.preheader ], [ %.010.add, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread ] ; 2 uses
  %.010.ptr18 = getelementptr inbounds nuw i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_117color_interop_idsE, i64 %.010.idx17 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.010.ptr18, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !204, !range !73, !noundef !74
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %.010.ptr18, align 16, !tbaa !203 ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %bb.c
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #38
  %i.n = icmp eq i64 %i.f, %i.m
  br i1 %i.n, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr nonnull %i.l, i64 %i.f)
  %.not.i.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i.i, label %.critedge, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.010.ptr18, i64 8
  br label %.critedge12

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread: ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, %bb.b
  %.010.add = add nuw nsw i64 %.010.idx17, 32     ; 2 uses
  %.not = icmp eq i64 %.010.add, 896
  br i1 %.not, label %.critedge12, label %bb.b

.critedge12:                                      ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread, %bb.a, %.critedge
  %.sroa.4.0 = phi i64 [ 4, %.critedge ], [ 0, %bb.a ], [ 0, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread ]
  %.sroa.015.0 = phi ptr [ %i.o, %.critedge ], [ null, %bb.a ], [ null, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.015.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEES9_bS9_S9_PKNS0_11ColorConfigENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef dead_on_return %2, ptr noundef dead_on_return %3, i1 noundef zeroext %4, ptr nofree noundef readonly captures(none) dead_on_return %5, ptr nofree noundef readonly captures(none) dead_on_return %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %8, i32 noundef %9) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.OpenImageIO::v3_1::pvt::LoggedTimer", align 8 ; 11 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %22 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %23 = alloca %"class.std::shared_ptr.19", align 16 ; 8 uses
  %24 = alloca %"class.std::shared_ptr.19", align 16 ; 7 uses
  %25 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %26 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  store ptr @.str.70, ptr %19, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 17, ptr %i.a, align 8, !tbaa !70
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %18, ptr noundef nonnull dead_on_return %19)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  switch i64 %i.c, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread [
    i64 0, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.e = load i32, ptr %i.d, align 1
  %i.f = xor i32 %i.e, 1920103779
  %i.g = getelementptr i8, ptr %i.d, i64 3
  %i.h = load i32, ptr %i.g, align 1
  %i.i = xor i32 %i.h, 1953391986
  %i.j = or i32 %i.f, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  %i.m = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  store ptr @.str.72, ptr %21, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 15, ptr %i.n, align 8, !tbaa !70
  store ptr @.str.10, ptr %22, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 12, ptr %i.o, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %20, ptr noundef nonnull align 8 dereferenceable(160) %i.m, ptr noundef nonnull dead_on_return %21, ptr noundef nonnull dead_on_return %22)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !160
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  %.pre = load i64, ptr %i.b, align 8, !tbaa !70
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread

bb.d:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.e:                                             ; preds = %bb.b, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %bb.bg

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread: ; preds = %bb.a, %bb.c
  %i.r = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.c ] ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  %i.t = phi i64 [ %i.r, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !70
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA25_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(25) @.str.73)
          to label %bb.bf unwind label %bb.d

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.x = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config acquire, align 8
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.i, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, !prof !64

bb.i:                                             ; preds = %bb.h
  %i.z = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr @.str.7, ptr %17, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %17)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %.body

_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit: ; preds = %bb.h, %bb.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %.pre69 = load i64, ptr %i.b, align 8, !tbaa !70
  br label %bb.m

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, %bb.g
  %i.ad = phi i64 [ %i.t, %bb.g ], [ %.pre69, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ]
  %.024 = phi ptr [ %7, %bb.g ], [ @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  %i.ae = load ptr, ptr %2, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.af = load ptr, ptr %.024, align 8, !tbaa !159, !noalias !624
  store ptr %i.ae, ptr %16, align 8, !tbaa !69, !noalias !624
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.ad, ptr %i.ag, align 8, !tbaa !70, !noalias !624
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %25, ptr noundef nonnull align 8 dereferenceable(385) %i.af, ptr noundef nonnull dead_on_return %16)
          to label %bb.n unwind label %bb.ao

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.ah = load ptr, ptr %3, align 8, !tbaa !69
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.aj = load ptr, ptr %.024, align 8, !tbaa !159, !noalias !625
  store ptr %i.ah, ptr %15, align 8, !tbaa !69, !noalias !625
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !70, !noalias !625
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %26, ptr noundef nonnull align 8 dereferenceable(385) %i.aj, ptr noundef nonnull dead_on_return %15)
          to label %bb.o unwind label %bb.ao

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.al = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !70
  %i.ao = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !70
  %i.ar = load ptr, ptr %25, align 8, !tbaa !69, !noalias !626 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !70, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !626
  %.not.i.i32 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i32, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.ar, ptr %14, align 8, !tbaa !69, !noalias !626
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !70, !noalias !626
  %i.av = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %14)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i unwind label %bb.ao

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i: ; preds = %bb.p, %bb.o
  %i.aw = phi ptr [ null, %bb.o ], [ %i.av, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !626
  %i.ax = load ptr, ptr %26, align 8, !tbaa !69, !noalias !626 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !70, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !626
  %.not.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i1.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i, label %bb.q

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  store ptr %i.ax, ptr %13, align 8, !tbaa !69, !noalias !626
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !70, !noalias !626
  %i.bb = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %13)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i unwind label %bb.ao

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i: ; preds = %bb.q, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  %i.bc = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i ], [ %i.bb, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !626
  %.not.i3.i = icmp eq ptr %i.al, null
  br i1 %.not.i3.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i, label %bb.r

bb.r:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i
  store ptr %i.al, ptr %12, align 8, !tbaa !69, !noalias !626
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.an, ptr %i.bd, align 8, !tbaa !70, !noalias !626
  %i.be = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %12)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i unwind label %bb.ao

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i: ; preds = %bb.r, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i
  %i.bf = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i ], [ %i.be, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !626
  %.not.i5.i = icmp eq ptr %i.ao, null
  br i1 %.not.i5.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6.i, label %bb.s

bb.s:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i
  store ptr %i.ao, ptr %11, align 8, !tbaa !69, !noalias !626
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aq, ptr %i.bg, align 8, !tbaa !70, !noalias !626
  %i.bh = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %11)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6.i unwind label %bb.ao

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6.i: ; preds = %bb.s, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i
  %i.bi = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i ], [ %i.bh, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !626
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_7ustringES2_S2_S2_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %24, ptr noundef nonnull readonly align 8 dereferenceable(8) %.024, ptr %i.aw, ptr %i.bc, ptr %i.bf, ptr %i.bi)
          to label %_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_.exit unwind label %bb.ao

_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_.exit: ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6.i
  %i.bj = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.bl = load <2 x ptr>, ptr %24, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.bl, ptr %23, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bn, align 8, !tbaa !97
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !98
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !100
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #38, !inline_history !18
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !100
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.v:                                             ; preds = %bb.t
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.w ], [ %i.ca, %bb.x ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.y, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.y
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !95 ; 8 uses
  %.not.i.i37 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i37, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cd, align 8, !tbaa !97
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !98
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !100
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #38, !inline_history !7
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !100
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !63
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEi:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %bb.bh
  %.pn = phi { ptr, i32 } [ %i.df, %bb.bh ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %i.dg, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  br label %bb.bj

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit134.thread.thread: ; preds = %bb.bb, %bb.az, %bb.ax, %bb.aq, %.critedge, %bb.ba, %bb.aw, %bb.ay, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit134.thread.thread395, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bd, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit134.thread
  %.0109394 = phi i1 [ false, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit134.thread.thread395 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.bd ], [ true, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit134.thread ], [ false, %bb.ay ], [ true, %bb.bb ], [ false, %bb.ba ], [ false, %bb.aw ], [ true, %bb.az ], [ false, %bb.aq ], [ true, %bb.ax ], [ false, %.critedge ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br label %bb.bm

bb.bj:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %.pn117.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %i.cb, %bb.ao ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #38
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.an
  %.pn117.pn.pn = phi { ptr, i32 } [ %.pn117.pn, %bb.bj ], [ %i.ca, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #38
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.am
  %.pn117.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn, %bb.bk ], [ %i.bz, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br label %bb.bn

bb.bm:                                            ; preds = %bb.ad, %bb.k, %bb.f, %bb.d, %bb.b, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit134.thread.thread
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.f ], [ %i.aa, %bb.k ], [ %.0109394, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit134.thread.thread ], [ true, %bb.d ], [ true, %bb.ad ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  ret i1 %.0

bb.bn:                                            ; preds = %bb.al, %bb.bl
  %.pn123 = phi { ptr, i32 } [ %i.by, %bb.al ], [ %.pn117.pn.pn.pn, %bb.bl ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  resume { ptr, i32 } %.pn123
}

declare noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_18ImageBuf7specmodEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

declare void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERKNS0_8ImageBufENS0_17basic_string_viewIcSt11char_traitsIcEEES8_bS8_S8_PKNS0_11ColorConfigENS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) dead_on_return %2, ptr nofree noundef readonly captures(none) dead_on_return %3, i1 noundef zeroext %4, ptr nofree noundef readonly captures(none) dead_on_return %5, ptr nofree noundef readonly captures(none) dead_on_return %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %8, i32 noundef %9) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.a, ptr %10, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  store i64 %i.d, ptr %i.b, align 8, !tbaa !70
  %i.e = load ptr, ptr %3, align 8, !tbaa !69
  store ptr %i.e, ptr %11, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !70
  store i64 %i.h, ptr %i.f, align 8, !tbaa !70
  %i.i = load ptr, ptr %5, align 8, !tbaa !69
  store ptr %i.i, ptr %12, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !70
  store i64 %i.l, ptr %i.j, align 8, !tbaa !70
  %i.m = load ptr, ptr %6, align 8, !tbaa !69
  store ptr %i.m, ptr %13, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  store i64 %i.p, ptr %i.n, align 8, !tbaa !70
  %i.q = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEES9_bS9_S9_PKNS0_11ColorConfigENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11, i1 noundef zeroext %4, ptr noundef nonnull dead_on_return %12, ptr noundef nonnull dead_on_return %13, ptr noundef %7, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.q, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA35_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(35) @.str.75)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  resume { ptr, i32 } %i.s

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

declare void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA35_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(35) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.91", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(35) %1) #38, !noalias !657
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !657
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 1 dereferenceable(35) %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !657
  %i.b = load ptr, ptr %4, align 8, !tbaa !77
  store ptr %i.b, ptr %3, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !78
  store i64 %i.e, ptr %i.c, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !79
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !79
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  resume { ptr, i32 } %i.k
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo20colormatrixtransformERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi4EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree readonly captures(none) %2, i1 noundef zeroext %3, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %4, i32 noundef %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.OpenImageIO::v3_1::pvt::LoggedTimer", align 8 ; 10 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.std::shared_ptr.19", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  store ptr @.str.76, ptr %9, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 25, ptr %i.a, align 8, !tbaa !70
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %8, ptr noundef nonnull dead_on_return %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.b = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.7, ptr %7, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig21createMatrixTransformENS0_11MatrixParamIfLi4EEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %10, ptr nonnull align 8 poison, ptr %2, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.h = load i8, ptr %8, align 8, !tbaa !153, !range !73, !noundef !74
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.j = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #38 ; 0 uses
  %i.k = load i64, ptr %6, align 8, !tbaa !150
  %i.l = mul nsw i64 %i.k, 1000000000
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !151
  %i.o = add nsw i64 %i.l, %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !152
  %i.r = sub i64 %i.o, %i.q
  %i.s = call noundef i64 @llvm.abs.i64(i64 %i.r, i1 true)
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !154
  %i.v = add nsw i64 %i.s, %i.u
  store i64 %i.v, ptr %i.t, align 8, !tbaa !154
  store i8 0, ptr %8, align 8, !tbaa !153
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = load ptr, ptr %10, align 8, !tbaa !143
  %i.x = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.w, i1 noundef zeroext %3, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !95   ; 8 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aa, align 8, !tbaa !97
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !98
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #38, !inline_history !7
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !100
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.ad, %bb.n ], [ %i.an, %bb.o ]
  %i.ao = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ao, label %bb.p, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  ret i1 %i.x

bb.q:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #38
  br label %.body

.body:                                            ; preds = %bb.q, %bb.e, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.r ], [ %i.ap, %bb.q ], [ %i.g, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo20colormatrixtransformERKNS0_8ImageBufENS0_11MatrixParamIfLi4EEEbNS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree readonly captures(none) %2, i1 noundef zeroext %3, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %4, i32 noundef %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo20colormatrixtransformERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi4EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2, i1 noundef zeroext %3, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i32 noundef %5)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA43_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(43) @.str.77)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  resume { ptr, i32 } %i.c

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA43_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(43) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.91", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(43) %1) #38, !noalias !660
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !660
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 1 dereferenceable(43) %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !660
  %i.b = load ptr, ptr %4, align 8, !tbaa !77
  store ptr %i.b, ptr %3, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !78
  store i64 %i.e, ptr %i.c, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !79
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !79
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_112ImageBufAlgo8ociolookERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEES9_S9_bbS9_S9_PKNS0_11ColorConfigENS0_3ROIEi:bb.a
  %29 = alloca %"class.std::shared_ptr.19", align 16 ; 7 uses
  %30 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %31 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %32 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %33 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %34 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  store ptr @.str.84, ptr %19, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 13, ptr %i.a, align 8, !tbaa !70
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %18, ptr noundef nonnull dead_on_return %19)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !70
  switch i64 %i.c, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread [
    i64 0, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !69     ; 2 uses
  %i.e = load i32, ptr %i.d, align 1
  %i.f = xor i32 %i.e, 1920103779
  %i.g = getelementptr i8, ptr %i.d, i64 3
  %i.h = load i32, ptr %i.g, align 1
  %i.i = xor i32 %i.h, 1953391986
  %i.j = or i32 %i.f, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.m = load ptr, ptr %9, align 8, !tbaa !159, !noalias !678
  store ptr @.str.10, ptr %17, align 8, !tbaa !69, !noalias !678
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 12, ptr %i.n, align 8, !tbaa !70, !noalias !678
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %20, ptr noundef nonnull align 8 dereferenceable(385) %i.m, ptr noundef nonnull dead_on_return %17)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  %i.o = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr @.str.72, ptr %22, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 15, ptr %i.p, align 8, !tbaa !70
  %i.q = load ptr, ptr %20, align 8, !tbaa !69
  store ptr %i.q, ptr %23, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !70
  store i64 %i.t, ptr %i.r, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %21, ptr noundef nonnull align 8 dereferenceable(160) %i.o, ptr noundef nonnull dead_on_return %22, ptr noundef nonnull dead_on_return %23)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !160
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread

bb.e:                                             ; preds = %bb.p
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.v, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %bb.bn

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread: ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !70
  switch i64 %i.y, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit45.thread [
    i64 0, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit45
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i41
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i41: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  %i.z = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 %i.aa, 1920103779
  %i.ac = getelementptr i8, ptr %i.z, i64 3
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = xor i32 %i.ad, 1953391986
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not.i.i43 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i43, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit45, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit45.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit45: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i41
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.ai = load ptr, ptr %9, align 8, !tbaa !159, !noalias !679
  store ptr @.str.10, ptr %16, align 8, !tbaa !69, !noalias !679
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 12, ptr %i.aj, align 8, !tbaa !70, !noalias !679
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %24, ptr noundef nonnull align 8 dereferenceable(385) %i.ai, ptr noundef nonnull dead_on_return %16)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  %i.ak = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  store ptr @.str.72, ptr %26, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 15, ptr %i.al, align 8, !tbaa !70
  %i.am = load ptr, ptr %24, align 8, !tbaa !69
  store ptr %i.am, ptr %27, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !70
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %25, ptr noundef nonnull align 8 dereferenceable(160) %i.ak, ptr noundef nonnull dead_on_return %26, ptr noundef nonnull dead_on_return %27)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false), !tbaa.struct !160
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit45.thread

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit45
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn33 = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.aq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  br label %bb.bn

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit45.thread: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i41, %bb.k
  %i.as = load i64, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit45.thread
  %i.au = load i64, ptr %i.x, align 8, !tbaa !70
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit45.thread
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA25_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(25) @.str.73)
          to label %bb.bm unwind label %bb.e

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %9, null
  br i1 %.not, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.aw = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, !prof !64

bb.s:                                             ; preds = %bb.r
  %i.ay = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr @.str.7, ptr %15, align 8, !tbaa !69
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %15)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ba = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit

bb.v:                                             ; preds = %bb.t
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %.body

_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit: ; preds = %bb.r, %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !70
  br label %bb.w

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, %bb.q
  %i.bc = phi i64 [ %i.as, %bb.q ], [ %.pre, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ]
  %.030 = phi ptr [ %9, %bb.q ], [ @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  %i.bd = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.bd, ptr %30, align 8, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !70
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !70
  %i.bh = load ptr, ptr %3, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.bi = load ptr, ptr %.030, align 8, !tbaa !159, !noalias !680
  store ptr %i.bh, ptr %14, align 8, !tbaa !69, !noalias !680
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bc, ptr %i.bj, align 8, !tbaa !70, !noalias !680
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %31, ptr noundef nonnull align 8 dereferenceable(385) %i.bi, ptr noundef nonnull dead_on_return %14)
          to label %bb.x unwind label %bb.av

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.bk = load ptr, ptr %4, align 8, !tbaa !69
  %i.bl = load i64, ptr %i.x, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.bm = load ptr, ptr %.030, align 8, !tbaa !159, !noalias !681
  store ptr %i.bk, ptr %13, align 8, !tbaa !69, !noalias !681
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !70, !noalias !681
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %32, ptr noundef nonnull align 8 dereferenceable(385) %i.bm, ptr noundef nonnull dead_on_return %13)
          to label %bb.y unwind label %bb.av

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.bo = load ptr, ptr %7, align 8, !tbaa !69
  store ptr %i.bo, ptr %33, align 8, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !70
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !70
  %i.bs = load ptr, ptr %8, align 8, !tbaa !69
  store ptr %i.bs, ptr %34, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !70
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig19createLookTransformENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_bS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %29, ptr noundef nonnull align 8 dereferenceable(8) %.030, ptr noundef nonnull dead_on_return %30, ptr noundef nonnull dead_on_return %31, ptr noundef nonnull dead_on_return %32, i1 noundef zeroext %6, ptr noundef nonnull dead_on_return %33, ptr noundef nonnull dead_on_return %34)
          to label %bb.z unwind label %bb.av

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.by = load <2 x ptr>, ptr %29, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.by, ptr %28, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 4 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 4294967297
  %i.cd = trunc i64 %i.cb to i32                  ; 2 uses
  br i1 %i.cc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ca, align 8, !tbaa !97
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 0, ptr %i.ce, align 4, !tbaa !98
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !100
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #38, !inline_history !18
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !100
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cm = add nsw i32 %i.cd, -1
  store i32 %i.cm, ptr %i.ca, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cn = atomicrmw volatile add ptr %i.ca, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i = phi i32 [ %i.cd, %bb.ad ], [ %i.cn, %bb.ae ]
  %i.co = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.co, label %bb.af, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.af
  %i.cp = load ptr, ptr %i.bw, align 8, !tbaa !95 ; 8 uses
  %.not.i.i49 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i49, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
  %i.cr = load atomic i64, ptr %i.cq acquire, align 8 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 4294967297
  %i.ct = trunc i64 %i.cr to i32                  ; 2 uses
  br i1 %i.cs, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.cq, align 8, !tbaa !97
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 0, ptr %i.cu, align 4, !tbaa !98
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !100
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #38, !inline_history !7
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !100
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dc = add nsw i32 %i.ct, -1
  store i32 %i.dc, ptr %i.cq, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dd = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i = phi i32 [ %i.ct, %bb.aj ], [ %i.dd, %bb.ak ]
  %i.de = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.de, label %bb.al, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  %i.df = load ptr, ptr %28, align 16, !tbaa !143 ; 2 uses
  %.not82 = icmp eq ptr %i.df, null
  br i1 %.not82, label %bb.am, label %bb.ay

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dg = load ptr, ptr %.030, align 8, !tbaa !159 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 216 ; 6 uses
  %i.di = atomicrmw add ptr %i.dh, i32 1 acquire, align 4
  %i.dj = and i32 %i.di, 1073741824
  %.not.i.i.i.i50 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i.i.i50, label %.loopexit84, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dk = atomicrmw sub ptr %i.dh, i32 1 seq_cst, align 4
  %i.dl = add i32 %i.dk, 1073741823
  %i.dm = and i32 %i.dl, 1073741823               ; 2 uses
  %i.dn = add nuw nsw i32 %i.dm, 1
  %i.do = cmpxchg weak ptr %i.dh, i32 %i.dm, i32 %i.dn acquire acquire, align 4
  %i.dp = extractvalue { i32, i1 } %i.do, 1
  br i1 %i.dp, label %.loopexit84, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.an, %bb.aq
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.aq ], [ 1, %bb.an ] ; 5 uses
  %.not.i.i.i.i.i51 = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i51, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.dq = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ao, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i32 [ %i.dr, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.ao ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
end_hunk_4
begin_hunk_5_@_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA56_cJEEEvRKT_DpOT0_:bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !79
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo8ociolookERKNS0_8ImageBufENS0_17basic_string_viewIcSt11char_traitsIcEEES8_S8_bbS8_S8_PKNS0_11ColorConfigENS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) dead_on_return %2, ptr nofree noundef readonly captures(none) dead_on_return %3, ptr nofree noundef readonly captures(none) dead_on_return %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef readonly captures(none) dead_on_return %7, ptr nofree noundef readonly captures(none) dead_on_return %8, ptr nofree noundef readonly captures(address_is_null) %9, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %10, i32 noundef %11) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.a, ptr %12, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  store i64 %i.d, ptr %i.b, align 8, !tbaa !70
  %i.e = load ptr, ptr %3, align 8, !tbaa !69
  store ptr %i.e, ptr %13, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !70
  store i64 %i.h, ptr %i.f, align 8, !tbaa !70
  %i.i = load ptr, ptr %4, align 8, !tbaa !69
  store ptr %i.i, ptr %14, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !70
  store i64 %i.l, ptr %i.j, align 8, !tbaa !70
  %i.m = load ptr, ptr %7, align 8, !tbaa !69
  store ptr %i.m, ptr %15, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  store i64 %i.p, ptr %i.n, align 8, !tbaa !70
  %i.q = load ptr, ptr %8, align 8, !tbaa !69
  store ptr %i.q, ptr %16, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !70
  store i64 %i.t, ptr %i.r, align 8, !tbaa !70
  %i.u = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo8ociolookERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEES9_S9_bbS9_S9_PKNS0_11ColorConfigENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %12, ptr noundef nonnull dead_on_return %13, ptr noundef nonnull dead_on_return %14, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull dead_on_return %15, ptr noundef nonnull dead_on_return %16, ptr noundef %9, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %10, i32 noundef %11)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.u, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA31_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(31) @.str.86)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  resume { ptr, i32 } %i.w

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA31_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(31) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.91", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(31) %1) #38, !noalias !690
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !690
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 1 dereferenceable(31) %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !690
  %i.b = load ptr, ptr %4, align 8, !tbaa !77
  store ptr %i.b, ptr %3, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !78
  store i64 %i.e, ptr %i.c, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !79
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !79
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo11ociodisplayERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEES9_S9_S9_bbS9_S9_PKNS0_11ColorConfigENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef captures(none) dead_on_return %2, ptr nofree noundef captures(none) dead_on_return %3, ptr nofree noundef captures(none) dead_on_return %4, ptr nofree noundef readonly captures(none) dead_on_return %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr nofree noundef readonly captures(none) dead_on_return %8, ptr nofree noundef readonly captures(none) dead_on_return %9, ptr nofree noundef readonly captures(address_is_null) %10, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %11, i32 noundef %12) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %15 = alloca %struct.timespec, align 8          ; 5 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.OpenImageIO::v3_1::pvt::LoggedTimer", align 8 ; 10 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %21 = alloca %"class.std::shared_ptr.19", align 16 ; 9 uses
  %22 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %24 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %25 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %26 = alloca %"class.std::shared_ptr.19", align 16 ; 7 uses
  %27 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %28 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %29 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %30 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %31 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %32 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %35 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %36 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %37 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  store ptr @.str.87, ptr %20, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 16, ptr %i.c, align 8, !tbaa !70
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %19, ptr noundef nonnull dead_on_return %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %10, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  %i.d = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @.str.7, ptr %18, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %18)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %.body

_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit: ; preds = %bb.b, %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, %bb.a
  %.034 = phi ptr [ %10, %bb.a ], [ @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ] ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  switch i64 %i.k, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread [
    i64 0, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.g
  %i.l = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  %i.m = load i32, ptr %i.l, align 1
  %i.n = xor i32 %i.m, 1920103779
  %i.o = getelementptr i8, ptr %i.l, i64 3
  %i.p = load i32, ptr %i.o, align 1
  %i.q = xor i32 %i.p, 1953391986
  %i.r = or i32 %i.n, %i.q
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.u = load ptr, ptr %.034, align 8, !tbaa !159, !noalias !707
  store ptr @.str.10, ptr %17, align 8, !tbaa !69, !noalias !707
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 12, ptr %i.v, align 8, !tbaa !70, !noalias !707
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %22, ptr noundef nonnull align 8 dereferenceable(385) %i.u, ptr noundef nonnull dead_on_return %17)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  %i.w = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  store ptr @.str.88, ptr %24, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 15, ptr %i.x, align 8, !tbaa !70
  %i.y = load ptr, ptr %22, align 8, !tbaa !69
  store ptr %i.y, ptr %25, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !70
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %23, ptr noundef nonnull align 8 dereferenceable(160) %i.w, ptr noundef nonnull dead_on_return %24, ptr noundef nonnull dead_on_return %25)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !160
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  %.pre = load i64, ptr %i.j, align 8, !tbaa !70
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br label %.body

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread: ; preds = %bb.g, %bb.j
  %i.ae = phi i64 [ %i.k, %bb.g ], [ %.pre, %bb.j ] ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.n, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA25_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(25) @.str.73)
          to label %bb.bs unwind label %bb.bc

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  %i.ag = phi i64 [ %i.ae, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %i.ah = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.ah, ptr %27, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !70
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !70
  %i.al = load ptr, ptr %3, align 8, !tbaa !69
  store ptr %i.al, ptr %28, align 8, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !70
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !70
  %i.ap = load ptr, ptr %4, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.aq = load ptr, ptr %.034, align 8, !tbaa !159, !noalias !708
  store ptr %i.ap, ptr %16, align 8, !tbaa !69, !noalias !708
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.ag, ptr %i.ar, align 8, !tbaa !70, !noalias !708
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %29, ptr noundef nonnull align 8 dereferenceable(385) %i.aq, ptr noundef nonnull dead_on_return %16)
          to label %bb.o unwind label %bb.al

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.as = load ptr, ptr %5, align 8, !tbaa !69
  store ptr %i.as, ptr %30, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !70
  store i64 %i.av, ptr %i.at, align 8, !tbaa !70
  %i.aw = load ptr, ptr %8, align 8, !tbaa !69
  store ptr %i.aw, ptr %31, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !70
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !70
  %i.ba = load ptr, ptr %9, align 8, !tbaa !69
  store ptr %i.ba, ptr %32, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !70
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig22createDisplayTransformENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_bS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %.034, ptr noundef nonnull dead_on_return %27, ptr noundef nonnull dead_on_return %28, ptr noundef nonnull dead_on_return %29, ptr noundef nonnull dead_on_return %30, i1 noundef zeroext %7, ptr noundef nonnull dead_on_return %31, ptr noundef nonnull dead_on_return %32)
          to label %bb.p unwind label %bb.al

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bg = load <2 x ptr>, ptr %26, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.bg, ptr %21, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bi, align 8, !tbaa !97
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !98
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !100
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #38, !inline_history !18
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !100
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.bl, %bb.t ], [ %i.bv, %bb.u ]
  %i.bw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bw, label %bb.v, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v
  %i.bx = load ptr, ptr %i.be, align 8, !tbaa !95 ; 8 uses
  %.not.i.i47 = icmp eq ptr %i.bx, null
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_112ImageBufAlgo11ociodisplayERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEES9_S9_S9_bbS9_S9_PKNS0_11ColorConfigENS0_3ROIEi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %19) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  ret i1 %.033

.body:                                            ; preds = %bb.f, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.al, %bb.m
  %.pn44 = phi { ptr, i32 } [ %i.i, %bb.f ], [ %.pn, %bb.m ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.ec, %bb.al ], [ %i.gp, %bb.bc ], [ %.pn39.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ]
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %19) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  resume { ptr, i32 } %.pn44
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo11ociodisplayERKNS0_8ImageBufENS0_17basic_string_viewIcSt11char_traitsIcEEES8_S8_S8_bbS8_S8_PKNS0_11ColorConfigENS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) dead_on_return %2, ptr nofree noundef readonly captures(none) dead_on_return %3, ptr nofree noundef readonly captures(none) dead_on_return %4, ptr nofree noundef readonly captures(none) dead_on_return %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr nofree noundef readonly captures(none) dead_on_return %8, ptr nofree noundef readonly captures(none) dead_on_return %9, ptr nofree noundef readonly captures(address_is_null) %10, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %11, i32 noundef %12) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.a, ptr %13, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  store i64 %i.d, ptr %i.b, align 8, !tbaa !70
  %i.e = load ptr, ptr %3, align 8, !tbaa !69
  store ptr %i.e, ptr %14, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !70
  store i64 %i.h, ptr %i.f, align 8, !tbaa !70
  %i.i = load ptr, ptr %4, align 8, !tbaa !69
  store ptr %i.i, ptr %15, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !70
  store i64 %i.l, ptr %i.j, align 8, !tbaa !70
  %i.m = load ptr, ptr %5, align 8, !tbaa !69
  store ptr %i.m, ptr %16, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  store i64 %i.p, ptr %i.n, align 8, !tbaa !70
  %i.q = load ptr, ptr %8, align 8, !tbaa !69
  store ptr %i.q, ptr %17, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !70
  store i64 %i.t, ptr %i.r, align 8, !tbaa !70
  %i.u = load ptr, ptr %9, align 8, !tbaa !69
  store ptr %i.u, ptr %18, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70
  store i64 %i.x, ptr %i.v, align 8, !tbaa !70
  %i.y = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo11ociodisplayERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEES9_S9_S9_bbS9_S9_PKNS0_11ColorConfigENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %13, ptr noundef nonnull dead_on_return %14, ptr noundef nonnull dead_on_return %15, ptr noundef nonnull dead_on_return %16, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef nonnull dead_on_return %17, ptr noundef nonnull dead_on_return %18, ptr noundef %10, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %11, i32 noundef %12)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.y, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.z, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA34_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(34) @.str.89)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA34_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(34) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.91", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(34) %1) #38, !noalias !718
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !718
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 1 dereferenceable(34) %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !718
  %i.b = load ptr, ptr %4, align 8, !tbaa !77
  store ptr %i.b, ptr %3, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !78
  store i64 %i.e, ptr %i.c, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !79
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !79
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo17ociofiletransformERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEEbbPKNS0_11ColorConfigENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) dead_on_return %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %6, i32 noundef %7) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.OpenImageIO::v3_1::pvt::LoggedTimer", align 8 ; 10 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.std::shared_ptr.19", align 16 ; 8 uses
  %15 = alloca %"class.std::shared_ptr.19", align 16 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  store ptr @.str.90, ptr %13, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 22, ptr %i.a, align 8, !tbaa !70
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %12, ptr noundef nonnull dead_on_return %13)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA27_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(27) @.str.91)
          to label %bb.ba unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.f = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.f, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, !prof !64

bb.f:                                             ; preds = %bb.e
  %i.h = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @.str.7, ptr %11, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %11)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit

bb.i:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %.body

_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit: ; preds = %bb.e, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, %bb.d
  %i.l = phi i64 [ %i.c, %bb.d ], [ %.pre, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ]
  %.024 = phi ptr [ %5, %bb.d ], [ @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.m = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !725
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.m, ptr %10, align 8, !tbaa !69, !noalias !725
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !70, !noalias !725
  %i.o = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %10)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i unwind label %bb.ag

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i: ; preds = %bb.k, %bb.j
  %i.p = phi ptr [ null, %bb.j ], [ %i.o, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !725
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_7ustringEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %15, ptr noundef nonnull readonly align 8 dereferenceable(8) %.024, ptr %i.p, i1 noundef zeroext %4)
          to label %_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEb.exit unwind label %bb.ag

_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEb.exit: ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.s = load <2 x ptr>, ptr %15, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !95   ; 8 uses
  store <2 x ptr> %i.s, ptr %14, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEb.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.u, align 8, !tbaa !97
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !98
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #38, !inline_history !18
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.n:                                             ; preds = %bb.l
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.x, %bb.o ], [ %i.ah, %bb.p ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.q, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEb.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !95  ; 8 uses
  %.not.i.i32 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i32, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ak, align 8, !tbaa !97
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !98
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !100
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #38, !inline_history !7
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !100
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.an, %bb.u ], [ %i.ax, %bb.v ]
  %i.ay = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ay, label %bb.w, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  %i.az = load ptr, ptr %14, align 16, !tbaa !143 ; 2 uses
  %.not55 = icmp eq ptr %i.az, null
  br i1 %.not55, label %bb.x, label %bb.aj

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ba = load ptr, ptr %.024, align 8, !tbaa !159 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 216 ; 6 uses
  %i.bc = atomicrmw add ptr %i.bb, i32 1 acquire, align 4
  %i.bd = and i32 %i.bc, 1073741824
  %.not.i.i.i.i33 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i33, label %.loopexit57, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = atomicrmw sub ptr %i.bb, i32 1 seq_cst, align 4
  %i.bf = add i32 %i.be, 1073741823
  %i.bg = and i32 %i.bf, 1073741823               ; 2 uses
  %i.bh = add nuw nsw i32 %i.bg, 1
  %i.bi = cmpxchg weak ptr %i.bb, i32 %i.bg, i32 %i.bh acquire acquire, align 4
  %i.bj = extractvalue { i32, i1 } %i.bi, 1
  br i1 %i.bj, label %.loopexit57, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.y, %bb.ab
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.ab ], [ 1, %bb.y ] ; 5 uses
  %.not.i.i.i.i.i34 = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i34, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.bk = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i32 [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.z ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.bl = add nuw nsw i32 %.03.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %i.bl, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i, %bb.z
  %i.bm = shl nsw i32 %.sroa.0.0.i.i.i.i, 1
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.bn = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.aa ], [ %i.bm, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i ]
  %i.bo = load atomic i32, ptr %i.bb seq_cst, align 4
  %i.bp = and i32 %i.bo, 1073741823               ; 2 uses
  %i.bq = add nuw nsw i32 %i.bp, 1
  %i.br = cmpxchg weak ptr %i.bb, i32 %i.bp, i32 %i.bq acquire acquire, align 4
  %i.bs = extractvalue { i32, i1 } %i.br, 1
  br i1 %i.bs, label %.loopexit57, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i, !llvm.loop !10

.loopexit57:                                      ; preds = %bb.ab, %bb.y, %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !78
  %.not56 = icmp eq i64 %i.bu, 0
  %i.bv = atomicrmw sub ptr %i.bb, i32 1 release, align 4 ; 0 uses
end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_112ImageBufAlgo17ociofiletransformERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEEbbPKNS0_11ColorConfigENS0_3ROIEi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  ret i1 %.123

bb.bb:                                            ; preds = %.body, %bb.c
  %.pn29 = phi { ptr, i32 } [ %i.e, %bb.c ], [ %.pn27, %.body ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA27_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(27) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.91", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(27) %1) #38, !noalias !731
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !731
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 1 dereferenceable(27) %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !731
  %i.b = load ptr, ptr %4, align 8, !tbaa !77
  store ptr %i.b, ptr %3, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !78
  store i64 %i.e, ptr %i.c, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !79
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !79
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo17ociofiletransformERKNS0_8ImageBufENS0_17basic_string_viewIcSt11char_traitsIcEEEbbPKNS0_11ColorConfigENS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) dead_on_return %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %6, i32 noundef %7) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.a, ptr %8, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  store i64 %i.d, ptr %i.b, align 8, !tbaa !70
  %i.e = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo17ociofiletransformERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEEbbPKNS0_11ColorConfigENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %8, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %6, i32 noundef %7)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA40_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(40) @.str.92)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA40_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(40) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.91", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(40) %1) #38, !noalias !734
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !734
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 1 dereferenceable(40) %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !734
  %i.b = load ptr, ptr %4, align 8, !tbaa !77
  store ptr %i.b, ptr %3, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !78
  store i64 %i.e, ptr %i.c, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !79
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !79
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo18ocionamedtransformERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEEbbS9_S9_PKNS0_11ColorConfigENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) dead_on_return %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef readonly captures(none) dead_on_return %5, ptr nofree noundef readonly captures(none) dead_on_return %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %8, i32 noundef %9) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.OpenImageIO::v3_1::pvt::LoggedTimer", align 8 ; 10 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::shared_ptr.19", align 16 ; 8 uses
  %18 = alloca %"class.std::shared_ptr.19", align 16 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  store ptr @.str.93, ptr %16, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 23, ptr %i.a, align 8, !tbaa !70
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %15, ptr noundef nonnull dead_on_return %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.b = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @.str.7, ptr %14, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %.body

_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit: ; preds = %bb.b, %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, %bb.a
  %.017 = phi ptr [ %7, %bb.a ], [ @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  %i.h = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !70
  %i.k = load ptr, ptr %5, align 8, !tbaa !69     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !70
  %i.n = load ptr, ptr %6, align 8, !tbaa !69     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !741
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.h, ptr %13, align 8, !tbaa !69, !noalias !741
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.j, ptr %i.q, align 8, !tbaa !70, !noalias !741
  %i.r = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %13)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i unwind label %bb.af

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i: ; preds = %bb.h, %bb.g
  %i.s = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !741
  %.not.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i1.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i, label %bb.i

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  store ptr %i.k, ptr %12, align 8, !tbaa !69, !noalias !741
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.m, ptr %i.t, align 8, !tbaa !70, !noalias !741
  %i.u = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %12)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i unwind label %bb.af

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i: ; preds = %bb.i, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  %i.v = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !741
  %.not.i3.i = icmp eq ptr %i.n, null
  br i1 %.not.i3.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i
  store ptr %i.n, ptr %11, align 8, !tbaa !69, !noalias !741
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.p, ptr %i.w, align 8, !tbaa !70, !noalias !741
  %i.x = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %11)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i unwind label %bb.af

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i: ; preds = %bb.j, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i
  %i.y = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !741
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_7ustringEbS2_S2_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %18, ptr noundef nonnull readonly align 8 dereferenceable(8) %.017, ptr %i.s, i1 noundef zeroext %4, ptr %i.v, ptr %i.y)
          to label %_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEbS5_S5_.exit unwind label %bb.af

_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEbS5_S5_.exit: ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %18, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.ab, ptr %17, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEbS5_S5_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ad, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !98
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !100
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #38, !inline_history !18
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !100
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.n ], [ %i.aq, %bb.o ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.p, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEbS5_S5_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.p
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !95  ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.as, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.at, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !98
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !100
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #38, !inline_history !7
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !100
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i = phi i32 [ %i.aw, %bb.t ], [ %i.bg, %bb.u ]
  %i.bh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bh, label %bb.v, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  %i.bi = load ptr, ptr %17, align 16, !tbaa !143 ; 2 uses
  %.not48 = icmp eq ptr %i.bi, null
  br i1 %.not48, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = load ptr, ptr %.017, align 8, !tbaa !159 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 216 ; 6 uses
  %i.bl = atomicrmw add ptr %i.bk, i32 1 acquire, align 4
  %i.bm = and i32 %i.bl, 1073741824
  %.not.i.i.i.i26 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i26, label %.loopexit50, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = atomicrmw sub ptr %i.bk, i32 1 seq_cst, align 4
  %i.bo = add i32 %i.bn, 1073741823
  %i.bp = and i32 %i.bo, 1073741823               ; 2 uses
  %i.bq = add nuw nsw i32 %i.bp, 1
  %i.br = cmpxchg weak ptr %i.bk, i32 %i.bp, i32 %i.bq acquire acquire, align 4
  %i.bs = extractvalue { i32, i1 } %i.br, 1
  br i1 %i.bs, label %.loopexit50, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.x, %bb.aa
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.aa ], [ 1, %bb.x ] ; 5 uses
  %.not.i.i.i.i.i27 = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i27, label %bb.z, label %bb.y
end_hunk_7
begin_hunk_8_@_ZNK11OpenImageIO4v3_111ColorConfig14set_colorspaceERNS0_9ImageSpecENS0_17basic_string_viewIcSt11char_traitsIcEEE:bb.a

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret void
}

declare void @_ZN11OpenImageIO4v3_19ImageSpec15erase_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_111ColorConfig27set_colorspace_rec709_gammaERNS0_9ImageSpecEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, float noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.263", align 16 ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = fmul float %2, 1.000000e+02
  %i.f = tail call noundef float @llvm.round.f32(float %i.e)
  %i.g = fdiv float %i.f, 1.000000e+02            ; 5 uses
  %i.h = fadd float %i.g, -1.000000e+00
  %i.i = tail call float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp ugt float %i.i, f0x3C23D70A
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @.str.15, ptr %8, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 16, ptr %i.k, align 8, !tbaa !70
  call void @_ZNK11OpenImageIO4v3_111ColorConfig14set_colorspaceERNS0_9ImageSpecENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %8)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.l = fadd float %i.g, -1.800000e+00
  %i.m = tail call float @llvm.fabs.f32(float %i.l)
  %i.n = fcmp ugt float %i.m, f0x3C23D70A
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @.str.99, ptr %9, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 16, ptr %i.o, align 8, !tbaa !70
  call void @_ZNK11OpenImageIO4v3_111ColorConfig14set_colorspaceERNS0_9ImageSpecENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store float 1.800000e+00, ptr %i.d, align 4, !tbaa !118
  store ptr @.str.98, ptr %7, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 10, ptr %i.p, align 8, !tbaa !70
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %7, i64 267, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.q = fadd float %i.g, -2.200000e+00
  %i.r = tail call float @llvm.fabs.f32(float %i.q)
  %i.s = fcmp ugt float %i.r, f0x3C23D70A
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @.str.100, ptr %10, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 16, ptr %i.t, align 8, !tbaa !70
  call void @_ZNK11OpenImageIO4v3_111ColorConfig14set_colorspaceERNS0_9ImageSpecENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store float 2.200000e+00, ptr %i.c, align 4, !tbaa !118
  store ptr @.str.98, ptr %6, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 10, ptr %i.u, align 8, !tbaa !70
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %6, i64 267, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.v = fadd float %i.g, -2.400000e+00
  %i.w = tail call float @llvm.fabs.f32(float %i.v)
  %i.x = fcmp ugt float %i.w, f0x3C23D70A
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @.str.101, ptr %11, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 16, ptr %i.y, align 8, !tbaa !70
  call void @_ZNK11OpenImageIO4v3_111ColorConfig14set_colorspaceERNS0_9ImageSpecENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store float 2.400000e+00, ptr %i.b, align 4, !tbaa !118
  store ptr @.str.98, ptr %5, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 10, ptr %i.z, align 8, !tbaa !70
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %5, i64 267, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.aa = fmul float %i.g, 1.000000e+01
  %i.ab = tail call noundef i64 @llvm.lround.i64.f32(float %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38, !noalias !750
  %.sroa.03.0.insert.ext.i = zext i64 %i.ab to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %4, align 16, !noalias !750
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.102, i64 16, i64 3, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38, !noalias !750
  %i.ac = load ptr, ptr %13, align 8, !tbaa !77
  store ptr %i.ac, ptr %12, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !78
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig14set_colorspaceERNS0_9ImageSpecENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %12)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %13, align 8, !tbaa !77   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !79
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store float %2, ptr %i.a, align 4, !tbaa !118
  store ptr @.str.98, ptr %3, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.al, align 8, !tbaa !70
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %3, i64 267, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %13, align 8, !tbaa !77   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.k
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !79
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  resume { ptr, i32 } %i.am

bb.l:                                             ; preds = %bb.d, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_114set_colorspaceERNS0_9ImageSpecENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.7, ptr %2, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  resume { ptr, i32 } %i.f

_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.g = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %i.g, ptr %3, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !70
  store i64 %i.j, ptr %i.h, align 8, !tbaa !70
  call void @_ZNK11OpenImageIO4v3_111ColorConfig14set_colorspaceERNS0_9ImageSpecENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_127set_colorspace_rec709_gammaERNS0_9ImageSpecEf(ptr noundef nonnull align 8 dereferenceable(160) %0, float noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.7, ptr %2, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  resume { ptr, i32 } %i.f

_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @_ZNK11OpenImageIO4v3_111ColorConfig27set_colorspace_rec709_gammaERNS0_9ImageSpecEf(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull align 8 dereferenceable(160) %0, float noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.103() #20 section ".text.startup" {
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #38, !inline_history !751
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !63   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #38, !inline_history !751
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN11OpenImageIO4v3_16CSInfoESaIS2_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiSE_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !172    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN11OpenImageIO4v3_16CSInfoESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #39
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_16CSInfoESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 96076792050570581)
  %i.l = select i1 %i.j, i64 96076792050570581, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 96                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #42 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.r = load ptr, ptr %2, align 8, !tbaa !77
  store ptr %i.r, ptr %5, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !78
  store i64 %i.u, ptr %i.s, align 8, !tbaa !70
  %i.v = load i32, ptr %3, align 4, !tbaa !63
  %i.w = load i32, ptr %4, align 4, !tbaa !63
  store ptr @.str.7, ptr %6, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_16CSInfoC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEiiS5_(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull dead_on_return %5, i32 noundef %i.v, i32 noundef %i.w, ptr noundef nonnull dead_on_return %6)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_16CSInfoESaIS2_EE12_M_check_lenEmPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_16CSInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt19__relocate_object_aIN11OpenImageIO4v3_16CSInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bf, %_ZSt19__relocate_object_aIN11OpenImageIO4v3_16CSInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.c ] ; 10 uses
  %.0911.i.i.i = phi ptr [ %i.be, %_ZSt19__relocate_object_aIN11OpenImageIO4v3_16CSInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.c ] ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !759)
  call void @llvm.experimental.noalias.scope.decl(metadata !760)
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.y, ptr %.012.i.i.i, align 8, !tbaa !90, !alias.scope !759
  %i.z = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !77, !alias.scope !760 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !78, !alias.scope !760 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false), !alias.scope !761
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.z, ptr %.012.i.i.i, align 8, !tbaa !77, !alias.scope !759
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !79, !alias.scope !760
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !79, !alias.scope !759
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !78, !alias.scope !760
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.ah = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.ad, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !78, !alias.scope !759
  store ptr %i.aa, ptr %.0911.i.i.i, align 8, !tbaa !77, !alias.scope !760
  store i64 0, ptr %i.ai, align 8, !tbaa !78, !alias.scope !760
  store i8 0, ptr %i.aa, align 8, !tbaa !79, !alias.scope !760
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ak, ptr noundef nonnull align 8 dereferenceable(9) %i.al, i64 9, i1 false), !alias.scope !761
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 3 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !90, !alias.scope !759
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !77, !alias.scope !760 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.at = load i64, ptr %i.as, align 8, !tbaa !78, !alias.scope !760 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false), !alias.scope !761
  br label %_ZSt19__relocate_object_aIN11OpenImageIO4v3_16CSInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !77, !alias.scope !759
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !79, !alias.scope !760
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !79, !alias.scope !759
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !78, !alias.scope !760
  br label %_ZSt19__relocate_object_aIN11OpenImageIO4v3_16CSInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN11OpenImageIO4v3_16CSInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i, %bb.e
  %i.ax = phi i64 [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i ], [ %i.at, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !78, !alias.scope !759
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !77, !alias.scope !760
  store i64 0, ptr %i.ay, align 8, !tbaa !78, !alias.scope !760
  store i8 0, ptr %i.aq, align 8, !tbaa !79, !alias.scope !760
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
end_hunk_8
