inline.NumInlined: 508
inline.NumDeleted: 248
begin_hunk_0_@_ZN4geos9operation8geounion12OverlapUnion7combineERSt10unique_ptrINS_4geom8GeometryESt14default_deleteIS5_EERSt6vectorIS8_SaIS8_EE:bb.a
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  %ind.escape = getelementptr i8, ptr %i.af, i64 -8
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
end_hunk_0
begin_hunk_1_@_ZN4geos9operation8geounion12OverlapUnion7combineERSt10unique_ptrINS_4geom8GeometryESt14default_deleteIS5_EERSt6vectorIS8_SaIS8_EE:bb.a
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !112

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %i.z, %n.vec15
  %ind.escape22 = getelementptr i8, ptr %i.at, i64 -8
  br i1 %cmp.n21, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.t, %vector.memcheck ], [ %i.af, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
end_hunk_1
begin_hunk_2_@_ZN4geos9operation8geounion12OverlapUnion7combineERSt10unique_ptrINS_4geom8GeometryESt14default_deleteIS5_EERSt6vectorIS8_SaIS8_EE:bb.a
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !113

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.012.i.i.i.i.i.i.i.lcssa = phi ptr [ %ind.escape22, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.012.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.lcssa, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.g
end_hunk_2
