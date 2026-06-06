inline.NumInlined: 581
inline.NumDeleted: 180
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::allocator" = type { i8 }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::shared_ptr.17" = type { %"class.std::__shared_ptr.18" }
%"class.std::__shared_ptr.18" = type { ptr, %"class.std::__shared_count" }

@.str = private unnamed_addr constant [24 x i8] c"ACES_RedMod03 (Forward)\00", align 1
@_ZN16OpenColorIO_v2_5L23ACES_RED_MOD_03_FWD_STRE = internal constant [12 x i8] c"RedMod03Fwd\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"ACES_RedMod03 (Inverse)\00", align 1
@_ZN16OpenColorIO_v2_5L23ACES_RED_MOD_03_REV_STRE = internal constant [12 x i8] c"RedMod03Rev\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"ACES_RedMod10 (Forward)\00", align 1
@_ZN16OpenColorIO_v2_5L23ACES_RED_MOD_10_FWD_STRE = internal constant [12 x i8] c"RedMod10Fwd\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ACES_RedMod10 (Inverse)\00", align 1
@_ZN16OpenColorIO_v2_5L23ACES_RED_MOD_10_REV_STRE = internal constant [12 x i8] c"RedMod10Rev\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ACES_Glow03 (Forward)\00", align 1
@_ZN16OpenColorIO_v2_5L20ACES_GLOW_03_FWD_STRE = internal constant [10 x i8] c"Glow03Fwd\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"ACES_Glow03 (Inverse)\00", align 1
@_ZN16OpenColorIO_v2_5L20ACES_GLOW_03_REV_STRE = internal constant [10 x i8] c"Glow03Rev\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"ACES_Glow10 (Forward)\00", align 1
@_ZN16OpenColorIO_v2_5L20ACES_GLOW_10_FWD_STRE = internal constant [10 x i8] c"Glow10Fwd\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ACES_Glow10 (Inverse)\00", align 1
@_ZN16OpenColorIO_v2_5L20ACES_GLOW_10_REV_STRE = internal constant [10 x i8] c"Glow10Rev\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"ACES_DarkToDim10 (Forward)\00", align 1
@_ZN16OpenColorIO_v2_5L23ACES_DARK_TO_DIM_10_STRE = internal constant [12 x i8] c"DarkToDim10\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"ACES_DarkToDim10 (Inverse)\00", align 1
@_ZN16OpenColorIO_v2_5L23ACES_DIM_TO_DARK_10_STRE = internal constant [12 x i8] c"DimToDark10\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"ACES_GamutComp13 (Forward)\00", align 1
@_ZN16OpenColorIO_v2_5L26ACES_GAMUT_COMP_13_FWD_STRE = internal constant [15 x i8] c"GamutComp13Fwd\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"ACES_GamutComp13 (Inverse)\00", align 1
@_ZN16OpenColorIO_v2_5L26ACES_GAMUT_COMP_13_REV_STRE = internal constant [15 x i8] c"GamutComp13Rev\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"ACES_OutputTransform20 (Forward)\00", align 1
@_ZN16OpenColorIO_v2_5L32ACES_OUTPUT_TRANSFORM_20_FWD_STRE = internal constant [25 x i8] c"ACESOutputTransform20Fwd\00", align 16
@.str.13 = private unnamed_addr constant [33 x i8] c"ACES_OutputTransform20 (Inverse)\00", align 1
@_ZN16OpenColorIO_v2_5L32ACES_OUTPUT_TRANSFORM_20_INV_STRE = internal constant [25 x i8] c"ACESOutputTransform20Inv\00", align 16
@_ZN16OpenColorIO_v2_5L22ACES_RGB_TO_JMh_20_STRE = internal constant [14 x i8] c"RGB_TO_JMh_20\00", align 1
@_ZN16OpenColorIO_v2_5L22ACES_JMh_TO_RGB_20_STRE = internal constant [14 x i8] c"JMh_TO_RGB_20\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"ACES_ToneScaleCompress20 (Forward)\00", align 1
@_ZN16OpenColorIO_v2_5L34ACES_TONESCALE_COMPRESS_20_FWD_STRE = internal constant [23 x i8] c"ToneScaleCompress20Fwd\00", align 16
@.str.15 = private unnamed_addr constant [35 x i8] c"ACES_ToneScaleCompress20 (Inverse)\00", align 1
@_ZN16OpenColorIO_v2_5L34ACES_TONESCALE_COMPRESS_20_INV_STRE = internal constant [23 x i8] c"ToneScaleCompress20Inv\00", align 16
@.str.16 = private unnamed_addr constant [31 x i8] c"ACES_GamutCompress20 (Forward)\00", align 1
@_ZN16OpenColorIO_v2_5L30ACES_GAMUT_COMPRESS_20_FWD_STRE = internal constant [19 x i8] c"GamutCompress20Fwd\00", align 16
@.str.17 = private unnamed_addr constant [31 x i8] c"ACES_GamutCompress20 (Inverse)\00", align 1
@_ZN16OpenColorIO_v2_5L30ACES_GAMUT_COMPRESS_20_INV_STRE = internal constant [19 x i8] c"GamutCompress20Inv\00", align 16
@.str.18 = private unnamed_addr constant [27 x i8] c"REC2100_Surround (Forward)\00", align 1
@_ZN16OpenColorIO_v2_5L25REC_2100_SURROUND_FWD_STRE = internal constant [19 x i8] c"Rec2100SurroundFwd\00", align 16
@.str.19 = private unnamed_addr constant [27 x i8] c"REC2100_Surround (Inverse)\00", align 1
@_ZN16OpenColorIO_v2_5L25REC_2100_SURROUND_REV_STRE = internal constant [19 x i8] c"Rec2100SurroundRev\00", align 16
@_ZN16OpenColorIO_v2_5L14RGB_TO_HSV_STRE = internal constant [11 x i8] c"RGB_TO_HSV\00", align 1
@_ZN16OpenColorIO_v2_5L14HSV_TO_RGB_STRE = internal constant [11 x i8] c"HSV_TO_RGB\00", align 1
@_ZN16OpenColorIO_v2_5L14XYZ_TO_xyY_STRE = internal constant [11 x i8] c"XYZ_TO_xyY\00", align 1
@_ZN16OpenColorIO_v2_5L14xyY_TO_XYZ_STRE = internal constant [11 x i8] c"xyY_TO_XYZ\00", align 1
@_ZN16OpenColorIO_v2_5L14XYZ_TO_uvY_STRE = internal constant [11 x i8] c"XYZ_TO_uvY\00", align 1
@_ZN16OpenColorIO_v2_5L14uvY_TO_XYZ_STRE = internal constant [11 x i8] c"uvY_TO_XYZ\00", align 1
@_ZN16OpenColorIO_v2_5L14XYZ_TO_LUV_STRE = internal constant [11 x i8] c"XYZ_TO_LUV\00", align 1
@_ZN16OpenColorIO_v2_5L14LUV_TO_XYZ_STRE = internal constant [11 x i8] c"LUV_TO_XYZ\00", align 1
@_ZN16OpenColorIO_v2_5L13LIN_TO_PQ_STRE = internal constant [10 x i8] c"Lin_TO_PQ\00", align 1
@_ZN16OpenColorIO_v2_5L13PQ_TO_LIN_STRE = internal constant [10 x i8] c"PQ_TO_Lin\00", align 1
@_ZN16OpenColorIO_v2_5L20LIN_TO_GAMMA_LOG_STRE = internal constant [16 x i8] c"Lin_TO_GammaLog\00", align 16
@_ZN16OpenColorIO_v2_5L20GAMMA_LOG_TO_LIN_STRE = internal constant [16 x i8] c"GammaLog_TO_Lin\00", align 16
@_ZN16OpenColorIO_v2_5L21LIN_TO_DOUBLE_LOG_STRE = internal constant [17 x i8] c"Lin_TO_DoubleLog\00", align 16
@_ZN16OpenColorIO_v2_5L21DOUBLE_LOG_TO_LIN_STRE = internal constant [17 x i8] c"DoubleLog_TO_Lin\00", align 16
@_ZN16OpenColorIO_v2_5L18RGB_TO_HSY_LIN_STRE = internal constant [15 x i8] c"RGB_TO_HSY_LIN\00", align 1
@_ZN16OpenColorIO_v2_5L18RGB_TO_HSY_LOG_STRE = internal constant [15 x i8] c"RGB_TO_HSY_LOG\00", align 1
@_ZN16OpenColorIO_v2_5L18RGB_TO_HSY_VID_STRE = internal constant [15 x i8] c"RGB_TO_HSY_VID\00", align 1
@_ZN16OpenColorIO_v2_5L18HSY_LOG_TO_RGB_STRE = internal constant [15 x i8] c"HSY_LOG_TO_RGB\00", align 1
@_ZN16OpenColorIO_v2_5L18HSY_LIN_TO_RGB_STRE = internal constant [15 x i8] c"HSY_LIN_TO_RGB\00", align 1
@_ZN16OpenColorIO_v2_5L18HSY_VID_TO_RGB_STRE = internal constant [15 x i8] c"HSY_VID_TO_RGB\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Unknown FixedFunction style: \00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@_ZN16OpenColorIO_v2_5L12SURROUND_STRE = internal constant [9 x i8] c"Surround\00", align 1
@.str.21 = private unnamed_addr constant [102 x i8] c"Unimplemented fixed function types: FIXED_FUNCTION_ACES_GAMUTMAP_02, FIXED_FUNCTION_ACES_GAMUTMAP_07.\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"Unknown FixedFunction transform style: \00", align 1
@_ZTVN16OpenColorIO_v2_519FixedFunctionOpDataE = hidden unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_519FixedFunctionOpDataE, ptr @_ZN16OpenColorIO_v2_519FixedFunctionOpDataD2Ev, ptr @_ZN16OpenColorIO_v2_519FixedFunctionOpDataD0Ev, ptr @_ZNK16OpenColorIO_v2_519FixedFunctionOpData8validateEv, ptr @_ZNK16OpenColorIO_v2_519FixedFunctionOpData7getTypeEv, ptr @_ZNK16OpenColorIO_v2_519FixedFunctionOpData6isNoOpEv, ptr @_ZNK16OpenColorIO_v2_519FixedFunctionOpData10isIdentityEv, ptr @_ZNK16OpenColorIO_v2_56OpData22getIdentityReplacementEv, ptr @_ZNK16OpenColorIO_v2_56OpData21getSimplerReplacementERSt6vectorISt10shared_ptrIS0_ESaIS3_EE, ptr @_ZNK16OpenColorIO_v2_519FixedFunctionOpData19hasChannelCrosstalkEv, ptr @_ZNK16OpenColorIO_v2_519FixedFunctionOpData6equalsERKNS_6OpDataE, ptr @_ZNK16OpenColorIO_v2_519FixedFunctionOpData10getCacheIDB5cxx11Ev] }, align 8
@.str.23 = private unnamed_addr constant [12 x i8] c"The style '\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"' must have seven parameters but \00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c" found.\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"lim_magenta\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"lim_yellow\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"thr_magenta\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"thr_yellow\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"' must have 9 parameters but \00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"peak_luminance\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"' must have 8 parameters but \00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"' must have 1 parameters but \00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"' must have one parameter but \00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"Parameter \00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c" is less than lower bound \00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c" is greater than upper bound \00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"' must have 13 parameters but \00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"Log base \00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c" is not greater than zero.\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"First break point \00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c" is larger than the second break point \00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"' must have 10 parameters but \00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"Mirror point \00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c" is not smaller than the break point \00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"Gamma power is zero.\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"' must have zero parameters but \00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZTIN16OpenColorIO_v2_519FixedFunctionOpDataE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_519FixedFunctionOpDataE, ptr @_ZTIN16OpenColorIO_v2_56OpDataE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_519FixedFunctionOpDataE = hidden constant [42 x i8] c"N16OpenColorIO_v2_519FixedFunctionOpDataE\00", align 1
@_ZTIN16OpenColorIO_v2_56OpDataE = external constant ptr
@_ZTVN16OpenColorIO_v2_56OpDataE = external unnamed_addr constant { [13 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.53 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c") is outside valid range [\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c") cannot include any fractional component\00", align 1
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.60 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [105 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@switch.table._ZN16OpenColorIO_v2_519FixedFunctionOpData12ConvertStyleENS0_5StyleE = private unnamed_addr constant [42 x i8] c"\00\00\01\01\02\02\03\03\04\04\0C\0C\05\05\06\06\07\07\08\08\09\09\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12\13\13\14\15\16\14\15\16", align 4
@switch.table._ZN16OpenColorIO_v2_519FixedFunctionOpData12setDirectionENS_18TransformDirectionE = private unnamed_addr constant [41 x i8] c"\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\01\00\00\00\01\01\01", align 4
@switch.table._ZN16OpenColorIO_v2_519FixedFunctionOpData12setDirectionENS_18TransformDirectionE.1 = private unnamed_addr constant [42 x i8] c"\01\00\03\02\05\04\07\06\09\08\0B\0A\0D\0C\0F\0E\11\10\13\12\15\14\17\16\19\18\1B\1A\1D\1C\1F\1E! #\22'()$%&", align 4

@_ZN16OpenColorIO_v2_519FixedFunctionOpDataC1ENS0_5StyleE = hidden unnamed_addr alias void (ptr, i32), ptr @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC2ENS0_5StyleE
@_ZN16OpenColorIO_v2_519FixedFunctionOpDataC1ENS0_5StyleERKSt6vectorIdSaIdEE = hidden unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC2ENS0_5StyleERKSt6vectorIdSaIdEE
@_ZN16OpenColorIO_v2_519FixedFunctionOpDataD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_519FixedFunctionOpDataD2Ev

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN16OpenColorIO_v2_519FixedFunctionOpData20ConvertStyleToStringENS0_5StyleEb(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  switch i32 %0, label %bb.aq [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 28, label %bb.n
    i32 29, label %bb.o
    i32 30, label %bb.bd
    i32 31, label %bb.p
    i32 32, label %bb.q
    i32 33, label %bb.r
    i32 34, label %bb.s
    i32 35, label %bb.t
    i32 12, label %bb.u
    i32 13, label %bb.v
    i32 14, label %bb.w
    i32 15, label %bb.x
    i32 16, label %bb.y
    i32 17, label %bb.z
    i32 18, label %bb.aa
    i32 19, label %bb.ab
    i32 20, label %bb.ac
    i32 21, label %bb.ad
    i32 22, label %bb.ae
    i32 23, label %bb.af
    i32 24, label %bb.ag
    i32 25, label %bb.ah
    i32 26, label %bb.ai
    i32 27, label %bb.aj
    i32 36, label %bb.ak
    i32 37, label %bb.al
    i32 38, label %bb.am
    i32 40, label %bb.an
    i32 39, label %bb.ao
    i32 41, label %bb.ap
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = select i1 %1, ptr @.str, ptr @_ZN16OpenColorIO_v2_5L23ACES_RED_MOD_03_FWD_STRE
  br label %bb.bd

bb.c:                                             ; preds = %bb.a
  %i.b = select i1 %1, ptr @.str.1, ptr @_ZN16OpenColorIO_v2_5L23ACES_RED_MOD_03_REV_STRE
  br label %bb.bd

bb.d:                                             ; preds = %bb.a
  %i.c = select i1 %1, ptr @.str.2, ptr @_ZN16OpenColorIO_v2_5L23ACES_RED_MOD_10_FWD_STRE
  br label %bb.bd

bb.e:                                             ; preds = %bb.a
  %i.d = select i1 %1, ptr @.str.3, ptr @_ZN16OpenColorIO_v2_5L23ACES_RED_MOD_10_REV_STRE
  br label %bb.bd

bb.f:                                             ; preds = %bb.a
  %i.e = select i1 %1, ptr @.str.4, ptr @_ZN16OpenColorIO_v2_5L20ACES_GLOW_03_FWD_STRE
  br label %bb.bd

bb.g:                                             ; preds = %bb.a
  %i.f = select i1 %1, ptr @.str.5, ptr @_ZN16OpenColorIO_v2_5L20ACES_GLOW_03_REV_STRE
  br label %bb.bd

bb.h:                                             ; preds = %bb.a
  %i.g = select i1 %1, ptr @.str.6, ptr @_ZN16OpenColorIO_v2_5L20ACES_GLOW_10_FWD_STRE
  br label %bb.bd

bb.i:                                             ; preds = %bb.a
  %i.h = select i1 %1, ptr @.str.7, ptr @_ZN16OpenColorIO_v2_5L20ACES_GLOW_10_REV_STRE
  br label %bb.bd

bb.j:                                             ; preds = %bb.a
  %i.i = select i1 %1, ptr @.str.8, ptr @_ZN16OpenColorIO_v2_5L23ACES_DARK_TO_DIM_10_STRE
  br label %bb.bd

bb.k:                                             ; preds = %bb.a
  %i.j = select i1 %1, ptr @.str.9, ptr @_ZN16OpenColorIO_v2_5L23ACES_DIM_TO_DARK_10_STRE
  br label %bb.bd

bb.l:                                             ; preds = %bb.a
  %i.k = select i1 %1, ptr @.str.10, ptr @_ZN16OpenColorIO_v2_5L26ACES_GAMUT_COMP_13_FWD_STRE
  br label %bb.bd

bb.m:                                             ; preds = %bb.a
  %i.l = select i1 %1, ptr @.str.11, ptr @_ZN16OpenColorIO_v2_5L26ACES_GAMUT_COMP_13_REV_STRE
  br label %bb.bd

bb.n:                                             ; preds = %bb.a
  %i.m = select i1 %1, ptr @.str.12, ptr @_ZN16OpenColorIO_v2_5L32ACES_OUTPUT_TRANSFORM_20_FWD_STRE
  br label %bb.bd

bb.o:                                             ; preds = %bb.a
  %i.n = select i1 %1, ptr @.str.13, ptr @_ZN16OpenColorIO_v2_5L32ACES_OUTPUT_TRANSFORM_20_INV_STRE
  br label %bb.bd

bb.p:                                             ; preds = %bb.a
  br label %bb.bd

bb.q:                                             ; preds = %bb.a
  %i.o = select i1 %1, ptr @.str.14, ptr @_ZN16OpenColorIO_v2_5L34ACES_TONESCALE_COMPRESS_20_FWD_STRE
  br label %bb.bd

bb.r:                                             ; preds = %bb.a
  %i.p = select i1 %1, ptr @.str.15, ptr @_ZN16OpenColorIO_v2_5L34ACES_TONESCALE_COMPRESS_20_INV_STRE
  br label %bb.bd

bb.s:                                             ; preds = %bb.a
  %i.q = select i1 %1, ptr @.str.16, ptr @_ZN16OpenColorIO_v2_5L30ACES_GAMUT_COMPRESS_20_FWD_STRE
  br label %bb.bd

bb.t:                                             ; preds = %bb.a
  %i.r = select i1 %1, ptr @.str.17, ptr @_ZN16OpenColorIO_v2_5L30ACES_GAMUT_COMPRESS_20_INV_STRE
  br label %bb.bd

bb.u:                                             ; preds = %bb.a
  %i.s = select i1 %1, ptr @.str.18, ptr @_ZN16OpenColorIO_v2_5L25REC_2100_SURROUND_FWD_STRE
  br label %bb.bd

bb.v:                                             ; preds = %bb.a
  %i.t = select i1 %1, ptr @.str.19, ptr @_ZN16OpenColorIO_v2_5L25REC_2100_SURROUND_REV_STRE
  br label %bb.bd

bb.w:                                             ; preds = %bb.a
  br label %bb.bd

bb.x:                                             ; preds = %bb.a
  br label %bb.bd

bb.y:                                             ; preds = %bb.a
  br label %bb.bd

bb.z:                                             ; preds = %bb.a
  br label %bb.bd

bb.aa:                                            ; preds = %bb.a
  br label %bb.bd

bb.ab:                                            ; preds = %bb.a
  br label %bb.bd

bb.ac:                                            ; preds = %bb.a
  br label %bb.bd

bb.ad:                                            ; preds = %bb.a
  br label %bb.bd

bb.ae:                                            ; preds = %bb.a
  br label %bb.bd

bb.af:                                            ; preds = %bb.a
  br label %bb.bd

bb.ag:                                            ; preds = %bb.a
  br label %bb.bd

bb.ah:                                            ; preds = %bb.a
  br label %bb.bd

bb.ai:                                            ; preds = %bb.a
  br label %bb.bd

bb.aj:                                            ; preds = %bb.a
  br label %bb.bd

bb.ak:                                            ; preds = %bb.a
  br label %bb.bd

bb.al:                                            ; preds = %bb.a
  br label %bb.bd

bb.am:                                            ; preds = %bb.a
  br label %bb.bd

bb.an:                                            ; preds = %bb.a
  br label %bb.bd

bb.ao:                                            ; preds = %bb.a
  br label %bb.bd

bb.ap:                                            ; preds = %bb.a
  br label %bb.bd

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_519FixedFunctionOpData12ConvertStyleENS_18FixedFunctionStyleENS_18TransformDirectionE:bb.a
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.af
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !13
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.ae ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.ae, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.ak

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread: ; preds = %bb.ab
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.ah
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !13
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %.0, label %bb.ai, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %.0, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.pn3245 = phi { ptr, i32 } [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ]
  call void @__cxa_free_exception(ptr %i.ab) #17
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.ai, %bb.ag
  %.pn32.pn = phi { ptr, i32 } [ %.pn3245, %bb.ai ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.ak, %bb.ag ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #17
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn32.pn, %bb.aj ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.am

bb.al:                                            ; preds = %bb.a, %bb.x, %bb.w, %bb.v, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.030 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ], [ %i.i, %bb.i ], [ %i.j, %bb.j ], [ %i.k, %bb.k ], [ %i.l, %bb.l ], [ %i.t, %bb.x ], [ %i.m, %bb.m ], [ %i.n, %bb.n ], [ %i.o, %bb.o ], [ 16, %bb.p ], [ 18, %bb.q ], [ 20, %bb.r ], [ %i.r, %bb.v ], [ %i.s, %bb.w ], [ 14, %bb.a ]
  ret i32 %.030

bb.am:                                            ; preds = %bb.ak, %bb.u
  %.pn32.pn.pn.pn = phi { ptr, i32 } [ %.pn32.pn.pn, %bb.ak ], [ %i.q, %bb.u ]
  resume { ptr, i32 } %.pn32.pn.pn.pn

bb.an:                                            ; preds = %bb.ad
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 23) i32 @_ZN16OpenColorIO_v2_519FixedFunctionOpData12ConvertStyleENS0_5StyleE(i32 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = icmp ult i32 %0, 42
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 24)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.b = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.e = load i64, ptr %i.c, align 8, !tbaa !13
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef %0)
          to label %bb.e unwind label %bb.j       ; 0 uses

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %4, align 8, !tbaa !7
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef %i.j)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #19
          to label %bb.o unwind label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.i:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !13
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.h
  %.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.l, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.n

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread: ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.k
  %i.x = load i64, ptr %i.v, align 8, !tbaa !13
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.0, label %bb.l, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.0, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn1325 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  call void @__cxa_free_exception(ptr %i.i) #17
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %bb.l, %bb.j
  %.pn13.pn = phi { ptr, i32 } [ %.pn1325, %bb.l ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.r, %bb.j ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn13.pn.pn

switch.lookup:                                    ; preds = %bb.a
  %i.z = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN16OpenColorIO_v2_519FixedFunctionOpData12ConvertStyleENS0_5StyleE, i64 %i.z
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext

bb.o:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC2ENS0_5StyleE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_519FixedFunctionOpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  invoke void @_ZNK16OpenColorIO_v2_519FixedFunctionOpData8validateEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.j) #17
  resume { ptr, i32 } %i.c
}

