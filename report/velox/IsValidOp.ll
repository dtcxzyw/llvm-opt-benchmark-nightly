inline.NumInlined: 909
inline.NumDeleted: 422
begin_hunk_0_@_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE
define void @_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 3 uses
  invoke void @_ZN4geos9operation5valid23TopologyValidationErrorC1EiRKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE5resetEPS3_.exit, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i: ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #18
  br label %_ZNSt10unique_ptrIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE5resetEPS3_.exit

_ZNSt10unique_ptrIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE5resetEPS3_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #18
  resume { ptr, i32 } %i.d
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare void @_ZN4geos9operation5valid23TopologyValidationErrorC1EiRKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 24, ptr %i.a, align 8, !tbaa !35
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !20
  %i.d = load i64, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !37
  %i.f = load ptr, ptr %2, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util24IllegalArgumentExceptionE, i64 16), ptr %0, align 8, !tbaa !25
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.j
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation5valid9IsValidOp7isValidEPKNS_4geom5PointE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4geos4geom5Point16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(82) %1)
  tail call void @_ZN4geos9operation5valid9IsValidOp22checkCoordinateInvalidEPKNS_4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %.not = icmp eq ptr %i.c, null
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation5valid9IsValidOp7isValidEPKNS_4geom10MultiPointE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit
  %.01318 = phi i64 [ %i.ag, %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit ], [ 0, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %.01318) ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(82) %i.i)
  br i1 %i.m, label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(82) %i.i) ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !30
  %i.s = tail call double @llvm.fabs.f64(double %i.r)
  %i.t = fcmp ueq double %i.s, +inf
  br i1 %i.t, label %_ZN4geos9operation5valid9IsValidOp7isValidEPKNS_4geom10CoordinateE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !33
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp ueq double %i.w, +inf
  br i1 %i.x, label %_ZN4geos9operation5valid9IsValidOp7isValidEPKNS_4geom10CoordinateE.exit, label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit

_ZN4geos9operation5valid9IsValidOp7isValidEPKNS_4geom10CoordinateE.exit: ; preds = %bb.c, %bb.b
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(82) %i.i)
  %i.ac = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 3 uses
  invoke void @_ZN4geos9operation5valid23TopologyValidationErrorC1EiRKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN4geos9operation5valid9IsValidOp7isValidEPKNS_4geom10CoordinateE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !19
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit.thread, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i: ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.ae) #18
  br label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit.thread

bb.e:                                             ; preds = %_ZN4geos9operation5valid9IsValidOp7isValidEPKNS_4geom10CoordinateE.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ac) #18
  resume { ptr, i32 } %i.af

_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit: ; preds = %bb.c, %.lr.ph
  %i.ag = add nuw i64 %.01318, 1                  ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %.not = icmp ult i64 %i.ag, %i.ak
  br i1 %.not, label %.lr.ph, label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit.thread, !llvm.loop !38

_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit.thread: ; preds = %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit, %bb.a, %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i, %bb.d
  %i.al = phi i1 [ false, %bb.d ], [ false, %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i ], [ true, %bb.a ], [ true, %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit ]
  ret i1 %i.al
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation5valid9IsValidOp7isValidEPKNS_4geom10LinearRingE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 8 ; 5 uses
  %i.a = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  tail call void @_ZN4geos9operation5valid9IsValidOp22checkCoordinateInvalidEPKNS_4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4geos9operation5valid9IsValidOp18checkRingNotClosedEPKNS_4geom10LinearRingE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !19
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(48) %1), !inline_history !39
  br i1 %i.h, label %_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4geos9operation5valid9IsValidOp17checkTooFewPointsEPKNS_4geom10LineStringEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef 4)
  br label %_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit

_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit: ; preds = %bb.c, %bb.d
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !19
  %.not7 = icmp eq ptr %i.i, null
  br i1 %.not7, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN4geos9operation5valid23PolygonTopologyAnalyzer20findSelfIntersectionEPKNS_4geom10LinearRingE(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %2, ptr noundef nonnull %1)
  %3 = load <3 x double>, ptr %2, align 8
  %.fr = freeze <3 x double> %3
  %4 = fcmp ord <3 x double> %.fr, zeroinitializer
  %5 = bitcast <3 x i1> %4 to i3
  %6 = icmp eq i3 %5, 0
  br i1 %6, label %_ZN4geos9operation5valid9IsValidOp25checkSelfIntersectingRingEPKNS_4geom10LinearRingE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 3 uses
  invoke void @_ZN4geos9operation5valid23TopologyValidationErrorC1EiRKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !19
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN4geos9operation5valid9IsValidOp25checkSelfIntersectingRingEPKNS_4geom10LinearRingE.exit, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.k) #18
  br label %_ZN4geos9operation5valid9IsValidOp25checkSelfIntersectingRingEPKNS_4geom10LinearRingE.exit

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.j) #18
  resume { ptr, i32 } %i.l

_ZN4geos9operation5valid9IsValidOp25checkSelfIntersectingRingEPKNS_4geom10LinearRingE.exit: ; preds = %bb.e, %bb.g, %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !19
  %.not8 = icmp eq ptr %i.m, null
  br label %bb.i

bb.i:                                             ; preds = %_ZN4geos9operation5valid9IsValidOp25checkSelfIntersectingRingEPKNS_4geom10LinearRingE.exit, %_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit, %bb.b, %bb.a
  %.0 = phi i1 [ false, %_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit ], [ false, %bb.a ], [ false, %bb.b ], [ %.not8, %_ZN4geos9operation5valid9IsValidOp25checkSelfIntersectingRingEPKNS_4geom10LinearRingE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation5valid9IsValidOp7isValidEPKNS_4geom10LineStringE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  tail call void @_ZN4geos9operation5valid9IsValidOp22checkCoordinateInvalidEPKNS_4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4geos9operation5valid9IsValidOp17checkTooFewPointsEPKNS_4geom10LineStringEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef 2)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !19
  %.not4 = icmp eq ptr %i.d, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.not4, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation5valid9IsValidOp7isValidEPKNS_4geom7PolygonE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::operation::valid::PolygonTopologyAnalyzer", align 8 ; 13 uses
  tail call void @_ZN4geos9operation5valid9IsValidOp22checkCoordinateInvalidEPKNS_4geom7PolygonE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZN4geos9operation5valid9IsValidOp19checkRingsNotClosedEPKNS_4geom7PolygonE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  tail call void @_ZN4geos9operation5valid9IsValidOp18checkRingNotClosedEPKNS_4geom10LinearRingE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.c)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.preheader.i, label %_ZN4geos9operation5valid9IsValidOp19checkRingsNotClosedEPKNS_4geom7PolygonE.exit.thread

.preheader.i:                                     ; preds = %bb.b
  %i.e = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %.not9.i = icmp eq i64 %i.e, 0
  br i1 %.not9.i, label %_ZN4geos9operation5valid9IsValidOp19checkRingsNotClosedEPKNS_4geom7PolygonE.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.g = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_ZN4geos9operation5valid9IsValidOp19checkRingsNotClosedEPKNS_4geom7PolygonE.exit, !llvm.loop !40

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.07.i = phi i64 [ %i.f, %bb.c ], [ 0, %.preheader.i ] ; 2 uses
  %i.i = tail call noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %.07.i)
  tail call void @_ZN4geos9operation5valid9IsValidOp18checkRingNotClosedEPKNS_4geom10LinearRingE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.i)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !19
  %.not6.i = icmp eq ptr %i.j, null
  br i1 %.not6.i, label %bb.c, label %_ZN4geos9operation5valid9IsValidOp19checkRingsNotClosedEPKNS_4geom7PolygonE.exit.thread

