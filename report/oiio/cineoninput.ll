inline.NumInlined: 3247
inline.NumDeleted: 939
begin_hunk_0
%"class.fmt::v12::basic_string_view" = type { ptr, i64 }
%"class.fmt::v12::context" = type { %"class.fmt::v12::basic_appender", %"class.fmt::v12::basic_format_args", %"class.fmt::v12::locale_ref" }
%"class.fmt::v12::basic_appender" = type { ptr }
%"class.fmt::v12::basic_format_args" = type { i64, %union.anon.28 }
%union.anon.28 = type { ptr }
%"class.fmt::v12::locale_ref" = type { ptr }
%"struct.fmt::v12::detail::default_arg_formatter" = type { %"class.fmt::v12::basic_appender" }
%"struct.fmt::v12::detail::format_handler" = type { %"class.fmt::v12::parse_context", %"class.fmt::v12::context" }
%class.anon.72 = type <{ i64, i32, [4 x i8] }>
%"struct.fmt::v12::format_specs" = type { %"class.fmt::v12::basic_specs", i32, i32 }
%"class.fmt::v12::basic_specs" = type { i32, [4 x i8] }
%class.anon.51 = type { %"class.fmt::v12::basic_string_view" }
%struct.id_adapter = type <{ ptr, i32, [4 x i8] }>
%"class.fmt::v12::loc_value" = type { %"class.fmt::v12::basic_format_arg" }
%"class.fmt::v12::basic_format_arg" = type <{ %"class.fmt::v12::detail::value", i32, [12 x i8] }>
%"class.std::locale" = type { ptr }
%"class.fmt::v12::format_facet" = type { %"class.std::locale::facet.base", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::locale::facet.base" = type <{ ptr, i32 }>
%class.anon.35 = type { i8, i8 }
%"struct.fmt::v12::detail::loc_writer" = type { %"class.fmt::v12::basic_appender", ptr, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.fmt::v12::detail::digit_grouping" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.anon = type { ptr, ptr, ptr }
%"struct.fmt::v12::detail::find_escape_result" = type { ptr, ptr, i32 }
%"class.fmt::v12::basic_memory_buffer.37" = type <{ %"class.fmt::v12::detail::buffer.38", [500 x i32], [8 x i8] }>
%"class.fmt::v12::detail::buffer.38" = type { ptr, i64, i64, ptr }
%class.anon.43 = type { ptr, ptr, ptr }
%class.anon.52 = type { i32, ptr }
%"struct.fmt::v12::detail::dragonbox::decimal_fp" = type { i32, i32 }
%"class.fmt::v12::detail::fallback_digit_grouping" = type { i8 }
%class.anon.53 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.54 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.55 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.fmt::v12::detail::dragonbox::decimal_fp.56" = type { i64, i32 }
%class.anon.57 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.58 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.59 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.61 = type { %"class.fmt::v12::basic_string_view" }
%"struct.fmt::v12::detail::big_decimal_fp" = type { ptr, i32, i32 }
%"struct.fmt::v12::detail::basic_fp" = type <{ i128, i32, [12 x i8] }>
%"class.fmt::v12::detail::bigint" = type { %"class.fmt::v12::basic_memory_buffer.63", i32, [4 x i8] }
%"class.fmt::v12::basic_memory_buffer.63" = type <{ %"class.fmt::v12::detail::buffer.64", [32 x i32], [8 x i8] }>
%"class.fmt::v12::detail::buffer.64" = type { ptr, i64, i64, ptr }
%class.anon.67 = type <{ i32, [4 x i8], %"struct.fmt::v12::detail::big_decimal_fp", i32, i8, [3 x i8], i32, i8, [3 x i8], i32, [4 x i8] }>
%class.anon.70 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.71 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.fmt::v12::detail::thousands_sep_result" = type <{ %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"struct.fmt::v12::detail::write_int_arg.42" = type { i128, i32 }
%"struct.fmt::v12::detail::dynamic_format_specs" = type { %"struct.fmt::v12::format_specs", %"union.fmt::v12::detail::arg_ref", %"union.fmt::v12::detail::arg_ref" }
%"union.fmt::v12::detail::arg_ref" = type { %"class.fmt::v12::basic_string_view" }
%"struct.fmt::v12::detail::dynamic_spec_handler" = type { ptr, ptr, ptr }
%class.anon.78 = type { i32, %"struct.fmt::v12::detail::dragonbox::decimal_fp", i32, i8, i32, i8, i32 }
%class.anon.80 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.81 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.86 = type <{ i32, [4 x i8], %"struct.fmt::v12::detail::dragonbox::decimal_fp.56", i32, i8, [3 x i8], i32, i8, [3 x i8], i32, [4 x i8] }>
%class.anon.89 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.90 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.91 = type { ptr, ptr, ptr, ptr, ptr }
%class.anon.92 = type { i8, i64, %"class.fmt::v12::basic_string_view" }
%class.anon.95 = type { %class.anon.91 }
%"class.fmt::v12::detail::counting_buffer" = type { %"class.fmt::v12::detail::buffer", [256 x i8], i64 }

@_ZN11OpenImageIO4v3_122cineon_imageio_versionE = local_unnamed_addr global i32 27, align 4
@.str = private unnamed_addr constant [4 x i8] c"cin\00", align 1
@_ZN11OpenImageIO4v3_123cineon_input_extensionsE = local_unnamed_addr global [2 x ptr] [ptr @.str, ptr null], align 16
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not open file \22{}\22\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Could not read header\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unsupported bit depth {}\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"I{}\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"R{}\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"G{}\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"B{}\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"channel{}\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"oiio:BitsPerSample\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"KodakLog\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"DateTime\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"{} {}\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"cineon:ImageDescriptor\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"cineon:Version\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"cineon:Metric\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"cineon:BitDepth\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"cineon:PixelsPerLine\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"cineon:LinesPerElement\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"cineon:LowData\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"cineon:LowQuantity\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"cineon:HighData\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"cineon:HighQuantity\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"cineon:WhitePoint\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"cineon:RedPrimary\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"cineon:GreenPrimary\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"cineon:BluePrimary\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"cineon:LabelText\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"cineon:XOffset\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"cineon:YOffset\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"cineon:SourceImageFileName\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"cineon:InputDevice\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"cineon:InputDeviceModelNumber\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"cineon:InputDeviceSerialNumber\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"cineon:XDevicePitch\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"cineon:YDevicePitch\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"cineon:FramePosition\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"cineon:FrameRate\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"cineon:Format\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"cineon:FrameId\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"cineon:SlateInfo\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"Packed\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"8-bit boundary, left justified\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"8-bit boundary, right justified\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"16-bit boundary, left justified\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"16-bit boundary, right justified\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"32-bit boundary, left justified\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"32-bit boundary, right justified\00", align 1
@.str.53 = private unnamed_addr constant [38 x i8] c", as many fields as possible per cell\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c", at most one pixel per cell\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"cineon:Packing\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"cineon:FilmEdgeCode\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"cineon:UserData\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"Grayscale\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"Red, printing density\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"Red, Rec709\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"Green, printing density\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"Green, Rec709\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"Blue, printing density\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"Blue, Rec709\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"Undefined\00", align 1
@_ZTVN11OpenImageIO4v3_111CineonInputE = hidden unnamed_addr constant { [45 x ptr] } { [45 x ptr] [ptr null, ptr @_ZTIN11OpenImageIO4v3_111CineonInputE, ptr @_ZN11OpenImageIO4v3_111CineonInputD2Ev, ptr @_ZN11OpenImageIO4v3_111CineonInputD0Ev, ptr @_ZNK11OpenImageIO4v3_111CineonInput11format_nameEv, ptr @_ZNK11OpenImageIO4v3_110ImageInput8supportsENS0_17basic_string_viewIcSt11char_traitsIcEEE, ptr @_ZNK11OpenImageIO4v3_110ImageInput10valid_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK11OpenImageIO4v3_110ImageInput10valid_fileEPNS0_10Filesystem7IOProxyE, ptr @_ZN11OpenImageIO4v3_111CineonInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE, ptr @_ZN11OpenImageIO4v3_110ImageInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecERKSA_, ptr @_ZNK11OpenImageIO4v3_110ImageInput4specEv, ptr @_ZN11OpenImageIO4v3_110ImageInput4specEii, ptr @_ZN11OpenImageIO4v3_110ImageInput15spec_dimensionsEii, ptr @_ZN11OpenImageIO4v3_110ImageInput13get_thumbnailERNS0_8ImageBufEi, ptr @_ZN11OpenImageIO4v3_111CineonInput5closeEv, ptr @_ZNK11OpenImageIO4v3_110ImageInput16current_subimageEv, ptr @_ZNK11OpenImageIO4v3_110ImageInput16current_miplevelEv, ptr @_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput26read_native_deep_scanlinesEiiiiiiiRNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_tilesEiiiiiiiiiiRNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_imageEiiRNS0_8DeepDataE, ptr @_ZN11OpenImageIO4v3_110ImageInput13read_scanlineEiiNS0_8TypeDescEPvl, ptr @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiiNS0_8TypeDescEPvll, ptr @_ZN11OpenImageIO4v3_110ImageInput9read_tileEiiiNS0_8TypeDescEPvlll, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescEPvlll, ptr @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescEPvlllPFbS3_fES3_, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput28read_native_volumetric_tilesEiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_110ImageInput28read_native_volumetric_tilesEiiiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE, ptr @_ZN11OpenImageIO4v3_111CineonInput20read_native_scanlineEiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput16read_native_tileEiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiiiPv, ptr @_ZN11OpenImageIO4v3_110ImageInput13send_to_inputEPKcz, ptr @_ZN11OpenImageIO4v3_110ImageInput11set_ioproxyEPNS0_10Filesystem7IOProxyE, ptr @_ZNK11OpenImageIO4v3_110ImageInput8heapsizeEv, ptr @_ZNK11OpenImageIO4v3_110ImageInput9footprintEv] }, align 8
@_ZTIN11OpenImageIO4v3_111CineonInputE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11OpenImageIO4v3_111CineonInputE, ptr @_ZTIN11OpenImageIO4v3_110ImageInputE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11OpenImageIO4v3_111CineonInputE = hidden constant [34 x i8] c"N11OpenImageIO4v3_111CineonInputE\00", align 1
@_ZTIN11OpenImageIO4v3_110ImageInputE = external constant ptr
@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8
@.str.66 = private unnamed_addr constant [7 x i8] c"cineon\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr hidden local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], align 16
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr hidden local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 2
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr hidden local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr hidden local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], align 16
@.str.71 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTINSt6locale5facetE = external constant ptr
@_ZTIN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_facetISt6localeEE, ptr @_ZTINSt6locale5facetE }, align 8
@_ZTSN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden constant [36 x i8] c"N3fmt3v1212format_facetISt6localeEE\00", align 1
@_ZTVN3fmt3v1212format_facetISt6localeEE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_facetISt6localeEE, ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev, ptr @_ZN3fmt3v1212format_facetISt6localeED0Ev, ptr @_ZNK3fmt3v1212format_facetISt6localeE6do_putENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsE] }, align 8
@_ZNSt7__cxx118numpunctIcE2idE = external global %"class.std::locale::id", align 8
@.str.73 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail12is_printableEjE11singletons0 = linkonce_odr hidden local_unnamed_addr constant [41 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 5, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 6, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 7, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 28 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 25 }, %"struct.fmt::v12::detail::singleton" { i8 12, i8 20 }, %"struct.fmt::v12::detail::singleton" { i8 13, i8 16 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 15, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 18 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 22, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 26, i8 7 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 31, i8 22 }, %"struct.fmt::v12::detail::singleton" { i8 32, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 43, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 44, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 45, i8 11 }, %"struct.fmt::v12::detail::singleton" { i8 46, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 48, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 49, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 50, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -89, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -87, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -86, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -85, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -3, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -2, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 -1, i8 9 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower = linkonce_odr hidden local_unnamed_addr constant [290 x i8] c"\ADxy\8B\8D\A20WX\8B\8C\90\1C\1D\DD\0E\0FKL\FB\FC./?\\]_\B5\E2\84\8D\8E\91\92\A9\B1\BA\BB\C5\C6\C9\CA\DE\E4\E5\FF\00\04\11\12)147:;=IJ]\84\8E\92\A9\B1\B4\BA\BB\C6\CA\CE\CF\E4\E5\00\04\0D\0E\11\12)14:;EFIJ^de\84\91\9B\9D\C9\CE\CF\0D\11)EIWde\8D\91\A9\B4\BA\BB\C5\C9\DF\E4\E5\F0\0D\11EIde\80\84\B2\BC\BE\BF\D5\D7\F0\F1\83\85\8B\A4\A6\BE\BF\C5\C7\CE\CF\DA\DBH\98\BD\CD\C6\CE\CFINOWY^_\89\8E\8F\B1\B6\B7\BF\C1\C6\C7\D7\11\16\17[\\\F6\F7\FE\FF\80\0Dmq\DE\DF\0E\0F\1Fno\1C\1D_}~\AE\AF\BB\BC\FA\16\17\1E\1FFGNOXZ\\^~\7F\B5\C5\D4\D5\DC\F0\F1\F5rs\8Ftu\96/_&./\A7\AF\B7\BF\C7\CF\D7\DF\9A@\97\980\8F\1F\C0\C1\CE\FFNOZ[\07\08\0F\10'/\EE\EFno7=?BE\90\91\FE\FFSgu\C8\C9\D0\D1\D8\D9\E7\FE\FF", align 16
@_ZZN3fmt3v126detail12is_printableEjE11singletons1 = linkonce_odr hidden local_unnamed_addr constant [38 x %"struct.fmt::v12::detail::singleton"] [%"struct.fmt::v12::detail::singleton" { i8 0, i8 6 }, %"struct.fmt::v12::detail::singleton" { i8 1, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 3, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 4, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 8, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 9, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 10, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 11, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 14, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 16, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 17, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 18, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 19, i8 17 }, %"struct.fmt::v12::detail::singleton" { i8 20, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 21, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 23, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 25, i8 13 }, %"struct.fmt::v12::detail::singleton" { i8 28, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 29, i8 8 }, %"struct.fmt::v12::detail::singleton" { i8 36, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 106, i8 3 }, %"struct.fmt::v12::detail::singleton" { i8 107, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -68, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -47, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -44, i8 12 }, %"struct.fmt::v12::detail::singleton" { i8 -43, i8 9 }, %"struct.fmt::v12::detail::singleton" { i8 -42, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -41, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -38, i8 1 }, %"struct.fmt::v12::detail::singleton" { i8 -32, i8 5 }, %"struct.fmt::v12::detail::singleton" { i8 -31, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -24, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -18, i8 32 }, %"struct.fmt::v12::detail::singleton" { i8 -16, i8 4 }, %"struct.fmt::v12::detail::singleton" { i8 -8, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -7, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -6, i8 2 }, %"struct.fmt::v12::detail::singleton" { i8 -5, i8 1 }], align 16
@_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower = linkonce_odr hidden local_unnamed_addr constant [175 x i8] c"\0C';>NO\8F\9E\9E\9F\06\07\096=>V\F3\D0\D1\04\14\1867VW\7F\AA\AE\AF\BD5\E0\12\87\89\8E\9E\04\0D\0E\11\12)14:EFIJNOde\\\B6\B7\1B\1C\07\08\0A\0B\14\1769:\A8\A9\D8\D9\097\90\91\A8\07\0A;>fi\8F\92o_\EE\EFZb\9A\9B'(U\9D\A0\A1\A3\A4\A7\A8\AD\BA\BC\C4\06\0B\0C\15\1D:?EQ\A6\A7\CC\CD\A0\07\19\1A\22%>?\C5\C6\04 #%&(38:HJLPSUVXZ\\^`cefksx}\7F\8A\A4\AA\AF\B0\C0\D0\AE\AFy\CCno\93", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal0 = linkonce_odr hidden local_unnamed_addr constant [309 x i8] c"\00 _\22\82\DF\04\82D\08\1B\04\06\11\81\AC\0E\80\AB5(\0B\80\E0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0AP\0F\12\07U\07\03\04\1C\0A\09\03\08\03\07\03\02\03\03\03\0C\04\05\03\0B\06\01\0E\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0DP\04C\03-\03\01\04\11\06\0F\0C:\04\1D%_ m\04j%\80\C8\05\82\B0\03\1A\06\82\FD\03Y\07\15\0B\17\09\14\0C\14\0Cj\06\0A\06\1A\06Y\07+\05F\0A,\04\0C\04\01\031\0B,\04\1A\06\0B\03\80\AC\06\0A\06!?L\04-\03t\08<\03\0F\03<\078\08+\05\82\FF\11\18\08/\11-\03 \10!\0F\80\8C\04\82\97\19\0B\15\88\94\05/\05;\07\02\0E\18\09\80\B3-t\0C\80\D6\1A\0C\05\80\FF\05\80\DF\0C\EE\0D\03\84\8D\037\09\81\\\14\80\B8\08\80\CB*8\03\0A\068\08F\08\0C\06t\0B\1E\03Z\04Y\09\80\83\18\1C\0A\16\09L\04\80\8A\06\AB\A4\0C\17\041\A1\04\81\DA&\07\0C\05\05\80\A5\11\81m\10x(*\06L\04\80\8D\04\80\BE\03\1B\03\0F\0D", align 16
@_ZZN3fmt3v126detail12is_printableEjE7normal1 = linkonce_odr hidden local_unnamed_addr constant [419 x i8] c"^\22{\05\03\04-\03f\03\01/.\80\82\1D\031\0F\1C\04$\09\1E\05+\05D\04\0E*\80\AA\06$\04$\04(\084\0B\01\80\90\817\09\16\0A\08\80\989\03c\08\090\16\05!\03\1B\05\01@8\04K\05/\04\0A\07\09\07@ '\04\0C\096\03:\05\1A\07\04\0C\07PI73\0D3\07.\08\0A\81&RN(\08*V\1C\14\17\09N\04\1E\0FC\0E\19\07\0A\06H\08'\09u\0B?A*\06;\05\0A\06Q\06\01\05\10\03\05\80\8Bb\1EH\08\0A\80\A6^\22E\0B\0A\06\0D\139\07\0A6,\04\10\80\C0<dS\0CH\09\0AFE\1BH\08S\1D9\81\07F\0A\1D\03GI7\03\0E\08\0A\069\07\0A\816\19\80\B7\01\0F2\0D\83\9Bfu\0B\80\C4\8A\BC\84/\8F\D1\82G\A1\B9\829\07*\04\02`&\0AF\0A(\05\13\82\B0[eK\049\07\11@\05\0B\02\0E\97\F8\08\84\D6*\09\A2\F7\81\1F1\03\11\04\08\81\8C\89\04k\05\0D\03\09\07\10\93`\80\F6\0As\08n\17F\80\9A\14\0CW\09\19\80\87\81G\03\85B\0F\15\85P+\80\D5-\03\1A\04\02\81p:\05\01\85\00\80\D7)L\04\0A\04\02\83\11DL=\80\C2<\06\01\04U\05\1B4\02\81\0E,\04d\0CV\0A\80\AE8\1D\0D,\04\09\07\02\0E\06\80\9A\83\D8\08\0D\03\0D\03t\0CY\07\0C\14\0C\048\08\0A\06(\08\22N\81T\0C\15\03\03\05\07\09\19\07\07\09\03\0D\07)\80\CB%\0A\84\06", align 16
@.str.76 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [78 x i64] [i64 -9093133594791772939, i64 -6754730975062328270, i64 -3831727700400522433, i64 -177973607073265138, i64 -7028762532061872567, i64 -4174267146649952805, i64 -606147914885053102, i64 -7296371474444240045, i64 -4508778324627912152, i64 -1024286887357502286, i64 -7557708332239520785, i64 -4835449396872013077, i64 -1432625727662628442, i64 -7812920107430224632, i64 -5154464115860392886, i64 -1831394126398103204, i64 -8062150356639896358, i64 -5466001927372482544, i64 -2220816390788215276, i64 -8305539271883716404, i64 -5770238071427257601, i64 -2601111570856684097, i64 -8543223759426509416, i64 -6067343680855748867, i64 -2972493582642298179, i64 -8775337516792518218, i64 -6357485877563259868, i64 -3335171328526686932, i64 -9002011107970261188, i64 -6640827866535438581, i64 -3689348814741910323, i64 -9223372036854775808, i64 -6917529027641081856, i64 -4035225266123964416, i64 -432345564227567616, i64 -7187745005283311616, i64 -4372995238176751616, i64 -854558029293551616, i64 -7451627795949551616, i64 -4702848726509551616, i64 -1266874889709551616, i64 -7709325833709551616, i64 -5024971273709551616, i64 -1669528073709551616, i64 -7960984073709551616, i64 -5339544073709551616, i64 -2062744073709551616, i64 -8206744073709551616, i64 -5646744073709551616, i64 -2446744073709551616, i64 -8446744073709551616, i64 -5946744073709551616, i64 -2821744073709551616, i64 -8681119073709551616, i64 -6239712823709551616, i64 -3187955011209551616, i64 -8910000909647051616, i64 -6525815118631426616, i64 -3545582879861895366, i64 -9133518327554766459, i64 -6805211891016070170, i64 -3894828845342699809, i64 -256850038250986857, i64 -7078060301547948642, i64 -4235889358507547898, i64 -683175679707046969, i64 -7344513827457986211, i64 -4568956265895094860, i64 -1099509313941480671, i64 -7604722348854507275, i64 -4894216917640746190, i64 -1506085128623544834, i64 -7858832233030797377, i64 -5211854272861108818, i64 -1903131822648998118, i64 -8106986416796705680, i64 -5522047002568494196, i64 -2290872734783229841], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands = linkonce_odr hidden local_unnamed_addr constant [24 x %"class.fmt::v12::detail::uint128_fallback"] [%"class.fmt::v12::detail::uint128_fallback" { i64 2731688931043774331, i64 -38366372719436721 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -357406007711231344, i64 -3576574988931720989 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -851274575098787809, i64 -6434717147622031249 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -5882264492762254952, i64 -8743505996830120772 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4300328673033783640, i64 -2770317479606055818 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1886565557410948869, i64 -5783427518286599473 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3851351762838199358, i64 -8217398424034108273 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -3728406090856200938, i64 -1920344853953336643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -573958201337495958, i64 -5096825099203863602 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -2456994988062127447, i64 -7662765406849295699 }, %"class.fmt::v12::detail::uint128_fallback" { i64 5991131704928854841, i64 -1024286887357502287 }, %"class.fmt::v12::detail::uint128_fallback" { i64 0, i64 -4372995238176751616 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1143914305352105984, i64 -7078060301547948643 }, %"class.fmt::v12::detail::uint128_fallback" { i64 212292400617608629, i64 -79644842111309304 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -1347699823215743097, i64 -3609919470959866074 }, %"class.fmt::v12::detail::uint128_fallback" { i64 -8873354301053463267, i64 -6461652605697523899 }, %"class.fmt::v12::detail::uint128_fallback" { i64 831516194300602803, i64 -8765264286586255934 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1957835834444274181, i64 -2805469892591575644 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4069786015789754291, i64 -5811823411358942533 }, %"class.fmt::v12::detail::uint128_fallback" { i64 6695424375237764563, i64 -8240336443785642460 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1129188820640936779, i64 -1957403223540890347 }, %"class.fmt::v12::detail::uint128_fallback" { i64 4425478360848884292, i64 -5126760611758208489 }, %"class.fmt::v12::detail::uint128_fallback" { i64 1096485900831157193, i64 -7686947121313936181 }, %"class.fmt::v12::detail::uint128_fallback" { i64 7239297505920716784, i64 -1063354554122040811 }], align 16
@_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64 = linkonce_odr hidden local_unnamed_addr constant [27 x i64] [i64 1, i64 5, i64 25, i64 125, i64 625, i64 3125, i64 15625, i64 78125, i64 390625, i64 1953125, i64 9765625, i64 48828125, i64 244140625, i64 1220703125, i64 6103515625, i64 30517578125, i64 152587890625, i64 762939453125, i64 3814697265625, i64 19073486328125, i64 95367431640625, i64 476837158203125, i64 2384185791015625, i64 11920928955078125, i64 59604644775390625, i64 298023223876953125, i64 1490116119384765625], align 16
@.str.88 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@_ZTIN3fmt3v1212format_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, align 8
@_ZTSN3fmt3v1212format_errorE = linkonce_odr hidden constant [25 x i8] c"N3fmt3v1212format_errorE\00", align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN3fmt3v1212format_errorE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, align 8
@.str.90 = private unnamed_addr constant [23 x i8] c"string pointer is null\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.92 = private unnamed_addr constant [31 x i8] c"unmatched '}' in format string\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.94 = private unnamed_addr constant [29 x i8] c"missing '}' in format string\00", align 1
@.str.95 = private unnamed_addr constant [25 x i8] c"unknown format specifier\00", align 1
@.str.96 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.97 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.98 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.99 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.100 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.103 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.104 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.105 = private unnamed_addr constant [34 x i8] c"invalid format specifier for char\00", align 1
@__const._ZN3fmt3v126detail18make_write_int_argIhEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 16777259, i32 16777248], align 16
@.str.107 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.108 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.109 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.110 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.112 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"
@switch.table._ZN11OpenImageIO4v3_111CineonInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE = private unnamed_addr constant [4 x i64] [i64 258, i64 260, i64 262, i64 262], align 8
@switch.table._ZN11OpenImageIO4v3_111CineonInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE.1 = private unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 4, i32 3, i32 5, i32 6, i32 8, i32 7], align 4
@switch.table._ZN11OpenImageIO4v3_111CineonInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE.3 = private unnamed_addr constant [7 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], align 8
@switch.table._ZN11OpenImageIO4v3_111CineonInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE.4 = private unnamed_addr constant [7 x i64] [i64 6, i64 30, i64 31, i64 31, i64 32, i64 31, i64 32], align 8
@switch.table._ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE = private unnamed_addr constant [7 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.60, ptr @.str.62, ptr @.str.64], align 8

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_127cineon_input_imageio_createEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN11OpenImageIO4v3_110ImageInputnwEm(i64 noundef 2296) ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_111CineonInputC2Ev(ptr noundef nonnull align 8 dereferenceable(2296) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_110ImageInputdlEPv(ptr noundef nonnull %i.a) #27
  resume { ptr, i32 } %i.b
}

