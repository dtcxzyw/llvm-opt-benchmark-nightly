Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Format?download=true
inline.NumInlined: 2530
inline.NumDeleted: 819
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0
@.str.4 = private unnamed_addr constant [8 x i8] c"{:.{}F}\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"{:.{}e}\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"{:.{}E}\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"{:.{}g}\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"{:.{}G}\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"float conversion failed\00", align 1
@_ZTIN5folly12BadFormatArgE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly12BadFormatArgE, ptr @_ZTISt16invalid_argument }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly12BadFormatArgE = linkonce_odr constant [23 x i8] c"N5folly12BadFormatArgE\00", comdat, align 1
@_ZTISt16invalid_argument = external constant ptr
@_ZTVN5folly12BadFormatArgE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly12BadFormatArgE, ptr @_ZNSt16invalid_argumentD2Ev, ptr @_ZN5folly12BadFormatArgD0Ev, ptr @_ZNKSt11logic_error4whatEv] }, comdat, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid format argument {\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"}: \00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVN3fmt2v96detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEEE = linkonce_odr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTIN3fmt2v96detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEEE, ptr @_ZN3fmt2v96detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEE4growEm] }, comdat, align 8
@_ZTIN3fmt2v96detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEEE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN3fmt2v96detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEEE, i32 0, i32 2, ptr @_ZTIN3fmt2v96detail19fixed_buffer_traitsE, i64 8194, ptr @_ZTIN3fmt2v96detail6bufferIcEE, i64 2 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN3fmt2v96detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEEE = linkonce_odr constant [65 x i8] c"N3fmt2v96detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEEE\00", comdat, align 1
@_ZTIN3fmt2v96detail19fixed_buffer_traitsE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3fmt2v96detail19fixed_buffer_traitsE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN3fmt2v96detail19fixed_buffer_traitsE = linkonce_odr constant [38 x i8] c"N3fmt2v96detail19fixed_buffer_traitsE\00", comdat, align 1
@_ZTIN3fmt2v96detail6bufferIcEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3fmt2v96detail6bufferIcEE }, comdat, align 8
@_ZTSN3fmt2v96detail6bufferIcEE = linkonce_odr constant [27 x i8] c"N3fmt2v96detail6bufferIcEE\00", comdat, align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@_ZZN3fmt2v96detail15do_count_digitsEjE5table.const = private unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], align 16
@.str.16 = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 1
@_ZZN3fmt2v96detail15do_count_digitsEmE9bsr2log10.const = private unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", align 16
@_ZZN3fmt2v96detail15do_count_digitsEmE20zero_or_powers_of_10.const = private unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], align 16
@.str.18 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"invalid type specifier\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@_ZTVN3fmt2v919basic_memory_bufferIiLm500ESaIiEEE = linkonce_odr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTIN3fmt2v919basic_memory_bufferIiLm500ESaIiEEE, ptr @_ZN3fmt2v919basic_memory_bufferIiLm500ESaIiEE4growEm] }, comdat, align 8
@_ZTIN3fmt2v919basic_memory_bufferIiLm500ESaIiEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt2v919basic_memory_bufferIiLm500ESaIiEEE, ptr @_ZTIN3fmt2v96detail6bufferIiEE }, comdat, align 8
@_ZTSN3fmt2v919basic_memory_bufferIiLm500ESaIiEEE = linkonce_odr constant [45 x i8] c"N3fmt2v919basic_memory_bufferIiLm500ESaIiEEE\00", comdat, align 1
@_ZTIN3fmt2v96detail6bufferIiEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3fmt2v96detail6bufferIiEE }, comdat, align 8
@_ZTSN3fmt2v96detail6bufferIiEE = linkonce_odr constant [27 x i8] c"N3fmt2v96detail6bufferIiEE\00", comdat, align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"\00-+ \00", align 1
@_ZTVN3fmt2v919basic_memory_bufferIcLm500ESaIcEEE = linkonce_odr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTIN3fmt2v919basic_memory_bufferIcLm500ESaIcEEE, ptr @_ZN3fmt2v919basic_memory_bufferIcLm500ESaIcEE4growEm] }, comdat, align 8
@_ZTIN3fmt2v919basic_memory_bufferIcLm500ESaIcEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt2v919basic_memory_bufferIcLm500ESaIcEEE, ptr @_ZTIN3fmt2v96detail6bufferIcEE }, comdat, align 8
@_ZTSN3fmt2v919basic_memory_bufferIcLm500ESaIcEEE = linkonce_odr constant [45 x i8] c"N3fmt2v919basic_memory_bufferIcLm500ESaIcEEE\00", comdat, align 1
@__const._ZN3fmt2v96detail5writeIcNS0_8appenderEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S8_S5_.specs = private unnamed_addr constant { i32, i32, i8, i8, i8, %"struct.fmt::v9::detail::fill_t" } { i32 0, i32 -1, i8 0, i8 0, i8 0, %"struct.fmt::v9::detail::fill_t" { [4 x i8] c" \00\00\00", i8 1 } }, align 4
@.str.31 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE = linkonce_odr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTIN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE, ptr @_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE4growEm] }, comdat, align 8
@_ZTIN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE, ptr @_ZTIN3fmt2v96detail6bufferIjEE }, comdat, align 8
@_ZTSN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE = linkonce_odr constant [44 x i8] c"N3fmt2v919basic_memory_bufferIjLm32ESaIjEEE\00", comdat, align 1
@_ZTIN3fmt2v96detail6bufferIjEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3fmt2v96detail6bufferIjEE }, comdat, align 8
@_ZTSN3fmt2v96detail6bufferIjEE = linkonce_odr constant [27 x i8] c"N3fmt2v96detail6bufferIjEE\00", comdat, align 1
@_ZTIN3fmt2v912format_errorE = external constant ptr
@_ZTVN3fmt2v912format_errorE = external constant { [5 x ptr] }, align 8
@.str.36 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.41 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.42 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"invalid fill\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"format specifier requires signed argument\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"negative width\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"width is not integer\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"missing precision specifier\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"negative precision\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"precision is not integer\00", align 1
@.str.53 = private unnamed_addr constant [45 x i8] c"precision not allowed for this argument type\00", align 1
@__const._ZN3fmt2v96detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.54 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@_ZN3fmt2v96detail10basic_dataIvE18pow10_significandsE = linkonce_odr local_unnamed_addr constant [87 x i64] [i64 -391859759250406776, i64 -4994806998408183946, i64 -8424269937281487754, i64 -3512093806901185046, i64 -7319562523736982739, i64 -1865951482774665761, i64 -6093090917745768758, i64 -38366372719436721, i64 -4731433901725329908, i64 -8228041688891786180, i64 -3219690930897053053, i64 -7101705404292871755, i64 -1541319077368263733, i64 -5851220927660403859, i64 -9062348037703676329, i64 -4462904269766699465, i64 -8027971522334779313, i64 -2921563150702462265, i64 -6879582898840692748, i64 -1210330751515841307, i64 -5604615407819967858, i64 -8878612607581929669, i64 -4189117143640191558, i64 -7823984217374209642, i64 -2617598379430861436, i64 -6653111496142234890, i64 -872862063775190746, i64 -5353181642124984136, i64 -8691279853972075893, i64 -3909969587797413805, i64 -7616003081050118571, i64 -2307682335666372931, i64 -6422206049907525489, i64 -528786136287117932, i64 -5096825099203863601, i64 -8500279345513818773, i64 -3625356651333078602, i64 -7403949918844649556, i64 -1991698500497491194, i64 -6186779746782440749, i64 -177973607073265138, i64 -4835449396872013077, i64 -8305539271883716404, i64 -3335171328526686932, i64 -7187745005283311616, i64 -1669528073709551616, i64 -5946744073709551616, i64 -9133518327554766460, i64 -4568956265895094861, i64 -8106986416796705680, i64 -3039304518611664792, i64 -6967307053960650171, i64 -1341049929119499481, i64 -5702008784649933400, i64 -8951176327949752869, i64 -4297245513042813542, i64 -7904546130479028392, i64 -2737644984756826646, i64 -6742553186979055798, i64 -1006140569036166267, i64 -5452481866653427593, i64 -8765264286586255934, i64 -4020214983419339459, i64 -7698142301602209613, i64 -2430079312244744221, i64 -6513398903789220827, i64 -664674077828931748, i64 -5198069505264599346, i64 -8575712306248138270, i64 -3737760522056206171, i64 -7487697328667536417, i64 -2116491865831296966, i64 -6279758049420528746, i64 -316522074587315140, i64 -4938676049251384304, i64 -8382449121214030822, i64 -3449775934753242068, i64 -7273132090830278359, i64 -1796764746270372707, i64 -6041542782089432023, i64 -9204148869281624187, i64 -4674203974643163859, i64 -8185402070463610993, i64 -3156152948152813503, i64 -7054365918152680535, i64 -1470777745987373095, i64 -5798663540173640085], comdat, align 16
@_ZN3fmt2v96detail10basic_dataIvE15pow10_exponentsE = linkonce_odr local_unnamed_addr constant [87 x i16] [i16 -1220, i16 -1193, i16 -1166, i16 -1140, i16 -1113, i16 -1087, i16 -1060, i16 -1034, i16 -1007, i16 -980, i16 -954, i16 -927, i16 -901, i16 -874, i16 -847, i16 -821, i16 -794, i16 -768, i16 -741, i16 -715, i16 -688, i16 -661, i16 -635, i16 -608, i16 -582, i16 -555, i16 -529, i16 -502, i16 -475, i16 -449, i16 -422, i16 -396, i16 -369, i16 -343, i16 -316, i16 -289, i16 -263, i16 -236, i16 -210, i16 -183, i16 -157, i16 -130, i16 -103, i16 -77, i16 -50, i16 -24, i16 3, i16 30, i16 56, i16 83, i16 109, i16 136, i16 162, i16 189, i16 216, i16 242, i16 269, i16 295, i16 322, i16 348, i16 375, i16 402, i16 428, i16 455, i16 481, i16 508, i16 534, i16 561, i16 588, i16 614, i16 641, i16 667, i16 694, i16 720, i16 747, i16 774, i16 800, i16 827, i16 853, i16 880, i16 907, i16 933, i16 960, i16 986, i16 1013, i16 1039, i16 1066], comdat, align 16
@_ZN3fmt2v96detail10basic_dataIvE14power_of_10_64E.const = private unnamed_addr constant [20 x i64] [i64 1, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], align 16
@__const._ZN3fmt2v96detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt2v96detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt2v96detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt2v96detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E = linkonce_odr local_unnamed_addr global { i8 } zeroinitializer, comdat, align 1
@_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv = linkonce_odr local_unnamed_addr global i8 0, comdat, align 1
@_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv = linkonce_odr global i64 0, comdat, align 8
@_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E = linkonce_odr local_unnamed_addr global { i8 } zeroinitializer, comdat, align 1
@_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv = linkonce_odr local_unnamed_addr global i8 0, comdat, align 1
@_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv = linkonce_odr global i64 0, comdat, align 8
@_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E = linkonce_odr local_unnamed_addr global { i8 } zeroinitializer, comdat, align 1
@_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv = linkonce_odr local_unnamed_addr global i8 0, comdat, align 1
@_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv = linkonce_odr global i64 0, comdat, align 8
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZTISt9exception = external constant ptr
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@_ZN5folly6detailL16formatAlignTableE = internal unnamed_addr constant %"struct.std::array.119" { [256 x i8] c"\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\01\03\02\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05" }, align 1
@_ZN5folly6detailL15formatSignTableE = internal unnamed_addr constant %"struct.std::array.120" { [256 x i8] c"\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\03\04\04\04\04\04\04\04\04\04\04\01\04\02\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04" }, align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"alignment specified twice\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"extra characters in format string\00", align 1
@_ZTIN5folly17BadExpectedAccessIvEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly17BadExpectedAccessIvEE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN5folly17BadExpectedAccessIvEE = linkonce_odr constant [31 x i8] c"N5folly17BadExpectedAccessIvEE\00", comdat, align 1
@_ZTVN5folly17BadExpectedAccessIvEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly17BadExpectedAccessIvEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly17BadExpectedAccessIvED0Ev, ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv] }, comdat, align 8
@.str.61 = private unnamed_addr constant [20 x i8] c"bad expected access\00", align 1
@_ZTIN5folly15ConversionErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly15ConversionErrorE, ptr @_ZTIN5folly19ConversionErrorBaseE }, comdat, align 8
@_ZTSN5folly15ConversionErrorE = linkonce_odr constant [26 x i8] c"N5folly15ConversionErrorE\00", comdat, align 1
@_ZTIN5folly19ConversionErrorBaseE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly19ConversionErrorBaseE, ptr @_ZTISt11range_error }, comdat, align 8
@_ZTSN5folly19ConversionErrorBaseE = linkonce_odr constant [30 x i8] c"N5folly19ConversionErrorBaseE\00", comdat, align 1
@_ZTISt11range_error = external constant ptr
@_ZTVN5folly15ConversionErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly15ConversionErrorE, ptr @_ZNSt11range_errorD2Ev, ptr @_ZN5folly15ConversionErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTIN5folly17BadExpectedAccessINS_14ConversionCodeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly17BadExpectedAccessINS_14ConversionCodeEEE, ptr @_ZTIN5folly17BadExpectedAccessIvEE }, comdat, align 8
@_ZTSN5folly17BadExpectedAccessINS_14ConversionCodeEEE = linkonce_odr constant [50 x i8] c"N5folly17BadExpectedAccessINS_14ConversionCodeEEE\00", comdat, align 1
@_ZTVN5folly17BadExpectedAccessINS_14ConversionCodeEEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly17BadExpectedAccessINS_14ConversionCodeEEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly17BadExpectedAccessINS_14ConversionCodeEED0Ev, ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv] }, comdat, align 8
@.str.62 = private unnamed_addr constant [18 x i8] c"index not allowed\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"precision not allowed on integers\00", align 1
@.str.64 = private unnamed_addr constant [53 x i8] c"base prefix ('#') specifier only allowed on integers\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"thousands separator (',') only allowed on integers\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"'='alignment only allowed on numbers\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"sign specifier only allowed on numbers\00", align 1
@_ZTVN5folly26FormatKeyNotFoundExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly26FormatKeyNotFoundExceptionE, ptr @_ZNSt12out_of_rangeD2Ev, ptr @_ZN5folly26FormatKeyNotFoundExceptionD0Ev, ptr @_ZNKSt11logic_error4whatEv] }, comdat, align 8
@_ZTIN5folly26FormatKeyNotFoundExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly26FormatKeyNotFoundExceptionE, ptr @_ZTISt12out_of_range }, comdat, align 8
@_ZTSN5folly26FormatKeyNotFoundExceptionE = linkonce_odr constant [37 x i8] c"N5folly26FormatKeyNotFoundExceptionE\00", comdat, align 1
@_ZTISt12out_of_range = external constant ptr
@.str.69 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"format key not found: \00", align 1
@.str.72 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@switch.table._ZN3fmt2v96detail23parse_presentation_typeIcEENS0_17presentation_typeET_ = private unnamed_addr constant [58 x i8] c"\12\00\08\06\00\00\0A\0C\0E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\07\05\0F\01\09\0B\0D\00\00\00\00\00\00\00\02\11\00\00\10\00\00\00\00\03", align 1

