inline.NumInlined: 319
inline.NumDeleted: 169
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.mpz = type { i32, i8, ptr }
%"class.std::allocator" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZN6vectorI3mpzLb0EjE13expand_vectorEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN17default_exceptionD2Ev = comdat any

$_ZN6vectorIjLb0EjE13expand_vectorEv = comdat any

@.str = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"*x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Overflow encountered when expanding vector\00", align 1
@_ZTI17default_exception = external constant ptr
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK15linear_equation3posEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8
  %2 = add i32 %i.a, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  br label %.outer

.outer:                                           ; preds = %bb.c, %bb.a
  %.020.ph.in = phi i32 [ %i.k, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.018.ph = phi i32 [ %.018, %bb.c ], [ %2, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.e
  %.018 = phi i32 [ %3, %bb.e ], [ %.018.ph, %.outer ] ; 3 uses
  %i.d = sub nsw i32 %.018, %.020.ph.in           ; 2 uses
  %i.e = sdiv i32 %i.d, 2
  %i.f = add nsw i32 %i.e, %.020.ph.in            ; 5 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !15   ; 2 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.f, 1
  %.not29 = icmp slt i32 %i.f, %.018
  br i1 %.not29, label %.outer, label %.loopexit, !llvm.loop !16

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ult i32 %1, %i.i
  br i1 %i.l, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %3 = add nsw i32 %i.f, -1
  %.not = icmp sgt i32 %i.d, 1
  br i1 %.not, label %bb.b, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.d
  %.1.ph = phi i32 [ %i.f, %bb.d ], [ -1, %bb.e ], [ -1, %bb.c ]
  ret i32 %.1.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK23linear_equation_manager7displayERSoRK15linear_equation(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !8      ; 3 uses
  %.not18 = icmp eq i32 %i.a, 0
  br i1 %.not18, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %wide.trip.count = zext i32 %i.a to i64
  %.pre21 = load ptr, ptr %i.c, align 8, !tbaa !18
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZNK11mpz_managerILb0EE9to_stringB5cxx11ERK3mpz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(728) %.pre, ptr noundef nonnull align 8 dereferenceable(16) %.pre21)
  %i.g = load ptr, ptr %3, align 8, !tbaa !31
  %i.h = load i64, ptr %i.d, align 8, !tbaa !35
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.g, i64 noundef %i.h)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.l = load i32, ptr %i.k, align 4, !tbaa !15
  %i.m = zext i32 %i.l to i64
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.m)
          to label %_ZNSolsEj.exit.peel unwind label %.loopexit.split-lp ; 0 uses

_ZNSolsEj.exit.peel:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel
  %i.o = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.f
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSolsEj.exit.peel
  %i.q = load i64, ptr %i.f, align 8, !tbaa !36
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %_ZNSolsEj.exit.peel
  %i.s = load i64, ptr %i.d, align 8, !tbaa !35
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %exitcond.peel.not = icmp eq i32 %i.a, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.a
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 4) ; 0 uses
  ret void

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 3 uses
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !19, !nonnull !37, !align !38
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv
  call void @_ZNK11mpz_managerILb0EE9to_stringB5cxx11ERK3mpz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(728) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.y)
  %i.z = load ptr, ptr %3, align 8, !tbaa !31
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !35
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.z, i64 noundef %i.aa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %.peel.next
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !15
  %i.ag = zext i32 %i.af to i64
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef %i.ag)
          to label %_ZNSolsEj.exit unwind label %.loopexit ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.f
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEj.exit
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !36
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !39

.loopexit:                                        ; preds = %.peel.next, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.b, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.am = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.f
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.c
  %i.ao = load i64, ptr %i.f, align 8, !tbaa !36
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %lpad.phi
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN23linear_equation_manager2mkEjP3mpqPjb(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %class.mpz, align 8                 ; 12 uses
  %6 = alloca %class.mpz, align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store i32 0, ptr %5, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store i32 0, ptr %6, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, -4
  store i8 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.j, align 8, !tbaa !41
  store i32 %i.o, ptr %5, align 8, !tbaa !41
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !19, !nonnull !37, !align !38
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %bb.b, %bb.c
  %i.q = icmp ugt i32 %1, 1
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit21, %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45   ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE5resetEv.exit, label %_ZN6vectorI3mpzLb0EjE3endEv.exit.i

_ZN6vectorI3mpzLb0EjE3endEv.exit.i:               ; preds = %._crit_edge
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15   ; 2 uses
  %i.x = zext i32 %i.w to i64
end_hunk_0
begin_hunk_1_@_ZN23linear_equation_manager7mk_coreEjP3mpzPj:bb.a
bb.d:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 5 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41
  %i.u = icmp slt i32 %i.t, 0
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !19, !nonnull !37, !align !38 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !19, !nonnull !37, !align !38
  call void @_ZN11mpz_managerILb0EE3gcdERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !19, !nonnull !37, !align !38
  call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_ZN11mpz_managerILb0EE3gcdERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.g, %.lr.ph, %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit
  %i.y = load i8, ptr %i.a, align 4
  %i.z = trunc i8 %i.y to i1
  %i.aa = load i32, ptr %4, align 8
  %i.ab = icmp ne i32 %i.aa, 1
  %.not70 = select i1 %i.z, i1 true, i1 %i.ab
  %i.ac = icmp ne i32 %1, 0
  %or.cond = and i1 %.not70, %i.ac
  %wide.trip.count75 = zext i32 %1 to i64         ; 4 uses
  br i1 %or.cond, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %._crit_edge, %.lr.ph63
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %.lr.ph63 ], [ 0, %._crit_edge ] ; 2 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !19, !nonnull !37, !align !38
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv72 ; 2 uses
  call void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ae)
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.loopexit, label %.lr.ph63, !llvm.loop !62

