inline.NumInlined: 245
inline.NumDeleted: 29
begin_hunk_0_@restartServer:bb.a
  %i.ad = trunc i64 %1 to i32
  %i.ae = mul i32 %i.ad, 1000
  %i.af = tail call i32 @usleep(i32 noundef %i.ae) #39 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 32), align 8, !tbaa !398
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !344
  tail call void @zfree(ptr noundef %i.ah) #39
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 24), align 8, !tbaa !395
  %i.aj = tail call noalias ptr @zstrdup(ptr noundef %i.ai) #39
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 32), align 8, !tbaa !398 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !344
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 24), align 8, !tbaa !395
  %i.am = load ptr, ptr @environ, align 8, !tbaa !399
  %i.an = tail call i32 @execve(ptr noundef %i.al, ptr noundef nonnull %i.ak, ptr noundef %i.am) #39 ; 0 uses
  tail call void @_exit(i32 noundef 1) #41
  unreachable

bb.q:                                             ; preds = %bb.k, %bb.j, %bb.g, %bb.f, %bb.c, %bb.b
  ret i32 -1
}

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #2

declare i32 @rewriteConfig(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #4

declare i32 @usleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @execve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @setOOMScoreAdj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = icmp eq i32 %0, -1
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8
  %.not = icmp ne ptr %i.c, null
  %i.d = zext i1 %.not to i32
  %.020 = select i1 %i.b, i32 %i.d, i32 %0        ; 2 uses
  %i.e = icmp ult i32 %.020, 3
  br i1 %i.e, label %bb.c, label %bb.b, !prof !138

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.9, i32 noundef 2501) #39
  tail call void @abort() #41
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7812), align 4, !tbaa !400 ; 2 uses
  %.not28 = icmp eq i32 %i.f, 0
  %.b = load i1, ptr @setOOMScoreAdj.oom_score_adjusted_by_redis, align 4 ; 2 uses
  br i1 %.not28, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.b, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i1 true, ptr @setOOMScoreAdj.oom_score_adjusted_by_redis, align 4
  %i.g = tail call i32 (ptr, i32, ...) @open64(ptr noundef nonnull @.str.135, i32 noundef 0) #39 ; 5 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = call i64 @read(i32 noundef %i.g, ptr noundef nonnull %i.a, i64 noundef 64) #39
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !48
  %i.l = icmp sgt i32 %i.k, 3
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @__errno_location() #42
  %i.n = load i32, ptr %i.m, align 4, !tbaa !9
  %i.o = tail call ptr @strerror(i32 noundef %i.n) #39
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.136, ptr noundef %i.o)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.not29 = icmp eq i32 %i.g, -1
  br i1 %.not29, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i32 @close(i32 noundef %i.g) #39 ; 0 uses
  br label %bb.v

bb.k:                                             ; preds = %bb.f
  %i.q = call i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #39, !inline_history !401
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr @setOOMScoreAdj.oom_score_adj_base, align 4, !tbaa !9
  %i.s = call i32 @close(i32 noundef %i.g) #39    ; 0 uses
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7812), align 4, !tbaa !400
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %i.t = phi i32 [ %.pre, %bb.k ], [ %i.f, %bb.d ]
  %i.u = zext nneg i32 %.020 to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 7800), i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %i.x = icmp eq i32 %i.t, 1
  %i.y = load i32, ptr @setOOMScoreAdj.oom_score_adj_base, align 4
  %i.z = select i1 %i.x, i32 %i.y, i32 0
  %.0 = add nsw i32 %i.z, %i.w
  %i.aa = call i32 @llvm.smax.i32(i32 %.0, i32 -1000)
  %spec.store.select1 = call i32 @llvm.smin.i32(i32 %i.aa, i32 1000)
  br label %bb.o

