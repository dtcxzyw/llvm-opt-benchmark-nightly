inline.NumInlined: 260
inline.NumDeleted: 143
begin_hunk_0_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56   ; 4 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.i                       ; 2 uses
  %i.x = sdiv exact i64 %i.w, 24                  ; 9 uses
  %.not.not = icmp ugt i64 %i.x, %.015.i
  br i1 %.not.not, label %bb.e, label %bb.f

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
  %.lcssa69.unr = phi ptr [ poison, %.preheader.i24.preheader ], [ %i.ah, %.preheader.i24.prol ]
  %.013.i.unr = phi i64 [ %i.x, %.preheader.i24.preheader ], [ %i.ag, %.preheader.i24.prol ]
  %.unr76 = phi ptr [ %1, %.preheader.i24.preheader ], [ %i.ah, %.preheader.i24.prol ]
  %i.ai = icmp ult i64 %i.x, 8
  br i1 %i.ai, label %_ZSt9__advanceISt20_List_const_iteratorIN4geos4geom10CoordinateEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.preheader.i24

.preheader7.i:                                    ; preds = %bb.f
end_hunk_1
