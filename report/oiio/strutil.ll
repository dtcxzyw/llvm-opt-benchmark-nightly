Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/strutil?download=true
inline.NumInlined: 4879
inline.NumDeleted: 1465
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 52
begin_hunk_0
%"class.fmt::v12::detail::buffer.79" = type { ptr, i64, i64, ptr }
%class.anon.82 = type <{ i32, [4 x i8], %"struct.fmt::v12::detail::big_decimal_fp", i32, i8, [3 x i8], i32, i8, [3 x i8], i32, [4 x i8] }>
%class.anon.85 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.86 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.fmt::v12::detail::thousands_sep_result" = type <{ %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"struct.fmt::v12::detail::write_int_arg.58" = type { i128, i32 }
%"struct.fmt::v12::detail::dynamic_format_specs" = type { %"struct.fmt::v12::format_specs", %"union.fmt::v12::detail::arg_ref", %"union.fmt::v12::detail::arg_ref" }
%"union.fmt::v12::detail::arg_ref" = type { %"class.fmt::v12::basic_string_view" }
%"struct.fmt::v12::detail::dynamic_spec_handler" = type { ptr, ptr, ptr }
%class.anon.94 = type { i32, %"struct.fmt::v12::detail::dragonbox::decimal_fp", i32, i8, i32, i8, i32 }
%class.anon.96 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.97 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.102 = type <{ i32, [4 x i8], %"struct.fmt::v12::detail::dragonbox::decimal_fp.72", i32, i8, [3 x i8], i32, i8, [3 x i8], i32, [4 x i8] }>
%class.anon.105 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.106 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.107 = type { ptr, ptr, ptr, ptr, ptr }
%class.anon.108 = type { i8, i64, %"class.fmt::v12::basic_string_view" }
%class.anon.111 = type { %class.anon.107 }
%"class.fmt::v12::detail::counting_buffer" = type { %"class.fmt::v12::detail::buffer", [256 x i8], i64 }
%"class.fmt::v12::basic_printf_context" = type { %"class.fmt::v12::basic_appender", %"class.fmt::v12::basic_format_args.131" }
%"class.fmt::v12::basic_format_args.131" = type { i64, %union.anon.132 }
%union.anon.132 = type { ptr }
%"class.fmt::v12::detail::printf_arg_formatter" = type { %"struct.fmt::v12::detail::arg_formatter", ptr }
%"struct.fmt::v12::detail::arg_formatter" = type { %"class.fmt::v12::basic_appender", ptr, %"class.fmt::v12::locale_ref" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }

