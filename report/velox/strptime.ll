begin_hunk_0_@arrow_strptime:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %.outer
end_hunk_0
begin_hunk_1_@arrow_strptime:bb.a
bb.av:                                            ; preds = %bb.i, %bb.i, %bb.j
  %.1141 = phi i32 [ 131086, %bb.j ], [ 131072, %bb.i ], [ 131072, %bb.i ]
  %.1139 = phi i32 [ 12, %bb.j ], [ 7, %bb.i ], [ 7, %bb.i ] ; 2 uses
  %.2137 = phi ptr [ %i.i, %bb.j ], [ %i.f, %bb.i ], [ %i.f, %bb.i ]
  %i.ea = shl nuw nsw i32 %.1139, 1
  br label %bb.ax

end_hunk_1
