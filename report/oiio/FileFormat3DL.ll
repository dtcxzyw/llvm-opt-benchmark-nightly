inline.NumInlined: 960
inline.NumDeleted: 420
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
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::shared_ptr.65" = type { %"class.std::__shared_ptr.66" }
%"class.std::__shared_ptr.66" = type { ptr, %"class.std::__shared_count" }
%"class.OpenColorIO_v2_5::PackedImageDesc" = type { %"class.OpenColorIO_v2_5::ImageDesc", ptr }
%"class.OpenColorIO_v2_5::ImageDesc" = type { ptr }
%"class.std::shared_ptr.68" = type { %"class.std::__shared_ptr.69" }
%"class.std::__shared_ptr.69" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.17" = type { %"class.std::__shared_ptr.18" }
%"class.std::__shared_ptr.18" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.20" = type { %"class.std::__shared_ptr.21" }
%"class.std::__shared_ptr.21" = type { ptr, %"class.std::__shared_count" }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::istream_iterator" = type <{ ptr, %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"class.std::allocator.10" = type { i8 }
%"class.std::shared_ptr.49" = type { %"class.std::__shared_ptr.50" }
%"class.std::__shared_ptr.50" = type { ptr, %"class.std::__shared_count" }

@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatE, ptr @_ZN16OpenColorIO_v2_510FileFormatD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat13getFormatInfoERSt6vectorINS_10FormatInfoESaIS3_EE, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo, ptr @_ZNK16OpenColorIO_v2_510FileFormat5writeERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEERKNS_14GroupTransformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES7_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE, ptr @_ZNK16OpenColorIO_v2_510FileFormat8isBinaryEv] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatE, ptr @_ZTIN16OpenColorIO_v2_510FileFormatE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatE = internal constant [52 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormatE\00", align 1
@_ZTIN16OpenColorIO_v2_510FileFormatE = external constant ptr
@.str = private unnamed_addr constant [6 x i8] c"flame\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"3dl\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"lustre\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Error parsing .3dl file. \00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Not expecting a line starting with \22<\22.\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Line (\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"): '\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"'.\00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str.9 = private unnamed_addr constant [43 x i8] c"Appears to contain more than 1 shaper LUT.\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Invalid line with less than 3 values.\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"Does not appear to contain a valid shaper LUT or a 3D LUT.\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"The maximum shaper LUT value, \00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c", is unreasonably low. This LUT is probably not a .3dl \00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"file, but instead a related format that shares a similar \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"structure.\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Error parsing .3dl file.\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"The maximum 3D LUT value, \00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD0Ev, ptr @_ZNK16OpenColorIO_v2_510CachedFile11getCDLGroupEv] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, ptr @_ZTIN16OpenColorIO_v2_510CachedFileE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE = internal constant [52 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE\00", align 1
@_ZTIN16OpenColorIO_v2_510CachedFileE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_510CachedFileE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_510CachedFileE = linkonce_odr hidden constant [33 x i8] c"N16OpenColorIO_v2_510CachedFileE\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Not a CDL file format.\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE = internal constant [103 x i8] c"St15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [97 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [97 x i8] c"St23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Unknown 3dl format name, '\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"3DMESH\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"Mesh \00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"LUT8\0A\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"gamma 1.0\0A\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"Cannot build .3dl Op. Invalid cache type.\00", align 1
@switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE = private unnamed_addr constant [9 x i8] [i8 1, i8 poison, i8 2, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 5], align 4

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN16OpenColorIO_v2_519CreateFileFormat3DLEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 2 uses
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
  tail call void @_ZN16OpenColorIO_v2_510FileFormatD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat13getFormatInfoERSt6vectorINS_10FormatInfoESaIS3_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenColorIO_v2_5::FormatInfo", align 8 ; 17 uses
  %3 = alloca %"struct.OpenColorIO_v2_5::FormatInfo", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
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
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !21
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  %i.i = load i64, ptr %i.e, align 8, !tbaa !13
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull @.str.1, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7 unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i32 3, ptr %i.f, align 8, !tbaa !17
  store i32 1, ptr %i.g, align 4, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr %i.p, ptr %i.k, align 8, !tbaa !22
  br label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7
  invoke void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit unwind label %bb.g

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.r, ptr noundef nonnull @.str.2, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit10 unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit10: ; preds = %bb.d
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !22   ; 3 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !25
  %.not.i11 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit10
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %.noexc12 unwind label %bb.i

.noexc12:                                         ; preds = %bb.e
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr %i.w, ptr %i.k, align 8, !tbaa !22
  br label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit10
  invoke void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14 unwind label %bb.i

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14: ; preds = %.noexc12, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !16
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #24
  br label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit

_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !26  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.d
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !16
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16: ; preds = %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
  %i.am = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit20

_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit20:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_510FormatInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.as, %bb.i ], [ %i.ar, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.aq, %bb.g ]
  call void @_ZN16OpenColorIO_v2_510FormatInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree nonnull readnone align 8 captures(none) %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 13 uses
  %5 = alloca %"class.std::vector.8", align 16    ; 15 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 15 uses
  %7 = alloca %"class.std::vector.8", align 16    ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  store <12 x float> %interleaved.vec, ptr %i.pd, align 4, !tbaa !121
  %index.next1240 = add nuw i64 %index1238, 4     ; 2 uses
  %i.pe = icmp eq i64 %index.next1240, %n.vec1236
  br i1 %i.pe, label %middle.block1241, label %vector.body1237, !llvm.loop !123

