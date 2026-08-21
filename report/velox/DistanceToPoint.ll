Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/DistanceToPoint?download=true
inline.NumInlined: 19
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.geos::geom::LineSegment" = type { %"class.geos::geom::Coordinate", %"class.geos::geom::Coordinate" }
%"class.geos::geom::Coordinate" = type { double, double, double }

@_ZTIN4geos4geom8GeometryE = external constant ptr
@_ZTIN4geos4geom10LineStringE = external constant ptr
@_ZTIN4geos4geom7PolygonE = external constant ptr
@_ZTIN4geos4geom18GeometryCollectionE = external constant ptr

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom8GeometryERKNS3_10CoordinateERNS1_17PointPairDistanceE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 1, ptr %i.e, align 8, !tbaa !10
  br label %_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom7PolygonERKNS3_10CoordinateERNS1_17PointPairDistanceE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom10LineStringE, i64 0) #5 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom10LineStringERKNS3_10CoordinateERNS1_17PointPairDistanceE(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(57) %2)
  br label %_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom7PolygonERKNS3_10CoordinateERNS1_17PointPairDistanceE.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom7PolygonE, i64 0) #5 ; 4 uses
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %i.g)
  tail call void @_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom10LineStringERKNS3_10CoordinateERNS1_17PointPairDistanceE(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(57) %2)
  %i.i = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %i.g) ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom7PolygonERKNS3_10CoordinateERNS1_17PointPairDistanceE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.010.i = phi i64 [ %i.k, %.lr.ph.i ], [ 0, %bb.f ] ; 2 uses
  %i.j = tail call noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 noundef %.010.i)
  tail call void @_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom10LineStringERKNS3_10CoordinateERNS1_17PointPairDistanceE(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(57) %2)
  %i.k = add nuw i64 %.010.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %i.i
  br i1 %exitcond.not.i, label %_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom7PolygonERKNS3_10CoordinateERNS1_17PointPairDistanceE.exit, label %.lr.ph.i, !llvm.loop !15

bb.g:                                             ; preds = %bb.e
  %i.l = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom18GeometryCollectionE, i64 0) #5 ; 7 uses
  %.not28 = icmp eq ptr %i.l, null
  br i1 %.not28, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(64) %i.l)
  %.not31 = icmp eq i64 %i.p, 0
  br i1 %.not31, label %_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom7PolygonERKNS3_10CoordinateERNS1_17PointPairDistanceE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.030 = phi i64 [ %i.u, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 noundef %.030)
  tail call void @_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom8GeometryERKNS3_10CoordinateERNS1_17PointPairDistanceE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(57) %2)
  %i.u = add nuw i64 %.030, 1                     ; 2 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.l)
  %i.z = icmp ult i64 %i.u, %i.y
  br i1 %i.z, label %.lr.ph, label %_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom7PolygonERKNS3_10CoordinateERNS1_17PointPairDistanceE.exit, !llvm.loop !17

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(40) %0) ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !10, !range !18, !noundef !19
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !tbaa.struct !20
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !20
  %i.ai = load <2 x double>, ptr %i.ad, align 8, !tbaa !21
  %i.aj = load <2 x double>, ptr %1, align 8, !tbaa !21
  %i.ak = fsub <2 x double> %i.ai, %i.aj          ; 2 uses
  %i.al = fmul <2 x double> %i.ak, %i.ak          ; 2 uses
  %shift = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.al, %shift
  %i.am = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double %i.am, ptr %i.an, align 8, !tbaa !22
  br label %.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.ao = load <2 x double>, ptr %i.ad, align 8, !tbaa !21
  %i.ap = load <2 x double>, ptr %1, align 8, !tbaa !21
  %i.aq = fsub <2 x double> %i.ao, %i.ap          ; 2 uses
  %i.ar = fmul <2 x double> %i.aq, %i.aq          ; 2 uses
  %shift40 = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop41 = fadd <2 x double> %i.ar, %shift40
  %i.as = extractelement <2 x double> %foldExtExtBinop41, i64 0 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !22
  %i.av = fcmp olt double %i.as, %i.au
  br i1 %i.av, label %bb.k, label %_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom7PolygonERKNS3_10CoordinateERNS1_17PointPairDistanceE.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !tbaa.struct !20
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !20
  store double %i.as, ptr %i.at, align 8, !tbaa !22
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.i
  store i8 0, ptr %i.ae, align 8, !tbaa !10
  br label %_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom7PolygonERKNS3_10CoordinateERNS1_17PointPairDistanceE.exit

