inline.NumInlined: 82
inline.NumDeleted: 46
begin_hunk_0_@usprep_swap_78:bb.a
bb.j:                                             ; preds = %bb.h, %bb.g
  %.077 = phi i32 [ %i.al, %bb.h ], [ %2, %bb.g ] ; 3 uses
  %i.an = load i32, ptr %i.ag, align 4
  %i.ao = tail call i32 @udata_readInt32_78(ptr noundef %0, i32 noundef %i.an) #14 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = tail call i32 @udata_readInt32_78(ptr noundef %0, i32 noundef %i.aq) #14 ; 2 uses
end_hunk_0
begin_hunk_1_@usprep_swap_78:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = tail call i32 @udata_readInt32_78(ptr noundef %0, i32 noundef %i.cg) #14 ; 0 uses
  %i.ci = add nsw i32 %i.ao, 64                   ; 2 uses
  %i.cj = add nsw i32 %i.ci, %i.ar                ; 3 uses
  %i.ck = icmp sgt i32 %.077, -1
  br i1 %i.ck, label %bb.k, label %bb.p

end_hunk_1
begin_hunk_2_@usprep_swap_78:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.cs = tail call i32 @utrie_swap_78(ptr noundef %0, ptr noundef nonnull %i.cq, i32 noundef %i.ao, ptr noundef nonnull %i.cr, ptr noundef nonnull %4) #14 ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = sext i32 %i.ci to i64                   ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.ag, i64 %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.aj, i64 %i.cv
  %i.cy = tail call noundef i32 %i.cu(ptr noundef %0, ptr noundef nonnull %i.cw, i32 noundef %i.ar, ptr noundef %i.cx, ptr noundef nonnull %4) #14 ; 0 uses
end_hunk_2
