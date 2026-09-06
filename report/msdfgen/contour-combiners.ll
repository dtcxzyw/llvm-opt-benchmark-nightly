Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/contour-combiners?download=true
inline.NumInlined: 515
inline.NumDeleted: 217
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
$_ZN7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEE12edgeSelectorEi = comdat any

$_ZNK7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEE8distanceEv = comdat any

$_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEC5ERKNS_5ShapeE = comdat any

$_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE5resetERKNS_7Vector2E = comdat any

$_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE12edgeSelectorEi = comdat any

$_ZNK7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE8distanceEv = comdat any

$_ZN7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEEC5ERKNS_5ShapeE = comdat any

$_ZN7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEE5resetERKNS_7Vector2E = comdat any

$_ZN7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEE12edgeSelectorEi = comdat any

$_ZNK7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEE8distanceEv = comdat any

$_ZN7msdfgen26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEEC5ERKNS_5ShapeE = comdat any

$_ZN7msdfgen26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEE5resetERKNS_7Vector2E = comdat any

$_ZN7msdfgen26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEE12edgeSelectorEi = comdat any

$_ZNK7msdfgen26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEE8distanceEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EE17_M_default_appendEm = comdat any

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEEC1ERKNS_5ShapeE = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEEC2ERKNS_5ShapeE
@_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEC1ERKNS_5ShapeE = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEC2ERKNS_5ShapeE
@_ZN7msdfgen21SimpleContourCombinerINS_21MultiDistanceSelectorEEC1ERKNS_5ShapeE = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN7msdfgen21SimpleContourCombinerINS_21MultiDistanceSelectorEEC2ERKNS_5ShapeE
@_ZN7msdfgen21SimpleContourCombinerINS_28MultiAndTrueDistanceSelectorEEC1ERKNS_5ShapeE = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN7msdfgen21SimpleContourCombinerINS_28MultiAndTrueDistanceSelectorEEC2ERKNS_5ShapeE
@_ZN7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEEC1ERKNS_5ShapeE = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEEC2ERKNS_5ShapeE
@_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEC1ERKNS_5ShapeE = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEC2ERKNS_5ShapeE
@_ZN7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEEC1ERKNS_5ShapeE = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEEC2ERKNS_5ShapeE
@_ZN7msdfgen26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEEC1ERKNS_5ShapeE = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN7msdfgen26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEEC2ERKNS_5ShapeE

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEEC2ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat($_ZN7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEEC5ERKNS_5ShapeE) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 16, i1 false)
  store <2 x double> <double f0xFFEFFFFFFFFFFFFF, double 0.000000e+00>, ptr %i.a, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7msdfgen20TrueDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

declare void @_ZN7msdfgen20TrueDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef double @_ZNK7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK7msdfgen20TrueDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret double %i.a
}

declare noundef double @_ZNK7msdfgen20TrueDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEC2ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat($_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEC5ERKNS_5ShapeE) align 2 {
bb.a:
  tail call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7msdfgen29PerpendicularDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

declare void @_ZN7msdfgen29PerpendicularDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(64) ptr @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef double @_ZNK7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK7msdfgen29PerpendicularDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  ret double %i.a
}

declare noundef double @_ZNK7msdfgen29PerpendicularDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen21SimpleContourCombinerINS_21MultiDistanceSelectorEEC2ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat($_ZN7msdfgen21SimpleContourCombinerINS_21MultiDistanceSelectorEEC5ERKNS_5ShapeE) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 0, i64 16, i1 false)
  tail call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen21SimpleContourCombinerINS_21MultiDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7msdfgen21MultiDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

declare void @_ZN7msdfgen21MultiDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(160) ptr @_ZN7msdfgen21SimpleContourCombinerINS_21MultiDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK7msdfgen21SimpleContourCombinerINS_21MultiDistanceSelectorEE8distanceEv(ptr dead_on_unwind noalias writable sret(%"struct.msdfgen::MultiDistance") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK7msdfgen21MultiDistanceSelector8distanceEv(ptr dead_on_unwind writable sret(%"struct.msdfgen::MultiDistance") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1)
  ret void
}

declare void @_ZNK7msdfgen21MultiDistanceSelector8distanceEv(ptr dead_on_unwind writable sret(%"struct.msdfgen::MultiDistance") align 8, ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen21SimpleContourCombinerINS_28MultiAndTrueDistanceSelectorEEC2ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat($_ZN7msdfgen21SimpleContourCombinerINS_28MultiAndTrueDistanceSelectorEEC5ERKNS_5ShapeE) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 0, i64 16, i1 false)
  tail call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen21SimpleContourCombinerINS_28MultiAndTrueDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7msdfgen21MultiDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(160) ptr @_ZN7msdfgen21SimpleContourCombinerINS_28MultiAndTrueDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK7msdfgen21SimpleContourCombinerINS_28MultiAndTrueDistanceSelectorEE8distanceEv(ptr dead_on_unwind noalias writable sret(%"struct.msdfgen::MultiAndTrueDistance") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK7msdfgen28MultiAndTrueDistanceSelector8distanceEv(ptr dead_on_unwind writable sret(%"struct.msdfgen::MultiAndTrueDistance") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1)
  ret void
}