declare void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC2ENS0_5StyleERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_519FixedFunctionOpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !45

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #19
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #20
          to label %.noexc6 unwind label %bb.h

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !43
  %i.o = load ptr, ptr %2, align 8, !tbaa !46     ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 8
  br i1 %i.t, label %bb.c, label %bb.d, !prof !47

bb.c:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.o, i64 %i.s, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc6
  %i.u = icmp eq i64 %i.s, 8
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load double, ptr %i.o, align 8, !tbaa !48
  store double %i.v, ptr %i.k, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !44
  invoke void @_ZNK16OpenColorIO_v2_519FixedFunctionOpData8validateEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.y, %bb.i ], [ %i.y, %bb.j ]
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.ae) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataD2Ev(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_519FixedFunctionOpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.h) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataD0Ev(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_519FixedFunctionOpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN16OpenColorIO_v2_519FixedFunctionOpDataD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #18, !inline_history !50
  br label %_ZN16OpenColorIO_v2_519FixedFunctionOpDataD2Ev.exit

_ZN16OpenColorIO_v2_519FixedFunctionOpDataD2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.h) #17, !inline_history !50
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_519FixedFunctionOpData5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_512_GLOBAL__N_119check_param_no_fracERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd:bb.a
  %i.q = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.t = load i64, ptr %i.r, align 8, !tbaa !13
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.l) #17
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn17, %bb.g ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.a
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_519FixedFunctionOpData9isInverseERSt10shared_ptrIKS0_E(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = and i32 %i.b, -2
  %or.cond = icmp eq i32 %i.c, 12
  %.pre = load ptr, ptr %1, align 8, !tbaa !65    ; 4 uses
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19
  %i.f = icmp eq i32 %i.b, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = load double, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %.pre, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = load double, ptr %i.k, align 8, !tbaa !48
  %i.m = fdiv double 1.000000e+00, %i.l
  %i.n = fcmp oeq double %i.i, %i.m
  br label %bb.l

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNK16OpenColorIO_v2_519FixedFunctionOpData7inverseEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.o = load ptr, ptr %2, align 8, !tbaa !54
  %i.p = load ptr, ptr %.pre, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(200) %.pre, ptr noundef nonnull align 8 dereferenceable(200) %i.o)
          to label %_ZN16OpenColorIO_v2_5eqERKNS_19FixedFunctionOpDataES2_.exit unwind label %bb.k, !inline_history !67

