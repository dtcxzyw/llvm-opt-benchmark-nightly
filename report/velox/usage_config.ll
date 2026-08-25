Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/usage_config?download=true
inline.NumInlined: 316
inline.NumDeleted: 160
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.absl::lts_20240116::FlagsUsageConfig" = type { %"class.std::function", %"class.std::function", %"class.std::function", %"class.std::function.0", %"class.std::function.2" }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::function.0" = type { %"class.std::_Function_base", ptr }
%"class.std::function.2" = type { %"class.std::_Function_base", ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN4absl12lts_2024011616FlagsUsageConfigC2ERKS1_ = comdat any

$_ZN4absl12lts_2024011616FlagsUsageConfigaSERKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

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

@_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_125custom_usage_config_guardE = internal global { { i64 } } zeroinitializer, align 8
@_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_119custom_usage_configE = internal unnamed_addr global ptr null, align 8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
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
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak void @AbslInternalReportFatalUsageError_lts_20240116(i64 %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011614flags_internal14GetUsageConfigEv(ptr dead_on_unwind noalias writable sret(%"struct.absl::lts_20240116::FlagsUsageConfig") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_125custom_usage_config_guardE)
  %i.a = load ptr, ptr @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_119custom_usage_configE, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIPS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2024011616FlagsUsageConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_125custom_usage_config_guardE)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #13
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit:        ; preds = %bb.c
  resume { ptr, i32 } %i.b

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIPS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit: ; preds = %bb.a
  store ptr @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_122ContainsHelpshortFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_124ContainsHelppackageFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.g, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.425.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_124ContainsHelppackageFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.j, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %.sroa.427.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_113VersionStringB5cxx11Ev, ptr %i.m, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %.sroa.429.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E9_M_invokeERKSt9_Any_data, ptr %i.o, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_117NormalizeFilenameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.p, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %.sroa.431.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E9_M_invokeERKSt9_Any_dataOS7_, ptr %i.r, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIPS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_125custom_usage_config_guardE)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit18 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #13
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit18:      ; preds = %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2024011616FlagsUsageConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !11
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !11
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #13
  unreachable

common.resume:                                    ; preds = %bb.ag, %.body, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %.pn.pn.pn, %.body ], [ %.pn.pn.pn, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit: ; preds = %bb.a, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.not.i13 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i13, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit16, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 2)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.q = load <2 x ptr>, ptr %i.m, align 8, !tbaa !11
  store <2 x ptr> %i.q, ptr %i.l, align 8, !tbaa !11
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit16

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 3)
          to label %.body unwind label %bb.k      ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #13
  unreachable

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit16: ; preds = %bb.h, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.not.i17 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i17, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit22, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef 2)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ac = load <2 x ptr>, ptr %i.y, align 8, !tbaa !11
  store <2 x ptr> %i.ac, ptr %i.x, align 8, !tbaa !11
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit22

bb.n:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !12  ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i18, label %.body20, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 3)
          to label %.body20 unwind label %bb.p    ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #13
  unreachable

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit22: ; preds = %bb.m, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i23 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i23, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit22
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.an = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 2)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ao = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !11
  store <2 x ptr> %i.ao, ptr %i.aj, align 8, !tbaa !11
  br label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit

bb.s:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !12 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i24, label %.body26, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i32 noundef 3)
          to label %.body26 unwind label %bb.u    ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #13
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit: ; preds = %bb.r, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit22
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i28 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.not.i28, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i32 noundef 2)
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.ba = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !11
  store <2 x ptr> %i.ba, ptr %i.av, align 8, !tbaa !11
  br label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit

bb.x:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !12 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i29, label %.body31, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i32 noundef 3)
          to label %.body31 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #13
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit: ; preds = %bb.w, %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit
  ret void

.body31:                                          ; preds = %bb.x, %bb.y
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !12 ; 2 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %.body26, label %bb.aa

bb.aa:                                            ; preds = %.body31
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i32 noundef 3)
          to label %.body26 unwind label %bb.ab   ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #13
  unreachable

.body26:                                          ; preds = %bb.aa, %.body31, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %i.bb, %bb.aa ], [ %i.ap, %bb.t ], [ %i.bb, %.body31 ] ; 2 uses
  %i.bk = load ptr, ptr %i.x, align 8, !tbaa !12  ; 2 uses
  %.not.i33 = icmp eq ptr %i.bk, null
  br i1 %.not.i33, label %.body20, label %bb.ac

bb.ac:                                            ; preds = %.body26
  %i.bl = invoke noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 3)
          to label %.body20 unwind label %bb.ad   ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #13
  unreachable

