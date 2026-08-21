Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/cluster_legacy?download=true
inline.NumInlined: 443
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@clusterNodeSetSlotBit:bb.a
  br label %bb.g

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %i.u = phi ptr [ %i.ac, %bb.e ], [ %i.t, %bb.c ]
  %.07.i = phi i32 [ %.1.i, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.v = call ptr @dictGetVal(ptr noundef nonnull %i.u) #30 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = load i32, ptr %i.w, align 8, !tbaa !89
  %i.y = and i32 %i.x, 2
  %.not5.i = icmp eq i32 %i.y, 0
  br i1 %.not5.i, label %bb.d, label %bb.e, !llvm.loop !299

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 2168
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !47
  %i.ab = add nsw i32 %i.aa, %.07.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.1.i = phi i32 [ %i.ab, %bb.d ], [ %.07.i, %.lr.ph.i ] ; 2 uses
  %i.ac = call ptr @dictNext(ptr noundef nonnull %2) #30 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %clusterMastersHaveSlaves.exit, label %.lr.ph.i

clusterMastersHaveSlaves.exit:                    ; preds = %bb.e
  %.not11 = icmp eq i32 %.1.i, 0
  call void @dictResetIterator(ptr noundef nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %clusterMastersHaveSlaves.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !89
  %i.af = or i32 %i.ae, 256
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %clusterMastersHaveSlaves.exit.thread, %bb.b, %clusterMastersHaveSlaves.exit, %bb.f, %bb.a
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @clusterNodeClearSlotBit(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = sdiv i32 %1, 8
  %i.c = sext i32 %i.b to i64
  %i.d = and i32 %1, 7                            ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !58    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = lshr i32 %i.g, %i.d
  %i.i = and i32 %i.h, 1                          ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl nuw nsw i32 1, %i.d
  %i.k = trunc nuw i32 %i.j to i8
  %i.l = xor i8 %i.k, -1
  %i.m = and i8 %i.f, %i.l
  store i8 %i.m, ptr %i.e, align 1, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2164 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !161
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !161
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.i
}

declare void @clusterSlotStatReset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @removeChannelsInSlot(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8144), align 8, !tbaa !160
  %i.b = tail call i64 @kvstoreDictSize(ptr noundef %i.a, i32 noundef %0) #30
  %i.c = and i64 %i.b, 4294967295
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pubsubShardUnsubscribeAllChannelsInSlot(i32 noundef %0) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterClaimUnassignedSlots() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @myself, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !89
  %i.d = and i32 %i.c, 2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %clusterSaveConfigOrDie.exit

bb.b:                                             ; preds = %clusterAddSlot.exit
  %.not10 = icmp eq i32 %.1, 0
  br i1 %.not10, label %clusterSaveConfigOrDie.exit, label %bb.g

.preheader:                                       ; preds = %bb.a, %clusterAddSlot.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %clusterAddSlot.exit ], [ 0, %bb.a ] ; 7 uses
  %.0914 = phi i32 [ %.1, %clusterAddSlot.exit ], [ 0, %bb.a ] ; 4 uses
  %i.e = trunc nuw nsw i64 %indvars.iv to i32     ; 5 uses
  %i.f = tail call i32 @countKeysInSlot(i32 noundef %i.e) #30
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %clusterAddSlot.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 262192
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %.not12 = icmp eq ptr %i.j, null
  br i1 %.not12, label %bb.d, label %clusterAddSlot.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 131120
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %.not13 = icmp eq ptr %i.m, null
  br i1 %.not13, label %bb.e, label %clusterAddSlot.exit

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %.0914, 1                    ; 2 uses
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.p = icmp sgt i32 %i.o, 2
  br i1 %i.p, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.155, i32 noundef %i.e) #30
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 262192
  %.phi.trans.insert17 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert, i64 %indvars.iv
  %.pre18 = load ptr, ptr %.phi.trans.insert17, align 8, !tbaa !54
  %i.q = icmp eq ptr %.pre18, null
  br i1 %i.q, label %.thread, label %clusterAddSlot.exit

