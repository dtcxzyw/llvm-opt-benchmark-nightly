inline.NumInlined: 578
inline.NumDeleted: 321
begin_hunk_0
@_ZTSN4geos4geom8Geometry21GeometryChangedFilterE = constant [45 x i8] c"N4geos4geom8Geometry21GeometryChangedFilterE\00", align 1
@_ZTIN4geos4geom23GeometryComponentFilterE = external constant ptr
@_ZZ19getMachineByteOrdervE12endian_check = linkonce_odr local_unnamed_addr global i32 1, comdat, align 4
@_ZTVN4geos4util27UniqueCoordinateArrayFilterE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4geos4util27UniqueCoordinateArrayFilterE, ptr @_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev, ptr @_ZN4geos4util27UniqueCoordinateArrayFilterD0Ev, ptr @_ZNK4geos4geom16CoordinateFilter9filter_rwEPNS0_10CoordinateE, ptr @_ZN4geos4util27UniqueCoordinateArrayFilter9filter_roEPKNS_4geom10CoordinateE] }, comdat, align 8
@_ZTIN4geos4util27UniqueCoordinateArrayFilterE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util27UniqueCoordinateArrayFilterE, ptr @_ZTIN4geos4geom16CoordinateFilterE }, comdat, align 8
@_ZTSN4geos4util27UniqueCoordinateArrayFilterE = linkonce_odr constant [42 x i8] c"N4geos4util27UniqueCoordinateArrayFilterE\00", comdat, align 1
@_ZTIN4geos4geom16CoordinateFilterE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos4geom16CoordinateFilterE }, comdat, align 8
@_ZTSN4geos4geom16CoordinateFilterE = linkonce_odr constant [31 x i8] c"N4geos4geom16CoordinateFilterE\00", comdat, align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"IllegalArgumentException\00", align 1
@_ZTVN4geos4util24IllegalArgumentExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util24IllegalArgumentExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVN4geos4util13GEOSExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4util13GEOSExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4geos4util13GEOSExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN4geos4geom8GeometryD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4geos4geom8GeometryD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4geom11geosversionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.c, align 2, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4geom7jtsportB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.c, align 2, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom23GeometryComponentFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom8GeometryC2EPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 16), (24, 40)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 464) (i8, ptr @_ZTVN4geos4geom8GeometryE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.c, align 8, !tbaa !28
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef ptr @_ZN4geos4geom15GeometryFactory18getDefaultInstanceEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %i.b, align 8, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i: ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #25
  br label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.h = phi ptr [ %i.e, %bb.c ], [ %1, %bb.a ]   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.j, ptr %i.k, align 8, !tbaa !37
  invoke void @_ZNK4geos4geom15GeometryFactory6addRefEv(ptr noundef nonnull align 8 dereferenceable(45) %i.h)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  ret void
}

declare noundef ptr @_ZN4geos4geom15GeometryFactory18getDefaultInstanceEv() local_unnamed_addr #4

