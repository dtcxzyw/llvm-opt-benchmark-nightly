inline.NumInlined: 2980
inline.NumDeleted: 773
begin_hunk_0
%"class.fmt::v12::locale_ref" = type { ptr }
%"struct.fmt::v12::detail::default_arg_formatter" = type { %"class.fmt::v12::basic_appender" }
%"struct.fmt::v12::detail::format_handler" = type { %"class.fmt::v12::parse_context", %"class.fmt::v12::context" }
%class.anon.68 = type <{ i64, i32, [4 x i8] }>
%"struct.fmt::v12::format_specs" = type { %"class.fmt::v12::basic_specs", i32, i32 }
%"class.fmt::v12::basic_specs" = type { i32, [4 x i8] }
%class.anon.48 = type { %"class.fmt::v12::basic_string_view" }
%struct.id_adapter = type <{ ptr, i32, [4 x i8] }>
%"class.fmt::v12::loc_value" = type { %"class.fmt::v12::basic_format_arg" }
%"class.fmt::v12::basic_format_arg" = type <{ %"class.fmt::v12::detail::value", i32, [12 x i8] }>
%"class.std::locale" = type { ptr }
%"class.fmt::v12::format_facet" = type { %"class.std::locale::facet.base", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::locale::facet.base" = type <{ ptr, i32 }>
%class.anon.33 = type { i8, i8 }
%"struct.fmt::v12::detail::loc_writer" = type { %"class.fmt::v12::basic_appender", ptr, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.fmt::v12::detail::digit_grouping" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.anon = type { ptr, ptr, ptr }
%"struct.fmt::v12::detail::find_escape_result" = type { ptr, ptr, i32 }
%"class.fmt::v12::basic_memory_buffer.34" = type <{ %"class.fmt::v12::detail::buffer.35", [500 x i32], [8 x i8] }>
%"class.fmt::v12::detail::buffer.35" = type { ptr, i64, i64, ptr }
%class.anon.40 = type { ptr, ptr, ptr }
%class.anon.49 = type { i32, ptr }
%"struct.fmt::v12::detail::dragonbox::decimal_fp" = type { i32, i32 }
%"class.fmt::v12::detail::fallback_digit_grouping" = type { i8 }
%class.anon.50 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.51 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.52 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.fmt::v12::detail::dragonbox::decimal_fp.53" = type { i64, i32 }
%class.anon.54 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.55 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.56 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.57 = type { %"class.fmt::v12::basic_string_view" }
%"struct.fmt::v12::detail::big_decimal_fp" = type { ptr, i32, i32 }
%"struct.fmt::v12::detail::basic_fp" = type <{ i128, i32, [12 x i8] }>
%"class.fmt::v12::detail::bigint" = type { %"class.fmt::v12::basic_memory_buffer.59", i32, [4 x i8] }
%"class.fmt::v12::basic_memory_buffer.59" = type <{ %"class.fmt::v12::detail::buffer.60", [32 x i32], [8 x i8] }>
%"class.fmt::v12::detail::buffer.60" = type { ptr, i64, i64, ptr }
%class.anon.63 = type <{ i32, [4 x i8], %"struct.fmt::v12::detail::big_decimal_fp", i32, i8, [3 x i8], i32, i8, [3 x i8], i32, [4 x i8] }>
%class.anon.66 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.67 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.fmt::v12::detail::thousands_sep_result" = type <{ %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"struct.fmt::v12::detail::write_int_arg.39" = type { i128, i32 }
%"struct.fmt::v12::detail::dynamic_format_specs" = type { %"struct.fmt::v12::format_specs", %"union.fmt::v12::detail::arg_ref", %"union.fmt::v12::detail::arg_ref" }
%"union.fmt::v12::detail::arg_ref" = type { %"class.fmt::v12::basic_string_view" }
%"struct.fmt::v12::detail::dynamic_spec_handler" = type { ptr, ptr, ptr }
%class.anon.75 = type { i32, %"struct.fmt::v12::detail::dragonbox::decimal_fp", i32, i8, i32, i8, i32 }
%class.anon.77 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.78 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.83 = type <{ i32, [4 x i8], %"struct.fmt::v12::detail::dragonbox::decimal_fp.53", i32, i8, [3 x i8], i32, i8, [3 x i8], i32, [4 x i8] }>
%class.anon.86 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.87 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.88 = type { ptr, ptr, ptr, ptr, ptr }
%class.anon.89 = type { i8, i64, %"class.fmt::v12::basic_string_view" }
%class.anon.92 = type { %class.anon.88 }
%"class.fmt::v12::detail::counting_buffer" = type { %"class.fmt::v12::detail::buffer", [256 x i8], i64 }
%"struct.fmt::v12::detail::format_arg_store.95" = type { [1 x %"class.fmt::v12::detail::value"] }
%struct.png_time_struct = type { i16, i8, i8, i8, i8, i8 }
%struct.png_text_struct = type { i32, ptr, ptr, i64, i64, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"ico\00", align 1
@_ZN11OpenImageIO4v3_121ico_output_extensionsE = local_unnamed_addr global [2 x ptr] [ptr @.str, ptr null], align 16
@_ZTVN11OpenImageIO4v3_19ICOOutputE = hidden unnamed_addr constant { [30 x ptr] } { [30 x ptr] [ptr null, ptr @_ZTIN11OpenImageIO4v3_19ICOOutputE, ptr @_ZN11OpenImageIO4v3_19ICOOutputD2Ev, ptr @_ZN11OpenImageIO4v3_19ICOOutputD0Ev, ptr @_ZNK11OpenImageIO4v3_19ICOOutput11format_nameEv, ptr @_ZNK11OpenImageIO4v3_19ICOOutput8supportsENS0_17basic_string_viewIcSt11char_traitsIcEEE, ptr @_ZN11OpenImageIO4v3_19ICOOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE, ptr @_ZN11OpenImageIO4v3_111ImageOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKNS0_9ImageSpecE, ptr @_ZN11OpenImageIO4v3_19ICOOutput5closeEv, ptr @_ZN11OpenImageIO4v3_111ImageOutput11write_imageENS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_111ImageOutput14write_scanlineEiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_111ImageOutput15write_scanlinesEiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_111ImageOutput10write_tileEiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_111ImageOutput11write_tilesEiiiiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_111ImageOutput15write_rectangleEiiiiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_111ImageOutput20write_deep_scanlinesEiiiRKNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_111ImageOutput16write_deep_tilesEiiiiiiRKNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_111ImageOutput16write_deep_imageERKNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_111ImageOutput13set_thumbnailERKNS0_8ImageBufE, ptr @_ZN11OpenImageIO4v3_19ICOOutput14write_scanlineEiiNS0_8TypeDescEPKvl, ptr @_ZN11OpenImageIO4v3_111ImageOutput15write_scanlinesEiiiNS0_8TypeDescEPKvll, ptr @_ZN11OpenImageIO4v3_19ICOOutput10write_tileEiiiNS0_8TypeDescEPKvlll, ptr @_ZN11OpenImageIO4v3_111ImageOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlll, ptr @_ZN11OpenImageIO4v3_111ImageOutput15write_rectangleEiiiiiiNS0_8TypeDescEPKvlll, ptr @_ZN11OpenImageIO4v3_111ImageOutput11write_imageENS0_8TypeDescEPKvlllPFbPvfES5_, ptr @_ZN11OpenImageIO4v3_111ImageOutput10copy_imageEPNS0_10ImageInputE, ptr @_ZN11OpenImageIO4v3_111ImageOutput14send_to_outputEPKcz, ptr @_ZN11OpenImageIO4v3_111ImageOutput11set_ioproxyEPNS0_10Filesystem7IOProxyE, ptr @_ZNK11OpenImageIO4v3_111ImageOutput8heapsizeEv, ptr @_ZNK11OpenImageIO4v3_111ImageOutput9footprintEv] }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"ico:PNG\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"ICO only supports 1-4 channels, not {}\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"oiio:dither\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Could not open \22{}\22\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"File failed ICO header check\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"multiimage\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [35 x i8] c"%s:%u: %s: Assertion '%s' failed.\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/oiio/OpenImageIO/src/ico.imageio/icooutput.cpp\00", align 1
@__FUNCTION__._ZN11OpenImageIO4v3_19ICOOutput5closeEv = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"m_tilebuffer.size()\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"PNG library error\00", align 1
@_ZTIN11OpenImageIO4v3_19ICOOutputE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11OpenImageIO4v3_19ICOOutputE, ptr @_ZTIN11OpenImageIO4v3_111ImageOutputE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11OpenImageIO4v3_19ICOOutputE = hidden constant [31 x i8] c"N11OpenImageIO4v3_19ICOOutputE\00", align 1
@_ZTIN11OpenImageIO4v3_111ImageOutputE = external constant ptr
@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8
@.str.15 = private unnamed_addr constant [61 x i8] c"Image resolution must be at least 1x1, you asked for {} x {}\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"PNG does not support volume images (depth > 1)\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"PNG only supports 1-4 channels, not {}\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"1.6.50\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Could not create PNG write structure\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"Could not create PNG info structure\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], align 16
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], align 16
@.str.24 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTINSt6locale5facetE = external constant ptr
@_ZTIN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetISt6localeEE, ptr @_ZTINSt6locale5facetE }, align 8
@_ZTSN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant [36 x i8] c"N3fmt3v1212format_facetISt6localeEE\00", align 1
@_ZTVN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetISt6localeEE, ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev, ptr @_ZN3fmt3v1212format_facetISt6localeED0Ev, ptr @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, align 8
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@.str.26 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr hidden local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr hidden local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr hidden local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr hidden local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr hidden local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr hidden local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", align 16
@.str.29 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [24 x %"class.fmt::v12::detail::uint128_fallback"] [%"class.fmt::v12::detail::uint128_fallback" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128_fallback" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128_fallback" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128_fallback" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128_fallback" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128_fallback" { i64 7239297505920716784, i64 -1063354554122040811 }], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = linkonce_odr hidden local_unnamed_addr constant [27 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125, i64 390625, i64 1953125, i64 9765625, i64 48828125, i64 244140625, i64 1220703125, i64 6103515625, i64 30517578125, i64 152587890625, i64 762939453125, i64 3814697265625, i64 19073486328125, i64 95367431640625, i64 476837158203125, i64 2384185791015625, i64 11920928955078125, i64 59604644775390625, i64 298023223876953125, i64 1490116119384765625], align 16
@.str.41 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@_ZTIN3fmt3v1212format_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr hidden constant [25 x i8] c"N3fmt3v1212format_errorE\00", align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, align 8
@.str.43 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.49 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.50 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.51 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.60 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.61 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.62 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"PNG write error: {}\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"Could not set PNG IHDR chunk\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"Could not set PNG oFFs chunk\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"oiio:UnassociatedAlpha\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"oiio:ColorSpace\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"srgb_rec709_scene\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"g22_rec709_scene\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"g24_rec709_scene\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"g18_rec709_scene\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"oiio:Gamma\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"scene_linear\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"lin_rec709_scene\00", align 1
@.str.75 = private unnamed_addr constant [29 x i8] c"Could not set PNG gAMA chunk\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.77 = private unnamed_addr constant [38 x i8] c"Could not set PNG gAMA and cHRM chunk\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"ICCProfile\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"Could not set PNG iCCP chunk\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"Embedded Profile\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"ResolutionUnit\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"XResolution\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"YResolution\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"PixelAspectRatio\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"meter\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"inch\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.90 = private unnamed_addr constant [29 x i8] c"Could not set PNG pHYs chunk\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"CICP\00", align 1
@.str.92 = private unnamed_addr constant [29 x i8] c"Could not set PNG cICP chunk\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"planarconfig\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"Artist\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"Author\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"DocumentName\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"ImageDescription\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"DateTime\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"oiio\00", align 1
@.str.109 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN11OpenImageIO4v3_17ustring16empty_std_stringB5cxx11E = external global %"class.std::__cxx11::basic_string", align 8
@.str.110 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"Write error\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"Read error\00", align 1
@.str.113 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"
@switch.table._ZN11OpenImageIO4v3_19ICOOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE.1 = private unnamed_addr constant [4 x i32] [i32 24, i32 32, i32 24, i32 32], align 4
@switch.table._ZN11OpenImageIO4v3_17PNG_pvt19create_write_structB5cxx11ERP14png_struct_defRP12png_info_defRiRNS0_9ImageSpecEPNS0_11ImageOutputE = private unnamed_addr constant [4 x i32] [i32 0, i32 4, i32 2, i32 6], align 4
@switch.table._ZN11OpenImageIO4v3_17PNG_pvt19create_write_structB5cxx11ERP14png_struct_defRP12png_info_defRiRNS0_9ImageSpecEPNS0_11ImageOutputE.2 = private unnamed_addr constant [4 x i32] [i32 -1, i32 1, i32 -1, i32 3], align 4

@_ZN11OpenImageIO4v3_19ICOOutputC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN11OpenImageIO4v3_19ICOOutputC2Ev
@_ZN11OpenImageIO4v3_19ICOOutputD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN11OpenImageIO4v3_19ICOOutputD2Ev

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_125ico_output_imageio_createEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN11OpenImageIO4v3_111ImageOutputnwEm(i64 noundef 344) ; 10 uses
  invoke void @_ZN11OpenImageIO4v3_111ImageOutputC2Ev(ptr noundef nonnull align 8 dereferenceable(344) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 224) (i8, ptr @_ZTVN11OpenImageIO4v3_19ICOOutputE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i64 0, ptr %i.d, align 8, !tbaa !13
  store i8 0, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr null, ptr %i.g, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_111ImageOutputdlEPv(ptr noundef nonnull %i.a) #30
  resume { ptr, i32 } %i.h
}

declare noundef ptr @_ZN11OpenImageIO4v3_111ImageOutputnwEm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_111ImageOutputdlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_19ICOOutputC2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN11OpenImageIO4v3_19ICOOutput4initEv.exit:
  tail call void @_ZN11OpenImageIO4v3_111ImageOutputC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 224) (i8, ptr @_ZTVN11OpenImageIO4v3_19ICOOutputE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.c, align 8, !tbaa !13
  store i8 0, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.f, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  ret void
}

declare void @_ZN11OpenImageIO4v3_111ImageOutputC2Ev(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_111ImageOutputD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11OpenImageIO4v3_19ICOOutputD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19ICOOutput5closeEv(ptr noundef nonnull align 8 dereferenceable(344) %0)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI15png_text_structSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #31
  br label %_ZNSt6vectorI15png_text_structSaIS0_EED2Ev.exit

_ZNSt6vectorI15png_text_structSaIS0_EED2Ev.exit:  ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI15png_text_structSaIS0_EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorI15png_text_structSaIS0_EED2Ev.exit, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIhSaIhEED2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit3

_ZNSt6vectorIhSaIhEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit3
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !16
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN11OpenImageIO4v3_111ImageOutputD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #30
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19ICOOutput5closeEv(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65
  %.not.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_19ICOOutput4initEv.exit, label %_ZSt8_DestroyIP15png_text_structS0_EvT_S2_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIP15png_text_structS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %bb.b
  store ptr %i.e, ptr %i.f, align 8, !tbaa !65
  br label %_ZN11OpenImageIO4v3_19ICOOutput4initEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !66
  %.not4 = icmp eq i32 %i.i, 0
  br i1 %.not4, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !62   ; 2 uses
  %.not5 = icmp eq ptr %i.l, %i.m
  br i1 %.not5, label %bb.e, label %bb.f, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !69
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 398, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_19ICOOutput5closeEv, ptr noundef nonnull @.str.13) #33 ; 0 uses
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.m, %bb.d ], [ %.pre, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !70   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !71
  %i.u = add nsw i32 %i.t, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload = load i64, ptr %i.v, align 8
  %i.w = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_scanlinesEiiiNS0_8TypeDescEPKvll(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.r, i32 noundef %i.u, i32 noundef 0, i64 %.sroa.0.0.copyload, ptr noundef nonnull %i.p, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808) ; 2 uses
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !62   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63
  %.not.i.i.i9 = icmp eq ptr %i.x, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19ICOOutput5closeEv:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.aj = tail call i32 @fclose(ptr noundef %i.ai) ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65
  %.not.i.i.i10 = icmp eq ptr %i.an, %i.al
  br i1 %.not.i.i.i10, label %_ZN11OpenImageIO4v3_19ICOOutput4initEv.exit, label %_ZSt8_DestroyIP15png_text_structS0_EvT_S2_RSaIT0_E.exit.i.i.i11

_ZSt8_DestroyIP15png_text_structS0_EvT_S2_RSaIT0_E.exit.i.i.i11: ; preds = %bb.k
  store ptr %i.al, ptr %i.am, align 8, !tbaa !65
  br label %_ZN11OpenImageIO4v3_19ICOOutput4initEv.exit

_ZN11OpenImageIO4v3_19ICOOutput4initEv.exit:      ; preds = %_ZSt8_DestroyIP15png_text_structS0_EvT_S2_RSaIT0_E.exit.i.i.i11, %bb.k, %_ZSt8_DestroyIP15png_text_structS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.b
  %.0 = phi i1 [ true, %_ZSt8_DestroyIP15png_text_structS0_EvT_S2_RSaIT0_E.exit.i.i.i ], [ true, %bb.b ], [ %.03, %bb.k ], [ %.03, %_ZSt8_DestroyIP15png_text_structS0_EvT_S2_RSaIT0_E.exit.i.i.i11 ]
  ret i1 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #32
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11OpenImageIO4v3_19ICOOutputD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_19ICOOutputD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) #30
  tail call void @_ZN11OpenImageIO4v3_111ImageOutputdlEPv(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19ICOOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 16 ; 3 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"struct.OpenImageIO::v3_1::ICO_pvt::ico_header", align 2 ; 11 uses
  %i.a = alloca [512 x i8], align 16              ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %11 = alloca %"struct.OpenImageIO::v3_1::ICO_pvt::ico_subimage", align 4 ; 9 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca float, align 4                    ; 3 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %13 = alloca %"struct.OpenImageIO::v3_1::ICO_pvt::ico_bitmapinfo", align 4 ; 12 uses
  %i.f = alloca [512 x i8], align 16              ; 5 uses
  %i.g = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_19ICOOutput5closeEv(ptr noundef nonnull align 8 dereferenceable(344) %0) ; 0 uses
  store <4 x i32> <i32 0, i32 256, i32 0, i32 256>, ptr %4, align 16, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> <i32 0, i32 1, i32 0, i32 4>, ptr %i.h, align 16, !tbaa !3
  %i.i = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10check_openENS1_8OpenModeERKNS0_9ImageSpecENS0_3ROIEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i64 noundef 0)
  br i1 %i.i, label %bb.b, label %bb.ao

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !73
  %i.m = icmp eq i8 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 1
  %or.cond.i = select i1 %i.m, i1 %i.p, i1 false
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4
  %.not.i = icmp eq i32 %i.r, 0
  %or.cond129 = select i1 %or.cond.i, i1 %.not.i, i1 false
  br i1 %or.cond129, label %bb.c, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11OpenImageIO4v3_19ImageSpec10set_formatENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 258) #30
  br label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.b, %bb.c
  store ptr @.str.1, ptr %5, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 7, ptr %i.s, align 8, !tbaa !76
  %i.t = call noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull dead_on_return %5, i64 263, i1 noundef zeroext false) ; 3 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 38
  %i.v = load i8, ptr %i.u, align 2, !tbaa !77, !range !80, !noundef !81
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = select i1 %i.w, ptr %i.y, ptr %i.x
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %.not54 = icmp ne i32 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 256
  %or.cond63 = select i1 %.not54, i1 true, i1 %i.ad
  br i1 %or.cond63, label %.thread, label %bb.f

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %.old = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.old61 = load i32, ptr %.old, align 4, !tbaa !82 ; 2 uses
  %.old62 = icmp eq i32 %.old61, 256
  br i1 %.old62, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  store i8 1, ptr %i.ae, align 4, !tbaa !83
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = phi i32 [ %.old61, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !71
  %i.ai = icmp eq i32 %i.ah, 256                  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 4 uses
  %i.ak = zext i1 %i.ai to i8
  store i8 %i.ak, ptr %i.aj, align 4, !tbaa !83
  br i1 %i.ai, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.thread, %bb.f
  %i.al = phi ptr [ %i.ae, %.thread ], [ %i.aj, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @_ZN11OpenImageIO4v3_17PNG_pvt19create_write_structB5cxx11ERP14png_struct_defRP12png_info_defRiRNS0_9ImageSpecEPNS0_11ImageOutputE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef null)
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !13
  %.not55 = icmp eq i64 %i.aq, 0
  br i1 %.not55, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !16
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.ar

bb.j:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.j
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ao

bb.k:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !84
  %switch.tableidx = add i32 %i.bd, -1            ; 3 uses
  %i.be = icmp ult i32 %switch.tableidx, 4
  br i1 %i.be, label %switch.lookup, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %i.bc)
  br label %bb.ao

