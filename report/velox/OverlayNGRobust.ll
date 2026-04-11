inline.NumInlined: 351
inline.NumDeleted: 206
begin_hunk_0_@_ZN4geos9operation9overlayng15OverlayNGRobust16overlaySnapTriesEPKNS_4geom8GeometryES6_i:bb.a

_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryES6_.exit: ; preds = %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit.i, %.noexc23, %.noexc24
  %.0.i.i6.i = phi double [ %.sroa.speculated12.i.i5.i, %.noexc24 ], [ 0.000000e+00, %.noexc23 ], [ 0.000000e+00, %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit.i ]
  %6 = insertelement <2 x double> poison, double %.0.i.i.i, i64 0
  %7 = insertelement <2 x double> %6, double %.0.i.i6.i, i64 1
  %8 = fdiv <2 x double> %7, splat (double 1.000000e+12) ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0      ; 2 uses
  %10 = extractelement <2 x double> %8, i64 1     ; 2 uses
  %i.am = fcmp olt double %9, %10
  %.sroa.speculated.i = select i1 %i.am, double %10, double %9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZN4geos9operation9overlayng15OverlayNGRobust14overlaySnapTolEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %.sroa.speculated.i)
          to label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b
end_hunk_0
begin_hunk_1_@_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryES6_:bb.a

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

end_hunk_1
