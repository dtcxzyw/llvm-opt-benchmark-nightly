inline.NumInlined: 710
inline.NumDeleted: 291
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
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
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::allocator" = type { i8 }
%"class.std::vector.9" = type { %"struct.std::_Vector_base.10" }
%"struct.std::_Vector_base.10" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr.14" = type { %"class.std::__shared_ptr.15" }
%"class.std::__shared_ptr.15" = type { ptr, %"class.std::__shared_count" }

@_ZN16OpenColorIO_v2_512_GLOBAL__N_121GAMMA_STYLE_BASIC_FWDE = internal constant [9 x i8] c"basicFwd\00", align 1
@_ZN16OpenColorIO_v2_512_GLOBAL__N_121GAMMA_STYLE_BASIC_REVE = internal constant [9 x i8] c"basicRev\00", align 1
@_ZN16OpenColorIO_v2_512_GLOBAL__N_128GAMMA_STYLE_BASIC_MIRROR_FWDE = internal constant [15 x i8] c"basicMirrorFwd\00", align 1
@_ZN16OpenColorIO_v2_512_GLOBAL__N_128GAMMA_STYLE_BASIC_MIRROR_REVE = internal constant [15 x i8] c"basicMirrorRev\00", align 1
@_ZN16OpenColorIO_v2_512_GLOBAL__N_131GAMMA_STYLE_BASIC_PASS_THRU_FWDE = internal constant [17 x i8] c"basicPassThruFwd\00", align 16
@_ZN16OpenColorIO_v2_512_GLOBAL__N_131GAMMA_STYLE_BASIC_PASS_THRU_REVE = internal constant [17 x i8] c"basicPassThruRev\00", align 16
@_ZN16OpenColorIO_v2_512_GLOBAL__N_124GAMMA_STYLE_MONCURVE_FWDE = internal constant [12 x i8] c"monCurveFwd\00", align 1
@_ZN16OpenColorIO_v2_512_GLOBAL__N_124GAMMA_STYLE_MONCURVE_REVE = internal constant [12 x i8] c"monCurveRev\00", align 1
@_ZN16OpenColorIO_v2_512_GLOBAL__N_131GAMMA_STYLE_MONCURVE_MIRROR_FWDE = internal constant [18 x i8] c"monCurveMirrorFwd\00", align 16
@_ZN16OpenColorIO_v2_512_GLOBAL__N_131GAMMA_STYLE_MONCURVE_MIRROR_REVE = internal constant [18 x i8] c"monCurveMirrorRev\00", align 16
@.str = private unnamed_addr constant [23 x i8] c"Unknown gamma style: '\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"'.\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str.2 = private unnamed_addr constant [21 x i8] c"Missing gamma style.\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown Gamma style: \00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"Linear negative extrapolation is not valid for basic exponent style.\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Unknown negative extrapolation style: \00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"Pass thru negative extrapolation is not valid for MonCurve exponent style.\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"Clamp negative extrapolation is not valid for MonCurve exponent style.\00", align 1
@_ZTVN16OpenColorIO_v2_511GammaOpDataE = hidden unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_511GammaOpDataE, ptr @_ZN16OpenColorIO_v2_511GammaOpDataD2Ev, ptr @_ZN16OpenColorIO_v2_511GammaOpDataD0Ev, ptr @_ZNK16OpenColorIO_v2_511GammaOpData8validateEv, ptr @_ZNK16OpenColorIO_v2_511GammaOpData7getTypeEv, ptr @_ZNK16OpenColorIO_v2_511GammaOpData6isNoOpEv, ptr @_ZNK16OpenColorIO_v2_511GammaOpData10isIdentityEv, ptr @_ZNK16OpenColorIO_v2_511GammaOpData22getIdentityReplacementEv, ptr @_ZNK16OpenColorIO_v2_56OpData21getSimplerReplacementERSt6vectorISt10shared_ptrIS0_ESaIS3_EE, ptr @_ZNK16OpenColorIO_v2_511GammaOpData19hasChannelCrosstalkEv, ptr @_ZNK16OpenColorIO_v2_511GammaOpData6equalsERKNS_6OpDataE, ptr @_ZNK16OpenColorIO_v2_511GammaOpData10getCacheIDB5cxx11Ev, ptr @_ZNK16OpenColorIO_v2_511GammaOpData20isChannelIndependentEv, ptr @_ZNK16OpenColorIO_v2_511GammaOpData18validateParametersEv] }, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"GammaOp: Wrong number of parameters\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Parameter \00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c" is less than lower bound \00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c" is greater than upper bound \00", align 1
@_ZZNK16OpenColorIO_v2_511GammaOpData18validateParametersEvE9lowBounds = internal constant [1 x double] [double 1.000000e-02], align 8
@_ZZNK16OpenColorIO_v2_511GammaOpData18validateParametersEvE10highBounds = internal constant [1 x double] [double 1.000000e+02], align 8
@_ZZNK16OpenColorIO_v2_511GammaOpData18validateParametersEvE9lowBounds_0 = internal constant [2 x double] [double 1.000000e+00, double 0.000000e+00], align 16
@_ZZNK16OpenColorIO_v2_511GammaOpData18validateParametersEvE10highBounds_0 = internal constant [2 x double] [double 1.000000e+01, double 9.000000e-01], align 16
@.str.12 = private unnamed_addr constant [48 x i8] c"GammaOp can only be combined with some GammaOps\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"r:\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"g:\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"b:\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"a:\00", align 1
@_ZTIN16OpenColorIO_v2_511GammaOpDataE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_511GammaOpDataE, ptr @_ZTIN16OpenColorIO_v2_56OpDataE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_511GammaOpDataE = hidden constant [34 x i8] c"N16OpenColorIO_v2_511GammaOpDataE\00", align 1
@_ZTIN16OpenColorIO_v2_56OpDataE = external constant ptr
@_ZTVN16OpenColorIO_v2_56OpDataE = external unnamed_addr constant { [13 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.18 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [97 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [97 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [98 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@switch.table._ZN16OpenColorIO_v2_511GammaOpData20ConvertStyleToStringENS0_5StyleE = private unnamed_addr constant [10 x ptr] [ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_121GAMMA_STYLE_BASIC_FWDE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_121GAMMA_STYLE_BASIC_REVE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_128GAMMA_STYLE_BASIC_MIRROR_FWDE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_128GAMMA_STYLE_BASIC_MIRROR_REVE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_131GAMMA_STYLE_BASIC_PASS_THRU_FWDE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_131GAMMA_STYLE_BASIC_PASS_THRU_REVE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_124GAMMA_STYLE_MONCURVE_FWDE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_124GAMMA_STYLE_MONCURVE_REVE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_131GAMMA_STYLE_MONCURVE_MIRROR_FWDE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_131GAMMA_STYLE_MONCURVE_MIRROR_REVE], align 8
@switch.table._ZN16OpenColorIO_v2_511GammaOpData12ConvertStyleENS0_5StyleE = private unnamed_addr constant [10 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 1, i32 1], align 4
@switch.table._ZN16OpenColorIO_v2_511GammaOpData12setDirectionENS_18TransformDirectionE = private unnamed_addr constant [9 x i32] [i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1], align 4
@switch.table._ZN16OpenColorIO_v2_511GammaOpData12setDirectionENS_18TransformDirectionE.4 = private unnamed_addr constant [10 x i32] [i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8], align 4

@_ZN16OpenColorIO_v2_511GammaOpDataC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_511GammaOpDataC2Ev
@_ZN16OpenColorIO_v2_511GammaOpDataC1ERKNS0_5StyleERKSt6vectorIdSaIdEES8_S8_S8_ = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN16OpenColorIO_v2_511GammaOpDataC2ERKNS0_5StyleERKSt6vectorIdSaIdEES8_S8_S8_
@_ZN16OpenColorIO_v2_511GammaOpDataD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_511GammaOpDataD2Ev

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 10) i32 @_ZN16OpenColorIO_v2_511GammaOpData20ConvertStringToStyleEPKc(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !7
  %.not23 = icmp eq i8 %i.a, 0
  br i1 %.not23, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_121GAMMA_STYLE_BASIC_FWDE)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_121GAMMA_STYLE_BASIC_REVE)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_128GAMMA_STYLE_BASIC_MIRROR_FWDE)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_128GAMMA_STYLE_BASIC_MIRROR_REVE)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_131GAMMA_STYLE_BASIC_PASS_THRU_FWDE)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_131GAMMA_STYLE_BASIC_PASS_THRU_REVE)
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_124GAMMA_STYLE_MONCURVE_FWDE)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_124GAMMA_STYLE_MONCURVE_REVE)
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_131GAMMA_STYLE_MONCURVE_MIRROR_FWDE)
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_131GAMMA_STYLE_MONCURVE_MIRROR_REVE)
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.m
  %i.w = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0, i64 noundef %i.w)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.z = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.aa = load ptr, ptr %2, align 8, !tbaa !8
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.aa)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
          to label %bb.y unwind label %bb.q

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i1 [ false, %bb.o ], [ true, %bb.n ]  ; 2 uses
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !8     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !7
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %.0, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %.0, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn33 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.z) #17
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn33, %bb.r ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %bb.p ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.x