@_ZN5folly26FormatKeyNotFoundExceptionC1ENS_5RangeIPKcEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN5folly26FormatKeyNotFoundExceptionC2ENS_5RangeIPKcEE

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11FormatValueIdvE12formatHelperERNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEERiRNS_9FormatArgE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(84) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v9::detail::iterator_buffer", align 8 ; 10 uses
  %5 = alloca %"class.fmt::v9::detail::iterator_buffer", align 8 ; 10 uses
  %6 = alloca %"class.fmt::v9::detail::iterator_buffer", align 8 ; 10 uses
  %7 = alloca %"class.fmt::v9::detail::iterator_buffer", align 8 ; 10 uses
  %8 = alloca %"class.fmt::v9::detail::iterator_buffer", align 8 ; 10 uses
  %9 = alloca %"class.fmt::v9::detail::iterator_buffer", align 8 ; 10 uses
  %10 = alloca %"class.fmt::v9::detail::iterator_buffer", align 8 ; 10 uses
  %11 = alloca %"class.fmt::v9::format_arg_store.109", align 16 ; 5 uses
  %12 = alloca %"class.fmt::v9::format_arg_store.109", align 16 ; 5 uses
  %13 = alloca %"class.fmt::v9::format_arg_store.109", align 16 ; 5 uses
  %14 = alloca %"class.fmt::v9::format_arg_store.109", align 16 ; 5 uses
  %15 = alloca %"class.fmt::v9::format_arg_store.109", align 16 ; 5 uses
  %16 = alloca %"class.fmt::v9::format_arg_store.109", align 16 ; 5 uses
  %17 = alloca %"class.fmt::v9::format_arg_store", align 16 ; 4 uses
  %18 = alloca %"struct.std::array.5", align 1    ; 20 uses
  %19 = alloca %"class.folly::basic_fbstring", align 8 ; 4 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %i.i, label %_ZNK5folly9FormatArg7enforceIbJRA18_KcEEEvRKT_DpOT0_.exit.i, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5folly9FormatArg5errorIJRA18_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 1 dereferenceable(18) @.str.62) #32
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA18_KcEEEvRKT_DpOT0_.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.k = load i8, ptr %i.j, align 1, !tbaa !22, !range !23, !noundef !24
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %_ZNK5folly9FormatArg7enforceIbJRA53_KcEEEvRKT_DpOT0_.exit.i, !prof !25

