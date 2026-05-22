inline.NumInlined: 20
inline.NumDeleted: 13
begin_hunk_0_@dotty:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.z = call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef nonnull %i.c) #9 ; 2 uses
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -7
  %i.ad = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(1) @.str.26) #11
  %i.ae = icmp eq ptr %i.ad, %i.ac
  br i1 %i.ae, label %bb.h, label %loadline.exit.thread29

loadline.exit.thread29:                           ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @lua_remove(ptr noundef %0, i32 noundef 1) #9
  br label %.thread

bb.h:                                             ; preds = %.lr.ph.i
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @lua_getfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull @.str.23) #9
  %i.af = call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #9 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  %spec.select.i.i = select i1 %i.ag, ptr @.str.25, ptr %i.af
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #9
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.ai = call i32 @fputs(ptr noundef nonnull %spec.select.i.i, ptr noundef %i.ah) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.ak = call i32 @fflush(ptr noundef %i.aj)     ; 0 uses
  %i.al = load ptr, ptr @stdin, align 8, !tbaa !16
  %i.am = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 512, ptr noundef %i.al)
  %.not.i17 = icmp eq ptr %i.am, null
  br i1 %.not.i17, label %pushline.exit.thread, label %bb.i

pushline.exit.thread:                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %loadline.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #11 ; 2 uses
  %.not17.i = icmp eq i64 %i.an, 0
  br i1 %.not17.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %i.b, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1     ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20
  %i.ar = icmp eq i8 %i.aq, 10
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.ap, align 1, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  call void @lua_pushstring(ptr noundef %0, ptr noundef nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.19, i64 noundef 1) #9
  call void @lua_insert(ptr noundef %0, i32 noundef -2) #9
  call void @lua_concat(ptr noundef %0, i32 noundef 3) #9
  %i.as = call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #9
  %i.at = call i64 @lua_objlen(ptr noundef %0, i32 noundef 1) #9
  %i.au = call i32 @luaL_loadbuffer(ptr noundef %0, ptr noundef %i.as, i64 noundef %i.at, ptr noundef nonnull @.str.20) #9 ; 2 uses
  %i.av = icmp eq i32 %i.au, 3
  br i1 %i.av, label %.lr.ph.i, label %loadline.exit

loadline.exit:                                    ; preds = %bb.l, %.preheader.i
  %i.aw = phi i32 [ %i.x, %.preheader.i ], [ %i.au, %bb.l ]
  call void @lua_remove(ptr noundef %0, i32 noundef 1) #9
  switch i32 %i.aw, label %.thread [
    i32 -1, label %loadline.exit.thread
    i32 0, label %bb.m
  ]

bb.m:                                             ; preds = %loadline.exit
  %i.ax = call fastcc i32 @docall(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %.not.i16 = icmp eq i32 %i.ax, 0
  br i1 %.not.i16, label %report.exit.thread, label %.thread

.thread:                                          ; preds = %loadline.exit.thread29, %loadline.exit, %bb.m
  %i.ay = call i32 @lua_type(ptr noundef %0, i32 noundef -1) #9
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %report.exit.backedge, label %bb.n

report.exit.backedge:                             ; preds = %.thread, %bb.n, %bb.o, %bb.p, %report.exit.thread
  br label %report.exit, !llvm.loop !30

bb.n:                                             ; preds = %.thread
  %i.ba = call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #9 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %spec.store.select.i = select i1 %i.bb, ptr @.str.27, ptr %i.ba
  %i.bc = load ptr, ptr @progname, align 8, !tbaa !8
  call fastcc void @l_message(ptr noundef %i.bc, ptr noundef nonnull %spec.store.select.i)
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #9
  br label %report.exit.backedge

report.exit.thread:                               ; preds = %bb.m
  %i.bd = call i32 @lua_gettop(ptr noundef %0) #9
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %bb.o, label %report.exit.backedge

bb.o:                                             ; preds = %report.exit.thread
  call void @lua_getfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull @.str.17) #9
  call void @lua_insert(ptr noundef %0, i32 noundef 1) #9
  %i.bf = call i32 @lua_gettop(ptr noundef %0) #9
  %i.bg = add nsw i32 %i.bf, -1
  %i.bh = call i32 @lua_pcall(ptr noundef %0, i32 noundef %i.bg, i32 noundef 0, i32 noundef 0) #9
  %.not15 = icmp eq i32 %i.bh, 0
  br i1 %.not15, label %report.exit.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr @progname, align 8, !tbaa !8
  %i.bj = call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #9
  %i.bk = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %i.bj) #9
  call fastcc void @l_message(ptr noundef %i.bi, ptr noundef %i.bk)
  br label %report.exit.backedge

