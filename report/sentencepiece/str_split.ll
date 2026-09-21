Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/str_split?download=true
inline.NumInlined: 109
inline.NumDeleted: 57
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [49 x i8] c"third_party/abseil-cpp/absl/strings/str_split.cc\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Check %s failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"length > 0\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN4absl12lts_202605268ByStringC1ESt17basic_string_viewIcSt11char_traitsIcEE = dso_local unnamed_addr alias void (ptr, i64, ptr), ptr @_ZN4absl12lts_202605268ByStringC2ESt17basic_string_viewIcSt11char_traitsIcEE
@_ZN4absl12lts_202605269ByAnyCharC1ESt17basic_string_viewIcSt11char_traitsIcEE = dso_local unnamed_addr alias void (ptr, i64, ptr), ptr @_ZN4absl12lts_202605269ByAnyCharC2ESt17basic_string_viewIcSt11char_traitsIcEE
@_ZN4absl12lts_202605268ByLengthC1El = dso_local unnamed_addr alias void (ptr, i64), ptr @_ZN4absl12lts_202605268ByLengthC2El

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_202605268ByStringC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr nofree readonly captures(address_is_null) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  %i.c = icmp eq ptr %2, null
  %i.d = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.d, %i.c
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #9
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %1, ptr %i.a, align 8, !tbaa !14
  %i.e = icmp ugt i64 %1, 15
  br i1 %i.e, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !16
  %i.g = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.g, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %1, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %2, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local { i64, ptr } @_ZNK4absl12lts_202605268ByString4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 7 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %3, %1
  br i1 %i.d, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !16
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = sub nuw i64 %1, %3
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.i = sext i8 %i.f to i32
  %i.j = tail call ptr @memchr(ptr noundef %i.h, i32 noundef %i.i, i64 noundef %i.g) #10 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %2 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.c

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.b, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %i.p = icmp ugt i64 %i.m, %1
  br i1 %i.p, label %bb.d, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i64 noundef %i.m, i64 noundef %1) #9
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.c
  %i.q = icmp ne i64 %1, %i.m
  %.sroa.speculated.i = zext i1 %i.q to i64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit

bb.e:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.t = icmp eq i64 %i.b, 0
  br i1 %i.t, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not.i10 = icmp eq i64 %1, 0
  br i1 %.not.i10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit

bb.h:                                             ; preds = %bb.f
  %.not27.i.i.i.not.i = icmp eq i64 %3, 0
  br i1 %.not27.i.i.i.not.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.thread24.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit

bb.i:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 7 uses
  %.not.i.i.i.i = icmp ult i64 %3, %1
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit

bb.j:                                             ; preds = %bb.i
  %i.x = sub nuw i64 %1, %3                       ; 2 uses
  %.not2531.i.i.i.i = icmp ult i64 %i.x, %i.b
  br i1 %.not2531.i.i.i.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.z = load i8, ptr %i.s, align 1, !tbaa !17
  %i.aa = sext i8 %i.z to i32
  %i.ab = ptrtoint ptr %i.w to i64
  %invariant.op = sub i64 1, %i.b
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.033.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i ], [ %i.ah, %bb.l ]
  %.02032.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.af, %bb.l ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i.i.i, %invariant.op ; 2 uses
  %i.ac = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.ac, label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.k
  %i.ad = tail call ptr @memchr(ptr noundef %.02032.i.i.i.i, i32 noundef %i.aa, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass) #10 ; 4 uses
  %.not26.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not26.i.i.i.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ad, ptr nonnull readonly %i.s, i64 %i.b)
  %i.ae = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ae, label %_ZN4absl12lts_2026052612_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ab, %i.ag                    ; 2 uses
  %.not25.i.i.i.i = icmp ult i64 %i.ah, %i.b
  br i1 %.not25.i.i.i.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit, label %bb.k, !llvm.loop !21

