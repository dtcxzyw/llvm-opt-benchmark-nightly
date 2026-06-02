inline.NumInlined: 455
inline.NumDeleted: 214
begin_hunk_0
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
  %i.o = alloca i32, align 4                      ; 9 uses
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
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
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
  %i.cu = load <4 x i8>, ptr %i.cr, align 8, !tbaa !16, !noalias !39 ; 3 uses
  %i.cv = add <4 x i8> %i.cu, splat (i8 -65)
  %i.cw = icmp ult <4 x i8> %i.cv, splat (i8 26)
  %i.cx = or disjoint <4 x i8> %i.cu, splat (i8 32)
  %i.cy = select <4 x i1> %i.cw, <4 x i8> %i.cx, <4 x i8> %i.cu
  store <4 x i8> %i.cy, ptr %i.cr, align 8, !tbaa !16, !noalias !39
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !16, !noalias !39 ; 3 uses
  %i.db = add i8 %i.da, -65
  %or.cond.i.i.i.i.4.i = icmp ult i8 %i.db, 26
  %i.dc = or disjoint i8 %i.da, 32
  %.0.i.i.i.i.4.i = select i1 %or.cond.i.i.i.i.4.i, i8 %i.dc, i8 %i.da
  store i8 %.0.i.i.i.i.4.i, ptr %i.cz, align 4, !tbaa !16, !noalias !39
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.dd, ptr %10, align 8, !tbaa !9, !alias.scope !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dd, ptr noundef nonnull align 8 dereferenceable(6) %i.cr, i64 6, i1 false)
  store ptr %i.cr, ptr %11, align 8, !tbaa !26, !noalias !39
  store i64 0, ptr %i.cs, align 8, !tbaa !13, !noalias !39
  store i8 0, ptr %i.cr, align 8, !tbaa !16, !noalias !39
  %i.de = load i32, ptr %i.dd, align 1
  %i.df = xor i32 %i.de, 980710764
  %i.dg = getelementptr i8, ptr %i.dd, i64 4
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i32
  %i.dj = xor i32 %i.di, 32
  %i.dk = or i32 %i.df, %i.dj
  %i.dl = icmp ne i32 %i.dk, 0
  %i.dm = zext i1 %i.dl to i32
  %.not.i48 = icmp eq i32 %i.dm, 0
  br i1 %.not.i48, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i, label %.critedge86.thread276.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.dn = load i32, ptr %i.j, align 4, !tbaa !3   ; 2 uses
  switch i32 %i.dn, label %.critedge86.thread276.i [
    i32 4, label %.critedge86.i
    i32 3, label %.critedge86.i
    i32 1, label %.critedge86.i
  ]

.critedge86.thread276.i:                          ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge86.thread.i

.critedge86.i:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i
  %i.do = load i32, ptr %i.k, align 4, !tbaa !3   ; 2 uses
  %i.dp = icmp slt i32 %i.do, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br i1 %i.dp, label %.critedge86.thread.i, label %bb.aa

.critedge86.thread.i:                             ; preds = %.critedge86.i, %.critedge86.thread276.i, %bb.y
  %i.dq = load i64, ptr %i.q, align 8, !tbaa !13
  %i.dr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #26
  %i.ds = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef %i.dq, ptr noundef nonnull %i.h, i64 noundef %i.dr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.af, %.critedge86.thread.i
  %i.dt = landingpad { ptr, i32 }
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
  %i.du = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #26 ; 0 uses
  %i.dv = load i32, ptr %i.m, align 4, !tbaa !3   ; 2 uses
  %i.dw = load i8, ptr %i.n, align 1, !tbaa !16
  %i.dx = and i8 %i.dw, -33
  %i.dy = icmp eq i8 %i.dx, 70
  %i.dz = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dv)
  %i.ea = icmp eq i32 %i.dz, 1
  br i1 %i.ea, label %.split.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i

.split.i.i:                                       ; preds = %bb.ab
  %i.eb = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dv, i1 true) ; 4 uses
  switch i32 %i.eb, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i [
    i32 8, label %bb.ae
    i32 10, label %bb.ae
    i32 12, label %bb.ae
    i32 16, label %bb.ac
  ]