.loopexit:                                        ; preds = %.lr.ph63, %._crit_edge
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !19, !nonnull !37, !align !38
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.ag = mul i32 %1, 28
  %i.ah = add i32 %i.ag, 32
  %i.ai = load ptr, ptr %0, align 8, !tbaa !63, !nonnull !37, !align !38
  %i.aj = zext i32 %i.ah to i64
  %i.ak = call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.ai, i64 noundef %i.aj) ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 32, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 3 uses
  %i.am = shl nuw nsw i64 %wide.trip.count75, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = shl nuw nsw i64 %wide.trip.count75, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge67, label %.lr.ph66

._crit_edge67:                                    ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit59, %.loopexit
  store i32 %1, ptr %i.ak, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.al, ptr %i.aq, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret ptr %i.ak

.lr.ph66:                                         ; preds = %.loopexit, %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit59
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit59 ], [ 0, %.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv77 ; 5 uses
  store i32 0, ptr %i.at, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 3 uses
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = and i8 %i.av, -4                        ; 2 uses
  store i8 %i.aw, ptr %i.au, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.ax, align 8, !tbaa !44
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv77 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i8, ptr %i.az, align 4
  %i.bb = and i8 %i.ba, 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph66
  %i.bd = load i32, ptr %i.ay, align 8, !tbaa !41
  store i32 %i.bd, ptr %i.at, align 8, !tbaa !41
  store i8 %i.aw, ptr %i.au, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit59

bb.i:                                             ; preds = %.lr.ph66
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !19, !nonnull !37, !align !38
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ay)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit59

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit59:     ; preds = %bb.h, %bb.i
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !19, !nonnull !37, !align !38
  %i.bg = call noundef double @_ZNK11mpz_managerILb0EE10get_doubleERK3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.ay)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv77
  store double %i.bg, ptr %i.bh, align 8, !tbaa !65
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv77
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !15
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv77
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !15
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count75
  br i1 %exitcond81.not, label %._crit_edge67, label %.lr.ph66, !llvm.loop !67
}

declare noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN23linear_equation_manager2mkERK3mpzRK15linear_equationS2_S5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %class.mpz, align 8                 ; 8 uses
  %6 = alloca %class.mpz, align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store i32 0, ptr %5, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store i32 0, ptr %6, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, -4
  store i8 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 27 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45   ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE5resetEv.exit, label %_ZN6vectorI3mpzLb0EjE3endEv.exit.i

_ZN6vectorI3mpzLb0EjE3endEv.exit.i:               ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !15   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  %.not8.i = icmp eq i32 %i.n, 0
  br i1 %.not8.i, label %._crit_edge.thread14.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !45 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE5resetEv.exit, label %._crit_edge.thread14.i

._crit_edge.thread14.i:                           ; preds = %._crit_edge.i, %_ZN6vectorI3mpzLb0EjE3endEv.exit.i
  %i.r = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.k, %_ZN6vectorI3mpzLb0EjE3endEv.exit.i ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  store i32 0, ptr %i.s, align 4, !tbaa !15
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE5resetEv.exit

.lr.ph.i:                                         ; preds = %_ZN6vectorI3mpzLb0EjE3endEv.exit.i, %.lr.ph.i
  %.09.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.k, %_ZN6vectorI3mpzLb0EjE3endEv.exit.i ] ; 2 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !46, !nonnull !37, !align !38
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %.09.i)
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.u, %i.q
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE5resetEv.exit: ; preds = %bb.a, %._crit_edge.i, %._crit_edge.thread14.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 17 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !68   ; 2 uses
  %.not.i60 = icmp eq ptr %i.w, null
  br i1 %.not.i60, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE5resetEv.exit
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4
  store i32 0, ptr %i.x, align 4, !tbaa !15
  br label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZN6vectorIjLb0EjE5resetEv.exit:                  ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE5resetEv.exit, %bb.b
  %i.y = load i32, ptr %2, align 8, !tbaa !8      ; 4 uses
  %i.z = load i32, ptr %4, align 8, !tbaa !8      ; 3 uses
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.k

.preheader:                                       ; preds = %bb.au, %_ZN6vectorIjLb0EjE5resetEv.exit
  %.054.lcssa = phi i32 [ 0, %_ZN6vectorIjLb0EjE5resetEv.exit ], [ %.2, %bb.au ] ; 2 uses
  %i.ag = icmp ult i32 %.054.lcssa, %i.z
  br i1 %i.ag, label %.lr.ph137, label %.loopexit

