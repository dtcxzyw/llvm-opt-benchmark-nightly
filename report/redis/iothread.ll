inline.NumInlined: 30
inline.NumDeleted: 9
begin_hunk_0_@assignClientToIOThread:bb.a
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !117

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.015.lcssa = phi i32 [ 0, %.preheader ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil ] ; 2 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), align 8, !tbaa !9
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), align 8, !tbaa !9
  %i.o = trunc i32 %.015.lcssa to i8
  store i8 %i.o, ptr %i.a, align 8, !tbaa !39
  %i.p = zext nneg i32 %.015.lcssa to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !9
  %i.t = tail call noalias dereferenceable_or_null(512) ptr @zmalloc(i64 noundef 512) #17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.t, ptr %i.u, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81   ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !82
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %connUnbindEventLoop.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !86
  %i.ad = tail call i32 %i.ac(ptr noundef nonnull %i.w, ptr noundef null) #15, !inline_history !88 ; 0 uses
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !85
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !89
  %i.ah = tail call i32 %i.ag(ptr noundef nonnull %i.w, ptr noundef null, i32 noundef 0) #15, !inline_history !90 ; 0 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 200
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !91 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.ak(ptr noundef nonnull %i.w) #15, !inline_history !92
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.x, align 8, !tbaa !82
  br label %connUnbindEventLoop.exit

connUnbindEventLoop.exit:                         ; preds = %._crit_edge, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.am = load i8, ptr %i.al, align 2, !tbaa !80
  %i.an = and i8 %i.am, -4
  store i8 %i.an, ptr %i.al, align 2, !tbaa !80
  tail call void @enqueuePendingClienstToIOThreads(ptr noundef nonnull %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.01420 = phi i32 [ 2147483647, %.lr.ph.preheader.new ], [ %spec.select18.3, %.lr.ph ] ; 2 uses
  %.01519 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select.3, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !9  ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %.01420
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.aq, i32 %i.ar, i32 %.01519
  %spec.select18 = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %.01420) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), i64 %indvars.iv.next
  %i.at = load i32, ptr %i.as, align 4, !tbaa !9  ; 2 uses
  %i.au = icmp slt i32 %i.at, %spec.select18
  %i.av = trunc nuw nsw i64 %indvars.iv.next to i32
  %spec.select.1 = select i1 %i.au, i32 %i.av, i32 %spec.select
  %spec.select18.1 = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %spec.select18) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), i64 %indvars.iv.next.1
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !9  ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %spec.select18.1
  %i.az = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %spec.select.2 = select i1 %i.ay, i32 %i.az, i32 %spec.select.1
  %spec.select18.2 = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %spec.select18.1) ; 2 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), i64 %indvars.iv.next.2
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !9  ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %spec.select18.2
  %i.bd = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %spec.select.3 = select i1 %i.bc, i32 %i.bd, i32 %spec.select.2 ; 3 uses
  %spec.select18.3 = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %spec.select18.2) ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !120
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @resizeAllIOThreadsEventLoops(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116 ; 2 uses
  %i.b = icmp slt i32 %i.a, 2
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -1
  tail call void @pauseIOThreadsRange(i32 noundef 1, i32 noundef %i.c)
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.f = trunc i64 %0 to i32
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.08.lcssa = phi i32 [ 0, %bb.b ], [ %spec.select, %bb.c ]
  %.lcssa = phi i32 [ %i.d, %bb.b ], [ %i.m, %bb.c ]
  %i.g = add nsw i32 %.lcssa, -1
  tail call void @resumeIOThreadsRange(i32 noundef 1, i32 noundef %i.g)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.089 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.c ]
  %i.h = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !122
  %i.k = tail call i32 @aeResizeSetSize(ptr noundef %i.j, i32 noundef %i.f) #15
  %i.l = icmp eq i32 %i.k, -1
  %spec.select = select i1 %i.l, i32 -1, i32 %.089 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.c, label %._crit_edge, !llvm.loop !123

bb.d:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i32 [ %.08.lcssa, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @pauseAllIOThreads() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116
  %i.b = add nsw i32 %i.a, -1
  tail call void @pauseIOThreadsRange(i32 noundef 1, i32 noundef %i.b)
  ret void
}

declare i32 @aeResizeSetSize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @resumeAllIOThreads() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116
  %i.b = add nsw i32 %i.a, -1
  tail call void @resumeIOThreadsRange(i32 noundef 1, i32 noundef %i.b)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pauseIOThreadsRange(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2420), align 4, !tbaa !124
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit35, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %0, 0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4
  %i.d = icmp slt i32 %1, %i.c
  %or.cond = select i1 %i.b, i1 %i.d, i1 false, !prof !125
  %i.e = icmp sle i32 %0, %1
  %i.f = and i1 %i.e, %or.cond
  br i1 %i.f, label %bb.d, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 359) #15
  tail call void @abort() #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i64 @pthread_self() #18
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8), align 8, !tbaa !126
  %.not33 = icmp eq i64 %i.g, %i.h
  br i1 %.not33, label %.lr.ph.preheader, label %bb.e, !prof !42

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.i = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 360) #15
  tail call void @abort() #16
  unreachable

.lr.ph41.preheader:                               ; preds = %bb.i
  %i.j = zext nneg i32 %0 to i64
  br label %.lr.ph41

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @PausedIOThreads, i64 %indvars.iv ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !9    ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !9
  %i.n = icmp sgt i32 %i.l, 0
  br i1 %i.n, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load atomic i32, ptr %i.p seq_cst, align 16
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 371) #15
  tail call void @abort() #16
  unreachable

bb.h:                                             ; preds = %bb.f
  store atomic i32 1, ptr %i.p seq_cst, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !127
  %i.u = tail call i32 @triggerEventNotifier(ptr noundef %i.t) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = trunc nuw i64 %indvars.iv.next to i32
  %.not29 = icmp slt i32 %1, %i.v
  br i1 %.not29, label %.lr.ph41.preheader, label %.lr.ph, !llvm.loop !128

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %.loopexit.1
  %indvars.iv43 = phi i64 [ %i.j, %.lr.ph41.preheader ], [ %indvars.iv.next44.1, %.loopexit.1 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @PausedIOThreads, i64 %indvars.iv43
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %.loopexit.1, label %.preheader.1

.preheader.1:                                     ; preds = %.lr.ph41
  %i.z = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv43
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.preheader.1, %bb.j
  %i.ab = load atomic i32, ptr %i.aa seq_cst, align 16
  %.not31.1 = icmp eq i32 %i.ab, 2
  br i1 %.not31.1, label %.loopexit.1, label %bb.j, !llvm.loop !129

.loopexit.1:                                      ; preds = %bb.j, %.lr.ph41
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.ac = trunc nuw i64 %indvars.iv.next44.1 to i32
  %.not30 = icmp slt i32 %1, %i.ac
  br i1 %.not30, label %.loopexit35, label %.lr.ph41, !llvm.loop !130

.loopexit35:                                      ; preds = %.loopexit.1, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #6

declare i32 @triggerEventNotifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @resumeIOThreadsRange(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2420), align 4, !tbaa !124
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit30, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %0, 0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4
  %i.d = icmp slt i32 %1, %i.c
  %or.cond = select i1 %i.b, i1 %i.d, i1 false, !prof !125
  %i.e = icmp sle i32 %0, %1
  %i.f = and i1 %i.e, %or.cond
  br i1 %i.f, label %bb.d, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 391) #15
  tail call void @abort() #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i64 @pthread_self() #18
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8), align 8, !tbaa !126
  %.not29 = icmp eq i64 %i.g, %i.h
  br i1 %.not29, label %.lr.ph.preheader, label %bb.e, !prof !42

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.i = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 392) #15
  tail call void @abort() #16
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %indvars.iv = phi i64 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @PausedIOThreads, i64 %indvars.iv ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9    ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %.lr.ph
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 395) #15
  tail call void @abort() #16
  unreachable

