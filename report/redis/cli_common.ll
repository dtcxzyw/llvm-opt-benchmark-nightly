inline.NumInlined: 7
inline.NumDeleted: 1
begin_hunk_0_@percentDecode:bb.a

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.048 = phi ptr [ %i.c, %.lr.ph ], [ %.1, %bb.j ] ; 2 uses
  %.03547 = phi ptr [ %0, %.lr.ph ], [ %.136, %bb.j ] ; 6 uses
  %i.e = load i8, ptr %.03547, align 1, !tbaa !36
  %i.f = icmp eq i8 %i.e, 37
  br i1 %i.f, label %bb.c, label %bb.i
end_hunk_0
begin_hunk_1_@percentDecode:bb.a
  %i.ar = trunc i32 %i.aq to i8
  store i8 %i.ar, ptr %i.a, align 1, !tbaa !36
  %i.as = call ptr @hi_sdscatlen(ptr noundef %.048, ptr noundef nonnull %i.a, i64 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.at = call ptr @hi_sdscatlen(ptr noundef %.048, ptr noundef nonnull %.03547, i64 noundef 1) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi i64 [ 3, %bb.h ], [ 1, %bb.i ]
  %.1 = phi ptr [ %i.as, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %.136 = getelementptr inbounds nuw i8, ptr %.03547, i64 %.pn ; 2 uses
  %i.au = icmp ult ptr %.136, %i.b
  br i1 %i.au, label %bb.b, label %._crit_edge, !llvm.loop !56

end_hunk_1