bb.ac:                                            ; preds = %.split.i.i
  %i.ec = select i1 %i.dy, i32 -16, i32 16
  br label %bb.ae

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i: ; preds = %.split.i.i, %bb.ab
  %i.ed = load i64, ptr %i.q, align 8, !tbaa !13
  %i.ee = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #26
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef %i.ed, ptr noundef nonnull %i.h, i64 noundef %i.ee)
          to label %.thread175.i unwind label %bb.ad ; 0 uses

.thread175.i:                                     ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i

bb.ad:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  br label %bb.ah

bb.ae:                                            ; preds = %.split.i.i, %.split.i.i, %bb.ac, %.split.i.i
  %.0.i.ph.i = phi i32 [ %i.eb, %.split.i.i ], [ %i.eb, %.split.i.i ], [ %i.ec, %bb.ac ], [ %i.eb, %.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  %.pre = load i32, ptr %i.j, align 4, !tbaa !3
  %.pre190 = load i32, ptr %i.k, align 4, !tbaa !3
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.aa
  %i.eh = phi i32 [ %.pre190, %bb.ae ], [ %i.do, %bb.aa ]
  %i.ei = phi i32 [ %.pre, %bb.ae ], [ %i.dn, %bb.aa ]
  %.058.i = phi i32 [ %.0.i.ph.i, %bb.ae ], [ 0, %bb.aa ]
  %i.ej = invoke fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii(ptr noundef %i.i, i32 noundef %i.ei, i32 noundef %i.eh)
          to label %bb.ag unwind label %bb.z      ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %spec.select = select i1 %i.ej, i32 0, i32 3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i: ; preds = %bb.ag, %.critedge86.thread.i, %.thread175.i
  %.265.i = phi i32 [ %spec.select, %bb.ag ], [ 4, %.thread175.i ], [ 4, %.critedge86.thread.i ] ; 2 uses
  %.159.i = phi i32 [ %.058.i, %bb.ag ], [ 0, %.thread175.i ], [ 0, %.critedge86.thread.i ]
  %i.ek = phi i1 [ %i.ej, %bb.ag ], [ false, %.thread175.i ], [ false, %.critedge86.thread.i ]
  %i.el = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.cn
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i
  %i.en = load i64, ptr %i.cn, align 8, !tbaa !16
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br i1 %i.ek, label %bb.ai, label %bb.cr

bb.ah:                                            ; preds = %bb.ad, %bb.z
  %.pn76.i = phi { ptr, i32 } [ %i.dt, %bb.z ], [ %i.eg, %bb.ad ]
  %i.ep = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.cn
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i: ; preds = %bb.ah
  %i.er = load i64, ptr %i.cn, align 8, !tbaa !16
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br label %bb.cq

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.170.i = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ]
  %.366.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.265.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ]
  %.260.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.159.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ] ; 2 uses
  %i.et = load i32, ptr %i.j, align 4, !tbaa !3   ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.ai
  %i.ev = load ptr, ptr %i.i, align 8, !tbaa !27  ; 8 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit187.i, %.lr.ph.i
  %i.ez = phi i32 [ %i.et, %.lr.ph.i ], [ %i.jy, %.loopexit187.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit187.i ] ; 2 uses
  %i.fa = load ptr, ptr %i.ew, align 8, !tbaa !31
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !35
  %i.fd = load i32, ptr %i.k, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.fe = load ptr, ptr %2, align 8, !tbaa !7
  %i.ff = getelementptr i8, ptr %i.fe, i64 -24
  %i.fg = load i64, ptr %i.ff, align 8            ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %2, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !42
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %.lr.ph.i.i, label %.loopexit187.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %bb.bl
  %i.fl = phi i64 [ %i.je, %bb.bl ], [ %i.fg, %bb.aj ]
  %i.fm = phi i32 [ %.1.i.i, %bb.bl ], [ %.170.i, %bb.aj ] ; 3 uses
  %20 = load i32, ptr %i.o, align 4, !tbaa !3
  %i.fn = add nsw i32 %20, 1
  store i32 %i.fn, ptr %i.o, align 4, !tbaa !3
  %i.fo = getelementptr inbounds i8, ptr %2, i64 %i.fl
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 240
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !51 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i, label %bb.ak, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %bb.ak
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !59
  %.not.i1.i.i.i.i = icmp eq i8 %i.fs, 0
  br i1 %.not.i1.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 67
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !16
  br label %_ZNSi7getlineEPcl.exit.i.i

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fq)
          to label %.noexc51 unwind label %.loopexit

