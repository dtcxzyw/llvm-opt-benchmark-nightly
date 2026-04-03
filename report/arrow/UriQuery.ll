begin_hunk_0
  %i.cz = tail call ptr @uriEscapeExA(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cw, i32 noundef %5, i32 noundef %6) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.275 = phi ptr [ %i.cr, %bb.z ], [ %i.cz, %bb.ab ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.06395, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !14 ; 2 uses
end_hunk_0
begin_hunk_1
  store i32 %i.df, ptr %3, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.y, %bb.x, %bb.aa, %bb.s, %bb.o, %bb.e, %bb.f, %bb.h, %bb.n, %.split97.us, %bb.ad, %.split97.us.thread129
  %.2 = phi i32 [ 0, %.split97.us ], [ 0, %.split97.us.thread129 ], [ 0, %bb.ad ], [ 4, %bb.e ], [ 4, %bb.n ], [ 0, %bb.o ], [ 4, %bb.h ], [ 4, %bb.f ], [ 4, %bb.s ], [ 4, %bb.aa ], [ 4, %bb.x ], [ 4, %bb.y ]
  ret i32 %.2
}

end_hunk_1
begin_hunk_2
  %i.dh = tail call ptr @uriEscapeExW(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.de, i32 noundef %5, i32 noundef %6) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.275 = phi ptr [ %i.cw, %bb.z ], [ %i.dh, %bb.ab ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.06395, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !31 ; 2 uses
end_hunk_2
begin_hunk_3
  store i32 %i.do, ptr %3, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.y, %bb.x, %bb.aa, %bb.s, %bb.o, %bb.e, %bb.f, %bb.h, %bb.n, %.split97.us, %bb.ad, %.split97.us.thread129
  %.2 = phi i32 [ 0, %.split97.us ], [ 0, %.split97.us.thread129 ], [ 0, %bb.ad ], [ 4, %bb.e ], [ 4, %bb.n ], [ 0, %bb.o ], [ 4, %bb.h ], [ 4, %bb.f ], [ 4, %bb.s ], [ 4, %bb.aa ], [ 4, %bb.x ], [ 4, %bb.y ]
  ret i32 %.2
}

end_hunk_3
