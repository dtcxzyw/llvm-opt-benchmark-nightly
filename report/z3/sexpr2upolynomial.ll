Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sexpr2upolynomial?download=true
inline.NumInlined: 167
inline.NumDeleted: 96
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.symbol = type { ptr }
%"class.upolynomial::scoped_numeral_vector" = type { %class._scoped_numeral_vector }
%class._scoped_numeral_vector = type { %class.svector, ptr }
%class.svector = type { %class.vector }
%class.vector = type { ptr }
%class.rational = type { %class.mpq }
%class.mpq = type { %class.mpz, %class.mpz }
%class.mpz = type { i32, i8, ptr }

$_ZN17default_exceptionD2Ev = comdat any

$_ZeqRK6symbolPKc = comdat any

$_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev = comdat any

$_ZN8rationalD2Ev = comdat any

$_ZN27sexpr2upolynomial_exceptionD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZTV27sexpr2upolynomial_exception = comdat any

$_ZTI27sexpr2upolynomial_exception = comdat any

$_ZTS27sexpr2upolynomial_exception = comdat any

$_ZTI13cmd_exception = comdat any

$_ZTS13cmd_exception = comdat any

@_ZTV27sexpr2upolynomial_exception = linkonce_odr hidden constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI27sexpr2upolynomial_exception, ptr @_ZN17default_exceptionD2Ev, ptr @_ZN27sexpr2upolynomial_exceptionD0Ev, ptr @_ZNK17default_exception4whatEv, ptr @_ZNK12z3_exception10error_codeEv] }, comdat, align 8
@.str = private unnamed_addr constant [43 x i8] c"invalid univariate polynomial, too complex\00", align 1
@_ZTI27sexpr2upolynomial_exception = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS27sexpr2upolynomial_exception, ptr @_ZTI13cmd_exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS27sexpr2upolynomial_exception = linkonce_odr hidden constant [30 x i8] c"27sexpr2upolynomial_exception\00", comdat, align 1
@_ZTI13cmd_exception = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cmd_exception, ptr @_ZTI17default_exception }, comdat, align 8
@_ZTS13cmd_exception = linkonce_odr hidden constant [16 x i8] c"13cmd_exception\00", comdat, align 1
@_ZTI17default_exception = external constant ptr
@.str.1 = private unnamed_addr constant [47 x i8] c"invalid univariate polynomial, symbol expected\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"invalid univariate polynomial, '+' operator expects at least one argument\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"invalid univariate polynomial, '-' operator expects at least one argument\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"invalid univariate polynomial, '*' operator expects at least one argument\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"invalid univariate polynomial, '^' operator expects two arguments\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"invalid univariate polynomial, exponent must be an unsigned integer\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"invalid univariate polynomial, '+', '-', '^' or '*' expected\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"invalid univariate polynomial, integer coefficient expected\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"invalid univariate polynomial, variable 'x' expected\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"invalid univariate polynomial, unexpected \00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8
@_ZN8rational13g_mpq_managerE = external local_unnamed_addr global ptr, align 8

