inline.NumInlined: 3378
inline.NumDeleted: 995
begin_hunk_0
%"struct.fmt::v12::detail::singleton" = type { i8, i8 }
%"class.fmt::v12::detail::uint128_fallback" = type { i64, i64 }
%"class.OpenImageIO::v3_1::basic_string_view" = type { ptr, i64 }
%"struct.fmt::v12::detail::format_arg_store" = type { [1 x %"class.fmt::v12::detail::value"] }
%"class.fmt::v12::detail::value" = type { %union.anon.44 }
%union.anon.44 = type { i128 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct._G_fpos_t = type { i64, %struct.__mbstate_t }
%struct.__mbstate_t = type { i32, %union.anon.20 }
%union.anon.20 = type { i32 }
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
%"struct.fmt::v12::detail::format_arg_store.111" = type { [2 x %"class.fmt::v12::detail::value"] }
%"struct.fmt::v12::detail::format_arg_store.112" = type { [1 x %"class.fmt::v12::detail::value"] }
%"struct.fmt::v12::detail::format_arg_store.113" = type { [1 x %"class.fmt::v12::detail::value"] }
%"struct.fmt::v12::detail::format_arg_store.116" = type { [3 x %"class.fmt::v12::detail::value"] }
%"struct.fmt::v12::detail::format_arg_store.114" = type { [1 x %"class.fmt::v12::detail::value"] }
%"class.OpenImageIO::v3_1::span" = type { ptr, i64 }
%"class.OpenImageIO::v3_1::span.40" = type { ptr, i64 }
%"class.fmt::v12::basic_memory_buffer" = type <{ %"class.fmt::v12::detail::buffer", [500 x i8], [4 x i8] }>
%"class.fmt::v12::detail::buffer" = type { ptr, i64, i64, ptr }
%"class.fmt::v12::parse_context" = type <{ %"class.fmt::v12::basic_string_view", i32, [4 x i8] }>
%"class.fmt::v12::basic_string_view" = type { ptr, i64 }
%"class.fmt::v12::context" = type { %"class.fmt::v12::basic_appender", %"class.fmt::v12::basic_format_args", %"class.fmt::v12::locale_ref" }
%"class.fmt::v12::basic_appender" = type { ptr }
%"class.fmt::v12::basic_format_args" = type { i64, %union.anon.43 }
%union.anon.43 = type { ptr }
%"class.fmt::v12::locale_ref" = type { ptr }
%"struct.fmt::v12::detail::default_arg_formatter" = type { %"class.fmt::v12::basic_appender" }
%"struct.fmt::v12::detail::format_handler" = type { %"class.fmt::v12::parse_context", %"class.fmt::v12::context" }
%class.anon.87 = type <{ i64, i32, [4 x i8] }>
%"struct.fmt::v12::format_specs" = type { %"class.fmt::v12::basic_specs", i32, i32 }
%"class.fmt::v12::basic_specs" = type { i32, [4 x i8] }
%class.anon.66 = type { %"class.fmt::v12::basic_string_view" }
%struct.id_adapter = type <{ ptr, i32, [4 x i8] }>
%"class.fmt::v12::loc_value" = type { %"class.fmt::v12::basic_format_arg" }
%"class.fmt::v12::basic_format_arg" = type <{ %"class.fmt::v12::detail::value", i32, [12 x i8] }>
%"class.std::locale" = type { ptr }
%"class.fmt::v12::format_facet" = type { %"class.std::locale::facet.base", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::locale::facet.base" = type <{ ptr, i32 }>
%class.anon.50 = type { i8, i8 }
%"struct.fmt::v12::detail::loc_writer" = type { %"class.fmt::v12::basic_appender", ptr, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.fmt::v12::detail::digit_grouping" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.anon = type { ptr, ptr, ptr }
%"struct.fmt::v12::detail::find_escape_result" = type { ptr, ptr, i32 }
%"class.fmt::v12::basic_memory_buffer.52" = type <{ %"class.fmt::v12::detail::buffer.53", [500 x i32], [8 x i8] }>
%"class.fmt::v12::detail::buffer.53" = type { ptr, i64, i64, ptr }
%class.anon.58 = type { ptr, ptr, ptr }
%class.anon.67 = type { i32, ptr }
%"struct.fmt::v12::detail::dragonbox::decimal_fp" = type { i32, i32 }
%"class.fmt::v12::detail::fallback_digit_grouping" = type { i8 }
%class.anon.68 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.69 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.70 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.fmt::v12::detail::dragonbox::decimal_fp.71" = type { i64, i32 }
%class.anon.72 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.73 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.74 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.76 = type { %"class.fmt::v12::basic_string_view" }
%"struct.fmt::v12::detail::big_decimal_fp" = type { ptr, i32, i32 }
%"struct.fmt::v12::detail::basic_fp" = type <{ i128, i32, [12 x i8] }>
%"class.fmt::v12::detail::bigint" = type { %"class.fmt::v12::basic_memory_buffer.78", i32, [4 x i8] }
%"class.fmt::v12::basic_memory_buffer.78" = type <{ %"class.fmt::v12::detail::buffer.79", [32 x i32], [8 x i8] }>
%"class.fmt::v12::detail::buffer.79" = type { ptr, i64, i64, ptr }
%class.anon.82 = type <{ i32, [4 x i8], %"struct.fmt::v12::detail::big_decimal_fp", i32, i8, [3 x i8], i32, i8, [3 x i8], i32, [4 x i8] }>
%class.anon.85 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.86 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.fmt::v12::detail::thousands_sep_result" = type <{ %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"struct.fmt::v12::detail::write_int_arg.57" = type { i128, i32 }
%"struct.fmt::v12::detail::dynamic_format_specs" = type { %"struct.fmt::v12::format_specs", %"union.fmt::v12::detail::arg_ref", %"union.fmt::v12::detail::arg_ref" }
%"union.fmt::v12::detail::arg_ref" = type { %"class.fmt::v12::basic_string_view" }
%"struct.fmt::v12::detail::dynamic_spec_handler" = type { ptr, ptr, ptr }
%class.anon.93 = type { i32, %"struct.fmt::v12::detail::dragonbox::decimal_fp", i32, i8, i32, i8, i32 }
%class.anon.95 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.96 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.101 = type <{ i32, [4 x i8], %"struct.fmt::v12::detail::dragonbox::decimal_fp.71", i32, i8, [3 x i8], i32, i8, [3 x i8], i32, [4 x i8] }>
%class.anon.104 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.105 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.106 = type { ptr, ptr, ptr, ptr, ptr }
%class.anon.107 = type { i8, i64, %"class.fmt::v12::basic_string_view" }
%class.anon.110 = type { %class.anon.106 }
%"class.fmt::v12::detail::counting_buffer" = type { %"class.fmt::v12::detail::buffer", [256 x i8], i64 }

@_ZN11OpenImageIO4v3_120fits_imageio_versionE = local_unnamed_addr global i32 27, align 4
@.str = private unnamed_addr constant [5 x i8] c"fits\00", align 1
@_ZN11OpenImageIO4v3_121fits_input_extensionsE = local_unnamed_addr global [2 x ptr] [ptr @.str, ptr null], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SIMPLE\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Could not open file \22{}\22\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"{} isn't a FITS file\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Hit end of file unexpectedly (offset={}, scanline {})\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Hit end of file unexpectedly (offset={})\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Comment\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"History\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Hierarch\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"XTENSION\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"BITPIX\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"NAXIS\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"DATE\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"HIERARCH\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Number of data axes {} not supported\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"oiio:subimages\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"XTENSION= 'IMAGE   '\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"{:04d}:{:02d}:{:02d}\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c" {:02d}:{:02d}:{:02d}\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"19{:02d}:{:02d}:{:02d} 00:00:00\00", align 1
@_ZTVN11OpenImageIO4v3_19FitsInputE = hidden unnamed_addr constant { [45 x ptr] } { [45 x ptr] [ptr null, ptr @_ZTIN11OpenImageIO4v3_19FitsInputE, ptr @_ZN11OpenImageIO4v3_19FitsInputD2Ev, ptr @_ZN11OpenImageIO4v3_19FitsInputD0Ev, ptr @_ZNK11OpenImageIO4v3_19FitsInput11format_nameEv, ptr @_ZNK11OpenImageIO4v3_19FitsInput8supportsENS0_17basic_string_viewIcSt11char_traitsIcEEE, ptr @_ZNK11OpenImageIO4v3_19FitsInput10valid_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK11OpenImageIO4v3_110ImageInput10valid_fileEPNS0_10Filesystem7IOProxyE, ptr @_ZN11OpenImageIO4v3_19FitsInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE, ptr @_ZN11OpenImageIO4v3_110ImageInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecERKSA_, ptr @_ZNK11OpenImageIO4v3_110ImageInput4specEv, ptr @_ZN11OpenImageIO4v3_110ImageInput4specEii, ptr @_ZN11OpenImageIO4v3_110ImageInput15spec_dimensionsEii, ptr @_ZN11OpenImageIO4v3_110ImageInput13get_thumbnailERNS0_8ImageBufEi, ptr @_ZN11OpenImageIO4v3_19FitsInput5closeEv, ptr @_ZNK11OpenImageIO4v3_19FitsInput16current_subimageEv, ptr @_ZNK11OpenImageIO4v3_110ImageInput16current_miplevelEv, ptr @_ZN11OpenImageIO4v3_19FitsInput13seek_subimageEii, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput26read_native_deep_scanlinesEiiiiiiiRNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_tilesEiiiiiiiiiiRNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_imageEiiRNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_110ImageInput13read_scanlineEiiNS0_8TypeDescEPvl, ptr @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiiNS0_8TypeDescEPvll, ptr @_ZN11OpenImageIO4v3_110ImageInput9read_tileEiiiNS0_8TypeDescEPvlll, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescEPvlll, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescEPvlllPFbS3_fES3_, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput28read_native_volumetric_tilesEiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput28read_native_volumetric_tilesEiiiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_19FitsInput20read_native_scanlineEiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput16read_native_tileEiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput13send_to_inputEPKcz, ptr @_ZN11OpenImageIO4v3_110ImageInput11set_ioproxyEPNS0_10Filesystem7IOProxyE, ptr @_ZNK11OpenImageIO4v3_110ImageInput8heapsizeEv, ptr @_ZNK11OpenImageIO4v3_110ImageInput9footprintEv] }, align 8
@_ZTIN11OpenImageIO4v3_19FitsInputE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11OpenImageIO4v3_19FitsInputE, ptr @_ZTIN11OpenImageIO4v3_110ImageInputE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11OpenImageIO4v3_19FitsInputE = hidden constant [31 x i8] c"N11OpenImageIO4v3_19FitsInputE\00", align 1
@_ZTIN11OpenImageIO4v3_110ImageInputE = external constant ptr
@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8
@.str.30 = private unnamed_addr constant [5 x i8] c"exif\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"multiimage\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"noimage\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], align 16
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], align 16
@.str.39 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTINSt6locale5facetE = external constant ptr
@_ZTIN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetISt6localeEE, ptr @_ZTINSt6locale5facetE }, align 8
@_ZTSN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant [36 x i8] c"N3fmt3v1212format_facetISt6localeEE\00", align 1
@_ZTVN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetISt6localeEE, ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev, ptr @_ZN3fmt3v1212format_facetISt6localeED0Ev, ptr @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, align 8
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@.str.41 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr hidden local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr hidden local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr hidden local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr hidden local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr hidden local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr hidden local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", align 16
@.str.44 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [24 x %"class.fmt::v12::detail::uint128_fallback"] [%"class.fmt::v12::detail::uint128_fallback" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128_fallback" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128_fallback" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128_fallback" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128_fallback" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128_fallback" { i64 7239297505920716784, i64 -1063354554122040811 }], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = linkonce_odr hidden local_unnamed_addr constant [27 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125, i64 390625, i64 1953125, i64 9765625, i64 48828125, i64 244140625, i64 1220703125, i64 6103515625, i64 30517578125, i64 152587890625, i64 762939453125, i64 3814697265625, i64 19073486328125, i64 95367431640625, i64 476837158203125, i64 2384185791015625, i64 11920928955078125, i64 59604644775390625, i64 298023223876953125, i64 1490116119384765625], align 16
@.str.56 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@_ZTIN3fmt3v1212format_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr hidden constant [25 x i8] c"N3fmt3v1212format_errorE\00", align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, align 8
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
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.75 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.76 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.77 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.79 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"
@switch.table._ZN11OpenImageIO4v3_19FitsInput13set_spec_infoEv = private unnamed_addr constant [13 x i64] [i64 268, i64 poison, i64 poison, i64 poison, i64 267, i64 poison, i64 poison, i64 poison, i64 poison, i64 258, i64 261, i64 poison, i64 263], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @_ZN11OpenImageIO4v3_128fits_imageio_library_versionEv() local_unnamed_addr #0 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_125fits_input_imageio_createEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN11OpenImageIO4v3_110ImageInputnwEm(i64 noundef 480) ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_19FitsInputC2Ev(ptr noundef nonnull align 8 dereferenceable(480) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_110ImageInputdlEPv(ptr noundef nonnull %i.a) #29
  resume { ptr, i32 } %i.b
}

declare noundef ptr @_ZN11OpenImageIO4v3_110ImageInputnwEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_19FitsInputC2Ev(ptr noundef nonnull align 8 dereferenceable(480) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_110ImageInputC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 344) (i8, ptr @_ZTVN11OpenImageIO4v3_19FitsInputE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.c, align 8, !tbaa !13
  store i8 0, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr null, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.f, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.f, ptr %i.i, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  store ptr %i.m, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 0, ptr %i.n, align 8, !tbaa !13
  store i8 0, ptr %i.m, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 0, ptr %i.q, align 8, !tbaa !13
  store i8 0, ptr %i.p, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 0, ptr %i.t, align 8, !tbaa !13
  store i8 0, ptr %i.s, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 0, ptr %i.w, align 8, !tbaa !13
  store i8 0, ptr %i.v, align 8, !tbaa !16
  invoke void @_ZN11OpenImageIO4v3_19FitsInput4initEv(ptr noundef nonnull align 8 dereferenceable(480) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.v
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !16
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !25  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.s
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !16
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !25  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.p
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  %i.ai = load i64, ptr %i.p, align 8, !tbaa !16
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !25  ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.m
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  %i.am = load i64, ptr %i.m, align 8, !tbaa !16
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !26  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !29
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %bb.d
  tail call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.e) #29
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !30  ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EED2Ev.exit, %bb.e
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.b
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !16
  %i.bd = add i64 %i.bc, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  tail call void @_ZN11OpenImageIO4v3_110ImageInputD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #29
  resume { ptr, i32 } %i.x
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ImageInputdlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK11OpenImageIO4v3_19FitsInput10valid_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = alloca [6 x i8], align 1                 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !25
  store ptr %i.b, ptr %2, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  store i64 %i.e, ptr %i.c, align 8, !tbaa !36
  store ptr @.str.1, ptr %3, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.f, align 8, !tbaa !36
  %i.g = call noundef ptr @_ZN11OpenImageIO4v3_110Filesystem5fopenENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3) ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.a, i8 0, i64 6, i1 false)
  %i.h = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 6, ptr noundef nonnull %i.g)
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19FitsInput15subimage_searchEv:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.u) #30
  %.pre.pre = load ptr, ptr %2, align 8, !tbaa !25
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.i ], [ %i.n, %_ZNSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i ]
  store ptr %i.af, ptr %i.k, align 8, !tbaa !26
  store ptr %i.ai, ptr %i.l, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.aj, ptr %i.m, align 8, !tbaa !29
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EE9push_backERKS3_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.pre20 = load ptr, ptr %2, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %i.ak = phi ptr [ %i.n, %.loopexit ], [ %.pre20, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.al = icmp eq ptr %i.ak, %i.f
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.am = load i64, ptr %i.f, align 8, !tbaa !16
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.e, %_ZNSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.c
  %i.ao = phi ptr [ %i.n, %bb.e ], [ %.pre, %_ZNSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.n, %bb.c ]
  %i.ap = add i64 %.019, 2880
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.ar = call i64 @fread(ptr noundef nonnull %i.ao, i64 noundef 1, i64 noundef 2880, ptr noundef %i.aq)
  %i.as = icmp eq i64 %i.ar, 2880
  br i1 %i.as, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge, !llvm.loop !87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EE9push_backERKS3_.exit, %bb.a
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.au = call i32 @fsetpos(ptr noundef %i.at, ptr noundef nonnull %1) ; 0 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.f
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge
  %i.ax = load i64, ptr %i.f, align 8, !tbaa !16
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19FitsInput13set_spec_infoEv(ptr noundef nonnull align 8 dereferenceable(480) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #34
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5clearEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.f, ptr %i.g, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.f, ptr %i.h, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 0, ptr %i.i, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %1, i32 noundef 0, i32 noundef 0, i32 noundef 1, i64 256) #29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull align 8 dereferenceable(160) %1) #29 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !91   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5clearEv.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %i.m, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5clearEv.exit ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i) #29
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !92

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.l, align 8, !tbaa !90
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5clearEv.exit
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.m, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE5clearEv.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !93
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !95   ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.af, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.x, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.aa = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !25 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.af, %i.z
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !96

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.w, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.ag = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.x, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !97
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !98 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !99
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #30
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.at = call noundef zeroext i1 @_ZN11OpenImageIO4v3_19FitsInput16read_fits_headerEv(ptr noundef nonnull align 8 dereferenceable(480) %0) ; 2 uses
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ax = call i32 @fgetpos(ptr noundef %i.av, ptr noundef nonnull %i.aw) ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !100
  %2 = add i32 %i.az, 64                          ; 2 uses
  %3 = call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 29) ; 3 uses
  %4 = icmp ult i32 %3, 13
  %switch.maskindex = trunc i32 %3 to i16
  %switch.shifted = lshr i16 5649, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %4, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f
  %5 = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN11OpenImageIO4v3_19FitsInput13set_spec_infoEv, i64 %5
  %switch.load = load i64, ptr %switch.gep, align 8
  call void @_ZN11OpenImageIO4v3_19ImageSpec10set_formatENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 %switch.load) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.sink.split, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit
  ret i1 %i.at
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19FitsInput20read_native_scanlineEiiiiPv(ptr noundef nonnull align 8 dereferenceable(480) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, ptr noundef writeonly captures(none) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !3
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %.not.i = icmp ne i32 %2, 0
  %i.c = icmp slt i32 %1, 0
  %or.cond.i = or i1 %i.c, %.not.i
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_19FitsInput13seek_subimageEii.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 4
  %i.l = trunc i64 %i.k to i32
  %.not7.i = icmp slt i32 %1, %i.l
  br i1 %.not7.i, label %bb.c, label %_ZN11OpenImageIO4v3_19FitsInput13seek_subimageEii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !101
  %i.o = icmp eq i32 %1, %i.n
  br i1 %i.o, label %_ZN11OpenImageIO4v3_19FitsInput13seek_subimageEii.exit.thread79, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %i.m, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !102
  %i.v = tail call i32 @fseek(ptr noundef %i.q, i64 noundef %i.u, i32 noundef 0) ; 0 uses
  %i.w = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19FitsInput13set_spec_infoEv(ptr noundef nonnull align 8 dereferenceable(480) %0)
          to label %_ZN11OpenImageIO4v3_19FitsInput13seek_subimageEii.exit unwind label %bb.e

_ZN11OpenImageIO4v3_19FitsInput13seek_subimageEii.exit: ; preds = %bb.d
  br i1 %i.w, label %_ZN11OpenImageIO4v3_19FitsInput13seek_subimageEii.exit.thread79, label %_ZN11OpenImageIO4v3_19FitsInput13seek_subimageEii.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZN11OpenImageIO4v3_19FitsInput13seek_subimageEii.exit.thread79: ; preds = %bb.c, %_ZN11OpenImageIO4v3_19FitsInput13seek_subimageEii.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.z = load i32, ptr %i.y, align 8, !tbaa !104
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %_ZN11OpenImageIO4v3_19FitsInput13seek_subimageEii.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_19FitsInput13seek_subimageEii.exit.thread79
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ab = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.aa, i1 noundef zeroext false) #29 ; 5 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #32
          to label %.noexc18 unwind label %bb.m

