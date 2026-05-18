inline.NumInlined: 455
inline.NumDeleted: 214
begin_hunk_0
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
@switch.table._ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii = private unnamed_addr constant [9 x i32] [i32 8, i32 0, i32 10, i32 0, i32 12, i32 0, i32 0, i32 0, i32 -16], align 4
@switch.table._ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii.12 = private unnamed_addr constant [9 x i32] [i32 8, i32 0, i32 10, i32 0, i32 12, i32 0, i32 0, i32 0, i32 16], align 4

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

bb.e:                                             ; preds = %bb.d
  %i.af = load i8, ptr %i.z, align 1, !tbaa !16
  store i8 %i.af, ptr %i.x, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.z, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !13 ; 2 uses
  store i64 %i.ag, ptr %i.w, align 8, !tbaa !13
  %i.ah = load ptr, ptr %16, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 0, ptr %i.ai, align 1, !tbaa !16
  %.pre.i = load ptr, ptr %17, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.z, ptr %16, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !tbaa !16
  store <2 x i64> %i.ak, ptr %i.w, align 8, !tbaa !16
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.al = load i64, ptr %i.v, align 8, !tbaa !16
  store ptr %i.z, ptr %16, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.an = load <2 x i64>, ptr %i.am, align 8, !tbaa !16
  store <2 x i64> %i.an, ptr %i.w, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.x, ptr %17, align 8, !tbaa !26
  store i64 %i.al, ptr %i.aa, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aa, ptr %17, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ao = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.x, %bb.g ], [ %i.aa, %bb.h ]
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !13
  store i8 0, ptr %i.ao, align 1, !tbaa !16
  %i.aq = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store ptr null, ptr %i.i, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store i32 0, ptr %i.o, align 4, !tbaa !3
  %i.av = invoke fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindNonCommentERSiRiPci(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef %i.h)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.av, label %bb.i, label %.thread

bb.i:                                             ; preds = %.noexc
  %i.aw = load i8, ptr %i.h, align 16, !tbaa !16
  %i.ax = sext i8 %i.aw to i32
  %isdigittmp.i = add nsw i32 %i.ax, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.j, align 4, !tbaa !3
  store i32 256, ptr %i.k, align 4, !tbaa !3
  %i.ay = invoke fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii(ptr noundef %i.i, i32 noundef 1, i32 noundef 256)
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.j
  br i1 %i.ay, label %bb.k, label %.thread

bb.k:                                             ; preds = %.noexc49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.az, ptr %8, align 8, !tbaa !9
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 %i.ba, ptr %i.g, align 8, !tbaa !29
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.k
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc.i unwind label %bb.x   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.bc, ptr %8, align 8, !tbaa !26
  %i.bd = load i64, ptr %i.g, align 8, !tbaa !29
  store i64 %i.bd, ptr %i.az, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.k
  %i.be = phi ptr [ %i.bc, %.noexc.i ], [ %i.az, %bb.k ] ; 2 uses
  switch i64 %i.ba, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bf = load i8, ptr %i.h, align 16, !tbaa !16
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !16
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 16 %i.h, i64 %i.ba, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i
  %i.bg = load i64, ptr %i.g, align 8, !tbaa !29  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !13
  %i.bi = load ptr, ptr %8, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.bk = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.bl = tail call ptr @__errno_location() #28   ; 6 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3  ; 2 uses
  store i32 0, ptr %i.bl, align 4, !tbaa !3
  %i.bn = call noundef i64 @__isoc23_strtol(ptr noundef %i.bk, ptr noundef nonnull %i.f, i32 noundef 10) ; 2 uses
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.bp = icmp eq ptr %i.bo, %i.bk
  br i1 %i.bp, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.13) #29
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %.critedge.i.i.i, %bb.o
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.r, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !3
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.bt = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.az
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i

bb.s:                                             ; preds = %bb.n
  %i.bv = load i32, ptr %i.bl, align 4, !tbaa !3  ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 34
  %i.bx = add i64 %i.bn, -2147483648
  %i.by = icmp ult i64 %i.bx, -4294967296
  %or.cond.i.i.i = or i1 %i.by, %i.bw
  br i1 %or.cond.i.i.i, label %.critedge.i.i.i, label %bb.u

.critedge.i.i.i:                                  ; preds = %bb.s
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.13) #29
          to label %bb.t unwind label %bb.q

bb.t:                                             ; preds = %.critedge.i.i.i
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bz = icmp eq i32 %i.bv, 0
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !3
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.ca = trunc i64 %i.bn to i16
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !31
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !35
  store i16 %i.ca, ptr %i.ce, align 2, !tbaa !37
  %i.cf = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.az
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.ch = load i64, ptr %i.az, align 8, !tbaa !16
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ai

