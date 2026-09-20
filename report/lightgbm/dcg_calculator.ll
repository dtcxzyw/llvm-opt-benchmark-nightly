Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/dcg_calculator?download=true
inline.NumInlined: 533
inline.NumDeleted: 218
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::nothrow_t" = type { i8 }
%"class.std::locale::id" = type { i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.9 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.9 = type { i64, [8 x i8] }

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZN8LightGBM3Log5FatalEPKcz = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_S8_S8_S8_St26random_access_iterator_tag = comdat any

$_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lET_S7_S7_S7_T1_S8_T0_S8_ = comdat any

$_ZN3fmt3v1112format_facetISt6localeE2idE = comdat any

@_ZN8LightGBM13DCGCalculator11label_gain_E = global %"class.std::vector" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN8LightGBM13DCGCalculator9discount_E = global %"class.std::vector" zeroinitializer, align 8
@_ZN8LightGBM13DCGCalculator12kMaxPositionE = local_unnamed_addr constant i32 10000, align 4
@.str = private unnamed_addr constant [55 x i8] c"Check failed: (ref_eval_at[i]) > (0) at %s, line %d .\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"/opt-bench/work/lightgbm/LightGBM/src/metric/dcg_calculator.cpp\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"[LightGBM] [Fatal] %s\0A\00", align 1
@_ZTISt13runtime_error = external constant ptr
@.str.6 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Number of rows %i exceeds upper limit of %i for a query\00", align 1
@.str.9 = private unnamed_addr constant [111 x i8] c"label should be int type (met %f) for ranking task,\0Afor the gain of label, please set the label_gain parameter\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Label should be non-negative (met %f) for ranking task\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"Label %zu is not less than the number of label mappings (%zu)\00", align 1
@_ZN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1112format_facetISt6localeE2idE), align 8
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.12, ptr @_ZN3fmt3v1112format_facetISt6localeE2idE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_dcg_calculator.cpp, ptr null }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1112format_facetISt6localeE2idE], section "llvm.metadata"

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #22
  br label %_ZNSt12_Vector_baseIdSaIdEED2Ev.exit

_ZNSt12_Vector_baseIdSaIdEED2Ev.exit:             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM13DCGCalculator13DefaultEvalAtEPSt6vectorIiSaIiEE(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 4 uses
  %.not.i = icmp eq ptr %i.a, %i.f
  br i1 %.not.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.b:                                             ; preds = %bb.q, %bb.m, %bb.i, %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
  unreachable

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %.preheader
  %i.g = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #24 ; 4 uses
  store i32 1, ptr %i.g, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %.not.i17.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.l) #22
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread:   ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i, %bb.c
  store ptr %i.g, ptr %0, align 8, !tbaa !22
  store ptr %i.h, ptr %i.b, align 8, !tbaa !23
  store ptr %i.h, ptr %i.e, align 8, !tbaa !35
  br label %bb.e

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %.preheader
  store i32 1, ptr %i.c, align 4, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !23
  %.not.i.1 = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 2, ptr %i.m, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.o = phi ptr [ %i.h, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread ], [ %i.f, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.p = phi ptr [ %i.g, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread ], [ %i.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775804
  br i1 %i.t, label %bb.b, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 2
  %mul2.i.i.1 = ashr exact i64 %i.s, 1
  %1 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.1, i64 1) ; 2 uses
  %i.v = icmp ult i64 %1, %i.u
  %i.w = tail call i64 @llvm.umin.i64(i64 %1, i64 2305843009213693951)
  %i.x = select i1 %i.v, i64 2305843009213693951, i64 %i.w ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #24 ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.s ; 2 uses
  store i32 2, ptr %i.aa, align 4, !tbaa !21
  %i.ab = icmp sgt i64 %i.s, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.1

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.1

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.1: ; preds = %bb.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %.not.i17.i.i.1 = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.1, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.1, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.1
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.af) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.1

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.1: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.1
  store ptr %i.z, ptr %0, align 8, !tbaa !22
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.x ; 2 uses
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.1, %bb.d
  %i.ah = phi ptr [ %i.z, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.1 ], [ %i.a, %bb.d ] ; 5 uses
  %i.ai = phi ptr [ %i.ag, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.1 ], [ %i.f, %bb.d ] ; 3 uses
  %i.aj = phi ptr [ %i.ac, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.1 ], [ %i.n, %bb.d ] ; 3 uses
  %.not.i.2 = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1
  store i32 3, ptr %i.aj, align 4, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.2

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 6 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775804
  br i1 %i.ao, label %bb.b, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.2

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %bb.i
  %i.ap = ashr exact i64 %i.an, 2
  %mul2.i.i.2 = ashr exact i64 %i.an, 1
  %2 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.2, i64 1) ; 2 uses
  %i.aq = icmp ult i64 %2, %i.ap
  %i.ar = tail call i64 @llvm.umin.i64(i64 %2, i64 2305843009213693951)
  %i.as = select i1 %i.aq, i64 2305843009213693951, i64 %i.ar ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #24 ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.an ; 2 uses
  store i32 3, ptr %i.av, align 4, !tbaa !21
  %i.aw = icmp sgt i64 %i.an, 0
  br i1 %i.aw, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.2

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 4 %i.ah, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.2

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.2: ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %.not.i17.i.i.2 = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i.2, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.2, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.2
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ba) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.2

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.2: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.2
  store ptr %i.au, ptr %0, align 8, !tbaa !22
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as ; 2 uses
  store ptr %i.bb, ptr %i.e, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.2

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.2:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.2, %bb.h
  %i.bc = phi ptr [ %i.au, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.2 ], [ %i.ah, %bb.h ] ; 5 uses
  %i.bd = phi ptr [ %i.bb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.2 ], [ %i.ai, %bb.h ] ; 3 uses
  %i.be = phi ptr [ %i.ax, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.2 ], [ %i.ak, %bb.h ] ; 3 uses
  %.not.i.3 = icmp eq ptr %i.be, %i.bd
  br i1 %.not.i.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.2
  store i32 4, ptr %i.be, align 4, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.3

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.2
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 6 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775804
  br i1 %i.bj, label %bb.b, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.3

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.3: ; preds = %bb.m
  %i.bk = ashr exact i64 %i.bi, 2
  %mul2.i.i.3 = ashr exact i64 %i.bi, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.3, i64 1) ; 2 uses
  %i.bl = icmp ult i64 %3, %i.bk
  %i.bm = tail call i64 @llvm.umin.i64(i64 %3, i64 2305843009213693951)
  %i.bn = select i1 %i.bl, i64 2305843009213693951, i64 %i.bm ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #24 ; 5 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bi ; 2 uses
  store i32 4, ptr %i.bq, align 4, !tbaa !21
  %i.br = icmp sgt i64 %i.bi, 0
  br i1 %i.br, label %bb.n, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.3

