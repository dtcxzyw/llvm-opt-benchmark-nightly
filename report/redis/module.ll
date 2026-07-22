inline.NumInlined: 700
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@firePostExecutionUnitJobs:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  store ptr @RM_GetApi, ptr %0, align 8, !tbaa !127
  store ptr %i.l, ptr %i.e, align 8, !tbaa !106
  store i32 64, ptr %i.f, align 8, !tbaa !102
  %i.m = load i64, ptr @moduleTempClientCount, align 8, !tbaa !29 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @moduleTempClients, align 8, !tbaa !31
  %i.o = add i64 %i.m, -1                         ; 4 uses
  store i64 %i.o, ptr @moduleTempClientCount, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 2 uses
  %i.r = load i64, ptr @moduleTempClientMinCount, align 8, !tbaa !29
  %i.s = icmp ult i64 %i.o, %i.r
  br i1 %i.s, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  store i64 %i.o, ptr @moduleTempClientMinCount, align 8, !tbaa !29
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.b
  %i.t = call ptr @createClient(ptr noundef null) #31 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !34
  %i.w = or i64 %i.v, 134217728
  store i64 %i.w, ptr %i.u, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  store ptr null, ptr %i.x, align 8, !tbaa !55
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  %.sink16.i = phi ptr [ %i.t, %bb.e ], [ %i.q, %bb.d ], [ %i.q, %bb.c ]
  store ptr %.sink16.i, ptr %i.d, align 8, !tbaa !110
  %i.y = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2476), align 4, !tbaa !128
  %.not13.i = icmp eq i32 %i.y, 0
  %i.z = load ptr, ptr @getMonotonicUs, align 8, !tbaa !98
  %i.aa = call i64 %i.z() #31, !inline_history !129 ; 2 uses
  br i1 %.not13.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.sink.split.i
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !130
  %i.ac = sdiv i32 1000000, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = add i64 %i.aa, %i.ad
  br label %moduleCreateContext.exit

bb.g:                                             ; preds = %.sink.split.i
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8336), align 8, !tbaa !131
  %i.ag = mul nsw i64 %i.af, 1000
  %i.ah = add i64 %i.ag, %i.aa
  br label %moduleCreateContext.exit

moduleCreateContext.exit:                         ; preds = %bb.f, %bb.g
  %.sink.i = phi i64 [ %i.ah, %bb.g ], [ %i.ae, %bb.f ]
  store i64 %.sink.i, ptr %i.g, align 8, !tbaa !132
  call void @enterExecutionUnit(i32 noundef 1, i64 noundef 0) #31
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !507
  %i.al = call i32 @selectDb(ptr noundef %i.ai, i32 noundef %i.ak) #31 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !508
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !509
  call void %i.an(ptr noundef nonnull %0, ptr noundef %i.ap) #31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !510 ; 2 uses
  %.not10 = icmp eq ptr %i.ar, null
  br i1 %.not10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %moduleCreateContext.exit
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !509
  call void %i.ar(ptr noundef %i.as) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %moduleCreateContext.exit
  call void @moduleFreeContext(ptr noundef nonnull %0)
  call void @zfree(ptr noundef nonnull %i.k) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  %i.at = load ptr, ptr @modulePostExecUnitJobs, align 8, !tbaa !392 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !138
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !511

