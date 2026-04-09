inline.NumInlined: 250
inline.NumDeleted: 33
begin_hunk_0_@rb_strftime_with_timespec:bb.a
  %i.agk = trunc i64 %i.agj to i16
  %i.agl = and i16 %i.agk, 7
  %i.agm = and i16 %i.agi, 511
  %i.agn = add nuw nsw i16 %i.agm, 6
  %.lhs.trunc.i = sub nsw i16 %i.agn, %i.agl
  %i.ago = sdiv i16 %.lhs.trunc.i, 7
  %.sext.i = zext nneg i16 %i.ago to i32
  %i.agp = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.agd, i32 noundef %i.afb, i32 noundef %.sext.i) #12 ; 0 uses
end_hunk_0
begin_hunk_1_@rb_strftime_with_timespec:bb.a
  %i.akf = and i32 %i.ake, 7                      ; 2 uses
  %i.akg = and i32 %i.akc, 511
  %i.akh = icmp eq i32 %i.akf, 0
  %.neg3357 = sub nsw i32 1, %i.akf
  %spec.select.i.i2479.neg3358 = select i1 %i.akh, i32 65530, i32 %.neg3357
  %i.aki = add nuw nsw i32 %i.akg, 6
  %12 = add nsw i32 %i.aki, %spec.select.i.i2479.neg3358
  %.lhs.trunc.i2480 = trunc i32 %12 to i16
  %i.akj = sdiv i16 %.lhs.trunc.i2480, 7
  %.sext.i2481 = sext i16 %i.akj to i32
  %i.akk = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.ajx, i32 noundef %i.aiv, i32 noundef %.sext.i2481) #12 ; 0 uses
end_hunk_1
begin_hunk_2_@iso8601wknum:bb.a
  %i.b = getelementptr i8, ptr %0, i64 28
  %.val33 = load i32, ptr %i.b, align 4, !tbaa !102 ; 2 uses
  %i.c = icmp eq i32 %.val, 0
  %.neg = sub i32 1, %.val
  %spec.select.i.neg34 = select i1 %i.c, i32 -6, i32 %.neg
  %2 = add i32 %.val33, 7
  %i.d = add i32 %2, %spec.select.i.neg34         ; 2 uses
  %i.e = sdiv i32 %i.d, 7
  %spec.store.select.i = tail call range(i32 0, 306783379) i32 @llvm.smax.i32(i32 %i.e, i32 0) ; 3 uses
  %i.f = srem i32 %.val33, 7
end_hunk_2
begin_hunk_3_@iso8601wknum:bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %3 = icmp slt i32 %i.d, 7
  br i1 %3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
end_hunk_3