bb.c:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA18_KcEEEvRKT_DpOT0_.exit.i
  tail call void @_ZNK5folly9FormatArg5errorIJRA53_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 1 dereferenceable(53) @.str.64) #32
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA53_KcEEEvRKT_DpOT0_.exit.i: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA18_KcEEEvRKT_DpOT0_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.n = load i8, ptr %i.m, align 4, !tbaa !26, !range !23, !noundef !24
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_ZNK5folly9FormatArg8validateENS0_4TypeE.exit, !prof !25

bb.d:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA53_KcEEEvRKT_DpOT0_.exit.i
  tail call void @_ZNK5folly9FormatArg5errorIJRA51_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 1 dereferenceable(51) @.str.65) #32
  unreachable

_ZNK5folly9FormatArg8validateENS0_4TypeE.exit:    ; preds = %_ZNK5folly9FormatArg7enforceIbJRA53_KcEEEvRKT_DpOT0_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 4 uses
  %i.q = load i8, ptr %i.p, align 4, !tbaa !27    ; 3 uses
  %i.r = icmp eq i8 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28   ; 3 uses
  %i.u = icmp eq i32 %i.t, -1                     ; 2 uses
  br i1 %i.r, label %bb.e, label %.thread204

bb.e:                                             ; preds = %_ZNK5folly9FormatArg8validateENS0_4TypeE.exit
  store i8 103, ptr %i.p, align 4, !tbaa !27
  br label %.thread204.thread.a