.body20:                                          ; preds = %bb.ac, %.body26, %bb.o, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.n ], [ %.pn, %bb.ac ], [ %i.ad, %bb.o ], [ %.pn, %.body26 ] ; 2 uses
  %i.bo = load ptr, ptr %i.l, align 8, !tbaa !12  ; 2 uses
  %.not.i35 = icmp eq ptr %i.bo, null
  br i1 %.not.i35, label %.body, label %bb.ae

bb.ae:                                            ; preds = %.body20
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 3)
          to label %.body unwind label %bb.af     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #13
  unreachable

.body:                                            ; preds = %bb.ae, %.body20, %bb.j, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.i ], [ %.pn.pn, %bb.ae ], [ %i.r, %bb.j ], [ %.pn.pn, %.body20 ] ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %.not.i37 = icmp eq ptr %i.bs, null
  br i1 %.not.i37, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %.body
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %common.resume unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #13
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_122ContainsHelpshortFlagsESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011614flags_internal8BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.a, %bb.b
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i.i.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !14
  switch i8 %i.b, label %bb.b [
    i8 92, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
    i8 47, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  ]

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.not17.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not17.i.i.i, label %_ZN4absl12lts_2024011614flags_internal8BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !15

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.c = sub nuw i64 %0, %.1.i.i.in.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i.i.in.i
  br label %_ZN4absl12lts_2024011614flags_internal8BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2024011614flags_internal8BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.b, %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %.pn9.i = phi i64 [ %i.c, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ 0, %bb.a ], [ %0, %bb.b ] ; 3 uses
  %.pn7.i = phi ptr [ %i.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %1, %bb.a ], [ %1, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN4absl12lts_2024011614flags_internal26ShortProgramInvocationNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2)
  %i.e = load ptr, ptr %2, align 8, !tbaa !17     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22   ; 7 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2024011614flags_internal8BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.not.i.i = icmp ult i64 %.pn9.i, %i.g
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit18, label %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %bb.c
  %bcmp.i.i = call i32 @bcmp(ptr %.pn7.i, ptr %i.e, i64 %i.g)
  %i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit18

bb.d:                                             ; preds = %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %_ZN4absl12lts_2024011614flags_internal8BasenameESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.pn7.i, i64 %i.g ; 5 uses
  %i.k = sub i64 %.pn9.i, %i.g
  %.not.i12 = icmp eq i64 %.pn9.i, %i.g
  br i1 %.not.i12, label %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit18, label %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %bb.d
  %lhsc = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %lhsc, 46
  br i1 %i.l, label %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit18, label %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread29

_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread29: ; preds = %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  %.not.i13 = icmp ult i64 %i.k, 6
  br i1 %.not.i13, label %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit18, label %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit15

_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit15: ; preds = %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread29
  %i.m = load i32, ptr %i.j, align 1
  %i.n = xor i32 %i.m, 1767992621
  %i.o = getelementptr i8, ptr %i.j, i64 4
  %i.p = load i16, ptr %i.o, align 1
  %i.q = zext i16 %i.p to i32
  %i.r = xor i32 %i.q, 11886
  %i.s = or i32 %i.n, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit18, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit15
  %i.w = load i32, ptr %i.j, align 1
  %i.x = xor i32 %i.w, 1767992671
  %i.y = getelementptr i8, ptr %i.j, i64 4
  %i.z = load i16, ptr %i.y, align 1
  %i.aa = zext i16 %i.z to i32
  %i.ab = xor i32 %i.aa, 11886
  %i.ac = or i32 %i.x, %i.ab
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br label %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit18