declare noundef ptr @_ZN11OpenImageIO4v3_110ImageInputnwEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_111CineonInputC2Ev(ptr noundef nonnull align 8 dereferenceable(2296) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_110ImageInputC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 344) (i8, ptr @_ZTVN11OpenImageIO4v3_111CineonInputE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  invoke void @_ZN6cineon6ReaderC1Ev(ptr noundef nonnull align 8 dereferenceable(2080) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_111CineonInput4initEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc unwind label %bb.g, !inline_history !54

.noexc:                                           ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.h) #27, !inline_history !54
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d
  store ptr null, ptr %i.a, align 8, !tbaa !9
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %.pre5 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !56
  %i.m = icmp eq ptr %.pre5, %.pre
  br i1 %i.m, label %_ZN11OpenImageIO4v3_111CineonInput4initEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2280
  store ptr %.pre, ptr %i.n, align 8, !tbaa !56
  br label %_ZN11OpenImageIO4v3_111CineonInput4initEv.exit

_ZN11OpenImageIO4v3_111CineonInput4initEv.exit:   ; preds = %bb.b, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i, %bb.e
  ret void

bb.f:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !55   ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  tail call void @_ZN6cineon6ReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(2080) dereferenceable(2080) %i.b) #27
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.f
  %.pn = phi { ptr, i32 } [ %i.p, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %i.o, %bb.f ]
  tail call void @_ZN11OpenImageIO4v3_110ImageInputD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #27
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ImageInputdlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @_ZN11OpenImageIO4v3_130cineon_imageio_library_versionEv() local_unnamed_addr #3 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_111CineonInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(2296) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.100", align 16 ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"struct.fmt::v12::detail::format_arg_store.100", align 16 ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %12 = alloca %"struct.fmt::v12::detail::format_arg_store.99", align 16 ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"struct.fmt::v12::detail::format_arg_store.98", align 16 ; 4 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"struct.fmt::v12::detail::format_arg_store.98", align 16 ; 4 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %15 = alloca %"struct.fmt::v12::detail::format_arg_store.98", align 16 ; 4 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %16 = alloca %"struct.fmt::v12::detail::format_arg_store.98", align 16 ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %18 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %25 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %26 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.o = alloca [8 x ptr], align 16               ; 7 uses
  %i.p = alloca [8 x i32], align 16               ; 19 uses
  %i.q = alloca [8 x float], align 16             ; 27 uses
  %28 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %29 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %30 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %31 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %32 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %33 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %34 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %35 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %36 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %37 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %38 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %39 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %40 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %41 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %42 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %43 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %44 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %45 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %46 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %47 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %48 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %49 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %50 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %51 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %52 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %53 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %54 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %55 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %56 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %57 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %58 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %60 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %61 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %62 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %63 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.r = alloca [17 x i8], align 16               ; 7 uses
  %65 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %66 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %67 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.s = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 5 uses
  invoke void @_ZN6cineon8InStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !9
  %i.u = load ptr, ptr %1, align 8, !tbaa !58
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %i.u)
  br i1 %i.y, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.dz

