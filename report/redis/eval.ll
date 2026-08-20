inline.NumInlined: 119
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ldbRedisProtocolToHuman_Double:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 13) #16 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !103
  %i.d = tail call ptr @sdscatlen(ptr noundef %i.c, ptr noundef nonnull @.str.104, i64 noundef 9) #17 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !103
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = xor i64 %i.f, -1
  %i.h = add i64 %i.e, %i.g
  %i.i = tail call ptr @sdscatlen(ptr noundef %i.d, ptr noundef nonnull %i.a, i64 noundef %i.h) #17
  store ptr %i.i, ptr %0, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  ret ptr %i.j
}

declare i32 @string2ll(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ldbLogRedisReply(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call ptr @sdsnew(ptr noundef nonnull @.str.105) #17
  store ptr %i.b, ptr %i.a, align 8, !tbaa !103
  %i.c = call ptr @ldbRedisProtocolToHuman(ptr noundef nonnull %i.a, ptr noundef %0) ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !103
  tail call void @ldbLogWithMaxLen(ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ldbPrint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lua_Debug, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = call i32 @lua_getstack(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #17
  %.not25 = icmp eq i32 %i.a, 0
  br i1 %.not25, label %.critedge._crit_edge, label %.lr.ph27

.critedge.loopexit:                               ; preds = %bb.c, %.lr.ph27
  %i.b = call i32 @lua_getstack(ptr noundef %0, i32 noundef %i.c, ptr noundef nonnull %2) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge._crit_edge, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.a, %.critedge.loopexit
  %.01826 = phi i32 [ %i.c, %.critedge.loopexit ], [ 0, %bb.a ]
  %i.c = add nuw nsw i32 %.01826, 1               ; 2 uses
  %i.d = call ptr @lua_getlocal(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #17 ; 2 uses
  %.not2223 = icmp eq ptr %i.d, null
  br i1 %.not2223, label %.critedge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph27, %bb.c
  %i.e = phi ptr [ %i.k, %bb.c ], [ %i.d, %.lr.ph27 ]
  %.01724 = phi i32 [ %i.j, %bb.c ], [ 1, %.lr.ph27 ]
  %i.f = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.e) #16
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = call ptr @sdsnew(ptr noundef nonnull @.str.106) #17
  %i.i = call ptr @ldbCatStackValueRec(ptr noundef %i.h, ptr noundef %0, i32 noundef -1, i32 noundef 0)
  call void @ldbLogWithMaxLen(ptr noundef %i.i)
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  br label %bb.g, !llvm.loop !177

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i32 %.01724, 1               ; 2 uses
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  %i.k = call ptr @lua_getlocal(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %i.j) #17 ; 2 uses
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !178

.critedge._crit_edge:                             ; preds = %.critedge.loopexit, %bb.a
  %i.l = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.107) #16
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge._crit_edge
  %i.m = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.108) #16
  %.not21 = icmp eq i32 %i.m, 0
  br i1 %.not21, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %.critedge._crit_edge
  call void @lua_getfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull %1) #17
  %i.n = call ptr @sdsnew(ptr noundef nonnull @.str.106) #17
  %i.o = call ptr @ldbCatStackValueRec(ptr noundef %i.n, ptr noundef %0, i32 noundef -1, i32 noundef 0)
  call void @ldbLogWithMaxLen(ptr noundef %i.o)
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = call ptr @sdsnew(ptr noundef nonnull @.str.109) #17
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !31
  %i.r = call ptr @listAddNodeTail(ptr noundef %i.q, ptr noundef %i.p) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

declare i32 @lua_getstack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lua_getlocal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ldbPrintAll(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lua_Debug, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = call i32 @lua_getstack(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %1) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = call ptr @lua_getlocal(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #17 ; 2 uses
  %.not1315 = icmp eq ptr %i.b, null
  br i1 %.not1315, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.c = phi ptr [ %i.k, %bb.c ], [ %i.b, %.preheader ] ; 2 uses
  %.017 = phi i32 [ %.1, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %.01116 = phi i32 [ %i.d, %bb.c ], [ 1, %.preheader ]
  %i.d = add nuw nsw i32 %.01116, 1               ; 2 uses
  %i.e = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.110) #16
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = call ptr @sdsempty() #17
  %i.g = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.f, ptr noundef nonnull @.str.111, ptr noundef nonnull %i.c) #17 ; 2 uses
  %i.h = call ptr @sdsnew(ptr noundef %i.g) #17
  %i.i = call ptr @ldbCatStackValueRec(ptr noundef %i.h, ptr noundef %0, i32 noundef -1, i32 noundef 0)
  call void @ldbLogWithMaxLen(ptr noundef %i.i)
  call void @sdsfree(ptr noundef %i.g) #17
  %i.j = add nsw i32 %.017, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i32 [ %.017, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  call void @lua_settop(ptr noundef %0, i32 noundef -2) #17
  %i.k = call ptr @lua_getlocal(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.d) #17 ; 2 uses
  %.not13 = icmp eq ptr %i.k, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !179

._crit_edge:                                      ; preds = %bb.c
  %i.l = icmp eq i32 %.1, 0
  br i1 %i.l, label %.critedge, label %bb.d

.critedge:                                        ; preds = %.preheader, %bb.a, %._crit_edge
  %i.m = call ptr @sdsnew(ptr noundef nonnull @.str.112) #17
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !31
  %i.o = call ptr @listAddNodeTail(ptr noundef %i.n, ptr noundef %i.m) #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ldbBreak(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 1
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !154
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @sdsnew(ptr noundef nonnull @.str.113) #17
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !31
  %i.h = tail call ptr @listAddNodeTail(ptr noundef %i.g, ptr noundef %i.f) #17 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call ptr @sdsempty() #17
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !154
  %i.k = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.i, ptr noundef nonnull @.str.114, i32 noundef %i.j) #17
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !31
  %i.m = tail call ptr @listAddNodeTail(ptr noundef %i.l, ptr noundef %i.k) #17 ; 0 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !154 ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph38, label %.loopexit

.lr.ph38:                                         ; preds = %bb.d, %ldbLogSourceLine.exit
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %ldbLogSourceLine.exit ], [ 0, %bb.d ] ; 2 uses
  %i.p = phi i32 [ %i.ai, %ldbLogSourceLine.exit ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv43
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9    ; 6 uses
  %i.s = icmp slt i32 %i.r, 1
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8
  %.not.not.i.i = icmp sgt i32 %i.r, %i.t
  %or.cond.i.i = select i1 %i.s, i1 true, i1 %.not.not.i.i
  br i1 %or.cond.i.i, label %ldbGetSourceLine.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph38
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 312), align 8, !tbaa !66
  %i.v = zext nneg i32 %i.r to i64
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !103
  br label %ldbGetSourceLine.exit.i

ldbGetSourceLine.exit.i:                          ; preds = %bb.e, %.lr.ph38
  %.0.i.i = phi ptr [ %i.y, %bb.e ], [ @.str.72, %.lr.ph38 ]
  %2 = icmp sgt i32 %i.p, 0
  br i1 %2, label %.lr.ph.preheader.i.i, label %ldbLogSourceLine.exit

.lr.ph.preheader.i.i:                             ; preds = %ldbGetSourceLine.exit.i
  %wide.trip.count.i.i = zext nneg i32 %i.p to i64
  br label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ldbLogSourceLine.exit, label %.lr.ph.i.i, !llvm.loop !169

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !9
  %i.ab = icmp eq i32 %i.aa, %i.r
  br i1 %i.ab, label %ldbLogSourceLine.exit, label %bb.f

ldbLogSourceLine.exit:                            ; preds = %bb.f, %.lr.ph.i.i, %ldbGetSourceLine.exit.i
  %3 = phi ptr [ @.str.77, %ldbGetSourceLine.exit.i ], [ @.str.76, %.lr.ph.i.i ], [ @.str.77, %bb.f ]
  %4 = phi ptr [ @.str.75, %ldbGetSourceLine.exit.i ], [ @.str.74, %.lr.ph.i.i ], [ @.str.75, %bb.f ]
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 324), align 4, !tbaa !28
  %i.ad = icmp eq i32 %i.ac, %i.r
  %.0.i = select i1 %i.ad, ptr %4, ptr %3
  %i.ae = tail call ptr @sdsempty() #17
  %i.af = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.78, ptr noundef nonnull %.0.i, i32 noundef %i.r, ptr noundef %.0.i.i) #17
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !31
  %i.ah = tail call ptr @listAddNodeTail(ptr noundef %i.ag, ptr noundef %i.af) #17 ; 0 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !154 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next44, %i.aj
  br i1 %i.ak, label %.lr.ph38, label %.loopexit, !llvm.loop !180

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !103 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %.val.i = load i8, ptr %i.an, align 1, !tbaa !19 ; 2 uses
  %i.ao = and i8 %.val.i, 7
  switch i8 %i.ao, label %sdslen.exit [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.ap = lshr i8 %.val.i, 3
  %i.aq = zext nneg i8 %i.ap to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 -3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.at = zext i8 %i.as to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds i8, ptr %i.am, i64 -5
  %i.av = load i16, ptr %i.au, align 1, !tbaa !105
  %i.aw = zext i16 %i.av to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds i8, ptr %i.am, i64 -9
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !9
  %i.az = zext i32 %i.ay to i64
  br label %sdslen.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds i8, ptr %i.am, i64 -17
  %i.bb = load i64, ptr %i.ba, align 1, !tbaa !106
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i16 = phi i64 [ %i.bb, %bb.k ], [ %i.aq, %bb.g ], [ %i.at, %bb.h ], [ %i.aw, %bb.i ], [ %i.az, %bb.j ], [ 0, %.lr.ph ]
  %i.bc = call i32 @string2l(ptr noundef nonnull %i.am, i64 noundef %.0.i16, ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %sdslen.exit
  %i.bd = call ptr @sdsempty() #17
  %i.be = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.bd, ptr noundef nonnull @.str.115, ptr noundef nonnull %i.am) #17
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !31
  %i.bg = call ptr @listAddNodeTail(ptr noundef %i.bf, ptr noundef %i.be) #17 ; 0 uses
  br label %bb.x

bb.m:                                             ; preds = %sdslen.exit
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !106 ; 4 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !154
  %i.bj = call ptr @sdsnew(ptr noundef nonnull @.str.116) #17
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !31
  %i.bl = call ptr @listAddNodeTail(ptr noundef %i.bk, ptr noundef %i.bj) #17 ; 0 uses
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.bm = icmp sgt i64 %i.bh, 0
  br i1 %i.bm, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !154 ; 5 uses
  %i.bo = icmp eq i32 %i.bn, 64
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = call ptr @sdsnew(ptr noundef nonnull @.str.117) #17
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !31
  %i.br = call ptr @listAddNodeTail(ptr noundef %i.bq, ptr noundef %i.bp) #17 ; 0 uses
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.bs = trunc i64 %i.bh to i32                  ; 5 uses
  %i.bt = icmp slt i32 %i.bs, 1
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 320), align 8
  %i.bv = icmp slt i32 %i.bu, %i.bs
  %or.cond9.i = select i1 %i.bt, i1 true, i1 %i.bv
  br i1 %or.cond9.i, label %.loopexit29, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = icmp sgt i32 %i.bn, 0
  br i1 %i.bw, label %.lr.ph.preheader.i.i18, label %.loopexit30

