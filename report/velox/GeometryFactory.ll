inline.NumInlined: 1091
inline.NumDeleted: 647
begin_hunk_0_@_ZN4geos4geom15GeometryFactoryC2EPKNS0_14PrecisionModelE:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom15GeometryFactory6createEPKNS0_14PrecisionModelE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 3 uses
  invoke void @_ZN4geos4geom15GeometryFactoryC1EPKNS0_14PrecisionModelE(ptr noundef nonnull align 8 dereferenceable(45) %i.a, ptr noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #19
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom15GeometryFactoryC2EPKNS0_14PrecisionModelEi(ptr noundef nonnull align 8 dereferenceable(45) initializes((0, 8)) %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4geos4geom15GeometryFactoryE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN4geos4geom14PrecisionModelC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = tail call noundef ptr @_ZN4geos4geom32DefaultCoordinateSequenceFactory8instanceEv()
  store ptr %i.d, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.f, align 4, !tbaa !19
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom15GeometryFactory6createEPKNS0_14PrecisionModelEi(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 3 uses
  invoke void @_ZN4geos4geom15GeometryFactoryC1EPKNS0_14PrecisionModelEi(ptr noundef nonnull align 8 dereferenceable(45) %i.a, ptr noundef %1, i32 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #19
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4geom15GeometryFactoryC2ERKS1_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(45) initializes((0, 28), (32, 45)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(45) %1) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4geos4geom15GeometryFactoryE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !9
  store i32 %i.e, ptr %i.c, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  store ptr %i.h, ptr %i.f, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.j, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom15GeometryFactory6createERKS1_(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(45) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 3 uses
  invoke void @_ZN4geos4geom15GeometryFactoryC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(45) %i.a, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #19
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN4geos4geom15GeometryFactoryD2Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(45) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4geos4geom15GeometryFactoryD0Ev(ptr noundef nonnull align 8 dead_on_return(45) dereferenceable(45) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN4geos4geom15GeometryFactoryD1Ev(ptr noundef nonnull align 8 dead_on_return(45) dereferenceable(45) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK4geos4geom15GeometryFactory28createPointFromInternalCoordEPKNS0_10CoordinateEPKNS0_8GeometryE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(45) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !25
  %i.a = tail call noundef ptr @_ZNK4geos4geom8Geometry17getPrecisionModelEv(ptr noundef nonnull align 8 dereferenceable(40) %2) ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = icmp eq i32 %i.b, 1
  %.pre = load double, ptr %3, align 8, !tbaa !27 ; 2 uses
  br i1 %i.c, label %._ZNK4geos4geom14PrecisionModel11makePreciseEPNS0_10CoordinateE.exit_crit_edge, label %bb.b

._ZNK4geos4geom14PrecisionModel11makePreciseEPNS0_10CoordinateE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre3 = load double, ptr %.phi.trans.insert, align 8
  br label %_ZNK4geos4geom14PrecisionModel11makePreciseEPNS0_10CoordinateE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.a, double noundef %.pre) ; 2 uses
  store double %i.d, ptr %3, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !29
  %i.g = tail call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.a, double noundef %i.f) ; 2 uses
  store double %i.g, ptr %i.e, align 8, !tbaa !29
  br label %_ZNK4geos4geom14PrecisionModel11makePreciseEPNS0_10CoordinateE.exit

_ZNK4geos4geom14PrecisionModel11makePreciseEPNS0_10CoordinateE.exit: ; preds = %._ZNK4geos4geom14PrecisionModel11makePreciseEPNS0_10CoordinateE.exit_crit_edge, %bb.b
  %i.h = phi double [ %.pre3, %._ZNK4geos4geom14PrecisionModel11makePreciseEPNS0_10CoordinateE.exit_crit_edge ], [ %i.g, %bb.b ]
  %i.i = phi double [ %.pre, %._ZNK4geos4geom14PrecisionModel11makePreciseEPNS0_10CoordinateE.exit_crit_edge ], [ %i.d, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = fcmp uno double %i.i, 0.000000e+00
  %i.m = fcmp uno double %i.h, 0.000000e+00
  %or.cond.i.i = select i1 %i.l, i1 %i.m, i1 false
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load double, ptr %i.n, align 8
  %i.p = fcmp uno double %i.o, 0.000000e+00
  %i.q = select i1 %or.cond.i.i, i1 %i.p, i1 false
  %i.r = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18 ; 4 uses
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK4geos4geom14PrecisionModel11makePreciseEPNS0_10CoordinateE.exit
  invoke void @_ZN4geos4geom5PointC1EPNS0_18CoordinateSequenceEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(82) %i.r, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(45) %i.k)
          to label %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit unwind label %bb.d, !noalias !39

common.resume.i:                                  ; preds = %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.t, %bb.f ]
  call void @_ZdlPv(ptr noundef nonnull %i.r) #19
  resume { ptr, i32 } %common.resume.op.i

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.e:                                             ; preds = %_ZNK4geos4geom14PrecisionModel11makePreciseEPNS0_10CoordinateE.exit
  invoke void @_ZN4geos4geom5PointC1ERKNS0_10CoordinateEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(82) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(45) %i.k)
          to label %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit: ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret ptr %i.r
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare noundef ptr @_ZNK4geos4geom8Geometry17getPrecisionModelEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = load double, ptr %1, align 8, !tbaa !27
  %3 = fcmp uno double %2, 0.000000e+00
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load double, ptr %4, align 8
  %6 = fcmp uno double %5, 0.000000e+00
  %or.cond.i = select i1 %3, i1 %6, i1 false
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %8 = load double, ptr %7, align 8
  %9 = fcmp uno double %8, 0.000000e+00
  %10 = select i1 %or.cond.i, i1 %9, i1 false
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18 ; 4 uses
  br i1 %10, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4geos4geom5PointC1EPNS0_18CoordinateSequenceEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(82) %i.a, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(45) %0)
          to label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit unwind label %bb.c, !noalias !42

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.c, %bb.e ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #19
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  invoke void @_ZN4geos4geom5PointC1ERKNS0_10CoordinateEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(82) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %0)
          to label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %bb.d
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom15GeometryFactory10toGeometryEPKNS0_8EnvelopeE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.10") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(45) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 19 uses
  %4 = alloca %"class.std::unique_ptr.26", align 8 ; 12 uses
  %5 = alloca %"class.std::unique_ptr.42", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.a, align 16, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !46 ; 2 uses
  %i.d = fcmp uno double %i.c, 0.000000e+00
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18, !noalias !48 ; 3 uses
  invoke void @_ZN4geos4geom5PointC1EPNS0_18CoordinateSequenceEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(82) %i.e, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit unwind label %bb.c, !noalias !48

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit34, %common.resume.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %common.resume.op.i, %common.resume.i ], [ %.pn.pn, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit34 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #19, !noalias !48
  br label %common.resume

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b
  store ptr %i.e, ptr %0, align 8, !tbaa !51
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.g = load double, ptr %2, align 8, !tbaa !54  ; 3 uses
  %i.h = fcmp oeq double %i.g, %i.c
  br i1 %i.h, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !55 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load double, ptr %i.k, align 8, !tbaa !56
  %i.m = fcmp oeq double %i.j, %i.l
  br i1 %i.m, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  store double %i.g, ptr %3, align 16, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.j, ptr %i.n, align 8, !tbaa !29
  %i.o = fcmp uno double %i.g, 0.000000e+00
  %i.p = fcmp uno double %i.j, 0.000000e+00
  %or.cond.i.i = and i1 %i.o, %i.p
  %i.q = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18 ; 4 uses
  br i1 %or.cond.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4geos4geom5PointC1EPNS0_18CoordinateSequenceEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(82) %i.q, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit unwind label %bb.h, !noalias !57

common.resume.i:                                  ; preds = %bb.j, %bb.h
  %common.resume.op.i = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.s, %bb.j ]
  call void @_ZdlPv(ptr noundef nonnull %i.q) #19
  br label %common.resume

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.i:                                             ; preds = %bb.f
  invoke void @_ZN4geos4geom5PointC1ERKNS0_10CoordinateEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(82) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit: ; preds = %bb.g, %bb.i
  store ptr %i.q, ptr %0, align 8, !tbaa !60
  br label %bb.v

