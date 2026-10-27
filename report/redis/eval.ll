Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/eval?download=true
inline.NumInlined: 119
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ldbBreak:bb.a
  %indvars.iv.i.i21 = phi i64 [ 0, %.lr.ph.preheader.i.i18 ], [ %indvars.iv.next.i.i22, %bb.t ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i.i21
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !17
  %i.bz = icmp eq i32 %i.by, %i.bs
  br i1 %i.bz, label %.loopexit29, label %bb.t

.loopexit30:                                      ; preds = %bb.t, %bb.s
  %i.ca = add nsw i32 %i.bn, 1
  store i32 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140
  %i.cb = sext i32 %i.bn to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %i.cb
  store i32 %i.bs, ptr %i.cc, align 4, !tbaa !17
  call void @ldbList(i32 noundef %i.bs, i32 noundef 1)
  br label %bb.x

.loopexit29:                                      ; preds = %.lr.ph.i.i20, %bb.r
  %i.cd = call ptr @sdsnew(ptr noundef nonnull @.str.118) #17
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.cf = call ptr @listAddNodeTail(ptr noundef %i.ce, ptr noundef %i.cd) #17 ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %bb.o
  %i.cg = trunc i64 %i.bh to i32
  %i.ch = sub i32 0, %i.cg
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.preheader.i, label %.loopexit31

.lr.ph.preheader.i:                               ; preds = %bb.u
  %wide.trip.count.i = zext nneg i32 %i.ci to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.v ] ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !17
  %i.cm = icmp eq i32 %i.cl, %i.ch
  br i1 %i.cm, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit31, label %.lr.ph.i, !llvm.loop !3

bb.w:                                             ; preds = %.lr.ph.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i ; 2 uses
  %i.co = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cp = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.cp, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cr = sub nuw nsw i32 %i.cp, %i.co
  %i.cs = zext nneg i32 %i.cr to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr nonnull align 4 %i.cq, i64 %i.cs, i1 false)
  %i.ct = call ptr @sdsnew(ptr noundef nonnull @.str.119) #17
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.cv = call ptr @listAddNodeTail(ptr noundef %i.cu, ptr noundef %i.ct) #17 ; 0 uses
  br label %bb.x

.loopexit31:                                      ; preds = %bb.v, %bb.u
  %i.cw = call ptr @sdsnew(ptr noundef nonnull @.str.120) #17
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.cy = call ptr @listAddNodeTail(ptr noundef %i.cx, ptr noundef %i.cw) #17 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %.loopexit31, %bb.w, %bb.q, %.loopexit29, %.loopexit30, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !184

.loopexit:                                        ; preds = %bb.x, %ldbLogSourceLine.exit.loopexit, %.preheader, %bb.d, %bb.c
  ret void
}