declare void @_ZNK7msdfgen28MultiAndTrueDistanceSelector8distanceEv(ptr dead_on_unwind writable sret(%"struct.msdfgen::MultiAndTrueDistance") align 8, ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEEC2ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat($_ZN7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEEC5ERKNS_5ShapeE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %2 = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.not41 = icmp eq ptr %i.d, %i.e
  br i1 %.not41, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = shl nuw nsw i64 %i.i, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #13
          to label %.noexc8 unwind label %bb.i    ; 4 uses

.noexc8:                                          ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc8
  %.not.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.v) #14
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.m, ptr %i.a, align 8, !tbaa !17
  store ptr %i.m, ptr %i.k, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.i
  store ptr %i.w, ptr %i.j, align 8, !tbaa !19
  %.pre = load ptr, ptr %1, align 8, !tbaa !20
  %.pre23 = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.c
  %i.x = phi ptr [ %.pre23, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.y = phi ptr [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %.not20 = icmp eq ptr %i.y, %i.x
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.aa = phi ptr [ %i.x, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.pre24, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.x, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.bo, %._crit_edge.loopexit ]
  %i.ab = ptrtoint ptr %.lcssa to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24                ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23 ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 5                 ; 3 uses
  %i.am = icmp ugt i64 %i.ae, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.an = sub nuw nsw i64 %i.ae, %i.al
  invoke void @_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.an)
          to label %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EE6resizeEm.exit unwind label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ao = icmp ult i64 %i.ae, %i.al
  br i1 %i.ao, label %bb.h, label %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ae ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.ap
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN7msdfgen20TrueDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7msdfgen20TrueDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !23
  br label %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.f, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.015.021 = phi ptr [ %i.y, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.ar = invoke noundef i32 @_ZNK7msdfgen7Contour7windingEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.021)
          to label %bb.k unwind label %.loopexit  ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !18  ; 4 uses
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !19
  %.not.i.i10 = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store ptr %i.au, ptr %i.z, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.m:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775804
  br i1 %i.az, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.ba = ashr exact i64 %i.ay, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 2305843009213693951)
  %i.be = select i1 %i.bc, i64 2305843009213693951, i64 %i.bd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #13
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store i32 %i.ar, ptr %i.bh, align 4, !tbaa !25
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.o:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr align 4 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.o, %.noexc12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bm) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !17
  store ptr %i.bj, ptr %i.z, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bn, ptr %i.j, align 8, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 24 ; 3 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq ptr %i.bo, %i.bp
  br i1 %.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !48

.loopexit:                                        ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen20TrueDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.h, %bb.g, %bb.f
  ret void

end_hunk_0
begin_hunk_1_@_ZNK7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEE8distanceEv:bb.a
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv
  call void @_ZN7msdfgen20TrueDistanceSelector5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25   ; 2 uses
  %i.aa = icmp slt i32 %i.z, 1
  %i.ab = fcmp ult double %i.u, 0.000000e+00
  %or.cond = or i1 %i.ab, %i.aa
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv
  call void @_ZN7msdfgen20TrueDistanceSelector5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %.pre104 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = phi i32 [ %.pre104, %bb.c ], [ %i.z, %bb.b ]
  %i.af = icmp sgt i32 %i.ae, -1
  %i.ag = fcmp ugt double %i.u, 0.000000e+00
  %or.cond68 = or i1 %i.ag, %i.af
  br i1 %or.cond68, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %indvars.iv
  call void @_ZN7msdfgen20TrueDistanceSelector5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !51

bb.g:                                             ; preds = %._crit_edge
  %i.aj = call double @llvm.fabs.f64(double %i.p)
  %i.ak = call double @llvm.fabs.f64(double %i.q) ; 2 uses
  %i.al = fcmp ugt double %i.aj, %i.ak
  br i1 %i.al, label %bb.l, label %.preheader71

.preheader71:                                     ; preds = %bb.g
  br i1 %i.m, label %.lr.ph76, label %._crit_edge85

.lr.ph76:                                         ; preds = %.preheader71
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count92 = and i64 %i.h, 2147483647
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph76, %bb.k
  %indvars.iv89 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next90, %bb.k ] ; 3 uses
  %.06774 = phi double [ %i.p, %.lr.ph76 ], [ %.1, %bb.k ] ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv89
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !25
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %indvars.iv89
  %i.at = call noundef double @_ZNK7msdfgen20TrueDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(32) %i.as) ; 3 uses
  %i.au = call double @llvm.fabs.f64(double %i.at)
  %i.av = fcmp olt double %i.au, %i.ak
  %i.aw = fcmp ogt double %i.at, %.06774
  %or.cond69 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond69, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.1 = phi double [ %i.at, %bb.j ], [ %.06774, %bb.h ], [ %.06774, %bb.i ] ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %.loopexit, label %bb.h, !llvm.loop !52

