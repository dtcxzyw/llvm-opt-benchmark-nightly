Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Jpeg2000ImageLoader?download=true
inline.NumInlined: 7231
inline.NumDeleted: 2820
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 52
begin_hunk_0
@_ZTIN3tev19Jpeg2000ImageLoaderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3tev19Jpeg2000ImageLoaderE, ptr @_ZTIN3tev11ImageLoaderE }, align 8
@_ZTSN3tev19Jpeg2000ImageLoaderE = dso_local constant [28 x i8] c"N3tev19Jpeg2000ImageLoaderE\00", align 1
@_ZTIN3tev11ImageLoaderE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3tev11ImageLoaderE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN3tev11ImageLoaderE = linkonce_odr dso_local constant [20 x i8] c"N3tev11ImageLoaderE\00", comdat, align 1
@_ZTVNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEEE = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTINSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEEE, ptr @_ZNSt3__117__assoc_sub_stateD2Ev, ptr @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED0Ev, ptr @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE16__on_zero_sharedEv, ptr @_ZNSt3__117__assoc_sub_state9__executeEv] }, comdat, align 8
@_ZTINSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEEE, ptr @_ZTINSt3__117__assoc_sub_stateE }, comdat, align 8
@_ZTSNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEEE = linkonce_odr hidden constant [74 x i8] c"NSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEEE\00", comdat, align 1
@_ZTINSt3__117__assoc_sub_stateE = external constant ptr
@_ZTVNSt3__117__assoc_sub_stateE = external constant { [6 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr
@_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, ptr @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED2Ev, ptr @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED0Ev, ptr @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEE16__on_zero_sharedEv, ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEE21__on_zero_shared_weakEv] }, comdat, align 8
@_ZTINSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, ptr @_ZTINSt3__119__shared_weak_countE }, comdat, align 8
@_ZTSNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE = linkonce_odr dso_local constant [75 x i8] c"NSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE\00", comdat, align 1
@_ZTINSt3__119__shared_weak_countE = external constant ptr
@_ZTINSt3__112future_errorE = external constant ptr
@_ZTVNSt3__112future_errorE = external constant { [5 x ptr] }, align 8
@.str.18 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@_ZTVN3tev11ImageLoader18FormatNotSupportedE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3tev11ImageLoader18FormatNotSupportedE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3tev11ImageLoader18FormatNotSupportedD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.19 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.29 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/tev/tev/src/imageio/Jpeg2000ImageLoader.cpp\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"Invalid JP2 box: insufficient data for 32-bit length.\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"Invalid JP2 box: insufficient data for 64-bit length.\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"Invalid JP2 box: length {} is too small.\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr dso_local local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], comdat, align 16
@_ZZN3fmt3v126detail9digits2_iEmE4data = linkonce_odr dso_local local_unnamed_addr constant [257 x i8] c"00010203  0405060707080910  1112131414151617  18192021  222324  25262728  2930313232333435  3637383939404142  43444546  474849  50515253  5455565757585960  6162636464656667  68697071  727374  75767778  7980818282838485  8687888989909192  93949596  979899  \00", comdat, align 2
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr dso_local local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr dso_local local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", comdat, align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr dso_local local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], comdat, align 16
@.str.39 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZN3fmt3v1212format_facetINSt3__16localeEE2idE = linkonce_odr dso_local global { %"struct.std::__1::once_flag", i32 } zeroinitializer, comdat, align 8
@_ZTVN3fmt3v1212format_facetINSt3__16localeEEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetINSt3__16localeEEE, ptr @_ZN3fmt3v1212format_facetINSt3__16localeEED2Ev, ptr @_ZN3fmt3v1212format_facetINSt3__16localeEED0Ev, ptr @_ZNSt3__16locale5facet16__on_zero_sharedEv, ptr @_ZNK3fmt3v1212format_facetINSt3__16localeEE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, comdat, align 8
@_ZTIN3fmt3v1212format_facetINSt3__16localeEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetINSt3__16localeEEE, ptr @_ZTINSt3__16locale5facetE }, comdat, align 8
@_ZTSN3fmt3v1212format_facetINSt3__16localeEEE = linkonce_odr dso_local constant [42 x i8] c"N3fmt3v1212format_facetINSt3__16localeEEE\00", comdat, align 1
@_ZTINSt3__16locale5facetE = external constant ptr
@_ZNSt3__18numpunctIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.42 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr dso_local local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr dso_local local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr dso_local local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr dso_local local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr dso_local local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", comdat, align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr dso_local local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", comdat, align 16
@.str.45 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr dso_local local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], comdat, align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr dso_local local_unnamed_addr constant [634 x %"class.fmt::v12::detail::uint128"] [%"class.fmt::v12::detail::uint128" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128" { i64 8624834609543440813, i64 -6941508010590729807 }, %"class.fmt::v12::detail::uint128" { i64 -3054014793352862696, i64 -4065198994811024355 }, %"class.fmt::v12::detail::uint128" { i64 5405853545163697438, i64 -469812725086392539 }, %"class.fmt::v12::detail::uint128" { i64 5684501474941004851, i64 -7211161980820077193 }, %"class.fmt::v12::detail::uint128" { i64 2493940825248868160, i64 -4402266457597708587 }, %"class.fmt::v12::detail::uint128" { i64 7729112049988473104, i64 -891147053569747830 }, %"class.fmt::v12::detail::uint128" { i64 -9004363024039368022, i64 -7474495936122174250 }, %"class.fmt::v12::detail::uint128" { i64 2579604275232953684, i64 -4731433901725329908 }, %"class.fmt::v12::detail::uint128" { i64 3224505344041192105, i64 -1302606358729274481 }, %"class.fmt::v12::detail::uint128" { i64 8932844867666826922, i64 -7731658001846878407 }, %"class.fmt::v12::detail::uint128" { i64 -2669001970698630060, i64 -5052886483881210105 }, %"class.fmt::v12::detail::uint128" { i64 -3336252463373287575, i64 -1704422086424124727 }, %"class.fmt::v12::detail::uint128" { i64 2526528228819083170, i64 -7982792831656159810 }, %"class.fmt::v12::detail::uint128" { i64 -6065211750830921845, i64 -5366805021142811859 }, %"class.fmt::v12::detail::uint128" { i64 1641857348316123501, i64 -2096820258001126919 }, %"class.fmt::v12::detail::uint128" { i64 -5891368184943504668, i64 -8228041688891786181 }, %"class.fmt::v12::detail::uint128" { i64 -7364210231179380835, i64 -5673366092687344822 }, %"class.fmt::v12::detail::uint128" { i64 4629795266307937668, i64 -2480021597431793123 }, %"class.fmt::v12::detail::uint128" { i64 5199465050656154995, i64 -8467542526035952558 }, %"class.fmt::v12::detail::uint128" { i64 -2724040723534582064, i64 -5972742139117552794 }, %"class.fmt::v12::detail::uint128" { i64 -8016736922845615485, i64 -2854241655469553088 }, %"class.fmt::v12::detail::uint128" { i64 6518754469289960082, i64 -8701430062309552536 }, %"class.fmt::v12::detail::uint128" { i64 8148443086612450103, i64 -6265101559459552766 }, %"class.fmt::v12::detail::uint128" { i64 962181821410786820, i64 -3219690930897053053 }, %"class.fmt::v12::detail::uint128" { i64 -1704479370831952189, i64 -8929835859451740015 }, %"class.fmt::v12::detail::uint128" { i64 7092772823314835571, i64 -6550608805887287114 }, %"class.fmt::v12::detail::uint128" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128" { i64 8999993282035256218, i64 -9152888395723407474 }, %"class.fmt::v12::detail::uint128" { i64 2026619565689294465, i64 -6829424476226871438 }, %"class.fmt::v12::detail::uint128" { i64 -6690097579743157727, i64 -3925094576856201394 }, %"class.fmt::v12::detail::uint128" { i64 5472436080603216553, i64 -294682202642863838 }, %"class.fmt::v12::detail::uint128" { i64 8031958568804398250, i64 -7101705404292871755 }, %"class.fmt::v12::detail::uint128" { i64 -3795109844276665900, i64 -4265445736938701790 }, %"class.fmt::v12::detail::uint128" { i64 9091170749936331337, i64 -720121152745989333 }, %"class.fmt::v12::detail::uint128" { i64 3376138709496513134, i64 -7367604748107325189 }, %"class.fmt::v12::detail::uint128" { i64 -391512631556746487, i64 -4597819916706768583 }, %"class.fmt::v12::detail::uint128" { i64 8733981247408842699, i64 -1135588877456072824 }, %"class.fmt::v12::detail::uint128" { i64 5458738279630526687, i64 -7627272076051127371 }, %"class.fmt::v12::detail::uint128" { i64 -7011635205744005353, i64 -4922404076636521310 }, %"class.fmt::v12::detail::uint128" { i64 5070514048102157021, i64 -1541319077368263733 }, %"class.fmt::v12::detail::uint128" { i64 863228270850154186, i64 -7880853450996246689 }, %"class.fmt::v12::detail::uint128" { i64 -3532650679864695172, i64 -5239380795317920458 }, %"class.fmt::v12::detail::uint128" { i64 -9027499368258256869, i64 -1937539975720012668 }, %"class.fmt::v12::detail::uint128" { i64 -3336344095947716591, i64 -8128491512466089774 }, %"class.fmt::v12::detail::uint128" { i64 -8782116138362033642, i64 -5548928372155224313 }, %"class.fmt::v12::detail::uint128" { i64 7469098900757009563, i64 -2324474446766642487 }, %"class.fmt::v12::detail::uint128" { i64 -2249342214667950879, i64 -8370325556870233411 }, %"class.fmt::v12::detail::uint128" { i64 6411694268519837209, i64 -5851220927660403859 }, %"class.fmt::v12::detail::uint128" { i64 -5820440219632367201, i64 -2702340141148116920 }, %"class.fmt::v12::detail::uint128" { i64 7891439908798240260, i64 -8606491615858654931 }, %"class.fmt::v12::detail::uint128" { i64 -3970758169284363388, i64 -6146428501395930760 }, %"class.fmt::v12::detail::uint128" { i64 -351761693178066331, i64 -3071349608317525546 }, %"class.fmt::v12::detail::uint128" { i64 6697677969404790400, i64 -8837122532839535322 }, %"class.fmt::v12::detail::uint128" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128" { i64 -1064093218873484761, i64 -3431710416100151157 }, %"class.fmt::v12::detail::uint128" { i64 8558313775058847833, i64 -9062348037703676329 }, %"class.fmt::v12::detail::uint128" { i64 6086206200396171887, i64 -6716249028702207507 }, %"class.fmt::v12::detail::uint128" { i64 -6227300304786948854, i64 -3783625267450371480 }, %"class.fmt::v12::detail::uint128" { i64 -3172439362556298163, i64 -117845565885576446 }, %"class.fmt::v12::detail::uint128" { i64 -4288617610811380304, i64 -6991182506319567135 }, %"class.fmt::v12::detail::uint128" { i64 3862600023340550428, i64 -4127292114472071014 }, %"class.fmt::v12::detail::uint128" { i64 -4395122007679087773, i64 -547429124662700864 }, %"class.fmt::v12::detail::uint128" { i64 8782263791269039902, i64 -7259672230555269896 }, %"class.fmt::v12::detail::uint128" { i64 -7468914334623251739, i64 -4462904269766699466 }, %"class.fmt::v12::detail::uint128" { i64 4498915137003099038, i64 -966944318780986428 }, %"class.fmt::v12::detail::uint128" { i64 -6411550076227838909, i64 -7521869226879198374 }, %"class.fmt::v12::detail::uint128" { i64 5820620459997365076, i64 -4790650515171610063 }, %"class.fmt::v12::detail::uint128" { i64 -6559282480285457367, i64 -1376627125537124675 }, %"class.fmt::v12::detail::uint128" { i64 -8711237568605798758, i64 -7777920981101784778 }, %"class.fmt::v12::detail::uint128" { i64 2946011094524915264, i64 -5110715207949843068 }, %"class.fmt::v12::detail::uint128" { i64 3682513868156144080, i64 -1776707991509915931 }, %"class.fmt::v12::detail::uint128" { i64 4607414176811284002, i64 -8027971522334779313 }, %"class.fmt::v12::detail::uint128" { i64 1147581702586717098, i64 -5423278384491086237 }, %"class.fmt::v12::detail::uint128" { i64 -3177208890193991531, i64 -2167411962186469893 }, %"class.fmt::v12::detail::uint128" { i64 7237616480483531101, i64 -8272161504007625539 }, %"class.fmt::v12::detail::uint128" { i64 -4788037454677749836, i64 -5728515861582144020 }, %"class.fmt::v12::detail::uint128" { i64 -1373360799919799391, i64 -2548958808550292121 }, %"class.fmt::v12::detail::uint128" { i64 -858350499949874619, i64 -8510628282985014432 }, %"class.fmt::v12::detail::uint128" { i64 3538747893490044630, i64 -6026599335303880135 }, %"class.fmt::v12::detail::uint128" { i64 9035120885289943692, i64 -2921563150702462265 }, %"class.fmt::v12::detail::uint128" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128" { i64 -2741144597525430787, i64 -6317696477610263061 }, %"class.fmt::v12::detail::uint128" { i64 -3426430746906788484, i64 -3285434578585440922 }, %"class.fmt::v12::detail::uint128" { i64 4776009810824339054, i64 -8970925639256982432 }, %"class.fmt::v12::detail::uint128" { i64 5970012263530423817, i64 -6601971030643840136 }, %"class.fmt::v12::detail::uint128" { i64 7462515329413029772, i64 -3640777769877412266 }, %"class.fmt::v12::detail::uint128" { i64 52386062455755703, i64 -9193015133814464522 }, %"class.fmt::v12::detail::uint128" { i64 -9157889458785081179, i64 -6879582898840692749 }, %"class.fmt::v12::detail::uint128" { i64 6999382250228200142, i64 -3987792605123478032 }, %"class.fmt::v12::detail::uint128" { i64 8749227812785250178, i64 -373054737976959636 }, %"class.fmt::v12::detail::uint128" { i64 -3755104653863994447, i64 -7150688238876681629 }, %"class.fmt::v12::detail::uint128" { i64 -4693880817329993059, i64 -4326674280168464132 }, %"class.fmt::v12::detail::uint128" { i64 -1255665003235103419, i64 -796656831783192261 }, %"class.fmt::v12::detail::uint128" { i64 8438581409832836171, i64 -7415439547505577019 }, %"class.fmt::v12::detail::uint128" { i64 -3286831292991118498, i64 -4657613415954583370 }, %"class.fmt::v12::detail::uint128" { i64 -8720225134666286027, i64 -1210330751515841308 }, %"class.fmt::v12::detail::uint128" { i64 -3144297699952734815, i64 -7673985747338482674 }, %"class.fmt::v12::detail::uint128" { i64 -8542058143368306422, i64 -4980796165745715438 }, %"class.fmt::v12::detail::uint128" { i64 3157485376071780684, i64 -1614309188754756393 }, %"class.fmt::v12::detail::uint128" { i64 8890957387685944784, i64 -7926472270612804602 }, %"class.fmt::v12::detail::uint128" { i64 1890324697752655171, i64 -5296404319838617848 }, %"class.fmt::v12::detail::uint128" { i64 2362905872190818964, i64 -2008819381370884406 }, %"class.fmt::v12::detail::uint128" { i64 6088502188546649757, i64 -8173041140997884610 }, %"class.fmt::v12::detail::uint128" { i64 -1612744301171463612, i64 -5604615407819967859 }, %"class.fmt::v12::detail::uint128" { i64 7207441660390446293, i64 -2394083241347571919 }, %"class.fmt::v12::detail::uint128" { i64 -2412877989897052923, i64 -8413831053483314306 }, %"class.fmt::v12::detail::uint128" { i64 -7627783505798704058, i64 -5905602798426754978 }, %"class.fmt::v12::detail::uint128" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128" { i64 -1923980597781273129, i64 -8648977452394866743 }, %"class.fmt::v12::detail::uint128" { i64 6818396289628184397, i64 -6199535797066195524 }, %"class.fmt::v12::detail::uint128" { i64 8522995362035230496, i64 -3137733727905356501 }, %"class.fmt::v12::detail::uint128" { i64 3021029092058325108, i64 -8878612607581929669 }, %"class.fmt::v12::detail::uint128" { i64 -835399653354481519, i64 -6486579741050024183 }, %"class.fmt::v12::detail::uint128" { i64 8179122470161673909, i64 -3496538657885142324 }, %"class.fmt::v12::detail::uint128" { i64 -4111420493003729615, i64 -9102865688819295809 }, %"class.fmt::v12::detail::uint128" { i64 -5139275616254662019, i64 -6766896092596731857 }, %"class.fmt::v12::detail::uint128" { i64 -6424094520318327523, i64 -3846934097318526917 }, %"class.fmt::v12::detail::uint128" { i64 -8030118150397909404, i64 -196981603220770742 }, %"class.fmt::v12::detail::uint128" { i64 -7324666853212387329, i64 -7040642529654063570 }, %"class.fmt::v12::detail::uint128" { i64 4679224488766679550, i64 -4189117143640191558 }, %"class.fmt::v12::detail::uint128" { i64 -3374341425896426371, i64 -624710411122851544 }, %"class.fmt::v12::detail::uint128" { i64 -9026492418826348337, i64 -7307973034592864071 }, %"class.fmt::v12::detail::uint128" { i64 -2059743486678159614, i64 -4523280274813692185 }, %"class.fmt::v12::detail::uint128" { i64 -2574679358347699518, i64 -1042414325089727327 }, %"class.fmt::v12::detail::uint128" { i64 3002511419460075706, i64 -7569037980822161435 }, %"class.fmt::v12::detail::uint128" { i64 8364825292752482536, i64 -4849611457600313890 }, %"class.fmt::v12::detail::uint128" { i64 1232659579085827362, i64 -1450328303573004458 }, %"class.fmt::v12::detail::uint128" { i64 -3841273781498745803, i64 -7823984217374209643 }, %"class.fmt::v12::detail::uint128" { i64 4421779809981343555, i64 -5168294253290374149 }, %"class.fmt::v12::detail::uint128" { i64 915538744049291539, i64 -1848681798185579782 }, %"class.fmt::v12::detail::uint128" { i64 5183897733458195116, i64 -8072955151507069220 }, %"class.fmt::v12::detail::uint128" { i64 6479872166822743895, i64 -5479507920956448621 }, %"class.fmt::v12::detail::uint128" { i64 3488154190101041965, i64 -2237698882768172872 }, %"class.fmt::v12::detail::uint128" { i64 2180096368813151228, i64 -8316090829371189901 }, %"class.fmt::v12::detail::uint128" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128" { i64 -2358206946763686086, i64 -2617598379430861437 }, %"class.fmt::v12::detail::uint128" { i64 7749492695127472004, i64 -8553528014785370254 }, %"class.fmt::v12::detail::uint128" { i64 463493832054564197, i64 -6080224000054324913 }, %"class.fmt::v12::detail::uint128" { i64 -4032318728359182658, i64 -2988593981640518238 }, %"class.fmt::v12::detail::uint128" { i64 -4826042214438183113, i64 -8785400266166405755 }, %"class.fmt::v12::detail::uint128" { i64 3190819268807046917, i64 -6370064314280619289 }, %"class.fmt::v12::detail::uint128" { i64 -623161932418579258, i64 -3350894374423386208 }, %"class.fmt::v12::detail::uint128" { i64 -7307005235402693892, i64 -9011838011655698236 }, %"class.fmt::v12::detail::uint128" { i64 -4522070525825979461, i64 -6653111496142234891 }, %"class.fmt::v12::detail::uint128" { i64 3570783879572301481, i64 -3704703351750405709 }, %"class.fmt::v12::detail::uint128" { i64 -148206168962011053, i64 -19193171260619233 }, %"class.fmt::v12::detail::uint128" { i64 -92628855601256908, i64 -6929524759678968877 }, %"class.fmt::v12::detail::uint128" { i64 -115786069501571135, i64 -4050219931171323192 }, %"class.fmt::v12::detail::uint128" { i64 4466953431550423985, i64 -451088895536766085 }, %"class.fmt::v12::detail::uint128" { i64 486002885505321039, i64 -7199459587351560659 }, %"class.fmt::v12::detail::uint128" { i64 5219189625309039203, i64 -4387638465762062920 }, %"class.fmt::v12::detail::uint128" { i64 6523987031636299003, i64 -872862063775190746 }, %"class.fmt::v12::detail::uint128" { i64 -534194123654701027, i64 -7463067817500576073 }, %"class.fmt::v12::detail::uint128" { i64 -667742654568376284, i64 -4717148753448332187 }, %"class.fmt::v12::detail::uint128" { i64 8388693718644305453, i64 -1284749923383027329 }, %"class.fmt::v12::detail::uint128" { i64 -6286281471915778851, i64 -7720497729755473937 }, %"class.fmt::v12::detail::uint128" { i64 -7857851839894723564, i64 -5038936143766954517 }, %"class.fmt::v12::detail::uint128" { i64 8624429273841147160, i64 -1686984161281305242 }, %"class.fmt::v12::detail::uint128" { i64 778582277723329071, i64 -7971894128441897632 }, %"class.fmt::v12::detail::uint128" { i64 973227847154161339, i64 -5353181642124984136 }, %"class.fmt::v12::detail::uint128" { i64 1216534808942701674, i64 -2079791034228842266 }, %"class.fmt::v12::detail::uint128" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128" { i64 -4814189703547749197, i64 -5660062011615247437 }, %"class.fmt::v12::detail::uint128" { i64 -6017737129434686497, i64 -2463391496091671392 }, %"class.fmt::v12::detail::uint128" { i64 7768129340171790700, i64 -8457148712698376476 }, %"class.fmt::v12::detail::uint128" { i64 -8736582398494813241, i64 -5959749872445582691 }, %"class.fmt::v12::detail::uint128" { i64 -1697355961263740744, i64 -2838001322129590460 }, %"class.fmt::v12::detail::uint128" { i64 1244995533423855987, i64 -8691279853972075893 }, %"class.fmt::v12::detail::uint128" { i64 -3055441601647567920, i64 -6252413799037706963 }, %"class.fmt::v12::detail::uint128" { i64 5404070034795315908, i64 -3203831230369745799 }, %"class.fmt::v12::detail::uint128" { i64 -3539985255894009413, i64 -8919923546622172981 }, %"class.fmt::v12::detail::uint128" { i64 -4424981569867511767, i64 -6538218414850328322 }, %"class.fmt::v12::detail::uint128" { i64 8303831092947774003, i64 -3561087000135522498 }, %"class.fmt::v12::detail::uint128" { i64 578208414664970848, i64 -9143208402725783417 }, %"class.fmt::v12::detail::uint128" { i64 -3888925500096174344, i64 -6817324484979841368 }, %"class.fmt::v12::detail::uint128" { i64 -249470856692830026, i64 -3909969587797413806 }, %"class.fmt::v12::detail::uint128" { i64 -4923524589293425437, i64 -275775966319379353 }, %"class.fmt::v12::detail::uint128" { i64 -3077202868308390898, i64 -7089889006590693952 }, %"class.fmt::v12::detail::uint128" { i64 765182433041899282, i64 -4250675239810979535 }, %"class.fmt::v12::detail::uint128" { i64 5568164059729762006, i64 -701658031336336515 }, %"class.fmt::v12::detail::uint128" { i64 5785945546544795206, i64 -7356065297226292178 }, %"class.fmt::v12::detail::uint128" { i64 -1990940103673781801, i64 -4583395603105477319 }, %"class.fmt::v12::detail::uint128" { i64 6734696907262548557, i64 -1117558485454458744 }, %"class.fmt::v12::detail::uint128" { i64 4209185567039092848, i64 -7616003081050118571 }, %"class.fmt::v12::detail::uint128" { i64 -8573576096483297652, i64 -4908317832885260310 }, %"class.fmt::v12::detail::uint128" { i64 3118087934678041647, i64 -1523711272679187483 }, %"class.fmt::v12::detail::uint128" { i64 4254647968387469982, i64 -7869848573065574033 }, %"class.fmt::v12::detail::uint128" { i64 706623942056949573, i64 -5225624697904579637 }, %"class.fmt::v12::detail::uint128" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128" { i64 -6941939825212513490, i64 -8117744561361917258 }, %"class.fmt::v12::detail::uint128" { i64 5157633273766521850, i64 -5535494683275008668 }, %"class.fmt::v12::detail::uint128" { i64 6447041592208152312, i64 -2307682335666372931 }, %"class.fmt::v12::detail::uint128" { i64 6335244004343789147, i64 -8359830487432564938 }, %"class.fmt::v12::detail::uint128" { i64 -1304317031425039374, i64 -5838102090863318269 }, %"class.fmt::v12::detail::uint128" { i64 -1630396289281299218, i64 -2685941595151759932 }, %"class.fmt::v12::detail::uint128" { i64 1286845328412881941, i64 -8596242524610931813 }, %"class.fmt::v12::detail::uint128" { i64 -3003129357911285478, i64 -6133617137336276863 }, %"class.fmt::v12::detail::uint128" { i64 5469460339465668960, i64 -3055335403242958174 }, %"class.fmt::v12::detail::uint128" { i64 8030098730593431004, i64 -8827113654667930715 }, %"class.fmt::v12::detail::uint128" { i64 -3797434642040374957, i64 -6422206049907525490 }, %"class.fmt::v12::detail::uint128" { i64 9088264752731695016, i64 -3416071543957018958 }, %"class.fmt::v12::detail::uint128" { i64 -8154892584824854327, i64 -9052573742614218705 }, %"class.fmt::v12::detail::uint128" { i64 8253128342678483707, i64 -6704031159840385477 }, %"class.fmt::v12::detail::uint128" { i64 5704724409920716730, i64 -3768352931373093942 }, %"class.fmt::v12::detail::uint128" { i64 -2092466524453879895, i64 -98755145788979524 }, %"class.fmt::v12::detail::uint128" { i64 998051431430019018, i64 -6979250993759194058 }, %"class.fmt::v12::detail::uint128" { i64 -7975807747567252036, i64 -4112377723771604669 }, %"class.fmt::v12::detail::uint128" { i64 8476984389250486571, i64 -528786136287117932 }, %"class.fmt::v12::detail::uint128" { i64 -3925256793573221701, i64 -7248020362820530564 }, %"class.fmt::v12::detail::uint128" { i64 -294884973539139223, i64 -4448339435098275301 }, %"class.fmt::v12::detail::uint128" { i64 -368606216923924028, i64 -948738275445456222 }, %"class.fmt::v12::detail::uint128" { i64 -2536221894791146469, i64 -7510490449794491995 }, %"class.fmt::v12::detail::uint128" { i64 6053094668365842721, i64 -4776427043815727089 }, %"class.fmt::v12::detail::uint128" { i64 2954682317029915497, i64 -1358847786342270957 }, %"class.fmt::v12::detail::uint128" { i64 -459166561069996766, i64 -7766808894105001205 }, %"class.fmt::v12::detail::uint128" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128" { i64 -5329133770099257851, i64 -1759345355577441598 }, %"class.fmt::v12::detail::uint128" { i64 -5636551615525730109, i64 -8017119874876982855 }, %"class.fmt::v12::detail::uint128" { i64 2177682517447613172, i64 -5409713825168840664 }, %"class.fmt::v12::detail::uint128" { i64 2722103146809516465, i64 -2150456263033662926 }, %"class.fmt::v12::detail::uint128" { i64 6313000485183335695, i64 -8261564192037121185 }, %"class.fmt::v12::detail::uint128" { i64 3279564588051781714, i64 -5715269221619013577 }, %"class.fmt::v12::detail::uint128" { i64 -512230283362660762, i64 -2532400508596379068 }, %"class.fmt::v12::detail::uint128" { i64 1985699082112030976, i64 -8500279345513818773 }, %"class.fmt::v12::detail::uint128" { i64 -2129562165787349184, i64 -6013663163464885563 }, %"class.fmt::v12::detail::uint128" { i64 6561419329620589328, i64 -2905392935903719049 }, %"class.fmt::v12::detail::uint128" { i64 -7428327965055601430, i64 -8733399612580906262 }, %"class.fmt::v12::detail::uint128" { i64 4549648098962661925, i64 -6305063497298744923 }, %"class.fmt::v12::detail::uint128" { i64 -8147997931578836306, i64 -3269643353196043250 }, %"class.fmt::v12::detail::uint128" { i64 1825030320404309165, i64 -8961056123388608887 }, %"class.fmt::v12::detail::uint128" { i64 6892973918932774360, i64 -6589634135808373205 }, %"class.fmt::v12::detail::uint128" { i64 4004531380238580046, i64 -3625356651333078602 }, %"class.fmt::v12::detail::uint128" { i64 -2108853905778275375, i64 -9183376934724255983 }, %"class.fmt::v12::detail::uint128" { i64 6587304654631931589, i64 -6867535149977932074 }, %"class.fmt::v12::detail::uint128" { i64 -989241218564861322, i64 -3972732919045027189 }, %"class.fmt::v12::detail::uint128" { i64 -1236551523206076653, i64 -354230130378896082 }, %"class.fmt::v12::detail::uint128" { i64 6144684325637283948, i64 -7138922859127891907 }, %"class.fmt::v12::detail::uint128" { i64 -6154202648235558777, i64 -4311967555482476980 }, %"class.fmt::v12::detail::uint128" { i64 -3081067291867060567, i64 -778273425925708321 }, %"class.fmt::v12::detail::uint128" { i64 -1925667057416912854, i64 -7403949918844649557 }, %"class.fmt::v12::detail::uint128" { i64 -2407083821771141068, i64 -4643251380128424042 }, %"class.fmt::v12::detail::uint128" { i64 -7620540795641314239, i64 -1192378206733142148 }, %"class.fmt::v12::detail::uint128" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128" { i64 6152128301777116499, i64 -4966770740134231719 }, %"class.fmt::v12::detail::uint128" { i64 -6144897678060768089, i64 -1596777406740401745 }, %"class.fmt::v12::detail::uint128" { i64 -3840561048787980055, i64 -7915514906853832947 }, %"class.fmt::v12::detail::uint128" { i64 4422670725869800739, i64 -5282707615139903279 }, %"class.fmt::v12::detail::uint128" { i64 -8306719647944912789, i64 -1991698500497491195 }, %"class.fmt::v12::detail::uint128" { i64 8643358275316593219, i64 -8162340590452013853 }, %"class.fmt::v12::detail::uint128" { i64 6192511825718353620, i64 -5591239719637629412 }, %"class.fmt::v12::detail::uint128" { i64 7740639782147942025, i64 -2377363631119648861 }, %"class.fmt::v12::detail::uint128" { i64 2532056854628769814, i64 -8403381297090862394 }, %"class.fmt::v12::detail::uint128" { i64 -6058300968568813541, i64 -5892540602936190089 }, %"class.fmt::v12::detail::uint128" { i64 -7572876210711016926, i64 -2753989735242849707 }, %"class.fmt::v12::detail::uint128" { i64 9102010423587778133, i64 -8638772612167862923 }, %"class.fmt::v12::detail::uint128" { i64 -2457545025797441046, i64 -6186779746782440750 }, %"class.fmt::v12::detail::uint128" { i64 -7683617300674189211, i64 -3121788665050663033 }, %"class.fmt::v12::detail::uint128" { i64 -4802260812921368257, i64 -8868646943297746252 }, %"class.fmt::v12::detail::uint128" { i64 -1391139997724322417, i64 -6474122660694794911 }, %"class.fmt::v12::detail::uint128" { i64 7484447039699372787, i64 -3480967307441105734 }, %"class.fmt::v12::detail::uint128" { i64 -9157278655470055720, i64 -9093133594791772940 }, %"class.fmt::v12::detail::uint128" { i64 -6834912300910181746, i64 -6754730975062328271 }, %"class.fmt::v12::detail::uint128" { i64 679731660717048625, i64 -3831727700400522434 }, %"class.fmt::v12::detail::uint128" { i64 -8373707460958465027, i64 -177973607073265139 }, %"class.fmt::v12::detail::uint128" { i64 8601490892183123070, i64 -7028762532061872568 }, %"class.fmt::v12::detail::uint128" { i64 -7694880458480647778, i64 -4174267146649952806 }, %"class.fmt::v12::detail::uint128" { i64 4216457482181353989, i64 -606147914885053103 }, %"class.fmt::v12::detail::uint128" { i64 -4282243101277735613, i64 -7296371474444240046 }, %"class.fmt::v12::detail::uint128" { i64 8482254178684994196, i64 -4508778324627912153 }, %"class.fmt::v12::detail::uint128" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128" { i64 -3173071712060547580, i64 -7557708332239520786 }, %"class.fmt::v12::detail::uint128" { i64 -8578025658503072379, i64 -4835449396872013078 }, %"class.fmt::v12::detail::uint128" { i64 3112525982153323238, i64 -1432625727662628443 }, %"class.fmt::v12::detail::uint128" { i64 4251171748059520976, i64 -7812920107430224633 }, %"class.fmt::v12::detail::uint128" { i64 702278666647013315, i64 -5154464115860392887 }, %"class.fmt::v12::detail::uint128" { i64 5489534351736154548, i64 -1831394126398103205 }, %"class.fmt::v12::detail::uint128" { i64 1125115960621402641, i64 -8062150356639896359 }, %"class.fmt::v12::detail::uint128" { i64 6018080969204141205, i64 -5466001927372482545 }, %"class.fmt::v12::detail::uint128" { i64 2910915193077788602, i64 -2220816390788215277 }, %"class.fmt::v12::detail::uint128" { i64 -486521013540076076, i64 -8305539271883716405 }, %"class.fmt::v12::detail::uint128" { i64 -608151266925095095, i64 -5770238071427257602 }, %"class.fmt::v12::detail::uint128" { i64 -5371875102083756772, i64 -2601111570856684098 }, %"class.fmt::v12::detail::uint128" { i64 3560107088838733873, i64 -8543223759426509417 }, %"class.fmt::v12::detail::uint128" { i64 -161552157378970562, i64 -6067343680855748868 }, %"class.fmt::v12::detail::uint128" { i64 4409745821703674701, i64 -2972493582642298180 }, %"class.fmt::v12::detail::uint128" { i64 -6467280898289979120, i64 -8775337516792518219 }, %"class.fmt::v12::detail::uint128" { i64 1139270913992301908, i64 -6357485877563259869 }, %"class.fmt::v12::detail::uint128" { i64 -3187597375937010519, i64 -3335171328526686933 }, %"class.fmt::v12::detail::uint128" { i64 7231123676894144234, i64 -9002011107970261189 }, %"class.fmt::v12::detail::uint128" { i64 4427218577690292388, i64 -6640827866535438582 }, %"class.fmt::v12::detail::uint128" { i64 -3689348814741910323, i64 -3689348814741910324 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -9223372036854775808 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -6917529027641081856 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -4035225266123964416 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -432345564227567616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -7187745005283311616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -854558029293551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -7451627795949551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -4702848726509551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -1266874889709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -7709325833709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -5024971273709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -1669528073709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -7960984073709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -5339544073709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -2062744073709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -8206744073709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -5646744073709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -2446744073709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -8446744073709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -5946744073709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -2821744073709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -8681119073709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -6239712823709551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -3187955011209551616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -8910000909647051616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -6525815118631426616 }, %"class.fmt::v12::detail::uint128" { i64 0, i64 -3545582879861895366 }, %"class.fmt::v12::detail::uint128" { i64 4611686018427387904, i64 -9133518327554766460 }, %"class.fmt::v12::detail::uint128" { i64 5764607523034234880, i64 -6805211891016070171 }, %"class.fmt::v12::detail::uint128" { i64 -6629298651489370112, i64 -3894828845342699810 }, %"class.fmt::v12::detail::uint128" { i64 5548434740920451072, i64 -256850038250986858 }, %"class.fmt::v12::detail::uint128" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128" { i64 7793479155164643328, i64 -4235889358507547899 }, %"class.fmt::v12::detail::uint128" { i64 -4093209111326359552, i64 -683175679707046970 }, %"class.fmt::v12::detail::uint128" { i64 4359273333062107136, i64 -7344513827457986212 }, %"class.fmt::v12::detail::uint128" { i64 5449091666327633920, i64 -4568956265895094861 }, %"class.fmt::v12::detail::uint128" { i64 2199678564482154496, i64 -1099509313941480672 }, %"class.fmt::v12::detail::uint128" { i64 1374799102801346560, i64 -7604722348854507276 }, %"class.fmt::v12::detail::uint128" { i64 1718498878501683200, i64 -4894216917640746191 }, %"class.fmt::v12::detail::uint128" { i64 6759809616554491904, i64 -1506085128623544835 }, %"class.fmt::v12::detail::uint128" { i64 6530724019560251392, i64 -7858832233030797378 }, %"class.fmt::v12::detail::uint128" { i64 -1059967012404461568, i64 -5211854272861108819 }, %"class.fmt::v12::detail::uint128" { i64 7898413271349198848, i64 -1903131822648998119 }, %"class.fmt::v12::detail::uint128" { i64 -1981020733047832576, i64 -8106986416796705681 }, %"class.fmt::v12::detail::uint128" { i64 -2476275916309790720, i64 -5522047002568494197 }, %"class.fmt::v12::detail::uint128" { i64 -3095344895387238400, i64 -2290872734783229842 }, %"class.fmt::v12::detail::uint128" { i64 4982938468024057856, i64 -8349324486880600507 }, %"class.fmt::v12::detail::uint128" { i64 -7606384970252091392, i64 -5824969590173362730 }, %"class.fmt::v12::detail::uint128" { i64 4327076842467049472, i64 -2669525969289315508 }, %"class.fmt::v12::detail::uint128" { i64 -6518949010312869888, i64 -8585982758446904049 }, %"class.fmt::v12::detail::uint128" { i64 -8148686262891087360, i64 -6120792429631242157 }, %"class.fmt::v12::detail::uint128" { i64 8260886245095692416, i64 -3039304518611664792 }, %"class.fmt::v12::detail::uint128" { i64 5163053903184807760, i64 -8817094351773372351 }, %"class.fmt::v12::detail::uint128" { i64 -7381240676301154012, i64 -6409681921289327535 }, %"class.fmt::v12::detail::uint128" { i64 -3178808521666707, i64 -3400416383184271515 }, %"class.fmt::v12::detail::uint128" { i64 -4613672773753429595, i64 -9042789267131251553 }, %"class.fmt::v12::detail::uint128" { i64 -5767090967191786994, i64 -6691800565486676537 }, %"class.fmt::v12::detail::uint128" { i64 -7208863708989733743, i64 -3753064688430957767 }, %"class.fmt::v12::detail::uint128" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128" { i64 132682750386005393, i64 -6967307053960650171 }, %"class.fmt::v12::detail::uint128" { i64 4777539456409894646, i64 -4097447799023424810 }, %"class.fmt::v12::detail::uint128" { i64 -3251447716342407501, i64 -510123730351893109 }, %"class.fmt::v12::detail::uint128" { i64 7191217214140771120, i64 -7236356359111015049 }, %"class.fmt::v12::detail::uint128" { i64 4377335499248575996, i64 -4433759430461380907 }, %"class.fmt::v12::detail::uint128" { i64 -8363388681221443717, i64 -930513269649338230 }, %"class.fmt::v12::detail::uint128" { i64 -7532960934977096275, i64 -7499099821171918250 }, %"class.fmt::v12::detail::uint128" { i64 4418856886560793368, i64 -4762188758037509908 }, %"class.fmt::v12::detail::uint128" { i64 5523571108200991710, i64 -1341049929119499481 }, %"class.fmt::v12::detail::uint128" { i64 -8076983103442849941, i64 -7755685233340769032 }, %"class.fmt::v12::detail::uint128" { i64 -5484542860876174523, i64 -5082920523248573386 }, %"class.fmt::v12::detail::uint128" { i64 6979379479186945559, i64 -1741964635633328828 }, %"class.fmt::v12::detail::uint128" { i64 -4861259862362934834, i64 -8006256924911912374 }, %"class.fmt::v12::detail::uint128" { i64 7758483227328495170, i64 -5396135137712502563 }, %"class.fmt::v12::detail::uint128" { i64 -4136954021121544750, i64 -2133482903713240300 }, %"class.fmt::v12::detail::uint128" { i64 -279753253987271517, i64 -8250955842461857044 }, %"class.fmt::v12::detail::uint128" { i64 4261994450943298508, i64 -5702008784649933400 }, %"class.fmt::v12::detail::uint128" { i64 5327493063679123135, i64 -2515824962385028846 }, %"class.fmt::v12::detail::uint128" { i64 7941369183226839864, i64 -8489919629131724885 }, %"class.fmt::v12::detail::uint128" { i64 5315025460606161925, i64 -6000713517987268202 }, %"class.fmt::v12::detail::uint128" { i64 -2579590211097073401, i64 -2889205879056697349 }, %"class.fmt::v12::detail::uint128" { i64 7611128154919104932, i64 -8723282702051517699 }, %"class.fmt::v12::detail::uint128" { i64 -4321147861633282547, i64 -6292417359137009220 }, %"class.fmt::v12::detail::uint128" { i64 -789748808614215279, i64 -3253835680493873621 }, %"class.fmt::v12::detail::uint128" { i64 8729779031470891259, i64 -8951176327949752869 }, %"class.fmt::v12::detail::uint128" { i64 6300537770911226169, i64 -6577284391509803182 }, %"class.fmt::v12::detail::uint128" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128" { i64 6075216638131242421, i64 -9173728696990998152 }, %"class.fmt::v12::detail::uint128" { i64 7594020797664053026, i64 -6855474852811359786 }, %"class.fmt::v12::detail::uint128" { i64 269153960225290474, i64 -3957657547586811828 }, %"class.fmt::v12::detail::uint128" { i64 336442450281613092, i64 -335385916056126881 }, %"class.fmt::v12::detail::uint128" { i64 7127805559067090039, i64 -7127145225176161157 }, %"class.fmt::v12::detail::uint128" { i64 4298070930406474645, i64 -4297245513042813542 }, %"class.fmt::v12::detail::uint128" { i64 -3850783373846682502, i64 -759870872876129024 }, %"class.fmt::v12::detail::uint128" { i64 9122475437414293196, i64 -7392448323188662496 }, %"class.fmt::v12::detail::uint128" { i64 -7043649776941685121, i64 -4628874385558440216 }, %"class.fmt::v12::detail::uint128" { i64 -4192876202749718497, i64 -1174406963520662366 }, %"class.fmt::v12::detail::uint128" { i64 -4926390635932268013, i64 -7651533379841495835 }, %"class.fmt::v12::detail::uint128" { i64 3065383741939440792, i64 -4952730706374481889 }, %"class.fmt::v12::detail::uint128" { i64 -779956341003086914, i64 -1579227364540714458 }, %"class.fmt::v12::detail::uint128" { i64 6430056314514152535, i64 -7904546130479028392 }, %"class.fmt::v12::detail::uint128" { i64 8037570393142690669, i64 -5268996644671397586 }, %"class.fmt::v12::detail::uint128" { i64 823590954573587528, i64 -1974559787411859078 }, %"class.fmt::v12::detail::uint128" { i64 5126430365035880109, i64 -8151628894773493780 }, %"class.fmt::v12::detail::uint128" { i64 6408037956294850136, i64 -5577850100039479321 }, %"class.fmt::v12::detail::uint128" { i64 3398361426941174766, i64 -2360626606621961247 }, %"class.fmt::v12::detail::uint128" { i64 -4793553135802847627, i64 -8392920656779807636 }, %"class.fmt::v12::detail::uint128" { i64 -1380255401326171630, i64 -5879464802547371641 }, %"class.fmt::v12::detail::uint128" { i64 -1725319251657714538, i64 -2737644984756826647 }, %"class.fmt::v12::detail::uint128" { i64 3533361486141316318, i64 -8628557143114098510 }, %"class.fmt::v12::detail::uint128" { i64 -4806670179178130410, i64 -6174010410465235234 }, %"class.fmt::v12::detail::uint128" { i64 7826720331309500699, i64 -3105826994654156138 }, %"class.fmt::v12::detail::uint128" { i64 280014188641050033, i64 -8858670899299929442 }, %"class.fmt::v12::detail::uint128" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128" { i64 -1868320839462053276, i64 -3465379738694516970 }, %"class.fmt::v12::detail::uint128" { i64 5749828502977298559, i64 -9083391364325154962 }, %"class.fmt::v12::detail::uint128" { i64 -2036086408133152610, i64 -6742553186979055799 }, %"class.fmt::v12::detail::uint128" { i64 6678264026688335046, i64 -3816505465296431844 }, %"class.fmt::v12::detail::uint128" { i64 8347830033360418807, i64 -158945813193151901 }, %"class.fmt::v12::detail::uint128" { i64 2911550761636567803, i64 -7016870160886801794 }, %"class.fmt::v12::detail::uint128" { i64 -5583933584809066055, i64 -4159401682681114339 }, %"class.fmt::v12::detail::uint128" { i64 2243455055843443239, i64 -587566084924005019 }, %"class.fmt::v12::detail::uint128" { i64 3708002419115845977, i64 -7284757830718584993 }, %"class.fmt::v12::detail::uint128" { i64 23317005467419567, i64 -4494261269970843337 }, %"class.fmt::v12::detail::uint128" { i64 -4582539761593113445, i64 -1006140569036166268 }, %"class.fmt::v12::detail::uint128" { i64 -558244341782001951, i64 -7546366883288685774 }, %"class.fmt::v12::detail::uint128" { i64 -5309491445654890343, i64 -4821272585683469313 }, %"class.fmt::v12::detail::uint128" { i64 -6636864307068612929, i64 -1414904713676948737 }, %"class.fmt::v12::detail::uint128" { i64 -4148040191917883080, i64 -7801844473689174817 }, %"class.fmt::v12::detail::uint128" { i64 -5185050239897353851, i64 -5140619573684080617 }, %"class.fmt::v12::detail::uint128" { i64 -6481312799871692314, i64 -1814088448677712867 }, %"class.fmt::v12::detail::uint128" { i64 -8662506518347195600, i64 -8051334308064652398 }, %"class.fmt::v12::detail::uint128" { i64 3006924907348169212, i64 -5452481866653427593 }, %"class.fmt::v12::detail::uint128" { i64 -853029884242176389, i64 -2203916314889396588 }, %"class.fmt::v12::detail::uint128" { i64 1772699331562333709, i64 -8294976724446954723 }, %"class.fmt::v12::detail::uint128" { i64 6827560182880305040, i64 -5757034887131305500 }, %"class.fmt::v12::detail::uint128" { i64 8534450228600381300, i64 -2584607590486743971 }, %"class.fmt::v12::detail::uint128" { i64 7639874402088932265, i64 -8532908771695296838 }, %"class.fmt::v12::detail::uint128" { i64 326470965756389523, i64 -6054449946191733143 }, %"class.fmt::v12::detail::uint128" { i64 5019774725622874807, i64 -2956376414312278525 }, %"class.fmt::v12::detail::uint128" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128" { i64 -8183976793979022305, i64 -6344894339805432014 }, %"class.fmt::v12::detail::uint128" { i64 3605087062808385831, i64 -3319431906329402113 }, %"class.fmt::v12::detail::uint128" { i64 9170708441896323001, i64 -8992173969096958177 }, %"class.fmt::v12::detail::uint128" { i64 6851699533943015847, i64 -6628531442943809817 }, %"class.fmt::v12::detail::uint128" { i64 3952938399001381904, i64 -3673978285252374367 }, %"class.fmt::v12::detail::uint128" { i64 -4446942528265218166, i64 -9213765455923815836 }, %"class.fmt::v12::detail::uint128" { i64 -946992141904134803, i64 -6905520801477381891 }, %"class.fmt::v12::detail::uint128" { i64 8039631859474607304, i64 -4020214983419339459 }, %"class.fmt::v12::detail::uint128" { i64 -3785518230938904582, i64 -413582710846786420 }, %"class.fmt::v12::detail::uint128" { i64 -60105885123121412, i64 -7176018221920323369 }, %"class.fmt::v12::detail::uint128" { i64 -75132356403901765, i64 -4358336758973016307 }, %"class.fmt::v12::detail::uint128" { i64 9129456591349898602, i64 -836234930288882479 }, %"class.fmt::v12::detail::uint128" { i64 -1211618658047395230, i64 -7440175859071633406 }, %"class.fmt::v12::detail::uint128" { i64 -6126209340986631941, i64 -4688533805412153853 }, %"class.fmt::v12::detail::uint128" { i64 -7657761676233289927, i64 -1248981238337804412 }, %"class.fmt::v12::detail::uint128" { i64 -2480258038432112252, i64 -7698142301602209614 }, %"class.fmt::v12::detail::uint128" { i64 -7712008566467528219, i64 -5010991858575374113 }, %"class.fmt::v12::detail::uint128" { i64 8806733365625141342, i64 -1652053804791829737 }, %"class.fmt::v12::detail::uint128" { i64 -6025006692552756421, i64 -7950062655635975442 }, %"class.fmt::v12::detail::uint128" { i64 6303799689591218186, i64 -5325892301117581398 }, %"class.fmt::v12::detail::uint128" { i64 -1343622424865753076, i64 -2045679357969588844 }, %"class.fmt::v12::detail::uint128" { i64 1466078993672598280, i64 -8196078626372074883 }, %"class.fmt::v12::detail::uint128" { i64 6444284760518135753, i64 -5633412264537705700 }, %"class.fmt::v12::detail::uint128" { i64 8055355950647669692, i64 -2430079312244744221 }, %"class.fmt::v12::detail::uint128" { i64 2728754459941099605, i64 -8436328597794046994 }, %"class.fmt::v12::detail::uint128" { i64 -5812428961928401301, i64 -5933724728815170839 }, %"class.fmt::v12::detail::uint128" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128" { i64 -7999724640327104445, i64 -8670947710510816634 }, %"class.fmt::v12::detail::uint128" { i64 3835402254873283156, i64 -6226998619711132888 }, %"class.fmt::v12::detail::uint128" { i64 4794252818591603945, i64 -3172062256211528206 }, %"class.fmt::v12::detail::uint128" { i64 7608094030047140370, i64 -8900067937773286985 }, %"class.fmt::v12::detail::uint128" { i64 4898431519131537558, i64 -6513398903789220827 }, %"class.fmt::v12::detail::uint128" { i64 -7712018656367741764, i64 -3530062611309138130 }, %"class.fmt::v12::detail::uint128" { i64 2097517367411243254, i64 -9123818159709293187 }, %"class.fmt::v12::detail::uint128" { i64 7233582727691441971, i64 -6793086681209228580 }, %"class.fmt::v12::detail::uint128" { i64 9041978409614302463, i64 -3879672333084147821 }, %"class.fmt::v12::detail::uint128" { i64 6690786993590490175, i64 -237904397927796872 }, %"class.fmt::v12::detail::uint128" { i64 4181741870994056360, i64 -7066219276345954901 }, %"class.fmt::v12::detail::uint128" { i64 615491320315182545, i64 -4221088077005055722 }, %"class.fmt::v12::detail::uint128" { i64 -8454007886460797626, i64 -664674077828931749 }, %"class.fmt::v12::detail::uint128" { i64 3939617107816777292, i64 -7332950326284164199 }, %"class.fmt::v12::detail::uint128" { i64 -8910536670511192098, i64 -4554501889427817345 }, %"class.fmt::v12::detail::uint128" { i64 7308573235570561494, i64 -1081441343357383777 }, %"class.fmt::v12::detail::uint128" { i64 -6961356773836868826, i64 -7593429867239446717 }, %"class.fmt::v12::detail::uint128" { i64 -8701695967296086033, i64 -4880101315621920492 }, %"class.fmt::v12::detail::uint128" { i64 -6265433940692719637, i64 -1488440626100012711 }, %"class.fmt::v12::detail::uint128" { i64 695789805494438131, i64 -7847804418953589800 }, %"class.fmt::v12::detail::uint128" { i64 869737256868047664, i64 -5198069505264599346 }, %"class.fmt::v12::detail::uint128" { i64 -8136200465769716229, i64 -1885900863153361279 }, %"class.fmt::v12::detail::uint128" { i64 -473439272678684739, i64 -8096217067111932656 }, %"class.fmt::v12::detail::uint128" { i64 4019886927579031981, i64 -5508585315462527915 }, %"class.fmt::v12::detail::uint128" { i64 -8810199395808373736, i64 -2274045625900771990 }, %"class.fmt::v12::detail::uint128" { i64 -7812217631593927537, i64 -8338807543829064350 }, %"class.fmt::v12::detail::uint128" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128" { i64 475546501309804959, i64 -2653093245771290262 }, %"class.fmt::v12::detail::uint128" { i64 4908902581746016004, i64 -8575712306248138270 }, %"class.fmt::v12::detail::uint128" { i64 -3087243809672255804, i64 -6107954364382784934 }, %"class.fmt::v12::detail::uint128" { i64 -8470740780517707659, i64 -3023256937051093263 }, %"class.fmt::v12::detail::uint128" { i64 -682526969396179382, i64 -8807064613298015146 }, %"class.fmt::v12::detail::uint128" { i64 -5464844730172612132, i64 -6397144748195131028 }, %"class.fmt::v12::detail::uint128" { i64 -2219369894288377261, i64 -3384744916816525881 }, %"class.fmt::v12::detail::uint128" { i64 -1387106183930235788, i64 -9032994600651410532 }, %"class.fmt::v12::detail::uint128" { i64 2877803288514593169, i64 -6679557232386875260 }, %"class.fmt::v12::detail::uint128" { i64 3597254110643241461, i64 -3737760522056206171 }, %"class.fmt::v12::detail::uint128" { i64 9108253656731439730, i64 -60514634142869810 }, %"class.fmt::v12::detail::uint128" { i64 1080972517029761927, i64 -6955350673980375487 }, %"class.fmt::v12::detail::uint128" { i64 5962901664714590313, i64 -4082502324048081455 }, %"class.fmt::v12::detail::uint128" { i64 -6381430974388925821, i64 -491441886632713915 }, %"class.fmt::v12::detail::uint128" { i64 -8600080377420466542, i64 -7224680206786528053 }, %"class.fmt::v12::detail::uint128" { i64 7696643601933968438, i64 -4419164240055772162 }, %"class.fmt::v12::detail::uint128" { i64 397432465562684740, i64 -912269281642327298 }, %"class.fmt::v12::detail::uint128" { i64 -4363290727450709941, i64 -7487697328667536418 }, %"class.fmt::v12::detail::uint128" { i64 8380944645968776285, i64 -4747935642407032618 }, %"class.fmt::v12::detail::uint128" { i64 1252808770606194548, i64 -1323233534581402868 }, %"class.fmt::v12::detail::uint128" { i64 -8440366555225904215, i64 -7744549986754458649 }, %"class.fmt::v12::detail::uint128" { i64 7896285879677171347, i64 -5069001465015685407 }, %"class.fmt::v12::detail::uint128" { i64 -3964700705685699528, i64 -1724565812842218855 }, %"class.fmt::v12::detail::uint128" { i64 2133748077373825699, i64 -7995382660667468640 }, %"class.fmt::v12::detail::uint128" { i64 2667185096717282124, i64 -5382542307406947896 }, %"class.fmt::v12::detail::uint128" { i64 3333981370896602654, i64 -2116491865831296966 }, %"class.fmt::v12::detail::uint128" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128" { i64 8369280469047205704, i64 -5688734536304665171 }, %"class.fmt::v12::detail::uint128" { i64 -3373457468973156582, i64 -2499232151953443560 }, %"class.fmt::v12::detail::uint128" { i64 -9025939945749304720, i64 -8479549122611984081 }, %"class.fmt::v12::detail::uint128" { i64 7164319141522920716, i64 -5987750384837592197 }, %"class.fmt::v12::detail::uint128" { i64 4343712908476262991, i64 -2873001962619602342 }, %"class.fmt::v12::detail::uint128" { i64 7326506586225052274, i64 -8713155254278333320 }, %"class.fmt::v12::detail::uint128" { i64 9158133232781315342, i64 -6279758049420528746 }, %"class.fmt::v12::detail::uint128" { i64 2224294504121868369, i64 -3238011543348273028 }, %"class.fmt::v12::detail::uint128" { i64 -7833187971778608077, i64 -8941286242233752499 }, %"class.fmt::v12::detail::uint128" { i64 -568112927868484288, i64 -6564921784364802720 }, %"class.fmt::v12::detail::uint128" { i64 3901544858591782543, i64 -3594466212028615495 }, %"class.fmt::v12::detail::uint128" { i64 -4479063491021217766, i64 -9164070410158966541 }, %"class.fmt::v12::detail::uint128" { i64 -5598829363776522208, i64 -6843401994271320272 }, %"class.fmt::v12::detail::uint128" { i64 -2386850686293264856, i64 -3942566474411762436 }, %"class.fmt::v12::detail::uint128" { i64 1628122660560806834, i64 -316522074587315140 }, %"class.fmt::v12::detail::uint128" { i64 -8205795374004271537, i64 -7115355324258153819 }, %"class.fmt::v12::detail::uint128" { i64 -1033872180650563613, i64 -4282508136895304370 }, %"class.fmt::v12::detail::uint128" { i64 -5904026244240592420, i64 -741449152691742558 }, %"class.fmt::v12::detail::uint128" { i64 -5995859411864064214, i64 -7380934748073420955 }, %"class.fmt::v12::detail::uint128" { i64 1728547772024695540, i64 -4614482416664388289 }, %"class.fmt::v12::detail::uint128" { i64 -2451001303396518479, i64 -1156417002403097458 }, %"class.fmt::v12::detail::uint128" { i64 5385653213018257807, i64 -7640289654143017767 }, %"class.fmt::v12::detail::uint128" { i64 -7102991539009341454, i64 -4938676049251384305 }, %"class.fmt::v12::detail::uint128" { i64 -8878739423761676818, i64 -1561659043136842477 }, %"class.fmt::v12::detail::uint128" { i64 3674159897003727797, i64 -7893565929601608404 }, %"class.fmt::v12::detail::uint128" { i64 4592699871254659746, i64 -5255271393574622601 }, %"class.fmt::v12::detail::uint128" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128" { i64 3011586022114279439, i64 -8140906042354138323 }, %"class.fmt::v12::detail::uint128" { i64 8376168546070237203, i64 -5564446534515285000 }, %"class.fmt::v12::detail::uint128" { i64 -7976533391121755113, i64 -2343872149716718346 }, %"class.fmt::v12::detail::uint128" { i64 1932195658189984911, i64 -8382449121214030822 }, %"class.fmt::v12::detail::uint128" { i64 -6808127464117294670, i64 -5866375383090150624 }, %"class.fmt::v12::detail::uint128" { i64 -3898473311719230433, i64 -2721283210435300376 }, %"class.fmt::v12::detail::uint128" { i64 9092669226243950739, i64 -8618331034163144591 }, %"class.fmt::v12::detail::uint128" { i64 -2469221522477225288, i64 -6161227774276542835 }, %"class.fmt::v12::detail::uint128" { i64 6136845133758244198, i64 -3089848699418290639 }, %"class.fmt::v12::detail::uint128" { i64 -3082000819042179232, i64 -8848684464777513506 }, %"class.fmt::v12::detail::uint128" { i64 -8464187042230111944, i64 -6449169562544503978 }, %"class.fmt::v12::detail::uint128" { i64 3254824252494523782, i64 -3449775934753242068 }, %"class.fmt::v12::detail::uint128" { i64 -7189106879045698444, i64 -9073638986861858149 }, %"class.fmt::v12::detail::uint128" { i64 -8986383598807123056, i64 -6730362715149934782 }, %"class.fmt::v12::detail::uint128" { i64 2602078556773259892, i64 -3801267375510030573 }, %"class.fmt::v12::detail::uint128" { i64 -1359087822460813039, i64 -139898200960150313 }, %"class.fmt::v12::detail::uint128" { i64 -849429889038008149, i64 -7004965403241175802 }, %"class.fmt::v12::detail::uint128" { i64 -5673473379724898090, i64 -4144520735624081848 }, %"class.fmt::v12::detail::uint128" { i64 -2480155706228734709, i64 -568964901102714406 }, %"class.fmt::v12::detail::uint128" { i64 -3855940325606653145, i64 -7273132090830278360 }, %"class.fmt::v12::detail::uint128" { i64 -208239388580928527, i64 -4479729095110460046 }, %"class.fmt::v12::detail::uint128" { i64 -4871985254153548563, i64 -987975350460687153 }, %"class.fmt::v12::detail::uint128" { i64 -3044990783845967852, i64 -7535013621679011327 }, %"class.fmt::v12::detail::uint128" { i64 5417133557047315993, i64 -4807081008671376254 }, %"class.fmt::v12::detail::uint128" { i64 -2451955090545630817, i64 -1397165242411832414 }, %"class.fmt::v12::detail::uint128" { i64 -3838314940804713212, i64 -7790757304148477115 }, %"class.fmt::v12::detail::uint128" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128" { i64 920161932633717461, i64 -1796764746270372707 }, %"class.fmt::v12::detail::uint128" { i64 2880944217109767366, i64 -8040506994060064798 }, %"class.fmt::v12::detail::uint128" { i64 -5622191765467566601, i64 -5438947724147693094 }, %"class.fmt::v12::detail::uint128" { i64 6807318348447705460, i64 -2186998636757228463 }, %"class.fmt::v12::detail::uint128" { i64 -2662955059861265943, i64 -8284403175614349646 }, %"class.fmt::v12::detail::uint128" { i64 -7940379843253970333, i64 -5743817951090549153 }, %"class.fmt::v12::detail::uint128" { i64 8521269269642088700, i64 -2568086420435798537 }, %"class.fmt::v12::detail::uint128" { i64 -6203421752542164322, i64 -8522583040413455942 }, %"class.fmt::v12::detail::uint128" { i64 6080780864604458309, i64 -6041542782089432023 }, %"class.fmt::v12::detail::uint128" { i64 -6234081974526590826, i64 -2940242459184402125 }, %"class.fmt::v12::detail::uint128" { i64 5327070802775656542, i64 -8755180564631333184 }, %"class.fmt::v12::detail::uint128" { i64 6658838503469570677, i64 -6332289687361778576 }, %"class.fmt::v12::detail::uint128" { i64 8323548129336963346, i64 -3303676090774835316 }, %"class.fmt::v12::detail::uint128" { i64 -4021154456019173716, i64 -8982326584375353929 }, %"class.fmt::v12::detail::uint128" { i64 -5026443070023967146, i64 -6616222212041804507 }, %"class.fmt::v12::detail::uint128" { i64 2940318199324816876, i64 -3658591746624867729 }, %"class.fmt::v12::detail::uint128" { i64 8755227902219092404, i64 -9204148869281624187 }, %"class.fmt::v12::detail::uint128" { i64 -2891023177508298208, i64 -6893500068174642330 }, %"class.fmt::v12::detail::uint128" { i64 -8225464990312760664, i64 -4005189066790915008 }, %"class.fmt::v12::detail::uint128" { i64 -5670145219463562926, i64 -394800315061255856 }, %"class.fmt::v12::detail::uint128" { i64 7985374283903742932, i64 -7164279224554366766 }, %"class.fmt::v12::detail::uint128" { i64 758345818024902857, i64 -4343663012265570553 }, %"class.fmt::v12::detail::uint128" { i64 -3663753745896259333, i64 -817892746904575288 }, %"class.fmt::v12::detail::uint128" { i64 -9207375118826243939, i64 -7428711994456441411 }, %"class.fmt::v12::detail::uint128" { i64 -2285846861678029116, i64 -4674203974643163860 }, %"class.fmt::v12::detail::uint128" { i64 1754377441329851509, i64 -1231068949876566920 }, %"class.fmt::v12::detail::uint128" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128" { i64 -3241078642388441413, i64 -4996997883215032323 }, %"class.fmt::v12::detail::uint128" { i64 5172023733869224042, i64 -1634561335591402499 }, %"class.fmt::v12::detail::uint128" { i64 5538357842881958978, i64 -7939129862385708418 }, %"class.fmt::v12::detail::uint128" { i64 -2300424733252327085, i64 -5312226309554747619 }, %"class.fmt::v12::detail::uint128" { i64 6347841120289366951, i64 -2028596868516046619 }, %"class.fmt::v12::detail::uint128" { i64 6273243709394548297, i64 -8185402070463610993 }, %"class.fmt::v12::detail::uint128" { i64 3229868618315797467, i64 -5620066569652125837 }, %"class.fmt::v12::detail::uint128" { i64 -574350245532641070, i64 -2413397193637769393 }, %"class.fmt::v12::detail::uint128" { i64 -358968903457900669, i64 -8425902273664687727 }, %"class.fmt::v12::detail::uint128" { i64 8774660907532399972, i64 -5920691823653471754 }, %"class.fmt::v12::detail::uint128" { i64 1744954097560724157, i64 -2789178761139451788 }, %"class.fmt::v12::detail::uint128" { i64 -8132775725879323210, i64 -8660765753353239224 }, %"class.fmt::v12::detail::uint128" { i64 -5554283638921766109, i64 -6214271173264161126 }, %"class.fmt::v12::detail::uint128" { i64 6892203506629956076, i64 -3156152948152813503 }, %"class.fmt::v12::detail::uint128" { i64 -2609901835997359308, i64 -8890124620236590296 }, %"class.fmt::v12::detail::uint128" { i64 1349308723430688769, i64 -6500969756868349965 }, %"class.fmt::v12::detail::uint128" { i64 -2925050114139026943, i64 -3514526177658049553 }, %"class.fmt::v12::detail::uint128" { i64 -1828156321336891839, i64 -9114107888677362827 }, %"class.fmt::v12::detail::uint128" { i64 6938176635183661009, i64 -6780948842419315629 }, %"class.fmt::v12::detail::uint128" { i64 4061034775552188357, i64 -3864500034596756632 }, %"class.fmt::v12::detail::uint128" { i64 5076293469440235446, i64 -218939024818557886 }, %"class.fmt::v12::detail::uint128" { i64 7784369436827535058, i64 -7054365918152680535 }, %"class.fmt::v12::detail::uint128" { i64 -4104596259247744890, i64 -4206271379263462765 }, %"class.fmt::v12::detail::uint128" { i64 -5130745324059681112, i64 -646153205651940552 }, %"class.fmt::v12::detail::uint128" { i64 8322499218531169065, i64 -7321374781173544701 }, %"class.fmt::v12::detail::uint128" { i64 5791438004736573427, i64 -4540032458039542972 }, %"class.fmt::v12::detail::uint128" { i64 7239297505920716784, i64 -1063354554122040811 }, %"class.fmt::v12::detail::uint128" { i64 6830403950414141942, i64 -7582125623967357363 }, %"class.fmt::v12::detail::uint128" { i64 -5297053117264486285, i64 -4865971011531808800 }, %"class.fmt::v12::detail::uint128" { i64 -2009630378153219952, i64 -1470777745987373096 }, %"class.fmt::v12::detail::uint128" { i64 -8173548013986844326, i64 -7836765118883190041 }, %"class.fmt::v12::detail::uint128" { i64 8229809056225996209, i64 -5184270380176599647 }, %"class.fmt::v12::detail::uint128" { i64 -3547796734999668451, i64 -1868651956793361655 }, %"class.fmt::v12::detail::uint128" { i64 2394313059052595122, i64 -8085436500636932890 }, %"class.fmt::v12::detail::uint128" { i64 -6230480713039031906, i64 -5495109607368778209 }, %"class.fmt::v12::detail::uint128" { i64 -7788100891298789882, i64 -2257200990783584857 }, %"class.fmt::v12::detail::uint128" { i64 -4867563057061743676, i64 -8328279646880822392 }, %"class.fmt::v12::detail::uint128" { i64 -1472767802899791691, i64 -5798663540173640086 }, %"class.fmt::v12::detail::uint128" { i64 -6452645772052127518, i64 -2636643406789662203 }], comdat, align 16
@.str.56 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@_ZTIN3fmt3v1212format_errorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr dso_local constant [25 x i8] c"N3fmt3v1212format_errorE\00", comdat, align 1
@_ZTVN3fmt3v1212format_errorE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.58 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.64 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.65 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.66 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.73 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt3__111conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS5_IXlecl8num_bitsIS6_EELi64EEmoE4typeEE4typeEEES6_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.75 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.76 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@_ZZN4tlog6Logger6globalEvE6logger = linkonce_odr dso_local global %"class.std::__1::unique_ptr.253" zeroinitializer, comdat, align 8
@_ZGVZN4tlog6Logger6globalEvE6logger = linkonce_odr dso_local global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@_ZZN4tlog13ConsoleOutput6globalEvE13consoleOutput = linkonce_odr dso_local global %"class.std::__1::shared_ptr.267" zeroinitializer, comdat, align 8
@_ZGVZN4tlog13ConsoleOutput6globalEvE13consoleOutput = linkonce_odr dso_local global i64 0, comdat, align 8
@_ZNSt3__14cerrE = external global %"class.std::__1::basic_ostream", align 8
@_ZTVN4tlog13ConsoleOutputE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4tlog13ConsoleOutputE, ptr @_ZN4tlog13ConsoleOutput9writeLineENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEENS_9ESeverityES5_, ptr @_ZN4tlog13ConsoleOutput13writeProgressENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEmmNS1_6chrono8durationIxNS1_5ratioILl1ELl1000000EEEEE, ptr @_ZN4tlog13ConsoleOutputD2Ev, ptr @_ZN4tlog13ConsoleOutputD0Ev] }, comdat, align 8
@_ZTIN4tlog13ConsoleOutputE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4tlog13ConsoleOutputE, ptr @_ZTIN4tlog7IOutputE }, comdat, align 8
@_ZTSN4tlog13ConsoleOutputE = linkonce_odr dso_local constant [23 x i8] c"N4tlog13ConsoleOutputE\00", comdat, align 1
@_ZTIN4tlog7IOutputE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4tlog7IOutputE }, comdat, align 8
@_ZTSN4tlog7IOutputE = linkonce_odr dso_local constant [16 x i8] c"N4tlog7IOutputE\00", comdat, align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"NO_COLOR\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@_ZN4tlog4ansiL5RESETE = internal constant { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, [19 x i8] }> } } } } } { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, [19 x i8] }> } } } } { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, [19 x i8] }> } } } { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, [19 x i8] }> } } { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, [19 x i8] }> } { %struct.anon { i8 8 }, [0 x i8] zeroinitializer, <{ i8, i8, i8, i8, [19 x i8] }> <{ i8 27, i8 91, i8 48, i8 109, [19 x i8] zeroinitializer }> } } } } }, align 8
@.str.79 = private unnamed_addr constant [10 x i8] c"%H:%M:%S \00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [16 x ptr] }, align 8
@.str.83 = private unnamed_addr constant [29 x i8] c"Could not render local time.\00", align 1
@_ZN4tlog4ansiL5GREENE = internal constant { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } } } { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } } { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } { %struct.anon { i8 14 }, [0 x i8] zeroinitializer, <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> <{ i8 27, i8 91, i8 48, i8 59, i8 51, i8 50, i8 109, [16 x i8] zeroinitializer }> } } } } }, align 8
@_ZN4tlog4ansiL4CYANE = internal constant { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } } } { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } } { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } { %struct.anon { i8 14 }, [0 x i8] zeroinitializer, <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> <{ i8 27, i8 91, i8 48, i8 59, i8 51, i8 54, i8 109, [16 x i8] zeroinitializer }> } } } } }, align 8
@_ZN4tlog4ansiL11BOLD_YELLOWE = internal constant { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } } } { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } } { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } { %struct.anon { i8 14 }, [0 x i8] zeroinitializer, <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> <{ i8 27, i8 91, i8 49, i8 59, i8 51, i8 51, i8 109, [16 x i8] zeroinitializer }> } } } } }, align 8
@_ZN4tlog4ansiL7MAGENTAE = internal constant { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } } } { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } } { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } { %struct.anon { i8 14 }, [0 x i8] zeroinitializer, <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> <{ i8 27, i8 91, i8 48, i8 59, i8 51, i8 53, i8 109, [16 x i8] zeroinitializer }> } } } } }, align 8
@_ZN4tlog4ansiL8BOLD_REDE = internal constant { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } } } { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } } { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } { %struct.anon { i8 14 }, [0 x i8] zeroinitializer, <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> <{ i8 27, i8 91, i8 49, i8 59, i8 51, i8 49, i8 109, [16 x i8] zeroinitializer }> } } } } }, align 8
@_ZN4tlog4ansiL4BLUEE = internal constant { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } } } { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } } { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } { %struct.anon { i8 14 }, [0 x i8] zeroinitializer, <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> <{ i8 27, i8 91, i8 48, i8 59, i8 51, i8 52, i8 109, [16 x i8] zeroinitializer }> } } } } }, align 8
@.str.90 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@_ZN4tlog4ansiL10BOLD_WHITEE = internal constant { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } } } { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } } { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } } { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } } { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> } { %struct.anon { i8 14 }, [0 x i8] zeroinitializer, <{ i8, i8, i8, i8, i8, i8, i8, [16 x i8] }> <{ i8 27, i8 91, i8 49, i8 59, i8 51, i8 55, i8 109, [16 x i8] zeroinitializer }> } } } } }, align 8
@_ZN4tlog4ansiL20ERASE_TO_END_OF_LINEE = internal constant { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, [20 x i8] }> } } } } } { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, [20 x i8] }> } } } } { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, [20 x i8] }> } } } { { { %struct.anon, [0 x i8], <{ i8, i8, i8, [20 x i8] }> } } { { %struct.anon, [0 x i8], <{ i8, i8, i8, [20 x i8] }> } { %struct.anon { i8 6 }, [0 x i8] zeroinitializer, <{ i8, i8, i8, [20 x i8] }> <{ i8 27, i8 91, i8 75, [20 x i8] zeroinitializer }> } } } } }, align 8
@_ZN4tlog4ansiL10LINE_BEGINE = internal constant { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, [19 x i8] }> } } } } } { { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, [19 x i8] }> } } } } { { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, [19 x i8] }> } } } { { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, [19 x i8] }> } } { { %struct.anon, [0 x i8], <{ i8, i8, i8, i8, [19 x i8] }> } { %struct.anon { i8 8 }, [0 x i8] zeroinitializer, <{ i8, i8, i8, i8, [19 x i8] }> <{ i8 27, i8 91, i8 48, i8 71, [19 x i8] zeroinitializer }> } } } } }, align 8
@.str.99 = private unnamed_addr constant [34 x i8] c"Progress: total must not be zero.\00", align 1
@.str.100 = private unnamed_addr constant [48 x i8] c"Progress: current must not be larger than total\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c") \00", align 1
@_ZTVSt16invalid_argument = external constant { [5 x ptr] }, align 8
@_ZTVNSt3__120__shared_ptr_pointerIPN4tlog13ConsoleOutputENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEEE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_pointerIPN4tlog13ConsoleOutputENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEEE, ptr @_ZNSt3__119__shared_weak_countD2Ev, ptr @_ZNSt3__120__shared_ptr_pointerIPN4tlog13ConsoleOutputENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEED0Ev, ptr @_ZNSt3__120__shared_ptr_pointerIPN4tlog13ConsoleOutputENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEE16__on_zero_sharedEv, ptr @_ZNKSt3__120__shared_ptr_pointerIPN4tlog13ConsoleOutputENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEE13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_pointerIPN4tlog13ConsoleOutputENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEE21__on_zero_shared_weakEv] }, comdat, align 8
@_ZTINSt3__120__shared_ptr_pointerIPN4tlog13ConsoleOutputENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__shared_ptr_pointerIPN4tlog13ConsoleOutputENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEEE, ptr @_ZTINSt3__119__shared_weak_countE }, comdat, align 8
@_ZTSNSt3__120__shared_ptr_pointerIPN4tlog13ConsoleOutputENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEEE = linkonce_odr dso_local constant [133 x i8] c"NSt3__120__shared_ptr_pointerIPN4tlog13ConsoleOutputENS_10shared_ptrIS2_E27__shared_ptr_default_deleteIS2_S2_EENS_9allocatorIS2_EEEE\00", comdat, align 1
@_ZTSNSt3__110shared_ptrIN4tlog13ConsoleOutputEE27__shared_ptr_default_deleteIS2_S2_EE = linkonce_odr dso_local constant [82 x i8] c"NSt3__110shared_ptrIN4tlog13ConsoleOutputEE27__shared_ptr_default_deleteIS2_S2_EE\00", comdat, align 1
@_ZTVN3tev14ImageLoadErrorE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3tev14ImageLoadErrorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3tev14ImageLoadErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.108 = private unnamed_addr constant [22 x i8] c"Extracting JP2 boxes:\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"  type='{}' length={}\00", align 1
@.str.112 = private unnamed_addr constant [50 x i8] c"Invalid JP2 UUID box: insufficient data for UUID.\00", align 1
@_ZN3tevL9exifUuidsE = internal constant %"struct.std::__1::array.316" { [2 x [16 x i8]] [[16 x i8] c"JpgTiffExif->JP2", [16 x i8] c"\057\CD\AB\9D\0CD1\A7*\FAV\1F*\11>"] }, align 1
@.str.113 = private unnamed_addr constant [34 x i8] c"Failed to create JPEG 2000 codec.\00", align 1
@.str.114 = private unnamed_addr constant [35 x i8] c"Failed to create JPEG 2000 stream.\00", align 1
@.str.115 = private unnamed_addr constant [33 x i8] c"Failed to read JPEG 2000 header.\00", align 1
@.str.116 = private unnamed_addr constant [34 x i8] c"Failed to decode JPEG 2000 image.\00", align 1
@.str.117 = private unnamed_addr constant [44 x i8] c"Failed to finalize JPEG 2000 decompression.\00", align 1
@.str.118 = private unnamed_addr constant [38 x i8] c"Setting color space from colr box: {}\00", align 1
@.str.119 = private unnamed_addr constant [44 x i8] c"Setting ICC profile from colr box: {} bytes\00", align 1
@.str.120 = private unnamed_addr constant [65 x i8] c"JPEG 2000 info: region=[{}, {}] numcomps={} colorSpace={} icc={}\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.123 = private unnamed_addr constant [102 x i8] c"  Component {}: w={} h={} dx={} dy={} x0={} y0={} prec={} sgnd={} resno_decoded={} factor={} alpha={}\00", align 1
@.str.124 = private unnamed_addr constant [90 x i8] c"Alpha channel is not the last component (index {}). This is unusual and may cause issues.\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"extra.{}\00", align 1
@.str.126 = private unnamed_addr constant [201 x i8] c"auto tev::Jpeg2000ImageLoader::load(span<const uint8_t>, const fs::path &, string_view, const ImageLoaderSettings &, int, bool, size_t *, EPixelType *)::(lambda)::operator()(span<const uint8_t>) const\00", align 1
@.str.128 = private unnamed_addr constant [66 x i8] c"{}({}:{}) `{}`: Not enough channels allocated for extra channels.\00", align 1
@.str.129 = private unnamed_addr constant [38 x i8] c"Failed to apply ICC color profile: {}\00", align 1
@_ZTVNSt3__113__assoc_stateIN3tev9ImageDataEEE = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTINSt3__113__assoc_stateIN3tev9ImageDataEEE, ptr @_ZNSt3__117__assoc_sub_stateD2Ev, ptr @_ZNSt3__113__assoc_stateIN3tev9ImageDataEED0Ev, ptr @_ZNSt3__113__assoc_stateIN3tev9ImageDataEE16__on_zero_sharedEv, ptr @_ZNSt3__117__assoc_sub_state9__executeEv] }, comdat, align 8
@_ZTINSt3__113__assoc_stateIN3tev9ImageDataEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__113__assoc_stateIN3tev9ImageDataEEE, ptr @_ZTINSt3__117__assoc_sub_stateE }, comdat, align 8
@_ZTSNSt3__113__assoc_stateIN3tev9ImageDataEEE = linkonce_odr hidden constant [42 x i8] c"NSt3__113__assoc_stateIN3tev9ImageDataEEE\00", comdat, align 1
@.str.130 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"srgb\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"sycc\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"eycc\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"cmyk\00", align 1
@.str.139 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.140 = private unnamed_addr constant [37 x i8] c"Latch should never count below zero.\00", align 1
@.str.141 = private unnamed_addr constant [45 x i8] c"Cannot co_await/get() a task multiple times.\00", align 1
@.str.142 = private unnamed_addr constant [40 x i8] c"~Task<T> was invoked before completion.\00", align 1
@.str.143 = private unnamed_addr constant [63 x i8] c"Negative value {} encountered when computing positive product.\00", align 1
@.str.144 = private unnamed_addr constant [50 x i8] c"The required allocation exceeds the maximum size.\00", align 1
@.str.145 = private unnamed_addr constant [52 x i8] c"Channel pixel format does not match requested type.\00", align 1
@.str.147 = private unnamed_addr constant [55 x i8] c"MultiChannelView(span) must have at least one channel.\00", align 1
@.str.148 = private unnamed_addr constant [60 x i8] c"All channels in a MultiChannelView must have the same size.\00", align 1
@_ZZN3tev10ThreadPool6globalEvE4pool = linkonce_odr dso_local global %"class.tev::ThreadPool" zeroinitializer, comdat, align 8
@_ZGVZN3tev10ThreadPool6globalEvE4pool = linkonce_odr dso_local global i64 0, comdat, align 8
@.str.149 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/tev/tev/include/tev/ThreadPool.h\00", align 1
@.str.150 = private unnamed_addr constant [151 x i8] c"Task<void> tev::ThreadPool::parallelFor(Int, Int, size_t, F, int) [Int = int, F = (lambda at /opt-bench/work/tev/tev/include/tev/ThreadPool.h:198:13)]\00", align 1
@.str.152 = private unnamed_addr constant [59 x i8] c"{}({}:{}) `{}`: Should not produce tasks with empty range.\00", align 1
@_ZTVNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE, ptr @_ZNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEED2Ev, ptr @_ZNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEED0Ev, ptr @_ZNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEE16__on_zero_sharedEv, ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEE21__on_zero_shared_weakEv] }, comdat, align 8
@_ZTINSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE, ptr @_ZTINSt3__119__shared_weak_countE }, comdat, align 8
@_ZTSNSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE = linkonce_odr dso_local constant [77 x i8] c"NSt3__120__shared_ptr_emplaceINS_13packaged_taskIFvvEEENS_9allocatorIS3_EEEE\00", comdat, align 1
@_ZTVNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE = linkonce_odr dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTINSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE, ptr @_ZNSt3__120__packaged_task_baseIFvvEED2Ev, ptr @_ZNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEED0Ev, ptr @_ZNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEE9__move_toEPNS_20__packaged_task_baseIS5_EE, ptr @_ZNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEE7destroyEv, ptr @_ZNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEE18destroy_deallocateEv, ptr @_ZNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEclEv] }, comdat, align 8
@_ZTINSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE, ptr @_ZTINSt3__120__packaged_task_baseIFvvEEE }, comdat, align 8
@_ZTSNSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE = linkonce_odr dso_local constant [81 x i8] c"NSt3__120__packaged_task_funcINS_16coroutine_handleIvEENS_9allocatorIS2_EEFvvEEE\00", comdat, align 1
@_ZTINSt3__120__packaged_task_baseIFvvEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSNSt3__120__packaged_task_baseIFvvEEE }, comdat, align 8
@_ZTSNSt3__120__packaged_task_baseIFvvEEE = linkonce_odr dso_local constant [37 x i8] c"NSt3__120__packaged_task_baseIFvvEEE\00", comdat, align 1
@_ZTVNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE = linkonce_odr dso_local constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTINSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE, ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED2Ev, ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEED0Ev, ptr @_ZNKSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEE7__cloneEv, ptr @_ZNKSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEE7__cloneEPNS0_6__baseISD_EE, ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEE7destroyEv, ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEE18destroy_deallocateEv, ptr @_ZNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEclEv, ptr @_ZNKSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEE6targetERKSt9type_info, ptr @_ZNKSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEE11target_typeEv] }, comdat, align 8
@_ZTINSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE, ptr @_ZTINSt3__110__function6__baseIFvvEEE }, comdat, align 8
@_ZTSNSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE = linkonce_odr dso_local constant [142 x i8] c"NSt3__110__function6__funcIZN3tev10ThreadPool11enqueueTaskITkNS_9invocableERNS_16coroutine_handleIvEEEEDaOT_ibEUlvE_NS_9allocatorISA_EEFvvEEE\00", comdat, align 1
@_ZTINSt3__110__function6__baseIFvvEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSNSt3__110__function6__baseIFvvEEE }, comdat, align 8
@_ZTSNSt3__110__function6__baseIFvvEEE = linkonce_odr dso_local constant [34 x i8] c"NSt3__110__function6__baseIFvvEEE\00", comdat, align 1
@_ZTIZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibEUlvE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibEUlvE_ }, comdat, align 8
@_ZTSZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibEUlvE_ = linkonce_odr dso_local constant [95 x i8] c"ZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibEUlvE_\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTIN3tev17CompoundExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3tev17CompoundExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN3tev17CompoundExceptionE = linkonce_odr dso_local constant [26 x i8] c"N3tev17CompoundExceptionE\00", comdat, align 1
@_ZTVN3tev17CompoundExceptionE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3tev17CompoundExceptionE, ptr @_ZN3tev17CompoundExceptionD2Ev, ptr @_ZN3tev17CompoundExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.153 = private unnamed_addr constant [262 x i8] c"auto tev::Jpeg2000ImageLoader::load(span<const uint8_t>, const fs::path &, string_view, const ImageLoaderSettings &, int, bool, size_t *, EPixelType *)::(lambda)::operator()(span<const uint8_t>)::(lambda)::operator()(const MultiChannelView<float> &, bool) const\00", align 1
@.str.155 = private unnamed_addr constant [50 x i8] c"{}({}:{}) `{}`: Invalid number of color channels.\00", align 1
@.str.157 = private unnamed_addr constant [71 x i8] c"{}({}:{}) `{}`: Output buffer must have enough channels for RGBA data.\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"JPEG 2000\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.3, ptr @_ZN3tev8ituth2733hlg5gammaE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3tev8ituth2733hlg5gammaE], section "llvm.metadata"
@"switch.table._ZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_" = private unnamed_addr constant [7 x i8] c"\07\0B\04\04\04\04\04", align 8
@"switch.table._ZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_.14" = private unnamed_addr constant [7 x ptr] [ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], align 8
@switch.table._ZN4tlog13ConsoleOutput9writeLineENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEENS_9ESeverityES5_ = private unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZN4tlog4ansiL4CYANE, i64 1), ptr getelementptr inbounds nuw (i8, ptr @_ZN4tlog4ansiL7MAGENTAE, i64 1), ptr getelementptr inbounds nuw (i8, ptr @_ZN4tlog4ansiL11BOLD_YELLOWE, i64 1), ptr getelementptr inbounds nuw (i8, ptr @_ZN4tlog4ansiL8BOLD_REDE, i64 1), ptr getelementptr inbounds nuw (i8, ptr @_ZN4tlog4ansiL5GREENE, i64 1), ptr getelementptr inbounds nuw (i8, ptr @_ZN4tlog4ansiL4BLUEE, i64 1)], align 8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.3() #1 section ".text.startup" comdat($_ZN3tev8ituth2733hlg5gammaE) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN3tev8ituth2733hlg5gammaE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN3tev8ituth2733hlg5gammaE) #37
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 1.200000e+00, ptr @_ZN3tev8ituth2733hlg5gammaE, align 4, !tbaa !74
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN3tev8ituth2733hlg5gammaE) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN3tev8ituth2733hlg5gammaE) #37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967301) i64 @_ZN3tev15detectJ2kFormatENSt3__14spanIKhLm18446744073709551615EEE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i64 %1, 4
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !75
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !75
  %i.f = icmp eq i8 %i.e, 79
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = icmp ult i64 %1, 12
  br i1 %i.g, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i64, ptr %0, align 1
  %i.i = xor i64 %i.h, 2314938624866516992
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 1
  %i.l = zext i32 %i.k to i64
  %i.m = xor i64 %i.l, 176622093
  %i.n = or i64 %i.i, %i.m
  %i.o = icmp ne i64 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.r = icmp ugt i64 %1, 23
  br i1 %i.r, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 1
  %i.u = icmp ne i32 %i.t, 1887007846
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.y = load i32, ptr %i.x, align 1
  %i.z = icmp ne i32 %i.y, 846228077
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %i.x, align 1
  %i.ad = icmp ne i32 %i.ac, 544043114
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = select i1 %i.af, i64 4294967300, i64 4294967298
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.e, %bb.f, %bb.g, %bb.h, %bb.d, %bb.c, %bb.a
  %.sroa.7.1 = phi i64 [ 4294967298, %bb.f ], [ 0, %bb.a ], [ 4294967296, %bb.c ], [ %i.ag, %bb.i ], [ 0, %bb.d ], [ 4294967300, %bb.h ], [ 0, %bb.e ], [ 4294967298, %bb.g ]
  ret i64 %.sroa.7.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeE(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr %2, i64 %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree noundef readnone byval(%"class.std::__1::basic_string_view") align 8 captures(none) %5, ptr nofree nonnull readnone align 4 captures(none) %6, i32 noundef %7, i1 noundef zeroext %8, ptr nofree readnone captures(none) %9, ptr nofree readnone captures(none) %10) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %11 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__1::vector", align 8 ; 10 uses
  %13 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__1::optional.10", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"struct.tev::AttributeNode", align 8 ; 20 uses
  %16 = alloca %"class.std::__1::basic_string_view", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"class.tev::Xmp", align 8         ; 14 uses
  %18 = alloca %"class.std::__1::basic_string_view", align 8 ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %19 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %i.g = zext i1 %8 to i8
  %i.h = tail call noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #38 ; 89 uses
  store ptr @_ZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeE.resume, ptr %i.h, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_ZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeE.destroy, ptr %destroy.addr, align 8
  %.reload.addr917 = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 24 uses
  %.reload.addr919 = getelementptr inbounds nuw i8, ptr %i.h, i64 592 ; 9 uses
  %.reload.addr920 = getelementptr inbounds nuw i8, ptr %i.h, i64 696 ; 10 uses
  %.reload.addr921 = getelementptr inbounds nuw i8, ptr %i.h, i64 800 ; 8 uses
  %.reload.addr925 = getelementptr inbounds nuw i8, ptr %i.h, i64 856 ; 5 uses
  %.reload.addr926 = getelementptr inbounds nuw i8, ptr %i.h, i64 888 ; 3 uses
  %.reload.addr928 = getelementptr inbounds nuw i8, ptr %i.h, i64 920 ; 11 uses
  %.reload.addr929 = getelementptr inbounds nuw i8, ptr %i.h, i64 944 ; 12 uses
  %.reload.addr930 = getelementptr inbounds nuw i8, ptr %i.h, i64 576 ; 2 uses
  %.reload.addr933 = getelementptr inbounds nuw i8, ptr %i.h, i64 1000 ; 4 uses
  %.reload.addr934 = getelementptr inbounds nuw i8, ptr %i.h, i64 1004 ; 3 uses
  %.reload.addr935 = getelementptr inbounds nuw i8, ptr %i.h, i64 1013 ; 3 uses
  %.reload.addr936 = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 7 uses
  store i32 %7, ptr %.reload.addr934, align 4, !tbaa !76
  store i8 %i.g, ptr %.reload.addr935, align 1, !tbaa !78
  %i.i = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #39
          to label %.noexc unwind label %.body.from. ; 3 uses