middle.block1241:                                 ; preds = %vector.body1237
  %cmp.n1242 = icmp eq i64 %i.nj, %n.vec1236
  br i1 %cmp.n1242, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.scevcheck, %.preheader.lr.ph, %middle.block1241
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec1236, %middle.block1241 ]
  %.098722.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %i.ox, %middle.block1241 ]
  %.0100721.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %i.ow, %middle.block1241 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.pf = phi i64 [ %i.pu, %.preheader ], [ %.ph, %.preheader.preheader ]
  %.098722 = phi i32 [ %i.ps, %.preheader ], [ %.098722.ph, %.preheader.preheader ] ; 4 uses
  %.0100721 = phi i32 [ %i.pt, %.preheader ], [ %.0100721.ph, %.preheader.preheader ]
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0467.0.ph.lcssa575950, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !3
  %i.pi = sitofp i32 %i.ph to float
  %i.pj = fdiv float %i.pi, %i.on                 ; 3 uses
  %i.pk = zext i32 %.098722 to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.pk
  store float %i.pj, ptr %i.pl, align 4, !tbaa !121
  %i.pm = add i32 %.098722, 1
  %i.pn = zext i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.pn
  store float %i.pj, ptr %i.po, align 4, !tbaa !121
  %i.pp = add i32 %.098722, 2
  %i.pq = zext i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.pq
  store float %i.pj, ptr %i.pr, align 4, !tbaa !121
  %i.ps = add i32 %.098722, 3
  %i.pt = add i32 %.0100721, 1                    ; 2 uses
  %i.pu = zext i32 %i.pt to i64                   ; 2 uses
  %i.pv = icmp ugt i64 %i.nj, %i.pu
  br i1 %i.pv, label %.preheader, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, !llvm.loop !124

bb.dv:                                            ; preds = %bb.du
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %.body339

_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread: ; preds = %bb.di, %.preheader, %middle.block1241, %.noexc337, %bb.cp
  br i1 %i.jy, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread
  %i.px = icmp slt i32 %.0490.ph.lcssa661943, 128
  br i1 %i.px, label %bb.dx, label %bb.ei

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %20)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  %i.py = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.19, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344: ; preds = %bb.dy
  %i.pz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.20, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344
  %i.qa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %.0490.ph.lcssa661943)
          to label %bb.dz unwind label %bb.ed     ; 0 uses

bb.dz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.13, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit348 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit348: ; preds = %bb.dz
  %i.qc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.14, i64 noundef 57)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit348
  %i.qd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.15, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit352 unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit352: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350
  %i.qe = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(112) %20)
          to label %bb.ea unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread

bb.ea:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit352
  %i.qf = load ptr, ptr %21, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qe, ptr noundef %i.qf)
          to label %bb.eb unwind label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  invoke void @__cxa_throw(ptr nonnull %i.qe, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.ff unwind label %bb.ee

bb.ec:                                            ; preds = %bb.dx
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.ed:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit348, %bb.dz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344, %bb.dy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit352
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.ef

bb.ee:                                            ; preds = %bb.eb, %bb.ea
  %.095 = phi i1 [ false, %bb.eb ], [ true, %bb.ea ] ; 2 uses
  %i.qj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.qk = load ptr, ptr %21, align 8, !tbaa !26   ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.qm = icmp eq ptr %i.qk, %i.ql
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %bb.ee
  %i.qn = load i64, ptr %i.ql, align 8, !tbaa !16
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.qk, i64 noundef %i.qo) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br i1 %.095, label %bb.ef, label %bb.eg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br i1 %.095, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355
  %.pn144514 = phi { ptr, i32 } [ %i.qi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread ], [ %i.qj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355 ], [ %i.qj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353 ]
  call void @__cxa_free_exception(ptr %i.qe) #23
  br label %bb.eg

