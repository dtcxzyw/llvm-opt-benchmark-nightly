inline.NumInlined: 193
inline.NumDeleted: 37
begin_hunk_0_@_Py_Mangle:bb.a

bb.y:                                             ; preds = %PyUnicode_READ_CHAR.exit67
  %i.al = getelementptr i8, ptr %1, i64 16
  %.val46 = load i64, ptr %i.al, align 8, !tbaa !149 ; 5 uses
  %i.am = getelementptr i8, ptr %0, i64 16
  %.val45 = load i64, ptr %i.am, align 8, !tbaa !149 ; 3 uses
  %i.an = add i64 %.val46, -1                     ; 3 uses
end_hunk_0
begin_hunk_1_@_Py_Mangle:bb.a
  br label %_Py_NewRef.exit

bb.ax:                                            ; preds = %.split.us
  %i.dg = sub i64 %.val45, %.us-phi               ; 2 uses
  %i.dh = add i64 %i.dg, %.val46
  %i.di = icmp ugt i64 %i.dh, 9223372036854775805
  br i1 %i.di, label %bb.ay, label %bb.az

end_hunk_1
begin_hunk_2_@_Py_Mangle:bb.a
  br label %_Py_NewRef.exit

bb.az:                                            ; preds = %bb.ax
  %2 = add i64 %.val46, 1
  %i.dk = add i64 %2, %i.dg
  %i.dl = tail call ptr @PyUnicodeWriter_Create(i64 noundef %i.dk) #7 ; 6 uses
  %.not43 = icmp eq ptr %i.dl, null
  br i1 %.not43, label %_Py_NewRef.exit, label %bb.ba
end_hunk_2
