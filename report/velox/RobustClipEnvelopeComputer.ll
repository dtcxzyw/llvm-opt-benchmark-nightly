Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/RobustClipEnvelopeComputer?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.geos::geom::Envelope" = type { double, double, double, double }
%"class.geos::operation::overlayng::RobustClipEnvelopeComputer" = type { ptr, %"class.geos::geom::Envelope" }

@_ZN4geos9operation9overlayng26RobustClipEnvelopeComputerC1EPKNS_4geom8EnvelopeE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputerC2EPKNS_4geom8EnvelopeE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputerC2EPKNS_4geom8EnvelopeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer11getEnvelopeEPKNS_4geom8GeometryES6_PKNS3_8EnvelopeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.geos::geom::Envelope") align 8 captures(none) initializes((0, 32)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.geos::operation::overlayng::RobustClipEnvelopeComputer", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  call void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputerC1EPKNS_4geom8EnvelopeE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %3)
  call void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer3addEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1)
  call void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer3addEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer3addEPKNS_4geom8GeometryE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addPolygonEPKNS_4geom7PolygonE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.e, label %_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addPolygonEPKNS_4geom7PolygonE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  tail call void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer14addPolygonRingEPKNS_4geom10LinearRingE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.k)
  %i.l = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addPolygonEPKNS_4geom7PolygonE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi i64 [ %i.n, %.lr.ph.i ], [ 0, %bb.d ] ; 2 uses
  %i.m = tail call noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %.08.i)
  tail call void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer14addPolygonRingEPKNS_4geom10LinearRingE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.m)
  %i.n = add nuw i64 %.08.i, 1                    ; 2 uses
  %i.o = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %.lr.ph.i, label %_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addPolygonEPKNS_4geom7PolygonE.exit, !llvm.loop !0

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %1, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(40) %1), !inline_history !25
  %i.u = and i32 %i.t, -4
  %switch.selectcmp.i = icmp eq i32 %i.u, 4
  br i1 %switch.selectcmp.i, label %.preheader, label %_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addPolygonEPKNS_4geom7PolygonE.exit

.preheader:                                       ; preds = %bb.e
  %i.v = load ptr, ptr %1, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !26
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addPolygonEPKNS_4geom7PolygonE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0.i8 = phi i64 [ %i.ad, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.0.i8), !inline_history !26
  tail call void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer3addEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.ac), !inline_history !26
  %i.ad = add nuw i64 %.0.i8, 1                   ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !26
  %i.ai = icmp ult i64 %i.ad, %i.ah
  br i1 %i.ai, label %.lr.ph, label %_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addPolygonEPKNS_4geom7PolygonE.exit, !llvm.loop !1

_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addPolygonEPKNS_4geom7PolygonE.exit: ; preds = %.lr.ph, %.lr.ph.i, %.preheader, %bb.d, %bb.e, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer11getEnvelopeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.geos::geom::Envelope") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !tbaa.struct !17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addPolygonEPKNS_4geom7PolygonE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  tail call void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer14addPolygonRingEPKNS_4geom10LinearRingE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.a)
  %i.b = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.c = tail call noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %.08)
  tail call void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer14addPolygonRingEPKNS_4geom10LinearRingE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.c)
  %i.d = add nuw i64 %.08, 1                      ; 2 uses
  %i.e = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer13addCollectionEPKNS_4geom18GeometryCollectionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi i64 [ %i.i, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.06)
  tail call void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer3addEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.h)
  %i.i = add nuw i64 %.06, 1                      ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.n = icmp ult i64 %i.i, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !1
}

declare noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer14addPolygonRingEPKNS_4geom10LinearRingE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(48) %1)
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e), !inline_history !27
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addSegmentERKNS_4geom10CoordinateES6_.exit
  %.09 = phi i64 [ 1, %.lr.ph ], [ %i.at, %_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addSegmentERKNS_4geom10CoordinateES6_.exit ] ; 3 uses
  %i.o = add i64 %.09, -1
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.o) ; 2 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %.09) ; 2 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = tail call noundef zeroext i1 @_ZNK4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
  br i1 %i.y, label %bb.d, label %_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addSegmentERKNS_4geom10CoordinateES6_.exit