bb.t:                                             ; preds = %bb.b, %bb.a
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.2)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #17
  br label %bb.x

bb.w:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.021 = phi i32 [ 8, %bb.k ], [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 9, %bb.l ]
  ret i32 %.021

bb.x:                                             ; preds = %bb.v, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.ak, %bb.v ]
  resume { ptr, i32 } %.pn.pn.pn

bb.y:                                             ; preds = %bb.o
  unreachable
}

declare noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN16OpenColorIO_v2_511GammaOpData20ConvertStyleToStringENS0_5StyleE(i32 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_511GammaOpData20ConvertStyleToStringENS0_5StyleE:bb.a
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load

bb.o:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !14
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.d, ptr %i.a, align 8, !tbaa !15
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !8
  %i.g = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.g, ptr %i.b, align 8, !tbaa !7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !7
  store i8 %i.i, ptr %i.h, align 1, !tbaa !7
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = load ptr, ptr %0, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN16OpenColorIO_v2_511GammaOpData12ConvertStyleENS0_5StyleE(i32 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = icmp ult i32 %0, 10
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 24)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.b = load ptr, ptr %2, align 8, !tbaa !8      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.e = load i64, ptr %i.c, align 8, !tbaa !7
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
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
  %i.j = load ptr, ptr %4, align 8, !tbaa !8
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef %i.j)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
          to label %bb.o unwind label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.i:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !8      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !7
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
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
  %i.u = load ptr, ptr %4, align 8, !tbaa !8      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.k
  %i.x = load i64, ptr %i.v, align 8, !tbaa !7
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #19
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
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_511GammaOpData12ConvertStyleENS0_5StyleE, i64 %i.z
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load