bb.g:                                             ; preds = %.lr.ph
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !9
  %.not26 = icmp eq i32 %i.k, 1
  br i1 %.not26, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.p = load atomic i32, ptr %i.o seq_cst, align 16
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.j, label %bb.i, !prof !42

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 403) #15
  tail call void @abort() #16
  unreachable

bb.j:                                             ; preds = %bb.h
  store atomic i32 3, ptr %i.o seq_cst, align 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.k
  %i.r = load atomic i32, ptr %i.o seq_cst, align 16
  %.not27 = icmp eq i32 %i.r, 0
  br i1 %.not27, label %.loopexit, label %bb.k, !llvm.loop !131

.loopexit:                                        ; preds = %bb.k, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = trunc nuw i64 %indvars.iv.next to i32
  %.not25 = icmp slt i32 %1, %i.s
  br i1 %.not25, label %.loopexit30, label %.lr.ph, !llvm.loop !132

.loopexit30:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @handlePauseAndResume(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 16
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store atomic i32 2, ptr %i.a seq_cst, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %i.d = load atomic i32, ptr %i.a seq_cst, align 16
  %.not = icmp eq i32 %i.d, 3
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !133

bb.d:                                             ; preds = %bb.c
  store atomic i32 0, ptr %i.a seq_cst, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sendPendingClientsToIOThreads() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.u, %bb.c ]
  ret i32 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi i32 [ %i.t, %bb.c ], [ %i.a, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %.014 = phi i32 [ %i.u, %bb.c ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsToIOThreads, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !97
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.k) #15 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load ptr, ptr %i.m, align 32, !tbaa !113
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !100
  tail call void @listJoin(ptr noundef %i.n, ptr noundef %i.o) #15
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #15 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !127
  %i.s = tail call i32 @triggerEventNotifier(ptr noundef %i.r) #15 ; 0 uses
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.t = phi i32 [ %.pre, %bb.b ], [ %i.c, %.lr.ph ] ; 2 uses
  %i.u = add nsw i32 %.014, %i.h                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = sext i32 %i.t to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !134
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

declare void @listJoin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @prefetchIOThreadCommands(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 4 uses
  %i.a = load i8, ptr %0, align 64, !tbaa !99
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @mainThreadProcessingClients, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !97
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call i32 @determinePrefetchCount(i32 noundef %i.g) #15 ; 6 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %i.h, 257
  br i1 %i.j, label %bb.d, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 484) #15
  tail call void @abort() #16
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.k = load i8, ptr %0, align 64, !tbaa !99
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @mainThreadProcessingClients, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100
  call void @listRewind(ptr noundef %i.n, ptr noundef nonnull %1) #15
  %i.o = icmp sgt i32 %i.h, 0
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.p = call ptr @listNext(ptr noundef nonnull %1) #15 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.lr.ph32.preheader, label %bb.e

.lr.ph32.preheader:                               ; preds = %bb.e, %.lr.ph
  %wide.trip.count41 = zext nneg i32 %i.h to i64
  br label %.lr.ph32

bb.e:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54   ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @prefetchIOThreadCommands.c, i64 %indvars.iv
  store ptr %i.r, ptr %i.s, align 8, !tbaa !135
  call void @llvm.prefetch.p0(ptr %i.r, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %i.t, i32 0, i32 3, i32 1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph32.preheader, label %.lr.ph, !llvm.loop !136

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %bb.h
  %indvars.iv36 = phi i64 [ 0, %.lr.ph32.preheader ], [ %indvars.iv.next37, %bb.h ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @prefetchIOThreadCommands.c, i64 %indvars.iv36 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !135
  %i.w = call i32 @addCommandToBatch(ptr noundef %i.v) #15
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %._crit_edge.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph32
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !135  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 248
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !137 ; 2 uses
  %.not27 = icmp eq ptr %i.aa, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.prefetch.p0(ptr nonnull %i.aa, i32 0, i32 3, i32 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 824
  call void @llvm.prefetch.p0(ptr nonnull %i.ab, i32 0, i32 3, i32 1)
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge, label %.lr.ph32, !llvm.loop !138

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph32
  %indvars40.le = trunc i64 %indvars.iv36 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %._crit_edge.loopexit.split.loop.exit, %bb.d
  %.023.lcssa = phi i32 [ %indvars40.le, %._crit_edge.loopexit.split.loop.exit ], [ 0, %bb.d ], [ %i.h, %bb.h ]
  call void @prefetchCommands() #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge
  %.022 = phi i32 [ %.023.lcssa, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.022
}

declare i32 @determinePrefetchCount(i32 noundef) local_unnamed_addr #1

declare void @listRewind(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @listNext(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #9

declare i32 @addCommandToBatch(ptr noundef) local_unnamed_addr #1

declare void @prefetchCommands() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @processClientsFromIOThread(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 64, !tbaa !99
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw [40 x i8], ptr @mainThreadPendingClientsMutexes, i64 %i.b
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #15 ; 0 uses
  %i.e = load i8, ptr %0, align 64, !tbaa !99
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @mainThreadProcessingClients, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClients, i64 %i.f
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  tail call void @listJoin(ptr noundef %i.h, ptr noundef %i.j) #15
  %i.k = load i8, ptr %0, align 64, !tbaa !99
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [40 x i8], ptr @mainThreadPendingClientsMutexes, i64 %i.l
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.m) #15 ; 0 uses
  %i.o = load i8, ptr %0, align 64, !tbaa !99
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @mainThreadProcessingClients, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !100
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !97   ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @resetCommandsBatch() #15
  %i.v = load i8, ptr %0, align 64, !tbaa !99     ; 2 uses
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @mainThreadProcessingClients, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !97
  %.not86 = icmp eq i64 %i.aa, 0
  br i1 %.not86, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %sendPendingClientsToIOThreadIfNeeded.exit
  %.04988 = phi ptr [ null, %.lr.ph ], [ %.1, %sendPendingClientsToIOThreadIfNeeded.exit ] ; 2 uses
  %.05087 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %sendPendingClientsToIOThreadIfNeeded.exit ] ; 2 uses
  %i.af = icmp slt i32 %.05087, 1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @resetCommandsBatch() #15
  %i.ag = tail call i32 @prefetchIOThreadCommands(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.151 = phi i32 [ %i.ag, %bb.d ], [ %.05087, %bb.c ]
  %i.ah = add nsw i32 %.151, -1
  %.not54 = icmp eq ptr %.04988, null
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @zfree(ptr noundef nonnull %.04988) #15
  br label %bb.g
end_hunk_0
begin_hunk_1_@processClientsFromIOThread:bb.a
bb.o:                                             ; preds = %bb.m
  tail call void @updateClientDataFromIOThread(ptr noundef nonnull %i.ao)
  %i.az = load i64, ptr %i.as, align 8, !tbaa !13
  %i.ba = and i64 %i.az, 2
  %.not.i = icmp eq i64 %i.ba, 0
  %.pre14.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8064), align 8, !tbaa !55 ; 4 uses
  br i1 %.not.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 344 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !78
  %i.bd = add nsw i64 %i.bc, 1000
  %.not9.i = icmp sgt i64 %i.bd, %.pre14.i
  br i1 %.not9.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.pre14.i, ptr %i.bb, align 8, !tbaa !78
  %i.be = tail call i32 @replicationCronRunMasterClient() #15
  %.not10.i = icmp eq i32 %i.be, 0
  br i1 %.not10.i, label %._crit_edge.i, label %sendPendingClientsToIOThreadIfNeeded.exit

._crit_edge.i:                                    ; preds = %bb.q
  %.pre.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8064), align 8, !tbaa !55
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i, %bb.p, %bb.o
  %i.bf = phi i64 [ %.pre.i, %._crit_edge.i ], [ %.pre14.i, %bb.p ], [ %.pre14.i, %bb.o ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 336 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !79
  %i.bi = add nsw i64 %i.bh, 1000
  %.not11.i = icmp sgt i64 %i.bi, %i.bf
  br i1 %.not11.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = load i8, ptr %i.ap, align 2, !tbaa !80
  %i.bk = and i8 %i.bj, 32
  %.not12.i = icmp eq i8 %i.bk, 0
  br i1 %.not12.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !79
  %i.bl = tail call i32 @clientsCronRunClient(ptr noundef nonnull %i.ao) #15
  %.not13.i = icmp eq i32 %i.bl, 0
  br i1 %.not13.i, label %runClientCronFromIOThread.exit, label %sendPendingClientsToIOThreadIfNeeded.exit

bb.u:                                             ; preds = %bb.s
  %i.bm = tail call i32 @updateClientMemUsageAndBucket(ptr noundef nonnull %i.ao) #15 ; 0 uses
  br label %runClientCronFromIOThread.exit

runClientCronFromIOThread.exit:                   ; preds = %bb.u, %bb.t
  %i.bn = tail call i32 @isClientReadErrorFatal(ptr noundef nonnull %i.ao) #15
  %.not60 = icmp eq i32 %i.bn, 0
  br i1 %.not60, label %bb.v, label %bb.x

bb.v:                                             ; preds = %runClientCronFromIOThread.exit
  %i.bo = load i8, ptr %i.ap, align 2, !tbaa !80
  %i.bp = and i8 %i.bo, 4
  %.not61 = icmp eq i8 %i.bp, 0
  br i1 %.not61, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = load i64, ptr %i.as, align 8, !tbaa !13
  %i.br = or i64 %i.bq, 1073741824
  store i64 %i.br, ptr %i.as, align 8, !tbaa !13
  %i.bs = tail call i32 @processPendingCommandAndInputBuffer(ptr noundef nonnull %i.ao) #15
  %i.bt = icmp eq i32 %i.bs, -1
  br i1 %i.bt, label %sendPendingClientsToIOThreadIfNeeded.exit, label %bb.x, !llvm.loop !140

bb.x:                                             ; preds = %bb.w, %bb.v, %runClientCronFromIOThread.exit
  %i.bu = load i64, ptr %i.as, align 8, !tbaa !13
  %i.bv = and i64 %i.bu, 2097152
  %.not62 = icmp eq i64 %i.bv, 0
  br i1 %.not62, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bw = tail call i32 @clientHasPendingReplies(ptr noundef nonnull %i.ao) #15
  %.not63 = icmp eq i32 %i.bw, 0
  br i1 %.not63, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @putClientInPendingWriteQueue(ptr noundef nonnull %i.ao) #15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.bx = load i64, ptr %i.as, align 8, !tbaa !13 ; 6 uses
  %i.by = and i64 %i.bx, 27021600012633236
  %.not.i67 = icmp eq i64 %i.by, 0
  br i1 %.not.i67, label %bb.ab, label %isClientMustHandledByMainThread.exit.thread81

bb.ab:                                            ; preds = %bb.aa
  %i.bz = and i64 %i.bx, 2
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7476), align 4
  %i.cc = icmp eq i32 %i.cb, 13
  %or.cond.i = select i1 %i.ca, i1 %i.cc, i1 false
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7480), align 8
  %i.ce = icmp eq i32 %i.cd, 0
  %or.cond3.i = select i1 %or.cond.i, i1 %i.ce, i1 false
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8692), align 4
  %i.cg = icmp eq i32 %i.cf, 0
  %or.cond5.i = select i1 %or.cond3.i, i1 %i.cg, i1 false
  %.pre89 = and i64 %i.bx, 1                      ; 2 uses
  br i1 %or.cond5.i, label %isClientMustHandledByMainThread.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not14.i = icmp eq i64 %.pre89, 0
  br i1 %.not14.i, label %isClientMustHandledByMainThread.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ao, i64 356
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !114
  switch i32 %i.ci, label %isClientMustHandledByMainThread.exit [
    i32 9, label %bb.ae
    i32 12, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ao, i64 360
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !115
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.af, label %isClientMustHandledByMainThread.exit

bb.af:                                            ; preds = %bb.ae
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ao, i64 832
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !50
  %.not15.i.not = icmp eq ptr %i.cn, null
  br i1 %.not15.i.not, label %isClientMustHandledByMainThread.exit.thread81, label %sendPendingClientsToIOThreadIfNeeded.exit

isClientMustHandledByMainThread.exit:             ; preds = %bb.ac, %bb.ad, %bb.ae
  %.old = and i64 %i.bx, 3
  %.not16.i.not.old = icmp eq i64 %.old, 0
  br i1 %.not16.i.not.old, label %isClientMustHandledByMainThread.exit.thread, label %isClientMustHandledByMainThread.exit.thread81

isClientMustHandledByMainThread.exit.thread81:    ; preds = %bb.af, %bb.aa, %isClientMustHandledByMainThread.exit
  tail call void @keepClientInMainThread(ptr noundef nonnull %i.ao)
  br label %sendPendingClientsToIOThreadIfNeeded.exit, !llvm.loop !140

isClientMustHandledByMainThread.exit.thread:      ; preds = %bb.ab, %isClientMustHandledByMainThread.exit
  %.not65 = icmp eq i64 %.pre89, 0
  br i1 %.not65, label %bb.ag, label %sendPendingClientsToIOThreadIfNeeded.exit, !llvm.loop !140

bb.ag:                                            ; preds = %isClientMustHandledByMainThread.exit.thread
  %i.co = and i64 %i.bx, 2097152
  %.not66 = icmp eq i64 %i.co, 0
  br i1 %.not66, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cp = and i64 %i.bx, -27021600014730390
  store i64 %i.cp, ptr %i.as, align 8, !tbaa !13
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1456), align 8, !tbaa !103
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ao, i64 880
  tail call void @listUnlinkNode(ptr noundef %i.cq, ptr noundef nonnull %i.cr) #15
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !39  ; 2 uses
  store i8 %i.ct, ptr %i.av, align 1, !tbaa !41
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsToIOThreads, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !100
  tail call void @listLinkNodeHead(ptr noundef %i.cw, ptr noundef nonnull %i.am) #15
  %i.cx = load i8, ptr %0, align 64, !tbaa !99
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsToIOThreads, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !100
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !97
  %i.dd = icmp ult i64 %i.dc, 16
  br i1 %i.dd, label %sendPendingClientsToIOThreadIfNeeded.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6672), align 8, !tbaa !141
  %i.df = icmp eq i32 %i.de, 1
  %i.dg = load i32, ptr @ProcessingEventsWhileBlocked, align 4
  %i.dh = icmp ne i32 %i.dg, 0
  %or.cond3.i70 = select i1 %i.df, i1 true, i1 %i.dh
  br i1 %or.cond3.i70, label %sendPendingClientsToIOThreadIfNeeded.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ab) #15 ; 0 uses
  %i.dj = load ptr, ptr %i.ac, align 32, !tbaa !113 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !97
  %i.dm = load i8, ptr %0, align 64, !tbaa !99
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsToIOThreads, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !100
  tail call void @listJoin(ptr noundef %i.dj, ptr noundef %i.dp) #15
  %i.dq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ab) #15 ; 0 uses
  %i.dr = and i64 %i.dl, 4294967295
  %.not.i71 = icmp eq i64 %i.dr, 0
  br i1 %.not.i71, label %bb.al, label %sendPendingClientsToIOThreadIfNeeded.exit

