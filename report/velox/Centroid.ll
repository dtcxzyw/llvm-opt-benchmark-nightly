inline.NumInlined: 68
inline.NumDeleted: 37
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.geos::algorithm::Centroid" = type <{ %"class.std::unique_ptr", %"class.geos::geom::Coordinate", %"class.geos::geom::Coordinate", %"class.geos::geom::Coordinate", %"class.geos::geom::Coordinate", double, double, i32, [4 x i8] }>
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.geos::geom::Coordinate" = type { double, double, double }

@_ZTIN4geos4geom8GeometryE = external constant ptr
@_ZTIN4geos4geom5PointE = external constant ptr
@_ZTIN4geos4geom10LineStringE = external constant ptr
@_ZTIN4geos4geom7PolygonE = external constant ptr
@_ZTIN4geos4geom18GeometryCollectionE = external constant ptr

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9algorithm8Centroid11getCentroidERKNS_4geom8GeometryERNS2_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::algorithm::Centroid", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %2, i8 0, i64 24, i1 false)
  store double +qnan, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.g, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.h, i8 0, i64 20, i1 false)
  invoke void @_ZN4geos9algorithm8Centroid3addERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZN4geos9algorithm8CentroidC2ERKNS_4geom8GeometryE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4geos4geom10CoordinateESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4geos4geom10CoordinateEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom10CoordinateEEclEPS2_.exit.i.i: ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #11
  br label %_ZNSt10unique_ptrIN4geos4geom10CoordinateESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN4geos4geom10CoordinateESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom10CoordinateEEclEPS2_.exit.i.i, %bb.b
  resume { ptr, i32 } %i.i

_ZN4geos9algorithm8CentroidC2ERKNS_4geom8GeometryE.exit: ; preds = %bb.a
  %i.k = load double, ptr %i.h, align 8, !tbaa !14 ; 3 uses
  %i.l = fcmp ueq double %i.k, 0.000000e+00
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4geos9algorithm8CentroidC2ERKNS_4geom8GeometryE.exit
  %i.m = load <2 x double>, ptr %i.b, align 8, !tbaa !22
  %i.n = fdiv <2 x double> %i.m, <double 3.000000e+00, double 1.000000e+00>
  %3 = insertelement <2 x double> <double poison, double 3.000000e+00>, double %i.k, i64 0
  %4 = fdiv <2 x double> %i.n, %3                 ; 2 uses
  %5 = extractelement <2 x double> %4, i64 0
  store double %5, ptr %1, align 8, !tbaa !23
  %i.o = extractelement <2 x double> %4, i64 1
  %i.p = fdiv double %i.o, %i.k
  br label %.sink.split.i

bb.d:                                             ; preds = %_ZN4geos9algorithm8CentroidC2ERKNS_4geom8GeometryE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.r = load double, ptr %i.q, align 8, !tbaa !24 ; 2 uses
  %i.s = fcmp ogt double %i.r, 0.000000e+00
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load <2 x double>, ptr %i.d, align 8, !tbaa !22
  %i.u = insertelement <2 x double> poison, double %i.r, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fdiv <2 x double> %i.t, %i.v             ; 2 uses
  %i.x = extractelement <2 x double> %i.w, i64 0
  store double %i.x, ptr %1, align 8, !tbaa !23
  %i.y = extractelement <2 x double> %i.w, i64 1
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_ZNK4geos9algorithm8Centroid11getCentroidERNS_4geom10CoordinateE.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = uitofp nneg i32 %i.aa to double
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !22
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fdiv <2 x double> %i.ad, %i.af          ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  store double %i.ah, ptr %1, align 8, !tbaa !23
  %i.ai = extractelement <2 x double> %i.ag, i64 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.e, %bb.c
  %.sink.i = phi double [ %i.p, %bb.c ], [ %i.ai, %bb.g ], [ %i.y, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %.sink.i, ptr %i.aj, align 8, !tbaa !26
  br label %_ZNK4geos9algorithm8Centroid11getCentroidERNS_4geom10CoordinateE.exit

_ZNK4geos9algorithm8Centroid11getCentroidERNS_4geom10CoordinateE.exit: ; preds = %.sink.split.i, %bb.f
  %.0.i = phi i1 [ false, %bb.f ], [ true, %.sink.split.i ]
  %i.ak = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i3, label %_ZN4geos9algorithm8CentroidD2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom10CoordinateEEclEPS2_.exit.i.i4

_ZNKSt14default_deleteIN4geos4geom10CoordinateEEclEPS2_.exit.i.i4: ; preds = %_ZNK4geos9algorithm8Centroid11getCentroidERNS_4geom10CoordinateE.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.ak) #11
  br label %_ZN4geos9algorithm8CentroidD2Ev.exit