bb.o:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 6) i32 @_ZN16OpenColorIO_v2_511GammaOpData17ConvertStyleBasicENS_13NegativeStyleENS_18TransformDirectionE(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = icmp ne i32 %1, 0                        ; 3 uses
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = zext i1 %i.a to i32
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.c = select i1 %i.a, i32 3, i32 2
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.d = select i1 %i.a, i32 5, i32 4
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #17
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 24)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.g = load ptr, ptr %3, align 8, !tbaa !8      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.j = load i64, ptr %i.h, align 8, !tbaa !7
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef %0)
          to label %bb.k unwind label %bb.p       ; 0 uses

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.thread

bb.l:                                             ; preds = %bb.k
  %i.o = load ptr, ptr %5, align 8, !tbaa !8
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef %i.o)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
          to label %bb.w unwind label %bb.q

bb.n:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.o:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !8      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.o
  %i.u = load i64, ptr %i.s, align 8, !tbaa !7
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.n
  %.pn = phi { ptr, i32 } [ %i.p, %bb.n ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.q, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.t

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.thread: ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.r

bb.q:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i1 [ false, %bb.m ], [ true, %bb.l ]  ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !8      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.q
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !7
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %.0, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %.0, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn1831 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ]
  call void @__cxa_free_exception(ptr %i.n) #17
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.r, %bb.p
  %.pn18.pn = phi { ptr, i32 } [ %.pn1831, %bb.r ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.w, %bb.p ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn, %bb.s ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.v

bb.u:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.016 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ]
  ret i32 %.016

