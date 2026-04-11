inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@mi_find_page:bb.a

bb.y:                                             ; preds = %_mi_page_free_collect.exit.i.i
  %i.cx = getelementptr i8, ptr %.02647.i.i, i64 10 ; 4 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !74 ; 2 uses
  %i.cz = getelementptr i8, ptr %.02647.i.i, i64 12
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !218 ; 2 uses
  %i.db = icmp ult i16 %i.cy, %i.da
  br i1 %i.db, label %bb.z, label %bb.ae

end_hunk_0
