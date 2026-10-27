Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/cluster_legacy?download=true
inline.NumInlined: 443
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@clusterNodeAddFailureReport:bb.a
  %i.k = call i64 @mstime() #30
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !164
  %i.m = call ptr @listAddNodeTail(ptr noundef %i.b, ptr noundef nonnull %i.j) #30 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i32 %.0
}

declare void @listRewind(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @listNext(ptr noundef) local_unnamed_addr #2

declare ptr @listAddNodeTail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterNodeCleanupFailureReports(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8168), align 8, !tbaa !140
  %i.d = shl nsw i64 %i.c, 1
  %i.e = tail call i64 @mstime() #30
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %1) #30
  %i.f = call ptr @listNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.g = phi ptr [ %i.n, %bb.c ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !164
  %i.l = sub nsw i64 %i.e, %i.k
  %i.m = icmp sgt i64 %i.l, %i.d
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @listDelNode(ptr noundef %i.b, ptr noundef nonnull %i.g) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.n = call ptr @listNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

declare void @listDelNode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @clusterNodeDelFailureReport(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.listIter, align 8           ; 5 uses
  %3 = alloca %struct.listIter, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %3) #30
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = call ptr @listNext(ptr noundef nonnull %3) #30 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %bb.d, label %bb.b, !llvm.loop !252

bb.d:                                             ; preds = %bb.c
  call void @listDelNode(ptr noundef %i.b, ptr noundef nonnull %i.c) #30
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8168), align 8, !tbaa !140
  %i.j = shl nsw i64 %i.i, 1
  %i.k = call i64 @mstime() #30
  call void @listRewind(ptr noundef %i.h, ptr noundef nonnull %2) #30
  %i.l = call ptr @listNext(ptr noundef nonnull %2) #30 ; 2 uses
  %.not7.i = icmp eq ptr %i.l, null
  br i1 %.not7.i, label %clusterNodeCleanupFailureReports.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %i.m = phi ptr [ %i.t, %bb.f ], [ %i.l, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !161
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !164
  %i.r = sub nsw i64 %i.k, %i.q
  %i.s = icmp sgt i64 %i.r, %i.j
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  call void @listDelNode(ptr noundef %i.h, ptr noundef nonnull %i.m) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.t = call ptr @listNext(ptr noundef nonnull %2) #30 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %clusterNodeCleanupFailureReports.exit, label %.lr.ph.i, !llvm.loop !8

clusterNodeCleanupFailureReports.exit:            ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %clusterNodeCleanupFailureReports.exit
  %.0 = phi i32 [ 1, %clusterNodeCleanupFailureReports.exit ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @clusterNodeFailureReportsCount(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8168), align 8, !tbaa !140
  %i.d = shl nsw i64 %i.c, 1
  %i.e = tail call i64 @mstime() #30
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %1) #30
  %i.f = call ptr @listNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not7.i = icmp eq ptr %i.f, null
  br i1 %.not7.i, label %clusterNodeCleanupFailureReports.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.g = phi ptr [ %i.n, %bb.c ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !164
  %i.l = sub nsw i64 %i.e, %i.k
  %i.m = icmp sgt i64 %i.l, %i.d
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @listDelNode(ptr noundef %i.b, ptr noundef nonnull %i.g) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.n = call ptr @listNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %clusterNodeCleanupFailureReports.exit, label %.lr.ph.i, !llvm.loop !8

clusterNodeCleanupFailureReports.exit:            ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !108
  %i.r = trunc i64 %i.q to i32
  ret i32 %i.r
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @clusterNodeRemoveSlave(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2168 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70   ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.j = add nuw nsw i32 %i.i, 1                  ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.b
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.m = xor i32 %i.i, -1
  %i.n = add nsw i32 %i.b, %i.m
  %i.o = zext nneg i32 %i.j to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.o
  %i.q = sext i32 %i.n to i64
  %i.r = shl nsw i64 %i.q, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.p, i64 %i.r, i1 false)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = phi i32 [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.a, align 8, !tbaa !70
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !97
  %i.x = and i32 %i.w, -257
  store i32 %i.x, ptr %i.v, align 8, !tbaa !97
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !5

.loopexit:                                        ; preds = %bb.g, %bb.a, %bb.e, %bb.f
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ -1, %bb.a ], [ -1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @clusterCountNonFailingSlaves(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.08 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load i32, ptr %i.i, align 8, !tbaa !97
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 1
  %i.m = xor i32 %i.l, 1
  %spec.select = add nuw nsw i32 %i.m, %.08
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !97
  %i.s = lshr i32 %i.r, 3
  %i.t = and i32 %i.s, 1
  %i.u = xor i32 %i.t, 1
  %spec.select.1 = add nuw nsw i32 %i.u, %spec.select ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !9

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.08.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !97
  %i.z = lshr i32 %i.y, 3
  %i.aa = and i32 %i.z, 1
  %i.ab = xor i32 %i.aa, 1
  %spec.select.epil = add nuw nsw i32 %i.ab, %.08.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local void @freeClusterNode(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71   ; 9 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.f = icmp ult i32 %i.b, 8
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.b ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.b ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2184
  store ptr null, ptr %i.i, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2184
  store ptr null, ptr %i.m, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2184
  store ptr null, ptr %i.q, align 8, !tbaa !81
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2184
  store ptr null, ptr %i.u, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2184
  store ptr null, ptr %i.y, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2184
  store ptr null, ptr %i.ac, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2184
  store ptr null, ptr %i.ag, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !72
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2184
  store ptr null, ptr %i.ak, align 8, !tbaa !81
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !253

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2184
  store ptr null, ptr %i.an, align 8, !tbaa !81
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !254

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !97
  %i.aq = and i32 %i.ap, 2
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %clusterNodeRemoveSlave.exit, label %bb.d

end_hunk_0
