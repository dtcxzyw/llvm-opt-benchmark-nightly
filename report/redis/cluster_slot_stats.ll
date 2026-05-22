inline.NumInlined: 23
inline.NumDeleted: 11
begin_hunk_0_@clusterSlotStatsCommand:bb.a
  %i.bm = icmp samesign ugt i32 %i.e, 4
  br i1 %i.bm, label %.lr.ph, label %._crit_edge

bb.u:                                             ; preds = %bb.ac
  %i.bn = add nsw i32 %.173, 1                    ; 2 uses
  %i.bo = load i32, ptr %i.d, align 8, !tbaa !95  ; 2 uses
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !105

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %i.bq = phi i32 [ %i.bo, %bb.u ], [ %i.e, %bb.t ]
  %.068108 = phi i32 [ %.1, %bb.u ], [ 0, %bb.t ] ; 3 uses
  %.069107 = phi i32 [ %.170, %bb.u ], [ 0, %bb.t ] ; 3 uses
  %.072106 = phi i32 [ %i.bn, %bb.u ], [ 4, %bb.t ] ; 4 uses
  %.075105 = phi i32 [ %.176, %bb.u ], [ 1, %bb.t ]
  %i.br = add nsw i32 %.072106, 1                 ; 3 uses
  %i.bs = icmp sgt i32 %i.bq, %i.br
  %i.bt = load ptr, ptr %i.ao, align 8, !tbaa !96 ; 2 uses
  %i.bu = sext i32 %.072106 to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !97
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !98 ; 3 uses
  %i.bz = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.12) #12
  %i.ca = icmp eq i32 %i.bz, 0
  %or.cond9 = select i1 %i.ca, i1 %i.bs, i1 false
  br i1 %or.cond9, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.lr.ph
  %i.cb = sext i32 %i.br to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !97
  %i.ce = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.cd, i64 noundef 1, i64 noundef 16384, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.13) #10
  %.not88 = icmp eq i32 %i.ce, 0
  br i1 %.not88, label %bb.w, label %.thread96

bb.w:                                             ; preds = %bb.v
  %i.cf = add nuw nsw i32 %.069107, 1
  br label %bb.ac

bb.x:                                             ; preds = %.lr.ph
  %i.cg = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.14) #12
  %.not86 = icmp eq i32 %i.cg, 0
  br i1 %.not86, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ch = add nuw nsw i32 %.068108, 1
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.ci = call i32 @strcasecmp(ptr noundef %i.by, ptr noundef nonnull @.str.15) #12
  %.not87 = icmp eq i32 %i.ci, 0
  br i1 %.not87, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cj = add nuw nsw i32 %.068108, 1
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !106
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ck) #10
  br label %.thread96

bb.ac:                                            ; preds = %bb.y, %bb.aa, %bb.w
  %.176 = phi i32 [ %.075105, %bb.w ], [ 1, %bb.aa ], [ 0, %bb.y ] ; 2 uses
  %.173 = phi i32 [ %i.br, %bb.w ], [ %.072106, %bb.aa ], [ %.072106, %bb.y ]
  %.170 = phi i32 [ %i.cf, %bb.w ], [ %.069107, %bb.aa ], [ %.069107, %bb.y ] ; 2 uses
  %.1 = phi i32 [ %.068108, %bb.w ], [ %i.cj, %bb.aa ], [ %i.ch, %bb.y ] ; 2 uses
  %i.cl = icmp sgt i32 %.170, 1
  %i.cm = icmp sgt i32 %.1, 1
  %or.cond11 = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond11, label %bb.ad, label %bb.u

bb.ad:                                            ; preds = %bb.ac
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #10
  br label %.thread96