bb.eg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, %bb.ef, %bb.ed
  %.pn144.pn = phi { ptr, i32 } [ %.pn144514, %bb.ef ], [ %i.qj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355 ], [ %i.qh, %bb.ed ], [ %i.qj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %20) #23
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ec
  %.pn144.pn.pn = phi { ptr, i32 } [ %.pn144.pn, %bb.eg ], [ %i.qg, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.body339

bb.ei:                                            ; preds = %bb.dw
  %exp2.i362 = invoke double @exp2(double 8.000000e+00)
          to label %exp2.i.noexc361 unwind label %bb.en ; 0 uses

exp2.i.noexc361:                                  ; preds = %bb.ei
  %.not.not.not.i356 = icmp samesign ult i32 %.0490.ph.lcssa661943, 512
  br i1 %.not.not.not.i356, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371, label %bb.ej

bb.ej:                                            ; preds = %exp2.i.noexc361
  %exp2.1.i364 = invoke double @exp2(double 1.000000e+01)
          to label %exp2.1.i.noexc363 unwind label %bb.en ; 0 uses

exp2.1.i.noexc363:                                ; preds = %bb.ej
  %.not.not.not.1.i357 = icmp samesign ult i32 %.0490.ph.lcssa661943, 2048
  br i1 %.not.not.not.1.i357, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371, label %bb.ek

bb.ek:                                            ; preds = %exp2.1.i.noexc363
  %exp2.2.i366 = invoke double @exp2(double 1.200000e+01)
          to label %exp2.2.i.noexc365 unwind label %bb.en ; 0 uses

exp2.2.i.noexc365:                                ; preds = %bb.ek
  %.not.not.not.2.i358 = icmp samesign ult i32 %.0490.ph.lcssa661943, 8192
  br i1 %.not.not.not.2.i358, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371, label %bb.el

bb.el:                                            ; preds = %exp2.2.i.noexc365
  %exp2.3.i368 = invoke double @exp2(double 1.400000e+01)
          to label %exp2.3.i.noexc367 unwind label %bb.en ; 0 uses

exp2.3.i.noexc367:                                ; preds = %bb.el
  %.not.not.not.3.i359 = icmp samesign ult i32 %.0490.ph.lcssa661943, 32768
  br i1 %.not.not.not.3.i359, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371, label %bb.em

bb.em:                                            ; preds = %exp2.3.i.noexc367
  %exp2.4.i370 = invoke double @exp2(double 1.600000e+01)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371 unwind label %bb.en ; 0 uses

bb.en:                                            ; preds = %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %.body339

_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371: ; preds = %bb.em, %exp2.i.noexc361, %exp2.1.i.noexc363, %exp2.2.i.noexc365, %exp2.3.i.noexc367
  %spec.select.i360 = phi i64 [ 8, %exp2.3.i.noexc367 ], [ 0, %exp2.i.noexc361 ], [ 2, %exp2.1.i.noexc363 ], [ 4, %exp2.2.i.noexc365 ], [ 8, %bb.em ]
  %i.qq = ptrtoint ptr %.sroa.17.0.ph.lcssa647944 to i64
  %i.qr = ptrtoint ptr %.sroa.0447.0.ph.lcssa629945 to i64
  %i.qs = sub i64 %i.qq, %i.qr
  %i.qt = ashr exact i64 %i.qs, 2                 ; 5 uses
  %i.qu = trunc i64 %i.qt to i32
  %i.qv = sdiv i32 %i.qu, 3
  %i.qw = invoke noundef i32 @_ZN16OpenColorIO_v2_528Get3DLutEdgeLenFromNumPixelsEi(i32 noundef %i.qv)
          to label %switch.lookup unwind label %bb.ew

switch.lookup:                                    ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE, i64 %spec.select.i360
  %switch.load = load i8, ptr %switch.gep, align 2
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %i.qx = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #22
          to label %.noexc385 unwind label %bb.ey ; 6 uses

.noexc385:                                        ; preds = %switch.lookup
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  store i32 1, ptr %i.qy, align 8, !tbaa !67, !noalias !125
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 12
  store i32 1, ptr %i.qz, align 4, !tbaa !69, !noalias !125
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.qx, align 8, !tbaa !7, !noalias !125
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 16 ; 2 uses
  %i.rb = sext i32 %i.qw to i64
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.ra, i64 noundef %i.rb)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !125

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc385
  %i.rc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qx, i64 noundef 248) #24, !noalias !125
  br label %.body339

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %.noexc385
  %i.rd = getelementptr inbounds nuw i8, ptr %i.kt, i64 24 ; 4 uses
  store ptr %i.ra, ptr %i.rd, align 8, !tbaa !128
  %i.re = getelementptr inbounds nuw i8, ptr %i.kt, i64 32 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !83 ; 8 uses
  store ptr %i.qx, ptr %i.re, align 8, !tbaa !83
  %.not.i.i.i.i388 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i.i.i388, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.eo

