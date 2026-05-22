inline.NumInlined: 21
inline.NumDeleted: 7
begin_hunk_0_@db_setfenv:bb.a
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 2, i32 noundef 5) #7
  tail call void @lua_settop(ptr noundef %0, i32 noundef 2) #7
  %i.a = tail call i32 @lua_setfenv(ptr noundef %0, i32 noundef 1) #7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.40) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @db_sethook(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef 1) #7
  %i.b = icmp eq i32 %i.a, 8
  br i1 %i.b, label %bb.b, label %getthread.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @lua_tothread(ptr noundef %0, i32 noundef 1) #7
  br label %getthread.exit

getthread.exit:                                   ; preds = %bb.a, %bb.b
  %.024 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]      ; 3 uses
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.d = add nuw nsw i32 %.024, 1                 ; 4 uses
  %i.e = tail call i32 @lua_type(ptr noundef %0, i32 noundef %i.d) #7
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %getthread.exit
  tail call void @lua_settop(ptr noundef %0, i32 noundef %i.d) #7
  br label %bb.e

bb.d:                                             ; preds = %getthread.exit
  %i.g = or disjoint i32 %.024, 2
  %i.h = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.g, ptr noundef null) #7 ; 3 uses
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef %i.d, i32 noundef 6) #7
  %i.i = add nuw nsw i32 %.024, 3
  %i.j = tail call i64 @luaL_optinteger(ptr noundef %0, i32 noundef %i.i, i64 noundef 0) #7
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.h, i32 noundef 99) #9
  %.not.i = icmp ne ptr %i.l, null
  %spec.select.i = zext i1 %.not.i to i32         ; 2 uses
  %i.m = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.h, i32 noundef 114) #9
  %.not8.i = icmp eq ptr %i.m, null
  %i.n = or disjoint i32 %spec.select.i, 2
  %.1.i = select i1 %.not8.i, i32 %spec.select.i, i32 %i.n ; 2 uses
  %i.o = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.h, i32 noundef 108) #9
  %.not9.i = icmp eq ptr %i.o, null
  %i.p = or disjoint i32 %.1.i, 4
  %.2.i = select i1 %.not9.i, i32 %.1.i, i32 %i.p ; 2 uses
  %i.q = icmp sgt i32 %i.k, 0
  %i.r = or disjoint i32 %.2.i, 8
  %.3.i = select i1 %i.q, i32 %i.r, i32 %.2.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.018 = phi ptr [ null, %bb.c ], [ @hookf, %bb.d ]
  %.017 = phi i32 [ 0, %bb.c ], [ %i.k, %bb.d ]
  %.0 = phi i32 [ 0, %bb.c ], [ %.3.i, %bb.d ]
  tail call fastcc void @gethooktable(ptr noundef %0)
  tail call void @lua_pushlightuserdata(ptr noundef %0, ptr noundef %.0.i) #7
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef %i.d) #7
  tail call void @lua_rawset(ptr noundef %0, i32 noundef -3) #7
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #7
  %i.s = tail call i32 @lua_sethook(ptr noundef %.0.i, ptr noundef %.018, i32 noundef %.0, i32 noundef %.017) #7 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @db_setlocal(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.lua_Debug, align 8          ; 4 uses
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef 1) #7
  %i.b = icmp eq i32 %i.a, 8
  br i1 %i.b, label %bb.b, label %getthread.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @lua_tothread(ptr noundef %0, i32 noundef 1) #7
  br label %getthread.exit

getthread.exit:                                   ; preds = %bb.a, %bb.b
  %.015 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]      ; 3 uses
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.d = add nuw nsw i32 %.015, 1                 ; 2 uses
  %i.e = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef %i.d) #7
  %i.f = trunc i64 %i.e to i32
  %i.g = call i32 @lua_getstack(ptr noundef %.0.i, i32 noundef %i.f, ptr noundef nonnull %1) #7
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %getthread.exit
  %i.h = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.d, ptr noundef nonnull @.str.39) #7
  br label %bb.e

