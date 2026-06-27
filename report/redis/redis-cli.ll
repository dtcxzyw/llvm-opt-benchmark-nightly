inline.NumInlined: 395
inline.NumDeleted: 110
begin_hunk_0_@clusterManagerCheckCluster:bb.a
  %.not140366 = icmp eq ptr %i.adt, null
  br i1 %.not140366, label %._crit_edge369, label %.lr.ph368

.lr.ph368:                                        ; preds = %bb.gc
  %i.adu = trunc nuw nsw i64 %indvars.iv502 to i32
  br label %bb.gd

bb.gd:                                            ; preds = %.lr.ph368, %clusterManagerCountKeysInSlot.exit.thread
  %i.adv = phi ptr [ %i.adt, %.lr.ph368 ], [ %i.aet, %clusterManagerCountKeysInSlot.exit.thread ]
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 16
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !102 ; 7 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 56
  %i.adz = load i32, ptr %i.ady, align 8, !tbaa !141
  %i.aea = and i32 %i.adz, 2
  %.not144 = icmp eq i32 %i.aea, 0
  br i1 %.not144, label %bb.ge, label %clusterManagerCountKeysInSlot.exit.thread, !llvm.loop !507

bb.ge:                                            ; preds = %bb.gd
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adx, i64 84
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %indvars.iv502
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !73
  %.not145 = icmp eq i8 %i.aed, 0
  br i1 %.not145, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aee = call ptr @listAddNodeTail(ptr noundef %i.ads, ptr noundef nonnull %i.adx) #32 ; 0 uses
  br label %clusterManagerCountKeysInSlot.exit.thread

bb.gg:                                            ; preds = %bb.ge
  %i.aef = load ptr, ptr %i.adx, align 8, !tbaa !88
  %i.aeg = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.aef, ptr noundef nonnull @.str.285, i32 noundef %i.adu) #32 ; 6 uses
  %.not.i.i176 = icmp eq ptr %i.aeg, null
  br i1 %.not.i.i176, label %clusterManagerCountKeysInSlot.exit.thread, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aeh = load i32, ptr %i.aeg, align 8, !tbaa !41
  switch i32 %i.aeh, label %clusterManagerCountKeysInSlot.exit.thread203 [
    i32 6, label %bb.gi
    i32 3, label %clusterManagerCountKeysInSlot.exit
  ]

bb.gi:                                            ; preds = %bb.gh
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !80
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adx, i64 24
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !83
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeg, i64 32
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.aej, i32 noundef %i.ael, ptr noundef %i.aen)
  br label %clusterManagerCountKeysInSlot.exit.thread203

clusterManagerCountKeysInSlot.exit.thread203:     ; preds = %bb.gi, %bb.gh
  call void @freeReplyObject(ptr noundef nonnull %i.aeg) #32
  br label %clusterManagerCountKeysInSlot.exit.thread

clusterManagerCountKeysInSlot.exit:               ; preds = %bb.gh
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %i.aep = load i64, ptr %i.aeo, align 8, !tbaa !180
  %i.aeq = trunc i64 %i.aep to i32
  call void @freeReplyObject(ptr noundef nonnull %i.aeg) #32
  %i.aer = icmp sgt i32 %i.aeq, 0
  br i1 %i.aer, label %bb.gj, label %clusterManagerCountKeysInSlot.exit.thread

bb.gj:                                            ; preds = %clusterManagerCountKeysInSlot.exit
  %i.aes = call ptr @listAddNodeTail(ptr noundef %i.ads, ptr noundef nonnull %i.adx) #32 ; 0 uses
  br label %clusterManagerCountKeysInSlot.exit.thread

clusterManagerCountKeysInSlot.exit.thread:        ; preds = %bb.gg, %clusterManagerCountKeysInSlot.exit.thread203, %bb.gf, %bb.gj, %clusterManagerCountKeysInSlot.exit, %bb.gd
  %i.aet = call ptr @listNext(ptr noundef nonnull %20) #32 ; 2 uses
  %.not140 = icmp eq ptr %i.aet, null
  br i1 %.not140, label %._crit_edge369, label %bb.gd

._crit_edge369:                                   ; preds = %clusterManagerCountKeysInSlot.exit.thread, %bb.gc
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.ads, i64 40 ; 2 uses
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !90 ; 2 uses
  %i.aew = icmp ugt i64 %i.aev, 1
  br i1 %i.aew, label %bb.gk, label %bb.gy

bb.gk:                                            ; preds = %._crit_edge369
  %i.aex = trunc nuw nsw i64 %indvars.iv502 to i32 ; 10 uses
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.279, i32 noundef %i.aex, i64 noundef %i.aev)
  call void @listRewind(ptr noundef nonnull %i.ads, ptr noundef nonnull %20) #32
  %i.aey = call ptr @listNext(ptr noundef nonnull %20) #32 ; 2 uses
  %.not141370 = icmp eq ptr %i.aey, null
  br i1 %.not141370, label %._crit_edge373, label %.lr.ph372

