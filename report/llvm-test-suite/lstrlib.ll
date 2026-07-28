inline.NumInlined: 39
inline.NumDeleted: 21
begin_hunk_0_@str_reverse:bb.a
  store ptr %i.n, ptr %1, align 8, !tbaa !13
  store i8 %i.m, ptr %i.j, align 1, !tbaa !10
  %i.o = load i64, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.p = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !8
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @luaL_pushresult(ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_sub(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #10
  %i.c = call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 2) #10 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !8
  %i.e = icmp slt i64 %i.c, 0
  %i.f = add nsw i64 %i.d, 1
  %i.g = select i1 %i.e, i64 %i.f, i64 0
  %.0.i = add nsw i64 %i.g, %i.c
  %i.h = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef -1) #10 ; 2 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.j = icmp slt i64 %i.h, 0
  %i.k = add nsw i64 %i.i, 1
  %i.l = select i1 %i.j, i64 %i.k, i64 0
  %.0.i14 = add nsw i64 %i.l, %i.h
  %i.m = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %.0.i14, i64 0)
  %i.n = call i64 @llvm.smax.i64(i64 %.0.i, i64 1) ; 3 uses
  %spec.select = call i64 @llvm.smin.i64(i64 %i.m, i64 %i.i) ; 2 uses
  %.not = icmp sgt i64 %i.n, %spec.select
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -1
  %reass.sub = sub nsw i64 %spec.select, %i.n
  %i.q = add nuw nsw i64 %reass.sub, 1
  call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.p, i64 noundef %i.q) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef 0) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_upper(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.luaL_Buffer, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.b = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #10
  call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %1) #10
  %i.c = load i64, ptr %i.a, align 8, !tbaa !8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8216
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.07 = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.d ]  ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.f = icmp ult ptr %i.e, %i.d
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #10 ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = tail call ptr @__ctype_toupper_loc() #11
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.07
  %i.l = load i8, ptr %i.k, align 1, !tbaa !10
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = trunc i32 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.q, ptr %1, align 8, !tbaa !13
  store i8 %i.p, ptr %i.h, align 1, !tbaa !10
  %i.r = add nuw i64 %.07, 1                      ; 2 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !8
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @luaL_pushresult(ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @luaL_checklstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @luaL_optinteger(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @luaL_checkstack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #1

declare void @luaL_buffinit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @luaL_checkinteger(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @luaL_argerror(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @luaL_prepbuffer(ptr noundef) local_unnamed_addr #1

declare void @luaL_pushresult(ptr noundef) local_unnamed_addr #1

declare void @luaL_checktype(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_dump(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @writer(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  tail call void @luaL_addlstring(ptr noundef %3, ptr noundef %1, i64 noundef %2) #10
  ret i32 0
}

declare void @luaL_addlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @str_find_aux(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %struct.MatchState, align 8         ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #10 ; 7 uses
  %i.d = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) #10 ; 5 uses
  %i.e = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef 1) #10 ; 2 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.g = icmp slt i64 %i.e, 0
  %i.h = add nsw i64 %i.f, 1
  %i.i = select i1 %i.g, i64 %i.h, i64 0
  %.0.i = add nsw i64 %i.i, %i.e                  ; 2 uses
  %i.j = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %.0.i, i64 0)
  %i.k = add nsw i64 %i.j, -1
  %spec.select = call i64 @llvm.umin.i64(i64 %i.k, i64 %i.f)
  %.inv = icmp sgt i64 %.0.i, 0
  %.050 = select i1 %.inv, i64 %spec.select, i64 0 ; 3 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call i32 @lua_toboolean(ptr noundef %0, i32 noundef 4) #10
  %.not54 = icmp eq i32 %i.l, 0
  br i1 %.not54, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = call ptr @strpbrk(ptr noundef %i.d, ptr noundef nonnull @.str.19) #12
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8, !tbaa !8
  br label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %.050 ; 2 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !8
  %i.q = sub i64 %i.p, %.050                      ; 2 uses
  %i.r = load i64, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %lmemfind.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %i.r, %i.q
  br i1 %i.t, label %.critedge60, label %3

3:                                                ; preds = %bb.e
  %4 = add i64 %i.r, -1                           ; 2 uses
  %5 = sub i64 %i.q, %4                           ; 2 uses
  %.not27.i = icmp eq i64 %5, 0
  br i1 %.not27.i, label %.critedge60, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %3
  %i.u = load i8, ptr %i.d, align 1, !tbaa !10
  %i.v = sext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i
  %.02029.i = phi i64 [ %5, %.lr.ph.i ], [ %i.ac, %bb.h ] ; 2 uses
  %.02128.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.y, %bb.h ] ; 2 uses
  %i.x = call ptr @memchr(ptr noundef %.02128.i, i32 noundef %i.v, i64 noundef %.02029.i) #12 ; 3 uses
  %.not25.i = icmp eq ptr %i.x, null
  br i1 %.not25.i, label %.critedge60, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 3 uses
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.y, ptr nonnull readonly %i.w, i64 %4)
  %i.z = icmp eq i32 %bcmp.i, 0
  br i1 %i.z, label %lmemfind.exit.thread70, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %.02128.i to i64
  %.neg.i = add i64 %.02029.i, %i.ab
  %i.ac = sub i64 %.neg.i, %i.aa                  ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %.critedge60, label %bb.f, !llvm.loop !42

lmemfind.exit:                                    ; preds = %bb.d
  %.not58 = icmp eq ptr %i.c, null
  br i1 %.not58, label %.critedge60, label %lmemfind.exit.thread70

lmemfind.exit.thread70:                           ; preds = %bb.g, %lmemfind.exit
  %.1.i73 = phi ptr [ %i.o, %lmemfind.exit ], [ %i.x, %bb.g ]
  %i.ad = ptrtoint ptr %.1.i73 to i64
  %i.ae = ptrtoint ptr %i.c to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = add nsw i64 %i.af, 1
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ag) #10
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !8
  %i.ai = add i64 %i.af, %i.ah
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ai) #10
  br label %bb.m

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.aj = phi i64 [ %.pre, %._crit_edge ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.ak = load i8, ptr %i.d, align 1, !tbaa !10
  %.fr = freeze i8 %i.ak
  %.not57 = icmp eq i8 %.fr, 94                   ; 2 uses
  %spec.select61.idx = zext i1 %.not57 to i64
  %spec.select61 = getelementptr inbounds nuw i8, ptr %i.d, i64 %spec.select61.idx ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %.050 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %0, ptr %i.am, align 8, !tbaa !26
  store ptr %i.c, ptr %2, align 8, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !30
  %i.aq = call fastcc ptr @match(ptr noundef %2, ptr noundef %i.al, ptr noundef nonnull %spec.select61) ; 3 uses
  %.not55.us = icmp eq ptr %i.aq, null            ; 2 uses
  br i1 %.not57, label %.split.us, label %.split, !llvm.loop !43

.split.us:                                        ; preds = %bb.i
  br i1 %.not55.us, label %.critedge, label %.split84.us

.split:                                           ; preds = %bb.i
  br i1 %.not55.us, label %push_captures.exit67, label %.split84.us

.split84.us:                                      ; preds = %bb.l, %.split, %.split.us
  %.us-phi = phi ptr [ %i.al, %.split.us ], [ %i.al, %.split ], [ %i.bj, %bb.l ] ; 3 uses
  %.us-phi85 = phi ptr [ %i.aq, %.split.us ], [ %i.aq, %.split ], [ %i.bk, %bb.l ] ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split84.us
  %i.ar = ptrtoint ptr %.us-phi to i64
  %i.as = ptrtoint ptr %i.c to i64                ; 2 uses
  %reass.sub = sub i64 %i.ar, %i.as
  %i.at = add i64 %reass.sub, 1
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.at) #10
  %i.au = ptrtoint ptr %.us-phi85 to i64
  %i.av = sub i64 %i.au, %i.as
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.av) #10
  %i.aw = load i32, ptr %i.ap, align 8, !tbaa !30 ; 4 uses
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !26
  call void @luaL_checkstack(ptr noundef %i.ax, i32 noundef %i.aw, ptr noundef nonnull @.str.21) #10
  %i.ay = icmp sgt i32 %i.aw, 0
  br i1 %i.ay, label %.lr.ph.i63, label %push_captures.exit

