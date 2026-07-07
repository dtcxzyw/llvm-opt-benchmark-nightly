inline.NumInlined: 351
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4geos9operation8geounion12UnaryUnionOpC2ERKNS_4geom8GeometryE:bb.a
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  invoke void @_ZN4geos4geom4util17GeometryExtracter7extractINS0_5PointESt6vectorIPKS4_SaIS7_EEEEvRKNS0_8GeometryERT0_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN4geos9operation8geounion12UnaryUnionOp7extractERKNS_4geom8GeometryE.exit unwind label %bb.d

_ZN4geos9operation8geounion12UnaryUnionOp7extractERKNS_4geom8GeometryE.exit: ; preds = %.noexc4
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !7    ; 3 uses
  %.not.i6 = icmp eq ptr %i.j, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i: ; preds = %bb.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.j) #15, !inline_history !55
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4geos4geom5PointESaIS4_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #17
  br label %_ZNSt6vectorIPKN4geos4geom5PointESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN4geos4geom5PointESaIS4_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKN4geos4geom5PointESaIS4_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #17
  br label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN4geos4geom5PointESaIS4_EED2Ev.exit, %bb.f
  %i.p = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIPKN4geos4geom7PolygonESaIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #17
  br label %_ZNSt6vectorIPKN4geos4geom7PolygonESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN4geos4geom7PolygonESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit, %bb.g
  resume { ptr, i32 } %i.i
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4geos9operation8geounion12UnaryUnionOp5UnionEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9operation8geounion13UnionStrategyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9operation8geounion12UnaryUnionOpD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.b) #15, !inline_history !55
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4geos4geom5PointESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #17
  br label %_ZNSt6vectorIPKN4geos4geom5PointESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN4geos4geom5PointESaIS4_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4geos4geom5PointESaIS4_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #17
  br label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN4geos4geom5PointESaIS4_EED2Ev.exit, %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPKN4geos4geom7PolygonESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #17
  br label %_ZNSt6vectorIPKN4geos4geom7PolygonESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN4geos4geom7PolygonESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit, %bb.d
  ret void
}

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK4geos4geom8Geometry17getPrecisionModelEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4geos4geom14PrecisionModel10isFloatingEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN4geos9operation9overlayng9OverlayNG7overlayEPKNS_4geom8GeometryES6_iPKNS3_14PrecisionModelE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4geos4geom14PrecisionModelC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13runtime_erroraSERKS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng15OverlayNGRobust16overlaySnapTriesEPKNS_4geom8GeometryES6_i(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 26 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 20 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit.i, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %1), !inline_history !56
  br i1 %i.e, label %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit.i, label %.noexc22

.noexc22:                                         ; preds = %.noexc
  %i.f = load ptr, ptr %1, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(40) %1), !inline_history !56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load <2 x double>, ptr %i.i, align 8, !tbaa !57
  %i.l = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.k) ; 2 uses
  %i.m = load <2 x double>, ptr %i.j, align 8, !tbaa !57
  %i.n = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.m) ; 2 uses
  %i.o = fcmp olt <2 x double> %i.l, %i.n
  %i.p = select <2 x i1> %i.o, <2 x double> %i.n, <2 x double> %i.l ; 2 uses
  %i.q = extractelement <2 x double> %i.p, i64 0  ; 2 uses
  %i.r = extractelement <2 x double> %i.p, i64 1  ; 2 uses
  %i.s = fcmp olt double %i.r, %i.q
  %.sroa.speculated12.i.i.i = select i1 %i.s, double %i.q, double %i.r
  br label %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit.i

_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit.i: ; preds = %.noexc22, %.noexc, %bb.a
  %.0.i.i.i = phi double [ %.sroa.speculated12.i.i.i, %.noexc22 ], [ 0.000000e+00, %.noexc ], [ 0.000000e+00, %bb.a ]
  %i.t = icmp eq ptr %2, null
  br i1 %i.t, label %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryES6_.exit, label %.noexc23

.noexc23:                                         ; preds = %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit.i
  %i.u = load ptr, ptr %2, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(40) %2), !inline_history !56
  br i1 %i.x, label %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryES6_.exit, label %.noexc24

