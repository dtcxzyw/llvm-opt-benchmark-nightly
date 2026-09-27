Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/infer_bounds?download=true
inline.NumInlined: 276
inline.NumDeleted: 120
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.cvc5::internal::NodeTemplate" = type { ptr }
%"class.cvc5::internal::theory::arith::linear::inferbounds::InferBoundAlgorithm" = type { i32, %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [3 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<int>::_Storage", i8 }>
%"union.std::_Optional_payload_base<int>::_Storage" = type { i32 }
%"class.cvc5::internal::Rational" = type { %class.__gmp_expr }
%class.__gmp_expr = type { [1 x %struct.__mpq_struct] }
%struct.__mpq_struct = type { %struct.__mpz_struct, %struct.__mpz_struct }
%struct.__mpz_struct = type { i32, i32, ptr }
%class.__gmp_expr.0 = type { [1 x %struct.__mpz_struct] }
%"class.cvc5::internal::Integer" = type { %class.__gmp_expr.0 }
%"class.cvc5::internal::NodeBuilder" = type <{ %"class.cvc5::internal::expr::NodeValue", [10 x ptr], ptr, ptr, i32, [4 x i8] }>
%"class.cvc5::internal::expr::NodeValue" = type { i64, i64, ptr, [0 x ptr] }
%"class.cvc5::internal::NodeTemplate.73" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.cvc5::internal::FatalStream" = type { i8 }

$_ZN4cvc58internal8RationalC2Ei = comdat any

$_ZN4cvc58internal13DeltaRationalC2ERKNS0_8RationalE = comdat any

$_ZN4cvc58internal12NodeTemplateILb1EED2Ev = comdat any

$_ZN4cvc58internal13DeltaRationalD2Ev = comdat any

$_ZNK4cvc58internal13DeltaRational5floorEv = comdat any

$_ZN4cvc58internal6theory5arith6linear17InferBoundsResultD2Ev = comdat any

$_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE = comdat any

$__clang_call_terminate = comdat any

$_ZN4cvc58internal8RationalC2Eii = comdat any

$_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null = comdat any

$_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null = comdat any

@.str = private unnamed_addr constant [20 x i8] c"{InferBoundsResult \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"on \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"find upper bound, \00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"find lower bound, \00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"found a bound: \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"(int), \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"(rat), \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"(extended), \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"as term \00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"explanation \00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"did not find a bound, \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"(opt), \00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"(inconsistent), \00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"(budget exhausted), \00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"(reached threshold), \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"AlgNone\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"AlgLookup\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"AlgRowSum\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"AlgSimplex\00", align 1
@__PRETTY_FUNCTION__._ZN4cvc58internal6theory5arith6linear11inferboundslsERSoNS4_10AlgorithmsE = private unnamed_addr constant [111 x i8] c"std::ostream &cvc5::internal::theory::arith::linear::inferbounds::operator<<(std::ostream &, const Algorithms)\00", align 1
@.str.21 = private unnamed_addr constant [67 x i8] c"/opt-bench/work/cvc5/cvc5/src/theory/arith/linear/infer_bounds.cpp\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Unhandled case encountered \00", align 1
@_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE = linkonce_odr hidden global %"class.cvc5::internal::NodeTemplate" zeroinitializer, comdat, align 8
@_ZGVN4cvc58internal12NodeTemplateILb1EE6s_nullE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE), align 8
@__dso_handle = external hidden global i8
@.str.23 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null = linkonce_odr local_unnamed_addr global ptr null, comdat, align 8
@_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null = linkonce_odr global i64 0, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE], section "llvm.metadata"

@_ZN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmC2Ev
@_ZN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmC1ENS4_10AlgorithmsE = hidden unnamed_addr alias void (ptr, i32), ptr @_ZN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmC2ENS4_10AlgorithmsE
@_ZN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmC1ERKSt8optionalIiE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmC2ERKSt8optionalIiE
@_ZN4cvc58internal6theory5arith6linear30ArithEntailmentCheckParametersC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4cvc58internal6theory5arith6linear30ArithEntailmentCheckParametersC2Ev
@_ZN4cvc58internal6theory5arith6linear30ArithEntailmentCheckParametersD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4cvc58internal6theory5arith6linear30ArithEntailmentCheckParametersD2Ev
@_ZN4cvc58internal6theory5arith6linear17InferBoundsResultC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4cvc58internal6theory5arith6linear17InferBoundsResultC2Ev
@_ZN4cvc58internal6theory5arith6linear17InferBoundsResultC1ENS0_12NodeTemplateILb1EEEb = hidden unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN4cvc58internal6theory5arith6linear17InferBoundsResultC2ENS0_12NodeTemplateILb1EEEb
@_ZN4cvc58internal6theory5arith6linear31ArithEntailmentCheckSideEffectsC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4cvc58internal6theory5arith6linear31ArithEntailmentCheckSideEffectsC2Ev
@_ZN4cvc58internal6theory5arith6linear31ArithEntailmentCheckSideEffectsD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4cvc58internal6theory5arith6linear31ArithEntailmentCheckSideEffectsD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmC2Ev(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 4), (8, 9)) %0) unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %0, align 4, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmC2ENS4_10AlgorithmsE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 4), (8, 9)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmC2ERKSt8optionalIiE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #1 align 2 {
bb.a:
  store i32 3, ptr %0, align 4, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i64, ptr %1, align 4
  store i64 %i.b, ptr %i.a, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithm12getAlgorithmEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !16
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithm16getSimplexRoundsEv(ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(12) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i64, i8 } @_ZN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithm8mkLookupEv() local_unnamed_addr #4 align 2 {
bb.a:
  ret { i64, i8 } { i64 1, i8 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i64, i8 } @_ZN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithm8mkRowSumEv() local_unnamed_addr #4 align 2 {
