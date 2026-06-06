inline.NumInlined: 516
inline.NumDeleted: 241
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::allocator" = type { i8 }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::shared_ptr.9" = type { %"class.std::__shared_ptr.10" }
%"class.std::__shared_ptr.10" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.15" = type { %"class.std::__shared_ptr.16" }
%"class.std::__shared_ptr.16" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.12" = type { %"class.std::__shared_ptr.13" }
%"class.std::__shared_ptr.13" = type { ptr, %"class.std::__shared_count" }
%"struct.OpenColorIO_v2_5::CDLOpData::ChannelParams" = type { [3 x double] }

@_ZN16OpenColorIO_v2_5L13V1_2_FWD_NAMEE = internal constant [9 x i8] c"v1.2_Fwd\00", align 1
@_ZN16OpenColorIO_v2_5L17V1_2_FWD_CLF_NAMEE = internal constant [4 x i8] c"Fwd\00", align 1
@_ZN16OpenColorIO_v2_5L13V1_2_REV_NAMEE = internal constant [9 x i8] c"v1.2_Rev\00", align 1
@_ZN16OpenColorIO_v2_5L17V1_2_REV_CLF_NAMEE = internal constant [4 x i8] c"Rev\00", align 1
@_ZN16OpenColorIO_v2_5L17NO_CLAMP_FWD_NAMEE = internal constant [11 x i8] c"noClampFwd\00", align 1
@_ZN16OpenColorIO_v2_5L21NO_CLAMP_FWD_CLF_NAMEE = internal constant [11 x i8] c"FwdNoClamp\00", align 1
@_ZN16OpenColorIO_v2_5L17NO_CLAMP_REV_NAMEE = internal constant [11 x i8] c"noClampRev\00", align 1
@_ZN16OpenColorIO_v2_5L21NO_CLAMP_REV_CLF_NAMEE = internal constant [11 x i8] c"RevNoClamp\00", align 1
@.str = private unnamed_addr constant [23 x i8] c"Unknown style for CDL.\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str.2 = private unnamed_addr constant [30 x i8] c"Unknown CDL transform style: \00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unknown CDL style: \00", align 1
@_ZTVN16OpenColorIO_v2_59CDLOpDataE = hidden unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_59CDLOpDataE, ptr @_ZN16OpenColorIO_v2_59CDLOpDataD2Ev, ptr @_ZN16OpenColorIO_v2_59CDLOpDataD0Ev, ptr @_ZNK16OpenColorIO_v2_59CDLOpData8validateEv, ptr @_ZNK16OpenColorIO_v2_59CDLOpData7getTypeEv, ptr @_ZNK16OpenColorIO_v2_59CDLOpData6isNoOpEv, ptr @_ZNK16OpenColorIO_v2_59CDLOpData10isIdentityEv, ptr @_ZNK16OpenColorIO_v2_59CDLOpData22getIdentityReplacementEv, ptr @_ZNK16OpenColorIO_v2_59CDLOpData21getSimplerReplacementERSt6vectorISt10shared_ptrINS_6OpDataEESaIS4_EE, ptr @_ZNK16OpenColorIO_v2_59CDLOpData19hasChannelCrosstalkEv, ptr @_ZNK16OpenColorIO_v2_59CDLOpData6equalsERKNS_6OpDataE, ptr @_ZNK16OpenColorIO_v2_59CDLOpData10getCacheIDB5cxx11Ev] }, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"CDL: Invalid '\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"' \00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c" should be greater than \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"CDLOpData: Invalid '\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"slope\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@_ZZNK16OpenColorIO_v2_59CDLOpData21getSimplerReplacementERSt6vectorISt10shared_ptrINS_6OpDataEESaIS4_EEE9lumaCoef3 = internal constant [3 x double] [double 2.126000e-01, double 7.152000e-01, double 7.220000e-02], align 16
@.str.12 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZTIN16OpenColorIO_v2_59CDLOpDataE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_59CDLOpDataE, ptr @_ZTIN16OpenColorIO_v2_56OpDataE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_59CDLOpDataE = hidden constant [31 x i8] c"N16OpenColorIO_v2_59CDLOpDataE\00", align 1
@_ZTIN16OpenColorIO_v2_56OpDataE = external constant ptr
@_ZTVN16OpenColorIO_v2_56OpDataE = external unnamed_addr constant { [13 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [94 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [97 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511RangeOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [98 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer
@switch.table._ZN16OpenColorIO_v2_59CDLOpData12ConvertStyleENS0_5StyleE = private unnamed_addr constant [4 x i8] c"\00\00\01\01", align 4
@switch.table._ZNK16OpenColorIO_v2_59CDLOpData7inverseEv = private unnamed_addr constant [4 x i8] c"\01\00\03\02", align 4
@switch.table._ZNK16OpenColorIO_v2_59CDLOpData10getCacheIDB5cxx11Ev = private unnamed_addr constant [4 x ptr] [ptr @_ZN16OpenColorIO_v2_5L17V1_2_FWD_CLF_NAMEE, ptr @_ZN16OpenColorIO_v2_5L17V1_2_REV_CLF_NAMEE, ptr @_ZN16OpenColorIO_v2_5L21NO_CLAMP_FWD_CLF_NAMEE, ptr @_ZN16OpenColorIO_v2_5L21NO_CLAMP_REV_CLF_NAMEE], align 8

@_ZN16OpenColorIO_v2_59CDLOpDataC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_59CDLOpDataC2Ev
@_ZN16OpenColorIO_v2_59CDLOpDataC1ERKNS0_5StyleERKNS0_13ChannelParamsES6_S6_d = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, double), ptr @_ZN16OpenColorIO_v2_59CDLOpDataC2ERKNS0_5StyleERKNS0_13ChannelParamsES6_S6_d
@_ZN16OpenColorIO_v2_59CDLOpDataD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_59CDLOpDataD2Ev

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN16OpenColorIO_v2_59CDLOpData8GetStyleEPKc(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !7
  %.not13 = icmp eq i8 %i.a, 0
  br i1 %.not13, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_5L13V1_2_FWD_NAMEE)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_5L17V1_2_FWD_CLF_NAMEE)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_5L13V1_2_REV_NAMEE)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_5L17V1_2_REV_CLF_NAMEE)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_5L17NO_CLAMP_FWD_NAMEE)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_5L21NO_CLAMP_FWD_CLF_NAMEE)
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_5L17NO_CLAMP_REV_NAMEE)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_5L21NO_CLAMP_REV_CLF_NAMEE)
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b, %bb.a
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.r) #19
  resume { ptr, i32 } %i.s

