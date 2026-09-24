Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/gflags_completions?download=true
inline.NumInlined: 833
inline.NumDeleted: 283
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%union.anon = type { ptr, [24 x i8] }
%"class.google::FlagRegisterer" = type { i8 }
%"class.fLS::StringFlagDestructor" = type { ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const google::CommandLineFlagInfo *, const google::CommandLineFlagInfo *, std::_Identity<const google::CommandLineFlagInfo *>, std::less<const google::CommandLineFlagInfo *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const google::CommandLineFlagInfo *, const google::CommandLineFlagInfo *, std::_Identity<const google::CommandLineFlagInfo *>, std::less<const google::CommandLineFlagInfo *>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<google::CommandLineFlagInfo, std::allocator<google::CommandLineFlagInfo>>::_Vector_impl" }
%"struct.std::_Vector_base<google::CommandLineFlagInfo, std::allocator<google::CommandLineFlagInfo>>::_Vector_impl" = type { %"struct.std::_Vector_base<google::CommandLineFlagInfo, std::allocator<google::CommandLineFlagInfo>>::_Vector_impl_data" }
%"struct.std::_Vector_base<google::CommandLineFlagInfo, std::allocator<google::CommandLineFlagInfo>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.google::(anonymous namespace)::NotableFlags" = type { %"class.std::set", %"class.std::set", %"class.std::set", %"class.std::set", %"class.std::set" }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZN3fLS20StringFlagDestructorD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev = comdat any

$_ZNSt6vectorIN6google19CommandLineFlagInfoESaIS1_EED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZN6google12StringPrintfB5cxx11EPKcz = comdat any

$_ZN6google20InternalStringPrintfEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcP13__va_list_tag = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_ = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZN6google13SStringPrintfEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN6google19CommandLineFlagInfoD2Ev = comdat any

@_ZN3fLSL27FLAGS_notab_completion_wordB5cxx11E = internal global ptr null, align 8
@_ZN3fLSL21s_tab_completion_wordE = internal global [2 x %union.anon] zeroinitializer, align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN3fLSL21o_tab_completion_wordE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"tab_completion_word\00", align 1
@.str.3 = private unnamed_addr constant [142 x i8] c"If non-empty, HandleCommandLineCompletions() will hijack the process and attempt to do bash-style command line flag completion on this value.\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"/opt-bench/work/velox/velox/build/_deps/gflags-src/src/gflags_completions.cc\00", align 1
@_ZN3fLSL21d_tab_completion_wordE = internal global %"class.fLS::StringFlagDestructor" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN3fLS25FLAGS_tab_completion_wordB5cxx11E = local_unnamed_addr global ptr null, align 8
@_ZN3fLI28FLAGS_tab_completion_columnsE = global i32 80, align 4
@_ZN3fLIL24o_tab_completion_columnsE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"tab_completion_columns\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Number of columns to use in output for tab completion\00", align 1
@_ZN3fLIL30FLAGS_notab_completion_columnsE = internal global i32 80, align 4
@_ZN6google15gflags_exitfuncE = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"-main.\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"_main.\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"-test.\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"_test.\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"-unittest.\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"_unittest.\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"/%s%s\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"==========\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"-* Matching module flags *-\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"===========================\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"-* Matching package flags *-\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"============================\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"-* Commonly used flags *-\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"=========================\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"-* Matching sub-package flags *-\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"================================\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"-* Other flags *-\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"~ (Remaining flags hidden) ~\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@_ZZN6google12_GLOBAL__N_115GetLongFlagLineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19CommandLineFlagInfoEE18kNewlineWithIndent = internal unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"%s Details for '--%s':\0A%s    defined: %s\00", align 1
@_ZZN6google12_GLOBAL__N_115GetLongFlagLineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19CommandLineFlagInfoEE14line_of_spacesB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZN6google12_GLOBAL__N_115GetLongFlagLineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19CommandLineFlagInfoEE14line_of_spacesB5cxx11 = internal global i64 0, align 8
@.str.48 = private unnamed_addr constant [17 x i8] c"%s--%s [%s%s%s] \00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_gflags_completions.cc, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

declare void @_ZN6google14FlagRegistererC1INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcS9_S9_PT_SB_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3fLS20StringFlagDestructorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = load i64, ptr %i.j, align 8, !tbaa !18
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

declare void @_ZN6google14FlagRegistererC1IiEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google28HandleCommandLineCompletionsEv() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @_ZN3fLS25FLAGS_tab_completion_wordB5cxx11E, align 8, !tbaa !21, !nonnull !22, !align !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv()
  %i.e = load ptr, ptr @_ZN6google15gflags_exitfuncE, align 8, !tbaa !43
  tail call void %i.e(i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv() unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::allocator", align 1    ; 3 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 54 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::set", align 8         ; 29 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.std::vector.8", align 8    ; 18 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 33 uses
  %30 = alloca %"class.std::vector", align 8      ; 12 uses
  %31 = alloca %"class.std::set", align 8         ; 11 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %35 = alloca %"struct.google::(anonymous namespace)::NotableFlags", align 8 ; 36 uses
  %36 = alloca %"class.std::vector.8", align 8    ; 23 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.a = load ptr, ptr @_ZN3fLS25FLAGS_tab_completion_wordB5cxx11E, align 8, !tbaa !21, !nonnull !22, !align !23 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  store ptr %i.b, ptr %28, align 8, !tbaa !25
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24   ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #26
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !26

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #27 ; 2 uses
  store ptr %i.j, ptr %28, align 8, !tbaa !17
  store i64 %i.e, ptr %i.b, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !18
  store i8 %i.l, ptr %i.k, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.o = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 10 uses
  store ptr %i.o, ptr %29, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 12 uses
  store i64 0, ptr %i.p, align 8, !tbaa !24
  store i8 0, ptr %i.o, align 8, !tbaa !18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %.noexc unwind label %bb.be

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24   ; 4 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN6google12_GLOBAL__N_138CanonicalizeCursorWordAndSearchOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_PNS0_17CompletionOptionsE.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %29, align 8, !tbaa !17    ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18    ; 2 uses
  %i.u = icmp eq i8 %i.t, 34
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.v = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 9 uses
  store ptr %i.v, ptr %26, align 8, !tbaa !25, !alias.scope !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.x = add i64 %i.q, -1                         ; 7 uses
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.z = icmp slt i64 %i.x, 0
  br i1 %i.z, label %.noexc10.i.i.i.invoke, label %bb.h

.noexc10.i.i.i.invoke:                            ; preds = %bb.s, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #26
          to label %.noexc10.i.i.i.cont unwind label %bb.be

.noexc10.i.i.i.cont:                              ; preds = %.noexc10.i.i.i.invoke
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i64 %i.q, 0
  br i1 %i.aa, label %.noexc11.i.i.i.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !26

.noexc11.i.i.i.invoke:                            ; preds = %bb.t, %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc11.i.i.i.cont unwind label %bb.be

.noexc11.i.i.i.cont:                              ; preds = %.noexc11.i.i.i.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.h
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27
          to label %.noexc17 unwind label %bb.be  ; 2 uses

.noexc17:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ab, ptr %26, align 8, !tbaa !17, !alias.scope !90
  store i64 %i.x, ptr %i.v, align 8, !tbaa !18, !alias.scope !90
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.ac = phi ptr [ %i.ab, %.noexc17 ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 3 uses
  switch i64 %i.x, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !18
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.w, i64 %i.x, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 6 uses
  store i64 %i.x, ptr %i.ae, align 8, !tbaa !24, !alias.scope !90
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.x
  store i8 0, ptr %i.af, align 1, !tbaa !18
  %i.ag = load ptr, ptr %29, align 8, !tbaa !17   ; 6 uses
  %i.ah = icmp eq ptr %i.ag, %i.o
  %i.ai = load ptr, ptr %26, align 8, !tbaa !17   ; 5 uses
  %i.aj = icmp eq ptr %i.ai, %i.v                 ; 2 uses
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  br i1 %i.aj, label %bb.k, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  br i1 %i.aj, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !24 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  switch i64 %i.ak, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !18
  store i8 %i.am, ptr %i.ag, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  store i64 %i.an, ptr %i.p, align 8, !tbaa !24
  %i.ao = load ptr, ptr %29, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !18
  %.pre.i.i = load ptr, ptr %26, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.ai, ptr %29, align 8, !tbaa !17
  %i.aq = load <2 x i64>, ptr %i.ae, align 8, !tbaa !18
  store <2 x i64> %i.aq, ptr %i.p, align 8, !tbaa !18
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ar = load i64, ptr %i.o, align 8, !tbaa !18
  store ptr %i.ai, ptr %29, align 8, !tbaa !17
  %i.as = load <2 x i64>, ptr %i.ae, align 8, !tbaa !18
  store <2 x i64> %i.as, ptr %i.p, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ag, ptr %26, align 8, !tbaa !17
  store i64 %i.ar, ptr %i.v, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.v, ptr %26, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.at = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.ag, %bb.n ], [ %i.v, %bb.o ]
  store i64 0, ptr %i.ae, align 8, !tbaa !24
  store i8 0, ptr %i.at, align 1, !tbaa !18
  %i.au = load ptr, ptr %26, align 8, !tbaa !17   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.v
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.aw = load i64, ptr %i.v, align 8, !tbaa !18
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  %.pre.i = load ptr, ptr %29, align 8, !tbaa !17 ; 2 uses
  %.pre76.i = load i8, ptr %.pre.i, align 1, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.f
  %i.ay = phi i8 [ %.pre76.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.t, %bb.f ]
  %i.az = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.s, %bb.f ]
  %i.ba = icmp eq i8 %i.ay, 45
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 9 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i, %.lr.ph.i
  %i.bd = phi ptr [ %i.az, %.lr.ph.i ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.be = load i64, ptr %i.p, align 8, !tbaa !24, !noalias !91 ; 4 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i26.i

bb.r:                                             ; preds = %bb.q
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i64 noundef 1, i64 noundef 0) #26
          to label %.noexc18 unwind label %bb.be

.noexc18:                                         ; preds = %bb.r
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i26.i: ; preds = %bb.q
  store ptr %i.bb, ptr %27, align 8, !tbaa !25, !alias.scope !91
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  %i.bh = add i64 %i.be, -1                       ; 7 uses
  %i.bi = icmp ugt i64 %i.bh, 15
  br i1 %i.bi, label %bb.s, label %._crit_edge.i.i.i27.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i26.i
  %i.bj = icmp slt i64 %i.bh, 0
  br i1 %i.bj, label %.noexc10.i.i.i.invoke, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp slt i64 %i.be, 0
  br i1 %i.bk, label %.noexc11.i.i.i.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i28.i, !prof !26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i28.i: ; preds = %bb.t
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #27
          to label %.noexc21 unwind label %.loopexit.split-lp193 ; 2 uses

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i28.i
  store ptr %i.bl, ptr %27, align 8, !tbaa !17, !alias.scope !91
  store i64 %i.bh, ptr %i.bb, align 8, !tbaa !18, !alias.scope !91
  br label %._crit_edge.i.i.i27.i

._crit_edge.i.i.i27.i:                            ; preds = %.noexc21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i26.i
  %i.bm = phi ptr [ %i.bl, %.noexc21 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i26.i ] ; 3 uses
  switch i64 %i.bh, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit31.i
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i27.i
  %i.bn = load i8, ptr %i.bg, align 1, !tbaa !18
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit31.i

bb.v:                                             ; preds = %._crit_edge.i.i.i27.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit31.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit31.i: ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i27.i
  store i64 %i.bh, ptr %i.bc, align 8, !tbaa !24, !alias.scope !91
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bh
  store i8 0, ptr %i.bo, align 1, !tbaa !18
  %i.bp = load ptr, ptr %29, align 8, !tbaa !17   ; 6 uses
  %i.bq = icmp eq ptr %i.bp, %i.o
  %i.br = load ptr, ptr %27, align 8, !tbaa !17   ; 5 uses
  %i.bs = icmp eq ptr %i.br, %i.bb                ; 2 uses
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i38.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i32.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i38.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit31.i
  br i1 %i.bs, label %bb.w, label %.thread.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i32.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit31.i
  br i1 %i.bs, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i33.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i32.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i38.i
  %i.bt = load i64, ptr %i.bc, align 8, !tbaa !24 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  switch i64 %i.bt, label %bb.y [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i36.i
    i64 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !18
  store i8 %i.bv, ptr %i.bp, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i36.i

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.br, i64 %i.bt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i36.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i36.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.bw = load i64, ptr %i.bc, align 8, !tbaa !24 ; 2 uses
  store i64 %i.bw, ptr %i.p, align 8, !tbaa !24
  %i.bx = load ptr, ptr %29, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !18
  %.pre.i37.i = load ptr, ptr %27, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit40.i

.thread.i39.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i38.i
  store ptr %i.br, ptr %29, align 8, !tbaa !17
  %i.bz = load <2 x i64>, ptr %i.bc, align 8, !tbaa !18
  store <2 x i64> %i.bz, ptr %i.p, align 8, !tbaa !18
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i33.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i32.i
  %i.ca = load i64, ptr %i.o, align 8, !tbaa !18
  store ptr %i.br, ptr %29, align 8, !tbaa !17
  %i.cb = load <2 x i64>, ptr %i.bc, align 8, !tbaa !18
  store <2 x i64> %i.cb, ptr %i.p, align 8, !tbaa !18
  %.not.i34.i = icmp eq ptr %i.bp, null
  br i1 %.not.i34.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i33.i
  store ptr %i.bp, ptr %27, align 8, !tbaa !17
  store i64 %i.ca, ptr %i.bb, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit40.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i33.i, %.thread.i39.i
  store ptr %i.bb, ptr %27, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit40.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit40.i: ; preds = %bb.aa, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i36.i
  %i.cc = phi ptr [ %.pre.i37.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i36.i ], [ %i.bp, %bb.z ], [ %i.bb, %bb.aa ]
  store i64 0, ptr %i.bc, align 8, !tbaa !24
  store i8 0, ptr %i.cc, align 1, !tbaa !18
  %i.cd = load ptr, ptr %27, align 8, !tbaa !17   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bb
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit40.i
  %i.cf = load i64, ptr %i.bb, align 8, !tbaa !18
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit40.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %i.ch = load ptr, ptr %29, align 8, !tbaa !17   ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.cj = icmp eq i8 %i.ci, 45
  br i1 %i.cj, label %bb.q, label %._crit_edge.i, !llvm.loop !48

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i, %bb.p
  %i.ck = invoke fastcc noundef zeroext i1 @_ZN6google12_GLOBAL__N_118RemoveTrailingCharEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull %29, i8 noundef signext 63)
          to label %.noexc22 unwind label %bb.be

.noexc22:                                         ; preds = %._crit_edge.i
  br i1 %i.ck, label %.split.us.i, label %bb.ab

bb.ab:                                            ; preds = %.noexc22
  %i.cl = invoke fastcc noundef zeroext i1 @_ZN6google12_GLOBAL__N_118RemoveTrailingCharEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull %29, i8 noundef signext 43)
          to label %.noexc23 unwind label %bb.be