.noexc:                                           ; preds = %.from.
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(108) %i.j, i8 0, i64 108, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEEE, i64 16), ptr %i.i, align 8, !tbaa !80
  store ptr %i.i, ptr %.reload.addr936, align 8, !tbaa !84
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.k = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #39
          to label %bb.a unwind label %.body.from.892 ; 5 uses

.body.from.892:                                   ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr936) #37
  br label %.body

.body.from.:                                      ; preds = %.from.
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !noalias !578
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.k, align 8, !tbaa !80, !noalias !578
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !noalias !578
  store i32 2, ptr %i.q, align 8, !tbaa !86, !noalias !578
  store ptr %i.p, ptr %i.n, align 8, !tbaa !90, !alias.scope !579
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %i.k, ptr %i.r, align 8, !tbaa !91, !alias.scope !579
  tail call void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E17get_return_objectEv(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr936) #37
  %i.s = icmp ult i64 %3, 4
  br i1 %i.s, label %_ZN3tev15detectJ2kFormatENSt3__14spanIKhLm18446744073709551615EEE.exit.thread270, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i8, ptr %2, align 1, !tbaa !75
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !75
  %i.x = icmp eq i8 %i.w, 79
  br i1 %i.x, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = icmp ult i64 %3, 12
end_hunk_0
begin_hunk_1_@__gxx_personality_v0
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E17get_return_objectEv(ptr dead_on_unwind noalias writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %i.b = load ptr, ptr %1, align 8, !tbaa !84, !noalias !603 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 3) #40
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  invoke void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.noexc1 unwind label %bb.i