switch.lookup:                                    ; preds = %bb.k
  %i.bf = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN11OpenImageIO4v3_17PNG_pvt19create_write_structB5cxx11ERP14png_struct_defRP12png_info_defRiRNS0_9ImageSpecEPNS0_11ImageOutputE, i64 %i.bf
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.bg = zext nneg i32 %switch.tableidx to i64
  %switch.gep160 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN11OpenImageIO4v3_19ICOOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE.1, i64 %i.bg
  %switch.load161 = load i32, ptr %switch.gep160, align 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %switch.load, ptr %i.bh, align 8, !tbaa !85
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 %switch.load161, ptr %i.bi, align 4, !tbaa !86
  %i.bj = mul nsw i32 %switch.load161, %i.af
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.bl = add nsw i32 %i.af, 7
  %i.bm = or disjoint i32 %i.bj, 7
  %i.bn = insertelement <2 x i32> poison, i32 %i.bm, i64 0
  %i.bo = insertelement <2 x i32> %i.bn, i32 %i.bl, i64 1
  %i.bp = sdiv <2 x i32> %i.bo, splat (i32 8)     ; 2 uses
  %i.bq = sub nsw <2 x i32> zeroinitializer, %i.bp
  %i.br = and <2 x i32> %i.bq, splat (i32 3)
  %i.bs = add nsw <2 x i32> %i.br, %i.bp
  store <2 x i32> %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = load i8, ptr %i.k, align 8, !tbaa !73
  %.not.i87 = icmp ne i8 %i.bt, 2
  %i.bu = load i8, ptr %i.n, align 1
  %.not3.i = icmp ne i8 %i.bu, 1
  %or.cond.i88.not137 = select i1 %.not.i87, i1 true, i1 %.not3.i
  %i.bv = load i32, ptr %i.q, align 4
  %i.bw = icmp ne i32 %i.bv, 0
  %or.cond133 = select i1 %or.cond.i88.not137, i1 true, i1 %i.bw
  br i1 %or.cond133, label %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, label %bb.m

