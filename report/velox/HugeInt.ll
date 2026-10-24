Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/HugeInt?download=true
inline.NumInlined: 160
inline.NumDeleted: 77
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.facebook::velox::detail::VeloxCheckFailArgs" = type { ptr, i64, ptr, ptr, ptr, ptr, i8 }
%"class.folly::BasicFixedString" = type { [8 x i8], i64 }
%"class.folly::BasicFixedString.0" = type { [14 x i8], i64 }
%"struct.fmt::v11::detail::format_arg_store" = type { [1 x %"class.fmt::v11::detail::value"] }
%"class.fmt::v11::detail::value" = type { %union.anon.4 }
%union.anon.4 = type { i128 }
%"struct.fmt::v11::detail::format_arg_store.5" = type { [1 x %"class.fmt::v11::detail::value"] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN8facebook5velox12error_source19kErrorSourceRuntimeE = comdat any

$_ZN8facebook5velox10error_code13kInvalidStateE = comdat any

@_ZZN8facebook5velox7HugeInt5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 26, ptr @.str.1, ptr @.str.2, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str = private unnamed_addr constant [51 x i8] c"/opt-bench/work/velox/velox/velox/type/HugeInt.cpp\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"parse\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"!str.empty()\00", align 1
@_ZN8facebook5velox12error_source19kErrorSourceRuntimeE = linkonce_odr constant %"class.folly::BasicFixedString" { [8 x i8] c"RUNTIME\00", i64 7 }, comdat, align 8
@_ZN8facebook5velox10error_code13kInvalidStateE = linkonce_odr constant %"class.folly::BasicFixedString.0" { [14 x i8] c"INVALID_STATE\00", i64 13 }, comdat, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"Empty string cannot be converted to int128_t.\00", align 1
@_ZZN8facebook5velox7HugeInt5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18veloxCheckFailArgs_0 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 44, ptr @.str.1, ptr @.str.4, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"std::isdigit(str[idx])\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Invalid character {} in the string.\00", align 1
@_ZZN8facebook5velox7HugeInt5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18veloxCheckFailArgs_1 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 52, ptr @.str.1, ptr @.str.6, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"{} is out of range of int128_t\00", align 1
@_ZZN8facebook5velox7HugeInt5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18veloxCheckFailArgs_2 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 59, ptr @.str.1, ptr @.str.6, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@_ZZN8facebook5velox7HugeInt5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18veloxCheckFailArgs_3 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 65, ptr @.str.1, ptr @.str.6, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define noundef i128 @_ZN8facebook5velox7HugeInt5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.5", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.5", align 16 ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.5", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 9 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %.preheader, !prof !14

.preheader:                                       ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !15     ; 6 uses
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox7HugeInt5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.3) #10
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit: ; preds = %.preheader, %bb.c
  %.058139 = phi i64 [ 0, %.preheader ], [ %i.g, %bb.c ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.058139
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %.fr = freeze i8 %i.f                           ; 2 uses
  switch i8 %.fr, label %.critedge [
    i8 32, label %bb.c
    i8 43, label %.critedge.thread198
  ]

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %i.g = add nuw i64 %.058139, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %i.b
  br i1 %exitcond.not, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, !llvm.loop !19

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %i.h = icmp eq i8 %.fr, 45                      ; 3 uses
  %i.i = zext i1 %i.h to i64
  %spec.select = add nuw i64 %.058139, %i.i       ; 3 uses
  %i.j = icmp ult i64 %spec.select, %i.b
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.critedge.thread198:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %i.k = add nuw i64 %.058139, 1                  ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.b
  br i1 %i.l, label %.lr.ph.split.preheader, label %.thread

.lr.ph:                                           ; preds = %.critedge
  br i1 %i.h, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.critedge.thread198, %.lr.ph
  %.260141.ph = phi i64 [ %spec.select, %.lr.ph ], [ %i.k, %.critedge.thread198 ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.054142.us = phi i128 [ %i.u, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %.260141.us = phi i64 [ %i.v, %bb.h ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %.260141.us
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16    ; 4 uses
  %12 = add i8 %i.n, -58
  %isdigit.us = icmp ult i8 %12, -10
  br i1 %isdigit.us, label %.split.us, label %bb.d, !prof !14

bb.d:                                             ; preds = %.lr.ph.split.us
  %13 = zext nneg i8 %i.n to i32
  %i.o = add nsw i32 %13, -48                     ; 2 uses
  %i.p = zext nneg i32 %i.o to i128
  %i.q = icmp sgt i128 %.054142.us, 17014118346046923173168730371588410572
  br i1 %i.q, label %.split145.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i128 %.054142.us, 17014118346046923173168730371588410572
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %14 = icmp ugt i8 %i.n, 56
  br i1 %14, label %.split149.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i32 %i.o, 8
  br i1 %i.s, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.t = mul nsw i128 %.054142.us, 10
  %i.u = add nsw i128 %i.t, %i.p                  ; 2 uses
  %i.v = add nuw i64 %.260141.us, 1               ; 2 uses
  %exitcond168.not = icmp eq i64 %i.v, %i.b
  br i1 %exitcond168.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !20

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.ab
  %.054142 = phi i128 [ %i.cn, %bb.ab ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %.260141 = phi i64 [ %i.co, %bb.ab ], [ %.260141.ph, %.lr.ph.split.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %.260141
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16    ; 4 uses
  %15 = add i8 %i.x, -58
  %isdigit = icmp ult i8 %15, -10
  br i1 %isdigit, label %.split.us, label %bb.k, !prof !14

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.y = phi i8 [ %i.n, %.lr.ph.split.us ], [ %i.x, %.lr.ph.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11, !noalias !29
  %.sroa.03.0.insert.ext.i = zext i8 %i.y to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %1, align 16, !noalias !29
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.5, i64 35, i64 8, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11, !noalias !29
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox7HugeInt5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.5) #10
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.split.us
  unreachable

bb.j:                                             ; preds = %.split.us
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.ac

bb.k:                                             ; preds = %.lr.ph.split
  %16 = zext nneg i8 %i.x to i32
  %i.af = add nsw i32 %16, -48                    ; 2 uses
  %i.ag = zext nneg i32 %i.af to i128
  %i.ah = icmp sgt i128 %.054142, 17014118346046923173168730371588410572
  br i1 %i.ah, label %.split145.us, label %bb.p

.split145.us:                                     ; preds = %bb.k, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11, !noalias !30
  store ptr %i.d, ptr %2, align 16, !tbaa !16, !noalias !30
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.b, ptr %i.ai, align 8, !tbaa !16, !noalias !30
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.7, i64 30, i64 13, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11, !noalias !30
  invoke void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %.split145.us
  %i.aj = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.l
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox7HugeInt5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %6) #10
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  unreachable

bb.n:                                             ; preds = %.split145.us
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.n
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.o
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %.pn77 = phi { ptr, i32 } [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.ac

bb.p:                                             ; preds = %bb.k
  %i.ba = icmp eq i128 %.054142, 17014118346046923173168730371588410572
  br i1 %i.ba, label %bb.q, label %bb.ab

bb.q:                                             ; preds = %bb.p
  %17 = icmp ugt i8 %i.x, 55
  br i1 %17, label %bb.v, label %bb.aa

.split149.us:                                     ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11, !noalias !31
  store ptr %i.d, ptr %3, align 16, !tbaa !16, !noalias !31
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.b, ptr %i.bb, align 8, !tbaa !16, !noalias !31
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.7, i64 30, i64 13, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11, !noalias !31
  invoke void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %.split149.us
  %i.bc = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.r
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !16
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox7HugeInt5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18veloxCheckFailArgs_2, ptr noundef nonnull align 8 dereferenceable(32) %8) #10
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  unreachable

bb.t:                                             ; preds = %.split149.us
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.t
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.u
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %.pn74 = phi { ptr, i32 } [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.bn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.ac

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11, !noalias !32
  store ptr %i.d, ptr %4, align 16, !tbaa !16, !noalias !32
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.b, ptr %i.bt, align 8, !tbaa !16, !noalias !32
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.7, i64 30, i64 13, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11, !noalias !32
  invoke void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bu = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.w
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !16
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox7HugeInt5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18veloxCheckFailArgs_3, ptr noundef nonnull align 8 dereferenceable(32) %10) #10
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.y
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !16
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.z
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !16
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %.pn = phi { ptr, i32 } [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %i.cf, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.ac

bb.aa:                                            ; preds = %bb.q
  %i.cl = icmp eq i32 %i.af, 7
  br i1 %i.cl, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.p
  %i.cm = mul nsw i128 %.054142, 10
  %i.cn = add nsw i128 %i.cm, %i.ag               ; 2 uses
  %i.co = add nuw i64 %.260141, 1                 ; 2 uses
  %exitcond167.not = icmp eq i64 %i.co, %i.b
  br i1 %exitcond167.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.ab, %bb.h, %.critedge
  %.057197 = phi i1 [ %i.h, %.critedge ], [ true, %bb.h ], [ false, %bb.ab ]
  %.054.lcssa = phi i128 [ 0, %.critedge ], [ %i.u, %bb.h ], [ %i.cn, %bb.ab ] ; 2 uses
  %i.cp = sub nsw i128 0, %.054.lcssa
  %spec.select227 = select i1 %.057197, i128 %i.cp, i128 %.054.lcssa
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.aa, %bb.g, %._crit_edge, %.critedge.thread198
  %.2 = phi i128 [ 170141183460469231731687303715884105727, %bb.aa ], [ 0, %.critedge.thread198 ], [ -170141183460469231731687303715884105728, %bb.g ], [ %spec.select227, %._crit_edge ], [ 0, %bb.c ]
  ret i128 %.2

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn80 = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ]
  resume { ptr, i32 } %.pn80
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12errorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !18
  %i.b = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #10
  unreachable

end_hunk_0