bb.n:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bp, ptr align 4 %i.bc, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.3

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.3: ; preds = %bb.n, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %.not.i17.i.i.3 = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i.3, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.3, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.3
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bv) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.3

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.3: ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.3
  store ptr %i.bp, ptr %0, align 8, !tbaa !22
  store ptr %i.bs, ptr %i.b, align 8, !tbaa !23
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bn ; 2 uses
  store ptr %i.bw, ptr %i.e, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.3

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.3:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.3, %bb.l
  %i.bx = phi ptr [ %i.bp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.3 ], [ %i.bc, %bb.l ] ; 4 uses
  %i.by = phi ptr [ %i.bw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.3 ], [ %i.bd, %bb.l ] ; 2 uses
  %i.bz = phi ptr [ %i.bs, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.3 ], [ %i.bf, %bb.l ] ; 3 uses
  %.not.i.4 = icmp eq ptr %i.bz, %i.by
  br i1 %.not.i.4, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.3
  store i32 5, ptr %i.bz, align 4, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store ptr %i.ca, ptr %i.b, align 8, !tbaa !23
  br label %.loopexit

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.3
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 6 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775804
  br i1 %i.ce, label %bb.b, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.4

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.4: ; preds = %bb.q
  %i.cf = ashr exact i64 %i.cd, 2
  %mul2.i.i.4 = ashr exact i64 %i.cd, 1
  %4 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.4, i64 1) ; 2 uses
  %i.cg = icmp ult i64 %4, %i.cf
  %i.ch = tail call i64 @llvm.umin.i64(i64 %4, i64 2305843009213693951)
  %i.ci = select i1 %i.cg, i64 2305843009213693951, i64 %i.ch ; 2 uses
  %i.cj = shl nuw nsw i64 %i.ci, 2
  %i.ck = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #24 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.cd ; 2 uses
  store i32 5, ptr %i.cl, align 4, !tbaa !21
  %i.cm = icmp sgt i64 %i.cd, 0
  br i1 %i.cm, label %bb.r, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.4

