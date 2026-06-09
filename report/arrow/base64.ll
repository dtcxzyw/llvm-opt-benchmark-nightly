inline.NumInlined: 90
inline.NumDeleted: 46
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

@_ZN5arrow4utilL12base64_charsB5cxx11E = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1
@__dso_handle = external hidden global i8
@.str.2 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_base64.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !13
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util13base64_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 12 uses
  %i.b = alloca [4 x i8], align 1                 ; 8 uses
  %i.c = trunc i64 %1 to i32                      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 26 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !17, !alias.scope !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  store i64 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !14
  store i8 0, ptr %i.d, align 8, !tbaa !13, !alias.scope !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15, !noalias !14
  %.not51.i = icmp eq i32 %i.c, 0
  br i1 %.not51.i, label %_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %.promoted = load i8, ptr %i.f, align 1
  %.promoted152 = load i8, ptr %i.h, align 1      ; 2 uses
  %i.k = load i8, ptr %2, align 1, !tbaa !13, !noalias !14 ; 2 uses
  %.not.i.not183 = icmp eq i32 %i.c, 1
  br i1 %.not.i.not183, label %.lr.ph60.preheader.i, label %.loopexit44.i.1

.outer:                                           ; preds = %.loopexit44.i.thread
  %i.l = load i8, ptr %i.o, align 1, !tbaa !13, !noalias !14 ; 2 uses
  %.not.i.not = icmp eq i32 %i.n, 1
  br i1 %.not.i.not, label %.lr.ph60.preheader.i, label %.loopexit44.i.1, !llvm.loop !19

bb.b:                                             ; preds = %.loopexit44.i.1
  %i.m = getelementptr i8, ptr %.053.i.ph186, i64 2
  %i.n = add i32 %.in.i.ph185, -3                 ; 3 uses
  %i.o = getelementptr i8, ptr %.053.i.ph186, i64 3 ; 2 uses
  %i.p = load i8, ptr %i.m, align 1, !tbaa !13, !noalias !14 ; 8 uses
  %i.q = lshr i8 %i.ei, 2
  %i.r = shl i8 %i.ei, 4
  %i.s = and i8 %i.r, 48
  %i.t = lshr i8 %i.el, 4
  %i.u = or disjoint i8 %i.t, %i.s
  %i.v = shl i8 %i.el, 2
  %i.w = and i8 %i.v, 60
  %i.x = lshr i8 %i.p, 6
  %i.y = or disjoint i8 %i.x, %i.w
  %i.z = and i8 %i.p, 63                          ; 3 uses
  %i.aa = zext nneg i8 %i.q to i64
  %i.ab = load ptr, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, align 8, !tbaa !7, !noalias !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !18, !alias.scope !14 ; 6 uses
  %i.af = add i64 %i.ae, 1                        ; 7 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14 ; 6 uses
  %i.ah = icmp eq ptr %i.ag, %i.d                 ; 2 uses
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.b
  %i.ai = icmp samesign ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp samesign ugt i64 %i.af, 15
  br i1 %i.aj, label %bb.c, label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i: ; preds = %bb.b
  %i.ak = load i64, ptr %i.d, align 8, !alias.scope !14 ; 3 uses
  %i.al = icmp ugt i64 %i.af, %i.ak
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %bb.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.am = load i64, ptr %i.d, align 8, !alias.scope !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i
  %i.an = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i ], [ %i.am, %bb.c ]
  %i.ao = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i ], [ 15, %bb.c ]
  %i.ap = icmp slt i64 %i.af, 0
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  store i8 %i.ei, ptr %i.a, align 1, !tbaa !13, !noalias !14
  store i8 %i.el, ptr %i.f, align 1
  store i8 %i.p, ptr %i.h, align 1
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #16
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc36.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.aq = shl nuw i64 %i.ao, 1                    ; 2 uses
  %i.ar = icmp ult i64 %i.af, %i.aq
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 9223372036854775807)
  %.0.i.i = select i1 %i.ar, i64 %spec.store.select.i.i.i, i64 %i.af ; 2 uses
  %i.as = add nuw i64 %.0.i.i, 1                  ; 2 uses
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !21

bb.f:                                             ; preds = %bb.u, %bb.p, %bb.k, %bb.e
  store i8 %i.ei, ptr %i.a, align 1, !tbaa !13, !noalias !14
  store i8 %i.el, ptr %i.f, align 1
  store i8 %i.p, ptr %i.h, align 1
  invoke void @_ZSt17__throw_bad_allocv() #16
          to label %.noexc37.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc37.i:                                       ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #17
          to label %.noexc38.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 4 uses

.noexc38.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  switch i64 %i.ae, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %.noexc38.i
  %i.av = load i8, ptr %i.ag, align 1, !tbaa !13
  store i8 %i.av, ptr %i.au, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i

bb.h:                                             ; preds = %.noexc38.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr align 1 %i.ag, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i: ; preds = %bb.h, %bb.g, %.noexc38.i
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i
  %i.aw = icmp samesign ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.aw)
  br label %.noexc.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i
  %i.ax = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ax) #14
  br label %.noexc.i

.noexc.i:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.i
  store ptr %i.au, ptr %0, align 8, !tbaa !7, !alias.scope !14
  store i64 %.0.i.i, ptr %i.d, align 8, !tbaa !13, !alias.scope !14
  br label %bb.i