bb.x:                                             ; preds = %.noexc.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i
  %i.ck = load i64, ptr %i.az, align 8, !tbaa !16
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.cl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i, %bb.x
  %.pn79.i = phi { ptr, i32 } [ %i.cj, %bb.x ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i ], [ %i.bq, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.cq

bb.y:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.cm = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.cn, ptr %9, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cn, ptr noundef nonnull align 16 dereferenceable(5) %i.h, i64 5, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 5, ptr %i.co, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 21
  store i8 0, ptr %i.cp, align 1, !tbaa !16
  %i.cq = icmp sgt i32 %i.cm, 1
  br i1 %i.cq, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %.critedge86.thread.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cr, ptr noundef nonnull align 16 dereferenceable(5) %i.h, i64 5, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 21
  store i8 0, ptr %i.ct, align 1, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %20 = load <4 x i8>, ptr %i.cr, align 8, !tbaa !16, !noalias !39 ; 3 uses
  %21 = add <4 x i8> %20, splat (i8 -65)
  %22 = icmp ult <4 x i8> %21, splat (i8 26)
  %23 = or disjoint <4 x i8> %20, splat (i8 32)
  %24 = select <4 x i1> %22, <4 x i8> %23, <4 x i8> %20
  store <4 x i8> %24, ptr %i.cr, align 8, !tbaa !16, !noalias !39
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %26 = load i8, ptr %25, align 4, !tbaa !16, !noalias !39 ; 3 uses
  %27 = add i8 %26, -65
  %or.cond.i.i.i.i.4.i = icmp ult i8 %27, 26
  %28 = or disjoint i8 %26, 32
  %.0.i.i.i.i.4.i = select i1 %or.cond.i.i.i.i.4.i, i8 %28, i8 %26
  store i8 %.0.i.i.i.i.4.i, ptr %25, align 4, !tbaa !16, !noalias !39
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.cu, ptr %10, align 8, !tbaa !9, !alias.scope !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cu, ptr noundef nonnull align 8 dereferenceable(6) %i.cr, i64 6, i1 false)
  store ptr %i.cr, ptr %11, align 8, !tbaa !26, !noalias !39
  store i64 0, ptr %i.cs, align 8, !tbaa !13, !noalias !39
  store i8 0, ptr %i.cr, align 8, !tbaa !16, !noalias !39
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = xor i32 %i.cv, 980710764
  %i.cx = getelementptr i8, ptr %i.cu, i64 4
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i32
  %i.da = xor i32 %i.cz, 32
  %i.db = or i32 %i.cw, %i.da
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = zext i1 %i.dc to i32
  %.not.i48 = icmp eq i32 %i.dd, 0
  br i1 %.not.i48, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i, label %.critedge86.thread276.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.de = load i32, ptr %i.j, align 4, !tbaa !3   ; 2 uses
  switch i32 %i.de, label %.critedge86.thread276.i [
    i32 4, label %.critedge86.i
    i32 3, label %.critedge86.i
    i32 1, label %.critedge86.i
  ]

.critedge86.thread276.i:                          ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge86.thread.i

.critedge86.i:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i
  %i.df = load i32, ptr %i.k, align 4, !tbaa !3   ; 2 uses
  %i.dg = icmp slt i32 %i.df, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br i1 %i.dg, label %.critedge86.thread.i, label %bb.aa

.critedge86.thread.i:                             ; preds = %.critedge86.i, %.critedge86.thread276.i, %bb.y
  %i.dh = load i64, ptr %i.q, align 8, !tbaa !13
  %i.di = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #26
  %i.dj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef %i.dh, ptr noundef nonnull %i.h, i64 noundef %i.di)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.af, %.critedge86.thread.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aa:                                            ; preds = %.critedge86.i
  %.not186.i = icmp eq i32 %i.cm, 2
  br i1 %.not186.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  store i32 0, ptr %i.m, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  store i8 32, ptr %i.n, align 1, !tbaa !16
  %i.dl = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #26 ; 0 uses
  %i.dm = load i32, ptr %i.m, align 4, !tbaa !3   ; 2 uses
  %i.dn = load i8, ptr %i.n, align 1, !tbaa !16
  %i.do = and i8 %i.dn, -33
  %i.dp = icmp eq i8 %i.do, 70
  %i.dq = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dm)
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %.split.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i

