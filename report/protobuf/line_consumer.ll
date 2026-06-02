inline.NumInlined: 269
inline.NumDeleted: 106
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.absl::lts_20250512::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.google::protobuf::io::FileInputStream" = type { %"class.google::protobuf::io::ZeroCopyInputStream", %"class.google::protobuf::io::FileInputStream::CopyingFileInputStream", %"class.google::protobuf::io::CopyingInputStreamAdaptor" }
%"class.google::protobuf::io::ZeroCopyInputStream" = type { ptr }
%"class.google::protobuf::io::FileInputStream::CopyingFileInputStream" = type <{ %"class.google::protobuf::io::CopyingInputStream", i32, i8, i8, [2 x i8], i32, i8, [3 x i8] }>
%"class.google::protobuf::io::CopyingInputStream" = type { ptr }
%"class.google::protobuf::io::CopyingInputStreamAdaptor" = type <{ %"class.google::protobuf::io::ZeroCopyInputStream", ptr, i8, i8, [6 x i8], i64, %"class.std::unique_ptr", i32, i32, i32, [4 x i8] }>
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.google::protobuf::compiler::objectivec::(anonymous namespace)::Parser" = type { ptr, i32, %"class.std::__cxx11::basic_string" }

$_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

@.str = private unnamed_addr constant [24 x i8] c"error: Unable to open \22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\22, \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"error: \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" Line \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"ConsumeLine failed without setting an error.\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE = external local_unnamed_addr constant [256 x i8], align 16
@.str.7 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"ParseSimple Internal error: finished with pending data.\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8compiler10objectivec15ParseSimpleFileESt17basic_string_viewIcSt11char_traitsIcEEPNS2_12LineConsumerEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(i64 %0, ptr %1, ptr noundef %2, ptr noundef captures(address) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %10 = alloca %"class.google::protobuf::io::FileInputStream", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 14 uses
  %i.c = icmp eq ptr %1, null
  %i.d = icmp ne i64 %0, 0
  %or.cond.i.i.i = and i1 %i.d, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br i1 %or.cond.i.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.b, ptr %4, align 8, !tbaa !7
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #13
          to label %.noexc unwind label %.loopexit.split-lp

.split:                                           ; preds = %bb.a
  %i.f = icmp ugt i64 %0, 15
  br i1 %i.f, label %.noexc.i.i.i.us, label %._crit_edge.i.i.i.i.preheader

._crit_edge.i.i.i.i.preheader:                    ; preds = %.split
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %0
  br label %._crit_edge.i.i.i.i

.noexc.i.i.i.us:                                  ; preds = %.split, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.b, ptr %4, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.b unwind label %.loopexit.split.us ; 2 uses

bb.b:                                             ; preds = %.noexc.i.i.i.us
  store ptr %i.h, ptr %4, align 8, !tbaa !13
  %i.i = load i64, ptr %i.a, align 8, !tbaa !11
  store i64 %i.i, ptr %i.b, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %1, i64 %0, i1 false)
  %i.j = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !16
  %i.k = load ptr, ptr %4, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.m = load ptr, ptr %4, align 8, !tbaa !13
  %i.n = invoke i32 (ptr, i32, ...) @open(ptr noundef %i.m, i32 noundef 0)
          to label %bb.c unwind label %.split42.us ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %4, align 8, !tbaa !13     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us: ; preds = %bb.c
  %i.q = load i64, ptr %i.b, align 8, !tbaa !15
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.s = icmp slt i32 %i.n, 0
  br i1 %i.s, label %bb.d, label %.split47.us

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
  %i.t = tail call ptr @__errno_location() #15
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.v = icmp eq i32 %i.u, 4
  br i1 %i.v, label %.noexc.i.i.i.us, label %.critedge, !llvm.loop !17

.loopexit.split.us:                               ; preds = %.noexc.i.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

.split42.us:                                      ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.preheader, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.b, ptr %4, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  switch i64 %0, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

