inline.NumInlined: 183
inline.NumDeleted: 91
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.arrow::util::ArrowLog" = type <{ %"class.arrow::util::ArrowLogBase", ptr, i8, [7 x i8] }>
%"class.arrow::util::ArrowLogBase" = type { ptr }

$_ZN5arrow4util12ArrowLogBaselsIA43_cEERS1_RKT_ = comdat any

$_ZN5arrow4util12ArrowLogBaselsIA40_cEERS1_RKT_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

@.str = private unnamed_addr constant [119 x i8] c"/opt-bench/work/velox/velox/build/CMake/resolve_dependency_modules/arrow/arrow_ep/src/arrow_ep/cpp/src/arrow/status.cc\00", align 1
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
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.21 = private unnamed_addr constant [25 x i8] c"-- Arrow Fatal Error --\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = unnamed_addr alias void (ptr, i8, ptr), ptr @_ZN5arrow6StatusC2ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE = unnamed_addr alias void (ptr, i8, ptr, ptr), ptr @_ZN5arrow6StatusC2ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6StatusC2ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !7
  %i.c = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.e, ptr %i.a, align 8, !tbaa !15
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !11
  %i.h = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.h, ptr %i.b, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !16
  store i8 %i.j, ptr %i.i, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !14
  %i.m = load ptr, ptr %3, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow6StatusC2ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17   ; 8 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.q, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !22
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #15, !inline_history !25
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #15, !inline_history !25
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.h ], [ %i.ad, %bb.i ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #15
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.af = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.b
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !16
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  %i.ak = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.b
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.am = load i64, ptr %i.b, align 8, !tbaa !16
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6StatusC2ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0, i8 noundef signext %1, ptr noundef %2, ptr noundef captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %bb.b, label %.critedge15, !prof !26

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA43_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(43) @.str.1)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA40_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(40) @.str.2)
          to label %.critedge unwind label %bb.p  ; 0 uses

.critedge:                                        ; preds = %bb.c
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.critedge15

.critedge15:                                      ; preds = %bb.a, %.critedge
  %i.c = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #17 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 5 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !14
  store i8 0, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !27
  store i8 %1, ptr %i.c, align 8, !tbaa !30
  %i.h = load ptr, ptr %2, align 8, !tbaa !11     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.critedge15
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14   ; 5 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %.not21.i = icmp eq ptr %2, %i.d
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.e, !prof !26

bb.e:                                             ; preds = %bb.d
  switch i64 %i.l, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.h, align 1, !tbaa !16
  store i8 %i.n, ptr %i.e, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %i.h, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
end_hunk_0
begin_hunk_1_@_Znwm
; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !27     ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !22
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #15, !inline_history !39
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #15, !inline_history !39
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !26

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #15
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !16
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #16
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #16
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  %i.aa = load ptr, ptr %1, align 8, !tbaa !27    ; 6 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN5arrow6Status5StateC2ERKS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #17 ; 9 uses
  %i.ad = load i8, ptr %i.aa, align 8, !tbaa !30
  store i8 %i.ad, ptr %i.ac, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 3 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !7
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !15
  %i.ak = icmp ugt i64 %i.aj, 15
  br i1 %i.ak, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.al = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !11
  %i.am = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.j
  %i.an = phi ptr [ %i.al, %.noexc ], [ %i.ag, %bb.j ] ; 2 uses
  switch i64 %i.aj, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.ao = load i8, ptr %i.ah, align 1, !tbaa !16
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.ah, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !14
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17 ; 2 uses
  %i.ax = load <2 x ptr>, ptr %i.au, align 8, !tbaa !40
  store <2 x ptr> %i.ax, ptr %i.at, align 8, !tbaa !40
  %.not.i.i.i.i4 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i4, label %_ZN5arrow6Status5StateC2ERKS1_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !3
  br label %_ZN5arrow6Status5StateC2ERKS1_.exit

bb.o:                                             ; preds = %bb.m
  %i.bc = atomicrmw volatile add ptr %i.ay, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6Status5StateC2ERKS1_.exit

bb.p:                                             ; preds = %.noexc.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 56) #16
  resume { ptr, i32 } %i.bd