bb.k:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.26") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef 5, i64 noundef 2)
  %i.y = load double, ptr %2, align 8, !tbaa !54
  store double %i.y, ptr %3, align 16, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store double %i.aa, ptr %i.ab, align 8, !tbaa !29
  %i.ac = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ag = load <2 x double>, ptr %i.b, align 8, !tbaa !24
  store <2 x double> %i.ag, ptr %3, align 16, !tbaa !24
  %i.ah = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.al = load double, ptr %i.b, align 8, !tbaa !46
  store double %i.al, ptr %3, align 16, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !56
  store double %i.an, ptr %i.ab, align 8, !tbaa !29
  %i.ao = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 2)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.as = load double, ptr %2, align 8, !tbaa !54
  store double %i.as, ptr %3, align 16, !tbaa !27
  %i.at = load double, ptr %i.am, align 8, !tbaa !56
  store double %i.at, ptr %i.ab, align 8, !tbaa !29
  %i.au = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 3)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ay = load double, ptr %2, align 8, !tbaa !54
  store double %i.ay, ptr %3, align 16, !tbaa !27
  %i.az = load double, ptr %i.z, align 8, !tbaa !55
  store double %i.az, ptr %i.ab, align 8, !tbaa !29
  %i.ba = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 4)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.be = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
          to label %.noexc unwind label %bb.t     ; 4 uses