bb.r:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr align 4 %i.bx, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.4

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.4: ; preds = %bb.r, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %.not.i17.i.i.4 = icmp eq ptr %i.bx, null
  br i1 %.not.i17.i.i.4, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.4, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.4
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cq) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.4

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.4: ; preds = %bb.s, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.4
  store ptr %i.ck, ptr %0, align 8, !tbaa !22
  store ptr %i.cn, ptr %i.b, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.cr, ptr %i.e, align 8, !tbaa !35
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.u
  %i.cs = phi ptr [ %i.cx, %bb.u ], [ %i.a, %bb.a ] ; 2 uses
  %i.ct = phi ptr [ %i.cy, %bb.u ], [ %i.c, %bb.a ]
  %.011 = phi i64 [ %i.cz, %bb.u ], [ 0, %bb.a ]  ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.011
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !21
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 29)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !23
  %.pre14 = load ptr, ptr %0, align 8, !tbaa !22
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.t
  %i.cx = phi ptr [ %i.cs, %.lr.ph ], [ %.pre14, %bb.t ] ; 2 uses
  %i.cy = phi ptr [ %i.ct, %.lr.ph ], [ %.pre, %bb.t ] ; 2 uses
  %i.cz = add nuw i64 %.011, 1                    ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 2
  %i.de = icmp ult i64 %i.cz, %i.dd
  br i1 %i.de, label %.lr.ph, label %.loopexit, !llvm.loop !34

.loopexit:                                        ; preds = %bb.u, %bb.p, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef %0, ...) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.c = call i32 @vsnprintf(ptr noundef nonnull %i.b, i64 noundef 1024, ptr noundef %0, ptr noundef nonnull %1) #25 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.e = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.g = call i32 @fflush(ptr noundef %i.f)       ; 0 uses
  %i.h = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !40
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.j, ptr %i.a, align 8, !tbaa !42
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.l, ptr %2, align 8, !tbaa !44
  %i.m = load i64, ptr %i.a, align 8, !tbaa !42
  store i64 %i.m, ptr %i.i, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.b, align 16, !tbaa !45
  store i8 %i.o, ptr %i.n, align 1, !tbaa !45
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 16 %i.b, i64 %i.j, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !46
  %i.r = load ptr, ptr %2, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.i
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.i, align 8, !tbaa !45
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.h) #25
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %.pn9, %bb.g ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM13DCGCalculator16DefaultLabelGainEPSt6vectorIdSaIdEE(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, %i.f
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !27
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.preheader

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24 ; 4 uses
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %.not.i17.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.m) #22
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.h, ptr %0, align 8, !tbaa !16
  store ptr %i.i, ptr %i.b, align 8, !tbaa !27
  store ptr %i.i, ptr %i.e, align 8, !tbaa !17
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.preheader

_ZNSt6vectorIdSaIdEE9push_backEOd.exit.preheader: ; preds = %bb.c, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  %.ph = phi ptr [ %i.h, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.a, %bb.c ]
  %.ph24.a = phi ptr [ %i.i, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.f, %bb.c ]
  %.ph25 = phi ptr [ %i.i, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.g, %bb.c ]
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.preheader, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit12
  %i.n = phi ptr [ %i.ak, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit12 ], [ %.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.preheader ] ; 5 uses
  %i.o = phi ptr [ %i.al, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit12 ], [ %.ph24.a, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.preheader ] ; 3 uses
  %i.p = phi ptr [ %i.am, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit12 ], [ %.ph25, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.preheader ] ; 3 uses
  %.016 = phi i32 [ %i.an, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit12 ], [ 1, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.preheader ] ; 2 uses
  %notmask = shl nsw i32 -1, %.016
  %i.q = xor i32 %notmask, -1
  %i.r = uitofp nneg i32 %i.q to double           ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  store double %i.r, ptr %i.p, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !27
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit12

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.g, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i6

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i6: ; preds = %bb.f
  %i.x = ashr exact i64 %i.v, 3
  %mul2.i.i.i7 = ashr exact i64 %i.v, 2
  %1 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i7, i64 1) ; 2 uses
  %i.y = icmp ult i64 %1, %i.x
  %i.z = tail call i64 @llvm.umin.i64(i64 %1, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #24 ; 5 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.v ; 2 uses
  store double %i.r, ptr %i.ad, align 8, !tbaa !26
  %i.ae = icmp sgt i64 %i.v, 0
  br i1 %i.ae, label %bb.h, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i9

bb.h:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %i.n, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i9

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i9: ; preds = %bb.h, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i6
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.not.i17.i.i.i10 = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i.i10, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i11, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i9
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ai) #22
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i11

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i11: ; preds = %bb.i, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i9
  store ptr %i.ac, ptr %0, align 8, !tbaa !16
  store ptr %i.af, ptr %i.b, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa ; 2 uses
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !17
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit12