bb.d:                                             ; preds = %bb.c
  %2 = load <2 x double>, ptr %i.s, align 8, !tbaa !16 ; 3 uses
  %3 = extractelement <2 x double> %2, i64 1      ; 7 uses
  %4 = extractelement <2 x double> %2, i64 0      ; 9 uses
  %i.z = load double, ptr %i.l, align 8, !tbaa !21 ; 3 uses
  %i.aa = fcmp uno double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %4, ptr %i.k, align 8, !tbaa !22
  store <2 x double> %2, ptr %i.l, align 8, !tbaa !16
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ab = load double, ptr %i.k, align 8, !tbaa !22 ; 2 uses
  %i.ac = fcmp olt double %4, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double %4, ptr %i.k, align 8, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = phi double [ %4, %bb.g ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ae = fcmp ogt double %4, %i.z
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %4, ptr %i.l, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pr.i = phi double [ %4, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.af = load double, ptr %i.m, align 8, !tbaa !23 ; 2 uses
  %i.ag = fcmp olt double %3, %i.af
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store double %3, ptr %i.m, align 8, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = phi double [ %3, %bb.k ], [ %i.af, %bb.j ] ; 2 uses
  %i.ai = load double, ptr %i.n, align 8, !tbaa !24 ; 2 uses
  %i.aj = fcmp ogt double %3, %i.ai
  br i1 %i.aj, label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.sink.split, label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i

_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.sink.split: ; preds = %bb.l, %bb.e
  %.ph = phi double [ %3, %bb.e ], [ %i.ah, %bb.l ]
  %.ph21 = phi double [ %4, %bb.e ], [ %i.ad, %bb.l ]
  %.ph22 = phi double [ %4, %bb.e ], [ %.pr.i, %bb.l ]
  store double %3, ptr %i.n, align 8, !tbaa !24
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i

_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i: ; preds = %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.sink.split, %bb.l
  %i.ak = phi double [ %i.ai, %bb.l ], [ %3, %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.sink.split ]
  %i.al = phi double [ %i.ah, %bb.l ], [ %.ph, %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.sink.split ]
  %i.am = phi double [ %i.ad, %bb.l ], [ %.ph21, %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.sink.split ]
  %i.an = phi double [ %.pr.i, %bb.l ], [ %.ph22, %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i.sink.split ] ; 2 uses
  %5 = load <2 x double>, ptr %i.w, align 8, !tbaa !16 ; 3 uses
  %6 = extractelement <2 x double> %5, i64 1      ; 4 uses
  %7 = extractelement <2 x double> %5, i64 0      ; 5 uses
  %i.ao = fcmp uno double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i
  store double %7, ptr %i.k, align 8, !tbaa !22
  store <2 x double> %5, ptr %i.l, align 8, !tbaa !16
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit5.sink.split.i

bb.n:                                             ; preds = %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit.i
  %i.ap = fcmp olt double %7, %i.am
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store double %7, ptr %i.k, align 8, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aq = fcmp ogt double %7, %i.an
  br i1 %i.aq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %7, ptr %i.l, align 8, !tbaa !21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ar = fcmp olt double %6, %i.al
  br i1 %i.ar, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %6, ptr %i.m, align 8, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.as = fcmp ogt double %6, %i.ak
  br i1 %i.as, label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit5.sink.split.i, label %_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addSegmentERKNS_4geom10CoordinateES6_.exit

_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit5.sink.split.i: ; preds = %bb.t, %bb.m
  store double %6, ptr %i.n, align 8, !tbaa !24
  br label %_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addSegmentERKNS_4geom10CoordinateES6_.exit

_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addSegmentERKNS_4geom10CoordinateES6_.exit: ; preds = %bb.c, %bb.t, %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit5.sink.split.i
  %i.at = add nuw i64 %.09, 1                     ; 2 uses
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.e), !inline_history !27
  %i.ay = icmp ult i64 %i.at, %i.ax
  br i1 %i.ay, label %bb.c, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addSegmentERKNS_4geom10CoordinateES6_.exit, %bb.b, %bb.a
  ret void
}

