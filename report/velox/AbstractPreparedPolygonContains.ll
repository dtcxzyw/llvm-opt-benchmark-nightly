inline.NumInlined: 118
inline.NumDeleted: 91
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::vector.18" = type { %"struct.std::_Vector_base.19" }
%"struct.std::_Vector_base.19" = type { %"struct.std::_Vector_base<const geos::noding::SegmentString *, std::allocator<const geos::noding::SegmentString *>>::_Vector_impl" }
%"struct.std::_Vector_base<const geos::noding::SegmentString *, std::allocator<const geos::noding::SegmentString *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const geos::noding::SegmentString *, std::allocator<const geos::noding::SegmentString *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const geos::noding::SegmentString *, std::allocator<const geos::noding::SegmentString *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.geos::algorithm::LineIntersector" = type <{ ptr, i64, [2 x [2 x ptr]], [2 x %"class.geos::geom::Coordinate"], [2 x [2 x i64]], i8, [7 x i8] }>
%"class.geos::geom::Coordinate" = type { double, double, double }
%"class.geos::noding::SegmentIntersectionDetector" = type { %"class.geos::noding::SegmentIntersector", ptr, i8, i8, i8, i8, i8, ptr, ptr }
%"class.geos::noding::SegmentIntersector" = type { ptr }
%"class.std::vector.60" = type { %"struct.std::_Vector_base.61" }
%"struct.std::_Vector_base.61" = type { %"struct.std::_Vector_base<const geos::geom::LineString *, std::allocator<const geos::geom::LineString *>>::_Vector_impl" }
%"struct.std::_Vector_base<const geos::geom::LineString *, std::allocator<const geos::geom::LineString *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const geos::geom::LineString *, std::allocator<const geos::geom::LineString *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const geos::geom::LineString *, std::allocator<const geos::geom::LineString *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr.65" = type { %"struct.std::__uniq_ptr_data.66" }
%"struct.std::__uniq_ptr_data.66" = type { %"class.std::__uniq_ptr_impl.67" }
%"class.std::__uniq_ptr_impl.67" = type { %"class.std::tuple.68" }
%"class.std::tuple.68" = type { %"struct.std::_Tuple_impl.69" }
%"struct.std::_Tuple_impl.69" = type { %"struct.std::_Head_base.72" }
%"struct.std::_Head_base.72" = type { ptr }

$_ZN4geos6noding17SegmentStringUtil21extractSegmentStringsEPKNS_4geom8GeometryERSt6vectorIPKNS0_13SegmentStringESaIS9_EE = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN4geos6noding18NodedSegmentStringE = external unnamed_addr constant { [9 x ptr] }, align 8
@_ZTVN4geos6noding27SegmentIntersectionDetectorE = external unnamed_addr constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos4geom4prep31AbstractPreparedPolygonContains48isProperIntersectionImpliesNotContainedSituationEPKNS0_8GeometryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.e = icmp eq i32 %i.d, 6
  br i1 %i.e, label %_ZN4geos4geom4prep31AbstractPreparedPolygonContains13isSingleShellERKNS0_8GeometryE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %_ZN4geos4geom4prep31AbstractPreparedPolygonContains13isSingleShellERKNS0_8GeometryE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9    ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.l) ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(40) %i.p), !inline_history !13
  %.not.i = icmp eq i64 %i.t, 1
  br i1 %.not.i, label %bb.d, label %_ZN4geos4geom4prep31AbstractPreparedPolygonContains13isSingleShellERKNS0_8GeometryE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 noundef 0), !inline_history !13
  %i.y = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %i.x)
  %i.z = icmp eq i64 %i.y, 0
  br label %_ZN4geos4geom4prep31AbstractPreparedPolygonContains13isSingleShellERKNS0_8GeometryE.exit

_ZN4geos4geom4prep31AbstractPreparedPolygonContains13isSingleShellERKNS0_8GeometryE.exit: ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ %i.z, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos4geom4prep31AbstractPreparedPolygonContains13isSingleShellERKNS0_8GeometryE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef 0)
  %i.i = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %i.h)
  %i.j = icmp eq i64 %i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom4prep31AbstractPreparedPolygonContains28findAndClassifyIntersectionsEPKNS0_8GeometryE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.18", align 8    ; 11 uses
  %3 = alloca %"class.geos::algorithm::LineIntersector", align 8 ; 10 uses
  %4 = alloca %"class.geos::noding::SegmentIntersectionDetector", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN4geos6noding17SegmentStringUtil21extractSegmentStringsEPKNS_4geom8GeometryERSt6vectorIPKNS0_13SegmentStringESaIS9_EE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.a, align 8, !tbaa !14
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i8 0, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos6noding27SegmentIntersectionDetectorE, i64 16), ptr %4, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.e, i8 0, i64 5, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.g, align 1, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = invoke noundef ptr @_ZNK4geos4geom4prep15PreparedPolygon21getIntersectionFinderEv(ptr noundef nonnull align 8 dereferenceable(96) %i.i)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef zeroext i1 @_ZN4geos6noding32FastSegmentSetIntersectionFinder10intersectsEPSt6vectorIPKNS0_13SegmentStringESaIS5_EEPNS0_27SegmentIntersectionDetectorE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull %2, ptr noundef nonnull %4)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.m = load i8, ptr %i.l, align 2, !tbaa !29, !range !30, !noundef !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.m, ptr %i.n, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 19
  %i.p = load i8, ptr %i.o, align 1, !tbaa !34, !range !30, !noundef !31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.p, ptr %i.q, align 1, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.s = load i8, ptr %i.r, align 4, !tbaa !36, !range !30, !noundef !31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.s, ptr %i.t, align 2, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38   ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !42     ; 4 uses
  %.not = icmp eq ptr %i.v, %i.w
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %bb.d
  %5 = phi ptr [ %i.w, %bb.d ], [ %8, %bb.k ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos6noding27SegmentIntersectionDetectorE, i64 16), ptr %4, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN4geos6noding27SegmentIntersectionDetectorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #9, !inline_history !44
  %.pre20 = load ptr, ptr %2, align 8, !tbaa !42
  br label %_ZN4geos6noding27SegmentIntersectionDetectorD2Ev.exit