bb.a:
  ret { i64, i8 } { i64 2, i8 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i64, i8 } @_ZN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithm9mkSimplexERKSt8optionalIiE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.cvc5::internal::theory::arith::linear::inferbounds::InferBoundAlgorithm", align 8 ; 3 uses
  store i32 3, ptr %1, align 8, !tbaa !16
  %i.a = load i64, ptr %0, align 4                ; 2 uses
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i64 %i.a, ptr %.4..4..4..sroa_idx, align 4
  %.0..0..0..sroa.0.0.copyload = load i64, ptr %1, align 8
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc i64 %i.b to i8
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.0..0..0..sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %i.c, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear30ArithEntailmentCheckParametersC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear30ArithEntailmentCheckParametersD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #25
  br label %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith6linear30ArithEntailmentCheckParameters25addLookupRowSumAlgorithmsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 4
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %.sroa.526.0..sroa_idx, align 4
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !23
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !22
  br label %_ZN4cvc58internal6theory5arith6linear30ArithEntailmentCheckParameters12addAlgorithmERKNS3_11inferbounds19InferBoundAlgorithmE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
  unreachable

_ZNKSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.l = sdiv exact i64 %i.j, 12                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 768614336404564650)
  %i.p = select i1 %i.n, i64 768614336404564650, i64 %i.o ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = mul nuw nsw i64 %i.p, 12
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j ; 2 uses
  store i64 1, ptr %i.s, align 4
  %.sroa.526.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 0, ptr %.sroa.526.0..sroa_idx27, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !alias.scope !53
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #25
  br label %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !21
  store ptr %i.v, ptr %i.a, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.z, ptr %i.c, align 8, !tbaa !22
  br label %_ZN4cvc58internal6theory5arith6linear30ArithEntailmentCheckParameters12addAlgorithmERKNS3_11inferbounds19InferBoundAlgorithmE.exit

_ZN4cvc58internal6theory5arith6linear30ArithEntailmentCheckParameters12addAlgorithmERKNS3_11inferbounds19InferBoundAlgorithmE.exit: ; preds = %bb.b, %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.aa = phi ptr [ %.pre, %bb.b ], [ %i.z, %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ] ; 4 uses
  %i.ab = phi ptr [ %i.f, %bb.b ], [ %i.v, %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ] ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear30ArithEntailmentCheckParameters12addAlgorithmERKNS3_11inferbounds19InferBoundAlgorithmE.exit
  store i64 2, ptr %i.ab, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 4
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !23
  br label %_ZN4cvc58internal6theory5arith6linear30ArithEntailmentCheckParameters12addAlgorithmERKNS3_11inferbounds19InferBoundAlgorithmE.exit19

bb.g:                                             ; preds = %_ZN4cvc58internal6theory5arith6linear30ArithEntailmentCheckParameters12addAlgorithmERKNS3_11inferbounds19InferBoundAlgorithmE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !21    ; 5 uses
  %i.af = ptrtoint ptr %i.aa to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i7

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
  unreachable

_ZNKSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i7: ; preds = %bb.g
  %i.aj = sdiv exact i64 %i.ah, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i8 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i8, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 768614336404564650)
  %i.an = select i1 %i.al, i64 768614336404564650, i64 %i.am ; 3 uses
  %.not.i.i.i.i9 = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i9)
  %i.ao = mul nuw nsw i64 %i.an, 12
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #27 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store i64 2, ptr %i.aq, align 4
  %.sroa.5.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i8 0, ptr %.sroa.5.0..sroa_idx21, align 4
  %.not10.i.i.i.i.i.i10 = icmp eq ptr %i.ae, %i.aa
  br i1 %.not10.i.i.i.i.i.i10, label %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i15, label %.lr.ph.i.i.i.i.i.i11

.lr.ph.i.i.i.i.i.i11:                             ; preds = %_ZNKSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i7, %.lr.ph.i.i.i.i.i.i11
  %.012.i.i.i.i.i.i12 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i11 ], [ %i.ap, %_ZNKSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i7 ] ; 2 uses
  %.0911.i.i.i.i.i.i13 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i11 ], [ %i.ae, %_ZNKSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i7 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i12, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i13, i64 12, i1 false), !alias.scope !54
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i13, i64 12 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i12, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i14 = icmp eq ptr %i.ar, %i.aa
  br i1 %.not.i.i.i.i.i.i14, label %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i15, label %.lr.ph.i.i.i.i.i.i11, !llvm.loop !0

_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i15: ; preds = %.lr.ph.i.i.i.i.i.i11, %_ZNKSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i7
  %.0.lcssa.i.i.i.i.i.i16 = phi ptr [ %i.ap, %_ZNKSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i7 ], [ %i.as, %.lr.ph.i.i.i.i.i.i11 ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i16, i64 12
  %.not.i23.i.i.i17 = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i.i.i17, label %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i18, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i15
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aw) #25
  br label %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i18

_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i18: ; preds = %bb.i, %_ZNSt6vectorIN4cvc58internal6theory5arith6linear11inferbounds19InferBoundAlgorithmESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i15
  store ptr %i.ap, ptr %0, align 8, !tbaa !21
  store ptr %i.at, ptr %i.a, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %i.an
end_hunk_0