_ZN16OpenColorIO_v2_5eqERKNS_19FixedFunctionOpDataES2_.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62   ; 8 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_5eqERKNS_19FixedFunctionOpDataES2_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !61
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #17, !inline_history !68
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #17, !inline_history !68
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !45

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #17
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_5eqERKNS_19FixedFunctionOpDataES2_.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.ak

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.c
  %.0 = phi i1 [ %i.n, %bb.c ], [ %i.s, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_19FixedFunctionOpDataES2_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_519FixedFunctionOpData7inverseEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19, !noalias !69
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !75
  %i.d = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #20, !noalias !75 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !59, !noalias !75
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !61, !noalias !75
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !17, !noalias !75
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC2ENS0_5StyleERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(200) %i.g, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_519FixedFunctionOpDataEJNS1_5StyleERKSt6vectorIdSaIdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !75

common.resume.i:                                  ; preds = %bb.b, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ], [ %i.m, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 216) #18, !noalias !75
  br label %common.resume.i

_ZSt11make_sharedIN16OpenColorIO_v2_519FixedFunctionOpDataEJNS1_5StyleERKSt6vectorIdSaIdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.i, align 8, !tbaa !62, !alias.scope !75
  store ptr %i.g, ptr %0, align 8, !tbaa !63, !alias.scope !75
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.l = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.k, ptr noundef nonnull align 8 dereferenceable(120) %i.j)
          to label %_ZNK16OpenColorIO_v2_519FixedFunctionOpData5cloneEv.exit unwind label %bb.b, !noalias !69 ; 0 uses