_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit18: ; preds = %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread29, %bb.d, %bb.c, %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %bb.e, %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit15
  %.0 = phi i1 [ %i.af, %bb.e ], [ true, %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit15 ], [ true, %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit ], [ false, %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ false, %bb.c ], [ false, %bb.d ], [ false, %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread29 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.e, %i.ag
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit18
  %i.ai = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.ai)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_2024011610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit18
  %i.aj = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.ak) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_124ContainsHelppackageFlagsESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_122ContainsHelpshortFlagsESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_113VersionStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4absl12lts_2024011614flags_internal26ShortProgramInvocationNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 5 uses
  %i.c = icmp eq i64 %i.b, 9223372036854775807
  br i1 %i.c, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #16
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.d = add nsw i64 %i.b, 1                      ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.h = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.h)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.i = load i64, ptr %i.f, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.j = phi i64 [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.d, %i.j
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  store i8 10, ptr %i.k, align 1, !tbaa !14
  br label %bb.f

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.l

bb.f:                                             ; preds = %bb.c, %bb.d
  store i64 %i.d, ptr %i.a, align 8, !tbaa !22
  %i.r = load ptr, ptr %0, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.d
  store i8 0, ptr %i.s, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_117NormalizeFilenameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(none) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a, %bb.b
  %.0710.i.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.0710.i.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !14
  switch i8 %i.b, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit [
    i8 92, label %bb.b
    i8 47, label %bb.b
  ]

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.c = add nuw i64 %.0710.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.c, %1
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !23

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.0710.i.i ; 2 uses
  %i.e = icmp eq i64 %.0710.i.i, -1
  br i1 %i.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread, label %bb.c

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread: ; preds = %bb.b, %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !22
  store i8 0, ptr %i.f, align 8, !tbaa !14
  br label %bb.i

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit
  %i.h = sub i64 %1, %.0710.i.i                   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !24
  %i.j = icmp ugt i64 %i.h, 15
  br i1 %i.j, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i64 %i.h, 0
  br i1 %i.k, label %.noexc.i.i.i, label %bb.e

.noexc.i.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i64 %i.h, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !25

.noexc9.i.i.i:                                    ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.e
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #17 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !17
  store i64 %i.h, ptr %i.i, align 8, !tbaa !14
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  switch i64 %i.h, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.d, align 1, !tbaa !14
  store i8 %i.p, ptr %i.o, align 1, !tbaa !14
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.d, i64 %i.h, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011614flags_internal16ReportUsageErrorESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %0, ptr %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 7) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %1, i64 noundef %0) ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i8, ptr %i.i, align 8, !tbaa !44
  %.not.i1.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 67
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.h)
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(570) %i.h, i8 noundef signext 10), !inline_history !50
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.l, %bb.c ], [ %i.p, %bb.d ]
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef signext %.0.i.i.i)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) ; 0 uses
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void @AbslInternalReportFatalUsageError_lts_20240116(i64 %0, ptr %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011619SetFlagsUsageConfigENS0_16FlagsUsageConfigE(ptr noundef align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_125custom_usage_config_guardE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %.not.i.i.not = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit, label %bb.b

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit: ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_122ContainsHelpshortFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %0, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.c, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %.not.i.i5.not = icmp eq ptr %i.e, null
  br i1 %.not.i.i5.not, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit8, label %bb.c

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit8: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_124ContainsHelppackageFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.f, align 8
  store i64 0, ptr %.sroa.525.0..sroa_idx, align 8, !tbaa !14
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.d, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.g, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit8, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %.not.i.i9.not = icmp eq ptr %i.i, null
  br i1 %.not.i.i9.not, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit12, label %bb.d

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit12: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_124ContainsHelppackageFlagsESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.j, align 8
  store i64 0, ptr %.sroa.531.0..sroa_idx, align 8, !tbaa !14
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.h, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_, ptr %i.k, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSIRS4_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOS9_.exit12, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %.not.i.i13.not = icmp eq ptr %i.m, null
  br i1 %.not.i.i13.not, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSIRS6_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS7_E4typeEOSB_.exit, label %bb.e

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSIRS6_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS7_E4typeEOSB_.exit: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_113VersionStringB5cxx11Ev, ptr %i.n, align 8
  store i64 0, ptr %.sroa.537.0..sroa_idx, align 8, !tbaa !14
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.l, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E9_M_invokeERKSt9_Any_data, ptr %i.o, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSIRS6_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS7_E4typeEOSB_.exit, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12
  %.not.i.i16.not = icmp eq ptr %i.q, null
  br i1 %.not.i.i16.not, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIRS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit, label %bb.f

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIRS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_117NormalizeFilenameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE, ptr %i.r, align 8
  store i64 0, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !14
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.p, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E9_M_invokeERKSt9_Any_dataOS7_, ptr %i.s, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSIRS8_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS9_E4typeEOSD_.exit, %bb.e
  %i.t = load ptr, ptr @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_119custom_usage_configE, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN4absl12lts_2024011616FlagsUsageConfigaSERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.t, ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.m unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.w = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #17
          to label %bb.j unwind label %bb.h       ; 3 uses

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4absl12lts_2024011616FlagsUsageConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.w, ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.w, ptr @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_119custom_usage_configE, align 8, !tbaa !8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 160) #15
  br label %bb.o

bb.m:                                             ; preds = %bb.g, %bb.k
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_125custom_usage_config_guardE)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #13
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit:        ; preds = %bb.m
  ret void