.lr.ph372:                                        ; preds = %bb.gk, %.lr.ph372
  %i.aez = phi ptr [ %i.afg, %.lr.ph372 ], [ %i.aey, %bb.gk ]
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 16
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !102 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !80
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 24
  %i.aff = load i32, ptr %i.afe, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.280, ptr noundef %i.afd, i32 noundef %i.aff)
  %i.afg = call ptr @listNext(ptr noundef nonnull %20) #32 ; 2 uses
  %.not141 = icmp eq ptr %i.afg, null
  br i1 %.not141, label %._crit_edge373, label %.lr.ph372, !llvm.loop !508

._crit_edge373:                                   ; preds = %.lr.ph372, %bb.gk
  %i.afh = add nsw i32 %.0105380, 1               ; 2 uses
  br i1 %.not142, label %bb.gy, label %bb.gl

bb.gl:                                            ; preds = %._crit_edge373
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.361, i32 noundef range(i32 -2147483648, 16384) %i.aex)
  %i.afi = load i64, ptr %i.aeu, align 8, !tbaa !90
  %i.afj = icmp ugt i64 %i.afi, 1
  br i1 %i.afj, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @__assert_fail(ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.7, i32 noundef 6664, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerFixMultipleSlotOwners) #37
  unreachable

bb.gn:                                            ; preds = %bb.gl
  %i.afk = call fastcc ptr @clusterManagerGetNodeWithMostKeysInSlot(ptr noundef nonnull %i.ads, i32 noundef range(i32 -2147483648, 16384) %i.aex) ; 2 uses
  %.not.i178 = icmp eq ptr %i.afk, null
  br i1 %.not.i178, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.afl = load ptr, ptr %i.ads, align 8, !tbaa !165
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 16
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !102
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.038.i = phi ptr [ %i.afk, %bb.gn ], [ %i.afn, %bb.go ] ; 6 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.038.i, i64 16
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !80
  %i.afq = getelementptr inbounds nuw i8, ptr %.038.i, i64 24
  %i.afr = load i32, ptr %i.afq, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.363, i32 noundef range(i32 -2147483648, 16384) %i.aex, ptr noundef %i.afp, i32 noundef %i.afr)
  %i.afs = call fastcc i32 @clusterManagerSetSlotOwner(ptr noundef %.038.i, i32 noundef range(i32 -2147483648, 16384) %i.aex, i32 noundef 0)
  %.not46.i = icmp eq i32 %i.afs, 0
  br i1 %.not46.i, label %clusterManagerFixMultipleSlotOwners.exit.thread, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.aft = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.aft, ptr noundef nonnull %1) #32
  %i.afu = getelementptr i8, ptr %.038.i, i64 8
  %i.afv = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not47.i374 = icmp eq ptr %i.afv, null
  br i1 %.not47.i374, label %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split, label %.lr.ph377

.lr.ph377:                                        ; preds = %bb.gq, %.backedge.i
  %i.afw = phi ptr [ %i.agq, %.backedge.i ], [ %i.afv, %bb.gq ]
  %.033.i375 = phi i32 [ %.033.be.i, %.backedge.i ], [ 0, %bb.gq ] ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 16
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !102 ; 8 uses
  %i.afz = icmp eq ptr %i.afy, %.038.i
  br i1 %i.afz, label %.backedge.i, label %bb.gr, !llvm.loop !509

bb.gr:                                            ; preds = %.lr.ph377
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afy, i64 56
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !141
  %i.agc = and i32 %i.agb, 2
  %.not48.i = icmp eq i32 %i.agc, 0
  br i1 %.not48.i, label %bb.gs, label %.backedge.i, !llvm.loop !509

bb.gs:                                            ; preds = %bb.gr
  %i.agd = load ptr, ptr %i.afy, align 8, !tbaa !88
  %i.age = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.agd, ptr noundef nonnull @.str.285, i32 noundef range(i32 -2147483648, 16384) %i.aex) #32 ; 6 uses
  %.not.i.i.i179 = icmp eq ptr %i.age, null
  br i1 %.not.i.i.i179, label %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.agf = load i32, ptr %i.age, align 8, !tbaa !41
  switch i32 %i.agf, label %.thread.sink.split.i [
    i32 6, label %.thread.sink.split.sink.split.i
    i32 3, label %clusterManagerCountKeysInSlot.exit.i180
  ]

clusterManagerCountKeysInSlot.exit.i180:          ; preds = %bb.gt
  %i.agg = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %i.agh = load i64, ptr %i.agg, align 8, !tbaa !180
  %i.agi = trunc i64 %i.agh to i32                ; 2 uses
  call void @freeReplyObject(ptr noundef nonnull %i.age) #32
  %i.agj = icmp sgt i32 %i.agi, -1
  br i1 %i.agj, label %bb.gu, label %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split