.split.i.i:                                       ; preds = %bb.ab
  %i.ds = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dm, i1 true) ; 4 uses
  switch i32 %i.ds, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i [
    i32 8, label %bb.ae
    i32 10, label %bb.ae
    i32 12, label %bb.ae
    i32 16, label %bb.ac
  ]

bb.ac:                                            ; preds = %.split.i.i
  %i.dt = select i1 %i.dp, i32 -16, i32 16
  br label %bb.ae

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i: ; preds = %.split.i.i, %bb.ab
  %i.du = load i64, ptr %i.q, align 8, !tbaa !13
  %i.dv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #26
  %i.dw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef %i.du, ptr noundef nonnull %i.h, i64 noundef %i.dv)
          to label %.thread175.i unwind label %bb.ad ; 0 uses

.thread175.i:                                     ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i

bb.ad:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  br label %bb.ah

bb.ae:                                            ; preds = %.split.i.i, %.split.i.i, %bb.ac, %.split.i.i
  %.0.i.ph.i = phi i32 [ %i.ds, %.split.i.i ], [ %i.ds, %.split.i.i ], [ %i.dt, %bb.ac ], [ %i.ds, %.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  %.pre = load i32, ptr %i.j, align 4, !tbaa !3
  %.pre190 = load i32, ptr %i.k, align 4, !tbaa !3
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.aa
  %i.dy = phi i32 [ %.pre190, %bb.ae ], [ %i.df, %bb.aa ]
  %i.dz = phi i32 [ %.pre, %bb.ae ], [ %i.de, %bb.aa ]
  %.058.i = phi i32 [ %.0.i.ph.i, %bb.ae ], [ 0, %bb.aa ]
  %i.ea = invoke fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii(ptr noundef %i.i, i32 noundef %i.dz, i32 noundef %i.dy)
          to label %bb.ag unwind label %bb.z      ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %spec.select = select i1 %i.ea, i32 0, i32 3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i: ; preds = %bb.ag, %.critedge86.thread.i, %.thread175.i
  %.265.i = phi i32 [ %spec.select, %bb.ag ], [ 4, %.thread175.i ], [ 4, %.critedge86.thread.i ] ; 2 uses
  %.159.i = phi i32 [ %.058.i, %bb.ag ], [ 0, %.thread175.i ], [ 0, %.critedge86.thread.i ]
  %i.eb = phi i1 [ %i.ea, %bb.ag ], [ false, %.thread175.i ], [ false, %.critedge86.thread.i ]
  %i.ec = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.cn
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i
  %i.ee = load i64, ptr %i.cn, align 8, !tbaa !16
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br i1 %i.eb, label %bb.ai, label %bb.cr

bb.ah:                                            ; preds = %bb.ad, %bb.z
  %.pn76.i = phi { ptr, i32 } [ %i.dk, %bb.z ], [ %i.dx, %bb.ad ]
  %i.eg = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.cn
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i: ; preds = %bb.ah
  %i.ei = load i64, ptr %i.cn, align 8, !tbaa !16
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br label %bb.cq

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.170.i = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ]
  %.366.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.265.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ]
  %.260.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.159.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ] ; 2 uses
  %i.ek = load i32, ptr %i.j, align 4, !tbaa !3   ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.ai
  %i.em = load ptr, ptr %i.i, align 8, !tbaa !27  ; 8 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.promoted150 = load i32, ptr %i.o, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit187.i, %.lr.ph.i
  %.lcssa149152 = phi i32 [ %.promoted150, %.lr.ph.i ], [ %.lcssa149151, %.loopexit187.i ] ; 2 uses
  %i.eq = phi i32 [ %i.ek, %.lr.ph.i ], [ %i.jp, %.loopexit187.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit187.i ] ; 2 uses
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !31
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.i
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !35
  %i.eu = load i32, ptr %i.k, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.ev = load ptr, ptr %2, align 8, !tbaa !7
  %i.ew = getelementptr i8, ptr %i.ev, i64 -24
  %i.ex = load i64, ptr %i.ew, align 8            ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %2, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !42
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph.i.i, label %.loopexit187.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %bb.bl
  %i.fc = phi i64 [ %i.iv, %bb.bl ], [ %i.ex, %bb.aj ]
  %i.fd = phi i32 [ %i.fe, %bb.bl ], [ %.lcssa149152, %bb.aj ]
  %.01331.i.i = phi i32 [ %.1.i.i, %bb.bl ], [ %.170.i, %bb.aj ] ; 3 uses
  %i.fe = add nsw i32 %i.fd, 1                    ; 4 uses
  %i.ff = getelementptr inbounds i8, ptr %2, i64 %i.fc
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 240
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !51 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i, label %bb.ak, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc50 unwind label %.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18) #26
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.da
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %bb.dg ], [ %i.oy, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %.body

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit: ; preds = %bb.cr
  %i.pj = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !85
  %switch.selectcmp135 = icmp eq i32 %i.pk, -16
  %switch.select136 = zext i1 %switch.selectcmp135 to i32
  %i.pl = getelementptr inbounds nuw i8, ptr %.1, i64 12 ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !84
  switch i32 %i.pm, label %bb.dn [
    i32 -32, label %bb.dm
    i32 8, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77
    i32 10, label %bb.di
    i32 12, label %bb.dj
    i32 16, label %bb.dk
    i32 -16, label %bb.dl
  ]

bb.di:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77

bb.dj:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77

bb.dk:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77

bb.dl:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77

bb.dm:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77

bb.dn:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit, %bb.di, %bb.dj, %bb.dk, %bb.dl, %bb.dm, %bb.dn
  %.0.i76 = phi i32 [ 0, %bb.dn ], [ 8, %bb.dm ], [ 7, %bb.dl ], [ 2, %bb.di ], [ 3, %bb.dj ], [ 5, %bb.dk ], [ 1, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !86 ; 4 uses
  %i.pp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.do unwind label %bb.ei     ; 8 uses

bb.do:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %i.pp, align 8, !tbaa !7
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pq, i8 0, i64 16, i1 false)
  %i.pr = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #25
          to label %.noexc.i78 unwind label %bb.dx ; 6 uses

.noexc.i78:                                       ; preds = %bb.do
  %i.ps = sext i32 %i.po to i64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store i32 1, ptr %i.pt, align 8, !tbaa !87, !noalias !89
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 12
  store i32 1, ptr %i.pu, align 4, !tbaa !92, !noalias !89
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.pr, align 8, !tbaa !7, !noalias !89
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1ENS0_9HalfFlagsEmb(ptr noundef nonnull align 8 dereferenceable(364) %i.pv, i32 noundef %switch.select136, i64 noundef range(i64 -2147483648, 2147483648) %i.ps, i1 noundef zeroext false)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !89

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc.i78
  %i.pw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.pr, i64 noundef 384) #27, !noalias !89
  br label %.body.i

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i: ; preds = %.noexc.i78
  store ptr %i.pv, ptr %i.pq, align 8, !tbaa !93
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 16 ; 2 uses
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !95 ; 8 uses
  store ptr %i.pr, ptr %i.px, align 8, !tbaa !95
  %.not.i.i.i.i.i79 = icmp eq ptr %i.py, null
  br i1 %.not.i.i.i.i.i79, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.dp