bb.o:                                             ; preds = %bb.l, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.x, %bb.l ]
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN4absl12lts_2024011614flags_internal12_GLOBAL__N_125custom_usage_config_guardE)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit19 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #13
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit19:      ; preds = %bb.o
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(160) ptr @_ZN4absl12lts_2024011616FlagsUsageConfigaSERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.2", align 16  ; 11 uses
  %3 = alloca %"class.std::function.0", align 16  ; 11 uses
  %4 = alloca %"class.std::function", align 16    ; 11 uses
  %5 = alloca %"class.std::function", align 16    ; 11 uses
  %6 = alloca %"class.std::function", align 16    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !11
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !12  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #13
  unreachable

common.resume:                                    ; preds = %bb.af, %bb.ag, %bb.y, %bb.z, %bb.r, %bb.s, %bb.k, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.y ], [ %i.f, %bb.d ], [ %i.y, %bb.k ], [ %i.ar, %bb.r ], [ %i.f, %bb.e ], [ %i.y, %bb.l ], [ %i.ar, %bb.s ], [ %i.bk, %bb.z ], [ %i.cd, %bb.ag ], [ %i.cd, %bb.af ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i: ; preds = %bb.c, %bb.a
  %i.k = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.e, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !51
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %0, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !11
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  store <2 x ptr> %i.m, ptr %i.a, align 16, !tbaa !11
  store <2 x ptr> %i.k, ptr %i.l, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #13
  unreachable

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit: ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12   ; 2 uses
  %.not.i.i.not.i.i7 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i7, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i10, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 noundef 2)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.x = load <2 x ptr>, ptr %i.t, align 8, !tbaa !11
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i10

bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.s, align 16, !tbaa !12  ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i8, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %common.resume unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #13
  unreachable

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i10: ; preds = %bb.j, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit
  %i.ad = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit ], [ %i.x, %bb.j ]
  %.sroa.0.i.i.i6.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !51
  store <2 x i64> %.sroa.0.i.i.i6.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !11
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  store <2 x ptr> %i.af, ptr %i.s, align 16, !tbaa !11
  store <2 x ptr> %i.ad, ptr %i.ae, align 8, !tbaa !11
  %.not.i.i11 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i11, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12, label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i10
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #13
  unreachable

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12: ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i10, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i14 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.not.i.i14, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i17, label %bb.p

bb.p:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i32 noundef 2)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.aq = load <2 x ptr>, ptr %i.am, align 8, !tbaa !11
  br label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i17

bb.r:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.al, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i15, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #13
  unreachable

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i17: ; preds = %bb.q, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12
  %i.aw = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12 ], [ %i.aq, %bb.q ]
  %.sroa.0.i.i.i13.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 16, i1 false), !tbaa.struct !51
  store <2 x i64> %.sroa.0.i.i.i13.sroa.0.0.copyload, ptr %i.ak, align 8, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !11
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !11 ; 2 uses
  store <2 x ptr> %i.ay, ptr %i.al, align 16, !tbaa !11
  store <2 x ptr> %i.aw, ptr %i.ax, align 8, !tbaa !11
  %.not.i.i18 = icmp eq ptr %i.az, null
  br i1 %.not.i.i18, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19, label %bb.u

bb.u:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i17
  %i.ba = invoke noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19 unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #13
  unreachable

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19: ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i17, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i21 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.not.i.i21, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bi = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i32 noundef 2)
          to label %bb.x unwind label %bb.y       ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.bj = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !11
  br label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i

bb.y:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %i.be, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i22, label %common.resume, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #13
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i: ; preds = %bb.x, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19
  %i.bp = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19 ], [ %i.bj, %bb.x ]
  %.sroa.0.i.i.i20.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 16, i1 false), !tbaa.struct !51
  store <2 x i64> %.sroa.0.i.i.i20.sroa.0.0.copyload, ptr %i.bd, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.br = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !11
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !11 ; 2 uses
  store <2 x ptr> %i.br, ptr %i.be, align 16, !tbaa !11
  store <2 x ptr> %i.bp, ptr %i.bq, align 8, !tbaa !11
  %.not.i.i24 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i24, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #13
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit: ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.not.i.i26 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.not.i.i26, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cb = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i32 noundef 2)
          to label %bb.ae unwind label %bb.af     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cc = load <2 x ptr>, ptr %i.by, align 8, !tbaa !11
  br label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %i.bx, align 16, !tbaa !12 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i27, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #13
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit.i: ; preds = %bb.ae, %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit
  %i.ci = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit ], [ %i.cc, %bb.ae ]
  %.sroa.0.i.i.i25.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 16, i1 false), !tbaa.struct !51
  store <2 x i64> %.sroa.0.i.i.i25.sroa.0.0.copyload, ptr %i.bw, align 8, !tbaa !14
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ck = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !11
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  store <2 x ptr> %i.ck, ptr %i.bx, align 16, !tbaa !11
  store <2 x ptr> %i.ci, ptr %i.cj, align 8, !tbaa !11
  %.not.i.i29 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i29, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSERKS9_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit.i
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSERKS9_.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #13
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSERKS9_.exit: ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