declare noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer10addSegmentERKNS_4geom10CoordinateES6_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = tail call noundef zeroext i1 @_ZNK4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.b, label %bb.b, label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit5

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load <2 x double>, ptr %1, align 8, !tbaa !16 ; 3 uses
  %i.e = extractelement <2 x double> %i.d, i64 1  ; 8 uses
  %i.f = extractelement <2 x double> %i.d, i64 0  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !21 ; 3 uses
  %i.i = fcmp uno double %i.h, 0.000000e+00
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = shufflevector <2 x double> %i.d, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x double> %i.j, ptr %i.c, align 8, !tbaa !16
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load double, ptr %i.c, align 8, !tbaa !22 ; 2 uses
  %i.l = fcmp olt double %i.f, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.f, ptr %i.c, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi double [ %i.f, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.n = fcmp ogt double %i.f, %i.h
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double %i.f, ptr %i.g, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pr = phi double [ %i.f, %bb.g ], [ %i.h, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !23 ; 2 uses
  %i.q = fcmp olt double %i.e, %i.p
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.e, ptr %i.o, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = phi double [ %i.e, %bb.i ], [ %i.p, %bb.h ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !24 ; 2 uses
  %i.u = fcmp ogt double %i.e, %i.t
  br i1 %i.u, label %bb.k, label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit

bb.k:                                             ; preds = %bb.j
  store double %i.e, ptr %i.s, align 8, !tbaa !24
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit

_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit: ; preds = %bb.j, %bb.k, %bb.c
  %i.v = phi double [ %i.e, %bb.c ], [ %i.e, %bb.k ], [ %i.t, %bb.j ]
  %i.w = phi double [ %i.e, %bb.c ], [ %i.r, %bb.k ], [ %i.r, %bb.j ]
  %i.x = phi double [ %i.f, %bb.c ], [ %i.m, %bb.k ], [ %i.m, %bb.j ]
  %i.y = phi double [ %i.f, %bb.c ], [ %.pr, %bb.k ], [ %.pr, %bb.j ] ; 2 uses
  %i.z = load <2 x double>, ptr %2, align 8, !tbaa !16 ; 3 uses
  %i.aa = extractelement <2 x double> %i.z, i64 1 ; 4 uses
  %i.ab = extractelement <2 x double> %i.z, i64 0 ; 5 uses
  %i.ac = fcmp uno double %i.y, 0.000000e+00
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit
  store double %i.ab, ptr %i.c, align 8, !tbaa !22
  store <2 x double> %i.z, ptr %i.g, align 8, !tbaa !16
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit5.sink.split

bb.m:                                             ; preds = %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit
  %i.ad = fcmp olt double %i.ab, %i.x
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.ab, ptr %i.c, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ae = fcmp ogt double %i.ab, %i.y
  br i1 %i.ae, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double %i.ab, ptr %i.g, align 8, !tbaa !21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.af = fcmp olt double %i.aa, %i.w
  br i1 %i.af, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.aa, ptr %i.ag, align 8, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ah = fcmp ogt double %i.aa, %i.v
  br i1 %i.ah, label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit5.sink.split, label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit5

_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit5.sink.split: ; preds = %bb.s, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.aa, ptr %i.ai, align 8, !tbaa !24
  br label %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit5

_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit5: ; preds = %_ZN4geos4geom8Envelope15expandToIncludeERKNS0_10CoordinateE.exit5.sink.split, %bb.s, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer17intersectsSegmentEPKNS_4geom8EnvelopeERKNS3_10CoordinateES9_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZNK4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !10, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"_ZTSN4geos4geom8EnvelopeE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!14 = !{!"_ZTSN4geos9operation9overlayng26RobustClipEnvelopeComputerE", !11, i64 0, !13, i64 8}
!15 = !{!14, !11, i64 0}
!16 = !{!12, !12, i64 0}
!17 = !{i64 0, i64 8, !16, i64 8, i64 8, !16, i64 16, i64 8, !16, i64 24, i64 8, !16}
!18 = !{!"vtable pointer", !5, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!13, !12, i64 8}
!22 = !{!13, !12, i64 0}
!23 = !{!13, !12, i64 16}
!24 = !{!13, !12, i64 24}
!25 = distinct !{null}
!26 = !{ptr @_ZN4geos9operation9overlayng26RobustClipEnvelopeComputer13addCollectionEPKNS_4geom18GeometryCollectionE}
!27 = distinct !{null}
!28 = distinct !{!28, !20}
end_hunk_0
