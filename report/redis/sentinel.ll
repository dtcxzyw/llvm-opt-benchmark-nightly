Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/sentinel?download=true
inline.NumInlined: 166
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@sentinelEvent:bb.a

bb.l:                                             ; preds = %bb.k
  call void (i32, ptr, ...) @_serverLog(i32 noundef %0, ptr noundef nonnull @.str.17, ptr noundef %1, ptr noundef nonnull %i.a) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not48 = icmp eq i32 %0, 0
  br i1 %.not48, label %.thread69, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.aw = call ptr @createStringObject(ptr noundef nonnull %1, i64 noundef %i.av) #26 ; 2 uses
  %i.ax = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  %i.ay = call ptr @createStringObject(ptr noundef nonnull %i.a, i64 noundef %i.ax) #26 ; 2 uses
  %i.az = call i32 @pubsubPublishMessage(ptr noundef %i.aw, ptr noundef %i.ay, i32 noundef 0) #26 ; 0 uses
  call void @decrRefCount(ptr noundef %i.aw) #26
  call void @decrRefCount(ptr noundef %i.ay) #26
  %i.ba = icmp eq i32 %0, 3
  %i.bb = icmp ne ptr %2, null
  %or.cond = and i1 %i.ba, %i.bb
  br i1 %or.cond, label %bb.o, label %.thread69

bb.o:                                             ; preds = %bb.n
  %i.bc = load i32, ptr %2, align 8, !tbaa !507
  %i.bd = and i32 %i.bc, 1
  %.not49 = icmp eq i32 %i.bd, 0
  br i1 %.not49, label %bb.p, label %.thread71

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !508 ; 2 uses
  %.not50 = icmp eq ptr %i.bf, null
  br i1 %.not50, label %.thread69, label %.thread71

.thread71:                                        ; preds = %bb.o, %bb.p
  %i.bg = phi ptr [ %i.bf, %bb.p ], [ %2, %bb.o ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 320
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !495 ; 2 uses
  %.not51 = icmp eq ptr %i.bi, null
  br i1 %.not51, label %.thread69, label %bb.q

bb.q:                                             ; preds = %.thread71
  call void (ptr, ...) @sentinelScheduleScriptExecution(ptr noundef nonnull %i.bi, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef null)
  br label %.thread69

.thread69:                                        ; preds = %bb.m, %bb.p, %.thread71, %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @sentinelRedisInstanceTypeStr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 !guid !705 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !507    ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 2
  %.not4 = icmp eq i32 %i.c, 0
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.a, 4
  %.not5 = icmp eq i32 %i.d, 0
  %.str.51..str.50 = select i1 %.not5, ptr @.str.51, ptr @.str.50
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ @.str.49, %bb.b ], [ @.str.48, %bb.a ], [ %.str.51..str.50, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #15

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #15

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @pubsubPublishMessage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @decrRefCount(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sentinelScheduleScriptExecution(ptr noundef %0, ...) local_unnamed_addr #0 !guid !708 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  %i.a = alloca [17 x ptr], align 16              ; 5 uses
  %2 = alloca %struct.listIter, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.d = load i32, ptr %1, align 16               ; 3 uses
  %i.e = icmp ult i32 %i.d, 41
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 16
  %i.g = zext nneg i32 %i.d to i64
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = add nuw nsw i32 %i.d, 8
  store i32 %i.i, ptr %1, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !560  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !560
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = call ptr @sdsnew(ptr noundef nonnull %i.m) #26
  store ptr %i.o, ptr %i.n, align 8, !tbaa !560
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !706

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0.lcssa = phi i64 [ %indvars.iv, %bb.e ], [ 16, %bb.f ]
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.p = call ptr @sdsnew(ptr noundef %0) #26
  store ptr %i.p, ptr %i.a, align 16, !tbaa !560
  %i.q = call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #29 ; 6 uses
  store i32 0, ptr %i.q, align 8, !tbaa !563
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 0, ptr %i.r, align 4, !tbaa !564
  %i.s = shl i64 %.0.lcssa, 3
  %i.t = add i64 %i.s, 8
  %i.u = and i64 %i.t, 34359738360                ; 2 uses
  %i.v = call noalias ptr @zmalloc(i64 noundef %i.u) #29 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !565
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.x, align 8, !tbaa !566
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 0, ptr %i.y, align 8, !tbaa !567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.u, i1 false)
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 96), align 32, !tbaa !546
  %i.aa = call ptr @listAddNodeTail(ptr noundef %i.z, ptr noundef nonnull %i.q) #26 ; 0 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 96), align 32, !tbaa !546 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !570
  %i.ae = icmp ugt i64 %i.ad, 256
  br i1 %i.ae, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @listRewind(ptr noundef nonnull %i.ab, ptr noundef nonnull %2) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.af = call ptr @listNext(ptr noundef nonnull %2) #26 ; 3 uses
  %.not22 = icmp eq ptr %i.af, null
  br i1 %.not22, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !572 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !563
  %i.aj = and i32 %i.ai, 1
  %.not23 = icmp eq i32 %i.aj, 0
  br i1 %.not23, label %bb.k, label %bb.i, !llvm.loop !707

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 96), align 32, !tbaa !546
  call void @listDelNode(ptr noundef %i.ak, ptr noundef nonnull %i.af) #26
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !565 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !560 ; 2 uses
  %.not6.i = icmp eq ptr %i.an, null
  br i1 %.not6.i, label %sentinelReleaseScriptJob.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.k ]
  %3 = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.an, %bb.k ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  call void @sdsfree(ptr noundef nonnull %3) #26
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !565 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !560 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %sentinelReleaseScriptJob.exit, label %.lr.ph.i, !llvm.loop !1