.noexc24:                                         ; preds = %.noexc23
  %i.y = load ptr, ptr %2, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %2), !inline_history !56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load <2 x double>, ptr %i.ab, align 8, !tbaa !57
  %i.ae = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ad) ; 2 uses
  %i.af = load <2 x double>, ptr %i.ac, align 8, !tbaa !57
  %i.ag = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.af) ; 2 uses
  %i.ah = fcmp olt <2 x double> %i.ae, %i.ag
  %i.ai = select <2 x i1> %i.ah, <2 x double> %i.ag, <2 x double> %i.ae ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0 ; 2 uses
  %i.ak = extractelement <2 x double> %i.ai, i64 1 ; 2 uses
  %i.al = fcmp olt double %i.ak, %i.aj
  %.sroa.speculated12.i.i5.i = select i1 %i.al, double %i.aj, double %i.ak
  br label %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryES6_.exit

_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryES6_.exit: ; preds = %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit.i, %.noexc23, %.noexc24
  %.0.i.i6.i = phi double [ %.sroa.speculated12.i.i5.i, %.noexc24 ], [ 0.000000e+00, %.noexc23 ], [ 0.000000e+00, %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit.i ]
  %6 = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %7 = insertelement <2 x double> %6, double %.0.i.i6.i, i64 1
  %8 = fdiv <2 x double> %7, splat (double 1.000000e+12) ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0      ; 2 uses
  %10 = extractelement <2 x double> %8, i64 1     ; 2 uses
  %i.am = fcmp olt double %9, %10
  %.sroa.speculated.i = select i1 %i.am, double %10, double %9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZN4geos9operation9overlayng15OverlayNGRobust14overlaySnapTolEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %.sroa.speculated.i)
          to label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryES6_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE ; 3 uses
  %i.ao = extractvalue { ptr, i32 } %i.an, 1
  %i.ap = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4geos4util17TopologyExceptionE) #15
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread, label %.body

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %bb.b
  %i.ar = extractvalue { ptr, i32 } %i.an, 0
  %i.as = call ptr @__cxa_begin_catch(ptr %i.ar) #15 ; 0 uses
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryES6_.exit
  %.pr = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.4, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.3, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.2, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.1, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  %.pr.lcssa = phi ptr [ %.pr, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit ], [ %.pr.1, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.1 ], [ %.pr.2, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.2 ], [ %.pr.3, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.3 ], [ %.pr.4, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.4 ]
  %i.at = ptrtoint ptr %.pr.lcssa to i64
  store i64 %i.at, ptr %0, align 8, !tbaa !7
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit34

