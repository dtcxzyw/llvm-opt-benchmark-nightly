inline.NumInlined: 351
inline.NumDeleted: 206
begin_hunk_0_@_ZN4geos9operation9overlayng15OverlayNGRobust16overlaySnapTriesEPKNS_4geom8GeometryES6_i:bb.a

_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryES6_.exit: ; preds = %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit.i, %.noexc23, %.noexc24
  %.0.i.i6.i = phi double [ %.sroa.speculated12.i.i5.i, %.noexc24 ], [ 0.000000e+00, %.noexc23 ], [ 0.000000e+00, %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit.i ]
  %6 = fdiv double %.0.i.i.i, 1.000000e+12        ; 2 uses
  %7 = fdiv double %.0.i.i6.i, 1.000000e+12       ; 2 uses
  %i.am = fcmp olt double %6, %7
  %.sroa.speculated.i = select i1 %i.am, double %7, double %6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZN4geos9operation9overlayng15OverlayNGRobust14overlaySnapTolEPKNS_4geom8GeometryES6_id(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %.sroa.speculated.i)
          to label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b
end_hunk_0
begin_hunk_1_@_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryES6_:bb.a

_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit7: ; preds = %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit, %bb.d, %bb.e
  %.0.i.i6 = phi double [ %.sroa.speculated12.i.i5, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %_ZN4geos9operation9overlayng15OverlayNGRobust13snapToleranceEPKNS_4geom8GeometryE.exit ]
  %2 = fdiv double %.0.i.i, 1.000000e+12          ; 2 uses
  %3 = fdiv double %.0.i.i6, 1.000000e+12         ; 2 uses
  %i.am = fcmp olt double %2, %3
  %.sroa.speculated = select i1 %i.am, double %3, double %2
  ret double %.sroa.speculated
}

end_hunk_1