_ZN4geos9operation5valid9IsValidOp19checkRingsNotClosedEPKNS_4geom7PolygonE.exit: ; preds = %bb.c, %.preheader.i
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !19
  %.not11 = icmp eq ptr %.pr, null
  br i1 %.not11, label %bb.d, label %_ZN4geos9operation5valid9IsValidOp19checkRingsNotClosedEPKNS_4geom7PolygonE.exit.thread

bb.d:                                             ; preds = %_ZN4geos9operation5valid9IsValidOp19checkRingsNotClosedEPKNS_4geom7PolygonE.exit
  tail call void @_ZN4geos9operation5valid9IsValidOp22checkRingsTooFewPointsEPKNS_4geom7PolygonE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !19
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %bb.e, label %_ZN4geos9operation5valid9IsValidOp19checkRingsNotClosedEPKNS_4geom7PolygonE.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !41, !range !42, !noundef !43
  %i.n = trunc nuw i8 %i.m to i1
  call void @_ZN4geos9operation5valid23PolygonTopologyAnalyzerC1EPKNS_4geom8GeometryEb(ptr noundef nonnull align 8 dereferenceable(440) %2, ptr noundef nonnull %1, i1 noundef zeroext %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 156
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44   ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.f, label %_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE.exit

bb.f:                                             ; preds = %bb.e
  %i.r = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 160
  invoke void @_ZN4geos9operation5valid23TopologyValidationErrorC1EiRKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  store ptr %i.r, ptr %i.a, align 8, !tbaa !19
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE.exit.thread, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.t) #18
  br label %_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE.exit

bb.h:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.r) #18
  br label %.body

_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE.exit: ; preds = %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i.i, %bb.e
  %.pr10 = load ptr, ptr %i.a, align 8, !tbaa !19
  %.not13 = icmp eq ptr %.pr10, null
  br i1 %.not13, label %bb.j, label %_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE.exit.thread

bb.i:                                             ; preds = %bb.f, %bb.n, %bb.l, %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.u, %bb.h ]
  call void @_ZN4geos9operation5valid23PolygonTopologyAnalyzerD2Ev(ptr noundef nonnull align 8 dead_on_return(440) dereferenceable(440) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE.exit
  invoke void @_ZN4geos9operation5valid9IsValidOp22checkHolesOutsideShellEPKNS_4geom7PolygonE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !19
  %.not14 = icmp eq ptr %i.w, null
  br i1 %.not14, label %bb.l, label %_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE.exit.thread

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4geos9operation5valid9IsValidOp16checkHolesNestedEPKNS_4geom7PolygonE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !19
  %.not15 = icmp eq ptr %i.x, null
  br i1 %.not15, label %bb.n, label %_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE.exit.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4geos9operation5valid9IsValidOp25checkInteriorDisconnectedERNS1_23PolygonTopologyAnalyzerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(440) %2)
          to label %bb.o unwind label %bb.i

bb.o:                                             ; preds = %bb.n
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !19
  %.not16 = icmp eq ptr %i.y, null
  br label %_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE.exit.thread

_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE.exit.thread: ; preds = %bb.g, %bb.o, %bb.m, %bb.k, %_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE.exit
  %.0 = phi i1 [ false, %bb.m ], [ false, %_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE.exit ], [ false, %bb.k ], [ %.not16, %bb.o ], [ false, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 416 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !52 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE.exit.thread, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.aa, %_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE.exit.thread ] ; 2 uses
  %i.ad = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #19, !inline_history !55