bb.l:                                             ; preds = %bb.g, %._crit_edge
  %i.ax = fcmp ugt double %i.q, 0.000000e+00
  br i1 %i.ax, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = call double @llvm.fabs.f64(double %i.q)
  %i.az = call double @llvm.fabs.f64(double %i.p) ; 2 uses
  %i.ba = fcmp olt double %i.ay, %i.az
  br i1 %i.ba, label %.preheader, label %bb.x

.preheader:                                       ; preds = %bb.m
  br i1 %i.m, label %.lr.ph79, label %._crit_edge85

.lr.ph79:                                         ; preds = %.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count97 = and i64 %i.h, 2147483647
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph79, %bb.q
  %indvars.iv94 = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next95, %bb.q ] ; 3 uses
  %.277 = phi double [ %i.q, %.lr.ph79 ], [ %.3, %bb.q ] ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv94
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !25
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %indvars.iv94
  %i.bi = call noundef double @_ZNK7msdfgen20TrueDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bh) ; 3 uses
  %i.bj = call double @llvm.fabs.f64(double %i.bi)
  %i.bk = fcmp olt double %i.bj, %i.az
  %i.bl = fcmp olt double %i.bi, %.277
  %or.cond70 = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond70, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.3 = phi double [ %i.bi, %bb.p ], [ %.277, %bb.n ], [ %.277, %bb.o ] ; 2 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit, label %bb.n, !llvm.loop !53

.loopexit:                                        ; preds = %bb.k, %bb.q
  %.4 = phi double [ %.3, %bb.q ], [ %.1, %bb.k ] ; 2 uses
  %.054 = phi i32 [ -1, %bb.q ], [ 1, %bb.k ]
  br i1 %i.m, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %.loopexit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count102 = and i64 %i.h, 2147483647
  br label %bb.r

._crit_edge85:                                    ; preds = %bb.v, %.preheader, %.preheader71, %.loopexit
  %.5.lcssa = phi double [ %.4, %.loopexit ], [ %i.q, %.preheader ], [ %i.p, %.preheader71 ], [ %.6, %bb.v ] ; 2 uses
  %i.bn = fcmp oeq double %.5.lcssa, %i.o
  br i1 %i.bn, label %bb.w, label %bb.x

bb.r:                                             ; preds = %.lr.ph84, %bb.v
  %indvars.iv99 = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next100, %bb.v ] ; 3 uses
  %.581 = phi double [ %.4, %.lr.ph84 ], [ %.6, %bb.v ] ; 5 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv99
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !25
  %.not = icmp eq i32 %i.bq, %.054
  br i1 %.not, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.br, i64 %indvars.iv99
  %i.bt = call noundef double @_ZNK7msdfgen20TrueDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bs) ; 3 uses
  %i.bu = fmul double %.581, %i.bt
  %i.bv = fcmp ult double %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = call double @llvm.fabs.f64(double %i.bt)
  %i.bx = call double @llvm.fabs.f64(double %.581)
  %i.by = fcmp olt double %i.bw, %i.bx
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u, %bb.r
  %.6 = phi double [ %.581, %bb.r ], [ %.581, %bb.s ], [ %i.bt, %bb.u ], [ %.581, %bb.t ] ; 2 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge85, label %bb.r, !llvm.loop !54

bb.w:                                             ; preds = %._crit_edge85
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge85, %bb.w, %bb.l, %bb.m
  %.056 = phi double [ %i.o, %bb.l ], [ %i.o, %bb.m ], [ %i.o, %bb.w ], [ %.5.lcssa, %._crit_edge85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret double %.056
}

declare void @_ZN7msdfgen20TrueDistanceSelector5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEC2ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat($_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEC5ERKNS_5ShapeE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %2 = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.not41 = icmp eq ptr %i.d, %i.e
  br i1 %.not41, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = shl nuw nsw i64 %i.i, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #13
          to label %.noexc8 unwind label %bb.i    ; 4 uses

.noexc8:                                          ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc8
  %.not.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.v) #14
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.m, ptr %i.a, align 8, !tbaa !17
  store ptr %i.m, ptr %i.k, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.i
  store ptr %i.w, ptr %i.j, align 8, !tbaa !19
  %.pre = load ptr, ptr %1, align 8, !tbaa !20
  %.pre23 = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.c
  %i.x = phi ptr [ %.pre23, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.y = phi ptr [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %.not20 = icmp eq ptr %i.y, %i.x
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.aa = phi ptr [ %i.x, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.pre24, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.x, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.bo, %._crit_edge.loopexit ]
  %i.ab = ptrtoint ptr %.lcssa to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24                ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 6                 ; 3 uses
  %i.am = icmp ugt i64 %i.ae, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.an = sub nuw nsw i64 %i.ae, %i.al
  invoke void @_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.an)
          to label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE6resizeEm.exit unwind label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ao = icmp ult i64 %i.ae, %i.al
  br i1 %i.ao, label %bb.h, label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw [64 x i8], ptr %i.ah, i64 %i.ae ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.ap
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN7msdfgen29PerpendicularDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7msdfgen29PerpendicularDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !31
  br label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.f, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.015.021 = phi ptr [ %i.y, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.ar = invoke noundef i32 @_ZNK7msdfgen7Contour7windingEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.021)
          to label %bb.k unwind label %.loopexit  ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !18  ; 4 uses
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !19
  %.not.i.i10 = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store ptr %i.au, ptr %i.z, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.m:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775804
  br i1 %i.az, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.ba = ashr exact i64 %i.ay, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 2305843009213693951)
  %i.be = select i1 %i.bc, i64 2305843009213693951, i64 %i.bd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #13
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store i32 %i.ar, ptr %i.bh, align 4, !tbaa !25
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.o:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr align 4 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.o, %.noexc12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bm) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !17
  store ptr %i.bj, ptr %i.z, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bn, ptr %i.j, align 8, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 24 ; 3 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq ptr %i.bo, %i.bp
  br i1 %.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !55