.lr.ph137:                                        ; preds = %.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = zext i32 %.054.lcssa to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph137, %_ZN6vectorIjLb0EjE9push_backEOj.exit
  %indvars.iv143 = phi i64 [ %i.ak, %.lr.ph137 ], [ %indvars.iv.next144, %_ZN6vectorIjLb0EjE9push_backEOj.exit ] ; 3 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv143 ; 3 uses
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !45  ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !15 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !15
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.e, label %_ZN6vectorI3mpzLb0EjE4backEv.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @_ZN6vectorI3mpzLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !45 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !15
  br label %_ZN6vectorI3mpzLb0EjE4backEv.exit.i

_ZN6vectorI3mpzLb0EjE4backEv.exit.i:              ; preds = %bb.e, %bb.d
  %i.au = phi i32 [ %.pre2.i.i, %bb.e ], [ %i.aq, %bb.d ]
  %i.av = phi ptr [ %.pre.i.i, %bb.e ], [ %i.an, %bb.d ]
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = and i8 %i.az, -4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 0, ptr %i.ax, align 4, !tbaa !15
  store ptr null, ptr %i.bb, align 8, !tbaa !48
  store i8 %i.ba, ptr %i.ay, align 4
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !45  ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !15 ; 2 uses
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !15
  %i.bg = zext i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = and i8 %i.bj, 1
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6vectorI3mpzLb0EjE4backEv.exit.i
  %i.bm = load i32, ptr %i.am, align 8, !tbaa !41
  store i32 %i.bm, ptr %i.bh, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = and i8 %i.bo, -2
  store i8 %i.bp, ptr %i.bn, align 4
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit

bb.g:                                             ; preds = %_ZN6vectorI3mpzLb0EjE4backEv.exit.i
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !46, !nonnull !37, !align !38
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.am)
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit

_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit: ; preds = %bb.f, %bb.g
  %i.br = load ptr, ptr %i.ai, align 8, !tbaa !19, !nonnull !37, !align !38
  %i.bs = load ptr, ptr %i.j, align 8, !tbaa !45  ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit64, label %bb.h

bb.h:                                             ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !15
  %i.bw = add i32 %i.bv, -1
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bx
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit64

_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit64: ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit, %bb.h
  %i.bz = phi ptr [ %i.by, %bb.h ], [ inttoptr (i64 68719476720 to ptr), %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit ]
  %.0.i.i.i63 = phi i64 [ %i.bx, %bb.h ], [ 4294967295, %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit ]
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %.0.i.i.i63
  call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
  %i.cb = load ptr, ptr %i.aj, align 8, !tbaa !14
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv143
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !15
  %i.ce = load ptr, ptr %i.v, align 8, !tbaa !68  ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit64
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !15 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !15
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.j, label %_ZN6vectorIjLb0EjE9push_backEOj.exit

bb.j:                                             ; preds = %bb.i, %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit64
  call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %.pre.i65 = load ptr, ptr %i.v, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i65, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !15
  br label %_ZN6vectorIjLb0EjE9push_backEOj.exit

_ZN6vectorIjLb0EjE9push_backEOj.exit:             ; preds = %bb.i, %bb.j
  %i.cl = phi i32 [ %.pre2.i, %bb.j ], [ %i.ch, %bb.i ] ; 2 uses
  %i.cm = phi ptr [ %.pre.i65, %bb.j ], [ %i.ce, %bb.i ] ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.co = zext i32 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.co
  store i32 %i.cd, ptr %i.cp, align 4, !tbaa !15
  %i.cq = add i32 %i.cl, 1
  store i32 %i.cq, ptr %i.cn, align 4, !tbaa !15
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %lftr.wideiv146 = trunc i64 %indvars.iv.next144 to i32
  %exitcond147.not = icmp eq i32 %i.z, %lftr.wideiv146
  br i1 %exitcond147.not, label %.loopexit, label %bb.c, !llvm.loop !69

bb.k:                                             ; preds = %.lr.ph, %bb.au
  %.053133 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.au ] ; 5 uses
  %.054132 = phi i32 [ 0, %.lr.ph ], [ %.256, %bb.au ] ; 6 uses
  %i.cr = icmp eq i32 %.053133, %i.z
  br i1 %i.cr, label %.preheader128, label %bb.t

.preheader128:                                    ; preds = %bb.k
  %i.cs = icmp ult i32 %.054132, %i.y
  br i1 %i.cs, label %.lr.ph135, label %.loopexit

.lr.ph135:                                        ; preds = %.preheader128
  %i.ct = zext i32 %.054132 to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph135, %_ZN6vectorIjLb0EjE9push_backEOj.exit80
  %indvars.iv = phi i64 [ %i.ct, %.lr.ph135 ], [ %indvars.iv.next, %_ZN6vectorIjLb0EjE9push_backEOj.exit80 ] ; 3 uses
  %i.cu = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %indvars.iv ; 3 uses
  %i.cw = load ptr, ptr %i.j, align 8, !tbaa !45  ; 4 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 -4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !15 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !15
  %i.dc = icmp eq i32 %i.cz, %i.db
  br i1 %i.dc, label %bb.n, label %_ZN6vectorI3mpzLb0EjE4backEv.exit.i66

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @_ZN6vectorI3mpzLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %.pre.i.i67 = load ptr, ptr %i.j, align 8, !tbaa !45 ; 2 uses
  %.phi.trans.insert.i.i68 = getelementptr inbounds i8, ptr %.pre.i.i67, i64 -4
  %.pre2.i.i69 = load i32, ptr %.phi.trans.insert.i.i68, align 4, !tbaa !15
  br label %_ZN6vectorI3mpzLb0EjE4backEv.exit.i66