.noexc1:                                          ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !224, !noalias !603 ; 2 uses
  %i.g = and i32 %i.f, 2
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.noexc1
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 1) #40
          to label %bb.e unwind label %bb.f, !noalias !603

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #37, !noalias !603
  br label %.body

bb.g:                                             ; preds = %.noexc1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !603 ; 0 uses
  %i.k = or disjoint i32 %i.f, 2
  store i32 %i.k, ptr %i.e, align 8, !tbaa !224, !noalias !603
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #37, !noalias !603
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !109
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.m, align 8, !tbaa !226
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !91   ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.l, align 8, !tbaa !109
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !109
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev.exit

_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev.exit: ; preds = %bb.h, %bb.g
  ret void

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.h, %bb.f ]
  %i.u = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.u) #42
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37 ; 8 uses
  %i.b = icmp ugt i64 %i.a, -9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %i.a, 23
  br i1 %i.c, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.d = or i64 %i.a, 7                           ; 2 uses
  %i.e = icmp eq i64 %i.d, 23
  %i.f = add nuw i64 %i.d, 1
  %i.g = select i1 %i.e, i64 25, i64 %i.f         ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #39 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !75
  %i.j = or i64 %i.g, 1
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.k, align 8, !tbaa !75
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %i.a to i8
  %i.m = shl nuw nsw i8 %i.l, 1
  store i8 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %.017.i = phi ptr [ %i.h, %.thread.i ], [ %i.n, %bb.d ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit: ; preds = %bb.d, %bb.e
  %.018.i = phi ptr [ %i.n, %bb.d ], [ %.017.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.a
  store i8 0, ptr %i.o, align 1, !tbaa !75
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3tevL11findColrBoxENSt3__14spanIKhLm18446744073709551615EEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %1, i64 %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %3 = alloca %"class.std::__1::optional.166", align 8 ; 10 uses
  %.not141 = icmp eq i64 %2, 0
  br i1 %.not141, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit84.thread
  %.sroa.4.0143 = phi i64 [ %2, %.lr.ph ], [ %i.by, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit84.thread ] ; 2 uses
  %.sroa.0108.0142 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0.i85, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit84.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 0, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call fastcc void @_ZN3tevL13readBoxHeaderENSt3__14spanIKhLm18446744073709551615EEEPm(ptr dead_on_unwind noalias writable align 8 %3, ptr %.sroa.0108.0142, i64 %.sroa.4.0143, ptr noundef %i.a)
  %i.e = load i8, ptr %i.b, align 8, !tbaa !134, !range !135, !noundef !136
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %.thread126

.thread126:                                       ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %.sroa.028.0.copyload = load ptr, ptr %3, align 8, !tbaa !93 ; 11 uses
  %.sroa.229.0.copyload = load i64, ptr %.sroa.229.0..sroa_idx, align 8, !tbaa !95
  %cond = icmp eq i64 %.sroa.229.0.copyload, 4
  br i1 %cond, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit84.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit: ; preds = %bb.c
  %i.g = load i32, ptr %.sroa.028.0.copyload, align 1
  %i.h = icmp ne i32 %i.g, 1919709027
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread

bb.d:                                             ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit
  %.sroa.026.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !93 ; 3 uses
  %.sroa.227.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !95 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.k = icmp ult i64 %.sroa.227.0.copyload, 3
  br i1 %i.k, label %_ZN3tevL12parseColrBoxENSt3__14spanIKhLm18446744073709551615EEE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %.sroa.026.0.copyload, align 1, !tbaa !75, !noalias !606 ; 2 uses
  %i.m = icmp eq i8 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = icmp ult i64 %.sroa.227.0.copyload, 7
  br i1 %i.n, label %_ZN3tevL12parseColrBoxENSt3__14spanIKhLm18446744073709551615EEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.026.0.copyload, i64 3
  %i.p = load i32, ptr %i.o, align 1, !noalias !606
  %i.q = tail call noundef i32 @llvm.bswap.i32(i32 %i.p) ; 2 uses
  %switch.tableidx.i = add i32 %i.q, -16
  %i.r = icmp ult i32 %switch.tableidx.i, 3
  br i1 %i.r, label %switch.lookup.i, label %_ZN3tevL12parseColrBoxENSt3__14spanIKhLm18446744073709551615EEE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.s = and i8 %i.l, -2
  %or.cond.i = icmp ne i8 %i.s, 2
  %i.t = icmp eq i64 %.sroa.227.0.copyload, 3
  %or.cond = or i1 %or.cond.i, %i.t
  br i1 %or.cond, label %_ZN3tevL12parseColrBoxENSt3__14spanIKhLm18446744073709551615EEE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = add i64 %.sroa.227.0.copyload, -3
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.026.0.copyload, i64 3
  br label %_ZN3tevL12parseColrBoxENSt3__14spanIKhLm18446744073709551615EEE.exit

switch.lookup.i:                                  ; preds = %bb.g
  %switch.offset.i = add nsw i32 %i.q, -15
  br label %_ZN3tevL12parseColrBoxENSt3__14spanIKhLm18446744073709551615EEE.exit

_ZN3tevL12parseColrBoxENSt3__14spanIKhLm18446744073709551615EEE.exit.thread: ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  store i8 0, ptr %0, align 8, !tbaa !75, !alias.scope !606
  store i8 0, ptr %i.d, align 8, !tbaa !108, !alias.scope !606
  br label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit84.thread

_ZN3tevL12parseColrBoxENSt3__14spanIKhLm18446744073709551615EEE.exit: ; preds = %bb.i, %switch.lookup.i
  %.sroa.7.0.i = phi i8 [ 0, %bb.i ], [ 1, %switch.lookup.i ]
  %.sroa.13.0.i = phi i64 [ %i.u, %bb.i ], [ 0, %switch.lookup.i ]
  %.sroa.1115.0.i = phi ptr [ %.sroa.0.0.i.i, %bb.i ], [ null, %switch.lookup.i ]
  %.sroa.014.sroa.0.0.i = phi i32 [ 0, %bb.i ], [ %switch.offset.i, %switch.lookup.i ]
  store i32 %.sroa.014.sroa.0.0.i, ptr %0, align 8, !alias.scope !606
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !606
  %.sroa.1115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.1115.0.i, ptr %.sroa.1115.0..sroa_idx.i, align 8, !alias.scope !606
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.13.0.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !alias.scope !606
  store i8 1, ptr %i.d, align 8, !tbaa !108, !alias.scope !606
  br label %.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit
  %i.v = load i32, ptr %.sroa.028.0.copyload, align 1
  %i.w = icmp ne i32 %i.v, 1685288051
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit36.thread

bb.j:                                             ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread
  %i.z = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !138 ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 8
  br i1 %i.aa, label %bb.k, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit84.thread

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.c, align 8
  %i.ac = add i64 %i.z, -8
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  tail call fastcc void @_ZN3tevL11findColrBoxENSt3__14spanIKhLm18446744073709551615EEE(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %.sroa.0.0.i, i64 %i.ac)
  %i.ad = load i8, ptr %i.d, align 8, !tbaa !108, !range !135, !noundef !136
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.thread, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit84.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit36.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread
  %i.af = load i32, ptr %.sroa.028.0.copyload, align 1
  %i.ag = icmp ne i32 %i.af, 846228077
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit41.thread

bb.l:                                             ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit36.thread
  %i.aj = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !138 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 78
  br i1 %i.ak, label %bb.m, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit84.thread

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.c, align 8
  %i.am = add i64 %i.aj, -78
  %.sroa.0.0.i42 = getelementptr inbounds nuw i8, ptr %i.al, i64 78
  tail call fastcc void @_ZN3tevL11findColrBoxENSt3__14spanIKhLm18446744073709551615EEE(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %.sroa.0.0.i42, i64 %i.am)
  %i.an = load i8, ptr %i.d, align 8, !tbaa !108, !range !135, !noundef !136
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.thread, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit84.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit41.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit36.thread
  %i.ap = load i32, ptr %.sroa.028.0.copyload, align 1
  %i.aq = icmp ne i32 %i.ap, 1987014509
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.n, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit49.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit49.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit41.thread
  %i.at = load i32, ptr %.sroa.028.0.copyload, align 1
  %i.au = icmp ne i32 %i.at, 1801548404
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.n, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit54.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit54.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit49.thread
  %i.ax = load i32, ptr %.sroa.028.0.copyload, align 1
  %i.ay = icmp ne i32 %i.ax, 1634296941
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.n, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit59.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit59.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit54.thread
  %i.bb = load i32, ptr %.sroa.028.0.copyload, align 1
  %i.bc = icmp ne i32 %i.bb, 1718511981
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.n, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit64.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit64.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit59.thread
  %i.bf = load i32, ptr %.sroa.028.0.copyload, align 1
  %i.bg = icmp ne i32 %i.bf, 1818391667
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.n, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit69.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit69.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit64.thread
  %i.bj = load i32, ptr %.sroa.028.0.copyload, align 1
  %i.bk = icmp ne i32 %i.bj, 1748136042
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.n, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit74.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit74.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit69.thread
  %i.bn = load i32, ptr %.sroa.028.0.copyload, align 1
  %i.bo = icmp ne i32 %i.bn, 1751347306
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.n, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit79.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit79.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit74.thread
  %i.br = load i32, ptr %.sroa.028.0.copyload, align 1
  %i.bs = icmp ne i32 %i.br, 1751937130
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.n, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit84.thread

bb.n:                                             ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit79.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit74.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit69.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit64.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit59.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit54.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit49.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit41.thread
  %.sroa.01.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !93
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !95
  tail call fastcc void @_ZN3tevL11findColrBoxENSt3__14spanIKhLm18446744073709551615EEE(ptr dead_on_unwind noalias writable align 8 %0, ptr %.sroa.01.0.copyload, i64 %.sroa.2.0.copyload)
  %i.bv = load i8, ptr %i.d, align 8, !tbaa !108, !range !135, !noundef !136
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.thread, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit84.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.n, %_ZN3tevL12parseColrBoxENSt3__14spanIKhLm18446744073709551615EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.o

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit84.thread: ; preds = %bb.c, %bb.m, %bb.l, %bb.n, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit79.thread, %bb.j, %bb.k, %_ZN3tevL12parseColrBoxENSt3__14spanIKhLm18446744073709551615EEE.exit.thread
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !95  ; 2 uses
  %i.by = sub i64 %.sroa.4.0143, %i.bx            ; 2 uses
  %.sroa.0.0.i85 = getelementptr inbounds nuw i8, ptr %.sroa.0108.0142, i64 %i.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.not = icmp eq i64 %i.by, 0
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit84.thread, %bb.a, %.thread126
  store i8 0, ptr %0, align 8, !tbaa !75
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bz, align 8, !tbaa !108
  br label %bb.o

bb.o:                                             ; preds = %.thread, %.loopexit
  ret void
}

declare void @_ZN3tev4ExifC1ENSt3__14spanIKhLm18446744073709551615EEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i1 noundef zeroext) unnamed_addr #10