_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %switch.lookup
  call void @_ZN11OpenImageIO4v3_19ImageSpec10set_formatENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 258) #30
  br label %bb.m

.critedge:                                        ; preds = %bb.g
  %i.bx = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %.critedge
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !16
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.m

bb.m:                                             ; preds = %switch.lookup, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.cc = phi ptr [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.aj, %switch.lookup ], [ %i.aj, %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ] ; 2 uses
  %i.cd = load i8, ptr %i.k, align 8, !tbaa !73
  %i.ce = icmp eq i8 %i.cd, 2
  %i.cf = load i8, ptr %i.n, align 1
  %i.cg = icmp eq i8 %i.cf, 1
  %or.cond.i92 = select i1 %i.ce, i1 %i.cg, i1 false
  %i.ch = load i32, ptr %i.q, align 4
  %.not.i93 = icmp eq i32 %i.ch, 0
  %or.cond136 = select i1 %or.cond.i92, i1 %.not.i93, i1 false
  br i1 %or.cond136, label %bb.n, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit94.thread

bb.n:                                             ; preds = %bb.m
  store ptr @.str.4, ptr %7, align 8, !tbaa !74
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 11, ptr %i.ci, align 8, !tbaa !76
  %i.cj = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull dead_on_return %7, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit94.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit94.thread: ; preds = %bb.m, %bb.n
  %i.ck = phi i32 [ %i.cj, %bb.n ], [ 0, %bb.m ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !87
  %i.cm = load ptr, ptr %1, align 8, !tbaa !64
  store ptr %i.cm, ptr %8, align 8, !tbaa !74
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !13
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !76
  %i.cq = icmp eq i32 %3, 1                       ; 2 uses
  %i.cr = select i1 %i.cq, ptr @.str.5, ptr @.str.6
  store ptr %i.cr, ptr %9, align 8, !tbaa !74
  %i.cs = select i1 %i.cq, i64 3, i64 2
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !76
  %i.cu = call noundef ptr @_ZN11OpenImageIO4v3_110Filesystem5fopenENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9) ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 20 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !17
  %.not56 = icmp eq ptr %i.cu, null
  br i1 %.not56, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit94.thread
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.ao

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit94.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.cw = icmp eq i32 %3, 0
  br i1 %i.cw, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store i16 0, ptr %10, align 2
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i16 1, ptr %i.cx, align 2, !tbaa !88
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i16 1, ptr %i.cy, align 2, !tbaa !91
  %i.cz = call i64 @fwrite(ptr noundef nonnull %10, i64 noundef 6, i64 noundef 1, ptr noundef nonnull %i.cu)
  %.not.i96 = icmp eq i64 %i.cz, 1
  br i1 %.not.i96, label %bb.r, label %_ZN11OpenImageIO4v3_19ICOOutput6fwriteINS0_7ICO_pvt10ico_headerEEEbPKT_mm.exit

