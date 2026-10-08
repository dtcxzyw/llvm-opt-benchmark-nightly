Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmStringAlgorithms?download=true
inline.NumInlined: 318
inline.NumDeleted: 128
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_string_view" = type { i64, ptr }
%class.cmRange = type { %"class.__gnu_cxx::__normal_iterator.3", %"class.__gnu_cxx::__normal_iterator.3" }
%"class.__gnu_cxx::__normal_iterator.3" = type { ptr }

$_Z13cmJoinStringsISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEES6_RKT_St17basic_string_viewIcS4_ESD_ = comdat any

$_Z13cmJoinStringsI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_RKT_St17basic_string_viewIcS6_ESK_ = comdat any

@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%li\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%lli\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN10cmAlphaNumC1Ei = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN10cmAlphaNumC2Ei
@_ZN10cmAlphaNumC1Ej = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN10cmAlphaNumC2Ej
@_ZN10cmAlphaNumC1El = dso_local unnamed_addr alias void (ptr, i64), ptr @_ZN10cmAlphaNumC2El
@_ZN10cmAlphaNumC1Em = dso_local unnamed_addr alias void (ptr, i64), ptr @_ZN10cmAlphaNumC2Em
@_ZN10cmAlphaNumC1Ex = dso_local unnamed_addr alias void (ptr, i64), ptr @_ZN10cmAlphaNumC2Ex
@_ZN10cmAlphaNumC1Ey = dso_local unnamed_addr alias void (ptr, i64), ptr @_ZN10cmAlphaNumC2Ey
@_ZN10cmAlphaNumC1Ef = dso_local unnamed_addr alias void (ptr, float), ptr @_ZN10cmAlphaNumC2Ef
@_ZN10cmAlphaNumC1Ed = dso_local unnamed_addr alias void (ptr, double), ptr @_ZN10cmAlphaNumC2Ed

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z11cmStrCaseEqSt17basic_string_viewIcSt11char_traitsIcEES2_(i64 %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %0, %2
  br i1 %.not, label %bb.b, label %"_ZSt5equalIPKcS1_Z11cmStrCaseEqSt17basic_string_viewIcSt11char_traitsIcEES5_E3$_0EbT_S7_T0_T1_.exit"

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %.not9.i = icmp samesign eq i64 %0, 0
  br i1 %.not9.i, label %"_ZSt5equalIPKcS1_Z11cmStrCaseEqSt17basic_string_viewIcSt11char_traitsIcEES5_E3$_0EbT_S7_T0_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.011.i = phi ptr [ %i.h, %.lr.ph.i ], [ %3, %bb.b ] ; 2 uses
  %.0810.i = phi ptr [ %i.g, %.lr.ph.i ], [ %1, %bb.b ] ; 2 uses
  %i.b = load i8, ptr %.0810.i, align 1, !tbaa !11
  %i.c = load i8, ptr %.011.i, align 1, !tbaa !11
  %i.d = tail call zeroext i8 @cmsysString_tolower(i8 noundef signext %i.b)
  %i.e = tail call zeroext i8 @cmsysString_tolower(i8 noundef signext %i.c)
  %i.f = icmp eq i8 %i.d, %i.e                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0810.i, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.011.i, i64 1
  %.not.i = icmp ne ptr %i.g, %i.a
  %or.cond.not = select i1 %i.f, i1 %.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %"_ZSt5equalIPKcS1_Z11cmStrCaseEqSt17basic_string_viewIcSt11char_traitsIcEES5_E3$_0EbT_S7_T0_T1_.exit", !llvm.loop !28

"_ZSt5equalIPKcS1_Z11cmStrCaseEqSt17basic_string_viewIcSt11char_traitsIcEES5_E3$_0EbT_S7_T0_T1_.exit": ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.f, %.lr.ph.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z16cmTrimWhitespaceB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  %.not20 = icmp samesign eq i64 %1, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.021 = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]  ; 5 uses
  %i.c = load i8, ptr %.021, align 1, !tbaa !11
  %i.d = tail call i32 @cmsysString_isspace(i8 noundef signext %i.c)
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.021, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !19
  store i8 0, ptr %i.f, align 8, !tbaa !11
  br label %bb.g

