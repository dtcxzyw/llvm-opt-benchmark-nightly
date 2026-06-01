inline.NumInlined: 188
inline.NumDeleted: 90
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%"class.std::__shared_count" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%union.anon = type { i64, [8 x i8] }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.arrow::util::ArrowLog" = type <{ %"class.arrow::util::ArrowLogBase", ptr, i8, [7 x i8] }>
%"class.arrow::util::ArrowLogBase" = type { ptr }

$_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN5arrow4util12ArrowLogBaselsIA43_cEERS1_RKT_ = comdat any

$_ZN5arrow4util12ArrowLogBaselsIA40_cEERS1_RKT_ = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

@.str = private unnamed_addr constant [52 x i8] c"/opt-bench/work/arrow/arrow/cpp/src/arrow/status.cc\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c" Check failed: (code) != (StatusCode::OK) \00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Cannot construct ok status with message\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Key error\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Type error\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Cancelled\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"IOError\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Capacity error\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Index error\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"NotImplemented\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Serialization error\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"CodeGenError in Gandiva\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"ExpressionValidationError\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"ExecutionError in Gandiva\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c". Detail: \00", align 1
@_ZZNK5arrow6Status7messageB5cxx11EvE10no_messageB5cxx11 = internal constant { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, { [16 x i8] } } { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider" { ptr getelementptr (i8, ptr @_ZZNK5arrow6Status7messageB5cxx11EvE10no_messageB5cxx11, i64 16) }, i64 0, { [16 x i8] } zeroinitializer }, align 8
@_ZZNK5arrow6Status6detailEvE9no_detail = internal global { ptr, %"class.std::__shared_count" } zeroinitializer, align 8
@_ZGVZNK5arrow6Status6detailEvE9no_detail = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.21 = private unnamed_addr constant [25 x i8] c"-- Arrow Fatal Error --\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@switch.table._ZN5arrow6Status12CodeAsStringB5cxx11ENS_10StatusCodeE = private unnamed_addr constant [43 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.8, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.15, ptr @.str.16, ptr @.str.17], align 8

@_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = unnamed_addr alias void (ptr, i8, ptr), ptr @_ZN5arrow6StatusC2ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE = unnamed_addr alias void (ptr, i8, ptr, ptr), ptr @_ZN5arrow6StatusC2ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6StatusC2ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !7
  %i.b = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #18
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !15

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #19 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !16
  store i8 %i.k, ptr %i.j, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow6StatusC2ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 8 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.p, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !22
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #20, !inline_history !25
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #20, !inline_history !25
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.j ], [ %i.ac, %bb.k ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.l, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !15

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #20
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  %i.ae = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  %i.aj = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.m
  %i.al = load i64, ptr %i.a, align 8, !tbaa !16
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6StatusC2ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, i8 noundef signext %1, ptr noundef %2, ptr noundef captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %bb.b, label %.critedge15, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull @.str, i32 noundef 30, i32 noundef 3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA43_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(43) @.str.1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA40_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(40) @.str.2)
          to label %.critedge unwind label %bb.e  ; 0 uses

.critedge:                                        ; preds = %bb.c
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge15

.critedge15:                                      ; preds = %bb.a, %.critedge
  %i.c = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 7 uses
  store i8 %1, ptr %i.c, align 16, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !7
  %i.g = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %.critedge15
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14   ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.critedge15
  store ptr %i.g, ptr %i.e, align 8, !tbaa !11
  %i.n = load i64, ptr %i.h, align 8, !tbaa !16
  store i64 %i.n, ptr %i.f, align 8, !tbaa !16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
end_hunk_0
begin_hunk_1_@_ZN5arrow6Status8CopyFromERKS0_:bb.a

bb.g:                                             ; preds = %bb.f
  %i.s = icmp slt i64 %i.q, 0
  br i1 %i.s, label %.noexc.i.i, label %bb.h

.noexc.i.i:                                       ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #18
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.t = add nuw i64 %i.q, 1                      ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !15

.noexc6.i.i:                                      ; preds = %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #18
          to label %.noexc7 unwind label %bb.n

.noexc7:                                          ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.h
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #19
          to label %.noexc8 unwind label %bb.n    ; 2 uses

.noexc8:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.v, ptr %i.l, align 8, !tbaa !11
  store i64 %i.q, ptr %i.n, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc8, %bb.f
  %i.w = phi ptr [ %i.v, %.noexc8 ], [ %i.n, %bb.f ] ; 3 uses
  switch i64 %i.q, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.o, align 1, !tbaa !16
  store i8 %i.x, ptr %i.w, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.q, ptr %i.y, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q
  store i8 0, ptr %i.z, align 1, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !34
  store <2 x ptr> %i.ae, ptr %i.aa, align 8, !tbaa !34
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6Status5StateC2ERKS1_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3
  br label %_ZN5arrow6Status5StateC2ERKS1_.exit

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6Status5StateC2ERKS1_.exit

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 56) #21
  resume { ptr, i32 } %i.ak