_ZN4absl12lts_2026052612_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = ptrtoint ptr %2 to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %.not8.i = icmp eq i64 %i.ak, -1
  br i1 %.not8.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit, label %_ZN4absl12lts_2026052612_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.thread24.i

_ZN4absl12lts_2026052612_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.thread24.i: ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i, %bb.h
  %.1.i.i.i27.i = phi i64 [ %i.ak, %_ZN4absl12lts_2026052612_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i ], [ 0, %bb.h ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.1.i.i.i27.i
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit

_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_13LiteralPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit: ; preds = %bb.l, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %bb.k, %_ZN4absl12lts_2026052612_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.thread24.i, %_ZN4absl12lts_2026052612_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i, %bb.j, %bb.i, %bb.h, %bb.g, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %.sroa.016.0 = phi i64 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ %.sroa.speculated.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ 0, %_ZN4absl12lts_2026052612_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i ], [ %i.b, %_ZN4absl12lts_2026052612_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.thread24.i ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ], [ 0, %bb.l ]
  %.sroa.4.0 = phi ptr [ %i.o, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ %i.r, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.w, %_ZN4absl12lts_2026052612_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i ], [ %i.al, %_ZN4absl12lts_2026052612_GLOBAL__N_113LiteralPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.thread24.i ], [ %i.v, %bb.g ], [ %i.w, %bb.i ], [ %i.w, %bb.j ], [ %2, %bb.h ], [ %i.w, %bb.k ], [ %i.w, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ], [ %i.w, %bb.l ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, ptr } @_ZNK4absl12lts_2026052617ByAsciiWhitespace4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 3 uses
  %i.b = icmp ult i64 %3, %1
  br i1 %i.b, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_11AnyOfPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.a, %bb.b
  %.0111420.i.i.i.i = phi i64 [ %i.h, %bb.b ], [ %3, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.0111420.i.i.i.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !17    ; 2 uses
  %i.e = zext nneg i8 %i.d to i64
  %memchr.bounds = icmp ugt i8 %i.d, 63
  %i.f = shl nuw i64 1, %i.e
  %i.g = and i64 %i.f, 4294983168
  %memchr.bits = icmp eq i64 %i.g, 0
  %memchr.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr.not, label %bb.b, label %_ZN4absl12lts_2026052612_GLOBAL__N_111AnyOfPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %i.h = add i64 %.0111420.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.h, %1
  br i1 %exitcond.not.i.i.i.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_11AnyOfPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZN4absl12lts_2026052612_GLOBAL__N_111AnyOfPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.0111420.i.i.i.i
  %.not8.i = icmp ne i64 %.0111420.i.i.i.i, -1    ; 2 uses
  %spec.select.i = zext i1 %.not8.i to i64
  %spec.select26.i = select i1 %.not8.i, ptr %i.i, ptr %i.a
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_11AnyOfPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit

_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_11AnyOfPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit: ; preds = %bb.b, %bb.a, %_ZN4absl12lts_2026052612_GLOBAL__N_111AnyOfPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i
  %.sroa.020.0.i = phi i64 [ %spec.select.i, %_ZN4absl12lts_2026052612_GLOBAL__N_111AnyOfPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.421.0.i = phi ptr [ %spec.select26.i, %_ZN4absl12lts_2026052612_GLOBAL__N_111AnyOfPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i ], [ %i.a, %bb.a ], [ %i.a, %bb.b ]
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %.sroa.020.0.i, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %.sroa.421.0.i, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %3, %1
  br i1 %i.a, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !24
  %i.c = sub nuw i64 %1, %3
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.e = sext i8 %i.b to i32
  %i.f = tail call ptr @memchr(ptr noundef %i.d, i32 noundef %i.e, i64 noundef %i.c) #10 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %i.k = icmp ugt i64 %i.i, %1
  br i1 %i.k, label %bb.c, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i64 noundef %i.i, i64 noundef %1) #9
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.b
  %i.l = icmp ne i64 %1, %i.i
  %.sroa.speculated.i = zext i1 %i.l to i64
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, %bb.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %.sroa.07.0 = phi i64 [ %.sroa.speculated.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ 0, %bb.a ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ]
  %.pn = phi i64 [ %i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ %1, %bb.a ], [ %1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ]
  %.sroa.3.0 = getelementptr inbounds nuw i8, ptr %2, i64 %.pn
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_202605269ByAnyCharC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr nofree readonly captures(address_is_null) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  %i.c = icmp eq ptr %2, null
  %i.d = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.d, %i.c
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #9
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %1, ptr %i.a, align 8, !tbaa !14
  %i.e = icmp ugt i64 %1, 15
  br i1 %i.e, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !16
  %i.g = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.g, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %1, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %2, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { i64, ptr } @_ZNK4absl12lts_202605269ByAnyChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_11AnyOfPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_11AnyOfPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 3 uses
  %i.h = icmp ult i64 %3, %1
  br i1 %i.h, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_11AnyOfPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.d, %bb.e
  %.0111420.i.i.i.i = phi i64 [ %i.m, %bb.e ], [ %3, %bb.d ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.0111420.i.i.i.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17
  %i.k = sext i8 %i.j to i32
  %i.l = tail call ptr @memchr(ptr noundef readonly %i.a, i32 noundef %i.k, i64 noundef %i.c) #10
  %.not13.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not13.not.i.i.i.i, label %bb.e, label %_ZN4absl12lts_2026052612_GLOBAL__N_111AnyOfPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %i.m = add i64 %.0111420.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.m, %1
  br i1 %exitcond.not.i.i.i.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_11AnyOfPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZN4absl12lts_2026052612_GLOBAL__N_111AnyOfPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.0111420.i.i.i.i
  %.not8.i = icmp ne i64 %.0111420.i.i.i.i, -1    ; 2 uses
  %spec.select.i = zext i1 %.not8.i to i64
  %spec.select26.i = select i1 %.not8.i, ptr %i.n, ptr %i.g
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_11AnyOfPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit

_ZN4absl12lts_2026052612_GLOBAL__N_111GenericFindINS1_11AnyOfPolicyEEESt17basic_string_viewIcSt11char_traitsIcEES7_S7_mT_.exit: ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %_ZN4absl12lts_2026052612_GLOBAL__N_111AnyOfPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i
  %.sroa.020.0.i = phi i64 [ %spec.select.i, %_ZN4absl12lts_2026052612_GLOBAL__N_111AnyOfPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  %.sroa.421.0.i = phi ptr [ %spec.select26.i, %_ZN4absl12lts_2026052612_GLOBAL__N_111AnyOfPolicy4FindESt17basic_string_viewIcSt11char_traitsIcEES6_m.exit.i ], [ %2, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.e ]
  %.fca.0.insert.i7 = insertvalue { i64, ptr } poison, i64 %.sroa.020.0.i, 0
  %.fca.1.insert.i8 = insertvalue { i64, ptr } %.fca.0.insert.i7, ptr %.sroa.421.0.i, 1
  ret { i64, ptr } %.fca.1.insert.i8
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_202605268ByLengthC2El(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !20
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 36), i32 noundef 129, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

declare void @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, ptr } @_ZNK4absl12lts_202605268ByLength4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #2 align 2 {
_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %3) ; 2 uses
  %i.a = sub nuw i64 %1, %.sroa.speculated
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated
  %i.c = load i64, ptr %0, align 8, !tbaa !20     ; 2 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.sroa.3.0 = select i1 %.not, ptr %i.d, ptr %i.e
  %.fca.1.insert = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.3.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { noreturn }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !13, i64 8, !5, i64 16}
!16 = !{!15, !10, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!15, !13, i64 8}
!19 = !{!"_ZTSN4absl12lts_202605268ByLengthE", !13, i64 0}
!20 = !{!19, !13, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"_ZTSN4absl12lts_202605266ByCharE", !5, i64 0}
!24 = !{!23, !5, i64 0}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
