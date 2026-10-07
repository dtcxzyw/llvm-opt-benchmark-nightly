Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/server?download=true
inline.NumInlined: 245
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 23
begin_hunk_0_@fork
declare i32 @fork() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setsid() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @getVersion() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @sdsempty() #39
  %i.b = tail call ptr @redisGitSHA1() #39
  %i.c = tail call ptr @redisGitDirty() #39
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #39, !inline_history !268
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  %i.h = tail call i64 @redisBuildId() #39
  %i.i = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.a, ptr noundef nonnull @.str.439, ptr noundef nonnull @.str.374, ptr noundef %i.b, i32 noundef %i.g, ptr noundef nonnull @.str.380, i32 noundef 64, i64 noundef %i.h) #39
  ret ptr %i.i
}

declare i64 @redisBuildId() local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @usage() local_unnamed_addr #31 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.440, i64 58, i64 1, ptr %i.a) #46 ; 0 uses
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite1 = tail call i64 @fwrite(ptr nonnull @.str.441, i64 49, i64 1, ptr %i.b) #46 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite2 = tail call i64 @fwrite(ptr nonnull @.str.442, i64 38, i64 1, ptr %i.c) #46 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite3 = tail call i64 @fwrite(ptr nonnull @.str.443, i64 35, i64 1, ptr %i.d) #46 ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite4 = tail call i64 @fwrite(ptr nonnull @.str.444, i64 48, i64 1, ptr %i.e) #46 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @.str.445, i64 37, i64 1, ptr %i.f) #46 ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !64
  %fputc = tail call i32 @fputc(i32 10, ptr %i.g) ; 0 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite7 = tail call i64 @fwrite(ptr nonnull @.str.446, i64 10, i64 1, ptr %i.h) #46 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite8 = tail call i64 @fwrite(ptr nonnull @.str.447, i64 57, i64 1, ptr %i.i) #46 ; 0 uses
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite9 = tail call i64 @fwrite(ptr nonnull @.str.448, i64 49, i64 1, ptr %i.j) #46 ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite10 = tail call i64 @fwrite(ptr nonnull @.str.449, i64 43, i64 1, ptr %i.k) #46 ; 0 uses
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite11 = tail call i64 @fwrite(ptr nonnull @.str.450, i64 34, i64 1, ptr %i.l) #46 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite12 = tail call i64 @fwrite(ptr nonnull @.str.451, i64 61, i64 1, ptr %i.m) #46 ; 0 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite13 = tail call i64 @fwrite(ptr nonnull @.str.452, i64 61, i64 1, ptr %i.n) #46 ; 0 uses
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite14 = tail call i64 @fwrite(ptr nonnull @.str.453, i64 60, i64 1, ptr %i.o) #46 ; 0 uses
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite15 = tail call i64 @fwrite(ptr nonnull @.str.454, i64 15, i64 1, ptr %i.p) #46 ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !64
  %fwrite16 = tail call i64 @fwrite(ptr nonnull @.str.455, i64 52, i64 1, ptr %i.q) #46 ; 0 uses
  tail call void @exit(i32 noundef 1) #44
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @redisAsciiArt() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16384) ptr @zmalloc(i64 noundef 16384) #43 ; 4 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !99
  %.not = icmp eq i32 %i.b, 0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 204), align 4
  %.not6 = icmp eq i32 %i.c, 0
  %.str.369..str.368 = select i1 %.not6, ptr @.str.369, ptr @.str.368
  %.0 = select i1 %.not, ptr %.str.369..str.368, ptr @.str.363 ; 2 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7104), align 8, !tbaa !72
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7096), align 8, !tbaa !60
  %i.f = load i8, ptr %i.e, align 1, !tbaa !61
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !64
  %i.i = tail call i32 @fileno(ptr noundef %i.h) #39
  %i.j = tail call i32 @isatty(i32 noundef %i.i) #39
  %.not8 = icmp ne i32 %i.j, 0
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 216), align 8
  %i.l = icmp ne i32 %i.k, 0
  %or.cond = select i1 %.not8, i1 true, i1 %i.l
  br i1 %or.cond, label %.critedge, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 216), align 8, !tbaa !806
  %.old11.not = icmp eq i32 %.old, 0
  br i1 %.old11.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !62
  %i.n = icmp sgt i32 %i.m, 2
  br i1 %i.n, label %serverLogRaw.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 324), align 4, !tbaa !311 ; 2 uses
  %.not9 = icmp eq i32 %i.o, 0
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 328), align 8
  %i.q = select i1 %.not9, i32 %i.p, i32 %i.o
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.457, ptr noundef nonnull %.0, i32 noundef %i.q)
  br label %serverLogRaw.exit

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.r = tail call ptr @redisGitSHA1() #39
  %i.s = tail call ptr @redisGitDirty() #39
  %i.t = tail call i64 @__isoc23_strtol(ptr noundef %i.s, ptr noundef null, i32 noundef 10) #39
  %i.u = icmp sgt i64 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 324), align 4, !tbaa !311 ; 2 uses
  %.not10 = icmp eq i32 %i.w, 0
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 328), align 8
  %i.y = select i1 %.not10, i32 %i.x, i32 %i.w
  %i.z = tail call i32 @getpid() #39
  %i.aa = sext i32 %i.z to i64
  %i.ab = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16384, ptr noundef nonnull @.str.456, ptr noundef nonnull @.str.374, ptr noundef %i.r, i32 noundef %i.v, ptr noundef nonnull @.str.458, ptr noundef nonnull %.0, i32 noundef %i.y, i64 noundef %i.aa) #39 ; 0 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7096), align 8, !tbaa !60 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !61
  %i.ae = icmp eq i8 %i.ad, 0                     ; 2 uses
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !62
  %i.ag = icmp sgt i32 %i.af, 2
  br i1 %i.ag, label %serverLogRaw.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !64
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ai = tail call noalias ptr @fopen64(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = phi ptr [ %i.ah, %bb.h ], [ %i.ai, %bb.i ] ; 4 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %serverLogRaw.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %fputs.i = tail call i32 @fputs(ptr nonnull %i.a, ptr nonnull %i.aj) ; 0 uses
  %i.ak = tail call i32 @fflush(ptr noundef nonnull %i.aj) ; 0 uses
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = tail call i32 @fclose(ptr noundef nonnull %i.aj) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7104), align 8, !tbaa !72
  %.not28.i = icmp eq i32 %i.am, 0
  br i1 %.not28.i, label %serverLogRaw.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (i32, ptr, ...) @syslog(i32 noundef 5, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a) #39
  br label %serverLogRaw.exit

