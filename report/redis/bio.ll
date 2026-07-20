inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@bioInit:bb.a
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = call ptr @strerror(i32 noundef %.lcssa) #12
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.3, ptr noundef %i.aj) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @exit(i32 noundef 1) #14
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.ak, ptr @bio_threads.0, align 16, !tbaa !49
  %i.al = call i32 @pthread_create(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull @bioProcessBackgroundJobs, ptr noundef nonnull inttoptr (i64 1 to ptr)) #12 ; 2 uses
  %.not14.1 = icmp eq i32 %i.al, 0
  br i1 %.not14.1, label %bb.n, label %bb.j

bb.n:                                             ; preds = %bb.m
  %i.am = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.am, ptr @bio_threads.1, align 8, !tbaa !49
  %i.an = call i32 @pthread_create(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull @bioProcessBackgroundJobs, ptr noundef nonnull inttoptr (i64 2 to ptr)) #12 ; 2 uses
  %.not14.2 = icmp eq i32 %i.an, 0
  br i1 %.not14.2, label %bb.o, label %bb.j

bb.o:                                             ; preds = %bb.n
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.ao, ptr @bio_threads.2, align 16, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @listCreate() local_unnamed_addr #3

declare i32 @anetPipe(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_serverLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare i32 @aeCreateFileEvent(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @bioPipeReadJobCompList(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree readnone captures(none) %2, i32 %3) #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = call i64 @read(i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef 128) #12
  %i.c = icmp eq i64 %i.b, 128
  br i1 %i.c, label %bb.b, label %bb.c, !llvm.loop !52

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @bio_mutex_comp) #12 ; 0 uses
  %i.e = load ptr, ptr @bio_comp_list, align 8, !tbaa !13 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @bio_mutex_comp) #12 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @listCreate() #12
  store ptr %i.i, ptr @bio_comp_list, align 8, !tbaa !13
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @bio_mutex_comp) #12 ; 0 uses
  %i.k = load i64, ptr %i.f, align 8, !tbaa !53
  %.not1215 = icmp eq i64 %i.k, 0
  br i1 %.not1215, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 4 uses
  tail call void @listDelNode(ptr noundef nonnull %i.e, ptr noundef %i.l) #12
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62
  tail call void %i.o(i64 noundef %i.q, ptr noundef %i.s) #12
  tail call void @zfree(ptr noundef nonnull %i.n) #12
  %i.t = load i64, ptr %i.f, align 8, !tbaa !53
  %.not12 = icmp eq i64 %i.t, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  tail call void @listRelease(ptr noundef nonnull %i.e) #12
  br label %bb.e

bb.e:                                             ; preds = %.thread, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_attr_getstacksize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_attr_setstacksize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define dso_local noalias noundef nonnull ptr @bioProcessBackgroundJobs(ptr noundef %0) #7 {
bb.a:
  %1 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.b = icmp ult ptr %0, inttoptr (i64 3 to ptr)
  br i1 %i.b, label %bb.c, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 263) #12
  tail call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @pthread_self() #13
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @bio_worker_title, i64 %i.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.f = tail call i32 @pthread_setname_np(i64 noundef %i.c, ptr noundef %i.e) #12 ; 0 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8632), align 8, !tbaa !66
  tail call void @redisSetCpuAffinity(ptr noundef %i.g) #12
  tail call void @makeThreadKillable() #12
  %i.h = getelementptr inbounds nuw [40 x i8], ptr @bio_mutex, i64 %i.a ; 4 uses
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #12 ; 0 uses
  %i.j = call i32 @sigemptyset(ptr noundef nonnull %1) #12 ; 0 uses
  %i.k = call i32 @sigaddset(ptr noundef nonnull %1, i32 noundef 14) #12 ; 0 uses
  %i.l = call i32 @pthread_sigmask(i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) #12 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.o = icmp sgt i32 %i.n, 3
  %or.cond7 = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call ptr @strerror(i32 noundef %i.l) #12
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef %i.p) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @bio_jobs, i64 %i.a ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr @bio_newjob_cond, i64 %i.a ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %bb.e
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = call i32 @pthread_cond_wait(ptr noundef nonnull %i.r, ptr noundef nonnull %i.h) #12 ; 0 uses
  br label %.backedge

