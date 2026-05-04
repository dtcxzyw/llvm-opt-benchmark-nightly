inline.NumInlined: 1494
inline.NumDeleted: 769
begin_hunk_0_@_ZN4geos9operation6buffer13BufferBuilder21bufferLineSingleSidedEPKNS_4geom8GeometryEdb:bb.a

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.eq, ptr %i.eh, align 8, !tbaa !145
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !148
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.en
  store ptr %i.es, ptr %i.ep, align 8, !tbaa !149
  %.pre447 = load ptr, ptr %i.ei, align 8, !tbaa !139 ; 2 uses
  %.pre448 = load ptr, ptr %i.eg, align 8, !tbaa !142 ; 3 uses
  %.pre462 = ptrtoint ptr %.pre447 to i64
  %.pre463.a = ptrtoint ptr %.pre448 to i64
  %.pre465 = sub i64 %.pre462, %.pre463.a
  %i.et = ashr exact i64 %.pre465, 3
  %i.eu = icmp eq ptr %.pre447, %.pre448
  %i.ev = call i64 @llvm.umax.i64(i64 %i.et, i64 1)
  br i1 %i.eu, label %._crit_edge405, label %.lr.ph404

end_hunk_0
begin_hunk_1_@_ZN4geos9operation6buffer13BufferBuilder21bufferLineSingleSidedEPKNS_4geom8GeometryEdb:bb.a
  br label %._crit_edge405

._crit_edge405:                                   ; preds = %bb.ai, %._crit_edge405.loopexit, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit
  %i.gu = phi ptr [ %.pre449, %._crit_edge405.loopexit ], [ %.pre448, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit ], [ %i.ek, %bb.ai ] ; 2 uses
  %.not.i.i.i243 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i243, label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit, label %bb.ax

end_hunk_1