.noexc18:                                         ; preds = %bb.g
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #33
          to label %.noexc19 unwind label %bb.m   ; 5 uses

.noexc19:                                         ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ab  ; 3 uses
  store i8 0, ptr %i.ad, align 1, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %i.ag = add nsw i64 %i.ab, -1                   ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.i

bb.i:                                             ; preds = %.noexc19
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.af, i8 0, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.i, %.noexc19, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.25.0 = phi ptr [ %i.ae, %bb.i ], [ %i.ae, %.noexc19 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.058.0 = phi ptr [ %i.ad, %bb.i ], [ %i.ad, %.noexc19 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 19 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %i.af, %.noexc19 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !105
  %i.ak = sub nsw i32 %i.aj, %3
  %i.al = sext i32 %i.ak to i64
  %i.am = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.aa, i1 noundef zeroext false) #29
  %i.an = mul i64 %i.am, %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.aq = tail call i32 @fseek(ptr noundef %i.ap, i64 noundef %i.an, i32 noundef 1) ; 0 uses
  %i.ar = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.aa, i1 noundef zeroext false) #29
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.at = tail call i64 @fread(ptr noundef nonnull %.sroa.058.0, i64 noundef 1, i64 noundef %i.ar, ptr noundef %i.as)
  %i.au = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.aa, i1 noundef zeroext false) #29
  %.not13 = icmp eq i64 %i.at, %i.au              ; 2 uses
  br i1 %.not13, label %bb.q, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.aw = tail call i32 @feof(ptr noundef %i.av) #29
  %.not14 = icmp eq i32 %i.aw, 0
  br i1 %.not14, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.ay = tail call i64 @ftell(ptr noundef %i.ax)
  store i64 %i.ay, ptr %i.b, align 8, !tbaa !86
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJliEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.n:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit56