bb.n:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ 3, %bb.i ], [ 0, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 2, %bb.g ], [ 2, %bb.h ], [ 3, %bb.j ]
  ret i32 %.0
}

declare noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN16OpenColorIO_v2_59CDLOpData12GetStyleNameENS0_5StyleE(i32 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #19
  resume { ptr, i32 } %i.c

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_59CDLOpData10getCacheIDB5cxx11Ev, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN16OpenColorIO_v2_59CDLOpData12ConvertStyleENS_8CDLStyleENS_18TransformDirectionE(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = icmp ne i32 %1, 0                        ; 2 uses
  switch i32 %0, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = zext i1 %i.a to i32
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.c = select i1 %i.a, i32 3, i32 2
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 24)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.d = load ptr, ptr %3, align 8, !tbaa !8      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !7
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %0)
          to label %bb.g unwind label %bb.l       ; 0 uses

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread

bb.h:                                             ; preds = %bb.g
  %i.l = load ptr, ptr %5, align 8, !tbaa !8
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %i.l)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
          to label %bb.r unwind label %bb.m

bb.j:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.k:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !8      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_59CDLOpData12ConvertStyleENS_8CDLStyleENS_18TransformDirectionE:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !14
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN16OpenColorIO_v2_59CDLOpData12ConvertStyleENS0_5StyleE(i32 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
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
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef %0)
          to label %bb.e unwind label %bb.j       ; 0 uses

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %4, align 8, !tbaa !8
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef %i.j)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
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
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.h
  %.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.l, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.n

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread: ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
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
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.0, label %bb.l, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.0, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn1325 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  call void @__cxa_free_exception(ptr %i.i) #19
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %bb.l, %bb.j
  %.pn13.pn = phi { ptr, i32 } [ %.pn1325, %bb.l ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.r, %bb.j ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %.pn13.pn.pn

switch.lookup:                                    ; preds = %bb.a
  %i.z = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN16OpenColorIO_v2_59CDLOpData12ConvertStyleENS0_5StyleE, i64 %i.z
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext

bb.o:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_59CDLOpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_59CDLOpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 2, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> splat (double 1.000000e+00), ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x double> splat (double 1.000000e+00), ptr %i.f, align 8, !tbaa !39
  ret void
}

