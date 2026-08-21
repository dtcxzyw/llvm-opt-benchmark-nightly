inline.NumInlined: 309
inline.NumDeleted: 168
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.absl::lts_20260526::NoDestructor" = type { %"class.absl::lts_20260526::NoDestructor<absl::lts_20260526::Mutex>::PlacementImpl" }
%"class.absl::lts_20260526::NoDestructor<absl::lts_20260526::Mutex>::PlacementImpl" = type { [8 x i8] }
%"struct.absl::lts_20260526::FlagsUsageConfig" = type { %"class.std::function", %"class.std::function", %"class.std::function", %"class.std::function.0", %"class.std::function.2" }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::function.0" = type { %"class.std::_Function_base", ptr }
%"class.std::function.2" = type { %"class.std::_Function_base", ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN4absl12lts_2026052616FlagsUsageConfigC2ERKS1_ = comdat any

$_ZN4absl12lts_2026052616FlagsUsageConfigaSERKS1_ = comdat any

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

@_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119custom_usage_configE = internal unnamed_addr global ptr null, align 8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex = internal global %"class.absl::lts_20260526::NoDestructor" zeroinitializer, align 8
@_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex = internal global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTIPFbSt17basic_string_viewIcSt11char_traitsIcEEE = linkonce_odr dso_local constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSPFbSt17basic_string_viewIcSt11char_traitsIcEEE, i32 0, ptr @_ZTIFbSt17basic_string_viewIcSt11char_traitsIcEEE }, comdat, align 8
@_ZTVN10__cxxabiv119__pointer_type_infoE = external global [0 x ptr]
@_ZTSPFbSt17basic_string_viewIcSt11char_traitsIcEEE = linkonce_odr dso_local constant [47 x i8] c"PFbSt17basic_string_viewIcSt11char_traitsIcEEE\00", comdat, align 1
@_ZTIFbSt17basic_string_viewIcSt11char_traitsIcEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__function_type_infoE, i64 2), ptr @_ZTSFbSt17basic_string_viewIcSt11char_traitsIcEEE }, comdat, align 8
@_ZTVN10__cxxabiv120__function_type_infoE = external global [0 x ptr]
@_ZTSFbSt17basic_string_viewIcSt11char_traitsIcEEE = linkonce_odr dso_local constant [46 x i8] c"FbSt17basic_string_viewIcSt11char_traitsIcEEE\00", comdat, align 1
@_ZTIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE = linkonce_odr dso_local constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE, i32 0, ptr @_ZTIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE }, comdat, align 8
@_ZTSPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE = linkonce_odr dso_local constant [57 x i8] c"PFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE\00", comdat, align 1
@_ZTIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__function_type_infoE, i64 2), ptr @_ZTSFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE }, comdat, align 8
@_ZTSFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE = linkonce_odr dso_local constant [56 x i8] c"FNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE\00", comdat, align 1
@_ZTIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE = linkonce_odr dso_local constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE, i32 0, ptr @_ZTIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE }, comdat, align 8
@_ZTSPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE = linkonce_odr dso_local constant [83 x i8] c"PFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE\00", comdat, align 1
@_ZTIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__function_type_infoE, i64 2), ptr @_ZTSFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE }, comdat, align 8
@_ZTSFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE = linkonce_odr dso_local constant [82 x i8] c"FNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE\00", comdat, align 1