bb.o:                                             ; preds = %bb.k
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit56

bb.p:                                             ; preds = %bb.j
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.6)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit unwind label %bb.n

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !106 ; 6 uses
  %i.be = icmp eq i8 %i.bd, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 1                     ; 6 uses
  %or.cond.i20 = select i1 %i.be, i1 %i.bh, i1 false
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bj = load i32, ptr %i.bi, align 4
  %.not.i21 = icmp eq i32 %i.bj, 0                ; 6 uses
  %or.cond = select i1 %or.cond.i20, i1 %.not.i21, i1 false
  br i1 %or.cond, label %bb.r, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.q
  %i.bk = icmp eq i8 %i.bd, 5
  %or.cond.i22 = select i1 %i.bk, i1 %i.bh, i1 false
  %or.cond83 = select i1 %or.cond.i22, i1 %.not.i21, i1 false
  br i1 %or.cond83, label %bb.r, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit24.thread

bb.r:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, %bb.q
  %i.bl = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %.sroa.058.0 to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 6 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 4 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %iter.check, label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit

iter.check:                                       ; preds = %bb.r
  %wide.trip.count.i = and i64 %i.bo, 2147483647  ; 5 uses
  %min.iters.check138 = icmp samesign ult i64 %wide.trip.count.i, 4
  br i1 %min.iters.check138, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check139 = icmp samesign ult i64 %wide.trip.count.i, 16
  br i1 %min.iters.check139, label %vec.epilog.ph, label %vector.ph140