bb.v:                                             ; preds = %bb.t, %bb.g
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn, %bb.t ], [ %i.f, %bb.g ]
  resume { ptr, i32 } %.pn18.pn.pn.pn

bb.w:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 6, 10) i32 @_ZN16OpenColorIO_v2_511GammaOpData20ConvertStyleMonCurveENS_13NegativeStyleENS_18TransformDirectionE(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  switch i32 %0, label %bb.j [
    i32 3, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = select i1 %i.a, i32 6, i32 7
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.c = select i1 %i.a, i32 8, i32 9
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_511GammaOpDataC2ERKNS0_5StyleERKSt6vectorIdSaIdEES8_S8_S8_:bb.a
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit33

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i21, %.noexc.i.i22
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i27, %.noexc.i.i28
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %i.au, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = load ptr, ptr %i.bg, align 8, !tbaa !49
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.z, %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.co, %bb.x ], [ %i.cp, %bb.y ], [ %i.cp, %bb.z ] ; 2 uses
  %i.cv = load ptr, ptr %i.y, align 8, !tbaa !47  ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIdSaIdEED2Ev.exit33, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.cw = load ptr, ptr %i.ak, align 8, !tbaa !49
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cz) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit33

_ZNSt6vectorIdSaIdEED2Ev.exit33:                  ; preds = %bb.aa, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.w ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %.pn, %bb.aa ] ; 2 uses
  %i.da = load ptr, ptr %i.c, align 8, !tbaa !47  ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIdSaIdEED2Ev.exit35, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit33
  %i.db = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.de) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit35

_ZNSt6vectorIdSaIdEED2Ev.exit35:                  ; preds = %bb.ab, %_ZNSt6vectorIdSaIdEED2Ev.exit33, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.v ], [ %.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit33 ], [ %.pn.pn, %bb.ab ]
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.df) #17
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_511GammaOpDataD2Ev(ptr noundef nonnull align 8 dereferenceable(272) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_511GammaOpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIdSaIdEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit2

_ZNSt6vectorIdSaIdEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIdSaIdEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit4

_ZNSt6vectorIdSaIdEED2Ev.exit4:                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIdSaIdEED2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit6

_ZNSt6vectorIdSaIdEED2Ev.exit6:                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit4, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.ac) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_511GammaOpDataD0Ev(ptr noundef nonnull align 8 dereferenceable(272) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_511GammaOpDataD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_511GammaOpData5cloneEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  store ptr null, ptr %0, align 8, !tbaa !66, !alias.scope !63
  %i.a = tail call noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #20, !noalias !63 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !71, !noalias !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !73, !noalias !63
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !17, !noalias !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511GammaOpDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull align 8 dereferenceable(272) %1)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRKS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !63

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 288) #19, !noalias !63
  resume { ptr, i32 } %i.e

_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRKS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !74, !alias.scope !63
  store ptr %i.d, ptr %0, align 8, !tbaa !75, !alias.scope !63
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_511GammaOpData7inverseEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  store ptr null, ptr %0, align 8, !tbaa !66, !alias.scope !82
  %i.a = tail call noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #20, !noalias !82 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !71, !noalias !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !73, !noalias !82
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !17, !noalias !82
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511GammaOpDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull align 8 dereferenceable(272) %1)
          to label %_ZNK16OpenColorIO_v2_511GammaOpData5cloneEv.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !82

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 288) #19, !noalias !82
  resume { ptr, i32 } %i.e

