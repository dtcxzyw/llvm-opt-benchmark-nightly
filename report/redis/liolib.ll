inline.NumInlined: 47
inline.NumDeleted: 13
begin_hunk_0_@f_setvbuf:bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.16) #9 ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %tofile.exit

tofile.exit:                                      ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.f = tail call i32 @luaL_checkoption(ptr noundef %0, i32 noundef 2, ptr noundef null, ptr noundef nonnull @f_setvbuf.modenames) #9
  %i.g = tail call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef 8192) #9
  %i.h = sext i32 %i.f to i64
  %i.i = getelementptr inbounds [4 x i8], ptr @f_setvbuf.mode, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = tail call i32 @setvbuf(ptr noundef %i.e, ptr noundef null, i32 noundef %i.j, i64 noundef %i.g) #9
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %tofile.exit
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef 1) #9
  br label %pushresult.exit

bb.d:                                             ; preds = %tofile.exit
  %i.l = tail call ptr @__errno_location() #10
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4    ; 2 uses
  tail call void @lua_pushnil(ptr noundef %0) #9
  %i.n = tail call ptr @strerror(i32 noundef %i.m) #9
  %i.o = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %i.n) #9 ; 0 uses
  %i.p = sext i32 %i.m to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.p) #9
  br label %pushresult.exit

pushresult.exit:                                  ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ 1, %bb.c ], [ 3, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 4) i32 @f_write(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.5) #9 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %tofile.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.16) #9 ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %tofile.exit