declare void @_ZNK3tev4Exif12toAttributesEv(ptr dead_on_unwind writable sret(%"struct.tev::AttributeNode") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148  ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i37, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0.i.i8 = phi ptr [ %i.e, %.lr.ph ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds i8, ptr %.0.i.i8, i64 -96 ; 3 uses
  tail call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.e) #37, !inline_history !607
  %.not.i.i3 = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i3, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit, label %.lr.ph

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !147
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit, %bb.b
end_hunk_1
begin_hunk_2_@"_ZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_":.from.
  %i.cv = call ptr @__cxa_allocate_exception(i64 16) #37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.117)
          to label %bb.ae unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit133.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.cv, align 8, !tbaa !80
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.fd unwind label %.thread914

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit133.thread: ; preds = %bb.ad
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.765.sink.split

bb.ag:                                            ; preds = %bb.ae
  %i.cx = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cy = load i8, ptr %9, align 8
  %i.cz = trunc i8 %i.cy to i1
  br i1 %i.cz, label %.split353, label %.from.765.sink.split

.thread914:                                       ; preds = %bb.af
  %i.da = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.db = load i8, ptr %9, align 8
  %i.dc = trunc i8 %i.db to i1
  br i1 %i.dc, label %.split353, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit133762

.split353:                                        ; preds = %.thread914, %bb.ag
  %i.dd = phi { ptr, i32 } [ %i.da, %.thread914 ], [ %i.cx, %bb.ag ]
  %.075916 = phi i1 [ false, %.thread914 ], [ true, %bb.ag ]
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !75
  %i.dg = load i64, ptr %9, align 8
  %i.dh = and i64 %i.dg, -2
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dh) #41
  %.5354 = extractvalue { ptr, i32 } %i.dd, 0     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br i1 %.075916, label %.from.765, label %.from..split347760

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit133762: ; preds = %.thread914
  %.5920 = extractvalue { ptr, i32 } %i.da, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %.from..split347760