bb.m:                                             ; preds = %bb.c
  br i1 %.b, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  store i1 false, ptr @setOOMScoreAdj.oom_score_adjusted_by_redis, align 4
  %i.ab = load i32, ptr @setOOMScoreAdj.oom_score_adj_base, align 4, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n
  %.1 = phi i32 [ %spec.store.select1, %bb.l ], [ %i.ab, %bb.n ]
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 63, ptr noundef nonnull @.str.137, i32 noundef %.1) #39 ; 0 uses
  %i.ad = call i32 (ptr, i32, ...) @open64(ptr noundef nonnull @.str.135, i32 noundef 1) #39 ; 5 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #40
  %i.ag = call i64 @write(i32 noundef %i.ad, ptr noundef nonnull %i.a, i64 noundef %i.af) #39
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !48
  %i.aj = icmp sgt i32 %i.ai, 3
  br i1 %i.aj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = tail call ptr @__errno_location() #42
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !9
  %i.am = call ptr @strerror(i32 noundef %i.al) #39
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.138, ptr noundef %i.am)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.not30 = icmp eq i32 %i.ad, -1
  br i1 %.not30, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = call i32 @close(i32 noundef %i.ad) #39  ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.ao = call i32 @close(i32 noundef %i.ad) #39  ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.m, %bb.i, %bb.j, %bb.u
  %.021 = phi i32 [ 0, %bb.m ], [ 0, %bb.u ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.t ], [ -1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret i32 %.021
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
declare i32 @atoi(ptr noundef nonnull) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local void @adjustOpenFilesLimit() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.rlimit, align 8             ; 9 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7744), align 8, !tbaa !396
  %i.b = add i32 %i.a, 32
  %i.c = zext i32 %i.b to i64                     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #39
  %i.d = call i32 @getrlimit64(i32 noundef 7, ptr noundef nonnull %0) #39
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !48
  %i.g = icmp sgt i32 %i.f, 3
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #42
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = call ptr @strerror(i32 noundef %i.i) #39
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.139, ptr noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  store i32 992, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7744), align 8, !tbaa !396
  br label %.thread43

bb.e:                                             ; preds = %bb.a
  %i.k = load i64, ptr %0, align 8, !tbaa !402    ; 6 uses
  %i.l = icmp ult i64 %i.k, %i.c
  br i1 %i.l, label %.preheader, label %.thread43

.preheader:                                       ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !402
  store i64 %i.c, ptr %i.m, align 8, !tbaa !404
  %i.n = call i32 @setrlimit64(i32 noundef 7, ptr noundef nonnull %0) #39
  %.not48 = icmp eq i32 %i.n, -1
  br i1 %.not48, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.o = tail call ptr @__errno_location() #42
  br label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.p = add nsw i64 %.04549, -16                 ; 6 uses
  %i.q = icmp ugt i64 %i.p, %i.k
  br i1 %i.q, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  store i64 %i.p, ptr %0, align 8, !tbaa !402
  store i64 %i.p, ptr %i.m, align 8, !tbaa !404
  %i.r = call i32 @setrlimit64(i32 noundef 7, ptr noundef nonnull %0) #39
  %.not = icmp eq i32 %i.r, -1
  br i1 %.not, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.04549 = phi i64 [ %i.p, %bb.g ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.s = load i32, ptr %i.o, align 4, !tbaa !9    ; 3 uses
  %i.t = icmp ult i64 %.04549, 16
  br i1 %i.t, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.f, %bb.g, %.lr.ph, %.preheader
  %.232 = phi i32 [ 0, %.preheader ], [ %i.s, %.lr.ph ], [ %i.s, %bb.g ], [ %i.s, %bb.f ]
  %.2 = phi i64 [ %i.c, %.preheader ], [ %i.p, %bb.f ], [ %i.k, %.lr.ph ], [ %i.p, %bb.g ]
  %spec.select = call i64 @llvm.umax.i64(i64 %.2, i64 %i.k) ; 4 uses
  %i.u = icmp ult i64 %spec.select, %i.c
  br i1 %i.u, label %bb.h, label %bb.p

bb.h:                                             ; preds = %.thread
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7744), align 8, !tbaa !396
  %i.w = trunc nuw i64 %spec.select to i32
  %i.x = add i32 %i.w, -32
  store i32 %i.x, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7744), align 8, !tbaa !396
  %i.y = icmp ult i64 %spec.select, 33
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !48
  %i.aa = icmp sgt i32 %i.z, 3                    ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.140, i64 noundef %i.k, i64 noundef %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @exit(i32 noundef 1) #44
  unreachable