_ZN11OpenImageIO4v3_19ICOOutput6fwriteINS0_7ICO_pvt10ico_headerEEEbPKT_mm.exit: ; preds = %bb.q
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull @.str.111)
  br label %bb.an

bb.r:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 22, ptr %i.da, align 8, !tbaa !92
  br label %bb.ac

bb.s:                                             ; preds = %bb.p
  %i.db = call i64 @fread(ptr noundef nonnull %10, i64 noundef 6, i64 noundef 1, ptr noundef nonnull %i.cu)
  %.not.i97 = icmp eq i64 %i.db, 1
  br i1 %.not.i97, label %bb.t, label %_ZN11OpenImageIO4v3_19ICOOutput5freadINS0_7ICO_pvt10ico_headerEEEbPT_mm.exit

_ZN11OpenImageIO4v3_19ICOOutput5freadINS0_7ICO_pvt10ico_headerEEEbPT_mm.exit: ; preds = %bb.s
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull @.str.112)
  br label %bb.an

bb.t:                                             ; preds = %bb.s
  %i.dc = load i16, ptr %10, align 2, !tbaa !93
  %i.dd = icmp ne i16 %i.dc, 0
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 2
  %i.df = load i16, ptr %i.de, align 2
  %i.dg = icmp ne i16 %i.df, 1
  %or.cond = select i1 %i.dd, i1 true, i1 %i.dg
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.8)
  br label %bb.an