declare void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_59CDLOpDataC2ERKNS0_5StyleERKNS0_13ChannelParamsES6_S6_d(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, double noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_59CDLOpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %1, align 4, !tbaa !40
  store i32 %i.b, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  store double %5, ptr %i.f, align 8, !tbaa !42
  %i.g = load double, ptr %i.c, align 8, !tbaa !39
  invoke void @_ZN16OpenColorIO_v2_520validateGreaterEqualEPKcdd(ptr noundef nonnull @.str.9, double noundef %i.g, double noundef 0.000000e+00)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load double, ptr %i.h, align 8, !tbaa !39
  invoke void @_ZN16OpenColorIO_v2_520validateGreaterEqualEPKcdd(ptr noundef nonnull @.str.9, double noundef %i.i, double noundef 0.000000e+00)
          to label %.noexc7 unwind label %bb.b

.noexc7:                                          ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = load double, ptr %i.j, align 8, !tbaa !39
  invoke void @_ZN16OpenColorIO_v2_520validateGreaterEqualEPKcdd(ptr noundef nonnull @.str.9, double noundef %i.k, double noundef 0.000000e+00)
          to label %.noexc8 unwind label %bb.b

.noexc8:                                          ; preds = %.noexc7
  %i.l = load double, ptr %i.e, align 8, !tbaa !39
  invoke void @_ZN16OpenColorIO_v2_519validateGreaterThanEPKcdd(ptr noundef nonnull @.str.10, double noundef %i.l, double noundef 0.000000e+00)
          to label %.noexc9 unwind label %bb.b

.noexc9:                                          ; preds = %.noexc8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.n = load double, ptr %i.m, align 8, !tbaa !39
  invoke void @_ZN16OpenColorIO_v2_519validateGreaterThanEPKcdd(ptr noundef nonnull @.str.10, double noundef %i.n, double noundef 0.000000e+00)
          to label %.noexc10 unwind label %bb.b

.noexc10:                                         ; preds = %.noexc9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.p = load double, ptr %i.o, align 8, !tbaa !39
  invoke void @_ZN16OpenColorIO_v2_519validateGreaterThanEPKcdd(ptr noundef nonnull @.str.10, double noundef %i.p, double noundef 0.000000e+00)
          to label %.noexc11 unwind label %bb.b

.noexc11:                                         ; preds = %.noexc10
  invoke void @_ZN16OpenColorIO_v2_520validateGreaterEqualEPKcdd(ptr noundef nonnull @.str.11, double noundef %5, double noundef 0.000000e+00)
          to label %_ZNK16OpenColorIO_v2_59CDLOpData8validateEv.exit unwind label %bb.b

_ZNK16OpenColorIO_v2_59CDLOpData8validateEv.exit: ; preds = %.noexc11
  ret void

bb.b:                                             ; preds = %.noexc11, %.noexc10, %.noexc9, %.noexc8, %.noexc7, %.noexc, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.r) #19
  resume { ptr, i32 } %i.q
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_59CDLOpDataD2Ev(ptr noundef nonnull align 8 dereferenceable(256) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.a) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_59CDLOpDataD0Ev(ptr noundef nonnull align 8 dereferenceable(256) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 256) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59CDLOpData5cloneEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  store ptr null, ptr %0, align 8, !tbaa !46, !alias.scope !43
  %i.a = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #22, !noalias !43 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !51, !noalias !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !53, !noalias !43
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !17, !noalias !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.d, ptr noundef nonnull align 8 dereferenceable(256) %1)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_59CDLOpDataEJRKS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !43

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 272) #21, !noalias !43
  resume { ptr, i32 } %i.e

