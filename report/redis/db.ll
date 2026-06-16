inline.NumInlined: 146
inline.NumDeleted: 13
begin_hunk_0_@dbGenericDelete:bb.a
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw [480 x i8], ptr %i.bm, i64 %.pre.i.i
  %i.bt = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !48
  %i.bw = add nsw i64 %i.bv, -1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !48
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge40.i.i
  %.pre-phi42.i.i = phi i64 [ %.pre41.i.i51, %._crit_edge40.i.i ], [ %i.bt, %bb.v ]
  %i.bx = getelementptr inbounds nuw [480 x i8], ptr %i.bj, i64 %.pre.i.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.pre-phi42.i.i ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !48
  %i.ca = add nsw i64 %i.bz, -1
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !48
  br label %updateKeysizesHist.exit

bb.x:                                             ; preds = %bb.t
  %i.cb = icmp eq i64 %i.k, 0
  br i1 %i.cb, label %bb.y, label %updateKeysizesHist.exit

bb.y:                                             ; preds = %bb.x
  %.pre49.i.i = and i64 %i.l, 15                  ; 2 uses
  br i1 %.not.i50, label %._crit_edge.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw [480 x i8], ptr %i.bm, i64 %.pre49.i.i ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !48
  %i.ce = add nsw i64 %i.cd, -1
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !48
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.z, %bb.y
  %i.cf = getelementptr inbounds nuw [480 x i8], ptr %i.bj, i64 %.pre49.i.i ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !48
  %i.ch = add nsw i64 %i.cg, -1
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !48
  br label %updateKeysizesHist.exit