bb.gu:                                            ; preds = %clusterManagerCountKeysInSlot.exit.i180
  %i.agk = call fastcc i32 @clusterManagerDelSlot(ptr noundef nonnull %i.afy, i32 noundef range(i32 -2147483648, 16384) %i.aex) ; 0 uses
  %.038.val.i = load ptr, ptr %i.afu, align 8, !tbaa !119
  %i.agl = load ptr, ptr %i.afy, align 8, !tbaa !88
  %i.agm = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.agl, ptr noundef nonnull @.str.320, i32 noundef range(i32 -2147483648, 16384) %i.aex, ptr noundef nonnull @.str.295, ptr noundef %.038.val.i) #32 ; 4 uses
  %.not24.i.i182 = icmp eq ptr %i.agm, null
  br i1 %.not24.i.i182, label %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.agn = load i32, ptr %i.agm, align 8, !tbaa !41
  %i.ago = icmp eq i32 %i.agn, 6
  br i1 %i.ago, label %.thread.sink.split.sink.split.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @freeReplyObject(ptr noundef nonnull %i.agm) #32
  %.not50.i = icmp eq i32 %i.agi, 0
  br i1 %.not50.i, label %.backedge.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.agp = call fastcc i32 @clusterManagerMoveSlot(ptr noundef nonnull %i.afy, ptr noundef nonnull %.038.i, i32 noundef range(i32 -2147483648, 16384) %i.aex, i32 noundef 130, ptr noundef null)
  %.not51.not.not.i = icmp eq i32 %i.agp, 0
  br i1 %.not51.not.not.i, label %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split, label %.backedge.i

.backedge.i:                                      ; preds = %bb.gx, %bb.gw, %bb.gr, %.lr.ph377
  %.033.be.i = phi i32 [ 1, %bb.gx ], [ %.033.i375, %bb.gr ], [ %.033.i375, %.lr.ph377 ], [ 1, %bb.gw ] ; 2 uses
  %i.agq = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not47.i = icmp eq ptr %i.agq, null
  br i1 %.not47.i, label %clusterManagerFixMultipleSlotOwners.exit, label %.lr.ph377

.thread.sink.split.sink.split.i:                  ; preds = %bb.gv, %bb.gt
  %.lcssa88.sink.i = phi ptr [ %i.age, %bb.gt ], [ %i.agm, %bb.gv ] ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.afy, i64 16
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !80
  %i.agt = getelementptr inbounds nuw i8, ptr %i.afy, i64 24
  %i.agu = load i32, ptr %i.agt, align 8, !tbaa !83
  %i.agv = getelementptr inbounds nuw i8, ptr %.lcssa88.sink.i, i64 32
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.ags, i32 noundef %i.agu, ptr noundef %i.agw)
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.gt, %.thread.sink.split.sink.split.i
  %.lcssa90.sink.i = phi ptr [ %.lcssa88.sink.i, %.thread.sink.split.sink.split.i ], [ %i.age, %bb.gt ]
  call void @freeReplyObject(ptr noundef nonnull %.lcssa90.sink.i) #32
  br label %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split

clusterManagerFixMultipleSlotOwners.exit:         ; preds = %.backedge.i
  %i.agx = icmp eq i32 %.033.be.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %i.agx, label %clusterManagerFixMultipleSlotOwners.exit.thread, label %bb.gy

clusterManagerFixMultipleSlotOwners.exit.thread.sink.split: ; preds = %bb.gq, %bb.gs, %clusterManagerCountKeysInSlot.exit.i180, %bb.gx, %bb.gu, %.thread.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %clusterManagerFixMultipleSlotOwners.exit.thread

clusterManagerFixMultipleSlotOwners.exit.thread:  ; preds = %bb.gp, %clusterManagerFixMultipleSlotOwners.exit, %clusterManagerFixMultipleSlotOwners.exit.thread.sink.split
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.281, i32 noundef %i.aex)
  call void @listRelease(ptr noundef nonnull %i.ads) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %.loopexit

bb.gy:                                            ; preds = %._crit_edge369, %._crit_edge373, %clusterManagerFixMultipleSlotOwners.exit
  %.1106 = phi i32 [ %.0105380, %._crit_edge369 ], [ %i.afh, %._crit_edge373 ], [ %.0105380, %clusterManagerFixMultipleSlotOwners.exit ] ; 2 uses
  %.9 = phi i32 [ %.8381, %._crit_edge369 ], [ 0, %._crit_edge373 ], [ 1, %clusterManagerFixMultipleSlotOwners.exit ] ; 2 uses
  call void @listRelease(ptr noundef %i.ads) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next503, 16384
  br i1 %exitcond.not, label %.loopexit, label %bb.gc, !llvm.loop !510