._crit_edge:                                      ; preds = %bb.i, %bb.a
  call void @exitExecutionUnit() #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_AddPostNotificationJob(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2476), align 4, !tbaa !128
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !315
  %i.c = icmp ne ptr %i.b, null
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7572), align 4
  %i.e = icmp ne i32 %i.d, 0
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(40) ptr @zmalloc(i64 noundef 40) #32 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  store ptr %i.h, ptr %i.f, align 8, !tbaa !505
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.i, align 8, !tbaa !508
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %2, ptr %i.j, align 8, !tbaa !509
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %3, ptr %i.k, align 8, !tbaa !510
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !110
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load i32, ptr %i.p, align 8, !tbaa !134
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.q, ptr %i.r, align 8, !tbaa !507
  %i.s = load ptr, ptr @modulePostExecUnitJobs, align 8, !tbaa !392
  %i.t = tail call ptr @listAddNodeTail(ptr noundef %i.s, ptr noundef nonnull %i.f) #31 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @RM_GetNotifyKeyspaceEvents() #14 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8136), align 8, !tbaa !512
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @RM_NotifyKeyspaceEvent(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !134
  tail call void @notifyKeyspaceEvent(i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.f) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare void @notifyKeyspaceEvent(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @moduleNotifyKeyspaceEvent(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.listIter, align 8           ; 5 uses
  %5 = alloca %struct.RedisModuleCtx, align 8     ; 9 uses
  %i.a = load ptr, ptr @moduleKeyspaceSubscribers, align 8, !tbaa !392
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !138
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @enterExecutionUnit(i32 noundef 0, i64 noundef 0) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.e = load ptr, ptr @moduleKeyspaceSubscribers, align 8, !tbaa !392
  call void @listRewind(ptr noundef %i.e, ptr noundef nonnull %4) #31
  %i.f = and i32 %0, -4                           ; 2 uses
  %i.g = call ptr @listNext(ptr noundef nonnull %4) #31 ; 2 uses
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 104
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %i.l = phi ptr [ %i.g, %.lr.ph ], [ %i.bd, %bb.l ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !141  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !500
  %i.q = and i32 %i.p, %i.f
  %.not15 = icmp eq i32 %i.q, 0
  br i1 %.not15, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 20 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !502
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %6 = load ptr, ptr %i.n, align 8, !tbaa !498
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 76
  %i.v = load i32, ptr %i.u, align 4, !tbaa !276
  %i.w = and i32 %i.v, 8
  %.not16 = icmp eq i32 %i.w, 0
  br i1 %.not16, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %7 = load ptr, ptr %i.n, align 8, !tbaa !498
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, i8 0, i64 104, i1 false)
  store ptr @RM_GetApi, ptr %5, align 8, !tbaa !127
  store ptr %7, ptr %i.i, align 8, !tbaa !106
  store i32 64, ptr %i.j, align 8, !tbaa !102
  %i.x = load i64, ptr @moduleTempClientCount, align 8, !tbaa !29 ; 2 uses
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr @moduleTempClients, align 8, !tbaa !31
  %i.z = add i64 %i.x, -1                         ; 4 uses
  store i64 %i.z, ptr @moduleTempClientCount, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33 ; 2 uses
  %i.ac = load i64, ptr @moduleTempClientMinCount, align 8, !tbaa !29
  %i.ad = icmp ult i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.h, label %.sink.split.i

bb.h:                                             ; preds = %bb.g
  store i64 %i.z, ptr @moduleTempClientMinCount, align 8, !tbaa !29
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.f
  %i.ae = call ptr @createClient(ptr noundef null) #31 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !34
  %i.ah = or i64 %i.ag, 134217728
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  store ptr null, ptr %i.ai, align 8, !tbaa !55
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.h, %bb.g
  %.sink16.i = phi ptr [ %i.ae, %bb.i ], [ %i.ab, %bb.h ], [ %i.ab, %bb.g ]
  store ptr %.sink16.i, ptr %i.h, align 8, !tbaa !110
  %i.aj = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2476), align 4, !tbaa !128
  %.not13.i = icmp eq i32 %i.aj, 0
  %i.ak = load ptr, ptr @getMonotonicUs, align 8, !tbaa !98
  %i.al = call i64 %i.ak() #31, !inline_history !129 ; 2 uses
  br i1 %.not13.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.sink.split.i
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !130
  %i.an = sdiv i32 1000000, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = add i64 %i.al, %i.ao
  br label %moduleCreateContext.exit

bb.k:                                             ; preds = %.sink.split.i
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8336), align 8, !tbaa !131
  %i.ar = mul nsw i64 %i.aq, 1000
  %i.as = add i64 %i.ar, %i.al
  br label %moduleCreateContext.exit

moduleCreateContext.exit:                         ; preds = %bb.j, %bb.k
  %.sink.i = phi i64 [ %i.as, %bb.k ], [ %i.ap, %bb.j ]
  store i64 %.sink.i, ptr %i.k, align 8, !tbaa !132
  call void @enterExecutionUnit(i32 noundef 1, i64 noundef 0) #31
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.au = call i32 @selectDb(ptr noundef %i.at, i32 noundef %3) #31 ; 0 uses
  %i.av = load i32, ptr %i.r, align 4, !tbaa !502
  store i32 1, ptr %i.r, align 4, !tbaa !502
  %i.aw = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6440), align 8, !tbaa !9
  %i.ax = add nsw <2 x i32> %i.aw, splat (i32 1)
  store <2 x i32> %i.ax, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6440), align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !501
  %i.ba = call i32 %i.az(ptr noundef nonnull %5, i32 noundef %i.f, ptr noundef %1, ptr noundef %2) #31 ; 0 uses
  %i.bb = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6440), align 8, !tbaa !9
  %i.bc = add nsw <2 x i32> %i.bb, splat (i32 -1)
  store <2 x i32> %i.bc, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6440), align 8, !tbaa !9
  store i32 %i.av, ptr %i.r, align 4, !tbaa !502
  call void @moduleFreeContext(ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.l

bb.l:                                             ; preds = %moduleCreateContext.exit, %bb.e, %bb.c
  %i.bd = call ptr @listNext(ptr noundef nonnull %4) #31 ; 2 uses
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !513

._crit_edge:                                      ; preds = %bb.l, %bb.b
  call void @exitExecutionUnit() #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @moduleUnsubscribeNotifications(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = load ptr, ptr @moduleKeyspaceSubscribers, align 8, !tbaa !392
  call void @listRewind(ptr noundef %i.a, ptr noundef nonnull %1) #31
  %i.b = call ptr @listNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi ptr [ %i.i, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !498
  %i.g = icmp eq ptr %i.f, %0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr @moduleKeyspaceSubscribers, align 8, !tbaa !392
  call void @listDelNode(ptr noundef %i.h, ptr noundef nonnull %i.c) #31
  call void @zfree(ptr noundef nonnull %i.e) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = call ptr @listNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !514

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @moduleCallClusterReceivers(ptr noundef %0, i64 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.RedisModuleCtx, align 8     ; 10 uses
  %i.a = zext i8 %2 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @clusterReceivers, i64 %i.a
  %.011 = load ptr, ptr %i.b, align 8, !tbaa !515 ; 2 uses
  %.not12 = icmp eq ptr %.011, null
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.013 = phi ptr [ %.0, %bb.h ], [ %.011, %bb.a ] ; 4 uses
  %i.c = load i64, ptr %.013, align 8, !tbaa !517
  %i.d = icmp eq i64 %i.c, %1
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.e = getelementptr inbounds nuw i8, ptr %.013, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !519
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i8 0, i64 96, i1 false)
  store ptr @RM_GetApi, ptr %5, align 8, !tbaa !127
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.f, ptr %i.i, align 8, !tbaa !106
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 64, ptr %i.j, align 8, !tbaa !102
  %i.k = load i64, ptr @moduleTempClientCount, align 8, !tbaa !29 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @moduleTempClients, align 8, !tbaa !31
  %i.m = add i64 %i.k, -1                         ; 4 uses
  store i64 %i.m, ptr @moduleTempClientCount, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.p = load i64, ptr @moduleTempClientMinCount, align 8, !tbaa !29
  %i.q = icmp ult i64 %i.m, %i.p
  br i1 %i.q, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  store i64 %i.m, ptr @moduleTempClientMinCount, align 8, !tbaa !29
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.b
  %i.r = tail call ptr @createClient(ptr noundef null) #31 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !34
  %i.u = or i64 %i.t, 134217728
  store i64 %i.u, ptr %i.s, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  store ptr null, ptr %i.v, align 8, !tbaa !55
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  %.sink16.i = phi ptr [ %i.r, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.c ]
  store ptr %.sink16.i, ptr %i.g, align 8, !tbaa !110
  %i.w = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2476), align 4, !tbaa !128
  %.not13.i = icmp eq i32 %i.w, 0
  %i.x = load ptr, ptr @getMonotonicUs, align 8, !tbaa !98
  %i.y = tail call i64 %i.x() #31, !inline_history !129 ; 2 uses
  br i1 %.not13.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.sink.split.i
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !130
  %i.aa = sdiv i32 1000000, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add i64 %i.y, %i.ab
  br label %moduleCreateContext.exit

bb.g:                                             ; preds = %.sink.split.i
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8336), align 8, !tbaa !131
  %i.ae = mul nsw i64 %i.ad, 1000
  %i.af = add i64 %i.ae, %i.y
  br label %moduleCreateContext.exit

end_hunk_0