_ZSt11make_sharedIN16OpenColorIO_v2_59CDLOpDataEJRKS1_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_59CDLOpDataE, i64 16), ptr %i.d, align 8, !tbaa !17, !noalias !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false), !noalias !43
  store ptr %i.a, ptr %i.f, align 8, !tbaa !54, !alias.scope !43
  store ptr %i.d, ptr %0, align 8, !tbaa !55, !alias.scope !43
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_59CDLOpData6equalsERKNS_6OpDataE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56OpData6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  br i1 %i.a, label %bb.b, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.i = load double, ptr %i.g, align 8, !tbaa !39 ; 3 uses
  %i.j = load double, ptr %i.h, align 8, !tbaa !39 ; 3 uses
  %i.k = fcmp ogt double %i.i, %i.j
  %i.l = fsub double %i.i, %i.j
  %i.m = fsub double %i.j, %i.i
  %i.n = select i1 %i.k, double %i.l, double %i.m
  %i.o = fcmp ugt double %i.n, 1.000000e-09
  br i1 %i.o, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = load double, ptr %i.p, align 8, !tbaa !39 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.s = load double, ptr %i.r, align 8, !tbaa !39 ; 3 uses
  %i.t = fcmp ogt double %i.q, %i.s
  %i.u = fsub double %i.q, %i.s
  %i.v = fsub double %i.s, %i.q
  %i.w = select i1 %i.t, double %i.u, double %i.v
  %i.x = fcmp ugt double %i.w, 1.000000e-09
  br i1 %i.x, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit

_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit: ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = load double, ptr %i.y, align 8, !tbaa !39 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !39 ; 3 uses
  %i.ac = fcmp ogt double %i.z, %i.ab
  %i.ad = fsub double %i.z, %i.ab
  %i.ae = fsub double %i.ab, %i.z
  %i.af = select i1 %i.ac, double %i.ad, double %i.ae
  %i.ag = fcmp ugt double %i.af, 1.000000e-09
  br i1 %i.ag, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aj = load double, ptr %i.ah, align 8, !tbaa !39 ; 3 uses
  %i.ak = load double, ptr %i.ai, align 8, !tbaa !39 ; 3 uses
  %i.al = fcmp ogt double %i.aj, %i.ak
  %i.am = fsub double %i.aj, %i.ak
  %i.an = fsub double %i.ak, %i.aj
  %i.ao = select i1 %i.al, double %i.am, double %i.an
  %i.ap = fcmp ugt double %i.ao, 1.000000e-09
  br i1 %i.ap, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !39 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.at = load double, ptr %i.as, align 8, !tbaa !39 ; 3 uses
  %i.au = fcmp ogt double %i.ar, %i.at
  %i.av = fsub double %i.ar, %i.at
  %i.aw = fsub double %i.at, %i.ar
  %i.ax = select i1 %i.au, double %i.av, double %i.aw
  %i.ay = fcmp ugt double %i.ax, 1.000000e-09
  br i1 %i.ay, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit9

_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit9: ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ba = load double, ptr %i.az, align 8, !tbaa !39 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !39 ; 3 uses
  %i.bd = fcmp ogt double %i.ba, %i.bc
  %i.be = fsub double %i.ba, %i.bc
  %i.bf = fsub double %i.bc, %i.ba
  %i.bg = select i1 %i.bd, double %i.be, double %i.bf
  %i.bh = fcmp ugt double %i.bg, 1.000000e-09
  br i1 %i.bh, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit9
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !39 ; 3 uses
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !39 ; 3 uses
  %i.bm = fcmp ogt double %i.bk, %i.bl
  %i.bn = fsub double %i.bk, %i.bl
  %i.bo = fsub double %i.bl, %i.bk
  %i.bp = select i1 %i.bm, double %i.bn, double %i.bo
  %i.bq = fcmp ugt double %i.bp, 1.000000e-09
  br i1 %i.bq, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bs = load double, ptr %i.br, align 8, !tbaa !39 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !39 ; 3 uses
  %i.bv = fcmp ogt double %i.bs, %i.bu
  %i.bw = fsub double %i.bs, %i.bu
  %i.bx = fsub double %i.bu, %i.bs
  %i.by = select i1 %i.bv, double %i.bw, double %i.bx
  %i.bz = fcmp ugt double %i.by, 1.000000e-09
  br i1 %i.bz, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit10