.body:                                            ; preds = %bb.l, %bb.j, %bb.h, %bb.f, %bb.b
  %.lcssa = phi { ptr, i32 } [ %i.an, %bb.b ], [ %i.ax, %bb.f ], [ %i.bf, %bb.h ], [ %i.bn, %bb.j ], [ %i.bv, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %.lcssa

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN4geos9operation9overlayng15OverlayNGRobust15overlaySnapBothEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %.sroa.speculated.i)
  %i.au = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not44 = icmp eq ptr %i.au, null
  br i1 %.not44, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.4, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.3, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.2, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.1, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28
  %.lcssa48 = phi ptr [ %i.au, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28 ], [ %i.bd, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.1 ], [ %i.bl, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.2 ], [ %i.bt, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.3 ], [ %i.cb, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.4 ]
  %i.av = ptrtoint ptr %.lcssa48 to i64
  store i64 %i.av, ptr %0, align 8, !tbaa !7
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit34

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28
  %i.aw = fmul double %.sroa.speculated.i, 1.000000e+01 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZN4geos9operation9overlayng15OverlayNGRobust14overlaySnapTolEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %i.aw)
          to label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.1 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE ; 3 uses
  %i.ay = extractvalue { ptr, i32 } %i.ax, 1
  %i.az = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4geos4util17TopologyExceptionE) #15
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread.1, label %.body

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread.1: ; preds = %bb.f
  %i.bb = extractvalue { ptr, i32 } %i.ax, 0
  %i.bc = call ptr @__cxa_begin_catch(ptr %i.bb) #15 ; 0 uses
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.1

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.1: ; preds = %bb.e
  %.pr.1 = load ptr, ptr %4, align 8, !tbaa !7    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.not.1 = icmp eq ptr %.pr.1, null
  br i1 %.not.1, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.1, label %bb.c

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.1: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.1, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread.1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN4geos9operation9overlayng15OverlayNGRobust15overlaySnapBothEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %i.aw)
  %i.bd = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not44.1 = icmp eq ptr %i.bd, null
  br i1 %.not44.1, label %bb.g, label %bb.d

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.1
  %i.be = fmul double %i.aw, 1.000000e+01         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZN4geos9operation9overlayng15OverlayNGRobust14overlaySnapTolEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %i.be)
          to label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.2 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE ; 3 uses
  %i.bg = extractvalue { ptr, i32 } %i.bf, 1
  %i.bh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4geos4util17TopologyExceptionE) #15
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread.2, label %.body

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread.2: ; preds = %bb.h
  %i.bj = extractvalue { ptr, i32 } %i.bf, 0
  %i.bk = call ptr @__cxa_begin_catch(ptr %i.bj) #15 ; 0 uses
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.2

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.2: ; preds = %bb.g
  %.pr.2 = load ptr, ptr %4, align 8, !tbaa !7    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.not.2 = icmp eq ptr %.pr.2, null
  br i1 %.not.2, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.2, label %bb.c

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.2: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.2, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread.2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN4geos9operation9overlayng15OverlayNGRobust15overlaySnapBothEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %i.be)
  %i.bl = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not44.2 = icmp eq ptr %i.bl, null
  br i1 %.not44.2, label %bb.i, label %bb.d

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.2
  %i.bm = fmul double %i.be, 1.000000e+01         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZN4geos9operation9overlayng15OverlayNGRobust14overlaySnapTolEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %i.bm)
          to label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.3 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE ; 3 uses
  %i.bo = extractvalue { ptr, i32 } %i.bn, 1
  %i.bp = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4geos4util17TopologyExceptionE) #15
  %i.bq = icmp eq i32 %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread.3, label %.body

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread.3: ; preds = %bb.j
  %i.br = extractvalue { ptr, i32 } %i.bn, 0
  %i.bs = call ptr @__cxa_begin_catch(ptr %i.br) #15 ; 0 uses
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.3

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.3: ; preds = %bb.i
  %.pr.3 = load ptr, ptr %4, align 8, !tbaa !7    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.not.3 = icmp eq ptr %.pr.3, null
  br i1 %.not.3, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.3, label %bb.c

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.3: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.3, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread.3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN4geos9operation9overlayng15OverlayNGRobust15overlaySnapBothEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %i.bm)
  %i.bt = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not44.3 = icmp eq ptr %i.bt, null
  br i1 %.not44.3, label %bb.k, label %bb.d

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.3
  %i.bu = fmul double %i.bm, 1.000000e+01         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZN4geos9operation9overlayng15OverlayNGRobust14overlaySnapTolEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %i.bu)
          to label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.4 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE ; 3 uses
  %i.bw = extractvalue { ptr, i32 } %i.bv, 1
  %i.bx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4geos4util17TopologyExceptionE) #15
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread.4, label %.body

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread.4: ; preds = %bb.l
  %i.bz = extractvalue { ptr, i32 } %i.bv, 0
  %i.ca = call ptr @__cxa_begin_catch(ptr %i.bz) #15 ; 0 uses
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.4

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.4: ; preds = %bb.k
  %.pr.4 = load ptr, ptr %4, align 8, !tbaa !7    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.not.4 = icmp eq ptr %.pr.4, null
  br i1 %.not.4, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.4, label %bb.c

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.4: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.4, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.thread.4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN4geos9operation9overlayng15OverlayNGRobust15overlaySnapBothEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %i.bu)
  %i.cb = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not44.4 = icmp eq ptr %i.cb, null
  br i1 %.not44.4, label %.critedge, label %bb.d

