Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/diag?download=true
inline.NumInlined: 25
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.doctest::detail::Subcase" = type { %"struct.doctest::SubcaseSignature", i8, [7 x i8] }
%"struct.doctest::SubcaseSignature" = type <{ %"class.doctest::String", ptr, i32, [4 x i8] }>
%"class.doctest::String" = type { %union.anon }
%union.anon = type { %"struct.doctest::String::view", [8 x i8] }
%"struct.doctest::String::view" = type { ptr, i32, i32 }
%"struct.doctest::detail::Result" = type { i8, %"class.doctest::String" }
%"struct.doctest::detail::Expression_lhs" = type <{ i64, i32, [4 x i8] }>
%"struct.doctest::detail::ExpressionDecomposer" = type { i32 }
%"struct.doctest::detail::ResultBuilder" = type { %"struct.doctest::AssertData" }
%"struct.doctest::AssertData" = type { ptr, i32, ptr, i32, ptr, i8, i8, %"class.doctest::String", %"class.doctest::String", i8, ptr, %"class.doctest::AssertData::StringContains" }
%"class.doctest::AssertData::StringContains" = type <{ %"class.doctest::Contains", i8, [7 x i8] }>
%"class.doctest::Contains" = type { %"class.doctest::String" }
%"struct.doctest::detail::TestCase" = type { %"struct.doctest::TestCaseData", ptr, %"class.doctest::String", i32, %"class.doctest::String" }
%"struct.doctest::TestCaseData" = type { %"class.doctest::String", i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, double }
%"struct.doctest::detail::TestSuite" = type { ptr, ptr, i8, i8, i8, i8, i8, i32, double }

$_ZN7doctest6detail8TestCaseD2Ev = comdat any

$_ZN7doctest6detail14Expression_lhsImEeqImEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_ = comdat any

$_ZN7doctest6detail14Expression_lhsImEgtImEEDTcmcvvgtclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_ = comdat any

$__clang_call_terminate = comdat any

$_ZN7doctest10AssertDataD2Ev = comdat any

$_ZN7doctest6detail19stringifyBinaryExprImmEENS_6StringERKT_PKcRKT0_ = comdat any

@_ZL18DOCTEST_ANON_VAR_0 = internal global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZL18DOCTEST_ANON_VAR_3 = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"/opt-bench/work/nlohmann_json/json/tests/abi/diag/diag.cpp\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"ABI compatible diagnostics\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"basic_json size\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"json_sizeof_diag_on() == json_sizeof_diag_on_explicit()\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"json_sizeof_diag_off() == json_sizeof_diag_off_explicit()\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"json_sizeof_diag_on() > json_sizeof_diag_off()\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"basic_json at\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"json_at_diag_on()\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"[json.exception.out_of_range.403] (/foo) key 'bar' not found\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"json_at_diag_off()\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"[json.exception.out_of_range.403] key 'bar' not found\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" == \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" >  \00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_diag.cpp, ptr null }]

declare noundef i32 @_ZN7doctest6detail12setTestSuiteERKNS0_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN7doctest6detail9TestSuitemlEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @_ZL19DOCTEST_ANON_FUNC_2v() #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.doctest::detail::Subcase", align 8 ; 7 uses
  %1 = alloca %"class.doctest::String", align 8   ; 7 uses
  %2 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %3 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 6 uses
  %4 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %6 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 6 uses
  %7 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %9 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 6 uses
  %10 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"struct.doctest::detail::Subcase", align 8 ; 7 uses
  %12 = alloca %"class.doctest::String", align 8  ; 7 uses
  %13 = alloca %"struct.doctest::detail::ResultBuilder", align 8 ; 11 uses
  %14 = alloca %"class.doctest::String", align 8  ; 7 uses
  %15 = alloca %"struct.doctest::detail::ResultBuilder", align 8 ; 11 uses
  %16 = alloca %"class.doctest::String", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.4)
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.2, i32 noundef 15)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.d = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.d, label %bb.ak

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 10)
          to label %bb.e unwind label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.e = invoke noundef i64 @_Z19json_sizeof_diag_onv()
          to label %bb.f unwind label %bb.v

