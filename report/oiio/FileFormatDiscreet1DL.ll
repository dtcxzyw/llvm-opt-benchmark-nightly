inline.NumInlined: 455
inline.NumDeleted: 214
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.OpenColorIO_v2_5::FormatInfo" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::shared_ptr.7" = type { %"class.std::__shared_ptr.8" }
%"class.std::__shared_ptr.8" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.28" = type { %"class.std::__shared_ptr.29" }
%"class.std::__shared_ptr.29" = type { ptr, %"class.std::__shared_count" }

@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatE, ptr @_ZN16OpenColorIO_v2_510FileFormatD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat13getFormatInfoERSt6vectorINS_10FormatInfoESaIS3_EE, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE, ptr @_ZNK16OpenColorIO_v2_510FileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo, ptr @_ZNK16OpenColorIO_v2_510FileFormat5writeERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEERKNS_14GroupTransformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES7_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE, ptr @_ZNK16OpenColorIO_v2_510FileFormat8isBinaryEv] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatE, ptr @_ZTIN16OpenColorIO_v2_510FileFormatE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatE = internal constant [52 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatE\00", align 1
@_ZTIN16OpenColorIO_v2_510FileFormatE = external constant ptr
@.str = private unnamed_addr constant [16 x i8] c"Discreet 1D LUT\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lut\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error parsing .lut file (\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"using Discreet 1D LUT reader. \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Error is: \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" At line (\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"): '\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"'.\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str.10 = private unnamed_addr constant [13 x i8] c"%*s %d %d %s\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"stoi\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Premature EOF reading LUT file\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Cannot allocate memory for LUT\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Syntax error reading LUT file\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Unknown error for LUT\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD0Ev, ptr @_ZNK16OpenColorIO_v2_510CachedFile11getCDLGroupEv] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, ptr @_ZTIN16OpenColorIO_v2_510CachedFileE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE = internal constant [52 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE\00", align 1
@_ZTIN16OpenColorIO_v2_510CachedFileE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_510CachedFileE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_510CachedFileE = linkonce_odr hidden constant [33 x i8] c"N16OpenColorIO_v2_510CachedFileE\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [97 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Not a CDL file format.\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE = internal constant [103 x i8] c"St15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@imath_half_to_float_table = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [42 x i8] c"Cannot build .lut Op. Invalid cache type.\00", align 1
@switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE = private unnamed_addr constant [4 x ptr] [ptr @.str.17, ptr @.str.21, ptr @.str.19, ptr @.str.20], align 8
@switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE.12 = private unnamed_addr constant [49 x i32] [i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 0, i32 3, i32 0, i32 0, i32 0, i32 5], align 4
@switch.table._ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii = private unnamed_addr constant [9 x i32] [i32 8, i32 0, i32 10, i32 0, i32 12, i32 0, i32 0, i32 0, i32 -16], align 4
@switch.table._ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii.13 = private unnamed_addr constant [9 x i32] [i32 8, i32 0, i32 10, i32 0, i32 12, i32 0, i32 0, i32 0, i32 16], align 4

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN16OpenColorIO_v2_527CreateFileFormatDiscreet1DLEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatE, i64 16), ptr %i.a, align 8, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_510FileFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_510FileFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat13getFormatInfoERSt6vectorINS_10FormatInfoESaIS3_EE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenColorIO_v2_5::FormatInfo", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !13
  store i8 0, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !13
  store i8 0, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 0, ptr %i.g, align 4, !tbaa !21
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 15)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  %i.i = load i64, ptr %i.e, align 8, !tbaa !13
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull @.str.1, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit2 unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i32 1, ptr %i.f, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit2
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr %i.p, ptr %i.k, align 8, !tbaa !22
  br label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit2
  invoke void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit unwind label %bb.d

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.c
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit
  %i.s = load i64, ptr %i.d, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.u = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !16
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #27
  br label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit

_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.d:                                             ; preds = %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_510FormatInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca [200 x i8], align 16              ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca [200 x i8], align 16              ; 19 uses
  %i.i = alloca ptr, align 8                      ; 12 uses
  %i.j = alloca i32, align 4                      ; 10 uses
  %i.k = alloca i32, align 4                      ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.l = alloca [16 x i8], align 16               ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %i.n = alloca i8, align 1                       ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.o = alloca i32, align 4                      ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %18 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 13 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.p, ptr %13, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  store i64 0, ptr %i.q, align 8, !tbaa !13
  store i8 0, ptr %i.p, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.r, ptr %14, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !13
  store i8 0, ptr %i.r, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.t, ptr %15, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !13
  store i8 0, ptr %i.t, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 8 uses
  store ptr %i.v, ptr %16, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store i64 0, ptr %i.w, align 8, !tbaa !13
  store i8 0, ptr %i.v, align 8, !tbaa !16
  invoke void @_ZN8pystring2os4path8splitextERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKS7_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.cy

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN8pystring2os4path8basenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.c unwind label %bb.cz

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %16, align 8, !tbaa !26    ; 6 uses
  %i.y = icmp eq ptr %i.x, %i.v
  %i.z = load ptr, ptr %17, align 8, !tbaa !26    ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.ab = icmp eq ptr %i.z, %i.aa                 ; 2 uses
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.c
  br i1 %i.ab, label %bb.d, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.c
  br i1 %i.ab, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !13 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  switch i64 %i.ad, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %.body

.thread.sink.split.sink.split:                    ; preds = %.preheader13.i.i148.i, %._crit_edge19.loopexit.i.i163.i, %.preheader13.i.i.i, %._crit_edge19.loopexit.i.i.i
  %.sink281 = phi ptr [ %i.jj, %.preheader13.i.i.i ], [ %.pre25.i.i.i, %._crit_edge19.loopexit.i.i.i ], [ %.pre25.i.i164.i, %._crit_edge19.loopexit.i.i163.i ], [ %i.nx, %.preheader13.i.i148.i ]
  %.sink.ph = phi ptr [ %i.ev, %.preheader13.i.i.i ], [ %i.ev, %._crit_edge19.loopexit.i.i.i ], [ %i.nv, %._crit_edge19.loopexit.i.i163.i ], [ %i.nv, %.preheader13.i.i148.i ]
  %.568.i.ph.ph.ph = phi i32 [ %.014.i.i, %.preheader13.i.i.i ], [ %.014.i.i, %._crit_edge19.loopexit.i.i.i ], [ 4, %._crit_edge19.loopexit.i.i163.i ], [ 4, %.preheader13.i.i148.i ]
  call void @free(ptr noundef %.sink281) #26
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %.thread.sink.split.sink.split, %bb.cm, %bb.bm
  %.sink = phi ptr [ %i.ev, %bb.bm ], [ %i.nv, %bb.cm ], [ %.sink.ph, %.thread.sink.split.sink.split ]
  %.568.i.ph.ph = phi i32 [ %.014.i.i, %bb.bm ], [ 4, %bb.cm ], [ %.568.i.ph.ph.ph, %.thread.sink.split.sink.split ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 24) #27
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.noexc, %.noexc49, %.loopexit.i, %.noexc57
  %.568.i.ph = phi i32 [ 3, %.noexc49 ], [ 4, %.noexc57 ], [ %.014.i.i, %.loopexit.i ], [ 1, %.noexc ], [ %.568.i.ph.ph, %.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.cs

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, %bb.cp
  %.1 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ], [ %i.om, %bb.cp ] ; 9 uses
  %.568.i = phi i32 [ %.265.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ], [ %.467.lcssa280.i, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.not = icmp eq i32 %.568.i, 0
  br i1 %.not, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit, label %bb.cs

bb.cs:                                            ; preds = %.thread, %bb.cr
  %.568.i130 = phi i32 [ %.568.i.ph, %.thread ], [ %.568.i, %bb.cr ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18)
          to label %bb.ct unwind label %bb.da

bb.ct:                                            ; preds = %bb.cs
  %i.on = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.3, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ct
  %i.oo = load ptr, ptr %3, align 8, !tbaa !26
  %i.op = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %i.oo)
          to label %bb.cu unwind label %bb.db

bb.cu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.oq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.op, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.cu
  %i.or = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.5, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.os = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.6, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %switch.tableidx = add i32 %.568.i130, -1       ; 2 uses
  %i.ot = icmp ult i32 %switch.tableidx, 4
  br i1 %i.ot, label %switch.lookup, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit

switch.lookup:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %i.ou = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE, i64 %i.ou
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.21, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 ]
  %i.ov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %.0.i)
          to label %bb.cv unwind label %bb.db     ; 0 uses

bb.cv:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit
  %i.ow = icmp eq i32 %.568.i130, 4
  br i1 %i.ow, label %bb.cw, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71

