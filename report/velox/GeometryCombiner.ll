inline.NumInlined: 322
inline.NumDeleted: 162
begin_hunk_0_@_ZN4geos4geom4util16GeometryCombinerC2EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS5_EESaIS8_EE:bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph56, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit34
  %.sroa.039.054 = phi ptr [ %i.a, %.lr.ph56 ], [ %i.do, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit34 ] ; 5 uses
  %i.g = load ptr, ptr %.sroa.039.054, align 8    ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = ptrtoint ptr %i.g to i64
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN4geos4geom4util16GeometryCombinerC2EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS5_EESaIS8_EE:bb.a

.noexc33:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz
  %3 = load i64, ptr %.sroa.039.054, align 8, !tbaa !12
  store i64 %3, ptr %i.ci, align 8, !tbaa !12
  store ptr null, ptr %.sroa.039.054, align 8, !tbaa !12
  %.not10.i.i.i.i.i.i.i23 = icmp eq ptr %i.bw, %i.bt
  br i1 %.not10.i.i.i.i.i.i.i23, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i28, label %iter.check
end_hunk_1
