inline.NumInlined: 260
inline.NumDeleted: 143
begin_hunk_0_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i
_ZSt10__distanceIN4geos4geom10CoordinateEElSt20_List_const_iteratorIT_ES5_St18input_iterator_tag.exit: ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = load ptr, ptr %0, align 8, !tbaa !51     ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag:.preheader.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyISt20_List_const_iteratorIS2_EEEPS2_mT_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %0, align 8, !tbaa !51       ; 2 uses
  %.not.i18 = icmp eq ptr %3, null
  br i1 %.not.i18, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyISt20_List_const_iteratorIS2_EEEPS2_mT_S9_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %3) #14
  br label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyISt20_List_const_iteratorIS2_EEEPS2_mT_S9_.exit, %bb.c
end_hunk_1