_ZN6vectorI3mpzLb0EjE4backEv.exit.i66:            ; preds = %bb.n, %bb.m
  %i.dd = phi i32 [ %.pre2.i.i69, %bb.n ], [ %i.cz, %bb.m ]
  %i.de = phi ptr [ %.pre.i.i67, %bb.n ], [ %i.cw, %bb.m ]
  %i.df = zext i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 4
  %i.dj = and i8 %i.di, -4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i32 0, ptr %i.dg, align 4, !tbaa !15
  store ptr null, ptr %i.dk, align 8, !tbaa !48
  store i8 %i.dj, ptr %i.dh, align 4
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !45  ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !15 ; 2 uses
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !15
  %i.dp = zext i32 %i.dn to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.dp ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.ds = load i8, ptr %i.dr, align 4
  %i.dt = and i8 %i.ds, 1
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6vectorI3mpzLb0EjE4backEv.exit.i66
  %i.dv = load i32, ptr %i.cv, align 8, !tbaa !41
  store i32 %i.dv, ptr %i.dq, align 8, !tbaa !41
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 4
  %i.dy = and i8 %i.dx, -2
  store i8 %i.dy, ptr %i.dw, align 4
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit70

bb.p:                                             ; preds = %_ZN6vectorI3mpzLb0EjE4backEv.exit.i66
  %i.dz = load ptr, ptr %i.i, align 8, !tbaa !46, !nonnull !37, !align !38
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %i.cv)
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit70

_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit70: ; preds = %bb.o, %bb.p
  %i.ea = load ptr, ptr %i.ad, align 8, !tbaa !19, !nonnull !37, !align !38
  %i.eb = load ptr, ptr %i.j, align 8, !tbaa !45  ; 4 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit76, label %bb.q

bb.q:                                             ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit70
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 -4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !15
  %i.ef = add i32 %i.ee, -1
  %i.eg = zext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.eg
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit76

_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit76: ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit70, %bb.q
  %i.ei = phi ptr [ %i.eh, %bb.q ], [ inttoptr (i64 68719476720 to ptr), %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit70 ]
  %.0.i.i.i75 = phi i64 [ %i.eg, %bb.q ], [ 4294967295, %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit70 ]
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %.0.i.i.i75
  call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ej)
  %i.ek = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv
  %i.em = load i32, ptr %i.el, align 4, !tbaa !15
  %i.en = load ptr, ptr %i.v, align 8, !tbaa !68  ; 4 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit76
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 -4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !15 ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 -8
  %i.es = load i32, ptr %i.er, align 4, !tbaa !15
  %i.et = icmp eq i32 %i.eq, %i.es
  br i1 %i.et, label %bb.s, label %_ZN6vectorIjLb0EjE9push_backEOj.exit80

bb.s:                                             ; preds = %bb.r, %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit76
  call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %.pre.i77 = load ptr, ptr %i.v, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i78 = getelementptr inbounds i8, ptr %.pre.i77, i64 -4
  %.pre2.i79 = load i32, ptr %.phi.trans.insert.i78, align 4, !tbaa !15
  br label %_ZN6vectorIjLb0EjE9push_backEOj.exit80

_ZN6vectorIjLb0EjE9push_backEOj.exit80:           ; preds = %bb.r, %bb.s
  %i.eu = phi i32 [ %.pre2.i79, %bb.s ], [ %i.eq, %bb.r ] ; 2 uses
  %i.ev = phi ptr [ %.pre.i77, %bb.s ], [ %i.en, %bb.r ] ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -4
  %i.ex = zext i32 %i.eu to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ex
  store i32 %i.em, ptr %i.ey, align 4, !tbaa !15
  %i.ez = add i32 %i.eu, 1
  store i32 %i.ez, ptr %i.ew, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.l, !llvm.loop !70

bb.t:                                             ; preds = %bb.k
  %i.fa = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.fb = zext i32 %.054132 to i64                ; 5 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !15 ; 2 uses
  %i.fe = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ff = zext i32 %.053133 to i64                ; 4 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !15 ; 2 uses
  %i.fi = icmp ult i32 %i.fd, %i.fh
  br i1 %i.fi, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.fj = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %i.fb ; 3 uses
  %i.fl = load ptr, ptr %i.j, align 8, !tbaa !45  ; 4 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 -4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !15 ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fl, i64 -8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !15
  %i.fr = icmp eq i32 %i.fo, %i.fq
  br i1 %i.fr, label %bb.w, label %_ZN6vectorI3mpzLb0EjE4backEv.exit.i81

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @_ZN6vectorI3mpzLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %.pre.i.i82 = load ptr, ptr %i.j, align 8, !tbaa !45 ; 2 uses
  %.phi.trans.insert.i.i83 = getelementptr inbounds i8, ptr %.pre.i.i82, i64 -4
  %.pre2.i.i84 = load i32, ptr %.phi.trans.insert.i.i83, align 4, !tbaa !15
  br label %_ZN6vectorI3mpzLb0EjE4backEv.exit.i81