.loopexit:                                        ; preds = %bb.gy, %clusterManagerFixMultipleSlotOwners.exit.thread
  %.3108 = phi i32 [ %i.afh, %clusterManagerFixMultipleSlotOwners.exit.thread ], [ %.1106, %bb.gy ]
  %.11 = phi i32 [ 0, %clusterManagerFixMultipleSlotOwners.exit.thread ], [ %.9, %bb.gy ] ; 2 uses
  %i.agy = icmp eq i32 %.3108, 0
  br i1 %i.agy, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %.loopexit
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 4, ptr noundef nonnull @.str.282)
  br label %bb.ha

bb.ha:                                            ; preds = %.loopexit, %bb.gz, %bb.ga
  %.12 = phi i32 [ %.7, %bb.ga ], [ %.11, %bb.gz ], [ %.11, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.hb

bb.hb:                                            ; preds = %bb.a, %bb.ha
  %.0 = phi i32 [ %.12, %bb.ha ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @redisFree(ptr noundef) local_unnamed_addr #9

declare ptr @redisConnectWrapper(ptr noundef, i32 noundef, i64, i64) local_unnamed_addr #9

declare i32 @cliSecureConnection(ptr noundef, ptr noundef byval(%struct.cliSSLconfig) align 8, ptr noundef) local_unnamed_addr #9

declare i32 @anetKeepAlive(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @clusterManagerCheckRedisReply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !41
  %.not19 = icmp eq i32 %i.a, 6
  br i1 %.not19, label %.critedge18, label %.critedge

.critedge18:                                      ; preds = %bb.b
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !70
  %i.d = add i64 %i.c, 1
  %i.e = tail call noalias ptr @zmalloc(i64 noundef %i.d) #36 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = load i64, ptr %i.b, align 8, !tbaa !70
  %i.i = add i64 %i.h, 1
  %i.j = tail call i64 @redis_strlcpy(ptr noundef %i.e, ptr noundef %i.g, i64 noundef %i.i) #32 ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %.critedge18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.l, i32 noundef %i.n, ptr noundef %i.p)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.012 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.012
}

declare i64 @redis_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @listRelease(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i64 @getLongInfoField(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %getInfoField.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #34
  %i.c = getelementptr i8, ptr %i.a, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 1        ; 4 uses
  %i.e = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.d, i32 noundef 13) #34 ; 2 uses
  %i.f = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.d, i32 noundef 44) #34 ; 3 uses
  %.not26.i = icmp ne ptr %i.f, null
  %i.g = icmp ult ptr %i.f, %i.e
  %or.cond.i = select i1 %.not26.i, i1 %i.g, i1 false
  %.022.i = select i1 %or.cond.i, ptr %i.f, ptr %i.e
  %i.h = ptrtoint ptr %.022.i to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = add i64 %i.j, 1
  %i.l = tail call noalias ptr @zmalloc(i64 noundef %i.k) #36 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.d, i64 %i.j, i1 false)
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !73
  %i.n = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.l, ptr noundef null, i32 noundef 10) #32
  tail call void @zfree(ptr noundef nonnull %i.l) #32
  br label %getInfoField.exit.thread

getInfoField.exit.thread:                         ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.n, %bb.b ], [ -9223372036854775808, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, -2147483648) i32 @clusterManagerGetAntiAffinityScore(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.dictIterator, align 8       ; 6 uses
  %5 = alloca %struct.listIter, align 8           ; 5 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !90
  %sext = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext, 29
  %i.e = tail call noalias ptr @zcalloc(i64 noundef %i.d) #36 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !123
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.058 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph112, label %._crit_edge113

.lr.ph112:                                        ; preds = %bb.c
  %.not82 = icmp eq ptr %3, null
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph112, %._crit_edge105
  %indvars.iv117 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next118, %._crit_edge105 ] ; 2 uses
  %.0110 = phi i32 [ 0, %.lr.ph112 ], [ %.1.lcssa, %._crit_edge105 ] ; 2 uses
  %.159108 = phi ptr [ %.058, %.lr.ph112 ], [ %.260.lcssa, %._crit_edge105 ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv117 ; 2 uses
  %i.h = call ptr @dictCreate(ptr noundef nonnull @clusterManagerDictType) #32 ; 4 uses
end_hunk_0
begin_hunk_1_@sendScan:bb.a
  %i.al = tail call i64 @fwrite(ptr nonnull @.str.788, i64 33, i64 1, ptr %i.ak) #33 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !39 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !41
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.789, ptr noundef nonnull @.str.7, i32 noundef 9309, ptr noundef nonnull @__PRETTY_FUNCTION__.sendScan) #37
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.at = load i32, ptr %i.as, align 8, !tbaa !41
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.790, ptr noundef nonnull @.str.7, i32 noundef 9310, ptr noundef nonnull @__PRETTY_FUNCTION__.sendScan) #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  %i.ax = tail call i64 @__isoc23_strtoull(ptr noundef %i.aw, ptr noundef null, i32 noundef 10) #32
  store i64 %i.ax, ptr %0, align 8, !tbaa !339
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @getKeyTypes(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %.not40 = icmp eq i64 %i.e, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.i = icmp eq i64 %i.v, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph39

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.j = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.b ]
  %.02237 = phi i32 [ 0, %.lr.ph ], [ %i.t, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr @.str.791, ptr %i.b, align 16, !tbaa !29
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  store ptr %i.o, ptr %i.f, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i64 4, ptr %i.c, align 16, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !70
  store i64 %i.q, ptr %i.h, align 8, !tbaa !26
  %i.r = load ptr, ptr @context, align 8, !tbaa !219
  %i.s = call i32 @redisAppendCommandArgv(ptr noundef %i.r, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.t = add i32 %.02237, 1                       ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.w = icmp ugt i64 %i.v, %i.u
  br i1 %i.w, label %bb.b, label %.preheader, !llvm.loop !564

.lr.ph39:                                         ; preds = %.preheader, %bb.l
  %i.x = phi i64 [ %i.bp, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %.138 = phi i32 [ %i.bo, %bb.l ], [ 0, %.preheader ]
  %i.y = load ptr, ptr @context, align 8, !tbaa !219
  %i.z = call i32 @redisGetReply(ptr noundef %i.y, ptr noundef nonnull %i.a) #32
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph39
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.x
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.ah = load ptr, ptr @context, align 8, !tbaa !219 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !170
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.al = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.792, ptr noundef %i.ag, i32 noundef %i.aj, ptr noundef nonnull %i.ak) #39 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.d:                                             ; preds = %.lr.ph39
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !39  ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !41 ; 2 uses
  switch i32 %i.an, label %bb.f [
    i32 5, label %bb.h
    i32 6, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.ar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.793, ptr noundef %i.aq) #39 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.x
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !42
  %i.az = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.794, i32 noundef %i.an, ptr noundef %i.ay) #39 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @exit(i32 noundef 1) #40
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !42
  %i.bc = call ptr @hi_sdsnew(ptr noundef %i.bb) #32 ; 2 uses
  %i.bd = call ptr @dictFind(ptr noundef %0, ptr noundef %i.bc) #32 ; 2 uses
  call void @hi_sdsfree(ptr noundef %i.bc) #32
  %.not28 = icmp eq ptr %i.bd, null
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = call ptr @dictGetVal(ptr noundef nonnull %i.bd) #32
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.bi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(5) @.str.795) #34
  %.not29 = icmp eq i32 %i.bi, 0
  br i1 %.not29, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = call noalias dereferenceable_or_null(56) ptr @zmalloc(i64 noundef 56) #36 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bj, ptr noundef nonnull align 8 dereferenceable(56) @type_other, i64 56, i1 false), !tbaa.struct !341
  %i.bk = call ptr @hi_sdsnew(ptr noundef nonnull %i.bh) #32 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !226
  %i.bl = call i32 @dictAdd(ptr noundef %0, ptr noundef %i.bk, ptr noundef nonnull %i.bj) #32 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.0 = phi ptr [ %i.be, %bb.i ], [ %i.bj, %bb.k ], [ null, %bb.j ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.x
  store ptr %.0, ptr %i.bm, align 8, !tbaa !28
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !39
  call void @freeReplyObject(ptr noundef %i.bn) #32
  %i.bo = add i32 %.138, 1                        ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !33
  %i.br = icmp ugt i64 %i.bq, %i.bp
  br i1 %i.br, label %.lr.ph39, label %._crit_edge, !llvm.loop !565

