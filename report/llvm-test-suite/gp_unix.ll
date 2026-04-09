begin_hunk_0_@gs_get_clock:bb.a

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !8
  %3 = add nsw i64 %i.c, -315576000
  %i.d = load i32, ptr %2, align 4, !tbaa !11
  %i.e = mul nsw i32 %i.d, 60
  %i.f = sext i32 %i.e to i64
  %i.g = sub i64 %3, %i.f                         ; 2 uses
  %i.h = call ptr @localtime(ptr noundef nonnull %1) #8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !13
  %.not = icmp eq i32 %i.j, 0
  %4 = add nsw i64 %i.g, 3600
  %spec.select = select i1 %.not, i64 %i.g, i64 %4 ; 2 uses
  %i.k = sdiv i64 %spec.select, 86400
  store i64 %i.k, ptr %0, align 8, !tbaa !17
  %i.l = srem i64 %spec.select, 86400
end_hunk_0