_ZN6vectorI3mpzLb0EjE4backEv.exit.i81:            ; preds = %bb.w, %bb.v
  %i.fs = phi i32 [ %.pre2.i.i84, %bb.w ], [ %i.fo, %bb.v ]
  %i.ft = phi ptr [ %.pre.i.i82, %bb.w ], [ %i.fl, %bb.v ]
  %i.fu = zext i32 %i.fs to i64
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.fu ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 4
  %i.fy = and i8 %i.fx, -4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store i32 0, ptr %i.fv, align 4, !tbaa !15
  store ptr null, ptr %i.fz, align 8, !tbaa !48
  store i8 %i.fy, ptr %i.fw, align 4
  %i.ga = load ptr, ptr %i.j, align 8, !tbaa !45  ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -4 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !15 ; 2 uses
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !15
  %i.ge = zext i32 %i.gc to i64
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.ge ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.gh = load i8, ptr %i.gg, align 4
  %i.gi = and i8 %i.gh, 1
  %i.gj = icmp eq i8 %i.gi, 0
  br i1 %i.gj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN6vectorI3mpzLb0EjE4backEv.exit.i81
  %i.gk = load i32, ptr %i.fk, align 8, !tbaa !41
  store i32 %i.gk, ptr %i.gf, align 8, !tbaa !41
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 4
  %i.gn = and i8 %i.gm, -2
  store i8 %i.gn, ptr %i.gl, align 4
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit85

bb.y:                                             ; preds = %_ZN6vectorI3mpzLb0EjE4backEv.exit.i81
  %i.go = load ptr, ptr %i.i, align 8, !tbaa !46, !nonnull !37, !align !38
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.fk)
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit85

_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit85: ; preds = %bb.x, %bb.y
  %i.gp = load ptr, ptr %i.ad, align 8, !tbaa !19, !nonnull !37, !align !38
  %i.gq = load ptr, ptr %i.j, align 8, !tbaa !45  ; 4 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit91, label %bb.z

bb.z:                                             ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit85
  %i.gs = getelementptr inbounds i8, ptr %i.gq, i64 -4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !15
  %i.gu = add i32 %i.gt, -1
  %i.gv = zext i32 %i.gu to i64                   ; 2 uses
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %i.gv
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit91

_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit91: ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit85, %bb.z
  %i.gx = phi ptr [ %i.gw, %bb.z ], [ inttoptr (i64 68719476720 to ptr), %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit85 ]
  %.0.i.i.i90 = phi i64 [ %i.gv, %bb.z ], [ 4294967295, %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit85 ]
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %.0.i.i.i90
  call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.gy)
  %i.gz = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.fb
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !15
  %i.hc = load ptr, ptr %i.v, align 8, !tbaa !68  ; 4 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit91
  %i.he = getelementptr inbounds i8, ptr %i.hc, i64 -4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !15 ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %i.hc, i64 -8
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !15
  %i.hi = icmp eq i32 %i.hf, %i.hh
  br i1 %i.hi, label %bb.ab, label %_ZN6vectorIjLb0EjE9push_backEOj.exit95

bb.ab:                                            ; preds = %bb.aa, %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit91
  call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %.pre.i92 = load ptr, ptr %i.v, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i93 = getelementptr inbounds i8, ptr %.pre.i92, i64 -4
  %.pre2.i94 = load i32, ptr %.phi.trans.insert.i93, align 4, !tbaa !15
  br label %_ZN6vectorIjLb0EjE9push_backEOj.exit95

_ZN6vectorIjLb0EjE9push_backEOj.exit95:           ; preds = %bb.aa, %bb.ab
  %i.hj = phi i32 [ %.pre2.i94, %bb.ab ], [ %i.hf, %bb.aa ] ; 2 uses
  %i.hk = phi ptr [ %.pre.i92, %bb.ab ], [ %i.hc, %bb.aa ] ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 -4
  %i.hm = zext i32 %i.hj to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hm
  store i32 %i.hb, ptr %i.hn, align 4, !tbaa !15
  %i.ho = add i32 %i.hj, 1
  store i32 %i.ho, ptr %i.hl, align 4, !tbaa !15
  %i.hp = add i32 %.054132, 1
  br label %bb.au

bb.ac:                                            ; preds = %bb.t
  %i.hq = icmp ugt i32 %i.fd, %i.fh
  br i1 %i.hq, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.hr = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hr, i64 %i.ff ; 3 uses
  %i.ht = load ptr, ptr %i.j, align 8, !tbaa !45  ; 4 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hv = getelementptr inbounds i8, ptr %i.ht, i64 -4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !15 ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %i.ht, i64 -8
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !15
  %i.hz = icmp eq i32 %i.hw, %i.hy
  br i1 %i.hz, label %bb.af, label %_ZN6vectorI3mpzLb0EjE4backEv.exit.i96

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @_ZN6vectorI3mpzLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %.pre.i.i97 = load ptr, ptr %i.j, align 8, !tbaa !45 ; 2 uses
  %.phi.trans.insert.i.i98 = getelementptr inbounds i8, ptr %.pre.i.i97, i64 -4
  %.pre2.i.i99 = load i32, ptr %.phi.trans.insert.i.i98, align 4, !tbaa !15
  br label %_ZN6vectorI3mpzLb0EjE4backEv.exit.i96