bb.eo:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8 ; 4 uses
  %i.rh = load atomic i64, ptr %i.rg acquire, align 8 ; 2 uses
  %i.ri = icmp eq i64 %i.rh, 4294967297
  %i.rj = trunc i64 %i.rh to i32                  ; 2 uses
  br i1 %i.ri, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  store i32 0, ptr %i.rg, align 8, !tbaa !67
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rf, i64 12
  store i32 0, ptr %i.rk, align 4, !tbaa !69
  %i.rl = load ptr, ptr %i.rf, align 8, !tbaa !7
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(16) %i.rf) #23, !inline_history !130
  %i.ro = load ptr, ptr %i.rf, align 8, !tbaa !7
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.rq = load ptr, ptr %i.rp, align 8
  call void %i.rq(ptr noundef nonnull align 8 dereferenceable(16) %i.rf) #23, !inline_history !130
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.eq:                                            ; preds = %bb.eo
  %i.rr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i389 = icmp eq i8 %i.rr, 0
  br i1 %.not.i.i.i.i.i389, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.rs = add nsw i32 %i.rj, -1
  store i32 %i.rs, ptr %i.rg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i390

bb.es:                                            ; preds = %bb.eq
  %i.rt = atomicrmw volatile add ptr %i.rg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i390

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i390: ; preds = %bb.es, %bb.er
  %.0.i.i.i.i.i.i391 = phi i32 [ %i.rj, %bb.er ], [ %i.rt, %bb.es ]
  %i.ru = icmp eq i32 %.0.i.i.i.i.i.i391, 1
  br i1 %i.ru, label %bb.et, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.et:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i390
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rf) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.et, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i390, %bb.ep, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.rv = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut3DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.eu unwind label %bb.ex

bb.eu:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %i.rv, label %bb.ev, label %bb.ez

bb.ev:                                            ; preds = %bb.eu
  %i.rw = load ptr, ptr %i.rd, align 8, !tbaa !131
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(232) %i.rw, i32 noundef %4)
          to label %bb.ez unwind label %bb.ex

bb.ew:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit371
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %.body339

bb.ex:                                            ; preds = %bb.ev, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %.body339

bb.ey:                                            ; preds = %switch.lookup
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %.body339

bb.ez:                                            ; preds = %bb.ev, %bb.eu
  %i.sa = load ptr, ptr %i.rd, align 8, !tbaa !131
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 228
  store i32 %switch.ext, ptr %i.sb, align 4, !tbaa !133
  %i.sc = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %switch.ext)
          to label %.lr.ph725 unwind label %bb.fa

.lr.ph725:                                        ; preds = %bb.ez
  %i.sd = fptrunc double %i.sc to float           ; 2 uses
  %i.se = load ptr, ptr %i.rd, align 8, !tbaa !131
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 200
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !120 ; 2 uses
  %min.iters.check1247 = icmp ult i64 %i.qt, 4
  br i1 %min.iters.check1247, label %scalar.ph1246.preheader, label %vector.ph1248

vector.ph1248:                                    ; preds = %.lr.ph725
  %n.vec1250 = and i64 %i.qt, -4                  ; 3 uses
  %broadcast.splatinsert1251 = insertelement <4 x float> poison, float %i.sd, i64 0
  %broadcast.splat1252 = shufflevector <4 x float> %broadcast.splatinsert1251, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %vector.ph1248
  %index1254 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1256, %vector.body1253 ] ; 3 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0447.0.ph.lcssa629945, i64 %index1254
  %wide.load1255 = load <4 x i32>, ptr %i.sh, align 4, !tbaa !3
  %i.si = sitofp <4 x i32> %wide.load1255 to <4 x float>
  %i.sj = fdiv <4 x float> %i.si, %broadcast.splat1252
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %index1254
  store <4 x float> %i.sj, ptr %i.sk, align 4, !tbaa !121
  %index.next1256 = add nuw i64 %index1254, 4     ; 2 uses
  %i.sl = icmp eq i64 %index.next1256, %n.vec1250
  br i1 %i.sl, label %middle.block1257, label %vector.body1253, !llvm.loop !136