bb.i:                                             ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ay = phi ptr [ %i.au, %.noexc.i ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ae
  store i8 %i.ad, ptr %i.az, align 1, !tbaa !13
  store i64 %i.af, ptr %i.e, align 8, !tbaa !18, !alias.scope !14
  %i.ba = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.af
  store i8 0, ptr %i.bb, align 1, !tbaa !13
  %i.bc = zext nneg i8 %i.u to i64
  %i.bd = load ptr, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, align 8, !tbaa !7, !noalias !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !18, !alias.scope !14 ; 6 uses
  %i.bh = add i64 %i.bg, 1                        ; 7 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14 ; 6 uses
  %i.bj = icmp eq ptr %i.bi, %i.d                 ; 2 uses
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.1.i: ; preds = %bb.i
  %i.bk = load i64, ptr %i.d, align 8, !alias.scope !14 ; 3 uses
  %i.bl = icmp ugt i64 %i.bh, %i.bk
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1.i, label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1.i: ; preds = %bb.i
  %i.bm = icmp samesign ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp samesign ugt i64 %i.bh, 15
  br i1 %i.bn, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1.i
  %i.bo = load i64, ptr %i.d, align 8, !alias.scope !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.1.i
  %i.bp = phi i64 [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.1.i ], [ %i.bo, %bb.j ]
  %i.bq = phi i64 [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.1.i ], [ 15, %bb.j ]
  %i.br = icmp slt i64 %i.bh, 0
  br i1 %i.br, label %bb.d, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1.i
  %i.bs = shl nuw i64 %i.bq, 1                    ; 2 uses
  %i.bt = icmp ult i64 %i.bh, %i.bs
  %spec.store.select.i.i.1.i = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 9223372036854775807)
  %.0.i.1.i = select i1 %i.bt, i64 %spec.store.select.i.i.1.i, i64 %i.bh ; 2 uses
  %i.bu = add nuw i64 %.0.i.1.i, 1                ; 2 uses
  %i.bv = icmp slt i64 %i.bu, 0
  br i1 %i.bv, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.1.i, !prof !21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.1.i: ; preds = %bb.k
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #17
          to label %.noexc38.1.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 4 uses

.noexc38.1.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.1.i
  switch i64 %i.bg, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.1.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %.noexc38.1.i
  %i.bx = load i8, ptr %i.bi, align 1, !tbaa !13
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.1.i

bb.m:                                             ; preds = %.noexc38.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr align 1 %i.bi, i64 %i.bg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.1.i: ; preds = %bb.m, %bb.l, %.noexc38.1.i
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.1.i
  %i.by = add i64 %i.bp, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.by) #14
  br label %.noexc.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.1.i
  %i.bz = icmp samesign ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bz)
  br label %.noexc.1.i

.noexc.1.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.1.i
  store ptr %i.bw, ptr %0, align 8, !tbaa !7, !alias.scope !14
  store i64 %.0.i.1.i, ptr %i.d, align 8, !tbaa !13, !alias.scope !14
  br label %bb.n

bb.n:                                             ; preds = %.noexc.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.1.i
  %i.ca = phi ptr [ %i.bw, %.noexc.1.i ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1.i ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.1.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bg
  store i8 %i.bf, ptr %i.cb, align 1, !tbaa !13
  store i64 %i.bh, ptr %i.e, align 8, !tbaa !18, !alias.scope !14
  %i.cc = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bh
  store i8 0, ptr %i.cd, align 1, !tbaa !13
  %i.ce = zext nneg i8 %i.y to i64
  %i.cf = load ptr, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, align 8, !tbaa !7, !noalias !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !13
  %i.ci = load i64, ptr %i.e, align 8, !tbaa !18, !alias.scope !14 ; 6 uses
  %i.cj = add i64 %i.ci, 1                        ; 7 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14 ; 6 uses
  %i.cl = icmp eq ptr %i.ck, %i.d                 ; 2 uses
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2.i: ; preds = %bb.n
  %i.cm = load i64, ptr %i.d, align 8, !alias.scope !14 ; 3 uses
  %i.cn = icmp ugt i64 %i.cj, %i.cm
  br i1 %i.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.2.i, label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2.i: ; preds = %bb.n
  %i.co = icmp samesign ult i64 %i.ci, 16
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = icmp samesign ugt i64 %i.cj, 15
  br i1 %i.cp, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2.i
  %i.cq = load i64, ptr %i.d, align 8, !alias.scope !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.2.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2.i
  %i.cr = phi i64 [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2.i ], [ %i.cq, %bb.o ]
  %i.cs = phi i64 [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2.i ], [ 15, %bb.o ]
  %i.ct = icmp slt i64 %i.cj, 0
  br i1 %i.ct, label %bb.d, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.2.i
  %i.cu = shl nuw i64 %i.cs, 1                    ; 2 uses
  %i.cv = icmp ult i64 %i.cj, %i.cu
  %spec.store.select.i.i.2.i = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 9223372036854775807)
  %.0.i.2.i = select i1 %i.cv, i64 %spec.store.select.i.i.2.i, i64 %i.cj ; 2 uses
  %i.cw = add nuw i64 %.0.i.2.i, 1                ; 2 uses
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.2.i, !prof !21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.2.i: ; preds = %bb.p
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #17
          to label %.noexc38.2.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 4 uses

.noexc38.2.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.2.i
  switch i64 %i.ci, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %.noexc38.2.i
  %i.cz = load i8, ptr %i.ck, align 1, !tbaa !13
  store i8 %i.cz, ptr %i.cy, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2.i

bb.r:                                             ; preds = %.noexc38.2.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr align 1 %i.ck, i64 %i.ci, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2.i: ; preds = %bb.r, %bb.q, %.noexc38.2.i
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2.i
  %i.da = add i64 %i.cr, 1
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.da) #14
  br label %.noexc.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2.i
  %i.db = icmp samesign ult i64 %i.ci, 16
  tail call void @llvm.assume(i1 %i.db)
  br label %.noexc.2.i

.noexc.2.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.2.i
  store ptr %i.cy, ptr %0, align 8, !tbaa !7, !alias.scope !14
  store i64 %.0.i.2.i, ptr %i.d, align 8, !tbaa !13, !alias.scope !14
  br label %bb.s