.noexc23:                                         ; preds = %bb.ab
  br i1 %i.cl, label %.peel.next.i, label %_ZN6google12_GLOBAL__N_138CanonicalizeCursorWordAndSearchOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_PNS0_17CompletionOptionsE.exit

.peel.next.i:                                     ; preds = %.noexc23
  %i.cm = invoke fastcc noundef zeroext i1 @_ZN6google12_GLOBAL__N_118RemoveTrailingCharEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull %29, i8 noundef signext 63)
          to label %.noexc24 unwind label %bb.be

.noexc24:                                         ; preds = %.peel.next.i
  br i1 %i.cm, label %.split.us.thread.i, label %_ZN6google12_GLOBAL__N_138CanonicalizeCursorWordAndSearchOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_PNS0_17CompletionOptionsE.exit

.split.us.i:                                      ; preds = %.noexc22
  %i.cn = invoke fastcc noundef zeroext i1 @_ZN6google12_GLOBAL__N_118RemoveTrailingCharEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull %29, i8 noundef signext 63)
          to label %.noexc25 unwind label %bb.be

.noexc25:                                         ; preds = %.split.us.i
  br i1 %i.cn, label %.split.us.1.thread.i, label %bb.ac

.split.us.thread.i:                               ; preds = %.noexc24
  %i.co = invoke fastcc noundef zeroext i1 @_ZN6google12_GLOBAL__N_118RemoveTrailingCharEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull %29, i8 noundef signext 63)
          to label %.noexc26 unwind label %bb.be

