inline.NumInlined: 308
inline.NumDeleted: 167
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.absl::lts_20250512::NoDestructor" = type { %"class.absl::lts_20250512::NoDestructor<absl::lts_20250512::Mutex>::PlacementImpl" }
%"class.absl::lts_20250512::NoDestructor<absl::lts_20250512::Mutex>::PlacementImpl" = type { [8 x i8] }
%"struct.absl::lts_20250512::FlagsUsageConfig" = type { %"class.std::function", %"class.std::function", %"class.std::function", %"class.std::function.0", %"class.std::function.2" }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::function.0" = type { %"class.std::_Function_base", ptr }
%"class.std::function.2" = type { %"class.std::_Function_base", ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN4absl12lts_2025051216FlagsUsageConfigC2ERKS1_ = comdat any

$_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_ = comdat any

$_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E9_M_invokeERKSt9_Any_data = comdat any

$_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E9_M_invokeERKSt9_Any_dataOS7_ = comdat any

$_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation = comdat any

$_ZTIPFbSt17basic_string_viewIcSt11char_traitsIcEEE = comdat any

$_ZTSPFbSt17basic_string_viewIcSt11char_traitsIcEEE = comdat any

$_ZTIFbSt17basic_string_viewIcSt11char_traitsIcEEE = comdat any

$_ZTSFbSt17basic_string_viewIcSt11char_traitsIcEEE = comdat any

$_ZTIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE = comdat any

$_ZTSPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE = comdat any

$_ZTIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE = comdat any

$_ZTSFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE = comdat any

$_ZTIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE = comdat any

$_ZTSPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE = comdat any

$_ZTIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE = comdat any

$_ZTSFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE = comdat any

@_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_119custom_usage_configE = internal unnamed_addr global ptr null, align 8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@_ZZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex = internal global %"class.absl::lts_20250512::NoDestructor" zeroinitializer, align 8
@_ZGVZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex = internal global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTIPFbSt17basic_string_viewIcSt11char_traitsIcEEE = linkonce_odr constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSPFbSt17basic_string_viewIcSt11char_traitsIcEEE, i32 0, ptr @_ZTIFbSt17basic_string_viewIcSt11char_traitsIcEEE }, comdat, align 8
@_ZTVN10__cxxabiv119__pointer_type_infoE = external global [0 x ptr]
@_ZTSPFbSt17basic_string_viewIcSt11char_traitsIcEEE = linkonce_odr constant [47 x i8] c"PFbSt17basic_string_viewIcSt11char_traitsIcEEE\00", comdat, align 1
@_ZTIFbSt17basic_string_viewIcSt11char_traitsIcEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__function_type_infoE, i64 2), ptr @_ZTSFbSt17basic_string_viewIcSt11char_traitsIcEEE }, comdat, align 8
@_ZTVN10__cxxabiv120__function_type_infoE = external global [0 x ptr]
@_ZTSFbSt17basic_string_viewIcSt11char_traitsIcEEE = linkonce_odr constant [46 x i8] c"FbSt17basic_string_viewIcSt11char_traitsIcEEE\00", comdat, align 1
@_ZTIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE = linkonce_odr constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE, i32 0, ptr @_ZTIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE }, comdat, align 8
@_ZTSPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE = linkonce_odr constant [57 x i8] c"PFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE\00", comdat, align 1
@_ZTIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__function_type_infoE, i64 2), ptr @_ZTSFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE }, comdat, align 8
@_ZTSFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE = linkonce_odr constant [56 x i8] c"FNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE\00", comdat, align 1
@_ZTIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE = linkonce_odr constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE, i32 0, ptr @_ZTIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE }, comdat, align 8
@_ZTSPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE = linkonce_odr constant [83 x i8] c"PFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE\00", comdat, align 1
@_ZTIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__function_type_infoE, i64 2), ptr @_ZTSFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE }, comdat, align 8
@_ZTSFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE = linkonce_odr constant [82 x i8] c"FNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE\00", comdat, align 1

; Function Attrs: mustprogress uwtable
define weak void @AbslInternalReportFatalUsageError_lts_20250512(i64 %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051214flags_internal14GetUsageConfigEv(ptr dead_on_unwind noalias writable sret(%"struct.absl::lts_20250512::FlagsUsageConfig") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex) #13
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr @_ZZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex, align 8, !tbaa !8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex) #13
  br label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit

_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex)
  %i.d = load ptr, ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_119custom_usage_configE, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIPS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit
  invoke void @_ZN4absl12lts_2025051216FlagsUsageConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.d)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #14
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.e
  resume { ptr, i32 } %i.e

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIPS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit: ; preds = %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit
  store ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122ContainsHelpshortFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <8 x i8> zeroinitializer, ptr %.sroa.4.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_124ContainsHelppackageFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.j, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <8 x i8> zeroinitializer, ptr %.sroa.425.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.k, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.l, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_124ContainsHelppackageFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.m, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <8 x i8> zeroinitializer, ptr %.sroa.427.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.o, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_113VersionStringB5cxx11Ev, ptr %i.p, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <8 x i8> zeroinitializer, ptr %.sroa.429.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.q, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E9_M_invokeERKSt9_Any_data, ptr %i.r, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_117NormalizeFilenameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.s, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <8 x i8> zeroinitializer, ptr %.sroa.431.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.t, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E9_M_invokeERKSt9_Any_dataOS7_, ptr %i.u, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIPS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051214flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit18 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #14
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit18:      ; preds = %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051216FlagsUsageConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !14
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !14
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #14
  unreachable

common.resume:                                    ; preds = %bb.ag, %.body, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %.pn.pn.pn, %.body ], [ %.pn.pn.pn, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit: ; preds = %bb.a, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.not.i13 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i13, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit16, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 2)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.q = load <2 x ptr>, ptr %i.m, align 8, !tbaa !14
  store <2 x ptr> %i.q, ptr %i.l, align 8, !tbaa !14
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit16

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 3)
          to label %.body unwind label %bb.k      ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #14
  unreachable

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit16: ; preds = %bb.h, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.not.i17 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i17, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit22, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef 2)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ac = load <2 x ptr>, ptr %i.y, align 8, !tbaa !14
  store <2 x ptr> %i.ac, ptr %i.x, align 8, !tbaa !14
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit22

bb.n:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !15  ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i18, label %.body20, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 3)
          to label %.body20 unwind label %bb.p    ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #14
  unreachable

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit22: ; preds = %bb.m, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.not.i23 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i23, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit22
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.an = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 2)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ao = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !14
  store <2 x ptr> %i.ao, ptr %i.aj, align 8, !tbaa !14
  br label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit

bb.s:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !15 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i24, label %.body26, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i32 noundef 3)
          to label %.body26 unwind label %bb.u    ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #14
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit: ; preds = %bb.r, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit22
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.not.i28 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.not.i28, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i32 noundef 2)
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.ba = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !14
  store <2 x ptr> %i.ba, ptr %i.av, align 8, !tbaa !14
  br label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit

bb.x:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !15 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.bc, null
end_hunk_0