bb.cw:                                            ; preds = %bb.cv
  %i.ox = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.7, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %bb.cw
  %i.oy = load i32, ptr %i.o, align 4, !tbaa !3
  %i.oz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef %i.oy)
          to label %bb.cx unwind label %bb.db

bb.cx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %i.pa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, ptr noundef nonnull @.str.8, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68 unwind label %bb.db ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68: ; preds = %bb.cx
  %i.pb = load ptr, ptr %13, align 8, !tbaa !26
  %i.pc = load i64, ptr %i.q, align 8, !tbaa !13
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %i.pb, i64 noundef %i.pc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.db

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  %i.pe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %bb.db ; 0 uses

bb.cy:                                            ; preds = %bb.a
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cz:                                            ; preds = %bb.b
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %.body

.loopexit:                                        ; preds = %bb.am, %.noexc51, %_ZNSi7getlineEPcl.exit.i.i, %.noexc.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ck, %bb.j, %bb.ak, %bb.bk, %bb.cl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.da:                                            ; preds = %bb.cs
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.db:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68, %bb.cx, %bb.cw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %bb.cu, %bb.ct, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils13IMLutErrorStrEi.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.cv
  %i.pj = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(112) %18)
          to label %bb.dc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.dc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.pk = load ptr, ptr %19, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pj, ptr noundef %i.pk)
          to label %bb.dd unwind label %bb.de

bb.dd:                                            ; preds = %bb.dc
  invoke void @__cxa_throw(ptr nonnull %i.pj, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #29
          to label %bb.ef unwind label %bb.de

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.pl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.df

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.035 = phi i1 [ false, %bb.dd ], [ true, %bb.dc ] ; 2 uses
  %i.pm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pn = load ptr, ptr %19, align 8, !tbaa !26   ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.de
  %i.pq = load i64, ptr %i.po, align 8, !tbaa !16
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pr) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br i1 %.035, label %bb.df, label %bb.dg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br i1 %.035, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn39133 = phi { ptr, i32 } [ %i.pl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  call void @__cxa_free_exception(ptr %i.pj) #26
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %bb.df, %bb.db
  %.pn39.pn = phi { ptr, i32 } [ %.pn39133, %bb.df ], [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.pi, %bb.db ], [ %i.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18) #26
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.da
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %bb.dg ], [ %i.ph, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %.body

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit: ; preds = %bb.cr
  %i.ps = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !85
  %switch.selectcmp135 = icmp eq i32 %i.pt, -16
  %switch.select136 = zext i1 %switch.selectcmp135 to i32
  %i.pu = getelementptr inbounds nuw i8, ptr %.1, i64 12 ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !84
  %switch.tableidx326 = add i32 %i.pv, 32         ; 2 uses
  %20 = icmp ult i32 %switch.tableidx326, 49
  br i1 %20, label %bb.di, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77

bb.di:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit
  %21 = zext nneg i32 %switch.tableidx326 to i64
  %switch.gep328 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE.12, i64 %21
  %switch.load329 = load i32, ptr %switch.gep328, align 4
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit, %bb.di
  %.0.i76 = phi i32 [ %switch.load329, %bb.di ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit ] ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !86 ; 4 uses
  %i.py = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.dj unwind label %bb.ed     ; 8 uses

bb.dj:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %i.py, align 8, !tbaa !7
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pz, i8 0, i64 16, i1 false)
  %i.qa = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #25
          to label %.noexc.i78 unwind label %bb.ds ; 6 uses

.noexc.i78:                                       ; preds = %bb.dj
  %i.qb = sext i32 %i.px to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  store i32 1, ptr %i.qc, align 8, !tbaa !87, !noalias !89
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 12
  store i32 1, ptr %i.qd, align 4, !tbaa !92, !noalias !89
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.qa, align 8, !tbaa !7, !noalias !89
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qa, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1ENS0_9HalfFlagsEmb(ptr noundef nonnull align 8 dereferenceable(364) %i.qe, i32 noundef %switch.select136, i64 noundef range(i64 -2147483648, 2147483648) %i.qb, i1 noundef zeroext false)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !89

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc.i78
  %i.qf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qa, i64 noundef 384) #27, !noalias !89
  br label %.body.i

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i: ; preds = %.noexc.i78
  store ptr %i.qe, ptr %i.pz, align 8, !tbaa !93
  %i.qg = getelementptr inbounds nuw i8, ptr %i.py, i64 16 ; 2 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !95 ; 8 uses
  store ptr %i.qa, ptr %i.qg, align 8, !tbaa !95
  %.not.i.i.i.i.i79 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i.i.i.i79, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.dk

