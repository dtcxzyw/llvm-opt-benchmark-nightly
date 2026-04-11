inline.NumInlined: 7
inline.NumDeleted: 1
begin_hunk_0_@percentDecode:bb.a

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.048 = phi ptr [ %i.c, %.lr.ph ], [ %.1, %bb.j ] ; 2 uses
  %.03547 = phi ptr [ %0, %.lr.ph ], [ %.136, %bb.j ] ; 7 uses
  %i.e = load i8, ptr %.03547, align 1, !tbaa !36
  %i.f = icmp eq i8 %i.e, 37
  br i1 %i.f, label %bb.c, label %bb.i
end_hunk_0
begin_hunk_1_@percentDecode:bb.a
  %i.ar = trunc i32 %i.aq to i8
  store i8 %i.ar, ptr %i.a, align 1, !tbaa !36
  %i.as = call ptr @hi_sdscatlen(ptr noundef %.048, ptr noundef nonnull %i.a, i64 noundef 1) #12
  %2 = getelementptr inbounds nuw i8, ptr %.03547, i64 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %.03547, i64 1
  %i.at = call ptr @hi_sdscatlen(ptr noundef %.048, ptr noundef nonnull %.03547, i64 noundef 1) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.136 = phi ptr [ %2, %bb.h ], [ %3, %bb.i ]    ; 2 uses
  %.1 = phi ptr [ %i.as, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %i.au = icmp ult ptr %.136, %i.b
  br i1 %i.au, label %bb.b, label %._crit_edge, !llvm.loop !56

end_hunk_1