bb.al:                                            ; preds = %bb.ak
  %i.ds = load atomic i32, ptr %i.ad seq_cst, align 4
  %.not21.i = icmp eq i32 %i.ds, 0
  br i1 %.not21.i, label %bb.am, label %sendPendingClientsToIOThreadIfNeeded.exit

bb.am:                                            ; preds = %bb.al
  %i.dt = load ptr, ptr %i.ae, align 16, !tbaa !127
  %i.du = tail call i32 @triggerEventNotifier(ptr noundef %i.dt) #15 ; 0 uses
  br label %sendPendingClientsToIOThreadIfNeeded.exit

sendPendingClientsToIOThreadIfNeeded.exit:        ; preds = %bb.af, %bb.t, %bb.q, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %isClientMustHandledByMainThread.exit.thread, %bb.w, %isClientMustHandledByMainThread.exit.thread81, %bb.n
  %.1 = phi ptr [ %i.am, %bb.n ], [ null, %bb.am ], [ %i.am, %isClientMustHandledByMainThread.exit.thread81 ], [ %i.am, %bb.w ], [ %i.am, %isClientMustHandledByMainThread.exit.thread ], [ null, %bb.ai ], [ %i.am, %bb.t ], [ null, %bb.aj ], [ null, %bb.ak ], [ null, %bb.al ], [ %i.am, %bb.q ], [ %i.am, %bb.af ] ; 3 uses
  %i.dv = load i8, ptr %0, align 64, !tbaa !99    ; 2 uses
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr @mainThreadProcessingClients, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !100
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !97
  %.not = icmp eq i64 %i.ea, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %sendPendingClientsToIOThreadIfNeeded.exit
  %.not53 = icmp eq ptr %.1, null
  br i1 %.not53, label %._crit_edge.thread, label %bb.an

