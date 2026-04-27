inline.NumInlined: 29520
inline.NumDeleted: 7045
begin_hunk_0_@_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EE20ConvertBlockPointersERKNS_6vectorIPhLb1ESaIS4_EEE:bb.a
  br i1 %.not44, label %_ZNSt6vectorIPhSaIS0_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPhSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPhSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 4 uses
  store ptr %3, ptr %0, align 8, !tbaa !1241
  store ptr %3, ptr %2, align 8, !tbaa !1469
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.f ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !1470
  br label %_ZNSt6vectorIPhSaIS0_EE7reserveEm.exit

_ZNSt6vectorIPhSaIS0_EE7reserveEm.exit:           ; preds = %_ZNSt12_Vector_baseIPhSaIS0_EE11_M_allocateEm.exit.i, %bb.b
  %.promoted18 = phi ptr [ %3, %_ZNSt12_Vector_baseIPhSaIS0_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 3 uses
  %.promoted = phi ptr [ %i.i, %_ZNSt12_Vector_baseIPhSaIS0_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 2 uses
  %.not22 = icmp eq ptr %i.c, %i.b
  br i1 %.not22, label %._crit_edge, label %.lr.ph
end_hunk_0