.thread:                                          ; preds = %bb.e, %bb.f
  %i.r = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %i.s = tail call i32 @clusterNodeSetSlotBit(ptr noundef %i.r, i32 noundef %i.e) ; 0 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 262192
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store ptr %i.r, ptr %i.v, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 393584
  %.zext = lshr i64 %indvars.iv, 3
  %i.x = and i64 %.zext, 536870911
  %i.y = and i32 %i.e, 7
  %i.z = shl nuw nsw i32 1, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !58
  %i.ac = trunc nuw i32 %i.z to i8
  %i.ad = xor i8 %i.ac, -1
  %i.ae = and i8 %i.ab, %i.ad
  store i8 %i.ae, ptr %i.aa, align 1, !tbaa !58
  tail call void @clusterSlotStatReset(i32 noundef %i.e) #30
  br label %clusterAddSlot.exit

clusterAddSlot.exit:                              ; preds = %.thread, %bb.f, %.preheader, %bb.c, %bb.d
  %.1 = phi i32 [ %.0914, %bb.c ], [ %.0914, %bb.d ], [ %.0914, %.preheader ], [ %i.n, %bb.f ], [ %i.n, %.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16384
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !300

bb.g:                                             ; preds = %bb.b
  %i.af = tail call i32 @clusterSaveConfig(i32 noundef 1)
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.h, label %clusterSaveConfigOrDie.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.ai = icmp sgt i32 %i.ah, 3
  br i1 %i.ai, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.38) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @exit(i32 noundef 1) #34
  unreachable

clusterSaveConfigOrDie.exit:                      ; preds = %bb.g, %bb.b, %bb.a
  ret void
}

declare ptr @sdscat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sdsIncrLen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @representSlotInfo(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.014.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.d ]
  ret ptr %.014.lcssa

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.01418 = phi ptr [ %.1, %bb.d ], [ %0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !59   ; 2 uses
  %i.d = zext i16 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !59   ; 2 uses
  %i.g = icmp eq i16 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %.01418, ptr noundef nonnull @.str.160, i64 noundef %i.d) #30
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.i = zext i16 %i.f to i64
  %i.j = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %.01418, ptr noundef nonnull @.str.161, i64 noundef %i.d, i64 noundef %i.i) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.h, %bb.b ], [ %i.j, %bb.c ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %3 = trunc nuw i64 %indvars.iv.next to i32
  %4 = icmp sgt i32 %2, %3
  br i1 %4, label %.lr.ph, label %._crit_edge, !llvm.loop !301
}

; Function Attrs: nounwind uwtable
define dso_local ptr @clusterGenNodeDescription(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not.i = icmp eq i32 %2, 0
  %.in.v.i = select i1 %.not.i, i64 2328, i64 2332
  %.in.i = getelementptr inbounds nuw i8, ptr %1, i64 %.in.v.i
  %i.a = load i32, ptr %.in.i, align 4, !tbaa !9
  %i.b = tail call ptr @sdsempty() #30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call ptr @sdscatlen(ptr noundef %i.b, ptr noundef nonnull %i.c, i64 noundef 40) #30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2264
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2336
  %i.g = load i32, ptr %i.f, align 8, !tbaa !87
  %i.h = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.d, ptr noundef nonnull @.str.162, ptr noundef nonnull %i.e, i32 noundef %i.a, i32 noundef %i.g) #30 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2312 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82   ; 6 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %.val.i = load i8, ptr %i.k, align 1, !tbaa !58 ; 2 uses
  %i.l = and i8 %.val.i, 7
  switch i8 %i.l, label %sdslen.exit.thread [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = lshr i8 %.val.i, 3
  %i.n = zext nneg i8 %i.m to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 -3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !58
  %i.q = zext i8 %i.p to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 -5
  %i.s = load i16, ptr %i.r, align 1, !tbaa !59
  %i.t = zext i16 %i.s to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds i8, ptr %i.j, i64 -9
  %i.v = load i32, ptr %i.u, align 1, !tbaa !9
  %i.w = zext i32 %i.v to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds i8, ptr %i.j, i64 -17
  %i.y = load i64, ptr %i.x, align 1, !tbaa !61
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.y, %bb.f ], [ %i.n, %bb.b ], [ %i.q, %bb.c ], [ %i.t, %bb.d ], [ %i.w, %bb.e ]
  %.not = icmp eq i64 %.0.i, 0
  br i1 %.not, label %sdslen.exit.thread, label %bb.g