bb.an:                                            ; preds = %._crit_edge
  tail call void @zfree(ptr noundef nonnull %.1) #15
  %.pre = load i8, ptr %0, align 64, !tbaa !99
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %bb.an, %._crit_edge
  %i.eb = phi i8 [ %.pre, %bb.an ], [ %i.dv, %._crit_edge ], [ %i.v, %bb.b ]
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsToIOThreads, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !100
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !97
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %sendPendingClientsToIOThreadIfNeeded.exit76, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.thread
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6672), align 8, !tbaa !141
  %i.ej = icmp eq i32 %i.ei, 1
  %i.ek = load i32, ptr @ProcessingEventsWhileBlocked, align 4
  %i.el = icmp ne i32 %i.ek, 0
  %or.cond3.i73 = select i1 %i.ej, i1 true, i1 %i.el
  br i1 %or.cond3.i73, label %sendPendingClientsToIOThreadIfNeeded.exit76, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.en = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.em) #15 ; 0 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ep = load ptr, ptr %i.eo, align 32, !tbaa !113 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !97
  %i.es = load i8, ptr %0, align 64, !tbaa !99
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsToIOThreads, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !100
  tail call void @listJoin(ptr noundef %i.ep, ptr noundef %i.ev) #15
  %i.ew = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.em) #15 ; 0 uses
  %i.ex = and i64 %i.er, 4294967295
  %.not.i74 = icmp eq i64 %i.ex, 0
  br i1 %.not.i74, label %bb.aq, label %sendPendingClientsToIOThreadIfNeeded.exit76

bb.aq:                                            ; preds = %bb.ap
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ez = load atomic i32, ptr %i.ey seq_cst, align 4
  %.not21.i75 = icmp eq i32 %i.ez, 0
  br i1 %.not21.i75, label %bb.ar, label %sendPendingClientsToIOThreadIfNeeded.exit76

bb.ar:                                            ; preds = %bb.aq
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fb = load ptr, ptr %i.fa, align 16, !tbaa !127
  %i.fc = tail call i32 @triggerEventNotifier(ptr noundef %i.fb) #15 ; 0 uses
  br label %sendPendingClientsToIOThreadIfNeeded.exit76

sendPendingClientsToIOThreadIfNeeded.exit76:      ; preds = %._crit_edge.thread, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %i.fd = trunc i64 %i.t to i32
  br label %bb.as

bb.as:                                            ; preds = %bb.a, %sendPendingClientsToIOThreadIfNeeded.exit76
  %.0 = phi i32 [ %i.fd, %sendPendingClientsToIOThreadIfNeeded.exit76 ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @resetCommandsBatch() local_unnamed_addr #1

declare void @zfree(ptr noundef) local_unnamed_addr #1

declare i32 @isClientReadErrorFatal(ptr noundef) local_unnamed_addr #1

declare void @handleClientReadError(ptr noundef) local_unnamed_addr #1

declare void @freeClient(ptr noundef) local_unnamed_addr #1

declare i32 @processPendingCommandAndInputBuffer(ptr noundef) local_unnamed_addr #1

declare i32 @clientHasPendingReplies(ptr noundef) local_unnamed_addr #1

declare void @putClientInPendingWriteQueue(ptr noundef) local_unnamed_addr #1

declare void @listLinkNodeHead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @handleClientsFromIOThread(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %i.a = load i8, ptr %2, align 64, !tbaa !99
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsNotifiers, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.e = tail call i32 @getReadEventFd(ptr noundef %i.d) #15
  %i.f = icmp eq i32 %1, %i.e
  br i1 %i.f, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 670) #15
  tail call void @abort() #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr %2, align 64, !tbaa !99
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsNotifiers, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  %i.k = tail call i32 @handleEventNotifier(ptr noundef %i.j) #15 ; 0 uses
  %i.l = tail call i32 @processClientsFromIOThread(ptr noundef nonnull %2) ; 0 uses
  ret void
}

declare i32 @getReadEventFd(ptr noundef) local_unnamed_addr #1

declare i32 @handleEventNotifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @processClientsOfAllIOThreads() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.05.lcssa = phi i32 [ 0, %bb.a ], [ %i.e, %.lr.ph ]
  ret i32 %.05.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %.056 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv
  %i.d = tail call i32 @processClientsFromIOThread(ptr noundef nonnull %i.c)
  %i.e = add nsw i32 %i.d, %.056                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116
  %i.g = sext i32 %i.f to i64
  %i.h = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !142
}

