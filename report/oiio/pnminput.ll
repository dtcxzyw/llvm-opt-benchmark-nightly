inline.NumInlined: 3143
inline.NumDeleted: 977
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::locale::id" = type { i64 }
%"struct.fmt::v12::detail::singleton" = type { i8, i8 }
%"class.fmt::v12::detail::uint128_fallback" = type { i64, i64 }
%"class.OpenImageIO::v3_1::basic_string_view" = type { ptr, i64 }
%"struct.fmt::v12::detail::format_arg_store" = type { [1 x %"class.fmt::v12::detail::value"] }
%"class.fmt::v12::detail::value" = type { %union.anon.32 }
%union.anon.32 = type { i128 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.OpenImageIO::v3_1::ImageSpec" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %"struct.OpenImageIO::v3_1::TypeDesc", %"class.std::vector", %"class.std::vector.0", i32, i32, i8, %"class.OpenImageIO::v3_1::ParamValueList" }
%"struct.OpenImageIO::v3_1::TypeDesc" = type { i8, i8, i8, i8, i32 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<OpenImageIO::v3_1::TypeDesc, std::allocator<OpenImageIO::v3_1::TypeDesc>>::_Vector_impl" }
%"struct.std::_Vector_base<OpenImageIO::v3_1::TypeDesc, std::allocator<OpenImageIO::v3_1::TypeDesc>>::_Vector_impl" = type { %"struct.std::_Vector_base<OpenImageIO::v3_1::TypeDesc, std::allocator<OpenImageIO::v3_1::TypeDesc>>::_Vector_impl_data" }
%"struct.std::_Vector_base<OpenImageIO::v3_1::TypeDesc, std::allocator<OpenImageIO::v3_1::TypeDesc>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.OpenImageIO::v3_1::ParamValueList" = type { %"class.std::vector.5" }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<OpenImageIO::v3_1::ParamValue, std::allocator<OpenImageIO::v3_1::ParamValue>>::_Vector_impl" }
%"struct.std::_Vector_base<OpenImageIO::v3_1::ParamValue, std::allocator<OpenImageIO::v3_1::ParamValue>>::_Vector_impl" = type { %"struct.std::_Vector_base<OpenImageIO::v3_1::ParamValue, std::allocator<OpenImageIO::v3_1::ParamValue>>::_Vector_impl_data" }
%"struct.std::_Vector_base<OpenImageIO::v3_1::ParamValue, std::allocator<OpenImageIO::v3_1::ParamValue>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.OpenImageIO::v3_1::ROI" = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%"struct.fmt::v12::detail::format_arg_store.100" = type { [1 x %"class.fmt::v12::detail::value"] }
%"class.OpenImageIO::v3_1::span" = type { ptr, i64 }
%"class.OpenImageIO::v3_1::span.28" = type { ptr, i64 }
%"class.fmt::v12::basic_memory_buffer" = type <{ %"class.fmt::v12::detail::buffer", [500 x i8], [4 x i8] }>
%"class.fmt::v12::detail::buffer" = type { ptr, i64, i64, ptr }
%"class.fmt::v12::parse_context" = type <{ %"class.fmt::v12::basic_string_view", i32, [4 x i8] }>
%"class.fmt::v12::basic_string_view" = type { ptr, i64 }
%"class.fmt::v12::context" = type { %"class.fmt::v12::basic_appender", %"class.fmt::v12::basic_format_args", %"class.fmt::v12::locale_ref" }
%"class.fmt::v12::basic_appender" = type { ptr }
%"class.fmt::v12::basic_format_args" = type { i64, %union.anon.31 }
%union.anon.31 = type { ptr }
%"class.fmt::v12::locale_ref" = type { ptr }
%"struct.fmt::v12::detail::default_arg_formatter" = type { %"class.fmt::v12::basic_appender" }
%"struct.fmt::v12::detail::format_handler" = type { %"class.fmt::v12::parse_context", %"class.fmt::v12::context" }
%class.anon.75 = type <{ i64, i32, [4 x i8] }>
%"struct.fmt::v12::format_specs" = type { %"class.fmt::v12::basic_specs", i32, i32 }
%"class.fmt::v12::basic_specs" = type { i32, [4 x i8] }
%class.anon.54 = type { %"class.fmt::v12::basic_string_view" }
%struct.id_adapter = type <{ ptr, i32, [4 x i8] }>
%"class.fmt::v12::loc_value" = type { %"class.fmt::v12::basic_format_arg" }
%"class.fmt::v12::basic_format_arg" = type <{ %"class.fmt::v12::detail::value", i32, [12 x i8] }>
%"class.std::locale" = type { ptr }
%"class.fmt::v12::format_facet" = type { %"class.std::locale::facet.base", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::locale::facet.base" = type <{ ptr, i32 }>
%class.anon.38 = type { i8, i8 }
%"struct.fmt::v12::detail::loc_writer" = type { %"class.fmt::v12::basic_appender", ptr, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.fmt::v12::detail::digit_grouping" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.anon = type { ptr, ptr, ptr }
%"struct.fmt::v12::detail::find_escape_result" = type { ptr, ptr, i32 }
%"class.fmt::v12::basic_memory_buffer.40" = type <{ %"class.fmt::v12::detail::buffer.41", [500 x i32], [8 x i8] }>
%"class.fmt::v12::detail::buffer.41" = type { ptr, i64, i64, ptr }
%class.anon.46 = type { ptr, ptr, ptr }
%class.anon.55 = type { i32, ptr }
%"struct.fmt::v12::detail::dragonbox::decimal_fp" = type { i32, i32 }
%"class.fmt::v12::detail::fallback_digit_grouping" = type { i8 }
%class.anon.56 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.57 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.58 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.fmt::v12::detail::dragonbox::decimal_fp.59" = type { i64, i32 }
%class.anon.60 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.61 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.62 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.64 = type { %"class.fmt::v12::basic_string_view" }
%"struct.fmt::v12::detail::big_decimal_fp" = type { ptr, i32, i32 }
%"struct.fmt::v12::detail::basic_fp" = type <{ i128, i32, [12 x i8] }>
%"class.fmt::v12::detail::bigint" = type { %"class.fmt::v12::basic_memory_buffer.66", i32, [4 x i8] }
%"class.fmt::v12::basic_memory_buffer.66" = type <{ %"class.fmt::v12::detail::buffer.67", [32 x i32], [8 x i8] }>
%"class.fmt::v12::detail::buffer.67" = type { ptr, i64, i64, ptr }
%class.anon.70 = type <{ i32, [4 x i8], %"struct.fmt::v12::detail::big_decimal_fp", i32, i8, [3 x i8], i32, i8, [3 x i8], i32, [4 x i8] }>
%class.anon.73 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.74 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.fmt::v12::detail::thousands_sep_result" = type <{ %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"struct.fmt::v12::detail::write_int_arg.45" = type { i128, i32 }
%"struct.fmt::v12::detail::dynamic_format_specs" = type { %"struct.fmt::v12::format_specs", %"union.fmt::v12::detail::arg_ref", %"union.fmt::v12::detail::arg_ref" }
%"union.fmt::v12::detail::arg_ref" = type { %"class.fmt::v12::basic_string_view" }
%"struct.fmt::v12::detail::dynamic_spec_handler" = type { ptr, ptr, ptr }
%class.anon.81 = type { i32, %"struct.fmt::v12::detail::dragonbox::decimal_fp", i32, i8, i32, i8, i32 }
%class.anon.83 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.84 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.89 = type <{ i32, [4 x i8], %"struct.fmt::v12::detail::dragonbox::decimal_fp.59", i32, i8, [3 x i8], i32, i8, [3 x i8], i32, [4 x i8] }>
%class.anon.92 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.93 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.94 = type { ptr, ptr, ptr, ptr, ptr }
%class.anon.95 = type { i8, i64, %"class.fmt::v12::basic_string_view" }
%class.anon.98 = type { %class.anon.94 }
%"class.fmt::v12::detail::counting_buffer" = type { %"class.fmt::v12::detail::buffer", [256 x i8], i64 }

@_ZN11OpenImageIO4v3_119pnm_imageio_versionE = local_unnamed_addr global i32 27, align 4
@.str = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pgm\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pbm\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pnm\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pfm\00", align 1
@_ZN11OpenImageIO4v3_120pnm_input_extensionsE = local_unnamed_addr global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr null], align 16
@.str.5 = private unnamed_addr constant [22 x i8] c"Premature end of file\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"pnm:binary\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"oiio:BitsPerSample\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"pnm:bigendian\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Rec709\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Could not parse spec for file \22%s\22\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"pnm:pfmflip\00", align 1
@_ZTVN11OpenImageIO4v3_18PNMInputE = hidden unnamed_addr constant { [45 x ptr] } { [45 x ptr] [ptr null, ptr @_ZTIN11OpenImageIO4v3_18PNMInputE, ptr @_ZN11OpenImageIO4v3_18PNMInputD2Ev, ptr @_ZN11OpenImageIO4v3_18PNMInputD0Ev, ptr @_ZNK11OpenImageIO4v3_18PNMInput11format_nameEv, ptr @_ZNK11OpenImageIO4v3_18PNMInput8supportsENS0_17basic_string_viewIcSt11char_traitsIcEEE, ptr @_ZNK11OpenImageIO4v3_110ImageInput10valid_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK11OpenImageIO4v3_110ImageInput10valid_fileEPNS0_10Filesystem7IOProxyE, ptr @_ZN11OpenImageIO4v3_18PNMInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE, ptr @_ZN11OpenImageIO4v3_18PNMInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecERKSA_, ptr @_ZNK11OpenImageIO4v3_110ImageInput4specEv, ptr @_ZN11OpenImageIO4v3_110ImageInput4specEii, ptr @_ZN11OpenImageIO4v3_110ImageInput15spec_dimensionsEii, ptr @_ZN11OpenImageIO4v3_110ImageInput13get_thumbnailERNS0_8ImageBufEi, ptr @_ZN11OpenImageIO4v3_18PNMInput5closeEv, ptr @_ZNK11OpenImageIO4v3_18PNMInput16current_subimageEv, ptr @_ZNK11OpenImageIO4v3_110ImageInput16current_miplevelEv, ptr @_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput26read_native_deep_scanlinesEiiiiiiiRNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_tilesEiiiiiiiiiiRNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_imageEiiRNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_110ImageInput13read_scanlineEiiNS0_8TypeDescEPvl, ptr @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiiNS0_8TypeDescEPvll, ptr @_ZN11OpenImageIO4v3_110ImageInput9read_tileEiiiNS0_8TypeDescEPvlll, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescEPvlll, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescEPvlllPFbS3_fES3_, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput28read_native_volumetric_tilesEiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput28read_native_volumetric_tilesEiiiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_18PNMInput20read_native_scanlineEiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput16read_native_tileEiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput13send_to_inputEPKcz, ptr @_ZN11OpenImageIO4v3_110ImageInput11set_ioproxyEPNS0_10Filesystem7IOProxyE, ptr @_ZNK11OpenImageIO4v3_110ImageInput8heapsizeEv, ptr @_ZNK11OpenImageIO4v3_110ImageInput9footprintEv] }, align 8
@_ZTIN11OpenImageIO4v3_18PNMInputE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11OpenImageIO4v3_18PNMInputE, ptr @_ZTIN11OpenImageIO4v3_110ImageInputE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11OpenImageIO4v3_18PNMInputE = hidden constant [30 x i8] c"N11OpenImageIO4v3_18PNMInputE\00", align 1
@_ZTIN11OpenImageIO4v3_110ImageInputE = external constant ptr
@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8
@.str.12 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], align 16
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], align 16
@.str.18 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTINSt6locale5facetE = external constant ptr
@_ZTIN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetISt6localeEE, ptr @_ZTINSt6locale5facetE }, align 8
@_ZTSN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant [36 x i8] c"N3fmt3v1212format_facetISt6localeEE\00", align 1
@_ZTVN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetISt6localeEE, ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev, ptr @_ZN3fmt3v1212format_facetISt6localeED0Ev, ptr @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, align 8
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@.str.20 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr hidden local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr hidden local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr hidden local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr hidden local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr hidden local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr hidden local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", align 16
@.str.23 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [24 x %"class.fmt::v12::detail::uint128_fallback"] [%"class.fmt::v12::detail::uint128_fallback" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128_fallback" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128_fallback" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128_fallback" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128_fallback" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128_fallback" { i64 7239297505920716784, i64 -1063354554122040811 }], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = linkonce_odr hidden local_unnamed_addr constant [27 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125, i64 390625, i64 1953125, i64 9765625, i64 48828125, i64 244140625, i64 1220703125, i64 6103515625, i64 30517578125, i64 152587890625, i64 762939453125, i64 3814697265625, i64 19073486328125, i64 95367431640625, i64 476837158203125, i64 2384185791015625, i64 11920928955078125, i64 59604644775390625, i64 298023223876953125, i64 1490116119384765625], align 16
@.str.35 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@_ZTIN3fmt3v1212format_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr hidden constant [25 x i8] c"N3fmt3v1212format_errorE\00", align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, align 8
@.str.37 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.44 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.52 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.54 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.55 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.56 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"
@switch.table._ZN11OpenImageIO4v3_18PNMInput16read_file_headerEv = private unnamed_addr constant [54 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6], align 4

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_124pnm_input_imageio_createEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN11OpenImageIO4v3_110ImageInputnwEm(i64 noundef 264) ; 9 uses
  invoke void @_ZN11OpenImageIO4v3_110ImageInputC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 344) (i8, ptr @_ZTVN11OpenImageIO4v3_18PNMInputE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  invoke void @_ZN11OpenImageIO4v3_110ImageInput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(264) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

_ZNSt6vectorIcSaIcEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  tail call void @_ZN11OpenImageIO4v3_110ImageInputD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(264) %i.a) #28
  br label %.body

