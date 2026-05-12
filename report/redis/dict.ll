inline.NumInlined: 146
inline.NumDeleted: 25
begin_hunk_0_@strlen
; Function Attrs: nounwind uwtable
define dso_local void @dictGetStats(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(400) ptr @zcalloc(i64 noundef 400) #22 ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(56) ptr @zcalloc(i64 noundef 56) #22 ; 9 uses
  store i32 0, ptr %i.b, align 8, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !108
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.e = load i8, ptr %i.d, align 1, !tbaa !19    ; 2 uses
end_hunk_0
begin_hunk_1_@dictGetStats:bb.a

dictGetStatsHt.exit:                              ; preds = %bb.f, %bb.a
  %i.am = tail call i64 @dictGetStatsMsg(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.b, i32 noundef %3) ; 3 uses
  %4 = load ptr, ptr %i.c, align 8, !tbaa !108
  tail call void @zfree(ptr noundef %4) #21
  tail call void @zfree(ptr noundef nonnull %i.b) #21
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !20
end_hunk_1
begin_hunk_2_@dictGetStats:bb.a
bb.g:                                             ; preds = %dictGetStatsHt.exit
  %i.ar = sub i64 %1, %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.at = tail call noalias dereferenceable_or_null(400) ptr @zcalloc(i64 noundef 400) #22 ; 4 uses
  %i.au = tail call noalias dereferenceable_or_null(56) ptr @zcalloc(i64 noundef 56) #22 ; 9 uses
  store i32 1, ptr %i.au, align 8, !tbaa !122
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  store ptr %i.at, ptr %i.av, align 8, !tbaa !108
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 53
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !19  ; 2 uses
end_hunk_2
begin_hunk_3_@dictGetStats:bb.a

dictGetStatsHt.exit37:                            ; preds = %bb.l, %bb.g
  %i.cf = tail call i64 @dictGetStatsMsg(ptr noundef %i.as, i64 noundef %i.ar, ptr noundef nonnull %i.au, i32 noundef %3) ; 0 uses
  %5 = load ptr, ptr %i.av, align 8, !tbaa !108
  tail call void @zfree(ptr noundef %5) #21
  tail call void @zfree(ptr noundef nonnull %i.au) #21
  br label %bb.m

end_hunk_3