declare void @_ZNK4geos4geom15GeometryFactory6addRefEv(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom8GeometryC2ERKS1_(ptr noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 464) (i8, ptr @_ZTVN4geos4geom8GeometryE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.e, ptr %i.f, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE5resetEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !tbaa.struct !38
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i: ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #25
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE5resetEPS2_.exit

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE5resetEPS2_.exit, %bb.c, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i: ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #25
  br label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i
  resume { ptr, i32 } %i.o

_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i, %bb.d, %bb.b
  %i.q = phi ptr [ %.pre, %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i ], [ %i.i, %bb.d ], [ %i.i, %bb.b ]
  invoke void @_ZNK4geos4geom15GeometryFactory6addRefEv(ptr noundef nonnull align 8 dereferenceable(45) %i.q)
          to label %bb.f unwind label %bb.e

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE5resetEPS2_.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos4geom8Geometry15hasNullElementsEPKNS0_18CoordinateSequenceE(ptr noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not9.not = icmp eq i64 %i.d, 0
  br i1 %.not9.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0710 = phi i64 [ %i.i, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.0710) ; 3 uses
  %1 = load double, ptr %i.h, align 8, !tbaa !40
  %2 = fcmp uno double %1, 0.000000e+00
  %3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %4 = load double, ptr %3, align 8
  %5 = fcmp uno double %4, 0.000000e+00
  %or.cond.i = select i1 %2, i1 %5, i1 false
  %6 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %7 = load double, ptr %6, align 8
  %8 = fcmp uno double %7, 0.000000e+00
  %9 = select i1 %or.cond.i, i1 %8, i1 false      ; 2 uses
  %i.i = add nuw i64 %.0710, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %i.d
  %or.cond = select i1 %9, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !42

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %9, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4geos4geom8Geometry16isWithinDistanceEPKS1_d(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, double noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4geos9operation8distance10DistanceOp16isWithinDistanceERKNS_4geom8GeometryES6_d(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, double noundef %2)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZN4geos9operation8distance10DistanceOp16isWithinDistanceERKNS_4geom8GeometryES6_d(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom8Geometry11getCentroidEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.a, align 8, !tbaa !44
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef zeroext i8 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.l = zext i8 %i.k to i64
  call void @_ZNK4geos4geom15GeometryFactory11createPointEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.g, i64 noundef %i.l)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = call noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr %i.m, ptr %0, align 8, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

declare void @_ZNK4geos4geom15GeometryFactory11createPointEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8, ptr noundef nonnull align 8 dereferenceable(45), i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4geos4geom8Geometry11getCentroidERNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br i1 %i.d, label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4geos9algorithm8Centroid11getCentroidERKNS_4geom8GeometryERNS2_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.e, label %bb.c, label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !47
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load double, ptr %1, align 8, !tbaa !40
  %i.l = tail call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.h, double noundef %i.k)
  store double %i.l, ptr %1, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !48
  %i.o = tail call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.h, double noundef %i.n)
  store double %i.o, ptr %i.m, align 8, !tbaa !48
  br label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit

_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.d ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN4geos9algorithm8Centroid11getCentroidERKNS_4geom8GeometryERNS2_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @_ZNK4geos4geom8Geometry17getPrecisionModelEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom8Geometry16getInteriorPointEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 8 ; 8 uses
  %3 = alloca %"class.geos::algorithm::InteriorPointPoint", align 8 ; 5 uses
  %4 = alloca %"class.geos::algorithm::InteriorPointLine", align 8 ; 5 uses
  %5 = alloca %"class.geos::algorithm::InteriorPointArea", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.a, align 8, !tbaa !44
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %1)
  switch i32 %i.e, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN4geos9algorithm18InteriorPointPointC1EPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %1)
  %i.f = call noundef zeroext i1 @_ZNK4geos9algorithm18InteriorPointPoint16getInteriorPointERNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = load ptr, ptr %1, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef zeroext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.m = zext i8 %i.l to i64
  call void @_ZNK4geos4geom15GeometryFactory11createPointEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.h, i64 noundef %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN4geos9algorithm17InteriorPointLineC1EPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %1)
  %i.n = call noundef zeroext i1 @_ZNK4geos9algorithm17InteriorPointLine16getInteriorPointERNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.n, label %.critedge12, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.q = load ptr, ptr %1, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef zeroext i8 %i.s(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.u = zext i8 %i.t to i64
  call void @_ZNK4geos4geom15GeometryFactory11createPointEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.p, i64 noundef %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN4geos9algorithm17InteriorPointAreaC1EPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %1)
  %i.v = call noundef zeroext i1 @_ZNK4geos9algorithm17InteriorPointArea16getInteriorPointERNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.v, label %.critedge14, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.y = load ptr, ptr %1, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef zeroext i8 %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.ac = zext i8 %i.ab to i64
  call void @_ZNK4geos4geom15GeometryFactory11createPointEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.x, i64 noundef %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.i

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.h

.critedge12:                                      ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.h

.critedge14:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.h

bb.h:                                             ; preds = %.critedge14, %.critedge12, %.critedge
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.af = call noundef ptr @_ZNK4geos4geom15GeometryFactory28createPointFromInternalCoordEPKNS0_10CoordinateEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(45) %i.ae, ptr noundef nonnull %2, ptr noundef nonnull %1)
  store ptr %i.af, ptr %0, align 8, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.g, %bb.e, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

declare void @_ZN4geos9algorithm18InteriorPointPointC1EPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4geos9algorithm18InteriorPointPoint16getInteriorPointERNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN4geos9algorithm17InteriorPointLineC1EPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4geos9algorithm17InteriorPointLine16getInteriorPointERNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN4geos9algorithm17InteriorPointAreaC1EPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4geos9algorithm17InteriorPointArea16getInteriorPointERNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef ptr @_ZNK4geos4geom15GeometryFactory28createPointFromInternalCoordEPKNS0_10CoordinateEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom8Geometry15geometryChangedEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @_ZN4geos4geom8Geometry21geometryChangedFilterE)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4geos4geom8Geometry21geometryChangedActionEv(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #25
  br label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4geos4geom8Geometry7isValidEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.geos::operation::valid::IsValidOp", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr %0, ptr %1, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !60
  %i.c = invoke noundef zeroext i1 @_ZN4geos9operation5valid9IsValidOp7isValidEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef nonnull %i.d) #25
  br label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit

_ZN4geos9operation5valid9IsValidOpD2Ev.exit:      ; preds = %bb.b, %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i1 %i.c

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.f, null
  br i1 %.not.i.i2, label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit4, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i3

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i3: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.f) #25
  br label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit4

_ZN4geos9operation5valid9IsValidOpD2Ev.exit4:     ; preds = %bb.c, %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.e
}

declare noundef zeroext i1 @_ZN4geos9operation5valid9IsValidOp7isValidEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom8Geometry11getEnvelopeEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %1, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(40) %1)
  tail call void @_ZNK4geos4geom15GeometryFactory10toGeometryEPKNS0_8EnvelopeE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.b, ptr noundef %i.f)
  ret void
}

declare void @_ZNK4geos4geom15GeometryFactory10toGeometryEPKNS0_8EnvelopeE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8, ptr noundef nonnull align 8 dereferenceable(45), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK4geos4geom8Geometry19getEnvelopeInternalEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.c = load ptr, ptr %0, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.f = load ptr, ptr %1, align 8, !tbaa !29
  store ptr null, ptr %1, align 8, !tbaa !29
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !29
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef nonnull %i.g) #25
  %.pr = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EEaSEOS5_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr) #25
  br label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EEaSEOS5_.exit, %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit, %bb.a
  %i.h = phi ptr [ %.pre, %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit ], [ %i.b, %bb.a ]
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4geos4geom8Geometry8disjointEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.26", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0) ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 4 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !64
  %i.l = fcmp ugt double %i.i, %i.k
  br i1 %i.l, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !64
  %i.o = load double, ptr %i.d, align 8, !tbaa !62
  %i.p = fcmp ult double %i.n, %i.o
  br i1 %i.p, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !66
  %i.u = fcmp ugt double %i.r, %i.t
  br i1 %i.u, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit

_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit:   ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !66
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !65
  %i.z = fcmp ult double %i.w, %i.y
  br i1 %i.z, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN4geos9operation6relate8RelateOp6relateEPKNS_4geom8GeometryES6_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.26") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1)
  %i.aa = load ptr, ptr %2, align 8, !tbaa !67
  %i.ab = invoke noundef zeroext i1 @_ZNK4geos4geom18IntersectionMatrix10isDisjointEv(ptr noundef nonnull align 4 dereferenceable(36) %i.aa)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
end_hunk_0
begin_hunk_1_@_ZNK4geos4geom8Geometry17isEquivalentClassEPKS1_:bb.a
  br label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ %i.r, %bb.e ]
  ret i1 %.0.i
}

