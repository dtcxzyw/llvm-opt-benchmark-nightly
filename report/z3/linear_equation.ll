Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/linear_equation?download=true
inline.NumInlined: 319
inline.NumDeleted: 171
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
  %i.a = load i32, ptr %0, align 8, !tbaa !15
  %i.b = add i32 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  br label %.outer

.outer:                                           ; preds = %bb.c, %bb.a
  %.018.ph = phi i32 [ %i.l, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.017.ph = phi i32 [ %.017, %bb.c ], [ %i.b, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.e
  %.017 = phi i32 [ %i.n, %bb.e ], [ %.017.ph, %.outer ] ; 3 uses
  %i.e = sub nsw i32 %.017, %.018.ph              ; 2 uses
  %i.f = sdiv i32 %i.e, 2
  %i.g = add nsw i32 %i.f, %.018.ph               ; 5 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17   ; 2 uses
  %i.k = icmp ugt i32 %1, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.g, 1
  %.not29 = icmp slt i32 %i.g, %.017
  br i1 %.not29, label %.outer, label %.loopexit, !llvm.loop !52

bb.d:                                             ; preds = %bb.b
  %i.m = icmp ult i32 %1, %i.j
  br i1 %i.m, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.g, -1
  %.not = icmp sgt i32 %i.e, 1
  br i1 %.not, label %bb.b, label %.loopexit, !llvm.loop !52

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.d
  %.122.ph = phi i32 [ %i.g, %bb.d ], [ -1, %bb.e ], [ -1, %bb.c ]
  ret i32 %.122.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK23linear_equation_manager7displayERSoRK15linear_equation(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !15     ; 3 uses
  %.not18 = icmp eq i32 %i.a, 0
  br i1 %.not18, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %wide.trip.count = zext i32 %i.a to i64
  %.pre21 = load ptr, ptr %i.c, align 8, !tbaa !19
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZNK11mpz_managerILb0EE9to_stringB5cxx11ERK3mpz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(728) %.pre, ptr noundef nonnull align 8 dereferenceable(16) %.pre21)
  %i.g = load ptr, ptr %3, align 8, !tbaa !35
  %i.h = load i64, ptr %i.d, align 8, !tbaa !36
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.g, i64 noundef %i.h)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17
  %i.m = zext i32 %i.l to i64
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.m)
          to label %_ZNSolsEj.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEj.exit.peel:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel
  %i.o = load ptr, ptr %3, align 8, !tbaa !35     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.f
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSolsEj.exit.peel
  %i.q = load i64, ptr %i.f, align 8, !tbaa !37
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %_ZNSolsEj.exit.peel
  %4 = load i64, ptr %i.d, align 8, !tbaa !36
  %5 = icmp ult i64 %4, 16
  call void @llvm.assume(i1 %5)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %exitcond.peel.not = icmp eq i32 %i.a, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.a
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 4) ; 0 uses
  ret void

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 3 uses
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !31, !nonnull !38, !align !39
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv
  call void @_ZNK11mpz_managerILb0EE9to_stringB5cxx11ERK3mpz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(728) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.w)
  %i.x = load ptr, ptr %3, align 8, !tbaa !35
  %i.y = load i64, ptr %i.d, align 8, !tbaa !36
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.x, i64 noundef %i.y)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %.peel.next
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !17
  %i.ae = zext i32 %i.ad to i64
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i64 noundef %i.ae)
          to label %_ZNSolsEj.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ag = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.f
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEj.exit
  %i.ai = load i64, ptr %i.f, align 8, !tbaa !37
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !53

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %.peel.next, %bb.b, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.f
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.am = load i64, ptr %i.f, align 8, !tbaa !37
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN23linear_equation_manager2mkEjP3mpqPjb(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %class.mpz, align 8                 ; 12 uses
  %6 = alloca %class.mpz, align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store i32 0, ptr %5, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store i32 0, ptr %6, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, -4
  store i8 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.j, align 8, !tbaa !42
  store i32 %i.o, ptr %5, align 8, !tbaa !42
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !38, !align !39
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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44   ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE5resetEv.exit, label %_ZN6vectorI3mpzLb0EjE3endEv.exit.i

_ZN6vectorI3mpzLb0EjE3endEv.exit.i:               ; preds = %._crit_edge
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !17   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.y
  %.not8.i = icmp eq i32 %i.w, 0
  br i1 %.not8.i, label %._crit_edge.thread14.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !44 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE5resetEv.exit, label %._crit_edge.thread14.i

._crit_edge.thread14.i:                           ; preds = %._crit_edge.i, %_ZN6vectorI3mpzLb0EjE3endEv.exit.i
  %i.aa = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.t, %_ZN6vectorI3mpzLb0EjE3endEv.exit.i ] ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4
  store i32 0, ptr %i.ab, align 4, !tbaa !17
  br label %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE5resetEv.exit

.lr.ph.i:                                         ; preds = %_ZN6vectorI3mpzLb0EjE3endEv.exit.i, %.lr.ph.i
  %.09.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.t, %_ZN6vectorI3mpzLb0EjE3endEv.exit.i ] ; 2 uses
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !45, !nonnull !38, !align !39
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %.09.i)
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE5resetEv.exit: ; preds = %._crit_edge, %._crit_edge.i, %._crit_edge.thread14.i
  %i.ae = phi ptr [ null, %._crit_edge ], [ null, %._crit_edge.i ], [ %i.aa, %._crit_edge.thread14.i ]
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge25, label %.lr.ph24.preheader

.lr.ph24.preheader:                               ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE5resetEv.exit
  %wide.trip.count30 = zext i32 %1 to i64
  br label %.lr.ph24

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit21
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit21 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.al = load i32, ptr %i.ag, align 8, !tbaa !42
  store i32 %i.al, ptr %6, align 8, !tbaa !42
  %i.am = load i8, ptr %i.e, align 4
  %i.an = and i8 %i.am, -2
  store i8 %i.an, ptr %i.e, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit21

bb.e:                                             ; preds = %.lr.ph
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !38, !align !39
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit21

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit21:     ; preds = %bb.d, %bb.e
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !38, !align !39
  call void @_ZN11mpz_managerILb0EE3lcmERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !55

._crit_edge25.loopexit:                           ; preds = %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE9push_backERKS0_.exit
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !44
  br label %._crit_edge25

._crit_edge25:                                    ; preds = %._crit_edge25.loopexit, %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE5resetEv.exit
  %i.aq = phi ptr [ %.pre, %._crit_edge25.loopexit ], [ %i.ae, %_ZN14numeral_bufferI3mpz11mpq_managerILb0EEE5resetEv.exit ]
  %i.ar = call noundef ptr @_ZN23linear_equation_manager2mkEjP3mpzPjb(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef %i.aq, ptr noundef %3, i1 noundef zeroext %4)
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !38, !align !39
end_hunk_0