sentinelReleaseScriptJob.exit:                    ; preds = %.lr.ph.i, %bb.k
  %.lcssa.i = phi ptr [ %i.am, %bb.k ], [ %i.ao, %.lr.ph.i ]
  call void @zfree(ptr noundef nonnull %.lcssa.i) #26
  call void @zfree(ptr noundef nonnull %i.ah) #26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %sentinelReleaseScriptJob.exit
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 96), align 32, !tbaa !546
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !570
  %i.au = icmp ult i64 %i.at, 257
  br i1 %i.au, label %bb.m, label %bb.l, !prof !573

bb.l:                                             ; preds = %.loopexit
  call void @_serverAssert(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 778) #26
  call void @abort() #31
  unreachable

bb.m:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

declare void @dictInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dictNext(ptr noundef) local_unnamed_addr #1

declare ptr @dictGetVal(ptr noundef) local_unnamed_addr #1

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sentinelReleaseScriptJob(ptr noundef %0) local_unnamed_addr #0 !guid !709 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !565  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !560  ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ]
  %1 = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.a ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  tail call void @sdsfree(ptr noundef nonnull %1) #26
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !565  ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !560  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.d, %.lr.ph ]
  tail call void @zfree(ptr noundef nonnull %.lcssa) #26
  tail call void @zfree(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare ptr @listAddNodeTail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @listRewind(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @listNext(ptr noundef) local_unnamed_addr #1

declare void @listDelNode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local ptr @sentinelGetScriptListNodeByPid(i32 noundef %0) local_unnamed_addr #0 !guid !710 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 96), align 32, !tbaa !546
  call void @listRewind(ptr noundef %i.a, ptr noundef nonnull %1) #26
  %i.b = call ptr @listNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi ptr [ %i.k, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !572  ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !563
  %i.g = and i32 %i.f, 1
  %.not8 = icmp eq i32 %i.g, 0
  br i1 %.not8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !567
  %i.j = icmp eq i32 %i.i, %0
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.k = call ptr @listNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !2

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret ptr %.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local void @sentinelRunPendingScripts() local_unnamed_addr #0 !guid !712 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.a = tail call i64 @mstime() #26
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 96), align 32, !tbaa !546
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %0) #26
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 72), align 8, !tbaa !545
  %i.d = icmp slt i32 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.e = call ptr @listNext(ptr noundef nonnull %0) #26 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !572  ; 10 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !563  ; 2 uses
  %i.i = and i32 %i.h, 1
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %bb.c, label %bb.h, !llvm.loop !711

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !566  ; 2 uses
  %.not20 = icmp ne i64 %i.k, 0
  %i.l = icmp sgt i64 %i.k, %i.a
  %or.cond = select i1 %.not20, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.h, label %bb.d, !llvm.loop !711