bb.dk:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 4 uses
  %i.qj = load atomic i64, ptr %i.qi acquire, align 8 ; 2 uses
  %i.qk = icmp eq i64 %i.qj, 4294967297
  %i.ql = trunc i64 %i.qj to i32                  ; 2 uses
  br i1 %i.qk, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i32 0, ptr %i.qi, align 8, !tbaa !87
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qh, i64 12
  store i32 0, ptr %i.qm, align 4, !tbaa !92
  %i.qn = load ptr, ptr %i.qh, align 8, !tbaa !7
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qp = load ptr, ptr %i.qo, align 8
  call void %i.qp(ptr noundef nonnull align 8 dereferenceable(16) %i.qh) #26, !inline_history !98
  %i.qq = load ptr, ptr %i.qh, align 8, !tbaa !7
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  %i.qs = load ptr, ptr %i.qr, align 8
  call void %i.qs(ptr noundef nonnull align 8 dereferenceable(16) %i.qh) #26, !inline_history !98
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.dm:                                            ; preds = %bb.dk
  %i.qt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i.i = icmp eq i8 %i.qt, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.qu = add nsw i32 %i.ql, -1
  store i32 %i.qu, ptr %i.qi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.do:                                            ; preds = %bb.dm
  %i.qv = atomicrmw volatile add ptr %i.qi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.do, %bb.dn
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ql, %bb.dn ], [ %i.qv, %bb.do ]
  %i.qw = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.qw, label %bb.dp, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !99

bb.dp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qh) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.dp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dl, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i
  %i.qx = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut1DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.dq unwind label %bb.dt

bb.dq:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  br i1 %i.qx, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.qy = load ptr, ptr %i.pz, align 8, !tbaa !100
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364) %i.qy, i32 noundef %4)
          to label %bb.du unwind label %bb.dt

bb.ds:                                            ; preds = %bb.dj
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.dt:                                            ; preds = %bb.dr, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.dt, %bb.ds, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i
  %.pn.i = phi { ptr, i32 } [ %i.ra, %bb.dt ], [ %i.qz, %bb.ds ], [ %i.qf, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.pz) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.py, i64 noundef 24) #27
  br label %.body

bb.du:                                            ; preds = %bb.dr, %bb.dq
  %i.rb = load ptr, ptr %i.pz, align 8, !tbaa !100
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 360
  store i32 %.0.i76, ptr %i.rc, align 8, !tbaa !102
  %i.rd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.dz unwind label %bb.dv     ; 6 uses

bb.dv:                                            ; preds = %bb.du
  %i.re = landingpad { ptr, i32 }
          catch ptr null
  %i.rf = extractvalue { ptr, i32 } %i.re, 0
  %i.rg = call ptr @__cxa_begin_catch(ptr %i.rf) #26 ; 0 uses
  %i.rh = load ptr, ptr %i.py, align 8, !tbaa !7
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8
  call void %i.rj(ptr noundef nonnull align 8 dereferenceable(24) %i.py) #26, !inline_history !132
  invoke void @__cxa_rethrow() #29
          to label %bb.dy unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.rk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rl = landingpad { ptr, i32 }
          catch ptr null
  %i.rm = extractvalue { ptr, i32 } %i.rl, 0
  call void @__clang_call_terminate(ptr %i.rm) #31
  unreachable

bb.dy:                                            ; preds = %bb.dv
  unreachable