._crit_edge.loopexit:                             ; preds = %bb.u
  %.pre114 = load i64, ptr %i.b, align 8, !tbaa !104
  %i.cn = icmp eq i32 %.176, 0
  %i.co = select i1 %i.cn, ptr @slotStatForSortAscCmp, ptr @slotStatForSortDescCmp
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.t
  %i.cp = phi i64 [ 16384, %bb.t ], [ %.pre114, %._crit_edge.loopexit ]
  %.075.lcssa = phi ptr [ @slotStatForSortDescCmp, %bb.t ], [ %i.co, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.cq = call ptr @getMyClusterNode() #10
  %i.cr = call ptr @clusterNodeGetMaster(ptr noundef %i.cq) #10
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ap, %._crit_edge
  %.018.i.i = phi i32 [ 0, %._crit_edge ], [ %i.dk, %bb.ap ] ; 5 uses
  %.01417.i.i = phi i32 [ 0, %._crit_edge ], [ %.1.i.i, %bb.ap ] ; 3 uses
  %i.cs = call i32 @clusterNodeCoversSlot(ptr noundef %i.cr, i32 noundef %.018.i.i) #10
  %.not15.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not15.i.i, label %bb.ap, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = sext i32 %.01417.i.i to i64
  %i.cu = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ct ; 2 uses
  store i32 %.018.i.i, ptr %i.cu, align 16, !tbaa !108
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !63
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !64
  %i.cx = call ptr @kvstoreGetDictMeta(ptr noundef %i.cw, i32 noundef range(i32 -2147483648, 16384) %.018.i.i, i32 noundef 0) #10 ; 8 uses
  switch i32 %.078, label %default.unreachable [
    i32 0, label %bb.ag
    i32 1, label %bb.ah
    i32 2, label %bb.aj
    i32 3, label %bb.al
    i32 4, label %bb.an
  ]

bb.ag:                                            ; preds = %bb.af
  %i.cy = call i32 @countKeysInSlot(i32 noundef range(i32 -2147483648, 16384) %.018.i.i) #10
  %i.cz = zext i32 %i.cy to i64
  br label %getSlotStat.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %.not15.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not15.i.i.i, label %getSlotStat.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !86
  br label %getSlotStat.exit.i.i

bb.aj:                                            ; preds = %bb.af
  %.not14.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not14.i.i.i, label %getSlotStat.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !110
  br label %getSlotStat.exit.i.i

bb.al:                                            ; preds = %bb.af
  %.not13.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not13.i.i.i, label %getSlotStat.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.df = load i64, ptr %i.de, align 8, !tbaa !94
  br label %getSlotStat.exit.i.i

bb.an:                                            ; preds = %bb.af
  %.not.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i, label %getSlotStat.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !68
  br label %getSlotStat.exit.i.i

default.unreachable:                              ; preds = %bb.af
  unreachable

getSlotStat.exit.i.i:                             ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.0.i.i.i = phi i64 [ %i.cz, %bb.ag ], [ 0, %bb.al ], [ 0, %bb.ah ], [ 0, %bb.aj ], [ %i.db, %bb.ai ], [ %i.dd, %bb.ak ], [ %i.df, %bb.am ], [ %i.dh, %bb.ao ], [ 0, %bb.an ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %.0.i.i.i, ptr %i.di, align 8, !tbaa !111
  %i.dj = add nsw i32 %.01417.i.i, 1
  br label %bb.ap

bb.ap:                                            ; preds = %getSlotStat.exit.i.i, %bb.ae
  %.1.i.i = phi i32 [ %i.dj, %getSlotStat.exit.i.i ], [ %.01417.i.i, %bb.ae ] ; 2 uses
  %i.dk = add nuw nsw i32 %.018.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dk, 16384
  br i1 %exitcond.not.i.i, label %collectAndSortSlotStats.exit.i, label %bb.ae, !llvm.loop !112

collectAndSortSlotStats.exit.i:                   ; preds = %bb.ap
  %i.dl = sext i32 %.1.i.i to i64
  call void @qsort(ptr noundef nonnull %1, i64 noundef %i.dl, i64 noundef 16, ptr noundef nonnull %.075.lcssa) #10
  %i.dm = call i32 @getMyShardSlotCount() #10
  %i.dn = sext i32 %i.dm to i64
  %i.do = call i64 @llvm.smin.i64(i64 %i.cp, i64 %i.dn) ; 3 uses
  %i.dp = trunc i64 %i.do to i32
  %sext.i.i = shl i64 %i.do, 32
  %i.dq = ashr exact i64 %sext.i.i, 32
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.dq) #10
  %i.dr = icmp sgt i32 %i.dp, 0
  br i1 %i.dr, label %.lr.ph.preheader.i.i, label %addReplyOrderBy.exit

.lr.ph.preheader.i.i:                             ; preds = %collectAndSortSlotStats.exit.i
  %wide.trip.count.i.i = and i64 %i.do, 2147483647
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.dt = load i32, ptr %i.ds, align 16, !tbaa !108
  call fastcc void @addReplySlotStat(ptr noundef %0, i32 noundef %i.dt)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i3.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i3.i, label %addReplyOrderBy.exit, label %.lr.ph.i.i, !llvm.loop !113

addReplyOrderBy.exit:                             ; preds = %.lr.ph.i.i, %collectAndSortSlotStats.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %.thread96

.thread96:                                        ; preds = %bb.v, %bb.ab, %bb.ad, %addReplyOrderBy.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.ar

bb.aq:                                            ; preds = %.thread, %bb.m
  tail call void @addReplySubcommandSyntaxError(ptr noundef nonnull %0) #10
  br label %bb.ar

bb.ar:                                            ; preds = %bb.s, %.thread96, %bb.h, %addReplySlotsRange.exit, %bb.f, %bb.e, %bb.aq, %bb.b
  ret void
}

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @getSlotOrReply(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @getRangeLongFromObjectOrReply(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplyErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplySubcommandSyntaxError(ptr noundef) local_unnamed_addr #1

declare ptr @kvstoreGetDictMeta(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @clusterNodeIsMaster(ptr noundef) local_unnamed_addr #1

declare ptr @getMyClusterNode() local_unnamed_addr #1

declare ptr @clusterNodeGetMaster(ptr noundef) local_unnamed_addr #1

declare i32 @clusterNodeCoversSlot(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @addReplySlotStat(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8324), align 4, !tbaa !103 ; 4 uses
  %i.b = and i32 %i.a, 2
  %i.c = and i32 %i.a, 4
  %i.d = icmp ne i32 %i.c, 0
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4
  %i.f = icmp ne i32 %i.e, 0
  %i.g = select i1 %i.d, i1 %i.f, i1 false        ; 2 uses
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef 2) #10
  %i.h = sext i32 %1 to i64
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.h) #10
  %i.i = select i1 %i.g, i32 2, i32 1
  %.not = trunc i32 %i.a to i1
  %.not29 = icmp eq i32 %i.b, 0
  %i.j = and i32 %i.a, 3
  %i.k = add nuw nsw i32 %i.j, %i.i
  %i.l = zext nneg i32 %i.k to i64
  tail call void @addReplyMapLen(ptr noundef %0, i64 noundef %i.l) #10
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.6) #10
  %i.m = tail call i32 @countKeysInSlot(i32 noundef %1) #10
  %i.n = zext i32 %i.m to i64
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.n) #10
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !63
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.q = tail call ptr @kvstoreGetDictMeta(ptr noundef %i.p, i32 noundef %1, i32 noundef 0) #10 ; 7 uses
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.8) #10
  %.not30 = icmp eq ptr %i.q, null
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !110
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.t = phi i64 [ %i.s, %bb.c ], [ 0, %bb.b ]
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.t) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.7) #10
  %.not31 = icmp eq ptr %i.q, null
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !86
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.w = phi i64 [ %i.v, %bb.g ], [ 0, %bb.f ]
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.w) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  br i1 %.not29, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.9) #10
  %.not32 = icmp eq ptr %i.q, null
  br i1 %.not32, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !94
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.y) #10
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.10) #10
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !68
  br label %bb.l

.critedge:                                        ; preds = %bb.j
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef 0) #10
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.10) #10
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.k
  %i.ab = phi i64 [ %i.aa, %bb.k ], [ 0, %.critedge ]
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.ab) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  ret void
}

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @addReplyMapLen(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @addReplyBulkCString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @countKeysInSlot(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @slotStatForSortDescCmp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !111  ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !108
  %i.g = load i32, ptr %1, align 8, !tbaa !108
  %i.h = sub nsw i32 %i.f, %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = sub i64 %i.b, %i.d
  %i.j = trunc i64 %i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @slotStatForSortAscCmp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !111  ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !108
  %i.g = load i32, ptr %1, align 8, !tbaa !108
  %i.h = sub nsw i32 %i.f, %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = sub i64 %i.b, %i.d
  %i.j = trunc i64 %i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.0
}

declare i32 @getMyShardSlotCount() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