.noexc51:                                         ; preds = %bb.am
  %i.fv = load ptr, ptr %i.fq, align 8, !tbaa !7
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = invoke noundef signext i8 %i.fx(ptr noundef nonnull align 8 dereferenceable(570) %i.fq, i8 noundef signext 10)
          to label %_ZNSi7getlineEPcl.exit.i.i unwind label %.loopexit, !inline_history !64

_ZNSi7getlineEPcl.exit.i.i:                       ; preds = %.noexc51, %bb.al
  %.0.i.i.i.i118.i = phi i8 [ %i.fu, %bb.al ], [ %i.fy, %.noexc51 ]
  %i.fz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.e, i64 noundef 200, i8 noundef signext %.0.i.i.i.i118.i)
          to label %.noexc53 unwind label %.loopexit ; 0 uses

.noexc53:                                         ; preds = %_ZNSi7getlineEPcl.exit.i.i
  %i.ga = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 -24
  %i.gc = load i64, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds i8, ptr %2, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !42
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.an, label %.loopexit.i

bb.an:                                            ; preds = %.noexc53
  %i.gh = load i8, ptr %i.e, align 16, !tbaa !16
  %.not.i.i119.i = icmp eq i8 %i.gh, 0
  br i1 %.not.i.i119.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit.i.i, label %.preheader28.i.i.i

.preheader28.i.i.i:                               ; preds = %bb.an, %bb.ap
  %indvars.iv.i.i.i = phi i16 [ %indvars.iv.next.i.i.i, %bb.ap ], [ 0, %bb.an ] ; 2 uses
  %.021.i.i.i = phi i16 [ %i.gi, %bb.ap ], [ -1, %bb.an ] ; 2 uses
  %i.gi = add i16 %.021.i.i.i, 1                  ; 2 uses
  %i.gj = sext i16 %i.gi to i64
  %i.gk = getelementptr inbounds i8, ptr %i.e, i64 %i.gj ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !16
  switch i8 %i.gl, label %bb.ap [
    i8 0, label %.preheader27.preheader.i.i.i
    i8 9, label %bb.ao
  ]

.preheader27.preheader.i.i.i:                     ; preds = %.preheader28.i.i.i
  %i.gm = zext i16 %indvars.iv.i.i.i to i64
  %smin.i.i.i = call i16 @llvm.smin.i16(i16 %.021.i.i.i, i16 -1)
  %i.gn = add nsw i16 %smin.i.i.i, 1
  br label %.preheader27.i.i.i

bb.ao:                                            ; preds = %.preheader28.i.i.i
  store i8 32, ptr %i.gk, align 1, !tbaa !16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.preheader28.i.i.i
  %indvars.iv.next.i.i.i = add i16 %indvars.iv.i.i.i, 1
  br label %.preheader28.i.i.i, !llvm.loop !65

.preheader27.i.i.i:                               ; preds = %bb.aq, %.preheader27.preheader.i.i.i
  %indvars.iv31.i.i.i = phi i64 [ %i.gm, %.preheader27.preheader.i.i.i ], [ %indvars.iv.next32.i.i.i, %bb.aq ] ; 2 uses
  %indvars.iv.next32.i.i.i = add nsw i64 %indvars.iv31.i.i.i, -1 ; 3 uses
  %i.go = and i64 %indvars.iv.next32.i.i.i, 32768
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.aq, label %.critedge.i.i120.i

bb.aq:                                            ; preds = %.preheader27.i.i.i
  %i.gq = and i64 %indvars.iv.next32.i.i.i, 32767
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !16
  %i.gt = icmp eq i8 %i.gs, 32
  br i1 %i.gt, label %.preheader27.i.i.i, label %.critedge.split.loop.exit35.i.i.i, !llvm.loop !67

.critedge.split.loop.exit35.i.i.i:                ; preds = %bb.aq
  %i.gu = trunc nuw i64 %indvars.iv31.i.i.i to i16
  br label %.critedge.i.i120.i