.from.765.sink.split:                             ; preds = %bb.ag, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit133.thread
  %.sink996 = phi { ptr, i32 } [ %i.cw, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit133.thread ], [ %i.cx, %bb.ag ]
  %.5351 = extractvalue { ptr, i32 } %.sink996, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %.from.765

.from.765:                                        ; preds = %.from.765.sink.split, %.split353
  %.5352 = phi ptr [ %.5354, %.split353 ], [ %.5351, %.from.765.sink.split ]
  call void @__cxa_free_exception(ptr %i.cv) #37
  br label %.from..split347760

bb.ah:                                            ; preds = %bb.ac
  %i.di = load ptr, ptr %.reload.addr851, align 8, !tbaa !234 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !637 ; 4 uses
  store i32 %i.dk, ptr %.reload.addr861, align 4, !tbaa !238
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !638 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !639 ; 2 uses
  %i.dp = zext i32 %i.do to i64                   ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !640, !nonnull !136, !align !239 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !108, !range !135, !noundef !136
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.ai, label %.from.556

bb.ai:                                            ; preds = %bb.ah
  %i.dv = icmp eq i32 %i.dk, 0
  br i1 %i.dv, label %bb.aj, label %.from.547

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dx = load i8, ptr %i.dw, align 4, !tbaa !642, !range !135, !noundef !136
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.ak, label %.from.547

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.dz = load i32, ptr %i.dr, align 8, !tbaa !238
  store i32 %i.dz, ptr %i.b, align 4, !tbaa !76
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc134 unwind label %.from.756