bb.v:                                             ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !91 ; 4 uses
  %i.dj = add i16 %i.di, 1
  store i16 %i.dj, ptr %i.dh, align 2, !tbaa !91
  %i.dk = sext i16 %i.di to i32                   ; 2 uses
  %i.dl = load ptr, ptr %i.cv, align 8, !tbaa !17
  %i.dm = call i32 @fseek(ptr noundef %i.dl, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.dn = load ptr, ptr %i.cv, align 8, !tbaa !17
  %i.do = call i64 @ftell(ptr noundef %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.dp = load ptr, ptr %i.cv, align 8, !tbaa !17
  %i.dq = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 1, ptr noundef %i.dp)
  %.not.i98 = icmp eq i64 %i.dq, 1
  br i1 %.not.i98, label %bb.w, label %.critedge70.sink.split

bb.w:                                             ; preds = %bb.v
  %i.dr = trunc i64 %i.do to i32                  ; 2 uses
  %i.ds = shl nsw i32 %i.dk, 4
  %i.dt = add nsw i32 %i.ds, -10                  ; 2 uses
  %i.du = sub nsw i32 %i.dr, %i.dt                ; 2 uses
  %i.dv = icmp slt i32 %i.du, 1
  br i1 %i.dv, label %.critedge66, label %.lr.ph

bb.x:                                             ; preds = %bb.y
  %i.dw = add nsw i32 %storemerge138, -512
  %i.dx = icmp slt i32 %storemerge138, 513
  br i1 %i.dx, label %.critedge66, label %.lr.ph, !llvm.loop !94

.lr.ph:                                           ; preds = %bb.w, %bb.x
  %storemerge138 = phi i32 [ %i.dw, %bb.x ], [ %i.du, %bb.w ] ; 4 uses
  %.sroa.speculated114 = call i32 @llvm.umin.i32(i32 %storemerge138, i32 512) ; 2 uses
  %i.dy = load ptr, ptr %i.cv, align 8, !tbaa !17
  %i.dz = add nsw i32 %storemerge138, %i.dt
  %i.ea = sub i32 %i.dz, %.sroa.speculated114
  %i.eb = sext i32 %i.ea to i64                   ; 2 uses
  %i.ec = call i32 @fseek(ptr noundef %i.dy, i64 noundef %i.eb, i32 noundef 0) ; 0 uses
  %i.ed = zext nneg i32 %.sroa.speculated114 to i64 ; 4 uses
  %i.ee = load ptr, ptr %i.cv, align 8, !tbaa !17
  %i.ef = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.ed, ptr noundef %i.ee)
  %.not.i99 = icmp eq i64 %i.ef, %i.ed
  br i1 %.not.i99, label %bb.y, label %.critedge70.sink.split

