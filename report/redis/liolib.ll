inline.NumInlined: 47
inline.NumDeleted: 13
begin_hunk_0_@io_close:bb.a
  tail call void @lua_getfenv(ptr noundef %0, i32 noundef 1) #9
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.17) #9
  %i.g = tail call ptr @lua_tocfunction(ptr noundef %0, i32 noundef -1) #9
  %i.h = tail call i32 %i.g(ptr noundef %0) #9
  ret i32 %i.h
}

end_hunk_0
begin_hunk_1_@io_gc:bb.a
  tail call void @lua_getfenv(ptr noundef %0, i32 noundef 1) #9
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.17) #9
  %i.c = tail call ptr @lua_tocfunction(ptr noundef %0, i32 noundef -1) #9
  %i.d = tail call i32 %i.c(ptr noundef %0) #9    ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_1
begin_hunk_2_@io_readline:bb.a
  tail call void @lua_getfenv(ptr noundef %0, i32 noundef 1) #9
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.17) #9
  %i.l = tail call ptr @lua_tocfunction(ptr noundef %0, i32 noundef -1) #9
  %i.m = tail call i32 %i.l(ptr noundef %0) #9    ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
end_hunk_2
begin_hunk_3_@read_line:bb.a
bb.b:                                             ; preds = %.lr.ph
  %i.j = add i64 %i.h, -1                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %.not = icmp eq i8 %i.l, 10
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store ptr %i.n, ptr %2, align 8, !tbaa !12
  call void @luaL_pushresult(ptr noundef nonnull %2) #9
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store ptr %i.p, ptr %2, align 8, !tbaa !12
  %i.q = call ptr @luaL_prepbuffer(ptr noundef nonnull %2) #9 ; 2 uses
  %i.r = call ptr @fgets(ptr noundef %i.q, i32 noundef 8192, ptr noundef %1)
  %i.s = icmp eq ptr %i.r, null
end_hunk_3
begin_hunk_4_@g_read:bb.a
  %i.q = call ptr @luaL_prepbuffer(ptr noundef nonnull %4) #9
  %spec.select.i = call i64 @llvm.umin.i64(i64 %.014.i, i64 %.0.i) ; 3 uses
  %i.r = call i64 @fread(ptr noundef %i.q, i64 noundef 1, i64 noundef %spec.select.i, ptr noundef %1) ; 3 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store ptr %i.t, ptr %4, align 8, !tbaa !12
  %i.u = sub i64 %.0.i, %i.r                      ; 3 uses
  %i.v = icmp ne i64 %i.u, 0
  %i.w = icmp eq i64 %i.r, %spec.select.i
  %i.x = and i1 %i.w, %i.v
  br i1 %i.x, label %bb.h, label %bb.i, !llvm.loop !16

bb.i:                                             ; preds = %bb.h
  call void @luaL_pushresult(ptr noundef nonnull %4) #9
end_hunk_4
begin_hunk_5_@g_read:bb.a
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.af = icmp eq i8 %i.ae, 42
  br i1 %i.af, label %bb.n, label %bb.m

end_hunk_5
begin_hunk_6_@g_read:bb.a

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !11
  switch i8 %i.ai, label %bb.w [
    i8 110, label %bb.o
    i8 108, label %bb.r
end_hunk_6
begin_hunk_7_@g_read:bb.a
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = load double, ptr %i.a, align 8, !tbaa !18
  call void @lua_pushnumber(ptr noundef %0, double noundef %i.al) #9
  br label %read_number.exit

end_hunk_7
begin_hunk_8_@g_read:bb.a
  %i.an = call ptr @luaL_prepbuffer(ptr noundef nonnull %3) #9
  %spec.select.i61 = call i64 @llvm.umin.i64(i64 %.014.i59, i64 %.0.i60) ; 3 uses
  %i.ao = call i64 @fread(ptr noundef %i.an, i64 noundef 1, i64 noundef %spec.select.i61, ptr noundef %1) ; 3 uses
  %i.ap = load ptr, ptr %3, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store ptr %i.aq, ptr %3, align 8, !tbaa !12
  %i.ar = sub i64 %.0.i60, %i.ao                  ; 3 uses
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = icmp eq i64 %i.ao, %spec.select.i61
  %i.au = and i1 %i.at, %i.as
  br i1 %i.au, label %bb.t, label %bb.u, !llvm.loop !16

bb.u:                                             ; preds = %bb.t
  call void @luaL_pushresult(ptr noundef nonnull %3) #9
end_hunk_8
begin_hunk_9_@g_read:bb.a
  %i.ba = icmp ne i32 %i.h, 0
  %i.bb = icmp ne i32 %.352, 0
  %i.bc = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %i.bc, label %bb.d, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %.thread, %bb.b
  %.4 = phi i32 [ %i.d, %bb.b ], [ %.352, %.thread ]
end_hunk_9
begin_hunk_10_@g_write:bb.a
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !21
  %i.k = call i64 @fwrite(ptr noundef %i.i, i64 noundef 1, i64 noundef %i.j, ptr noundef %1)
  %i.l = load i64, ptr %i.a, align 8, !tbaa !21
  %i.m = icmp eq i64 %i.k, %i.l
  %i.n = zext i1 %i.m to i32
  br label %bb.f
end_hunk_10
begin_hunk_11_@g_write:bb.a
  %.01623.be = phi i32 [ %.016, %bb.g ], [ %.01626, %.thread ]
  %.01521.be = phi i32 [ %.1, %bb.g ], [ 0, %.thread ]
  %.022.be = add nuw nsw i32 %.022, 1
  br label %.lr.ph, !llvm.loop !23

.thread:                                          ; preds = %bb.b
  %.01626 = add nsw i32 %.01623, -1               ; 2 uses
end_hunk_11
begin_hunk_12_@llvm.umin.i64
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"luaL_Buffer", !14, i64 0, !5, i64 8, !15, i64 16, !6, i64 24}
!14 = !{!"p1 omnipotent char", !10, i64 0}
!15 = !{!"p1 _ZTS9lua_State", !10, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!19, !19, i64 0}
!19 = !{!"double", !6, i64 0}
!20 = distinct !{!20, !17}
!21 = !{!22, !22, i64 0}
!22 = !{!"long", !6, i64 0}
!23 = distinct !{!23, !17}
end_hunk_12