_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit10: ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !39 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !39 ; 3 uses
  %i.ce = fcmp ogt double %i.cb, %i.cd
  %i.cf = fsub double %i.cb, %i.cd
  %i.cg = fsub double %i.cd, %i.cb
  %i.ch = select i1 %i.ce, double %i.cf, double %i.cg
  %i.ci = fcmp ugt double %i.ch, 1.000000e-09
  br i1 %i.ci, label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit10
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !42
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !42
  %i.cn = fcmp oeq double %i.ck, %i.cm
  br label %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread

_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit.thread: ; preds = %bb.g, %bb.h, %bb.e, %bb.f, %bb.c, %bb.d, %bb.b, %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit, %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit9, %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit10, %bb.i, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit10 ], [ false, %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit9 ], [ false, %_ZNK16OpenColorIO_v2_59CDLOpData13ChannelParamseqERKS1_.exit ], [ false, %bb.b ], [ %i.cn, %bb.i ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_56OpData6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_59CDLOpData8setStyleENS0_5StyleE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(256) initializes((168, 172)) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %1, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZNK16OpenColorIO_v2_59CDLOpData12getDirectionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = add i32 %i.b, -1
  %switch.and = and i32 %i.c, -3
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %i.d = zext i1 %switch.selectcmp to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_59CDLOpData12setDirectionENS_18TransformDirectionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = add i32 %i.b, -1
  %switch.and.i = and i32 %i.c, -3
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %i.d = zext i1 %switch.selectcmp.i to i32
  %.not = icmp ne i32 %1, %i.d
  %i.e = icmp ult i32 %i.b, 4
  %or.cond = and i1 %.not, %i.e
  br i1 %or.cond, label %switch.lookup, label %_ZN16OpenColorIO_v2_59CDLOpData6invertEv.exit

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK16OpenColorIO_v2_59CDLOpData7inverseEv, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.a, align 8, !tbaa !19
  br label %_ZN16OpenColorIO_v2_59CDLOpData6invertEv.exit

_ZN16OpenColorIO_v2_59CDLOpData6invertEv.exit:    ; preds = %switch.lookup, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_59CDLOpData6invertEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = icmp ult i32 %i.b, 4
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK16OpenColorIO_v2_59CDLOpData7inverseEv, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.a, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_59CDLOpData14setSlopeParamsERKNS0_13ChannelParamsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(256) initializes((176, 200)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_59CDLOpData15setOffsetParamsERKNS0_13ChannelParamsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(256) initializes((200, 224)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_59CDLOpData14setPowerParamsERKNS0_13ChannelParamsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(256) initializes((224, 248)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_59CDLOpData13setSaturationEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(256) initializes((248, 256)) %0, double noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  store double %1, ptr %i.a, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_520validateGreaterEqualEPKcdd(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = fcmp ult double %1, %2
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.4, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.c
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %1)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.6, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZNSolsEd.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %2)
          to label %_ZNSolsEd.exit17 unwind label %bb.f

_ZNSolsEd.exit17:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZNSolsEd.exit17
  %i.i = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.j = load ptr, ptr %4, align 8, !tbaa !8
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef %i.j)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
          to label %bb.k unwind label %bb.g

bb.f:                                             ; preds = %_ZNSolsEd.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !8      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.q = load i64, ptr %i.o, align 8, !tbaa !7
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn21 = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #19
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn21, %bb.h ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %bb.f ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %bb.a
  ret void

bb.k:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_519validateGreaterThanEPKcdd(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = fcmp ogt double %1, %2
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.8, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.c
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %1)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.6, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZNSolsEd.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %2)
          to label %_ZNSolsEd.exit17 unwind label %bb.f

_ZNSolsEd.exit17:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZNSolsEd.exit17
  %i.i = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.j = load ptr, ptr %4, align 8, !tbaa !8
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef %i.j)
          to label %bb.e unwind label %bb.g
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_59CDLOpData26GetChannelParametersStringB5cxx11ENS0_13ChannelParamsE:bb.a
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.an, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #19
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.av) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.g:                                             ; preds = %bb.c, %_ZNSolsEd.exit1, %bb.b, %_ZNSolsEd.exit, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.g ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ac, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59CDLOpData15getOffsetStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @_ZN16OpenColorIO_v2_59CDLOpData26GetChannelParametersStringB5cxx11ENS0_13ChannelParamsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::CDLOpData::ChannelParams") align 8 %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59CDLOpData14getPowerStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_ZN16OpenColorIO_v2_59CDLOpData26GetChannelParametersStringB5cxx11ENS0_13ChannelParamsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::CDLOpData::ChannelParams") align 8 %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59CDLOpData19getSaturationStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !17
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 7, ptr %i.e, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.g = load double, ptr %i.f, align 8, !tbaa !42
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %i.g)
          to label %_ZNSolsEd.exit unwind label %bb.e ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !14, !alias.scope !120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !16, !alias.scope !120
  store i8 0, ptr %i.i, align 8, !tbaa !7, !alias.scope !120
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111, !noalias !120 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !120 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113, !noalias !120 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !8, !alias.scope !120 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = load i64, ptr %i.i, align 8, !tbaa !7, !alias.scope !120
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #21
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEd.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !17
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !7
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ao) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_59CDLOpData9isReverseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = add i32 %i.b, -1
  %switch.and = and i32 %i.c, -3
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  ret i1 %switch.selectcmp
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_59CDLOpData9isInverseERSt10shared_ptrIKS0_E(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !121    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.b = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #22, !noalias !132 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store i32 1, ptr %i.c, align 8, !tbaa !51, !noalias !132
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  store i32 1, ptr %i.d, align 4, !tbaa !53, !noalias !132
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !17, !noalias !132
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.e, ptr noundef nonnull align 8 dereferenceable(256) %0)
          to label %_ZNK16OpenColorIO_v2_59CDLOpData5cloneEv.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i, !noalias !132