declare void @__cxa_bad_typeid() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom8Geometry26checkNotGeometryCollectionEPKS1_(ptr noundef %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.e = icmp eq i32 %i.d, 7
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !146    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 24, ptr %i.a, align 8, !tbaa !147
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !146
  %i.d = load i64, ptr %i.a, align 8, !tbaa !147  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.4, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !11
  %i.f = load ptr, ptr %2, align 8, !tbaa !146
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !146    ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util24IllegalArgumentExceptionE, i64 16), ptr %0, align 8, !tbaa !15
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !146    ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4geos4geom8Geometry21GeometryChangedFilter9filter_rwEPS1_(ptr nonnull readnone align 8 captures(none) %0, ptr noundef captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4geos4geom8Geometry21geometryChangedActionEv.exit, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #25
  br label %_ZN4geos4geom8Geometry21geometryChangedActionEv.exit

_ZN4geos4geom8Geometry21geometryChangedActionEv.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -1, 2) i32 @_ZNK4geos4geom8Geometry7compareESt6vectorINS0_10CoordinateESaIS3_EES5_(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !151    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %exitcond.not40 = icmp eq ptr %i.b, %i.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.j = load ptr, ptr %2, align 8, !tbaa !151    ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  br i1 %exitcond.not40, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit
  %i.n = add nuw i64 %.01641, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.g
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !148
  %i.p = load ptr, ptr %2, align 8, !tbaa !151    ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !152

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.t = phi i64 [ %i.s, %bb.b ], [ %i.m, %bb.a ]
  %i.u = phi ptr [ %i.p, %bb.b ], [ %i.j, %bb.a ]
  %.01641 = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.v = sdiv exact i64 %i.t, 24
  %i.w = icmp ult i64 %.01641, %i.v
  br i1 %i.w, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.01641 ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.01641 ; 2 uses
  %i.z = load double, ptr %i.x, align 8, !tbaa !40 ; 2 uses
  %i.aa = load double, ptr %i.y, align 8, !tbaa !40 ; 2 uses
  %i.ab = fcmp olt double %i.z, %i.aa
  br i1 %i.ab, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = fcmp ogt double %i.z, %i.aa
  br i1 %i.ac, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !48 ; 2 uses
  %i.ah = fcmp olt double %i.ae, %i.ag
  br i1 %i.ah, label %.critedge.thread, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit

_ZNK4geos4geom10Coordinate9compareToERKS1_.exit:  ; preds = %bb.e
  %i.ai = fcmp ogt double %i.ae, %i.ag
  br i1 %i.ai, label %.critedge.thread, label %bb.b, !llvm.loop !152

.critedge:                                        ; preds = %bb.b, %bb.a
  %.lcssa = phi i64 [ %i.m, %bb.a ], [ %i.s, %bb.b ]
  %i.aj = icmp ult i64 %i.f, %.lcssa
  %. = sext i1 %i.aj to i32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph, %bb.e, %bb.c, %bb.d, %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit, %.critedge
  %.2 = phi i32 [ %., %.critedge ], [ -1, %bb.c ], [ 1, %.lr.ph ], [ -1, %bb.e ], [ 1, %bb.d ], [ 1, %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK4geos4geom8Geometry7compareESt6vectorIPS1_SaIS3_EES5_(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.016 = phi i64 [ 0, %bb.a ], [ %i.y, %bb.d ]   ; 5 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !105
  %i.d = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp ult i64 %.016, %i.h
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.k = load ptr, ptr %2, align 8, !tbaa !102    ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %i.p = icmp ult i64 %.016, %i.o                 ; 2 uses
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.016
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !98   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.016
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 352
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef %i.t) ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  %i.y = add nuw i64 %.016, 1
  br i1 %.not, label %bb.b, label %.critedge.thread, !llvm.loop !153

.critedge:                                        ; preds = %bb.b
  %. = sext i1 %i.p to i32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %bb.d, %.critedge
  %.2 = phi i32 [ %., %.critedge ], [ 1, %bb.c ], [ %i.x, %bb.d ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK4geos4geom8Geometry7compareERKSt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS6_EESA_(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.022 = phi i64 [ 0, %bb.a ], [ %i.y, %bb.d ]   ; 5 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !154
  %i.d = load ptr, ptr %1, align 8, !tbaa !157    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp ult i64 %.022, %i.h
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !154
  %i.k = load ptr, ptr %2, align 8, !tbaa !157    ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %i.p = icmp ult i64 %.022, %i.o                 ; 2 uses
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.022
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !98   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.022
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 352
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef %i.t) ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  %i.y = add nuw i64 %.022, 1
  br i1 %.not, label %bb.b, label %.critedge.thread, !llvm.loop !158

.critedge:                                        ; preds = %bb.b
  %. = sext i1 %i.p to i32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %bb.d, %.critedge
  %.2 = phi i32 [ %., %.critedge ], [ 1, %bb.c ], [ %i.x, %bb.d ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK4geos4geom8Geometry8distanceEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZN4geos9operation8distance10DistanceOp8distanceEPKNS_4geom8GeometryES6_(ptr noundef nonnull %0, ptr noundef %1)
  ret double %i.a
}

declare noundef double @_ZN4geos9operation8distance10DistanceOp8distanceEPKNS_4geom8GeometryES6_(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_ZNK4geos4geom8Geometry7getAreaEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #12 align 2 {
bb.a:
  ret double 0.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_ZNK4geos4geom8Geometry9getLengthEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #12 align 2 {
bb.a:
  ret double 0.000000e+00
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4geos4geom8GeometryD2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 464) (i8, ptr @_ZTVN4geos4geom8GeometryE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  invoke void @_ZNK4geos4geom15GeometryFactory7dropRefEv(ptr noundef nonnull align 8 dereferenceable(45) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i: ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #25
  br label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #28
  unreachable
}

declare void @_ZNK4geos4geom15GeometryFactory7dropRefEv(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN4geos4geom8GeometryD0Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(40) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @llvm.trap() #28
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos4geom19GeometryGreaterThenclEPKNS0_8GeometryES4_(ptr noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2)
  %i.e = icmp sgt i32 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos4geom8Geometry5equalERKNS0_10CoordinateES4_d(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, double noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = fcmp oeq double %3, 0.000000e+00
  %i.b = load double, ptr %1, align 8, !tbaa !40  ; 2 uses
  %i.c = load double, ptr %2, align 8, !tbaa !40  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp oeq double %i.b, %i.c
  %i.i = fcmp oeq double %i.e, %i.g
  %.0.i.i = select i1 %i.h, i1 %i.i, i1 false
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = fsub double %i.b, %i.c                   ; 2 uses
  %i.k = fsub double %i.e, %i.g                   ; 2 uses
  %i.l = fmul double %i.j, %i.j
  %i.m = fmul double %i.k, %i.k
  %i.n = fadd double %i.l, %i.m
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.n)
  %i.o = fcmp ole double %sqrt.i, %3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %.0.i.i, %bb.b ], [ %i.o, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom8Geometry8apply_roEPNS0_14GeometryFilterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom8Geometry8apply_rwEPNS0_14GeometryFilterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom8Geometry8apply_roEPNS0_23GeometryComponentFilterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom8Geometry8apply_rwEPNS0_23GeometryComponentFilterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4geos4geom8Geometry8isSimpleEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.geos::operation::valid::IsSimpleOp", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos9algorithm16BoundaryNodeRule19getBoundaryRuleMod2Ev() ; 2 uses
  store ptr %0, ptr %1, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 2), !inline_history !159
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  store i8 %i.h, ptr %i.b, align 8, !tbaa !160
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 0, ptr %i.i, align 1, !tbaa !165
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 0, ptr %i.j, align 2, !tbaa !166
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.k, i8 0, i64 25, i1 false)
  %i.l = invoke noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp8isSimpleEv(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdlPv(ptr noundef nonnull %i.m) #25
  br label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit

_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit:    ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i1 %i.l

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i2, label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdlPv(ptr noundef nonnull %i.o) #25
  br label %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit3

_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit3:   ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.n
}

declare noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp8isSimpleEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #4

declare void @_ZN4geos4geom23GeometryComponentFilter9filter_roEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4geos4geom23GeometryComponentFilter6isDoneEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom8Geometry21GeometryChangedFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK4geos4geom8Geometry7getSRIDEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom8Geometry7setSRIDEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 8, !tbaa !37
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK4geos4geom8Geometry16getNumGeometriesEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK4geos4geom8Geometry12getGeometryNEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4geos4geom8Geometry11isRectangleEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4geos4geom8Geometry12hasDimensionENS0_9Dimension13DimensionTypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.e = icmp eq i32 %i.d, %1
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4geos4geom8Geometry17isDimensionStrictENS0_9Dimension13DimensionTypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.e = icmp eq i32 %1, %i.d
  ret i1 %i.e
}

declare noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #18

declare noundef zeroext i1 @_ZN4geos9operation9predicate19RectangleIntersects10intersectsERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4geos4geom8Envelope6coversERKS1_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4geos9operation9predicate17RectangleContains8containsERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos4util27UniqueCoordinateArrayFilterE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88
  invoke void @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3setIPKN4geos4geom10CoordinateENS1_18CoordinateLessThenESaIS4_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZNSt3setIPKN4geos4geom10CoordinateENS1_18CoordinateLessThenESaIS4_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util27UniqueCoordinateArrayFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos4util27UniqueCoordinateArrayFilterE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88
  invoke void @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev.exit unwind label %bb.b, !inline_history !92

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28, !inline_history !92
  unreachable

_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev.exit: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4geos4geom16CoordinateFilter9filter_rwEPNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util27UniqueCoordinateArrayFilter9filter_roEPKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !167
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = call { ptr, i8 } @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE16_M_insert_uniqueIRKS4_EESt4pairISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.c, 1
  %i.d = trunc i8 %.fca.1.extract to i1
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE9push_backERKS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !168, !nonnull !176, !align !177 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !178  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !179
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !167
  store ptr %i.k, ptr %i.h, align 8, !tbaa !167
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !178
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE9push_backERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !93   ; 4 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #29
  unreachable

_ZNKSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !167
  store ptr %i.z, ptr %i.y, align 8, !tbaa !167
  %i.aa = icmp sgt i64 %i.p, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.not.i17.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.m) #25
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.x, ptr %i.f, align 8, !tbaa !93
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !178
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !179
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE16_M_insert_uniqueIRKS4_EESt4pairISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02227.i = load ptr, ptr %i.a, align 8, !tbaa !180 ; 2 uses
  %.not28.i = icmp eq ptr %.02227.i, null
  %.pre.i.pre.pre = load ptr, ptr %1, align 8, !tbaa !167 ; 7 uses
  br i1 %.not28.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load double, ptr %.pre.i.pre.pre, align 8, !tbaa !40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pre.i.pre.pre, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.02229.i = phi ptr [ %.02227.i, %.lr.ph.i ], [ %.02229.i.be, %.backedge.backedge ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02229.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167  ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !40 ; 3 uses
  %i.h = fcmp olt double %i.c, %i.g
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.i = fcmp ogt double %i.c, %i.g
  br i1 %i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load double, ptr %i.d, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !48
  %i.m = fcmp olt double %i.j, %i.l
  br i1 %i.m, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %.backedge
  %i.n = getelementptr inbounds nuw i8, ptr %.02229.i, i64 16
  %.022.i = load ptr, ptr %i.n, align 8, !tbaa !180 ; 2 uses
  %.not.i = icmp eq ptr %.022.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.d, %.thread
  %.02229.i.be = phi ptr [ %.022.i, %bb.d ], [ %.022.i14, %.thread ]
  br label %.backedge, !llvm.loop !181

.thread:                                          ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.02229.i, i64 24
  %.022.i14 = load ptr, ptr %i.o, align 8, !tbaa !180 ; 2 uses
  %.not.i15 = icmp eq ptr %.022.i14, null
  br i1 %.not.i15, label %._crit_edge.i.thread, label %.backedge.backedge

._crit_edge.thread.i:                             ; preds = %bb.d, %bb.a
  %.021.lcssa37.i = phi ptr [ %i.b, %bb.a ], [ %.02229.i, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89
  %i.r = icmp eq ptr %.021.lcssa37.i, %i.q
  br i1 %i.r, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa37.i) #30 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !167 ; 2 uses
  %.pre28 = load double, ptr %.pre, align 8, !tbaa !40
  %.pre29 = load double, ptr %.pre.i.pre.pre, align 8, !tbaa !40
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %.thread, %bb.e
  %i.t = phi double [ %.pre29, %bb.e ], [ %i.c, %.thread ] ; 2 uses
  %i.u = phi double [ %.pre28, %bb.e ], [ %i.g, %.thread ] ; 2 uses
  %i.v = phi ptr [ %.pre, %bb.e ], [ %i.f, %.thread ]
  %.021.lcssa36.i = phi ptr [ %.021.lcssa37.i, %bb.e ], [ %.02229.i, %.thread ] ; 2 uses
  %.sroa.07.0.i = phi ptr [ %i.s, %bb.e ], [ %.02229.i, %.thread ] ; 2 uses
  %i.w = fcmp olt double %i.u, %i.t
  br i1 %i.w, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.thread
  %i.x = fcmp ogt double %i.u, %i.t
  br i1 %i.x, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre.i.pre.pre, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !48
  %i.ac = fcmp olt double %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.m

bb.h:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.thread.i, %bb.g
  %.sroa.4.0.i.ph = phi ptr [ %.021.lcssa36.i, %bb.g ], [ %.021.lcssa37.i, %._crit_edge.thread.i ], [ %.021.lcssa36.i, %._crit_edge.i.thread ] ; 3 uses
  %i.ad = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.ad, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !167 ; 2 uses
  %i.ag = load double, ptr %.pre.i.pre.pre, align 8, !tbaa !40 ; 2 uses
  %i.ah = load double, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.ai = fcmp olt double %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = fcmp ogt double %i.ag, %i.ah
  br i1 %i.aj, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.i.pre.pre, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !48
  %i.ao = fcmp olt double %i.al, %i.an
  br i1 %i.ao, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %i.ap = phi i1 [ false, %bb.l ], [ true, %bb.h ], [ true, %bb.k ], [ true, %bb.i ], [ false, %bb.j ]
  %i.aq = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %.pre.i.pre.pre, ptr %i.ar, align 8, !tbaa !167
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #27
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !91
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !91
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.g, %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit
  %.sroa.011.0 = phi ptr [ %i.aq, %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ %.sroa.07.0.i, %bb.g ], [ %.sroa.07.0.i, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ 0, %bb.g ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182
  tail call void @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183  ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !184

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.a = load ptr, ptr %1, align 8, !tbaa !146, !noalias !185
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11, !noalias !185 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !7, !alias.scope !188
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !11, !alias.scope !188
  store i8 0, ptr %i.d, align 8, !tbaa !14, !alias.scope !188
  %i.f = add i64 %i.c, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !11, !alias.scope !188
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !11, !alias.scope !188
  %i.l = and i64 %i.k, -2
  %i.m = icmp eq i64 %i.l, 4611686018427387902
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #29
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !146, !alias.scope !188 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11, !noalias !191 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !11, !noalias !191
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #29
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !146, !noalias !191
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.w, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !7, !alias.scope !191
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !146  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc6
  store ptr %i.z, ptr %3, align 8, !tbaa !146, !alias.scope !191
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !14
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !14, !alias.scope !191
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !11, !alias.scope !191
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !146
  store i64 0, ptr %i.ai, align 8, !tbaa !11
  store i8 0, ptr %i.aa, align 8, !tbaa !14
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %3, align 8, !tbaa !146   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.y
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ak) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.am = load ptr, ptr %4, align 8, !tbaa !146   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.am) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util13GEOSExceptionE, i64 16), ptr %0, align 8, !tbaa !15
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !146   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.y
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.aq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.ap, %bb.i ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !146   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.d
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  call void @_ZdlPv(ptr noundef %i.as) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
  tail call void @_ZdlPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
  tail call void @_ZdlPv(ptr noundef nonnull %0) #25
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos9algorithm16BoundaryNodeRule19getBoundaryRuleMod2Ev() local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !6, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !19, i64 0}
!19 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !10, i64 0}
!20 = !{!21, !27, i64 24}
!21 = !{!"_ZTSN4geos4geom8GeometryE", !22, i64 8, !4, i64 16, !27, i64 24, !10, i64 32}
!22 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !23, i64 0}
!23 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !24, i64 0}
!24 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !25, i64 0}
!25 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !26, i64 0}
!26 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !18, i64 0}
!27 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !10, i64 0}
!28 = !{!21, !10, i64 32}
!29 = !{!19, !19, i64 0}
!30 = !{!31, !4, i64 24}
!31 = !{!"_ZTSN4geos4geom15GeometryFactoryE", !32, i64 8, !4, i64 24, !35, i64 32, !4, i64 40, !36, i64 44}
!32 = !{!"_ZTSN4geos4geom14PrecisionModelE", !33, i64 0, !34, i64 8}
!33 = !{!"_ZTSN4geos4geom14PrecisionModel4TypeE", !5, i64 0}
!34 = !{!"double", !5, i64 0}
!35 = !{!"p1 _ZTSN4geos4geom25CoordinateSequenceFactoryE", !10, i64 0}
!36 = !{!"bool", !5, i64 0}
!37 = !{!21, !4, i64 16}
!38 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 8, !39, i64 24, i64 8, !39}
!39 = !{!34, !34, i64 0}
!40 = !{!41, !34, i64 0}
!41 = !{!"_ZTSN4geos4geom10CoordinateE", !34, i64 0, !34, i64 8, !34, i64 16}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!41, !34, i64 16}
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 _ZTSN4geos4geom5PointE", !10, i64 0}
!47 = !{!32, !33, i64 0}
!48 = !{!41, !34, i64 8}
!49 = !{!50, !51, i64 0}
!50 = !{!"_ZTSN4geos9operation5valid9IsValidOpE", !51, i64 0, !36, i64 8, !52, i64 16}
!51 = !{!"p1 _ZTSN4geos4geom8GeometryE", !10, i64 0}
!52 = !{!"_ZTSSt10unique_ptrIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE", !53, i64 0}
!53 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_ELb1ELb1EE", !54, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_implIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE", !55, i64 0}
!55 = !{!"_ZTSSt5tupleIJPN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EEE", !56, i64 0}
!56 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EEE", !57, i64 0}
!57 = !{!"_ZTSSt10_Head_baseILm0EPN4geos9operation5valid23TopologyValidationErrorELb0EE", !58, i64 0}
!58 = !{!"p1 _ZTSN4geos9operation5valid23TopologyValidationErrorE", !10, i64 0}
!59 = !{!50, !36, i64 8}
!60 = !{!57, !58, i64 0}
!61 = !{!58, !58, i64 0}
!62 = !{!63, !34, i64 0}
!63 = !{!"_ZTSN4geos4geom8EnvelopeE", !34, i64 0, !34, i64 8, !34, i64 16, !34, i64 24}
!64 = !{!63, !34, i64 8}
!65 = !{!63, !34, i64 16}
!66 = !{!63, !34, i64 24}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTSN4geos4geom18IntersectionMatrixE", !10, i64 0}
!69 = !{!70, !70, i64 0}
!70 = !{!"p1 _ZTSN4geos4geom7PolygonE", !10, i64 0}
!71 = distinct !{null, null}
!72 = distinct !{null, null}
!73 = !{!74, !27, i64 0}
!74 = !{!"_ZTSN4geos9algorithm10ConvexHullE", !27, i64 0, !75, i64 8}
!75 = !{!"_ZTSSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE", !76, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE12_Vector_implE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!79 = !{!"p2 _ZTSN4geos4geom10CoordinateE", !80, i64 0}
!80 = !{!"any p2 pointer", !10, i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"p1 _ZTSSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE", !10, i64 0}
!83 = !{!84, !86, i64 0}
!84 = !{!"_ZTSSt15_Rb_tree_header", !85, i64 0, !13, i64 32}
!85 = !{!"_ZTSSt18_Rb_tree_node_base", !86, i64 0, !87, i64 8, !87, i64 16, !87, i64 24}
!86 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!87 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!88 = !{!84, !87, i64 8}
!89 = !{!84, !87, i64 16}
!90 = !{!84, !87, i64 24}
!91 = !{!84, !13, i64 32}
!92 = !{ptr @_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev}
!93 = !{!78, !79, i64 0}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!96 = distinct !{!96, !"_ZNK4geos4geom8Geometry5cloneEv"}
!97 = distinct !{null}
!98 = !{!51, !51, i64 0}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!101 = distinct !{!101, !"_ZNK4geos4geom8Geometry5cloneEv"}
!102 = !{!103, !104, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE17_Vector_impl_dataE", !104, i64 0, !104, i64 8, !104, i64 16}
!104 = !{!"p2 _ZTSN4geos4geom8GeometryE", !80, i64 0}
!105 = !{!103, !104, i64 8}
!106 = !{!103, !104, i64 16}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!109 = distinct !{!109, !"_ZNK4geos4geom8Geometry5cloneEv"}
!110 = distinct !{!110, !43}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!113 = distinct !{!113, !"_ZNK4geos4geom8Geometry5cloneEv"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!116 = distinct !{!116, !"_ZNK4geos4geom8Geometry5cloneEv"}
!117 = distinct !{!117, !43}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!120 = distinct !{!120, !"_ZNK4geos4geom8Geometry5cloneEv"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!123 = distinct !{!123, !"_ZNK4geos4geom8Geometry5cloneEv"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!126 = distinct !{!126, !"_ZNK4geos4geom8Geometry5cloneEv"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!129 = distinct !{!129, !"_ZNK4geos4geom8Geometry5cloneEv"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!132 = distinct !{!132, !"_ZNK4geos4geom8Geometry5cloneEv"}
!133 = distinct !{!133, !43}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!136 = distinct !{!136, !"_ZNK4geos4geom8Geometry5cloneEv"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!139 = distinct !{!139, !"_ZNK4geos4geom8Geometry5cloneEv"}
!140 = distinct !{!140, !43}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!143 = distinct !{!143, !"_ZNK4geos4geom8Geometry5cloneEv"}
!144 = !{!145, !9, i64 8}
!145 = !{!"_ZTSSt9type_info", !9, i64 8}
!146 = !{!12, !9, i64 0}
!147 = !{!13, !13, i64 0}
!148 = !{!149, !150, i64 8}
!149 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !150, i64 0, !150, i64 8, !150, i64 16}
!150 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !10, i64 0}
!151 = !{!149, !150, i64 0}
!152 = distinct !{!152, !43}
!153 = distinct !{!153, !43}
!154 = !{!155, !156, i64 8}
!155 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !156, i64 0, !156, i64 8, !156, i64 16}
!156 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE", !10, i64 0}
!157 = !{!155, !156, i64 0}
!158 = distinct !{!158, !43}
!159 = distinct !{null, null}
!160 = !{!161, !36, i64 8}
!161 = !{!"_ZTSN4geos9operation5valid10IsSimpleOpE", !51, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !162, i64 16, !36, i64 40}
!162 = !{!"_ZTSSt6vectorIN4geos4geom10CoordinateESaIS2_EE", !163, i64 0}
!163 = !{!"_ZTSSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE", !164, i64 0}
!164 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE12_Vector_implE", !149, i64 0}
!165 = !{!161, !36, i64 9}
!166 = !{!161, !36, i64 10}
!167 = !{!150, !150, i64 0}
!168 = !{!169, !82, i64 8}
!169 = !{!"_ZTSN4geos4util27UniqueCoordinateArrayFilterE", !170, i64 0, !82, i64 8, !171, i64 16}
!170 = !{!"_ZTSN4geos4geom16CoordinateFilterE"}
!171 = !{!"_ZTSSt3setIPKN4geos4geom10CoordinateENS1_18CoordinateLessThenESaIS4_EE", !172, i64 0}
!172 = !{!"_ZTSSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE", !173, i64 0}
!173 = !{!"_ZTSNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE13_Rb_tree_implIS7_Lb1EEE", !174, i64 0, !84, i64 8}
!174 = !{!"_ZTSSt20_Rb_tree_key_compareIN4geos4geom18CoordinateLessThenEE", !175, i64 0}
!175 = !{!"_ZTSN4geos4geom18CoordinateLessThenE"}
!176 = !{}
!177 = !{i64 8}
!178 = !{!78, !79, i64 8}
!179 = !{!78, !79, i64 16}
!180 = !{!87, !87, i64 0}
!181 = distinct !{!181, !43}
!182 = !{!85, !87, i64 24}
!183 = !{!85, !87, i64 16}
!184 = distinct !{!184, !43}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!187 = distinct !{!187, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!188 = !{!189, !186}
!189 = distinct !{!189, !190, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!190 = distinct !{!190, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!193 = distinct !{!193, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
end_hunk_1
