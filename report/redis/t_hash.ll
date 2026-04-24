inline.NumInlined: 166
inline.NumDeleted: 15
begin_hunk_0_@hgetexCommand:bb.a

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0107 = phi i32 [ %i.ef, %bb.ad ], [ %i.eo, %bb.ae ]
  %.0106 = phi ptr [ %i.ei, %bb.ad ], [ %i.er, %bb.ae ] ; 3 uses
  %.0105 = phi i64 [ 2, %bb.ad ], [ 3, %bb.ae ]   ; 2 uses
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 744), align 8, !tbaa !164 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.0106, i64 %.0105 ; 2 uses
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !72
  call void @incrRefCount(ptr noundef %i.ez) #14
  %i.fb = call ptr @createStringObjectFromLongLong(i64 noundef %i.az) #14
  %2 = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %i.fb, ptr %2, align 8, !tbaa !72
  br i1 %i.bb, label %.lr.ph148.preheader, label %._crit_edge149

.lr.ph148.preheader:                              ; preds = %bb.af
  %i.fc = sext i32 %i.ba to i64
  %3 = add nuw nsw i64 %.0105, 2
  %wide.trip.count = zext nneg i32 %i.ay to i64
  br label %.lr.ph148

end_hunk_0