bb.y:                                             ; preds = %.lr.ph
  %i.eg = load ptr, ptr %i.cv, align 8, !tbaa !17
  %i.eh = add nsw i64 %i.eb, 16
  %i.ei = call i32 @fseek(ptr noundef %i.eg, i64 noundef %i.eh, i32 noundef 0) ; 0 uses
  %i.ej = load ptr, ptr %i.cv, align 8, !tbaa !17
  %i.ek = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.ed, ptr noundef %i.ej)
  %.not.i100 = icmp eq i64 %i.ek, %i.ed
  br i1 %.not.i100, label %bb.x, label %.critedge70.sink.split

.critedge66:                                      ; preds = %bb.x, %bb.w
  %i.el = load ptr, ptr %i.cv, align 8, !tbaa !17
  %i.em = call i32 @fseek(ptr noundef %i.el, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.en = call noundef zeroext i1 @_ZN11OpenImageIO4v3_19ICOOutput6fwriteINS0_7ICO_pvt10ico_headerEEEbPKT_mm(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull %10, i64 noundef 6, i64 noundef 1)
  br i1 %i.en, label %bb.z, label %.critedge70

bb.z:                                             ; preds = %.critedge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.eo = load ptr, ptr %i.cv, align 8, !tbaa !17
  %i.ep = call i32 @fseek(ptr noundef %i.eo, i64 noundef 12, i32 noundef 1) ; 0 uses
  %.not57.not139 = icmp sgt i16 %i.di, 0
  br i1 %.not57.not139, label %.lr.ph141, label %.critedge68

.lr.ph141:                                        ; preds = %bb.z, %bb.ab
  %.0140 = phi i32 [ %i.fa, %bb.ab ], [ 0, %bb.z ]
  %i.eq = load ptr, ptr %i.cv, align 8, !tbaa !17
  %i.er = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1, ptr noundef %i.eq)
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_19ICOOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE:bb.a

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.hb = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hb, i8 0, i64 24, i1 false)
  store i32 40, ptr %13, align 4, !tbaa !105
  %i.hc = load i32, ptr %i.fi, align 4, !tbaa !82
  %i.hd = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !107
  %i.he = load i32, ptr %i.fl, align 8, !tbaa !71
  %i.hf = shl nsw i32 %i.he, 1
  %i.hg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !108
  %i.hh = load i32, ptr %i.fp, align 4, !tbaa !86
  %i.hi = trunc i32 %i.hh to i16
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 14
  store i16 %i.hi, ptr %i.hj, align 2, !tbaa !109
  %i.hk = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i16 1, ptr %i.hk, align 4, !tbaa !110
  %i.hl = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  store i32 %i.gd, ptr %i.hl, align 4, !tbaa !111
  %i.hm = call noundef zeroext i1 @_ZN11OpenImageIO4v3_19ICOOutput6fwriteINS0_7ICO_pvt14ico_bitmapinfoEEEbPKT_mm(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull %13, i64 noundef 40, i64 noundef 1)
  br i1 %i.hm, label %bb.ai, label %.critedge74

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.f, i8 0, i64 512, i1 false)
  %i.hn = load i32, ptr %i.hl, align 4, !tbaa !111 ; 2 uses
  %i.ho = icmp slt i32 %i.hn, 1
  br i1 %i.ho, label %.critedge72, label %.lr.ph143