.noexc26:                                         ; preds = %.split.us.thread.i
  br i1 %i.co, label %.split.us.1.i, label %_ZN6google12_GLOBAL__N_138CanonicalizeCursorWordAndSearchOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_PNS0_17CompletionOptionsE.exit

bb.ac:                                            ; preds = %.noexc25
  %i.cp = invoke fastcc noundef zeroext i1 @_ZN6google12_GLOBAL__N_118RemoveTrailingCharEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull %29, i8 noundef signext 43)
          to label %.noexc27 unwind label %bb.be

.noexc27:                                         ; preds = %bb.ac
  br i1 %i.cp, label %.peel.next.1.i, label %_ZN6google12_GLOBAL__N_138CanonicalizeCursorWordAndSearchOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_PNS0_17CompletionOptionsE.exit

.peel.next.1.i:                                   ; preds = %.noexc27
  %i.cq = invoke fastcc noundef zeroext i1 @_ZN6google12_GLOBAL__N_118RemoveTrailingCharEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull %29, i8 noundef signext 63)
          to label %.noexc28 unwind label %bb.be

.noexc28:                                         ; preds = %.peel.next.1.i
  br i1 %i.cq, label %.split.us.1.i, label %_ZN6google12_GLOBAL__N_138CanonicalizeCursorWordAndSearchOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_PNS0_17CompletionOptionsE.exit

.split.us.1.i:                                    ; preds = %.noexc28, %.noexc26
  %i.cr = invoke fastcc noundef zeroext i1 @_ZN6google12_GLOBAL__N_118RemoveTrailingCharEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull %29, i8 noundef signext 63)
          to label %.noexc29 unwind label %bb.be

.noexc29:                                         ; preds = %.split.us.1.i
  br i1 %i.cr, label %.split.us.2.thread.i, label %_ZN6google12_GLOBAL__N_138CanonicalizeCursorWordAndSearchOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_PNS0_17CompletionOptionsE.exit

.split.us.1.thread.i:                             ; preds = %.noexc25
  %i.cs = invoke fastcc noundef zeroext i1 @_ZN6google12_GLOBAL__N_118RemoveTrailingCharEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull %29, i8 noundef signext 63)
          to label %.noexc30 unwind label %bb.be

.noexc30:                                         ; preds = %.split.us.1.thread.i
  %i.ct = invoke fastcc noundef zeroext i1 @_ZN6google12_GLOBAL__N_118RemoveTrailingCharEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull %29, i8 noundef signext 43)
          to label %.noexc31 unwind label %bb.be  ; 2 uses

.noexc31:                                         ; preds = %.noexc30
  br i1 %i.cs, label %.split.us.2.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc31
  br i1 %i.ct, label %.peel.next.2.i, label %_ZN6google12_GLOBAL__N_138CanonicalizeCursorWordAndSearchOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_PNS0_17CompletionOptionsE.exit

.peel.next.2.i:                                   ; preds = %bb.ad
  %i.cu = invoke fastcc noundef zeroext i1 @_ZN6google12_GLOBAL__N_118RemoveTrailingCharEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull %29, i8 noundef signext 63)
          to label %.noexc32 unwind label %bb.be

.noexc32:                                         ; preds = %.peel.next.2.i
  br i1 %i.cu, label %.split.us.2.thread.i, label %_ZN6google12_GLOBAL__N_138CanonicalizeCursorWordAndSearchOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_PNS0_17CompletionOptionsE.exit

.split.us.2.i:                                    ; preds = %.noexc31
  %i.cv = select i1 %i.ct, i32 999999, i32 98
  br label %.split.us.2.thread.i

.split.us.2.thread.i:                             ; preds = %.split.us.2.i, %.noexc32, %.noexc29
  %.us-phi50.ph.i = phi i32 [ %i.cv, %.split.us.2.i ], [ 999999, %.noexc32 ], [ 999999, %.noexc29 ]
  br label %_ZN6google12_GLOBAL__N_138CanonicalizeCursorWordAndSearchOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_PNS0_17CompletionOptionsE.exit

