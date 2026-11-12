Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/SafeOpFlags?download=true
inline.NumInlined: 309
inline.NumDeleted: 122
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

@_ZN11SafeOpFlags13wrapper_namesB5cxx11E = dso_local global { { ptr, ptr, ptr } } zeroinitializer, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"int8_t\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"int16_t\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"int32_t\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"int64_t\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"func_\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"macro_\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"_s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"_u\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"safe_add_\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"safe_sub_\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"safe_mul_\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"safe_div_\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"func_float_f_f\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"safe_mod_\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"safe_lshift_\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"safe_rshift_\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"safe_unary_minus_\00", align 1
@_ZN5Error8r_error_E = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_SafeOpFlags.cpp, ptr null }]
@switch.table._ZN11SafeOpFlags12get_rhs_typeEv = private unnamed_addr constant [5 x i8] c"\01\03\02\05\0A", align 4
@switch.table._ZN11SafeOpFlags12get_rhs_typeEv.3 = private unnamed_addr constant [4 x i8] c"\06\08\07\0B", align 4
@switch.table._ZNK11SafeOpFlags22safe_float_func_stringB5cxx11E10eBinaryOps = private unnamed_addr constant [4 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], align 8
@switch.table._ZNK11SafeOpFlags9to_stringB5cxx11E10eBinaryOps = private unnamed_addr constant [18 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.17, ptr @.str.16], align 8
@switch.table._ZNK11SafeOpFlags9to_stringB5cxx11E10eBinaryOps.4 = private unnamed_addr constant [18 x i8] [i8 9, i8 9, i8 9, i8 9, i8 9, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 12, i8 12], align 8

@_ZN11SafeOpFlagsC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11SafeOpFlagsC2Ev
@_ZN11SafeOpFlagsC1Ebbb10SafeOpSize = dso_local unnamed_addr alias void (ptr, i1, i1, i1, i32), ptr @_ZN11SafeOpFlagsC2Ebbb10SafeOpSize
@_ZN11SafeOpFlagsC1ERKS_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11SafeOpFlagsC2ERKS_
@_ZN11SafeOpFlagsD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11SafeOpFlagsD2Ev

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !18 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !19
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !66

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11SafeOpFlagsC2Ev(ptr nofree nonnull readnone align 4 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11SafeOpFlagsC2Ebbb10SafeOpSize(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 3), (4, 8)) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = zext i1 %2 to i8
  %i.c = zext i1 %3 to i8
  store i8 %i.a, ptr %0, align 4, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.b, ptr %i.d, align 1, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.c, ptr %i.e, align 2, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %4, ptr %i.f, align 4, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11SafeOpFlagsC2ERKS_(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 3), (4, 8)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !25, !range !29, !noundef !30
  store i8 %i.a, ptr %0, align 4, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !26, !range !29, !noundef !30
  store i8 %i.d, ptr %i.b, align 1, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !27, !range !29, !noundef !30
  store i8 %i.g, ptr %i.e, align 2, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28
  store i32 %i.j, ptr %i.h, align 4, !tbaa !28
  ret void
}