declare void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @_ZN4absl12lts_2024011614flags_internal26ShortProgramInvocationNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #16
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !25

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #17 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  store i8 %i.u, ptr %i.s, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !14
  store i8 %i.y, ptr %i.x, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !17    ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !17
  store i64 %.0, ptr %i.h, align 8, !tbaa !14
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

declare void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E9_M_invokeERKSt9_Any_dataOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !52
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !53
  %i.b = tail call noundef zeroext i1 %i.a(i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i), !inline_history !54
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  br label %_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFbSt17basic_string_viewIcSt11char_traitsIcEEE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !11
  br label %_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFbSt17basic_string_viewIcSt11char_traitsIcEEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E9_M_invokeERKSt9_Any_data(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11, !noalias !55
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0), !inline_history !60
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !11
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E9_M_invokeERKSt9_Any_dataOS7_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11, !noalias !61
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !52, !noalias !61
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !53, !noalias !61
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i), !inline_history !66
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEPS8_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS2_EE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !11
  br label %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTSN4absl12lts_2024011616FlagsUsageConfigE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!13, !10, i64 16}
!13 = !{!"_ZTSSt14_Function_base", !6, i64 0, !10, i64 16}
!14 = !{!6, !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !20, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !21, i64 8, !6, i64 16}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = !{!18, !21, i64 8}
!23 = distinct !{!23, !16}
!24 = !{!19, !20, i64 0}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !7, i64 0}
!28 = !{!29, !41, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !30, i64 0, !38, i64 216, !6, i64 224, !39, i64 225, !40, i64 232, !41, i64 240, !42, i64 248, !43, i64 256}
!30 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !31, i64 24, !32, i64 28, !32, i64 32, !33, i64 40, !34, i64 48, !6, i64 64, !5, i64 192, !35, i64 200, !36, i64 208}
!31 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!32 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!33 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!34 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !21, i64 8}
!35 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!36 = !{!"_ZTSSt6locale", !37, i64 0}
!37 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!38 = !{!"p1 _ZTSSo", !10, i64 0}
!39 = !{!"bool", !6, i64 0}
!40 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 0}
!41 = !{!"p1 _ZTSSt5ctypeIcE", !10, i64 0}
!42 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!43 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!44 = !{!45, !6, i64 56}
!45 = !{!"_ZTSSt5ctypeIcE", !46, i64 0, !47, i64 16, !39, i64 24, !48, i64 32, !48, i64 40, !49, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!46 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!47 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!48 = !{!"p1 int", !10, i64 0}
!49 = !{!"p1 short", !10, i64 0}
!50 = distinct !{null, null, null, null}
!51 = !{i64 0, i64 16, !14}
!52 = !{!21, !21, i64 0}
!53 = !{!20, !20, i64 0}
!54 = distinct !{null, null}
!55 = !{!56, !58}
!56 = distinct !{!56, !57, !"_ZSt13__invoke_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_vEJEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!57 = distinct !{!57, !"_ZSt13__invoke_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_vEJEET_St14__invoke_otherOT0_DpOT1_"}
!58 = distinct !{!58, !59, !"_ZSt10__invoke_rINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_vEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_: argument 0"}
!59 = distinct !{!59, !"_ZSt10__invoke_rINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_vEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_"}
!60 = distinct !{null, null}
!61 = !{!62, !64}
!62 = distinct !{!62, !63, !"_ZSt13__invoke_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_St17basic_string_viewIcS3_EEJS7_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!63 = distinct !{!63, !"_ZSt13__invoke_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_St17basic_string_viewIcS3_EEJS7_EET_St14__invoke_otherOT0_DpOT1_"}
!64 = distinct !{!64, !65, !"_ZSt10__invoke_rINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_St17basic_string_viewIcS3_EEJS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_: argument 0"}
!65 = distinct !{!65, !"_ZSt10__invoke_rINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPFS5_St17basic_string_viewIcS3_EEJS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_"}
!66 = distinct !{null, null}
end_hunk_0