common.resume:                                    ; preds = %bb.g, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i ], [ %i.ad, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i: ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 272) #21, !noalias !132
  br label %common.resume

_ZNK16OpenColorIO_v2_59CDLOpData5cloneEv.exit.i:  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_59CDLOpDataE, i64 16), ptr %i.e, align 8, !tbaa !17, !noalias !132
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false), !noalias !132
  store ptr %i.b, ptr %i.g, align 8, !tbaa !54, !alias.scope !132
  store ptr %i.e, ptr %2, align 8, !tbaa !55, !alias.scope !132
  %i.j = load i32, ptr %i.h, align 8, !tbaa !19, !noalias !123 ; 2 uses
  %i.k = icmp ult i32 %i.j, 4
  br i1 %i.k, label %switch.lookup, label %_ZNK16OpenColorIO_v2_59CDLOpData7inverseEv.exit

switch.lookup:                                    ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData5cloneEv.exit.i
  %i.l = zext nneg i32 %i.j to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK16OpenColorIO_v2_59CDLOpData7inverseEv, i64 %i.l
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.h, align 8, !tbaa !19, !noalias !123
  br label %_ZNK16OpenColorIO_v2_59CDLOpData7inverseEv.exit

_ZNK16OpenColorIO_v2_59CDLOpData7inverseEv.exit:  ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData5cloneEv.exit.i, %switch.lookup
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(256) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %i.e)
          to label %_ZN16OpenColorIO_v2_5eqERKNS_9CDLOpDataES2_.exit unwind label %bb.g, !inline_history !133