@_ZN27sexpr2upolynomial_exceptionC1EPKcPK5sexpr = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN27sexpr2upolynomial_exceptionC2EPKcPK5sexpr

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27sexpr2upolynomial_exceptionC2EPKcPK5sexpr(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !38
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #16
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #16
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !39

.noexc11.i:                                       ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17 ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !14
  store i64 %i.c, ptr %i.a, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.b ] ; 3 uses
  switch i64 %i.c, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !15
  store i8 %i.j, ptr %i.i, align 1, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.c, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load <2 x i32>, ptr %i.m, align 4, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !38
  %i.q = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.k, align 8, !tbaa !16   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  store ptr %i.q, ptr %i.o, align 8, !tbaa !14
  %i.v = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.v, ptr %i.p, align 8, !tbaa !15
  %.pre = load i64, ptr %i.k, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.h
  %i.w = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.s, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i32> %i.n, ptr %i.y, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV27sexpr2upolynomial_exception, i64 16), ptr %0, align 8, !tbaa !19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_Z17sexpr2upolynomialRN11upolynomial7managerEPK5sexprR7svectorI3mpzjEj(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.symbol, align 8              ; 8 uses
  %5 = alloca %"class.upolynomial::scoped_numeral_vector", align 8 ; 12 uses
  %6 = alloca %"class.upolynomial::scoped_numeral_vector", align 8 ; 12 uses
  %7 = alloca %"class.upolynomial::scoped_numeral_vector", align 8 ; 12 uses
  %8 = alloca %class.rational, align 8            ; 14 uses
  %9 = alloca %class.symbol, align 8              ; 4 uses
  %10 = alloca [2 x %class.rational], align 16    ; 23 uses
  %i.a = icmp ugt i32 %3, 65536
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 48) #15 ; 3 uses
  invoke void @_ZN27sexpr2upolynomial_exceptionC2EPKcPK5sexpr(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull @.str, ptr noundef %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI27sexpr2upolynomial_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #15
  br label %bb.cz

bb.e:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !45
  switch i32 %i.d, label %bb.cv [
    i32 0, label %bb.f
    i32 1, label %bb.by
    i32 5, label %bb.cm
  ]

bb.f:                                             ; preds = %bb.e
  %i.e = tail call noundef i32 @_ZNK5sexpr16get_num_childrenEv(ptr noundef nonnull align 4 dereferenceable(16) %1) ; 11 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.g = tail call ptr @__cxa_allocate_exception(i64 48) #15 ; 3 uses
  invoke void @_ZN27sexpr2upolynomial_exceptionC2EPKcPK5sexpr(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull @.str.1, ptr noundef nonnull %1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI27sexpr2upolynomial_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #16
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #15
  br label %bb.cz

bb.j:                                             ; preds = %bb.f
  %i.i = tail call noundef ptr @_ZNK5sexpr9get_childEj(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 0) ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !45
  %i.k = icmp eq i32 %i.j, 5
  br i1 %i.k, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = tail call ptr @__cxa_allocate_exception(i64 48) #15 ; 3 uses
  invoke void @_ZN27sexpr2upolynomial_exceptionC2EPKcPK5sexpr(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull @.str.1, ptr noundef nonnull %1)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI27sexpr2upolynomial_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #16
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #15
  br label %bb.cz

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.n = tail call ptr @_ZNK5sexpr10get_symbolEv(ptr noundef nonnull align 4 dereferenceable(16) %i.i)
  store ptr %i.n, ptr %4, align 8
  %i.o = call noundef zeroext i1 @_ZeqRK6symbolPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.2)
  br i1 %i.o, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %bb.n
  %i.p = icmp eq i32 %i.e, 1
  br i1 %i.p, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.q = call ptr @__cxa_allocate_exception(i64 48) #15 ; 3 uses
  invoke void @_ZN27sexpr2upolynomial_exceptionC2EPKcPK5sexpr(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull @.str.3, ptr noundef nonnull %1)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTI27sexpr2upolynomial_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #16
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #15
  br label %bb.bx

bb.s:                                             ; preds = %bb.o
  %i.s = call noundef ptr @_ZNK5sexpr9get_childEj(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 1)
  %i.t = add nuw nsw i32 %3, 1                    ; 2 uses
  call void @_Z17sexpr2upolynomialRN11upolynomial7managerEPK5sexprR7svectorI3mpzjEj(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN11upolynomial21scoped_numeral_vectorC1ERNS_7managerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(312) %0)
  %i.u = icmp ugt i32 %i.e, 2
  br i1 %i.u, label %.lr.ph179, label %._crit_edge180

._crit_edge180:                                   ; preds = %bb.aa, %bb.s
  %i.v = load ptr, ptr %5, align 8, !tbaa !22     ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i:           ; preds = %._crit_edge180
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %wide.trip.count.i.i = zext i32 %i.y to i64
  br label %bb.t

._crit_edge.i.i:                                  ; preds = %.noexc.i
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i: ; preds = %._crit_edge.i.i
  %i.aa = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  store i32 0, ptr %i.aa, align 4, !tbaa !17
  br label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i

bb.t:                                             ; preds = %.noexc.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.noexc.i ] ; 2 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !26, !nonnull !27, !align !28
  %i.ac = load ptr, ptr %5, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv.i.i
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !34, !nonnull !27, !align !28
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %.noexc.i unwind label %bb.v

.noexc.i:                                         ; preds = %bb.t
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.t, !llvm.loop !0

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i: ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %.pr6.i = phi ptr [ %.pre.i.i, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i ], [ %i.v, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ]
  %i.af = getelementptr inbounds i8, ptr %.pr6.i, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.af)
          to label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #18
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #18
  unreachable

