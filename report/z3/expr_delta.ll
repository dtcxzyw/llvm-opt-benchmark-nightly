inline.NumInlined: 119
inline.NumDeleted: 76
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%class.obj_ref = type { ptr, ptr }
%class.ref_vector = type { %class.ref_vector_core }
%class.ref_vector_core = type { %class.ref_manager_wrapper, %class.ptr_vector }
%class.ref_manager_wrapper = type { ptr }
%class.ptr_vector = type { %class.vector }
%class.vector = type { ptr }

$_ZN7obj_refI4expr11ast_managerED2Ev = comdat any

$_ZN7obj_refI4expr11ast_managerEaSEPS0_ = comdat any

$_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6vectorIP4exprLb0EjE13expand_vectorEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN17default_exceptionD2Ev = comdat any

@.str = private unnamed_addr constant [54 x i8] c"/opt-bench/work/z3/z3/src/test/fuzzing/expr_delta.cpp\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to verify: n >= 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Overflow encountered when expanding vector\00", align 1
@_ZTI17default_exception = external constant ptr
@.str.3 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8

@_ZN10expr_deltaC1ER11ast_manager = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN10expr_deltaC2ER11ast_manager

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN10expr_deltaC2ER11ast_manager(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(952) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10expr_delta12assert_cnstrEP4expr(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.not.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !15
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !17
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.c, %bb.d
  %i.l = phi i32 [ %.pre2.i.i, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.m = phi ptr [ %.pre.i.i, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  store ptr %1, ptr %i.p, align 8, !tbaa !18
  %i.q = add i32 %i.l, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10expr_delta9delta_dfsEjR10ref_vectorI4expr11ast_managerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.g = call noundef zeroext i1 @_ZN10expr_delta9delta_dfsERjjPKP4exprR10ref_vectorIS1_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %.0.i.i, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10expr_delta9delta_dfsERjjPKP4exprR10ref_vectorIS1_11ast_managerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %class.obj_ref, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.a = load ptr, ptr %0, align 8, !tbaa !20, !nonnull !26, !align !27
  store ptr null, ptr %7, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !8
  %.not54.not = icmp eq i32 %2, 0
  br i1 %.not54.not, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread47
  %indvars.iv64 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next65, %.thread47 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread47 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 4 uses
  %i.f = invoke noundef zeroext i1 @_ZN10expr_delta9delta_dfsERjP4exprR7obj_refIS1_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.c unwind label %.loopexit  ; 4 uses

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.g = trunc nuw i64 %indvars.iv to i32
  %i.h = load ptr, ptr %7, align 8, !tbaa !28     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !15
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.e, %bb.d
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !11   ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !17   ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.g:                                             ; preds = %bb.f, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !11 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !17
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.f, %.noexc
  %i.s = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.o, %bb.f ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc ], [ %i.l, %bb.f ] ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  store ptr %i.h, ptr %i.w, align 8, !tbaa !18
  %i.x = add i32 %i.s, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !17
  %.057 = add i32 %i.g, 1
  %i.y = icmp ult i32 %.057, %2
  br i1 %i.y, label %.lr.ph59, label %.critedge

.loopexit:                                        ; preds = %bb.b, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph59:                                         ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37
  %i.z = phi ptr [ %i.bo, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37 ], [ %i.t, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 3 uses
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37 ], [ %indvars.iv64, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv68
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 3 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i31, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i32, label %bb.h

bb.h:                                             ; preds = %.lr.ph59
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !15
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !15
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i32

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i32: ; preds = %.lr.ph59, %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !17 ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i32
  %i.ak = mul i32 %i.ag, 3
  %i.al = add i32 %i.ak, 1
  %i.am = lshr i32 %i.al, 1                       ; 3 uses
  %i.an = shl i32 %i.am, 3
  %i.ao = add i32 %i.an, 8                        ; 2 uses
  %.not.i = icmp ugt i32 %i.am, %i.ag
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = shl i32 %i.ag, 3
  %i.aq = add i32 %i.ap, 8
  %.not27.i = icmp ugt i32 %i.ao, %i.aq
  br i1 %.not27.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = call ptr @__cxa_allocate_exception(i64 40) #15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ar, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 3 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !32
  %i.au = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !38 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  store ptr %i.au, ptr %i.as, align 8, !tbaa !35
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !39
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !39
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !38
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.m
  %i.bc = phi i64 [ %i.ay, %bb.m ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !38
  store ptr %i.av, ptr %5, align 8, !tbaa !35
  store i64 0, ptr %i.bd, align 8, !tbaa !38
  store i8 0, ptr %i.av, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #16
          to label %bb.q unwind label %bb.n

bb.n:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.av
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.n
  %i.bi = load i64, ptr %i.av, align 8, !tbaa !39
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.body

bb.o:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @__cxa_free_exception(ptr %i.ar) #15
  br label %.body

bb.p:                                             ; preds = %bb.j
  %i.bl = zext i32 %i.ao to i64
  %i.bm = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ah, i64 noundef %i.bl)
          to label %.noexc36 unwind label %bb.r   ; 3 uses

bb.q:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc36:                                         ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  store ptr %i.bn, ptr %i.c, align 8, !tbaa !11
  store i32 %i.am, ptr %i.bm, align 4, !tbaa !17
  %.phi.trans.insert.i.i34 = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.pre2.i.i35 = load i32, ptr %.phi.trans.insert.i.i34, align 4, !tbaa !17
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i32, %.noexc36
  %i.bo = phi ptr [ %i.bn, %.noexc36 ], [ %i.z, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i32 ] ; 3 uses
  %i.bp = phi i32 [ %.pre2.i.i35, %.noexc36 ], [ %i.ag, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i32 ] ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.br = zext i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.br
  store ptr %i.ab, ptr %i.bs, align 8, !tbaa !18
  %i.bt = add i32 %i.bp, 1
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !17
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next69 to i32
  %exitcond71.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond71.not, label %.critedge, label %.lr.ph59

bb.r:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.c
  %.not.i.i.i.i38 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i38, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !15
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !15
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39: ; preds = %bb.t, %bb.s
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !11  ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !17 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 -8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !17
  %i.ce = icmp eq i32 %i.cb, %i.cd
  br i1 %i.ce, label %bb.v, label %.thread47

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc43 unwind label %.loopexit

.noexc43:                                         ; preds = %bb.v
  %.pre.i.i40 = load ptr, ptr %i.c, align 8, !tbaa !11 ; 2 uses
  %.phi.trans.insert.i.i41 = getelementptr inbounds i8, ptr %.pre.i.i40, i64 -4
  %.pre2.i.i42 = load i32, ptr %.phi.trans.insert.i.i41, align 4, !tbaa !17
  br label %.thread47

.thread47:                                        ; preds = %.noexc43, %bb.u
  %i.cf = phi i32 [ %.pre2.i.i42, %.noexc43 ], [ %i.cb, %bb.u ] ; 2 uses
  %i.cg = phi ptr [ %.pre.i.i40, %.noexc43 ], [ %i.by, %bb.u ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.ci = zext i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ci
  store ptr %i.e, ptr %i.cj, align 8, !tbaa !18
  %i.ck = add i32 %i.cf, 1
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !40

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %i.bu, %bb.r ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %.thread47, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %.pr = load ptr, ptr %7, align 8, !tbaa !28     ; 3 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.critedge
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !42, !nonnull !26, !align !27
  %i.cm = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !15
  %i.co = add i32 %i.cn, -1                       ; 2 uses
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !15
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.x, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cl, ptr noundef nonnull %.pr)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #18
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.a, %.critedge, %bb.w, %bb.x
  %.not5191 = phi i1 [ %i.f, %bb.x ], [ %i.f, %.critedge ], [ %i.f, %bb.w ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  ret i1 %.not5191
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10expr_delta9delta_dfsERjP4exprR7obj_refIS1_11ast_managerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20, !nonnull !26, !align !27 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 832 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = icmp eq ptr %2, %i.c
  br i1 %i.d, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 840 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104
  %i.g = icmp eq ptr %2, %i.f
  br i1 %i.g, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %1, align 4, !tbaa !17     ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.a, ptr noundef %2)
  br i1 %i.j, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43   ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.f, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.e
  %i.o = load ptr, ptr %3, align 8, !tbaa !28     ; 3 uses
  %.not.i4.i = icmp eq ptr %i.o, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42, !nonnull !26, !align !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !15
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %i.r, align 4, !tbaa !15
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.q, ptr noundef nonnull %i.o)
  br label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.f, %bb.g, %bb.h
  store ptr %i.k, ptr %3, align 8, !tbaa !28
  br label %bb.y

thread-pre-split:                                 ; preds = %bb.d
  %.pr = load i32, ptr %1, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %bb.c
  %i.v = phi i32 [ %.pr, %thread-pre-split ], [ %i.h, %bb.c ]
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.x = tail call noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.a, ptr noundef %2)
  br i1 %i.x, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !104  ; 3 uses
  %.not.i35 = icmp eq ptr %i.y, null
  br i1 %.not.i35, label %bb.l, label %_ZN11ast_manager7inc_refEP3ast.exit.i36

_ZN11ast_manager7inc_refEP3ast.exit.i36:          ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !15
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i36, %bb.k
  %i.ac = load ptr, ptr %3, align 8, !tbaa !28    ; 3 uses
  %.not.i4.i37 = icmp eq ptr %i.ac, null
  br i1 %.not.i4.i37, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit38, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42, !nonnull !26, !align !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !15
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !15
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit38

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ae, ptr noundef nonnull %i.ac)
  br label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit38

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit38:    ; preds = %bb.l, %bb.m, %bb.n
  store ptr %i.y, ptr %3, align 8, !tbaa !28
end_hunk_0