bb.d:                                             ; preds = %bb.c
  %i.m = or disjoint i32 %i.h, 1
  store i32 %i.m, ptr %i.g, align 8, !tbaa !563
  %i.n = call i64 @mstime() #26
  store i64 %i.n, ptr %i.j, align 8, !tbaa !566
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !564
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !564
  %i.r = call i32 @fork() #26                     ; 3 uses
  switch i32 %i.r, label %bb.g [
    i32 -1, label %bb.e
    i32 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !565
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !560
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef %i.u, i32 noundef 99, i32 noundef 0)
  %i.v = load i32, ptr %i.g, align 8, !tbaa !563
  %i.w = and i32 %i.v, -2
  store i32 %i.w, ptr %i.g, align 8, !tbaa !563
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %i.x, align 8, !tbaa !567
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @connTypeCleanupAll() #26
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !565  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !560
  %i.ab = load ptr, ptr @environ, align 8, !tbaa !713
  %i.ac = call i32 @execve(ptr noundef %i.aa, ptr noundef nonnull %i.z, ptr noundef %i.ab) #26 ; 0 uses
  call void @_exit(i32 noundef 2) #31
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 72), align 8, !tbaa !545
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 72), align 8, !tbaa !545
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.r, ptr %i.af, align 8, !tbaa !567
  %i.ag = sext i32 %i.r to i64
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef nonnull @.str.25, i64 noundef %i.ag)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.c, %bb.b
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 72), align 8, !tbaa !545
  %i.ai = icmp slt i32 %i.ah, 16
  br i1 %i.ai, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.h, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #5