_ZNSt6vectorIdSaIdEE9push_backEOd.exit12:         ; preds = %bb.e, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i11
  %i.ak = phi ptr [ %i.n, %bb.e ], [ %i.ac, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i11 ]
  %i.al = phi ptr [ %i.o, %bb.e ], [ %i.aj, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i11 ]
  %i.am = phi ptr [ %i.s, %bb.e ], [ %i.af, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i11 ]
  %i.an = add nuw nsw i32 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, 31
  br i1 %exitcond.not, label %.loopexit, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit, !llvm.loop !47

.loopexit:                                        ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit12, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM13DCGCalculator4InitERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8LightGBM13DCGCalculator11label_gain_E, i64 8), align 8, !tbaa !27 ; 2 uses
  %i.i = load ptr, ptr @_ZN8LightGBM13DCGCalculator11label_gain_E, align 8, !tbaa !16 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = icmp ugt i64 %i.g, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sub nuw nsw i64 %i.g, %i.m
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN8LightGBM13DCGCalculator11label_gain_E, i64 noundef %i.o)
  %.pre = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %.pre20 = ptrtoint ptr %.pre to i64
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp ult i64 %i.g, %i.m
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZN8LightGBM13DCGCalculator11label_gain_E, i64 8), align 8, !tbaa !27
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre20, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ]
  %i.r = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ] ; 8 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not16 = icmp eq ptr %i.s, %i.r
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.t = ptrtoaddr ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.u, %.pre-phi
  %i.w = ashr exact i64 %i.v, 3                   ; 4 uses
  %i.x = load ptr, ptr @_ZN8LightGBM13DCGCalculator11label_gain_E, align 8, !tbaa !16 ; 7 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1) ; 3 uses
  %min.iters.check = icmp ult i64 %i.w, 8
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = sub i64 %i.t, %i.y
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %umax, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 8, !tbaa !26
  %wide.load27 = load <2 x double>, ptr %i.ab, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x double> %wide.load, ptr %i.ac, align 8, !tbaa !26
  store <2 x double> %wide.load27, ptr %i.ad, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.01014.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %umax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01014.prol = phi i64 [ %i.ai, %scalar.ph.prol ], [ %.01014.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.01014.prol
  %i.ag = load double, ptr %i.af, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.01014.prol
  store double %i.ag, ptr %i.ah, align 8, !tbaa !26
  %i.ai = add nuw i64 %.01014.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !50

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01014.unr = phi i64 [ %.01014.ph, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %i.aj = sub i64 %.01014.ph, %umax
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8LightGBM13DCGCalculator9discount_E, i64 8), align 8, !tbaa !27 ; 2 uses
  %i.am = load ptr, ptr @_ZN8LightGBM13DCGCalculator9discount_E, align 8, !tbaa !16 ; 5 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = ashr exact i64 %i.ap, 3                 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 10000
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.as = sub nuw nsw i64 10000, %i.aq
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZN8LightGBM13DCGCalculator9discount_E, i64 noundef %i.as)
  %.pre19 = load ptr, ptr @_ZN8LightGBM13DCGCalculator9discount_E, align 8, !tbaa !16
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit13

bb.f:                                             ; preds = %._crit_edge
  %.not = icmp eq i64 %i.ap, 80000
  br i1 %.not, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit13, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 80000 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.al, %i.at
  br i1 %.not.i.i11, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit13, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i12

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i12:      ; preds = %bb.g
  store ptr %i.at, ptr getelementptr inbounds nuw (i8, ptr @_ZN8LightGBM13DCGCalculator9discount_E, i64 8), align 8, !tbaa !27
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit13

_ZNSt6vectorIdSaIdEE6resizeEm.exit13:             ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i12
  %i.au = phi ptr [ %.pre19, %bb.e ], [ %i.am, %bb.f ], [ %i.am, %bb.g ], [ %i.am, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i12 ]
  br label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01014 = phi i64 [ %i.bk, %scalar.ph ], [ %.01014.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.01014
  %i.aw = load double, ptr %i.av, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.01014
  store double %i.aw, ptr %i.ax, align 8, !tbaa !26
  %i.ay = add nuw i64 %.01014, 1                  ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ay
  store double %i.ba, ptr %i.bb, align 8, !tbaa !26
  %i.bc = add nuw i64 %.01014, 2                  ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bc
  store double %i.be, ptr %i.bf, align 8, !tbaa !26
  %i.bg = add nuw i64 %.01014, 3                  ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !26
end_hunk_0