bb.l:                                             ; preds = %bb.h
  br i1 %i.aa, label %.thread43, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.141, i32 noundef %i.v, i64 noundef %i.c)
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !48
  %i.ab = icmp sgt i32 %.pr, 3
  br i1 %i.ab, label %.thread43, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = call ptr @strerror(i32 noundef %.232) #39
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.142, i64 noundef %i.c, ptr noundef %i.ac)
  %.pr41 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !48
  %i.ad = icmp sgt i32 %.pr41, 3
  br i1 %i.ad, label %.thread43, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7744), align 8, !tbaa !396
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.143, i64 noundef %spec.select, i32 noundef %i.ae)
  br label %.thread43

bb.p:                                             ; preds = %.thread
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !48
  %i.ag = icmp sgt i32 %i.af, 2
  br i1 %i.ag, label %.thread43, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.144, i64 noundef %i.c, i64 noundef %i.k)
  br label %.thread43

.thread43:                                        ; preds = %bb.l, %bb.m, %bb.e, %bb.o, %bb.n, %bb.q, %bb.p, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #39
  ret void
}

; Function Attrs: nounwind
declare i32 @getrlimit64(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @setrlimit64(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @checkTcpBacklogSettings() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = tail call noalias ptr @fopen64(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.b)
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #39, !inline_history !401
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 332), align 4, !tbaa !405 ; 2 uses
  %i.h = icmp sle i32 %i.g, %i.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.j = icmp sgt i32 %i.i, 3
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.147, i32 noundef %i.g, i32 noundef %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %i.k = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void
}

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @closeListener(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !406  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.d = phi i32 [ %i.k, %bb.c ], [ %i.b, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9    ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !239
  tail call void @aeDeleteFileEvent(ptr noundef %i.h, i32 noundef %i.f, i32 noundef 1) #39
  %i.i = load i32, ptr %i.e, align 4, !tbaa !9
  %i.j = tail call i32 @close(i32 noundef %i.i) #39 ; 0 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !406
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi i32 [ %i.d, %.lr.ph ], [ %.pre, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !407

._crit_edge:                                      ; preds = %bb.c, %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !406
  ret void
}

declare void @aeDeleteFileEvent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @createSocketAcceptHandler(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !406
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !239
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %i.g = tail call i32 @aeCreateFileEvent(ptr noundef %i.d, i32 noundef %i.f, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %0) #39
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.loopexit, label %.lr.ph17

.lr.ph17:                                         ; preds = %.preheader, %.lr.ph17
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %.lr.ph17 ], [ %indvars.iv, %.preheader ] ; 2 uses
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, -1 ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !239
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next23
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  tail call void @aeDeleteFileEvent(ptr noundef %i.i, i32 noundef %i.k, i32 noundef 1) #39
  %i.l = icmp sgt i64 %indvars.iv22, 1
  br i1 %i.l, label %.lr.ph17, label %.loopexit, !llvm.loop !408

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.a, align 8, !tbaa !406
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %.loopexit, !llvm.loop !409

.loopexit:                                        ; preds = %bb.b, %.lr.ph17, %bb.a, %.preheader
  %.012 = phi i32 [ -1, %.preheader ], [ 0, %bb.a ], [ -1, %.lr.ph17 ], [ 0, %bb.b ]
  ret i32 %.012
}

declare i32 @aeCreateFileEvent(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @listenToPort(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !410  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !411
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !412
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit57

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !344  ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !47
  %i.l = icmp eq i8 %i.k, 45                      ; 2 uses
  %spec.select.idx = zext i1 %i.l to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.j, i64 %spec.select.idx ; 4 uses
  %i.m = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %spec.select, i32 noundef 58) #40
  %.not = icmp eq ptr %i.m, null
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 332), align 4, !tbaa !405 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i32 @anetTcp6Server(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 1624), i32 noundef %i.b, ptr noundef nonnull %spec.select, i32 noundef %i.n) #39
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = tail call i32 @anetTcpServer(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 1624), i32 noundef %i.b, ptr noundef nonnull %spec.select, i32 noundef %i.n) #39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ %i.p, %bb.d ], [ %i.o, %bb.c ]
  %i.q = load i32, ptr %i.h, align 8, !tbaa !406
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  store i32 %.sink, ptr %i.s, align 4, !tbaa !9
  %i.t = load i32, ptr %i.h, align 8, !tbaa !406
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9    ; 3 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
end_hunk_0