_ZNK16OpenColorIO_v2_511GammaOpData5cloneEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !74, !alias.scope !82
  store ptr %i.d, ptr %0, align 8, !tbaa !75, !alias.scope !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = icmp ult i32 %i.h, 10
  br i1 %i.i, label %switch.lookup, label %_ZN16OpenColorIO_v2_511GammaOpData6invertEv.exit

switch.lookup:                                    ; preds = %_ZNK16OpenColorIO_v2_511GammaOpData5cloneEv.exit
  %i.j = zext nneg i32 %i.h to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_511GammaOpData12setDirectionENS_18TransformDirectionE.4, i64 %i.j
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN16OpenColorIO_v2_511GammaOpData6invertEv.exit

_ZN16OpenColorIO_v2_511GammaOpData6invertEv.exit: ; preds = %switch.lookup, %_ZNK16OpenColorIO_v2_511GammaOpData5cloneEv.exit
  %.0.i = phi i32 [ 0, %_ZNK16OpenColorIO_v2_511GammaOpData5cloneEv.exit ], [ %switch.load, %switch.lookup ]
  store i32 %.0.i, ptr %i.g, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_511GammaOpData6invertEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(272) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = icmp ult i32 %i.b, 10
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_511GammaOpData12setDirectionENS_18TransformDirectionE.4, i64 %i.d
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %switch.load, %switch.lookup ]
  store i32 %.0, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !83
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !83
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !60

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_511GammaOpData9isInverseERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 10 uses
  %i.e = icmp eq i32 %i.b, 0
  %i.f = icmp eq i32 %i.d, 1
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.b, 1
  %i.h = icmp eq i32 %i.d, 0
  %or.cond3 = and i1 %i.g, %i.h
  br i1 %or.cond3, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.b, 6
  %i.j = icmp eq i32 %i.d, 7
  %or.cond5 = and i1 %i.i, %i.j
  br i1 %or.cond5, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.b, 7
  %i.l = icmp eq i32 %i.d, 6
  %or.cond7 = and i1 %i.k, %i.l
  br i1 %or.cond7, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %i.b, 8
  %i.n = icmp eq i32 %i.d, 9
  %or.cond9 = and i1 %i.m, %i.n
  br i1 %or.cond9, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i32 %i.b, 9
  %i.p = icmp eq i32 %i.d, 8
  %or.cond11 = and i1 %i.o, %i.p
  br i1 %or.cond11, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp eq i32 %i.b, 2
  %i.r = icmp eq i32 %i.d, 3
  %or.cond13 = and i1 %i.q, %i.r
  br i1 %or.cond13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp eq i32 %i.b, 3
  %i.t = icmp eq i32 %i.d, 2
  %or.cond15 = and i1 %i.s, %i.t
  br i1 %or.cond15, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = icmp eq i32 %i.b, 4
  %i.v = icmp eq i32 %i.d, 5
  %or.cond17 = and i1 %i.u, %i.v
  br i1 %or.cond17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = icmp eq i32 %i.b, 5
  %i.x = icmp eq i32 %i.d, 4
  %or.cond19 = and i1 %i.w, %i.x
  br i1 %or.cond19, label %bb.k, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 3 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !47  ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !47  ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp eq i64 %i.af, %i.al
  br i1 %i.am, label %bb.l, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.l:                                             ; preds = %bb.k
  %.not9.i.i.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not9.i.i.i.i.i, label %.loopexit67, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %bb.m
  %.011.i.i.i.i.i = phi ptr [ %i.ar, %bb.m ], [ %i.ai, %bb.l ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.aq, %bb.m ], [ %i.ac, %bb.l ] ; 2 uses
  %i.an = load double, ptr %.0810.i.i.i.i.i, align 8, !tbaa !45
  %i.ao = load double, ptr %.011.i.i.i.i.i, align 8, !tbaa !45
  %i.ap = fcmp oeq double %i.an, %i.ao
  br i1 %i.ap, label %bb.m, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.ab
  br i1 %.not.i.i.i.i.i, label %.loopexit67, label %.lr.ph.i.i.i.i.i, !llvm.loop !84