bb.f:                                             ; preds = %bb.e
  %i.f = load i32, ptr %4, align 4, !tbaa !24
  store i64 %i.e, ptr %3, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.f, ptr %.sroa.28.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.g = invoke noundef i64 @_Z28json_sizeof_diag_on_explicitv()
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %bb.f
  store i64 %i.g, ptr %i.a, align 8, !tbaa !11
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqImEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.h = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef 18, ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.x       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 10)
          to label %bb.j unwind label %bb.aa

bb.j:                                             ; preds = %bb.i
  %i.j = invoke noundef i64 @_Z20json_sizeof_diag_offv()
          to label %bb.k unwind label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.k = load i32, ptr %7, align 4, !tbaa !24
  store i64 %i.j, ptr %6, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.k, ptr %.sroa.24.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.l = invoke noundef i64 @_Z29json_sizeof_diag_off_explicitv()
          to label %bb.l unwind label %bb.ab

bb.l:                                             ; preds = %bb.k
  store i64 %i.l, ptr %i.b, align 8, !tbaa !11
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqImEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.m unwind label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.m = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef 19, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.n unwind label %bb.ac      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef 10)
          to label %bb.o unwind label %bb.af

bb.o:                                             ; preds = %bb.n
  %i.o = invoke noundef i64 @_Z19json_sizeof_diag_onv()
          to label %bb.p unwind label %bb.af

bb.p:                                             ; preds = %bb.o
  %i.p = load i32, ptr %10, align 4, !tbaa !24
  store i64 %i.o, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.p, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.q = invoke noundef i64 @_Z20json_sizeof_diag_offv()
          to label %bb.q unwind label %bb.ag

bb.q:                                             ; preds = %bb.p
  store i64 %i.q, ptr %i.c, align 8, !tbaa !11
  invoke void @_ZN7doctest6detail14Expression_lhsImEgtImEEDTcmcvvgtclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %8, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.r unwind label %bb.ag

bb.r:                                             ; preds = %bb.q
  %i.r = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef 20, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.s unwind label %bb.ah      ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.ak

bb.t:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.ce

bb.u:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.v:                                             ; preds = %bb.d, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %bb.g, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.x, %bb.x ], [ %i.w, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.v ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.as

bb.aa:                                            ; preds = %bb.i, %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %bb.l, %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ac) #11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn36 = phi { ptr, i32 } [ %i.ab, %bb.ac ], [ %i.aa, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %bb.ad
  %.pn36.pn.pn = phi { ptr, i32 } [ %i.z, %bb.aa ], [ %.pn36, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.as

bb.af:                                            ; preds = %bb.n, %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ag:                                            ; preds = %bb.q, %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.r
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ag) #11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn40 = phi { ptr, i32 } [ %i.af, %bb.ah ], [ %i.ae, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai
  %.pn40.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.af ], [ %.pn40, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.as

bb.ak:                                            ; preds = %bb.s, %bb.c
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull @.str.8)
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull @.str.2, i32 noundef 23)
          to label %bb.al unwind label %bb.at

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  %i.ah = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %11)
          to label %bb.am unwind label %bb.au

bb.am:                                            ; preds = %bb.al
  br i1 %i.ah, label %bb.an, label %bb.cc

bb.an:                                            ; preds = %bb.am
  %i.ai = invoke noundef ptr @_ZN7doctest17getContextOptionsEv()
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 114
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !25, !range !18, !noundef !19
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.bj, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull @.str.10)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN7doctest6detail13ResultBuilderC1ENS_10assertType4EnumEPKciS5_S5_RKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(144) %13, i32 noundef 66, ptr noundef nonnull @.str.2, i32 noundef 26, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  invoke void @_Z15json_at_diag_onv()
          to label %bb.ba unwind label %bb.ay