bb.g:                                             ; preds = %sdslen.exit
  %i.z = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.h, ptr noundef nonnull @.str.163, ptr noundef nonnull %i.j) #30
  br label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %bb.a, %bb.g, %sdslen.exit
  %.089 = phi ptr [ %i.z, %bb.g ], [ %i.h, %sdslen.exit ], [ %i.h, %bb.a ] ; 3 uses
  %i.aa = icmp eq ptr %0, null
  br i1 %i.aa, label %bb.h, label %.loopexit124

bb.h:                                             ; preds = %sdslen.exit.thread
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !82  ; 5 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1
  %.val.i115 = load i8, ptr %i.ac, align 1, !tbaa !58 ; 2 uses
  %i.ad = and i8 %.val.i115, 7
  switch i8 %i.ad, label %sdslen.exit117.thread [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = lshr i8 %.val.i115, 3
  %i.af = zext nneg i8 %i.ae to i64
  br label %sdslen.exit117

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 -3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !58
  %i.ai = zext i8 %i.ah to i64
  br label %sdslen.exit117

bb.k:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -5
  %i.ak = load i16, ptr %i.aj, align 1, !tbaa !59
  %i.al = zext i16 %i.ak to i64
  br label %sdslen.exit117

bb.l:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds i8, ptr %i.ab, i64 -9
  %i.an = load i32, ptr %i.am, align 1, !tbaa !9
  %i.ao = zext i32 %i.an to i64
  br label %sdslen.exit117

bb.m:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds i8, ptr %i.ab, i64 -17
  %i.aq = load i64, ptr %i.ap, align 1, !tbaa !61
  br label %sdslen.exit117

sdslen.exit117:                                   ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i116 = phi i64 [ %i.aq, %bb.m ], [ %i.af, %bb.i ], [ %i.ai, %bb.j ], [ %i.al, %bb.k ], [ %i.ao, %bb.l ]
  %i.ar = icmp eq i64 %.0.i116, 0
  br i1 %i.ar, label %sdslen.exit117.thread, label %bb.n

sdslen.exit117.thread:                            ; preds = %bb.h, %sdslen.exit117
  %i.as = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %.089, ptr noundef nonnull @.str.14, i32 noundef 1) #30
  br label %bb.n

bb.n:                                             ; preds = %sdslen.exit117.thread, %sdslen.exit117
  %.1 = phi ptr [ %i.as, %sdslen.exit117.thread ], [ %.089, %sdslen.exit117 ] ; 4 uses
  %.not143 = icmp eq i32 %2, 0
  br i1 %.not143, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxFieldHandlers, i64 120), align 8, !tbaa !302
  %i.au = tail call i32 %i.at(ptr noundef nonnull %1) #30
  %.not113 = icmp eq i32 %i.au, 0
  br i1 %.not113, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxFieldHandlers, i64 96), align 16, !tbaa !83
  %i.aw = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.1, ptr noundef nonnull @.str.164, ptr noundef %i.av) #30
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxFieldHandlers, i64 112), align 16, !tbaa !303
  %i.ay = tail call ptr %i.ax(ptr noundef nonnull %1, ptr noundef %i.aw) #30
  br label %.thread