bb.d:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 16) #28
  br label %bb.ea

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !9
  tail call void @_ZN6cineon6Reader11SetInStreamEPNS_8InStreamE(ptr noundef nonnull align 8 dereferenceable(2080) %i.aa, ptr noundef %i.ab)
  %i.ac = tail call noundef zeroext i1 @_ZN6cineon6Reader10ReadHeaderEv(ptr noundef nonnull align 8 dereferenceable(2080) %i.aa)
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.2)
  br label %bb.dz

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 30 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 393 ; 13 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !62  ; 4 uses
  %.not556 = icmp eq i8 %i.af, 0
  br i1 %.not556, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %bb.g
  store i32 0, ptr %i.n, align 4
  br label %bb.h

.lr.ph.preheader:                                 ; preds = %bb.g
  %wide.trip.count = zext i8 %i.af to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ag = icmp eq i8 %i.af, 1
  br i1 %i.ag, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %_ZNK6cineon13GenericHeader8BitDepthEi.exit152.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0.i151498499.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.0.i151497.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod713 = trunc i8 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod713)
  %or.cond.i.epil = icmp samesign ugt i64 %indvars.iv.epil.init, 7
  br i1 %or.cond.i.epil, label %._crit_edge, label %_ZNK6cineon13GenericHeader8BitDepthEi.exit.thread.epil