bb.h:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !56   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 14 uses
  %i.aa = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #12 ; 0 uses
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !67  ; 5 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8
  %.not72 = trunc i8 %i.ae to i1
  br i1 %.not72, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !67
  %i.ah = call i32 @fdatasync(i32 noundef %i.ag) #12
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @__errno_location() #13
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9  ; 3 uses
  %.not73 = icmp eq i32 %i.ak, 9
  br i1 %.not73, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = icmp eq i32 %i.ak, 22
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.an = icmp sgt i32 %i.am, 3
  %or.cond9 = select i1 %i.al, i1 true, i1 %i.an
  br i1 %or.cond9, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = call ptr @strerror(i32 noundef %i.ak) #12
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.7, ptr noundef %i.ao) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ap = load i8, ptr %i.ad, align 8
  %i.aq = and i8 %i.ap, 2
  %.not74 = icmp eq i8 %i.aq, 0
  br i1 %.not74, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !67
  %i.at = call i32 @reclaimFilePageCache(i32 noundef %i.as, i64 noundef 0, i64 noundef 0) #12
  %i.au = icmp ne i32 %i.at, -1
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.aw = icmp sgt i32 %i.av, 2
  %or.cond11 = select i1 %i.au, i1 true, i1 %i.aw
  br i1 %or.cond11, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = tail call ptr @__errno_location() #13
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.az = call ptr @strerror(i32 noundef %i.ay) #12
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %i.az) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !67
  %i.bc = call i32 @close(i32 noundef %i.bb) #12  ; 0 uses
  br label %bb.ag

bb.r:                                             ; preds = %bb.h
  %i.bd = icmp eq i32 %i.ab, 3
  switch i32 %i.ab, label %bb.ad [
    i32 3, label %bb.s
    i32 1, label %bb.s
    i32 2, label %bb.ac
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !67
  %i.bg = call i32 @fdatasync(i32 noundef %i.bf) #12
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bi = tail call ptr @__errno_location() #13   ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !9
  switch i32 %i.bj, label %bb.u [
    i32 9, label %bb.w
    i32 22, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.bk = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6860) monotonic, align 4
  store atomic i32 -1, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6860) monotonic, align 4
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !9  ; 2 uses
  store atomic i32 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6864) monotonic, align 8
  %i.bm = icmp ne i32 %i.bk, 0
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.bo = icmp sgt i32 %i.bn, 3
  %or.cond13 = select i1 %i.bm, i1 true, i1 %i.bo
  br i1 %or.cond13, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = call ptr @strerror(i32 noundef %i.bl) #12
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.7, ptr noundef %i.bp) #12
  br label %bb.x

bb.w:                                             ; preds = %bb.t, %bb.t, %bb.s
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6860) monotonic, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !67
  store atomic i64 %i.br, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7248) monotonic, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bt = load i8, ptr %i.bs, align 8
  %i.bu = and i8 %i.bt, 2
  %.not71 = icmp eq i8 %i.bu, 0
  br i1 %.not71, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load i32, ptr %i.be, align 4, !tbaa !67
  %i.bw = call i32 @reclaimFilePageCache(i32 noundef %i.bv, i64 noundef 0, i64 noundef 0) #12
  %i.bx = icmp ne i32 %i.bw, -1
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.bz = icmp sgt i32 %i.by, 2
  %or.cond15 = select i1 %i.bx, i1 true, i1 %i.bz
  br i1 %or.cond15, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = tail call ptr @__errno_location() #13
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !9
  %i.cc = call ptr @strerror(i32 noundef %i.cb) #12
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %i.cc) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  br i1 %i.bd, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.cd = load i32, ptr %i.be, align 4, !tbaa !67
  %i.ce = call i32 @close(i32 noundef %i.cd) #12  ; 0 uses
  br label %bb.ag

bb.ac:                                            ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void %i.cg(ptr noundef nonnull %i.ch) #12
  br label %bb.ag

bb.ad:                                            ; preds = %bb.r
  %i.ci = add i32 %i.ab, -4
  %or.cond5 = icmp ult i32 %i.ci, 3
  br i1 %or.cond5, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cj = call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #16 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !67
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !59
  %i.cm = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !61
  %i.cp = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !62
  %i.cs = call i32 @pthread_mutex_lock(ptr noundef nonnull @bio_mutex_comp) #12 ; 0 uses
  %i.ct = load ptr, ptr @bio_comp_list, align 8, !tbaa !13
  %i.cu = call ptr @listAddNodeTail(ptr noundef %i.ct, ptr noundef nonnull %i.cj) #12 ; 0 uses
  %i.cv = call i32 @pthread_mutex_unlock(ptr noundef nonnull @bio_mutex_comp) #12 ; 0 uses
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @job_comp_pipe, i64 4), align 4, !tbaa !9
  %i.cx = call i64 @write(i32 noundef %i.cw, ptr noundef nonnull @.str.9, i64 noundef 1) #12 ; 0 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 358, ptr noundef nonnull @.str.10) #12
  call void @abort() #15
  unreachable