bb.s:                                             ; preds = %.noexc.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2.i
  %i.dc = phi ptr [ %i.cy, %.noexc.2.i ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2.i ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ci
  store i8 %i.ch, ptr %i.dd, align 1, !tbaa !13
  store i64 %i.cj, ptr %i.e, align 8, !tbaa !18, !alias.scope !14
  %i.de = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cj
  store i8 0, ptr %i.df, align 1, !tbaa !13
  %i.dg = zext nneg i8 %i.z to i64
  %i.dh = load ptr, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, align 8, !tbaa !7, !noalias !14
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = load i64, ptr %i.e, align 8, !tbaa !18, !alias.scope !14 ; 6 uses
  %i.dl = add i64 %i.dk, 1                        ; 7 uses
  %i.dm = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14 ; 6 uses
  %i.dn = icmp eq ptr %i.dm, %i.d                 ; 2 uses
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.3.i: ; preds = %bb.s
  %i.do = load i64, ptr %i.d, align 8, !alias.scope !14 ; 3 uses
  %i.dp = icmp ugt i64 %i.dl, %i.do
  br i1 %i.dp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.3.i, label %.loopexit44.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3.i: ; preds = %bb.s
  %i.dq = icmp samesign ult i64 %i.dk, 16
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp samesign ugt i64 %i.dl, 15
  br i1 %i.dr, label %bb.t, label %.loopexit44.i.thread

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3.i
  %i.ds = load i64, ptr %i.d, align 8, !alias.scope !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.3.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.3.i
  %i.dt = phi i64 [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.3.i ], [ %i.ds, %bb.t ]
  %i.du = phi i64 [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.3.i ], [ 15, %bb.t ]
  %i.dv = icmp slt i64 %i.dl, 0
  br i1 %i.dv, label %bb.d, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.3.i
  %i.dw = shl nuw i64 %i.du, 1                    ; 2 uses
  %i.dx = icmp ult i64 %i.dl, %i.dw
  %spec.store.select.i.i.3.i = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 9223372036854775807)
  %.0.i.3.i = select i1 %i.dx, i64 %spec.store.select.i.i.3.i, i64 %i.dl ; 2 uses
  %i.dy = add nuw i64 %.0.i.3.i, 1                ; 2 uses
  %i.dz = icmp slt i64 %i.dy, 0
  br i1 %i.dz, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.3.i, !prof !21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.3.i: ; preds = %bb.u
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #17
          to label %.noexc38.3.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 4 uses

.noexc38.3.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.3.i
  switch i64 %i.dk, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.3.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %.noexc38.3.i
  %i.eb = load i8, ptr %i.dm, align 1, !tbaa !13
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.3.i

bb.w:                                             ; preds = %.noexc38.3.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr align 1 %i.dm, i64 %i.dk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.3.i: ; preds = %bb.w, %bb.v, %.noexc38.3.i
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.3.i
  %i.ec = add i64 %i.dt, 1
  tail call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.ec) #14
  br label %.noexc.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.3.i
  %i.ed = icmp samesign ult i64 %i.dk, 16
  tail call void @llvm.assume(i1 %i.ed)
  br label %.noexc.3.i

.noexc.3.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.3.i
  store ptr %i.ea, ptr %0, align 8, !tbaa !7, !alias.scope !14
  store i64 %.0.i.3.i, ptr %i.d, align 8, !tbaa !13, !alias.scope !14
  br label %.loopexit44.i.thread

.loopexit39.i.loopexit:                           ; preds = %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit39.i.loopexit.split-lp:                  ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.aa
  %lpad.loopexit40.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.3.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit45.i = landingpad { ptr, i32 }
          cleanup
  store i8 %i.ei, ptr %i.a, align 1, !tbaa !13, !noalias !14
  store i8 %i.el, ptr %i.f, align 1
  store i8 %i.p, ptr %i.h, align 1
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.f, %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit39.i.loopexit, %.loopexit39.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit40.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit45.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit, %.loopexit39.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit39.i.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !14
  %i.ee = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.d
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.loopexit.split-lp.i
  %i.eg = load i64, ptr %i.d, align 8, !tbaa !13, !alias.scope !14
  %i.eh = add i64 %i.eg, 1
  tail call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.loopexit.split-lp.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %lpad.phi.i

.loopexit44.i.1:                                  ; preds = %.lr.ph.i, %.outer
  %i.ei = phi i8 [ %i.l, %.outer ], [ %i.k, %.lr.ph.i ] ; 7 uses
  %.053.i.ph186 = phi ptr [ %i.o, %.outer ], [ %2, %.lr.ph.i ] ; 3 uses
  %.in.i.ph185 = phi i32 [ %i.n, %.outer ], [ %i.c, %.lr.ph.i ] ; 2 uses
  %.ph184 = phi i8 [ %i.z, %.outer ], [ undef, %.lr.ph.i ]
  %i.ej = phi i8 [ %i.p, %.outer ], [ %.promoted152, %.lr.ph.i ]
  %i.ek = getelementptr i8, ptr %.053.i.ph186, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !13, !noalias !14 ; 8 uses
  %.not.i.1 = icmp ne i32 %.in.i.ph185, 2         ; 3 uses
  br i1 %.not.i.1, label %bb.b, label %.lr.ph60.preheader.i

