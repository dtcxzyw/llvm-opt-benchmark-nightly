Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/iothread?download=true
inline.NumInlined: 30
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@assignClientToIOThread:bb.a
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), i64 %indvars.iv.epil
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19   ; 2 uses
  %i.k = icmp slt i32 %i.j, %.01420.epil
  %i.l = trunc nuw nsw i64 %indvars.iv.epil to i32
  %spec.select.epil = select i1 %i.k, i32 %i.l, i32 %.01519.epil ; 2 uses
  %spec.select18.epil = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %.01420.epil)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !175

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.015.lcssa = phi i32 [ 0, %.preheader ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil ] ; 2 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), align 8, !tbaa !19
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), align 8, !tbaa !19
  %i.o = trunc i32 %.015.lcssa to i8
  store i8 %i.o, ptr %i.a, align 8, !tbaa !83
  %i.p = zext nneg i32 %.015.lcssa to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !19
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !19
  %i.t = tail call noalias dereferenceable_or_null(512) ptr @zmalloc(i64 noundef 512) #17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.t, ptr %i.u, align 8, !tbaa !179
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !124  ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !127
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %connUnbindEventLoop.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !128
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !130
  %i.ad = tail call i32 %i.ac(ptr noundef nonnull %i.w, ptr noundef null) #15, !inline_history !0 ; 0 uses
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !128
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !131
  %i.ah = tail call i32 %i.ag(ptr noundef nonnull %i.w, ptr noundef null, i32 noundef 0) #15, !inline_history !1 ; 0 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !128
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 200
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !132 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.ak(ptr noundef nonnull %i.w) #15, !inline_history !2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.x, align 8, !tbaa !127
  br label %connUnbindEventLoop.exit

connUnbindEventLoop.exit:                         ; preds = %._crit_edge, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.am = load i8, ptr %i.al, align 2, !tbaa !123
  %i.an = and i8 %i.am, -4
  store i8 %i.an, ptr %i.al, align 2, !tbaa !123
  tail call void @enqueuePendingClienstToIOThreads(ptr noundef nonnull %0)
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.01420 = phi i32 [ 2147483647, %.lr.ph.preheader.new ], [ %spec.select18.3, %.lr.ph ] ; 2 uses
  %.01519 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select.3, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %.01420
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.aq, i32 %i.ar, i32 %.01519
  %spec.select18 = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %.01420) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), i64 %indvars.iv.next
  %i.at = load i32, ptr %i.as, align 4, !tbaa !19 ; 2 uses
  %i.au = icmp slt i32 %i.at, %spec.select18
  %i.av = trunc nuw nsw i64 %indvars.iv.next to i32
  %spec.select.1 = select i1 %i.au, i32 %i.av, i32 %spec.select
  %spec.select18.1 = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %spec.select18) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), i64 %indvars.iv.next.1
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %spec.select18.1
  %i.az = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %spec.select.2 = select i1 %i.ay, i32 %i.az, i32 %spec.select.1
  %spec.select18.2 = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %spec.select18.1) ; 2 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 1904), i64 %indvars.iv.next.2
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !19 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %spec.select18.2
  %i.bd = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %spec.select.3 = select i1 %i.bc, i32 %i.bd, i32 %spec.select.2 ; 3 uses
  %spec.select18.3 = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %spec.select18.2) ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !176
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @resizeAllIOThreadsEventLoops(i64 noundef %0) local_unnamed_addr #0 !guid !181 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !150 ; 2 uses
  %i.b = icmp slt i32 %i.a, 2
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -1
  tail call void @pauseIOThreadsRange(i32 noundef 1, i32 noundef %i.c)
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !150 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.f = trunc i64 %0 to i32
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.07.lcssa = phi i32 [ 0, %bb.b ], [ %spec.select, %bb.c ]
  %.lcssa = phi i32 [ %i.d, %bb.b ], [ %i.m, %bb.c ]
  %i.g = add nsw i32 %.lcssa, -1
  tail call void @resumeIOThreadsRange(i32 noundef 1, i32 noundef %i.g)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.079 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.c ]
  %i.h = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !152
  %i.k = tail call i32 @aeResizeSetSize(ptr noundef %i.j, i32 noundef %i.f) #15
  %i.l = icmp eq i32 %i.k, -1
  %spec.select = select i1 %i.l, i32 -1, i32 %.079 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !150 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.c, label %._crit_edge, !llvm.loop !180

bb.d:                                             ; preds = %bb.a, %._crit_edge
  %.08 = phi i32 [ %.07.lcssa, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define dso_local void @pauseAllIOThreads() local_unnamed_addr #0 !guid !182 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !150
  %i.b = add nsw i32 %i.a, -1
  tail call void @pauseIOThreadsRange(i32 noundef 1, i32 noundef %i.b)
  ret void
}