.critedge:                                        ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit28.4
  store ptr null, ptr %0, align 8, !tbaa !54
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit34

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit34: ; preds = %.critedge, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng15OverlayNGRobust9overlaySREPKNS_4geom8GeometryES6_i(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.geos::geom::PrecisionModel", align 8 ; 5 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = invoke noundef double @_ZN4geos9operation9overlayng13PrecisionUtil9safeScaleEPKNS_4geom8GeometryES6_(ptr noundef %1, ptr noundef %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZN4geos4geom14PrecisionModelC1Ed(ptr noundef nonnull align 8 dereferenceable(16) %4, double noundef %i.a)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  invoke void @_ZN4geos9operation9overlayng9OverlayNG7overlayEPKNS_4geom8GeometryES6_iPKNS3_14PrecisionModelE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %4)
          to label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit unwind label %bb.f

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.c
  %i.b = load ptr, ptr %5, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.c = ptrtoint ptr %i.b to i64
  store i64 %i.c, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit17

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.e, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.d, %bb.d ] ; 3 uses
  %.111 = extractvalue { ptr, i32 } %.pn.pn, 1
  %i.g = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4geos4util17TopologyExceptionE) #15
  %i.h = icmp eq i32 %.111, %i.g
  br i1 %i.h, label %bb.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit20

bb.i:                                             ; preds = %bb.h
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.i = call ptr @__cxa_begin_catch(ptr %.1) #15 ; 0 uses
  call void @__cxa_end_catch()
  store ptr null, ptr %0, align 8, !tbaa !54
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit17

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit17: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit, %bb.i
  ret void

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit20: ; preds = %bb.h
  resume { ptr, i32 } %.pn.pn
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC1EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef double @_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryES6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %0), !inline_history !59
  br i1 %i.e, label %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(40) %0), !inline_history !59 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load <2 x double>, ptr %i.i, align 8, !tbaa !57
  %i.l = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.k) ; 2 uses
  %i.m = load <2 x double>, ptr %i.j, align 8, !tbaa !57
  %i.n = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.m) ; 2 uses
  %i.o = fcmp olt <2 x double> %i.l, %i.n
  %i.p = select <2 x i1> %i.o, <2 x double> %i.n, <2 x double> %i.l ; 2 uses
  %i.q = extractelement <2 x double> %i.p, i64 0  ; 2 uses
  %i.r = extractelement <2 x double> %i.p, i64 1  ; 2 uses
  %i.s = fcmp olt double %i.r, %i.q
  %.sroa.speculated12.i.i = select i1 %i.s, double %i.q, double %i.r
  br label %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit

_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi double [ %.sroa.speculated12.i.i, %bb.c ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.t = icmp eq ptr %1, null
  br i1 %i.t, label %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit7, label %bb.d

bb.d:                                             ; preds = %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit
  %i.u = load ptr, ptr %1, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(40) %1), !inline_history !59
  br i1 %i.x, label %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit7, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %1, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %1), !inline_history !59 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load <2 x double>, ptr %i.ab, align 8, !tbaa !57
  %i.ae = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ad) ; 2 uses
  %i.af = load <2 x double>, ptr %i.ac, align 8, !tbaa !57
  %i.ag = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.af) ; 2 uses
  %i.ah = fcmp olt <2 x double> %i.ae, %i.ag
  %i.ai = select <2 x i1> %i.ah, <2 x double> %i.ag, <2 x double> %i.ae ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0 ; 2 uses
  %i.ak = extractelement <2 x double> %i.ai, i64 1 ; 2 uses
  %i.al = fcmp olt double %i.ak, %i.aj
  %.sroa.speculated12.i.i5 = select i1 %i.al, double %i.aj, double %i.ak
  br label %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit7