middle.block1257:                                 ; preds = %vector.body1253
  %cmp.n1258 = icmp eq i64 %i.qt, %n.vec1250
  br i1 %cmp.n1258, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %scalar.ph1246.preheader

scalar.ph1246.preheader:                          ; preds = %.lr.ph725, %middle.block1257
  %.0723.ph = phi i64 [ 0, %.lr.ph725 ], [ %n.vec1250, %middle.block1257 ]
  br label %scalar.ph1246

bb.fa:                                            ; preds = %bb.ez
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %.body339

scalar.ph1246:                                    ; preds = %scalar.ph1246.preheader, %scalar.ph1246
  %.0723 = phi i64 [ %i.ss, %scalar.ph1246 ], [ %.0723.ph, %scalar.ph1246.preheader ] ; 3 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0447.0.ph.lcssa629945, i64 %.0723
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !3
  %i.sp = sitofp i32 %i.so to float
  %i.sq = fdiv float %i.sp, %i.sd
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %.0723
  store float %i.sq, ptr %i.sr, align 4, !tbaa !121
  %i.ss = add nuw i64 %.0723, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ss, %i.qt
  br i1 %exitcond.not, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %scalar.ph1246, !llvm.loop !137

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread: ; preds = %scalar.ph1246, %middle.block1257
  store ptr %i.kt, ptr %0, align 8, !tbaa !138
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kv, ptr %i.st, align 8, !tbaa !83
  br label %bb.fb

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread
  store ptr %i.kt, ptr %0, align 8, !tbaa !138
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kv, ptr %i.su, align 8, !tbaa !83
  %.not.i.i.i400 = icmp eq ptr %.sroa.0447.0.ph.lcssa629945, null
  br i1 %.not.i.i.i400, label %_ZNSt6vectorIiSaIiEED2Ev.exit401, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.sv = ptrtoint ptr %.sroa.30.0.ph.lcssa675941 to i64
  %i.sw = ptrtoint ptr %.sroa.0447.0.ph.lcssa629945 to i64
  %i.sx = sub i64 %i.sv, %i.sw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0447.0.ph.lcssa629945, i64 noundef %i.sx) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit401

_ZNSt6vectorIiSaIiEED2Ev.exit401:                 ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.fb
  %.not.i.i.i402 = icmp eq ptr %.sroa.0467.0.ph.lcssa575950, null
  br i1 %.not.i.i.i402, label %_ZNSt6vectorIiSaIiEED2Ev.exit403, label %bb.fc

bb.fc:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit401
  %i.sy = ptrtoint ptr %.sroa.27.0.ph.lcssa609947 to i64
  %i.sz = ptrtoint ptr %.sroa.0467.0.ph.lcssa575950 to i64
  %i.ta = sub i64 %i.sy, %i.sz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0467.0.ph.lcssa575950, i64 noundef %i.ta) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit403

_ZNSt6vectorIiSaIiEED2Ev.exit403:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit401, %bb.fc
  ret void

.body339:                                         ; preds = %bb.ew, %bb.fa, %bb.ex, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.ey, %bb.db, %bb.dh, %bb.ds, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.dv, %bb.dt, %bb.en, %bb.eh
  %.pn144.pn.pn.pn = phi { ptr, i32 } [ %.pn144.pn.pn, %bb.eh ], [ %i.qp, %bb.en ], [ %i.no, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.oi, %bb.ds ], [ %.pn131.pn.pn, %bb.db ], [ %i.mp, %bb.dh ], [ %i.pw, %bb.dv ], [ %i.oj, %bb.dt ], [ %i.rx, %bb.ew ], [ %i.sm, %bb.fa ], [ %i.ry, %bb.ex ], [ %i.rz, %bb.ey ], [ %i.rc, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.kv) #23
  br label %.body