_ZN5arrow6Status5StateC2ERKS1_.exit:              ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.i
  %storemerge = phi ptr [ null, %bb.i ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %i.ac, %bb.n ], [ %i.ac, %bb.o ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !27
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow6Status12CodeAsStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
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
  %i.f = load i8, ptr %i.a, align 8, !tbaa !30
  tail call void @_ZN5arrow6Status12CodeAsStringB5cxx11ENS_10StatusCodeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %i.f)
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow6Status4codeEv.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow6Status12CodeAsStringB5cxx11ENS_10StatusCodeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  switch i8 %1, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %2
    i8 2, label %3
    i8 3, label %4
    i8 4, label %5
    i8 8, label %6
    i8 5, label %7
    i8 6, label %8
    i8 7, label %9
    i8 9, label %10
    i8 10, label %11
    i8 11, label %12
    i8 40, label %13
    i8 41, label %14
    i8 42, label %15
  ]

2:                                                ; preds = %bb.a
  br label %bb.c

3:                                                ; preds = %bb.a
  br label %bb.c

4:                                                ; preds = %bb.a
  br label %bb.c

5:                                                ; preds = %bb.a
  br label %bb.c

6:                                                ; preds = %bb.a
  br label %bb.c

7:                                                ; preds = %bb.a
  br label %bb.c

8:                                                ; preds = %bb.a
  br label %bb.c

9:                                                ; preds = %bb.a
  br label %bb.c

10:                                               ; preds = %bb.a
  br label %bb.c

11:                                               ; preds = %bb.a
  br label %bb.c

12:                                               ; preds = %bb.a
  br label %bb.c

13:                                               ; preds = %bb.a
  br label %bb.c

14:                                               ; preds = %bb.a
  br label %bb.c

15:                                               ; preds = %bb.a
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %.0 = phi ptr [ @.str.18, %bb.b ], [ @.str.17, %15 ], [ @.str.4, %2 ], [ @.str.5, %3 ], [ @.str.6, %4 ], [ @.str.7, %5 ], [ @.str.8, %6 ], [ @.str.9, %7 ], [ @.str.10, %8 ], [ @.str.11, %9 ], [ @.str.12, %10 ], [ @.str.13, %11 ], [ @.str.14, %12 ], [ @.str.15, %13 ], [ @.str.16, %14 ], [ @.str.3, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !7
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !11
  %i.f = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.f, ptr %i.b, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.g = phi ptr [ %i.e, %.noexc.i ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.c, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.h = load i8, ptr %.0, align 1, !tbaa !16
  store i8 %i.h, ptr %i.g, align 1, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %.0, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !14
  %i.k = load ptr, ptr %0, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.a = load ptr, ptr %1, align 8, !tbaa !27, !noalias !41 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit.thread, label %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit

_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit.thread: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !7, !alias.scope !41
  store i16 19279, ptr %i.c, align 8, !alias.scope !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !14, !alias.scope !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.e, align 2, !tbaa !16, !alias.scope !41
  br label %bb.i

_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit:    ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 8, !tbaa !30, !noalias !41
  tail call void @_ZN5arrow6Status12CodeAsStringB5cxx11ENS_10StatusCodeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %i.f)
  %.pre = load ptr, ptr %1, align 8, !tbaa !27
  %i.g = icmp eq ptr %.pre, null
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, 4611686018427387902
  br i1 %i.k, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.p = load i64, ptr %i.h, align 8, !tbaa !14
  %i.q = sub i64 4611686018427387903, %i.p
  %i.r = icmp ult i64 %i.q, %i.o
  br i1 %i.r, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.t, i64 noundef %i.o)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.v = load ptr, ptr %1, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.y = load i64, ptr %i.h, align 8, !tbaa !14
  %i.z = add i64 %i.y, -4611686018427387894
  %i.aa = icmp ult i64 %i.z, 10
  br i1 %i.aa, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11

.invoke:                                          ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #18
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11: ; preds = %bb.c
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.20, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit14 unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.ac = load ptr, ptr %1, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit14
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !14 ; 2 uses
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !14
  %i.al = sub i64 4611686018427387903, %i.ak
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i15

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #18
          to label %.noexc16 unwind label %bb.h

.noexc16:                                         ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i15: ; preds = %bb.d
  %i.an = load ptr, ptr %2, align 8, !tbaa !11
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.an, i64 noundef %i.aj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit18 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i15
  %i.ap = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit18
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.i

bb.f:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit14
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i15, %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.h
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.g
  %.pn = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.aw, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.j

bb.i:                                             ; preds = %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit.thread, %_ZNK5arrow6Status12CodeAsStringB5cxx11Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  ret void

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.au, %bb.f ]
  %i.bc = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
end_hunk_1
