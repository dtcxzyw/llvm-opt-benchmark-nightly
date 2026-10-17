Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCreateTestSourceList?download=true
inline.NumInlined: 500
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.cmsys::SystemToolsManager" = type { i8 }
%"class.cm::enum_set" = type { %"class.std::bitset" }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { i64 }
%"struct.std::pair" = type { %"class.std::basic_string_view", ptr }
%"class.std::basic_string_view" = type { i64, ptr }
%class.cmAlphaNum = type { ptr, %"class.std::basic_string_view", [32 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.cmNewLineStyle = type { i32 }

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKS7_EEET_SH_SH_T0_St26random_access_iterator_tag = comdat any

@_ZN5cmsysL26SystemToolsManagerInstanceE = internal global %"class.cmsys::SystemToolsManager" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN12cmStateEnumsL16AllTargetDomainsE = internal global %"class.cm::enum_set" zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"called with wrong number of arguments.\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"incorrect arguments to EXTRA_INCLUDE\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"#include \22\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"incorrect arguments to FUNCTION\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"(&ac, &av);\0A\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"You must specify a file extension for the test driver file.\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"/Templates/TestDriver.cxx.in\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"extern int \00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"(int, char*[]);\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"  {\0A    \22\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"\22,\0A    \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\0A  },\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"CMAKE_TESTDRIVER_EXTRA_INCLUDES\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"CMAKE_TESTDRIVER_ARGVC_FUNCTION\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"CMAKE_FORWARD_DECLARE_TESTS\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"CMAKE_FUNCTION_TABLE_ENTRIES\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cmCreateTestSourceList.cxx, ptr null }]

declare void @_ZN5cmsys18SystemToolsManagerC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5cmsys18SystemToolsManagerD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z22cmCreateTestSourceListRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %2 = alloca [3 x %"struct.std::pair"], align 8  ; 12 uses
  %3 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %4 = alloca [3 x %"struct.std::pair"], align 8  ; 12 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %5 = alloca [3 x %"struct.std::pair"], align 8  ; 12 uses
  %6 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %7 = alloca [3 x %"struct.std::pair"], align 8  ; 12 uses
  %8 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %9 = alloca [2 x %"struct.std::pair"], align 8  ; 9 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %10 = alloca [3 x %"struct.std::pair"], align 8 ; 12 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::vector", align 8      ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %23 = alloca %"class.std::vector", align 8      ; 14 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 26 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %44 = alloca %class.cmNewLineStyle, align 4     ; 2 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ult i64 %i.r, 65
  br i1 %i.s, label %.noexc.i, label %.lr.ph

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.t, ptr %11, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  store i64 38, ptr %i.l, align 8, !tbaa !19
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.u, ptr %11, align 8, !tbaa !21
  %i.v = load i64, ptr %i.l, align 8, !tbaa !19   ; 3 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.u, ptr noundef nonnull align 1 dereferenceable(38) @.str, i64 38, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  store i8 0, ptr %i.x, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.z = load ptr, ptr %11, align 8, !tbaa !21    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.t
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.ez

bb.b:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.c:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.t
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.c
  %i.ah = load i64, ptr %i.t, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.b
  %.pn125 = phi { ptr, i32 } [ %i.ad, %bb.b ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %i.ae, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.fa

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  store ptr %i.aj, ptr %12, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !23
  store i8 0, ptr %i.aj, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 8 uses
  store ptr %i.al, ptr %13, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  store i64 0, ptr %i.am, align 8, !tbaa !23
  store i8 0, ptr %i.al, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not580663 = icmp ne ptr %i.o, %i.n
  call void @llvm.assume(i1 %.not580663)
  %.sroa.4.0..sroa_idx.i.i162 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 48
  %.sroa.4.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.bb = phi ptr [ %i.n, %.lr.ph ], [ %i.fn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 2 uses
  %.sroa.0543.0664 = phi ptr [ %i.o, %.lr.ph ], [ %i.fm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 11 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0543.0664, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !23 ; 5 uses
  switch i64 %i.bd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit149.thread578 [
    i64 13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit149
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.be = load ptr, ptr %.sroa.0543.0664, align 8, !tbaa !21 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 1
  %i.bg = xor i64 %i.bf, 5641144742417029189
  %i.bh = getelementptr i8, ptr %i.be, i64 5
  %i.bi = load i64, ptr %i.bh, align 1
  %i.bj = xor i64 %i.bi, 4991208073068431711
  %i.bk = or i64 %i.bg, %i.bj
  %i.bl = icmp ne i64 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit149.thread578

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0543.0664, i64 32 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, %i.bb
  br i1 %i.bp, label %.noexc.i133, label %bb.h

.noexc.i133:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.bq, ptr %15, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  store i64 36, ptr %i.k, align 8, !tbaa !19
  %i.br = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc134 unwind label %bb.f  ; 3 uses

.noexc134:                                        ; preds = %.noexc.i133
  store ptr %i.br, ptr %15, align 8, !tbaa !21
  %i.bs = load i64, ptr %i.k, align 8, !tbaa !19  ; 3 uses
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.br, ptr noundef nonnull align 1 dereferenceable(36) @.str.3, i64 36, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !23
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit137 unwind label %bb.g

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit137: ; preds = %.noexc134
  %i.bw = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bq
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit137
  %i.by = load i64, ptr %i.bq, align 8, !tbaa !22
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.ew

bb.e:                                             ; preds = %bb.ac, %.noexc.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.f:                                             ; preds = %.noexc.i133
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

bb.g:                                             ; preds = %.noexc134
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bq
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.g
  %i.cf = load i64, ptr %i.bq, align 8, !tbaa !22
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141, %bb.f
  %.pn122 = phi { ptr, i32 } [ %i.cb, %bb.f ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141 ], [ %i.cc, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.ey

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18, !noalias !76
  store i64 10, ptr %10, align 8, !tbaa !19, !alias.scope !77, !noalias !76
  store ptr @.str.4, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !78, !alias.scope !77, !noalias !76
  store ptr null, ptr %i.as, align 8, !tbaa !81, !alias.scope !77, !noalias !76
  %i.ch = load ptr, ptr %i.bo, align 8, !tbaa !21, !noalias !76
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0543.0664, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !23, !noalias !76
  store i64 %i.cj, ptr %i.at, align 8, !tbaa !19, !alias.scope !82, !noalias !76
  store ptr %i.ch, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !78, !alias.scope !82, !noalias !76
  store ptr null, ptr %i.au, align 8, !tbaa !81, !alias.scope !82, !noalias !76
  store i64 2, ptr %i.av, align 8, !tbaa !19, !alias.scope !83, !noalias !76
  store ptr @.str.5, ptr %.sroa.4.0..sroa_idx.i18.i, align 8, !tbaa !78, !alias.scope !83, !noalias !76
  store ptr null, ptr %i.aw, align 8, !tbaa !81, !alias.scope !83, !noalias !76
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull %10, i64 3)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18, !noalias !76
  %i.ck = load ptr, ptr %12, align 8, !tbaa !21   ; 6 uses
  %i.cl = icmp eq ptr %i.ck, %i.aj
  %i.cm = load ptr, ptr %16, align 8, !tbaa !21   ; 5 uses
  %i.cn = icmp eq ptr %i.cm, %i.ax                ; 2 uses
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.i
  br i1 %i.cn, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.i
  br i1 %i.cn, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.co = load i64, ptr %i.ay, align 8, !tbaa !23 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cp)
  switch i64 %i.co, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !22
  store i8 %i.cq, ptr %i.ck, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.cm, i64 %i.co, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.cr = load i64, ptr %i.ay, align 8, !tbaa !23 ; 2 uses
  store i64 %i.cr, ptr %i.ak, align 8, !tbaa !23
  %i.cs = load ptr, ptr %12, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  store i8 0, ptr %i.ct, align 1, !tbaa !22
  %.pre.i = load ptr, ptr %16, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.cm, ptr %12, align 8, !tbaa !21
  %i.cu = load <2 x i64>, ptr %i.ay, align 8, !tbaa !22
  store <2 x i64> %i.cu, ptr %i.ak, align 8, !tbaa !22
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cv = load i64, ptr %i.aj, align 8, !tbaa !22
  store ptr %i.cm, ptr %12, align 8, !tbaa !21
  %i.cw = load <2 x i64>, ptr %i.ay, align 8, !tbaa !22
  store <2 x i64> %i.cw, ptr %i.ak, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.ck, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ck, ptr %16, align 8, !tbaa !21
  store i64 %i.cv, ptr %i.ax, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ax, ptr %16, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.cx = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ck, %bb.m ], [ %i.ax, %bb.n ]
  store i64 0, ptr %i.ay, align 8, !tbaa !23
end_hunk_0