_ZN6google12_GLOBAL__N_138CanonicalizeCursorWordAndSearchOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_PNS0_17CompletionOptionsE.exit: ; preds = %.noexc, %.noexc26, %.noexc27, %.noexc28, %.split.us.2.thread.i, %.noexc32, %bb.ad, %.noexc29, %.noexc24, %.noexc23
  %.sroa.11.0 = phi i32 [ 98, %.noexc ], [ 999999, %.noexc24 ], [ 98, %.noexc23 ], [ 999999, %.noexc26 ], [ 999999, %.noexc28 ], [ 98, %.noexc27 ], [ %.us-phi50.ph.i, %.split.us.2.thread.i ], [ 98, %bb.ad ], [ 999999, %.noexc32 ], [ 999999, %.noexc29 ] ; 6 uses
  %.sroa.9.3 = phi i1 [ false, %.noexc ], [ false, %.noexc24 ], [ false, %.noexc23 ], [ false, %.noexc26 ], [ false, %.noexc28 ], [ false, %.noexc27 ], [ true, %.split.us.2.thread.i ], [ false, %bb.ad ], [ false, %.noexc32 ], [ false, %.noexc29 ]
  %.sroa.7.2 = phi i1 [ false, %.noexc ], [ false, %.noexc24 ], [ false, %.noexc23 ], [ false, %.noexc26 ], [ false, %.noexc28 ], [ false, %.noexc27 ], [ true, %.split.us.2.thread.i ], [ true, %bb.ad ], [ true, %.noexc32 ], [ true, %.noexc29 ]
  %.sroa.0185.1 = phi i1 [ false, %.noexc ], [ false, %.noexc24 ], [ false, %.noexc23 ], [ true, %.noexc26 ], [ true, %.noexc28 ], [ true, %.noexc27 ], [ true, %.split.us.2.thread.i ], [ true, %bb.ad ], [ true, %.noexc32 ], [ true, %.noexc29 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %i.cw = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 12 uses
  store i32 0, ptr %i.cw, align 8, !tbaa !92
  %i.cx = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 5 uses
  store ptr null, ptr %i.cx, align 8, !tbaa !32
  %i.cy = getelementptr inbounds nuw i8, ptr %31, i64 24 ; 5 uses
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !93
  %i.cz = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 2 uses
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !94
  %i.da = getelementptr inbounds nuw i8, ptr %31, i64 40 ; 6 uses
  store i64 0, ptr %i.da, align 8, !tbaa !95
  invoke void @_ZN6google11GetAllFlagsEPSt6vectorINS_19CommandLineFlagInfoESaIS1_EE(ptr noundef nonnull %30)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %_ZN6google12_GLOBAL__N_138CanonicalizeCursorWordAndSearchOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_PNS0_17CompletionOptionsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  %i.db = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  store ptr %i.db, ptr %32, align 8, !tbaa !25
  %i.dc = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 5 uses
  store i64 0, ptr %i.dc, align 8, !tbaa !24
  store i8 0, ptr %i.db, align 8, !tbaa !18
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef %i.dd)
          to label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #28
  unreachable

_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit.i: ; preds = %bb.ae
  store ptr null, ptr %i.cx, align 8, !tbaa !32
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !93
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !94
  store i64 0, ptr %i.da, align 8, !tbaa !95
  %i.dg = load ptr, ptr %30, align 8, !tbaa !96   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !96
  %i.dj = icmp eq ptr %i.dg, %i.di
  br i1 %i.dj, label %_ZN6google12_GLOBAL__N_117FindMatchingFlagsERKSt6vectorINS_19CommandLineFlagInfoESaIS2_EERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIPKS2_St4lessISK_ESaISK_EEPSF_.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit.i, %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %.01843.i = phi i1 [ %.1.i, %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ true, %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit.i ] ; 8 uses
  %.sroa.023.040.i = phi ptr [ %i.gq, %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %i.dg, %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit.i ] ; 13 uses
  %.val.i = load ptr, ptr %29, align 8, !tbaa !17 ; 6 uses
  %.val19.i = load i64, ptr %i.p, align 8, !tbaa !24 ; 13 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.023.040.i, i64 8 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !24 ; 4 uses
  %i.dm = icmp eq i64 %.val19.i, 0
  br i1 %i.dm, label %bb.at, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i33
  %.not.i.i.not.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i.i.not.i.i, label %.thread.i.i34, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dn = load ptr, ptr %.sroa.023.040.i, align 8, !tbaa !17 ; 4 uses
  %.not3339.i.i.i.i = icmp ult i64 %i.dl, %.val19.i
  br i1 %.not3339.i.i.i.i, label %.thread.i.i34, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl
  %i.dp = load i8, ptr %.val.i, align 1, !tbaa !18
  %i.dq = sext i8 %i.dp to i32
  %i.dr = ptrtoint ptr %i.do to i64
  %invariant.op = sub i64 1, %.val19.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i.i ], [ %i.dx, %bb.aj ]
  %.02740.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i ], [ %i.dv, %bb.aj ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.041.i.i.i.i, %invariant.op ; 2 uses
  %i.ds = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.ds, label %.thread.i.i34, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.ai
  %i.dt = call ptr @memchr(ptr noundef %.02740.i.i.i.i, i32 noundef %i.dq, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass) #25 ; 5 uses
  %.not34.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not34.i.i.i.i, label %.thread.i.i34, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.dt, ptr nonnull readonly %.val.i, i64 %.val19.i)
  %i.du = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dr, %i.dw                    ; 2 uses
  %.not33.i.i.i.i = icmp ult i64 %i.dx, %.val19.i
  br i1 %.not33.i.i.i.i, label %.thread.i.i34, label %bb.ai, !llvm.loop !49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.dy = icmp eq ptr %i.dt, %i.dn
  br i1 %i.dy, label %bb.at, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i
  %i.dz = ptrtoint ptr %i.dn to i64
  %i.ea = ptrtoint ptr %i.dt to i64
  %i.eb = sub i64 %i.ea, %i.dz
  %i.ec = icmp ne i64 %i.eb, -1
  %or.cond.i.i = and i1 %.sroa.0185.1, %i.ec
  br i1 %or.cond.i.i, label %bb.at, label %.thread.i.i34

.thread.i.i34:                                    ; preds = %bb.aj, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %bb.ai, %bb.ak, %bb.ah, %bb.ag
  br i1 %.sroa.7.2, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.thread.i.i

bb.al:                                            ; preds = %.thread.i.i34
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.023.040.i, i64 168
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !24 ; 4 uses
  %.not.i.i14.not.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i14.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.thread.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.023.040.i, i64 160
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !17 ; 3 uses
  %.not3339.i.i16.i.i = icmp ult i64 %i.ee, %.val19.i
  br i1 %.not3339.i.i16.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.thread.i.i, label %.lr.ph.i.i17.i.i

.lr.ph.i.i17.i.i:                                 ; preds = %bb.am
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ee
  %i.ei = load i8, ptr %.val.i, align 1, !tbaa !18
  %i.ej = sext i8 %i.ei to i32
  %i.ek = ptrtoint ptr %i.eh to i64
  %invariant.op2107 = sub i64 1, %.val19.i
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.lr.ph.i.i17.i.i
  %.041.i.i18.i.i = phi i64 [ %i.ee, %.lr.ph.i.i17.i.i ], [ %i.eq, %bb.ao ]
  %.02740.i.i19.i.i = phi ptr [ %i.eg, %.lr.ph.i.i17.i.i ], [ %i.eo, %bb.ao ]
  %.reass.reass.i.reass.reass.i21.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.041.i.i18.i.i, %invariant.op2107 ; 2 uses
  %i.el = icmp eq i64 %.reass.reass.i.reass.reass.i21.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.el, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.thread.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i22.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i22.i.i: ; preds = %bb.an
  %i.em = call ptr @memchr(ptr noundef %.02740.i.i19.i.i, i32 noundef %i.ej, i64 noundef %.reass.reass.i.reass.reass.i21.reass.reass.i.reass.reass.i.reass.reass.reass) #25 ; 4 uses
  %.not34.i.i23.i.i = icmp eq ptr %i.em, null
  br i1 %.not34.i.i23.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i24.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i24.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i22.i.i
  %bcmp.i.i25.i.i = call i32 @bcmp(ptr nonnull %i.em, ptr nonnull readonly %.val.i, i64 %.val19.i)
  %i.en = icmp eq i32 %bcmp.i.i25.i.i, 0
  br i1 %i.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i24.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 2 uses
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub i64 %i.ek, %i.ep                    ; 2 uses
  %.not33.i.i26.i.i = icmp ult i64 %i.eq, %.val19.i
  br i1 %.not33.i.i26.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.thread.i.i, label %bb.an, !llvm.loop !49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i24.i.i
  %i.er = ptrtoint ptr %i.em to i64
  %i.es = ptrtoint ptr %i.eg to i64
  %i.et = sub i64 %i.er, %i.es
  %.not.i.i37 = icmp eq i64 %i.et, -1
  br i1 %.not.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.thread.i.i, label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.thread.i.i: ; preds = %bb.ao, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i22.i.i, %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.i.i, %bb.am, %bb.al, %.thread.i.i34
  br i1 %.sroa.9.3, label %bb.ap, label %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.thread.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.023.040.i, i64 72
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !24 ; 4 uses
  %.not.i.i28.not.i.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i28.not.i.i, label %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.023.040.i, i64 64
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !17 ; 3 uses
  %.not3339.i.i30.i.i = icmp ult i64 %i.ev, %.val19.i
  br i1 %.not3339.i.i30.i.i, label %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i31.i.i