; Function Attrs: mustprogress uwtable
define weak dso_local void @AbslInternalReportFatalUsageError_lts_20260526(i64 %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052614flags_internal14GetUsageConfigEv(ptr dead_on_unwind noalias writable sret(%"struct.absl::lts_20260526::FlagsUsageConfig") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex) #13
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex, align 8, !tbaa !10
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex) #13
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex)
  %i.d = load ptr, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119custom_usage_configE, align 8, !tbaa !13 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIPS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit
  invoke void @_ZN4absl12lts_2026052616FlagsUsageConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.d)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #14
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit:        ; preds = %bb.e
  resume { ptr, i32 } %i.e

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIPS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit: ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit
  store ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122ContainsHelpshortFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_124ContainsHelppackageFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.j, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.425.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_124ContainsHelppackageFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.m, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %.sroa.427.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.n, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113VersionStringB5cxx11Ev, ptr %i.p, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %.sroa.429.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E9_M_invokeERKSt9_Any_data, ptr %i.r, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_117NormalizeFilenameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.s, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %.sroa.431.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.t, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E9_M_invokeERKSt9_Any_dataOS7_, ptr %i.u, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIPS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit18 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #14
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit18:      ; preds = %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052616FlagsUsageConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !16
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !16
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.not.i13 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i13, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit16, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 2)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.q = load <2 x ptr>, ptr %i.m, align 8, !tbaa !16
  store <2 x ptr> %i.q, ptr %i.l, align 8, !tbaa !16
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit16

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !17   ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.not.i17 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i17, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit22, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef 2)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ac = load <2 x ptr>, ptr %i.y, align 8, !tbaa !16
  store <2 x ptr> %i.ac, ptr %i.x, align 8, !tbaa !16
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit22

bb.n:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !17  ; 2 uses
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
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.not.i23 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i23, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit22
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.an = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 2)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ao = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !16
  store <2 x ptr> %i.ao, ptr %i.aj, align 8, !tbaa !16
  br label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit

bb.s:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
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
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.not.i28 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.not.i28, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i32 noundef 2)
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.ba = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !16
  store <2 x ptr> %i.ba, ptr %i.av, align 8, !tbaa !16
  br label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit

bb.x:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !17 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i29, label %.body31, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i32 noundef 3)
          to label %.body31 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #14
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit: ; preds = %bb.w, %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit
  ret void

.body31:                                          ; preds = %bb.x, %bb.y
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %.body26, label %bb.aa

bb.aa:                                            ; preds = %.body31
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i32 noundef 3)
          to label %.body26 unwind label %bb.ab   ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #14
  unreachable

.body26:                                          ; preds = %bb.aa, %.body31, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %i.bb, %bb.aa ], [ %i.ap, %bb.t ], [ %i.bb, %.body31 ] ; 2 uses
  %i.bk = load ptr, ptr %i.x, align 8, !tbaa !17  ; 2 uses
  %.not.i33 = icmp eq ptr %i.bk, null
  br i1 %.not.i33, label %.body20, label %bb.ac

bb.ac:                                            ; preds = %.body26
  %i.bl = invoke noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 3)
          to label %.body20 unwind label %bb.ad   ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #14
  unreachable

.body20:                                          ; preds = %bb.ac, %.body26, %bb.o, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.n ], [ %.pn, %bb.ac ], [ %i.ad, %bb.o ], [ %.pn, %.body26 ] ; 2 uses
  %i.bo = load ptr, ptr %i.l, align 8, !tbaa !17  ; 2 uses
  %.not.i35 = icmp eq ptr %i.bo, null
  br i1 %.not.i35, label %.body, label %bb.ae

bb.ae:                                            ; preds = %.body20
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 3)
          to label %.body unwind label %bb.af     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #14
  unreachable

.body:                                            ; preds = %bb.ae, %.body20, %bb.j, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.i ], [ %.pn.pn, %bb.ae ], [ %i.r, %bb.j ], [ %.pn.pn, %.body20 ] ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %.not.i37 = icmp eq ptr %i.bs, null
  br i1 %.not.i37, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %.body
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %common.resume unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #14
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122ContainsHelpshortFlagsESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052614flags_internal8BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.a, %bb.b
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i.i.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19
  switch i8 %i.b, label %bb.b [
    i8 92, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i
    i8 47, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i
  ]

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.not17.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not17.i.i.i, label %_ZN4absl12lts_2026052614flags_internal8BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !20

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %3 = icmp ugt i64 %.1.i.i.in.i, %0
  br i1 %3, label %4, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

