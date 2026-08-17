inline.NumInlined: 496
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.arrow::Status" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage" = type { %"class.std::__cxx11::basic_string" }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.arrow::Result" = type <{ %"class.arrow::Status", %"class.arrow::internal::AlignedStorage", [7 x i8] }>
%"class.arrow::internal::AlignedStorage" = type { [1 x i8] }
%"class.std::allocator" = type { i8 }
%"class.arrow::internal::StringStreamWrapper" = type { %"class.std::unique_ptr", ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.16" }
%"struct.std::_Head_base.16" = type { ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZN5arrow6ResultIbEC2ERKNS_6StatusE = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA27_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN5arrow8internal12JoinToStringIJRA39_KcRSt17basic_string_viewIcSt11char_traitsIcEERA3_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ = comdat any

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Encountered non-hex digit\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Expected base16 hex string\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"String is not a valid boolean value: '\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"'.\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"Constructed with a non-error status: \00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow9HexEncodeB5cxx11EPKhm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %2, 1                            ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !7
  %i.c = icmp ugt i64 %i.a, 15
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.a, 0
  br i1 %i.d, label %.noexc.i, label %.thread7.i.i

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #21
  unreachable

.thread7.i.i:                                     ; preds = %bb.b
  %i.e = or disjoint i64 %i.a, 1
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #22 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !11
  store i64 %i.a, ptr %i.b, align 8, !tbaa !14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %cond = icmp eq i64 %i.a, 0
  br i1 %cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread7.i.i
  %i.g = phi ptr [ %i.f, %.thread7.i.i ], [ %i.b, %bb.c ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 0, i64 %i.a, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %i.g, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.j, align 1, !tbaa !14
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %xtraiter = and i64 %2, 1
  %3 = icmp eq i64 %2, 1
  br i1 %3, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.016 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.x, %.lr.ph ] ; 4 uses
  %.016.a = phi i64 [ 0, %.lr.ph.preheader.new ], [ %22, %.lr.ph ] ; 3 uses
  %.01215 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ab, %.lr.ph ]
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %.016.a ; 2 uses
  %5 = load i8, ptr %4, align 1, !tbaa !14
  %6 = lshr i8 %5, 4
  %7 = zext nneg i8 %6 to i64
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %10 = load ptr, ptr %0, align 8, !tbaa !11
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 %.016
  store i8 %9, ptr %11, align 1, !tbaa !14
  %12 = load i8, ptr %4, align 1, !tbaa !14
  %13 = and i8 %12, 15
  %14 = zext nneg i8 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr @.str, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !14
  %17 = or disjoint i64 %.016, 2                  ; 2 uses
  %18 = load ptr, ptr %0, align 8, !tbaa !11
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %.016
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 1
  store i8 %16, ptr %20, align 1, !tbaa !14
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 %.016.a
  %i.k = getelementptr inbounds nuw i8, ptr %21, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = lshr i8 %i.l, 4
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @.str, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  %i.q = load ptr, ptr %0, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %17
  store i8 %i.p, ptr %i.r, align 1, !tbaa !14
  %i.s = load i8, ptr %i.k, align 1, !tbaa !14
  %i.t = and i8 %i.s, 15
  %i.u = zext nneg i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @.str, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = add i64 %.016, 4                         ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store i8 %i.w, ptr %i.aa, align 1, !tbaa !14
  %22 = add nuw i64 %.016.a, 2                    ; 2 uses
  %i.ab = add nuw i64 %.01215, 2                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %unroll_iter
  br i1 %exitcond.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !16

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.016.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01215.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %22, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod18 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 %.01215.epil.init ; 2 uses
  %24 = load i8, ptr %23, align 1, !tbaa !14
  %25 = lshr i8 %24, 4
  %26 = zext nneg i8 %25 to i64
  %27 = getelementptr inbounds nuw i8, ptr @.str, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !14
  %29 = load ptr, ptr %0, align 8, !tbaa !11
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 %.016.epil.init
  store i8 %28, ptr %30, align 1, !tbaa !14
  %31 = load i8, ptr %23, align 1, !tbaa !14
  %32 = and i8 %31, 15
  %33 = zext nneg i8 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr @.str, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !14
  %36 = load ptr, ptr %0, align 8, !tbaa !11
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 %.016.epil.init
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 1
  store i8 %35, ptr %38, align 1, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6EscapeB5cxx11EPKcm(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !15
  store i8 0, ptr %i.a, align 8, !tbaa !14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.lr.ph:                                           ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.057 = phi i64 [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ 0, %.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.057
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14    ; 2 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !15   ; 29 uses
  switch i8 %i.e, label %bb.r [
    i8 34, label %bb.c
    i8 92, label %bb.f
    i8 9, label %bb.i
    i8 13, label %bb.l
    i8 10, label %bb.o
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.g = and i64 %i.f, -2
  %i.h = icmp eq i64 %i.g, 9223372036854775806
  br i1 %i.h, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

.invoke:                                          ; preds = %bb.c, %bb.o, %bb.l, %bb.i, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #21
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.c
  %i.i = add nsw i64 %i.f, 2                      ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.n = phi i64 [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.i, %i.n
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  store i16 8796, ptr %i.o, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f, i64 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.h, %bb.k, %bb.n, %bb.q, %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.f:                                             ; preds = %.lr.ph
  %i.p = and i64 %i.f, -2
  %i.q = icmp eq i64 %i.p, 9223372036854775806
  br i1 %i.q, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14: ; preds = %bb.f
  %i.r = add nsw i64 %i.f, 2                      ; 3 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i20: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.u = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.u)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.v = load i64, ptr %i.a, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i20
  %i.w = phi i64 [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i20 ]
  %.not.i.i.i17 = icmp ugt i64 %i.r, %i.w
  br i1 %.not.i.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.f
  store i16 23644, ptr %i.x, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f, i64 noundef 0, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit

bb.i:                                             ; preds = %.lr.ph
  %i.y = and i64 %i.f, -2
  %i.z = icmp eq i64 %i.y, 9223372036854775806
  br i1 %i.z, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24: ; preds = %bb.i
  %i.aa = add nsw i64 %i.f, 2                     ; 3 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.a
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24
  %i.ad = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i24
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i30
  %i.af = phi i64 [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i30 ]
  %.not.i.i.i27 = icmp ugt i64 %i.aa, %i.af
  br i1 %.not.i.i.i27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.f
  store i16 29788, ptr %i.ag, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f, i64 noundef 0, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit

bb.l:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.f, -2
  %i.ai = icmp eq i64 %i.ah, 9223372036854775806
  br i1 %i.ai, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i34: ; preds = %bb.l
  %i.aj = add nsw i64 %i.f, 2                     ; 3 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i34
  %i.am = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i34
  %i.an = load i64, ptr %i.a, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40
  %i.ao = phi i64 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40 ]
  %.not.i.i.i37 = icmp ugt i64 %i.aj, %i.ao
  br i1 %.not.i.i.i37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.f
  store i16 29276, ptr %i.ap, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f, i64 noundef 0, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit

bb.o:                                             ; preds = %.lr.ph
  %i.aq = and i64 %i.f, -2
  %i.ar = icmp eq i64 %i.aq, 9223372036854775806
end_hunk_0
begin_hunk_1_@_ZN5arrow6EscapeB5cxx11EPKcm:bb.a
  %i.av = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.av)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i44
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i50
  %i.ax = phi i64 [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i50 ]
  %.not.i.i.i47 = icmp ugt i64 %i.as, %i.ax
  br i1 %.not.i.i.i47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i46
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.f
  store i16 28252, ptr %i.ay, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit

bb.r:                                             ; preds = %.lr.ph
  %i.az = add i64 %i.f, 1                         ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.a
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.r
  %i.bc = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.bc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.be = phi i64 [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.bf = icmp ugt i64 %i.az, %i.be
  br i1 %i.bf, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc54 unwind label %.loopexit

.noexc54:                                         ; preds = %bb.s
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc54
  %i.bg = phi ptr [ %.pre.i, %.noexc54 ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.f
  store i8 %i.e, ptr %i.bh, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.p, %bb.q, %bb.m, %bb.n, %bb.j, %bb.k, %bb.g, %bb.h, %bb.d, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %.sink = phi i64 [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.aj, %bb.m ], [ %i.aa, %bb.j ], [ %i.r, %bb.g ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.r, %bb.h ], [ %i.aa, %bb.k ], [ %i.aj, %bb.n ], [ %i.as, %bb.q ], [ %i.as, %bb.p ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !15
  %i.bi = load ptr, ptr %0, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink
  store i8 0, ptr %i.bj, align 1, !tbaa !14
  %i.bk = add nuw i64 %.057, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bk, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %.preheader
  ret void

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.b
  %.pn = phi { ptr, i32 } [ %i.c, %bb.b ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bl = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.a
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.t
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !14
  %i.bo = add i64 %i.bn, 1
  tail call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !19

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #22 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !14
  store i8 %i.o, ptr %i.k, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.q = load i64, ptr %i.b, align 8, !tbaa !14
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4
  store ptr %i.k, ptr %0, align 8, !tbaa !11
  store i64 %.0, ptr %i.b, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow9HexEncodeB5cxx11EPKcm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.a = shl i64 %2, 1                            ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !7, !alias.scope !20
  %i.c = icmp ugt i64 %i.a, 15
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.a, 0
  br i1 %i.d, label %.noexc.i.i, label %.thread7.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #21
  unreachable

.thread7.i.i.i:                                   ; preds = %bb.b
  %i.e = or disjoint i64 %i.a, 1
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #22 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !11, !alias.scope !20
  store i64 %i.a, ptr %i.b, align 8, !tbaa !14, !alias.scope !20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %cond.i = icmp eq i64 %i.a, 0
  br i1 %cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread7.i.i.i
  %i.g = phi ptr [ %i.f, %.thread7.i.i.i ], [ %i.b, %bb.c ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 0, i64 %i.a, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %i.b, %bb.c ], [ %i.g, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.i, align 8, !tbaa !15, !alias.scope !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.j, align 1, !tbaa !14
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN5arrow9HexEncodeB5cxx11EPKhm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %xtraiter = and i64 %2, 1
  %3 = icmp eq i64 %2, 1
  br i1 %3, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.x, %.lr.ph.i ] ; 4 uses
  %.016.i.a = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %22, %.lr.ph.i ] ; 3 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ab, %.lr.ph.i ]
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %.016.i.a ; 2 uses
  %5 = load i8, ptr %4, align 1, !tbaa !14, !noalias !20
  %6 = lshr i8 %5, 4
  %7 = zext nneg i8 %6 to i64
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !14, !noalias !20
  %10 = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !20
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 %.016.i
  store i8 %9, ptr %11, align 1, !tbaa !14
  %12 = load i8, ptr %4, align 1, !tbaa !14, !noalias !20
  %13 = and i8 %12, 15
  %14 = zext nneg i8 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr @.str, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !14, !noalias !20
  %17 = or disjoint i64 %.016.i, 2                ; 2 uses
  %18 = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !20
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %.016.i
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 1
  store i8 %16, ptr %20, align 1, !tbaa !14
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 %.016.i.a
  %i.k = getelementptr inbounds nuw i8, ptr %21, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14, !noalias !20
  %i.m = lshr i8 %i.l, 4
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @.str, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14, !noalias !20
  %i.q = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %17
  store i8 %i.p, ptr %i.r, align 1, !tbaa !14
  %i.s = load i8, ptr %i.k, align 1, !tbaa !14, !noalias !20
  %i.t = and i8 %i.s, 15
  %i.u = zext nneg i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @.str, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14, !noalias !20
  %i.x = add i64 %.016.i, 4                       ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store i8 %i.w, ptr %i.aa, align 1, !tbaa !14
  %22 = add nuw i64 %.016.i.a, 2                  ; 2 uses
  %i.ab = add nuw i64 %.01215.i, 2                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %unroll_iter
  br i1 %exitcond.not.i, label %_ZN5arrow9HexEncodeB5cxx11EPKhm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !16

_ZN5arrow9HexEncodeB5cxx11EPKhm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow9HexEncodeB5cxx11EPKhm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5arrow9HexEncodeB5cxx11EPKhm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.x, %_ZN5arrow9HexEncodeB5cxx11EPKhm.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01215.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %22, %_ZN5arrow9HexEncodeB5cxx11EPKhm.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 %.01215.i.epil.init ; 2 uses
  %24 = load i8, ptr %23, align 1, !tbaa !14, !noalias !20
  %25 = lshr i8 %24, 4
  %26 = zext nneg i8 %25 to i64
  %27 = getelementptr inbounds nuw i8, ptr @.str, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !14, !noalias !20
  %29 = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !20
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 %.016.i.epil.init
  store i8 %28, ptr %30, align 1, !tbaa !14
  %31 = load i8, ptr %23, align 1, !tbaa !14, !noalias !20
  %32 = and i8 %31, 15
  %33 = zext nneg i8 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr @.str, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !14, !noalias !20
  %36 = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !20
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 %.016.i.epil.init
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 1
  store i8 %35, ptr %38, align 1, !tbaa !14
  br label %_ZN5arrow9HexEncodeB5cxx11EPKhm.exit

_ZN5arrow9HexEncodeB5cxx11EPKhm.exit:             ; preds = %.lr.ph.i.epil.preheader, %_ZN5arrow9HexEncodeB5cxx11EPKhm.exit.loopexit.unr-lcssa, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow9HexEncodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.a = shl i64 %1, 1                            ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !7, !alias.scope !29
  %i.c = icmp ugt i64 %i.a, 15
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.a, 0
  br i1 %i.d, label %.noexc.i.i.i, label %.thread7.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #21
  unreachable

.thread7.i.i.i.i:                                 ; preds = %bb.b
  %i.e = or disjoint i64 %i.a, 1
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #22 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !11, !alias.scope !29
  store i64 %i.a, ptr %i.b, align 8, !tbaa !14, !alias.scope !29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %cond.i.i = icmp eq i64 %i.a, 0
  br i1 %cond.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread7.i.i.i.i
  %i.g = phi ptr [ %i.f, %.thread7.i.i.i.i ], [ %i.b, %bb.c ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 0, i64 %i.a, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %i.b, %bb.c ], [ %i.g, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.i, align 8, !tbaa !15, !alias.scope !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.j, align 1, !tbaa !14
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter = and i64 %1, 1
  %3 = icmp eq i64 %1, 1
  br i1 %3, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %1, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.016.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.x, %.lr.ph.i.i ] ; 4 uses
  %.016.i.i.a = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %22, %.lr.ph.i.i ] ; 3 uses
  %.01215.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ab, %.lr.ph.i.i ]
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 %.016.i.i.a ; 2 uses
  %5 = load i8, ptr %4, align 1, !tbaa !14, !noalias !29
  %6 = lshr i8 %5, 4
  %7 = zext nneg i8 %6 to i64
  %8 = getelementptr inbounds nuw i8, ptr @.str, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !14, !noalias !29
  %10 = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !29
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 %.016.i.i
  store i8 %9, ptr %11, align 1, !tbaa !14
  %12 = load i8, ptr %4, align 1, !tbaa !14, !noalias !29
  %13 = and i8 %12, 15
  %14 = zext nneg i8 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr @.str, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !14, !noalias !29
  %17 = or disjoint i64 %.016.i.i, 2              ; 2 uses
  %18 = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !29
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %.016.i.i
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 1
  store i8 %16, ptr %20, align 1, !tbaa !14
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 %.016.i.i.a
  %i.k = getelementptr inbounds nuw i8, ptr %21, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14, !noalias !29
  %i.m = lshr i8 %i.l, 4
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @.str, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14, !noalias !29
  %i.q = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %17
  store i8 %i.p, ptr %i.r, align 1, !tbaa !14
  %i.s = load i8, ptr %i.k, align 1, !tbaa !14, !noalias !29
  %i.t = and i8 %i.s, 15
  %i.u = zext nneg i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @.str, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14, !noalias !29
  %i.x = add i64 %.016.i.i, 4                     ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store i8 %i.w, ptr %i.aa, align 1, !tbaa !14
  %22 = add nuw i64 %.016.i.i.a, 2                ; 2 uses
  %i.ab = add nuw i64 %.01215.i.i, 2              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ab, %unroll_iter
  br i1 %exitcond.not.i.i, label %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !16

_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.016.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.x, %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01215.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %22, %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 %.01215.i.i.epil.init ; 2 uses
  %24 = load i8, ptr %23, align 1, !tbaa !14, !noalias !29
  %25 = lshr i8 %24, 4
  %26 = zext nneg i8 %25 to i64
  %27 = getelementptr inbounds nuw i8, ptr @.str, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !14, !noalias !29
  %29 = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !29
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 %.016.i.i.epil.init
  store i8 %28, ptr %30, align 1, !tbaa !14
  %31 = load i8, ptr %23, align 1, !tbaa !14, !noalias !29
  %32 = and i8 %31, 15
  %33 = zext nneg i8 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr @.str, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !14, !noalias !29
  %36 = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !29
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 %.016.i.i.epil.init
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 1
  store i8 %35, ptr %38, align 1, !tbaa !14
  br label %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit

_ZN5arrow9HexEncodeB5cxx11EPKcm.exit:             ; preds = %.lr.ph.i.i.epil.preheader, %_ZN5arrow9HexEncodeB5cxx11EPKcm.exit.loopexit.unr-lcssa, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6EscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN5arrow6EscapeB5cxx11EPKcm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %2, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow13ParseHexValueEPKcPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !14      ; 3 uses
  %i.b = add i8 %i.a, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.b, 10
  %i.c = add i8 %i.a, -65
  %or.cond5.i = icmp ult i8 %i.c, 6
  %i.d = add nsw i8 %i.a, -55
  %spec.select.i = select i1 %or.cond5.i, i8 %i.d, i8 -1
  %.0.i = select i1 %or.cond.i, i8 %i.b, i8 %spec.select.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14    ; 3 uses
  %i.g = add i8 %i.f, -48                         ; 2 uses
  %or.cond.i9 = icmp ult i8 %i.g, 10
  %i.h = add i8 %i.f, -65
  %or.cond5.i10 = icmp ult i8 %i.h, 6
  %i.i = add nsw i8 %i.f, -55
  %spec.select.i11 = select i1 %or.cond5.i10, i8 %i.i, i8 -1
  %.0.i12 = select i1 %or.cond.i9, i8 %i.g, i8 %spec.select.i11 ; 2 uses
  %i.j = icmp eq i8 %.0.i, -1
  %i.k = icmp eq i8 %.0.i12, -1
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(26) @.str.6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = shl i8 %.0.i, 4
  %i.m = or i8 %i.l, %.0.i12
  store i8 %i.m, ptr %2, align 1, !tbaa !14
  store ptr null, ptr %0, align 8, !tbaa !30, !alias.scope !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14ParseHexValuesESt17basic_string_viewIcSt11char_traitsIcEEPh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i64 %1, ptr nofree readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = and i64 %1, 1
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.b = lshr exact i64 %1, 1
  %.not18 = icmp eq i64 %1, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA27_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(27) @.str.7)
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader, %_ZN5arrow6StatusD2Ev.exit14
  %.017 = phi i64 [ %i.t, %_ZN5arrow6StatusD2Ev.exit14 ], [ 0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.c = shl nuw i64 %.017, 1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14, !noalias !36 ; 3 uses
  %i.f = add i8 %i.e, -48                         ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.f, 10
  %i.g = add i8 %i.e, -65
  %or.cond5.i.i = icmp ult i8 %i.g, 6
  %i.h = add nsw i8 %i.e, -55
  %spec.select.i.i = select i1 %or.cond5.i.i, i8 %i.h, i8 -1
  %.0.i.i = select i1 %or.cond.i.i, i8 %i.f, i8 %spec.select.i.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !14, !noalias !36 ; 3 uses
  %i.k = add i8 %i.j, -48                         ; 2 uses
  %or.cond.i9.i = icmp ult i8 %i.k, 10
  %i.l = add i8 %i.j, -65
  %or.cond5.i10.i = icmp ult i8 %i.l, 6
  %i.m = add nsw i8 %i.j, -55
  %spec.select.i11.i = select i1 %or.cond5.i10.i, i8 %i.m, i8 -1
  %.0.i12.i = select i1 %or.cond.i9.i, i8 %i.k, i8 %spec.select.i11.i ; 2 uses
  %i.n = icmp eq i8 %.0.i.i, -1
  %i.o = icmp eq i8 %.0.i12.i, -1
  %or.cond.i = or i1 %i.n, %i.o
  br i1 %or.cond.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %.017
  %i.q = shl i8 %.0.i.i, 4
  %i.r = or i8 %i.q, %.0.i12.i
  store i8 %i.r, ptr %i.p, align 1, !tbaa !14, !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN5arrow6StatusD2Ev.exit14

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.lr.ph
  call void @_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(26) @.str.6)
  %.pr = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.s = icmp eq ptr %.pr, null
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit14, label %.critedge

_ZN5arrow6StatusD2Ev.exit14:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.t = add nuw nsw i64 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !30, !alias.scope !40
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11SplitStringESt17basic_string_viewIcSt11char_traitsIcEEcl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, i64 %1, ptr %2, i8 noundef signext %3, i64 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp sgt i64 %4, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = add nsw i64 %4, -1
  %i.e = sext i8 %3 to i32
  %i.f = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit, %bb.a
  %i.g = phi ptr [ null, %bb.a ], [ %i.ao, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 9 uses
  %i.h = phi ptr [ null, %bb.a ], [ %i.ap, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %i.i = phi ptr [ null, %bb.a ], [ %i.aq, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 13 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.as, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 9 uses
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 4
  %.not = icmp ugt i64 %i.d, %i.m
  %i.n = icmp ult i64 %.0, %1
  %or.cond = select i1 %.not, i1 %i.n, i1 false
  br i1 %or.cond, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

bb.d:                                             ; preds = %bb.b
  %.old = icmp ult i64 %.0, %1
  br i1 %.old, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.c, %bb.d
  %i.o = sub nuw i64 %1, %.0
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.0
  %i.q = tail call ptr @memchr(ptr noundef %i.p, i32 noundef %i.e, i64 noundef %i.o) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.f
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %bb.e, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.d, %bb.c
  %.011 = phi i64 [ -1, %bb.c ], [ -1, %bb.d ], [ %i.s, %bb.e ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 3 uses
  %i.t = icmp ugt i64 %.0, %1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  store ptr %i.i, ptr %0, align 8
  store ptr %i.g, ptr %i.c, align 8
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i64 noundef %.0, i64 noundef %1) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %i.u = sub i64 %.011, %.0
  %i.v = sub nuw i64 %1, %.0
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %.0 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %.sroa.speculated.i, ptr %i.h, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.b, align 8, !tbaa !45
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.y = ptrtoint ptr %i.g to i64
end_hunk_1