bb.d:                                             ; preds = %getthread.exit
  %i.i = add nuw nsw i32 %.015, 3                 ; 2 uses
  call void @luaL_checkany(ptr noundef %0, i32 noundef %i.i) #7
  call void @lua_settop(ptr noundef %0, i32 noundef %i.i) #7
  call void @lua_xmove(ptr noundef %0, ptr noundef %.0.i, i32 noundef 1) #7
  %i.j = or disjoint i32 %.015, 2
  %i.k = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef %i.j) #7
  %i.l = trunc i64 %i.k to i32
  %i.m = call ptr @lua_setlocal(ptr noundef %.0.i, ptr noundef nonnull %1, i32 noundef %i.l) #7
  call void @lua_pushstring(ptr noundef %0, ptr noundef %i.m) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 1, %bb.d ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @db_setmetatable(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef 2) #7
  switch i32 %i.a, label %bb.b [
    i32 5, label %bb.c
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.41) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  tail call void @lua_settop(ptr noundef %0, i32 noundef 2) #7
  %i.c = tail call i32 @lua_setmetatable(ptr noundef %0, i32 noundef 1) #7
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.c) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @db_setupvalue(ptr noundef %0) #0 {
bb.a:
  tail call void @luaL_checkany(ptr noundef %0, i32 noundef 3) #7
  %i.a = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 2) #7
  tail call void @luaL_checktype(ptr noundef %0, i32 noundef 1, i32 noundef 6) #7
  %i.b = tail call i32 @lua_iscfunction(ptr noundef %0, i32 noundef 1) #7
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %auxupvalue.exit

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %i.a to i32
  %i.d = tail call ptr @lua_setupvalue(ptr noundef %0, i32 noundef 1, i32 noundef %i.c) #7 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %auxupvalue.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef nonnull %i.d) #7
  tail call void @lua_insert(ptr noundef %0, i32 noundef -1) #7
  br label %auxupvalue.exit

auxupvalue.exit:                                  ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @db_errorfb(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.lua_Debug, align 8          ; 14 uses
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef 1) #7
  %i.b = icmp eq i32 %i.a, 8
  br i1 %i.b, label %bb.b, label %getthread.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @lua_tothread(ptr noundef %0, i32 noundef 1) #7
  br label %getthread.exit

getthread.exit:                                   ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]        ; 5 uses
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.d = or disjoint i32 %.0, 2                   ; 2 uses
  %i.e = tail call i32 @lua_isnumber(ptr noundef %0, i32 noundef %i.d) #7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %getthread.exit
  %i.f = tail call i64 @lua_tointeger(ptr noundef %0, i32 noundef %i.d) #7
  %i.g = trunc i64 %i.f to i32
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #7
  br label %bb.e

bb.d:                                             ; preds = %getthread.exit
  %i.h = icmp eq ptr %0, %.0.i
  %i.i = zext i1 %i.h to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.036 = phi i32 [ %i.g, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = tail call i32 @lua_gettop(ptr noundef %0) #7
  %i.k = icmp eq i32 %i.j, %.0
  br i1 %i.k, label %2, label %bb.f

2:                                                ; preds = %bb.e
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.42, i64 noundef 0) #7
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw nsw i32 %.0, 1
  %i.m = tail call i32 @lua_isstring(ptr noundef %0, i32 noundef %i.l) #7
  %.not40 = icmp eq i32 %i.m, 0
  br i1 %.not40, label %bb.u, label %3

3:                                                ; preds = %bb.f
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.17, i64 noundef 1) #7
  br label %bb.g

bb.g:                                             ; preds = %3, %2
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.43, i64 noundef 16) #7
  %i.n = call i32 @lua_getstack(ptr noundef %.0.i, i32 noundef %.036, ptr noundef nonnull %1) #7
  %.not415153 = icmp eq i32 %i.n, 0
  br i1 %.not415153, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %i.u = phi i1 [ true, %.lr.ph.lr.ph ], [ false, %.outer ]
  %.1.ph54 = phi i32 [ %.036, %.lr.ph.lr.ph ], [ %.3, %.outer ]
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.t
  %.152 = phi i32 [ %.1.ph54, %.lr.ph ], [ %i.v, %bb.t ] ; 4 uses
  %i.v = add nsw i32 %.152, 1                     ; 3 uses
  %i.w = icmp sgt i32 %.152, 11
  %or.cond = and i1 %i.w, %i.u
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.x = add nuw nsw i32 %.152, 11
  %i.y = call i32 @lua_getstack(ptr noundef %.0.i, i32 noundef %i.x, ptr noundef nonnull %1) #7
  %.not43 = icmp eq i32 %i.y, 0
  br i1 %.not43, label %.outer, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.44, i64 noundef 5) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.2 = phi i32 [ %i.v, %bb.j ], [ %i.ab, %bb.k ] ; 3 uses
  %i.z = add nuw nsw i32 %.2, 10
  %i.aa = call i32 @lua_getstack(ptr noundef %.0.i, i32 noundef %i.z, ptr noundef nonnull %1) #7
  %.not44 = icmp eq i32 %i.aa, 0
  %i.ab = add nuw nsw i32 %.2, 1
  br i1 %.not44, label %.outer, label %bb.k, !llvm.loop !22