declare void @connTypeCleanupAll() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @execve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 1, -9223372036854775808) i64 @sentinelScriptRetryDelay(i32 noundef %0) local_unnamed_addr #18 !guid !715 {
bb.a:
  %i.a = load i64, ptr @sentinel_script_retry_delay, align 8, !tbaa !574 ; 3 uses
  %i.b = icmp sgt i32 %0, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add nuw i32 %0, 7
  %i.d = add nsw i32 %0, -2
  %xtraiter = and i32 %i.c, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.05.prol = phi i64 [ %i.f, %.lr.ph.prol ], [ %i.a, %.lr.ph.preheader ]
  %.034.prol = phi i32 [ %i.e, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.e = add nsw i32 %.034.prol, -1               ; 2 uses
  %i.f = shl nuw nsw i64 %.05.prol, 1             ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !714

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.05.unr = phi i64 [ %i.a, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %.034.unr = phi i32 [ %0, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %i.g = icmp ult i32 %i.d, 7
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05 = phi i64 [ %i.h, %.lr.ph ], [ %.05.unr, %.lr.ph.prol.loopexit ]
  %.034 = phi i32 [ %i.i, %.lr.ph ], [ %.034.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.h = shl i64 %.05, 8                          ; 2 uses
  %i.i = add nsw i32 %.034, -8
  %i.j = icmp sgt i32 %.034, 9
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %i.a, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.h, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local void @sentinelCollectTerminatedScripts() local_unnamed_addr #0 !guid !718 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = call i32 @waitpid(i32 noundef -1, ptr noundef nonnull %i.a, i32 noundef 1) #26 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %i.d = phi i32 [ %i.bg, %bb.l ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !20   ; 2 uses
  %i.f = lshr i32 %i.e, 8
  %i.g = and i32 %i.f, 255                        ; 4 uses
  %i.h = and i32 %i.e, 127                        ; 2 uses
  %i.i = shl nuw nsw i32 %i.h, 24
  %sext = add nuw i32 %i.i, 16777216
  %i.j = icmp sgt i32 %sext, 33554431
  %spec.select = select i1 %i.j, i32 %i.h, i32 0  ; 4 uses
  %i.k = zext nneg i32 %i.d to i64                ; 2 uses
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef nonnull @.str.27, i64 noundef %i.k, i32 noundef %i.g, i32 noundef %spec.select)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 96), align 32, !tbaa !546
  call void @listRewind(ptr noundef %i.l, ptr noundef nonnull %0) #26
  %i.m = call ptr @listNext(ptr noundef nonnull %0) #26 ; 2 uses
  %.not11.i = icmp eq ptr %i.m, null
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.c
  %i.n = phi ptr [ %i.v, %bb.c ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !572  ; 10 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !563
  %i.r = and i32 %i.q, 1
  %.not8.i = icmp eq i32 %i.r, 0
  br i1 %.not8.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !567
  %i.u = icmp eq i32 %i.t, %i.d
  br i1 %i.u, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.v = call ptr @listNext(ptr noundef nonnull %0) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !2

.loopexit:                                        ; preds = %bb.c, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !553
  %i.x = icmp sgt i32 %i.w, 3
  br i1 %i.x, label %bb.l, label %bb.d, !llvm.loop !716

bb.d:                                             ; preds = %.loopexit
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.28, i64 noundef %i.k) #26
  br label %bb.l, !llvm.loop !716

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  %i.z = icmp ne i32 %spec.select, 0
  %i.aa = icmp eq i32 %i.g, 1
  %or.cond = or i1 %i.aa, %i.z
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !564
  %.not = icmp eq i32 %i.ac, 10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !563
  %i.ae = and i32 %i.ad, -2
  store i32 %i.ae, ptr %i.p, align 8, !tbaa !563
  store i32 0, ptr %i.y, align 8, !tbaa !567
  %i.af = call i64 @mstime() #26
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !564 ; 5 uses
  %i.ah = load i64, ptr @sentinel_script_retry_delay, align 8, !tbaa !574 ; 3 uses
  %i.ai = icmp sgt i32 %i.ag, 1
  br i1 %i.ai, label %.lr.ph.i25.preheader, label %sentinelScriptRetryDelay.exit

.lr.ph.i25.preheader:                             ; preds = %bb.g
  %i.aj = add nuw i32 %i.ag, 7
  %i.ak = add nsw i32 %i.ag, -2
  %xtraiter = and i32 %i.aj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i25.prol.loopexit, label %.lr.ph.i25.prol

.lr.ph.i25.prol:                                  ; preds = %.lr.ph.i25.preheader, %.lr.ph.i25.prol
  %.05.i.prol = phi i64 [ %i.am, %.lr.ph.i25.prol ], [ %i.ah, %.lr.ph.i25.preheader ]
  %.034.i.prol = phi i32 [ %i.al, %.lr.ph.i25.prol ], [ %i.ag, %.lr.ph.i25.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i25.prol ], [ 0, %.lr.ph.i25.preheader ]
  %i.al = add nsw i32 %.034.i.prol, -1            ; 2 uses
  %i.am = shl nuw nsw i64 %.05.i.prol, 1          ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i25.prol.loopexit, label %.lr.ph.i25.prol, !llvm.loop !717

.lr.ph.i25.prol.loopexit:                         ; preds = %.lr.ph.i25.prol, %.lr.ph.i25.preheader
  %.05.i.unr = phi i64 [ %i.ah, %.lr.ph.i25.preheader ], [ %i.am, %.lr.ph.i25.prol ]
  %.034.i.unr = phi i32 [ %i.ag, %.lr.ph.i25.preheader ], [ %i.al, %.lr.ph.i25.prol ]
  %.lcssa56.unr = phi i64 [ poison, %.lr.ph.i25.preheader ], [ %i.am, %.lr.ph.i25.prol ]
  %i.an = icmp ult i32 %i.ak, 7
  br i1 %i.an, label %sentinelScriptRetryDelay.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25.prol.loopexit, %.lr.ph.i25
  %.05.i = phi i64 [ %i.ao, %.lr.ph.i25 ], [ %.05.i.unr, %.lr.ph.i25.prol.loopexit ]
  %.034.i = phi i32 [ %i.ap, %.lr.ph.i25 ], [ %.034.i.unr, %.lr.ph.i25.prol.loopexit ] ; 2 uses
  %i.ao = shl i64 %.05.i, 8                       ; 2 uses
  %i.ap = add nsw i32 %.034.i, -8
  %i.aq = icmp sgt i32 %.034.i, 9
  br i1 %i.aq, label %.lr.ph.i25, label %sentinelScriptRetryDelay.exit, !llvm.loop !3

sentinelScriptRetryDelay.exit:                    ; preds = %.lr.ph.i25.prol.loopexit, %.lr.ph.i25, %bb.g
  %.0.lcssa.i = phi i64 [ %i.ah, %bb.g ], [ %.lcssa56.unr, %.lr.ph.i25.prol.loopexit ], [ %i.ao, %.lr.ph.i25 ]
  %i.ar = add nsw i64 %.0.lcssa.i, %i.af
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !566
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.at = or i32 %spec.select, %i.g
  %or.cond3.not = icmp eq i32 %i.at, 0
  br i1 %or.cond3.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !565
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !560
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef %i.aw, i32 noundef %spec.select, i32 noundef %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 96), align 32, !tbaa !546
  call void @listDelNode(ptr noundef %i.ax, ptr noundef nonnull %i.n) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !565 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !560 ; 2 uses
  %.not6.i = icmp eq ptr %i.ba, null
  br i1 %.not6.i, label %sentinelReleaseScriptJob.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.j, %.lr.ph.i26
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i26 ], [ 0, %bb.j ]
  %1 = phi ptr [ %i.bd, %.lr.ph.i26 ], [ %i.ba, %bb.j ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  call void @sdsfree(ptr noundef nonnull %1) #26
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !565 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !560 ; 2 uses
  %.not.i27 = icmp eq ptr %i.bd, null
  br i1 %.not.i27, label %sentinelReleaseScriptJob.exit, label %.lr.ph.i26, !llvm.loop !1

sentinelReleaseScriptJob.exit:                    ; preds = %.lr.ph.i26, %bb.j
  %.lcssa.i28 = phi ptr [ %i.az, %bb.j ], [ %i.bb, %.lr.ph.i26 ]
  call void @zfree(ptr noundef nonnull %.lcssa.i28) #26
  call void @zfree(ptr noundef nonnull %i.p) #26
  br label %bb.k

bb.k:                                             ; preds = %sentinelReleaseScriptJob.exit, %sentinelScriptRetryDelay.exit
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 72), align 8, !tbaa !545
  %i.bf = add nsw i32 %i.be, -1
  store i32 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 72), align 8, !tbaa !545
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %.loopexit, %bb.k
  %i.bg = call i32 @waitpid(i32 noundef -1, ptr noundef nonnull %i.a, i32 noundef 1) #26 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sentinelKillTimedoutScripts() local_unnamed_addr #0 !guid !720 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.a = tail call i64 @mstime() #26
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 96), align 32, !tbaa !546
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %0) #26
  %i.c = call ptr @listNext(ptr noundef nonnull %0) #26 ; 2 uses
  %.not7 = icmp eq ptr %i.c, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.d = phi ptr [ %i.v, %bb.d ], [ %i.c, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !572  ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !563
  %i.h = and i32 %i.g, 1
  %.not6 = icmp eq i32 %i.h, 0
  br i1 %.not6, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !566
  %i.k = sub nsw i64 %i.a, %i.j
  %i.l = load i64, ptr @sentinel_script_max_runtime, align 8, !tbaa !574
  %i.m = icmp sgt i64 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !565
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !560
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !567
  %i.s = sext i32 %i.r to i64
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.29, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef %i.p, i64 noundef %i.s)
  %i.t = load i32, ptr %i.q, align 8, !tbaa !567
  %i.u = call i32 @kill(i32 noundef %i.t, i32 noundef 9) #26 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.v = call ptr @listNext(ptr noundef nonnull %0) #26 ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !719

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @sentinelPendingScriptsCommand(ptr noundef %0) local_unnamed_addr #0 !guid !724 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 96), align 32, !tbaa !546
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !570
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef %i.c) #26
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 96), align 32, !tbaa !546
  call void @listRewind(ptr noundef %i.d, ptr noundef nonnull %1) #26
  %i.e = call ptr @listNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not43 = icmp eq ptr %i.e, null
  br i1 %.not43, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.a, %bb.h
  %i.f = phi ptr [ %i.al, %bb.h ], [ %i.e, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !572  ; 7 uses
  call void @addReplyMapLen(ptr noundef %0, i64 noundef 5) #26
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.31) #26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !565
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph45
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph45 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !560
  %.not35 = icmp eq ptr %i.l, null
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not35, label %bb.c, label %bb.b, !llvm.loop !721