.body:                                            ; preds = %.body339, %bb.cm, %bb.cq, %bb.ci, %_ZNSt6vectorIiSaIiEED2Ev.exit294
  %.sroa.30.4 = phi ptr [ %.sroa.30.3, %_ZNSt6vectorIiSaIiEED2Ev.exit294 ], [ %.sroa.30.0.ph.lcssa675941, %bb.ci ], [ %.sroa.30.0.ph.lcssa675941, %bb.cq ], [ %.sroa.30.0.ph.lcssa675941, %bb.cm ], [ %.sroa.30.0.ph.lcssa675941, %.body339 ]
  %.sroa.0447.4 = phi ptr [ %.sroa.0447.3, %_ZNSt6vectorIiSaIiEED2Ev.exit294 ], [ %.sroa.0447.0.ph.lcssa629945, %bb.ci ], [ %.sroa.0447.0.ph.lcssa629945, %bb.cq ], [ %.sroa.0447.0.ph.lcssa629945, %bb.cm ], [ %.sroa.0447.0.ph.lcssa629945, %.body339 ] ; 3 uses
  %.sroa.27.4 = phi ptr [ %.sroa.27.3, %_ZNSt6vectorIiSaIiEED2Ev.exit294 ], [ %.sroa.27.0.ph.lcssa609947, %bb.ci ], [ %.sroa.27.0.ph.lcssa609947, %bb.cq ], [ %.sroa.27.0.ph.lcssa609947, %bb.cm ], [ %.sroa.27.0.ph.lcssa609947, %.body339 ]
  %.sroa.0467.4 = phi ptr [ %.sroa.0467.3, %_ZNSt6vectorIiSaIiEED2Ev.exit294 ], [ %.sroa.0467.0.ph.lcssa575950, %bb.ci ], [ %.sroa.0467.0.ph.lcssa575950, %bb.cq ], [ %.sroa.0467.0.ph.lcssa575950, %bb.cm ], [ %.sroa.0467.0.ph.lcssa575950, %.body339 ] ; 3 uses
  %.pn165.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn165.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit294 ], [ %.pn150.pn.pn, %bb.ci ], [ %i.lv, %bb.cq ], [ %i.lc, %bb.cm ], [ %.pn144.pn.pn.pn, %.body339 ]
  %.not.i.i.i404 = icmp eq ptr %.sroa.0447.4, null
  br i1 %.not.i.i.i404, label %_ZNSt6vectorIiSaIiEED2Ev.exit405, label %bb.fd

bb.fd:                                            ; preds = %.body
  %i.tb = ptrtoint ptr %.sroa.30.4 to i64
  %i.tc = ptrtoint ptr %.sroa.0447.4 to i64
  %i.td = sub i64 %i.tb, %i.tc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0447.4, i64 noundef %i.td) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit405

_ZNSt6vectorIiSaIiEED2Ev.exit405:                 ; preds = %.body, %bb.fd
  %.not.i.i.i406 = icmp eq ptr %.sroa.0467.4, null
  br i1 %.not.i.i.i406, label %_ZNSt6vectorIiSaIiEED2Ev.exit407, label %bb.fe

bb.fe:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit405
  %i.te = ptrtoint ptr %.sroa.27.4 to i64
  %i.tf = ptrtoint ptr %.sroa.0467.4 to i64
  %i.tg = sub i64 %i.te, %i.tf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0467.4, i64 noundef %i.tg) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit407

_ZNSt6vectorIiSaIiEED2Ev.exit407:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit405, %bb.fe
  resume { ptr, i32 } %.pn165.pn.pn.pn.pn

bb.ff:                                            ; preds = %bb.eb, %bb.cv, %bb.cb, %bb.bp, %bb.an, %bb.u
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::shared_ptr.65", align 8 ; 6 uses
  %7 = alloca %"class.OpenColorIO_v2_5::PackedImageDesc", align 8 ; 7 uses
  %8 = alloca %"class.std::shared_ptr.68", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread171 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1953723756
  %i.f = getelementptr i8, ptr %i.c, i64 4
  %i.g = load i16, ptr %i.f, align 1
  %i.h = zext i16 %i.g to i32
  %i.i = xor i32 %i.h, 25970
  %i.j = or i32 %i.e, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread171

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89: ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.o = load i32, ptr %i.n, align 1
  %i.p = xor i32 %i.o, 1835101286
  %i.q = getelementptr i8, ptr %i.n, i64 4
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = xor i32 %i.s, 101
  %i.u = or i32 %i.p, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread171

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread171: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.25, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread171
  %i.z = load ptr, ptr %2, align 8, !tbaa !26
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.z, i64 noundef %i.aa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ad = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  %i.ae = load ptr, ptr %5, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef %i.ae)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.az unwind label %bb.e

end_hunk_1