_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom7PolygonERKNS3_10CoordinateERNS1_17PointPairDistanceE.exit: ; preds = %.lr.ph.i, %.lr.ph, %.preheader, %.sink.split.i, %bb.j, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom10LineStringERKNS3_10CoordinateERNS1_17PointPairDistanceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::LineSegment", align 8 ; 9 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 16 ; 9 uses
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !23 ; 3 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.g, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.j, align 16, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr %3, ptr %i.a, align 16, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.k, align 8, !tbaa !26
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(24) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !20
  %.not15 = icmp eq i64 %i.f, 1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4geos9algorithm8distance17PointPairDistance10setMinimumERKNS_4geom10CoordinateES6_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph, %_ZN4geos9algorithm8distance17PointPairDistance10setMinimumERKNS_4geom10CoordinateES6_.exit
  %.014 = phi i64 [ 1, %.lr.ph ], [ %i.am, %_ZN4geos9algorithm8distance17PointPairDistance10setMinimumERKNS_4geom10CoordinateES6_.exit ] ; 3 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef nonnull align 8 dereferenceable(24) ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %.014)
  %i.w = and i64 %.014, 1
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.w
  %i.x = load ptr, ptr %5, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !20
  call void @_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.y = load i8, ptr %i.p, align 8, !tbaa !10, !range !18, !noundef !19
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull align 16 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !20
  %i.aa = load <2 x double>, ptr %4, align 16, !tbaa !21
  %i.ab = load <2 x double>, ptr %1, align 8, !tbaa !21
  %i.ac = fsub <2 x double> %i.aa, %i.ab          ; 2 uses
  %i.ad = fmul <2 x double> %i.ac, %i.ac          ; 2 uses
  %shift = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ad, %shift
  %i.ae = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.af = load <2 x double>, ptr %4, align 16, !tbaa !21
  %i.ag = load <2 x double>, ptr %1, align 8, !tbaa !21
  %i.ah = fsub <2 x double> %i.af, %i.ag          ; 2 uses
  %i.ai = fmul <2 x double> %i.ah, %i.ah          ; 2 uses
  %shift19 = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20 = fadd <2 x double> %i.ai, %shift19
  %i.aj = extractelement <2 x double> %foldExtExtBinop20, i64 0 ; 2 uses
  %i.ak = load double, ptr %i.q, align 8, !tbaa !22
  %i.al = fcmp olt double %i.aj, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN4geos9algorithm8distance17PointPairDistance10setMinimumERKNS_4geom10CoordinateES6_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull align 16 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !20
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.d
  %storemerge = phi double [ %i.aj, %bb.f ], [ %i.ae, %bb.d ]
  store double %storemerge, ptr %i.q, align 8, !tbaa !22
  store i8 0, ptr %i.p, align 8, !tbaa !10
  br label %_ZN4geos9algorithm8distance17PointPairDistance10setMinimumERKNS_4geom10CoordinateES6_.exit

_ZN4geos9algorithm8distance17PointPairDistance10setMinimumERKNS_4geom10CoordinateES6_.exit: ; preds = %bb.e, %.sink.split.i
  %i.am = add nuw i64 %.014, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !29

bb.g:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom7PolygonERKNS3_10CoordinateERNS1_17PointPairDistanceE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  tail call void @_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom10LineStringERKNS3_10CoordinateERNS1_17PointPairDistanceE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(57) %2)
  %i.b = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.c = tail call noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %.010)
  tail call void @_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom10LineStringERKNS3_10CoordinateERNS1_17PointPairDistanceE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(57) %2)
  %i.d = add nuw i64 %.010, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.d, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm8distance15DistanceToPoint15computeDistanceERKNS_4geom11LineSegmentERKNS3_10CoordinateERNS1_17PointPairDistanceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.a, align 16, !tbaa !24
  call void @_ZNK4geos4geom11LineSegment12closestPointERKNS0_10CoordinateERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !10, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !20
  %i.f = load <2 x double>, ptr %3, align 16, !tbaa !21
  %i.g = load <2 x double>, ptr %1, align 8, !tbaa !21
  %i.h = fsub <2 x double> %i.f, %i.g             ; 2 uses
  %i.i = fmul <2 x double> %i.h, %i.h             ; 2 uses
  %shift = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.i, %shift
  %i.j = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double %i.j, ptr %i.k, align 8, !tbaa !22
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.l = load <2 x double>, ptr %3, align 16, !tbaa !21
  %i.m = load <2 x double>, ptr %1, align 8, !tbaa !21
  %i.n = fsub <2 x double> %i.l, %i.m             ; 2 uses
  %i.o = fmul <2 x double> %i.n, %i.n             ; 2 uses
  %shift5 = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop6 = fadd <2 x double> %i.o, %shift5
  %i.p = extractelement <2 x double> %foldExtExtBinop6, i64 0 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !22
  %i.s = fcmp olt double %i.p, %i.r
  br i1 %i.s, label %bb.d, label %_ZN4geos9algorithm8distance17PointPairDistance10setMinimumERKNS_4geom10CoordinateES6_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !20
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !20
  store double %i.p, ptr %i.q, align 8, !tbaa !22
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.b
  store i8 0, ptr %i.b, align 8, !tbaa !10
  br label %_ZN4geos9algorithm8distance17PointPairDistance10setMinimumERKNS_4geom10CoordinateES6_.exit

_ZN4geos9algorithm8distance17PointPairDistance10setMinimumERKNS_4geom10CoordinateES6_.exit: ; preds = %bb.c, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret void
}

declare noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !14, i64 56}
!11 = !{!"_ZTSN4geos9algorithm8distance17PointPairDistanceE", !12, i64 0, !13, i64 48, !14, i64 56}
!12 = !{!"_ZTSSt5arrayIN4geos4geom10CoordinateELm2EE", !6, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = !{!"bool", !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{i64 0, i64 8, !21, i64 8, i64 8, !21, i64 16, i64 8, !21}
!21 = !{!13, !13, i64 0}
!22 = !{!11, !13, i64 48}
!23 = distinct !{null}
!24 = !{!25, !13, i64 16}
!25 = !{!"_ZTSN4geos4geom10CoordinateE", !13, i64 0, !13, i64 8, !13, i64 16}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !28, i64 0}
!28 = !{!"any pointer", !6, i64 0}
!29 = distinct !{!29, !16}
end_hunk_0