bb.d:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i32 0, ptr %i.j, align 8, !tbaa !14
  ret ptr %i.a

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.c, %_ZNSt6vectorIcSaIcEED2Ev.exit.i ]
  tail call void @_ZN11OpenImageIO4v3_110ImageInputdlEPv(ptr noundef nonnull %i.a) #28
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef ptr @_ZN11OpenImageIO4v3_110ImageInputnwEm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ImageInputdlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @_ZN11OpenImageIO4v3_127pnm_imageio_library_versionEv() local_unnamed_addr #3 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PNMInput18read_file_scanlineEPvi(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !52
  store i32 0, ptr %i.e, align 8, !tbaa !14
  %i.j = icmp slt i32 %2, 0
  br i1 %i.j, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !55
  %i.o = load i32, ptr %i.l, align 4, !tbaa !56
  %i.p = mul i32 %i.n, %i.o                       ; 16 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.neg = xor i32 %2, -1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 13 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 10 uses
  %i.x = sext i32 %i.p to i64                     ; 23 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = icmp sgt i32 %i.p, 0                     ; 2 uses
  %.not.i108 = icmp eq i32 %i.p, 0                ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 3 uses
  %wide.trip.count.i = zext i32 %i.p to i64       ; 6 uses
  %i.ab = shl nuw nsw i64 %i.x, 1                 ; 2 uses
  %i.ac = add nsw i64 %i.x, -1                    ; 3 uses
  %min.iters.check318 = icmp ult i32 %i.p, 8
  %n.vec321 = and i64 %i.x, 2147483640            ; 3 uses
  %cmp.n328 = icmp eq i64 %n.vec321, %i.x
  %min.iters.check305 = icmp ult i32 %i.p, 8
  %n.vec308 = and i64 %i.x, -8                    ; 3 uses
  %cmp.n315 = icmp eq i64 %n.vec308, %i.x
  %xtraiter = and i64 %i.x, 3
  %i.ad = and i32 %i.p, 3
  %lcmp.mod.not = icmp eq i32 %i.ad, 0
  %i.ae = icmp eq i64 %i.ac, 0
  %unroll_iter = and i64 %i.x, -2
  %i.af = and i32 %i.p, 1
  %lcmp.mod485.not = icmp eq i32 %i.af, 0
  %lcmp.mod486 = trunc i32 %i.p to i1
  %min.iters.check276 = icmp ult i32 %i.p, 4
  %min.iters.check278 = icmp ult i32 %i.p, 16
  %n.mod.vf280 = and i64 %wide.trip.count.i, 12
  %n.vec281 = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  %cmp.n288 = icmp eq i64 %n.vec281, %wide.trip.count.i
  %min.epilog.iters.check293 = icmp eq i64 %n.mod.vf280, 0
  %n.vec296 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n302 = icmp eq i64 %n.vec296, %wide.trip.count.i
  %i.ag = icmp eq i64 %i.ac, 0
  %unroll_iter491 = and i64 %i.x, -2
  %i.ah = and i32 %i.p, 1
  %lcmp.mod489.not = icmp eq i32 %i.ah, 0
  %lcmp.mod490 = trunc i32 %i.p to i1
  %min.iters.check = icmp ult i32 %i.p, 4
  %min.iters.check268 = icmp ult i32 %i.p, 32
  %n.vec = and i64 %i.x, -32                      ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.x
  %i.ai = and i32 %i.p, 28
  %min.epilog.iters.check = icmp eq i32 %i.ai, 0
  %n.vec271 = and i64 %i.x, -4                    ; 3 uses
  %cmp.n275 = icmp eq i64 %n.vec271, %i.x
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit
  %.sroa.19.0153 = phi ptr [ null, %.lr.ph ], [ %.sroa.19.2, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit ] ; 9 uses
  %.sroa.13.0152 = phi ptr [ null, %.lr.ph ], [ %.sroa.13.2, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit ] ; 10 uses
  %.sroa.0118.0151 = phi ptr [ null, %.lr.ph ], [ %.sroa.0118.2, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit ] ; 24 uses
  %i.aj = load i32, ptr %i.q, align 8, !tbaa !57  ; 2 uses
  %i.ak = and i32 %i.aj, -2
  %switch = icmp eq i32 %i.ak, 6
  %i.al = load i8, ptr %i.r, align 4, !range !58
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond50 = select i1 %switch, i1 %i.am, i1 false
  br i1 %or.cond50, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %bb.d

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.c
  %i.an = load i32, ptr %i.s, align 8, !tbaa !59
  %i.ao = load i32, ptr %i.t, align 4, !tbaa !60
  %i.ap = add i32 %i.an, %.neg
  %i.aq = add i32 %i.ap, %i.ao
  %i.ar = sext i32 %i.aq to i64
  %i.as = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.k, i1 noundef zeroext false) #28
  %i.at = mul i64 %i.as, %i.ar                    ; 3 uses
  %i.au = load i64, ptr %i.u, align 8, !tbaa !61, !noalias !62 ; 2 uses
  %.not.i = icmp ult i64 %i.at, %i.au
  %i.av = load ptr, ptr %i.v, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  %.sroa.0.0 = select i1 %.not.i, ptr %i.aw, ptr null
  %.sroa.5.0 = call i64 @llvm.usub.sat.i64(i64 %i.au, i64 %i.at)
  store ptr %.sroa.0.0, ptr %i.w, align 8, !tbaa !53
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !54
  %.pre = load i32, ptr %i.q, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.ax = phi i32 [ %i.aj, %bb.c ], [ %.pre, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ] ; 3 uses
  %i.ay = add i32 %i.ax, -3
  %or.cond131 = icmp ult i32 %i.ay, 5
  br i1 %or.cond131, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  switch i32 %i.ax, label %bb.h [
    i32 3, label %bb.f
    i32 7, label %bb.g
    i32 6, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.az = load i32, ptr %i.l, align 4, !tbaa !56
  %i.ba = add nsw i32 %i.az, 7
  %i.bb = sdiv i32 %i.ba, 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.bc = load i32, ptr %i.m, align 4, !tbaa !55
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18PNMInput18read_file_scanlineEPvi:bb.a
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !97
  %i.jm = fmul float %i.ip, %i.jl
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jj
  store float %i.jm, ptr %i.jn, align 4, !tbaa !97
  %i.jo = add nuw i64 %.016.i, 2                  ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0118.2, i64 %i.jo
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !97
  %i.jr = fmul float %i.ip, %i.jq
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jo
  store float %i.jr, ptr %i.js, align 4, !tbaa !97
  %i.jt = add nuw i64 %.016.i, 3                  ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0118.2, i64 %i.jt
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !97
  %i.jw = fmul float %i.ip, %i.jv
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jt
  store float %i.jw, ptr %i.jx, align 4, !tbaa !97
  %i.jy = add nuw i64 %.016.i, 4                  ; 2 uses
  %exitcond.not.i111.3 = icmp eq i64 %i.jy, %i.x
  br i1 %exitcond.not.i111.3, label %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit, label %.lr.ph.i110, !llvm.loop !103

_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.thread:  ; preds = %.thread.i, %.thread.i62, %.thread.i78
  %i.jz = load i32, ptr %i.e, align 8, !tbaa !14
  %i.ka = add nsw i32 %i.jz, 1
  store i32 %i.ka, ptr %i.e, align 8, !tbaa !14
  br label %.critedge

_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.sink.split: ; preds = %.preheader.i106, %.preheader.i98, %.preheader.i84, %.preheader.i68, %.preheader.i
  %.sink = phi i64 [ %i.ab, %.preheader.i68 ], [ %i.x, %.preheader.i ], [ %i.x, %.preheader.i84 ], [ %i.ab, %.preheader.i98 ], [ %i.x, %.preheader.i106 ]
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 -1, i64 %.sink, i1 false), !tbaa !66
  br label %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit

_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.loopexit455.unr-lcssa: ; preds = %.lr.ph.i95.new
  br i1 %lcmp.mod489.not, label %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit, label %.epil.preheader487

.epil.preheader487:                               ; preds = %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.loopexit455.unr-lcssa, %.lr.ph.i95
  %.01421.i.epil.init = phi i64 [ 0, %.lr.ph.i95 ], [ %i.ho, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.loopexit455.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod490)
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0118.2, i64 %.01421.i.epil.init
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !86
  %i.kd = call i16 @llvm.umin.i16(i16 %i.kc, i16 %i.gx)
  %.sroa.speculated.i96.epil = zext i16 %i.kd to i32
  %i.ke = mul nuw nsw i32 %.sroa.speculated.i96.epil, 65535
  %i.kf = udiv i32 %i.ke, %i.gy
  %i.kg = trunc i32 %i.kf to i16
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.01421.i.epil.init
  store i16 %i.kg, ptr %i.kh, align 2, !tbaa !86
  br label %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit

_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.loopexit456.unr-lcssa: ; preds = %.lr.ph.i102.new
  br i1 %lcmp.mod485.not, label %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.loopexit456.unr-lcssa, %.lr.ph.i102
  %.01421.i103.epil.init = phi i64 [ 0, %.lr.ph.i102 ], [ %i.ie, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.loopexit456.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod486)
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0118.2, i64 %.01421.i103.epil.init
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !66
  %i.kk = call i8 @llvm.umin.i8(i8 %i.kj, i8 %i.hp)
  %.sroa.speculated.i104.epil = zext i8 %i.kk to i16
  %.lhs.trunc.i.epil = mul nuw i16 %.sroa.speculated.i104.epil, 255
  %i.kl = udiv i16 %.lhs.trunc.i.epil, %.rhs.trunc.i
  %i.km = trunc i16 %i.kl to i8
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 %.01421.i103.epil.init
  store i8 %i.km, ptr %i.kn, align 1, !tbaa !66
  br label %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit

_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit:         ; preds = %.lr.ph.i110.prol.loopexit, %.lr.ph.i110, %.epil.preheader, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.loopexit456.unr-lcssa, %.epil.preheader487, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.loopexit455.unr-lcssa, %bb.ae, %bb.ab, %bb.y, %.lr.ph43.i, %middle.block314, %middle.block, %vec.epilog.middle.block, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.sink.split, %.preheader40.i72, %.preheader.i84, %.preheader40.i56, %.preheader.i68, %.preheader40.i, %.preheader.i, %_ZN11OpenImageIO4v3_111swap_endianIfEEvPT_i.exit.i, %.preheader.i106, %.preheader19.i101, %.preheader.i98, %.preheader19.i, %bb.ac
  %i.ko = load i32, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %i.kp = add nsw i32 %i.ko, 1
  store i32 %i.kp, ptr %i.e, align 8, !tbaa !14
  %.not = icmp slt i32 %i.ko, %2
  br i1 %.not, label %bb.c, label %.critedge, !llvm.loop !104

.critedge:                                        ; preds = %bb.r, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.thread, %bb.j
  %.sroa.0118.3 = phi ptr [ %.sroa.0118.0151, %bb.j ], [ %.sroa.0118.2, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.thread ], [ %.sroa.0118.2, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit ], [ %.sroa.0118.2, %bb.r ] ; 3 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.0153, %bb.j ], [ %.sroa.19.2, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.thread ], [ %.sroa.19.2, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit ], [ %.sroa.19.2, %bb.r ]
  %.3 = phi i1 [ false, %bb.j ], [ false, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit.thread ], [ false, %bb.r ], [ true, %_ZN11OpenImageIO4v3_16unpackEPKhPhm.exit ] ; 2 uses
  %.not.i.i.i113 = icmp eq ptr %.sroa.0118.3, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %.critedge
  %i.kq = ptrtoint ptr %.sroa.19.3 to i64
  %i.kr = ptrtoint ptr %.sroa.0118.3 to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.3, i64 noundef %i.ks) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.b, %.critedge, %bb.aj
  %.3205 = phi i1 [ %.3, %bb.aj ], [ %.3, %.critedge ], [ true, %bb.b ]
  ret i1 %.3205