bb.dp:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 4 uses
  %i.qa = load atomic i64, ptr %i.pz acquire, align 8 ; 2 uses
  %i.qb = icmp eq i64 %i.qa, 4294967297
  %i.qc = trunc i64 %i.qa to i32                  ; 2 uses
  br i1 %i.qb, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i32 0, ptr %i.pz, align 8, !tbaa !87
  %i.qd = getelementptr inbounds nuw i8, ptr %i.py, i64 12
  store i32 0, ptr %i.qd, align 4, !tbaa !92
  %i.qe = load ptr, ptr %i.py, align 8, !tbaa !7
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8
  call void %i.qg(ptr noundef nonnull align 8 dereferenceable(16) %i.py) #26, !inline_history !98
  %i.qh = load ptr, ptr %i.py, align 8, !tbaa !7
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  %i.qj = load ptr, ptr %i.qi, align 8
  call void %i.qj(ptr noundef nonnull align 8 dereferenceable(16) %i.py) #26, !inline_history !98
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.dr:                                            ; preds = %bb.dp
  %i.qk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i.i = icmp eq i8 %i.qk, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ql = add nsw i32 %i.qc, -1
  store i32 %i.ql, ptr %i.pz, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.dt:                                            ; preds = %bb.dr
  %i.qm = atomicrmw volatile add ptr %i.pz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.dt, %bb.ds
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.qc, %bb.ds ], [ %i.qm, %bb.dt ]
  %i.qn = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.qn, label %bb.du, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !99

bb.du:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.py) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.du, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dq, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRKNS1_9HalfFlagsERmbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit.i
  %i.qo = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut1DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.dv unwind label %bb.dy

bb.dv:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  br i1 %i.qo, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  %i.qp = load ptr, ptr %i.pq, align 8, !tbaa !100
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364) %i.qp, i32 noundef %4)
          to label %bb.dz unwind label %bb.dy