.loopexit:                                        ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen29PerpendicularDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.h, %bb.g, %bb.f
  ret void

end_hunk_1
begin_hunk_2_@_ZNK7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE8distanceEv:bb.a
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = call noundef double @_ZNK7msdfgen29PerpendicularDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.t) ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %indvars.iv
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBase5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.w)
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25   ; 2 uses
  %i.aa = icmp slt i32 %i.z, 1
  %i.ab = fcmp ult double %i.u, 0.000000e+00
  %or.cond = or i1 %i.ab, %i.aa
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %indvars.iv
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBase5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.ad)
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %.pre104 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = phi i32 [ %.pre104, %bb.c ], [ %i.z, %bb.b ]
  %i.af = icmp sgt i32 %i.ae, -1
  %i.ag = fcmp ugt double %i.u, 0.000000e+00
  %or.cond68 = or i1 %i.ag, %i.af
  br i1 %or.cond68, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ah, i64 %indvars.iv
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBase5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.ai)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !58

bb.g:                                             ; preds = %._crit_edge
  %i.aj = call double @llvm.fabs.f64(double %i.p)
  %i.ak = call double @llvm.fabs.f64(double %i.q) ; 2 uses
  %i.al = fcmp ugt double %i.aj, %i.ak
  br i1 %i.al, label %bb.l, label %.preheader71

.preheader71:                                     ; preds = %bb.g
  br i1 %i.m, label %.lr.ph76, label %._crit_edge85

.lr.ph76:                                         ; preds = %.preheader71
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count92 = and i64 %i.h, 2147483647
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph76, %bb.k
  %indvars.iv89 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next90, %bb.k ] ; 3 uses
  %.06774 = phi double [ %i.p, %.lr.ph76 ], [ %.1, %bb.k ] ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv89
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !25
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ar, i64 %indvars.iv89
  %i.at = call noundef double @_ZNK7msdfgen29PerpendicularDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.as) ; 3 uses
  %i.au = call double @llvm.fabs.f64(double %i.at)
  %i.av = fcmp olt double %i.au, %i.ak
  %i.aw = fcmp ogt double %i.at, %.06774
  %or.cond69 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond69, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.1 = phi double [ %i.at, %bb.j ], [ %.06774, %bb.h ], [ %.06774, %bb.i ] ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %.loopexit, label %bb.h, !llvm.loop !59

bb.l:                                             ; preds = %bb.g, %._crit_edge
  %i.ax = fcmp ugt double %i.q, 0.000000e+00
  br i1 %i.ax, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = call double @llvm.fabs.f64(double %i.q)
  %i.az = call double @llvm.fabs.f64(double %i.p) ; 2 uses
  %i.ba = fcmp olt double %i.ay, %i.az
  br i1 %i.ba, label %.preheader, label %bb.x

.preheader:                                       ; preds = %bb.m
  br i1 %i.m, label %.lr.ph79, label %._crit_edge85

.lr.ph79:                                         ; preds = %.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count97 = and i64 %i.h, 2147483647
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph79, %bb.q
  %indvars.iv94 = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next95, %bb.q ] ; 3 uses
  %.277 = phi double [ %i.q, %.lr.ph79 ], [ %.3, %bb.q ] ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv94
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !25
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw [64 x i8], ptr %i.bg, i64 %indvars.iv94
  %i.bi = call noundef double @_ZNK7msdfgen29PerpendicularDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.bh) ; 3 uses
  %i.bj = call double @llvm.fabs.f64(double %i.bi)
  %i.bk = fcmp olt double %i.bj, %i.az
  %i.bl = fcmp olt double %i.bi, %.277
  %or.cond70 = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond70, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.3 = phi double [ %i.bi, %bb.p ], [ %.277, %bb.n ], [ %.277, %bb.o ] ; 2 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit, label %bb.n, !llvm.loop !60