updateKeysizesHist.exit:                          ; preds = %bb.s, %._crit_edge.i.i, %bb.x, %bb.w, %bb.a, %bb.r
  %.0 = phi i32 [ 1, %bb.r ], [ 0, %bb.a ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %._crit_edge.i.i ], [ 1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

declare ptr @kvstoreDictTwoPhaseUnlinkFind(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @estoreRemove(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @incrRefCount(ptr noundef) local_unnamed_addr #2

declare void @keyMetaOnUnlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @moduleNotifyKeyUnlink(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @signalDeletedKeyAsReady(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @kvobjGetExpire(ptr noundef) local_unnamed_addr #2

declare i32 @kvstoreDictDelete(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @freeObjAsync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @kvstoreDictTwoPhaseUnlinkFree(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @dbSyncDelete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @dbGenericDelete(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @dbAsyncDelete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @dbGenericDelete(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @dbDelete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8368), align 8, !tbaa !122
  %i.b = tail call i32 @dbGenericDelete(ptr noundef %0, ptr noundef %1, i32 noundef %i.a, i32 noundef 1)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @dbDeleteSkipKeysizesUpdate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8368), align 8, !tbaa !122
  %i.b = tail call i32 @dbGenericDelete(ptr noundef %0, ptr noundef %1, i32 noundef %i.a, i32 noundef 17)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @dbUnshareStringValue(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @dbUnshareStringValueByLink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @dbUnshareStringValueByLink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = load i64, ptr %2, align 8                ; 2 uses
  %i.c = and i64 %i.b, 15
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !101

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 952) #20
  tail call void @abort() #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = and i64 %i.b, 2147483632
  %or.cond = icmp eq i64 %i.e, 256
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @getDecodedObject(ptr noundef nonnull %2) #20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 6 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %.val.i = load i8, ptr %i.i, align 1, !tbaa !110 ; 2 uses
  %i.j = and i8 %.val.i, 7
  switch i8 %i.j, label %sdslen.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = lshr i8 %.val.i, 3
  %i.l = zext nneg i8 %i.k to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !110
  %i.o = zext i8 %i.n to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 -5
  %i.q = load i16, ptr %i.p, align 1, !tbaa !111
  %i.r = zext i16 %i.q to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds i8, ptr %i.h, i64 -9
  %i.t = load i32, ptr %i.s, align 1, !tbaa !9
  %i.u = zext i32 %i.t to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds i8, ptr %i.h, i64 -17
  %i.w = load i64, ptr %i.v, align 1, !tbaa !48
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.w, %bb.i ], [ %i.l, %bb.e ], [ %i.o, %bb.f ], [ %i.r, %bb.g ], [ %i.u, %bb.h ], [ 0, %bb.d ]
  %i.x = tail call ptr @createRawStringObject(ptr noundef nonnull %i.h, i64 noundef %.0.i) #20
  store ptr %i.x, ptr %i.a, align 8, !tbaa !103
  tail call void @decrRefCount(ptr noundef nonnull %i.f) #20
  call fastcc void @dbSetValue(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !103
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %sdslen.exit
  %i.y = phi ptr [ %2, %bb.c ], [ %.pre, %sdslen.exit ]
  ret ptr %i.y
}

declare ptr @getDecodedObject(ptr noundef) local_unnamed_addr #2

declare ptr @createRawStringObject(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @emptyDbStructure(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, -1                       ; 2 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4
  %i.c = add nsw i32 %i.b, -1
  %.025 = select i1 %i.a, i32 0, i32 %1           ; 2 uses
  %.024 = select i1 %i.a, i32 %i.c, i32 %1        ; 2 uses
  %.not29 = icmp sgt i32 %.025, %.024
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not28 = icmp eq i32 %2, 0
  %i.d = sext i32 %.025 to i64                    ; 2 uses
  %4 = sext i32 %.024 to i64                      ; 2 uses
  br i1 %.not28, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph.split.us ], [ %i.d, %.lr.ph ] ; 2 uses
  %.02630.us = phi i64 [ %i.h, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %i.e = getelementptr inbounds [96 x i8], ptr %0, i64 %indvars.iv35 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = tail call i64 @kvstoreSize(ptr noundef %i.f) #20
  %i.h = add i64 %i.g, %.02630.us                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !115
  tail call void @estoreEmpty(ptr noundef %i.j) #20
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call void @kvstoreEmpty(ptr noundef %i.k, ptr noundef %3) #20
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  tail call void @kvstoreEmpty(ptr noundef %i.m, ptr noundef %3) #20
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, 1 ; 2 uses
  %.not.us = icmp sgt i64 %indvars.iv.next36, %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !123

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %.026.lcssa = phi i64 [ 0, %bb.a ], [ %i.h, %.lr.ph.split.us ], [ %i.r, %.lr.ph.split ]
  ret i64 %.026.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %i.d, %.lr.ph ] ; 2 uses
  %.02630 = phi i64 [ %i.r, %.lr.ph.split ], [ 0, %.lr.ph ]
  %i.o = getelementptr inbounds [96 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.q = tail call i64 @kvstoreSize(ptr noundef %i.p) #20
  %i.r = add i64 %i.q, %.02630                    ; 2 uses
  tail call void @emptyDbAsync(ptr noundef nonnull %i.o) #20
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next, %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !123
}

declare void @emptyDbAsync(ptr noundef) local_unnamed_addr #2

declare void @estoreEmpty(ptr noundef) local_unnamed_addr #2

declare void @kvstoreEmpty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @emptyData(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RedisModuleFlushInfo, align 8 ; 7 uses
  %i.a = and i32 %1, 1                            ; 4 uses
  %i.b = and i32 %1, 2
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i64 1, ptr %3, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = xor i32 %i.a, 1
  store i32 %i.d, ptr %i.c, align 8, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %0, ptr %i.e, align 4, !tbaa !127
  %i.f = icmp sgt i32 %0, -2
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4
  %.not21 = icmp slt i32 %0, %i.g
  %or.cond22 = select i1 %i.f, i1 %.not21, i1 false
  br i1 %or.cond22, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__errno_location() #22
  store i32 22, ptr %i.h, align 4, !tbaa !9
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %0, -1                       ; 3 uses
  %or.cond = icmp slt i32 %0, 1
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @asmCancelTrimJobs() #20
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @moduleFireServerEvent(i64 noundef 2, i32 noundef 0, ptr noundef nonnull %3) #20
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4
  %i.k = add nsw i32 %i.j, -1
  %.011.i = select i1 %i.i, i32 0, i32 %0         ; 2 uses
  %.010.i = select i1 %i.i, i32 %i.k, i32 %0      ; 2 uses
  %.not13.i = icmp sgt i32 %.011.i, %.010.i
  br i1 %.not13.i, label %signalFlushedDb.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.l = zext nneg i32 %.011.i to i64
  %4 = zext nneg i32 %.010.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.l, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !128
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %indvars.iv.i
  call void @scanDatabaseForDeletedKeys(ptr noundef %i.n, ptr noundef null, ptr noundef null)
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !128
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %indvars.iv.i
  call void @touchAllWatchedKeysInDb(ptr noundef %i.p, ptr noundef null, ptr noundef null) #20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp samesign ugt i64 %indvars.iv.next.i, %4
  br i1 %.not.i, label %signalFlushedDb.exit, label %.lr.ph.i, !llvm.loop !129

signalFlushedDb.exit:                             ; preds = %.lr.ph.i, %bb.e
  call void @trackingInvalidateKeysOnFlush(i32 noundef %i.a) #20
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !128
  %i.r = call i64 @emptyDbStructure(ptr noundef %i.q, i32 noundef %0, i32 noundef %i.a, ptr noundef %2)
  br i1 %i.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %signalFlushedDb.exit
  call void @flushSlaveKeysWithExpireList() #20
  br i1 %.not, label %bb.g, label %bb.h

.thread:                                          ; preds = %signalFlushedDb.exit
  br i1 %.not, label %.thread23, label %bb.h

.thread23:                                        ; preds = %.thread
  call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 1045) #20
  call void @abort() #21
  unreachable

bb.g:                                             ; preds = %bb.f
  call void @functionsLibCtxClearCurrent(i32 noundef %i.a) #20
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %bb.f
  call void @moduleFireServerEvent(i64 noundef 2, i32 noundef 1, ptr noundef nonnull %3) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.0 = phi i64 [ -1, %bb.b ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare void @asmCancelTrimJobs() local_unnamed_addr #2

declare void @moduleFireServerEvent(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @signalFlushedDb(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, -1                       ; 2 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4
  %i.c = add nsw i32 %i.b, -1
  %.011 = select i1 %i.a, i32 0, i32 %0           ; 2 uses
  %.010 = select i1 %i.a, i32 %i.c, i32 %0        ; 2 uses
  %.not13 = icmp sgt i32 %.011, %.010
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sext i32 %.011 to i64
  %3 = sext i32 %.010 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @trackingInvalidateKeysOnFlush(i32 noundef %1) #20
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !128
  %i.f = getelementptr inbounds [96 x i8], ptr %i.e, i64 %indvars.iv
  tail call void @scanDatabaseForDeletedKeys(ptr noundef %i.f, ptr noundef null, ptr noundef %2)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !128
  %i.h = getelementptr inbounds [96 x i8], ptr %i.g, i64 %indvars.iv
  tail call void @touchAllWatchedKeysInDb(ptr noundef %i.h, ptr noundef null, ptr noundef %2) #20
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next, %3
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !129
}

declare void @flushSlaveKeysWithExpireList() local_unnamed_addr #2

declare void @functionsLibCtxClearCurrent(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @initTempDb() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !108
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  %spec.select = select i1 %.not, i32 1, i32 3    ; 2 uses
  %spec.select19 = select i1 %.not, i32 0, i32 14 ; 3 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !130
  %i.c = sext i32 %i.b to i64
  %i.d = mul nsw i64 %i.c, 96
  %i.e = tail call noalias ptr @zcalloc(i64 noundef %i.d) #23 ; 2 uses
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !130
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %i.e

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.j, ptr %i.i, align 8, !tbaa !92
  %i.k = tail call ptr @kvstoreCreate(ptr noundef nonnull @kvstoreExType, ptr noundef nonnull @dbDictType, i32 noundef %spec.select19, i32 noundef %spec.select) #20
  store ptr %i.k, ptr %i.h, align 8, !tbaa !49
  %i.l = tail call ptr @kvstoreCreate(ptr noundef nonnull @kvstoreBaseType, ptr noundef nonnull @dbExpiresDictType, i32 noundef %spec.select19, i32 noundef %spec.select) #20
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !96
  %i.n = tail call ptr @estoreCreate(ptr noundef nonnull @subexpiresBucketsType, i32 noundef %spec.select19) #20
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !115
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !130
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !131
}

; Function Attrs: allocsize(0)
declare noalias ptr @zcalloc(i64 noundef) local_unnamed_addr #8

declare ptr @kvstoreCreate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @estoreCreate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @discardTempDb(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4 ; 2 uses
  %.not29.i = icmp slt i32 %i.a, 1
  br i1 %.not29.i, label %._crit_edge, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %bb.a
  %zext = zext nneg i32 %i.a to i64
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.split.i ], [ 0, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %indvars.iv.i ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = tail call i64 @kvstoreSize(ptr noundef %i.c) #20 ; 0 uses
  tail call void @emptyDbAsync(ptr noundef nonnull %i.b) #20
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %exitcond = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %exitcond, label %emptyDbStructure.exit, label %.lr.ph.split.i, !llvm.loop !123

emptyDbStructure.exit:                            ; preds = %.lr.ph.split.i
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !130
  %i.f = icmp sgt i32 %.pre, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a, %emptyDbStructure.exit
  tail call void @zfree(ptr noundef %0) #20
  ret void

.lr.ph:                                           ; preds = %emptyDbStructure.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %emptyDbStructure.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !115
  tail call void @estoreRelease(ptr noundef %i.i) #20
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !49
  tail call void @kvstoreRelease(ptr noundef %i.j) #20
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !96
  tail call void @kvstoreRelease(ptr noundef %i.l) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !130
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !132
}

declare void @estoreRelease(ptr noundef) local_unnamed_addr #2

declare void @kvstoreRelease(ptr noundef) local_unnamed_addr #2

declare void @zfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @selectDb(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4
  %.not = icmp slt i32 %1, %i.b
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !128
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.f, align 8, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dbTotalServerKeyCount() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !130
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.056 = phi i64 [ %i.g, %.lr.ph ], [ 0, %bb.a ]
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !128
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = tail call i64 @kvstoreSize(ptr noundef %i.e) #20
  %i.g = add i64 %i.f, %.056                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !130
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !133

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.05.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  ret i64 %.05.lcssa
}

declare void @touchWatchedKey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @trackingInvalidateKey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @scanDatabaseForDeletedKeys(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  call void @dictInitSafeIterator(ptr noundef nonnull %3, ptr noundef %i.b) #20
  %i.c = call ptr @dictNext(ptr noundef nonnull %3) #20 ; 2 uses
  %.not46 = icmp eq ptr %i.c, null
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not30 = icmp eq ptr %2, null
  %.not33 = icmp eq ptr %1, null
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %i.d = phi ptr [ %i.c, %.lr.ph ], [ %i.bp, %bb.r ]
  %i.e = call ptr @dictGetKey(ptr noundef nonnull %i.d) #20 ; 3 uses
  br i1 %.not30, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 10 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %.val.i = load i8, ptr %i.h, align 1, !tbaa !110 ; 2 uses
  %i.i = and i8 %.val.i, 7
  switch i8 %i.i, label %._crit_edge.thread.i [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i8 %.val.i, 3
  %i.k = zext nneg i8 %i.j to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !110
  %i.n = zext i8 %i.m to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.p = load i16, ptr %i.o, align 1, !tbaa !111
  %i.q = zext i16 %i.p to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -9
  %i.s = load i32, ptr %i.r, align 1, !tbaa !9
  %i.t = zext i32 %i.s to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 -17
  %i.v = load i64, ptr %i.u, align 1, !tbaa !48
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.v, %bb.h ], [ %i.k, %bb.d ], [ %i.n, %bb.e ], [ %i.q, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  %i.w = trunc i64 %.0.i to i32                   ; 8 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %sdslen.exit
  %wide.trip.count.i = and i64 %.0.i, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !110
  %i.aa = icmp eq i8 %i.z, 123
  br i1 %i.aa, label %._crit_edge.loopexit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !112

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.ab = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %sdslen.exit
  %.025.lcssa.i = phi i32 [ 0, %sdslen.exit ], [ %i.ab, %._crit_edge.loopexit.i ] ; 4 uses
  %i.ac = icmp eq i32 %.025.lcssa.i, %i.w
  br i1 %i.ac, label %._crit_edge.thread.i, label %bb.j, !prof !113

._crit_edge.thread.i:                             ; preds = %bb.i, %bb.c, %._crit_edge.i
  %i.ad = phi i32 [ %i.w, %._crit_edge.i ], [ 0, %bb.c ], [ %i.w, %bb.i ]
  %i.ae = call zeroext i16 @crc16(ptr noundef nonnull %i.g, i32 noundef %i.ad) #20
  br label %keyHashSlot.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.af = add nuw nsw i32 %.025.lcssa.i, 1        ; 3 uses
  %i.ag = icmp slt i32 %i.af, %i.w
  br i1 %i.ag, label %.lr.ph33.preheader.i, label %._crit_edge34.thread.i

.lr.ph33.preheader.i:                             ; preds = %bb.j
  %i.ah = zext i32 %i.af to i64
  br label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %bb.k, %.lr.ph33.preheader.i
  %indvars.iv39.i = phi i64 [ %i.ah, %.lr.ph33.preheader.i ], [ %indvars.iv.next40.i, %bb.k ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv39.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !110
  %i.ak = icmp eq i8 %i.aj, 125
end_hunk_0
begin_hunk_1_@extractKeysAndSlot:bb.a
  br i1 %i.p, label %.lr.ph.i.i, label %getAllKeySpecsFlags.exit30.thread.i

.lr.ph.i.i:                                       ; preds = %doesCommandHaveChannelsWithFlags.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !216  ; 10 uses
  %wide.trip.count18.i.i = zext nneg i32 %i.o to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.o, 5
  br i1 %min.iters.check, label %.lr.ph.split.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.mod.vf = and i64 %wide.trip.count18.i.i, 3   ; 2 uses
  %i.s = icmp eq i64 %n.mod.vf, 0
  %i.t = select i1 %i.s, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count18.i.i, %i.t ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi34 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %index
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %index
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %index
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !217
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !217
  %i.ae = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %i.af = insertelement <2 x i64> %i.ae, i64 %i.ad, i64 1
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !217
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !217
  %i.ai = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %i.aj = insertelement <2 x i64> %i.ai, i64 %i.ah, i64 1
  %i.ak = xor <2 x i64> %i.af, splat (i64 -1)
  %i.al = xor <2 x i64> %i.aj, splat (i64 -1)
  %i.am = or <2 x i64> %vec.phi, %i.ak            ; 2 uses
  %i.an = or <2 x i64> %vec.phi34, %i.al          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.an, %i.am
  %i.ap = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.011.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ap, %middle.block ]
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %.lr.ph.split.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.split.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.split.i.i.preheader ] ; 2 uses
  %.011.i.i = phi i64 [ %i.au, %.lr.ph.split.i.i ], [ %.011.i.i.ph, %.lr.ph.split.i.i.preheader ]
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !217
  %i.at = xor i64 %i.as, -1
  %i.au = or i64 %.011.i.i, %i.at                 ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count18.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i, !llvm.loop !249

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.split.i.i
  %xtraiter = and i64 %wide.trip.count18.i.i, 3   ; 3 uses
  %i.av = icmp ult i32 %i.o, 4
  br i1 %i.av, label %.lr.ph.split.us.i.i.epil.preheader, label %.lr.ph.split.us.i.i.preheader.new

.lr.ph.split.us.i.i.preheader.new:                ; preds = %.lr.ph.split.us.i.i.preheader
  %unroll_iter = and i64 %wide.trip.count18.i.i, 2147483644
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader.new
  %indvars.iv15.i.i = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader.new ], [ %indvars.iv.next16.i.i.3, %.lr.ph.split.us.i.i ] ; 5 uses
  %.011.us.i.i = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader.new ], [ %i.bl, %.lr.ph.split.us.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.split.us.i.i ]
  %i.aw = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %indvars.iv15.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !217
  %i.az = or i64 %i.ay, %.011.us.i.i
  %i.ba = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %indvars.iv15.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !217
  %i.bd = or i64 %i.bc, %i.az
  %i.be = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %indvars.iv15.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !217
  %i.bh = or i64 %i.bg, %i.bd
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %indvars.iv15.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !217
  %i.bl = or i64 %i.bk, %i.bh                     ; 3 uses
  %indvars.iv.next16.i.i.3 = add nuw nsw i64 %indvars.iv15.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %getAllKeySpecsFlags.exit30.i.unr-lcssa, label %.lr.ph.split.us.i.i, !llvm.loop !221

getAllKeySpecsFlags.exit30.i.unr-lcssa:           ; preds = %.lr.ph.split.us.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %getAllKeySpecsFlags.exit30.i, label %.lr.ph.split.us.i.i.epil.preheader

.lr.ph.split.us.i.i.epil.preheader:               ; preds = %getAllKeySpecsFlags.exit30.i.unr-lcssa, %.lr.ph.split.us.i.i.preheader
  %indvars.iv15.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader ], [ %indvars.iv.next16.i.i.3, %getAllKeySpecsFlags.exit30.i.unr-lcssa ]
  %.011.us.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader ], [ %i.bl, %getAllKeySpecsFlags.exit30.i.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.split.us.i.i.epil

.lr.ph.split.us.i.i.epil:                         ; preds = %.lr.ph.split.us.i.i.epil, %.lr.ph.split.us.i.i.epil.preheader
  %indvars.iv15.i.i.epil = phi i64 [ %indvars.iv.next16.i.i.epil, %.lr.ph.split.us.i.i.epil ], [ %indvars.iv15.i.i.epil.init, %.lr.ph.split.us.i.i.epil.preheader ] ; 2 uses
  %.011.us.i.i.epil = phi i64 [ %i.bp, %.lr.ph.split.us.i.i.epil ], [ %.011.us.i.i.epil.init, %.lr.ph.split.us.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.i.i.epil ], [ 0, %.lr.ph.split.us.i.i.epil.preheader ]
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %indvars.iv15.i.i.epil
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !217
  %i.bp = or i64 %i.bo, %.011.us.i.i.epil         ; 2 uses
  %indvars.iv.next16.i.i.epil = add nuw nsw i64 %indvars.iv15.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %getAllKeySpecsFlags.exit30.i, label %.lr.ph.split.us.i.i.epil, !llvm.loop !250

getAllKeySpecsFlags.exit30.i:                     ; preds = %.lr.ph.split.us.i.i.epil, %getAllKeySpecsFlags.exit30.i.unr-lcssa
  %.lcssa = phi i64 [ %i.bl, %getAllKeySpecsFlags.exit30.i.unr-lcssa ], [ %i.bp, %.lr.ph.split.us.i.i.epil ]
  %i.bq = and i64 %i.au, 256
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = and i64 %.lcssa, 1024
  %i.bt = icmp ne i64 %i.bs, 0
  %or.cond.i = select i1 %i.br, i1 true, i1 %i.bt
  br i1 %or.cond.i, label %getAllKeySpecsFlags.exit30.thread.i, label %bb.d

bb.d:                                             ; preds = %getAllKeySpecsFlags.exit30.i
  %i.bu = tail call i32 @getKeysUsingKeySpecs(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef %3) ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %.getAllKeySpecsFlags.exit30.thread.i_crit_edge, label %getKeysFromCommandWithSpecs.exit

.getAllKeySpecsFlags.exit30.thread.i_crit_edge:   ; preds = %bb.d
  %.pre = load i64, ptr %i.a, align 8, !tbaa !100
  br label %getAllKeySpecsFlags.exit30.thread.i

getAllKeySpecsFlags.exit30.thread.i:              ; preds = %.getAllKeySpecsFlags.exit30.thread.i_crit_edge, %getAllKeySpecsFlags.exit30.i, %doesCommandHaveChannelsWithFlags.exit.thread
  %i.bw = phi i64 [ %.pre, %.getAllKeySpecsFlags.exit30.thread.i_crit_edge ], [ %i.b, %getAllKeySpecsFlags.exit30.i ], [ %i.b, %doesCommandHaveChannelsWithFlags.exit.thread ]
  %i.bx = and i64 %i.bw, 2097152
  %.not.i13 = icmp eq i64 %i.bx, 0
  br i1 %.not.i13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %getAllKeySpecsFlags.exit30.thread.i
  %i.by = tail call i32 @moduleGetCommandKeysViaAPI(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #20
  br label %getKeysFromCommandWithSpecs.exit

bb.f:                                             ; preds = %getAllKeySpecsFlags.exit30.thread.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !116 ; 2 uses
  %.not26.i = icmp eq ptr %i.ca, null
  br i1 %.not26.i, label %getKeysFromCommandWithSpecs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cb = tail call i32 %i.ca(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #20, !inline_history !251
  br label %getKeysFromCommandWithSpecs.exit

doesCommandHaveChannelsWithFlags.exit.thread17:   ; preds = %bb.a, %doesCommandHaveChannelsWithFlags.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !215
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.h, label %getKeysFromCommandWithSpecs.exit

bb.h:                                             ; preds = %doesCommandHaveChannelsWithFlags.exit.thread17
  %i.cf = tail call i32 @getChannelsFromCommand(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %getKeysFromCommandWithSpecs.exit

getKeysFromCommandWithSpecs.exit:                 ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %doesCommandHaveChannelsWithFlags.exit.thread17, %bb.h
  %.0 = phi i32 [ %i.cf, %bb.h ], [ 0, %doesCommandHaveChannelsWithFlags.exit.thread17 ], [ %i.by, %bb.e ], [ %i.cb, %bb.g ], [ %i.bu, %bb.d ], [ 0, %bb.f ]
  %i.cg = tail call i32 @extractSlotFromKeysResult(ptr noundef %1, ptr noundef %3) #20
  store i32 %i.cg, ptr %4, align 4, !tbaa !9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @getKeysUsingLegacyRangeSpec(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load i32, ptr %i.a, align 8, !tbaa !252
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load i32, ptr %i.d, align 8, !tbaa !110  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.g = load i32, ptr %i.f, align 4, !tbaa !110  ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  %i.i = select i1 %i.h, i32 0, i32 %i.e
  %spec.select = add nsw i32 %i.i, %i.g           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.k = load i32, ptr %i.j, align 8, !tbaa !110
  %i.l = icmp slt i32 %spec.select, 0
  %i.m = select i1 %i.l, i32 %2, i32 0
  %.138 = add nsw i32 %i.m, %spec.select          ; 3 uses
  %i.n = sub nsw i32 %.138, %i.e
  %i.o = add nsw i32 %i.n, 1                      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %3, align 8, !tbaa !213
  %.not22.i = icmp eq i32 %i.r, 0
  br i1 %.not22.i, label %bb.e, label %bb.d, !prof !101

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 3038) #20
  tail call void @abort() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.p, align 8, !tbaa !118
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.t = phi ptr [ %i.s, %bb.e ], [ %i.q, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !214
  %4 = icmp sgt i32 %i.o, %i.v
  br i1 %4, label %bb.g, label %getKeysPrepareResult.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.t, %i.w
  %i.x = sext i32 %i.o to i64
  %i.y = shl nsw i64 %i.x, 3                      ; 2 uses
  br i1 %.not23.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call ptr @zrealloc(ptr noundef nonnull %i.t, i64 noundef %i.y) #25 ; 2 uses
  store ptr %i.z, ptr %i.p, align 8, !tbaa !118
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noalias ptr @zmalloc(i64 noundef %i.y) #23 ; 4 uses
  store ptr %i.aa, ptr %i.p, align 8, !tbaa !118
  %i.ab = load i32, ptr %3, align 8, !tbaa !213   ; 2 uses
  %.not24.i = icmp eq i32 %i.ab, 0
  br i1 %.not24.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aa, ptr nonnull align 8 %i.w, i64 %i.ad, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ae = phi ptr [ %i.aa, %bb.i ], [ %i.aa, %bb.j ], [ %i.z, %bb.h ]
  store i32 %i.o, ptr %i.u, align 4, !tbaa !214
  br label %getKeysPrepareResult.exit

getKeysPrepareResult.exit:                        ; preds = %bb.f, %bb.k
  %i.af = phi ptr [ %i.ae, %bb.k ], [ %i.t, %bb.f ]
  %.not46 = icmp sgt i32 %i.e, %.138
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %getKeysPrepareResult.exit, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %getKeysPrepareResult.exit ] ; 2 uses
  %.03548 = phi i32 [ %i.ap, %bb.o ], [ %i.e, %getKeysPrepareResult.exit ] ; 4 uses
  %.not41 = icmp sge i32 %.03548, %2
  %i.ag = icmp slt i32 %.03548, %i.e
  %or.cond = or i1 %.not41, %i.ag
  br i1 %or.cond, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !100
  %i.aj = and i64 %i.ai, 8
  %.not42 = icmp eq i64 %i.aj, 0
  br i1 %.not42, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !228
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.2, i32 noundef 3385, ptr noundef nonnull @.str.72) #20
  tail call void @abort() #21
  unreachable

bb.o:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  store i32 %.03548, ptr %i.an, align 4, !tbaa !229
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !231
  %i.ap = add nsw i32 %.03548, %i.k               ; 2 uses
  %.not = icmp sgt i32 %i.ap, %.138
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !253

.loopexit.loopexit:                               ; preds = %bb.o
  %i.aq = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %getKeysPrepareResult.exit, %bb.m, %bb.l, %bb.a
  %storemerge43 = phi i32 [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %getKeysPrepareResult.exit ], [ %i.aq, %.loopexit.loopexit ] ; 2 uses
  store i32 %storemerge43, ptr %3, align 8, !tbaa !213
  ret i32 %storemerge43
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @genericGetKeys(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %4, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 10) #20, !inline_history !254 ; 4 uses
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i32 %5, %2
  %i.j = sdiv i32 %i.i, %3
  %i.k = icmp slt i32 %i.j, %i.g
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr %6, align 8, !tbaa !213
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %.not = icmp ne i32 %0, 0                       ; 2 uses
  %i.l = zext i1 %.not to i32
  %i.m = add nuw nsw i32 %i.g, %i.l               ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %6, align 8, !tbaa !213
  %.not22.i = icmp eq i32 %i.p, 0
  br i1 %.not22.i, label %bb.g, label %bb.f, !prof !101

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 3038) #20
  tail call void @abort() #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !118
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.r = phi ptr [ %i.q, %bb.g ], [ %i.o, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !214
  %i.u = icmp sgt i32 %i.m, %i.t
  br i1 %i.u, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.r, %i.v
  %i.w = zext nneg i32 %i.m to i64
  %i.x = shl nuw nsw i64 %i.w, 3                  ; 2 uses
  br i1 %.not23.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @zrealloc(ptr noundef nonnull %i.r, i64 noundef %i.x) #25 ; 2 uses
  store ptr %i.y, ptr %i.n, align 8, !tbaa !118
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.z = tail call noalias ptr @zmalloc(i64 noundef %i.x) #23 ; 4 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !118
  %i.aa = load i32, ptr %6, align 8, !tbaa !213   ; 2 uses
  %.not24.i = icmp eq i32 %i.aa, 0
  br i1 %.not24.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr nonnull align 8 %i.v, i64 %i.ac, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ad = phi ptr [ %i.z, %bb.k ], [ %i.z, %bb.l ], [ %i.y, %bb.j ]
  store i32 %i.m, ptr %i.s, align 4, !tbaa !214
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m, %bb.h
  %i.ae = phi ptr [ %i.ad, %bb.m ], [ %i.r, %bb.h ] ; 4 uses
  store i32 %i.m, ptr %6, align 8, !tbaa !213
  %wide.trip.count = and i64 %i.f, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check, label %.lr.ph.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.f, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert44 = insertelement <2 x i32> poison, i32 %2, i64 0
  %broadcast.splat45 = shufflevector <2 x i32> %broadcast.splatinsert44, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = mul <2 x i32> %broadcast.splat, %vec.ind
  %i.aj = mul <2 x i32> %broadcast.splat, %step.add
  %i.ak = add <2 x i32> %i.ai, %broadcast.splat45
  %i.al = add <2 x i32> %i.aj, %broadcast.splat45
  %interleaved.vec = shufflevector <2 x i32> %i.ak, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.af, align 4, !tbaa !9
  %interleaved.vec46 = shufflevector <2 x i32> %i.al, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec46, ptr %i.ah, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !255
end_hunk_1