.noexc134:                                        ; preds = %bb.ak
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !116
  invoke void @_ZN4tlog6Logger3logIJiEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.eb, i32 noundef 4, ptr nonnull @.str.118, i64 37, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.from._ZN4tlog5debugIJiEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit unwind label %.from.756

.from._ZN4tlog5debugIJiEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit: ; preds = %.noexc134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.ec = load ptr, ptr %i.dq, align 8, !tbaa !640, !nonnull !136, !align !239 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !238 ; 2 uses
  store i32 %i.ed, ptr %.reload.addr861, align 4, !tbaa !238
  br label %.from.547

.from.756:                                        ; preds = %bb.ak, %.noexc134
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %.from..split347760

.from.547:                                        ; preds = %bb.aj, %bb.ai, %.from._ZN4tlog5debugIJiEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit
  %i.eg = phi i32 [ %i.ed, %.from._ZN4tlog5debugIJiEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit ], [ %i.dk, %bb.ai ], [ 0, %bb.aj ] ; 2 uses
  %i.eh = phi ptr [ %i.ec, %.from._ZN4tlog5debugIJiEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit ], [ %i.dr, %bb.ai ], [ %i.dr, %bb.aj ]
  %.not90 = icmp eq ptr %i.dm, null
  %i.ei = icmp eq i32 %i.do, 0
  %or.cond404 = select i1 %.not90, i1 true, i1 %i.ei
  br i1 %or.cond404, label %bb.al, label %.from.556

bb.al:                                            ; preds = %.from.547
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !138 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %.from.556, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i64 %i.ek, ptr %i.c, align 8, !tbaa !95
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc136 unwind label %.from.753

.noexc136:                                        ; preds = %bb.am
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !116
  invoke void @_ZN4tlog6Logger3logIJmEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.en, i32 noundef 4, ptr nonnull @.str.119, i64 43, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.from._ZN4tlog5debugIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit unwind label %.from.753

.from._ZN4tlog5debugIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit: ; preds = %.noexc136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.eo = load ptr, ptr %i.dq, align 8, !tbaa !640, !nonnull !136, !align !239 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.0303.0.copyload = load ptr, ptr %i.ep, align 8, !tbaa !93
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !95
  %.pre421 = load i32, ptr %.reload.addr861, align 4, !tbaa !238
  br label %.from.556

.from.753:                                        ; preds = %bb.am, %.noexc136
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %.from..split347760

.from.556:                                        ; preds = %bb.al, %.from.547, %bb.ah, %.from._ZN4tlog5debugIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit
  %i.es = phi i32 [ %i.eg, %.from.547 ], [ %.pre421, %.from._ZN4tlog5debugIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit ], [ %i.dk, %bb.ah ], [ %i.eg, %bb.al ]
  %.sroa.7.0 = phi i64 [ %i.dp, %.from.547 ], [ %.sroa.7.0.copyload, %.from._ZN4tlog5debugIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit ], [ %i.dp, %bb.ah ], [ %i.dp, %bb.al ] ; 2 uses
  %.sroa.0303.0 = phi ptr [ %i.dm, %.from.547 ], [ %.sroa.0303.0.copyload, %.from._ZN4tlog5debugIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit ], [ %i.dm, %bb.ah ], [ %i.dm, %bb.al ]
  %.sroa.0303.0.spill.addr = getelementptr inbounds nuw i8, ptr %i.i, i64 1112 ; 2 uses
  store ptr %.sroa.0303.0, ptr %.sroa.0303.0.spill.addr, align 8
  %.sroa.7.0.spill.addr = getelementptr inbounds nuw i8, ptr %i.i, i64 1104 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0.spill.addr, align 8
  %i.et = load ptr, ptr %.reload.addr851, align 8, !tbaa !234 ; 4 uses
  %i.eu = load i64, ptr %i.et, align 8            ; 3 uses
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = lshr i64 %i.eu, 32
  %i.ex = trunc nuw i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !643 ; 2 uses
  %i.fa = add i32 %i.ez, %i.ev
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !644 ; 2 uses
  %i.fd = add i32 %i.fc, %i.ex
  %.sroa.2.0.insert.ext297 = zext i32 %i.fd to i64
  %.sroa.2.0.insert.shift298 = shl nuw i64 %.sroa.2.0.insert.ext297, 32
  %.sroa.0296.0.insert.ext = zext i32 %i.fa to i64
  %.sroa.0296.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift298, %.sroa.0296.0.insert.ext
  store i64 %i.eu, ptr %.reload.addr850, align 4, !tbaa !75
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 9380 ; 2 uses
  store i64 %.sroa.0296.0.insert.insert, ptr %i.fe, align 4, !tbaa !75
  %i.ff = call noundef i32 @llvm.smax.i32(i32 %i.ez, i32 0)
  %i.fg = call noundef i32 @llvm.smax.i32(i32 %i.fc, i32 0)
  %.sroa.2.0.insert.ext.i1.i = zext nneg i32 %i.fg to i64
  %.sroa.2.0.insert.shift.i2.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i1.i, 32
  %.sroa.0.0.insert.ext.i3.i = zext nneg i32 %i.ff to i64
  %.sroa.0.0.insert.insert.i4.i = or disjoint i64 %.sroa.2.0.insert.shift.i2.i, %.sroa.0.0.insert.ext.i3.i
  store i64 %.sroa.0.0.insert.insert.i4.i, ptr %.reload.addr860, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %switch.tableidx = add i32 %i.es, 1             ; 3 uses
  %i.fh = icmp ult i32 %switch.tableidx, 7
  br i1 %i.fh, label %switch.lookup, label %.from.587

switch.lookup:                                    ; preds = %.from.556
  %i.fi = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_", i64 %i.fi
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.fj = zext nneg i32 %switch.tableidx to i64
  %switch.gep1056 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_.14", i64 %i.fj
  %switch.load1057 = load ptr, ptr %switch.gep1056, align 8
  br label %.from.587

.from.587:                                        ; preds = %.from.556, %switch.lookup
  %.sroa.9.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 7, %.from.556 ]
  %.sroa.0.0.i = phi ptr [ %switch.load1057, %switch.lookup ], [ @.str.139, %.from.556 ]
  store ptr %.sroa.0.0.i, ptr %10, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.sroa.9.0.i, ptr %i.fk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.fl = icmp eq i64 %.sroa.7.0, 0
  %i.fm = select i1 %i.fl, ptr @.str.122, ptr @.str.121
  store ptr %i.fm, ptr %i.d, align 8, !tbaa !93
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc138 unwind label %.from.749