4:                                                ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i64 noundef %.1.i.i.in.i, i64 noundef %0) #15
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEPKcm.exit.i
  %i.c = sub nuw i64 %0, %.1.i.i.in.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i.i.in.i
  br label %_ZN4absl12lts_2026052614flags_internal8BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052614flags_internal8BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.b, %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %.pn9.i = phi i64 [ %i.c, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ 0, %bb.a ], [ %0, %bb.b ] ; 3 uses
  %.pn7.i = phi ptr [ %i.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %1, %bb.a ], [ %1, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZN4absl12lts_2026052614flags_internal26ShortProgramInvocationNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2)
  %i.e = load ptr, ptr %2, align 8, !tbaa !22     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26   ; 7 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal8BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.i = icmp ult i64 %.pn9.i, %i.g
  br i1 %i.i, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit19, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %bb.c
  %bcmp.i.i.i = call i32 @bcmp(ptr %.pn7.i, ptr %i.e, i64 %i.g)
  %i.j = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit19

bb.d:                                             ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %_ZN4absl12lts_2026052614flags_internal8BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.pn7.i, i64 %i.g ; 5 uses
  %i.l = sub i64 %.pn9.i, %i.g
  %i.m = icmp eq i64 %.pn9.i, %i.g
  br i1 %i.m, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit19, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %bb.d
  %lhsc = load i8, ptr %i.k, align 1
  %i.n = icmp eq i8 %lhsc, 46
  br i1 %i.n, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit19, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread32

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread32: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  %i.o = icmp ult i64 %i.l, 6
  br i1 %i.o, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit19, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit15

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit15: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread32
  %i.p = load i32, ptr %i.k, align 1
  %i.q = xor i32 %i.p, 1767992621
  %i.r = getelementptr i8, ptr %i.k, i64 4
  %i.s = load i16, ptr %i.r, align 1
  %i.t = zext i16 %i.s to i32
  %i.u = xor i32 %i.t, 11886
  %i.v = or i32 %i.q, %i.u
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit19, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i16

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i16: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit15
  %i.z = load i32, ptr %i.k, align 1
  %i.aa = xor i32 %i.z, 1767992671
  %i.ab = getelementptr i8, ptr %i.k, i64 4
  %i.ac = load i16, ptr %i.ab, align 1
  %i.ad = zext i16 %i.ac to i32
  %i.ae = xor i32 %i.ad, 11886
  %i.af = or i32 %i.aa, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit19

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit19: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread32, %bb.d, %bb.c, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i16, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit15
  %.0 = phi i1 [ %i.ai, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i16 ], [ true, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit15 ], [ true, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit ], [ false, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ false, %bb.c ], [ false, %bb.d ], [ false, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread32 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.e, %i.aj
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit19
  %i.al = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.al)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit19
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !19
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.an) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_124ContainsHelppackageFlagsESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122ContainsHelpshortFlagsESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113VersionStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4absl12lts_2026052614flags_internal26ShortProgramInvocationNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %i.c = icmp eq i64 %i.b, 4611686018427387903
  br i1 %i.c, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #15
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !19
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_117NormalizeFilenameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(none) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a, %bb.b
  %.0710.i.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.0710.i.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !19
  switch i8 %i.c, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit [
    i8 92, label %bb.b
    i8 47, label %bb.b
  ]

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.d = add nuw i64 %.0710.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.d, %1
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !27

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.0710.i.i ; 2 uses
  %i.f = icmp eq i64 %.0710.i.i, -1
  br i1 %i.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %bb.c

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread: ; preds = %bb.b, %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !26
  store i8 0, ptr %i.g, align 8, !tbaa !19
  br label %bb.g

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit
  %i.i = sub i64 %1, %.0710.i.i                   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.i, ptr %i.a, align 8, !tbaa !29
  %i.k = icmp ugt i64 %i.i, 15
  br i1 %i.k, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !22
  %i.m = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.m, ptr %i.j, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.n = phi ptr [ %i.l, %.noexc.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %i.e, align 1, !tbaa !19
  store i8 %i.o, ptr %i.n, align 1, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.e, i64 %i.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !26
  %i.r = load ptr, ptr %0, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052614flags_internal16ReportUsageErrorESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %0, ptr %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 7) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %1, i64 noundef %0) ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i8, ptr %i.i, align 8, !tbaa !48
  %.not.i1.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 67
  %i.l = load i8, ptr %i.k, align 1, !tbaa !19
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.h)
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(570) %i.h, i8 noundef signext 10), !inline_history !54
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.l, %bb.c ], [ %i.p, %bb.d ]
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef signext %.0.i.i.i)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) ; 0 uses
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void @AbslInternalReportFatalUsageError_lts_20260526(i64 %0, ptr %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052619SetFlagsUsageConfigENS0_16FlagsUsageConfigE(ptr noundef align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex) #13
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex, align 8, !tbaa !10
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex) #13
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %.not.i.i.not = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit, label %bb.d

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit: ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122ContainsHelpshortFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %0, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.f, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %.not.i.i5.not = icmp eq ptr %i.h, null
  br i1 %.not.i.i5.not, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit8, label %bb.e

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit8: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_124ContainsHelppackageFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.i, align 8
  store i64 0, ptr %.sroa.525.0..sroa_idx, align 8, !tbaa !19
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.g, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.j, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit8, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %.not.i.i9.not = icmp eq ptr %i.l, null
  br i1 %.not.i.i9.not, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit12, label %bb.f

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit12: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_124ContainsHelppackageFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.m, align 8
  store i64 0, ptr %.sroa.531.0..sroa_idx, align 8, !tbaa !19
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.k, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.n, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit12, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %.not.i.i13.not = icmp eq ptr %i.p, null
  br i1 %.not.i.i13.not, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSIRS6_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS7_E4typeEOSB_.exit, label %bb.g

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSIRS6_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS7_E4typeEOSB_.exit: ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113VersionStringB5cxx11Ev, ptr %i.q, align 8
  store i64 0, ptr %.sroa.537.0..sroa_idx, align 8, !tbaa !19
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.o, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E9_M_invokeERKSt9_Any_data, ptr %i.r, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSIRS6_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS7_E4typeEOSB_.exit, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %.not.i.i16.not = icmp eq ptr %i.t, null
  br i1 %.not.i.i16.not, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIRS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit, label %bb.h

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIRS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit: ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_117NormalizeFilenameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.u, align 8
  store i64 0, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.s, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E9_M_invokeERKSt9_Any_dataOS7_, ptr %i.v, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIRS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit, %bb.g
  %i.w = load ptr, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119custom_usage_configE, align 8, !tbaa !13 ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN4absl12lts_2026052616FlagsUsageConfigaSERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.w, ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.o unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %bb.h
  %i.z = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #17
          to label %bb.l unwind label %bb.j       ; 3 uses

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4absl12lts_2026052616FlagsUsageConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.z, ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.z, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119custom_usage_configE, align 8, !tbaa !13
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 160) #16
  br label %bb.q