end_hunk_0
begin_hunk_1_@_ZNK4geos4geom10LineString16getCoordinatesROEv

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid9IsValidOp17checkTooFewPointsEPKNS_4geom10LineStringEm(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(48) %1), !inline_history !66
  %.not2021.i = icmp ne i64 %i.d, 0               ; 2 uses
  %.not22.i = icmp ne i64 %2, 0
  %or.cond23.i = and i1 %.not22.i, %.not2021.i
  br i1 %or.cond23.i, label %.lr.ph.i, label %_ZN4geos9operation5valid9IsValidOp24isNonRepeatedSizeAtLeastEPKNS_4geom10LineStringEm.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.01626.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.01725.i = phi ptr [ %i.h, %bb.d ], [ null, %bb.a ] ; 2 uses
  %.01824.i = phi i64 [ %.119.i, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %.01626.i), !inline_history !66 ; 2 uses
  %i.i = icmp eq ptr %.01725.i, null
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = load <2 x double>, ptr %i.h, align 8
  %i.k = load <2 x double>, ptr %.01725.i, align 8
  %i.l = fcmp oeq <2 x double> %i.j, %i.k         ; 2 uses
  %i.m = extractelement <2 x i1> %i.l, i64 0
  %i.n = extractelement <2 x i1> %i.l, i64 1
  %.0.i.i = select i1 %i.m, i1 %i.n, i1 false
  br i1 %.0.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.o = add nuw i64 %.01824.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.119.i = phi i64 [ %i.o, %bb.c ], [ %.01824.i, %bb.b ] ; 3 uses
  %i.p = add nuw i64 %.01626.i, 1                 ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(48) %1), !inline_history !66
  %.not20.i = icmp ult i64 %i.p, %i.t             ; 2 uses
  %.not.i = icmp ult i64 %.119.i, %2
  %or.cond.i = select i1 %.not20.i, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN4geos9operation5valid9IsValidOp24isNonRepeatedSizeAtLeastEPKNS_4geom10LineStringEm.exit, !llvm.loop !67

_ZN4geos9operation5valid9IsValidOp24isNonRepeatedSizeAtLeastEPKNS_4geom10LineStringEm.exit: ; preds = %bb.d, %bb.a
  %.018.lcssa.i = phi i64 [ 0, %bb.a ], [ %.119.i, %bb.d ]
  %.not20.lcssa.i = phi i1 [ %.not2021.i, %bb.a ], [ %.not20.i, %bb.d ]
  %i.u = icmp uge i64 %.018.lcssa.i, %2
  %spec.select.i = select i1 %.not20.lcssa.i, i1 true, i1 %i.u
  br i1 %spec.select.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN4geos9operation5valid9IsValidOp24isNonRepeatedSizeAtLeastEPKNS_4geom10LineStringEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.v = load ptr, ptr %1, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %1, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 464
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !tbaa.struct !68
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ad, align 8, !tbaa !70
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 3 uses
  invoke void @_ZN4geos9operation5valid23TopologyValidationErrorC1EiRKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !19
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #18
  br label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ae) #18
  resume { ptr, i32 } %i.ah

_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.k

bb.k:                                             ; preds = %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit, %_ZN4geos9operation5valid9IsValidOp24isNonRepeatedSizeAtLeastEPKNS_4geom10LineStringEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid9IsValidOp18checkRingNotClosedEPKNS_4geom10LinearRingE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(48) %1)
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(48) %1)
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.i = load ptr, ptr %1, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !68
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.q, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 3 uses
  invoke void @_ZN4geos9operation5valid23TopologyValidationErrorC1EiRKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 11, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !19
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.t) #18
  br label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.r) #18
  resume { ptr, i32 } %i.u

_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(48) %1)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4geos9operation5valid9IsValidOp17checkTooFewPointsEPKNS_4geom10LineStringEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef 4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid9IsValidOp25checkSelfIntersectingRingEPKNS_4geom10LinearRingE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN4geos9operation5valid23PolygonTopologyAnalyzer20findSelfIntersectionEPKNS_4geom10LinearRingE(ptr dead_on_unwind nonnull writable sret(%"class.geos::geom::Coordinate") align 8 %2, ptr noundef %1)
  %3 = load <3 x double>, ptr %2, align 8
  %.fr = freeze <3 x double> %3
  %4 = fcmp ord <3 x double> %.fr, zeroinitializer
  %5 = bitcast <3 x i1> %4 to i3
  %6 = icmp eq i3 %5, 0
  br i1 %6, label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 3 uses
  invoke void @_ZN4geos9operation5valid23TopologyValidationErrorC1EiRKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !19
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.c) #18
  br label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.a) #18
  resume { ptr, i32 } %i.d