bb.aj:                                            ; preds = %.lr.ph143
  %i.hp = add nsw i32 %storemerge58142, -512
  %i.hq = icmp slt i32 %storemerge58142, 513
  br i1 %i.hq, label %.critedge72, label %.lr.ph143, !llvm.loop !112

.lr.ph143:                                        ; preds = %bb.ai, %bb.aj
  %storemerge58142 = phi i32 [ %i.hp, %bb.aj ], [ %i.hn, %bb.ai ] ; 3 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %storemerge58142, i32 512)
  %i.hr = zext nneg i32 %.sroa.speculated to i64  ; 2 uses
  %i.hs = load ptr, ptr %i.cv, align 8, !tbaa !17
  %i.ht = call i64 @fwrite(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef %i.hr, ptr noundef %i.hs)
  %.not.i109 = icmp eq i64 %i.ht, %i.hr
  br i1 %.not.i109, label %bb.aj, label %.critedge81

.critedge72:                                      ; preds = %bb.aj, %bb.ai
  %i.hu = load ptr, ptr %i.cv, align 8, !tbaa !17
  %i.hv = load i32, ptr %i.ge, align 8, !tbaa !92
  %i.hw = sext i32 %i.hv to i64
  %i.hx = add nsw i64 %i.hw, 40
  %i.hy = call i32 @fseek(ptr noundef %i.hu, i64 noundef %i.hx, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !66
  %.not59 = icmp eq i32 %i.ia, 0
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ic = load i32, ptr %i.ib, align 4
  %.not60 = icmp eq i32 %i.ic, 0
  %or.cond77 = select i1 %.not59, i1 true, i1 %.not60
  br i1 %or.cond77, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ie = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.j, i1 noundef zeroext false) #30
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.id, i64 noundef %i.ie)
  br label %bb.am

.critedge74:                                      ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.am

.critedge81:                                      ; preds = %.lr.ph143
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull @.str.111)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.am

bb.am:                                            ; preds = %_ZN11OpenImageIO4v3_19ICOOutput6fwriteINS0_7ICO_pvt12ico_subimageEEEbPKT_mm.exit, %.critedge81, %bb.ak, %bb.al, %.critedge74
  %.11 = phi i1 [ false, %.critedge74 ], [ false, %.critedge81 ], [ false, %_ZN11OpenImageIO4v3_19ICOOutput6fwriteINS0_7ICO_pvt12ico_subimageEEEbPKT_mm.exit ], [ true, %bb.al ], [ true, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.an

.critedge70.sink.split:                           ; preds = %bb.y, %.lr.ph, %bb.v
  %.str.112.sink = phi ptr [ @.str.111, %bb.v ], [ @.str.112, %.lr.ph ], [ @.str.111, %bb.y ]
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull %.str.112.sink)
  br label %.critedge70

.critedge70:                                      ; preds = %.critedge70.sink.split, %.critedge66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.an

.critedge79:                                      ; preds = %bb.aa, %.lr.ph141
  %.str.112.sink159 = phi ptr [ @.str.112, %.lr.ph141 ], [ @.str.111, %bb.aa ]
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull %.str.112.sink159)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.an

bb.an:                                            ; preds = %_ZN11OpenImageIO4v3_19ICOOutput5freadINS0_7ICO_pvt10ico_headerEEEbPT_mm.exit, %_ZN11OpenImageIO4v3_19ICOOutput6fwriteINS0_7ICO_pvt10ico_headerEEEbPKT_mm.exit, %.critedge79, %.critedge70, %bb.am, %bb.u
  %.12 = phi i1 [ %.11, %bb.am ], [ false, %_ZN11OpenImageIO4v3_19ICOOutput6fwriteINS0_7ICO_pvt10ico_headerEEEbPKT_mm.exit ], [ false, %bb.u ], [ false, %.critedge79 ], [ false, %_ZN11OpenImageIO4v3_19ICOOutput5freadINS0_7ICO_pvt10ico_headerEEEbPT_mm.exit ], [ false, %.critedge70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.l, %bb.o, %bb.an, %bb.a
  %.14 = phi i1 [ false, %bb.a ], [ %.12, %bb.an ], [ false, %bb.o ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ false, %bb.l ]
  ret i1 %.14
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10check_openENS1_8OpenModeERKNS0_9ImageSpecENS0_3ROIEm(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpec10set_formatENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160), i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_17PNG_pvt19create_write_structB5cxx11ERP14png_struct_defRP12png_info_defRiRNS0_9ImageSpecEPNS0_11ImageOutputE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef %5) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.94", align 16 ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !113  ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  %or.cond = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !114
  store i32 %i.f, ptr %7, align 16, !tbaa !16, !noalias !114
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.i, ptr %i.k, align 16, !tbaa !16, !noalias !114
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.15, i64 60, i64 17, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !114
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !117  ; 2 uses
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  store i32 1, ptr %i.l, align 4, !tbaa !117
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not52 = icmp eq i32 %i.m, 1
  br i1 %.not52, label %bb.e, label %.noexc.i