; Function Attrs: nounwind uwtable
define dso_local void @handleClientsFromMainThread(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !127
  %i.c = tail call i32 @getReadEventFd(ptr noundef %i.b) #15
  %i.d = icmp eq i32 %1, %i.c
  br i1 %i.d, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 707) #15
  tail call void @abort() #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 16, !tbaa !127
  %i.f = tail call i32 @handleEventNotifier(ptr noundef %i.e) #15 ; 0 uses
  %i.g = tail call i32 @processClientsFromMainThread(ptr noundef nonnull %2) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @processClientsFromMainThread(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 32, !tbaa !113
  tail call void @listJoin(ptr noundef %i.d, ptr noundef %i.f) #15
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @listRewind(ptr noundef nonnull %i.h, ptr noundef nonnull %1) #15
  %i.l = call ptr @listNext(ptr noundef nonnull %1) #15 ; 2 uses
  %.not47 = icmp eq ptr %i.l, null
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.s
  %i.o = phi ptr [ %i.l, %.lr.ph ], [ %i.bh, %bb.s ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 26 ; 4 uses
  %i.s = load i8, ptr %i.r, align 2, !tbaa !80
  %i.t = and i8 %i.s, 3
  %.not36 = icmp eq i8 %i.t, 0
  br i1 %.not36, label %bb.e, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 731) #15
  call void @abort() #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = and i64 %i.v, 1024
  %.not37 = icmp eq i64 %i.w, 0
  br i1 %.not37, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  call void @_serverAssert(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 734) #15
  call void @abort() #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 728 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !93
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.h, !prof !42

bb.h:                                             ; preds = %bb.g
  call void @_serverAssert(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 737) #15
  call void @abort() #16
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !143
  call void @listUnlinkNode(ptr noundef %i.aa, ptr noundef nonnull %i.o) #15
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !102
  call void @listLinkNodeTail(ptr noundef %i.ab, ptr noundef nonnull %i.o) #15
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !105
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !93
  call void @freeClientDeferredObjects(ptr noundef nonnull %i.q, i32 noundef 0) #15
  %i.af = load i8, ptr %i.r, align 2, !tbaa !80   ; 2 uses
  %i.ag = and i8 %i.af, 16
  %.not38 = icmp eq i8 %i.ag, 0
  br i1 %.not38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @enqueuePendingClientsToMainThread(ptr noundef nonnull %i.q, i32 noundef 1)
  br label %bb.s, !llvm.loop !144

bb.k:                                             ; preds = %bb.i
  %i.ah = and i8 %i.af, -56
  %i.ai = or disjoint i8 %i.ah, 3
  store i8 %i.ai, ptr %i.r, align 2, !tbaa !80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !81 ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 40
  %.val = load ptr, ptr %i.al, align 8, !tbaa !82
  %.not45 = icmp eq ptr %.val, null
  br i1 %.not45, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !85
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 208
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !110
  %i.aq = call i32 %i.ap(ptr noundef nonnull %i.ak, ptr noundef %i.am) #15, !inline_history !111 ; 0 uses
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !81 ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 64
  %.val44 = load ptr, ptr %i.as, align 8, !tbaa !145
  %.not46 = icmp eq ptr %.val44, null
  br i1 %.not46, label %bb.n, label %bb.m, !prof !42

bb.m:                                             ; preds = %bb.l
  call void @_serverAssert(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 758) #15
  call void @abort() #16
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !85
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 160
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !86
  %i.aw = call i32 %i.av(ptr noundef nonnull %i.ar, ptr noundef nonnull @readQueryFromClient) #15, !inline_history !112 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.ax = call i32 @clientHasPendingReplies(ptr noundef nonnull %i.q) #15
  %.not41 = icmp eq i32 %i.ax, 0
  br i1 %.not41, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = call i32 @writeToClient(ptr noundef nonnull %i.q, i32 noundef 0) #15 ; 0 uses
  %i.az = load i8, ptr %i.r, align 2, !tbaa !80
  %i.ba = and i8 %i.az, 16
  %.not42 = icmp eq i8 %i.ba, 0
  br i1 %.not42, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bb = call i32 @clientHasPendingReplies(ptr noundef nonnull %i.q) #15
  %.not43 = icmp eq i32 %i.bb, 0
  br i1 %.not43, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr %i.aj, align 8, !tbaa !81 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !85
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 152
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !89
  %i.bg = call i32 %i.bf(ptr noundef nonnull %i.bc, ptr noundef nonnull @sendReplyToClient, i32 noundef 0) #15, !inline_history !146 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.q, %bb.p, %bb.j
  %i.bh = call ptr @listNext(ptr noundef nonnull %1) #15 ; 2 uses
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.s, %bb.b
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !97
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.u, label %bb.t, !prof !42

bb.t:                                             ; preds = %._crit_edge
  call void @_serverAssert(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 771) #15
  call void @abort() #16
  unreachable

bb.u:                                             ; preds = %._crit_edge
  %i.bm = trunc i64 %i.j to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  %.0 = phi i32 [ %i.bm, %bb.u ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @writeToClient(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @sendReplyToClient(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @IOThreadBeforeSleep(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 10 uses
  %i.c = tail call i32 @connTypeProcessPendingData(ptr noundef %0) #15 ; 0 uses
  %i.d = tail call i32 @connTypeHasPendingData(ptr noundef %0) #15
  %i.e = tail call i32 @processClientsFromMainThread(ptr noundef %i.b)
  %.inv = icmp slt i32 %i.e, 1
  %spec.select = select i1 %.inv, i32 %i.d, i32 1 ; 2 uses
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store atomic i32 0, ptr %i.f seq_cst, align 4
  %i.g = tail call i32 @processClientsFromMainThread(ptr noundef %i.b) ; 0 uses
end_hunk_1
begin_hunk_2_@connTypeProcessPendingData
declare i32 @connTypeProcessPendingData(ptr noundef) local_unnamed_addr #1

declare i32 @connTypeHasPendingData(ptr noundef) local_unnamed_addr #1

declare void @aeSetDontWait(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local void @IOThreadAfterSleep(ptr nofree noundef readonly captures(none) %0) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store atomic i32 1, ptr %i.c seq_cst, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IOThreadClientsCron(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %1) #15
  %i.e = call ptr @listNext(ptr noundef nonnull %1) #15 ; 2 uses
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = udiv i64 %i.d, 10
  %i.g = trunc i64 %i.f to i32
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.g, i32 5)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.h = phi ptr [ %i.o, %.lr.ph ], [ %i.e, %.lr.ph.preheader ]
  %.09 = phi i32 [ %i.i, %.lr.ph ], [ %spec.store.select, %.lr.ph.preheader ]
  %i.i = add nsw i32 %.09, -1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 26 ; 2 uses
  %i.m = load i8, ptr %i.l, align 2, !tbaa !80
  %i.n = or i8 %i.m, 32
  store i8 %i.n, ptr %i.l, align 2, !tbaa !80
  call void @enqueuePendingClientsToMainThread(ptr noundef %i.k, i32 noundef 0)
  %i.o = call ptr @listNext(ptr noundef nonnull %1) #15 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  %.not7 = icmp eq i32 %i.i, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not7
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !148

.critedge:                                        ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @IOThreadCron(ptr nofree readnone captures(none) %0, i64 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %3) #15
  %i.e = call ptr @listNext(ptr noundef nonnull %3) #15 ; 2 uses
  %.not8.i = icmp eq ptr %i.e, null
  br i1 %.not8.i, label %IOThreadClientsCron.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = udiv i64 %i.d, 10
  %i.g = trunc i64 %i.f to i32
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.g, i32 5)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.h = phi ptr [ %i.o, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader.i ]
  %.09.i = phi i32 [ %i.i, %.lr.ph.i ], [ %spec.store.select.i, %.lr.ph.preheader.i ]
  %i.i = add nsw i32 %.09.i, -1                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 26 ; 2 uses
  %i.m = load i8, ptr %i.l, align 2, !tbaa !80
  %i.n = or i8 %i.m, 32
  store i8 %i.n, ptr %i.l, align 2, !tbaa !80
  call void @enqueuePendingClientsToMainThread(ptr noundef %i.k, i32 noundef 0)
  %i.o = call ptr @listNext(ptr noundef nonnull %3) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  %.not7.i = icmp eq i32 %i.i, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %IOThreadClientsCron.exit, label %.lr.ph.i, !llvm.loop !148

IOThreadClientsCron.exit:                         ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 100
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @IOThreadMain(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load i8, ptr %0, align 64, !tbaa !99
  %i.c = zext i8 %i.b to i32
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %i.c) #15 ; 0 uses
  %i.e = tail call i64 @pthread_self() #18
  %i.f = call i32 @pthread_setname_np(i64 noundef %i.e, ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8624), align 8, !tbaa !149
  call void @redisSetCpuAffinity(ptr noundef %i.g) #15
  call void @makeThreadKillable() #15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122
  call void @aeSetBeforeSleepProc(ptr noundef %i.i, ptr noundef nonnull @IOThreadBeforeSleep) #15
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !122
  call void @aeSetAfterSleepProc(ptr noundef %i.j, ptr noundef nonnull @IOThreadAfterSleep) #15
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !122
  call void @aeMain(ptr noundef %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr null
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_setname_np(i64 noundef, ptr noundef) local_unnamed_addr #8

declare void @redisSetCpuAffinity(ptr noundef) local_unnamed_addr #1

declare void @makeThreadKillable() local_unnamed_addr #1

declare void @aeSetBeforeSleepProc(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @aeSetAfterSleepProc(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @aeMain(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @initThreadedIO() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116 ; 2 uses
  %i.b = icmp slt i32 %i.a, 2
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2420), align 4, !tbaa !124
  %i.c = icmp samesign ugt i32 %i.a, 128
  br i1 %i.c, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !150
  %i.e = icmp sgt i32 %i.d, 3
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.22, i32 noundef 128) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  tail call void @exit(i32 noundef 1) #19
  unreachable

.lr.ph:                                           ; preds = %bb.b, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 1, %bb.b ] ; 8 uses
  %i.f = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv ; 16 uses
  %i.g = trunc i64 %indvars.iv to i8
  store i8 %i.g, ptr %i.f, align 64, !tbaa !99
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7744), align 8, !tbaa !151
  %i.i = add i32 %i.h, 128
  %i.j = tail call ptr @aeCreateEventLoop(i32 noundef %i.i) #15 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !122
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store ptr %i.f, ptr %i.l, align 8, !tbaa !147
  %i.m = tail call ptr @listCreate() #15
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.m, ptr %i.n, align 32, !tbaa !113
  %i.o = tail call ptr @listCreate() #15
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.o, ptr %i.p, align 8, !tbaa !143
  %i.q = tail call ptr @listCreate() #15
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr %i.q, ptr %i.r, align 32, !tbaa !94
  %i.s = tail call ptr @listCreate() #15
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store ptr %i.s, ptr %i.t, align 8, !tbaa !102
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store atomic i32 0, ptr %i.u seq_cst, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store atomic i32 0, ptr %i.v seq_cst, align 4
  %i.w = tail call noalias dereferenceable_or_null(4) ptr @zmalloc(i64 noundef 4) #17 ; 6 uses
  %i.x = tail call i32 @pthread_mutexattr_init(ptr noundef %i.w) #15 ; 0 uses
  %i.y = tail call i32 @pthread_mutexattr_settype(ptr noundef %i.w, i32 noundef 3) #15 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.aa = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.z, ptr noundef %i.w) #15 ; 0 uses
  %i.ab = tail call ptr @createEventNotifier() #15 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.ab, ptr %i.ac, align 16, !tbaa !127
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.ae = tail call i32 @getReadEventFd(ptr noundef %i.ab) #15
  %i.af = tail call i32 @aeCreateFileEvent(ptr noundef %i.ad, i32 noundef %i.ae, i32 noundef 1, ptr noundef nonnull @handleClientsFromMainThread, ptr noundef nonnull %i.f) #15
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !150
  %i.ah = icmp sgt i32 %i.ag, 3
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.23) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.i:                                             ; preds = %.lr.ph
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.aj = tail call i64 @aeCreateTimeEvent(ptr noundef %i.ai, i64 noundef 1, ptr noundef nonnull @IOThreadCron, ptr noundef nonnull %i.f, ptr noundef null) #15
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !150
  %i.am = icmp sgt i32 %i.al, 3
  br i1 %i.am, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.24) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ao = tail call i32 @pthread_create(ptr noundef nonnull %i.an, ptr noundef null, ptr noundef nonnull @IOThreadMain, ptr noundef nonnull %i.f) #15
  %.not38 = icmp eq i32 %i.ao, 0
  br i1 %.not38, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !150
  %i.aq = icmp sgt i32 %i.ap, 3
  br i1 %i.aq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.25) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.q:                                             ; preds = %bb.m
  %i.ar = tail call ptr @listCreate() #15
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsToIOThreads, i64 %indvars.iv
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !100
  %i.at = tail call ptr @listCreate() #15
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClients, i64 %indvars.iv
  store ptr %i.at, ptr %i.au, align 8, !tbaa !100
  %i.av = tail call ptr @listCreate() #15
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @mainThreadProcessingClients, i64 %indvars.iv
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !100
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr @mainThreadPendingClientsMutexes, i64 %indvars.iv
  %i.ay = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.ax, ptr noundef %i.w) #15 ; 0 uses
  %i.az = tail call ptr @createEventNotifier() #15 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @mainThreadPendingClientsNotifiers, i64 %indvars.iv
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !101
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !109
  %i.bc = tail call i32 @getReadEventFd(ptr noundef %i.az) #15
  %i.bd = tail call i32 @aeCreateFileEvent(ptr noundef %i.bb, i32 noundef %i.bc, i32 noundef 1, ptr noundef nonnull @handleClientsFromIOThread, ptr noundef nonnull %i.f) #15
  %.not39 = icmp eq i32 %i.bd, 0
  br i1 %.not39, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !150
  %i.bf = icmp sgt i32 %i.be, 3
  br i1 %i.bf, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.26) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.u:                                             ; preds = %bb.q
  %.not40 = icmp eq ptr %i.w, null
  br i1 %.not40, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @zfree(ptr noundef nonnull %i.w) #15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next, %i.bh
  br i1 %i.bi, label %.lr.ph, label %.loopexit, !llvm.loop !152