bb.ak:                                            ; preds = %bb.k
  %i.kt = ptrtoint ptr %.sroa.19.0153 to i64
  %i.ku = ptrtoint ptr %.sroa.0118.0151 to i64
  %i.kv = sub i64 %i.kt, %i.ku
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.0151, i64 noundef %i.kv) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit115

_ZNSt6vectorIhSaIhEED2Ev.exit115:                 ; preds = %bb.k, %bb.ak
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28, !noalias !105
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !105
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !105
  %i.b = load ptr, ptr %4, align 8, !tbaa !108
  store ptr %i.b, ptr %3, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !111
  store i64 %i.e, ptr %i.c, align 8, !tbaa !61
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !108    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !66
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !108    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !66
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PNMInput16read_file_headerEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 5 uses
  %9 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 5 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 18 uses
  %i.h = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10parse_charERNS0_17basic_string_viewIcSt11char_traitsIcEEEcbb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 noundef signext 80, i1 noundef zeroext true, i1 noundef zeroext true) #28
  br i1 %i.h, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 11 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !61   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !65   ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !66
  %switch.tableidx = add i8 %i.m, -49             ; 3 uses
  %11 = icmp ult i8 %switch.tableidx, 54
  br i1 %11, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 9007199256838207, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %12 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN11OpenImageIO4v3_18PNMInput16read_file_headerEv, i64 %12
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %switch.load, ptr %i.n, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.o, ptr %i.g, align 8, !tbaa !65
  %i.p = add i64 %i.j, -1                         ; 2 uses
  store i64 %i.p, ptr %i.i, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %.not1.i.i = icmp eq i64 %i.p, 0
  br i1 %.not1.i.i, label %_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %i.q = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10parse_charERNS0_17basic_string_viewIcSt11char_traitsIcEEEcbb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 noundef signext 35, i1 noundef zeroext true, i1 noundef zeroext true) #28
  br i1 %i.q, label %bb.f, label %_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN11OpenImageIO4v3_17Strutil10parse_lineERNS0_17basic_string_viewIcSt11char_traitsIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i1 noundef zeroext true) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.r = load i64, ptr %i.i, align 8, !tbaa !61
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_.exit, label %.lr.ph.i.i, !llvm.loop !81