bb.as:                                            ; preds = %bb.aj, %bb.ae, %bb.z, %bb.u
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %bb.aj ], [ %.pn36.pn.pn, %bb.ae ], [ %.pn.pn.pn, %bb.z ], [ %i.u, %bb.u ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  br label %bb.ce

bb.at:                                            ; preds = %bb.ak
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %bb.ce

bb.au:                                            ; preds = %bb.bj, %bb.an, %bb.al
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.av:                                            ; preds = %bb.ap
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.aq
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #11
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn46 = phi { ptr, i32 } [ %i.ap, %bb.aw ], [ %i.ao, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.bi

bb.ay:                                            ; preds = %bb.ar
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = call ptr @__cxa_begin_catch(ptr %i.ar) #11 ; 0 uses
  invoke void @_ZN7doctest6detail13ResultBuilder18translateExceptionEv(ptr noundef nonnull align 8 dereferenceable(144) %13)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  invoke void @__cxa_end_catch()
          to label %bb.ba unwind label %bb.be

bb.ba:                                            ; preds = %bb.az, %bb.ar
  %i.at = invoke noundef zeroext i1 @_ZN7doctest6detail13ResultBuilder3logEv(ptr noundef nonnull align 8 dereferenceable(144) %13)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.at, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void asm sideeffect "int $$3\0A", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !26
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ay
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bh unwind label %bb.cf

bb.be:                                            ; preds = %bb.bf, %bb.ba, %bb.az
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bc, %bb.bb
  invoke void @_ZNK7doctest6detail13ResultBuilder5reactEv(ptr noundef nonnull align 8 dereferenceable(144) %13)
          to label %bb.bg unwind label %bb.be

bb.bg:                                            ; preds = %bb.bf
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 112
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %i.aw) #11
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ax) #11
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 48
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ay) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bd, %bb.be
  %.pn48 = phi { ptr, i32 } [ %i.av, %bb.be ], [ %i.au, %bb.bd ]
  call void @_ZN7doctest10AssertDataD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %13) #11
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ax
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %bb.bh ], [ %.pn46, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %bb.cd

bb.bj:                                            ; preds = %bb.bg, %bb.ao
  %i.az = invoke noundef ptr @_ZN7doctest17getContextOptionsEv()
          to label %bb.bk unwind label %bb.au

bb.bk:                                            ; preds = %bb.bj
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 114
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !25, !range !18, !noundef !19
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.cc, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull @.str.12)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN7doctest6detail13ResultBuilderC1ENS_10assertType4EnumEPKciS5_S5_RKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(144) %15, i32 noundef 66, ptr noundef nonnull @.str.2, i32 noundef 27, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  invoke void @_Z16json_at_diag_offv()
          to label %bb.bt unwind label %bb.br

bb.bo:                                            ; preds = %bb.bl
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bm
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #11
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn51 = phi { ptr, i32 } [ %i.be, %bb.bp ], [ %i.bd, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.cb

bb.br:                                            ; preds = %bb.bn
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #11 ; 0 uses
  invoke void @_ZN7doctest6detail13ResultBuilder18translateExceptionEv(ptr noundef nonnull align 8 dereferenceable(144) %15)
          to label %bb.bs unwind label %bb.bw

bb.bs:                                            ; preds = %bb.br
  invoke void @__cxa_end_catch()
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %bb.bs, %bb.bn
  %i.bi = invoke noundef zeroext i1 @_ZN7doctest6detail13ResultBuilder3logEv(ptr noundef nonnull align 8 dereferenceable(144) %15)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.bi, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  call void asm sideeffect "int $$3\0A", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !27
  br label %bb.by

bb.bw:                                            ; preds = %bb.br
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ca unwind label %bb.cf

bb.bx:                                            ; preds = %bb.by, %bb.bt, %bb.bs
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.by:                                            ; preds = %bb.bv, %bb.bu
  invoke void @_ZNK7doctest6detail13ResultBuilder5reactEv(ptr noundef nonnull align 8 dereferenceable(144) %15)
          to label %bb.bz unwind label %bb.bx

bb.bz:                                            ; preds = %bb.by
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 112
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %i.bl) #11
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 72
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bm) #11
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 48
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bn) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bw, %bb.bx
  %.pn53 = phi { ptr, i32 } [ %i.bk, %bb.bx ], [ %i.bj, %bb.bw ]
  call void @_ZN7doctest10AssertDataD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %15) #11
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bq
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %bb.ca ], [ %.pn51, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bz, %bb.bk, %bb.am
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  ret void

bb.cd:                                            ; preds = %bb.cb, %bb.bi, %bb.au
  %.pn53.pn.pn = phi { ptr, i32 } [ %.pn53.pn, %bb.cb ], [ %i.an, %bb.au ], [ %.pn48.pn, %bb.bi ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.ce
end_hunk_0