tofile.exit:                                      ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.f = tail call fastcc i32 @g_write(ptr noundef %0, ptr noundef %i.e, i32 noundef 2)
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @io_gc(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.5) #9
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @lua_getfenv(ptr noundef %0, i32 noundef 1) #9
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.17) #9
  %i.c = tail call ptr @lua_tocfunction(ptr noundef %0, i32 noundef -1) #9
  %i.d = tail call i32 %i.c(ptr noundef %0) #9, !inline_history !11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @io_tostring(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @luaL_checkudata(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.5) #9
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef 13) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.b) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 1
}

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_rawgeti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @luaL_checkudata(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @lua_getfenv(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lua_tocfunction(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare void @lua_pushboolean(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_pushnil(ptr noundef) local_unnamed_addr #1

declare ptr @lua_pushfstring(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @io_readline(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef -10003) #9
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.split13, label %.split

.split13:                                         ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.20) #9 ; 0 uses
  br label %.split

.split:                                           ; preds = %bb.a, %.split13
  %.sink = phi ptr [ null, %.split13 ], [ %i.b, %bb.a ]
  %i.e = tail call fastcc i32 @read_line(ptr noundef %0, ptr noundef %.sink)
  %i.f = tail call i32 @ferror(ptr noundef %i.b) #9
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split
  %i.g = tail call ptr @__errno_location() #10
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = tail call ptr @strerror(i32 noundef %i.h) #9
  %i.j = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %i.i) #9
  br label %bb.f

bb.c:                                             ; preds = %.split
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @lua_toboolean(ptr noundef %0, i32 noundef -10004) #9
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lua_settop(ptr noundef %0, i32 noundef 0) #9
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -10003) #9
  tail call void @lua_getfenv(ptr noundef %0, i32 noundef 1) #9
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.17) #9
  %i.l = tail call ptr @lua_tocfunction(ptr noundef %0, i32 noundef -1) #9
  %i.m = tail call i32 %i.l(ptr noundef %0) #9, !inline_history !11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 1, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

declare ptr @lua_touserdata(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @read_line(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.luaL_Buffer, align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %2) #9
  %i.a = call ptr @luaL_prepbuffer(ptr noundef nonnull %2) #9 ; 2 uses
  %i.b = call ptr @fgets(ptr noundef %i.a, i32 noundef 8192, ptr noundef %1)
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @luaL_pushresult(ptr noundef nonnull %2) #9
  %i.d = call i64 @lua_objlen(ptr noundef %0, i32 noundef -1) #9
  %i.e = icmp ne i64 %i.d, 0
  %i.f = zext i1 %i.e to i32
  br label %bb.e

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.g = phi ptr [ %i.p, %bb.d ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #11 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %3 = add i64 %i.h, -1                           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %.not = icmp eq i8 %i.k, 10
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %3
  store ptr %i.m, ptr %2, align 8, !tbaa !13
  call void @luaL_pushresult(ptr noundef nonnull %2) #9
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.b
  %i.n = load ptr, ptr %2, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store ptr %i.o, ptr %2, align 8, !tbaa !13
  %i.p = call ptr @luaL_prepbuffer(ptr noundef nonnull %2) #9 ; 2 uses
  %i.q = call ptr @fgets(ptr noundef %i.p, i32 noundef 8192, ptr noundef %1)
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.1.ph = phi i32 [ 1, %bb.c ], [ %i.f, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.1.ph
}

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @lua_toboolean(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_buffinit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @luaL_prepbuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

declare void @luaL_pushresult(ptr noundef) local_unnamed_addr #1

declare i64 @lua_objlen(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @g_read(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 1, 3) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.luaL_Buffer, align 8        ; 7 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %4 = alloca %struct.luaL_Buffer, align 8        ; 7 uses
  %i.b = tail call i32 @lua_gettop(ptr noundef %0) #9 ; 3 uses
  tail call void @clearerr(ptr noundef %1) #9
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @read_line(ptr noundef %0, ptr noundef %1)
  %i.e = add nuw nsw i32 %2, 1
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 19
  tail call void @luaL_checkstack(ptr noundef %0, i32 noundef %i.f, ptr noundef nonnull @.str.21) #9
  %i.g = add nsw i32 %i.b, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.h = phi i32 [ %i.g, %bb.c ], [ %i.az, %.thread ] ; 2 uses
  %.04770 = phi i32 [ %2, %bb.c ], [ %i.ay, %.thread ] ; 6 uses
  %i.i = call i32 @lua_type(ptr noundef %0, i32 noundef %.04770) #9
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.k = call i64 @lua_tointeger(ptr noundef %0, i32 noundef %.04770) #9 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = call i32 @getc(ptr noundef %1)           ; 2 uses
  %i.n = call i32 @ungetc(i32 noundef %i.m, ptr noundef %1) ; 0 uses
  call void @lua_pushlstring(ptr noundef %0, ptr noundef null, i64 noundef 0) #9
  %i.o = icmp ne i32 %i.m, -1
  %i.p = zext i1 %i.o to i32
  br label %.thread

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %4) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.014.i = phi i64 [ 8192, %bb.g ], [ %spec.select.i, %bb.h ]
  %.0.i = phi i64 [ %i.k, %bb.g ], [ %i.u, %bb.h ] ; 2 uses
  %i.q = call ptr @luaL_prepbuffer(ptr noundef nonnull %4) #9
  %spec.select.i = call i64 @llvm.umin.i64(i64 %.014.i, i64 %.0.i) ; 3 uses
  %i.r = call i64 @fread(ptr noundef %i.q, i64 noundef 1, i64 noundef %spec.select.i, ptr noundef %1) ; 3 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store ptr %i.t, ptr %4, align 8, !tbaa !13
  %i.u = sub i64 %.0.i, %i.r                      ; 3 uses
  %i.v = icmp ne i64 %i.u, 0
  %i.w = icmp eq i64 %i.r, %spec.select.i
  %i.x = and i1 %i.w, %i.v
  br i1 %i.x, label %bb.h, label %bb.i, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  call void @luaL_pushresult(ptr noundef nonnull %4) #9
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %read_chars.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = call i64 @lua_objlen(ptr noundef %0, i32 noundef -1) #9
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  br label %read_chars.exit

read_chars.exit:                                  ; preds = %bb.i, %bb.j
  %i.ac = phi i32 [ 1, %bb.i ], [ %i.ab, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.thread

bb.k:                                             ; preds = %bb.d
  %i.ad = call ptr @lua_tolstring(ptr noundef %0, i32 noundef %.04770, ptr noundef null) #9 ; 3 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !12
  %i.af = icmp eq i8 %i.ae, 42
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %.04770, ptr noundef nonnull @.str.22) #9 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !12
  switch i8 %i.ai, label %bb.w [
    i8 110, label %bb.o
    i8 108, label %bb.r
    i8 97, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.aj = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.a) #9
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = load double, ptr %i.a, align 8, !tbaa !19
  call void @lua_pushnumber(ptr noundef %0, double noundef %i.al) #9
  br label %read_number.exit

bb.q:                                             ; preds = %bb.o
  call void @lua_pushnil(ptr noundef %0) #9
  br label %read_number.exit

read_number.exit:                                 ; preds = %bb.p, %bb.q
  %.0.i58 = phi i32 [ 1, %bb.p ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.thread

bb.r:                                             ; preds = %bb.n
  %i.am = call fastcc i32 @read_line(ptr noundef %0, ptr noundef %1)
  br label %.thread

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %3) #9
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.014.i59 = phi i64 [ 8192, %bb.s ], [ %spec.select.i61, %bb.t ]
  %.0.i60 = phi i64 [ -1, %bb.s ], [ %i.ar, %bb.t ] ; 2 uses
  %i.an = call ptr @luaL_prepbuffer(ptr noundef nonnull %3) #9
  %spec.select.i61 = call i64 @llvm.umin.i64(i64 %.014.i59, i64 %.0.i60) ; 3 uses
  %i.ao = call i64 @fread(ptr noundef %i.an, i64 noundef 1, i64 noundef %spec.select.i61, ptr noundef %1) ; 3 uses
  %i.ap = load ptr, ptr %3, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store ptr %i.aq, ptr %3, align 8, !tbaa !13
  %i.ar = sub i64 %.0.i60, %i.ao                  ; 3 uses
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = icmp eq i64 %i.ao, %spec.select.i61
  %i.au = and i1 %i.at, %i.as
  br i1 %i.au, label %bb.t, label %bb.u, !llvm.loop !17

bb.u:                                             ; preds = %bb.t
  call void @luaL_pushresult(ptr noundef nonnull %3) #9
  %i.av = icmp eq i64 %i.ar, 0
  br i1 %i.av, label %read_chars.exit62, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = call i64 @lua_objlen(ptr noundef %0, i32 noundef -1) #9 ; 0 uses
  br label %read_chars.exit62

read_chars.exit62:                                ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %.thread

bb.w:                                             ; preds = %bb.n
  %i.ax = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %.04770, ptr noundef nonnull @.str.23) #9
  br label %bb.ab

end_hunk_0