bb.dz:                                            ; preds = %bb.du
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store i32 1, ptr %i.rn, align 8, !tbaa !87
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rd, i64 12
  store i32 1, ptr %i.ro, align 4, !tbaa !92
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.rd, align 8, !tbaa !7
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  store ptr %i.py, ptr %i.rp, align 8, !tbaa !133
  %i.rq = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %.0.i76)
          to label %bb.ea unwind label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  %i.rr = fptrunc double %i.rq to float           ; 3 uses
  %i.rs = load i32, ptr %.1, align 8, !tbaa !71   ; 3 uses
  %i.rt = icmp sgt i32 %i.px, 0
  br i1 %i.rt, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.ea
  %i.ru = add nsw i32 %i.rs, -1                   ; 3 uses
  %i.rv = load ptr, ptr %i.pz, align 8, !tbaa !100
  %i.rw = load i32, ptr %i.pu, align 4, !tbaa !84
  %i.rx = icmp eq i32 %i.rw, -16
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 200
  %i.rz = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !31 ; 6 uses
  %i.sb = load ptr, ptr %i.ry, align 8, !tbaa !136 ; 8 uses
  %.sroa.speculated.us.us = call i32 @llvm.smin.i32(i32 %i.ru, i32 0)
  %i.sc = sext i32 %.sroa.speculated.us.us to i64
  %i.sd = getelementptr inbounds [8 x i8], ptr %i.sa, i64 %i.sc
  %wide.trip.count188 = zext nneg i32 %i.px to i64 ; 5 uses
  %.pre192 = load ptr, ptr %i.sd, align 8, !tbaa !35 ; 3 uses
  %.sroa.speculated.us.us.1 = call i32 @llvm.smin.i32(i32 %i.ru, i32 1)
  %i.se = sext i32 %.sroa.speculated.us.us.1 to i64
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.sa, i64 %i.se
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !35 ; 3 uses
  %.sroa.speculated.us.us.2 = call i32 @llvm.smin.i32(i32 %i.ru, i32 2)
  %i.sh = sext i32 %.sroa.speculated.us.us.2 to i64
  %i.si = getelementptr inbounds [8 x i8], ptr %i.sa, i64 %i.sh
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !35 ; 3 uses
  br i1 %i.rx, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %min.iters.check313 = icmp ult i32 %i.px, 4
  br i1 %min.iters.check313, label %.preheader.preheader326, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.preheader
  %i.sk = add nsw i64 %wide.trip.count188, -1     ; 4 uses
  %i.sl = trunc nsw i64 %i.sk to i32
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.sl, i32 3) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.sm = icmp slt i32 %mul.result, 0
  %i.sn = or i1 %i.sm, %mul.overflow
  %i.so = icmp ugt i64 %i.sk, 4294967295
  %i.sp = or i1 %i.sn, %i.so
  %scevgep = getelementptr i8, ptr %i.sb, i64 4   ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindNonCommentERSiRiPci:bb.a
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load i8, ptr %i.l, align 8, !tbaa !59
  %.not.i1.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 67
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  br label %_ZNSi7getlineEPcl.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.k)
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext 10), !inline_history !170
  br label %_ZNSi7getlineEPcl.exit

_ZNSi7getlineEPcl.exit:                           ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.o, %bb.c ], [ %i.s, %bb.d ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, i64 noundef 200, i8 noundef signext %.0.i.i.i) ; 0 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %1, align 4, !tbaa !3
  %i.w = load i8, ptr %2, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.w, 0
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit, label %.preheader28.i

.preheader28.i:                                   ; preds = %_ZNSi7getlineEPcl.exit, %bb.f
  %indvars.iv.i = phi i16 [ %indvars.iv.next.i, %bb.f ], [ 0, %_ZNSi7getlineEPcl.exit ] ; 2 uses
  %.021.i = phi i16 [ %i.x, %bb.f ], [ -1, %_ZNSi7getlineEPcl.exit ] ; 2 uses
  %i.x = add i16 %.021.i, 1                       ; 2 uses
  %i.y = sext i16 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16
  switch i8 %i.aa, label %bb.f [
    i8 0, label %.preheader27.preheader.i
    i8 9, label %bb.e
  ]

.preheader27.preheader.i:                         ; preds = %.preheader28.i
  %i.ab = zext i16 %indvars.iv.i to i64
  %smin.i = tail call i16 @llvm.smin.i16(i16 %.021.i, i16 -1)
  %i.ac = add nsw i16 %smin.i, 1
  br label %.preheader27.i

bb.e:                                             ; preds = %.preheader28.i
  store i8 32, ptr %i.z, align 1, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader28.i
  %indvars.iv.next.i = add i16 %indvars.iv.i, 1
  br label %.preheader28.i, !llvm.loop !65

.preheader27.i:                                   ; preds = %bb.g, %.preheader27.preheader.i
  %indvars.iv31.i = phi i64 [ %i.ab, %.preheader27.preheader.i ], [ %indvars.iv.next32.i, %bb.g ] ; 2 uses
  %indvars.iv.next32.i = add nsw i64 %indvars.iv31.i, -1 ; 3 uses
  %i.ad = and i64 %indvars.iv.next32.i, 32768
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.preheader27.i
  %i.af = and i64 %indvars.iv.next32.i, 32767
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ai = icmp eq i8 %i.ah, 32
  br i1 %i.ai, label %.preheader27.i, label %.critedge.split.loop.exit35.i, !llvm.loop !67

