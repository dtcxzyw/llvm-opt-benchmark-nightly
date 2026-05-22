inline.NumInlined: 47
inline.NumDeleted: 13
begin_hunk_0_@io_input:bb.a
; Function Attrs: nounwind uwtable
define internal noundef i32 @io_lines(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef 1) #9
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10001, i32 noundef 1) #9
  %i.c = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.5) #9
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %f_lines.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.16) #9 ; 0 uses
  br label %f_lines.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #9 ; 2 uses
  %i.h = tail call ptr @lua_newuserdata(ptr noundef %0, i64 noundef 8) #9 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !8
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.5) #9
  %i.i = tail call i32 @lua_setmetatable(ptr noundef %0, i32 noundef -2) #9 ; 0 uses
  %i.j = tail call noalias ptr @fopen(ptr noundef %i.g, ptr noundef nonnull @.str.40) ; 2 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @__errno_location() #10
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = tail call ptr @strerror(i32 noundef %i.m) #9
  %i.o = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %i.g, ptr noundef %i.n) #9 ; 0 uses
  %i.p = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #9
  %i.q = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef %i.p) #9 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = tail call i32 @lua_gettop(ptr noundef %0) #9
  br label %f_lines.exit

f_lines.exit:                                     ; preds = %bb.c, %bb.b, %bb.f
  %.sink12 = phi i32 [ %i.r, %bb.f ], [ 1, %bb.b ], [ 1, %bb.c ]
  %.sink = phi i32 [ 1, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ]
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef %.sink12) #9
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %.sink) #9
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @io_readline, i32 noundef 2) #9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 4) i32 @io_open(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #9 ; 3 uses
  %i.b = tail call ptr @luaL_optlstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.40, ptr noundef null) #9
  %i.c = tail call ptr @lua_newuserdata(ptr noundef %0, i64 noundef 8) #9 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !8
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.5) #9
  %i.d = tail call i32 @lua_setmetatable(ptr noundef %0, i32 noundef -2) #9 ; 0 uses
  %i.e = tail call noalias ptr @fopen(ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #10
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  tail call void @lua_pushnil(ptr noundef %0) #9
  %.not12.i = icmp eq ptr %i.a, null
  %i.i = tail call ptr @strerror(i32 noundef %i.h) #9 ; 2 uses
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.a, ptr noundef %i.i) #9 ; 0 uses
  br label %pushresult.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %i.i) #9 ; 0 uses
  br label %pushresult.exit

pushresult.exit:                                  ; preds = %bb.c, %bb.d
  %i.l = sext i32 %i.h to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.l) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %pushresult.exit
  %i.m = phi i32 [ 3, %pushresult.exit ], [ 1, %bb.a ]
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @io_output(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @g_iofile(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.41)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef range(i32 1, 4) i32 @io_popen(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #9 ; 2 uses
  %i.b = tail call ptr @luaL_optlstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.40, ptr noundef null) #9 ; 0 uses
  %i.c = tail call ptr @lua_newuserdata(ptr noundef %0, i64 noundef 8) #9 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !8
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.5) #9
  %i.d = tail call i32 @lua_setmetatable(ptr noundef %0, i32 noundef -2) #9 ; 0 uses
  %i.e = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.42) #9 ; 0 uses
  store ptr null, ptr %i.c, align 8, !tbaa !8
  %i.f = tail call ptr @__errno_location() #10
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  tail call void @lua_pushnil(ptr noundef %0) #9
  %.not12.i = icmp eq ptr %i.a, null
  %i.h = tail call ptr @strerror(i32 noundef %i.g) #9 ; 2 uses
  br i1 %.not12.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.a, ptr noundef %i.h) #9 ; 0 uses
  br label %pushresult.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %i.h) #9 ; 0 uses
  br label %pushresult.exit