_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit: ; preds = %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid9IsValidOp22checkCoordinateInvalidEPKNS_4geom7PolygonE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.b = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  tail call void @_ZN4geos9operation5valid9IsValidOp22checkCoordinateInvalidEPKNS_4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %.not9 = icmp eq i64 %i.e, 0
  br i1 %.not9, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = add nuw i64 %.07, 1                      ; 2 uses
  %i.g = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.lr.ph, label %.loopexit, !llvm.loop !71

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.07 = phi i64 [ %i.f, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %i.i = tail call noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %.07)
  %i.j = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.i)
  tail call void @_ZN4geos9operation5valid9IsValidOp22checkCoordinateInvalidEPKNS_4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.j)
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !19
  %.not6 = icmp eq ptr %i.k, null
  br i1 %.not6, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid9IsValidOp19checkRingsNotClosedEPKNS_4geom7PolygonE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  tail call void @_ZN4geos9operation5valid9IsValidOp18checkRingNotClosedEPKNS_4geom10LinearRingE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %.not9 = icmp eq i64 %i.d, 0
  br i1 %.not9, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = add nuw i64 %.07, 1                      ; 2 uses
  %i.f = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %.lr.ph, label %.loopexit, !llvm.loop !40

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.07 = phi i64 [ %i.e, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %i.h = tail call noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %.07)
  tail call void @_ZN4geos9operation5valid9IsValidOp18checkRingNotClosedEPKNS_4geom10LinearRingE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.h)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !19
  %.not6 = icmp eq ptr %i.i, null
  br i1 %.not6, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid9IsValidOp22checkRingsTooFewPointsEPKNS_4geom7PolygonE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1) ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(48) %i.a), !inline_history !39
  br i1 %i.e, label %_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4geos9operation5valid9IsValidOp17checkTooFewPointsEPKNS_4geom10LineStringEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.a, i64 noundef 4)
  br label %_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit

_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit
  %i.h = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %.not9 = icmp eq i64 %i.h, 0
  br i1 %.not9, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit6
  %i.i = add nuw i64 %.08, 1                      ; 2 uses
  %i.j = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %.loopexit, !llvm.loop !72

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.08 = phi i64 [ %i.i, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.l = tail call noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %.08) ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(48) %i.l), !inline_history !39
  br i1 %i.p, label %_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit6, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN4geos9operation5valid9IsValidOp17checkTooFewPointsEPKNS_4geom10LineStringEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.l, i64 noundef 4)
  br label %_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit6

_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit6: ; preds = %.lr.ph, %bb.d
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !19
  %.not7 = icmp eq ptr %i.q, null
  br i1 %.not7, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit6, %bb.c, %.preheader, %_ZN4geos9operation5valid9IsValidOp21checkRingTooFewPointsEPKNS_4geom10LinearRingE.exit
  ret void
}

declare void @_ZN4geos9operation5valid23PolygonTopologyAnalyzerC1EPKNS_4geom8GeometryEb(ptr noundef nonnull align 8 dereferenceable(440), ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid9IsValidOp22checkAreaIntersectionsERNS1_23PolygonTopologyAnalyzerE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(440) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 3 uses
  invoke void @_ZN4geos9operation5valid23TopologyValidationErrorC1EiRKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !19
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i: ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #18
  br label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #18
  resume { ptr, i32 } %i.h

_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit: ; preds = %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation5valid9IsValidOp22checkHolesOutsideShellEPKNS_4geom7PolygonE(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZN4geos9operation5valid9IsValidOp10logInvalidEiPKNS_4geom10CoordinateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1) ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  %i.h = tail call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
end_hunk_1