.critedge.split.loop.exit35.i:                    ; preds = %bb.g
  %i.aj = trunc nuw i64 %indvars.iv31.i to i16
  br label %.critedge.i

.critedge.i:                                      ; preds = %.preheader27.i, %.critedge.split.loop.exit35.i
  %.1.lcssa.i = phi i16 [ %i.aj, %.critedge.split.loop.exit35.i ], [ %i.ac, %.preheader27.i ]
  %i.ak = sext i16 %.1.lcssa.i to i64
  %i.al = getelementptr inbounds i8, ptr %2, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %.not24.i = icmp eq i8 %i.am, 0
  br i1 %.not24.i, label %.preheader, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  store i8 0, ptr %i.al, align 1, !tbaa !16
  br label %.preheader

.preheader:                                       ; preds = %bb.h, %.critedge.i
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.i
  %.2.i = phi i16 [ %i.an, %bb.i ], [ -1, %.preheader ]
  %i.an = add i16 %.2.i, 1                        ; 4 uses
  %i.ao = sext i16 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = icmp eq i8 %i.aq, 32
  br i1 %i.ar, label %bb.i, label %bb.j, !llvm.loop !68

bb.j:                                             ; preds = %bb.i
  %.not25.i = icmp eq i16 %i.an, 0
  br i1 %.not25.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j, %.preheader.i
  %.3.i = phi i16 [ %i.as, %.preheader.i ], [ %i.an, %bb.j ] ; 2 uses
  %.0.i = phi i16 [ %i.aw, %.preheader.i ], [ 0, %bb.j ] ; 2 uses
  %i.as = add i16 %.3.i, 1
  %i.at = sext i16 %.3.i to i64
  %i.au = getelementptr inbounds i8, ptr %2, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16  ; 2 uses
  %i.aw = add i16 %.0.i, 1
  %i.ax = sext i16 %.0.i to i64
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !16
  %.not26.i = icmp eq i8 %i.av, 0
  br i1 %.not26.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit, label %.preheader.i, !llvm.loop !69