serverLogRaw.exit:                                ; preds = %bb.n, %bb.m, %bb.j, %.critedge, %bb.f, %bb.e
  tail call void @zfree(ptr noundef %i.a) #39
  ret void
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @warnAboutInsecureConfig() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @DefaultUser, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4, !tbaa !809
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @DefaultUser, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load atomic i32, ptr %i.f seq_cst, align 4, !tbaa !809
  %i.h = and i32 %i.g, 2
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.b
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 464), align 8, !tbaa !239 ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %sub_0.preheader, label %.thread.thread

.thread.thread:                                   ; preds = %.preheader
  %0 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1896), align 8, !tbaa !810
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %bb.f, label %bb.g

sub_0.preheader:                                  ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %sub_0

bb.c:                                             ; preds = %.tail24.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread.a, label %sub_0, !llvm.loop !807

sub_0:                                            ; preds = %sub_0.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %sub_0.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 336), i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !240  ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !61
  %i.n = icmp eq i8 %i.m, 45
  %spec.select.idx = zext i1 %i.n to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.l, i64 %spec.select.idx ; 7 uses
  %i.o = load i8, ptr %spec.select, align 1       ; 2 uses
  %.not36 = icmp eq i8 %i.o, 42
  br i1 %.not36, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %.thread.a, label %.thread41

.tail.thread:                                     ; preds = %sub_0
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select, ptr noundef nonnull dereferenceable(8) @.str.459) #40
  %.not16 = icmp eq i32 %i.s, 0
  br i1 %.not16, label %.thread.a, label %sub_025

.thread41:                                        ; preds = %.tail
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select, ptr noundef nonnull dereferenceable(8) @.str.459) #40
  %.not1642 = icmp eq i32 %i.t, 0
  br i1 %.not1642, label %.thread.a, label %.tail24.thread

sub_025:                                          ; preds = %.tail.thread
  %.not37 = icmp eq i8 %i.o, 58
  br i1 %.not37, label %sub_126, label %.tail24.thread

sub_126:                                          ; preds = %sub_025
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %.not38 = icmp eq i8 %i.v, 58
  br i1 %.not38, label %.tail24, label %.tail24.thread

.tail24:                                          ; preds = %sub_126
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %.thread.a, label %.tail24.thread

.tail24.thread:                                   ; preds = %.thread41, %sub_126, %sub_025, %.tail24
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select, ptr noundef nonnull dereferenceable(4) @.str.461) #40
  %.not18.not = icmp eq i32 %i.z, 0
  br i1 %.not18.not, label %.thread.a, label %bb.c