.noexc138:                                        ; preds = %.from.587
  %i.fo = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !116
  invoke void @_ZN4tlog6Logger3logIJRKN7nanogui5ArrayIiLm2EEES6_RjNSt3__117basic_string_viewIcNS8_11char_traitsIcEEEEPKcEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSJ_(ptr noundef nonnull align 8 dereferenceable(56) %i.fp, i32 noundef 4, ptr nonnull @.str.120, i64 64, ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr850, ptr noundef nonnull align 4 dereferenceable(8) %i.fe, ptr noundef nonnull align 4 dereferenceable(4) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEES5_RjNSt3__117basic_string_viewIcNS7_11char_traitsIcEEEEPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSH_.exit unwind label %.from.749

_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEES5_RjNSt3__117basic_string_viewIcNS7_11char_traitsIcEEEEPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSH_.exit: ; preds = %.noexc138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.fq = load ptr, ptr %.reload.addr851, align 8, !tbaa !234 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !645 ; 5 uses
  %i.ft = zext i32 %i.fs to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  store i64 0, ptr %i.e, align 8, !tbaa !95
  %.not417 = icmp eq i32 %i.fs, 0
  br i1 %.not417, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.fu = load i32, ptr %.reload.addr861, align 4, !tbaa !238
  %i.fv = add i32 %i.fu, 1
  %or.cond8 = icmp ult i32 %i.fv, 2
  br i1 %or.cond8, label %.sink.split.from., label %bb.ap

._crit_edge.thread:                               ; preds = %_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEES5_RjNSt3__117basic_string_viewIcNS7_11char_traitsIcEEEEPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.fw = load i32, ptr %.reload.addr861, align 4, !tbaa !238
  %i.fx = add i32 %i.fw, 1
  %or.cond8477 = icmp ult i32 %i.fx, 2
  br i1 %or.cond8477, label %.sink.split, label %bb.ap

.from.749:                                        ; preds = %.from.587, %.noexc138
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %.6 = extractvalue { ptr, i32 } %i.fy, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %.from..split347760

.lr.ph:                                           ; preds = %_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEES5_RjNSt3__117basic_string_viewIcNS7_11char_traitsIcEEEEPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSH_.exit, %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit
  %i.fz = phi ptr [ %i.gy, %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit ], [ %i.fq, %_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEES5_RjNSt3__117basic_string_viewIcNS7_11char_traitsIcEEEEPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSH_.exit ]
  %storemerge412 = phi i64 [ %i.ha, %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit ], [ 0, %_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEES5_RjNSt3__117basic_string_viewIcNS7_11char_traitsIcEEEEPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSH_.exit ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !240
  %i.gc = getelementptr inbounds nuw [64 x i8], ptr %i.gb, i64 %storemerge412 ; 11 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 56 ; 2 uses
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc140 unwind label %.from.744

.noexc140:                                        ; preds = %.lr.ph
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 36
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.go = load ptr, ptr %i.ge, align 8, !tbaa !116
  invoke void @_ZN4tlog6Logger3logIJRmRKjS4_S4_S4_S4_S4_S4_S4_S4_S4_RKtEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(56) %i.go, i32 noundef 4, ptr nonnull @.str.123, i64 101, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.gn, ptr noundef nonnull align 4 dereferenceable(4) %i.gm, ptr noundef nonnull align 4 dereferenceable(4) %i.gc, ptr noundef nonnull align 4 dereferenceable(4) %i.gl, ptr noundef nonnull align 4 dereferenceable(4) %i.gk, ptr noundef nonnull align 4 dereferenceable(4) %i.gj, ptr noundef nonnull align 4 dereferenceable(4) %i.gi, ptr noundef nonnull align 4 dereferenceable(4) %i.gh, ptr noundef nonnull align 4 dereferenceable(4) %i.gg, ptr noundef nonnull align 4 dereferenceable(4) %i.gf, ptr noundef nonnull align 2 dereferenceable(2) %i.gd)
          to label %_ZN4tlog5debugIJRmRKjS3_S3_S3_S3_S3_S3_S3_S3_S3_RKtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit unwind label %.from.744

_ZN4tlog5debugIJRmRKjS3_S3_S3_S3_S3_S3_S3_S3_S3_RKtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit: ; preds = %.noexc140
  %i.gp = load i16, ptr %i.gd, align 8, !tbaa !646
  %.not107 = icmp eq i16 %i.gp, 0
  %.pre423 = load i64, ptr %i.e, align 8, !tbaa !95 ; 3 uses
  %.pre425 = load ptr, ptr %.reload.addr851, align 8, !tbaa !234 ; 3 uses
  br i1 %.not107, label %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit, label %bb.an

bb.an:                                            ; preds = %_ZN4tlog5debugIJRmRKjS3_S3_S3_S3_S3_S3_S3_S3_S3_RKtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %.pre425, i64 16
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !645
  %i.gs = add i32 %i.gr, -1
  %i.gt = zext i32 %i.gs to i64
  %.not108 = icmp eq i64 %.pre423, %i.gt
  br i1 %.not108, label %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc142 unwind label %.from.744

.noexc142:                                        ; preds = %bb.ao
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !116
  invoke void @_ZN4tlog6Logger3logIJRmEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.gv, i32 noundef 8, ptr nonnull @.str.124, i64 89, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit.from..noexc142._ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit_crit_edge unwind label %.from.744

_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit.from..noexc142._ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit_crit_edge: ; preds = %.noexc142
  %.pre422 = load i64, ptr %i.e, align 8, !tbaa !95
  %.pre424 = load ptr, ptr %.reload.addr851, align 8, !tbaa !234
  br label %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit

.from.744:                                        ; preds = %.lr.ph, %.noexc140, %bb.ao, %.noexc142
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %.from..split347760

_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit: ; preds = %bb.an, %_ZN4tlog5debugIJRmRKjS3_S3_S3_S3_S3_S3_S3_S3_S3_RKtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit, %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit.from..noexc142._ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit_crit_edge
  %i.gy = phi ptr [ %.pre424, %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit.from..noexc142._ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit_crit_edge ], [ %.pre425, %_ZN4tlog5debugIJRmRKjS3_S3_S3_S3_S3_S3_S3_S3_S3_RKtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit ], [ %.pre425, %bb.an ] ; 2 uses
  %i.gz = phi i64 [ %.pre422, %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit.from..noexc142._ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit_crit_edge ], [ %.pre423, %_ZN4tlog5debugIJRmRKjS3_S3_S3_S3_S3_S3_S3_S3_S3_RKtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit ], [ %.pre423, %bb.an ]
  %i.ha = add i64 %i.gz, 1                        ; 3 uses
  store i64 %i.ha, ptr %i.e, align 8, !tbaa !95
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !645
  %i.hd = zext i32 %i.hc to i64
  %i.he = icmp ult i64 %i.ha, %i.hd
  br i1 %i.he, label %.lr.ph, label %._crit_edge, !llvm.loop !614

.sink.split.from.:                                ; preds = %._crit_edge
  %.inv = icmp ugt i32 %i.fs, 2
  %spec.select = select i1 %.inv, i32 1, i32 2
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge.thread, %.sink.split.from.
  %.sink = phi i32 [ %spec.select, %.sink.split.from. ], [ 2, %._crit_edge.thread ]
  store i32 %.sink, ptr %.reload.addr861, align 4, !tbaa !238
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %._crit_edge.thread, %._crit_edge
  %i.hf = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.reload.addr831, i8 0, i64 48, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hf, align 8, !tbaa !74
  %i.hg = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hg, align 8, !tbaa !74
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store float 1.000000e+00, ptr %i.hh, align 8, !tbaa !74
  %i.hi = getelementptr inbounds nuw i8, ptr %i.i, i64 124 ; 3 uses
  store i8 0, ptr %i.hi, align 4, !tbaa !243
  %i.hj = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store i32 0, ptr %i.hj, align 8, !tbaa !218
  %i.hk = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hk, i8 0, i64 40, i1 false)
  invoke void @_ZN3tev10zeroChromaEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::array") align 4 %i.hl)
          to label %bb.aq unwind label %.from..body144

.from..body144:                                   ; preds = %bb.ap
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hk) #37
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hn) #37
  call void @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(280) %.reload.addr831) #37
  %i.ho = extractvalue { ptr, i32 } %i.hm, 0
  br label %.from..split347760

bb.aq:                                            ; preds = %bb.ap
  %i.hp = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  store float 8.000000e+01, ptr %i.hp, align 8, !tbaa !647
  %i.hq = getelementptr inbounds nuw i8, ptr %i.i, i64 212 ; 2 uses
  store i8 0, ptr %i.hq, align 4, !tbaa !75
  %i.hr = getelementptr inbounds nuw i8, ptr %i.i, i64 244 ; 3 uses
  store i8 0, ptr %i.hr, align 4, !tbaa !244
  %i.hs = getelementptr inbounds nuw i8, ptr %i.i, i64 248 ; 2 uses
  store i8 0, ptr %i.hs, align 8, !tbaa !75
  %i.ht = getelementptr inbounds nuw i8, ptr %i.i, i64 249
  store i8 0, ptr %i.ht, align 1, !tbaa !648
  %i.hu = getelementptr inbounds nuw i8, ptr %i.i, i64 252
  store i8 0, ptr %i.hu, align 4, !tbaa !75
  %i.hv = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  store i8 0, ptr %i.hv, align 8, !tbaa !649
  %i.hw = getelementptr inbounds nuw i8, ptr %i.i, i64 260
  store i32 1, ptr %i.hw, align 4, !tbaa !650
  %i.hx = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  %i.hy = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  %i.hz = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, ptr noundef nonnull align 4 dereferenceable(16) %.reload.addr850, i64 16, i1 false), !tbaa.struct !651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull align 4 dereferenceable(16) %.reload.addr850, i64 16, i1 false)
  %i.ia = icmp eq i32 %i.fs, 2
  %i.ib = icmp ugt i32 %i.fs, 3
  %i.ic = or i1 %i.ia, %i.ib                      ; 3 uses
  %i.id = zext i1 %i.ic to i8
  store i8 %i.id, ptr %.reload.addr862, align 1, !tbaa !78
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.ft, i64 4) ; 4 uses
  store i64 %.sroa.speculated, ptr %.reload.addr859, align 8, !tbaa !95
  %.neg = sext i1 %i.ic to i64
  %i.ie = add nsw i64 %.sroa.speculated, %.neg
  store i64 %i.ie, ptr %.reload.addr858, align 8, !tbaa !95
  %i.if = sub nuw nsw i64 %i.ft, %.sroa.speculated
  store i64 %i.if, ptr %.reload.addr857, align 8, !tbaa !95
end_hunk_2
begin_hunk_3_@_ZN3tevL22collectCodestreamBoxesENSt3__14spanIKhLm18446744073709551615EEERNS0_6vectorIS3_NS0_9allocatorIS3_EEEE:bb.a
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.t, 1                      ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1152921504606846975
  br i1 %i.v, label %.noexc, label %_ZNKSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i

.noexc:                                           ; preds = %bb.f
  tail call void @_ZNKSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #40
  unreachable

_ZNKSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.f
  %i.w = ptrtoint ptr %i.m to i64
  %i.x = sub i64 %i.w, %i.r                       ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.x, 9223372036854775792
  %i.y = ashr exact i64 %i.x, 3
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %i.u)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 1152921504606846975 ; 4 uses
  %i.z = icmp ne i64 %.0.i.i.i, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp ugt i64 %.0.i.i.i, 1152921504606846975
  br i1 %i.aa, label %.noexc26, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i

.noexc26:                                         ; preds = %_ZNKSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #40
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit.i.i
  %i.ab = shl nuw i64 %.0.i.i.i, 4
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #39 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.s ; 4 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !102
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !101   ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ag, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i ]
  %i.aj = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -16 ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !102, !noalias !693
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.ah
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i
  %.sroa.436.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_4spanIKhLm18446744073709551615EEEEEEEDaRT_m.exit.i.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i, ptr %2, align 8, !tbaa !104
  store ptr %i.af, ptr %i.d, align 8, !tbaa !104
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !104
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !104
  %.not.i5.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i5.i.i, label %_ZNSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ah to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ao) #41
  br label %_ZNSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit

_ZNSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit: ; preds = %bb.e, %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, %bb.g
  %.0.i25 = phi ptr [ %i.o, %bb.e ], [ %i.af, %_ZNSt3__114__split_bufferINS_4spanIKhLm18446744073709551615EEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i ], [ %i.af, %bb.g ]
  store ptr %.0.i25, ptr %i.d, align 8, !tbaa !100
  br label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit67.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit
  %i.ap = load i32, ptr %.sroa.018.0.copyload, align 1
  %i.aq = icmp ne i32 %i.ap, 1751347306
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit32.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit32.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread
  %i.at = load i32, ptr %.sroa.018.0.copyload, align 1
  %i.au = icmp ne i32 %i.at, 1751937130
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit37.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit37.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit32.thread
  %i.ax = load i32, ptr %.sroa.018.0.copyload, align 1
  %i.ay = icmp ne i32 %i.ax, 1819239280
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.h, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit42.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit42.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit37.thread
  %i.bb = load i32, ptr %.sroa.018.0.copyload, align 1
  %i.bc = icmp ne i32 %i.bb, 1987014509
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.h, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit47.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit47.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit42.thread
  %i.bf = load i32, ptr %.sroa.018.0.copyload, align 1
  %i.bg = icmp ne i32 %i.bf, 1801548404
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.h, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit52.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit52.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit47.thread
  %i.bj = load i32, ptr %.sroa.018.0.copyload, align 1
  %i.bk = icmp ne i32 %i.bj, 1634296941
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit57.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit57.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit52.thread
  %i.bn = load i32, ptr %.sroa.018.0.copyload, align 1
  %i.bo = icmp ne i32 %i.bn, 1718511981
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.h, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit62.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit62.thread: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit57.thread
  %i.br = load i32, ptr %.sroa.018.0.copyload, align 1
  %i.bs = icmp ne i32 %i.br, 1818391667
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.h, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit67.thread

bb.h:                                             ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit62.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit57.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit52.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit47.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit42.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit37.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit32.thread, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread
  %.sroa.01.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !93
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !95
  tail call fastcc void @_ZN3tevL22collectCodestreamBoxesENSt3__14spanIKhLm18446744073709551615EEERNS0_6vectorIS3_NS0_9allocatorIS3_EEEE(ptr %.sroa.01.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit67.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit67.thread: ; preds = %bb.c, %bb.h, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit62.thread, %_ZNSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_.exit
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !95  ; 2 uses
  %i.bw = sub i64 %.sroa.4.0113, %i.bv            ; 2 uses
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.089.0112, i64 %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.not = icmp eq i64 %i.bw, 0
  br i1 %.not, label %_ZNSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEED2B8ne180100Ev.exit69, label %bb.b

_ZNSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEED2B8ne180100Ev.exit69: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit67.thread, %bb.a, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3tevL13readBoxHeaderENSt3__14spanIKhLm18446744073709551615EEEPm(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr %1, i64 %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp ult i64 %2, 8
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116  ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !127
  %i.f = and i32 %i.e, 8
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !129  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.09.013.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.z, %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.09.013.i.i.i, align 8, !tbaa !132 ; 2 uses
  %i.p = load i8, ptr %i.k, align 8               ; 2 uses
  %i.q = trunc i8 %i.p to i1                      ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = select i1 %i.q, ptr %i.r, ptr %i.m
  %i.t = load i64, ptr %i.n, align 8
  %i.u = lshr i8 %i.p, 1
  %i.v = zext nneg i8 %i.u to i64
  %i.w = select i1 %i.q, i64 %i.t, i64 %i.v
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !80
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr %i.s, i64 %i.w, i32 noundef 8, ptr nonnull @.str.32, i64 53), !inline_history !694
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.j
  br i1 %.not.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.d

_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit: ; preds = %bb.d, %bb.b, %bb.c
  store i64 %2, ptr %3, align 8, !tbaa !95
  store i8 0, ptr %0, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.aa, align 8, !tbaa !134
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ab = load i32, ptr %1, align 1
  %i.ac = tail call noundef i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = zext i32 %i.ac to i64
  %.sroa.speculated41 = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.ad) ; 5 uses
  store i64 %.sroa.speculated41, ptr %i.a, align 8, !tbaa !95
  %trunc = trunc nuw i64 %.sroa.speculated41 to i32
  switch i32 %trunc, label %bb.l [
    i32 1, label %bb.f
    i32 0, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp ult i64 %2, 16
  br i1 %i.ae, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !116 ; 7 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !127
  %i.ai = and i32 %i.ah, 8
  %.not.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i22, label %bb.h, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit27

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !128 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !129 ; 2 uses
  %.not12.i.i.i23 = icmp eq ptr %i.ak, %i.am
  br i1 %.not12.i.i.i23, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit27, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i24
  %.sroa.09.013.i.i.i25 = phi ptr [ %i.ak, %.lr.ph.i.i.i24 ], [ %i.bc, %bb.i ] ; 2 uses
  %i.ar = load ptr, ptr %.sroa.09.013.i.i.i25, align 8, !tbaa !132 ; 2 uses
  %i.as = load i8, ptr %i.an, align 8             ; 2 uses
  %i.at = trunc i8 %i.as to i1                    ; 2 uses
  %i.au = load ptr, ptr %i.ao, align 8
  %i.av = select i1 %i.at, ptr %i.au, ptr %i.ap
  %i.aw = load i64, ptr %i.aq, align 8
  %i.ax = lshr i8 %i.as, 1
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = select i1 %i.at, i64 %i.aw, i64 %i.ay
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !80
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr %i.av, i64 %i.az, i32 noundef 8, ptr nonnull @.str.33, i64 53), !inline_history !694
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i25, i64 16 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bc, %i.am
  br i1 %.not.i.i.i26, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit27, label %bb.i

_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit27: ; preds = %bb.i, %bb.g, %bb.h
  store i64 %2, ptr %3, align 8, !tbaa !95
  store i8 0, ptr %0, align 8, !tbaa !75
  br label %bb.p

bb.j:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.bd, align 1
  %op.rdx = tail call noundef i64 @llvm.bswap.i64(i64 %.val)
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %op.rdx) ; 2 uses
  %i.be = add i64 %.sroa.speculated, -16          ; 2 uses
  %i.bf = icmp eq i64 %i.be, -1
  %i.bg = add i64 %2, -16
  %.sroa.3.0.i = select i1 %i.bf, i64 %i.bg, i64 %i.be
  br label %bb.o

bb.k:                                             ; preds = %bb.e
  %i.bh = add i64 %2, -8
  br label %bb.o

bb.l:                                             ; preds = %bb.e
  %i.bi = icmp samesign ugt i64 %.sroa.speculated41, 7
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = add nsw i64 %.sroa.speculated41, -8
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !116
  call void @_ZN4tlog6Logger3logIJRKmEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, i32 noundef 8, ptr nonnull @.str.34, i64 40, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store i64 %2, ptr %3, align 8, !tbaa !95
  store i8 0, ptr %0, align 8, !tbaa !75
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.j
  %.sink70 = phi i64 [ 8, %bb.k ], [ 8, %bb.m ], [ 16, %bb.j ]
  %.sink = phi i64 [ %2, %bb.k ], [ %.sroa.speculated41, %bb.m ], [ %.sroa.speculated, %bb.j ]
  %.sroa.7.0 = phi i64 [ %i.bh, %bb.k ], [ %i.bj, %bb.m ], [ %.sroa.3.0.i, %bb.j ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %1, i64 %.sink70
  store i64 %.sink, ptr %3, align 8, !tbaa !95
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  store ptr %i.bm, ptr %0, align 8, !tbaa !93
  %.sroa.4.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %.sroa.4.0..sroa_idx36, align 8, !tbaa !95
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i29, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !93
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !tbaa !95
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit27
  %.sink71 = phi i8 [ 1, %bb.o ], [ 0, %bb.n ], [ 0, %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit27 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink71, ptr %i.bn, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
  ret void
}

declare void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8 %0, ptr %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.b, align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !171
  store i64 500, ptr %i.a, align 8, !tbaa !172
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %1, i64 %2, i64 %3, ptr %4, ptr null)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.e = load i64, ptr %i.c, align 8, !tbaa !180, !noalias !697 ; 8 uses
  %i.f = icmp ult i64 %i.e, -9
  call void @llvm.assume(i1 %i.f)
  %i.g = load ptr, ptr %5, align 8, !tbaa !171, !noalias !697
  %i.h = icmp ult i64 %i.e, 23
  br i1 %i.h, label %bb.c, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.b
  %i.i = or i64 %i.e, 7                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 23
  %i.k = add nuw i64 %i.i, 1
  %i.l = select i1 %i.j, i64 25, i64 %i.k         ; 2 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #39
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.thread.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !75, !alias.scope !697
  %i.o = or i64 %i.l, 1
  store i64 %i.o, ptr %0, align 8, !alias.scope !697
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.p, align 8, !tbaa !75, !alias.scope !697
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = trunc nuw nsw i64 %i.e to i8
  %i.r = shl nuw nsw i8 %i.q, 1
  store i8 %i.r, ptr %0, align 8, !alias.scope !697
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  %.017.i.i.i = phi ptr [ %i.m, %.noexc ], [ %i.s, %bb.c ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i, ptr align 1 %i.g, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.018.i.i.i = phi ptr [ %i.s, %bb.c ], [ %.017.i.i.i, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 %i.e
  store i8 0, ptr %i.t, align 1, !tbaa !75
  %i.u = load ptr, ptr %5, align 8, !tbaa !171    ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.u) #37
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.g:                                             ; preds = %.thread.i.i.i, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %5, align 8, !tbaa !171    ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.w, %i.d
  br i1 %.not.i.i7, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.w) #37
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.v
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #15 comdat {
bb.a:
  %6 = alloca %"class.fmt::v12::parse_context", align 8 ; 4 uses
  %7 = alloca %"class.fmt::v12::context", align 8 ; 5 uses
  %8 = alloca %"struct.fmt::v12::detail::default_arg_formatter", align 8 ; 10 uses
  %9 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = icmp eq i64 %2, 2
  br i1 %i.a, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 1
  %i.c = icmp ne i16 %i.b, 32123
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i64 %3, -1
  %i.g = trunc i64 %3 to i32                      ; 2 uses
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit.thread

bb.e:                                             ; preds = %bb.d
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 16, !tbaa !297
  br label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit

bb.f:                                             ; preds = %bb.c
  %i.i = and i32 %i.g, 15                         ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit.thread, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit

_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit.thread: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  br label %bb.v