_ZN6vectorI3mpzLb0EjE4backEv.exit.i96:            ; preds = %bb.af, %bb.ae
  %i.ia = phi i32 [ %.pre2.i.i99, %bb.af ], [ %i.hw, %bb.ae ]
  %i.ib = phi ptr [ %.pre.i.i97, %bb.af ], [ %i.ht, %bb.ae ]
  %i.ic = zext i32 %i.ia to i64
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.ic ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4 ; 2 uses
  %i.if = load i8, ptr %i.ie, align 4
  %i.ig = and i8 %i.if, -4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i32 0, ptr %i.id, align 4, !tbaa !15
  store ptr null, ptr %i.ih, align 8, !tbaa !48
  store i8 %i.ig, ptr %i.ie, align 4
  %i.ii = load ptr, ptr %i.j, align 8, !tbaa !45  ; 2 uses
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 -4 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !15 ; 2 uses
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !15
  %i.im = zext i32 %i.ik to i64
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %i.im ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.ip = load i8, ptr %i.io, align 4
  %i.iq = and i8 %i.ip, 1
  %i.ir = icmp eq i8 %i.iq, 0
  br i1 %i.ir, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN6vectorI3mpzLb0EjE4backEv.exit.i96
  %i.is = load i32, ptr %i.hs, align 8, !tbaa !41
  store i32 %i.is, ptr %i.in, align 8, !tbaa !41
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 4 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 4
  %i.iv = and i8 %i.iu, -2
  store i8 %i.iv, ptr %i.it, align 4
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit100

bb.ah:                                            ; preds = %_ZN6vectorI3mpzLb0EjE4backEv.exit.i96
  %i.iw = load ptr, ptr %i.i, align 8, !tbaa !46, !nonnull !37, !align !38
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.iw, ptr noundef nonnull align 8 dereferenceable(16) %i.in, ptr noundef nonnull align 8 dereferenceable(16) %i.hs)
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit100

_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit100: ; preds = %bb.ag, %bb.ah
  %i.ix = load ptr, ptr %i.ad, align 8, !tbaa !19, !nonnull !37, !align !38
  %i.iy = load ptr, ptr %i.j, align 8, !tbaa !45  ; 4 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit106, label %bb.ai

bb.ai:                                            ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit100
  %i.ja = getelementptr inbounds i8, ptr %i.iy, i64 -4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !15
  %i.jc = add i32 %i.jb, -1
  %i.jd = zext i32 %i.jc to i64                   ; 2 uses
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %i.jd
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit106

_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit106: ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit100, %bb.ai
  %i.jf = phi ptr [ %i.je, %bb.ai ], [ inttoptr (i64 68719476720 to ptr), %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit100 ]
  %.0.i.i.i105 = phi i64 [ %i.jd, %bb.ai ], [ 4294967295, %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit100 ]
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %.0.i.i.i105
  call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ix, ptr noundef nonnull align 8 dereferenceable(16) %i.jf, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.jg)
  %i.jh = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.ff
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !15
  %i.jk = load ptr, ptr %i.v, align 8, !tbaa !68  ; 4 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit106
  %i.jm = getelementptr inbounds i8, ptr %i.jk, i64 -4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !15 ; 2 uses
  %i.jo = getelementptr inbounds i8, ptr %i.jk, i64 -8
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !15
  %i.jq = icmp eq i32 %i.jn, %i.jp
  br i1 %i.jq, label %bb.ak, label %_ZN6vectorIjLb0EjE9push_backEOj.exit110

bb.ak:                                            ; preds = %bb.aj, %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE4backEv.exit106
  call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %.pre.i107 = load ptr, ptr %i.v, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i108 = getelementptr inbounds i8, ptr %.pre.i107, i64 -4
  %.pre2.i109 = load i32, ptr %.phi.trans.insert.i108, align 4, !tbaa !15
  br label %_ZN6vectorIjLb0EjE9push_backEOj.exit110

_ZN6vectorIjLb0EjE9push_backEOj.exit110:          ; preds = %bb.aj, %bb.ak
  %i.jr = phi i32 [ %.pre2.i109, %bb.ak ], [ %i.jn, %bb.aj ] ; 2 uses
  %i.js = phi ptr [ %.pre.i107, %bb.ak ], [ %i.jk, %bb.aj ] ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -4
  %i.ju = zext i32 %i.jr to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ju
  store i32 %i.jj, ptr %i.jv, align 4, !tbaa !15
  %i.jw = add i32 %i.jr, 1
  store i32 %i.jw, ptr %i.jt, align 4, !tbaa !15
  %i.jx = add i32 %.053133, 1
  br label %bb.au