.thread204:                                       ; preds = %_ZNK5folly9FormatArg8validateENS0_4TypeE.exit
  br i1 %i.u, label %bb.f, label %.thread204.thread.a

bb.f:                                             ; preds = %.thread204
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 6, ptr %i.v, align 8, !tbaa !28
  br label %.thread204.thread.a

.thread204.thread.a:                              ; preds = %bb.e, %bb.f, %.thread204
  %21 = phi i32 [ 6, %bb.f ], [ %i.t, %.thread204 ], [ %i.t, %bb.e ] ; 7 uses
  %22 = phi i8 [ %i.q, %bb.f ], [ %i.q, %.thread204 ], [ 103, %bb.e ] ; 7 uses
  %23 = phi i1 [ false, %bb.f ], [ false, %.thread204 ], [ %i.u, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.x = load i8, ptr %i.w, align 2, !tbaa !29
  switch i8 %i.x, label %bb.h [
    i8 1, label %bb.i
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %.thread204.thread.a
  br label %bb.i

bb.h:                                             ; preds = %.thread204.thread.a
  br label %bb.i

bb.i:                                             ; preds = %.thread204.thread.a, %bb.h, %bb.g
  %.not99 = phi i1 [ true, %bb.h ], [ false, %bb.g ], [ false, %.thread204.thread.a ]
  %.0 = phi i8 [ 0, %bb.h ], [ 32, %bb.g ], [ 43, %.thread204.thread.a ]
  %i.y = load double, ptr %0, align 8, !tbaa !30  ; 7 uses
  switch i8 %22, label %bb.q [
    i8 37, label %bb.j
    i8 102, label %bb.k
    i8 70, label %bb.k
    i8 101, label %bb.l
    i8 69, label %bb.l
    i8 110, label %bb.m
    i8 103, label %bb.n
    i8 71, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.z = fmul double %i.y, 1.000000e+02
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.i
  %.0202 = phi double [ %i.z, %bb.j ], [ %i.y, %bb.i ], [ %i.y, %bb.i ] ; 2 uses
  %.091 = phi i1 [ true, %bb.j ], [ false, %bb.i ], [ false, %bb.i ] ; 2 uses
  %.090 = phi i8 [ 102, %bb.j ], [ %22, %bb.i ], [ %22, %bb.i ] ; 2 uses
  %i.aa = icmp sgt i32 %21, 100
  br i1 %i.aa, label %.sink.split, label %bb.r

bb.l:                                             ; preds = %bb.i, %bb.i
  %i.ab = icmp sgt i32 %21, 120
  br i1 %i.ab, label %.sink.split, label %bb.r

bb.m:                                             ; preds = %bb.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i, %bb.i
  %.1 = phi i8 [ 103, %bb.m ], [ %22, %bb.i ], [ %22, %bb.i ]
  br i1 %23, label %.thread214, label %bb.o

.thread214:                                       ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %18, i8 0, i64 256, i1 false)
  br label %_ZN3fmt2v912vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE.exit

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = icmp slt i32 %21, 1
  br i1 %i.ad, label %.thread205.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = icmp samesign ugt i32 %21, 120
  br i1 %i.ae, label %.thread205.sink.split, label %.thread205

bb.q:                                             ; preds = %bb.i
  tail call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 1 dereferenceable(20) @.str, ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 1 dereferenceable(2) @.str.1) #32
  unreachable

.thread205.sink.split:                            ; preds = %bb.p, %bb.o
  %.sink = phi i32 [ 1, %bb.o ], [ 120, %bb.p ]   ; 2 uses
  store i32 %.sink, ptr %i.ac, align 8, !tbaa !28
  br label %.thread205

.thread205:                                       ; preds = %.thread205.sink.split, %bb.p
  %i.af = phi i32 [ %21, %bb.p ], [ %.sink, %.thread205.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %18, i8 0, i64 256, i1 false)
  br label %bb.s

.sink.split:                                      ; preds = %bb.l, %bb.k
  %.sink234 = phi i32 [ 100, %bb.k ], [ 120, %bb.l ] ; 2 uses
  %.1203.ph = phi double [ %.0202, %bb.k ], [ %i.y, %bb.l ]
  %.192.ph = phi i1 [ %.091, %bb.k ], [ false, %bb.l ]
  %.2.ph = phi i8 [ %.090, %bb.k ], [ %22, %bb.l ]
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %.sink234, ptr %i.ag, align 8, !tbaa !28
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.l, %bb.k
  %i.ah = phi i32 [ %21, %bb.l ], [ %21, %bb.k ], [ %.sink234, %.sink.split ]
  %.1203 = phi double [ %i.y, %bb.l ], [ %.0202, %bb.k ], [ %.1203.ph, %.sink.split ] ; 2 uses
  %.192 = phi i1 [ false, %bb.l ], [ %.091, %bb.k ], [ %.192.ph, %.sink.split ] ; 2 uses
  %.2 = phi i8 [ %22, %bb.l ], [ %.090, %bb.k ], [ %.2.ph, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %18, i8 0, i64 256, i1 false)
  br i1 %23, label %_ZN3fmt2v912vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE.exit, label %bb.s

_ZN3fmt2v912vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE.exit: ; preds = %.thread214, %bb.r
  %.192219 = phi i1 [ false, %.thread214 ], [ %.192, %bb.r ]
  %.1203218 = phi double [ %i.y, %.thread214 ], [ %.1203, %bb.r ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  %i.aj = bitcast double %.1203218 to i64
  %.sroa.01.sroa.0.0.insert.ext.i = zext i64 %i.aj to i128
  store i128 %.sroa.01.sroa.0.0.insert.ext.i, ptr %17, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 254, ptr %i.al, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i64 0, ptr %i.an, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 254, ptr %i.ao, align 8, !tbaa !40
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v96detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEEE, i64 16), ptr %10, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.ai, ptr %i.ap, align 8, !tbaa !43
  call void @_ZN3fmt2v96detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS4_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS3_ISE_EEEE4typeESE_EEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.2, i64 2, i64 10, ptr nonnull %17, ptr null)
  %i.aq = load i64, ptr %i.an, align 8, !tbaa !39
  %i.ar = load i64, ptr %i.ak, align 8, !tbaa !33
  %i.as = add i64 %i.ar, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  br label %bb.u