bb.b:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_519FixedFunctionOpDataEJNS1_5StyleERKSt6vectorIdSaIdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  br label %common.resume.i

_ZNK16OpenColorIO_v2_519FixedFunctionOpData5cloneEv.exit: ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_519FixedFunctionOpDataEJNS1_5StyleERKSt6vectorIdSaIdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !19   ; 2 uses
  %i.p = icmp ult i32 %i.o, 42
  br i1 %i.p, label %switch.lookup, label %_ZN16OpenColorIO_v2_519FixedFunctionOpData6invertEv.exit

switch.lookup:                                    ; preds = %_ZNK16OpenColorIO_v2_519FixedFunctionOpData5cloneEv.exit
  %i.q = zext nneg i32 %i.o to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN16OpenColorIO_v2_519FixedFunctionOpData12setDirectionENS_18TransformDirectionE.1, i64 %i.q
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.n, align 8, !tbaa !19
  br label %_ZN16OpenColorIO_v2_519FixedFunctionOpData6invertEv.exit

_ZN16OpenColorIO_v2_519FixedFunctionOpData6invertEv.exit: ; preds = %_ZNK16OpenColorIO_v2_519FixedFunctionOpData5cloneEv.exit, %switch.lookup
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_519FixedFunctionOpData6invertEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = icmp ult i32 %i.b, 42
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN16OpenColorIO_v2_519FixedFunctionOpData12setDirectionENS_18TransformDirectionE.1, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.a, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZNK16OpenColorIO_v2_519FixedFunctionOpData12getDirectionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %switch.tableidx = add i32 %i.b, -1             ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 41
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN16OpenColorIO_v2_519FixedFunctionOpData12setDirectionENS_18TransformDirectionE, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_519FixedFunctionOpData12setDirectionENS_18TransformDirectionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %switch.tableidx = add i32 %i.b, -1             ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 41
  br i1 %i.c, label %switch.lookup, label %_ZNK16OpenColorIO_v2_519FixedFunctionOpData12getDirectionEv.exit

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN16OpenColorIO_v2_519FixedFunctionOpData12setDirectionENS_18TransformDirectionE, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZNK16OpenColorIO_v2_519FixedFunctionOpData12getDirectionEv.exit