declare i32 @aeResizeSetSize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @resumeAllIOThreads() local_unnamed_addr #0 !guid !183 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !150
  %i.b = add nsw i32 %i.a, -1
  tail call void @resumeIOThreadsRange(i32 noundef 1, i32 noundef %i.b)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pauseIOThreadsRange(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !guid !187 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2420), align 4, !tbaa !153
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit35, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %0, 0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4
  %i.d = icmp slt i32 %1, %i.c
  %or.cond = select i1 %i.b, i1 %i.d, i1 false, !prof !154
  %i.e = icmp sle i32 %0, %1
  %i.f = and i1 %i.e, %or.cond
  br i1 %i.f, label %bb.d, label %bb.c, !prof !86

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 359) #15
  tail call void @abort() #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i64 @pthread_self() #18
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8), align 8, !tbaa !155
  %.not33 = icmp eq i64 %i.g, %i.h
  br i1 %.not33, label %.lr.ph.preheader, label %bb.e, !prof !86

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.i = zext nneg i32 %0 to i64
  %2 = add nsw i32 %1, 1
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 360) #15
  tail call void @abort() #16
  unreachable

.lr.ph41.preheader:                               ; preds = %bb.j
  %i.j = zext nneg i32 %0 to i64                  ; 4 uses
  %i.k = add i32 %1, %0
  %i.l = and i32 %i.k, 1
  %lcmp.mod.not.not = icmp eq i32 %i.l, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph41.prol, label %.lr.ph41.prol.loopexit

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @PausedIOThreads, i64 %i.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %.loopexit.prol, label %.preheader.prol

.preheader.prol:                                  ; preds = %.lr.ph41.prol
  %i.p = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.prol
  %i.r = load atomic i32, ptr %i.q seq_cst, align 16
  %.not31.prol = icmp eq i32 %i.r, 2
  br i1 %.not31.prol, label %.loopexit.prol, label %bb.f, !llvm.loop !184

.loopexit.prol:                                   ; preds = %bb.f, %.lr.ph41.prol
  %indvars.iv.next44.prol = add nuw nsw i64 %i.j, 1
  br label %.lr.ph41.prol.loopexit

.lr.ph41.prol.loopexit:                           ; preds = %.loopexit.prol, %.lr.ph41.preheader
  %indvars.iv43.unr = phi i64 [ %i.j, %.lr.ph41.preheader ], [ %indvars.iv.next44.prol, %.loopexit.prol ]
  %i.s = icmp eq i32 %1, %0
  br i1 %i.s, label %.loopexit35, label %.lr.ph41

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @PausedIOThreads, i64 %indvars.iv ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19   ; 2 uses
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !19
  %i.w = icmp sgt i32 %i.u, 0
  br i1 %i.w, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.z = load atomic i32, ptr %i.y seq_cst, align 16
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.h, !prof !86

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 371) #15
  tail call void @abort() #16
  unreachable

bb.i:                                             ; preds = %bb.g
  store atomic i32 1, ptr %i.y seq_cst, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !156
  %i.ad = tail call i32 @triggerEventNotifier(ptr noundef %i.ac) #15 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %i.ae
  br i1 %exitcond.not, label %.lr.ph41.preheader, label %.lr.ph, !llvm.loop !185

.lr.ph41:                                         ; preds = %.lr.ph41.prol.loopexit, %.loopexit.1
  %indvars.iv43 = phi i64 [ %indvars.iv.next44.1, %.loopexit.1 ], [ %indvars.iv43.unr, %.lr.ph41.prol.loopexit ] ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @PausedIOThreads, i64 %indvars.iv43
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !19
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph41
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.k
  %i.ak = load atomic i32, ptr %i.aj seq_cst, align 16
  %.not31 = icmp eq i32 %i.ak, 2
  br i1 %.not31, label %.loopexit, label %bb.k, !llvm.loop !184

.loopexit:                                        ; preds = %bb.k, %.lr.ph41
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @PausedIOThreads, i64 %indvars.iv.next44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !19
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %.loopexit.1, label %.preheader.1

.preheader.1:                                     ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv.next44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.1
  %i.aq = load atomic i32, ptr %i.ap seq_cst, align 16
  %.not31.1 = icmp eq i32 %i.aq, 2
  br i1 %.not31.1, label %.loopexit.1, label %bb.l, !llvm.loop !184

.loopexit.1:                                      ; preds = %bb.l, %.loopexit
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43, 2
  %i.ar = trunc nuw i64 %indvars.iv.next44 to i32
  %.not30.not.1 = icmp sgt i32 %1, %i.ar
  br i1 %.not30.not.1, label %.lr.ph41, label %.loopexit35, !llvm.loop !186

.loopexit35:                                      ; preds = %.lr.ph41.prol.loopexit, %.loopexit.1, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #6