.lr.ph.i.i31.i.i:                                 ; preds = %bb.aq
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ev
  %i.ez = load i8, ptr %.val.i, align 1, !tbaa !18
  %i.fa = sext i8 %i.ez to i32
  %i.fb = ptrtoint ptr %i.ey to i64
  %invariant.op2108 = sub i64 1, %.val19.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %.lr.ph.i.i31.i.i
  %.041.i.i32.i.i = phi i64 [ %i.ev, %.lr.ph.i.i31.i.i ], [ %i.fh, %bb.as ]
  %.02740.i.i33.i.i = phi ptr [ %i.ex, %.lr.ph.i.i31.i.i ], [ %i.ff, %bb.as ]
  %.reass.reass.i.reass.reass.i35.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.041.i.i32.i.i, %invariant.op2108 ; 2 uses
  %i.fc = icmp eq i64 %.reass.reass.i.reass.reass.i35.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.fc, label %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i36.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i36.i.i: ; preds = %bb.ar
  %i.fd = call ptr @memchr(ptr noundef %.02740.i.i33.i.i, i32 noundef %i.fa, i64 noundef %.reass.reass.i.reass.reass.i35.reass.reass.i.reass.reass.i.reass.reass.reass) #25 ; 4 uses
  %.not34.i.i37.i.i = icmp eq ptr %i.fd, null
  br i1 %.not34.i.i37.i.i, label %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i36.i.i
  %bcmp.i.i39.i.i = call i32 @bcmp(ptr nonnull %i.fd, ptr nonnull readonly %.val.i, i64 %.val19.i)
  %i.fe = icmp eq i32 %bcmp.i.i39.i.i, 0
  br i1 %i.fe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit41.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 1 ; 2 uses
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = sub i64 %i.fb, %i.fg                    ; 2 uses
  %.not33.i.i40.i.i = icmp ult i64 %i.fh, %.val19.i
  br i1 %.not33.i.i40.i.i, label %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.ar, !llvm.loop !49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit41.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38.i.i
  %i.fi = ptrtoint ptr %i.fd to i64
  %i.fj = ptrtoint ptr %i.ex to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %.not13.i.i = icmp eq i64 %i.fk, -1
  br i1 %.not13.i.i, label %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit41.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.i.i, %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i, %.lr.ph.i33
  %.02022.i.i.i.i = load ptr, ptr %i.cx, align 8, !tbaa !97 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i20.i

.lr.ph.i.i.i20.i:                                 ; preds = %bb.at, %.lr.ph.i.i.i20.i
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i20.i ], [ %.02022.i.i.i.i, %bb.at ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !96 ; 2 uses
  %i.fn = icmp ult ptr %.sroa.023.040.i, %i.fm    ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.fn, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i36, label %.lr.ph.i.i.i20.i, !llvm.loop !50

._crit_edge.i.i.i.i36:                            ; preds = %.lr.ph.i.i.i20.i
  br i1 %i.fn, label %._crit_edge.thread.i.i.i.i, label %bb.av

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i36, %bb.at
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i36 ], [ %i.cw, %bb.at ] ; 4 uses
  %i.fo = load ptr, ptr %i.cy, align 8, !tbaa !93
  %i.fp = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.fo
  br i1 %i.fp, label %select.unfold.i.i.i, label %bb.au

bb.au:                                            ; preds = %._crit_edge.thread.i.i.i.i
  %i.fq = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #29
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !96
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge.i.i.i.i36
  %i.fr = phi ptr [ %.pre.i.i.i, %bb.au ], [ %i.fm, %._crit_edge.i.i.i.i36 ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.au ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i36 ]
  %i.fs = icmp ult ptr %i.fr, %.sroa.023.040.i
  br i1 %i.fs, label %select.unfold.i.i.i, label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertEOS3_.exit.i

select.unfold.i.i.i:                              ; preds = %bb.av, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.av ] ; 3 uses
  %i.ft = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.cw
  br i1 %i.ft, label %_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %select.unfold.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !96
  %i.fw = icmp ult ptr %.sroa.023.040.i, %i.fv
  br label %_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i: ; preds = %bb.aw, %select.unfold.i.i.i
  %i.fx = phi i1 [ %i.fw, %bb.aw ], [ true, %select.unfold.i.i.i ]
  %i.fy = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc38 unwind label %.loopexit.split-lp ; 2 uses

.noexc38:                                         ; preds = %_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  store ptr %.sroa.023.040.i, ptr %i.fz, align 8, !tbaa !96
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fx, ptr noundef nonnull %i.fy, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cw) #25
  %i.ga = load i64, ptr %i.da, align 8, !tbaa !95
  %i.gb = add i64 %i.ga, 1
  store i64 %i.gb, ptr %i.da, align 8, !tbaa !95
  br label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertEOS3_.exit.i

_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertEOS3_.exit.i: ; preds = %.noexc38, %bb.av
  br i1 %.01843.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertEOS3_.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.023.040.i)
          to label %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %.loopexit.split-lp

bb.ay:                                            ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE6insertEOS3_.exit.i
  %i.gc = load i64, ptr %i.dc, align 8, !tbaa !24 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ge = load i64, ptr %i.dk, align 8, !tbaa !24 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %bb.ba, label %.preheader.i

.preheader.i:                                     ; preds = %bb.az
  %invariant.umin.i = call i64 @llvm.umin.i64(i64 %i.gc, i64 %i.ge) ; 2 uses
  %i.gg = load ptr, ptr %32, align 8, !tbaa !17   ; 2 uses
  %i.gh = load ptr, ptr %.sroa.023.040.i, align 8, !tbaa !17
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store i64 0, ptr %i.dc, align 8, !tbaa !24
  %i.gi = load ptr, ptr %32, align 8, !tbaa !17
  store i8 0, ptr %i.gi, align 1, !tbaa !18
  br label %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