_ZNK16OpenColorIO_v2_519FixedFunctionOpData12getDirectionEv.exit: ; preds = %bb.a, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.not = icmp ne i32 %.0.i, %1
  %i.e = icmp ult i32 %i.b, 42
  %or.cond = and i1 %.not, %i.e
  br i1 %or.cond, label %switch.lookup1, label %_ZN16OpenColorIO_v2_519FixedFunctionOpData6invertEv.exit

switch.lookup1:                                   ; preds = %_ZNK16OpenColorIO_v2_519FixedFunctionOpData12getDirectionEv.exit
  %i.f = zext nneg i32 %i.b to i64
  %switch.gep2 = getelementptr inbounds nuw i8, ptr @switch.table._ZN16OpenColorIO_v2_519FixedFunctionOpData12setDirectionENS_18TransformDirectionE.1, i64 %i.f
  %switch.load3 = load i8, ptr %switch.gep2, align 1
  %switch.ext4 = zext i8 %switch.load3 to i32
  store i32 %switch.ext4, ptr %i.a, align 8, !tbaa !19
  br label %_ZN16OpenColorIO_v2_519FixedFunctionOpData6invertEv.exit

_ZN16OpenColorIO_v2_519FixedFunctionOpData6invertEv.exit: ; preds = %switch.lookup1, %_ZNK16OpenColorIO_v2_519FixedFunctionOpData12getDirectionEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_519FixedFunctionOpData6equalsERKNS_6OpDataE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56OpData6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  br i1 %i.a, label %bb.b, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 3 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !42   ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.n, %i.t
  br i1 %i.u, label %bb.d, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.d:                                             ; preds = %bb.c
  %.not9.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not9.i.i.i.i.i, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.v = load double, ptr %.0810.i.i.i.i.i, align 8, !tbaa !48
  %i.w = load double, ptr %.011.i.i.i.i.i, align 8, !tbaa !48
  %i.x = fcmp oeq double %i.v, %i.w               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp ne ptr %i.y, %i.j
  %or.cond.not = select i1 %i.x, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit, !llvm.loop !76