_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %i.s = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil9parse_intERNS0_17basic_string_viewIcSt11char_traitsIcEEERib(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i1 noundef zeroext true) #28
  br i1 %i.s, label %bb.g, label %_ZN11OpenImageIO4v3_17Strutil7isspaceEc.exit

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_.exit
  %i.t = load i64, ptr %i.i, align 8, !tbaa !61
  %.not1.i.i12 = icmp eq i64 %i.t, 0
  br i1 %.not1.i.i12, label %_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_.exit15, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %bb.g, %bb.h
  %i.u = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10parse_charERNS0_17basic_string_viewIcSt11char_traitsIcEEEcbb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 noundef signext 35, i1 noundef zeroext true, i1 noundef zeroext true) #28
  br i1 %i.u, label %bb.h, label %_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_.exit15

bb.h:                                             ; preds = %.lr.ph.i.i13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN11OpenImageIO4v3_17Strutil10parse_lineERNS0_17basic_string_viewIcSt11char_traitsIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i1 noundef zeroext true) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.v = load i64, ptr %i.i, align 8, !tbaa !61
  %.not.i.i14 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i14, label %_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_.exit15, label %.lr.ph.i.i13, !llvm.loop !81

_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_.exit15: ; preds = %.lr.ph.i.i13, %bb.h, %bb.g
  %i.w = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil9parse_intERNS0_17basic_string_viewIcSt11char_traitsIcEEERib(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i1 noundef zeroext true) #28
  br i1 %i.w, label %bb.i, label %_ZN11OpenImageIO4v3_17Strutil7isspaceEc.exit

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_.exit15
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !57
  switch i32 %i.y, label %bb.j [
    i32 7, label %bb.p
    i32 6, label %bb.p
    i32 0, label %bb.k
    i32 3, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.aa = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.z)
  br i1 %i.aa, label %bb.l, label %_ZN11OpenImageIO4v3_17Strutil7isspaceEc.exit

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 1, ptr %i.ab, align 4, !tbaa !80
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !61  ; 2 uses
  %.not11 = icmp eq i64 %i.ac, 0
  br i1 %.not11, label %_ZN11OpenImageIO4v3_17Strutil7isspaceEc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !65  ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !66
  switch i8 %i.ae, label %_ZN11OpenImageIO4v3_17Strutil7isspaceEc.exit [
    i8 32, label %bb.n
    i8 10, label %bb.n
    i8 9, label %bb.n
    i8 13, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.af, ptr %i.g, align 8, !tbaa !65
  %i.ag = add i64 %i.ac, -1
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !52
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ai = load i32, ptr %i.e, align 4, !tbaa !3
  %i.aj = load i32, ptr %i.f, align 4, !tbaa !3
  %i.ak = load i32, ptr %i.x, align 8, !tbaa !57  ; 2 uses
  %i.al = icmp eq i32 %i.ak, 2
  %i.am = icmp eq i32 %i.ak, 5
  %i.an = or i1 %i.al, %i.am
  %i.ao = select i1 %i.an, i32 3, i32 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !80
  %i.ar = icmp sgt i32 %i.aq, 255
  %.sroa.030.0.insert.insert = select i1 %i.ar, i64 260, i64 258
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %8, i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ao, i64 %.sroa.030.0.insert.insert) #28
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.at = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.as, ptr noundef nonnull align 8 dereferenceable(160) %8) #28 ; 0 uses
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.au = load i32, ptr %i.x, align 8, !tbaa !57
  %narrow = icmp ugt i32 %i.au, 2
  %not. = zext i1 %narrow to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %not., ptr %i.d, align 4, !tbaa !3
  store ptr @.str.6, ptr %5, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 10, ptr %i.av, align 8, !tbaa !61
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.as, ptr noundef nonnull dead_on_return %5, i64 263, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aw = load i32, ptr %i.ap, align 4, !tbaa !80
  %i.ax = add nsw i32 %i.aw, 1
  %i.ay = sitofp i32 %i.ax to float
  %i.az = call float @llvm.log.f32(float %i.ay)
  %i.ba = fdiv float %i.az, f0x3F317218
  %i.bb = call float @llvm.ceil.f32(float %i.ba)
  %i.bc = fptosi float %i.bb to i32               ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 8
  br i1 %i.bd, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 %i.bc, ptr %i.c, align 4, !tbaa !3
  store ptr @.str.7, ptr %4, align 8, !tbaa !65
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 18, ptr %i.be, align 8, !tbaa !61
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.as, ptr noundef nonnull dead_on_return %4, i64 263, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.u