_ZNK6cineon13GenericHeader8BitDepthEi.exit.thread.epil: ; preds = %.lr.ph.epil.preheader
  %i.ah = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.epil.init
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 198
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !63
  %i.ak = zext i8 %i.aj to i32
  %spec.select.epil = tail call i32 @llvm.smax.i32(i32 %.0.i151498499.epil.init, i32 %i.ak)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %_ZNK6cineon13GenericHeader8BitDepthEi.exit.thread.epil, %._crit_edge.unr-lcssa
  %.0.i151497.lcssa = phi i32 [ %.0.i151497.1, %._crit_edge.unr-lcssa ], [ %spec.select.epil, %_ZNK6cineon13GenericHeader8BitDepthEi.exit.thread.epil ], [ 255, %.lr.ph.epil.preheader ] ; 3 uses
  store i32 %.0.i151497.lcssa, ptr %i.n, align 4
  %i.al = add nuw nsw i32 %.0.i151497.lcssa, 7
  %i.am = lshr i32 %i.al, 3
  %switch.tableidx = add nsw i32 %i.am, -1        ; 2 uses
  %i.an = icmp ult i32 %switch.tableidx, 4
  br i1 %i.an, label %switch.lookup, label %bb.h

.lr.ph:                                           ; preds = %_ZNK6cineon13GenericHeader8BitDepthEi.exit152.1, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %_ZNK6cineon13GenericHeader8BitDepthEi.exit152.1 ] ; 5 uses
  %.0.i151498499 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.0.i151497.1, %_ZNK6cineon13GenericHeader8BitDepthEi.exit152.1 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_ZNK6cineon13GenericHeader8BitDepthEi.exit152.1 ]
  %or.cond.i = icmp samesign ugt i64 %indvars.iv, 7
  br i1 %or.cond.i, label %_ZNK6cineon13GenericHeader8BitDepthEi.exit152, label %_ZNK6cineon13GenericHeader8BitDepthEi.exit.thread

_ZNK6cineon13GenericHeader8BitDepthEi.exit.thread: ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 198
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !63
  %i.ar = zext i8 %i.aq to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0.i151498499, i32 %i.ar)
  br label %_ZNK6cineon13GenericHeader8BitDepthEi.exit152

_ZNK6cineon13GenericHeader8BitDepthEi.exit152:    ; preds = %_ZNK6cineon13GenericHeader8BitDepthEi.exit.thread, %.lr.ph
  %.0.i151497 = phi i32 [ %spec.select, %_ZNK6cineon13GenericHeader8BitDepthEi.exit.thread ], [ 255, %.lr.ph ]
  %or.cond.i.1 = icmp samesign ugt i64 %indvars.iv, 7
  br i1 %or.cond.i.1, label %_ZNK6cineon13GenericHeader8BitDepthEi.exit152.1, label %_ZNK6cineon13GenericHeader8BitDepthEi.exit.thread.1

_ZNK6cineon13GenericHeader8BitDepthEi.exit.thread.1: ; preds = %_ZNK6cineon13GenericHeader8BitDepthEi.exit152
  %i.as = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 226
  %i.au = load i8, ptr %i.at, align 2, !tbaa !63
  %i.av = zext i8 %i.au to i32
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %.0.i151497, i32 %i.av)
  br label %_ZNK6cineon13GenericHeader8BitDepthEi.exit152.1

_ZNK6cineon13GenericHeader8BitDepthEi.exit152.1:  ; preds = %_ZNK6cineon13GenericHeader8BitDepthEi.exit.thread.1, %_ZNK6cineon13GenericHeader8BitDepthEi.exit152
  %.0.i151497.1 = phi i32 [ %spec.select.1, %_ZNK6cineon13GenericHeader8BitDepthEi.exit.thread.1 ], [ 255, %_ZNK6cineon13GenericHeader8BitDepthEi.exit152 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !65

bb.h:                                             ; preds = %._crit_edge, %._crit_edge.thread
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  br label %bb.dy

switch.lookup:                                    ; preds = %._crit_edge
  %i.aw = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN11OpenImageIO4v3_111CineonInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE, i64 %i.aw
  %switch.load = load i64, ptr %switch.gep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.ax = tail call noundef i32 @_ZNK6cineon6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2048) %i.ad)
  %i.ay = tail call noundef i32 @_ZNK6cineon6Header6HeightEv(ptr noundef nonnull align 4 dereferenceable(2048) %i.ad)
  %i.az = load i8, ptr %i.ae, align 1, !tbaa !62
  %i.ba = zext i8 %i.az to i32
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %18, i32 noundef %i.ax, i32 noundef %i.ay, i32 noundef %i.ba, i64 %switch.load) #27
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 38 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull align 8 dereferenceable(160) %18) #27 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %18, i64 136 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !67 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %18, i64 144
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %switch.lookup, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %i.be, %switch.lookup ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i) #27
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, %i.bg
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !69

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.bd, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %switch.lookup
  %i.bi = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.be, %switch.lookup ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %18, i64 152
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !70
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #28
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !71 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 104
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !72 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.bx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.bp, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.bs = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !58 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !73
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.bx, %i.br
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !74

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.bo, align 8, !tbaa !71
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.by = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bp, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %18, i64 112
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !75
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.j, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %18, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !77
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #28
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 12 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !71 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 30 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.co, %i.cm
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i153