_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit: ; preds = %._crit_edge180, %._crit_edge.i.i, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.bw

.lr.ph179:                                        ; preds = %bb.s, %bb.aa
  %.0103177 = phi i32 [ %i.at, %bb.aa ], [ 2, %bb.s ] ; 2 uses
  invoke void @_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN11upolynomial7manager5resetER7svectorI3mpzjE.exit unwind label %bb.ab

_ZN11upolynomial7manager5resetER7svectorI3mpzjE.exit: ; preds = %.lr.ph179
  %i.ak = invoke noundef ptr @_ZNK5sexpr9get_childEj(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %.0103177)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %_ZN11upolynomial7manager5resetER7svectorI3mpzjE.exit
  invoke void @_Z17sexpr2upolynomialRN11upolynomial7managerEPK5sexprR7svectorI3mpzjEj(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.t)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.al = load ptr, ptr %5, align 8, !tbaa !22    ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !17
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit:               ; preds = %bb.x, %bb.y
  %.0.i = phi i32 [ %i.ao, %bb.y ], [ 0, %bb.x ]
  %i.ap = load ptr, ptr %2, align 8, !tbaa !22    ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit123, label %bb.z

bb.z:                                             ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !17
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit123

end_hunk_0
begin_hunk_1_@_Z17sexpr2upolynomialRN11upolynomial7managerEPK5sexprR7svectorI3mpzjEj:bb.a
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.ca, %bb.bz
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ev, i64 20
  %i.fn = load i8, ptr %i.fm, align 4
  %i.fo = and i8 %i.fn, 1
  %i.fp = icmp eq i8 %i.fo, 0
  br i1 %i.fp, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.fq = load i32, ptr %i.fl, align 8, !tbaa !46 ; 2 uses
  store i32 %i.fq, ptr %i.fa, align 8, !tbaa !46
  %i.fr = load i8, ptr %i.fb, align 4
  %i.fs = and i8 %i.fr, -2
  store i8 %i.fs, ptr %i.fb, align 4
  br label %bb.cd

bb.cc:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %i.fl)
  %.pre = load i8, ptr %i.fb, align 4
  %.pre184 = load i32, ptr %i.fa, align 8
  %i.ft = and i8 %.pre, 1
  %i.fu = icmp eq i8 %i.ft, 0
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.fv = phi i32 [ %.pre184, %bb.cc ], [ %i.fq, %bb.cb ]
  %i.fw = phi i1 [ %i.fu, %bb.cc ], [ true, %bb.cb ]
  %i.fx = icmp eq i32 %i.fv, 1
  %i.fy = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %i.fy, label %bb.ci, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fz = call ptr @__cxa_allocate_exception(i64 48) #15 ; 3 uses
  invoke void @_ZN27sexpr2upolynomial_exceptionC2EPKcPK5sexpr(ptr noundef nonnull align 8 dereferenceable(48) %i.fz, ptr noundef nonnull @.str.12, ptr noundef nonnull %1)
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  invoke void @__cxa_throw(ptr nonnull %i.fz, ptr nonnull @_ZTI27sexpr2upolynomial_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #16
          to label %bb.da unwind label %bb.cg

bb.cg:                                            ; preds = %bb.ci, %bb.cf
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ch:                                            ; preds = %bb.ce
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fz) #15
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cd
  invoke void @_ZN11upolynomial12core_manager3setEjPK8rationalR7svectorI3mpzjE(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef 1, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.cj unwind label %bb.cg

bb.cj:                                            ; preds = %bb.ci
  %i.gc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !37 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i166 unwind label %bb.ck

.noexc.i166:                                      ; preds = %bb.cj
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gc, ptr noundef nonnull align 8 dereferenceable(16) %i.fa)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.ck

bb.ck:                                            ; preds = %.noexc.i166, %bb.cj
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #18
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.cy