bb.p:                                             ; preds = %bb.i, %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !61
  %.not1.i.i17 = icmp eq i64 %i.bg, 0
  br i1 %.not1.i.i17, label %_ZN11OpenImageIO4v3_18PNMInput7nextValIfEEbRT_.exit, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.p, %bb.q
  %i.bh = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10parse_charERNS0_17basic_string_viewIcSt11char_traitsIcEEEcbb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 noundef signext 35, i1 noundef zeroext true, i1 noundef zeroext true) #28
  br i1 %i.bh, label %bb.q, label %_ZN11OpenImageIO4v3_18PNMInput7nextValIfEEbRT_.exit

bb.q:                                             ; preds = %.lr.ph.i.i18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN11OpenImageIO4v3_17Strutil10parse_lineERNS0_17basic_string_viewIcSt11char_traitsIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i1 noundef zeroext true) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.bi = load i64, ptr %i.i, align 8, !tbaa !61
  %.not.i.i19 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i19, label %_ZN11OpenImageIO4v3_18PNMInput7nextValIfEEbRT_.exit, label %.lr.ph.i.i18, !llvm.loop !81

_ZN11OpenImageIO4v3_18PNMInput7nextValIfEEbRT_.exit: ; preds = %.lr.ph.i.i18, %bb.q, %bb.p
  %i.bj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil11parse_floatERNS0_17basic_string_viewIcSt11char_traitsIcEEERfb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, i1 noundef zeroext true) #28
  br i1 %i.bj, label %bb.r, label %_ZN11OpenImageIO4v3_17Strutil7isspaceEc.exit