bb.dx:                                            ; preds = %bb.do
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.dy:                                            ; preds = %bb.dw, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.dy, %bb.dx, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i
  %.pn.i = phi { ptr, i32 } [ %i.qr, %bb.dy ], [ %i.qq, %bb.dx ], [ %i.pw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.pq) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.pp, i64 noundef 24) #27
  br label %.body

bb.dz:                                            ; preds = %bb.dw, %bb.dv
  %i.qs = load ptr, ptr %i.pq, align 8, !tbaa !100
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 360
  store i32 %.0.i76, ptr %i.qt, align 8, !tbaa !102
  %i.qu = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.ee unwind label %bb.ea     ; 6 uses

bb.ea:                                            ; preds = %bb.dz
  %i.qv = landingpad { ptr, i32 }
          catch ptr null
  %i.qw = extractvalue { ptr, i32 } %i.qv, 0
  %i.qx = call ptr @__cxa_begin_catch(ptr %i.qw) #26 ; 0 uses
  %i.qy = load ptr, ptr %i.pp, align 8, !tbaa !7
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8
  call void %i.ra(ptr noundef nonnull align 8 dereferenceable(24) %i.pp) #26, !inline_history !132
  invoke void @__cxa_rethrow() #29
          to label %bb.ed unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.rb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.rc = landingpad { ptr, i32 }
          catch ptr null
  %i.rd = extractvalue { ptr, i32 } %i.rc, 0
  call void @__clang_call_terminate(ptr %i.rd) #31
  unreachable

bb.ed:                                            ; preds = %bb.ea
  unreachable

bb.ee:                                            ; preds = %bb.dz
  %i.re = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  store i32 1, ptr %i.re, align 8, !tbaa !87
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qu, i64 12
  store i32 1, ptr %i.rf, align 4, !tbaa !92
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.qu, align 8, !tbaa !7
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  store ptr %i.pp, ptr %i.rg, align 8, !tbaa !133
  %i.rh = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %.0.i76)
          to label %bb.ef unwind label %bb.ej

bb.ef:                                            ; preds = %bb.ee
  %i.ri = fptrunc double %i.rh to float           ; 3 uses
  %i.rj = load i32, ptr %.1, align 8, !tbaa !71   ; 3 uses
  %i.rk = icmp sgt i32 %i.po, 0
  br i1 %i.rk, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.ef
  %i.rl = add nsw i32 %i.rj, -1                   ; 3 uses
  %i.rm = load ptr, ptr %i.pq, align 8, !tbaa !100
  %i.rn = load i32, ptr %i.pl, align 4, !tbaa !84
  %i.ro = icmp eq i32 %i.rn, -16
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 200
  %i.rq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !31 ; 6 uses
  %i.rs = load ptr, ptr %i.rp, align 8, !tbaa !136 ; 8 uses
  %.sroa.speculated.us.us = call i32 @llvm.smin.i32(i32 %i.rl, i32 0)
  %i.rt = sext i32 %.sroa.speculated.us.us to i64
  %i.ru = getelementptr inbounds [8 x i8], ptr %i.rr, i64 %i.rt
  %wide.trip.count188 = zext nneg i32 %i.po to i64 ; 5 uses
  %.pre192 = load ptr, ptr %i.ru, align 8, !tbaa !35 ; 3 uses
  %.sroa.speculated.us.us.1 = call i32 @llvm.smin.i32(i32 %i.rl, i32 1)
  %i.rv = sext i32 %.sroa.speculated.us.us.1 to i64
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.rr, i64 %i.rv
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !35 ; 3 uses
  %.sroa.speculated.us.us.2 = call i32 @llvm.smin.i32(i32 %i.rl, i32 2)
  %i.ry = sext i32 %.sroa.speculated.us.us.2 to i64
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.rr, i64 %i.ry
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !35 ; 3 uses
  br i1 %i.ro, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %min.iters.check313 = icmp ult i32 %i.po, 4
  br i1 %min.iters.check313, label %.preheader.preheader326, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.preheader
  %i.sb = add nsw i64 %wide.trip.count188, -1     ; 4 uses
  %i.sc = trunc nsw i64 %i.sb to i32
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.sc, i32 3) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.sd = icmp slt i32 %mul.result, 0
  %i.se = or i1 %i.sd, %mul.overflow
  %i.sf = icmp ugt i64 %i.sb, 4294967295
  %i.sg = or i1 %i.se, %i.sf
  %scevgep = getelementptr i8, ptr %i.rs, i64 4   ; 2 uses
  %mul306 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.sb, i64 12) ; 2 uses
  %mul.result307 = extractvalue { i64, i1 } %mul306, 0
  %mul.overflow308 = extractvalue { i64, i1 } %mul306, 1
  %i.sh = getelementptr i8, ptr %scevgep, i64 %mul.result307
  %i.si = icmp ult ptr %i.sh, %scevgep
  %i.sj = or i1 %i.si, %mul.overflow308
  %scevgep309 = getelementptr i8, ptr %i.rs, i64 8 ; 2 uses
  %mul310 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.sb, i64 12) ; 2 uses
  %mul.result311 = extractvalue { i64, i1 } %mul310, 0
  %mul.overflow312 = extractvalue { i64, i1 } %mul310, 1
  %i.sk = getelementptr i8, ptr %scevgep309, i64 %mul.result311
  %i.sl = icmp ult ptr %i.sk, %scevgep309
  %i.sm = or i1 %i.sl, %mul.overflow312
  %i.sn = or i1 %i.sg, %i.sj
  %i.so = or i1 %i.sn, %i.sm
  br i1 %i.so, label %.preheader.preheader326, label %vector.ph314