bb.cl:                                            ; preds = %bb.ch, %bb.cg
  %.pn113 = phi { ptr, i32 } [ %i.ga, %bb.cg ], [ %i.gb, %bb.ch ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.cz

bb.cm:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.gf = tail call ptr @_ZNK5sexpr10get_symbolEv(ptr noundef nonnull align 4 dereferenceable(16) %1)
  store ptr %i.gf, ptr %9, align 8
  %i.gg = call noundef zeroext i1 @_ZeqRK6symbolPKc(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br i1 %i.gg, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gh = call ptr @__cxa_allocate_exception(i64 48) #15 ; 3 uses
  invoke void @_ZN27sexpr2upolynomial_exceptionC2EPKcPK5sexpr(ptr noundef nonnull align 8 dereferenceable(48) %i.gh, ptr noundef nonnull @.str.14, ptr noundef nonnull %1)
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @__cxa_throw(ptr nonnull %i.gh, ptr nonnull @_ZTI27sexpr2upolynomial_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #16
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gh) #15
  br label %bb.cz

bb.cq:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 4
  %i.gl = and i8 %i.gk, -4
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.gm, align 8, !tbaa !47
  %i.gn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store i32 1, ptr %i.gn, align 16, !tbaa !46
  %i.go = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 4 uses
  %i.gp = load i8, ptr %i.go, align 4
  %i.gq = and i8 %i.gp, -4
  store i8 %i.gq, ptr %i.go, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr null, ptr %i.gr, align 8, !tbaa !47
  %i.gs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !37
  store i32 0, ptr %10, align 16, !tbaa !46
  store i8 %i.gl, ptr %i.gj, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %i.gn)
          to label %bb.cr unwind label %.thread

.thread:                                          ; preds = %bb.cq
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.cr:                                            ; preds = %bb.cq
  store i32 1, ptr %i.gn, align 16, !tbaa !46
  %i.gu = load i8, ptr %i.go, align 4
  %i.gv = and i8 %i.gu, -2
  store i8 %i.gv, ptr %i.go, align 4
  %i.gw = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %10, i64 36 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 4
  %i.gz = and i8 %i.gy, -4
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr null, ptr %i.ha, align 8, !tbaa !47
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  store i32 1, ptr %i.hb, align 16, !tbaa !46
  %i.hc = getelementptr inbounds nuw i8, ptr %10, i64 52 ; 4 uses
  %i.hd = load i8, ptr %i.hc, align 4
  %i.he = and i8 %i.hd, -4
  store i8 %i.he, ptr %i.hc, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr null, ptr %i.hf, align 8, !tbaa !47
  %i.hg = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !37
  store i32 1, ptr %i.gw, align 16, !tbaa !46
  store i8 %i.gz, ptr %i.gx, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.hg, ptr noundef nonnull align 8 dereferenceable(16) %i.hb)
          to label %bb.cs unwind label %.loopexit.loopexit181

bb.cs:                                            ; preds = %bb.cr
  store i32 1, ptr %i.hb, align 16, !tbaa !46
  %i.hh = load i8, ptr %i.hc, align 4
  %i.hi = and i8 %i.hh, -2
  store i8 %i.hi, ptr %i.hc, align 4
  invoke void @_ZN11upolynomial12core_manager3setEjPK8rationalR7svectorI3mpzjE(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef 2, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ct unwind label %.loopexit.loopexit

bb.ct:                                            ; preds = %bb.cs
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.hk = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !37 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hk, ptr noundef nonnull align 8 dereferenceable(32) %i.hj)
          to label %.noexc.i168 unwind label %bb.cu

.noexc.i168:                                      ; preds = %bb.ct
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 48
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %i.hl)
          to label %_ZN8rationalD2Ev.exit169 unwind label %bb.cu

bb.cu:                                            ; preds = %.noexc.i168.1, %_ZN8rationalD2Ev.exit169, %.noexc.i168, %bb.ct
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #18
  unreachable

_ZN8rationalD2Ev.exit169:                         ; preds = %.noexc.i168
  %i.ho = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !37 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ho, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc.i168.1 unwind label %bb.cu

.noexc.i168.1:                                    ; preds = %_ZN8rationalD2Ev.exit169
  %i.hp = getelementptr inbounds nuw i8, ptr %10, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ho, ptr noundef nonnull align 8 dereferenceable(16) %i.hp)
          to label %_ZN8rationalD2Ev.exit169.1 unwind label %bb.cu

_ZN8rationalD2Ev.exit169.1:                       ; preds = %.noexc.i168.1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.cy

