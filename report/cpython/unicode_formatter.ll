inline.NumInlined: 99
inline.NumDeleted: 26
begin_hunk_0_@_PyLong_FormatAdvancedWriter:bb.a

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.n
  %.071.i = phi i32 [ 10, %bb.x ], [ 16, %bb.w ], [ 8, %bb.v ], [ 2, %bb.n ] ; 2 uses
  %.070.i = phi i64 [ 0, %bb.x ], [ 2, %bb.w ], [ 2, %bb.v ], [ 2, %bb.n ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !22
  switch i32 %i.ah, label %bb.z [
end_hunk_0
begin_hunk_1_@_PyLong_FormatAdvancedWriter:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !26
  %.not105.i = icmp eq i32 %i.as, 0
  %spec.select.i = select i1 %.not105.i, i64 0, i64 %.070.i ; 2 uses
  %i.at = tail call ptr @_PyLong_Format(ptr noundef %1, i32 noundef %.071.i) #11 ; 11 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %Py_XDECREF.exit.i, label %bb.ae
end_hunk_1
begin_hunk_2_@_PyLong_FormatAdvancedWriter:bb.a

bb.ao:                                            ; preds = %_PyUnicode_DATA.exit.i.i, %_PyUnicode_DATA.exit17.i.i, %_PyUnicode_DATA.exit25.i.i
  %.0.i.i = phi i32 [ %i.be, %_PyUnicode_DATA.exit.i.i ], [ %i.bi, %_PyUnicode_DATA.exit17.i.i ], [ %i.bl, %_PyUnicode_DATA.exit25.i.i ]
  %i.bm = icmp eq i32 %.0.i.i, 45                 ; 2 uses
  %.083.i = select i1 %i.bm, i32 45, i32 0        ; 2 uses
  %.074.i = zext i1 %i.bm to i64                  ; 3 uses
  %.1.i = or disjoint i64 %.070.i, %.074.i        ; 3 uses
  %i.bn = sub i64 %.val110.i, %.1.i               ; 2 uses
  %i.bo = icmp eq i32 %i.m, 110
  br i1 %i.bo, label %bb.aq, label %bb.ap

end_hunk_2
begin_hunk_3_@_PyLong_FormatAdvancedWriter:bb.a
  %.080.i46 = phi i64 [ 1, %.thread ], [ 0, %bb.ao ]
  %.182.i44 = phi i64 [ 1, %.thread ], [ %i.bn, %bb.ao ]
  %.285.i42 = phi i32 [ 0, %.thread ], [ %.083.i, %bb.ao ]
  %.187.i40 = phi i64 [ 0, %.thread ], [ %.1.i, %bb.ao ]
  %.189.i38 = phi ptr [ %i.ae, %.thread ], [ %i.at, %bb.ao ]
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !45
end_hunk_3
begin_hunk_4_@_PyLong_FormatAdvancedWriter:bb.a
  %.080.i47 = phi i64 [ %.080.i46, %bb.ap ], [ 0, %bb.ao ]
  %.182.i45 = phi i64 [ %.182.i44, %bb.ap ], [ %i.bn, %bb.ao ]
  %.285.i43 = phi i32 [ %.285.i42, %bb.ap ], [ %.083.i, %bb.ao ]
  %.187.i41 = phi i64 [ %.187.i40, %bb.ap ], [ %.1.i, %bb.ao ] ; 3 uses
  %.189.i39 = phi ptr [ %.189.i38, %bb.ap ], [ %i.at, %bb.ao ] ; 6 uses
  %i.br = phi i32 [ %i.bq, %bb.ap ], [ 97, %bb.ao ]
  %i.bs = call fastcc i32 @get_locale_info(i32 noundef %i.br, i32 noundef 0, ptr noundef %6)
end_hunk_4