_ZN16OpenColorIO_v2_5eqERKNS_9CDLOpDataES2_.exit: ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData7inverseEv.exit
  %i.q = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_5eqERKNS_9CDLOpDataES2_.exit
  store i32 0, ptr %i.c, align 8, !tbaa !51
  store i32 0, ptr %i.d, align 4, !tbaa !53
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !134
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !134
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_5eqERKNS_9CDLOpDataES2_.exit
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add nsw i32 %i.s, -1
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ab = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.d ], [ %i.ab, %bb.e ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.f, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.f:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i1 %i.p

bb.g:                                             ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData7inverseEv.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_9CDLOpDataES2_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59CDLOpData7inverseEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  store ptr null, ptr %0, align 8, !tbaa !46, !alias.scope !141
  %i.a = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #22, !noalias !141 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !51, !noalias !141
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !53, !noalias !141
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !17, !noalias !141
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_56OpDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.d, ptr noundef nonnull align 8 dereferenceable(256) %1)
          to label %_ZNK16OpenColorIO_v2_59CDLOpData5cloneEv.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !141

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_59CDLOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 272) #21, !noalias !141
  resume { ptr, i32 } %i.e

_ZNK16OpenColorIO_v2_59CDLOpData5cloneEv.exit:    ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_59CDLOpDataE, i64 16), ptr %i.d, align 8, !tbaa !17, !noalias !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false), !noalias !141
  store ptr %i.a, ptr %i.f, align 8, !tbaa !54, !alias.scope !141
  store ptr %i.d, ptr %0, align 8, !tbaa !55, !alias.scope !141
  %i.i = load i32, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.j = icmp ult i32 %i.i, 4
  br i1 %i.j, label %switch.lookup, label %_ZN16OpenColorIO_v2_59CDLOpData6invertEv.exit

switch.lookup:                                    ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData5cloneEv.exit
  %i.k = zext nneg i32 %i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK16OpenColorIO_v2_59CDLOpData7inverseEv, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.g, align 8, !tbaa !19
  br label %_ZN16OpenColorIO_v2_59CDLOpData6invertEv.exit

_ZN16OpenColorIO_v2_59CDLOpData6invertEv.exit:    ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData5cloneEv.exit, %switch.lookup
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !64
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !64
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_59CDLOpData10getCacheIDB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 25 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #20
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.f
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19, %switch.lookup, %bb.j, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.f, %bb.e, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.o = load ptr, ptr %2, align 8, !tbaa !17
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %2, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 7, ptr %i.s, align 8, !tbaa !95
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.u = load i32, ptr %i.t, align 8, !tbaa !19   ; 2 uses
  %i.v = icmp ult i32 %i.u, 4
  br i1 %i.v, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull @.str)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #20
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.w) #19
  br label %.body

switch.lookup:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.y = zext nneg i32 %i.u to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_59CDLOpData10getCacheIDB5cxx11Ev, i64 %i.y
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #19
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %switch.load, i64 noundef %i.z)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %switch.lookup
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 176
  invoke void @_ZN16OpenColorIO_v2_59CDLOpData26GetChannelParametersStringB5cxx11ENS0_13ChannelParamsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::CDLOpData::ChannelParams") align 8 %i.ac)
          to label %_ZNK16OpenColorIO_v2_59CDLOpData14getSlopeStringB5cxx11Ev.exit unwind label %bb.p

_ZNK16OpenColorIO_v2_59CDLOpData14getSlopeStringB5cxx11Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.ad = load ptr, ptr %3, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ad, i64 noundef %i.af)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24 unwind label %bb.q

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24: ; preds = %_ZNK16OpenColorIO_v2_59CDLOpData14getSlopeStringB5cxx11Ev.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24
  %i.ai = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !7
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 200
  invoke void @_ZN16OpenColorIO_v2_59CDLOpData26GetChannelParametersStringB5cxx11ENS0_13ChannelParamsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::CDLOpData::ChannelParams") align 8 %i.an)
          to label %_ZNK16OpenColorIO_v2_59CDLOpData15getOffsetStringB5cxx11Ev.exit unwind label %bb.r

_ZNK16OpenColorIO_v2_59CDLOpData15getOffsetStringB5cxx11Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load ptr, ptr %4, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_2