declare i32 @triggerEventNotifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @resumeIOThreadsRange(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !guid !190 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2420), align 4, !tbaa !153
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit30, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %0, 0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4
  %i.d = icmp slt i32 %1, %i.c
  %or.cond = select i1 %i.b, i1 %i.d, i1 false, !prof !154
  %i.e = icmp sle i32 %0, %1
  %i.f = and i1 %i.e, %or.cond
  br i1 %i.f, label %bb.d, label %bb.c, !prof !86

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 391) #15
  tail call void @abort() #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i64 @pthread_self() #18
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8), align 8, !tbaa !155
  %.not29 = icmp eq i64 %i.g, %i.h
  br i1 %.not29, label %.lr.ph.preheader, label %bb.e, !prof !86

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.i = zext nneg i32 %0 to i64
  %2 = add nsw i32 %1, 1
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 392) #15
  tail call void @abort() #16
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %indvars.iv = phi i64 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @PausedIOThreads, i64 %indvars.iv ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19   ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.f, !prof !86

bb.f:                                             ; preds = %.lr.ph
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 395) #15
  tail call void @abort() #16
  unreachable

bb.g:                                             ; preds = %.lr.ph
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !19
  %.not26 = icmp eq i32 %i.k, 1
  br i1 %.not26, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.p = load atomic i32, ptr %i.o seq_cst, align 16
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.j, label %bb.i, !prof !86

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
  br i1 %.not27, label %.loopexit, label %bb.k, !llvm.loop !188

.loopexit:                                        ; preds = %bb.k, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %i.s
  br i1 %exitcond.not, label %.loopexit30, label %.lr.ph, !llvm.loop !189

.loopexit30:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @handlePauseAndResume(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 !guid !191 {
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
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !5

bb.d:                                             ; preds = %bb.c
  store atomic i32 0, ptr %i.a seq_cst, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sendPendingClientsToIOThreads() local_unnamed_addr #0 !guid !193 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !150 ; 2 uses
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !140
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !138
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [128 x i8], ptr @IOThreads, i64 %indvars.iv ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.k) #15 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load ptr, ptr %i.m, align 32, !tbaa !147
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !140
  tail call void @listJoin(ptr noundef %i.n, ptr noundef %i.o) #15
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #15 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !156
  %i.s = tail call i32 @triggerEventNotifier(ptr noundef %i.r) #15 ; 0 uses
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1900), align 4, !tbaa !150
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.t = phi i32 [ %.pre, %bb.b ], [ %i.c, %.lr.ph ] ; 2 uses
  %i.u = add nsw i32 %.014, %i.h                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = sext i32 %i.t to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !192
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

declare void @listJoin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @prefetchIOThreadCommands(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 !guid !196 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 4 uses
  %i.a = load i8, ptr %0, align 64, !tbaa !139
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @mainThreadProcessingClients, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call i32 @determinePrefetchCount(i32 noundef %i.g) #15 ; 6 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %i.h, 257
  br i1 %i.j, label %bb.d, label %bb.c, !prof !86

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 484) #15
  tail call void @abort() #16
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.k = load i8, ptr %0, align 64, !tbaa !139
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @mainThreadProcessingClients, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140
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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !97   ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @prefetchIOThreadCommands.c, i64 %indvars.iv
  store ptr %i.r, ptr %i.s, align 8, !tbaa !197
  call void @llvm.prefetch.p0(ptr %i.r, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  call void @llvm.prefetch.p0(ptr nonnull %i.t, i32 0, i32 3, i32 1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph32.preheader, label %.lr.ph, !llvm.loop !194

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %bb.h
  %indvars.iv36 = phi i64 [ 0, %.lr.ph32.preheader ], [ %indvars.iv.next37, %bb.h ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @prefetchIOThreadCommands.c, i64 %indvars.iv36 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !197
  %i.w = call i32 @addCommandToBatch(ptr noundef %i.v) #15
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %._crit_edge.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph32
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !197  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 248
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !198 ; 2 uses
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
  br i1 %exitcond42.not, label %._crit_edge, label %.lr.ph32, !llvm.loop !195

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph32
  %indvars40.le = trunc i64 %indvars.iv36 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %._crit_edge.loopexit.split.loop.exit, %bb.d
  %.022.lcssa = phi i32 [ %indvars40.le, %._crit_edge.loopexit.split.loop.exit ], [ 0, %bb.d ], [ %i.h, %bb.h ]
  call void @prefetchCommands() #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge
  %.023 = phi i32 [ %.022.lcssa, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.023
}

declare i32 @determinePrefetchCount(i32 noundef) local_unnamed_addr #1

declare void @listRewind(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @listNext(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #9

declare i32 @addCommandToBatch(ptr noundef) local_unnamed_addr #1

declare void @prefetchCommands() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
end_hunk_0