.loopexit67:                                      ; preds = %bb.m, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !48 ; 3 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !47 ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !47 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp eq i64 %i.az, %i.bf
  br i1 %i.bg, label %bb.n, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.n:                                             ; preds = %.loopexit67
  %.not9.i.i.i.i.i45 = icmp eq ptr %i.aw, %i.av
  br i1 %.not9.i.i.i.i.i45, label %.loopexit65, label %.lr.ph.i.i.i.i.i46

.lr.ph.i.i.i.i.i46:                               ; preds = %bb.n, %bb.o
  %.011.i.i.i.i.i47 = phi ptr [ %i.bl, %bb.o ], [ %i.bc, %bb.n ] ; 2 uses
  %.0810.i.i.i.i.i48 = phi ptr [ %i.bk, %bb.o ], [ %i.aw, %bb.n ] ; 2 uses
  %i.bh = load double, ptr %.0810.i.i.i.i.i48, align 8, !tbaa !45
  %i.bi = load double, ptr %.011.i.i.i.i.i47, align 8, !tbaa !45
  %i.bj = fcmp oeq double %i.bh, %i.bi
  br i1 %i.bj, label %bb.o, label %_ZSteqIdSaIdEEbRKSt6vectorIT_T0_ES6_.exit

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i46
  %i.bk = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i48, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i47, i64 8
  %.not.i.i.i.i.i49 = icmp eq ptr %i.bk, %i.av
  br i1 %.not.i.i.i.i.i49, label %.loopexit65, label %.lr.ph.i.i.i.i.i46, !llvm.loop !84

.loopexit65:                                      ; preds = %bb.o, %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 224
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_511GammaOpData10getCacheIDB5cxx11Ev:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.u
  %.pn11 = phi { ptr, i32 } [ %i.dm, %bb.u ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %i.dn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.body

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.x:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit36, %bb.m
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %6, align 8, !tbaa !8     ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.x
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !7
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.w
  %.pn13 = phi { ptr, i32 } [ %i.dt, %bb.w ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.du, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.body

.body:                                            ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn15 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.pn9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.n, %bb.h ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cd, %bb.o ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.g
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %.body ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ea = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #17 ; 0 uses
  resume { ptr, i32 } %.pn15.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16OpenColorIO_v2_56OpData5getIDB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetParametersStringB5cxx11ERKSt6vectorIdSaIdEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !17
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 7, ptr %i.e, align 8, !tbaa !113
  %i.f = load ptr, ptr %1, align 8, !tbaa !47
  %i.g = load double, ptr %i.f, align 8, !tbaa !45
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %i.g)
          to label %_ZNSolsEd.exit.preheader unwind label %bb.e ; 0 uses

_ZNSolsEd.exit.preheader:                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = load ptr, ptr %1, align 8, !tbaa !47
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ugt i64 %i.n, 8
  br i1 %i.o, label %.lr.ph, label %_ZNSolsEd.exit._crit_edge

_ZNSolsEd.exit._crit_edge:                        ; preds = %_ZNSolsEd.exit10, %_ZNSolsEd.exit.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !14, !alias.scope !126
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !16, !alias.scope !126
  store i8 0, ptr %i.p, align 8, !tbaa !7, !alias.scope !126
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108, !noalias !126 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !noalias !126 ; 2 uses
  %i.v = icmp ugt ptr %i.s, %i.u
  %.08.i.i.i = select i1 %i.v, ptr %i.s, ptr %i.u ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !112, !noalias !126 ; 2 uses
  %i.y = ptrtoint ptr %.08.i.i.i to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !8, !alias.scope !126 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.p
  br i1 %i.ae, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.af = load i64, ptr %i.p, align 8, !tbaa !7, !alias.scope !126
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #19
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEd.exit._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZNSolsEd.exit.preheader, %_ZNSolsEd.exit10
  %.011 = phi i64 [ %i.ao, %_ZNSolsEd.exit10 ], [ 1, %_ZNSolsEd.exit.preheader ] ; 2 uses
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.18, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.lr.ph
  %i.ak = load ptr, ptr %1, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.011
  %i.am = load double, ptr %i.al, align 8, !tbaa !45
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %i.am)
          to label %_ZNSolsEd.exit10 unwind label %bb.f ; 0 uses