bb.c:                                             ; preds = %bb.b
  call void @addReplyArrayLen(ptr noundef %0, i64 noundef %indvars.iv) #26
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !565
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !560  ; 2 uses
  %.not3641 = icmp eq ptr %i.n, null
  br i1 %.not3641, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %.lr.ph ], [ 0, %bb.c ]
  %2 = phi ptr [ %i.q, %.lr.ph ], [ %i.n, %bb.c ]
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull %2) #26
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !565
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next49
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !560  ; 2 uses
  %.not36 = icmp eq ptr %i.q, null
  br i1 %.not36, label %._crit_edge, label %.lr.ph, !llvm.loop !722

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.32) #26
  %i.r = load i32, ptr %i.h, align 8, !tbaa !563
  %i.s = and i32 %i.r, 1
  %.not37 = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not37, ptr @.str.34, ptr @.str.33
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull %i.t) #26
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.35) #26
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !567
  %i.w = sext i32 %i.v to i64
  call void @addReplyBulkLongLong(ptr noundef %0, i64 noundef %i.w) #26
  %i.x = load i32, ptr %i.h, align 8, !tbaa !563
  %i.y = and i32 %i.x, 1
  %.not38 = icmp eq i32 %i.y, 0
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.36) #26
  %i.z = call i64 @mstime() #26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !566
  %i.ac = sub nsw i64 %i.z, %i.ab
  br label %bb.h