.noexc:                                           ; preds = %bb.p
  invoke void @_ZN4geos4geom10LinearRingC1EOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %bb.r unwind label %bb.q, !noalias !63

bb.q:                                             ; preds = %.noexc
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.be) #19, !noalias !63
  br label %.body

bb.r:                                             ; preds = %.noexc
end_hunk_0
begin_hunk_1_@_ZNK4geos4geom15GeometryFactory18createMultiPolygonERKSt6vectorIPKNS0_8GeometryESaIS5_EE:bb.a
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ar) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %i.n

bb.f:                                             ; preds = %._crit_edge
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.n) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.b
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.b ], [ %i.at, %bb.g ], [ %i.as, %bb.f ]
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom15GeometryFactory16createLinearRingEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.42") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(45) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 3 uses
  invoke void @_ZN4geos4geom10LinearRingC1EPNS0_18CoordinateSequenceEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef null, ptr noundef nonnull %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !66
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #19
  resume { ptr, i32 } %i.b
}

declare void @_ZN4geos4geom10LinearRingC1EPNS0_18CoordinateSequenceEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK4geos4geom15GeometryFactory16createLinearRingEPNS0_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 3 uses
  invoke void @_ZN4geos4geom10LinearRingC1EPNS0_18CoordinateSequenceEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %1, ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #19
  resume { ptr, i32 } %i.b
}

declare void @_ZN4geos4geom10LinearRingC1EOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(45)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK4geos4geom15GeometryFactory16createLinearRingERKNS0_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.26", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.26") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.d = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
          to label %bb.b unwind label %bb.d       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !61
  store ptr null, ptr %2, align 8, !tbaa !61
  invoke void @_ZN4geos4geom10LinearRingC1EPNS0_18CoordinateSequenceEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.e, ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !61     ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #20, !inline_history !72
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %i.d

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.d) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.j, %bb.d ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !61     ; 3 uses
  %.not.i6 = icmp eq ptr %i.l, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit8, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i7

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i7: ; preds = %bb.f
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #20, !inline_history !72
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit8

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit8: ; preds = %bb.f, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK4geos4geom15GeometryFactory16createMultiPointEPSt6vectorIPNS0_8GeometryESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 3 uses
  invoke void @_ZN4geos4geom10MultiPointC1EPSt6vectorIPNS0_8GeometryESaIS4_EEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef %1, ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #19
  resume { ptr, i32 } %i.b
}