vector.ph140:                                     ; preds = %vector.main.loop.iter.check
  %n.vec142 = and i64 %i.bo, 2147483632           ; 4 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body143 ] ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.sroa.058.0, i64 %index144 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %wide.load145 = load <8 x i16>, ptr %i.br, align 2, !tbaa !107
  %wide.load146 = load <8 x i16>, ptr %i.bs, align 2, !tbaa !107
  %i.bt = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load145)
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail15write_codepointILm8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SH_cj:bb.a
  %.pre2.i.i.i.i.5 = add i64 %.pre.i.i.i.i.5, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5: ; preds = %bb.p, %bb.q
  %.pre-phi.i.i.i.i.5 = phi i64 [ %i.cb, %bb.p ], [ %.pre2.i.i.i.i.5, %bb.q ]
  %i.cf = phi i64 [ %i.ca, %bb.p ], [ %.pre.i.i.i.i.5, %bb.q ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !222
  store i64 %.pre-phi.i.i.i.i.5, ptr %i.ad, align 8, !tbaa !227
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 %i.bz, ptr %i.ch, align 1, !tbaa !16
  %.07.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ci = load i8, ptr %.07.i.ptr.6, align 2, !tbaa !16
  %.not.i.i11.6 = icmp eq i64 %.sroa.4.1, 6
  br i1 %.not.i.i11.6, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.r

bb.r:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5
  %i.cj = load i64, ptr %i.ad, align 8, !tbaa !227 ; 2 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = load i64, ptr %i.ae, align 8, !tbaa !223
  %i.cm = icmp ugt i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.s, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.af, align 8, !tbaa !220
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ck), !inline_history !811
  %.pre.i.i.i.i.6 = load i64, ptr %i.ad, align 8, !tbaa !227 ; 2 uses
  %.pre2.i.i.i.i.6 = add i64 %.pre.i.i.i.i.6, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6: ; preds = %bb.r, %bb.s
  %.pre-phi.i.i.i.i.6 = phi i64 [ %i.ck, %bb.r ], [ %.pre2.i.i.i.i.6, %bb.s ]
  %i.co = phi i64 [ %i.cj, %bb.r ], [ %.pre.i.i.i.i.6, %bb.s ]
  %i.cp = load ptr, ptr %0, align 8, !tbaa !222
  store i64 %.pre-phi.i.i.i.i.6, ptr %i.ad, align 8, !tbaa !227
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 %i.ci, ptr %i.cq, align 1, !tbaa !16
  %.07.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.cr = load i8, ptr %.07.i.ptr.7, align 1, !tbaa !16
  %.not.i.i11.7 = icmp eq i64 %.sroa.4.1, 7
  br i1 %.not.i.i11.7, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.t