.thread.a:                                        ; preds = %.tail24.thread, %bb.c, %.tail, %.tail24, %.tail.thread, %.thread41
  %2 = phi i1 [ true, %.tail24.thread ], [ true, %.tail.thread ], [ true, %.tail24 ], [ true, %.tail ], [ false, %bb.c ], [ true, %.thread41 ]
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1896), align 8, !tbaa !810
  %i.ab = icmp eq i32 %i.aa, 0                    ; 2 uses
  %or.cond = and i1 %i.ab, %2
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread.a
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !62
  %3 = icmp sgt i32 %i.ac, 3
  br i1 %3, label %bb.h, label %.sink.split

bb.e:                                             ; preds = %.thread.a
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread.thread, %bb.e
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !62
  %i.ae = icmp sgt i32 %i.ad, 3
  br i1 %i.ae, label %bb.h, label %.sink.split

bb.g:                                             ; preds = %.thread.thread, %bb.e
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !62
  %i.ag = icmp sgt i32 %i.af, 3
  br i1 %i.ag, label %bb.h, label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f, %bb.d
  %.str.462.sink = phi ptr [ @.str.462, %bb.d ], [ @.str.463, %bb.f ], [ @.str.464, %bb.g ]
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull %.str.462.sink)
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.d, %bb.g, %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @listenerByType(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @connectionIndexByType(ptr noundef %0) #39 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [104 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 496), i64 %i.c
  %.0 = select i1 %i.b, ptr null, ptr %i.d
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @changeListener(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !270  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %closeListener.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.d = phi i32 [ %i.k, %bb.c ], [ %i.b, %bb.a ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26   ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !210
  tail call void @aeDeleteFileEvent(ptr noundef %i.h, i32 noundef %i.f, i32 noundef 1) #39
  %i.i = load i32, ptr %i.e, align 4, !tbaa !26
  %i.j = tail call i32 @close(i32 noundef %i.i) #39 ; 0 uses
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !270
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.k = phi i32 [ %i.d, %.lr.ph.i ], [ %.pre.i, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next.i, %i.l
  br i1 %i.m, label %.lr.ph.i, label %closeListener.exit, !llvm.loop !2

closeListener.exit:                               ; preds = %bb.c, %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !270
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.o = load i32, ptr %i.n, align 4, !tbaa !271
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %closeListener.exit
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6532), align 4, !tbaa !393
  %.not8 = icmp eq i32 %i.q, 0
  br i1 %.not8, label %redisSetProcTitle.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 32), align 8, !tbaa !267
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !240
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6536), align 8, !tbaa !394
  %i.u = tail call ptr @sdstemplate(ptr noundef %i.t, ptr noundef nonnull @redisProcTitleGetVariable, ptr noundef %i.s) #39 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %redisSetProcTitle.exit, label %expandProcTitleTemplate.exit.i

expandProcTitleTemplate.exit.i:                   ; preds = %bb.e
  %i.v = tail call ptr @sdstrim(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.40) #39 ; 2 uses
  %.not8.i = icmp eq ptr %i.v, null
  br i1 %.not8.i, label %redisSetProcTitle.exit, label %redisSetProcTitle.exit.sink.split

bb.f:                                             ; preds = %closeListener.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !312
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !316
  %i.aa = tail call i32 %i.z(ptr noundef nonnull %0) #39, !inline_history !6
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.g, label %redisSetProcTitle.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !312
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !318
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !270
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i9, label %.loopexit

.lr.ph.i9:                                        ; preds = %bb.g, %bb.h
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i11, %bb.h ], [ 0, %bb.g ] ; 4 uses
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !210
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i10
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26
  %i.aj = tail call i32 @aeCreateFileEvent(ptr noundef %i.ag, i32 noundef %i.ai, i32 noundef 1, ptr noundef %i.ad, ptr noundef nonnull %0) #39
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %.preheader.i, label %bb.h

.preheader.i:                                     ; preds = %.lr.ph.i9
  %.not.i = icmp eq i64 %indvars.iv.i10, 0
  br i1 %.not.i, label %createSocketAcceptHandler.exit, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %.preheader.i, %.lr.ph17.i
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i, %.lr.ph17.i ], [ %indvars.iv.i10, %.preheader.i ] ; 2 uses
  %indvars.iv.next23.i = add nsw i64 %indvars.iv22.i, -1 ; 2 uses
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !210
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next23.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26
  tail call void @aeDeleteFileEvent(ptr noundef %i.al, i32 noundef %i.an, i32 noundef 1) #39
  %i.ao = icmp sgt i64 %indvars.iv22.i, 1
  br i1 %i.ao, label %.lr.ph17.i, label %createSocketAcceptHandler.exit, !llvm.loop !3