declare i32 @string2l(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ldbEval(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = add nsw i32 %2, -1
  %i.c = tail call ptr @sdsjoinsds(ptr noundef nonnull %i.a, i32 noundef %i.b, ptr noundef nonnull @.str.121, i64 noundef 1) #17 ; 9 uses
  %i.d = tail call ptr @sdsnew(ptr noundef nonnull @.str.122) #17
  %i.e = tail call ptr @sdscatsds(ptr noundef %i.d, ptr noundef %i.c) #17 ; 8 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !24 ; 2 uses
  %i.g = and i8 %.val.i, 7
  switch i8 %i.g, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i8 %.val.i, 3
  %i.i = zext nneg i8 %i.h to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !24
  %i.l = zext i8 %i.k to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 -5
  %i.n = load i16, ptr %i.m, align 1, !tbaa !107
  %i.o = zext i16 %i.n to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -9
  %i.q = load i32, ptr %i.p, align 1, !tbaa !17
  %i.r = zext i32 %i.q to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = load i64, ptr %i.s, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.t, %bb.f ], [ %i.i, %bb.b ], [ %i.l, %bb.c ], [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ 0, %bb.a ]
  %i.u = tail call i32 @luaL_loadbuffer(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef %.0.i, ptr noundef nonnull @.str.123) #17
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %sdslen.exit
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  %i.v = getelementptr i8, ptr %i.c, i64 -1
  %.val.i22 = load i8, ptr %i.v, align 1, !tbaa !24 ; 2 uses
  %i.w = and i8 %.val.i22, 7
  switch i8 %i.w, label %sdslen.exit24 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = lshr i8 %.val.i22, 3
  %i.y = zext nneg i8 %i.x to i64
  br label %sdslen.exit24

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds i8, ptr %i.c, i64 -3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %i.ab = zext i8 %i.aa to i64
  br label %sdslen.exit24

bb.j:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds i8, ptr %i.c, i64 -5
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !107
  %i.ae = zext i16 %i.ad to i64
  br label %sdslen.exit24

bb.k:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds i8, ptr %i.c, i64 -9
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !17
  %i.ah = zext i32 %i.ag to i64
  br label %sdslen.exit24

bb.l:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds i8, ptr %i.c, i64 -17
  %i.aj = load i64, ptr %i.ai, align 1, !tbaa !108
  br label %sdslen.exit24

sdslen.exit24:                                    ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i23 = phi i64 [ %i.aj, %bb.l ], [ %i.y, %bb.h ], [ %i.ab, %bb.i ], [ %i.ae, %bb.j ], [ %i.ah, %bb.k ], [ 0, %bb.g ]
  %i.ak = tail call i32 @luaL_loadbuffer(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef %.0.i23, ptr noundef nonnull @.str.123) #17
  %.not20 = icmp eq i32 %i.ak, 0
  br i1 %.not20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %sdslen.exit24
  %i.al = tail call ptr @sdsempty() #17
  %i.am = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #17
  %i.an = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.al, ptr noundef nonnull @.str.124, ptr noundef %i.am) #17
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.ap = tail call ptr @listAddNodeTail(ptr noundef %i.ao, ptr noundef %i.an) #17 ; 0 uses
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  tail call void @sdsfree(ptr noundef nonnull %i.c) #17
  tail call void @sdsfree(ptr noundef nonnull %i.e) #17
  br label %bb.q

bb.n:                                             ; preds = %sdslen.exit24, %sdslen.exit
  tail call void @sdsfree(ptr noundef %i.c) #17
  tail call void @sdsfree(ptr noundef nonnull %i.e) #17
  %i.aq = tail call i32 @lua_pcall(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) #17
  %.not21 = icmp eq i32 %i.aq, 0
  br i1 %.not21, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call ptr @sdsempty() #17
  %i.as = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #17
  %i.at = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.ar, ptr noundef nonnull @.str.124, ptr noundef %i.as) #17
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.av = tail call ptr @listAddNodeTail(ptr noundef %i.au, ptr noundef %i.at) #17 ; 0 uses
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aw = tail call ptr @sdsnew(ptr noundef nonnull @.str.125) #17
  %i.ax = tail call ptr @ldbCatStackValueRec(ptr noundef %i.aw, ptr noundef %0, i32 noundef -1, i32 noundef 0)
  tail call void @ldbLogWithMaxLen(ptr noundef %i.ax)
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  ret void
}

declare ptr @sdsjoinsds(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ldbRedis(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = add nsw i32 %2, 1
  %i.c = tail call i32 @lua_checkstack(ptr noundef %0, i32 noundef %i.b) #17
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.d = tail call ptr @sdsnew(ptr noundef nonnull @.str.105) #17
  store ptr %i.d, ptr %i.a, align 8, !tbaa !106
  %i.e = call ptr @ldbRedisProtocolToHuman(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.126) ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !106
  tail call void @ldbLogWithMaxLen(ptr noundef %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull @.str.4) #17
  tail call void @lua_pushstring(ptr noundef %0, ptr noundef nonnull @.str.127) #17
  tail call void @lua_gettable(ptr noundef %0, i32 noundef -2) #17
  %i.g = icmp sgt i32 %2, 1
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %sdslen.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %sdslen.exit ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106  ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %.val.i = load i8, ptr %i.j, align 1, !tbaa !24 ; 2 uses
  %i.k = and i8 %.val.i, 7
  switch i8 %i.k, label %sdslen.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.l = lshr i8 %.val.i, 3
  %i.m = zext nneg i8 %i.l to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !24
  %i.p = zext i8 %i.o to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 -5
  %i.r = load i16, ptr %i.q, align 1, !tbaa !107
  %i.s = zext i16 %i.r to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -9
  %i.u = load i32, ptr %i.t, align 1, !tbaa !17
  %i.v = zext i32 %i.u to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds i8, ptr %i.i, i64 -17
  %i.x = load i64, ptr %i.w, align 1, !tbaa !108
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.x, %bb.h ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ %i.s, %bb.f ], [ %i.v, %bb.g ], [ 0, %.lr.ph ]
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.i, i64 noundef %.0.i) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !185

