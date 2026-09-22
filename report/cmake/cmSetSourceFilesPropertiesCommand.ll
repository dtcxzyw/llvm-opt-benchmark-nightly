Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmSetSourceFilesPropertiesCommand?download=true
inline.NumInlined: 536
inline.NumDeleted: 210
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.cmsys::SystemToolsManager" = type { i8 }
%"class.cm::enum_set" = type { %"class.std::bitset" }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { i64 }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::pair" = type { %"class.std::basic_string_view", ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<cmMakefile *, std::allocator<cmMakefile *>>::_Vector_impl" }
%"struct.std::_Vector_base<cmMakefile *, std::allocator<cmMakefile *>>::_Vector_impl" = type { %"struct.std::_Vector_base<cmMakefile *, std::allocator<cmMakefile *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cmMakefile *, std::allocator<cmMakefile *>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA2_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA14_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA15_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEvNSA_IPS5_S7_EET_SG_St20forward_iterator_tag = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_ = comdat any

@_ZN5cmsysL26SystemToolsManagerInstanceE = internal global %"class.cmsys::SystemToolsManager" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN12cmStateEnumsL16AllTargetDomainsE = internal global %"class.cm::enum_set" zeroinitializer, align 8
@.str = private unnamed_addr constant [42 x i8] c"called with incorrect number of arguments\00", align 1
@_ZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE10prop_names = internal constant [8 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 8, ptr @.str.2 }, %"class.std::basic_string_view" { i64 9, ptr @.str.3 }, %"class.std::basic_string_view" { i64 12, ptr @.str.4 }, %"class.std::basic_string_view" { i64 13, ptr @.str.5 }, %"class.std::basic_string_view" { i64 14, ptr @.str.6 }, %"class.std::basic_string_view" { i64 10, ptr @.str.7 }, %"class.std::basic_string_view" { i64 9, ptr @.str.8 }, %"class.std::basic_string_view" { i64 16, ptr @.str.9 }], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"ABSTRACT\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"GENERATED\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"WRAP_EXCLUDE\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"COMPILE_FLAGS\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"OBJECT_DEPENDS\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"PROPERTIES\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"DIRECTORY\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"TARGET_DIRECTORY\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"given invalid argument \22\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\22.\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"called with incorrect number of arguments COMPILE_FLAGS with no flags\00", align 1
@.str.14 = private unnamed_addr constant [78 x i8] c"called with incorrect number of arguments OBJECT_DEPENDS with no dependencies\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"called with incorrect number of arguments.\00", align 1
@.str.16 = private unnamed_addr constant [69 x i8] c"called with illegal arguments, maybe missing a PROPERTIES specifier?\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cmSetSourceFilesPropertiesCommand.cxx, ptr null }]

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
define dso_local noundef zeroext i1 @_Z33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector", align 8       ; 18 uses
  %3 = alloca [3 x %"struct.std::pair"], align 8  ; 12 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::vector", align 8       ; 13 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %7 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::vector", align 8       ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 33
  br i1 %i.l, label %.noexc.i, label %.preheader.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i64 41, ptr %i.e, align 8, !tbaa !20
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.n, ptr %4, align 8, !tbaa !22
  %i.o = load i64, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.n, ptr noundef nonnull align 1 dereferenceable(41) @.str, i64 41, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.s = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.m
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.u = load i64, ptr %i.m, align 8, !tbaa !23
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.bk