bb.t:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %i.cs = load i64, ptr %i.ad, align 8, !tbaa !227 ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !223
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.u, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.af, align 8, !tbaa !220
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ct), !inline_history !811
  %.pre.i.i.i.i.7 = load i64, ptr %i.ad, align 8, !tbaa !227 ; 2 uses
  %.pre2.i.i.i.i.7 = add i64 %.pre.i.i.i.i.7, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7:    ; preds = %bb.u, %bb.t
  %.pre-phi.i.i.i.i.7 = phi i64 [ %i.ct, %bb.t ], [ %.pre2.i.i.i.i.7, %bb.u ]
  %i.cx = phi i64 [ %i.cs, %bb.t ], [ %.pre.i.i.i.i.7, %bb.u ]
  %i.cy = load ptr, ptr %0, align 8, !tbaa !222
  store i64 %.pre-phi.i.i.i.i.7, ptr %i.ad, align 8, !tbaa !227
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 %i.cr, ptr %i.cz, align 1, !tbaa !16
  %i.da = add i64 %.sroa.4.1, -8
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7: ; preds = %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %.sroa.3.1.i.7 = phi i64 [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6 ], [ %i.da, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i ], [ 0, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.3.1.i.7, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret { ptr, i64 } %.fca.1.insert.i
}