bb.s:                                             ; preds = %.thread205, %bb.r
  %i.at = phi i32 [ %i.af, %.thread205 ], [ %i.ah, %bb.r ] ; 6 uses
  %.2213 = phi i8 [ %.1, %.thread205 ], [ %.2, %bb.r ]
  %.192212 = phi i1 [ false, %.thread205 ], [ %.192, %bb.r ] ; 6 uses
  %.1203210 = phi double [ %i.y, %.thread205 ], [ %.1203, %bb.r ] ; 12 uses
  switch i8 %.2213, label %bb.t [
    i8 102, label %_ZN3fmt2v912vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE.exit138
    i8 70, label %_ZN3fmt2v912vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE.exit144
    i8 101, label %_ZN3fmt2v912vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE.exit150
    i8 69, label %_ZN3fmt2v912vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE.exit156
    i8 103, label %_ZN3fmt2v912vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE.exit162
    i8 71, label %_ZN3fmt2v912vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE.exit168
  ]

_ZN3fmt2v912vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE.exit138: ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.av = bitcast double %.1203210 to i64
  %.sroa.06.0.insert.ext.i = zext i32 %i.at to i128
  %.sroa.02.sroa.0.0.insert.ext.i = zext i64 %i.av to i128
  store i128 %.sroa.02.sroa.0.0.insert.ext.i, ptr %11, align 16, !tbaa !45, !alias.scope !46
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i128 %.sroa.06.0.insert.ext.i, ptr %i.aw, align 16, !tbaa !45, !alias.scope !46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 254, ptr %i.ay, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.au, ptr %i.az, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 254, ptr %i.bb, align 8, !tbaa !40
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v96detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEEE, i64 16), ptr %9, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %i.au, ptr %i.bc, align 8, !tbaa !43
  call void @_ZN3fmt2v96detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS4_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS3_ISE_EEEE4typeESE_EEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr nonnull @.str.3, i64 7, i64 26, ptr nonnull %11, ptr null)
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !39
  %i.be = load i64, ptr %i.ax, align 8, !tbaa !33
  %i.bf = add i64 %i.be, %i.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.u