.critedge.i.i120.i:                               ; preds = %.preheader27.i.i.i, %.critedge.split.loop.exit35.i.i.i
  %.1.lcssa.i.i.i = phi i16 [ %i.gu, %.critedge.split.loop.exit35.i.i.i ], [ %i.gn, %.preheader27.i.i.i ]
  %i.gv = sext i16 %.1.lcssa.i.i.i to i64
  %i.gw = getelementptr inbounds i8, ptr %i.e, i64 %i.gv ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !16
  %.not24.i.i.i = icmp eq i8 %i.gx, 0
  br i1 %.not24.i.i.i, label %.preheader332, label %bb.ar

bb.ar:                                            ; preds = %.critedge.i.i120.i
  store i8 0, ptr %i.gw, align 1, !tbaa !16
  br label %.preheader332

.preheader332:                                    ; preds = %bb.ar, %.critedge.i.i120.i
  br label %bb.as

bb.as:                                            ; preds = %.preheader332, %bb.as
  %.2.i.i.i = phi i16 [ %i.gy, %bb.as ], [ -1, %.preheader332 ]
  %i.gy = add i16 %.2.i.i.i, 1                    ; 4 uses
  %i.gz = sext i16 %i.gy to i64
  %i.ha = getelementptr inbounds i8, ptr %i.e, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !16
  %i.hc = icmp eq i8 %i.hb, 32
  br i1 %i.hc, label %bb.as, label %bb.at, !llvm.loop !68

bb.at:                                            ; preds = %bb.as
  %.not25.i.i.i = icmp eq i16 %i.gy, 0
  br i1 %.not25.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.at, %.preheader.i.i.i
  %.3.i.i.i = phi i16 [ %i.hd, %.preheader.i.i.i ], [ %i.gy, %bb.at ] ; 2 uses
  %.0.i.i.i = phi i16 [ %i.hh, %.preheader.i.i.i ], [ 0, %bb.at ] ; 2 uses
  %i.hd = add i16 %.3.i.i.i, 1
  %i.he = sext i16 %.3.i.i.i to i64
  %i.hf = getelementptr inbounds i8, ptr %i.e, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !16  ; 2 uses
  %i.hh = add i16 %.0.i.i.i, 1
  %i.hi = sext i16 %.0.i.i.i to i64
  %i.hj = getelementptr inbounds i8, ptr %i.e, i64 %i.hi
  store i8 %i.hg, ptr %i.hj, align 1, !tbaa !16
  %.not26.i.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not26.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit.i.i, label %.preheader.i.i.i, !llvm.loop !69