bb.h:                                             ; preds = %.lr.ph.i9
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i10, 1 ; 2 uses
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !270
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next.i11, %i.aq
  br i1 %i.ar, label %.lr.ph.i9, label %.loopexit, !llvm.loop !4

createSocketAcceptHandler.exit:                   ; preds = %.lr.ph17.i, %.preheader.i
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !312
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !317
  %i.au = tail call ptr %i.at(ptr noundef null) #39
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.9, i32 noundef 7124, ptr noundef nonnull @.str.465, ptr noundef %i.au) #39
  tail call void @abort() #41
  unreachable

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6532), align 4, !tbaa !393
  %.not7 = icmp eq i32 %i.av, 0
  br i1 %.not7, label %redisSetProcTitle.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 32), align 8, !tbaa !267
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !240
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6536), align 8, !tbaa !394
  %i.az = tail call ptr @sdstemplate(ptr noundef %i.ay, ptr noundef nonnull @redisProcTitleGetVariable, ptr noundef %i.ax) #39 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.az, null
  br i1 %.not.i.i12, label %redisSetProcTitle.exit, label %expandProcTitleTemplate.exit.i13

expandProcTitleTemplate.exit.i13:                 ; preds = %bb.i
  %i.ba = tail call ptr @sdstrim(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.40) #39 ; 2 uses
  %.not8.i14 = icmp eq ptr %i.ba, null
  br i1 %.not8.i14, label %redisSetProcTitle.exit, label %redisSetProcTitle.exit.sink.split

redisSetProcTitle.exit.sink.split:                ; preds = %expandProcTitleTemplate.exit.i13, %expandProcTitleTemplate.exit.i
  %.sink28 = phi ptr [ %i.v, %expandProcTitleTemplate.exit.i ], [ %i.ba, %expandProcTitleTemplate.exit.i13 ] ; 2 uses
  tail call void (ptr, ...) @setproctitle(ptr noundef nonnull @.str.2, ptr noundef nonnull %.sink28) #39
  tail call void @sdsfree(ptr noundef nonnull %.sink28) #39
  br label %redisSetProcTitle.exit

redisSetProcTitle.exit:                           ; preds = %redisSetProcTitle.exit.sink.split, %expandProcTitleTemplate.exit.i13, %bb.i, %expandProcTitleTemplate.exit.i, %bb.e, %.loopexit, %bb.f, %bb.d
  %.0 = phi i32 [ -1, %bb.f ], [ 0, %bb.d ], [ 0, %.loopexit ], [ 0, %expandProcTitleTemplate.exit.i13 ], [ 0, %bb.e ], [ 0, %expandProcTitleTemplate.exit.i ], [ 0, %bb.i ], [ 0, %redisSetProcTitle.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @redisSetProcTitle(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 32), align 8, !tbaa !267
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6536), align 8, !tbaa !394
  %i.d = tail call ptr @sdstemplate(ptr noundef %i.c, ptr noundef nonnull @redisProcTitleGetVariable, ptr noundef %.0) #39 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %expandProcTitleTemplate.exit.thread, label %expandProcTitleTemplate.exit

expandProcTitleTemplate.exit:                     ; preds = %bb.c
  %i.e = tail call ptr @sdstrim(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.40) #39 ; 3 uses
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %expandProcTitleTemplate.exit.thread, label %bb.d

bb.d:                                             ; preds = %expandProcTitleTemplate.exit
  tail call void (ptr, ...) @setproctitle(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.e) #39
  tail call void @sdsfree(ptr noundef nonnull %i.e) #39
  br label %expandProcTitleTemplate.exit.thread

expandProcTitleTemplate.exit.thread:              ; preds = %bb.c, %expandProcTitleTemplate.exit, %bb.d
  %.05 = phi i32 [ 0, %bb.d ], [ -1, %expandProcTitleTemplate.exit ], [ -1, %bb.c ]
  ret i32 %.05
}

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @sigShutdownHandler(i32 noundef %0) #0 {
bb.a:
  %switch.selectcmp6 = icmp eq i32 %0, 2          ; 2 uses
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 112) monotonic, align 8
  %i.b = icmp ne i32 %i.a, 0
  %or.cond = and i1 %switch.selectcmp6, %i.b
end_hunk_0