; Function Attrs: mustprogress memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef nonnull ptr @_ZN11SafeOpFlags16make_dummy_flagsEv() local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23 ; 5 uses
  store i8 0, ptr %i.a, align 4, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.c, align 2, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !28
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 1, 12) i32 @_ZN11SafeOpFlags13flags_to_typeEb10SafeOpSize(i1 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 5
  br i1 %i.a, label %switch.lookup, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %1, 4
  br i1 %i.b, label %switch.lookup4, label %bb.d

switch.lookup:                                    ; preds = %bb.b
  %2 = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN11SafeOpFlags12get_rhs_typeEv, i64 %2
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.d

switch.lookup4:                                   ; preds = %bb.c
  %i.c = zext nneg i32 %1 to i64
  %switch.gep5 = getelementptr inbounds nuw i8, ptr @switch.table._ZN11SafeOpFlags12get_rhs_typeEv.3, i64 %i.c
  %switch.load6 = load i8, ptr %switch.gep5, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %switch.lookup4, %switch.lookup
  %.0.shrunk = phi i8 [ %switch.load6, %switch.lookup4 ], [ %switch.load, %switch.lookup ], [ 2, %bb.c ], [ 2, %bb.b ]
  %.0 = zext i8 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN11SafeOpFlags12get_lhs_typeEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !25, !range !29, !noundef !30
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %i.d, 5
  br i1 %i.e, label %switch.lookup, label %_ZN11SafeOpFlags13flags_to_typeEb10SafeOpSize.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %i.d, 4
  br i1 %i.f, label %switch.lookup2, label %_ZN11SafeOpFlags13flags_to_typeEb10SafeOpSize.exit

switch.lookup:                                    ; preds = %bb.b
  %1 = zext nneg i32 %i.d to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN11SafeOpFlags12get_rhs_typeEv, i64 %1
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN11SafeOpFlags13flags_to_typeEb10SafeOpSize.exit

switch.lookup2:                                   ; preds = %bb.c
  %i.g = zext nneg i32 %i.d to i64
  %switch.gep3 = getelementptr inbounds nuw i8, ptr @switch.table._ZN11SafeOpFlags12get_rhs_typeEv.3, i64 %i.g
  %switch.load4 = load i8, ptr %switch.gep3, align 1
  br label %_ZN11SafeOpFlags13flags_to_typeEb10SafeOpSize.exit

_ZN11SafeOpFlags13flags_to_typeEb10SafeOpSize.exit: ; preds = %bb.b, %bb.c, %switch.lookup2, %switch.lookup
  %.0.i.shrunk = phi i8 [ %switch.load4, %switch.lookup2 ], [ %switch.load, %switch.lookup ], [ 2, %bb.c ], [ 2, %bb.b ]
  %.0.i = zext i8 %.0.i.shrunk to i32
  %i.h = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef %.0.i)
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

declare noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN11SafeOpFlags12get_rhs_typeEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28   ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %i.e, 5
  br i1 %i.f, label %switch.lookup, label %_ZN11SafeOpFlags13flags_to_typeEb10SafeOpSize.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ult i32 %i.e, 4
  br i1 %i.g, label %switch.lookup2, label %_ZN11SafeOpFlags13flags_to_typeEb10SafeOpSize.exit

switch.lookup:                                    ; preds = %bb.b
  %1 = zext nneg i32 %i.e to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN11SafeOpFlags12get_rhs_typeEv, i64 %1
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN11SafeOpFlags13flags_to_typeEb10SafeOpSize.exit

switch.lookup2:                                   ; preds = %bb.c
  %i.h = zext nneg i32 %i.e to i64
  %switch.gep3 = getelementptr inbounds nuw i8, ptr @switch.table._ZN11SafeOpFlags12get_rhs_typeEv.3, i64 %i.h
  %switch.load4 = load i8, ptr %switch.gep3, align 1
  br label %_ZN11SafeOpFlags13flags_to_typeEb10SafeOpSize.exit