bb.bb:                                            ; preds = %bb.bc, %.preheader.i
  %.039.i = phi i64 [ 0, %.preheader.i ], [ %i.go, %bb.bc ] ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.039.i
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.039.i
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !18
  %i.gn = icmp eq i8 %i.gk, %i.gm
  br i1 %i.gn, label %bb.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.go = add nuw i64 %.039.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.go, %invariant.umin.i
  br i1 %exitcond.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i, label %bb.bb, !llvm.loop !51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i: ; preds = %bb.bc, %bb.bb
  %.0.lcssa67.i = phi i64 [ %invariant.umin.i, %bb.bc ], [ %.039.i, %bb.bb ] ; 2 uses
  store i64 %.0.lcssa67.i, ptr %i.dc, align 8, !tbaa !24
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.0.lcssa67.i
  store i8 0, ptr %i.gp, align 1, !tbaa !18
  br label %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.as, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i36.i.i, %bb.ar, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i, %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit41.i.i, %bb.aq, %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.thread.i.i
  %.1.i = phi i1 [ false, %bb.ax ], [ false, %bb.ba ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i ], [ %.01843.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit27.thread.i.i ], [ %.01843.i, %bb.ap ], [ %.01843.i, %bb.aq ], [ %.01843.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit41.i.i ], [ %.01843.i, %bb.ar ], [ %.01843.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i36.i.i ], [ %.01843.i, %bb.as ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.023.040.i, i64 208 ; 2 uses
  %i.gr = load ptr, ptr %i.dh, align 8, !tbaa !96
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZN6google12_GLOBAL__N_117FindMatchingFlagsERKSt6vectorINS_19CommandLineFlagInfoESaIS2_EERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIPKS2_St4lessISK_ESaISK_EEPSF_.exit, label %.lr.ph.i33, !llvm.loop !52

_ZN6google12_GLOBAL__N_117FindMatchingFlagsERKSt6vectorINS_19CommandLineFlagInfoESaIS2_EERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIPKS2_St4lessISK_ESaISK_EEPSF_.exit: ; preds = %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit.i
  %i.gt = load i64, ptr %i.dc, align 8, !tbaa !24
  %i.gu = load i64, ptr %i.p, align 8, !tbaa !24
  %i.gv = icmp ugt i64 %i.gt, %i.gu
  br i1 %i.gv, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %_ZN6google12_GLOBAL__N_117FindMatchingFlagsERKSt6vectorINS_19CommandLineFlagInfoESaIS2_EERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIPKS2_St4lessISK_ESaISK_EEPSF_.exit
  %i.gw = load ptr, ptr @stdout, align 8, !tbaa !99
  %i.gx = load ptr, ptr %32, align 8, !tbaa !17
  %i.gy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gw, ptr noundef nonnull @.str.12, ptr noundef %i.gx) #25 ; 0 uses
  br label %bb.mu

.loopexit.split-lp193:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i28.i
  %lpad.loopexit.split-lp195 = landingpad { ptr, i32 }
          cleanup
  br label %bb.na

bb.be:                                            ; preds = %.noexc11.i.i.i.invoke, %.noexc10.i.i.i.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.r, %._crit_edge.i, %bb.ab, %.peel.next.i, %.split.us.i, %.split.us.thread.i, %bb.ac, %.peel.next.1.i, %.split.us.1.i, %.split.us.1.thread.i, %.noexc30, %.peel.next.2.i
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.na

.loopexit:                                        ; preds = %_ZN6google12_GLOBAL__N_138CanonicalizeCursorWordAndSearchOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_PNS0_17CompletionOptionsE.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.mz

.loopexit.split-lp:                               ; preds = %bb.ax, %_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.my

bb.bf:                                            ; preds = %_ZN6google12_GLOBAL__N_117FindMatchingFlagsERKSt6vectorINS_19CommandLineFlagInfoESaIS2_EERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIPKS2_St4lessISK_ESaISK_EEPSF_.exit
  %i.ha = load i64, ptr %i.da, align 8, !tbaa !95
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.mu, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  %i.hc = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  store ptr %i.hc, ptr %33, align 8, !tbaa !25
  %i.hd = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  %i.he = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 10 uses
  store ptr %i.he, ptr %34, align 8, !tbaa !25
  %i.hf = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 5 uses
  store i64 0, ptr %i.hd, align 8, !tbaa !24
  store i8 0, ptr %i.hc, align 8, !tbaa !18
  store i64 0, ptr %i.hf, align 8, !tbaa !24
  store i8 0, ptr %i.he, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN6google12_GLOBAL__N_118PushNameWithSuffixEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKc(ptr noundef %24, ptr noundef nonnull @.str.19)
          to label %bb.bh unwind label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  invoke fastcc void @_ZN6google12_GLOBAL__N_118PushNameWithSuffixEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKc(ptr noundef %24, ptr noundef nonnull @.str.20)
          to label %bb.bi unwind label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  invoke fastcc void @_ZN6google12_GLOBAL__N_118PushNameWithSuffixEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKc(ptr noundef %24, ptr noundef nonnull @.str.21)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  invoke fastcc void @_ZN6google12_GLOBAL__N_118PushNameWithSuffixEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKc(ptr noundef %24, ptr noundef nonnull @.str.22)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  invoke fastcc void @_ZN6google12_GLOBAL__N_118PushNameWithSuffixEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKc(ptr noundef %24, ptr noundef nonnull @.str.23)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  invoke fastcc void @_ZN6google12_GLOBAL__N_118PushNameWithSuffixEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKc(ptr noundef %24, ptr noundef nonnull @.str.24)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  invoke fastcc void @_ZN6google12_GLOBAL__N_118PushNameWithSuffixEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKc(ptr noundef %24, ptr noundef nonnull @.str.25)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.hg = load ptr, ptr %30, align 8, !tbaa !96   ; 2 uses
  %i.hh = load ptr, ptr %i.dh, align 8, !tbaa !96 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  %.pre58.i = load ptr, ptr %24, align 8, !tbaa !21 ; 6 uses
  br i1 %i.hi, label %.loopexit39.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.bn
  %i.hj = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !21 ; 3 uses
  %i.hl = icmp eq ptr %.pre58.i, %i.hk
  br i1 %i.hl, label %.loopexit39.i, label %.lr.ph.i41

