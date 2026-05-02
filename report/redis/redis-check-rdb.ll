inline.NumInlined: 9
inline.NumDeleted: 1
begin_hunk_0_@redis_check_rdb_main:bb.a
  %i.aj = call i32 @sigaction(i32 noundef 6, ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.al = call i32 @redis_check_rdb(ptr noundef %i.ak, ptr noundef %2) ; 3 uses
  %5 = trunc nuw i32 %i.al to i1
  br i1 %5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@redis_check_rdb_main:bb.a
  br i1 %i.b, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %6 = sub nsw i32 0, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %6

end_hunk_1
