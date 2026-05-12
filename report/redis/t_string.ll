inline.NumInlined: 20
inline.NumDeleted: 3
begin_hunk_0_@lcsCommand:bb.a
  %i.dr = mul i32 %i.cx, %i.cg
  %i.ds = add i32 %i.dr, %i.cu
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !9  ; 4 uses
  %i.dw = xor i1 %.0233.lcssa404, true
  %spec.select = or i1 %.0236.lcssa403, %i.dw
  br i1 %spec.select, label %bb.ar, label %._crit_edge369.thread
end_hunk_0
begin_hunk_1_@lcsCommand:bb.a

bb.be:                                            ; preds = %._crit_edge369
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.33) #10
  %i.ha = zext i32 %i.dv to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.ha) #10
  call void @setDeferredArrayLen(ptr noundef %0, ptr noundef nonnull %.0228, i64 noundef %.0212.lcssa) #10
  br label %bb.bh
end_hunk_1
begin_hunk_2_@lcsCommand:bb.a
  br i1 %.0233.lcssa404, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %._crit_edge369.thread
  %i.hb = zext i32 %i.dv to i64
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.hb) #10
  br label %bb.bh

end_hunk_2