bb.e:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !566 ; 2 uses
  %.not39 = icmp eq i64 %i.ae, 0
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = call i64 @mstime() #26
  %i.ag = sub nsw i64 %i.ae, %i.af
  %i.ah = call i64 @llvm.smax.i64(i64 %i.ag, i64 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %spec.store.select = phi i64 [ %i.ah, %bb.f ], [ 0, %bb.e ]
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.37) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %spec.store.select.sink = phi i64 [ %spec.store.select, %bb.g ], [ %i.ac, %bb.d ]
  call void @addReplyBulkLongLong(ptr noundef %0, i64 noundef %spec.store.select.sink) #26
  call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.38) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !564
  %i.ak = sext i32 %i.aj to i64
  call void @addReplyBulkLongLong(ptr noundef %0, i64 noundef %i.ak) #26
  %i.al = call ptr @listNext(ptr noundef nonnull %1) #26 ; 2 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %._crit_edge46, label %.lr.ph45, !llvm.loop !723

._crit_edge46:                                    ; preds = %bb.h, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @addReplyMapLen(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @addReplyBulkCString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @addReplyBulkLongLong(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sentinelCallClientReconfScript(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 !guid !725 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !496
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !559
  %i.h = sext i32 %i.g to i64
  %i.i = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.h) #26 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !559
  %i.l = sext i32 %i.k to i64
  %i.m = call i32 @ll2string(ptr noundef nonnull %i.b, i64 noundef 32, i64 noundef %i.l) #26 ; 0 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !496
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !493
  %i.q = icmp eq i32 %1, 131072
  %i.r = select i1 %i.q, ptr @.str.39, ptr @.str.40
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @sentinel, i64 156), align 4, !tbaa !561
  %.not.i = icmp eq i32 %i.s, 0
  %.in.idx.i = select i1 %.not.i, i64 8, i64 0    ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %3, i64 %.in.idx.i
  %i.t = load ptr, ptr %.in.i, align 8, !tbaa !560
  %.in.i10 = getelementptr inbounds nuw i8, ptr %4, i64 %.in.idx.i
  %i.u = load ptr, ptr %.in.i10, align 8, !tbaa !560
  call void (ptr, ...) @sentinelScheduleScriptExecution(ptr noundef %i.n, ptr noundef %i.p, ptr noundef nonnull %i.r, ptr noundef %2, ptr noundef %i.t, ptr noundef nonnull %i.a, ptr noundef %i.u, ptr noundef nonnull %i.b, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare i32 @ll2string(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createInstanceLink() local_unnamed_addr #0 !guid !726 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @zmalloc(i64 noundef 96) #29 ; 10 uses
  store i32 1, ptr %i.a, align 8, !tbaa !578
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !579
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !580
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 0, ptr %i.e, align 8, !tbaa !581
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  %i.f = tail call i64 @mstime() #26
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.f, ptr %i.g, align 8, !tbaa !582
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %i.h, align 8, !tbaa !583
  %i.i = tail call i64 @mstime() #26
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.i, ptr %i.j, align 8, !tbaa !584
  %i.k = tail call i64 @mstime() #26
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.k, ptr %i.l, align 8, !tbaa !585
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @instanceLinkCloseConnection(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 !guid !727 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !586
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !586
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !580
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !587
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.f, align 8, !tbaa !587
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr null, ptr %i.i, align 8, !tbaa !600
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.j, align 4, !tbaa !579
  tail call void @redisAsyncFree(ptr noundef nonnull %1) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

declare void @redisAsyncFree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @releaseInstanceLink(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 !guid !729 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !578    ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !573

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.21, i32 noundef 1047) #26
  tail call void @abort() #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.c, ptr %0, align 8, !tbaa !578
  %.not = icmp eq i32 %i.c, 0
end_hunk_0