_ZN3fmt2v912vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE.exit144: ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.bh = bitcast double %.1203210 to i64
  %.sroa.06.0.insert.ext.i139 = zext i32 %i.at to i128
  %.sroa.02.sroa.0.0.insert.ext.i140 = zext i64 %i.bh to i128
  store i128 %.sroa.02.sroa.0.0.insert.ext.i140, ptr %12, align 16, !tbaa !45, !alias.scope !49
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i128 %.sroa.06.0.insert.ext.i139, ptr %i.bi, align 16, !tbaa !45, !alias.scope !49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i64 0, ptr %i.bj, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 254, ptr %i.bk, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bg, ptr %i.bl, align 8, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 254, ptr %i.bn, align 8, !tbaa !40
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v96detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEEE, i64 16), ptr %8, align 8, !tbaa !41
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.bg, ptr %i.bo, align 8, !tbaa !43
  call void @_ZN3fmt2v96detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS4_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS3_ISE_EEEE4typeESE_EEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.4, i64 7, i64 26, ptr nonnull %12, ptr null)
  %i.bp = load i64, ptr %i.bm, align 8, !tbaa !39
  %i.bq = load i64, ptr %i.bj, align 8, !tbaa !33
  %i.br = add i64 %i.bq, %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
end_hunk_0