declare void @_ZN4geos4geom10MultiPointC1EPSt6vectorIPNS0_8GeometryESaIS4_EEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom15GeometryFactory16createMultiPointEOSt6vectorINS0_10CoordinateESaIS3_EE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.94") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(45) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !135    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader

.thread:                                          ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.j = shl nuw nsw i64 %i.g, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #18 ; 4 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !51
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.k, i64 %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.l, ptr %i.n, align 8, !tbaa !99
  store ptr %scevgep.i.i.i.i.i, ptr %i.m, align 8, !tbaa !100
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit, %.thread
  %i.o = phi ptr [ %i.i, %.thread ], [ %i.m, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit ]
  %i.p = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18
          to label %bb.g unwind label %bb.j       ; 3 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.q = phi ptr [ %i.ad, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit ], [ %i.c, %.lr.ph.preheader ]
  %.017 = phi i64 [ %i.ab, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.017 ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.017 ; 4 uses
  %4 = load double, ptr %i.t, align 8, !tbaa !27
  %5 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %6 = load double, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %8 = load double, ptr %7, align 8
  %i.u = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18
          to label %.noexc15 unwind label %bb.f   ; 4 uses

.noexc15:                                         ; preds = %.lr.ph
  %9 = fcmp uno double %4, 0.000000e+00
  %10 = fcmp uno double %6, 0.000000e+00
  %or.cond.i.i = select i1 %9, i1 %10, i1 false
  %11 = fcmp uno double %8, 0.000000e+00
  %12 = select i1 %or.cond.i.i, i1 %11, i1 false
  br i1 %12, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.noexc15
  invoke void @_ZN4geos4geom5PointC1EPNS0_18CoordinateSequenceEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(82) %i.u, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit unwind label %bb.c, !noalias !136

common.resume.i:                                  ; preds = %bb.e, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.w, %bb.e ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.u) #19
  br label %.body

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.d:                                             ; preds = %.noexc15
  invoke void @_ZN4geos4geom5PointC1ERKNS0_10CoordinateEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(82) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !60   ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !60
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i: ; preds = %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.x) #20, !inline_history !105
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i
  %i.ab = add nuw i64 %.017, 1                    ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.ad = load ptr, ptr %2, align 8, !tbaa !135   ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 24
  %i.ai = icmp ult i64 %i.ab, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !139

bb.f:                                             ; preds = %.lr.ph
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %._crit_edge
  invoke void @_ZN4geos4geom10MultiPointC1EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !140
  %i.ak = load ptr, ptr %3, align 8, !tbaa !96    ; 3 uses
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.ak, %bb.h ] ; 2 uses
  %i.am = load ptr, ptr %.05.i.i.i, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.am) #20, !inline_history !108
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %i.al
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !109

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.h
  %i.ar = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.ak, %bb.h ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ar) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.j:                                             ; preds = %._crit_edge
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.p) #19
  br label %.body

.body:                                            ; preds = %bb.f, %common.resume.i, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.at, %bb.k ], [ %i.aj, %bb.f ], [ %common.resume.op.i, %common.resume.i ]
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

declare void @_ZN4geos4geom10MultiPointC1EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(45)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom15GeometryFactory16createMultiPointEOSt6vectorISt10unique_ptrINS0_5PointESt14default_deleteIS4_EESaIS7_EE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.94") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(45) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 3 uses
  invoke void @_ZN4geos4geom10MultiPointC1EOSt6vectorISt10unique_ptrINS0_5PointESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !140
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #19
  resume { ptr, i32 } %i.b
}