pushresult.exit:                                  ; preds = %bb.b, %bb.c
  %i.k = sext i32 %i.g to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.k) #9
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal i32 @io_read(ptr noundef %0) #0 {
bb.a:
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10001, i32 noundef 1) #9
  %i.a = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef -1) #9
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %getiofile.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.34) #9 ; 0 uses
  br label %getiofile.exit

getiofile.exit:                                   ; preds = %bb.a, %bb.b
  %i.e = tail call fastcc i32 @g_read(ptr noundef %0, ptr noundef %i.b, i32 noundef 1)
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 4) i32 @io_tmpfile(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lua_newuserdata(ptr noundef %0, i64 noundef 8) #9 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !8
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.5) #9
  %i.b = tail call i32 @lua_setmetatable(ptr noundef %0, i32 noundef -2) #9 ; 0 uses
  %i.c = tail call noalias ptr @tmpfile()         ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #10
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4    ; 2 uses
  tail call void @lua_pushnil(ptr noundef %0) #9
  %i.g = tail call ptr @strerror(i32 noundef %i.f) #9
  %i.h = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %i.g) #9 ; 0 uses
  %i.i = sext i32 %i.f to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.i) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i32 [ 3, %bb.b ], [ 1, %bb.a ]
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @io_type(ptr noundef %0) #0 {
bb.a:
  tail call void @luaL_checkany(ptr noundef %0, i32 noundef 1) #9
  %i.a = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef 1) #9 ; 2 uses
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.5) #9
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @lua_getmetatable(ptr noundef %0, i32 noundef 1) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @lua_rawequal(ptr noundef %0, i32 noundef -2, i32 noundef -1) #9
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @lua_pushnil(ptr noundef %0) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  %. = select i1 %i.f, i64 11, i64 4
  %.str.43..str.44 = select i1 %i.f, ptr @.str.43, ptr @.str.44
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %.str.43..str.44, i64 noundef %.) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 4) i32 @io_write(ptr noundef %0) #0 {
bb.a:
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10001, i32 noundef 2) #9
  %i.a = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef -1) #9
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %getiofile.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36) #9 ; 0 uses
  br label %getiofile.exit

getiofile.exit:                                   ; preds = %bb.a, %bb.b
  %i.e = tail call fastcc i32 @g_write(ptr noundef %0, ptr noundef %i.b, i32 noundef 1)
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc void @g_iofile(ptr noundef %0, i32 noundef range(i32 1, 3) %1, ptr noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef 1) #9
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #9 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @lua_newuserdata(ptr noundef %0, i64 noundef 8) #9 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !8
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.5) #9
  %i.e = tail call i32 @lua_setmetatable(ptr noundef %0, i32 noundef -2) #9 ; 0 uses
  %i.f = tail call noalias ptr @fopen(ptr noundef nonnull %i.c, ptr noundef %2) ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__errno_location() #10
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = tail call ptr @strerror(i32 noundef %i.i) #9
  %i.k = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.c, ptr noundef %i.j) #9 ; 0 uses
  %i.l = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #9
  %i.m = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef %i.l) #9 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.n = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.5) #9
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %tofile.exit

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.16) #9 ; 0 uses
  br label %tofile.exit

tofile.exit:                                      ; preds = %bb.e, %bb.f
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 1) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %tofile.exit
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef -10001, i32 noundef %1) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  tail call void @lua_rawgeti(ptr noundef %0, i32 noundef -10001, i32 noundef %1) #9
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

declare void @lua_rawseti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lua_newuserdata(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lua_setmetatable(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @luaL_optlstring(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @tmpfile() local_unnamed_addr #3

declare void @luaL_checkany(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_getmetatable(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_rawequal(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{null}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"luaL_Buffer", !15, i64 0, !5, i64 8, !16, i64 16, !6, i64 24}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"p1 _ZTS9lua_State", !10, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !6, i64 0}
!21 = distinct !{!21, !18}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = distinct !{!24, !18}
end_hunk_0