._crit_edge:                                      ; preds = %sdslen.exit, %bb.c
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 300), align 4, !tbaa !139
  %i.y = add nsw i32 %2, -1
  %i.z = tail call i32 @lua_pcall(ptr noundef %0, i32 noundef %i.y, i32 noundef 1, i32 noundef 0) #17 ; 0 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 300), align 4, !tbaa !139
  tail call void @lua_settop(ptr noundef %0, i32 noundef -3) #17
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

declare i32 @lua_checkstack(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_gettable(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ldbTrace(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lua_Debug, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = call i32 @lua_getstack(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %1) #17
  %.not8 = icmp eq i32 %i.a, 0
  br i1 %.not8, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.09 = phi i32 [ 0, %.lr.ph ], [ %i.aj, %bb.f ] ; 2 uses
  %i.e = call i32 @lua_getinfo(ptr noundef %0, ptr noundef nonnull @.str.128, ptr noundef nonnull %1) #17 ; 0 uses
  %i.f = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.129) #16
  %.not5 = icmp eq ptr %i.f, null
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @sdsempty() #17
  %i.h = icmp eq i32 %.09, 0
  %i.i = select i1 %i.h, ptr @.str.131, ptr @.str.132
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !187  ; 2 uses
  %.not6 = icmp eq ptr %i.j, null
  %i.k = select i1 %.not6, ptr @.str.133, ptr %i.j
  %i.l = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.g, ptr noundef nonnull @.str.130, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k) #17
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.n = call ptr @listAddNodeTail(ptr noundef %i.m, ptr noundef %i.l) #17 ; 0 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !148  ; 6 uses
  %i.p = icmp slt i32 %i.o, 1
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8
  %.not.not.i.i = icmp sgt i32 %i.o, %i.q
  %or.cond.i.i = select i1 %i.p, i1 true, i1 %.not.not.i.i
  br i1 %or.cond.i.i, label %ldbGetSourceLine.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 312), align 8, !tbaa !69
  %i.s = zext nneg i32 %i.o to i64
  %i.t = getelementptr [8 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106
  br label %ldbGetSourceLine.exit.i

ldbGetSourceLine.exit.i:                          ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.v, %bb.d ], [ @.str.72, %bb.c ]
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !140 ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %ldbLogSourceLine.exit

.lr.ph.preheader.i.i:                             ; preds = %ldbGetSourceLine.exit.i
  %wide.trip.count.i.i = zext nneg i32 %i.w to i64
  br label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ldbLogSourceLine.exit, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17
  %i.aa = icmp eq i32 %i.z, %i.o
  br i1 %i.aa, label %ldbLogSourceLine.exit, label %bb.e

ldbLogSourceLine.exit:                            ; preds = %bb.e, %.lr.ph.i.i, %ldbGetSourceLine.exit.i
  %i.ab = phi ptr [ @.str.77, %ldbGetSourceLine.exit.i ], [ @.str.76, %.lr.ph.i.i ], [ @.str.77, %bb.e ]
  %i.ac = phi ptr [ @.str.75, %ldbGetSourceLine.exit.i ], [ @.str.74, %.lr.ph.i.i ], [ @.str.75, %bb.e ]
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 324), align 4, !tbaa !33
  %i.ae = icmp eq i32 %i.ad, %i.o
  %.0.i = select i1 %i.ae, ptr %i.ac, ptr %i.ab
  %i.af = call ptr @sdsempty() #17
  %i.ag = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.af, ptr noundef nonnull @.str.78, ptr noundef nonnull %.0.i, i32 noundef %i.o, ptr noundef %.0.i.i) #17
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.ai = call ptr @listAddNodeTail(ptr noundef %i.ah, ptr noundef %i.ag) #17 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %ldbLogSourceLine.exit, %bb.b
  %i.aj = add nuw nsw i32 %.09, 1                 ; 2 uses
  %i.ak = call i32 @lua_getstack(ptr noundef %0, i32 noundef %i.aj, ptr noundef nonnull %1) #17
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !186

._crit_edge.thread:                               ; preds = %bb.a
  %i.al = call ptr @sdsnew(ptr noundef nonnull @.str.134) #17
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !35
  %i.an = call ptr @listAddNodeTail(ptr noundef %i.am, ptr noundef %i.al) #17 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}
end_hunk_0