.loopexit44.i.thread:                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3.i, %.noexc.3.i
  %i.em = phi ptr [ %i.ea, %.noexc.3.i ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3.i ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.3.i ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.dk
  store i8 %i.dj, ptr %i.en, align 1, !tbaa !13
  store i64 %i.dl, ptr %i.e, align 8, !tbaa !18, !alias.scope !14
  %i.eo = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.dl
  store i8 0, ptr %i.ep, align 1, !tbaa !13
  %.not.i2 = icmp eq i32 %i.n, 0
  br i1 %.not.i2, label %._crit_edge.i.thread, label %.outer, !llvm.loop !19

._crit_edge.i.thread:                             ; preds = %.loopexit44.i.thread
  store i8 %i.ei, ptr %i.a, align 1, !tbaa !13, !noalias !14
  store i8 %i.el, ptr %i.f, align 1
  store i8 %i.p, ptr %i.h, align 1
  br label %_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit

.lr.ph60.preheader.i:                             ; preds = %.outer, %.loopexit44.i.1, %.lr.ph.i
  %.lcssa170 = phi i8 [ %.promoted152, %.lr.ph.i ], [ %i.p, %.outer ], [ %i.ej, %.loopexit44.i.1 ]
  %.ph.lcssa = phi i8 [ undef, %.lr.ph.i ], [ %i.z, %.outer ], [ %.ph184, %.loopexit44.i.1 ]
  %.lcssa = phi i8 [ %i.k, %.lr.ph.i ], [ %i.l, %.outer ], [ %i.ei, %.loopexit44.i.1 ]
  %.not.i.not.lcssa = phi i1 [ true, %.lr.ph.i ], [ %.not.i.1, %.loopexit44.i.1 ], [ %.not.i.1, %.outer ]
  %i.eq = phi i8 [ %.promoted, %.lr.ph.i ], [ %i.el, %.loopexit44.i.1 ], [ %i.el, %.outer ]
  %.02152.i.lcssa51.wide.ph = phi i32 [ 0, %.lr.ph.i ], [ 0, %.outer ], [ 1, %.loopexit44.i.1 ] ; 2 uses
  %.lcssa46.wide.ph = phi i64 [ 1, %.lr.ph.i ], [ 1, %.outer ], [ 2, %.loopexit44.i.1 ]
  store i8 %.lcssa, ptr %i.a, align 1, !tbaa !13, !noalias !14
  store i8 %i.eq, ptr %i.f, align 1
  store i8 %.lcssa170, ptr %i.h, align 1
  store i8 %.ph.lcssa, ptr %i.j, align 1, !noalias !14
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %.lcssa46.wide.ph
  %narrow.i = sub nuw nsw i32 2, %.02152.i.lcssa51.wide.ph
  %i.er = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 0, i64 %i.er, i1 false), !tbaa !13, !noalias !14
  %i.es = load i8, ptr %i.a, align 1, !tbaa !13, !noalias !14 ; 2 uses
  %i.et = lshr i8 %i.es, 2
  store i8 %i.et, ptr %i.b, align 1, !tbaa !13, !noalias !14
  %i.eu = shl i8 %i.es, 4
  %i.ev = and i8 %i.eu, 48
  %i.ew = load i8, ptr %i.f, align 1, !tbaa !13, !noalias !14 ; 2 uses
  %i.ex = lshr i8 %i.ew, 4
  %i.ey = or disjoint i8 %i.ex, %i.ev
  store i8 %i.ey, ptr %i.g, align 1, !tbaa !13, !noalias !14
  %i.ez = shl i8 %i.ew, 2
  %i.fa = and i8 %i.ez, 60
  %i.fb = load i8, ptr %i.h, align 1, !tbaa !13, !noalias !14
  %i.fc = lshr i8 %i.fb, 6
  %i.fd = or disjoint i8 %i.fc, %i.fa
  store i8 %i.fd, ptr %i.i, align 1, !tbaa !13, !noalias !14
  %i.fe = or disjoint i32 %.02152.i.lcssa51.wide.ph, 2
  %wide.trip.count.i = zext nneg i32 %i.fe to i64
  br label %.lr.ph60.i

.lr.ph62.preheader.i:                             ; preds = %bb.ab
  %i.ff = load i64, ptr %i.e, align 8, !tbaa !18, !alias.scope !14 ; 4 uses
  %i.fg = add i64 %i.ff, 1                        ; 3 uses
  %i.fh = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.d                 ; 2 uses
  br i1 %i.fi, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i.peel

