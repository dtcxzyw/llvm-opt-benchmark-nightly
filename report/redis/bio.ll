Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/bio?download=true
inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@bioSubmitJob:bb.a
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #12 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

declare ptr @listAddNodeTail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bioCreateLazyFreeJob(ptr noundef %0, i32 noundef %1, ...) local_unnamed_addr #0 !guid !98 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 3
  %i.c = add nsw i64 %i.b, 32
  %i.d = tail call noalias ptr @zmalloc(i64 noundef %i.c) #16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !85
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.promoted = load i32, ptr %2, align 16         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 16             ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.promoted10 = load ptr, ptr %i.g, align 8      ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %1, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi ptr [ %.promoted10, %.lr.ph ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init14 = phi i32 [ %.promoted, %.lr.ph ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod15 = trunc i32 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod15)
  %i.l = icmp ult i32 %.epil.init14, 41
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.m = getelementptr i8, ptr %.epil.init, i64 8
  store ptr %i.m, ptr %i.g, align 8
  br label %._crit_edge.loopexit.epilog-lcssa

bb.c:                                             ; preds = %.epil.preheader
  %i.n = zext nneg i32 %.epil.init14 to i64
  %i.o = getelementptr i8, ptr %i.i, i64 %i.n
  %i.p = add nuw nsw i32 %.epil.init14, 8
  store i32 %i.p, ptr %2, align 16
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.o, %bb.c ], [ %.epil.init, %bb.b ]
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  store ptr %i.r, ptr %i.s, align 8, !tbaa !85
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %bb.a
  call void @llvm.va_end.p0(ptr nonnull %2)
  store i32 2, ptr %i.d, align 8, !tbaa !85
  %i.t = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bio_mutex, i64 80)) #12 ; 0 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bio_jobs, i64 16), align 16, !tbaa !40
  %i.v = call ptr @listAddNodeTail(ptr noundef %i.u, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @bio_jobs_counter, i64 16), align 16, !tbaa !73
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr getelementptr inbounds nuw (i8, ptr @bio_jobs_counter, i64 16), align 16, !tbaa !73
  %i.y = call i32 @pthread_cond_signal(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bio_newjob_cond, i64 96)) #12 ; 0 uses
  %i.z = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bio_mutex, i64 80)) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.d:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %i.aa = phi ptr [ %.promoted10, %.lr.ph.new ], [ %i.ar, %bb.j ] ; 3 uses
  %i.ab = phi i32 [ %.promoted, %.lr.ph.new ], [ %i.as, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %i.ac = icmp ult i32 %i.ab, 41
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.ad
  %i.af = add nuw nsw i32 %i.ab, 8                ; 2 uses
  store i32 %i.af, ptr %2, align 16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.aa, i64 8      ; 2 uses
  store ptr %i.ag, ptr %i.g, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = phi ptr [ %i.aa, %bb.e ], [ %i.ag, %bb.f ] ; 3 uses
  %i.ai = phi i32 [ %i.af, %bb.e ], [ %i.ab, %bb.f ] ; 4 uses
  %i.aj = phi ptr [ %i.ae, %bb.e ], [ %i.aa, %bb.f ]
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !99
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !85
  %i.am = icmp ult i32 %i.ai, 41
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %i.ah, i64 8      ; 2 uses
  store ptr %i.an, ptr %i.g, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ao = zext nneg i32 %i.ai to i64
  %i.ap = getelementptr i8, ptr %i.i, i64 %i.ao
  %i.aq = add nuw nsw i32 %i.ai, 8                ; 2 uses
  store i32 %i.aq, ptr %2, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = phi ptr [ %i.ah, %bb.i ], [ %i.an, %bb.h ] ; 2 uses
  %i.as = phi i32 [ %i.aq, %bb.i ], [ %i.ai, %bb.h ] ; 2 uses
  %i.at = phi ptr [ %i.ap, %bb.i ], [ %i.ah, %bb.h ]
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !99
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !85
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !97
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

; Function Attrs: nounwind uwtable
define dso_local void @bioCreateCompRq(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 !guid !100 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @.str.4) #12
  tail call void @abort() #15
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %switch.offset = or disjoint i32 %0, 4          ; 2 uses
  %i.b = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.d, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %3, ptr %i.e, align 8, !tbaa !85
  store i32 %switch.offset, ptr %i.b, align 8, !tbaa !85
  %i.f = zext nneg i32 %switch.offset to i64      ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @bio_job_to_worker, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr @bio_mutex, i64 %i.i ; 2 uses
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.j) #12 ; 0 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @bio_jobs, i64 %i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = tail call ptr @listAddNodeTail(ptr noundef %i.m, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @bio_jobs_counter, i64 %i.f ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !73
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw [48 x i8], ptr @bio_newjob_cond, i64 %i.i
  %i.s = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.r) #12 ; 0 uses
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #12 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bioCreateCloseJob(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !101 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = trunc i32 %1 to i8
  %i.d = load i8, ptr %i.b, align 8
  %i.e = and i8 %i.c, 1
  %i.f = and i8 %i.d, -4
  %i.g = trunc i32 %2 to i8
  %i.h = shl i8 %i.g, 1
  %i.i = and i8 %i.h, 2
  %i.j = or disjoint i8 %i.i, %i.e
  %i.k = or disjoint i8 %i.j, %i.f
  store i8 %i.k, ptr %i.b, align 8
  %3 = zext i32 %0 to i64
  %4 = shl nuw i64 %3, 32
  store i64 %4, ptr %i.a, align 8
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @bio_mutex) #12 ; 0 uses
  %i.m = load ptr, ptr @bio_jobs, align 16, !tbaa !40
  %i.n = tail call ptr @listAddNodeTail(ptr noundef %i.m, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.o = load i64, ptr @bio_jobs_counter, align 16, !tbaa !73
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr @bio_jobs_counter, align 16, !tbaa !73
  %i.q = tail call i32 @pthread_cond_signal(ptr noundef nonnull @bio_newjob_cond) #12 ; 0 uses
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @bio_mutex) #12 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bioCreateCloseAofJob(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !102 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = trunc i32 %2 to i8
  %i.f = shl i8 %i.e, 1
  %i.g = and i8 %i.f, 2
  %i.h = and i8 %i.d, -4
  %i.i = or disjoint i8 %i.g, %i.h
  %i.j = or disjoint i8 %i.i, 1
  store i8 %i.j, ptr %i.c, align 8
  %3 = zext i32 %0 to i64
  %4 = shl nuw i64 %3, 32
  %5 = or disjoint i64 %4, 3
  store i64 %5, ptr %i.a, align 8
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bio_mutex, i64 40)) #12 ; 0 uses
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bio_jobs, i64 8), align 8, !tbaa !40
  %i.m = tail call ptr @listAddNodeTail(ptr noundef %i.l, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @bio_jobs_counter, i64 24), align 8, !tbaa !73
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @bio_jobs_counter, i64 24), align 8, !tbaa !73
  %i.p = tail call i32 @pthread_cond_signal(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bio_newjob_cond, i64 48)) #12 ; 0 uses
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bio_mutex, i64 40)) #12 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bioCreateFsyncJob(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !103 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = trunc i32 %2 to i8
  %i.e = load i8, ptr %i.c, align 8
  %i.f = shl i8 %i.d, 1
  %i.g = and i8 %i.f, 2
  %i.h = and i8 %i.e, -3
  %i.i = or disjoint i8 %i.h, %i.g
  store i8 %i.i, ptr %i.c, align 8
  %3 = zext i32 %0 to i64
  %4 = shl nuw i64 %3, 32
  %5 = or disjoint i64 %4, 1
  store i64 %5, ptr %i.a, align 8
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bio_mutex, i64 40)) #12 ; 0 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bio_jobs, i64 8), align 8, !tbaa !40
  %i.l = tail call ptr @listAddNodeTail(ptr noundef %i.k, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @bio_jobs_counter, i64 8), align 8, !tbaa !73
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @bio_jobs_counter, i64 8), align 8, !tbaa !73
  %i.o = tail call i32 @pthread_cond_signal(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bio_newjob_cond, i64 48)) #12 ; 0 uses
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bio_mutex, i64 40)) #12 ; 0 uses
  ret void
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_setname_np(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #4

declare void @redisSetCpuAffinity(ptr noundef) local_unnamed_addr #3

declare void @makeThreadKillable() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @fdatasync(i32 noundef) local_unnamed_addr #3

declare i32 @reclaimFilePageCache(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #10

declare void @zfree(ptr noundef) local_unnamed_addr #3

declare void @listDelNode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @bioPendingJobsOfType(i32 noundef %0) local_unnamed_addr #0 !guid !104 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr @bio_job_to_worker, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [40 x i8], ptr @bio_mutex, i64 %i.d ; 2 uses
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.e) #12 ; 0 uses
  %i.g = getelementptr inbounds [8 x i8], ptr @bio_jobs_counter, i64 %i.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !73
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #12 ; 0 uses
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local void @bioDrainWorker(i32 noundef %0) local_unnamed_addr #0 !guid !106 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr @bio_job_to_worker, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr @bio_mutex, i64 %i.d ; 3 uses
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.e) #12 ; 0 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @bio_jobs, i64 %i.d ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !77
  %.not6 = icmp eq i64 %i.j, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [48 x i8], ptr @bio_newjob_cond, i64 %i.d
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.l = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.k, ptr noundef nonnull %i.e) #12 ; 0 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !77
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #12 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bioKillThreads() local_unnamed_addr #0 !guid !107 {
bb.a:
  %i.a = tail call i64 @pthread_self() #13        ; 3 uses
  %i.b = load i64, ptr @bio_threads.0, align 16, !tbaa !73 ; 3 uses
  %i.c = icmp eq i64 %i.b, %i.a
  %.not = icmp eq i64 %i.b, 0
  %or.cond = or i1 %.not, %i.c
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pthread_cancel(i64 noundef %i.b) #12
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr @bio_threads.0, align 16, !tbaa !73
  %i.g = tail call i32 @pthread_join(i64 noundef %i.f, ptr noundef null) #12 ; 2 uses
  %.not11 = icmp eq i32 %i.g, 0
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.i = icmp sgt i32 %i.h, 3                     ; 2 uses
  br i1 %.not11, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @strerror(i32 noundef %i.g) #12
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.11, i64 noundef 0, ptr noundef %i.j) #12
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.12, i64 noundef 0) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %i.k = load i64, ptr @bio_threads.1, align 8, !tbaa !73 ; 3 uses
  %i.l = icmp eq i64 %i.k, %i.a
  %.not.1 = icmp eq i64 %i.k, 0
  %or.cond.1 = or i1 %.not.1, %i.l
  br i1 %or.cond.1, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call i32 @pthread_cancel(i64 noundef %i.k) #12
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.o = load i64, ptr @bio_threads.1, align 8, !tbaa !73
  %i.p = tail call i32 @pthread_join(i64 noundef %i.o, ptr noundef null) #12 ; 2 uses
  %.not11.1 = icmp eq i32 %i.p, 0
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.r = icmp sgt i32 %i.q, 3                     ; 2 uses
  br i1 %.not11.1, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.r, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call ptr @strerror(i32 noundef %i.p) #12
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.11, i64 noundef 1, ptr noundef %i.s) #12
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  br i1 %i.r, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.12, i64 noundef 1) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  %i.t = load i64, ptr @bio_threads.2, align 16, !tbaa !73 ; 3 uses
  %i.u = icmp eq i64 %i.t, %i.a
  %.not.2 = icmp eq i64 %i.t, 0
  %or.cond.2 = or i1 %.not.2, %i.u
  br i1 %or.cond.2, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = tail call i32 @pthread_cancel(i64 noundef %i.t) #12
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.x = load i64, ptr @bio_threads.2, align 16, !tbaa !73
  %i.y = tail call i32 @pthread_join(i64 noundef %i.x, ptr noundef null) #12 ; 2 uses
  %.not11.2 = icmp eq i32 %i.y, 0
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.aa = icmp sgt i32 %i.z, 3                    ; 2 uses
  br i1 %.not11.2, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.aa, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = tail call ptr @strerror(i32 noundef %i.y) #12
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.11, i64 noundef 2, ptr noundef %i.ab) #12
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  br i1 %i.aa, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
end_hunk_0