bb.al:                                            ; preds = %bb.ac
  %i.jy = load ptr, ptr %i.ad, align 8, !tbaa !19, !nonnull !37, !align !38
  %i.jz = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.jz, i64 %i.fb
  call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.jy, ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.kb = load ptr, ptr %i.ad, align 8, !tbaa !19, !nonnull !37, !align !38
  %i.kc = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %i.ff
  call void @_ZN11mpz_managerILb0EE6addmulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.kb, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.kd, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.ke = load i32, ptr %6, align 8, !tbaa !41
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kg = load ptr, ptr %i.j, align 8, !tbaa !45  ; 4 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ki = getelementptr inbounds i8, ptr %i.kg, i64 -4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !15 ; 2 uses
  %i.kk = getelementptr inbounds i8, ptr %i.kg, i64 -8
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !15
  %i.km = icmp eq i32 %i.kj, %i.kl
  br i1 %i.km, label %bb.ao, label %_ZN6vectorI3mpzLb0EjE4backEv.exit.i111

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @_ZN6vectorI3mpzLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %.pre.i.i112 = load ptr, ptr %i.j, align 8, !tbaa !45 ; 2 uses
  %.phi.trans.insert.i.i113 = getelementptr inbounds i8, ptr %.pre.i.i112, i64 -4
  %.pre2.i.i114 = load i32, ptr %.phi.trans.insert.i.i113, align 4, !tbaa !15
  br label %_ZN6vectorI3mpzLb0EjE4backEv.exit.i111

_ZN6vectorI3mpzLb0EjE4backEv.exit.i111:           ; preds = %bb.ao, %bb.an
  %i.kn = phi i32 [ %.pre2.i.i114, %bb.ao ], [ %i.kj, %bb.an ]
  %i.ko = phi ptr [ %.pre.i.i112, %bb.ao ], [ %i.kg, %bb.an ]
  %i.kp = zext i32 %i.kn to i64
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %i.ko, i64 %i.kp ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 4 ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 4
  %i.kt = and i8 %i.ks, -4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store i32 0, ptr %i.kq, align 4, !tbaa !15
  store ptr null, ptr %i.ku, align 8, !tbaa !48
  store i8 %i.kt, ptr %i.kr, align 4
  %i.kv = load ptr, ptr %i.j, align 8, !tbaa !45  ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 -4 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !15 ; 2 uses
  %i.ky = add i32 %i.kx, 1
  store i32 %i.ky, ptr %i.kw, align 4, !tbaa !15
  %i.kz = zext i32 %i.kx to i64
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.kv, i64 %i.kz ; 3 uses
  %i.lb = load i8, ptr %i.e, align 4
  %i.lc = and i8 %i.lb, 1
  %i.ld = icmp eq i8 %i.lc, 0
  br i1 %i.ld, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN6vectorI3mpzLb0EjE4backEv.exit.i111
  %i.le = load i32, ptr %6, align 8, !tbaa !41
  store i32 %i.le, ptr %i.la, align 8, !tbaa !41
  %i.lf = getelementptr inbounds nuw i8, ptr %i.la, i64 4 ; 2 uses
  %i.lg = load i8, ptr %i.lf, align 4
  %i.lh = and i8 %i.lg, -2
  store i8 %i.lh, ptr %i.lf, align 4
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit115

bb.aq:                                            ; preds = %_ZN6vectorI3mpzLb0EjE4backEv.exit.i111
  %i.li = load ptr, ptr %i.i, align 8, !tbaa !46, !nonnull !37, !align !38
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.li, ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit115

_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit115: ; preds = %bb.ap, %bb.aq
  %i.lj = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.fb
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !15
  %i.lm = load ptr, ptr %i.v, align 8, !tbaa !68  ; 4 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit115
  %i.lo = getelementptr inbounds i8, ptr %i.lm, i64 -4
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !15 ; 2 uses
  %i.lq = getelementptr inbounds i8, ptr %i.lm, i64 -8
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !15
  %i.ls = icmp eq i32 %i.lp, %i.lr
  br i1 %i.ls, label %bb.as, label %_ZN6vectorIjLb0EjE9push_backEOj.exit119

bb.as:                                            ; preds = %bb.ar, %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit115
  call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %.pre.i116 = load ptr, ptr %i.v, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i117 = getelementptr inbounds i8, ptr %.pre.i116, i64 -4
  %.pre2.i118 = load i32, ptr %.phi.trans.insert.i117, align 4, !tbaa !15
  br label %_ZN6vectorIjLb0EjE9push_backEOj.exit119

_ZN6vectorIjLb0EjE9push_backEOj.exit119:          ; preds = %bb.ar, %bb.as
  %i.lt = phi i32 [ %.pre2.i118, %bb.as ], [ %i.lp, %bb.ar ] ; 2 uses
  %i.lu = phi ptr [ %.pre.i116, %bb.as ], [ %i.lm, %bb.ar ] ; 2 uses
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 -4
  %i.lw = zext i32 %i.lt to i64
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.lw
  store i32 %i.ll, ptr %i.lx, align 4, !tbaa !15
  %i.ly = add i32 %i.lt, 1
  store i32 %i.ly, ptr %i.lv, align 4, !tbaa !15
  br label %bb.at

