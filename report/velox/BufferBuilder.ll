inline.NumInlined: 1494
inline.NumDeleted: 769
begin_hunk_0_@_ZN4geos9operation6buffer13BufferBuilder21bufferLineSingleSidedEPKNS_4geom8GeometryEdb:bb.a

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.er, ptr %i.ei, align 8, !tbaa !147
  store ptr %i.er, ptr %i.es, align 8, !tbaa !150
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eo
  store ptr %i.et, ptr %i.eq, align 8, !tbaa !151
  %.pre447 = load ptr, ptr %i.ej, align 8, !tbaa !141 ; 2 uses
  %.pre448 = load ptr, ptr %i.eh, align 8, !tbaa !144 ; 3 uses
  %.pre462 = ptrtoint ptr %.pre447 to i64
  %.pre463.a = ptrtoint ptr %.pre448 to i64
  %.pre465 = sub i64 %.pre462, %.pre463.a
  %i.eu = ashr exact i64 %.pre465, 3
  %i.ev = icmp eq ptr %.pre447, %.pre448
  %i.ew = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  br i1 %i.ev, label %._crit_edge405, label %.lr.ph404

end_hunk_0
begin_hunk_1_@_ZN4geos9operation6buffer13BufferBuilder21bufferLineSingleSidedEPKNS_4geom8GeometryEdb:bb.a
  br label %._crit_edge405

._crit_edge405:                                   ; preds = %bb.ai, %._crit_edge405.loopexit, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit
  %i.gv = phi ptr [ %.pre449, %._crit_edge405.loopexit ], [ %.pre448, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit ], [ %i.el, %bb.ai ] ; 2 uses
  %.not.i.i.i243 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i243, label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit, label %bb.ax

end_hunk_1