_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit7: ; preds = %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit, %bb.d, %bb.e
  %.0.i.i6 = phi double [ %.sroa.speculated12.i.i5, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit ]
  %2 = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %3 = insertelement <2 x double> %2, double %.0.i.i6, i64 1
  %4 = fdiv <2 x double> %3, splat (double 1.000000e+12) ; 2 uses
  %5 = extractelement <2 x double> %4, i64 0      ; 2 uses
  %6 = extractelement <2 x double> %4, i64 1      ; 2 uses
  %i.am = fcmp olt double %5, %6
  %.sroa.speculated = select i1 %i.am, double %6, double %5
  ret double %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng15OverlayNGRobust15overlaySnappingEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN4geos9operation9overlayng15OverlayNGRobust14overlaySnapTolEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr @_ZTIN4geos4util17TopologyExceptionE ; 3 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 1
  %i.c = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4geos4util17TopologyExceptionE) #15
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = extractvalue { ptr, i32 } %i.a, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #15 ; 0 uses
  tail call void @__cxa_end_catch()
  store ptr null, ptr %0, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng15OverlayNGRobust15overlaySnapBothEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  invoke void @_ZN4geos9operation9overlayng15OverlayNGRobust8snapSelfEPKNS_4geom8GeometryEd(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef %1, double noundef %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZN4geos9operation9overlayng15OverlayNGRobust8snapSelfEPKNS_4geom8GeometryEd(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef %2, double noundef %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %5, align 8, !tbaa !7
  %i.b = load ptr, ptr %6, align 8, !tbaa !7
  invoke void @_ZN4geos9operation9overlayng15OverlayNGRobust14overlaySnapTolEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %i.a, ptr noundef %i.b, i32 noundef %3, double noundef %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %6, align 8, !tbaa !7      ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i: ; preds = %bb.d
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.c) #15, !inline_history !55
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.g = load ptr, ptr %5, align 8, !tbaa !7      ; 3 uses
  %.not.i14 = icmp eq ptr %i.g, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit16, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i15

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i15: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.g) #15, !inline_history !55
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit16

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit16: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit22

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit19

bb.g:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !7      ; 3 uses
  %.not.i17 = icmp eq ptr %i.n, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit19, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i18

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i18: ; preds = %bb.g
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.n) #15, !inline_history !55
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit19

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit19: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i18, %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.m, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i18 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.r = load ptr, ptr %5, align 8, !tbaa !7      ; 3 uses
  %.not.i20 = icmp eq ptr %i.r, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit22, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i21

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i21: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit19
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.r) #15, !inline_history !55
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit22

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i21, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit19, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %.pn, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit19 ], [ %.pn, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i21 ] ; 3 uses
  %.111 = extractvalue { ptr, i32 } %.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.v = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4geos4util17TopologyExceptionE) #15
  %i.w = icmp eq i32 %.111, %i.v
  br i1 %i.w, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit22
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %.1) #15 ; 0 uses
  call void @__cxa_end_catch()
  store ptr null, ptr %0, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit16
  ret void

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng15OverlayNGRobust14overlaySnapTolEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.geos::noding::snap::SnappingNoder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos6noding4snap13SnappingNoderE, i64 16), ptr %5, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %4, ptr %i.a, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @_ZN4geos6noding4snap18SnappingPointIndexC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %4)
  invoke void @_ZN4geos9operation9overlayng9OverlayNG7overlayEPKNS_4geom8GeometryES6_iPNS_6noding5NoderE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %5)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos6noding4snap13SnappingNoderE, i64 16), ptr %5, align 8, !tbaa !10
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4geos6noding4snap13SnappingNoderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4geos5index6kdtree6KdTreeEEclEPS3_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIN4geos5index6kdtree6KdNodeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.g, %bb.d ] ; 3 uses
  %i.k = load ptr, ptr %.06.i.i.i.i.i.i.i.i, align 8, !tbaa !81
  call void @_ZdlPv(ptr noundef %i.k) #17
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 8
  %i.m = icmp ult ptr %.06.i.i.i.i.i.i.i.i, %i.h
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIN4geos5index6kdtree6KdNodeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i.i.i.i, !llvm.loop !82

_ZNSt11_Deque_baseIN4geos5index6kdtree6KdNodeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !73
  br label %_ZNSt11_Deque_baseIN4geos5index6kdtree6KdNodeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i.i.i.i

_ZNSt11_Deque_baseIN4geos5index6kdtree6KdNodeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN4geos5index6kdtree6KdNodeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i.i.i.i, %bb.d
  %i.n = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZNSt11_Deque_baseIN4geos5index6kdtree6KdNodeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i.i.i.i ], [ %i.d, %bb.d ]
  call void @_ZdlPv(ptr noundef %i.n) #17
  br label %_ZNKSt14default_deleteIN4geos5index6kdtree6KdTreeEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN4geos5index6kdtree6KdTreeEEclEPS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN4geos5index6kdtree6KdNodeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i.i.i.i, %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.c) #17
  br label %_ZN4geos6noding4snap13SnappingNoderD2Ev.exit

_ZN4geos6noding4snap13SnappingNoderD2Ev.exit:     ; preds = %bb.b, %_ZNKSt14default_deleteIN4geos5index6kdtree6KdTreeEEclEPS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void
end_hunk_0