bb.bo:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.lr.ph.i41:                                       ; preds = %.lr.ph47.i, %..critedge_crit_edge.i
  %.sroa.026.045.i = phi ptr [ %i.ke, %..critedge_crit_edge.i ], [ %i.hg, %.lr.ph47.i ] ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.026.045.i, i64 160 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.026.045.i, i64 168
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !24
  %.fr.i = freeze i64 %i.hp                       ; 4 uses
  %.not.i.i.not.i = icmp eq i64 %.fr.i, 0
  br i1 %.not.i.i.not.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.us.i
  %.sroa.022.043.us.i = phi ptr [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.us.i ], [ %.pre58.i, %.lr.ph.i41 ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.022.043.us.i, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !24
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.us.i: ; preds = %.lr.ph.split.us.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.022.043.us.i, i64 32 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.hk
  br i1 %i.hu, label %..critedge_crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !53

.lr.ph.split.i:                                   ; preds = %.lr.ph.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i
  %.sroa.022.043.i = phi ptr [ %i.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i ], [ %.pre58.i, %.lr.ph.i41 ] ; 3 uses
  %i.hv = load ptr, ptr %.sroa.022.043.i, align 8, !tbaa !17 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.022.043.i, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !24 ; 5 uses
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread34.i, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.split.i
  %i.hz = load ptr, ptr %i.hn, align 8, !tbaa !17 ; 3 uses
  %.not3339.i.i.i = icmp ult i64 %.fr.i, %i.hx
  br i1 %.not3339.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bp
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.fr.i
  %i.ib = load i8, ptr %i.hv, align 1, !tbaa !18
  %i.ic = sext i8 %i.ib to i32
  %i.id = ptrtoint ptr %i.ia to i64
  %invariant.op2109 = sub i64 1, %i.hx
  br label %bb.bq

bb.bq:                                            ; preds = %bb.br, %.lr.ph.i.i.i
  %.041.i.i.i = phi i64 [ %.fr.i, %.lr.ph.i.i.i ], [ %i.ij, %bb.br ]
  %.02740.i.i.i = phi ptr [ %i.hz, %.lr.ph.i.i.i ], [ %i.ih, %bb.br ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.041.i.i.i, %invariant.op2109 ; 2 uses
  %i.ie = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.ie, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.bq
  %i.if = call ptr @memchr(ptr noundef %.02740.i.i.i, i32 noundef %i.ic, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass) #25 ; 4 uses
  %.not34.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not34.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.if, ptr nonnull %i.hv, i64 %i.hx)
  %i.ig = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ig, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 1 ; 2 uses
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = sub i64 %i.id, %i.ii                    ; 2 uses
  %.not33.i.i.i = icmp ult i64 %i.ij, %i.hx
  br i1 %.not33.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i, label %bb.bq, !llvm.loop !49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.ik = ptrtoint ptr %i.if to i64
  %i.il = ptrtoint ptr %i.hz to i64
  %i.im = sub i64 %i.ik, %i.il
  %.not.i = icmp eq i64 %i.im, -1
  br i1 %.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread34.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread34.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i, %.lr.ph.split.i, %.lr.ph.split.us.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %i.hn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread34.i
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.026.045.i, i64 168
  %i.io = load i64, ptr %i.in, align 8, !tbaa !24 ; 2 uses
  %.not.i.i45 = icmp eq i64 %i.io, 0
  br i1 %.not.i.i45, label %._crit_edge.i.i.i.thread.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %i.ip = load ptr, ptr %i.hn, align 8            ; 3 uses
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bu
  %.not13.i.i46 = icmp eq i64 %i.iq, 0
  br i1 %.not13.i.i46, label %._crit_edge.i.i.i.thread.i, label %bb.bu, !llvm.loop !54

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %.1.i.i1609 = phi i64 [ %i.io, %bb.bs ], [ %i.iq, %bb.bt ] ; 3 uses
  %i.iq = add i64 %.1.i.i1609, -1                 ; 10 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !18
  %i.it = icmp eq i8 %i.is, 47
  br i1 %i.it, label %bb.bv, label %bb.bt, !llvm.loop !54

._crit_edge.i.i.i.thread.i:                       ; preds = %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.iu = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %i.iu, ptr %25, align 8, !tbaa !25, !alias.scope !100
  br label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.iv = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.iv, ptr %25, align 8, !tbaa !25, !alias.scope !101
  %i.iw = icmp ugt i64 %i.iq, 15
  br i1 %i.iw, label %bb.bw, label %._crit_edge.i.i.i.i47

bb.bw:                                            ; preds = %bb.bv
  %i.ix = icmp slt i64 %i.iq, 0
  br i1 %i.ix, label %.noexc10.i.i.i61, label %bb.bx

.noexc10.i.i.i61:                                 ; preds = %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #26
          to label %.noexc.i62 unwind label %bb.ch

.noexc.i62:                                       ; preds = %.noexc10.i.i.i61
  unreachable

bb.bx:                                            ; preds = %bb.bw
  %i.iy = icmp slt i64 %.1.i.i1609, 0
  br i1 %i.iy, label %.noexc11.i.i.i60, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i59, !prof !26

.noexc11.i.i.i60:                                 ; preds = %bb.bx
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc18.i unwind label %bb.ch

end_hunk_0
begin_hunk_1_@_ZN6google12_GLOBAL__N_123PrintFlagCompletionInfoEv:bb.a
.lr.ph.i.i.i139:                                  ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bfr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre780, %._crit_edge ] ; 4 uses
  %i.bfm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bfo = icmp eq ptr %i.bfm, %i.bfn
  br i1 %i.bfo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i140: ; preds = %.lr.ph.i.i.i139
  %i.bfp = load i64, ptr %i.bfn, align 8, !tbaa !18
  %i.bfq = add i64 %i.bfp, 1
  call void @_ZdlPvm(ptr noundef %i.bfm, i64 noundef %i.bfq) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i140
  %i.bfr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %.not.i.i.i141 = icmp eq ptr %.05.i.i.i, %.sroa.0181.0502
  br i1 %.not.i.i.i141, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i139, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i142 = load ptr, ptr %36, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %bb.ms, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.bfs = phi ptr [ %.pr.i142, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre780, %._crit_edge ], [ %i.bfi, %bb.ms ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bfs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.mt

bb.mt:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bft = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.bfu = load ptr, ptr %i.bft, align 8, !tbaa !37
  %i.bfv = ptrtoint ptr %i.bfu to i64
  %i.bfw = ptrtoint ptr %i.bfs to i64
  %i.bfx = sub i64 %i.bfv, %i.bfw
  call void @_ZdlPvm(ptr noundef nonnull %i.bfs, i64 noundef %i.bfx) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.mt
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  call fastcc void @_ZN6google12_GLOBAL__N_112NotableFlagsD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %35) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  %i.bfy = load ptr, ptr %34, align 8, !tbaa !17  ; 2 uses
  %i.bfz = icmp eq ptr %i.bfy, %i.he
  br i1 %i.bfz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bga = load i64, ptr %i.he, align 8, !tbaa !18
  %i.bgb = add i64 %i.bga, 1
  call void @_ZdlPvm(ptr noundef %i.bfy, i64 noundef %i.bgb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  %i.bgc = load ptr, ptr %33, align 8, !tbaa !17  ; 2 uses
  %i.bgd = icmp eq ptr %i.bgc, %i.hc
  br i1 %i.bgd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.bge = load i64, ptr %i.hc, align 8, !tbaa !18
  %i.bgf = add i64 %i.bge, 1
  call void @_ZdlPvm(ptr noundef %i.bgc, i64 noundef %i.bgf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  br label %bb.mu

.lr.ph:                                           ; preds = %bb.ms, %.lr.ph
  %.sroa.0181.0502 = phi ptr [ %i.bgj, %.lr.ph ], [ %i.bfi, %bb.ms ] ; 3 uses
  %i.bgg = load ptr, ptr @stdout, align 8, !tbaa !99
  %i.bgh = load ptr, ptr %.sroa.0181.0502, align 8, !tbaa !17
  %i.bgi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bgg, ptr noundef nonnull @.str.14, ptr noundef %i.bgh) #25 ; 0 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %.sroa.0181.0502, i64 32 ; 3 uses
  %i.bgk = load ptr, ptr %i.bfj, align 8, !tbaa !21
  %i.bgl = icmp eq ptr %i.bgj, %i.bgk
  br i1 %i.bgl, label %._crit_edge, label %.lr.ph, !llvm.loop !89

bb.mu:                                            ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %bb.bd
  %i.bgm = load ptr, ptr %32, align 8, !tbaa !17  ; 2 uses
  %i.bgn = icmp eq ptr %i.bgm, %i.db
  br i1 %i.bgn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.mu
  %i.bgo = load i64, ptr %i.db, align 8, !tbaa !18
  %i.bgp = add i64 %i.bgo, 1
  call void @_ZdlPvm(ptr noundef %i.bgm, i64 noundef %i.bgp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  %i.bgq = load ptr, ptr %i.cx, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef %i.bgq)
          to label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.mv

bb.mv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.bgr = landingpad { ptr, i32 }
          catch ptr null
  %i.bgs = extractvalue { ptr, i32 } %i.bgr, 0
  call void @__clang_call_terminate(ptr %i.bgs) #28
  unreachable

_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  %i.bgt = load ptr, ptr %30, align 8, !tbaa !40  ; 3 uses
  %i.bgu = load ptr, ptr %i.dh, align 8, !tbaa !41 ; 2 uses
  %.not4.i.i.i153 = icmp eq ptr %i.bgt, %i.bgu
  br i1 %.not4.i.i.i153, label %_ZSt8_DestroyIPN6google19CommandLineFlagInfoES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i154

.lr.ph.i.i.i154:                                  ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit, %.lr.ph.i.i.i154
  %.05.i.i.i155 = phi ptr [ %i.bgv, %.lr.ph.i.i.i154 ], [ %i.bgt, %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit ] ; 2 uses
  call void @_ZN6google19CommandLineFlagInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i155) #25
  %i.bgv = getelementptr inbounds nuw i8, ptr %.05.i.i.i155, i64 208 ; 2 uses
  %.not.i.i.i156 = icmp eq ptr %i.bgv, %i.bgu
  br i1 %.not.i.i.i156, label %_ZSt8_DestroyIPN6google19CommandLineFlagInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i154, !llvm.loop !1