.lr.ph.i.i.i.i153:                                ; preds = %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i156
  %.05.i.i.i.i154 = phi ptr [ %i.cu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i156 ], [ %i.cm, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit ] ; 3 uses
  %i.cp = load ptr, ptr %.05.i.i.i.i154, align 8, !tbaa !58 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i154, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i155: ; preds = %.lr.ph.i.i.i.i153
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !73
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i156

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i156: ; preds = %.lr.ph.i.i.i.i153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i155
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i154, i64 32 ; 2 uses
  %.not.i.i.i.i157 = icmp eq ptr %i.cu, %i.co
  br i1 %.not.i.i.i.i157, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i158, label %.lr.ph.i.i.i.i153, !llvm.loop !74

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i158: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i156
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !72
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i158
  %i.cv = load i8, ptr %i.ae, align 1, !tbaa !62
  %.not557 = icmp eq i8 %i.cv, 0
  br i1 %.not557, label %._crit_edge509, label %.lr.ph508

.lr.ph508:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  br label %bb.l

._crit_edge509:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  store i32 %.0.i151497.lcssa, ptr %i.m, align 4, !tbaa !3
  store ptr @.str.13, ptr %17, align 8, !tbaa !78
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 18, ptr %i.dh, align 8, !tbaa !80
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %17, i64 263, ptr noundef nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !81  ; 2 uses
  %i.dk = icmp ult i8 %i.dj, 8
  br i1 %i.dk, label %switch.lookup701, label %bb.bb

bb.l:                                             ; preds = %.lr.ph508, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit
  %indvars.iv568 = phi i64 [ 0, %.lr.ph508 ], [ %indvars.iv.next569, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit ] ; 3 uses
  %.0460505 = phi i32 [ 0, %.lr.ph508 ], [ %.1461, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit ] ; 11 uses
  %.0462504 = phi i32 [ 0, %.lr.ph508 ], [ %.1463, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit ] ; 12 uses
  %.0464503 = phi i32 [ 0, %.lr.ph508 ], [ %.1465, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit ] ; 12 uses
  %or.cond.i160 = icmp samesign ugt i64 %indvars.iv568, 7
  br i1 %or.cond.i160, label %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.thread, label %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit

_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit: ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv568
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 197
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !73
  switch i8 %i.dn, label %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.thread [
    i8 0, label %bb.m
    i8 1, label %bb.v
    i8 4, label %bb.v
    i8 2, label %bb.ae
    i8 5, label %bb.ae
    i8 3, label %bb.an
    i8 6, label %bb.an
  ]

bb.m:                                             ; preds = %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit
  %i.do = add nsw i32 %.0460505, 1                ; 4 uses
  %i.dp = icmp sgt i32 %.0460505, 0
  br i1 %i.dp, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27, !noalias !82
  %.sroa.03.0.insert.ext.i = zext nneg i32 %i.do to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %16, align 16, !noalias !82
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.4, i64 3, i64 1, ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27, !noalias !82
  %i.dq = load ptr, ptr %i.cn, align 8, !tbaa !72 ; 8 uses
  %i.dr = load ptr, ptr %i.cw, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.dq, %i.dr
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 3 uses
  store ptr %i.ds, ptr %i.dq, align 8, !tbaa !85
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_111CineonInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE:bb.a
    i64 1, label %bb.aq
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i212
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i211
  %i.hx = load i8, ptr %i.hr, align 1, !tbaa !73
  store i8 %i.hx, ptr %i.hw, align 1, !tbaa !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i212

bb.ar:                                            ; preds = %._crit_edge.i.i.i211
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hw, ptr align 1 %i.hr, i64 %i.hs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i212: ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i.i211
  %i.hy = load i64, ptr %i.i, align 8, !tbaa !87  ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !86
  %i.ia = load ptr, ptr %i.ho, align 8, !tbaa !58
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hy
  store i8 0, ptr %i.ib, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  %i.ic = load ptr, ptr %i.cn, align 8, !tbaa !72
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  store ptr %i.id, ptr %i.cn, align 8, !tbaa !72
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit216

bb.as:                                            ; preds = %bb.ao
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr %i.ho, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit216 unwind label %bb.at

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i212, %bb.as
  %i.ie = load ptr, ptr %22, align 8, !tbaa !58   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.cy
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit216
  %i.ig = load i64, ptr %i.cy, align 8, !tbaa !73
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit

bb.at:                                            ; preds = %bb.as, %.noexc.i.i213
  %i.ii = landingpad { ptr, i32 }
          cleanup
  %i.ij = load ptr, ptr %22, align 8, !tbaa !58   ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.cy
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.at
  %i.il = load i64, ptr %i.cy, align 8, !tbaa !73
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.dx

bb.au:                                            ; preds = %bb.an
  %i.in = load ptr, ptr %i.cn, align 8, !tbaa !72 ; 6 uses
  %i.io = load ptr, ptr %i.cw, align 8, !tbaa !75
  %.not.i223 = icmp eq ptr %i.in, %i.io
  br i1 %.not.i223, label %bb.av, label %._crit_edge.i.i.i224

._crit_edge.i.i.i224:                             ; preds = %bb.au
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  store ptr %i.ip, ptr %i.in, align 8, !tbaa !85
  store i8 66, ptr %i.ip, align 8, !tbaa !73
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store i64 1, ptr %i.iq, align 8, !tbaa !86
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 17
  store i8 0, ptr %i.ir, align 1, !tbaa !73
  %i.is = load ptr, ptr %i.cn, align 8, !tbaa !72
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  store ptr %i.it, ptr %i.cn, align 8, !tbaa !72
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit

bb.av:                                            ; preds = %bb.au
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA2_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr %i.in, ptr noundef nonnull align 1 dereferenceable(2) @.str.11)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit

_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.thread: ; preds = %bb.l, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  %i.iu = load ptr, ptr %i.cn, align 8, !tbaa !72
  %i.iv = load ptr, ptr %i.cl, align 8, !tbaa !71
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = ashr exact i64 %i.iy, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27, !noalias !97
  %.sroa.03.0.insert.ext.i229 = zext i64 %i.iz to i128
  store i128 %.sroa.03.0.insert.ext.i229, ptr %12, align 16, !noalias !97
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr nonnull @.str.12, i64 9, i64 4, ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27, !noalias !97
  %i.ja = load ptr, ptr %i.cn, align 8, !tbaa !72 ; 8 uses
  %i.jb = load ptr, ptr %i.cw, align 8, !tbaa !75
  %.not.i230 = icmp eq ptr %i.ja, %i.jb
  br i1 %.not.i230, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.thread
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 3 uses
  store ptr %i.jc, ptr %i.ja, align 8, !tbaa !85
  %i.jd = load ptr, ptr %23, align 8, !tbaa !58   ; 2 uses
  %i.je = load i64, ptr %i.df, align 8, !tbaa !86 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  store i64 %i.je, ptr %i.h, align 8, !tbaa !87
  %i.jf = icmp ugt i64 %i.je, 15
  br i1 %i.jf, label %.noexc.i.i233, label %._crit_edge.i.i.i231

.noexc.i.i233:                                    ; preds = %bb.aw
  %i.jg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ja, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc234 unwind label %bb.ba ; 2 uses

.noexc234:                                        ; preds = %.noexc.i.i233
  store ptr %i.jg, ptr %i.ja, align 8, !tbaa !58
  %i.jh = load i64, ptr %i.h, align 8, !tbaa !87
  store i64 %i.jh, ptr %i.jc, align 8, !tbaa !73
  br label %._crit_edge.i.i.i231