.loopexit:                                        ; preds = %bb.k, %bb.q
  %.4 = phi double [ %.3, %bb.q ], [ %.1, %bb.k ] ; 2 uses
  %.054 = phi i32 [ -1, %bb.q ], [ 1, %bb.k ]
  br i1 %i.m, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %.loopexit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count102 = and i64 %i.h, 2147483647
  br label %bb.r

._crit_edge85:                                    ; preds = %bb.v, %.preheader, %.preheader71, %.loopexit
  %.5.lcssa = phi double [ %.4, %.loopexit ], [ %i.q, %.preheader ], [ %i.p, %.preheader71 ], [ %.6, %bb.v ] ; 2 uses
  %i.bn = fcmp oeq double %.5.lcssa, %i.o
  br i1 %i.bn, label %bb.w, label %bb.x

bb.r:                                             ; preds = %.lr.ph84, %bb.v
  %indvars.iv99 = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next100, %bb.v ] ; 3 uses
  %.581 = phi double [ %.4, %.lr.ph84 ], [ %.6, %bb.v ] ; 5 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv99
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !25
  %.not = icmp eq i32 %i.bq, %.054
  br i1 %.not, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bs = getelementptr inbounds nuw [64 x i8], ptr %i.br, i64 %indvars.iv99
  %i.bt = call noundef double @_ZNK7msdfgen29PerpendicularDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.bs) ; 3 uses
  %i.bu = fmul double %.581, %i.bt
  %i.bv = fcmp ult double %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = call double @llvm.fabs.f64(double %i.bt)
  %i.bx = call double @llvm.fabs.f64(double %.581)
  %i.by = fcmp olt double %i.bw, %i.bx
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u, %bb.r
  %.6 = phi double [ %.581, %bb.r ], [ %.581, %bb.s ], [ %i.bt, %bb.u ], [ %.581, %bb.t ] ; 2 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge85, label %bb.r, !llvm.loop !61

bb.w:                                             ; preds = %._crit_edge85
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge85, %bb.w, %bb.l, %bb.m
  %.056 = phi double [ %i.o, %bb.l ], [ %i.o, %bb.m ], [ %i.o, %bb.w ], [ %.5.lcssa, %._crit_edge85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret double %.056
}

declare void @_ZN7msdfgen33PerpendicularDistanceSelectorBase5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEEC2ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat($_ZN7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEEC5ERKNS_5ShapeE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %2 = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.not41 = icmp eq ptr %i.d, %i.e
  br i1 %.not41, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = shl nuw nsw i64 %i.i, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #13
          to label %.noexc8 unwind label %bb.i    ; 4 uses

.noexc8:                                          ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc8
  %.not.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.v) #14
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.m, ptr %i.a, align 8, !tbaa !17
  store ptr %i.m, ptr %i.k, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.i
  store ptr %i.w, ptr %i.j, align 8, !tbaa !19
  %.pre = load ptr, ptr %1, align 8, !tbaa !20
  %.pre23 = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.c
  %i.x = phi ptr [ %.pre23, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.y = phi ptr [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %.not20 = icmp eq ptr %i.y, %i.x
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.aa = phi ptr [ %i.x, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.pre24, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.x, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.bo, %._crit_edge.loopexit ]
  %i.ab = ptrtoint ptr %.lcssa to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24                ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 160               ; 3 uses
  %i.am = icmp ugt i64 %i.ae, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.an = sub nuw nsw i64 %i.ae, %i.al
  invoke void @_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.an)
          to label %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EE6resizeEm.exit unwind label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ao = icmp ult i64 %i.ae, %i.al
  br i1 %i.ao, label %bb.h, label %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw [160 x i8], ptr %i.ah, i64 %i.ae ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.ap
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN7msdfgen21MultiDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7msdfgen21MultiDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !36
  br label %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.f, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.015.021 = phi ptr [ %i.y, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.ar = invoke noundef i32 @_ZNK7msdfgen7Contour7windingEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.021)
          to label %bb.k unwind label %.loopexit  ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !18  ; 4 uses
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !19
  %.not.i.i10 = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store ptr %i.au, ptr %i.z, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.m:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775804
  br i1 %i.az, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.ba = ashr exact i64 %i.ay, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 2305843009213693951)
  %i.be = select i1 %i.bc, i64 2305843009213693951, i64 %i.bd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #13
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store i32 %i.ar, ptr %i.bh, align 4, !tbaa !25
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.o:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr align 4 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.o, %.noexc12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bm) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !17
  store ptr %i.bj, ptr %i.z, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bn, ptr %i.j, align 8, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 24 ; 3 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq ptr %i.bo, %i.bp
  br i1 %.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !62

.loopexit:                                        ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen21MultiDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.h, %bb.g, %bb.f
  ret void