declare void @_ZN4geos4geom10MultiPointC1EOSt6vectorISt10unique_ptrINS0_5PointESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(45)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom15GeometryFactory16createMultiPointEOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.94") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(45) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 3 uses
  invoke void @_ZN4geos4geom10MultiPointC1EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !140
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #19
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK4geos4geom15GeometryFactory16createMultiPointERKSt6vectorIPKNS0_8GeometryESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !95     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader

.thread:                                          ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18 ; 3 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !96
  %i.j = getelementptr i8, ptr %i.i, i64 %i.f     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.f, i1 false), !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.j, ptr %i.l, align 8, !tbaa !99
  store ptr %i.j, ptr %i.k, align 8, !tbaa !100
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, %.thread
  %i.m = phi ptr [ %i.h, %.thread ], [ %i.k, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit ]
  %i.n = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18
          to label %bb.c unwind label %bb.f       ; 3 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  %i.o = phi ptr [ %i.ad, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit ], [ %i.c, %.lr.ph.preheader ]
  %.019 = phi i64 [ %i.ab, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.019
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !7, !noalias !142
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 416
  %i.t = load ptr, ptr %i.s, align 8, !noalias !142
  %i.u = invoke noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %_ZNK4geos4geom8Geometry5cloneEv.exit unwind label %bb.b, !inline_history !123

_ZNK4geos4geom8Geometry5cloneEv.exit:             ; preds = %.lr.ph
  %i.v = load ptr, ptr %2, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.019 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 3 uses
  store ptr %i.u, ptr %i.w, align 8, !tbaa !60
  %.not.i.i.i.i16 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i16, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i: ; preds = %_ZNK4geos4geom8Geometry5cloneEv.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.x) #20, !inline_history !124
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i, %_ZNK4geos4geom8Geometry5cloneEv.exit
  %i.ab = add nuw i64 %.019, 1                    ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.ad = load ptr, ptr %1, align 8, !tbaa !95    ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = icmp ult i64 %i.ab, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !145

bb.b:                                             ; preds = %.lr.ph
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.c:                                             ; preds = %._crit_edge
  invoke void @_ZN4geos4geom10MultiPointC1EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(45) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %2, align 8, !tbaa !96    ; 3 uses
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.ak, %bb.d ] ; 2 uses
  %i.am = load ptr, ptr %.05.i.i.i, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.am) #20, !inline_history !108
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %i.al
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !109

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.d
  %i.ar = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.ak, %bb.d ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ar) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %i.n

bb.f:                                             ; preds = %._crit_edge
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.n) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.b
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.b ], [ %i.at, %bb.g ], [ %i.as, %bb.f ]
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom15GeometryFactory16createMultiPointEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.94") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(45) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 3 uses
  invoke void @_ZN4geos4geom10MultiPointC1EPSt6vectorIPNS0_8GeometryESaIS4_EEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef null, ptr noundef nonnull %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !140
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #19
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK4geos4geom15GeometryFactory16createMultiPointERKNS0_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.e = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader

.thread:                                          ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.g = shl nuw nsw i64 %i.d, 3                  ; 3 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #18 ; 4 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.g, i1 false), !tbaa !51
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.h, i64 %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.i, ptr %i.k, align 8, !tbaa !99
  store ptr %scevgep.i.i.i.i.i, ptr %i.j, align 8, !tbaa !100
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit, %.thread
  %i.l = phi ptr [ %i.f, %.thread ], [ %i.j, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit ]
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18
          to label %bb.h unwind label %bb.k       ; 3 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit
  %.018 = phi i64 [ %i.aa, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.018 ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.018)
          to label %bb.b unwind label %bb.g       ; 4 uses

