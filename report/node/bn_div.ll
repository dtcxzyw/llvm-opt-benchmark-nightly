inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@bn_div_fixed_top:bb.a
  br i1 %.not151, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bn_left_align.exit
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !13  ; 13 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !13 ; 4 uses
  %.not152 = icmp sgt i32 %i.as, %i.aq
  br i1 %.not152, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = add nsw i32 %i.aq, 1                    ; 3 uses
  %i.au = tail call ptr @bn_wexpand(ptr noundef nonnull %i.e, i32 noundef %i.at) #4
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.v, label %bb.i
end_hunk_0
begin_hunk_1_@bn_div_fixed_top:bb.a
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.ax = sext i32 %i.as to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = sub i32 %i.aq, %i.as
  %5 = add i32 %i.az, 1
  %i.ba = sext i32 %5 to i64
  %i.bb = shl nsw i64 %i.ba, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 0, i64 %i.bb, i1 false)
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !13
end_hunk_1