_ZNSolsEd.exit10:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ao = add nuw i64 %.011, 1                    ; 2 uses
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.aq = load ptr, ptr %1, align 8, !tbaa !47
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %i.av = icmp ult i64 %i.ao, %i.au
  br i1 %i.av, label %.lr.ph, label %_ZNSolsEd.exit._crit_edge, !llvm.loop !127

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.lr.ph
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ax = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ax, ptr %2, align 8, !tbaa !17
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bc, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !7
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #19
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bc, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bj) #17
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bk) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

.body:                                            ; preds = %bb.c, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.f ], [ %i.ai, %bb.e ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ac, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZNK16OpenColorIO_v2_511GammaOpData12getDirectionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %switch.tableidx = add i32 %i.b, -1             ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 9
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_511GammaOpData12setDirectionENS_18TransformDirectionE, i64 %i.d
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_511GammaOpData12setDirectionENS_18TransformDirectionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(272) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %switch.tableidx = add i32 %i.b, -1             ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 9
  br i1 %i.c, label %switch.lookup, label %_ZNK16OpenColorIO_v2_511GammaOpData12getDirectionEv.exit

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_511GammaOpData12setDirectionENS_18TransformDirectionE, i64 %i.d
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZNK16OpenColorIO_v2_511GammaOpData12getDirectionEv.exit

_ZNK16OpenColorIO_v2_511GammaOpData12getDirectionEv.exit: ; preds = %bb.a, %switch.lookup
  %.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  %.not = icmp eq i32 %.0.i, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK16OpenColorIO_v2_511GammaOpData12getDirectionEv.exit
  %i.e = icmp ult i32 %i.b, 10
  br i1 %i.e, label %switch.lookup2, label %_ZN16OpenColorIO_v2_511GammaOpData6invertEv.exit

switch.lookup2:                                   ; preds = %bb.b
  %i.f = zext nneg i32 %i.b to i64
  %switch.gep3 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_511GammaOpData12setDirectionENS_18TransformDirectionE.4, i64 %i.f
  %switch.load4 = load i32, ptr %switch.gep3, align 4
  br label %_ZN16OpenColorIO_v2_511GammaOpData6invertEv.exit

_ZN16OpenColorIO_v2_511GammaOpData6invertEv.exit: ; preds = %switch.lookup2, %bb.b
  %.0.i1 = phi i32 [ 0, %bb.b ], [ %switch.load4, %switch.lookup2 ]
  store i32 %.0.i1, ptr %i.a, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_511GammaOpData6invertEv.exit, %_ZNK16OpenColorIO_v2_511GammaOpData12getDirectionEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11GammaOpDataES2_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK16OpenColorIO_v2_511GammaOpData7getTypeEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 align 2 {
bb.a:
  ret i32 4
}

declare void @_ZNK16OpenColorIO_v2_56OpData21getSimplerReplacementERSt6vectorISt10shared_ptrIS0_ESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_511GammaOpData19hasChannelCrosstalkEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_511GammaOpData20isChannelIndependentEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !inline_history !128
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(272) %i.a) #17, !inline_history !129
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #17
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_511GammaOpDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_56OpDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_511GammaOpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %.noexc14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.k, 9223372036854775800
  br i1 %i.l, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !60

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

end_hunk_3