._crit_edge.i.i.i231:                             ; preds = %.noexc234, %bb.aw
  %i.ji = phi ptr [ %i.jg, %.noexc234 ], [ %i.jc, %bb.aw ] ; 2 uses
  switch i64 %i.je, label %bb.ay [
    i64 1, label %bb.ax
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i232
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i.i231
  %i.jj = load i8, ptr %i.jd, align 1, !tbaa !73
  store i8 %i.jj, ptr %i.ji, align 1, !tbaa !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i232

bb.ay:                                            ; preds = %._crit_edge.i.i.i231
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ji, ptr align 1 %i.jd, i64 %i.je, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i232: ; preds = %bb.ay, %bb.ax, %._crit_edge.i.i.i231
  %i.jk = load i64, ptr %i.h, align 8, !tbaa !87  ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !86
  %i.jm = load ptr, ptr %i.ja, align 8, !tbaa !58
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jk
  store i8 0, ptr %i.jn, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  %i.jo = load ptr, ptr %i.cn, align 8, !tbaa !72
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  store ptr %i.jp, ptr %i.cn, align 8, !tbaa !72
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit236

bb.az:                                            ; preds = %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit.thread
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit236 unwind label %bb.ba

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i232, %bb.az
  %i.jq = load ptr, ptr %23, align 8, !tbaa !58   ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.dg
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit236
  %i.js = load i64, ptr %i.dg, align 8, !tbaa !73
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit

bb.ba:                                            ; preds = %bb.az, %.noexc.i.i233
  %i.ju = landingpad { ptr, i32 }
          cleanup
  %i.jv = load ptr, ptr %23, align 8, !tbaa !58   ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.dg
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.ba
  %i.jx = load i64, ptr %i.dg, align 8, !tbaa !73
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.dx

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit: ; preds = %bb.av, %._crit_edge.i.i.i224, %bb.am, %._crit_edge.i.i.i204, %bb.ad, %._crit_edge.i.i.i184, %bb.u, %._crit_edge.i.i.i167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %.1465 = phi i32 [ %.0464503, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ], [ %.0464503, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0464503, %bb.am ], [ %.0464503, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %.0464503, %bb.u ], [ %.0464503, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %.0464503, %bb.ad ], [ %i.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.0464503, %._crit_edge.i.i.i167 ], [ %.0464503, %._crit_edge.i.i.i184 ], [ %.0464503, %._crit_edge.i.i.i204 ], [ %i.hm, %._crit_edge.i.i.i224 ], [ %i.hm, %bb.av ]
  %.1463 = phi i32 [ %.0462504, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ], [ %.0462504, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ge, %bb.am ], [ %.0462504, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %.0462504, %bb.u ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %.0462504, %bb.ad ], [ %.0462504, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.0462504, %._crit_edge.i.i.i167 ], [ %.0462504, %._crit_edge.i.i.i184 ], [ %i.ge, %._crit_edge.i.i.i204 ], [ %.0462504, %._crit_edge.i.i.i224 ], [ %.0462504, %bb.av ]
  %.1461 = phi i32 [ %.0460505, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0460505, %bb.am ], [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %i.do, %bb.u ], [ %.0460505, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %i.ew, %bb.ad ], [ %.0460505, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %i.do, %._crit_edge.i.i.i167 ], [ %i.ew, %._crit_edge.i.i.i184 ], [ %.0460505, %._crit_edge.i.i.i204 ], [ %.0460505, %._crit_edge.i.i.i224 ], [ %.0460505, %bb.av ]
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568, 1 ; 2 uses
  %i.jz = load i8, ptr %i.ae, align 1, !tbaa !62
  %i.ka = zext i8 %i.jz to i64
  %i.kb = icmp samesign ult i64 %indvars.iv.next569, %i.ka
  br i1 %i.kb, label %bb.l, label %._crit_edge509, !llvm.loop !100

switch.lookup701:                                 ; preds = %._crit_edge509
  %i.kc = zext nneg i8 %i.dj to i64
  %switch.gep702 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN11OpenImageIO4v3_111CineonInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE.1, i64 %i.kc
  %switch.load703 = load i32, ptr %switch.gep702, align 4
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge509, %switch.lookup701
  %.066 = phi i32 [ %switch.load703, %switch.lookup701 ], [ 0, %._crit_edge509 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i32 %.066, ptr %i.g, align 4, !tbaa !3
  store ptr @.str.14, ptr %11, align 8, !tbaa !78
  %i.kd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 11, ptr %i.kd, align 8, !tbaa !80
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %11, i64 263, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  store ptr @.str.15, ptr %24, align 8, !tbaa !78
  %i.ke = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 8, ptr %i.ke, align 8, !tbaa !80
  call void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %24)
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.kg = load i8, ptr %i.kf, align 4, !tbaa !73
  %.not = icmp eq i8 %i.kg, 0
  br i1 %.not, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ki = load i8, ptr %i.kh, align 8, !tbaa !73
  %.not87 = icmp eq i8 %i.ki, 0
  br i1 %.not87, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr @.str.16, ptr %25, align 8, !tbaa !78
  %i.kj = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 8, ptr %i.kj, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !101
  store ptr %i.kf, ptr %10, align 16, !tbaa !73, !noalias !101
  %i.kk = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.kh, ptr %i.kk, align 16, !tbaa !73, !noalias !101
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr nonnull @.str.17, i64 5, i64 204, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !101
  %i.kl = load ptr, ptr %27, align 8, !tbaa !58
  store ptr %i.kl, ptr %26, align 8, !tbaa !78
  %i.km = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !86
  store i64 %i.ko, ptr %i.km, align 8, !tbaa !80
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %25, ptr noundef nonnull dead_on_return %26)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.kp = load ptr, ptr %27, align 8, !tbaa !58   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %bb.be
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !73
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.ku = landingpad { ptr, i32 }
          cleanup
  %i.kv = load ptr, ptr %27, align 8, !tbaa !58   ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.bf
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !73
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.dx

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %bb.bc, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #27
  %i.la = load i8, ptr %i.ae, align 1, !tbaa !62  ; 5 uses
  %.not558 = icmp eq i8 %i.la, 0
  br i1 %.not558, label %._crit_edge514, label %.lr.ph513.preheader

.lr.ph513.preheader:                              ; preds = %bb.bg
  %wide.trip.count574 = zext i8 %i.la to i64      ; 2 uses
  %xtraiter714 = and i64 %wide.trip.count574, 1
  %i.lb = icmp eq i8 %i.la, 1
  br i1 %i.lb, label %.lr.ph513.epil.preheader, label %.lr.ph513.preheader.new

.lr.ph513.preheader.new:                          ; preds = %.lr.ph513.preheader
  %unroll_iter717 = and i64 %wide.trip.count574, 254
  br label %.lr.ph513

._crit_edge514.loopexit.unr-lcssa:                ; preds = %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit.1
  %lcmp.mod715.not = icmp eq i64 %xtraiter714, 0
  br i1 %lcmp.mod715.not, label %._crit_edge514, label %.lr.ph513.epil.preheader

.lr.ph513.epil.preheader:                         ; preds = %._crit_edge514.loopexit.unr-lcssa, %.lr.ph513.preheader
  %indvars.iv571.epil.init = phi i64 [ 0, %.lr.ph513.preheader ], [ %indvars.iv.next572.1, %._crit_edge514.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod716 = trunc i8 %i.la to i1
  call void @llvm.assume(i1 %lcmp.mod716)
  %or.cond.i249.epil = icmp samesign ugt i64 %indvars.iv571.epil.init, 7
  br i1 %or.cond.i249.epil, label %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit.epil, label %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251.epil

_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251.epil: ; preds = %.lr.ph513.epil.preheader
  %i.lc = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv571.epil.init
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 197
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !73  ; 2 uses
  %i.lf = icmp ult i8 %i.le, 7
  br i1 %i.lf, label %switch.lookup704.epil, label %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit.epil

switch.lookup704.epil:                            ; preds = %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251.epil
  %i.lg = zext nneg i8 %i.le to i64
  %switch.gep705.epil = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE, i64 %i.lg
  %switch.load706.epil = load ptr, ptr %switch.gep705.epil, align 8
  br label %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit.epil

_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit.epil: ; preds = %switch.lookup704.epil, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251.epil, %.lr.ph513.epil.preheader
  %.0.i252.epil = phi ptr [ %switch.load706.epil, %switch.lookup704.epil ], [ @.str.65, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251.epil ], [ @.str.65, %.lr.ph513.epil.preheader ]
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv571.epil.init
  store ptr %.0.i252.epil, ptr %i.lh, align 8, !tbaa !104
  br label %._crit_edge514

._crit_edge514:                                   ; preds = %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit.epil, %._crit_edge514.loopexit.unr-lcssa, %bb.bg
  store ptr @.str.18, ptr %28, align 8, !tbaa !78
  %i.li = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 22, ptr %i.li, align 8, !tbaa !80
  %.sroa.5415.0.insert.ext = zext i8 %i.la to i64
  %.sroa.5415.0.insert.shift = shl nuw nsw i64 %.sroa.5415.0.insert.ext, 32
  %.sroa.0411.0.insert.insert = or disjoint i64 %.sroa.5415.0.insert.shift, 269
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %28, i64 %.sroa.0411.0.insert.insert, ptr noundef nonnull %i.o)
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.lk = load i8, ptr %i.lj, align 8, !tbaa !73
  %.off = add i8 %i.lk, -1
  %switch = icmp ult i8 %.off, -2
  br i1 %switch, label %bb.bh, label %bb.bi