.noexc:                                           ; preds = %.split.us
  unreachable

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.x = load i8, ptr %1, align 1, !tbaa !15
  store i8 %i.x, ptr %i.b, align 8, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 1 %1, i64 %0, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  store i64 %0, ptr %i.e, align 8, !tbaa !16
  store i8 0, ptr %i.g, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.y = invoke i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.b, i32 noundef 0)
          to label %bb.h unwind label %.split42   ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %4, align 8, !tbaa !13     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !15
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ad = icmp slt i32 %i.y, 0
  br i1 %i.ad, label %bb.i, label %.split47.us

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = tail call ptr @__errno_location() #15
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3  ; 2 uses
  %i.ag = icmp eq i32 %i.af, 4
  br i1 %i.ag, label %._crit_edge.i.i.i.i, label %.critedge, !llvm.loop !17

.critedge:                                        ; preds = %bb.i, %bb.d
  %11 = phi i32 [ %i.u, %bb.d ], [ %i.af, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store i64 23, ptr %6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i64 %0, ptr %7, align 8, !tbaa !11
  %.sroa.2.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i19, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  store i64 3, ptr %8, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.1, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.aj = call ptr @strerror(i32 noundef %11) #12 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.ak = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #12
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit:       ; preds = %.critedge, %bb.j
  %.sroa.0.0.i.i = phi i64 [ %i.ak, %bb.j ], [ 0, %.critedge ]
  store i64 %.sroa.0.0.i.i, ptr %9, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.am = load ptr, ptr %3, align 8, !tbaa !13    ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  %i.ap = load ptr, ptr %5, align 8, !tbaa !13    ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq                ; 2 uses
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  br i1 %i.ar, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  br i1 %i.ar, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !16 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %.not21.i = icmp eq ptr %5, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  switch i64 %i.at, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !15
  store i8 %i.av, ptr %i.am, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ap, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !16
  %i.ay = load ptr, ptr %3, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !15
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ap, ptr %3, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = load <2 x i64>, ptr %i.bb, align 8, !tbaa !15
  store <2 x i64> %i.bc, ptr %i.ba, align 8, !tbaa !15
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bd = load i64, ptr %i.an, align 8, !tbaa !15
  store ptr %i.ap, ptr %3, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !tbaa !15
  store <2 x i64> %i.bg, ptr %i.bf, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.am, ptr %5, align 8, !tbaa !13
  store i64 %i.bd, ptr %i.aq, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aq, ptr %5, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.bh = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.am, %bb.o ], [ %i.aq, %bb.p ], [ %i.ap, %bb.k ]
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !16
  store i8 0, ptr %i.bh, align 1, !tbaa !15
  %i.bj = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !15
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.t

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

.split42:                                         ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.split42.us, %.split42
  %.us-phi45 = phi { ptr, i32 } [ %i.bo, %.split42 ], [ %i.w, %.split42.us ] ; 2 uses
  %i.bp = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.b
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.q
  %i.br = load i64, ptr %i.b, align 8, !tbaa !15
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.q, %.loopexit.split.us, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %.pn = phi { ptr, i32 } [ %.us-phi45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %.us-phi45, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.u

.split47.us:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
  %.us-phi48 = phi i32 [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @_ZN6google8protobuf2io15FileInputStreamC1Eii(ptr noundef nonnull align 8 dereferenceable(88) %10, i32 noundef %.us-phi48, i32 noundef -1)
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i8 1, ptr %i.bt, align 4, !tbaa !21
  %i.bu = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler10objectivec17ParseSimpleStreamERNS0_2io19ZeroCopyInputStreamESt17basic_string_viewIcSt11char_traitsIcEEPNS2_12LineConsumerEPNSt7__cxx1112basic_stringIcS8_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 %0, ptr %1, ptr noundef %2, ptr noundef %3)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.split47.us
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @_ZN6google8protobuf2io25CopyingInputStreamAdaptorD1Ev(ptr noundef nonnull align 8 dereferenceable(52) %i.bv) #12
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN6google8protobuf2io15FileInputStream22CopyingFileInputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.bw) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.t

bb.s:                                             ; preds = %.split47.us
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @_ZN6google8protobuf2io25CopyingInputStreamAdaptorD1Ev(ptr noundef nonnull align 8 dereferenceable(52) %i.by) #12
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN6google8protobuf2io15FileInputStream22CopyingFileInputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.bz) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.0 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.bu, %bb.r ]
  ret i1 %.0

bb.u:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn15 = phi { ptr, i32 } [ %i.bx, %bb.s ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  resume { ptr, i32 } %.pn15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

declare void @_ZN6google8protobuf2io15FileInputStreamC1Eii(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
end_hunk_0