._crit_edge:                                      ; preds = %bb.l, %bb.a, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @getKeySizes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 0, 2) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 5 uses
  %i.d = alloca [3 x ptr], align 16               ; 5 uses
  %i.e = alloca [3 x i64], align 16               ; 6 uses
  %i.f = alloca [5 x ptr], align 16               ; 7 uses
  %i.g = alloca [5 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33   ; 4 uses
  %.not65 = icmp eq i64 %i.i, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not66 = icmp eq i32 %3, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br i1 %.not66, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.w = icmp eq i64 %4, -1
  br i1 %i.w, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.c
  %i.x = phi i64 [ %i.ak, %bb.c ], [ %i.i, %.lr.ph.split.us ]
  %i.y = phi i64 [ %i.am, %bb.c ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.062.us.us = phi i32 [ %i.al, %bb.c ], [ 0, %.lr.ph.split.us ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28
  %.not60.us.us = icmp eq ptr %i.aa, null
  br i1 %.not60.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store <2 x ptr> <ptr @.str.796, ptr @.str.797>, ptr %i.d, align 16, !tbaa !29
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.y
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  store ptr %i.af, ptr %i.t, align 16, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i64 6, ptr %i.e, align 16, !tbaa !26
  store i64 5, ptr %i.u, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !70
  store i64 %i.ah, ptr %i.v, align 16, !tbaa !26
  %i.ai = load ptr, ptr @context, align 8, !tbaa !219
  %i.aj = call i32 @redisAppendCommandArgv(ptr noundef %i.ai, i32 noundef 3, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %.pre72 = load i64, ptr %i.h, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.split.us
  %i.ak = phi i64 [ %.pre72, %bb.b ], [ %i.x, %.lr.ph.split.us.split.us ] ; 3 uses
  %i.al = add i32 %.062.us.us, 1                  ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = icmp ugt i64 %i.ak, %i.am
  br i1 %i.an, label %.lr.ph.split.us.split.us, label %.preheader, !llvm.loop !566

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.j
  %i.ao = phi i64 [ %i.bt, %bb.j ], [ %i.i, %.lr.ph.split.us ]
  %i.ap = phi i64 [ %i.bv, %bb.j ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.062.us = phi i32 [ %i.bu, %bb.j ], [ 0, %.lr.ph.split.us ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28
  %.not60.us = icmp eq ptr %i.ar, null
  br i1 %.not60.us, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.split
  %i.as = call ptr @hi_sdsfromlonglong(i64 noundef %4) #32 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  store <2 x ptr> <ptr @.str.796, ptr @.str.797>, ptr %i.f, align 16, !tbaa !29
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ap
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42
  store ptr %i.ax, ptr %i.m, align 16, !tbaa !29
  store ptr @.str.798, ptr %i.n, align 8, !tbaa !29
  store ptr %i.as, ptr %i.o, align 16, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  store i64 6, ptr %i.g, align 16, !tbaa !26
  store i64 5, ptr %i.p, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !70
  store i64 %i.az, ptr %i.q, align 16, !tbaa !26
  store i64 7, ptr %i.r, align 8, !tbaa !26
  %i.ba = getelementptr inbounds i8, ptr %i.as, i64 -1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !73
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = and i32 %i.bc, 7
  switch i32 %i.bd, label %hi_sdslen.exit.us [
    i32 0, label %bb.i
    i32 1, label %bb.h
    i32 2, label %bb.g
    i32 3, label %bb.f
    i32 4, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds i8, ptr %i.as, i64 -17
  %i.bf = load i64, ptr %i.be, align 1, !tbaa !26
  br label %hi_sdslen.exit.us

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds i8, ptr %i.as, i64 -9
  %i.bh = load i32, ptr %i.bg, align 1, !tbaa !9
  %i.bi = zext i32 %i.bh to i64
  br label %hi_sdslen.exit.us

bb.g:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 -5
  %i.bk = load i16, ptr %i.bj, align 1, !tbaa !74
  %i.bl = zext i16 %i.bk to i64
  br label %hi_sdslen.exit.us

bb.h:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds i8, ptr %i.as, i64 -3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !73
  %i.bo = zext i8 %i.bn to i64
  br label %hi_sdslen.exit.us

bb.i:                                             ; preds = %bb.d
  %i.bp = lshr i32 %i.bc, 3
  %i.bq = zext nneg i32 %i.bp to i64
  br label %hi_sdslen.exit.us

hi_sdslen.exit.us:                                ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0.i.us = phi i64 [ %i.bf, %bb.e ], [ %i.bq, %bb.i ], [ %i.bo, %bb.h ], [ %i.bl, %bb.g ], [ %i.bi, %bb.f ], [ 0, %bb.d ]
  store i64 %.0.i.us, ptr %i.s, align 16, !tbaa !26
  %i.br = load ptr, ptr @context, align 8, !tbaa !219
  %i.bs = call i32 @redisAppendCommandArgv(ptr noundef %i.br, i32 noundef 5, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #32 ; 0 uses
  call void @hi_sdsfree(ptr noundef nonnull %i.as) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  %.pre.a = load i64, ptr %i.h, align 8, !tbaa !33
  br label %bb.j

bb.j:                                             ; preds = %hi_sdslen.exit.us, %.lr.ph.split.us.split
  %i.bt = phi i64 [ %.pre.a, %hi_sdslen.exit.us ], [ %i.ao, %.lr.ph.split.us.split ] ; 3 uses
  %i.bu = add i32 %.062.us, 1                     ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = icmp ugt i64 %i.bt, %i.bv
  br i1 %i.bw, label %.lr.ph.split.us.split, label %.preheader, !llvm.loop !566

.preheader:                                       ; preds = %bb.j, %bb.c, %bb.m
  %i.bx = phi i64 [ %i.ak, %bb.c ], [ %i.cq, %bb.m ], [ %i.bt, %bb.j ] ; 2 uses
  %.not68 = icmp eq i64 %i.bx, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph64

.lr.ph64:                                         ; preds = %.preheader
  %5 = icmp ne i32 %3, 0                          ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.n

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %i.bz = phi i64 [ %i.cq, %bb.m ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.ca = phi i64 [ %i.cs, %bb.m ], [ 0, %.lr.ph ] ; 2 uses
  %.062 = phi i32 [ %i.cr, %bb.m ], [ 0, %.lr.ph ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !28 ; 2 uses
  %.not60 = icmp eq ptr %i.cc, null
  br i1 %.not60, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !365 ; 2 uses
  %.not67 = icmp eq ptr %i.ce, null
  br i1 %.not67, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr %i.ce, ptr %i.b, align 16, !tbaa !29
  %i.cf = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ca
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !39 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !42
  store ptr %i.cj, ptr %i.j, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !365
  %i.cl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ck) #34
  store i64 %i.cl, ptr %i.c, align 16, !tbaa !26
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !70
  store i64 %i.cn, ptr %i.l, align 8, !tbaa !26
  %i.co = load ptr, ptr @context, align 8, !tbaa !219
  %i.cp = call i32 @redisAppendCommandArgv(ptr noundef %i.co, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %.pre73.a = load i64, ptr %i.h, align 8, !tbaa !33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split, %bb.k
  %i.cq = phi i64 [ %.pre73.a, %bb.l ], [ %i.bz, %.lr.ph.split ], [ %i.bz, %bb.k ] ; 3 uses
  %i.cr = add i32 %.062, 1                        ; 2 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = icmp ugt i64 %i.cq, %i.cs
  br i1 %i.ct, label %.lr.ph.split, label %.preheader, !llvm.loop !566

bb.n:                                             ; preds = %.lr.ph64, %bb.y
  %i.cu = phi i64 [ %i.bx, %.lr.ph64 ], [ %i.eh, %bb.y ]
  %i.cv = phi i64 [ 0, %.lr.ph64 ], [ %i.ej, %bb.y ] ; 6 uses
  %.163 = phi i32 [ 0, %.lr.ph64 ], [ %i.ei, %bb.y ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cv ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.cx, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !365
  %i.da = icmp ne ptr %i.cz, null
  %or.cond3 = or i1 %5, %i.da
  br i1 %or.cond3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cv
  store i64 0, ptr %i.db, align 8, !tbaa !339
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.dc = load ptr, ptr @context, align 8, !tbaa !219
  %i.dd = call i32 @redisGetReply(ptr noundef %i.dc, ptr noundef nonnull %i.a) #32
  %.not58 = icmp eq i32 %i.dd, 0
  br i1 %.not58, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.df = load ptr, ptr %i.by, align 8, !tbaa !38
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.cv
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !39
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !42
  %i.dk = load ptr, ptr @context, align 8, !tbaa !219 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !170
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.de, ptr noundef nonnull @.str.799, ptr noundef %i.dj, i32 noundef %i.dm, ptr noundef nonnull %i.dn) #39 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !39  ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !41
  %.not59 = icmp eq i32 %i.dq, 3
  br i1 %.not59, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !13
  br i1 %5, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = load ptr, ptr %i.cw, align 8, !tbaa !28
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !365
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.dv = phi ptr [ %i.du, %bb.u ], [ @.str.801, %bb.t ]
  %i.dw = load ptr, ptr %i.by, align 8, !tbaa !38
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.cv
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !39
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !42
  %i.eb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.800, ptr noundef %i.dv, ptr noundef %i.ea) #39 ; 0 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cv
  store i64 0, ptr %i.ec, align 8, !tbaa !339
  %.pre74.a = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !180
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cv
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !339
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.eg = phi ptr [ %.pre74.a, %bb.v ], [ %i.dp, %bb.w ]
  call void @freeReplyObject(ptr noundef %i.eg) #32
  %.pre75 = load i64, ptr %i.h, align 8, !tbaa !33
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.p
  %i.eh = phi i64 [ %.pre75, %bb.x ], [ %i.cu, %bb.p ] ; 2 uses
  %i.ei = add i32 %.163, 1                        ; 2 uses
  %i.ej = zext i32 %i.ei to i64                   ; 2 uses
  %i.ek = icmp ugt i64 %i.eh, %i.ej
  br i1 %i.ek, label %bb.n, label %._crit_edge, !llvm.loop !567

._crit_edge:                                      ; preds = %bb.y, %bb.a, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @displayKeyStatsProgressbar(i64 noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  %i.b = alloca [2 x [128 x i8]], align 16        ; 6 uses
  %i.c = alloca [6 x i8], align 1                 ; 4 uses
  %i.d = alloca [6 x i8], align 1                 ; 4 uses
  %i.e = alloca [6 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %0, %1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = uitofp i64 %0 to double
  %i.h = uitofp i64 %1 to double
  %i.i = fdiv double %i.g, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.j = phi double [ 1.000000e+00, %bb.b ], [ %i.i, %bb.c ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.k = tail call i32 @isatty(i32 noundef 1) #32
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not17 = icmp eq ptr %i.l, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = fmul double %i.j, 6.000000e+01
  %i.n = tail call double @llvm.round.f64(double %i.m)
  %i.o = fptosi double %i.n to i32                ; 2 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 124, i64 %i.p, i1 false)
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 %i.p
  store i8 0, ptr %i.q, align 1, !tbaa !73
  %i.r = sub nsw i32 60, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  %i.t = sext i32 %i.r to i64                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.s, i8 45, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.red, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.green, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.e, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.default_color, i64 6, i1 false)
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 512, ptr noundef nonnull @.str.802, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.s, ptr noundef nonnull %i.e) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.803, i64 13, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = fmul double %i.j, 1.000000e+02
  %i.x = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.804, double noundef %i.w, ptr noundef nonnull %i.a)
  %i.y = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.805, i64 noundef %0)
  %i.z = add nsw i32 %i.y, %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i32 %i.z
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @displayKeyStats(i64 noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i64 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %9 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %10 = alloca %struct.listIter, align 8          ; 5 uses
  %i.d = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.e = tail call fastcc i32 @displayKeyStatsProgressbar(i64 noundef %0, i64 noundef %1)
  %i.f = call ptr @bytesToHuman(ptr noundef nonnull %i.d, i64 noundef 256, i64 noundef %2) ; 0 uses
  %i.g = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.817, ptr noundef nonnull %i.d)
  %i.h = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.34)
  %i.i = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.818, i64 noundef %6) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @listRewind(ptr noundef nonnull %5, ptr noundef nonnull %10) #32
  %i.j = call ptr @listNext(ptr noundef nonnull %10) #32 ; 2 uses
  %.not11.i = icmp eq ptr %i.j, null
  br i1 %.not11.i, label %displayKeyStatsTopSizes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.k = phi ptr [ %i.v, %.lr.ph.i ], [ %i.j, %bb.a ]
  %.013.i = phi i32 [ %i.u, %.lr.ph.i ], [ %i.i, %bb.a ]
  %.0912.i = phi i32 [ %i.n, %.lr.ph.i ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102  ; 3 uses
  %i.n = add nuw nsw i32 %.0912.i, 1              ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !343
  %i.p = call ptr @bytesToHuman(ptr noundef nonnull %i.c, i64 noundef 32, i64 noundef %i.o) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !346
  %i.t = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.819, i32 noundef %i.n, ptr noundef nonnull %i.c, ptr noundef nonnull %i.q, ptr noundef %i.s)
  %i.u = add nsw i32 %i.t, %.013.i                ; 2 uses
  %i.v = call ptr @listNext(ptr noundef nonnull %10) #32 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %displayKeyStatsTopSizes.exit, label %.lr.ph.i, !llvm.loop !568

displayKeyStatsTopSizes.exit:                     ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ %i.i, %bb.a ], [ %i.u, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.w = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.34)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.x = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.820) ; 2 uses
  call void @dictInitIterator(ptr noundef nonnull %9, ptr noundef %3) #32
  %i.y = call ptr @dictNext(ptr noundef nonnull %9) #32 ; 2 uses
  %.not11.i16 = icmp eq ptr %i.y, null
  br i1 %.not11.i16, label %displayKeyStatsSizeType.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %displayKeyStatsTopSizes.exit, %bb.c
  %i.z = phi ptr [ %i.aj, %bb.c ], [ %i.y, %displayKeyStatsTopSizes.exit ]
  %.012.i = phi i32 [ %.1.i, %bb.c ], [ %i.x, %displayKeyStatsTopSizes.exit ] ; 2 uses
  %i.aa = call ptr @dictGetVal(ptr noundef nonnull %i.z) #32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !224 ; 2 uses
  %.not10.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i17
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !226
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !347
  %i.ag = call ptr @bytesToHuman(ptr noundef nonnull %i.b, i64 noundef 256, i64 noundef %i.af) ; 0 uses
  %i.ah = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.821, ptr noundef %i.ad, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b)
  %i.ai = add nsw i32 %i.ah, %.012.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i17
  %.1.i = phi i32 [ %i.ai, %bb.b ], [ %.012.i, %.lr.ph.i17 ] ; 2 uses
  %i.aj = call ptr @dictNext(ptr noundef nonnull %9) #32 ; 2 uses
  %.not.i18 = icmp eq ptr %i.aj, null
  br i1 %.not.i18, label %displayKeyStatsSizeType.exit, label %.lr.ph.i17, !llvm.loop !569

end_hunk_1
