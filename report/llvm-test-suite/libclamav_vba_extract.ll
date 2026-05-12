inline.NumInlined: 49
inline.NumDeleted: 18
begin_hunk_0_@ppt_vba_read:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  br label %bb.e
end_hunk_0
begin_hunk_1_@ppt_vba_read:bb.a
bb.m:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %1, align 8, !tbaa !55
  %i.ay = call i32 @llvm.umin.i32(i32 %i.at, i32 8192) ; 3 uses
  store i32 %i.ay, ptr %i.s, align 8, !tbaa !58
  %i.az = call i32 @cli_readn(i32 noundef range(i32 0, -1) %i.g, ptr noundef nonnull %i.a, i32 noundef %i.ay) #11
  %3 = sext i32 %i.az to i64
  %4 = load i32, ptr %i.s, align 8, !tbaa !58     ; 2 uses
  %5 = zext i32 %4 to i64
  %.not.i26.i = icmp eq i64 %3, %5
  br i1 %.not.i26.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_1
begin_hunk_2_@ppt_vba_read:bb.a
  br label %ppt_unlzw.exit.thread.i

bb.o:                                             ; preds = %bb.m
  %i.bc = sub i32 %i.at, %4
  %i.bd = call i32 @inflateInit_(ptr noundef nonnull %1, ptr noundef nonnull @.str.60, i32 noundef 112) #11 ; 2 uses
  %.not28.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not28.i.i, label %bb.q, label %bb.p
end_hunk_2