bb.b:                                             ; preds = %.lr.ph
  %3 = load double, ptr %i.s, align 8, !tbaa !27
  %4 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %5 = load double, ptr %4, align 8
  %6 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %7 = load double, ptr %6, align 8
  %i.t = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18
          to label %.noexc16 unwind label %bb.g   ; 4 uses

.noexc16:                                         ; preds = %bb.b
  %8 = fcmp uno double %3, 0.000000e+00
  %9 = fcmp uno double %5, 0.000000e+00
  %or.cond.i.i = select i1 %8, i1 %9, i1 false
  %10 = fcmp uno double %7, 0.000000e+00
  %11 = select i1 %or.cond.i.i, i1 %10, i1 false
  br i1 %11, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.noexc16
  invoke void @_ZN4geos4geom5PointC1EPNS0_18CoordinateSequenceEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(82) %i.t, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(45) %0)
          to label %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit unwind label %bb.d, !noalias !146

common.resume.i:                                  ; preds = %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.v, %bb.f ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #19
  br label %.body

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.e:                                             ; preds = %.noexc16
  invoke void @_ZN4geos4geom5PointC1ERKNS0_10CoordinateEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(82) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(45) %0)
          to label %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit: ; preds = %bb.e, %bb.c
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !60   ; 3 uses
  store ptr %i.t, ptr %i.o, align 8, !tbaa !60
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i: ; preds = %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.w) #20, !inline_history !105
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i
  %i.aa = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !149

bb.g:                                             ; preds = %bb.b, %.lr.ph
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %._crit_edge
  invoke void @_ZN4geos4geom10MultiPointC1EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(45) %0)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %2, align 8, !tbaa !96    ; 3 uses
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.ac, %bb.i ] ; 2 uses
  %i.ae = load ptr, ptr %.05.i.i.i, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.ae) #20, !inline_history !108
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %i.ad
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !109

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.i
  %i.aj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %bb.i ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.aj) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %i.m

bb.k:                                             ; preds = %._crit_edge
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.m) #19
  br label %.body

.body:                                            ; preds = %bb.g, %common.resume.i, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.al, %bb.l ], [ %i.ab, %bb.g ], [ %common.resume.op.i, %common.resume.i ]
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK4geos4geom15GeometryFactory16createMultiPointERKSt6vectorINS0_10CoordinateESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !135    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.h = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader

.thread:                                          ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.j = shl nuw nsw i64 %i.g, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #18 ; 4 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !51
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.k, i64 %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.l, ptr %i.n, align 8, !tbaa !99
  store ptr %scevgep.i.i.i.i.i, ptr %i.m, align 8, !tbaa !100
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit, %.thread
  %i.o = phi ptr [ %i.i, %.thread ], [ %i.m, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit ]
  %i.p = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18
          to label %bb.g unwind label %bb.j       ; 3 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit
  %.018 = phi i64 [ %i.ab, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !96
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.018 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !135
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.018 ; 4 uses
  %3 = load double, ptr %i.t, align 8, !tbaa !27
  %4 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %5 = load double, ptr %4, align 8
  %6 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %7 = load double, ptr %6, align 8
  %i.u = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18
          to label %.noexc16 unwind label %bb.f   ; 4 uses

.noexc16:                                         ; preds = %.lr.ph
  %8 = fcmp uno double %3, 0.000000e+00
  %9 = fcmp uno double %5, 0.000000e+00
  %or.cond.i.i = select i1 %8, i1 %9, i1 false
  %10 = fcmp uno double %7, 0.000000e+00
  %11 = select i1 %or.cond.i.i, i1 %10, i1 false
  br i1 %11, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.noexc16
  invoke void @_ZN4geos4geom5PointC1EPNS0_18CoordinateSequenceEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(82) %i.u, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(45) %0)
          to label %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit unwind label %bb.c, !noalias !150