declare void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

declare void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #25

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !30     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !148
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #32
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #33 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !3
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !3
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #30
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !148
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #25

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { noreturn }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !15, i64 8, !5, i64 16}
!15 = !{!"long", !5, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !20, i64 0}
!18 = !{!"_ZTSSt15_Rb_tree_header", !19, i64 0, !15, i64 32}
!19 = !{!"_ZTSSt18_Rb_tree_node_base", !20, i64 0, !21, i64 8, !21, i64 16, !21, i64 24}
!20 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!21 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!22 = !{!18, !21, i64 8}
!23 = !{!18, !21, i64 16}
!24 = !{!18, !21, i64 24}
!25 = !{!14, !11, i64 0}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p1 _ZTSN11OpenImageIO4v3_18fits_pvt8SubimageE", !12, i64 0}
!29 = !{!27, !28, i64 16}
!30 = !{!31, !32, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!32 = !{!"p1 int", !12, i64 0}
!33 = !{!31, !32, i64 16}
!34 = !{!35, !11, i64 0}
!35 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !11, i64 0, !15, i64 8}
!36 = !{!35, !15, i64 8}
!37 = !{!38, !68, i64 184}
!38 = !{!"_ZTSN11OpenImageIO4v3_19FitsInputE", !39, i64 0, !68, i64 184, !14, i64 192, !4, i64 224, !4, i64 228, !4, i64 232, !69, i64 240, !72, i64 264, !74, i64 280, !79, i64 328, !14, i64 352, !14, i64 384, !14, i64 416, !14, i64 448}
!39 = !{!"_ZTSN11OpenImageIO4v3_110ImageInputE", !40, i64 8, !59, i64 168}
!40 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !41, i64 64, !42, i64 72, !47, i64 96, !4, i64 120, !4, i64 124, !52, i64 128, !53, i64 136}
!41 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!42 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !43, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!46 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !12, i64 0}
!47 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !48, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!52 = !{!"bool", !5, i64 0}
!53 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !54, i64 0}
!54 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !12, i64 0}
!59 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !60, i64 0}
!60 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_ELb1ELb1EE", !61, i64 0}
!61 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !62, i64 0}
!62 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !63, i64 0}
!63 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !64, i64 0, !66, i64 8}
!64 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_110ImageInput4ImplEEEE", !65, i64 0}
!65 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_110ImageInput4ImplEELb0EE", !12, i64 0}
!66 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_110ImageInput4ImplELb0EE", !67, i64 0}
!67 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageInput4ImplE", !12, i64 0}
!68 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!69 = !{!"_ZTSSt6vectorIiSaIiEE", !70, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !71, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !31, i64 0}
!72 = !{!"_ZTS9_G_fpos_t", !15, i64 0, !73, i64 8}
!73 = !{!"_ZTS11__mbstate_t", !4, i64 0, !5, i64 4}
!74 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE", !75, i64 0}
!75 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !76, i64 0}
!76 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !77, i64 0, !18, i64 8}
!77 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !78, i64 0}
!78 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!79 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EE", !80, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18fits_pvt8SubimageESaIS3_EE12_Vector_implE", !27, i64 0}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!84 = distinct !{!84, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!85 = !{!27, !28, i64 8}
!86 = !{!15, !15, i64 0}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!18, !15, i64 32}
!90 = !{!57, !58, i64 0}
!91 = !{!57, !58, i64 8}
!92 = distinct !{!92, !88}
!93 = !{!57, !58, i64 16}
!94 = !{!50, !51, i64 0}
!95 = !{!50, !51, i64 8}
!96 = distinct !{!96, !88}
!97 = !{!50, !51, i64 16}
!98 = !{!45, !46, i64 0}
!99 = !{!45, !46, i64 16}
!100 = !{!38, !4, i64 228}
!101 = !{!38, !4, i64 224}
!102 = !{!103, !15, i64 8}
!103 = !{!"_ZTSN11OpenImageIO4v3_18fits_pvt8SubimageE", !4, i64 0, !15, i64 8}
!104 = !{!38, !4, i64 232}
!105 = !{!39, !4, i64 24}
!106 = !{!41, !5, i64 0}
!107 = !{!108, !108, i64 0}
!108 = !{!"short", !5, i64 0}
!109 = distinct !{!109, !88, !110, !111}
!110 = !{!"llvm.loop.isvectorized", i32 1}
!111 = !{!"llvm.loop.unroll.runtime.disable"}
!112 = !{!"branch_weights", i32 4, i32 12}
!113 = distinct !{!113, !88, !110, !111}
!114 = distinct !{!114, !88, !111, !110}
!115 = distinct !{!115, !88, !110, !111}
!116 = distinct !{!116, !88, !111, !110}
!117 = !{!118, !118, i64 0}
!118 = !{!"float", !5, i64 0}
!119 = distinct !{!119, !88, !110, !111}
!120 = distinct !{!120, !88, !111, !110}
!121 = !{!122, !122, i64 0}
!122 = !{!"double", !5, i64 0}
!123 = distinct !{!123, !88, !110, !111}
!124 = distinct !{!124, !88, !111, !110}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKlRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!127 = distinct !{!127, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKlRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKlKiELi2ELi0ELy19EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!130 = distinct !{!130, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKlKiELi2ELi0ELy19EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!131 = !{!129, !126}
!132 = !{!133}
end_hunk_2