.loopexit:                                        ; preds = %bb.w, %bb.a
  ret void
}

declare void @_serverLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

declare ptr @aeCreateEventLoop(i32 noundef) local_unnamed_addr #1

declare ptr @listCreate() local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_init(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_settype(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @createEventNotifier() local_unnamed_addr #1

declare i32 @aeCreateFileEvent(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @aeCreateTimeEvent(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @killIOThreads() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = tail call i64 @pthread_self() #18
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !153  ; 3 uses
  %i.g = icmp eq i64 %i.f, %i.c
  %.not = icmp eq i64 %i.f, 0
  %or.cond = or i1 %.not, %i.g
  br i1 %or.cond, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @pthread_cancel(i64 noundef %i.f) #15
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.e, align 8, !tbaa !153
  %i.k = tail call i32 @pthread_join(i64 noundef %i.j, ptr noundef null) #15 ; 2 uses
  %.not11 = icmp eq i32 %i.k, 0
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !150
  %i.m = icmp sgt i32 %i.l, 3                     ; 2 uses
  br i1 %.not11, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.m, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.e, align 8, !tbaa !153
  %i.o = tail call ptr @strerror(i32 noundef %i.k) #15
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.27, i64 noundef %i.n, ptr noundef %i.o) #15
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i64, ptr %i.e, align 8, !tbaa !153
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.28, i64 noundef %i.p) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !116
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %bb.b, label %.loopexit, !llvm.loop !154

.loopexit:                                        ; preds = %bb.i, %bb.a
  ret void
}

declare i32 @pthread_cancel(i64 noundef) local_unnamed_addr #1

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #10 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !15, i64 8}
!14 = !{!"client", !15, i64 0, !15, i64 8, !16, i64 16, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !10, i64 28, !18, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !20, i64 64, !15, i64 72, !15, i64 80, !10, i64 88, !21, i64 96, !10, i64 104, !10, i64 108, !21, i64 112, !15, i64 120, !23, i64 128, !24, i64 152, !25, i64 160, !10, i64 168, !21, i64 176, !10, i64 184, !10, i64 188, !26, i64 192, !26, i64 200, !26, i64 208, !26, i64 216, !17, i64 224, !10, i64 232, !10, i64 236, !15, i64 240, !27, i64 248, !28, i64 256, !27, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !10, i64 296, !10, i64 300, !29, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !28, i64 336, !28, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !15, i64 368, !15, i64 376, !20, i64 384, !28, i64 392, !28, i64 400, !28, i64 408, !28, i64 416, !28, i64 424, !28, i64 432, !28, i64 440, !28, i64 448, !28, i64 456, !28, i64 464, !28, i64 472, !11, i64 480, !10, i64 524, !20, i64 528, !10, i64 536, !10, i64 540, !15, i64 544, !30, i64 552, !32, i64 592, !28, i64 664, !27, i64 672, !33, i64 680, !33, i64 688, !33, i64 696, !20, i64 704, !20, i64 712, !34, i64 720, !34, i64 728, !34, i64 736, !17, i64 744, !17, i64 752, !17, i64 760, !17, i64 768, !17, i64 776, !15, i64 784, !35, i64 792, !15, i64 800, !10, i64 808, !34, i64 816, !17, i64 824, !34, i64 832, !15, i64 840, !34, i64 848, !15, i64 856, !34, i64 864, !15, i64 872, !36, i64 880, !36, i64 904, !15, i64 928, !15, i64 936, !15, i64 944, !28, i64 952, !15, i64 960, !15, i64 968, !20, i64 976, !11, i64 984, !37, i64 992, !28, i64 1000, !28, i64 1008, !28, i64 1016, !38, i64 1024, !20, i64 1032, !11, i64 1040}
!15 = !{!"long", !11, i64 0}
!16 = !{!"p1 _ZTS10connection", !17, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"p1 _ZTS7redisDb", !17, i64 0}
!19 = !{!"p1 _ZTS11redisObject", !17, i64 0}
!20 = !{!"p1 omnipotent char", !17, i64 0}
!21 = !{!"p2 _ZTS11redisObject", !22, i64 0}
!22 = !{!"any p2 pointer", !17, i64 0}
!23 = !{!"pendingCommandList", !24, i64 0, !24, i64 8, !10, i64 16, !10, i64 20}
!24 = !{!"p1 _ZTS14pendingCommand", !17, i64 0}
!25 = !{!"p1 _ZTS14deferredObject", !17, i64 0}
!26 = !{!"p1 _ZTS12redisCommand", !17, i64 0}
!27 = !{!"p1 _ZTS4list", !17, i64 0}
!28 = !{!"long long", !11, i64 0}
!29 = !{!"p1 _ZTS9dictEntry", !17, i64 0}
!30 = !{!"multiState", !31, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !15, i64 24, !10, i64 32}
!31 = !{!"p2 _ZTS14pendingCommand", !22, i64 0}
!32 = !{!"blockingState", !10, i64 0, !28, i64 8, !10, i64 16, !33, i64 24, !10, i64 32, !10, i64 36, !28, i64 40, !17, i64 48, !17, i64 56, !15, i64 64}
!33 = !{!"p1 _ZTS4dict", !17, i64 0}
!34 = !{!"p1 _ZTS8listNode", !17, i64 0}
!35 = !{!"p1 _ZTS3rax", !17, i64 0}
!36 = !{!"listNode", !34, i64 0, !34, i64 8, !17, i64 16}
!37 = !{!"p1 _ZTS13payloadHeader", !17, i64 0}
!38 = !{!"p1 _ZTS7asmTask", !17, i64 0}
!39 = !{!14, !11, i64 24}
!40 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!41 = !{!14, !11, i64 25}
!42 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!43 = !{!14, !28, i64 456}
!44 = !{!14, !28, i64 448}
!45 = !{!14, !15, i64 320}
!46 = !{!14, !15, i64 312}
!47 = !{!14, !28, i64 400}
!48 = !{!14, !28, i64 392}
!49 = !{!"branch_weights", !"expected", i32 2145874, i32 2145337774}
!50 = !{!14, !34, i64 832}
!51 = !{!14, !34, i64 848}
!52 = !{!14, !15, i64 856}
!53 = !{!14, !15, i64 840}
!54 = !{!36, !17, i64 16}
!55 = !{!56, !28, i64 8064}
!56 = !{!"redisServer", !10, i64 0, !15, i64 8, !20, i64 16, !20, i64 24, !57, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !18, i64 64, !33, i64 72, !33, i64 80, !58, i64 88, !35, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !28, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !20, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !15, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !20, i64 232, !20, i64 240, !10, i64 248, !10, i64 252, !15, i64 256, !11, i64 264, !33, i64 272, !33, i64 280, !33, i64 288, !27, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !20, i64 472, !20, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !59, i64 1336, !27, i64 1440, !27, i64 1448, !27, i64 1456, !27, i64 1464, !27, i64 1472, !27, i64 1480, !27, i64 1488, !61, i64 1496, !61, i64 1504, !17, i64 1512, !35, i64 1520, !10, i64 1528, !35, i64 1536, !10, i64 1544, !27, i64 1552, !11, i64 1560, !11, i64 1624, !33, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !62, i64 2424, !10, i64 2448, !28, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !15, i64 2488, !15, i64 2496, !15, i64 2504, !15, i64 2512, !15, i64 2520, !15, i64 2528, !28, i64 2536, !28, i64 2544, !28, i64 2552, !28, i64 2560, !28, i64 2568, !28, i64 2576, !63, i64 2584, !28, i64 2592, !28, i64 2600, !28, i64 2608, !28, i64 2616, !28, i64 2624, !28, i64 2632, !15, i64 2640, !28, i64 2648, !28, i64 2656, !28, i64 2664, !28, i64 2672, !28, i64 2680, !28, i64 2688, !28, i64 2696, !28, i64 2704, !15, i64 2712, !15, i64 2720, !15, i64 2728, !28, i64 2736, !28, i64 2744, !28, i64 2752, !28, i64 2760, !28, i64 2768, !63, i64 2776, !28, i64 2784, !28, i64 2792, !28, i64 2800, !28, i64 2808, !28, i64 2816, !27, i64 2824, !28, i64 2832, !28, i64 2840, !15, i64 2848, !64, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !15, i64 2976, !15, i64 2984, !15, i64 2992, !15, i64 3000, !15, i64 3008, !15, i64 3016, !15, i64 3024, !15, i64 3032, !63, i64 3040, !11, i64 3048, !15, i64 3080, !28, i64 3088, !28, i64 3096, !28, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !28, i64 5168, !28, i64 5176, !28, i64 5184, !28, i64 5192, !11, i64 5200, !28, i64 6264, !28, i64 6272, !15, i64 6280, !28, i64 6288, !28, i64 6296, !15, i64 6304, !11, i64 6312, !65, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !15, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !15, i64 6496, !15, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !20, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !66, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !20, i64 6680, !20, i64 6688, !10, i64 6696, !10, i64 6700, !15, i64 6704, !15, i64 6712, !15, i64 6720, !15, i64 6728, !15, i64 6736, !10, i64 6744, !10, i64 6748, !20, i64 6752, !10, i64 6760, !10, i64 6764, !28, i64 6768, !28, i64 6776, !15, i64 6784, !15, i64 6792, !15, i64 6800, !10, i64 6808, !10, i64 6812, !15, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !15, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !17, i64 6872, !10, i64 6880, !28, i64 6888, !28, i64 6896, !28, i64 6904, !28, i64 6912, !10, i64 6920, !67, i64 6928, !10, i64 6936, !20, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !15, i64 6968, !15, i64 6976, !15, i64 6984, !15, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !68, i64 7024, !10, i64 7032, !10, i64 7036, !20, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !69, i64 7072, !10, i64 7088, !20, i64 7096, !10, i64 7104, !20, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !28, i64 7232, !28, i64 7240, !11, i64 7248, !28, i64 7256, !10, i64 7264, !10, i64 7268, !71, i64 7272, !28, i64 7280, !28, i64 7288, !72, i64 7296, !15, i64 7344, !15, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !15, i64 7400, !27, i64 7408, !15, i64 7416, !20, i64 7424, !20, i64 7432, !20, i64 7440, !10, i64 7448, !10, i64 7452, !61, i64 7456, !61, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !15, i64 7488, !15, i64 7496, !15, i64 7504, !15, i64 7512, !15, i64 7520, !16, i64 7528, !16, i64 7536, !10, i64 7544, !20, i64 7552, !15, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !15, i64 7584, !15, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !20, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !28, i64 7680, !10, i64 7688, !27, i64 7696, !10, i64 7704, !28, i64 7712, !28, i64 7720, !15, i64 7728, !15, i64 7736, !10, i64 7744, !28, i64 7752, !15, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !28, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !27, i64 7872, !27, i64 7880, !10, i64 7888, !15, i64 7896, !27, i64 7904, !27, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !15, i64 7936, !15, i64 7944, !15, i64 7952, !15, i64 7960, !15, i64 7968, !15, i64 7976, !15, i64 7984, !15, i64 7992, !15, i64 8000, !28, i64 8008, !28, i64 8016, !28, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !15, i64 8048, !11, i64 8056, !28, i64 8064, !28, i64 8072, !10, i64 8080, !15, i64 8088, !28, i64 8096, !15, i64 8104, !28, i64 8112, !73, i64 8120, !33, i64 8128, !10, i64 8136, !73, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !28, i64 8168, !28, i64 8176, !20, i64 8184, !28, i64 8192, !28, i64 8200, !28, i64 8208, !10, i64 8216, !74, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !20, i64 8256, !20, i64 8264, !20, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !28, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !28, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !28, i64 8384, !33, i64 8392, !20, i64 8400, !15, i64 8408, !20, i64 8416, !10, i64 8424, !75, i64 8432, !10, i64 8472, !15, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !76, i64 8504, !20, i64 8624, !20, i64 8632, !20, i64 8640, !20, i64 8648, !77, i64 8656, !28, i64 8664, !10, i64 8672, !20, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !15, i64 8704, !10, i64 8712, !10, i64 8716, !20, i64 8720, !10, i64 8728, !10, i64 8732}
!57 = !{!"p2 omnipotent char", !22, i64 0}
!58 = !{!"p1 _ZTS11aeEventLoop", !17, i64 0}
!59 = !{!"connListener", !11, i64 0, !10, i64 64, !57, i64 72, !10, i64 80, !10, i64 84, !60, i64 88, !17, i64 96}
!60 = !{!"p1 _ZTS14ConnectionType", !17, i64 0}
!61 = !{!"p1 _ZTS6client", !17, i64 0}
!62 = !{!"pendingCommandPool", !31, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!63 = !{!"double", !11, i64 0}
!64 = !{!"malloc_stats", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80}
!65 = !{!"p1 _ZTS11hotkeyStats", !17, i64 0}
!66 = !{!"p1 double", !17, i64 0}
!67 = !{!"p1 _ZTS9saveparam", !17, i64 0}
!68 = !{!"p2 _ZTS10connection", !22, i64 0}
!69 = !{!"redisOpArray", !70, i64 0, !10, i64 8, !10, i64 12}
!70 = !{!"p1 _ZTS7redisOp", !17, i64 0}
!71 = !{!"p1 _ZTS11replBacklog", !17, i64 0}
!72 = !{!"replDataBuf", !27, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!73 = !{!"p1 _ZTS8_kvstore", !17, i64 0}
!74 = !{!"p1 _ZTS12clusterState", !17, i64 0}
!75 = !{!"aclInfo", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32}
!76 = !{!"redisTLSContextConfig", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !10, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!77 = !{!"p1 _ZTS14sentinelConfig", !17, i64 0}
!78 = !{!14, !28, i64 344}
!79 = !{!14, !28, i64 336}
!80 = !{!14, !11, i64 26}
!81 = !{!14, !16, i64 16}
!82 = !{!83, !58, i64 40}
!83 = !{!"connection", !60, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !84, i64 20, !84, i64 22, !84, i64 24, !17, i64 32, !58, i64 40, !17, i64 48, !17, i64 56, !17, i64 64}
!84 = !{!"short", !11, i64 0}
!85 = !{!83, !60, i64 0}
!86 = !{!87, !17, i64 160}
!87 = !{!"ConnectionType", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144, !17, i64 152, !17, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !17, i64 200, !17, i64 208, !17, i64 216, !17, i64 224, !17, i64 232, !17, i64 240}
!88 = distinct !{null, null}
!89 = !{!87, !17, i64 152}
!90 = distinct !{null, null}
!91 = !{!87, !17, i64 200}
!92 = distinct !{null}
!93 = !{!14, !34, i64 728}
!94 = !{!95, !27, i64 96}
!95 = !{!"", !11, i64 0, !15, i64 8, !11, i64 16, !11, i64 20, !58, i64 24, !27, i64 32, !27, i64 40, !96, i64 48, !11, i64 56, !27, i64 96, !27, i64 104}
!96 = !{!"p1 _ZTS13eventNotifier", !17, i64 0}
!97 = !{!98, !15, i64 40}
!98 = !{!"list", !34, i64 0, !34, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !15, i64 40}
!99 = !{!95, !11, i64 0}
!100 = !{!27, !27, i64 0}
!101 = !{!96, !96, i64 0}
!102 = !{!95, !27, i64 104}
!103 = !{!56, !27, i64 1456}
!104 = !{!56, !27, i64 7408}
!105 = !{!98, !34, i64 8}
!106 = !{!14, !34, i64 864}
!107 = !{!15, !15, i64 0}
!108 = !{!14, !15, i64 872}
!109 = !{!56, !58, i64 88}
!110 = !{!87, !17, i64 208}
!111 = distinct !{null}
!112 = distinct !{null}
!113 = !{!95, !27, i64 32}
!114 = !{!14, !10, i64 356}
!115 = !{!14, !10, i64 360}
!116 = !{!56, !10, i64 1900}
!117 = distinct !{!117, !118}
!118 = !{!"llvm.loop.unroll.disable"}
!119 = !{!14, !25, i64 160}
!120 = distinct !{!120, !121}
!121 = !{!"llvm.loop.mustprogress"}
!122 = !{!95, !58, i64 24}
!123 = distinct !{!123, !121}
!124 = !{!56, !10, i64 2420}
!125 = !{!"branch_weights", i32 4000000, i32 4001}
!126 = !{!56, !15, i64 8}
!127 = !{!95, !96, i64 48}
!128 = distinct !{!128, !121}
!129 = distinct !{!129, !121}
!130 = distinct !{!130, !121}
!131 = distinct !{!131, !121}
!132 = distinct !{!132, !121}
!133 = distinct !{!133, !121}
!134 = distinct !{!134, !121}
!135 = !{!61, !61, i64 0}
!136 = distinct !{!136, !121}
!137 = !{!14, !27, i64 248}
!138 = distinct !{!138, !121}
!139 = !{!98, !34, i64 0}
!140 = distinct !{!140, !121}
!141 = !{!56, !10, i64 6672}
!142 = distinct !{!142, !121}
!143 = !{!95, !27, i64 40}
!144 = distinct !{!144, !121}
!145 = !{!83, !17, i64 64}
!146 = distinct !{null}
!147 = !{!17, !17, i64 0}
!148 = distinct !{!148, !121}
!149 = !{!56, !20, i64 8624}
!150 = !{!56, !10, i64 6416}
!151 = !{!56, !10, i64 7744}
!152 = distinct !{!152, !121}
!153 = !{!95, !15, i64 8}
!154 = distinct !{!154, !121}
end_hunk_2