_ZN4geos6noding27SegmentIntersectionDetectorD2Ev.exit: ; preds = %._crit_edge, %bb.e
  %6 = phi ptr [ %5, %._crit_edge ], [ %.pre20, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.not.i.i.i = icmp eq ptr %6, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4geos6noding27SegmentIntersectionDetectorD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %6) #10
  br label %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EED2Ev.exit: ; preds = %_ZN4geos6noding27SegmentIntersectionDetectorD2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos6noding27SegmentIntersectionDetectorE, i64 16), ptr %4, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN4geos6noding27SegmentIntersectionDetectorD2Ev.exit15, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(40) %i.ak) #9, !inline_history !44
  br label %_ZN4geos6noding27SegmentIntersectionDetectorD2Ev.exit15

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %7 = phi ptr [ %8, %bb.k ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %.0718 = phi i64 [ %i.av, %bb.k ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0718
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aq) #9
  %.pre = load ptr, ptr %2, align 8, !tbaa !42
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %8 = phi ptr [ %7, %.lr.ph ], [ %.pre, %bb.j ]  ; 2 uses
  %i.av = add nuw i64 %.0718, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %i.aa
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

_ZN4geos6noding27SegmentIntersectionDetectorD2Ev.exit15: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.l

bb.l:                                             ; preds = %_ZN4geos6noding27SegmentIntersectionDetectorD2Ev.exit15, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %_ZN4geos6noding27SegmentIntersectionDetectorD2Ev.exit15 ], [ %i.ah, %bb.g ]
  %i.aw = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EED2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #10
  br label %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EED2Ev.exit17

_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EED2Ev.exit17: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos6noding17SegmentStringUtil21extractSegmentStringsEPKNS_4geom8GeometryERSt6vectorIPKNS0_13SegmentStringESaIS9_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.60", align 8    ; 10 uses
  %3 = alloca %"class.std::unique_ptr.65", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN4geos4geom4util24LinearComponentExtracter8getLinesERKNS0_8GeometryERSt6vectorIPKNS0_10LineStringESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !52     ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  %.pre24 = load ptr, ptr %2, align 8, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.j = phi ptr [ %.pre24, %._crit_edge.loopexit ], [ %i.c, %bb.b ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.j) #10
  br label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  %.01223 = phi i64 [ 0, %.lr.ph ], [ %i.au, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.01223
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.65") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.r = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #11
          to label %bb.g unwind label %.loopexit  ; 8 uses

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %3, align 8, !tbaa !55
  store ptr null, ptr %3, align 8, !tbaa !55
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %0, ptr %i.t, align 8, !tbaa !57
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4geos6noding18NodedSegmentStringE, i64 16), ptr %i.r, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i8 0, i64 25, i1 false)
  store ptr %i.r, ptr %i.v, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr %i.s, ptr %i.w, align 8, !tbaa !55
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !38   ; 4 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i, label %bb.h, label %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE9push_backEOS4_.exit.thread

_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE9push_backEOS4_.exit.thread: ; preds = %bb.g
  store ptr %i.r, ptr %i.x, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.z, ptr %i.h, align 8, !tbaa !38
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %1, align 8, !tbaa !42    ; 4 uses
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.i, label %_ZNKSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 4 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #11
          to label %.noexc16 unwind label %.loopexit ; 6 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %i.r, ptr %i.am, align 8, !tbaa !45
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.j, label %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.j:                                             ; preds = %.noexc16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.j, %.noexc16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE9push_backEOS4_.exit.thread35, label %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE9push_backEOS4_.exit.thread35: ; preds = %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.al, ptr %1, align 8, !tbaa !42
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !61
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #10
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !55 ; 3 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !42
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !61
  %.not.i = icmp eq ptr %.pre.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE9push_backEOS4_.exit
  %i.ar = load ptr, ptr %.pre.pre, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pre.pre) #9, !inline_history !62
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE9push_backEOS4_.exit.thread35, %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE9push_backEOS4_.exit.thread, %_ZNSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE9push_backEOS4_.exit, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.au = add nuw i64 %.01223, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %i.g
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !63

bb.k:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit19

.loopexit:                                        ; preds = %bb.f, %_ZNKSt6vectorIPKN4geos6noding13SegmentStringESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
end_hunk_0