.outer:                                           ; preds = %bb.k, %bb.i
  %.3 = phi i32 [ %.152, %bb.i ], [ %.2, %bb.k ]  ; 2 uses
  %i.ac = call i32 @lua_getstack(ptr noundef %.0.i, i32 noundef %.3, ptr noundef nonnull %1) #7
  %.not4151 = icmp eq i32 %i.ac, 0
  br i1 %.not4151, label %.outer._crit_edge, label %.lr.ph, !llvm.loop !24

bb.l:                                             ; preds = %bb.h
  call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.45, i64 noundef 2) #7
  %i.ad = call i32 @lua_getinfo(ptr noundef %.0.i, ptr noundef nonnull @.str.46, ptr noundef nonnull %1) #7 ; 0 uses
  %i.ae = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull %i.o) #7 ; 0 uses
  %i.af = load i32, ptr %i.p, align 8, !tbaa !18  ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %i.af) #7 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %.not42 = icmp eq i8 %i.aj, 0
  br i1 %.not42, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.al = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.49, ptr noundef %i.ak) #7 ; 0 uses
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.an = load i8, ptr %i.am, align 1, !tbaa !11
  switch i8 %i.an, label %bb.s [
    i8 109, label %bb.q
    i8 67, label %bb.r
    i8 116, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ao = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.50) #7 ; 0 uses
  br label %bb.t

bb.r:                                             ; preds = %bb.p, %bb.p
  call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.51, i64 noundef 2) #7
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ap = load i32, ptr %i.t, align 8, !tbaa !15
  %i.aq = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.o, i32 noundef %i.ap) #7 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r, %bb.o
  %i.ar = call i32 @lua_gettop(ptr noundef %0) #7
  %i.as = sub nsw i32 %i.ar, %.0
  call void @lua_concat(ptr noundef %0, i32 noundef %i.as) #7
  %i.at = call i32 @lua_getstack(ptr noundef %.0.i, i32 noundef %i.v, ptr noundef nonnull %1) #7
  %.not41 = icmp eq i32 %i.at, 0
  br i1 %.not41, label %.outer._crit_edge, label %bb.h, !llvm.loop !24

.outer._crit_edge:                                ; preds = %.outer, %bb.t, %bb.g
  %i.au = call i32 @lua_gettop(ptr noundef %0) #7
  %i.av = sub nsw i32 %i.au, %.0
  call void @lua_concat(ptr noundef %0, i32 noundef %i.av) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %.outer._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @luaL_loadbuffer(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @lua_pcall(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @luaL_checkany(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_getfenv(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_gethookmask(ptr noundef) local_unnamed_addr #1

declare ptr @lua_gethook(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @hookf(ptr noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  tail call void @lua_pushlightuserdata(ptr noundef %0, ptr noundef nonnull @KEY_HOOK) #7
  tail call void @lua_rawget(ptr noundef %0, i32 noundef -10000) #7
  tail call void @lua_pushlightuserdata(ptr noundef %0, ptr noundef %0) #7
  tail call void @lua_rawget(ptr noundef %0, i32 noundef -2) #7
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #7
  %i.b = icmp eq i32 %i.a, 6
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !25
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @hookf.hooknames, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.h to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.j) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @lua_pushnil(ptr noundef %0) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @lua_call(ptr noundef %0, i32 noundef 2, i32 noundef 0) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @gethooktable(ptr noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @lua_pushlightuserdata(ptr noundef %0, ptr noundef nonnull @KEY_HOOK) #7
  tail call void @lua_rawget(ptr noundef %0, i32 noundef -10000) #7
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1) #7
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #7
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 1) #7
  tail call void @lua_pushlightuserdata(ptr noundef %0, ptr noundef nonnull @KEY_HOOK) #7
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -2) #7
end_hunk_0
