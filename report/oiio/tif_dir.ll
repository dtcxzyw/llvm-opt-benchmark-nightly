inline.NumInlined: 19
inline.NumDeleted: 1
begin_hunk_0_@countInkNamesString:bb.a
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %i.a ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.023 = phi i16 [ 0, %bb.b ], [ %i.f, %bb.e ]   ; 3 uses
  %.020 = phi ptr [ %2, %bb.b ], [ %i.e, %bb.e ]  ; 2 uses
  %i.c = icmp ult ptr %.020, %i.b
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.135 = phi ptr [ %i.e, %bb.d ], [ %.020, %bb.c ] ; 2 uses
  %i.d = load i8, ptr %.135, align 1, !tbaa !114
  %.not28 = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %.135, i64 1 ; 4 uses
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %3 = icmp ult ptr %i.e, %i.b
  br i1 %3, label %.lr.ph, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.f = add i16 %.023, 1                         ; 2 uses
end_hunk_0
