Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/Glob?download=true
inline.NumInlined: 652
inline.NumDeleted: 217
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.cmsys::SystemToolsManager" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.cmsys::Directory" = type { ptr }
%"struct.cmsys::Glob::Message" = type { i32, %"class.std::__cxx11::basic_string" }

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt6vectorIN5cmsys4Glob7MessageESaIS2_EE9push_backEOS2_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

$_ZN5cmsys4Glob7MessageC2ENS0_11MessageTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIN5cmsys4Glob7MessageESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZSt16__do_uninit_copyIPKN5cmsys4Glob7MessageEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt8_DestroyIPN5cmsys4Glob7MessageEEvT_S4_ = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKS7_EEET_SH_SH_T0_St26random_access_iterator_tag = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorIN5cmsys17RegularExpressionESaIS1_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

@_ZN5cmsysL26SystemToolsManagerInstanceE = internal global %"class.cmsys::SystemToolsManager" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"[^/]*\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"[^/]\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\[\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Error listing directory '\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"'! Reason: '\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Canonical path generation from path '\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"' failed! Reason: '\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_Glob.cxx, ptr null }]

@_ZN5cmsys4GlobC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN5cmsys4GlobC2Ev
@_ZN5cmsys4GlobD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN5cmsys4GlobD2Ev

declare void @_ZN5cmsys18SystemToolsManagerC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5cmsys18SystemToolsManagerD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5cmsys4GlobC2Ev(ptr noundef nonnull align 8 dereferenceable(82) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !13
  store i8 0, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  store ptr %i.e, ptr %0, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.f, align 8, !tbaa !26
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.i, align 4, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.j, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.k, align 1, !tbaa !30
  ret void

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #21
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.b, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.l
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !31 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !16
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !34

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5cmsys4GlobD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(82) dereferenceable(82) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5cmsys17RegularExpressionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5cmsys17RegularExpressionEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN5cmsys17RegularExpressionEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 544
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZSt8_DestroyIN5cmsys17RegularExpressionEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #22
  br label %_ZSt8_DestroyIN5cmsys17RegularExpressionEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5cmsys17RegularExpressionEEvPT_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 560 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5cmsys17RegularExpressionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZSt8_DestroyIPN5cmsys17RegularExpressionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5cmsys17RegularExpressionEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  br label %_ZSt8_DestroyIPN5cmsys17RegularExpressionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5cmsys17RegularExpressionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5cmsys17RegularExpressionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5cmsys17RegularExpressionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN5cmsys17RegularExpressionESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5cmsys17RegularExpressionES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #22
  br label %_ZNSt6vectorIN5cmsys17RegularExpressionESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN5cmsys17RegularExpressionESaIS1_EED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPN5cmsys17RegularExpressionES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33   ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN5cmsys17RegularExpressionESaIS1_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.q, %_ZNSt6vectorIN5cmsys17RegularExpressionESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !31 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !16
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !34

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN5cmsys17RegularExpressionESaIS1_EED2Ev.exit.i
  %i.z = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.q, %_ZNSt6vectorIN5cmsys17RegularExpressionESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i6.i, label %_ZN5cmsys13GlobInternalsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #22
  br label %_ZN5cmsys13GlobInternalsD2Ev.exit

_ZN5cmsys13GlobInternalsD2Ev.exit:                ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #22
  br label %bb.f

bb.f:                                             ; preds = %_ZN5cmsys13GlobInternalsD2Ev.exit, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ag, %bb.f ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #22
end_hunk_0