bb.ag:                                            ; preds = %bb.ab, %bb.aa, %bb.ae, %bb.ac, %bb.q
  call void @zfree(ptr noundef nonnull %i.z) #12
  %i.cy = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #12 ; 0 uses
  %i.cz = load ptr, ptr %i.q, align 8, !tbaa !13
  call void @listDelNode(ptr noundef %i.cz, ptr noundef nonnull %i.x) #12
  %i.da = zext nneg i32 %i.ab to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr @bio_jobs_counter, i64 %i.da ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !49
  %i.dd = add i64 %i.dc, -1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !49
  %i.de = call i32 @pthread_cond_signal(ptr noundef nonnull %i.r) #12 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.ag, %bb.g
  br label %bb.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @bioSubmitJob(i32 noundef %0, ptr noundef initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  store i32 %0, ptr %1, align 8, !tbaa !67
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [4 x i8], ptr @bio_job_to_worker, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr @bio_mutex, i64 %i.d ; 2 uses
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.e) #12 ; 0 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @bio_jobs, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = tail call ptr @listAddNodeTail(ptr noundef %i.h, ptr noundef nonnull %1) #12 ; 0 uses
  %i.j = getelementptr inbounds [8 x i8], ptr @bio_jobs_counter, i64 %i.a ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !49
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw [48 x i8], ptr @bio_newjob_cond, i64 %i.d
  %i.n = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.m) #12 ; 0 uses
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
define dso_local void @bioCreateLazyFreeJob(ptr noundef %0, i32 noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 3
  %i.c = add nsw i64 %i.b, 32
  %i.d = tail call noalias ptr @zmalloc(i64 noundef %i.c) #16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !67
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
  %i.k = icmp eq i32 %1, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %3 = and i32 %1, 2147483646
  %unroll_iter = zext nneg i32 %3 to i64
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.j
  %lcmp.mod.not = trunc i32 %1 to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge

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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  store ptr %i.r, ptr %i.s, align 8, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %bb.a
  call void @llvm.va_end.p0(ptr nonnull %2)
  store i32 2, ptr %i.d, align 8, !tbaa !67
  %i.t = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bio_mutex, i64 80)) #12 ; 0 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bio_jobs, i64 16), align 16, !tbaa !13
  %i.v = call ptr @listAddNodeTail(ptr noundef %i.u, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @bio_jobs_counter, i64 16), align 16, !tbaa !49
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr getelementptr inbounds nuw (i8, ptr @bio_jobs_counter, i64 16), align 16, !tbaa !49
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
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !68
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !67
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
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !67
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !69
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

; Function Attrs: nounwind uwtable
define dso_local void @bioCreateCompRq(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
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
  store ptr %1, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.d, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %3, ptr %i.e, align 8, !tbaa !67
  store i32 %switch.offset, ptr %i.b, align 8, !tbaa !67
  %i.f = zext nneg i32 %switch.offset to i64      ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @bio_job_to_worker, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr @bio_mutex, i64 %i.i ; 2 uses
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.j) #12 ; 0 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @bio_jobs, i64 %i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = tail call ptr @listAddNodeTail(ptr noundef %i.m, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @bio_jobs_counter, i64 %i.f ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw [48 x i8], ptr @bio_newjob_cond, i64 %i.i
  %i.s = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.r) #12 ; 0 uses
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #12 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bioCreateCloseJob(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %0, ptr %i.b, align 4, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = trunc i32 %1 to i8
  %i.e = load i8, ptr %i.c, align 8
  %i.f = and i8 %i.d, 1
  %i.g = and i8 %i.e, -4
  %i.h = trunc i32 %2 to i8
  %i.i = shl i8 %i.h, 1
  %i.j = and i8 %i.i, 2
  %i.k = or disjoint i8 %i.j, %i.f
  %i.l = or disjoint i8 %i.k, %i.g
  store i8 %i.l, ptr %i.c, align 8
  store i32 0, ptr %i.a, align 8, !tbaa !67
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @bio_mutex) #12 ; 0 uses
  %i.n = load ptr, ptr @bio_jobs, align 16, !tbaa !13
  %i.o = tail call ptr @listAddNodeTail(ptr noundef %i.n, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.p = load i64, ptr @bio_jobs_counter, align 16, !tbaa !49
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr @bio_jobs_counter, align 16, !tbaa !49
  %i.r = tail call i32 @pthread_cond_signal(ptr noundef nonnull @bio_newjob_cond) #12 ; 0 uses
  %i.s = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @bio_mutex) #12 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bioCreateCloseAofJob(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %0, ptr %i.b, align 4, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i32 %2 to i8
  %i.g = shl i8 %i.f, 1
  %i.h = and i8 %i.g, 2
  %i.i = and i8 %i.e, -4
  %i.j = or disjoint i8 %i.h, %i.i
  %i.k = or disjoint i8 %i.j, 1
  store i8 %i.k, ptr %i.d, align 8
  store i32 3, ptr %i.a, align 8, !tbaa !67
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bio_mutex, i64 40)) #12 ; 0 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bio_jobs, i64 8), align 8, !tbaa !13
  %i.n = tail call ptr @listAddNodeTail(ptr noundef %i.m, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @bio_jobs_counter, i64 24), align 8, !tbaa !49
  %i.p = add i64 %i.o, 1
end_hunk_0