.loopexit.loopexit181:                            ; preds = %bb.cr
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #15
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.cs
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %i.hs = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.hs) #15
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit181, %.loopexit.loopexit, %.thread
  %.pn = phi { ptr, i32 } [ %i.hr, %.loopexit.loopexit ], [ %i.gt, %.thread ], [ %i.hq, %.loopexit.loopexit181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.cz

bb.cv:                                            ; preds = %bb.e
  %i.ht = tail call ptr @__cxa_allocate_exception(i64 48) #15 ; 3 uses
  invoke void @_ZN27sexpr2upolynomial_exceptionC2EPKcPK5sexpr(ptr noundef nonnull align 8 dereferenceable(48) %i.ht, ptr noundef nonnull @.str.15, ptr noundef nonnull %1)
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  tail call void @__cxa_throw(ptr nonnull %i.ht, ptr nonnull @_ZTI27sexpr2upolynomial_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #16
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.hu = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ht) #15
  br label %bb.cz

bb.cy:                                            ; preds = %bb.bw, %_ZN8rationalD2Ev.exit, %_ZN8rationalD2Ev.exit169.1
  ret void

bb.cz:                                            ; preds = %bb.i, %bb.bx, %bb.m, %bb.cx, %.loopexit, %bb.cp, %bb.cl, %bb.d
  %.pn120 = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.hu, %bb.cx ], [ %.pn113, %bb.cl ], [ %i.gi, %bb.cp ], [ %.pn, %.loopexit ], [ %i.h, %bb.i ], [ %.pn115, %bb.bx ], [ %i.m, %bb.m ]
  resume { ptr, i32 } %.pn120

bb.da:                                            ; preds = %bb.cf
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17default_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !15
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

declare noundef i32 @_ZNK5sexpr16get_num_childrenEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #4

declare noundef ptr @_ZNK5sexpr9get_childEj(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) local_unnamed_addr #4

declare ptr @_ZNK5sexpr10get_symbolEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZeqRK6symbolPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 3 uses
  %i.b = icmp eq ptr %i.a, null                   ; 2 uses
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond3 = or i1 %i.c, %i.b
  br i1 %or.cond3, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = and i64 %i.d, 7
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %1) #20
  %i.h = icmp eq i32 %i.g, 0
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZNK6symbol3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 4 uses
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.f, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge: ; preds = %bb.e
  %.pre = load ptr, ptr %2, align 8, !tbaa !14
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = icmp eq i64 %i.j, 0
  %.pre18 = load ptr, ptr %2, align 8, !tbaa !14  ; 3 uses
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %bcmp.i = call i32 @bcmp(ptr %.pre18, ptr nonnull %1, i64 %i.j)
  %i.n = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge, %bb.g, %bb.f
  %i.o = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge ], [ %.pre18, %bb.g ], [ %.pre18, %bb.f ] ; 2 uses
  %i.p = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge ], [ %i.n, %bb.g ], [ true, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.s = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.s)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.t = load i64, ptr %i.q, align 8, !tbaa !15
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.u) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %.0 = phi i1 [ %i.h, %bb.d ], [ true, %bb.a ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ]
  ret i1 %.0
}

declare void @_ZN11upolynomial21scoped_numeral_vectorC1ERNS_7managerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(312)) unnamed_addr #4

declare void @_ZN11upolynomial12core_manager3addEjPK3mpzjS3_R7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272), i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN6vectorI3mpzLb0EjED2Ev.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i:             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count.i = zext i32 %i.d to i64
  br label %bb.b

._crit_edge.i:                                    ; preds = %.noexc
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !22  ; 3 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN6vectorI3mpzLb0EjED2Ev.exit, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3: ; preds = %._crit_edge.i
  %i.f = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  store i32 0, ptr %i.f, align 4, !tbaa !17
  br label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit

bb.b:                                             ; preds = %.noexc, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc ] ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !26, !nonnull !27, !align !28
  %i.h = load ptr, ptr %0, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !34, !nonnull !27, !align !28
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !0

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit: ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3
  %.pr6 = phi ptr [ %.pre.i, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3 ], [ %i.a, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i ]
  %i.k = getelementptr inbounds i8, ptr %.pr6, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.k)
          to label %_ZN6vectorI3mpzLb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #18
  unreachable

_ZN6vectorI3mpzLb0EjED2Ev.exit:                   ; preds = %bb.a, %._crit_edge.i, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit
  ret void

end_hunk_1