_ZN4geos9algorithm8CentroidD2Ev.exit:             ; preds = %_ZNK4geos9algorithm8Centroid11getCentroidERNS_4geom10CoordinateE.exit, %_ZNKSt14default_deleteIN4geos4geom10CoordinateEEclEPS2_.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i1 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK4geos9algorithm8Centroid11getCentroidERNS_4geom10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  %i.c = fcmp ueq double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load <2 x double>, ptr %i.d, align 8, !tbaa !22
  %i.f = fdiv <2 x double> %i.e, <double 3.000000e+00, double 1.000000e+00>
  %2 = insertelement <2 x double> <double poison, double 3.000000e+00>, double %i.b, i64 0
  %3 = fdiv <2 x double> %i.f, %2                 ; 2 uses
  %4 = extractelement <2 x double> %3, i64 0
  store double %4, ptr %1, align 8, !tbaa !23
  %i.g = extractelement <2 x double> %3, i64 1
  %i.h = fdiv double %i.g, %i.b
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load double, ptr %i.i, align 8, !tbaa !24 ; 2 uses
  %i.k = fcmp ogt double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !22
  %i.n = insertelement <2 x double> poison, double %i.j, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fdiv <2 x double> %i.m, %i.o             ; 2 uses
  %i.q = extractelement <2 x double> %i.p, i64 0
  store double %i.q, ptr %1, align 8, !tbaa !23
  %i.r = extractelement <2 x double> %i.p, i64 1
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load i32, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = uitofp nneg i32 %i.t to double
  %i.x = load <2 x double>, ptr %i.v, align 8, !tbaa !22
  %i.y = insertelement <2 x double> poison, double %i.w, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fdiv <2 x double> %i.x, %i.z            ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0
  store double %i.ab, ptr %1, align 8, !tbaa !23
  %i.ac = extractelement <2 x double> %i.aa, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.f, %bb.b
  %.sink = phi double [ %i.h, %bb.b ], [ %i.ac, %bb.f ], [ %i.r, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %.sink, ptr %i.ad, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %.sink.split ]
  ret i1 %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm8Centroid3addERKNS_4geom8GeometryE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom5PointE, i64 0) #10 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(82) %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = load <2 x double>, ptr %i.i, align 8, !tbaa !22
  %i.o = load <2 x double>, ptr %i.m, align 8, !tbaa !22
  %i.p = fadd <2 x double> %i.n, %i.o
  store <2 x double> %i.p, ptr %i.m, align 8, !tbaa !22
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.q = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom10LineStringE, i64 0) #10 ; 2 uses
  %.not21 = icmp eq ptr %i.q, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.q)
  tail call void @_ZN4geos9algorithm8Centroid15addLineSegmentsERKNS_4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.s = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom7PolygonE, i64 0) #10 ; 2 uses
  %.not22 = icmp eq ptr %i.s, null
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4geos9algorithm8Centroid3addERKNS_4geom7PolygonE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.s)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.t = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom18GeometryCollectionE, i64 0) #10 ; 7 uses
  %.not23 = icmp eq ptr %i.t, null
  br i1 %.not23, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(64) %i.t)
  %.not25 = icmp eq i64 %i.x, 0
  br i1 %.not25, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.024 = phi i64 [ %i.ac, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 noundef %.024)
  tail call void @_ZN4geos9algorithm8Centroid3addERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ab)
  %i.ac = add nuw i64 %.024, 1                    ; 2 uses
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i64 %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.t)
  %i.ah = icmp ult i64 %i.ac, %i.ag
  br i1 %i.ah, label %.lr.ph, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.c, %bb.g, %bb.h, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9algorithm8Centroid8addPointERKNS_4geom10CoordinateE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(124) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load <2 x double>, ptr %1, align 8, !tbaa !22
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !22
  %i.g = fadd <2 x double> %i.e, %i.f
  store <2 x double> %i.g, ptr %i.d, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm8Centroid15addLineSegmentsERKNS_4geom18CoordinateSequenceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !31 ; 2 uses
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !24
  %i.j = fadd double %.0.lcssa, %i.i
  store double %i.j, ptr %i.h, align 8, !tbaa !24
  %i.k = fcmp oeq double %.0.lcssa, 0.000000e+00
  %i.l = icmp ne i64 %i.d, 0
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.e, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.031 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.02830 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.d ] ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.02830), !inline_history !32
  %i.q = add nuw i64 %.02830, 1                   ; 5 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.q), !inline_history !32
  %i.v = load <2 x double>, ptr %i.p, align 8, !tbaa !22
  %i.w = load <2 x double>, ptr %i.u, align 8, !tbaa !22
  %i.x = fsub <2 x double> %i.v, %i.w             ; 2 uses
  %i.y = fmul <2 x double> %i.x, %i.x             ; 2 uses
  %shift = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.y, %shift
  %i.z = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.aa = fcmp oeq double %i.z, 0.000000e+00
end_hunk_0
