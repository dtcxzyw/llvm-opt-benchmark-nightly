inline.NumInlined: 19
inline.NumDeleted: 1
begin_hunk_0_@countInkNamesString:bb.a
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = ptrtoint ptr %2 to i64
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %i.a ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.023 = phi i16 [ 0, %bb.b ], [ %i.f, %bb.e ]   ; 3 uses
  %.020 = phi ptr [ %2, %bb.b ], [ %i.e, %bb.e ]  ; 4 uses
  %i.c = icmp ult ptr %.020, %i.b
  br i1 %i.c, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.c
  %.02042 = ptrtoint ptr %.020 to i64
  %4 = getelementptr i8, ptr %.020, i64 %3
  %scevgep = getelementptr i8, ptr %4, i64 %i.a
  %5 = sub i64 0, %.02042
  %scevgep43 = getelementptr i8, ptr %scevgep, i64 %5
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.135 = phi ptr [ %i.e, %bb.d ], [ %.020, %.lr.ph.preheader ] ; 2 uses
  %i.d = load i8, ptr %.135, align 1, !tbaa !114
  %.not28 = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %.135, i64 1 ; 4 uses
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq ptr %i.e, %scevgep43
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.f = add i16 %.023, 1                         ; 2 uses
end_hunk_0