bb.r:                                             ; preds = %_ZN11OpenImageIO4v3_18PNMInput7nextValIfEEbRT_.exit
  %i.bk = load i64, ptr %i.i, align 8, !tbaa !61  ; 2 uses
  %.not8 = icmp eq i64 %i.bk, 0
  br i1 %.not8, label %_ZN11OpenImageIO4v3_17Strutil7isspaceEc.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !65  ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !66
  switch i8 %i.bm, label %_ZN11OpenImageIO4v3_17Strutil7isspaceEc.exit [
    i8 32, label %bb.t
    i8 10, label %bb.t
    i8 9, label %bb.t
    i8 13, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s, %bb.s, %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bn, ptr %i.g, align 8, !tbaa !65
  %i.bo = add i64 %i.bk, -1
  store i64 %i.bo, ptr %i.i, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !52
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.bq = load i32, ptr %i.e, align 4, !tbaa !3
  %i.br = load i32, ptr %i.f, align 4, !tbaa !3
  %i.bs = load i32, ptr %i.x, align 8, !tbaa !57
  %i.bt = icmp eq i32 %i.bs, 7
  %i.bu = select i1 %i.bt, i32 3, i32 1
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %9, i32 noundef %i.bq, i32 noundef %i.br, i32 noundef %i.bu, i64 267) #28
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bw = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.bv, ptr noundef nonnull align 8 dereferenceable(160) %9) #28 ; 0 uses
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.bx = load float, ptr %i.bf, align 8, !tbaa !96
  %i.by = fcmp uge float %i.bx, 0.000000e+00
  %i.bz = zext i1 %i.by to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 %i.bz, ptr %i.b, align 4, !tbaa !3
  store ptr @.str.8, ptr %2, align 8, !tbaa !65
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 13, ptr %i.ca, align 8, !tbaa !61
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.bv, ptr noundef nonnull dead_on_return %2, i64 263, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i32 1, ptr %i.a, align 4, !tbaa !3
  store ptr @.str.6, ptr %1, align 8, !tbaa !65
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 10, ptr %i.cb, align 8, !tbaa !61
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.bv, ptr noundef nonnull dead_on_return %1, i64 263, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %bb.o, %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.9, ptr %10, align 8, !tbaa !65
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 6, ptr %i.cd, align 8, !tbaa !61
  call void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.cc, ptr noundef nonnull dead_on_return %10)
  br label %_ZN11OpenImageIO4v3_17Strutil7isspaceEc.exit

_ZN11OpenImageIO4v3_17Strutil7isspaceEc.exit:     ; preds = %bb.s, %bb.m, %bb.r, %_ZN11OpenImageIO4v3_18PNMInput7nextValIfEEbRT_.exit, %bb.l, %bb.j, %_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_.exit15, %_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_.exit, %bb.u
  %.0 = phi i1 [ true, %bb.u ], [ false, %bb.j ], [ false, %_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_.exit15 ], [ false, %_ZN11OpenImageIO4v3_18PNMInput7nextValIfEEbRT_.exit ], [ false, %bb.l ], [ false, %_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_.exit ], [ false, %bb.r ], [ false, %bb.m ], [ false, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %bb.v

bb.v:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.b, %_ZN11OpenImageIO4v3_17Strutil7isspaceEc.exit
  %.1 = phi i1 [ %.0, %_ZN11OpenImageIO4v3_17Strutil7isspaceEc.exit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10parse_charERNS0_17basic_string_viewIcSt11char_traitsIcEEEcbb(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PNMInput7nextValIiEEbRT_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !61
  %.not1.i = icmp eq i64 %i.c, 0
  br i1 %.not1.i, label %_ZN11OpenImageIO4v3_18PNMInput12skipCommentsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.d = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10parse_charERNS0_17basic_string_viewIcSt11char_traitsIcEEEcbb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 noundef signext 35, i1 noundef zeroext true, i1 noundef zeroext true) #28
  br i1 %i.d, label %bb.b, label %_ZN11OpenImageIO4v3_18PNMInput12skipCommentsEv.exit

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN11OpenImageIO4v3_17Strutil10parse_lineERNS0_17basic_string_viewIcSt11char_traitsIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i1 noundef zeroext true) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.e = load i64, ptr %i.b, align 8, !tbaa !61
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18PNMInput12skipCommentsEv.exit, label %.lr.ph.i, !llvm.loop !81

_ZN11OpenImageIO4v3_18PNMInput12skipCommentsEv.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %i.f = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil9parse_intERNS0_17basic_string_viewIcSt11char_traitsIcEEERib(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext true) #28
  ret i1 %i.f
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160), i32 noundef, i32 noundef, i32 noundef, i64) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i64, ptr %i.b, align 8
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !112  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.i = load <2 x ptr>, ptr %i.e, align 8, !tbaa !114
  store <2 x ptr> %i.i, ptr %i.d, align 8, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !113
  store ptr %i.k, ptr %i.g, align 8, !tbaa !113
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.n) #27
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit: ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !115  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !116  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !117
  %i.v = load <2 x ptr>, ptr %i.p, align 8, !tbaa !118
  store <2 x ptr> %i.v, ptr %i.o, align 8, !tbaa !118
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !117
  store ptr %i.x, ptr %i.t, align 8, !tbaa !117
  %.not4.i.i.i.i.i = icmp eq ptr %i.q, %i.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.q, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit ] ; 3 uses
  %i.y = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !108 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !66
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %i.ad, %i.s
  br i1 %.not.i.i.i.i.i7, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !119

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ae = ptrtoint ptr %i.u to i64
  %i.af = ptrtoint ptr %i.q to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ah, ptr noundef nonnull align 8 dereferenceable(9) %i.ai, i64 9, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !120 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !121 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !122
  %i.aq = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !123
  store <2 x ptr> %i.aq, ptr %i.aj, align 8, !tbaa !123
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !122
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !122
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.al, %i.an
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i.i.i) #28
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, %i.an
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !124

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN11OpenImageIO4v3_114ParamValueListaSEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.al to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aw) #27
  br label %_ZN11OpenImageIO4v3_114ParamValueListaSEOS1_.exit

_ZN11OpenImageIO4v3_114ParamValueListaSEOS1_.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.d
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i) #28
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !124

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !120
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !122
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #27
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.m, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !108 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
end_hunk_1