.noexc.i:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 46, ptr %i.d, align 8, !tbaa !118
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !64
  %i.q = load i64, ptr %i.d, align 8, !tbaa !118  ; 3 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.p, ptr noundef nonnull align 1 dereferenceable(46) @.str.16, i64 46, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  store i8 0, ptr %i.s, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.i

bb.e:                                             ; preds = %.thread, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.u = load i32, ptr %i.t, align 4, !tbaa !119  ; 2 uses
  %switch.tableidx = add i32 %i.u, -1             ; 3 uses
  %i.v = icmp ult i32 %switch.tableidx, 4
  br i1 %i.v, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !120
  %.sroa.03.0.insert.ext.i = zext i32 %i.u to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %6, align 16, !noalias !120
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.17, i64 38, i64 1, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !120
  br label %bb.i

switch.lookup:                                    ; preds = %bb.e
  %i.w = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN11OpenImageIO4v3_17PNG_pvt19create_write_structB5cxx11ERP14png_struct_defRP12png_info_defRiRNS0_9ImageSpecEPNS0_11ImageOutputE, i64 %i.w
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.x = zext nneg i32 %switch.tableidx to i64
  %switch.gep56 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN11OpenImageIO4v3_17PNG_pvt19create_write_structB5cxx11ERP14png_struct_defRP12png_info_defRiRNS0_9ImageSpecEPNS0_11ImageOutputE.2, i64 %i.x
  %switch.load57 = load i32, ptr %switch.gep56, align 4
  store i32 %switch.load, ptr %3, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i32 %switch.load57, ptr %i.y, align 8, !tbaa !123
  %i.z = call noalias ptr @png_create_write_struct(ptr noundef nonnull @.str.18, ptr noundef %5, ptr noundef nonnull @_ZN11OpenImageIO4v3_17PNG_pvtL13wrerr_handlerEP14png_struct_defPKc, ptr noundef nonnull @_ZN11OpenImageIO4v3_17PNG_pvtL16null_png_handlerEP14png_struct_defPKc) ; 3 uses
  store ptr %i.z, ptr %1, align 8, !tbaa !124
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.noexc.i33, label %bb.g

.noexc.i33:                                       ; preds = %switch.lookup
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 36, ptr %i.c, align 8, !tbaa !118
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !64
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !118 ; 3 uses
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.ab, ptr noundef nonnull align 1 dereferenceable(36) @.str.19, i64 36, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.i

bb.g:                                             ; preds = %switch.lookup
  %i.af = call noalias ptr @png_create_info_struct(ptr noundef nonnull %i.z) ; 2 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !125
  %.not27 = icmp eq ptr %i.af, null
  br i1 %.not27, label %.noexc.i37, label %bb.h

.noexc.i37:                                       ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 35, ptr %i.b, align 8, !tbaa !118
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !64
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !118 ; 3 uses
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.ah, ptr noundef nonnull align 1 dereferenceable(35) @.str.20, i64 35, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %1, align 8, !tbaa !124
  %i.am = call ptr @png_set_longjmp_fn(ptr noundef %i.al, ptr noundef nonnull @longjmp, i64 noundef 200)
  %i.an = call i32 @_setjmp(ptr noundef %i.am) #34
  %.not28 = icmp eq i32 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !9
  br i1 %.not28, label %._crit_edge.i.i44, label %.noexc.i41

.noexc.i41:                                       ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 17, ptr %i.a, align 8, !tbaa !118
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !64
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !118 ; 3 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ap, ptr noundef nonnull align 1 dereferenceable(17) @.str.14, i64 17, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !13
  %i.as = load ptr, ptr %0, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.i

._crit_edge.i.i44:                                ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !13
  store i8 0, ptr %i.ao, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i44, %.noexc.i41, %.noexc.i37, %.noexc.i33, %bb.f, %.noexc.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.107", align 16 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30, !noalias !126
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !126
  %i.b = load ptr, ptr %2, align 8, !tbaa !64, !noalias !126
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13, !noalias !126
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %3, align 16, !noalias !126
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %.sroa_idx3.i, align 8, !noalias !126
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 13, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !126
  %i.f = load ptr, ptr %5, align 8, !tbaa !64
  store ptr %i.f, ptr %4, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  store i64 %i.i, ptr %i.g, align 8, !tbaa !76
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %5, align 8, !tbaa !64     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !16
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !64     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.94", align 16 ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !129
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !129
  %.sroa.03.0.insert.ext.i = zext i32 %i.b to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %3, align 16, !noalias !129
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 1, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !129
  %i.c = load ptr, ptr %5, align 8, !tbaa !64
  store ptr %i.c, ptr %4, align 8, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  store i64 %i.f, ptr %i.d, align 8, !tbaa !76
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %5, align 8, !tbaa !64     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8, !tbaa !64     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !16
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

end_hunk_2