bb.b:                                             ; preds = %.noexc.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.c:                                             ; preds = %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.m
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.c
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !23
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.b
  %.pn67 = phi { ptr, i32 } [ %i.w, %bb.b ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.x, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.bl

.preheader.i:                                     ; preds = %bb.a, %._ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit_crit_edge.i
  %.sroa.010.025.i = phi ptr [ %i.cu, %._ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit_crit_edge.i ], [ %i.h, %bb.a ] ; 11 uses
  %i.ac = load ptr, ptr %.sroa.010.025.i, align 8, !tbaa !22 ; 14 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.010.025.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24
  %.fr27.i = freeze i64 %i.ae                     ; 2 uses
  switch i64 %.fr27.i, label %._ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit_crit_edge.i [
    i64 16, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.7
    i64 8, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
    i64 9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.1
    i64 12, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.2
    i64 13, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.3
    i64 14, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.4
    i64 10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.5
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.preheader.i
  %i.af = load i64, ptr %i.ac, align 1
  %i.ag = icmp ne i64 %i.af, 6071768544483426881
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZSt13find_first_ofIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPKSt17basic_string_viewIcS5_EET_SI_SI_T0_SJ_.exit, label %._ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit_crit_edge.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.1: ; preds = %.preheader.i
  %i.aj = load i64, ptr %i.ac, align 1
  %i.ak = xor i64 %i.aj, 4995689708266603847
  %i.al = getelementptr i8, ptr %i.ac, i64 8
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i64
  %i.ao = xor i64 %i.an, 68
  %i.ap = or i64 %i.ak, %i.ao
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZSt13find_first_ofIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPKSt17basic_string_viewIcS5_EET_SI_SI_T0_SJ_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.2: ; preds = %.preheader.i
  %i.at = load i64, ptr %i.ac, align 1
  %i.au = xor i64 %i.at, 4852704874162377303
  %i.av = getelementptr i8, ptr %i.ac, i64 8
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = xor i64 %i.ax, 1162106188
  %i.az = or i64 %i.au, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZSt13find_first_ofIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPKSt17basic_string_viewIcS5_EET_SI_SI_T0_SJ_.exit, label %._ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit_crit_edge.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.3: ; preds = %.preheader.i
  %i.bd = load i64, ptr %i.ac, align 1
  %i.be = xor i64 %i.bd, 6864977084759756611
  %i.bf = getelementptr i8, ptr %i.ac, i64 5
  %i.bg = load i64, ptr %i.bf, align 1
  %i.bh = xor i64 %i.bg, 6000836824348443980
  %i.bi = or i64 %i.be, %i.bh
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZSt13find_first_ofIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPKSt17basic_string_viewIcS5_EET_SI_SI_T0_SJ_.exit, label %._ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit_crit_edge.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.4: ; preds = %.preheader.i
  %i.bm = load i64, ptr %i.ac, align 1
  %i.bn = xor i64 %i.bm, 4926749165268648527
  %i.bo = getelementptr i8, ptr %i.ac, i64 6
  %i.bp = load i64, ptr %i.bo, align 1
  %i.bq = xor i64 %i.bp, 6000006663170770015
  %i.br = or i64 %i.bn, %i.bq
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_ZSt13find_first_ofIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPKSt17basic_string_viewIcS5_EET_SI_SI_T0_SJ_.exit, label %._ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit_crit_edge.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.5: ; preds = %.preheader.i
  %i.bv = load i64, ptr %i.ac, align 1
  %i.bw = xor i64 %i.bv, 5283938720466031184
  %i.bx = getelementptr i8, ptr %i.ac, i64 8
  %i.by = load i16, ptr %i.bx, align 1
  %i.bz = zext i16 %i.by to i64
  %i.ca = xor i64 %i.bz, 21317
  %i.cb = or i64 %i.bw, %i.ca
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_ZSt13find_first_ofIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPKSt17basic_string_viewIcS5_EET_SI_SI_T0_SJ_.exit, label %._ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit_crit_edge.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.6: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.1
  %i.cf = load i64, ptr %i.ac, align 1
  %i.cg = xor i64 %i.cf, 5931051882172795204
  %i.ch = getelementptr i8, ptr %i.ac, i64 8
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i64
  %i.ck = xor i64 %i.cj, 89
  %i.cl = or i64 %i.cg, %i.ck
  %i.cm = icmp ne i64 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %_ZSt13find_first_ofIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPKSt17basic_string_viewIcS5_EET_SI_SI_T0_SJ_.exit, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.6
  %i.cp = icmp eq i64 %.fr27.i, 16
  br i1 %i.cp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.7, label %._ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit_crit_edge.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.7: ; preds = %.preheader.i, %.lr.ph.split.i.7
  %i.cq = load i128, ptr %i.ac, align 1
  %i.cr = icmp ne i128 %i.cq, 118728668953601008359320369637702648148
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %_ZSt13find_first_ofIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPKSt17basic_string_viewIcS5_EET_SI_SI_T0_SJ_.exit, label %._ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit_crit_edge.i

._ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit_crit_edge.i: ; preds = %.preheader.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.5, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.4, %.lr.ph.split.i.7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.7
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.010.025.i, i64 32 ; 2 uses
  %.not17.i = icmp eq ptr %i.cu, %i.g
  br i1 %.not17.i, label %_ZSt13find_first_ofIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPKSt17basic_string_viewIcS5_EET_SI_SI_T0_SJ_.exit, label %.preheader.i, !llvm.loop !27

_ZSt13find_first_ofIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPKSt17basic_string_viewIcS5_EET_SI_SI_T0_SJ_.exit: ; preds = %._ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit_crit_edge.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.4, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.5, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.7
  %.sroa.07.2.i = phi ptr [ %.sroa.010.025.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.sroa.010.025.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.7 ], [ %.sroa.010.025.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.6 ], [ %.sroa.010.025.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.5 ], [ %.sroa.010.025.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.4 ], [ %.sroa.010.025.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.3 ], [ %.sroa.010.025.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.2 ], [ %.sroa.010.025.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.1 ], [ %i.g, %._ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit_crit_edge.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not187 = icmp eq ptr %.sroa.07.2.i, %i.g
  br i1 %.not187, label %.thread157, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt13find_first_ofIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPKSt17basic_string_viewIcS5_EET_SI_SI_T0_SJ_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.4.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.054191 = phi i8 [ 0, %.lr.ph ], [ %.155, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 9 uses
  %.056190 = phi i32 [ 0, %.lr.ph ], [ %.157, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 2 uses
  %.058189 = phi i8 [ 0, %.lr.ph ], [ %.159, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 9 uses
  %.sroa.0144.0188 = phi ptr [ %.sroa.07.2.i, %.lr.ph ], [ %i.ie, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 11 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0144.0188, i64 8 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !24
  %.val44.val.val53.fr.i.i.i.i.i.i = freeze i64 %i.dh ; 9 uses
  %.val44.val.val.i.i.i.i.i.i.pre = load ptr, ptr %.sroa.0144.0188, align 8, !tbaa !22 ; 17 uses
  switch i64 %.val44.val.val53.fr.i.i.i.i.i.i, label %.thread [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 16, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77
    i64 10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i.i.i.1.i
    i64 8, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
    i64 14, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.1.i
    i64 12, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i.i.i.i
    i64 13, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i.i
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.di = load i64, ptr %.val44.val.val.i.i.i.i.i.i.pre, align 1
  %i.dj = xor i64 %i.di, 5931051882172795204
  %i.dk = getelementptr i8, ptr %.val44.val.val.i.i.i.i.i.i.pre, i64 8
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = zext i8 %i.dl to i64
  %i.dn = xor i64 %i.dm, 89
  %i.do = or i64 %i.dj, %i.dn
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.p, %.noexc.i.i84, %bb.k, %.noexc.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77: ; preds = %bb.d
  %i.dt = load i128, ptr %.val44.val.val.i.i.i.i.i.i.pre, align 1
  %i.du = icmp ne i128 %i.dt, 118728668953601008359320369637702648148
  %i.dv = zext i1 %i.du to i32
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i.1.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.dx = load i64, ptr %.val44.val.val.i.i.i.i.i.i.pre, align 1
  %i.dy = icmp ne i64 %i.dx, 6071768544483426881
  %i.dz = zext i1 %i.dy to i32
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %.thread157, label %.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.eb = load i64, ptr %.val44.val.val.i.i.i.i.i.i.pre, align 1
  %i.ec = xor i64 %i.eb, 4995689708266603847
  %i.ed = getelementptr i8, ptr %.val44.val.val.i.i.i.i.i.i.pre, i64 8
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = zext i8 %i.ee to i64
  %i.eg = xor i64 %i.ef, 68
  %i.eh = or i64 %i.ec, %i.eg
  %i.ei = icmp ne i64 %i.eh, 0
  %i.ej = zext i1 %i.ei to i32
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit5.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i.i.i.1.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i.i.i.i: ; preds = %bb.d
  %i.el = load i64, ptr %.val44.val.val.i.i.i.i.i.i.pre, align 1
  %i.em = xor i64 %i.el, 4852704874162377303
  %i.en = getelementptr i8, ptr %.val44.val.val.i.i.i.i.i.i.pre, i64 8
  %i.eo = load i32, ptr %i.en, align 1
  %i.ep = zext i32 %i.eo to i64
  %i.eq = xor i64 %i.ep, 1162106188
  %i.er = or i64 %i.em, %i.eq
  %i.es = icmp ne i64 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit7.i", label %.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i.i: ; preds = %bb.d
  %i.ev = load i64, ptr %.val44.val.val.i.i.i.i.i.i.pre, align 1
  %i.ew = xor i64 %i.ev, 6864977084759756611
  %i.ex = getelementptr i8, ptr %.val44.val.val.i.i.i.i.i.i.pre, i64 5
  %i.ey = load i64, ptr %i.ex, align 1
  %i.ez = xor i64 %i.ey, 6000836824348443980
  %i.fa = or i64 %i.ew, %i.ez
  %i.fb = icmp ne i64 %i.fa, 0
  %i.fc = zext i1 %i.fb to i32
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit9.i", label %.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.1.i: ; preds = %bb.d
  %i.fe = load i64, ptr %.val44.val.val.i.i.i.i.i.i.pre, align 1
  %i.ff = xor i64 %i.fe, 4926749165268648527
  %i.fg = getelementptr i8, ptr %.val44.val.val.i.i.i.i.i.i.pre, i64 6
  %i.fh = load i64, ptr %i.fg, align 1
  %i.fi = xor i64 %i.fh, 6000006663170770015
  %i.fj = or i64 %i.ff, %i.fi
  %i.fk = icmp ne i64 %i.fj, 0
  %i.fl = zext i1 %i.fk to i32
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %.thread157, label %.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i.i.i.1.i: ; preds = %bb.d
  %i.fn = load i64, ptr %.val44.val.val.i.i.i.i.i.i.pre, align 1
  %i.fo = xor i64 %i.fn, 5283938720466031184
  %i.fp = getelementptr i8, ptr %.val44.val.val.i.i.i.i.i.i.pre, i64 8
  %i.fq = load i16, ptr %i.fp, align 1
  %i.fr = zext i16 %i.fq to i64
  %i.fs = xor i64 %i.fr, 21317
  %i.ft = or i64 %i.fo, %i.fs
  %i.fu = icmp ne i64 %i.ft, 0
  %i.fv = zext i1 %i.fu to i32
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit5.i", label %.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i.i.i.1.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i.i.i.i
  %i.fx = load i64, ptr %.val44.val.val.i.i.i.i.i.i.pre, align 1
  %i.fy = xor i64 %i.fx, 5931051882172795204
  %i.fz = getelementptr i8, ptr %.val44.val.val.i.i.i.i.i.i.pre, i64 8
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = zext i8 %i.ga to i64
  %i.gc = xor i64 %i.gb, 89
  %i.gd = or i64 %i.fy, %i.gc
  %i.ge = icmp ne i64 %i.gd, 0
  %i.gf = zext i1 %i.ge to i32
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit7.i", label %.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i.1.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77
  %i.gh = load i128, ptr %.val44.val.val.i.i.i.i.i.i.pre, align 1
  %i.gi = icmp ne i128 %i.gh, 118728668953601008359320369637702648148
  %i.gj = zext i1 %i.gi to i32
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit9.i", label %.thread

"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit5.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i.i.i.1.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i.i.i.i
  %.02999.i.i.i.i.i.lcssa28.i = phi ptr [ @_ZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE10prop_names, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE10prop_names, i64 64), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i.i.i.1.i ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.02999.i.i.i.i.i.lcssa28.i, i64 16
  br label %bb.f

"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit7.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i.i.i.1.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i.i.i.i
  %.02999.i.i.i.i.i.lcssa29.i = phi ptr [ @_ZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE10prop_names, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE10prop_names, i64 64), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i.i.i.1.i ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.02999.i.i.i.i.i.lcssa29.i, i64 32
  br label %bb.f

"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit9.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i.1.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i.i
  %.02999.i.i.i.i.i.lcssa30.i = phi ptr [ @_ZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE10prop_names, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE10prop_names, i64 64), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i.1.i ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.02999.i.i.i.i.i.lcssa30.i, i64 48
  br label %bb.f

bb.f:                                             ; preds = %"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit9.i", %"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit7.i", %"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit5.i"
  %.028.i.i.i.i.i.i = phi ptr [ %i.gl, %"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit5.i" ], [ %i.gm, %"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit7.i" ], [ %i.gn, %"_ZSt6any_ofIPKSt17basic_string_viewIcSt11char_traitsIcEEZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaISA_EER17cmExecutionStatusENK3$_0clEN9__gnu_cxx17__normal_iteratorIPKSA_SC_EEEUlS3_E_EbT_SO_T0_.exit.loopexit1.split.loop.exit9.i" ]
  %.not159 = icmp eq ptr %.028.i.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZ33cmSetSourceFilesPropertiesCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE10prop_names, i64 128)
  br i1 %.not159, label %.thread, label %.thread157

.thread:                                          ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i.i.i.i.1.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i.1.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54.i.i.i.i.i.1.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.1.i, %bb.f
  switch i32 %.056190, label %bb.q [
    i32 1, label %bb.g
    i32 2, label %bb.l
  ]

bb.g:                                             ; preds = %.thread
  %i.go = load ptr, ptr %i.cx, align 8, !tbaa !14 ; 8 uses
  %i.gp = load ptr, ptr %i.cy, align 8, !tbaa !26
  %.not.i78 = icmp eq ptr %i.go, %i.gp
  br i1 %.not.i78, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 3 uses
  store ptr %i.gq, ptr %i.go, align 8, !tbaa !18
  %i.gr = load ptr, ptr %.sroa.0144.0188, align 8, !tbaa !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i64 %.val44.val.val53.fr.i.i.i.i.i.i, ptr %i.d, align 8, !tbaa !20
  %i.gs = icmp ugt i64 %.val44.val.val53.fr.i.i.i.i.i.i, 15
  br i1 %i.gs, label %.noexc.i.i, label %._crit_edge.i.i.i
end_hunk_0