vector.ph314:                                     ; preds = %vector.scevcheck
  %n.vec316 = and i64 %wide.trip.count188, 2147483644 ; 4 uses
  %i.sp = mul nuw nsw i64 %n.vec316, 3
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ri, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph314
  %index318 = phi i64 [ 0, %vector.ph314 ], [ %index.next322, %vector.body317 ] ; 5 uses
  %i.sq = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %index318
  %wide.load319 = load <4 x i16>, ptr %i.sq, align 2, !tbaa !37
  %i.sr = uitofp <4 x i16> %wide.load319 to <4 x float>
  %i.ss = fdiv <4 x float> %i.sr, %broadcast.splat
  %.idx = mul i64 %index318, 12
  %i.st = getelementptr inbounds nuw i8, ptr %i.rs, i64 %.idx
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.rx, i64 %index318
  %wide.load320 = load <4 x i16>, ptr %i.su, align 2, !tbaa !37
  %i.sv = uitofp <4 x i16> %wide.load320 to <4 x float>
  %i.sw = fdiv <4 x float> %i.sv, %broadcast.splat
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.sa, i64 %index318
  %wide.load321 = load <4 x i16>, ptr %i.sx, align 2, !tbaa !37
  %i.sy = uitofp <4 x i16> %wide.load321 to <4 x float>
  %i.sz = fdiv <4 x float> %i.sy, %broadcast.splat
  %i.ta = shufflevector <4 x float> %i.ss, <4 x float> %i.sw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.tb = shufflevector <4 x float> %i.sz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.ta, <8 x float> %i.tb, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.st, align 4, !tbaa !137
  %index.next322 = add nuw i64 %index318, 4       ; 2 uses
  %i.tc = icmp eq i64 %index.next322, %n.vec316
  br i1 %i.tc, label %middle.block323, label %vector.body317, !llvm.loop !139

middle.block323:                                  ; preds = %vector.body317
  %cmp.n324 = icmp eq i64 %n.vec316, %wide.trip.count188
  br i1 %cmp.n324, label %.preheader13.i.i, label %.preheader.preheader326

.preheader.preheader326:                          ; preds = %vector.scevcheck, %.preheader.preheader, %middle.block323
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.preheader ], [ %n.vec316, %middle.block323 ]
  %.026161.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.preheader ], [ %i.sp, %middle.block323 ]
  %29 = insertelement <2 x float> poison, float %i.ri, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.preheader.us
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %.preheader.us ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %.026161.us = phi i64 [ %indvars.iv.next182.2, %.preheader.us ], [ 0, %.preheader.lr.ph ]
  %i.td = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %sext265 = shl i64 %.026161.us, 32
  %i.te = ashr exact i64 %sext265, 32             ; 4 uses
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %indvars.iv185
  %i.tg = load i16, ptr %i.tf, align 2, !tbaa !37
  %i.th = zext i16 %i.tg to i64
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.th
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !16
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %i.te
  store float %i.tj, ptr %i.tk, align 4, !tbaa !137
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %i.rx, i64 %indvars.iv185
  %i.tm = load i16, ptr %i.tl, align 2, !tbaa !37
  %i.tn = zext i16 %i.tm to i64
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.tn
  %i.tp = load float, ptr %i.to, align 4, !tbaa !16
  %i.tq = getelementptr [4 x i8], ptr %i.rs, i64 %i.te
  %i.tr = getelementptr i8, ptr %i.tq, i64 4
  store float %i.tp, ptr %i.tr, align 4, !tbaa !137
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.sa, i64 %indvars.iv185
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !37
  %i.tu = zext i16 %i.tt to i64
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.tu
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !16
  %i.tx = getelementptr [4 x i8], ptr %i.rs, i64 %i.te
  %i.ty = getelementptr i8, ptr %i.tx, i64 8
  store float %i.tw, ptr %i.ty, align 4, !tbaa !137
  %indvars.iv.next182.2 = add nsw i64 %i.te, 3
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count188
  br i1 %exitcond189.not, label %.preheader13.i.i, label %.preheader.us, !llvm.loop !140