.lr.ph513:                                        ; preds = %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit.1, %.lr.ph513.preheader.new
  %indvars.iv571 = phi i64 [ 0, %.lr.ph513.preheader.new ], [ %indvars.iv.next572.1, %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit.1 ] ; 6 uses
  %niter718 = phi i64 [ 0, %.lr.ph513.preheader.new ], [ %niter718.next.1, %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit.1 ]
  %or.cond.i249 = icmp samesign ugt i64 %indvars.iv571, 7
  br i1 %or.cond.i249, label %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit, label %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251

_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251: ; preds = %.lr.ph513
  %i.ll = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv571
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 197
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !73  ; 2 uses
  %i.lo = icmp ult i8 %i.ln, 7
  br i1 %i.lo, label %switch.lookup704, label %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit

switch.lookup704:                                 ; preds = %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251
  %i.lp = zext nneg i8 %i.ln to i64
  %switch.gep705 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE, i64 %i.lp
  %switch.load706 = load ptr, ptr %switch.gep705, align 8
  br label %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit

_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit: ; preds = %.lr.ph513, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251, %switch.lookup704
  %.0.i252 = phi ptr [ %switch.load706, %switch.lookup704 ], [ @.str.65, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251 ], [ @.str.65, %.lr.ph513 ]
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv571
  store ptr %.0.i252, ptr %i.lq, align 16, !tbaa !104
  %indvars.iv.next572 = or disjoint i64 %indvars.iv571, 1 ; 2 uses
  %or.cond.i249.1 = icmp samesign ugt i64 %indvars.iv571, 7
  br i1 %or.cond.i249.1, label %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit.1, label %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251.1

_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251.1: ; preds = %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit
  %i.lr = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next572
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 197
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !73  ; 2 uses
  %i.lu = icmp ult i8 %i.lt, 7
  br i1 %i.lu, label %switch.lookup704.1, label %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit.1

switch.lookup704.1:                               ; preds = %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251.1
  %i.lv = zext nneg i8 %i.lt to i64
  %switch.gep705.1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE, i64 %i.lv
  %switch.load706.1 = load ptr, ptr %switch.gep705.1, align 8
  br label %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit.1

_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit.1: ; preds = %switch.lookup704.1, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251.1, %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit
  %.0.i252.1 = phi ptr [ %switch.load706.1, %switch.lookup704.1 ], [ @.str.65, %_ZNK6cineon13GenericHeader15ImageDescriptorEi.exit251.1 ], [ @.str.65, %_ZN11OpenImageIO4v3_111CineonInput21get_descriptor_stringEN6cineon10DescriptorE.exit ]
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next572
  store ptr %.0.i252.1, ptr %i.lw, align 8, !tbaa !104
  %indvars.iv.next572.1 = add nuw nsw i64 %indvars.iv571, 2 ; 2 uses
  %niter718.next.1 = add i64 %niter718, 2         ; 2 uses
  %niter718.ncmp.1 = icmp eq i64 %niter718.next.1, %unroll_iter717
  br i1 %niter718.ncmp.1, label %._crit_edge514.loopexit.unr-lcssa, label %.lr.ph513, !llvm.loop !105

bb.bh:                                            ; preds = %._crit_edge514
  store ptr @.str.19, ptr %29, align 8, !tbaa !78
  %i.lx = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 14, ptr %i.lx, align 8, !tbaa !80
  store ptr %i.lj, ptr %30, align 8, !tbaa !78
  %i.ly = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lj) #27
  %i.lz = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %i.ly, ptr %i.lz, align 8, !tbaa !80
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %29, ptr noundef nonnull dead_on_return %30)
  br label %bb.bi

end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_111CineonInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE:bb.a
bb.ch:                                            ; preds = %bb.cg
  store ptr @.str.36, ptr %47, align 8, !tbaa !78
  %i.uo = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 18, ptr %i.uo, align 8, !tbaa !80
  store ptr %i.um, ptr %48, align 8, !tbaa !78
  %i.up = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.um) #27
  %i.uq = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 %i.up, ptr %i.uq, align 8, !tbaa !80
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %47, ptr noundef nonnull dead_on_return %48)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 3 uses
  %i.us = load i8, ptr %i.ur, align 4, !tbaa !73
  %.off140 = add i8 %i.us, -1
  %switch141 = icmp ult i8 %.off140, -2
  br i1 %switch141, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store ptr @.str.37, ptr %49, align 8, !tbaa !78
  %i.ut = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 29, ptr %i.ut, align 8, !tbaa !80
  store ptr %i.ur, ptr %50, align 8, !tbaa !78
  %i.uu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ur) #27
  %i.uv = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 %i.uu, ptr %i.uv, align 8, !tbaa !80
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %49, ptr noundef nonnull dead_on_return %50)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 3 uses
  %i.ux = load i8, ptr %i.uw, align 4, !tbaa !73
  %.off142 = add i8 %i.ux, -1
  %switch143 = icmp ult i8 %.off142, -2
  br i1 %switch143, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store ptr @.str.38, ptr %51, align 8, !tbaa !78
  %i.uy = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 30, ptr %i.uy, align 8, !tbaa !80
  store ptr %i.uw, ptr %52, align 8, !tbaa !78
  %i.uz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.uw) #27
  %i.va = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i64 %i.uz, ptr %i.va, align 8, !tbaa !80
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %51, ptr noundef nonnull dead_on_return %52)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 1172
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !123 ; 2 uses
  %i.vd = call float @llvm.fabs.f32(float %i.vc)
  %i.ve = fcmp oeq float %i.vd, +inf
  br i1 %i.ve, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store float %i.vc, ptr %i.d, align 4, !tbaa !113
  store ptr @.str.39, ptr %7, align 8, !tbaa !78
  %i.vf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 19, ptr %i.vf, align 8, !tbaa !80
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %7, i64 267, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.vh = load float, ptr %i.vg, align 8, !tbaa !124 ; 2 uses
  %i.vi = call float @llvm.fabs.f32(float %i.vh)
  %i.vj = fcmp oeq float %i.vi, +inf
  br i1 %i.vj, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store float %i.vh, ptr %i.c, align 4, !tbaa !113
  store ptr @.str.40, ptr %6, align 8, !tbaa !78
  %i.vk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 19, ptr %i.vk, align 8, !tbaa !80
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %6, i64 267, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 1268
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !125 ; 2 uses
  %.not102 = icmp eq i32 %i.vn, -1
  br i1 %.not102, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %i.vn, ptr %i.b, align 4, !tbaa !3
  store ptr @.str.41, ptr %5, align 8, !tbaa !78
  %i.vo = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 20, ptr %i.vo, align 8, !tbaa !80
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %5, i64 262, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.vq = load float, ptr %i.vp, align 8, !tbaa !126 ; 2 uses
  %i.vr = call float @llvm.fabs.f32(float %i.vq)
  %i.vs = fcmp oeq float %i.vr, +inf
  br i1 %i.vs, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store float %i.vq, ptr %i.a, align 4, !tbaa !113
  store ptr @.str.42, ptr %4, align 8, !tbaa !78
  %i.vt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 16, ptr %i.vt, align 8, !tbaa !80
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %4, i64 267, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 1236 ; 3 uses
  %i.vv = load i8, ptr %i.vu, align 4, !tbaa !73
  %.off144 = add i8 %i.vv, -1
  %switch145 = icmp ult i8 %.off144, -2
  br i1 %switch145, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store ptr @.str.43, ptr %53, align 8, !tbaa !78
  %i.vw = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 13, ptr %i.vw, align 8, !tbaa !80
  store ptr %i.vu, ptr %54, align 8, !tbaa !78
  %i.vx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.vu) #27
  %i.vy = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %i.vx, ptr %i.vy, align 8, !tbaa !80
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %53, ptr noundef nonnull dead_on_return %54)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cu, %bb.cv
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 1276 ; 3 uses
  %i.wa = load i8, ptr %i.vz, align 4, !tbaa !73
  %.off146 = add i8 %i.wa, -1
  %switch147 = icmp ult i8 %.off146, -2
  br i1 %switch147, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store ptr @.str.44, ptr %55, align 8, !tbaa !78
  %i.wb = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 14, ptr %i.wb, align 8, !tbaa !80
  store ptr %i.vz, ptr %56, align 8, !tbaa !78
  %i.wc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.vz) #27
  %i.wd = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i64 %i.wc, ptr %i.wd, align 8, !tbaa !80
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %55, ptr noundef nonnull dead_on_return %56)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 3 uses
  %i.wf = load i8, ptr %i.we, align 4, !tbaa !73
  %.off148 = add i8 %i.wf, -1
  %switch149 = icmp ult i8 %.off148, -2
  br i1 %switch149, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store ptr @.str.45, ptr %57, align 8, !tbaa !78
  %i.wg = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i64 16, ptr %i.wg, align 8, !tbaa !80
  store ptr %i.we, ptr %58, align 8, !tbaa !78
  %i.wh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.we) #27
  %i.wi = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i64 %i.wh, ptr %i.wi, align 8, !tbaa !80
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %57, ptr noundef nonnull dead_on_return %58)
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #27
  %i.wj = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 6 uses
  store ptr %i.wj, ptr %59, align 8, !tbaa !85
  %i.wk = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 3 uses
  store i64 0, ptr %i.wk, align 8, !tbaa !86
  store i8 0, ptr %i.wj, align 8, !tbaa !73
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 881 ; 2 uses
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !127 ; 2 uses
  %i.wn = and i8 %i.wm, 127                       ; 3 uses
  %i.wo = icmp samesign ult i8 %i.wn, 7
  br i1 %i.wo, label %switch.lookup707, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.db:                                            ; preds = %switch.lookup707, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i318.invoke, %.noexc331, %.noexc330, %bb.dv, %bb.du, %bb.ds, %bb.dr, %bb.de
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

