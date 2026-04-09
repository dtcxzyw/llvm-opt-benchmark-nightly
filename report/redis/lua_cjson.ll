inline.NumInlined: 83
inline.NumDeleted: 30
begin_hunk_0_@json_append_data:bb.a
  br i1 %i.ba, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bb = tail call double @llvm.floor.f64(double %i.az)
  %i.bc = fcmp oeq double %i.bb, %i.az
  %i.bd = fcmp oge double %i.az, 1.000000e+00
  %or.cond.i = and i1 %i.bd, %i.bc
end_hunk_0
begin_hunk_1_@lua_pushnil

declare i32 @lua_next(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

declare ptr @lua_typename(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @luaL_checklstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1
end_hunk_1
begin_hunk_2_@lua_insert

declare i32 @lua_pcall(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

end_hunk_2