.preheader:                                       ; preds = %.preheader.preheader326, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next179, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader326 ] ; 4 uses
  %.026161 = phi i64 [ %indvars.iv.next.2, %.preheader ], [ %.026161.ph, %.preheader.preheader326 ]
  %sext = shl i64 %.026161, 32
  %i.tz = ashr exact i64 %sext, 32                ; 3 uses
  %i.ua = getelementptr inbounds nuw [2 x i8], ptr %.pre192, i64 %indvars.iv
  %i.ub = load i16, ptr %i.ua, align 2, !tbaa !37
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %i.tz
  %i.ud = getelementptr inbounds nuw [2 x i8], ptr %i.rx, i64 %indvars.iv
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !37
  %31 = insertelement <2 x i16> poison, i16 %i.ub, i64 0
  %32 = insertelement <2 x i16> %31, i16 %i.ue, i64 1
  %33 = uitofp <2 x i16> %32 to <2 x float>
  %34 = fdiv <2 x float> %33, %30
  store <2 x float> %34, ptr %i.uc, align 4, !tbaa !137
  %35 = getelementptr inbounds nuw [2 x i8], ptr %i.sa, i64 %indvars.iv
  %36 = load i16, ptr %35, align 2, !tbaa !37
  %37 = uitofp i16 %36 to float
  %38 = fdiv float %37, %i.ri
  %39 = getelementptr [4 x i8], ptr %i.rs, i64 %i.tz
  %40 = getelementptr i8, ptr %39, i64 8
  store float %38, ptr %40, align 4, !tbaa !137
  %indvars.iv.next.2 = add nsw i64 %i.tz, 3
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count188
  br i1 %exitcond.not, label %.preheader13.i.i, label %.preheader, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.ef
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %.pre193 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31 ; 2 uses
  %.not.i.i85 = icmp eq ptr %.pre193, null
  br i1 %.not.i.i85, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.preheader13.i.i

.preheader13.i.i:                                 ; preds = %.preheader, %.preheader.us, %middle.block323, %._crit_edge
  %i.uf = phi ptr [ %.pre193, %._crit_edge ], [ %i.rr, %middle.block323 ], [ %i.rr, %.preheader.us ], [ %i.rr, %.preheader ]
  %i.ug = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.uh = icmp sgt i32 %i.rj, 0
  br i1 %i.uh, label %.lr.ph18.i.i, label %._crit_edge19.i.i

._crit_edge19.loopexit.i.i:                       ; preds = %bb.eh
  %.pre25.i.i = load ptr, ptr %i.ug, align 8, !tbaa !31
  br label %._crit_edge19.i.i

._crit_edge19.i.i:                                ; preds = %._crit_edge19.loopexit.i.i, %.preheader13.i.i
  %i.ui = phi ptr [ %.pre25.i.i, %._crit_edge19.loopexit.i.i ], [ %i.uf, %.preheader13.i.i ]
  call void @free(ptr noundef %i.ui) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.lr.ph18.i.i:                                     ; preds = %.preheader13.i.i, %bb.eh
  %i.uj = phi i32 [ %i.us, %bb.eh ], [ %i.rj, %.preheader13.i.i ] ; 2 uses
  %indvars.iv22.i.i = phi i64 [ %indvars.iv.next23.i.i, %bb.eh ], [ 0, %.preheader13.i.i ] ; 6 uses
  %i.uk = load ptr, ptr %i.ug, align 8, !tbaa !31 ; 2 uses
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %indvars.iv22.i.i
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !35 ; 3 uses
  %.not12.i.i = icmp eq ptr %i.um, null
  br i1 %.not12.i.i, label %bb.eh, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph18.i.i
  %.not20.i.i = icmp eq i64 %indvars.iv22.i.i, 0
  br i1 %.not20.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %.preheader.i.i, %bb.eg
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.eg ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %indvars.iv.i.i
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !35
  %i.up = icmp eq ptr %i.uo, %i.um
  br i1 %i.up, label %._crit_edge.i.i, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph.i.i86
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %indvars.iv22.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i86, !llvm.loop !72