loadline.exit.thread:                             ; preds = %loadline.exit, %pushline.exit.thread, %pushline.exit23
  call void @lua_settop(ptr noundef %0, i32 noundef 0) #9
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !16
  %fputc = call i32 @fputc(i32 10, ptr %i.bl)     ; 0 uses
  %i.bm = load ptr, ptr @stdout, align 8, !tbaa !16
  %i.bn = call i32 @fflush(ptr noundef %i.bm)     ; 0 uses
  store ptr %i.d, ptr @progname, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @dostring(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %i.b = tail call i32 @luaL_loadbuffer(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.a, ptr noundef %2) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @docall(ptr noundef %0, i32 noundef 0, i32 noundef 1)
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %report.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #9
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %report.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.f = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #9 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %spec.store.select.i = select i1 %i.g, ptr @.str.27, ptr %i.f
  %i.h = load ptr, ptr @progname, align 8, !tbaa !8
  tail call fastcc void @l_message(ptr noundef %i.h, ptr noundef nonnull %spec.store.select.i)
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #9
  br label %report.exit

report.exit:                                      ; preds = %bb.b, %.thread, %bb.c
  %i.i = phi i32 [ 0, %bb.b ], [ 1, %.thread ], [ 1, %bb.c ]
  ret i32 %i.i
}

declare i32 @luaL_loadfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @docall(ptr noundef %0, i32 noundef range(i32 -2147483648, 2147483646) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lua_gettop(ptr noundef %0) #9
  %i.b = sub nsw i32 %i.a, %1                     ; 3 uses
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @traceback, i32 noundef 0) #9
  tail call void @lua_insert(ptr noundef %0, i32 noundef %i.b) #9
  %i.c = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @laction) #9 ; 0 uses
  %sext = add nsw i32 %2, -1
  %i.d = tail call i32 @lua_pcall(ptr noundef %0, i32 noundef %1, i32 noundef %sext, i32 noundef %i.b) #9 ; 2 uses
  %i.e = tail call ptr @signal(i32 noundef 2, ptr noundef null) #9 ; 0 uses
  tail call void @lua_remove(ptr noundef %0, i32 noundef %i.b) #9
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @lua_gc(ptr noundef %0, i32 noundef 2, i32 noundef 0) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.d
}

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #2

declare void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @traceback(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @lua_isstring(ptr noundef %0, i32 noundef 1) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull @.str.6) #9
  %i.b = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #9
  %i.c = icmp eq i32 %i.b, 5
  br i1 %i.c, label %bb.c, label %1

1:                                                ; preds = %bb.b
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #9
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.7) #9
  %i.d = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #9
  %i.e = icmp eq i32 %i.d, 6
  br i1 %i.e, label %bb.d, label %2

2:                                                ; preds = %bb.c
  tail call void @lua_settop(ptr noundef %0, i32 noundef -3) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 1) #9
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef 2) #9
  tail call void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 1) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %2, %1
  ret i32 1
}

declare void @lua_insert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @laction(i32 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @signal(i32 noundef %0, ptr noundef null) #9 ; 0 uses
  %i.b = load ptr, ptr @globalL, align 8, !tbaa !18
  %i.c = tail call i32 @lua_sethook(ptr noundef %i.b, ptr noundef nonnull @lstop, i32 noundef 11, i32 noundef 1) #9 ; 0 uses
  ret void
}

declare i32 @lua_pcall(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_isstring(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_getfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lua_call(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lua_sethook(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @lstop(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @lua_sethook(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0) #9 ; 0 uses
  %i.b = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.8) #9 ; 0 uses
  ret void
}

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @luaL_loadbuffer(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare void @lua_pushstring(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @luaL_checkstack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_rawseti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lua_pushfstring(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i64 @lua_objlen(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lua_concat(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
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
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !5, i64 0}
!12 = !{!"Smain", !5, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"p2 omnipotent char", !14, i64 0}
!14 = !{!"any p2 pointer", !10, i64 0}
!15 = !{!12, !13, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS9lua_State", !10, i64 0}
!20 = !{!6, !6, i64 0}
!21 = !{!12, !5, i64 16}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !23}
!28 = !{!29, !29, i64 0}
!29 = !{!"long", !6, i64 0}
!30 = distinct !{!30, !23}
end_hunk_0