_ZN11SafeOpFlags13flags_to_typeEb10SafeOpSize.exit: ; preds = %bb.b, %bb.c, %switch.lookup2, %switch.lookup
  %.0.i.shrunk = phi i8 [ %switch.load4, %switch.lookup2 ], [ %switch.load, %switch.lookup ], [ 2, %bb.c ], [ 2, %bb.b ]
  %.0.i = zext i8 %.0.i.shrunk to i32
  %i.i = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef %.0.i)
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11SafeOpFlags17return_float_typeEPK4TypeS2_S2_10eBinaryOps(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN9CGOptions12enable_floatEv()
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %0, align 8, !tbaa !55
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 10
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not10 = icmp eq ptr %1, null
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %1, align 8, !tbaa !55
  %i.i = icmp eq i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 10
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not11 = icmp eq ptr %2, null
  br i1 %.not11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %2, align 8, !tbaa !55
  %i.o = icmp eq i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, 10
  %i.s = select i1 %i.o, i1 %i.r, i1 false
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = tail call noundef zeroext i1 @_ZN18FunctionInvocation21BinaryOpWorksForFloatE10eBinaryOps(i32 noundef %3) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.c, %bb.a, %bb.h
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.h ], [ true, %bb.g ], [ true, %bb.e ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN9CGOptions12enable_floatEv() local_unnamed_addr #10

declare noundef zeroext i1 @_ZN18FunctionInvocation21BinaryOpWorksForFloatE10eBinaryOps(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11SafeOpFlags17return_float_typeEPK4TypeS2_9eUnaryOps(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN9CGOptions12enable_floatEv()
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %0, align 8, !tbaa !55
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 10
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %1, align 8, !tbaa !55
  %i.i = icmp eq i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 10
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = tail call noundef zeroext i1 @_ZN18FunctionInvocation20UnaryOpWorksForFloatE9eUnaryOps(i32 noundef %2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.a, %bb.f
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.f ], [ true, %bb.e ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN18FunctionInvocation20UnaryOpWorksForFloatE9eUnaryOps(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @_ZN11SafeOpFlags17make_random_unaryEPK4TypeS2_9eUnaryOps(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23 ; 8 uses
  %i.b = tail call noundef zeroext i1 @_ZN9CGOptions12enable_floatEv()
  br i1 %i.b, label %bb.b, label %_ZN11SafeOpFlags17return_float_typeEPK4TypeS2_9eUnaryOps.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8, !tbaa !55
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 10
  %i.h = select i1 %i.d, i1 %i.g, i1 false
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not7.i = icmp eq ptr %1, null
  br i1 %.not7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %1, align 8, !tbaa !55
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, 10
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = tail call noundef zeroext i1 @_ZN18FunctionInvocation20UnaryOpWorksForFloatE9eUnaryOps(i32 noundef %2) ; 0 uses
  br label %_ZN11SafeOpFlags17return_float_typeEPK4TypeS2_9eUnaryOps.exit

_ZN11SafeOpFlags17return_float_typeEPK4TypeS2_9eUnaryOps.exit: ; preds = %bb.f, %bb.a
  %i.p = tail call noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 6)
  %i.q = tail call noundef zeroext i1 @_Z12rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.p, ptr noundef null, ptr noundef null)
  %i.r = zext i1 %i.q to i8                       ; 2 uses
  store i8 %i.r, ptr %i.a, align 4, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 1, ptr %i.t, align 2, !tbaa !27
  %i.u = tail call noundef ptr @_ZN13Probabilities15get_prob_filterE8ProbName(i32 noundef 91)
  %i.v = tail call noundef i32 @_Z8rnd_uptojPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 4, ptr noundef %i.u, ptr noundef null)
  br label %bb.g

.critedge:                                        ; preds = %bb.c, %bb.e
  store i8 1, ptr %i.a, align 4, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 1, ptr %i.w, align 1, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 1, ptr %i.x, align 2, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %_ZN11SafeOpFlags17return_float_typeEPK4TypeS2_9eUnaryOps.exit, %.critedge
  %.sink = phi i32 [ %i.v, %_ZN11SafeOpFlags17return_float_typeEPK4TypeS2_9eUnaryOps.exit ], [ 4, %.critedge ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sink, ptr %i.y, align 4, !tbaa !28
  ret ptr %i.a
}

declare noundef zeroext i1 @_Z12rnd_flipcoinjPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare noundef i32 @_Z8rnd_uptojPK6FilterPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11SafeOpFlags18make_random_binaryEPK4TypeS2_S2_10SafeOpKind10eBinaryOps(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN9DepthSpec19depth_guard_by_typeE5dTypei(i32 noundef 39, i32 noundef %3)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23 ; 13 uses
  %i.c = tail call noundef zeroext i1 @_ZN9CGOptions12enable_floatEv()
  br i1 %i.c, label %bb.c, label %_ZN11SafeOpFlags17return_float_typeEPK4TypeS2_S2_10eBinaryOps.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i32, ptr %0, align 8, !tbaa !55
  %i.e = icmp eq i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 10
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %i.i, label %_ZN11SafeOpFlags17return_float_typeEPK4TypeS2_S2_10eBinaryOps.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_0