bb.q:                                             ; preds = %bb.n
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxFieldHandlers, i64 88), align 8, !tbaa !302
  %i.ba = tail call i32 %i.az(ptr noundef nonnull %1) #30
  %.not113.1 = icmp eq i32 %i.ba, 0
  br i1 %.not113.1, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxFieldHandlers, i64 64), align 16, !tbaa !83
  %i.bc = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.1, ptr noundef nonnull @.str.164, ptr noundef %i.bb) #30
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxFieldHandlers, i64 80), align 16, !tbaa !303
  %i.be = tail call ptr %i.bd(ptr noundef nonnull %1, ptr noundef %i.bc) #30
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.o, %bb.q, %bb.r
  %.3.1 = phi ptr [ %i.be, %bb.r ], [ %.1, %bb.q ], [ %i.ay, %bb.p ], [ %.1, %bb.o ] ; 2 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxFieldHandlers, i64 56), align 8, !tbaa !302
  %i.bg = tail call i32 %i.bf(ptr noundef nonnull %1) #30
  %.not113.2 = icmp eq i32 %i.bg, 0
  br i1 %.not113.2, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxFieldHandlers, i64 32), align 16, !tbaa !83
  %i.bi = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.3.1, ptr noundef nonnull @.str.164, ptr noundef %i.bh) #30
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxFieldHandlers, i64 48), align 16, !tbaa !303
  %i.bk = tail call ptr %i.bj(ptr noundef nonnull %1, ptr noundef %i.bi) #30
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s
  %.3.2 = phi ptr [ %i.bk, %bb.s ], [ %.3.1, %.thread ] ; 2 uses
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxFieldHandlers, i64 24), align 8, !tbaa !302
  %i.bm = tail call i32 %i.bl(ptr noundef nonnull %1) #30
  %.not113.3 = icmp eq i32 %i.bm, 0
  br i1 %.not113.3, label %.loopexit124, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr @auxFieldHandlers, align 16, !tbaa !83
  %i.bo = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.3.2, ptr noundef nonnull @.str.164, ptr noundef %i.bn) #30
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxFieldHandlers, i64 16), align 16, !tbaa !303
  %i.bq = tail call ptr %i.bp(ptr noundef nonnull %1, ptr noundef %i.bo) #30
  br label %.loopexit124

.loopexit124:                                     ; preds = %bb.t, %bb.u, %sdslen.exit.thread
  %.4 = phi ptr [ %.089, %sdslen.exit.thread ], [ %i.bq, %bb.u ], [ %.3.2, %bb.t ]
  %i.br = tail call ptr @sdscatlen(ptr noundef %.4, ptr noundef nonnull @.str.165, i64 noundef 1) #30
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !89
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = tail call ptr @representClusterNodeFlags(ptr noundef %i.br, i16 noundef zeroext %i.bu)
  %i.bw = tail call ptr @sdscatlen(ptr noundef %i.bv, ptr noundef nonnull @.str.165, i64 noundef 1) #30 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 2184 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !65 ; 2 uses
  %.not103 = icmp eq ptr %i.by, null
  br i1 %.not103, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit124
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = tail call ptr @sdscatlen(ptr noundef %i.bw, ptr noundef nonnull %i.bz, i64 noundef 40) #30
  br label %bb.x

bb.w:                                             ; preds = %.loopexit124
  %i.cb = tail call ptr @sdscatlen(ptr noundef %i.bw, ptr noundef nonnull @.str.166, i64 noundef 1) #30
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5 = phi ptr [ %i.ca, %bb.v ], [ %i.cb, %bb.w ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !95 ; 2 uses
  %i.ce = load i32, ptr %i.bs, align 8, !tbaa !89 ; 2 uses
  %i.cf = and i32 %i.ce, 2
  %.not104 = icmp eq i32 %i.cf, 0
  br i1 %.not104, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !65 ; 2 uses
  %.not105 = icmp eq ptr %i.cg, null
  br i1 %.not105, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !95
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.0 = phi i64 [ %i.ci, %bb.z ], [ %i.cd, %bb.y ], [ %i.cd, %bb.x ]
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 2200
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !93
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 2208
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !94
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 2344
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !176
  %.not106 = icmp eq ptr %i.co, null
  %i.cp = and i32 %i.ce, 16
  %.not107 = icmp eq i32 %i.cp, 0
  %i.cq = and i1 %.not107, %.not106
  %i.cr = select i1 %i.cq, ptr @.str.169, ptr @.str.168
  %i.cs = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %.5, ptr noundef nonnull @.str.167, i64 noundef %i.ck, i64 noundef %i.cm, i64 noundef %.0, ptr noundef nonnull %i.cr) #30 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 2152
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !109 ; 2 uses
  %.not108 = icmp eq ptr %i.cu, null
  br i1 %.not108, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 2160
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !110 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i, label %representSlotInfo.exit