.lr.ph.i63:                                       ; preds = %bb.j, %.lr.ph.i63
  %.014.i = phi i32 [ %i.az, %.lr.ph.i63 ], [ 0, %bb.j ] ; 2 uses
  call fastcc void @push_onecapture(ptr noundef nonnull readonly %2, i32 noundef %.014.i, ptr noundef null, ptr noundef null)
  %i.az = add nuw nsw i32 %.014.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.az, %i.aw
  br i1 %exitcond.not.i, label %push_captures.exit, label %.lr.ph.i63, !llvm.loop !32

push_captures.exit:                               ; preds = %.lr.ph.i63, %bb.j
  %i.ba = add nsw i32 %i.aw, 2
  br label %.critedge62

bb.k:                                             ; preds = %.split84.us
  %i.bb = load i32, ptr %i.ap, align 8, !tbaa !30 ; 3 uses
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = icmp ne ptr %.us-phi, null
  %or.cond.i = and i1 %i.bd, %i.bc
  %spec.select.i = select i1 %or.cond.i, i32 1, i32 %i.bb ; 4 uses
  %i.be = load ptr, ptr %i.am, align 8, !tbaa !26
  call void @luaL_checkstack(ptr noundef %i.be, i32 noundef %spec.select.i, ptr noundef nonnull @.str.21) #10
  %i.bf = icmp sgt i32 %spec.select.i, 0
  br i1 %i.bf, label %.lr.ph.i64, label %.critedge62