bb.o:                                             ; preds = %bb.i, %bb.m
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #14
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit:        ; preds = %bb.o
  ret void

bb.q:                                             ; preds = %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.aa, %bb.n ]
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_122CustomUsageConfigMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit19 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #14
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit19:      ; preds = %bb.q
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(160) ptr @_ZN4absl12lts_2026052616FlagsUsageConfigaSERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.2", align 16  ; 11 uses
  %3 = alloca %"class.std::function.0", align 16  ; 11 uses
  %4 = alloca %"class.std::function", align 16    ; 11 uses
  %5 = alloca %"class.std::function", align 16    ; 11 uses
  %6 = alloca %"class.std::function", align 16    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !16
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !17  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #14
  unreachable

common.resume:                                    ; preds = %bb.af, %bb.ag, %bb.y, %bb.z, %bb.r, %bb.s, %bb.k, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.y ], [ %i.f, %bb.d ], [ %i.y, %bb.k ], [ %i.ar, %bb.r ], [ %i.f, %bb.e ], [ %i.y, %bb.l ], [ %i.ar, %bb.s ], [ %i.bk, %bb.z ], [ %i.cd, %bb.ag ], [ %i.cd, %bb.af ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i: ; preds = %bb.c, %bb.a
  %i.k = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.e, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !55
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %0, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !16
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  store <2 x ptr> %i.m, ptr %i.a, align 16, !tbaa !16
  store <2 x ptr> %i.k, ptr %i.l, align 8, !tbaa !16
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #14
  unreachable

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit: ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.not.i.i7 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i7, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i10, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 noundef 2)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.x = load <2 x ptr>, ptr %i.t, align 8, !tbaa !16
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i10

bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.s, align 16, !tbaa !17  ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i8, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %common.resume unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #14
  unreachable

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i10: ; preds = %bb.j, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit
  %i.ad = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit ], [ %i.x, %bb.j ]
  %.sroa.0.i.i.i6.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !55
  store <2 x i64> %.sroa.0.i.i.i6.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !16
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !16 ; 2 uses
  store <2 x ptr> %i.af, ptr %i.s, align 16, !tbaa !16
  store <2 x ptr> %i.ad, ptr %i.ae, align 8, !tbaa !16
  %.not.i.i11 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i11, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12, label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i10
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #14
  unreachable

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12: ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i10, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.not.i.i14 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.not.i.i14, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i17, label %bb.p

bb.p:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i32 noundef 2)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.aq = load <2 x ptr>, ptr %i.am, align 8, !tbaa !16
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i17

bb.r:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.al, align 16, !tbaa !17 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i15, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #14
  unreachable

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i17: ; preds = %bb.q, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12
  %i.aw = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12 ], [ %i.aq, %bb.q ]
  %.sroa.0.i.i.i13.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 16, i1 false), !tbaa.struct !55
  store <2 x i64> %.sroa.0.i.i.i13.sroa.0.0.copyload, ptr %i.ak, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !16
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !16 ; 2 uses
  store <2 x ptr> %i.ay, ptr %i.al, align 16, !tbaa !16
  store <2 x ptr> %i.aw, ptr %i.ax, align 8, !tbaa !16
  %.not.i.i18 = icmp eq ptr %i.az, null
  br i1 %.not.i.i18, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19, label %bb.u

bb.u:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i17
  %i.ba = invoke noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19 unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #14
  unreachable

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19: ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i17, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.not.i.i21 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.not.i.i21, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bi = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i32 noundef 2)
          to label %bb.x unwind label %bb.y       ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.bj = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !16
  br label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i

bb.y:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %i.be, align 16, !tbaa !17 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i22, label %common.resume, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #14
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i: ; preds = %bb.x, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19
  %i.bp = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19 ], [ %i.bj, %bb.x ]
  %.sroa.0.i.i.i20.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 16, i1 false), !tbaa.struct !55
  store <2 x i64> %.sroa.0.i.i.i20.sroa.0.0.copyload, ptr %i.bd, align 8, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.br = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !16
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !16 ; 2 uses
  store <2 x ptr> %i.br, ptr %i.be, align 16, !tbaa !16
  store <2 x ptr> %i.bp, ptr %i.bq, align 8, !tbaa !16
  %.not.i.i24 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i24, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #14
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit: ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.not.i.i26 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.not.i.i26, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cb = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i32 noundef 2)
          to label %bb.ae unwind label %bb.af     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cc = load <2 x ptr>, ptr %i.by, align 8, !tbaa !16
  br label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %i.bx, align 16, !tbaa !17 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i27, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #14
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit.i: ; preds = %bb.ae, %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit
  %i.ci = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit ], [ %i.cc, %bb.ae ]
  %.sroa.0.i.i.i25.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 16, i1 false), !tbaa.struct !55
  store <2 x i64> %.sroa.0.i.i.i25.sroa.0.0.copyload, ptr %i.bw, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ck = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !16
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !16 ; 2 uses
  store <2 x ptr> %i.ck, ptr %i.bx, align 16, !tbaa !16
  store <2 x ptr> %i.ci, ptr %i.cj, align 8, !tbaa !16
  %.not.i.i29 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i29, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSERKS9_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit.i
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSERKS9_.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #14
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSERKS9_.exit: ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret ptr %0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