end_hunk_2
begin_hunk_3_@_ZNK7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEE8distanceEv:bb.a
  %indvars.iv119 = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next120, %bb.v ] ; 3 uses
  %.sroa.0.396 = phi double [ %i.aj, %.lr.ph98 ], [ %.sroa.0.5, %bb.v ] ; 7 uses
  %.sroa.15.395 = phi double [ %i.al, %.lr.ph98 ], [ %.sroa.15.5, %bb.v ] ; 7 uses
  %.sroa.21.394 = phi double [ %i.an, %.lr.ph98 ], [ %.sroa.21.5, %bb.v ] ; 5 uses
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !17
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv119
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !25
  %i.eb = icmp slt i32 %i.ea, 0
  br i1 %i.eb, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.ed = getelementptr inbounds nuw [160 x i8], ptr %i.ec, i64 %indvars.iv119
  call void @_ZNK7msdfgen21MultiDistanceSelector8distanceEv(ptr dead_on_unwind nonnull writable sret(%"struct.msdfgen::MultiDistance") align 8 %10, ptr noundef nonnull align 8 dereferenceable(160) %i.ed)
  %i.ee = load double, ptr %10, align 8, !tbaa !40 ; 5 uses
  %i.ef = load double, ptr %i.dw, align 8, !tbaa !41 ; 5 uses
  %i.eg = load double, ptr %i.dx, align 8, !tbaa !42 ; 3 uses
  %i.eh = fcmp olt double %i.ef, %i.ee
  %i.ei = select i1 %i.eh, double %i.ef, double %i.ee ; 2 uses
  %i.ej = fcmp olt double %i.ee, %i.ef
  %i.ek = select i1 %i.ej, double %i.ef, double %i.ee ; 2 uses
  %i.el = fcmp olt double %i.eg, %i.ek
  %i.em = select i1 %i.el, double %i.eg, double %i.ek ; 2 uses
  %i.en = fcmp olt double %i.ei, %i.em
  %i.eo = select i1 %i.en, double %i.em, double %i.ei ; 2 uses
  %i.ep = call double @llvm.fabs.f64(double %i.eo)
  %i.eq = fcmp olt double %i.ep, %i.dt
  br i1 %i.eq, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.er = fcmp olt double %.sroa.15.395, %.sroa.0.396
  %i.es = select i1 %i.er, double %.sroa.15.395, double %.sroa.0.396 ; 2 uses
  %i.et = fcmp olt double %.sroa.0.396, %.sroa.15.395
  %i.eu = select i1 %i.et, double %.sroa.15.395, double %.sroa.0.396 ; 2 uses
  %i.ev = fcmp olt double %.sroa.21.394, %i.eu
  %i.ew = select i1 %i.ev, double %.sroa.21.394, double %i.eu ; 2 uses
  %i.ex = fcmp olt double %i.es, %i.ew
  %i.ey = select i1 %i.ex, double %i.ew, double %i.es
  %i.ez = fcmp olt double %i.eo, %i.ey
  br i1 %i.ez, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.21.4 = phi double [ %i.eg, %bb.t ], [ %.sroa.21.394, %bb.s ], [ %.sroa.21.394, %bb.r ]
  %.sroa.15.4 = phi double [ %i.ef, %bb.t ], [ %.sroa.15.395, %bb.s ], [ %.sroa.15.395, %bb.r ]
  %.sroa.0.4 = phi double [ %i.ee, %bb.t ], [ %.sroa.0.396, %bb.s ], [ %.sroa.0.396, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.u
  %.sroa.21.5 = phi double [ %.sroa.21.4, %bb.u ], [ %.sroa.21.394, %bb.q ] ; 2 uses
  %.sroa.15.5 = phi double [ %.sroa.15.4, %bb.u ], [ %.sroa.15.395, %bb.q ] ; 2 uses
  %.sroa.0.5 = phi double [ %.sroa.0.4, %bb.u ], [ %.sroa.0.396, %bb.q ] ; 2 uses
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %.loopexit, label %bb.q, !llvm.loop !67

bb.w:                                             ; preds = %bb.p, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !69
  br label %bb.ad

.loopexit:                                        ; preds = %bb.n, %bb.v
  %.sroa.21.6 = phi double [ %.sroa.21.5, %bb.v ], [ %.sroa.21.2, %bb.n ] ; 2 uses
  %.sroa.15.6 = phi double [ %.sroa.15.5, %bb.v ], [ %.sroa.15.2, %bb.n ] ; 2 uses
  %.sroa.0.6 = phi double [ %.sroa.0.5, %bb.v ], [ %.sroa.0.2, %bb.n ] ; 2 uses
  %.035 = phi i32 [ -1, %bb.v ], [ 1, %bb.n ]
  br i1 %i.s, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %.loopexit
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 16
  %wide.trip.count127 = and i64 %i.h, 2147483647
  br label %bb.x

._crit_edge108:                                   ; preds = %bb.ac, %.preheader, %.preheader84, %.loopexit
  %.sroa.21.7.lcssa = phi double [ %.sroa.21.6, %.loopexit ], [ %i.an, %.preheader ], [ %i.aa, %.preheader84 ], [ %.sroa.21.9, %bb.ac ] ; 3 uses
  %.sroa.15.7.lcssa = phi double [ %.sroa.15.6, %.loopexit ], [ %i.al, %.preheader ], [ %i.y, %.preheader84 ], [ %.sroa.15.9, %bb.ac ] ; 5 uses
  %.sroa.0.7.lcssa = phi double [ %.sroa.0.6, %.loopexit ], [ %i.aj, %.preheader ], [ %i.w, %.preheader84 ], [ %.sroa.0.9, %bb.ac ] ; 5 uses
  %i.fd = fcmp olt double %.sroa.15.7.lcssa, %.sroa.0.7.lcssa
  %i.fe = select i1 %i.fd, double %.sroa.15.7.lcssa, double %.sroa.0.7.lcssa ; 2 uses
  %i.ff = fcmp olt double %.sroa.0.7.lcssa, %.sroa.15.7.lcssa
  %i.fg = select i1 %i.ff, double %.sroa.15.7.lcssa, double %.sroa.0.7.lcssa ; 2 uses
  %i.fh = fcmp olt double %.sroa.21.7.lcssa, %i.fg
  %i.fi = select i1 %i.fh, double %.sroa.21.7.lcssa, double %i.fg ; 2 uses
  %i.fj = fcmp olt double %i.fe, %i.fi
  %i.fk = select i1 %i.fj, double %i.fi, double %i.fe
  %i.fl = load double, ptr %6, align 8, !tbaa !40 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !41 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !42 ; 3 uses
  %i.fq = fcmp olt double %i.fn, %i.fl
  %i.fr = select i1 %i.fq, double %i.fn, double %i.fl ; 2 uses
  %i.fs = fcmp olt double %i.fl, %i.fn
  %i.ft = select i1 %i.fs, double %i.fn, double %i.fl ; 2 uses
  %i.fu = fcmp olt double %i.fp, %i.ft
  %i.fv = select i1 %i.fu, double %i.fp, double %i.ft ; 2 uses
  %i.fw = fcmp olt double %i.fr, %i.fv
  %i.fx = select i1 %i.fw, double %i.fv, double %i.fr
  %i.fy = fcmp oeq double %i.fk, %i.fx            ; 3 uses
  %.sroa.21.10 = select i1 %i.fy, double %i.fp, double %.sroa.21.7.lcssa
  %.sroa.15.10 = select i1 %i.fy, double %i.fn, double %.sroa.15.7.lcssa
  %.sroa.0.10 = select i1 %i.fy, double %i.fl, double %.sroa.0.7.lcssa
  store double %.sroa.0.10, ptr %0, align 8, !tbaa !9
  %.sroa.15.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.15.10, ptr %.sroa.15.0..sroa_idx62, align 8, !tbaa !9
  %.sroa.21.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.21.10, ptr %.sroa.21.0..sroa_idx78, align 8, !tbaa !9
  br label %bb.ad

bb.x:                                             ; preds = %.lr.ph107, %bb.ac
  %indvars.iv124 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next125, %bb.ac ] ; 3 uses
  %.sroa.0.7104 = phi double [ %.sroa.0.6, %.lr.ph107 ], [ %.sroa.0.9, %bb.ac ] ; 7 uses
  %.sroa.15.7103 = phi double [ %.sroa.15.6, %.lr.ph107 ], [ %.sroa.15.9, %bb.ac ] ; 7 uses
  %.sroa.21.7102 = phi double [ %.sroa.21.6, %.lr.ph107 ], [ %.sroa.21.9, %bb.ac ] ; 5 uses
  %i.fz = load ptr, ptr %i.fa, align 8, !tbaa !17
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv124
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !25
  %.not = icmp eq i32 %i.gb, %.035
  br i1 %.not, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.gd = getelementptr inbounds nuw [160 x i8], ptr %i.gc, i64 %indvars.iv124
  call void @_ZNK7msdfgen21MultiDistanceSelector8distanceEv(ptr dead_on_unwind nonnull writable sret(%"struct.msdfgen::MultiDistance") align 8 %11, ptr noundef nonnull align 8 dereferenceable(160) %i.gd)
  %i.ge = load double, ptr %11, align 8, !tbaa !40 ; 5 uses
  %i.gf = load double, ptr %i.fb, align 8, !tbaa !41 ; 5 uses
  %i.gg = load double, ptr %i.fc, align 8, !tbaa !42 ; 3 uses
  %i.gh = fcmp olt double %i.gf, %i.ge
  %i.gi = select i1 %i.gh, double %i.gf, double %i.ge ; 2 uses
  %i.gj = fcmp olt double %i.ge, %i.gf
  %i.gk = select i1 %i.gj, double %i.gf, double %i.ge ; 2 uses
  %i.gl = fcmp olt double %i.gg, %i.gk
  %i.gm = select i1 %i.gl, double %i.gg, double %i.gk ; 2 uses
  %i.gn = fcmp olt double %i.gi, %i.gm
  %i.go = select i1 %i.gn, double %i.gm, double %i.gi ; 2 uses
  %i.gp = fcmp olt double %.sroa.15.7103, %.sroa.0.7104
  %i.gq = select i1 %i.gp, double %.sroa.15.7103, double %.sroa.0.7104 ; 2 uses
  %i.gr = fcmp olt double %.sroa.0.7104, %.sroa.15.7103
  %i.gs = select i1 %i.gr, double %.sroa.15.7103, double %.sroa.0.7104 ; 2 uses
  %i.gt = fcmp olt double %.sroa.21.7102, %i.gs
  %i.gu = select i1 %i.gt, double %.sroa.21.7102, double %i.gs ; 2 uses
  %i.gv = fcmp olt double %i.gq, %i.gu
  %i.gw = select i1 %i.gv, double %i.gu, double %i.gq ; 2 uses
  %i.gx = fmul double %i.gw, %i.go
  %i.gy = fcmp ult double %i.gx, 0.000000e+00
  br i1 %i.gy, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gz = call double @llvm.fabs.f64(double %i.go)
  %i.ha = call double @llvm.fabs.f64(double %i.gw)
  %i.hb = fcmp olt double %i.gz, %i.ha
  br i1 %i.hb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.sroa.21.8 = phi double [ %.sroa.21.7102, %bb.y ], [ %i.gg, %bb.aa ], [ %.sroa.21.7102, %bb.z ]
  %.sroa.15.8 = phi double [ %.sroa.15.7103, %bb.y ], [ %i.gf, %bb.aa ], [ %.sroa.15.7103, %bb.z ]
  %.sroa.0.8 = phi double [ %.sroa.0.7104, %bb.y ], [ %i.ge, %bb.aa ], [ %.sroa.0.7104, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.x, %bb.ab
  %.sroa.21.9 = phi double [ %.sroa.21.7102, %bb.x ], [ %.sroa.21.8, %bb.ab ] ; 2 uses
  %.sroa.15.9 = phi double [ %.sroa.15.7103, %bb.x ], [ %.sroa.15.8, %bb.ab ] ; 2 uses
  %.sroa.0.9 = phi double [ %.sroa.0.7104, %bb.x ], [ %.sroa.0.8, %bb.ab ] ; 2 uses
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %._crit_edge108, label %bb.x, !llvm.loop !68

bb.ad:                                            ; preds = %._crit_edge108, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

declare void @_ZN7msdfgen21MultiDistanceSelector5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEEC2ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat($_ZN7msdfgen26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEEC5ERKNS_5ShapeE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %2 = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.not41 = icmp eq ptr %i.d, %i.e
  br i1 %.not41, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = shl nuw nsw i64 %i.i, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #13
          to label %.noexc8 unwind label %bb.i    ; 4 uses

.noexc8:                                          ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc8
  %.not.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.v) #14
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.m, ptr %i.a, align 8, !tbaa !17
  store ptr %i.m, ptr %i.k, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.i
  store ptr %i.w, ptr %i.j, align 8, !tbaa !19
  %.pre = load ptr, ptr %1, align 8, !tbaa !20
  %.pre23 = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.c
  %i.x = phi ptr [ %.pre23, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.y = phi ptr [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %.not20 = icmp eq ptr %i.y, %i.x
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.aa = phi ptr [ %i.x, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.pre24, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.x, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.bo, %._crit_edge.loopexit ]
  %i.ab = ptrtoint ptr %.lcssa to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24                ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45 ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !46  ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 160               ; 3 uses
  %i.am = icmp ugt i64 %i.ae, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.an = sub nuw nsw i64 %i.ae, %i.al
  invoke void @_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.an)
          to label %_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EE6resizeEm.exit unwind label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ao = icmp ult i64 %i.ae, %i.al
  br i1 %i.ao, label %bb.h, label %_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw [160 x i8], ptr %i.ah, i64 %i.ae ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.ap
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN7msdfgen28MultiAndTrueDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7msdfgen28MultiAndTrueDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !45
  br label %_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.f, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.015.021 = phi ptr [ %i.y, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.ar = invoke noundef i32 @_ZNK7msdfgen7Contour7windingEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.021)
          to label %bb.k unwind label %.loopexit  ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !18  ; 4 uses
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !19
  %.not.i.i10 = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store ptr %i.au, ptr %i.z, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.m:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775804
  br i1 %i.az, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.ba = ashr exact i64 %i.ay, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 2305843009213693951)
  %i.be = select i1 %i.bc, i64 2305843009213693951, i64 %i.bd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #13
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store i32 %i.ar, ptr %i.bh, align 4, !tbaa !25
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.o:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr align 4 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.o, %.noexc12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bm) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !17
  store ptr %i.bj, ptr %i.z, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bn, ptr %i.j, align 8, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 24 ; 3 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq ptr %i.bo, %i.bp
  br i1 %.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !70

.loopexit:                                        ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen28MultiAndTrueDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.h, %bb.g, %bb.f
  ret void

end_hunk_3