.lr.ph.preheader.i.i18:                           ; preds = %bb.s
  %wide.trip.count.i.i19 = zext nneg i32 %i.bn to i64
  br label %.lr.ph.i.i20

bb.t:                                             ; preds = %.lr.ph.i.i20
  %indvars.iv.next.i.i22 = add nuw nsw i64 %indvars.iv.i.i21, 1 ; 2 uses
  %exitcond.not.i.i23 = icmp eq i64 %indvars.iv.next.i.i22, %wide.trip.count.i.i19
  br i1 %exitcond.not.i.i23, label %.loopexit30, label %.lr.ph.i.i20, !llvm.loop !169

.lr.ph.i.i20:                                     ; preds = %bb.t, %.lr.ph.preheader.i.i18
  %indvars.iv.i.i21 = phi i64 [ 0, %.lr.ph.preheader.i.i18 ], [ %indvars.iv.next.i.i22, %bb.t ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i.i21
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !9
  %i.bz = icmp eq i32 %i.by, %i.bs
  br i1 %i.bz, label %.loopexit29, label %bb.t

.loopexit30:                                      ; preds = %bb.t, %bb.s
  %i.ca = add nsw i32 %i.bn, 1
  store i32 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !154
  %i.cb = sext i32 %i.bn to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %i.cb
  store i32 %i.bs, ptr %i.cc, align 4, !tbaa !9
  call void @ldbList(i32 noundef %i.bs, i32 noundef 1)
  br label %bb.x

.loopexit29:                                      ; preds = %.lr.ph.i.i20, %bb.r
  %i.cd = call ptr @sdsnew(ptr noundef nonnull @.str.118) #17
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !31
  %i.cf = call ptr @listAddNodeTail(ptr noundef %i.ce, ptr noundef %i.cd) #17 ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %bb.o
  %i.cg = trunc i64 %i.bh to i32
  %i.ch = sub i32 0, %i.cg
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !154 ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.preheader.i, label %.loopexit31

.lr.ph.preheader.i:                               ; preds = %bb.u
  %wide.trip.count.i = zext nneg i32 %i.ci to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.v ] ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !9
  %i.cm = icmp eq i32 %i.cl, %i.ch
  br i1 %i.cm, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit31, label %.lr.ph.i, !llvm.loop !170

bb.w:                                             ; preds = %.lr.ph.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 40), i64 %indvars.iv.i ; 2 uses
  %i.co = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cp = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.cp, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 296), align 8, !tbaa !154
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cr = sub nsw i32 %i.cp, %i.co
  %i.cs = sext i32 %i.cr to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr nonnull align 4 %i.cq, i64 %i.cs, i1 false)
  %i.ct = call ptr @sdsnew(ptr noundef nonnull @.str.119) #17
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !31
  %i.cv = call ptr @listAddNodeTail(ptr noundef %i.cu, ptr noundef %i.ct) #17 ; 0 uses
  br label %bb.x

.loopexit31:                                      ; preds = %bb.v, %bb.u
  %i.cw = call ptr @sdsnew(ptr noundef nonnull @.str.120) #17
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ldb, i64 16), align 8, !tbaa !31
  %i.cy = call ptr @listAddNodeTail(ptr noundef %i.cx, ptr noundef %i.cw) #17 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %.loopexit31, %bb.w, %bb.q, %.loopexit29, %.loopexit30, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !181

.loopexit:                                        ; preds = %bb.x, %ldbLogSourceLine.exit, %.preheader, %bb.d, %bb.c
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
end_hunk_0