switch.lookup707:                                 ; preds = %bb.da
  %i.wq = zext nneg i8 %i.wn to i64
  %switch.gep708 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN11OpenImageIO4v3_111CineonInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE.3, i64 %i.wq
  %switch.load709 = load ptr, ptr %switch.gep708, align 8
  %i.wr = zext nneg i8 %i.wn to i64
  %switch.gep710 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN11OpenImageIO4v3_111CineonInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE.4, i64 %i.wr
  %switch.load711 = load i64, ptr %switch.gep710, align 8
  %i.ws = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %59, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %switch.load709, i64 noundef %switch.load711)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split unwind label %bb.db ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split: ; preds = %switch.lookup707
  %.pr = load i8, ptr %i.wl, align 1, !tbaa !127
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split
  %i.wt = phi i8 [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exitthread-pre-split ], [ %i.wm, %bb.da ]
  %.not109 = icmp sgt i8 %i.wt, -1
  %i.wu = load i64, ptr %i.wk, align 8, !tbaa !86 ; 2 uses
  br i1 %.not109, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.wv = add i64 %i.wu, -4611686018427387867
  %i.ww = icmp ult i64 %i.wv, 37
  br i1 %i.ww, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i318.invoke

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.wx = add i64 %i.wu, -4611686018427387876
  %i.wy = icmp ult i64 %i.wx, 28
  br i1 %i.wy, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i318.invoke

.invoke:                                          ; preds = %bb.dd, %bb.dc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #30
          to label %.cont unwind label %bb.db

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i318.invoke: ; preds = %bb.dd, %bb.dc
  %i.wz = phi ptr [ @.str.53, %bb.dc ], [ @.str.54, %bb.dd ]
  %i.xa = phi i64 [ 37, %bb.dc ], [ 28, %bb.dd ]
  %i.xb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull %i.wz, i64 noundef %i.xa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.db ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i318.invoke
  %i.xc = load i64, ptr %i.wk, align 8, !tbaa !86 ; 2 uses
  %i.xd = icmp eq i64 %i.xc, 0
  br i1 %i.xd, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  store ptr @.str.55, ptr %60, align 8, !tbaa !78
  %i.xe = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 14, ptr %i.xe, align 8, !tbaa !80
  %i.xf = load ptr, ptr %59, align 8, !tbaa !58
  store ptr %i.xf, ptr %61, align 8, !tbaa !78
  %i.xg = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 %i.xc, ptr %i.xg, align 8, !tbaa !80
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %60, ptr noundef nonnull dead_on_return %61)
          to label %bb.df unwind label %bb.db

bb.df:                                            ; preds = %bb.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.xi = load i8, ptr %i.xh, align 4, !tbaa !73
  %.not110 = icmp eq i8 %i.xi, 0
  br i1 %.not110, label %bb.dm, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.xk = load i8, ptr %i.xj, align 8, !tbaa !73
  %.not111 = icmp eq i8 %i.xk, 0
  br i1 %.not111, label %bb.dm, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store ptr @.str.16, ptr %62, align 8, !tbaa !78
  %i.xl = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i64 8, ptr %i.xl, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !128
  store ptr %i.xh, ptr %3, align 16, !tbaa !73, !noalias !128
  %i.xm = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.xj, ptr %i.xm, align 16, !tbaa !73, !noalias !128
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %64, ptr nonnull @.str.17, i64 5, i64 204, ptr nonnull %3)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !128
  %i.xn = load ptr, ptr %64, align 8, !tbaa !58
  store ptr %i.xn, ptr %63, align 8, !tbaa !78
  %i.xo = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.xp = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !86
  store i64 %i.xq, ptr %i.xo, align 8, !tbaa !80
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %62, ptr noundef nonnull dead_on_return %63)
          to label %bb.dj unwind label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.xr = load ptr, ptr %64, align 8, !tbaa !58   ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.xt = icmp eq ptr %i.xr, %i.xs
  br i1 %i.xt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %bb.dj
  %i.xu = load i64, ptr %i.xs, align 8, !tbaa !73
  %i.xv = add i64 %i.xu, 1
  call void @_ZdlPvm(ptr noundef %i.xr, i64 noundef %i.xv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #27
  br label %bb.dm

bb.dk:                                            ; preds = %bb.dh
  %i.xw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

bb.dl:                                            ; preds = %bb.di
  %i.xx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xy = load ptr, ptr %64, align 8, !tbaa !58   ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.ya = icmp eq ptr %i.xy, %i.xz
  br i1 %i.ya, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %bb.dl
  %i.yb = load i64, ptr %i.xz, align 8, !tbaa !73
  %i.yc = add i64 %i.yb, 1
  call void @_ZdlPvm(ptr noundef %i.xy, i64 noundef %i.yc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326, %bb.dk
  %.pn = phi { ptr, i32 } [ %i.xw, %bb.dk ], [ %i.xx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326 ], [ %i.xx, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #27
  br label %bb.dw

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %bb.dg, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #27
  invoke void @_ZNK6cineon14IndustryHeader12FilmEdgeCodeEPcm(ptr noundef nonnull align 4 dereferenceable(1024) %i.vl, ptr noundef nonnull %i.r, i64 noundef 17)
          to label %bb.dn unwind label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %i.yd = load i8, ptr %i.r, align 16, !tbaa !73
  %.not113 = icmp eq i8 %i.yd, 0
  br i1 %.not113, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store ptr @.str.56, ptr %65, align 8, !tbaa !78
  %i.ye = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 19, ptr %i.ye, align 8, !tbaa !80
  store ptr %i.r, ptr %66, align 8, !tbaa !78
  %i.yf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #27
  %i.yg = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 %i.yf, ptr %i.yg, align 8, !tbaa !80
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %65, ptr noundef nonnull dead_on_return %66)
          to label %bb.dq unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dm
  %i.yh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #27
  br label %bb.dw

bb.dq:                                            ; preds = %bb.do, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #27
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !131 ; 2 uses
  %.off485 = add i32 %i.yj, -1
  %switch486 = icmp ult i32 %.off485, -2
  br i1 %switch486, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 2 uses
  %i.yl = zext i32 %i.yj to i64
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.yk, i64 noundef %i.yl)
          to label %bb.ds unwind label %bb.db

bb.ds:                                            ; preds = %bb.dr
  %i.ym = load ptr, ptr %i.yk, align 8, !tbaa !55
  %i.yn = invoke noundef zeroext i1 @_ZN6cineon6Reader12ReadUserDataEPh(ptr noundef nonnull align 8 dereferenceable(2080) %i.aa, ptr noundef nonnull %i.ym)
          to label %bb.dt unwind label %bb.db     ; 0 uses

bb.dt:                                            ; preds = %bb.dq, %bb.ds
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !104 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !104
  %i.ys = icmp eq ptr %i.yp, %i.yr
  br i1 %i.ys, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store ptr @.str.57, ptr %67, align 8, !tbaa !78
  %i.yt = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 15, ptr %i.yt, align 8, !tbaa !80
  %i.yu = load i32, ptr %i.yi, align 8, !tbaa !131
  %.sroa.5.0.insert.ext = zext i32 %i.yu to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, 258
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, ptr noundef nonnull dead_on_return %67, i64 %.sroa.0.0.insert.insert, ptr noundef nonnull %i.yp)
          to label %bb.dv unwind label %bb.db

bb.dv:                                            ; preds = %bb.du, %bb.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %i.bb, i64 72, i1 false)
  %i.yv = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.yx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.yv, ptr noundef nonnull align 8 dereferenceable(24) %i.yw)
          to label %.noexc330 unwind label %bb.db ; 0 uses

.noexc330:                                        ; preds = %bb.dv
  %i.yy = getelementptr inbounds nuw i8, ptr %2, i64 96
end_hunk_2