_ZSt8_DestroyIPN6google19CommandLineFlagInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i154
  %.pr.i157 = load ptr, ptr %30, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPN6google19CommandLineFlagInfoES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6google19CommandLineFlagInfoES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6google19CommandLineFlagInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit
  %i.bgw = phi ptr [ %.pr.i157, %_ZSt8_DestroyIPN6google19CommandLineFlagInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bgt, %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i158 = icmp eq ptr %i.bgw, null
  br i1 %.not.i.i1.i158, label %_ZNSt6vectorIN6google19CommandLineFlagInfoESaIS1_EED2Ev.exit, label %bb.mw

bb.mw:                                            ; preds = %_ZSt8_DestroyIPN6google19CommandLineFlagInfoES1_EvT_S3_RSaIT0_E.exit.i
  %i.bgx = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.bgy = load ptr, ptr %i.bgx, align 8, !tbaa !42
  %i.bgz = ptrtoint ptr %i.bgy to i64
  %i.bha = ptrtoint ptr %i.bgw to i64
  %i.bhb = sub i64 %i.bgz, %i.bha
  call void @_ZdlPvm(ptr noundef nonnull %i.bgw, i64 noundef %i.bhb) #24
  br label %_ZNSt6vectorIN6google19CommandLineFlagInfoESaIS1_EED2Ev.exit

_ZNSt6vectorIN6google19CommandLineFlagInfoESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6google19CommandLineFlagInfoES1_EvT_S3_RSaIT0_E.exit.i, %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  %i.bhc = load ptr, ptr %29, align 8, !tbaa !17  ; 2 uses
  %i.bhd = icmp eq ptr %i.bhc, %i.o
  br i1 %i.bhd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt6vectorIN6google19CommandLineFlagInfoESaIS1_EED2Ev.exit
  %i.bhe = load i64, ptr %i.o, align 8, !tbaa !18
  %i.bhf = add i64 %i.bhe, 1
  call void @_ZdlPvm(ptr noundef %i.bhc, i64 noundef %i.bhf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt6vectorIN6google19CommandLineFlagInfoESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.bhg = load ptr, ptr %28, align 8, !tbaa !17  ; 2 uses
  %i.bhh = icmp eq ptr %i.bhg, %i.b
  br i1 %i.bhh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.bhi = load i64, ptr %i.b, align 8, !tbaa !18
  %i.bhj = add i64 %i.bhi, 1
  call void @_ZdlPvm(ptr noundef %i.bhg, i64 noundef %i.bhj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  ret void

.body123:                                         ; preds = %bb.mq, %bb.ml, %bb.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %.pn.pn = phi { ptr, i32 } [ %i.bfd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %i.bfc, %bb.mq ], [ %.pn55.pn.pn.pn.pn.pn.i, %bb.ml ], [ %.pn55.pn.pn.pn.pn.pn.i, %bb.mk ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %36) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  br label %bb.mx

bb.mx:                                            ; preds = %.body123, %bb.mp
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body123 ], [ %i.bfb, %bb.mp ]
  call fastcc void @_ZN6google12_GLOBAL__N_112NotableFlagsD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %35) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  br label %.body

.body:                                            ; preds = %bb.cj, %bb.mx
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.mx ], [ %.pn.pn.i, %bb.cj ]
  %i.bhk = load ptr, ptr %34, align 8, !tbaa !17  ; 2 uses
  %i.bhl = icmp eq ptr %i.bhk, %i.he
  br i1 %i.bhl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %.body
  %i.bhm = load i64, ptr %i.he, align 8, !tbaa !18
  %i.bhn = add i64 %i.bhm, 1
  call void @_ZdlPvm(ptr noundef %i.bhk, i64 noundef %i.bhn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  %i.bho = load ptr, ptr %33, align 8, !tbaa !17  ; 2 uses
  %i.bhp = icmp eq ptr %i.bho, %i.hc
  br i1 %i.bhp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.bhq = load i64, ptr %i.hc, align 8, !tbaa !18
  %i.bhr = add i64 %i.bhq, 1
  call void @_ZdlPvm(ptr noundef %i.bho, i64 noundef %i.bhr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  br label %bb.my

bb.my:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %.loopexit.split-lp
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bhs = load ptr, ptr %32, align 8, !tbaa !17  ; 2 uses
  %i.bht = icmp eq ptr %i.bhs, %i.db
  br i1 %i.bht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.my
  %i.bhu = load i64, ptr %i.db, align 8, !tbaa !18
  %i.bhv = add i64 %i.bhu, 1
  call void @_ZdlPvm(ptr noundef %i.bhs, i64 noundef %i.bhv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.my, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  br label %bb.mz

bb.mz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %.loopexit
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %lpad.loopexit, %.loopexit ]
  call void @_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %31) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  call void @_ZNSt6vectorIN6google19CommandLineFlagInfoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %bb.na

bb.na:                                            ; preds = %.loopexit.split-lp193, %bb.be, %bb.mz
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.mz ], [ %lpad.loopexit.split-lp195, %.loopexit.split-lp193 ], [ %i.gz, %bb.be ]
  %i.bhw = load ptr, ptr %29, align 8, !tbaa !17  ; 2 uses
  %i.bhx = icmp eq ptr %i.bhw, %i.o
  br i1 %i.bhx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.na
  %i.bhy = load i64, ptr %i.o, align 8, !tbaa !18
  %i.bhz = add i64 %i.bhy, 1
  call void @_ZdlPvm(ptr noundef %i.bhw, i64 noundef %i.bhz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.bia = load ptr, ptr %28, align 8, !tbaa !17  ; 2 uses
  %i.bib = icmp eq ptr %i.bia, %i.b
  br i1 %i.bib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.bic = load i64, ptr %i.b, align 8, !tbaa !18
  %i.bid = add i64 %i.bic, 1
  call void @_ZdlPvm(ptr noundef %i.bia, i64 noundef %i.bid) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !18
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  ret void
}

declare void @_ZN6google11GetAllFlagsEPSt6vectorINS_19CommandLineFlagInfoESaIS1_EE(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !17 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !18
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !35
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN6google12_GLOBAL__N_112NotableFlagsD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit1 unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit1: ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %i.m)
          to label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit2 unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit1
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #28
  unreachable

_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit2: ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  invoke void @_ZNSt8_Rb_treeIPKN6google19CommandLineFlagInfoES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef %i.r)
          to label %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit2
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #28
  unreachable

_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit3: ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EED2Ev.exit2
end_hunk_1