common.resume.i:                                  ; preds = %bb.e, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.w, %bb.e ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.u) #19
  br label %.body

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.d:                                             ; preds = %.noexc16
  invoke void @_ZN4geos4geom5PointC1ERKNS0_10CoordinateEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(82) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(45) %0)
          to label %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !60   ; 3 uses
  store ptr %i.u, ptr %i.r, align 8, !tbaa !60
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i: ; preds = %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.x) #20, !inline_history !105
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE.exit, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i
  %i.ab = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !153

bb.f:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %._crit_edge
  invoke void @_ZN4geos4geom10MultiPointC1EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(45) %0)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %2, align 8, !tbaa !96    ; 3 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.ad, %bb.h ] ; 2 uses
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.af) #20, !inline_history !108
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %i.ae
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !109

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.h
  %i.ak = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.ad, %bb.h ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ak) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %i.p

bb.j:                                             ; preds = %._crit_edge
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.p) #19
  br label %.body

.body:                                            ; preds = %bb.f, %common.resume.i, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.al, %bb.j ], [ %i.am, %bb.k ], [ %i.ac, %bb.f ], [ %common.resume.op.i, %common.resume.i ]
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom15GeometryFactory13createPolygonEm(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.34") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(45) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.26", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.26") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0, i64 noundef %2)
  %i.f = load ptr, ptr %3, align 8, !tbaa !61
  store ptr null, ptr %3, align 8, !tbaa !61
  %i.g = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
          to label %.noexc unwind label %bb.d     ; 3 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN4geos4geom10LinearRingC1EPNS0_18CoordinateSequenceEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %_ZNK4geos4geom15GeometryFactory16createLinearRingEPNS0_18CoordinateSequenceE.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.g) #19
  br label %.body

_ZNK4geos4geom15GeometryFactory16createLinearRingEPNS0_18CoordinateSequenceE.exit: ; preds = %.noexc
  %i.i = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #18
          to label %.noexc4 unwind label %bb.d    ; 3 uses

.noexc4:                                          ; preds = %_ZNK4geos4geom15GeometryFactory16createLinearRingEPNS0_18CoordinateSequenceE.exit
  invoke void @_ZN4geos4geom7PolygonC1EPNS0_10LinearRingEPSt6vectorIS3_SaIS3_EEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %_ZNK4geos4geom15GeometryFactory13createPolygonEPNS0_10LinearRingEPSt6vectorIS3_SaIS3_EE.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc4
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.i) #19
  br label %.body

_ZNK4geos4geom15GeometryFactory13createPolygonEPNS0_10LinearRingEPSt6vectorIS3_SaIS3_EE.exit: ; preds = %.noexc4
  store ptr %i.i, ptr %0, align 8, !tbaa !87
  %i.k = load ptr, ptr %3, align 8, !tbaa !61     ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %_ZNK4geos4geom15GeometryFactory13createPolygonEPNS0_10LinearRingEPSt6vectorIS3_SaIS3_EE.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #20, !inline_history !72
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNK4geos4geom15GeometryFactory13createPolygonEPNS0_10LinearRingEPSt6vectorIS3_SaIS3_EE.exit, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.d:                                             ; preds = %_ZNK4geos4geom15GeometryFactory16createLinearRingEPNS0_18CoordinateSequenceE.exit, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.o, %bb.d ], [ %i.j, %bb.c ]
  %i.p = load ptr, ptr %3, align 8, !tbaa !61     ; 3 uses
  %.not.i7 = icmp eq ptr %i.p, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit9, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i8

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i8: ; preds = %.body
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #20, !inline_history !72
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit9

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit9: ; preds = %.body, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK4geos4geom15GeometryFactory13createPolygonEPNS0_10LinearRingEPSt6vectorIS3_SaIS3_EE(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #18 ; 3 uses
  invoke void @_ZN4geos4geom7PolygonC1EPNS0_10LinearRingEPSt6vectorIS3_SaIS3_EEPKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

end_hunk_1