.lr.ph.i64:                                       ; preds = %bb.k, %.lr.ph.i64
  %.014.i65 = phi i32 [ %i.bg, %.lr.ph.i64 ], [ 0, %bb.k ] ; 2 uses
  call fastcc void @push_onecapture(ptr noundef nonnull readonly %2, i32 noundef %.014.i65, ptr noundef %.us-phi, ptr noundef nonnull %.us-phi85)
  %i.bg = add nuw nsw i32 %.014.i65, 1            ; 2 uses
  %exitcond.not.i66 = icmp eq i32 %i.bg, %spec.select.i
  br i1 %exitcond.not.i66, label %.critedge62, label %.lr.ph.i64, !llvm.loop !32

push_captures.exit67:                             ; preds = %.split, %bb.l
  %.04587 = phi ptr [ %i.bj, %bb.l ], [ %i.al, %.split ] ; 2 uses
  %i.bh = load ptr, ptr %i.ao, align 8, !tbaa !29
  %i.bi = icmp ult ptr %.04587, %i.bh
  br i1 %i.bi, label %bb.l, label %.critedge

bb.l:                                             ; preds = %push_captures.exit67
  %i.bj = getelementptr inbounds nuw i8, ptr %.04587, i64 1 ; 3 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !30
  %i.bk = call fastcc ptr @match(ptr noundef %2, ptr noundef nonnull %i.bj, ptr noundef nonnull %spec.select61) ; 2 uses
  %.not55 = icmp eq ptr %i.bk, null
  br i1 %.not55, label %push_captures.exit67, label %.split84.us

.critedge:                                        ; preds = %push_captures.exit67, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %.critedge60

.critedge60:                                      ; preds = %bb.h, %bb.f, %3, %bb.e, %.critedge, %lmemfind.exit
  call void @lua_pushnil(ptr noundef %0) #10
  br label %bb.m

