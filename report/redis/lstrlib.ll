inline.NumInlined: 39
inline.NumDeleted: 21
begin_hunk_0_@gmatch_aux:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  store ptr %0, ptr %i.d, align 8, !tbaa !26
  store ptr %i.b, ptr %1, align 8, !tbaa !28
  %i.e = load i64, ptr %i.a, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !29
  %i.h = call i64 @lua_tointeger(ptr noundef %0, i32 noundef -10005) #10
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 2 uses
  %3 = load ptr, ptr %i.g, align 8, !tbaa !29
  %.not35 = icmp ugt ptr %2, %3
  br i1 %.not35, label %push_captures.exit.thread29, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  br label %bb.b

end_hunk_0
