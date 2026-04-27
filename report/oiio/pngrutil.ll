inline.NumInlined: 112
inline.NumDeleted: 5
begin_hunk_0_@png_handle_chunk:bb.a
bb.ag:                                            ; preds = %bb.af
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.y = load i32, ptr %i.x, align 8, !tbaa !51
  %3 = shl nuw nsw i32 1, %.0.i.ph6367
  %i.z = and i32 %i.y, %3
  %.not52 = icmp eq i32 %i.z, 0
  br i1 %.not52, label %bb.ah, label %bb.am

end_hunk_0
begin_hunk_1_@png_handle_chunk:bb.a
  br i1 %or.cond, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %4 = shl nuw nsw i32 1, %.0.i58
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !51
  %i.ap = or i32 %i.ao, %4
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !51
  br label %bb.ar

end_hunk_1