.critedge62:                                      ; preds = %.lr.ph.i64, %bb.k, %push_captures.exit
  %.2.ph = phi i32 [ %i.ba, %push_captures.exit ], [ %i.bb, %bb.k ], [ %spec.select.i, %.lr.ph.i64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.m

bb.m:                                             ; preds = %lmemfind.exit.thread70, %.critedge62, %.critedge60
  %.3 = phi i32 [ 1, %.critedge60 ], [ 2, %lmemfind.exit.thread70 ], [ %.2.ph, %.critedge62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.3
}

declare i32 @lua_toboolean(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %bb.a
  %.077.ph.ph = phi ptr [ %2, %bb.a ], [ %.077.ph.ph.be, %.outer.outer.backedge ]
  %.075.ph.ph = phi ptr [ %1, %bb.a ], [ %.075.ph.ph.be, %.outer.outer.backedge ] ; 30 uses
  %i.e = getelementptr inbounds i8, ptr %.075.ph.ph, i64 -1
  %i.f = getelementptr inbounds nuw i8, ptr %.075.ph.ph, i64 1
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bb.ci
  %.077.ph = phi ptr [ %i.ip, %bb.ci ], [ %.077.ph.ph, %.outer.outer ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %matchbracketclass.exit111
  %.077 = phi ptr [ %.015.i, %matchbracketclass.exit111 ], [ %.077.ph, %.outer ] ; 28 uses
  %i.g = load i8, ptr %.077, align 1, !tbaa !10   ; 2 uses
  switch i8 %i.g, label %bb.bl [
    i8 40, label %bb.c
    i8 41, label %bb.l
    i8 37, label %bb.p
    i8 0, label %start_capture.exit
    i8 36, label %bb.bj
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.077, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !10
  %i.j = icmp eq i8 %i.i, 41
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.077, i64 2
  %i.l = load i32, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 31
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.o = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.n, ptr noundef nonnull @.str.21) #10, !inline_history !44 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = sext i32 %i.l to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.p ; 2 uses
  store ptr %.075.ph.ph, ptr %i.q, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 -2, ptr %i.r, align 8, !tbaa !33
  %i.s = add nsw i32 %i.l, 1
  store i32 %i.s, ptr %i.c, align 8, !tbaa !30
  %i.t = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.075.ph.ph, ptr noundef nonnull %i.k), !inline_history !44 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %start_capture.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.c, align 8, !tbaa !30
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.c, align 8, !tbaa !30
  br label %start_capture.exit

bb.h:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 31
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.aa = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.z, ptr noundef nonnull @.str.21) #10, !inline_history !44 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.ab ; 2 uses
  store ptr %.075.ph.ph, ptr %i.ac, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 -1, ptr %i.ad, align 8, !tbaa !33
  %i.ae = add nsw i32 %i.x, 1
  store i32 %i.ae, ptr %i.c, align 8, !tbaa !30
  %i.af = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.075.ph.ph, ptr noundef nonnull %i.h), !inline_history !44 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %start_capture.exit

bb.k:                                             ; preds = %bb.j
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !30
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.c, align 8, !tbaa !30
  br label %start_capture.exit

bb.l:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.077, i64 1
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph525, label %._crit_edge

.lr.ph525:                                        ; preds = %bb.l
  %i.am = zext nneg i32 %i.ak to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.an = icmp sgt i32 %i.at, 0
  br i1 %i.an, label %bb.n, label %._crit_edge, !llvm.loop !45

bb.n:                                             ; preds = %.lr.ph525, %bb.m
  %indvars.iv.i524 = phi i64 [ %i.am, %.lr.ph525 ], [ %i.ao, %bb.m ]
  %i.ao = add nsw i64 %indvars.iv.i524, -1        ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !33
  %i.as = icmp eq i64 %i.ar, -1
  %i.at = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.as, label %capture_to_close.exit, label %bb.m, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.m, %bb.l
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.av = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.au, ptr noundef nonnull @.str.22) #10
  br label %capture_to_close.exit

capture_to_close.exit:                            ; preds = %bb.n, %._crit_edge
  %.08.i = phi i32 [ %i.av, %._crit_edge ], [ %i.at, %bb.n ]
  %i.aw = sext i32 %.08.i to i64
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35
  %i.az = ptrtoint ptr %.075.ph.ph to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !33
  %i.bd = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.075.ph.ph, ptr noundef nonnull %i.aj), !inline_history !46 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.o, label %start_capture.exit

bb.o:                                             ; preds = %capture_to_close.exit
  store i64 -1, ptr %i.bc, align 8, !tbaa !33
  br label %start_capture.exit

bb.p:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %.077, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !10  ; 5 uses
  switch i8 %i.bg, label %bb.bc [
    i8 98, label %bb.q
    i8 102, label %bb.z
  ]

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %.077, i64 2 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !10  ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %.077, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !10
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.bo = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.bn, ptr noundef nonnull @.str.23) #10 ; 0 uses
  %.pre.i = load i8, ptr %i.bh, align 1, !tbaa !10
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bp = phi i8 [ %.pre.i, %bb.s ], [ %i.bi, %bb.r ] ; 2 uses
  %i.bq = load i8, ptr %.075.ph.ph, align 1, !tbaa !10
  %.not.i = icmp eq i8 %i.bq, %i.bp
  br i1 %.not.i, label %bb.u, label %start_capture.exit

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %.077, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !10
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.075.ph.ph, i64 1 ; 2 uses
  %.not2628.i = icmp ult ptr %i.bu, %i.bt
  br i1 %.not2628.i, label %.lr.ph.i, label %start_capture.exit
end_hunk_0