_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit.i.i: ; preds = %.preheader.i.i.i, %bb.at, %bb.an
  %i.hk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #30 ; 2 uses
  %.not.i18.i.i = icmp eq i64 %i.hk, 0
  br i1 %.not.i18.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit.i.i
  %i.hl = getelementptr i8, ptr %i.e, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 -1     ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !16
  switch i8 %i.hn, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit.i.i [
    i8 10, label %bb.av
    i8 13, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  store i8 0, ptr %i.hm, align 1, !tbaa !16
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit.i.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit.i.i: ; preds = %bb.av, %bb.au, %_ZN16OpenColorIO_v2_512_GLOBAL__N_125ReplaceTabsAndStripSpacesEPc.exit.i.i
  %i.ho = load i8, ptr %i.e, align 16, !tbaa !16  ; 2 uses
  %i.hp = sext i8 %i.ho to i32
  %isdigittmp.i.i = add nsw i32 %i.hp, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %bb.aw, label %bb.bj

bb.aw:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.ex, ptr %7, align 8, !tbaa !9
  %i.hq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 %i.hq, ptr %i.d, align 8, !tbaa !29
  %i.hr = icmp ugt i64 %i.hq, 15
  br i1 %i.hr, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.aw
  %i.hs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc54 unwind label %.loopexit ; 2 uses

.noexc54:                                         ; preds = %.noexc.i.i.i
  store ptr %i.hs, ptr %7, align 8, !tbaa !26
  %i.ht = load i64, ptr %i.d, align 8, !tbaa !29
  store i64 %i.ht, ptr %i.ex, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc54, %bb.aw
  %i.hu = phi ptr [ %i.hs, %.noexc54 ], [ %i.ex, %bb.aw ] ; 2 uses
  switch i64 %i.hq, label %bb.ay [
    i64 1, label %bb.ax
    i64 0, label %bb.az
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hv = load i8, ptr %i.e, align 16, !tbaa !16
  store i8 %i.hv, ptr %i.hu, align 1, !tbaa !16
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hu, ptr nonnull align 16 %i.e, i64 %i.hq, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge.i.i.i.i
  %i.hw = load i64, ptr %i.d, align 8, !tbaa !29  ; 2 uses
  store i64 %i.hw, ptr %i.ey, align 8, !tbaa !13
  %i.hx = load ptr, ptr %7, align 8, !tbaa !26
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hw
  store i8 0, ptr %i.hy, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.hz = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ia = tail call ptr @__errno_location() #28   ; 6 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3  ; 2 uses
  store i32 0, ptr %i.ia, align 4, !tbaa !3
  %i.ic = call noundef i64 @__isoc23_strtol(ptr noundef %i.hz, ptr noundef nonnull %i.c, i32 noundef 10) ; 2 uses
  %i.id = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.ie = icmp eq ptr %i.id, %i.hz
  br i1 %i.ie, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.13) #29
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  unreachable

bb.bc:                                            ; preds = %.critedge.i.i.i.i, %bb.ba
  %i.if = landingpad { ptr, i32 }
          cleanup
  %i.ig = load i32, ptr %i.ia, align 4, !tbaa !3
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.bd, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !3
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ii = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.ex
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i

bb.be:                                            ; preds = %bb.az
  %i.ik = load i32, ptr %i.ia, align 4, !tbaa !3  ; 2 uses
  %i.il = icmp eq i32 %i.ik, 34
  %i.im = add i64 %i.ic, -2147483648
  %i.in = icmp ult i64 %i.im, -4294967296
  %or.cond.i.i.i.i = or i1 %i.in, %i.il
  br i1 %or.cond.i.i.i.i, label %.critedge.i.i.i.i, label %bb.bg

.critedge.i.i.i.i:                                ; preds = %bb.be
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.13) #29
          to label %bb.bf unwind label %bb.bc

bb.bf:                                            ; preds = %.critedge.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.io = icmp eq i32 %i.ik, 0
  br i1 %i.io, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !3
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ip = trunc i64 %i.ic to i16
  %i.iq = add nsw i32 %i.fm, 1                    ; 2 uses
  %i.ir = sext i32 %i.fm to i64
  %i.is = getelementptr inbounds [2 x i8], ptr %i.fc, i64 %i.ir
  store i16 %i.ip, ptr %i.is, align 2, !tbaa !37
  %i.it = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.ex
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bi
  %i.iv = load i64, ptr %i.ex, align 8, !tbaa !16
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.not17.i.i = icmp slt i32 %i.iq, %i.fd
  br i1 %.not17.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.i.i, label %.loopexit187.loopexit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre.i121.i = load ptr, ptr %2, align 8, !tbaa !7
  br label %bb.bl

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i
  %i.ix = load i64, ptr %i.ex, align 8, !tbaa !16
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.iy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %.body

bb.bj:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115StripEndNewLineEPc.exit.i.i
  %.not.i.i = icmp eq i8 %i.ho, 0
  br i1 %.not.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iz = load i64, ptr %i.q, align 8, !tbaa !13
  %i.ja = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #26
  %i.jb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef %i.iz, ptr noundef nonnull %i.e, i64 noundef %i.ja)
          to label %.loopexit.i unwind label %.loopexit.split-lp ; 0 uses

bb.bl:                                            ; preds = %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.i.i
  %i.jc = phi ptr [ %.pre.i121.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.i.i ], [ %i.ga, %bb.bj ]
  %.1.i.i = phi i32 [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.i.i ], [ %i.fm, %bb.bj ]
  %i.jd = getelementptr i8, ptr %i.jc, i64 -24
  %i.je = load i64, ptr %i.jd, align 8            ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %2, i64 %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !42
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %.lr.ph.i.i, label %.loopexit187.loopexit.i, !llvm.loop !70