.lr.ph.i:                                         ; preds = %bb.ab, %bb.ae
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ae ], [ 0, %bb.ab ] ; 2 uses
  %.01418.i = phi ptr [ %.1.i, %bb.ae ], [ %i.cs, %bb.ab ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %indvars.iv.i ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !59 ; 2 uses
  %i.da = zext i16 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !59 ; 2 uses
  %i.dd = icmp eq i16 %i.cz, %i.dc
  br i1 %i.dd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i
  %i.de = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %.01418.i, ptr noundef nonnull @.str.160, i64 noundef %i.da) #30
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i
  %i.df = zext i16 %i.dc to i64
  %i.dg = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %.01418.i, ptr noundef nonnull @.str.161, i64 noundef %i.da, i64 noundef %i.df) #30
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.i = phi ptr [ %i.de, %bb.ac ], [ %i.dg, %bb.ad ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %3 = trunc nuw i64 %indvars.iv.next.i to i32
  %4 = icmp sgt i32 %i.cw, %3
  br i1 %4, label %.lr.ph.i, label %representSlotInfo.exit, !llvm.loop !301

bb.af:                                            ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 2164
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !161
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.preheader122, label %representSlotInfo.exit

.preheader122:                                    ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader122, %bb.al
  %.6129 = phi ptr [ %i.cs, %.preheader122 ], [ %.8, %bb.al ] ; 4 uses
  %.090128 = phi i32 [ -1, %.preheader122 ], [ %.292, %bb.al ] ; 2 uses
  %.093127 = phi i32 [ 0, %.preheader122 ], [ %i.eb, %bb.al ] ; 7 uses
  %i.dl = sdiv i32 %.093127, 8
  %i.dm = sext i32 %i.dl to i64
  %i.dn = and i32 %.093127, 7
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 %i.dm
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !58
  %i.dq = zext i8 %i.dp to i32
  %i.dr = lshr i32 %i.dq, %i.dn                   ; 2 uses
  %i.ds = trunc i32 %i.dr to i1                   ; 2 uses
  %i.dt = icmp eq i32 %.090128, -1
  %or.cond9 = and i1 %i.dt, %i.ds
  %spec.select = select i1 %or.cond9, i32 %.093127, i32 %.090128 ; 5 uses
  %.not109 = icmp eq i32 %spec.select, -1
  br i1 %.not109, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.du = and i32 %i.dr, 1
  %i.dv = icmp eq i32 %i.du, 0
  %i.dw = icmp eq i32 %.093127, 16383             ; 2 uses
  %or.cond5 = or i1 %i.dw, %i.dv
  br i1 %or.cond5, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %or.cond7 = and i1 %i.dw, %i.ds
  %spec.select114 = select i1 %or.cond7, i32 16384, i32 %.093127 ; 3 uses
  %i.dx = add nsw i32 %spec.select114, -1         ; 2 uses
  %i.dy = icmp eq i32 %spec.select, %i.dx
  br i1 %i.dy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dz = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %.6129, ptr noundef nonnull @.str.160, i32 noundef %spec.select) #30
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ea = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %.6129, ptr noundef nonnull @.str.161, i32 noundef %spec.select, i32 noundef %i.dx) #30
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ah, %bb.ag
  %.295 = phi i32 [ %.093127, %bb.ag ], [ %.093127, %bb.ah ], [ %spec.select114, %bb.ak ], [ %spec.select114, %bb.aj ] ; 2 uses
  %.292 = phi i32 [ -1, %bb.ag ], [ %spec.select, %bb.ah ], [ -1, %bb.ak ], [ -1, %bb.aj ]
  %.8 = phi ptr [ %.6129, %bb.ag ], [ %.6129, %bb.ah ], [ %i.ea, %bb.ak ], [ %i.dz, %bb.aj ] ; 2 uses
  %i.eb = add nsw i32 %.295, 1
  %i.ec = icmp slt i32 %.295, 16383
  br i1 %i.ec, label %bb.ag, label %representSlotInfo.exit, !llvm.loop !304