bb.x:                                             ; preds = %.lr.ph62.preheader.i
  %i.fj = icmp ult i64 %i.ff, 16
  tail call void @llvm.assume(i1 %i.fj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i.peel: ; preds = %bb.x, %.lr.ph62.preheader.i
  %i.fk = load i64, ptr %i.d, align 8, !alias.scope !14
  %i.fl = select i1 %i.fi, i64 15, i64 %i.fk
  %i.fm = icmp ugt i64 %i.fg, %i.fl
  br i1 %i.fm, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33.i.peel

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i.peel
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ff, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc32.i.peel unwind label %.loopexit39.i.loopexit.split-lp

.noexc32.i.peel:                                  ; preds = %bb.y
  %.pre.i.i31.i.peel = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33.i.peel: ; preds = %.noexc32.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i.peel
  %i.fn = phi ptr [ %.pre.i.i31.i.peel, %.noexc32.i.peel ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i.peel ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ff
  store i8 61, ptr %i.fo, align 1, !tbaa !13
  store i64 %i.fg, ptr %i.e, align 8, !tbaa !18, !alias.scope !14
  %i.fp = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fg
  store i8 0, ptr %i.fq, align 1, !tbaa !13
  br i1 %.not.i.not.lcssa, label %.lr.ph62.i, label %_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit

.lr.ph60.i:                                       ; preds = %bb.ab, %.lr.ph60.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph60.preheader.i ], [ %indvars.iv.next.i, %bb.ab ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !13, !noalias !14
  %i.ft = zext i8 %i.fs to i64
  %i.fu = load ptr, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, align 8, !tbaa !7, !noalias !14
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !13
  %i.fx = load i64, ptr %i.e, align 8, !tbaa !18, !alias.scope !14 ; 4 uses
  %i.fy = add i64 %i.fx, 1                        ; 3 uses
  %i.fz = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.d                 ; 2 uses
  br i1 %i.ga, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i

bb.z:                                             ; preds = %.lr.ph60.i
  %i.gb = icmp ult i64 %i.fx, 16
  tail call void @llvm.assume(i1 %i.gb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i: ; preds = %bb.z, %.lr.ph60.i
  %i.gc = load i64, ptr %i.d, align 8, !alias.scope !14
  %i.gd = select i1 %i.ga, i64 15, i64 %i.gc
  %i.ge = icmp ugt i64 %i.fy, %i.gd
  br i1 %i.ge, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fx, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.i

.noexc28.i:                                       ; preds = %bb.aa
  %.pre.i.i27.i = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc28.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i
  %i.gf = phi ptr [ %.pre.i.i27.i, %.noexc28.i ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.fx
  store i8 %i.fw, ptr %i.gg, align 1, !tbaa !13
  store i64 %i.fy, ptr %i.e, align 8, !tbaa !18, !alias.scope !14
  %i.gh = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.fy
  store i8 0, ptr %i.gi, align 1, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph62.preheader.i, label %.lr.ph60.i, !llvm.loop !22

.lr.ph62.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33.i.peel
  %i.gj = load i64, ptr %i.e, align 8, !tbaa !18, !alias.scope !14 ; 4 uses
  %i.gk = add i64 %i.gj, 1                        ; 3 uses
  %i.gl = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.d                 ; 2 uses
  br i1 %i.gm, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i

bb.ac:                                            ; preds = %.lr.ph62.i
  %i.gn = icmp ult i64 %i.gj, 16
  tail call void @llvm.assume(i1 %i.gn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i: ; preds = %bb.ac, %.lr.ph62.i
  %i.go = load i64, ptr %i.d, align 8, !alias.scope !14
  %i.gp = select i1 %i.gm, i64 15, i64 %i.go
  %i.gq = icmp ugt i64 %i.gk, %i.gp
  br i1 %i.gq, label %bb.ad, label %_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit.loopexit.loopexit

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.gj, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc32.i unwind label %.loopexit39.i.loopexit

.noexc32.i:                                       ; preds = %bb.ad
  %.pre.i.i31.i = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  br label %_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit.loopexit.loopexit

_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit.loopexit.loopexit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i, %.noexc32.i
  %i.gr = phi ptr [ %.pre.i.i31.i, %.noexc32.i ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gj
  store i8 61, ptr %i.gs, align 1, !tbaa !13
  store i64 %i.gk, ptr %i.e, align 8, !tbaa !18, !alias.scope !14
  %i.gt = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gk
  store i8 0, ptr %i.gu, align 1, !tbaa !13
  br label %_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit

_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33.i.peel, %_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit.loopexit.loopexit, %._crit_edge.i.thread, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util13base64_decodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 15 uses
  %i.b = alloca [3 x i8], align 1                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i64 0, ptr %i.d, align 8, !tbaa !18
  store i8 0, ptr %i.c, align 8, !tbaa !13
  %.not63 = icmp eq i64 %1, 0
  br i1 %.not63, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit53
  %i.j = phi i8 [ undef, %.lr.ph ], [ %i.ep, %.loopexit53 ] ; 3 uses
  %i.k = phi i8 [ undef, %.lr.ph ], [ %i.eq, %.loopexit53 ] ; 3 uses
  %i.l = phi i8 [ undef, %.lr.ph ], [ %i.er, %.loopexit53 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit53 ] ; 2 uses
  %.in = phi i64 [ %1, %.lr.ph ], [ %i.m, %.loopexit53 ]
  %.02665 = phi i32 [ 0, %.lr.ph ], [ %.3, %.loopexit53 ] ; 4 uses
  %i.m = add i64 %.in, -1                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13    ; 4 uses
  %.not31 = icmp eq i8 %i.o, 61
  br i1 %.not31, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 @isalnum(i32 noundef %i.p) #18
  %i.r = icmp ne i32 %i.q, 0
  %i.s = and i8 %i.o, -5
  %i.t = icmp eq i8 %i.s, 43
  %spec.select.i = or i1 %i.t, %i.r
  br i1 %spec.select.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.u = add nsw i32 %.02665, 1                   ; 2 uses
  %i.v = sext i32 %.02665 to i64
  %i.w = getelementptr inbounds i8, ptr %i.a, i64 %i.v
  store i8 %i.o, ptr %i.w, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.x = icmp eq i32 %i.u, 4
  br i1 %i.x, label %.preheader57, label %.loopexit53

.preheader57:                                     ; preds = %bb.d
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, i64 8), align 8, !tbaa !18 ; 5 uses
  %.not50 = icmp eq i64 %i.y, 0
  br i1 %.not50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.us.preheader, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader: ; preds = %.preheader57
  %i.z = load ptr, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, align 8 ; 5 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 4 uses
  %i.ab = load i8, ptr %i.a, align 4, !tbaa !13
  %i.ac = sext i8 %i.ab to i32
  %i.ad = tail call ptr @memchr(ptr noundef %i.z, i32 noundef %i.ac, i64 noundef %i.y) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.aa
  %i.ag = trunc i64 %i.af to i8
  %i.ah = select i1 %.not.i, i8 -1, i8 %i.ag      ; 2 uses
  store i8 %i.ah, ptr %i.a, align 4, !tbaa !13
  %i.ai = load i8, ptr %i.e, align 1, !tbaa !13
  %i.aj = sext i8 %i.ai to i32
  %i.ak = tail call ptr @memchr(ptr noundef %i.z, i32 noundef %i.aj, i64 noundef %i.y) #15 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.ak, null
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.aa
  %i.an = trunc i64 %i.am to i8
  %i.ao = select i1 %.not.i.1, i8 -1, i8 %i.an    ; 2 uses
  store i8 %i.ao, ptr %i.e, align 1, !tbaa !13
  %i.ap = load i8, ptr %i.f, align 2, !tbaa !13
  %i.aq = sext i8 %i.ap to i32
  %i.ar = tail call ptr @memchr(ptr noundef %i.z, i32 noundef %i.aq, i64 noundef %i.y) #15 ; 2 uses
  %.not.i.2 = icmp eq ptr %i.ar, null
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.aa
  %i.au = trunc i64 %i.at to i8
  %i.av = select i1 %.not.i.2, i8 -1, i8 %i.au    ; 2 uses
  store i8 %i.av, ptr %i.f, align 2, !tbaa !13
  %i.aw = load i8, ptr %i.h, align 1, !tbaa !13
  %i.ax = sext i8 %i.aw to i32
  %i.ay = tail call ptr @memchr(ptr noundef %i.z, i32 noundef %i.ax, i64 noundef %i.y) #15 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.ay, null
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.aa
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = select i1 %.not.i.3, i8 -1, i8 %i.bb    ; 2 uses
  store i8 %i.bc, ptr %i.h, align 1, !tbaa !13
  %i.bd = shl i8 %i.ah, 2
  br label %.split.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.us.preheader: ; preds = %.preheader57
  store i32 -1, ptr %i.a, align 4
  br label %.split.us

.loopexit52:                                      ; preds = %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %lpad.loopexit54 = landingpad { ptr, i32 }
          cleanup
  store i8 %i.bo, ptr %i.b, align 1
  store i8 %i.bs, ptr %i.g, align 1
  store i8 %i.bu, ptr %i.i, align 1
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.h, %bb.f
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit52
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit52 ], [ %lpad.loopexit54, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp55, %.loopexit.split-lp.loopexit.split-lp ]
  %i.be = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.c
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !13
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %lpad.phi

.split.us:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.us.preheader
  %i.bi = phi i8 [ %i.bc, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader ], [ -1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.us.preheader ]
  %i.bj = phi i8 [ %i.av, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader ], [ -1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.us.preheader ] ; 2 uses
  %i.bk = phi i8 [ %i.ao, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader ], [ -1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.us.preheader ] ; 2 uses
  %i.bl = phi i8 [ %i.bd, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader ], [ -4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.us.preheader ]
  %i.bm = lshr i8 %i.bk, 4
  %i.bn = and i8 %i.bm, 3
  %i.bo = or disjoint i8 %i.bn, %i.bl             ; 5 uses
  %i.bp = shl i8 %i.bk, 4
  %i.bq = lshr i8 %i.bj, 2
  %i.br = and i8 %i.bq, 15
  %i.bs = or disjoint i8 %i.br, %i.bp             ; 5 uses
  %i.bt = shl i8 %i.bj, 6
  %i.bu = add i8 %i.bi, %i.bt                     ; 5 uses
  %i.bv = load i64, ptr %i.d, align 8, !tbaa !18  ; 6 uses
  %i.bw = add i64 %i.bv, 1                        ; 7 uses
  %i.bx = load ptr, ptr %0, align 8, !tbaa !7     ; 6 uses
  %i.by = icmp eq ptr %i.bx, %i.c                 ; 2 uses
  br i1 %i.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %.split.us
  %i.bz = icmp samesign ult i64 %i.bv, 16
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp samesign ugt i64 %i.bw, 15
  br i1 %i.ca, label %bb.e, label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread: ; preds = %.split.us
  %i.cb = load i64, ptr %i.c, align 8             ; 3 uses
  %i.cc = icmp ugt i64 %i.bw, %i.cb
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %bb.k

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.cd = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread, %bb.e
  %i.ce = phi i64 [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ], [ %i.cd, %bb.e ]
  %i.cf = phi i64 [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ], [ 15, %bb.e ]
  %i.cg = icmp slt i64 %i.bw, 0
  br i1 %i.cg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  store i8 %i.bo, ptr %i.b, align 1
  store i8 %i.bs, ptr %i.g, align 1
  store i8 %i.bu, ptr %i.i, align 1
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #16
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ch = shl nuw i64 %i.cf, 1                    ; 2 uses
  %i.ci = icmp ult i64 %i.bw, %i.ch
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 9223372036854775807)
  %.0.i42 = select i1 %i.ci, i64 %spec.store.select.i.i, i64 %i.bw ; 2 uses
  %i.cj = add nuw i64 %.0.i42, 1                  ; 2 uses
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !21

bb.h:                                             ; preds = %bb.r, %bb.m, %bb.g
  store i8 %i.bo, ptr %i.b, align 1
  store i8 %i.bs, ptr %i.g, align 1
  store i8 %i.bu, ptr %i.i, align 1
  invoke void @_ZSt17__throw_bad_allocv() #16
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.g
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #17
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc47:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  switch i64 %i.bv, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %.noexc47
  %i.cm = load i8, ptr %i.bx, align 1, !tbaa !13
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.j:                                             ; preds = %.noexc47
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr align 1 %i.bx, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %.noexc47, %bb.i, %bb.j
  br i1 %i.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.cn = icmp samesign ult i64 %i.bv, 16
  tail call void @llvm.assume(i1 %i.cn)
  br label %.noexc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.co = add i64 %i.ce, 1
  tail call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.co) #14
  br label %.noexc

.noexc:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44
  store ptr %i.cl, ptr %0, align 8, !tbaa !7
  store i64 %.0.i42, ptr %i.c, align 8, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread
  %i.cp = phi ptr [ %i.cl, %.noexc ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.bv
  store i8 %i.bo, ptr %i.cq, align 1, !tbaa !13
  store i64 %i.bw, ptr %i.d, align 8, !tbaa !18
  %i.cr = load ptr, ptr %0, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.bw
  store i8 0, ptr %i.cs, align 1, !tbaa !13
  %i.ct = load i64, ptr %i.d, align 8, !tbaa !18  ; 6 uses
  %i.cu = add i64 %i.ct, 1                        ; 7 uses
  %i.cv = load ptr, ptr %0, align 8, !tbaa !7     ; 6 uses
  %i.cw = icmp eq ptr %i.cv, %i.c                 ; 2 uses
  br i1 %i.cw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.1: ; preds = %bb.k
  %i.cx = load i64, ptr %i.c, align 8             ; 3 uses
  %i.cy = icmp ugt i64 %i.cu, %i.cx
  br i1 %i.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1, label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1: ; preds = %bb.k
  %i.cz = icmp samesign ult i64 %i.ct, 16
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = icmp samesign ugt i64 %i.cu, 15
  br i1 %i.da, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1
  %i.db = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.1
  %i.dc = phi i64 [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.1 ], [ %i.db, %bb.l ]
  %i.dd = phi i64 [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.1 ], [ 15, %bb.l ]
  %i.de = icmp slt i64 %i.cu, 0
  br i1 %i.de, label %bb.f, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.1
  %i.df = shl nuw i64 %i.dd, 1                    ; 2 uses
  %i.dg = icmp ult i64 %i.cu, %i.df
  %spec.store.select.i.i.1 = tail call i64 @llvm.umin.i64(i64 %i.df, i64 9223372036854775807)
  %.0.i42.1 = select i1 %i.dg, i64 %spec.store.select.i.i.1, i64 %i.cu ; 2 uses
  %i.dh = add nuw i64 %.0.i42.1, 1                ; 2 uses
  %i.di = icmp slt i64 %i.dh, 0
  br i1 %i.di, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.1, !prof !21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.1: ; preds = %bb.m
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #17
          to label %.noexc47.1 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc47.1:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.1
  switch i64 %i.ct, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.1
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %.noexc47.1
  %i.dk = load i8, ptr %i.cv, align 1, !tbaa !13
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.1

bb.o:                                             ; preds = %.noexc47.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dj, ptr align 1 %i.cv, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.1: ; preds = %bb.o, %bb.n, %.noexc47.1
  br i1 %i.cw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.1
  %i.dl = add i64 %i.dc, 1
  tail call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.dl) #14
  br label %.noexc.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.1
  %i.dm = icmp samesign ult i64 %i.ct, 16
  tail call void @llvm.assume(i1 %i.dm)
  br label %.noexc.1

.noexc.1:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.1
  store ptr %i.dj, ptr %0, align 8, !tbaa !7
  store i64 %.0.i42.1, ptr %i.c, align 8, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %.noexc.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.1
  %i.dn = phi ptr [ %i.dj, %.noexc.1 ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1 ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.1 ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ct
  store i8 %i.bs, ptr %i.do, align 1, !tbaa !13
  store i64 %i.cu, ptr %i.d, align 8, !tbaa !18
  %i.dp = load ptr, ptr %0, align 8, !tbaa !7
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.cu
  store i8 0, ptr %i.dq, align 1, !tbaa !13
  %i.dr = load i64, ptr %i.d, align 8, !tbaa !18  ; 6 uses
  %i.ds = add i64 %i.dr, 1                        ; 7 uses
  %i.dt = load ptr, ptr %0, align 8, !tbaa !7     ; 6 uses
  %i.du = icmp eq ptr %i.dt, %i.c                 ; 2 uses
  br i1 %i.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2: ; preds = %bb.p
  %i.dv = load i64, ptr %i.c, align 8             ; 3 uses
  %i.dw = icmp ugt i64 %i.ds, %i.dv
  br i1 %i.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.2, label %.loopexit53.loopexit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2: ; preds = %bb.p
  %i.dx = icmp samesign ult i64 %i.dr, 16
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp samesign ugt i64 %i.ds, 15
  br i1 %i.dy, label %bb.q, label %.loopexit53.loopexit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2
  %i.dz = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.2: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2
  %i.ea = phi i64 [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2 ], [ %i.dz, %bb.q ]
  %i.eb = phi i64 [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2 ], [ 15, %bb.q ]
  %i.ec = icmp slt i64 %i.ds, 0
  br i1 %i.ec, label %bb.f, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.2
  %i.ed = shl nuw i64 %i.eb, 1                    ; 2 uses
  %i.ee = icmp ult i64 %i.ds, %i.ed
  %spec.store.select.i.i.2 = tail call i64 @llvm.umin.i64(i64 %i.ed, i64 9223372036854775807)
  %.0.i42.2 = select i1 %i.ee, i64 %spec.store.select.i.i.2, i64 %i.ds ; 2 uses
  %i.ef = add nuw i64 %.0.i42.2, 1                ; 2 uses
  %i.eg = icmp slt i64 %i.ef, 0
  br i1 %i.eg, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.2, !prof !21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.2: ; preds = %bb.r
  %i.eh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #17
          to label %.noexc47.2 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc47.2:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.2
  switch i64 %i.dr, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %.noexc47.2
  %i.ei = load i8, ptr %i.dt, align 1, !tbaa !13
  store i8 %i.ei, ptr %i.eh, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2

bb.t:                                             ; preds = %.noexc47.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr align 1 %i.dt, i64 %i.dr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2: ; preds = %bb.t, %bb.s, %.noexc47.2
  br i1 %i.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2
  %i.ej = add i64 %i.ea, 1
  tail call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.ej) #14
  br label %.noexc.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2
  %i.ek = icmp samesign ult i64 %i.dr, 16
  tail call void @llvm.assume(i1 %i.ek)
  br label %.noexc.2

.noexc.2:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i44.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.2
  store ptr %i.eh, ptr %0, align 8, !tbaa !7
  store i64 %.0.i42.2, ptr %i.c, align 8, !tbaa !13
  br label %.loopexit53.loopexit

.loopexit53.loopexit:                             ; preds = %.noexc.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2
  %i.el = phi ptr [ %i.eh, %.noexc.2 ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2 ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2 ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.dr
  store i8 %i.bu, ptr %i.em, align 1, !tbaa !13
  store i64 %i.ds, ptr %i.d, align 8, !tbaa !18
  %i.en = load ptr, ptr %0, align 8, !tbaa !7
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ds
  store i8 0, ptr %i.eo, align 1, !tbaa !13
  br label %.loopexit53

.loopexit53:                                      ; preds = %.loopexit53.loopexit, %bb.d
  %i.ep = phi i8 [ %i.j, %bb.d ], [ %i.bu, %.loopexit53.loopexit ] ; 2 uses
  %i.eq = phi i8 [ %i.k, %bb.d ], [ %i.bs, %.loopexit53.loopexit ] ; 2 uses
  %i.er = phi i8 [ %i.l, %bb.d ], [ %i.bo, %.loopexit53.loopexit ] ; 2 uses
  %.3 = phi i32 [ %i.u, %bb.d ], [ 0, %.loopexit53.loopexit ] ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !23

.critedge:                                        ; preds = %bb.c, %.loopexit53, %bb.b
  %i.es = phi i8 [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %i.ep, %.loopexit53 ]
  %i.et = phi i8 [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %i.eq, %.loopexit53 ]
  %i.eu = phi i8 [ %i.l, %bb.b ], [ %i.l, %bb.c ], [ %i.er, %.loopexit53 ]
  %.026.lcssa = phi i32 [ %.02665, %bb.b ], [ %.02665, %bb.c ], [ %.3, %.loopexit53 ] ; 5 uses
  store i8 %i.eu, ptr %i.b, align 1
  store i8 %i.et, ptr %i.g, align 1
  store i8 %i.es, ptr %i.i, align 1
  %.not32 = icmp eq i32 %.026.lcssa, 0
  br i1 %.not32, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.ev = icmp sgt i32 %.026.lcssa, 0
  br i1 %i.ev, label %.lr.ph71, label %._crit_edge

.lr.ph71:                                         ; preds = %.preheader
  %i.ew = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, i64 8), align 8, !tbaa !18 ; 2 uses
  %.not51 = icmp eq i64 %i.ew, 0
  %i.ex = load ptr, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, align 8 ; 2 uses
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = zext nneg i32 %.026.lcssa to i64        ; 2 uses
  br i1 %.not51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit37.us.preheader, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit37.us.preheader: ; preds = %.lr.ph71
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.a, i8 -1, i64 %i.ez, i1 false), !tbaa !13
  br label %._crit_edge

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i34:     ; preds = %.lr.ph71, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i34
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i34 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv81 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !13
  %i.fc = sext i8 %i.fb to i32
  %i.fd = tail call ptr @memchr(ptr noundef %i.ex, i32 noundef %i.fc, i64 noundef %i.ew) #15 ; 2 uses
  %.not.i35 = icmp eq ptr %i.fd, null
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = sub i64 %i.fe, %i.ey
  %i.fg = trunc i64 %i.ff to i8
  %i.fh = select i1 %.not.i35, i8 -1, i8 %i.fg
  store i8 %i.fh, ptr %i.fa, align 1, !tbaa !13
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next82, %i.ez
  br i1 %exitcond.not, label %._crit_edge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i34, !llvm.loop !24

._crit_edge:                                      ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit37.us.preheader, %.preheader
  %i.fi = load i8, ptr %i.a, align 4, !tbaa !13
  %i.fj = shl i8 %i.fi, 2
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !13  ; 2 uses
  %i.fm = lshr i8 %i.fl, 4
  %i.fn = and i8 %i.fm, 3
  %i.fo = or disjoint i8 %i.fn, %i.fj
  store i8 %i.fo, ptr %i.b, align 1, !tbaa !13
  %i.fp = shl i8 %i.fl, 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.fr = load i8, ptr %i.fq, align 2, !tbaa !13
  %i.fs = lshr i8 %i.fr, 2
  %i.ft = and i8 %i.fs, 15
  %i.fu = or disjoint i8 %i.ft, %i.fp
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !13
  %i.fw = icmp sgt i32 %.026.lcssa, 1
  br i1 %i.fw, label %.lr.ph74.preheader, label %.loopexit

.lr.ph74.preheader:                               ; preds = %._crit_edge
  %i.fx = add nsw i32 %.026.lcssa, -1
  %wide.trip.count90 = zext nneg i32 %i.fx to i64
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.w
  %indvars.iv87 = phi i64 [ 0, %.lr.ph74.preheader ], [ %indvars.iv.next88, %bb.w ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv87
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !13
  %i.ga = load i64, ptr %i.d, align 8, !tbaa !18  ; 4 uses
  %i.gb = add i64 %i.ga, 1                        ; 3 uses
  %i.gc = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.c                 ; 2 uses
  br i1 %i.gd, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38

bb.u:                                             ; preds = %.lr.ph74
  %i.ge = icmp ult i64 %i.ga, 16
  tail call void @llvm.assume(i1 %i.ge)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38: ; preds = %bb.u, %.lr.ph74
  %i.gf = load i64, ptr %i.c, align 8
  %i.gg = select i1 %i.gd, i64 15, i64 %i.gf
  %i.gh = icmp ugt i64 %i.gb, %i.gg
  br i1 %i.gh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ga, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc40 unwind label %.loopexit52

.noexc40:                                         ; preds = %bb.v
  %.pre.i.i39 = load ptr, ptr %0, align 8, !tbaa !7
  br label %bb.w

bb.w:                                             ; preds = %.noexc40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38
  %i.gi = phi ptr [ %.pre.i.i39, %.noexc40 ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38 ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ga
  store i8 %i.fz, ptr %i.gj, align 1, !tbaa !13
  store i64 %i.gb, ptr %i.d, align 8, !tbaa !18
  %i.gk = load ptr, ptr %0, align 8, !tbaa !7
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gb
  store i8 0, ptr %i.gl, align 1, !tbaa !13
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %.loopexit, label %.lr.ph74, !llvm.loop !25

.loopexit:                                        ; preds = %bb.w, %bb.a, %._crit_edge, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !7      ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #16
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !21

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #17 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !13
  store i8 %i.t, ptr %i.s, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !13
  store i8 %i.x, ptr %i.w, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !7
  store i64 %.0, ptr %i.h, align 8, !tbaa !13
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_base64.cpp() #9 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, i64 16), ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, align 8, !tbaa !17
  %i.a = tail call noalias noundef nonnull dereferenceable(65) ptr @_Znwm(i64 noundef 65) #17 ; 3 uses
  store ptr %i.a, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, align 8, !tbaa !7
  store i64 64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, i64 16), align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(64) @.str, i64 64, i1 false)
  store i64 64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, i64 8), align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.b, align 1, !tbaa !13
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN5arrow4utilL12base64_charsB5cxx11E, ptr nonnull @__dso_handle) #15 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !12, i64 8, !5, i64 16}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj: argument 0"}
!16 = distinct !{!16, !"_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj"}
!17 = !{!9, !10, i64 0}
!18 = !{!8, !12, i64 8}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
end_hunk_0