_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit: ; preds = %bb.f, %bb.e
  %.sroa.21.0 = phi i32 [ %.sroa.21.0.copyload, %bb.e ], [ %i.i, %bb.f ]
  %.sroa.0.0.copyload.sink66 = load i128, ptr %4, align 16, !tbaa !75 ; 8 uses
  %i.j = trunc i128 %.sroa.0.0.copyload.sink66 to i64 ; 4 uses
  %i.k = lshr i128 %.sroa.0.0.copyload.sink66, 64
  %i.l = trunc nuw i128 %i.k to i64               ; 2 uses
  %i.m = trunc i128 %.sroa.0.0.copyload.sink66 to i32 ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i = inttoptr i64 %i.j to ptr ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.n = ptrtoint ptr %0 to i64
  store i64 %i.n, ptr %8, align 8, !tbaa !177
  switch i32 %.sroa.21.0, label %bb.v [
    i32 15, label %bb.u
    i32 1, label %bb.g
end_hunk_3
begin_hunk_4_@_ZNSt3__113__assoc_stateIN3tev9ImageDataEE4moveEv:bb.a
  br label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.i:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.e, %bb.e ]
  %i.ai = load i8, ptr %i.b, align 8, !tbaa !446, !range !135, !noundef !136
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit4

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %2, align 8, !tbaa !445
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ak) #37
  br label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit4

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit4: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE9set_valueIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !224
  %i.d = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr null, ptr %2, align 8, !tbaa !292
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !292
  %.not = icmp eq ptr %i.f, null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %.not, label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit3, label %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread

_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread: ; preds = %bb.a, %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  invoke void @_ZNSt3__120__throw_future_errorB8ne180100ENS_11future_errcE(i32 noundef 2) #40
          to label %bb.b unwind label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit

bb.b:                                             ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  unreachable

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit: ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit.thread
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #37
  resume { ptr, i32 } %i.g

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit3: ; preds = %_ZNKSt3__117__assoc_sub_state11__has_valueB8ne180100Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.j = load <2 x ptr>, ptr %1, align 8, !tbaa !163
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !163
  store ptr %i.l, ptr %i.i, align 8, !tbaa !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.m = load i32, ptr %i.b, align 8, !tbaa !224
  %i.n = or i32 %i.m, 5
  store i32 %i.n, ptr %i.b, align 8, !tbaa !224
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.o) #37
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector.83") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::unique_lock", align 8 ; 8 uses
  %3 = alloca %"class.std::exception_ptr", align 8 ; 4 uses
  %4 = alloca %"class.std::exception_ptr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !445
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i8 1, ptr %i.b, align 8, !tbaa !446
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  invoke void @_ZNSt3__117__assoc_sub_state10__sub_waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(116) %1, ptr noundef nonnull align 8 dereferenceable(9) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr null, ptr %3, align 8, !tbaa !292
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !292
  %.not = icmp eq ptr %i.d, null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #37
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %4) #40
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #37
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load <2 x ptr>, ptr %i.g, align 8, !tbaa !163
  store <2 x ptr> %i.i, ptr %0, align 8, !tbaa !163
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !163
  store ptr %i.k, ptr %i.h, align 8, !tbaa !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.l = load i8, ptr %i.b, align 8, !tbaa !446, !range !135, !noundef !136
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.h, label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %2, align 8, !tbaa !445
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #37
  br label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.i:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.e, %bb.e ]
  %i.o = load i8, ptr %i.b, align 8, !tbaa !446, !range !135, !noundef !136
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.j, label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit4

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %2, align 8, !tbaa !445
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #37
  br label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit4

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit4: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.resume(ptr noundef nonnull align 8 dereferenceable(104) %0) #5 personality ptr @__gxx_personality_v0 {
resume.0:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.041.064.reload.addr136 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %index.addr143 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.j
  store ptr %i.at, ptr %.sroa.041.064.reload.addr136, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.a, label %AfterCoroSave

bb.a:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !116  ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !127
  %i.m = and i32 %i.l, 8
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %.noexc.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !128  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !129  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 33
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.o, %.from..lr.ph.i.i.i.i.i ], [ %i.ag, %.noexc2.i.i ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !132 ; 2 uses
  %i.w = load i8, ptr %i.r, align 8               ; 2 uses
  %i.x = trunc i8 %i.w to i1                      ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = select i1 %i.x, ptr %i.y, ptr %i.t
  %i.aa = load i64, ptr %i.u, align 8
  %i.ab = lshr i8 %i.w, 1
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = select i1 %i.x, i64 %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !80
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr %i.z, i64 %i.ad, i32 noundef 8, ptr nonnull @.str.140, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !2

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.q
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

.from..loopexit.split-lp.i.i:                     ; preds = %bb.b
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

bb.d:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ah = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #42
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i8 0, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !468
  %i.ai = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %0) #37
  br i1 %i.ai, label %CoroEnd, label %bb.e

bb.e:                                             ; preds = %resume.0, %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !468 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !276 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.g, !inline_history !11

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.f, %bb.c, %.noexc.i.i, %bb.a
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !468 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !276
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e
  %.sroa.041.064.reload135 = phi ptr [ %.sroa.041.064.reload131, %.thread.sink.split ], [ %.sroa.041.064.reload137, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload135, i64 8
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.an = extractvalue { ptr, i32 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, i32 } %i.am, 1
  %i.ap = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #37
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %.loopexit52

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.an) #37 ; 0 uses
  tail call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #37
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #37
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %.from.104

bb.j:                                             ; preds = %bb.i, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !468 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !468
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.at, %.reload
  br i1 %.not51.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #37
  invoke void @__cxa_end_catch()
          to label %.loopexit52.from.110 unwind label %bb.ac

.from.104:                                        ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit52.from.110

.loopexit52.from.110:                             ; preds = %.from.104, %bb.k
  %.pn = phi { ptr, i32 } [ %i.av, %.from.104 ], [ %i.au, %bb.k ]
  %.011 = extractvalue { ptr, i32 } %.pn, 0
  br label %.loopexit52

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !473
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !474 ; 2 uses
  %i.aw = ptrtoint ptr %.pre to i64
  %i.ax = ptrtoint ptr %.pre70 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp eq i64 %i.ay, 8
  br i1 %i.az, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
end_hunk_4
begin_hunk_5_@_ZNK3tev19Jpeg2000ImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume:bb.a
.body44.from.154:                                 ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %.body44.from.154, %.body44.from.151
  %eh.lpad-body45 = phi { ptr, i32 } [ %i.af, %.body44.from.154 ], [ %i.k, %.body44.from.151 ], [ %i.k, %bb.e ]
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #37
  %.3 = extractvalue { ptr, i32 } %eh.lpad-body45, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %.3) #37 ; 0 uses
  invoke void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr199)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %.from.186

bb.l:                                             ; preds = %bb.k, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !90
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw add ptr %i.aj, i32 -1 acq_rel, align 4 ; 2 uses
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %bb.m, label %_ZN3tev5Latch9countDownEv.exit.i48

bb.m:                                             ; preds = %bb.l
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i52 unwind label %.from..loopexit.split-lp.i.i49

.noexc.i.i52:                                     ; preds = %bb.m
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !116 ; 7 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !127
  %i.ap = and i32 %i.ao, 8
  %.not.i.i.i.i53 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i53, label %bb.n, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit

bb.n:                                             ; preds = %.noexc.i.i52
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !128 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !129 ; 2 uses
  %.not12.i.i.i.i.i54 = icmp eq ptr %i.ar, %i.at
  br i1 %.not12.i.i.i.i.i54, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i55

.from..lr.ph.i.i.i.i.i55:                         ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  br label %.from..noexc2.i.i59

.from..noexc2.i.i59:                              ; preds = %.noexc2.i.i59, %.from..lr.ph.i.i.i.i.i55
  %.sroa.09.013.i.i.i.i.i56 = phi ptr [ %i.ar, %.from..lr.ph.i.i.i.i.i55 ], [ %i.bj, %.noexc2.i.i59 ] ; 2 uses
  %i.ay = load ptr, ptr %.sroa.09.013.i.i.i.i.i56, align 8, !tbaa !132 ; 2 uses
  %i.az = load i8, ptr %i.au, align 8             ; 2 uses
  %i.ba = trunc i8 %i.az to i1                    ; 2 uses
  %i.bb = load ptr, ptr %i.av, align 8
  %i.bc = select i1 %i.ba, ptr %i.bb, ptr %i.aw
  %i.bd = load i64, ptr %i.ax, align 8
  %i.be = lshr i8 %i.az, 1
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = select i1 %i.ba, i64 %i.bd, i64 %i.bf
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !80
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr %i.bc, i64 %i.bg, i32 noundef 8, ptr nonnull @.str.140, i64 36)
          to label %.noexc2.i.i59 unwind label %.from..loopexit.i.i57, !inline_history !2

.noexc2.i.i59:                                    ; preds = %.from..noexc2.i.i59
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i56, i64 16 ; 2 uses
  %.not.i.i.i.i.i60 = icmp eq ptr %i.bj, %i.at
  br i1 %.not.i.i.i.i.i60, label %_ZN3tev5Latch9countDownEv.exit.i48, label %.from..noexc2.i.i59

.from..loopexit.i.i57:                            ; preds = %.from..noexc2.i.i59
  %lpad.loopexit.i.i58 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

.from..loopexit.split-lp.i.i49:                   ; preds = %bb.m
  %lpad.loopexit.split-lp.i.i50 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.o:                                             ; preds = %.from..loopexit.split-lp.i.i49, %.from..loopexit.i.i57
  %lpad.phi.i.i51 = phi { ptr, i32 } [ %lpad.loopexit.i.i58, %.from..loopexit.i.i57 ], [ %lpad.loopexit.split-lp.i.i50, %.from..loopexit.split-lp.i.i49 ]
  %i.bk = extractvalue { ptr, i32 } %lpad.phi.i.i51, 0
  tail call void @__clang_call_terminate(ptr %i.bk) #42
  unreachable

_ZN3tev5Latch9countDownEv.exit.i48:               ; preds = %.noexc2.i.i59, %bb.l
  %i.bl = icmp slt i32 %i.ak, 2
  br i1 %i.bl, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i48, %bb.n, %.noexc.i.i52
  %i.bm = load ptr, ptr %i.ah, align 8, !tbaa !90
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !109 ; 2 uses
  %i.bo = inttoptr i64 %i.bn to ptr               ; 3 uses
  store ptr %i.bo, ptr %.reload.addr, align 8
  %.not.i61 = icmp eq i64 %i.bn, 0
  br i1 %.not.i61, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  store ptr null, ptr %0, align 16
  %index.addr201 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %index.addr201, align 8
  %i.bp = load ptr, ptr %i.bo, align 8
  musttail call void %i.bp(ptr nonnull %i.bo)
  ret void

bb.q:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

.from.186:                                        ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i48, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !91 ; 5 uses
  %.not.i.i62 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i62, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = atomicrmw add ptr %i.bu, i64 -1 acq_rel, align 8
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.s, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !80
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(24) %i.bt) #37, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt) #37
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.s, %bb.r, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr199) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #37
  ret void

bb.t:                                             ; preds = %bb.q, %.from.186
  %.pn31 = phi { ptr, i32 } [ %i.br, %.from.186 ], [ %i.bq, %bb.q ]
  store ptr null, ptr %0, align 16
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn31

bb.u:                                             ; preds = %bb.q
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  tail call void @__clang_call_terminate(ptr %i.cb) #42
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK3tev19Jpeg2000ImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy(ptr noundef nonnull align 16 dereferenceable(128) %0) #7 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 120
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread, !prof !1843

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit: ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #37
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !91  ; 5 uses
  %.not.i.i62 = icmp eq ptr %i.c, null
  br i1 %.not.i.i62, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #37, !inline_history !6
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #37
  br label %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E13final_suspendEv.exit.thread
  %.reload.addr199 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr199) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #37
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.rint.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #3

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind memory(none) }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind }
attributes #38 = { allocsize(0) }
attributes #39 = { builtin allocsize(0) }
attributes #40 = { noreturn }
attributes #41 = { builtin nounwind }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind allocsize(0) }

!llvm.module.flags = !{!63, !64, !65, !66}
!llvm.ident = !{!67}
!llvm.errno.tbaa = !{!72}

!0 = distinct !{!0, !103}
!1 = distinct !{null, null, null, null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null, null, null, null, null, null}
!5 = distinct !{null}
!6 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_ED2Ev, null, null, null}
!7 = distinct !{null}
!8 = distinct !{null, null, null, null, null, null}
!9 = distinct !{null, null, null, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!10 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev, null, null}
!11 = distinct !{null}
!12 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskINS_9ImageDataEEES2_ED2Ev, null, null, null}
!13 = distinct !{null, null, null}
!14 = distinct !{null}
!15 = distinct !{null, null, null, null, null, null}
!16 = distinct !{null}
!17 = distinct !{null, null}
!18 = distinct !{!18, !103}
!19 = distinct !{!19, !103}
!20 = distinct !{!20, !103}
!21 = distinct !{null, null}
!22 = distinct !{null, null, null}
!23 = distinct !{null, null}
!24 = distinct !{!24, !103}
!25 = distinct !{!25, !103}
!26 = distinct !{!26, !103}
!27 = distinct !{!27, !103}
!28 = distinct !{null, null}
!29 = distinct !{null, null}
!30 = distinct !{!30, !103}
!31 = distinct !{null}
!32 = distinct !{null}
!33 = distinct !{!33, !103}
!34 = distinct !{!34, !103}
!35 = distinct !{!35, !103}
!36 = distinct !{null, null, null, null}
!37 = distinct !{!37, !103}
!38 = distinct !{null, null}
!39 = distinct !{null}
!40 = distinct !{null, null}
!41 = distinct !{!41, !103}
!42 = distinct !{!42, !103}
!43 = distinct !{!43, !103}
!44 = distinct !{null}
!45 = distinct !{null, null, null, null}
!46 = distinct !{null, null, null}
!47 = distinct !{null}
!48 = distinct !{!48, !103}
!49 = distinct !{!49, !103}
!50 = distinct !{null, null, null, null}
!51 = distinct !{null, null, null, null, null}
!52 = distinct !{null, null}
!53 = distinct !{!53, !103}
!54 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev, null, null}
!55 = distinct !{null}
!56 = distinct !{!56, !103}
!57 = distinct !{!57, !103}
!58 = distinct !{ptr @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev, null, null, null}
!59 = distinct !{null, null, null}
!60 = distinct !{ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!61 = distinct !{null, null, ptr @_ZZN3tev10ThreadPool11enqueueTaskITkNSt3__19invocableERNS2_16coroutine_handleIvEEEEDaOT_ibENUlvE_D2Ev, ptr @_ZNSt3__110shared_ptrINS_13packaged_taskIFvvEEEED2B8ne180100Ev, null, null}
!62 = distinct !{null, null}
!63 = !{i32 1, !"long-double-type", !"x86_fp80"}
!64 = !{i32 8, !"PIC Level", i32 2}
!65 = !{i32 7, !"PIE Level", i32 2}
!66 = !{i32 7, !"uwtable", i32 2}
!67 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!68 = !{!"Simple C++ TBAA"}
!69 = !{!"omnipotent char", !68, i64 0}
!70 = !{!"int", !69, i64 0}
!71 = !{!"__libc_errno", !70, i64 0}
!72 = !{!71, !70, i64 0}
!73 = !{!"float", !69, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!69, !69, i64 0}
!76 = !{!70, !70, i64 0}
!77 = !{!"bool", !69, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"vtable pointer", !68, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"any pointer", !69, i64 0}
!82 = !{!"p1 _ZTSNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEEE", !81, i64 0}
!83 = !{!"_ZTSNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEEE", !82, i64 0}
!84 = !{!83, !82, i64 0}
!85 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIiEE", !69, i64 0}
!86 = !{!85, !69, i64 0}
!87 = !{!"p1 _ZTSN3tev15TaskSharedStateE", !81, i64 0}
!88 = !{!"p1 _ZTSNSt3__119__shared_weak_countE", !81, i64 0}
!89 = !{!"_ZTSNSt3__110shared_ptrIN3tev15TaskSharedStateEEE", !87, i64 0, !88, i64 8}
!90 = !{!89, !87, i64 0}
!91 = !{!89, !88, i64 8}
!92 = !{!"p1 omnipotent char", !81, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"long", !69, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"p1 _ZTSNSt3__14spanIKhLm18446744073709551615EEE", !81, i64 0}
!97 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_4spanIKhLm18446744073709551615EEELi0ELb0EEE", !96, i64 0}
!98 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEEE", !97, i64 0}
!99 = !{!"_ZTSNSt3__16vectorINS_4spanIKhLm18446744073709551615EEENS_9allocatorIS3_EEEE", !96, i64 0, !96, i64 8, !98, i64 16}
!100 = !{!99, !96, i64 8}
!101 = !{!99, !96, i64 0}
!102 = !{i64 0, i64 8, !93, i64 8, i64 8, !95}
!103 = !{!"llvm.loop.mustprogress"}
!104 = !{!96, !96, i64 0}
!105 = !{!"_ZTS12CODEC_FORMAT", !69, i64 0}
!106 = !{!105, !105, i64 0}
!107 = !{!"_ZTSNSt3__124__optional_destruct_baseIN3tev12Jp2ColorInfoELb1EEE", !69, i64 0, !77, i64 24}
!108 = !{!107, !77, i64 24}
!109 = !{!81, !81, i64 0}
!110 = !{!"p1 _ZTSNSt3__18optionalIN3tev12Jp2ColorInfoEEE", !81, i64 0}
!111 = !{!"p1 int", !81, i64 0}
!112 = !{!111, !111, i64 0}
!113 = !{!"p1 bool", !81, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!"p1 _ZTSN4tlog6LoggerE", !81, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!"_ZTSN4tlog9ESeverityE", !69, i64 0}
!118 = !{!"p1 _ZTSNSt3__110shared_ptrIN4tlog7IOutputEEE", !81, i64 0}
!119 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_10shared_ptrIN4tlog7IOutputEEELi0ELb0EEE", !118, i64 0}
!120 = !{!"_ZTSNSt3__117__compressed_pairIPNS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !119, i64 0}
!121 = !{!"_ZTSNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEE", !118, i64 0, !118, i64 8, !120, i64 16}
!122 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !69, i64 0}
!123 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !122, i64 0}
!124 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !123, i64 0}
!125 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !124, i64 0}
!126 = !{!"_ZTSN4tlog6LoggerE", !117, i64 0, !121, i64 8, !125, i64 32}
!127 = !{!126, !117, i64 0}
!128 = !{!121, !118, i64 0}
!129 = !{!121, !118, i64 8}
!130 = !{!"p1 _ZTSN4tlog7IOutputE", !81, i64 0}
!131 = !{!"_ZTSNSt3__110shared_ptrIN4tlog7IOutputEEE", !130, i64 0, !88, i64 8}
!132 = !{!131, !130, i64 0}
!133 = !{!"_ZTSNSt3__124__optional_destruct_baseIN3tev6Jp2BoxELb1EEE", !69, i64 0, !77, i64 32}
!134 = !{!133, !77, i64 32}
!135 = !{i8 0, i8 2}
!136 = !{}
!137 = !{!"_ZTSNSt3__14spanIKhLm18446744073709551615EEE", !92, i64 0, !94, i64 8}
!138 = !{!137, !94, i64 8}
!139 = !{!137, !92, i64 0}
!140 = !{!"_ZTSNSt3__124__optional_destruct_baseIN3tev13AttributeNodeELb0EEE", !69, i64 0, !77, i64 96}
!141 = !{!140, !77, i64 96}
!142 = !{i64 0, i64 24, !75}
end_hunk_5