._crit_edge.i.i:                                  ; preds = %bb.eg, %.lr.ph.i.i86
  %.0.lcssa.ph.in.i.i = phi i64 [ %indvars.iv22.i.i, %bb.eg ], [ %indvars.iv.i.i, %.lr.ph.i.i86 ]
  %i.uq = and i64 %.0.lcssa.ph.in.i.i, 4294967295
  %i.ur = icmp eq i64 %i.uq, %indvars.iv22.i.i
  br i1 %i.ur, label %._crit_edge.thread.i.i, label %bb.eh

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.preheader.i.i
  call void @free(ptr noundef %i.um) #26
  %.pre.i.i = load i32, ptr %.1, align 8, !tbaa !71
  br label %bb.eh

bb.eh:                                            ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.lr.ph18.i.i
  %i.us = phi i32 [ %i.uj, %._crit_edge.i.i ], [ %.pre.i.i, %._crit_edge.thread.i.i ], [ %i.uj, %.lr.ph18.i.i ] ; 2 uses
  %indvars.iv.next23.i.i = add nuw nsw i64 %indvars.iv22.i.i, 1 ; 2 uses
  %i.ut = sext i32 %i.us to i64
  %i.uu = icmp slt i64 %indvars.iv.next23.i.i, %i.ut
  br i1 %i.uu, label %.lr.ph18.i.i, label %._crit_edge19.loopexit.i.i, !llvm.loop !73

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge19.i.i, %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %.1, i64 noundef 24) #27
  store ptr %i.pp, ptr %0, align 8, !tbaa !142
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.qu, ptr %i.uv, align 8, !tbaa !95
  %i.uw = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.ux = icmp eq ptr %i.uw, %i.v
  br i1 %i.ux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.uy = load i64, ptr %i.v, align 8, !tbaa !16
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.uz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.va = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.t
  br i1 %i.vb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.vc = load i64, ptr %i.t, align 8, !tbaa !16
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.vd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ve = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.vf = icmp eq ptr %i.ve, %i.r
  br i1 %i.vf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.vg = load i64, ptr %i.r, align 8, !tbaa !16
  %i.vh = add i64 %i.vg, 1
  call void @_ZdlPvm(ptr noundef %i.ve, i64 noundef %i.vh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.vi = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.vj = icmp eq ptr %i.vi, %i.p
  br i1 %i.vj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.vk = load i64, ptr %i.p, align 8, !tbaa !16
  %i.vl = add i64 %i.vk, 1
  call void @_ZdlPvm(ptr noundef %i.vi, i64 noundef %i.vl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #26
  ret void

bb.ei:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils11GetBitDepthENS1_20IM_LutBitsPerChannelE.exit77
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ej:                                            ; preds = %bb.ee
  %i.vn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.qu) #26
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body.i, %bb.ej, %bb.eb, %bb.ei, %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i, %bb.dh, %bb.cz, %bb.cy
  %.pn39.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ow, %bb.cy ], [ %i.ox, %bb.cz ], [ %.pn39.pn.pn, %bb.dh ], [ %.pn81.pn.i, %bb.cq ], [ %i.rb, %bb.eb ], [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i ], [ %i.vn, %bb.ej ], [ %.pn.i, %.body.i ], [ %i.vm, %bb.ei ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.vo = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.vp = icmp eq ptr %i.vo, %i.v
  br i1 %i.vp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %.body
  %i.vq = load i64, ptr %i.v, align 8, !tbaa !16
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vo, i64 noundef %i.vr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.vs = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.vt = icmp eq ptr %i.vs, %i.t
  br i1 %i.vt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.vu = load i64, ptr %i.t, align 8, !tbaa !16
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.vw = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.vx = icmp eq ptr %i.vw, %i.r
  br i1 %i.vx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.vy = load i64, ptr %i.r, align 8, !tbaa !16
  %i.vz = add i64 %i.vy, 1
  call void @_ZdlPvm(ptr noundef %i.vw, i64 noundef %i.vz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.wa = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.wb = icmp eq ptr %i.wa, %i.p
  br i1 %i.wb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.wc = load i64, ptr %i.p, align 8, !tbaa !16
  %i.wd = add i64 %i.wc, 1
  call void @_ZdlPvm(ptr noundef %i.wa, i64 noundef %i.wd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #26
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn

bb.ek:                                            ; preds = %bb.dd
  unreachable
}

declare void @_ZNK16OpenColorIO_v2_510FileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZNK16OpenColorIO_v2_510FileFormat5writeERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEERKNS_14GroupTransformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES7_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nonnull readnone align 8 captures(none) %2, ptr nonnull readnone align 1 captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