.critedge:                                        ; preds = %.lr.ph, %.critedge
  %.pn = phi ptr [ %.09, %.critedge ], [ %i.b, %.lr.ph ] ; 2 uses
  %.09 = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 2 uses
  %i.h = load i8, ptr %.09, align 1, !tbaa !11
  %i.i = tail call i32 @cmsysString_isspace(i8 noundef signext %i.h)
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %bb.c, label %.critedge, !llvm.loop !30

bb.c:                                             ; preds = %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.l = ptrtoint ptr %.pn to i64
  %i.m = ptrtoint ptr %.021 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !20
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !21
  %i.q = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.q, ptr %i.j, align 8, !tbaa !11
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.r = phi ptr [ %i.p, %.noexc.i ], [ %i.j, %bb.c ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %.021, align 1, !tbaa !11
  store i8 %i.s, ptr %i.r, align 1, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %.021, i64 %i.n, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.t = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  store i64 %i.t, ptr %i.k, align 8, !tbaa !19
  %i.u = load ptr, ptr %0, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @cmsysString_isspace(i8 noundef signext) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local { i64, ptr } @_Z17cmStripWhitespaceSt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %.not23 = icmp eq i64 %0, 0
  br i1 %.not23, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01220 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.01220
  %i.b = load i8, ptr %i.a, align 1, !tbaa !11
  %i.c = tail call i32 @cmsysString_isspace(i8 noundef signext %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nuw i64 %.01220, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.d, %0
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !31

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.012.lcssa = phi i64 [ 0, %bb.a ], [ %.01220, %.lr.ph ] ; 6 uses
  %i.e = icmp eq i64 %.012.lcssa, %0
  br i1 %i.e, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %.critedge, %.preheader
  %.0.in = phi i64 [ %.0, %.preheader ], [ %0, %.critedge ] ; 2 uses
  %.0 = add i64 %.0.in, -1                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = tail call i32 @cmsysString_isspace(i8 noundef signext %i.g)
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %2, label %.preheader, !llvm.loop !32

2:                                                ; preds = %.preheader
  %3 = icmp ugt i64 %.012.lcssa, %0
  br i1 %3, label %4, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

4:                                                ; preds = %2
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i64 noundef %.012.lcssa, i64 noundef %0) #14
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %2
  %i.i = sub i64 %.0.in, %.012.lcssa
  %i.j = sub nuw i64 %0, %.012.lcssa
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.012.lcssa
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %.critedge, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %.sroa.319.0 = phi ptr [ %i.k, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ null, %.critedge ], [ null, %bb.b ]
  %.sroa.018.0 = phi i64 [ %.sroa.speculated.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ 0, %.critedge ], [ 0, %bb.b ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.018.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.319.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z14cmRemoveQuotesB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(address_is_null) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = icmp ugt i64 %1, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %2, align 1, !tbaa !11
  %i.d = icmp eq i8 %i.c, 34
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = icmp eq i8 %i.g, 34
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.j = add i64 %1, -2
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !16
  %i.l = icmp eq ptr %2, null
  %i.m = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i, label %.noexc, label %.thread14

.thread14:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i

.noexc:                                           ; preds = %bb.e
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.9) #14
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.02.0.ph = phi i64 [ %1, %bb.b ], [ %1, %bb.c ], [ %i.j, %bb.d ] ; 4 uses
  %.sroa.8.0.ph = phi ptr [ %2, %bb.b ], [ %2, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %.sroa.02.0.ph, ptr %i.a, align 8, !tbaa !20
  %i.o = icmp ugt i64 %.sroa.02.0.ph, 15
  br i1 %i.o, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !21
  %i.q = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.q, ptr %i.n, align 8, !tbaa !11
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.thread14, %.noexc.i.i.i, %bb.f
  %.sroa.02.01218 = phi i64 [ %.sroa.02.0.ph, %.noexc.i.i.i ], [ %.sroa.02.0.ph, %bb.f ], [ %1, %.thread14 ] ; 2 uses
  %.sroa.8.01317 = phi ptr [ %.sroa.8.0.ph, %.noexc.i.i.i ], [ %.sroa.8.0.ph, %bb.f ], [ %2, %.thread14 ] ; 2 uses
  %i.r = phi ptr [ %i.p, %.noexc.i.i.i ], [ %i.n, %bb.f ], [ %i.k, %.thread14 ] ; 2 uses
  switch i64 %.sroa.02.01218, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.s = load i8, ptr %.sroa.8.01317, align 1, !tbaa !11
  store i8 %i.s, ptr %i.r, align 1, !tbaa !11
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %.sroa.8.01317, i64 %.sroa.02.01218, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i
  %i.t = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !19
  %i.v = load ptr, ptr %0, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z14cmEscapeQuotesB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(address) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !19
  store i8 0, ptr %i.a, align 8, !tbaa !11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not21 = icmp samesign eq i64 %1, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.lr.ph:                                           ; preds = %bb.b, %bb.i
  %.022 = phi ptr [ %i.af, %bb.i ], [ %2, %bb.b ] ; 2 uses
  %i.e = load i8, ptr %.022, align 1, !tbaa !11   ; 2 uses
  %i.f = icmp eq i8 %i.e, 34
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.g = load i64, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d
  %i.k = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !11
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.o = phi ptr [ %.pre.i.i, %.noexc ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g
  store i8 92, ptr %i.p, align 1, !tbaa !11
  store i64 %i.h, ptr %i.b, align 8, !tbaa !19
  %i.q = load ptr, ptr %0, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !11
  br label %bb.g

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %.lr.ph
  %i.t = load i64, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.a
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16: ; preds = %bb.g
  %i.x = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.g
  %i.y = load i64, ptr %i.a, align 8, !tbaa !11
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16
  %i.z = phi i64 [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16 ]
  %i.aa = icmp ugt i64 %i.u, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.t, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc17 unwind label %bb.f

.noexc17:                                         ; preds = %bb.h
  %.pre.i.i15 = load ptr, ptr %0, align 8, !tbaa !21
  br label %bb.i
end_hunk_0
begin_hunk_1_@_Z13cmJoinStringsISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEES6_RKT_St17basic_string_viewIcS4_ESD_:bb.a
.loopexit.split-lp:                               ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit39, %.loopexit.split-lp, %bb.i
  %.pn = phi { ptr, i32 } [ %i.au, %bb.i ], [ %lpad.loopexit, %.loopexit39 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.av = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.f
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ax = load i64, ptr %i.f, align 8, !tbaa !11
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %bb.e
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z6cmJoin7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEESt17basic_string_viewIcS5_ESG_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, ptr %2, i64 %3, ptr %4, ptr nofree noundef readonly byval(%"class.std::basic_string_view") align 8 captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %class.cmRange, align 8             ; 3 uses
  store ptr %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.a, align 8
  %.sroa.0.0.copyload = load i64, ptr %5, align 8, !tbaa !20
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !22
  call void @_Z13cmJoinStringsI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_RKT_St17basic_string_viewIcS6_ESK_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %3, ptr %4, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z13cmJoinStringsI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_RKT_St17basic_string_viewIcS6_ESK_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %2, ptr %3, i64 %4, ptr %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.g, align 8, !tbaa !19
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %4, ptr %i.a, align 8, !tbaa !20
  %i.h = icmp ugt i64 %4, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !21
  %i.j = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.j, ptr %i.f, align 8, !tbaa !11
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %4, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %5, align 1, !tbaa !11
  store i8 %i.l, ptr %i.k, align 1, !tbaa !11
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %5, i64 %4, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  store i64 %i.m, ptr %i.g, align 8, !tbaa !19
  %i.n = load ptr, ptr %0, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  store i8 0, ptr %i.f, align 8, !tbaa !11
  %i.p = ptrtoint ptr %i.d to i64
  %i.q = ptrtoint ptr %i.c to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 5
  %i.t = add nsw i64 %i.s, -1
  %i.u = mul i64 %i.t, %2
  %i.v = add i64 %i.u, %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.07.i = phi i64 [ %i.y, %.lr.ph.i ], [ %i.v, %bb.f ]
  %.sroa.02.06.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.c, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19
  %i.y = add i64 %i.x, %.07.i                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.d
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEmZ13cmJoinStringsI7cmRangeISD_EES7_RKT_St17basic_string_viewIcS5_ESL_EUlmRS8_E_ET0_SH_SH_SO_T1_.exit, label %.lr.ph.i, !llvm.loop !42

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEmZ13cmJoinStringsI7cmRangeISD_EES7_RKT_St17basic_string_viewIcS5_ESL_EUlmRS8_E_ET0_SH_SH_SO_T1_.exit: ; preds = %.lr.ph.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.y)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEmZ13cmJoinStringsI7cmRangeISD_EES7_RKT_St17basic_string_viewIcS5_ESL_EUlmRS8_E_ET0_SH_SH_SO_T1_.exit
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !19
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa, i64 noundef 0, ptr noundef %5, i64 noundef %4)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i19 = load ptr, ptr %1, align 8, !tbaa !27 ; 3 uses
  %.sroa.0.0.copyload.i20 = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i19, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !19
  %i.af = sub i64 4611686018427387903, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.ad
  br i1 %i.ag, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit24, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #14
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.h
  %i.ah = load ptr, ptr %.sroa.0.0.copyload.i19, align 8, !tbaa !21
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ah, i64 noundef %i.ad)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i25
  %.sroa.0.0.copyload.i19.pn = phi ptr [ %.sroa.029.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i25 ], [ %.sroa.0.0.copyload.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ] ; 2 uses
  %.sroa.029.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i19.pn, i64 32 ; 3 uses
  %.not = icmp eq ptr %.sroa.029.0, %.sroa.0.0.copyload.i20
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !19
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aj, i64 noundef 0, ptr noundef %3, i64 noundef %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit24 unwind label %.loopexit44 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit24: ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i19.pn, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !19 ; 2 uses
  %i.an = load i64, ptr %i.g, align 8, !tbaa !19
  %i.ao = sub i64 4611686018427387903, %i.an
  %i.ap = icmp ult i64 %i.ao, %i.am
  br i1 %i.ap, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit24
  %i.aq = load ptr, ptr %.sroa.029.0, align 8, !tbaa !21
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.aq, i64 noundef %i.am)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit44, !llvm.loop !43 ; 0 uses

bb.j:                                             ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEmZ13cmJoinStringsI7cmRangeISD_EES7_RKT_St17basic_string_viewIcS5_ESL_EUlmRS8_E_ET0_SH_SH_SO_T1_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit44:                                      ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i25
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit44, %.loopexit.split-lp, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.j ], [ %lpad.loopexit, %.loopexit44 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.at = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.f
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.av = load i64, ptr %i.f, align 8, !tbaa !11
  %i.aw = add i64 %i.av, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %bb.e
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare zeroext i8 @cmsysString_tolower(i8 noundef signext) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !7, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!17, !17, i64 0}
!21 = !{!18, !14, i64 0}
!22 = !{!14, !14, i64 0}
!23 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!24 = !{!8, !8, i64 0}
!25 = !{!"long long", !7, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!23, !23, i64 0}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !17, i64 0, !14, i64 8}
!34 = !{!"_ZTSSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS2_SaIcEEEE", !33, i64 0, !23, i64 16}
!35 = !{!34, !23, i64 16}
!36 = !{!33, !17, i64 0}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!39 = !{!33, !14, i64 8}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
end_hunk_1
