inline.NumInlined: 511
inline.NumDeleted: 248
begin_hunk_0_@_ZN4geos9operation12intersection21RectangleIntersection21clip_linestring_partsEPKNS_4geom10LineStringERNS1_28RectangleIntersectionBuilderERKNS1_9RectangleE:bb.a
  %.018.i = phi i32 [ %.0.i, %bb.i ], [ %i.az, %bb.j ], [ %i.ax, %bb.h ], [ 1, %.lr.ph.preheader.preheader ], [ 1, %.outer.backedge ]
  %i.ba = add nuw i64 %.0171.ph8451631, 1         ; 3 uses
  %i.bb = icmp ult i64 %i.ba, %i.d
  br i1 %i.bb, label %.lr.ph1734, label %.critedge10

bb.k:                                             ; preds = %.lr.ph
  %i.bc = add nuw i64 %.0171.ph8451724, 1         ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN4geos9operation12intersection21RectangleIntersection21clip_linestring_partsEPKNS_4geom10LineStringERNS1_28RectangleIntersectionBuilderERKNS1_9RectangleE:bb.a
  %spec.select = select i1 %i.ik, i8 %.0159.ph8461723, i8 1
  br label %.outer.backedge

.lr.ph1734:                                       ; preds = %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread
  %i.il = phi i64 [ %i.pc, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread ], [ %i.ba, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ] ; 7 uses
  %.01838101733 = phi i64 [ %.1184, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread ], [ %.0171.ph8451631, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ] ; 8 uses
  %.01818111732 = phi i32 [ %.1182, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread ], [ %.018.i, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ] ; 2 uses
  %.61778121731 = phi i64 [ %i.il, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread ], [ %.0171.ph8451631, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ] ; 3 uses
  %.21618131730 = phi i8 [ %.7166, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit277.thread ], [ %.0159.ph8461642, %_ZNK4geos9operation12intersection9Rectangle8positionEdd.exit ] ; 5 uses
  %i.im = load ptr, ptr %4, align 8, !tbaa !20    ; 4 uses
  %i.in = getelementptr inbounds [24 x i8], ptr %i.im, i64 %i.il ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
end_hunk_1
begin_hunk_2_@_ZN4geos9operation12intersection21RectangleIntersection21clip_linestring_partsEPKNS_4geom10LineStringERNS1_28RectangleIntersectionBuilderERKNS1_9RectangleE:bb.a

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i336: ; preds = %bb.dn
  %i.nx = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i347 unwind label %.loopexit ; 6 uses

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i347: ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i336
  store double %.0473.ph8441609, ptr %i.nx, align 8, !tbaa !26
  %13 = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store double %.0478.ph8431587, ptr %13, align 8, !tbaa !24
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  store double 0x7FF8000000000000, ptr %i.ny, align 8, !tbaa !44
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 24 ; 3 uses
end_hunk_2