@_ZL13stbsp__period = internal unnamed_addr global i8 46, align 1
@_ZL12stbsp__comma = internal unnamed_addr global i8 44, align 1
@_ZZ21oiio_stbsp_vsprintfcbE3hex = internal unnamed_addr constant [19 x i8] c"0123456789abcdefxp\00", align 16
@_ZZ21oiio_stbsp_vsprintfcbE4hexu = internal unnamed_addr constant [19 x i8] c"0123456789ABCDEFXP\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"_KMGT\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_kMGT\00", align 1
@_ZL16stbsp__digitpair = internal unnamed_addr constant %struct.anon { i16 0, [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00" }, align 2
@_ZN11OpenImageIO4v3_13pvtL14oiio_debug_envE = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"OPENIMAGEIO_DEBUG\00", align 1
@_ZN11OpenImageIO4v3_13pvt16oiio_print_debugE = local_unnamed_addr global i32 0, align 4
@_ZN11OpenImageIO4v3_13pvt26oiio_print_uncaught_errorsE = local_unnamed_addr global i32 1, align 4
@_ZN11OpenImageIO4v3_112_GLOBAL__N_15c_locE = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN11OpenImageIO4v3_1L16error_msg_holderE = internal thread_local global %"struct.OpenImageIO::v3_1::ErrorHolder" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [35 x i8] c"%s:%u: %s: Assertion '%s' failed.\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/oiio/OpenImageIO/src/libutil/strutil.cpp\00", align 1
@__FUNCTION__._ZN11OpenImageIO4v3_17Strutil3pvt12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE = private unnamed_addr constant [13 x i8] c"append_error\00", align 1
@.str.12 = private unnamed_addr constant [103 x i8] c"error_msg.size() < 1024 * 1024 * 16 && \22Accumulated error messages > 16MB. Try checking return codes!\22\00", align 1
@_ZZN11OpenImageIO4v3_17Strutil3pvt5debugENS0_17basic_string_viewIcSt11char_traitsIcEEEE11debug_mutex = internal global { %union.pthread_mutex_t } zeroinitializer, align 8
@_ZZN11OpenImageIO4v3_17Strutil3pvt5debugENS0_17basic_string_viewIcSt11char_traitsIcEEEE15oiio_debug_file = internal unnamed_addr global ptr null, align 8
@.str.13 = private unnamed_addr constant [23 x i8] c"OPENIMAGEIO_DEBUG_FILE\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@__FUNCTION__._ZN11OpenImageIO4v3_17Strutil3pvt5debugENS0_17basic_string_viewIcSt11char_traitsIcEEE = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"oiio_debug_file\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"OIIO DEBUG: {}\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"ENCODING ERROR\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"{} KB\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"{} B\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%1.*f %s\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"{}d {}h \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"{}h \00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"%dm %1.*fs\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"%1.*fs\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"\\\\?\\\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c" \09\0A\0D\0C\0B\00", align 1
@_ZTISt9exception = external constant ptr
@__FUNCTION__._ZN11OpenImageIO4v3_17Strutil12parse_nestedERNS0_17basic_string_viewIcSt11char_traitsIcEEEb = private unnamed_addr constant [13 x i8] c"parse_nested\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"p[len - 1] == closing\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8
@.str.41 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"Inf\00", align 1
@_ZL13stbsp__powten = internal unnamed_addr constant [20 x i64] [i64 1, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], align 16
@_ZL10stbsp__bot = internal unnamed_addr constant [23 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08, double 1.000000e+09, double 1.000000e+10, double 1.000000e+11, double 1.000000e+12, double 1.000000e+13, double 1.000000e+14, double 1.000000e+15, double 1.000000e+16, double 1.000000e+17, double 1.000000e+18, double 1.000000e+19, double 1.000000e+20, double 1.000000e+21, double 1.000000e+22], align 16
@_ZL13stbsp__negbot = internal unnamed_addr constant [22 x double] [double 1.000000e-01, double 1.000000e-02, double 1.000000e-03, double 1.000000e-04, double 1.000000e-05, double f0x3EB0C6F7A0B5ED8D, double f0x3E7AD7F29ABCAF48, double 1.000000e-08, double 1.000000e-09, double 1.000000e-10, double f0x3DA5FD7FE1796495, double f0x3D719799812DEA11, double 1.000000e-13, double f0x3D06849B86A12B9B, double 1.000000e-15, double f0x3C9CD2B297D889BC, double 1.000000e-17, double 1.000000e-18, double f0x3BFD83C94FB6D2AC, double f0x3BC79CA10C924223, double f0x3B92E3B40A0E9B4F, double 1.000000e-22], align 16
@_ZL16stbsp__negboterr = internal unnamed_addr constant [22 x double] [double f0xBC5999999999999A, double f0xBC0EB851EB851EB8, double f0xBBD89374BC6A7EFA, double f0xBBB6A161E4F765FE, double f0xBB8EE78183F91E64, double f0x3B4B5A63F9A49C2C, double f0x3B15E1E99483B023, double f0xBAD03023DF2D4C94, double f0xBAB34674BFABB83B, double f0xBA720A5465DF8D2C, double f0x3A47F7BC7B4D28AA, double f0x39F97F27F0F6E886, double f0xB9CECD79A5A0DF95, double f0x394EA70909833DE7, double f0xB97937831647F5A0, double f0x3925B4C2EBE68799, double f0xB90DB7B2080A3029, double f0xB8D7C628066E8CEE, double f0x388A52B31E9E3D07, double f0x38675447A5D8E536, double f0x383F769FB7E0B75E, double f0xB7FA7566D9CBA769], align 16
@_ZL13stbsp__negtop = internal unnamed_addr constant [13 x double] [double f0x3B282DB34012B251, double 1.000000e-46, double 1.000000e-69, double f0x2CD4DBF7B3F71CB7, double 1.000000e-115, double 1.000000e-138, double 1.000000e-161, double 1.000000e-184, double f0x14F48C22CA71A1BD, double 1.000000e-230, double 1.000000e-253, double 1.000000e-276, double f0x01DAC9A7B3B7302F], align 16
@_ZL16stbsp__negtoperr = internal unnamed_addr constant [13 x double] [double f0x37C13BADB829E079, double f0xB2EE46A98D3D9F64, double f0x2E3227C7218A2B65, double f0x2951D96999AA01E9, double f0xA4ACC2229EFC3962, double f0x9FECD04A2263407A, double f0x9B123B80F187A157, double f0x965C4E22914ED912, double f0x119BC296CDF42F82, double f0x8CC9F9E7F4E16FE1, double f0x880AEB0A72A8902A, double f0x834E228E12C13408, double f0x0000000000FA1259], align 16
@_ZL10stbsp__top = internal unnamed_addr constant [13 x double] [double f0x44B52D02C7E14AF6, double f0x497C06A5EC5433C6, double 1.000000e+69, double 1.000000e+92, double 1.000000e+115, double 1.000000e+138, double 1.000000e+161, double 1.000000e+184, double 1.000000e+207, double 1.000000e+230, double f0x7475D2CE55747A18, double 1.000000e+276, double 1.000000e+299], align 16
@_ZL13stbsp__toperr = internal unnamed_addr constant [13 x double] [double f0x4160000000000000, double f0x45EBB542C80DEB40, double f0xCAE83B80B9AAB60A, double f0xCFA32E22D17A166C, double f0xD4523606902E180E, double f0xD9296FB782462E87, double f0xDDF358952C0BD011, double f0xE2A78C1376A34B6C, double f0xE7817569FC243ADF, double f0xEC5D9365A897AAA6, double f0x7119050C256123A0, double f0xF5DB1799D76CC7A6, double f0xFAA213FE39571A38], align 16
@_ZN11OpenImageIO4v3_112_GLOBAL__N_112output_mutexE = internal global { %union.pthread_mutex_t } zeroinitializer, align 8
@.str.44 = private unnamed_addr constant [127 x i8] c"OpenImageIO exited with a pending error message that was never\0Aretrieved via OIIO::geterror(). This was the error message:\0A{}\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTISt12system_error = external constant ptr
@.str.45 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVSt12system_error = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.47 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"cannot write to file\00", align 1
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], align 16
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], align 16
@.str.52 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@_ZTINSt6locale5facetE = external constant ptr
@_ZTIN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetISt6localeEE, ptr @_ZTINSt6locale5facetE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant [36 x i8] c"N3fmt3v1212format_facetISt6localeEE\00", align 1
@_ZTVN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetISt6localeEE, ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev, ptr @_ZN3fmt3v1212format_facetISt6localeED0Ev, ptr @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, align 8
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@.str.53 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr hidden local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr hidden local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr hidden local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr hidden local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr hidden local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr hidden local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", align 16
@.str.56 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [24 x %"class.fmt::v12::detail::uint128_fallback"] [%"class.fmt::v12::detail::uint128_fallback" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128_fallback" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128_fallback" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128_fallback" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128_fallback" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128_fallback" { i64 7239297505920716784, i64 -1063354554122040811 }], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = linkonce_odr hidden local_unnamed_addr constant [27 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125, i64 390625, i64 1953125, i64 9765625, i64 48828125, i64 244140625, i64 1220703125, i64 6103515625, i64 30517578125, i64 152587890625, i64 762939453125, i64 3814697265625, i64 19073486328125, i64 95367431640625, i64 476837158203125, i64 2384185791015625, i64 11920928955078125, i64 59604644775390625, i64 298023223876953125, i64 1490116119384765625], align 16
@.str.68 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@_ZTIN3fmt3v1212format_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr hidden constant [25 x i8] c"N3fmt3v1212format_errorE\00", align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, align 8
@.str.70 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.76 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.77 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.78 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.80 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.84 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.85 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.87 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.88 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@_ZN11OpenImageIO4v3_1L5utf8dE = internal unnamed_addr constant [364 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0A\03\03\03\03\03\03\03\03\03\03\03\03\04\03\03\0B\06\06\06\05\08\08\08\08\08\08\08\08\08\08\08\00\0C\18$<`T\0C\0C\0C0H\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\00\0C\0C\0C\0C\0C\00\0C\00\0C\0C\0C\18\0C\0C\0C\0C\0C\18\0C\18\0C\0C\0C\0C\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\0C\0C\0C\0C$\0C$\0C\0C\0C$\0C\0C\0C\0C\0C$\0C$\0C\0C\0C$\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C", align 16
@.str.89 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"width is not integer\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"precision is not integer\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"basic_string::insert\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZNSt5ctypeIcE2idE = external global %"class.std::locale::id", align 8
@.str.100 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZTVSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTISt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE, ptr @_ZNSt25__codecvt_utf8_utf16_baseIwED2Ev, ptr @_ZNSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EED0Ev, ptr @_ZNKSt25__codecvt_utf8_utf16_baseIwE6do_outER11__mbstate_tPKwS4_RS4_PcS6_RS6_, ptr @_ZNKSt25__codecvt_utf8_utf16_baseIwE10do_unshiftER11__mbstate_tPcS3_RS3_, ptr @_ZNKSt25__codecvt_utf8_utf16_baseIwE5do_inER11__mbstate_tPKcS4_RS4_PwS6_RS6_, ptr @_ZNKSt25__codecvt_utf8_utf16_baseIwE11do_encodingEv, ptr @_ZNKSt25__codecvt_utf8_utf16_baseIwE16do_always_noconvEv, ptr @_ZNKSt25__codecvt_utf8_utf16_baseIwE9do_lengthER11__mbstate_tPKcS4_m, ptr @_ZNKSt25__codecvt_utf8_utf16_baseIwE13do_max_lengthEv] }, align 8
@_ZTISt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE, ptr @_ZTISt25__codecvt_utf8_utf16_baseIwE }, align 8
@_ZTSSt18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE = linkonce_odr constant [55 x i8] c"St18codecvt_utf8_utf16IwLm1114111ELSt12codecvt_mode0EE\00", align 1
@_ZTISt25__codecvt_utf8_utf16_baseIwE = external constant ptr
@.str.102 = private unnamed_addr constant [28 x i8] c"wstring_convert::from_bytes\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"wstring_convert::to_bytes\00", align 1
@_ZTVSt18codecvt_utf8_utf16IDsLm1114111ELSt12codecvt_mode0EE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTISt18codecvt_utf8_utf16IDsLm1114111ELSt12codecvt_mode0EE, ptr @_ZNSt25__codecvt_utf8_utf16_baseIDsED2Ev, ptr @_ZNSt18codecvt_utf8_utf16IDsLm1114111ELSt12codecvt_mode0EED0Ev, ptr @_ZNKSt25__codecvt_utf8_utf16_baseIDsE6do_outER11__mbstate_tPKDsS4_RS4_PcS6_RS6_, ptr @_ZNKSt25__codecvt_utf8_utf16_baseIDsE10do_unshiftER11__mbstate_tPcS3_RS3_, ptr @_ZNKSt25__codecvt_utf8_utf16_baseIDsE5do_inER11__mbstate_tPKcS4_RS4_PDsS6_RS6_, ptr @_ZNKSt25__codecvt_utf8_utf16_baseIDsE11do_encodingEv, ptr @_ZNKSt25__codecvt_utf8_utf16_baseIDsE16do_always_noconvEv, ptr @_ZNKSt25__codecvt_utf8_utf16_baseIDsE9do_lengthER11__mbstate_tPKcS4_m, ptr @_ZNKSt25__codecvt_utf8_utf16_baseIDsE13do_max_lengthEv] }, align 8
@_ZTISt18codecvt_utf8_utf16IDsLm1114111ELSt12codecvt_mode0EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt18codecvt_utf8_utf16IDsLm1114111ELSt12codecvt_mode0EE, ptr @_ZTISt25__codecvt_utf8_utf16_baseIDsE }, align 8
@_ZTSSt18codecvt_utf8_utf16IDsLm1114111ELSt12codecvt_mode0EE = linkonce_odr constant [56 x i8] c"St18codecvt_utf8_utf16IDsLm1114111ELSt12codecvt_mode0EE\00", align 1
@_ZTISt25__codecvt_utf8_utf16_baseIDsE = external constant ptr
@__tls_guard = internal thread_local global i8 0, align 1
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.40, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_strutil.cpp, ptr null }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @oiio_stbsp_set_separators(i8 noundef signext %0, i8 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  store i8 %1, ptr @_ZL13stbsp__period, align 1, !tbaa !54
  store i8 %0, ptr @_ZL12stbsp__comma, align 1, !tbaa !54
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden i32 @oiio_stbsp_vsprintfcb(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 20 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 3 uses
  %i.c = alloca [8 x i8], align 1                 ; 27 uses
  %i.d = alloca [8 x i8], align 1                 ; 27 uses
  %i.e = alloca i32, align 4                      ; 33 uses
  %i.f = alloca i32, align 4                      ; 17 uses
  %i.g = alloca ptr, align 8                      ; 55 uses
  %.not1074 = icmp eq ptr %0, null                ; 19 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 26 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 512 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 8 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 65 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 66 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 511 ; 4 uses
  %i.v = sub i64 0, %i.b
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 511 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge2424, %bb.a
  %.1936 = phi ptr [ %2, %bb.a ], [ %.1936.be, %.backedge2424 ] ; 14 uses
  %.1885 = phi ptr [ %2, %bb.a ], [ %.1885.be, %.backedge2424 ] ; 5 uses
  %.1871 = phi ptr [ %3, %bb.a ], [ %.1871.be, %.backedge2424 ] ; 8 uses
  %.1832 = phi i32 [ 0, %bb.a ], [ %.1832.be, %.backedge2424 ] ; 11 uses
  %i.x = ptrtoint ptr %.1871 to i64
  %i.y = and i64 %i.x, 3
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %.preheader1459, label %..thread1271_crit_edge

..thread1271_crit_edge:                           ; preds = %bb.b
  %.pre = load i8, ptr %.1871, align 1, !tbaa !54
  br label %.thread1271

.preheader1459:                                   ; preds = %bb.b
  %i.z = load i32, ptr %.1871, align 4            ; 6 uses
  %i.aa = and i32 %i.z, -2139062144
  %i.ab = xor i32 %i.aa, -2139062144              ; 3 uses
  %i.ac = xor i32 %i.z, 623191333
  %i.ad = add i32 %i.ac, -16843009
  %i.ae = and i32 %i.ad, %i.ab
  %.not10721545 = icmp eq i32 %i.ae, 0
  %i.af = trunc i32 %i.z to i8                    ; 3 uses
  br i1 %.not10721545, label %.lr.ph, label %.thread1271

.lr.ph:                                           ; preds = %.preheader1459
  %i.ag = ptrtoint ptr %.1936 to i64
  br i1 %.not1074, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ah = add i32 %i.z, -16843009
  %i.ai = and i32 %i.ab, %i.ah
  %.not1073.us2334 = icmp eq i32 %i.ai, 0
  br i1 %.not1073.us2334, label %.lr.ph2337, label %thread-pre-split

.lr.ph.split.us:                                  ; preds = %.lr.ph2337
  %i.aj = add i32 %i.ao, -16843009
  %i.ak = and i32 %i.aq, %i.aj
  %.not1073.us = icmp eq i32 %i.ak, 0
  br i1 %.not1073.us, label %.lr.ph2337, label %thread-pre-split.loopexit

.lr.ph2337:                                       ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.78911546.us2336 = phi ptr [ %i.am, %.lr.ph.split.us ], [ %.1885, %.lr.ph.split.us.preheader ] ; 2 uses
  %.48741547.us2335 = phi ptr [ %i.an, %.lr.ph.split.us ], [ %.1871, %.lr.ph.split.us.preheader ]
  %i.al = phi i32 [ %i.ao, %.lr.ph.split.us ], [ %i.z, %.lr.ph.split.us.preheader ]
  store i32 %i.al, ptr %.78911546.us2336, align 4, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %.78911546.us2336, i64 4 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.48741547.us2335, i64 4 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 6 uses
  %i.ap = and i32 %i.ao, -2139062144
  %i.aq = xor i32 %i.ap, -2139062144              ; 2 uses
  %i.ar = xor i32 %i.ao, 623191333
  %i.as = add i32 %i.ar, -16843009
  %i.at = and i32 %i.as, %i.aq
  %.not1072.us = icmp eq i32 %i.at, 0
  br i1 %.not1072.us, label %.lr.ph.split.us, label %.thread1271.loopexit

.thread1271.loopexit:                             ; preds = %.lr.ph2337
  %i.au = trunc i32 %i.ao to i8
  br label %.thread1271

.thread1271:                                      ; preds = %bb.g, %bb.f, %.thread1271.loopexit, %..thread1271_crit_edge, %.preheader1459
  %i.av = phi i8 [ %.pre, %..thread1271_crit_edge ], [ %i.af, %.preheader1459 ], [ %i.au, %.thread1271.loopexit ], [ %i.bk, %bb.f ], [ %i.ca, %bb.g ] ; 2 uses
  %.2886 = phi ptr [ %.1885, %..thread1271_crit_edge ], [ %.1885, %.preheader1459 ], [ %i.am, %.thread1271.loopexit ], [ %.78911546, %bb.f ], [ %i.bs, %bb.g ] ; 6 uses
  %.2872 = phi ptr [ %.1871, %..thread1271_crit_edge ], [ %.1871, %.preheader1459 ], [ %i.an, %.thread1271.loopexit ], [ %.48741547, %bb.f ], [ %i.bt, %bb.g ] ; 2 uses
  %i.aw = icmp eq i8 %i.av, 37
  br i1 %i.aw, label %.preheader2420, label %thread-pre-split

thread-pre-split.loopexit:                        ; preds = %.lr.ph.split.us
  %i.ax = trunc i32 %i.ao to i8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.lr.ph.split, %thread-pre-split.loopexit, %.lr.ph.split.us.preheader, %.thread1271
  %i.ay = phi i8 [ %i.av, %.thread1271 ], [ %i.ax, %thread-pre-split.loopexit ], [ %i.af, %.lr.ph.split.us.preheader ], [ %i.bk, %.lr.ph.split ] ; 3 uses
  %.3887 = phi ptr [ %.2886, %.thread1271 ], [ %i.am, %thread-pre-split.loopexit ], [ %.1885, %.lr.ph.split.us.preheader ], [ %.78911546, %.lr.ph.split ] ; 7 uses
  %.3873 = phi ptr [ %.2872, %.thread1271 ], [ %i.an, %thread-pre-split.loopexit ], [ %.1871, %.lr.ph.split.us.preheader ], [ %.48741547, %.lr.ph.split ] ; 2 uses
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.hj, label %bb.c

bb.c:                                             ; preds = %thread-pre-split
  br i1 %.not1074, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = ptrtoint ptr %.3887 to i64
  %i.bb = ptrtoint ptr %.1936 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = trunc i64 %i.bc to i32                  ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 510
  br i1 %i.be, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.bf = add nuw nsw i32 %.1832, %i.bd           ; 2 uses
  %i.bg = call noundef ptr %0(ptr noundef %.1936, ptr noundef %1, i32 noundef %i.bd) ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.thread1424, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.e
  %.pre2030 = load i8, ptr %.3873, align 1, !tbaa !54
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.d, %bb.c
  %i.bi = phi i8 [ %i.ay, %bb.c ], [ %i.ay, %bb.d ], [ %.pre2030, %..thread_crit_edge ]
  %.4939 = phi ptr [ %.1936, %bb.c ], [ %.1936, %bb.d ], [ %i.bg, %..thread_crit_edge ]
  %.6890 = phi ptr [ %.3887, %bb.c ], [ %.3887, %bb.d ], [ %i.bg, %..thread_crit_edge ] ; 2 uses
  %.4835 = phi i32 [ %.1832, %bb.c ], [ %.1832, %bb.d ], [ %i.bf, %..thread_crit_edge ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.6890, i64 1
  store i8 %i.bi, ptr %.6890, align 1, !tbaa !54
  br label %.backedge2424

.backedge2424:                                    ; preds = %._crit_edge1851, %bb.aw, %bb.hf, %.thread
  %.1936.be = phi ptr [ %.4939, %.thread ], [ %.1936, %bb.aw ], [ %.35970.lcssa, %._crit_edge1851 ], [ %.44979.ph, %bb.hf ]
  %.1885.be = phi ptr [ %i.bj, %.thread ], [ %.2886, %bb.aw ], [ %.54.lcssa, %._crit_edge1851 ], [ %.67.ph, %bb.hf ]
  %.3873.pn = phi ptr [ %.3873, %.thread ], [ %.12882, %bb.hf ], [ %.12882, %bb.aw ], [ %.12882, %._crit_edge1851 ]
  %.1832.be = phi i32 [ %.4835, %.thread ], [ %.1832, %bb.aw ], [ %.35866.lcssa, %._crit_edge1851 ], [ %.44.ph, %bb.hf ]
  %.1871.be = getelementptr inbounds nuw i8, ptr %.3873.pn, i64 1
  br label %bb.b, !llvm.loop !322

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %i.bk = phi i8 [ %i.ca, %bb.g ], [ %i.af, %.lr.ph ] ; 2 uses
  %i.bl = phi i32 [ %i.bw, %bb.g ], [ %i.ab, %.lr.ph ]
  %i.bm = phi i32 [ %i.bu, %bb.g ], [ %i.z, %.lr.ph ] ; 2 uses
  %.48741547 = phi ptr [ %i.bt, %bb.g ], [ %.1871, %.lr.ph ] ; 3 uses
  %.78911546 = phi ptr [ %i.bs, %bb.g ], [ %.1885, %.lr.ph ] ; 5 uses
  %i.bn = add i32 %i.bm, -16843009
  %i.bo = and i32 %i.bl, %i.bn
  %.not1073 = icmp eq i32 %i.bo, 0
  br i1 %.not1073, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %.lr.ph.split
  %i.bp = ptrtoint ptr %.78911546 to i64
  %.neg = sub i64 %i.ag, %i.bp
  %.neg1075 = trunc i64 %.neg to i32
  %i.bq = add i32 %.neg1075, 512
  %i.br = icmp slt i32 %i.bq, 4
  br i1 %i.br, label %.thread1271, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.bm, ptr %.78911546, align 4, !tbaa !53
  %i.bs = getelementptr inbounds nuw i8, ptr %.78911546, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.48741547, i64 4 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4            ; 4 uses
  %i.bv = and i32 %i.bu, -2139062144
  %i.bw = xor i32 %i.bv, -2139062144              ; 2 uses
  %i.bx = xor i32 %i.bu, 623191333
  %i.by = add i32 %i.bx, -16843009
  %i.bz = and i32 %i.by, %i.bw
  %.not1072 = icmp eq i32 %i.bz, 0
  %i.ca = trunc i32 %i.bu to i8                   ; 2 uses
  br i1 %.not1072, label %.lr.ph.split, label %.thread1271

.preheader2420:                                   ; preds = %.thread1271, %.backedge
  %.2872.pn = phi ptr [ %.6876, %.backedge ], [ %.2872, %.thread1271 ] ; 2 uses
  %.0782 = phi i32 [ %i.cc, %.backedge ], [ 0, %.thread1271 ] ; 5 uses
  %.6876 = getelementptr inbounds nuw i8, ptr %.2872.pn, i64 1 ; 3 uses
  %i.cb = load i8, ptr %.6876, align 1, !tbaa !54 ; 2 uses
  switch i8 %i.cb, label %.loopexit1485 [
    i8 45, label %bb.h
    i8 43, label %.backedge
    i8 32, label %bb.i
    i8 35, label %bb.j
    i8 39, label %bb.k
    i8 36, label %bb.l
    i8 95, label %bb.n
    i8 48, label %bb.o
  ]

bb.h:                                             ; preds = %.preheader2420
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.m, %.preheader2420, %bb.h, %bb.i, %bb.j, %bb.k, %bb.n
  %.sink = phi i32 [ 64, %bb.k ], [ 2, %.preheader2420 ], [ %., %bb.m ], [ 1, %bb.h ], [ 1024, %bb.n ], [ 4, %bb.i ], [ 8, %bb.j ], [ 256, %bb.l ]
  %i.cc = or i32 %.0782, %.sink
  br label %.preheader2420, !llvm.loop !323

bb.i:                                             ; preds = %.preheader2420
  br label %.backedge

end_hunk_0
begin_hunk_1_@oiio_stbsp_vsprintfcb:bb.a
  %i.hj = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 8
  store ptr %i.hk, ptr %i.h, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hl = phi ptr [ %i.hh, %bb.au ], [ %i.hj, %bb.av ]
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !60
  %i.hn = ptrtoint ptr %.2886 to i64
  %i.ho = ptrtoint ptr %.1936 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = add nsw i32 %.1832, %i.hq
  store i32 %i.hr, ptr %i.hm, align 4, !tbaa !53
  br label %.backedge2424

bb.ax:                                            ; preds = %bb.ai, %bb.ai
  %i.hs = icmp eq i8 %i.ff, 65                    ; 2 uses
  %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex = select i1 %i.hs, ptr @_ZZ21oiio_stbsp_vsprintfcbE4hexu, ptr @_ZZ21oiio_stbsp_vsprintfcbE3hex ; 6 uses
  %i.ht = load i32, ptr %i.n, align 4             ; 3 uses
  %i.hu = icmp ult i32 %i.ht, 161
  br i1 %i.hu, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hv = load ptr, ptr %i.i, align 8
  %i.hw = zext nneg i32 %i.ht to i64
  %i.hx = getelementptr i8, ptr %i.hv, i64 %i.hw
  %i.hy = add nuw nsw i32 %i.ht, 16
  store i32 %i.hy, ptr %i.n, align 4
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.hz = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 8
  store ptr %i.ia, ptr %i.h, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ib = phi ptr [ %i.hx, %bb.ay ], [ %i.hz, %bb.az ]
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !62 ; 3 uses
  %i.id = icmp eq i32 %.1807, -1
  %spec.store.select17 = select i1 %i.id, i32 6, i32 %.1807 ; 7 uses
  %i.ie = and i64 %i.ic, 4503599627370495         ; 3 uses
  %i.if = lshr i64 %i.ic, 52
  %i.ig = trunc nuw nsw i64 %i.if to i32
  %i.ih = and i32 %i.ig, 2047                     ; 2 uses
  %i.ii = add nsw i32 %i.ih, -1023
  %i.ij = or i32 %.3785, 128
  %.not11291441 = icmp slt i64 %i.ic, 0
  %spec.select1184 = select i1 %.not11291441, i32 %i.ij, i32 %.3785 ; 4 uses
  %i.ik = and i32 %spec.select1184, 128
  %.not.i1232 = icmp eq i32 %i.ik, 0
  br i1 %.not.i1232, label %bb.bb, label %.sink.split.i

bb.bb:                                            ; preds = %bb.ba
  %i.il = and i32 %spec.select1184, 4
  %.not9.i = icmp eq i32 %i.il, 0
  br i1 %.not9.i, label %bb.bc, label %.sink.split.i

bb.bc:                                            ; preds = %bb.bb
  %i.im = and i32 %spec.select1184, 2
  %.not10.i = icmp eq i32 %i.im, 0
  br i1 %.not10.i, label %_ZL16stbsp__lead_signjPc.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bc, %bb.bb, %bb.ba
  %.sink.i = phi i8 [ 45, %bb.ba ], [ 32, %bb.bb ], [ 43, %bb.bc ]
  store i8 %.sink.i, ptr %i.j, align 1, !tbaa !54
  br label %_ZL16stbsp__lead_signjPc.exit

_ZL16stbsp__lead_signjPc.exit:                    ; preds = %bb.bc, %.sink.split.i
  %i.in = phi i8 [ 0, %bb.bc ], [ 1, %.sink.split.i ] ; 2 uses
  %i.io = icmp eq i32 %i.ih, 0
  br i1 %i.io, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZL16stbsp__lead_signjPc.exit
  %.not1130 = icmp eq i64 %i.ie, 0
  %i.ip = select i1 %.not1130, i32 0, i32 -1022   ; 2 uses
  store i32 %i.ip, ptr %i.f, align 4, !tbaa !53
  br label %bb.bf

bb.be:                                            ; preds = %_ZL16stbsp__lead_signjPc.exit
  %i.iq = or disjoint i64 %i.ie, 4503599627370496
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ir = phi i32 [ %i.ip, %bb.bd ], [ %i.ii, %bb.be ] ; 3 uses
  %.0 = phi i64 [ %i.ie, %bb.bd ], [ %i.iq, %bb.be ]
  %i.is = shl nuw nsw i64 %.0, 8
  %i.it = icmp slt i32 %spec.store.select17, 15
  %i.iu = shl nsw i32 %spec.store.select17, 2
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = lshr i64 576460752303423488, %i.iv
  %i.ix = select i1 %i.it, i64 %i.iw, i64 0
  %storemerge1131 = add nuw nsw i64 %i.is, %i.ix  ; 3 uses
  %i.iy = zext nneg i8 %i.in to i64
  %i.iz = getelementptr i8, ptr %i.c, i64 %i.iy   ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 1
  store i8 48, ptr %i.ja, align 1, !tbaa !54
  %i.jb = getelementptr i8, ptr %i.iz, i64 2
  store i8 120, ptr %i.jb, align 1, !tbaa !54
  %i.jc = or disjoint i8 %i.in, 2
  store i8 %i.jc, ptr %i.c, align 1, !tbaa !54
  %i.jd = lshr i64 %storemerge1131, 60
  %i.je = getelementptr inbounds nuw i8, ptr %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !54
  store i8 %i.jf, ptr %i.o, align 16, !tbaa !54
  %.not1132 = icmp eq i32 %spec.store.select17, 0
  br i1 %.not1132, label %.thread2121, label %.lr.ph1680.preheader

.thread2121:                                      ; preds = %bb.bf
  store ptr %i.q, ptr %i.g, align 8, !tbaa !58
  br label %._crit_edge1681

.lr.ph1680.preheader:                             ; preds = %bb.bf
  %i.jg = load i8, ptr @_ZL13stbsp__period, align 1, !tbaa !54
  store i8 %i.jg, ptr %i.q, align 1, !tbaa !54
  store ptr %i.r, ptr %i.g, align 8, !tbaa !58
  %spec.store.select18 = call i32 @llvm.umin.i32(i32 %spec.store.select17, i32 13) ; 5 uses
  %i.jh = icmp sgt i32 %spec.store.select17, %spec.store.select18
  %i.ji = sub i32 %spec.store.select17, %spec.store.select18
  %spec.select1185 = select i1 %i.jh, i32 %i.ji, i32 0 ; 2 uses
  %xtraiter2531 = and i32 %spec.store.select18, 3 ; 2 uses
  %lcmp.mod2532.not = icmp eq i32 %xtraiter2531, 0
  br i1 %lcmp.mod2532.not, label %.lr.ph1680.prol.loopexit, label %.lr.ph1680.prol

.lr.ph1680.prol:                                  ; preds = %.lr.ph1680.preheader, %.lr.ph1680.prol
  %.07241678.prol = phi i32 [ %i.jj, %.lr.ph1680.prol ], [ %spec.store.select18, %.lr.ph1680.preheader ]
  %.17431677.prol = phi ptr [ %i.jn, %.lr.ph1680.prol ], [ %i.r, %.lr.ph1680.preheader ] ; 2 uses
  %.11261.in1676.prol = phi i64 [ %.11261.prol, %.lr.ph1680.prol ], [ %storemerge1131, %.lr.ph1680.preheader ]
  %prol.iter2533 = phi i32 [ %prol.iter2533.next, %.lr.ph1680.prol ], [ 0, %.lr.ph1680.preheader ]
  %.11261.prol = shl i64 %.11261.in1676.prol, 4   ; 3 uses
  %i.jj = add nsw i32 %.07241678.prol, -1         ; 2 uses
  %i.jk = lshr i64 %.11261.prol, 60
  %i.jl = getelementptr inbounds nuw i8, ptr %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !54
  %i.jn = getelementptr inbounds nuw i8, ptr %.17431677.prol, i64 1 ; 3 uses
  store i8 %i.jm, ptr %.17431677.prol, align 1, !tbaa !54
  %prol.iter2533.next = add i32 %prol.iter2533, 1 ; 2 uses
  %prol.iter2533.cmp.not = icmp eq i32 %prol.iter2533.next, %xtraiter2531
  br i1 %prol.iter2533.cmp.not, label %.lr.ph1680.prol.loopexit, label %.lr.ph1680.prol, !llvm.loop !328

.lr.ph1680.prol.loopexit:                         ; preds = %.lr.ph1680.prol, %.lr.ph1680.preheader
  %.lcssa2464.unr = phi ptr [ poison, %.lr.ph1680.preheader ], [ %i.jn, %.lr.ph1680.prol ]
  %.07241678.unr = phi i32 [ %spec.store.select18, %.lr.ph1680.preheader ], [ %i.jj, %.lr.ph1680.prol ]
  %.17431677.unr = phi ptr [ %i.r, %.lr.ph1680.preheader ], [ %i.jn, %.lr.ph1680.prol ]
  %.11261.in1676.unr = phi i64 [ %storemerge1131, %.lr.ph1680.preheader ], [ %.11261.prol, %.lr.ph1680.prol ]
  %i.jo = icmp ult i32 %spec.store.select17, 4
  br i1 %i.jo, label %._crit_edge1681, label %.lr.ph1680

.lr.ph1680:                                       ; preds = %.lr.ph1680.prol.loopexit, %.lr.ph1680
  %.07241678 = phi i32 [ %i.ke, %.lr.ph1680 ], [ %.07241678.unr, %.lr.ph1680.prol.loopexit ]
  %.17431677 = phi ptr [ %i.ki, %.lr.ph1680 ], [ %.17431677.unr, %.lr.ph1680.prol.loopexit ] ; 5 uses
  %.11261.in1676 = phi i64 [ %.11261.3, %.lr.ph1680 ], [ %.11261.in1676.unr, %.lr.ph1680.prol.loopexit ] ; 4 uses
  %i.jp = lshr i64 %.11261.in1676, 56
  %i.jq = and i64 %i.jp, 15
  %i.jr = getelementptr inbounds nuw i8, ptr %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !54
  %i.jt = getelementptr inbounds nuw i8, ptr %.17431677, i64 1
  store i8 %i.js, ptr %.17431677, align 1, !tbaa !54
  %i.ju = lshr i64 %.11261.in1676, 52
  %i.jv = and i64 %i.ju, 15
  %i.jw = getelementptr inbounds nuw i8, ptr %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !54
  %i.jy = getelementptr inbounds nuw i8, ptr %.17431677, i64 2
  store i8 %i.jx, ptr %i.jt, align 1, !tbaa !54
  %i.jz = lshr i64 %.11261.in1676, 48
  %i.ka = and i64 %i.jz, 15
  %i.kb = getelementptr inbounds nuw i8, ptr %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !54
  %i.kd = getelementptr inbounds nuw i8, ptr %.17431677, i64 3
  store i8 %i.kc, ptr %i.jy, align 1, !tbaa !54
  %.11261.3 = shl i64 %.11261.in1676, 16          ; 2 uses
  %i.ke = add nsw i32 %.07241678, -4              ; 2 uses
  %i.kf = lshr i64 %.11261.3, 60
  %i.kg = getelementptr inbounds nuw i8, ptr %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !54
  %i.ki = getelementptr inbounds nuw i8, ptr %.17431677, i64 4 ; 2 uses
  store i8 %i.kh, ptr %i.kd, align 1, !tbaa !54
  %.not1133.3 = icmp eq i32 %i.ke, 0
  br i1 %.not1133.3, label %._crit_edge1681, label %.lr.ph1680, !llvm.loop !329

._crit_edge1681:                                  ; preds = %.lr.ph1680.prol.loopexit, %.lr.ph1680, %.thread2121
  %spec.select11852126 = phi i32 [ 0, %.thread2121 ], [ %spec.select1185, %.lr.ph1680 ], [ %spec.select1185, %.lr.ph1680.prol.loopexit ]
  %.07422125 = phi ptr [ %i.q, %.thread2121 ], [ %i.r, %.lr.ph1680 ], [ %i.r, %.lr.ph1680.prol.loopexit ]
  %.1743.lcssa = phi ptr [ %i.q, %.thread2121 ], [ %.lcssa2464.unr, %.lr.ph1680.prol.loopexit ], [ %i.ki, %.lr.ph1680 ]
  %i.kj = select i1 %i.hs, i8 80, i8 112
  store i8 %i.kj, ptr %i.s, align 1, !tbaa !54
  %i.kk = icmp slt i32 %i.ir, 0
  br i1 %i.kk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %._crit_edge1681
  store i8 45, ptr %i.t, align 1, !tbaa !54
  %i.kl = sub nsw i32 0, %i.ir
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge1681
  store i8 43, ptr %i.t, align 1, !tbaa !54
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.promoted1683 = phi i32 [ %i.ir, %bb.bh ], [ %i.kl, %bb.bg ] ; 8 uses
  %i.km = icmp samesign ult i32 %.promoted1683, 1000 ; 2 uses
  %i.kn = icmp samesign ugt i32 %.promoted1683, 99
  %i.ko = icmp samesign ugt i32 %.promoted1683, 9
  %i.kp = select i1 %i.ko, i32 4, i32 3
  %i.kq = select i1 %i.kn, i32 5, i32 %i.kp
  %i.kr = select i1 %i.km, i32 %i.kq, i32 6       ; 4 uses
  %i.ks = trunc nuw nsw i32 %i.kr to i8
  store i8 %i.ks, ptr %i.d, align 1, !tbaa !54
  %.lhs.trunc = trunc nsw i32 %.promoted1683 to i16
  %i.kt = urem i16 %.lhs.trunc, 10
  %i.ku = trunc nuw nsw i16 %i.kt to i8
  %i.kv = or disjoint i8 %i.ku, 48
  %i.kw = zext nneg i32 %i.kr to i64              ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.kw
  store i8 %i.kv, ptr %i.kx, align 1, !tbaa !54
  %i.ky = icmp samesign ult i32 %i.kr, 4
  br i1 %i.ky, label %._crit_edge1688, label %.lr.ph1687

.lr.ph1687:                                       ; preds = %bb.bi
  %i.kz = udiv i32 %.promoted1683, 10
  %i.la = urem i32 %i.kz, 10
  %i.lb = trunc nuw nsw i32 %i.la to i8
  %i.lc = or disjoint i8 %i.lb, 48
  %i.ld = getelementptr i8, ptr %i.d, i64 %i.kw
  %i.le = getelementptr i8, ptr %i.ld, i64 -1
  store i8 %i.lc, ptr %i.le, align 1, !tbaa !54
  %i.lf = icmp eq i32 %i.kr, 4
  br i1 %i.lf, label %._crit_edge1688, label %.lr.ph1687.1

.lr.ph1687.1:                                     ; preds = %.lr.ph1687
  %5 = add nsw i64 %i.kw, -2                      ; 2 uses
  %6 = udiv i32 %.promoted1683, 100
  %7 = urem i32 %6, 10
  %8 = trunc nuw nsw i32 %7 to i8
  %9 = or disjoint i8 %8, 48
  %10 = getelementptr inbounds nuw i8, ptr %i.d, i64 %5
  store i8 %9, ptr %10, align 1, !tbaa !54
  br i1 %i.km, label %._crit_edge1688, label %.lr.ph1687.2.a

.lr.ph1687.2.a:                                   ; preds = %.lr.ph1687.1
  %i.lg = udiv i32 %.promoted1683, 1000
  %i.lh = urem i32 %i.lg, 10
  %i.li = trunc nuw nsw i32 %i.lh to i8
  %i.lj = or disjoint i8 %i.li, 48
  %i.lk = getelementptr i8, ptr %i.d, i64 %i.kw
  %i.ll = getelementptr i8, ptr %i.lk, i64 -3
  store i8 %i.lj, ptr %i.ll, align 1, !tbaa !54
  %11 = icmp ult i64 %5, 5
  br i1 %11, label %._crit_edge1688, label %.lr.ph1687.3

.lr.ph1687.3:                                     ; preds = %.lr.ph1687.2.a
  %i.lm = udiv i32 %.promoted1683, 10000
  %i.ln = urem i32 %i.lm, 10
  %i.lo = trunc nuw nsw i32 %i.ln to i8
  %i.lp = or disjoint i8 %i.lo, 48
  %i.lq = getelementptr i8, ptr %i.d, i64 %i.kw
  %i.lr = getelementptr i8, ptr %i.lq, i64 -4
  store i8 %i.lp, ptr %i.lr, align 1, !tbaa !54
  br label %._crit_edge1688

._crit_edge1688:                                  ; preds = %.lr.ph1687, %.lr.ph1687.1, %.lr.ph1687.2.a, %.lr.ph1687.3, %bb.bi
  %i.ls = ptrtoint ptr %.1743.lcssa to i64        ; 2 uses
  %i.lt = ptrtoint ptr %.07422125 to i64
  %i.lu = sub i64 %i.ls, %i.lt
  %i.lv = trunc i64 %i.lu to i32
  store i32 %i.lv, ptr %i.f, align 4, !tbaa !53
  %i.lw = sub i64 %i.ls, %i.p
  %i.lx = trunc i64 %i.lw to i32
  store i32 %i.lx, ptr %i.e, align 4, !tbaa !53
  br label %bb.gg

bb.bj:                                            ; preds = %bb.ai, %bb.ai
  %i.ly = icmp eq i8 %i.ff, 71
  %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex19 = select i1 %i.ly, ptr @_ZZ21oiio_stbsp_vsprintfcbE4hexu, ptr @_ZZ21oiio_stbsp_vsprintfcbE3hex ; 2 uses
  %i.lz = load i32, ptr %i.n, align 4             ; 3 uses
  %i.ma = icmp ult i32 %i.lz, 161
  br i1 %i.ma, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.mb = load ptr, ptr %i.i, align 8
  %i.mc = zext nneg i32 %i.lz to i64
  %i.md = getelementptr i8, ptr %i.mb, i64 %i.mc
  %i.me = add nuw nsw i32 %i.lz, 16
  store i32 %i.me, ptr %i.n, align 4
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.mf = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.mg = getelementptr i8, ptr %i.mf, i64 8
  store ptr %i.mg, ptr %i.h, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.mh = phi ptr [ %i.md, %bb.bk ], [ %i.mf, %bb.bl ]
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !62
  %i.mj = icmp eq i32 %.1807, -1
  %spec.store.select20 = call i32 @llvm.umax.i32(i32 %.1807, i32 1)
  %.2808 = select i1 %i.mj, i32 6, i32 %spec.store.select20 ; 6 uses
  %i.mk = add i32 %.2808, 2147483647
  %i.ml = or i32 %i.mk, -2147483648
  %i.mm = call fastcc noundef i32 @_ZL18stbsp__real_to_strPPKcPjPcPidj(ptr noundef %i.g, ptr noundef %i.e, ptr noundef %i.a, ptr noundef %i.f, double noundef %i.mi, i32 noundef %i.ml)
  %.not1108 = icmp eq i32 %i.mm, 0
  %i.mn = or i32 %.3785, 128
  %.5787 = select i1 %.not1108, i32 %.3785, i32 %i.mn ; 4 uses
  %i.mo = load i32, ptr %i.e, align 4, !tbaa !53  ; 2 uses
  %spec.store.select1439 = call i32 @llvm.umin.i32(i32 %i.mo, i32 %.2808) ; 2 uses
  %i.mp = icmp ugt i32 %spec.store.select1439, 1
  br i1 %i.mp, label %.lr.ph1606, label %.critedge23

.lr.ph1606:                                       ; preds = %bb.bm
  %i.mq = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.mr = call i32 @llvm.umin.i32(i32 %.2808, i32 %i.mo)
  %umin = zext i32 %i.mr to i64
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph1606, %bb.bo
  %indvars.iv = phi i64 [ %umin, %.lr.ph1606 ], [ %indvars.iv.next, %bb.bo ] ; 2 uses
  %.38091604 = phi i32 [ %.2808, %.lr.ph1606 ], [ %i.my, %bb.bo ] ; 2 uses
  %i.ms = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.mt = add i32 %i.ms, -1                       ; 3 uses
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !54
  %i.mx = icmp eq i8 %i.mw, 48
  br i1 %i.mx, label %bb.bo, label %.critedge23

bb.bo:                                            ; preds = %bb.bn
  %i.my = add nsw i32 %.38091604, -1              ; 3 uses
  %i.mz = icmp ugt i32 %i.mt, 1
  %i.na = icmp ne i32 %i.my, 0
  %or.cond = select i1 %i.mz, i1 %i.na, i1 false
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %or.cond, label %bb.bn, label %.critedge23, !llvm.loop !330

.critedge23:                                      ; preds = %bb.bn, %bb.bo, %bb.bm
  %storemerge1440.lcssa1602 = phi i32 [ %spec.store.select1439, %bb.bm ], [ %i.mt, %bb.bo ], [ %i.ms, %bb.bn ] ; 6 uses
  %.3809.lcssa = phi i32 [ %.2808, %bb.bm ], [ %i.my, %bb.bo ], [ %.38091604, %bb.bn ] ; 3 uses
  store i32 %storemerge1440.lcssa1602, ptr %i.e, align 4
  %i.nb = load i32, ptr %i.f, align 4, !tbaa !53  ; 6 uses
  %i.nc = icmp slt i32 %i.nb, -3
  %i.nd = icmp sgt i32 %i.nb, %.2808
  %or.cond1186 = or i1 %i.nc, %i.nd
  br i1 %or.cond1186, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.critedge23
  %i.ne = icmp sgt i32 %.3809.lcssa, %storemerge1440.lcssa1602
  br i1 %i.ne, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nf = add i32 %storemerge1440.lcssa1602, -1
  br label %bb.bz

bb.br:                                            ; preds = %bb.bp
  %spec.select1187 = call i32 @llvm.usub.sat.i32(i32 %.3809.lcssa, i32 1)
  br label %bb.bz

bb.bs:                                            ; preds = %.critedge23
  %i.ng = icmp sgt i32 %i.nb, 0
  br i1 %i.ng, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.nh = icmp slt i32 %i.nb, %storemerge1440.lcssa1602
  %i.ni = sub i32 %storemerge1440.lcssa1602, %i.nb
  %i.nj = select i1 %i.nh, i32 %i.ni, i32 0
  br label %bb.cx

bb.bu:                                            ; preds = %bb.bs
  %i.nk = call i32 @llvm.smin.i32(i32 %.3809.lcssa, i32 %storemerge1440.lcssa1602)
  %i.nl = sub nsw i32 %i.nk, %i.nb
  br label %bb.cx

bb.bv:                                            ; preds = %bb.ai, %bb.ai
  %i.nm = icmp eq i8 %i.ff, 69
  %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex24 = select i1 %i.nm, ptr @_ZZ21oiio_stbsp_vsprintfcbE4hexu, ptr @_ZZ21oiio_stbsp_vsprintfcbE3hex
  %i.nn = load i32, ptr %i.n, align 4             ; 3 uses
  %i.no = icmp ult i32 %i.nn, 161
  br i1 %i.no, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.np = load ptr, ptr %i.i, align 8
  %i.nq = zext nneg i32 %i.nn to i64
  %i.nr = getelementptr i8, ptr %i.np, i64 %i.nq
  %i.ns = add nuw nsw i32 %i.nn, 16
  store i32 %i.ns, ptr %i.n, align 4
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.nt = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.nu = getelementptr i8, ptr %i.nt, i64 8
  store ptr %i.nu, ptr %i.h, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.nv = phi ptr [ %i.nr, %bb.bw ], [ %i.nt, %bb.bx ]
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !62
  %i.nx = icmp eq i32 %.1807, -1
  %spec.store.select25 = select i1 %i.nx, i32 6, i32 %.1807 ; 2 uses
  %i.ny = or i32 %spec.store.select25, -2147483648
  %i.nz = call fastcc noundef i32 @_ZL18stbsp__real_to_strPPKcPjPcPidj(ptr noundef %i.g, ptr noundef %i.e, ptr noundef %i.a, ptr noundef %i.f, double noundef %i.nw, i32 noundef %i.ny)
  %.not1107 = icmp eq i32 %i.nz, 0
  %i.oa = or i32 %.3785, 128
  %spec.select1188 = select i1 %.not1107, i32 %.3785, i32 %i.oa
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.br, %bb.bq
  %.4810 = phi i32 [ %i.nf, %bb.bq ], [ %spec.select1187, %bb.br ], [ %spec.store.select25, %bb.by ] ; 4 uses
  %.6788 = phi i32 [ %.5787, %bb.bq ], [ %.5787, %bb.br ], [ %spec.select1188, %bb.by ] ; 5 uses
  %.0740 = phi ptr [ %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex19, %bb.bq ], [ %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex19, %bb.br ], [ %_ZZ21oiio_stbsp_vsprintfcbE4hexu._ZZ21oiio_stbsp_vsprintfcbE3hex24, %bb.by ]
  store i8 0, ptr %i.d, align 1, !tbaa !54
  store i8 0, ptr %i.c, align 1, !tbaa !54
  %i.ob = and i32 %.6788, 128
  %.not.i1233 = icmp eq i32 %i.ob, 0
  br i1 %.not.i1233, label %bb.ca, label %.sink.split.i1234

bb.ca:                                            ; preds = %bb.bz
  %i.oc = and i32 %.6788, 4
  %.not9.i1236 = icmp eq i32 %i.oc, 0
  br i1 %.not9.i1236, label %bb.cb, label %.sink.split.i1234

bb.cb:                                            ; preds = %bb.ca
  %i.od = and i32 %.6788, 2
  %.not10.i1237 = icmp eq i32 %i.od, 0
  br i1 %.not10.i1237, label %_ZL16stbsp__lead_signjPc.exit1238, label %.sink.split.i1234

.sink.split.i1234:                                ; preds = %bb.cb, %bb.ca, %bb.bz
  %.sink.i1235 = phi i8 [ 45, %bb.bz ], [ 32, %bb.ca ], [ 43, %bb.cb ]
  store i8 1, ptr %i.c, align 1, !tbaa !54
  store i8 %.sink.i1235, ptr %i.j, align 1, !tbaa !54
  br label %_ZL16stbsp__lead_signjPc.exit1238

_ZL16stbsp__lead_signjPc.exit1238:                ; preds = %bb.cb, %.sink.split.i1234
  %i.oe = load i32, ptr %i.f, align 4, !tbaa !53  ; 4 uses
  %i.of = icmp eq i32 %i.oe, 28672
  %i.og = load ptr, ptr %i.g, align 8, !tbaa !58  ; 14 uses
  %i.oh = ptrtoaddr ptr %i.og to i64
  br i1 %i.of, label %bb.gg, label %bb.cc

bb.cc:                                            ; preds = %_ZL16stbsp__lead_signjPc.exit1238
  %i.oi = load i8, ptr %i.og, align 1, !tbaa !54
  store i8 %i.oi, ptr %i.o, align 16, !tbaa !54
  %.not1128 = icmp eq i32 %.4810, 0
  br i1 %.not1128, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.oj = load i8, ptr @_ZL13stbsp__period, align 1, !tbaa !54
  store i8 %i.oj, ptr %i.q, align 1, !tbaa !54
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.2744 = phi ptr [ %i.r, %bb.cd ], [ %i.q, %bb.cc ] ; 8 uses
  %.27442379 = ptrtoaddr ptr %.2744 to i64
  %i.ok = load i32, ptr %i.e, align 4, !tbaa !53  ; 2 uses
  %i.ol = add i32 %i.ok, -1
  %i.om = icmp ugt i32 %i.ol, %.4810
  br i1 %i.om, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.on = add nuw nsw i32 %.4810, 1               ; 2 uses
  store i32 %i.on, ptr %i.e, align 4, !tbaa !53
  br label %bb.cg

end_hunk_1