declare void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare void @_ZN4absl12lts_2026052614flags_internal26ShortProgramInvocationNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !29
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !56
  %i.b = tail call noundef zeroext i1 %i.a(i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i), !inline_history !57
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFbSt17basic_string_viewIcSt11char_traitsIcEEE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E9_M_invokeERKSt9_Any_data(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16, !noalias !58
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0), !inline_history !63
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E9_M_invokeERKSt9_Any_dataOS7_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16, !noalias !64
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !29, !noalias !64
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !56, !noalias !64
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i), !inline_history !69
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"branch_weights", i32 1, i32 1048575}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSSt13__atomic_baseIlE", !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTSN4absl12lts_2026052616FlagsUsageConfigE", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!18, !15, i64 16}
!18 = !{!"_ZTSSt14_Function_base", !7, i64 0, !15, i64 16}
!19 = !{!7, !7, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !25, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !12, i64 8, !7, i64 16}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!25 = !{!"p1 omnipotent char", !15, i64 0}
!26 = !{!23, !12, i64 8}
!27 = distinct !{!27, !21}
!28 = !{!24, !25, i64 0}
!29 = !{!12, !12, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !8, i64 0}
!32 = !{!33, !45, i64 240}
!33 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !34, i64 0, !42, i64 216, !7, i64 224, !43, i64 225, !44, i64 232, !45, i64 240, !46, i64 248, !47, i64 256}
!34 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !35, i64 24, !36, i64 28, !36, i64 32, !37, i64 40, !38, i64 48, !7, i64 64, !6, i64 192, !39, i64 200, !40, i64 208}
!35 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!36 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!37 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!38 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !12, i64 8}
!39 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!40 = !{!"_ZTSSt6locale", !41, i64 0}
!41 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!42 = !{!"p1 _ZTSSo", !15, i64 0}
!43 = !{!"bool", !7, i64 0}
!44 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!45 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!46 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!47 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!48 = !{!49, !7, i64 56}
!49 = !{!"_ZTSSt5ctypeIcE", !50, i64 0, !51, i64 16, !43, i64 24, !52, i64 32, !52, i64 40, !53, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!50 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!51 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!52 = !{!"p1 int", !15, i64 0}
!53 = !{!"p1 short", !15, i64 0}
!54 = distinct !{null, null, null, null}
!55 = !{i64 0, i64 16, !19}
!56 = !{!25, !25, i64 0}
!57 = distinct !{null, null}
!58 = !{!59, !61}
!59 = distinct !{!59, !60, !"_ZSt13__invoke_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_vEJEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!60 = distinct !{!60, !"_ZSt13__invoke_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_vEJEET_St14__invoke_otherOT0_DpOT1_"}
!61 = distinct !{!61, !62, !"_ZSt10__invoke_rINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_vEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_: argument 0"}
!62 = distinct !{!62, !"_ZSt10__invoke_rINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_vEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_"}
!63 = distinct !{null, null}
!64 = !{!65, !67}
!65 = distinct !{!65, !66, !"_ZSt13__invoke_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_St17basic_string_viewIcS3_EEJS7_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!66 = distinct !{!66, !"_ZSt13__invoke_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_St17basic_string_viewIcS3_EEJS7_EET_St14__invoke_otherOT0_DpOT1_"}
!67 = distinct !{!67, !68, !"_ZSt10__invoke_rINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_St17basic_string_viewIcS3_EEJS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_: argument 0"}
!68 = distinct !{!68, !"_ZSt10__invoke_rINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_St17basic_string_viewIcS3_EEJS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_"}
!69 = distinct !{null, null}
end_hunk_0