.loopexit.i:                                      ; preds = %.noexc53, %bb.bk
  %.014.i.i = phi i32 [ 4, %bb.bk ], [ 1, %.noexc53 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %.not.i122.i = icmp eq ptr %i.ev, null
  br i1 %.not.i122.i, label %.thread, label %bb.bm

bb.bm:                                            ; preds = %.loopexit.i
  %i.jj = load ptr, ptr %i.ew, align 8, !tbaa !31 ; 2 uses
  %.not.i.i123.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i123.i, label %.thread.sink.split, label %.preheader13.i.i.i

.preheader13.i.i.i:                               ; preds = %bb.bm
  %i.jk = load i32, ptr %i.ev, align 8, !tbaa !71 ; 2 uses
  %i.jl = icmp sgt i32 %i.jk, 0
  br i1 %i.jl, label %.lr.ph18.i.i.i, label %.thread.sink.split.sink.split

._crit_edge19.loopexit.i.i.i:                     ; preds = %bb.bo
  %.pre25.i.i.i = load ptr, ptr %i.ew, align 8, !tbaa !31
  br label %.thread.sink.split.sink.split

.lr.ph18.i.i.i:                                   ; preds = %.preheader13.i.i.i, %bb.bo
  %i.jm = phi i32 [ %i.jv, %bb.bo ], [ %i.jk, %.preheader13.i.i.i ] ; 2 uses
  %indvars.iv22.i.i.i = phi i64 [ %indvars.iv.next23.i.i.i, %bb.bo ], [ 0, %.preheader13.i.i.i ] ; 6 uses
  %i.jn = load ptr, ptr %i.ew, align 8, !tbaa !31 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv22.i.i.i
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !35 ; 3 uses
  %.not12.i.i.i = icmp eq ptr %i.jp, null
  br i1 %.not12.i.i.i, label %bb.bo, label %.preheader.i.i124.i

.preheader.i.i124.i:                              ; preds = %.lr.ph18.i.i.i
  %.not20.i.i.i = icmp eq i64 %indvars.iv22.i.i.i, 0
  br i1 %.not20.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i125.i

.lr.ph.i.i125.i:                                  ; preds = %.preheader.i.i124.i, %bb.bn
  %indvars.iv.i.i126.i = phi i64 [ %indvars.iv.next.i.i127.i, %bb.bn ], [ 0, %.preheader.i.i124.i ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv.i.i126.i
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !35
  %i.js = icmp eq ptr %i.jr, %i.jp
  br i1 %i.js, label %._crit_edge.i.i128.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i125.i
  %indvars.iv.next.i.i127.i = add nuw nsw i64 %indvars.iv.i.i126.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i127.i, %indvars.iv22.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i128.i, label %.lr.ph.i.i125.i, !llvm.loop !72

._crit_edge.i.i128.i:                             ; preds = %bb.bn, %.lr.ph.i.i125.i
  %.0.lcssa.ph.in.i.i.i = phi i64 [ %indvars.iv22.i.i.i, %bb.bn ], [ %indvars.iv.i.i126.i, %.lr.ph.i.i125.i ]
  %i.jt = and i64 %.0.lcssa.ph.in.i.i.i, 4294967295
  %i.ju = icmp eq i64 %i.jt, %indvars.iv22.i.i.i
  br i1 %i.ju, label %._crit_edge.thread.i.i.i, label %bb.bo

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i128.i, %.preheader.i.i124.i
  call void @free(ptr noundef %i.jp) #26
  %.pre.i.i.i = load i32, ptr %i.ev, align 8, !tbaa !71
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i128.i, %.lr.ph18.i.i.i
  %i.jv = phi i32 [ %i.jm, %._crit_edge.i.i128.i ], [ %.pre.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.jm, %.lr.ph18.i.i.i ] ; 2 uses
  %indvars.iv.next23.i.i.i = add nuw nsw i64 %indvars.iv22.i.i.i, 1 ; 2 uses
  %i.jw = sext i32 %i.jv to i64
  %i.jx = icmp slt i64 %indvars.iv.next23.i.i.i, %i.jw
  br i1 %i.jx, label %.lr.ph18.i.i.i, label %._crit_edge19.loopexit.i.i.i, !llvm.loop !73

.loopexit187.loopexit.i:                          ; preds = %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre.i47 = load i32, ptr %i.j, align 4, !tbaa !3
  br label %.loopexit187.i

.loopexit187.i:                                   ; preds = %.loopexit187.loopexit.i, %bb.aj
  %i.jy = phi i32 [ %.pre.i47, %.loopexit187.loopexit.i ], [ %i.ez, %bb.aj ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jz = sext i32 %i.jy to i64
  %i.ka = icmp slt i64 %indvars.iv.next.i, %i.jz
  br i1 %i.ka, label %bb.aj, label %._crit_edge.i, !llvm.loop !74

._crit_edge.i:                                    ; preds = %.loopexit187.i
  %i.kb = icmp eq i32 %i.jy, 1
  br i1 %i.kb, label %bb.bp, label %._crit_edge.thread.i

bb.bp:                                            ; preds = %._crit_edge.i
  store i32 3, ptr %i.ev, align 8, !tbaa !71
  %i.kc = load ptr, ptr %i.ew, align 8, !tbaa !31 ; 3 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !35 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !35
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  store ptr %i.kd, ptr %i.kf, align 8, !tbaa !35
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.bp, %._crit_edge.i, %bb.ai
  %.467.lcssa280.i = phi i32 [ 0, %._crit_edge.i ], [ 0, %bb.bp ], [ %.366.i, %bb.ai ]
  %i.kg = icmp eq i32 %.260.i, 0
  br i1 %i.kg, label %bb.bq, label %.thread182.i

bb.bq:                                            ; preds = %._crit_edge.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.kh = load ptr, ptr %16, align 8, !tbaa !26   ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.ki, ptr %12, align 8, !tbaa !9
  %i.kj = icmp eq ptr %i.kh, null
  br i1 %i.kj, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #29
          to label %.noexc131.i unwind label %bb.ci

.noexc131.i:                                      ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.kk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kh) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.kk, ptr %i.b, align 8, !tbaa !29
  %i.kl = icmp ugt i64 %i.kk, 15
  br i1 %i.kl, label %.noexc.i130.i, label %._crit_edge.i.i129.i

.noexc.i130.i:                                    ; preds = %bb.bs
  %i.km = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc132.i unwind label %bb.ci ; 2 uses

.noexc132.i:                                      ; preds = %.noexc.i130.i
  store ptr %i.km, ptr %12, align 8, !tbaa !26
  %i.kn = load i64, ptr %i.b, align 8, !tbaa !29
  store i64 %i.kn, ptr %i.ki, align 8, !tbaa !16
  br label %._crit_edge.i.i129.i

._crit_edge.i.i129.i:                             ; preds = %.noexc132.i, %bb.bs
  %i.ko = phi ptr [ %i.km, %.noexc132.i ], [ %i.ki, %bb.bs ] ; 2 uses
  switch i64 %i.kk, label %bb.bu [
    i64 1, label %bb.bt
    i64 0, label %bb.bv
  ]

bb.bt:                                            ; preds = %._crit_edge.i.i129.i
  %i.kp = load i8, ptr %i.kh, align 1, !tbaa !16
  store i8 %i.kp, ptr %i.ko, align 1, !tbaa !16
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge.i.i129.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ko, ptr nonnull align 1 %i.kh, i64 %i.kk, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i.i129.i
  %i.kq = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.kq, ptr %i.kr, align 8, !tbaa !13
  %i.ks = load ptr, ptr %12, align 8, !tbaa !26
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kq
  store i8 0, ptr %i.kt, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.val.i = load ptr, ptr %12, align 8            ; 3 uses
  %.val88.i = load i64, ptr %i.kr, align 8, !tbaa !13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ku = icmp eq i64 %.val88.i, 0
  br i1 %i.ku, label %bb.ch, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.kv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.kv, ptr %6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %.val88.i, ptr %i.a, align 8, !tbaa !29
  %i.kw = icmp ugt i64 %.val88.i, 15
  br i1 %i.kw, label %._crit_edge.i.i.thread.i.i, label %._crit_edge.i.i.i134.i

._crit_edge.i.i.thread.i.i:                       ; preds = %bb.bw
  %i.kx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc139.i unwind label %bb.cj ; 2 uses

.noexc139.i:                                      ; preds = %._crit_edge.i.i.thread.i.i
  store ptr %i.kx, ptr %6, align 8, !tbaa !26
  %i.ky = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.ky, ptr %i.kv, align 8, !tbaa !16
  br label %bb.by

._crit_edge.i.i.i134.i:                           ; preds = %bb.bw
  %cond.i.i = icmp eq i64 %.val88.i, 1
  br i1 %cond.i.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %._crit_edge.i.i.i134.i
  %i.kz = load i8, ptr %.val.i, align 1, !tbaa !16
  store i8 %i.kz, ptr %i.kv, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.by:                                            ; preds = %._crit_edge.i.i.i134.i, %.noexc139.i
  %i.la = phi ptr [ %i.kx, %.noexc139.i ], [ %i.kv, %._crit_edge.i.i.i134.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.la, ptr readonly align 1 %.val.i, i64 %.val88.i, i1 false)
  %.pre235.i = load i64, ptr %i.a, align 8, !tbaa !29
  %.pre236.i = load ptr, ptr %6, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.by, %bb.bx
  %i.lb = phi ptr [ %.pre236.i, %bb.by ], [ %i.kv, %bb.bx ]
  %i.lc = phi i64 [ %.pre235.i, %bb.by ], [ 1, %bb.bx ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 %i.lc, ptr %i.ld, align 8, !tbaa !13
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.lc
  store i8 0, ptr %i.le, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.lf = load ptr, ptr %6, align 8, !tbaa !26, !noalias !75 ; 7 uses
  %i.lg = load i64, ptr %i.ld, align 8, !tbaa !13, !noalias !75 ; 9 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lg
  %.not6.i.i.i.i = icmp samesign eq i64 %i.lg, 0
  br i1 %.not6.i.i.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %min.iters.check = icmp ult i64 %i.lg, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check296 = icmp ult i64 %i.lg, 32
  br i1 %min.iters.check296, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.lg, 24
  %n.vec = and i64 %i.lg, -32                     ; 4 uses
  %i.li = getelementptr i8, ptr %i.lf, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.lf, i64 %index ; 3 uses
  %i.lj = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !16, !noalias !75 ; 3 uses
  %wide.load297 = load <16 x i8>, ptr %i.lj, align 1, !tbaa !16, !noalias !75 ; 3 uses
  %i.lk = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ll = add <16 x i8> %wide.load297, splat (i8 -65)
  %i.lm = icmp ult <16 x i8> %i.lk, splat (i8 26)
  %i.ln = icmp ult <16 x i8> %i.ll, splat (i8 26)
  %i.lo = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.lp = or disjoint <16 x i8> %wide.load297, splat (i8 32)
  %i.lq = select <16 x i1> %i.lm, <16 x i8> %i.lo, <16 x i8> %wide.load
  %i.lr = select <16 x i1> %i.ln, <16 x i8> %i.lp, <16 x i8> %wide.load297
  store <16 x i8> %i.lq, ptr %next.gep, align 1, !tbaa !16, !noalias !75
  store <16 x i8> %i.lr, ptr %i.lj, align 1, !tbaa !16, !noalias !75
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ls = icmp eq i64 %index.next, %n.vec
  br i1 %i.ls, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lg, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec299 = and i64 %i.lg, -8                   ; 3 uses
  %i.lt = getelementptr i8, ptr %i.lf, i64 %n.vec299
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index300 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next303, %vec.epilog.vector.body ] ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.lf, i64 %index300 ; 2 uses
  %wide.load302 = load <8 x i8>, ptr %next.gep301, align 1, !tbaa !16, !noalias !75 ; 3 uses
  %i.lu = add <8 x i8> %wide.load302, splat (i8 -65)
  %i.lv = icmp ult <8 x i8> %i.lu, splat (i8 26)
  %i.lw = or disjoint <8 x i8> %wide.load302, splat (i8 32)
  %i.lx = select <8 x i1> %i.lv, <8 x i8> %i.lw, <8 x i8> %wide.load302
  store <8 x i8> %i.lx, ptr %next.gep301, align 1, !tbaa !16, !noalias !75
  %index.next303 = add nuw i64 %index300, 8       ; 2 uses
  %i.ly = icmp eq i64 %index.next303, %n.vec299
  br i1 %i.ly, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n304 = icmp eq i64 %i.lg, %n.vec299
  br i1 %cmp.n304, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.i.i.ph = phi ptr [ %i.lf, %iter.check ], [ %i.li, %vec.epilog.iter.check ], [ %i.lt, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
end_hunk_1