_ZN5arrow6Status5StateC2ERKS1_.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.l, %bb.m, %bb.e, %bb.d
  %.sink = phi ptr [ null, %bb.d ], [ %i.e, %bb.e ], [ %i.j, %bb.m ], [ %i.j, %bb.l ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ]
  store ptr %.sink, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !22
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !43
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !43
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !15

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !16
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #21
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #21
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow6Status12CodeAsStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge.i.i, label %_ZNK5arrow6Status4codeEv.exit

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !7
  store i16 19279, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.e, align 2, !tbaa !16
  br label %bb.b

_ZNK5arrow6Status4codeEv.exit:                    ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 8, !tbaa !26
  tail call void @_ZN5arrow6Status12CodeAsStringB5cxx11ENS_10StatusCodeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %i.f)
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow6Status4codeEv.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6Status12CodeAsStringB5cxx11ENS_10StatusCodeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = icmp ult i8 %1, 43
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %3 = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5arrow6Status12CodeAsStringB5cxx11ENS_10StatusCodeE, i64 %3
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %switch.load, %bb.b ], [ @.str.18, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #20 ; 8 uses
  %i.c = icmp ugt i64 %i.b, 15
  br i1 %i.c, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.d = icmp slt i64 %i.b, 0
  br i1 %i.d, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #18
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.e = add nuw i64 %i.b, 1                      ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !15

.noexc11.i:                                       ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #19 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !11
  store i64 %i.b, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.c
  %i.h = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.b, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %.0, align 1, !tbaa !16
  store i8 %i.i, ptr %i.h, align 1, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %.0, i64 %i.b, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.j, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  store i8 0, ptr %i.k, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.a = load ptr, ptr %1, align 8, !tbaa !36, !noalias !44 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit.thread, label %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit

_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit.thread: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !7, !alias.scope !44
  store i16 19279, ptr %i.c, align 8, !alias.scope !44
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !14, !alias.scope !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.e, align 2, !tbaa !16, !alias.scope !44
  br label %bb.ae

_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit:    ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 8, !tbaa !26, !noalias !44
  tail call void @_ZN5arrow6Status12CodeAsStringB5cxx11ENS_10StatusCodeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %i.f)
  %.pre = load ptr, ptr %1, align 8, !tbaa !36
  %i.g = icmp eq ptr %.pre, null
  br i1 %i.g, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 5 uses
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, 9223372036854775806
  br i1 %i.k, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.l = add nsw i64 %i.i, 2                      ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.o = icmp eq ptr %i.m, %i.n                   ; 2 uses
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.p = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = load i64, ptr %i.n, align 8
  %i.r = select i1 %i.o, i64 15, i64 %i.q
  %.not.i.i.i = icmp ugt i64 %i.l, %i.r
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  store i16 8250, ptr %i.s, align 1
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %bb.f unwind label %bb.ab

bb.f:                                             ; preds = %bb.d, %bb.e
  store i64 %i.l, ptr %i.h, align 8, !tbaa !14
  %i.t = load ptr, ptr %0, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i8 0, ptr %i.u, align 1, !tbaa !16
  %i.v = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !11   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !14   ; 6 uses
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !14  ; 5 uses
  %i.ab = sub i64 9223372036854775807, %i.aa
  %i.ac = icmp ult i64 %i.ab, %i.z
  br i1 %i.ac, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ad = add i64 %i.aa, %i.z                     ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.n                 ; 2 uses
  br i1 %i.af, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ag = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ah = load i64, ptr %i.n, align 8
  %i.ai = select i1 %i.af, i64 15, i64 %i.ah
  %.not.i.i.i.i = icmp ugt i64 %i.ad, %i.ai
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not8.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.z, 1
  br i1 %cond.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %i.x, align 1, !tbaa !16
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !16
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.x, i64 %i.z, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.z)
          to label %bb.m unwind label %bb.ab

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.l
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !14
  %i.al = load ptr, ptr %0, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  store i8 0, ptr %i.am, align 1, !tbaa !16
  %i.an = load ptr, ptr %1, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.ae, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !14  ; 5 uses
  %i.ar = icmp sgt i64 %i.aq, 9223372036854775797
  br i1 %i.ar, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i11

.invoke:                                          ; preds = %bb.n, %bb.f, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #18
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i11: ; preds = %bb.n
  %i.as = add nsw i64 %i.aq, 10                   ; 3 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.n                 ; 2 uses
  br i1 %i.au, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i12

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i11
  %i.av = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.av)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i12
end_hunk_1