_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_56OpData6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_519FixedFunctionOpData10getCacheIDB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #19
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16OpenColorIO_v2_56OpData5getIDB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(168) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16OpenColorIO_v2_56OpData5getIDB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(168) %1)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.f
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.52, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %bb.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.o = load ptr, ptr %2, align 8, !tbaa !17
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %2, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 7, ptr %i.s, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.u = load i32, ptr %i.t, align 8, !tbaa !19
  %i.v = invoke noundef ptr @_ZN16OpenColorIO_v2_519FixedFunctionOpData20ConvertStyleToStringENS0_5StyleEb(i32 noundef %i.u, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #17
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.v, i64 noundef %i.w)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %.not17 = icmp eq ptr %i.z, %i.ab
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !14, !alias.scope !93
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !16, !alias.scope !93
  store i8 0, ptr %i.ac, align 8, !tbaa !13, !alias.scope !93
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !94, !noalias !93 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.af, null
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !93 ; 2 uses
  %i.ai = icmp ugt ptr %i.af, %i.ah
  %.08.i.i.i = select i1 %i.ai, ptr %i.af, ptr %i.ah ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i10 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i10, label %bb.l, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !96, !noalias !93 ; 2 uses
  %i.al = ptrtoint ptr %.08.i.i.i to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ak, i64 noundef %i.an)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !93 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ac
  br i1 %i.ar, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.as = load i64, ptr %i.ac, align 8, !tbaa !13, !alias.scope !93
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #18
  br label %.body

bb.l:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9, %_ZNSolsEd.exit
  %.sroa.012.018 = phi ptr [ %i.ay, %_ZNSolsEd.exit ], [ %i.z, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 ] ; 2 uses
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.52, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %.lr.ph
  %i.aw = load double, ptr %.sroa.012.018, align 8, !tbaa !48
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %i.aw)
          to label %_ZNSolsEd.exit unwind label %bb.m ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.018, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.ab
  br i1 %.not, label %._crit_edge, label %.lr.ph

end_hunk_2