representSlotInfo.exit:                           ; preds = %bb.ae, %bb.al, %bb.ab, %bb.af
  %.9 = phi ptr [ %i.cs, %bb.af ], [ %.8, %bb.al ], [ %i.cs, %bb.ab ], [ %.1.i, %bb.ae ] ; 2 uses
  %i.ed = load i32, ptr %i.bs, align 8, !tbaa !89
  %i.ee = and i32 %i.ed, 16
  %.not110 = icmp eq i32 %i.ee, 0
  br i1 %.not110, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %representSlotInfo.exit, %bb.an
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.an ], [ 0, %representSlotInfo.exit ] ; 4 uses
  %.10131 = phi ptr [ %.11, %bb.an ], [ %.9, %representSlotInfo.exit ] ; 2 uses
  %i.ef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !54 ; 2 uses
  %.not111 = icmp eq ptr %i.ei, null
  br i1 %.not111, label %bb.am, label %.sink.split

bb.am:                                            ; preds = %.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 131120
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !54 ; 2 uses
  %.not112 = icmp eq ptr %i.el, null
  br i1 %.not112, label %bb.an, label %.sink.split

.sink.split:                                      ; preds = %bb.am, %.preheader
  %.sink = phi ptr [ %i.ei, %.preheader ], [ %i.el, %bb.am ]
  %.str.170.sink = phi ptr [ @.str.170, %.preheader ], [ @.str.171, %bb.am ]
  %i.em = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.en = trunc nuw nsw i64 %indvars.iv to i32
  %i.eo = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.10131, ptr noundef nonnull %.str.170.sink, i32 noundef %i.en, ptr noundef nonnull %i.em) #30
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.am
  %.11 = phi ptr [ %.10131, %bb.am ], [ %i.eo, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16384
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !305

.loopexit:                                        ; preds = %bb.an, %representSlotInfo.exit
  %.12 = phi ptr [ %.9, %representSlotInfo.exit ], [ %.11, %bb.an ]
  ret ptr %.12
}

declare ptr @sdscatlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterGenNodesSlotsInfo(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.m
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.m ] ; 6 uses
  %.025 = phi ptr [ null, %bb.a ], [ %.126, %bb.m ] ; 8 uses
  %.024 = phi i32 [ -1, %bb.a ], [ %.1, %bb.m ]   ; 2 uses
  %i.a = icmp eq ptr %.025, null
  %i.b = trunc nuw nsw i64 %indvars.iv to i32
  %i.c = icmp eq i64 %indvars.iv, 16384           ; 3 uses
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.n, label %.sink.split

bb.d:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 262192
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %.not = icmp eq ptr %.025, %i.g
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.025, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !89
  %i.j = and i32 %i.i, %0
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.025, i64 2152 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !109  ; 2 uses
  %.not29 = icmp eq ptr %i.l, null
  br i1 %.not29, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %.025, i64 2164
  %i.n = load i32, ptr %i.m, align 4, !tbaa !161
  %i.o = shl nsw i32 %i.n, 1
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 1
  %i.r = tail call noalias ptr @zmalloc(i64 noundef %i.q) #35 ; 2 uses
  store ptr %i.r, ptr %i.k, align 8, !tbaa !109
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = phi ptr [ %i.r, %bb.h ], [ %i.l, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.025, i64 2160 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !110  ; 3 uses
  %i.v = add nsw i32 %i.u, 1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.025, i64 2164
  %i.x = load i32, ptr %i.w, align 4, !tbaa !161
  %i.y = shl nsw i32 %i.x, 1
  %i.z = icmp slt i32 %i.v, %i.y
  br i1 %i.z, label %bb.k, label %bb.j, !prof !71

bb.j:                                             ; preds = %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.18, i32 noundef 5491) #30
  tail call void @abort() #32
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aa = trunc i32 %.024 to i16
  %i.ab = sext i32 %i.u to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.ab
  store i16 %i.aa, ptr %i.ac, align 2, !tbaa !59
  %i.ad = trunc i64 %indvars.iv to i16
  %i.ae = add nsw i16 %i.ad, -1
  %i.af = add nsw i32 %i.u, 2
  store i32 %i.af, ptr %i.t, align 8, !tbaa !110
  %i.ag = sext i32 %i.v to i64
  %i.ah = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.ag
  store i16 %i.ae, ptr %i.ah, align 2, !tbaa !59
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  br i1 %i.c, label %bb.n, label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.c
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 262192
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !54
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.e
  %.126 = phi ptr [ %.025, %bb.e ], [ %i.al, %.sink.split ]
  %.1 = phi i32 [ %.024, %bb.e ], [ %i.b, %.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !306
end_hunk_0