_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit: ; preds = %.preheader.i, %_ZNSi7getlineEPcl.exit, %bb.j
  %i.az = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #30 ; 2 uses
  %.not.i11 = icmp eq i64 %i.az, 0
  br i1 %.not.i11, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit, label %bb.k

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit
  %i.ba = getelementptr i8, ptr %2, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1     ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  switch i8 %i.bc, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit [
    i8 10, label %bb.l
    i8 13, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  store i8 0, ptr %i.bb, align 1, !tbaa !16
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit, %bb.k, %bb.l
  %i.bd = load i8, ptr %2, align 1, !tbaa !16     ; 2 uses
  %switch.selectcmp.case1 = icmp eq i8 %i.bd, 0
  %switch.selectcmp.case2 = icmp eq i8 %i.bd, 35
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.be = load ptr, ptr %0, align 8, !tbaa !7
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !42
  %i.bk = icmp eq i32 %i.bj, 0                    ; 2 uses
  %i.bl = and i1 %switch.selectcmp, %i.bk
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !171

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit, %bb.a
  %.lcssa13 = phi i1 [ false, %bb.a ], [ %i.bk, %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit ]
  ret i1 %.lcssa13
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii(ptr noundef nonnull writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i32 %1, ptr %i.b, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %2, ptr %i.d, align 4, !tbaa !86
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %.split.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit

.split.i:                                         ; preds = %bb.b
  %i.g = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true) ; 2 uses
  %switch.tableidx = add nsw i32 %i.g, -8         ; 2 uses
  %i.h = icmp ult i32 %switch.tableidx, 9
  br i1 %i.h, label %switch.lookup, label %.split.i37

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !85
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit38

switch.lookup:                                    ; preds = %.split.i
  %i.j = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii, i64 %i.j
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %.split.i37

.split.i37:                                       ; preds = %switch.lookup, %.split.i
  %.sink = phi i32 [ 0, %.split.i ], [ %switch.load, %switch.lookup ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink, ptr %i.k, align 8, !tbaa !85
  %switch.tableidx71 = add nsw i32 %i.g, -8       ; 2 uses
  %i.l = icmp ult i32 %switch.tableidx71, 9
  br i1 %i.l, label %switch.lookup72, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit38

switch.lookup72:                                  ; preds = %.split.i37
  %i.m = zext nneg i32 %switch.tableidx71 to i64
  %switch.gep73 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii.13, i64 %i.m
  %switch.load74 = load i32, ptr %switch.gep73, align 4
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit38

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit38: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit, %.split.i37, %switch.lookup72
  %.0.i36 = phi i32 [ %switch.load74, %switch.lookup72 ], [ 0, %.split.i37 ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.0.i36, ptr %i.n, align 4, !tbaa !84
  %i.o = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #32 ; 4 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !31
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructD2Ev.exit, label %.preheader61

.preheader61:                                     ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit38
  %i.q = icmp sgt i32 %1, 0
  br i1 %i.q, label %.lr.ph64, label %._crit_edge

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructD2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit38
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #27
  br label %bb.g

.lr.ph64:                                         ; preds = %.preheader61
  %i.r = zext nneg i32 %1 to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.s, i1 false), !tbaa !35
  %i.t = zext nneg i32 %2 to i64
  %i.u = shl nuw nsw i64 %i.t, 1
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !172

bb.d:                                             ; preds = %.lr.ph64, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #32 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store ptr %i.v, ptr %i.w, align 8, !tbaa !35
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %.lr.ph18.i42, label %bb.c

._crit_edge19.loopexit.i54:                       ; preds = %bb.f
  %.pre25.i55 = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call void @free(ptr noundef %.pre25.i55) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #27
  br label %bb.g

.lr.ph18.i42:                                     ; preds = %bb.d, %bb.f
  %i.y = phi i32 [ %i.ah, %bb.f ], [ %1, %bb.d ]  ; 2 uses
  %indvars.iv22.i43 = phi i64 [ %indvars.iv.next23.i53, %bb.f ], [ 0, %bb.d ] ; 6 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv22.i43
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 3 uses
  %.not12.i44 = icmp eq ptr %i.ab, null
  br i1 %.not12.i44, label %bb.f, label %.preheader.i45

.preheader.i45:                                   ; preds = %.lr.ph18.i42
  %.not20.i46 = icmp eq i64 %indvars.iv22.i43, 0
  br i1 %.not20.i46, label %._crit_edge.thread.i56, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.preheader.i45, %bb.e
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i49, %bb.e ], [ 0, %.preheader.i45 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.ae = icmp eq ptr %i.ad, %i.ab
  br i1 %i.ae, label %._crit_edge.i51, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i47
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv22.i43
  br i1 %exitcond.not.i50, label %._crit_edge.i51, label %.lr.ph.i47, !llvm.loop !72

._crit_edge.i51:                                  ; preds = %bb.e, %.lr.ph.i47
  %.0.lcssa.ph.in.i52 = phi i64 [ %indvars.iv22.i43, %bb.e ], [ %indvars.iv.i48, %.lr.ph.i47 ]
  %i.af = and i64 %.0.lcssa.ph.in.i52, 4294967295
  %i.ag = icmp eq i64 %i.af, %indvars.iv22.i43
  br i1 %i.ag, label %._crit_edge.thread.i56, label %bb.f

._crit_edge.thread.i56:                           ; preds = %._crit_edge.i51, %.preheader.i45
  tail call void @free(ptr noundef %i.ab) #26
  %.pre.i57 = load i32, ptr %i.b, align 8, !tbaa !71
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i56, %._crit_edge.i51, %.lr.ph18.i42
  %i.ah = phi i32 [ %i.y, %._crit_edge.i51 ], [ %.pre.i57, %._crit_edge.thread.i56 ], [ %i.y, %.lr.ph18.i42 ] ; 2 uses
  %indvars.iv.next23.i53 = add nuw nsw i64 %indvars.iv22.i43, 1 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next23.i53, %i.ai
  br i1 %i.aj, label %.lr.ph18.i42, label %._crit_edge19.loopexit.i54, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.c, %.preheader61
  store ptr %i.b, ptr %0, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructD2Ev.exit, %._crit_edge19.loopexit.i54, %._crit_edge, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11IMLutStructD2Ev.exit ], [ false, %._crit_edge19.loopexit.i54 ], [ true, %._crit_edge ]
  ret i1 %.1
}

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !92
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !169
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !169
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !99

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut1DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %0, align 8, !tbaa !7
end_hunk_2