bb.at:                                            ; preds = %_ZN6vectorIjLb0EjE9push_backEOj.exit119, %bb.al
  %i.lz = add i32 %.054132, 1
  %i.ma = add i32 %.053133, 1
  br label %bb.au

bb.au:                                            ; preds = %_ZN6vectorIjLb0EjE9push_backEOj.exit110, %bb.at, %_ZN6vectorIjLb0EjE9push_backEOj.exit95
  %.256 = phi i32 [ %i.hp, %_ZN6vectorIjLb0EjE9push_backEOj.exit95 ], [ %.054132, %_ZN6vectorIjLb0EjE9push_backEOj.exit110 ], [ %i.lz, %bb.at ] ; 2 uses
  %.2 = phi i32 [ %.053133, %_ZN6vectorIjLb0EjE9push_backEOj.exit95 ], [ %i.jx, %_ZN6vectorIjLb0EjE9push_backEOj.exit110 ], [ %i.ma, %bb.at ] ; 2 uses
  %i.mb = icmp eq i32 %.256, %i.y
  br i1 %i.mb, label %.preheader, label %bb.k, !llvm.loop !71

.loopexit:                                        ; preds = %_ZN6vectorIjLb0EjE9push_backEOj.exit80, %_ZN6vectorIjLb0EjE9push_backEOj.exit, %.preheader128, %.preheader
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !19, !nonnull !37, !align !38
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.md, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.me = load ptr, ptr %i.mc, align 8, !tbaa !19, !nonnull !37, !align !38
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.me, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.mf = load ptr, ptr %i.j, align 8, !tbaa !45  ; 3 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %_ZNK14numeral_bufferI3mpz11mpq_managerILb0EEE5emptyEv.exit.thread, label %_ZNK14numeral_bufferI3mpz11mpq_managerILb0EEE5emptyEv.exit

_ZNK14numeral_bufferI3mpz11mpq_managerILb0EEE5emptyEv.exit: ; preds = %.loopexit
  %i.mh = getelementptr inbounds i8, ptr %i.mf, i64 -4
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !15 ; 2 uses
  %i.mj = icmp eq i32 %i.mi, 0
  br i1 %i.mj, label %_ZNK14numeral_bufferI3mpz11mpq_managerILb0EEE5emptyEv.exit.thread, label %_ZNK14numeral_bufferI3mpz11mpq_managerILb0EEE4sizeEv.exit

_ZNK14numeral_bufferI3mpz11mpq_managerILb0EEE4sizeEv.exit: ; preds = %_ZNK14numeral_bufferI3mpz11mpq_managerILb0EEE5emptyEv.exit
  %i.mk = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.ml = call noundef ptr @_ZN23linear_equation_manager7mk_coreEjP3mpzPj(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.mi, ptr noundef nonnull %i.mf, ptr noundef %i.mk)
  br label %_ZNK14numeral_bufferI3mpz11mpq_managerILb0EEE5emptyEv.exit.thread

_ZNK14numeral_bufferI3mpz11mpq_managerILb0EEE5emptyEv.exit.thread: ; preds = %.loopexit, %_ZNK14numeral_bufferI3mpz11mpq_managerILb0EEE5emptyEv.exit, %_ZNK14numeral_bufferI3mpz11mpq_managerILb0EEE4sizeEv.exit
  %.0 = phi ptr [ %i.ml, %_ZNK14numeral_bufferI3mpz11mpq_managerILb0EEE4sizeEv.exit ], [ null, %_ZNK14numeral_bufferI3mpz11mpq_managerILb0EEE5emptyEv.exit ], [ null, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN23linear_equation_manager3delEP15linear_equation(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.d = mul i32 %i.k, 28
  %i.e = add i32 %i.d, 32
  %i.f = zext i32 %i.e to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i64 [ 32, %bb.a ], [ %i.f, %._crit_edge.loopexit ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !63, !nonnull !37, !align !38
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.g, i64 noundef %.lcssa, ptr noundef nonnull %1)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !19, !nonnull !37, !align !38
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !72
}

declare void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520), i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.au, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !15   ; 2 uses
  %i.j = load i32, ptr %0, align 4, !tbaa !15
  store i32 %i.j, ptr %i.h, align 4, !tbaa !15
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr i64 %i.n, 1
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.s, align 4, !tbaa !15
  %i.w = load i32, ptr %i.u, align 4, !tbaa !15
  %i.x = icmp ult i32 %i.v, %i.w
  %i.y = or disjoint i64 %i.q, 1
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %i.r ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !15
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !15
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !74

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.l, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.m, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !15
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !15
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !15 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %i.i
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !15
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !75

_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.i, ptr %i.ar, align 4, !tbaa !15
  %i.as = icmp sgt i64 %i.l, 4
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !76

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.at = phi i64 [ %i.bs, %bb.b ], [ %i.c, %.lr.ph ]
  %i.au = add nsw i64 %.0121944, -1               ; 3 uses
  %i.av = lshr i64 %i.at, 3
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.02043, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !15  ; 5 uses
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !15 ; 5 uses
  %i.ba = icmp ult i32 %i.ay, %i.az
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !15 ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bc = icmp ult i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

end_hunk_1
