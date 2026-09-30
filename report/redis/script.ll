Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/script?download=true
inline.NumInlined: 20
inline.NumDeleted: 10
begin_hunk_0_@luaAlloc:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.j, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @luaEnvInit() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 4, ptr %i.b, align 8, !tbaa !15
  %i.c = call i32 @je_mallctl(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, i64 noundef 0) #11 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !48
  %i.e = icmp sgt i32 %i.d, 3
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.8, i32 noundef %i.c) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @exit(i32 noundef 1) #12
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !13
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8328), align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @scriptIsTimedout() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @curr_run_ctx, align 8, !tbaa !51 ; 2 uses
  %.not1 = icmp eq ptr %i.a, null
  br i1 %.not1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !53
  %i.d = lshr i32 %i.c, 3
  %.lobit = and i32 %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 0, %bb.a ], [ %.lobit, %bb.b ]
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @scriptIsRunning() local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @curr_run_ctx, align 8, !tbaa !51
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @scriptGetClient() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @curr_run_ctx, align 8, !tbaa !51 ; 2 uses
  %.not1 = icmp eq ptr %i.a, null
  br i1 %.not1, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 129) #11
  tail call void @abort() #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  ret ptr %i.c
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @scriptGetCaller() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @curr_run_ctx, align 8, !tbaa !51 ; 2 uses
  %.not1 = icmp eq ptr %i.a, null
  br i1 %.not1, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 134) #11
  tail call void @abort() #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 3) i32 @scriptInterrupt(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53
  %i.c = and i32 %i.b, 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !57
  %i.f = load ptr, ptr @getMonotonicUs, align 8, !tbaa !58
  %i.g = tail call i64 %i.f() #11, !inline_history !0
  %i.h = sub i64 %i.g, %i.e
  %i.i = udiv i64 %i.h, 1000                      ; 2 uses
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8336), align 8, !tbaa !96
  %i.k = icmp slt i64 %i.i, %i.j
  br i1 %i.k, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !48
  %i.m = icmp sgt i32 %i.l, 3
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.a, align 8, !tbaa !53
  %i.o = and i32 %i.n, 128
  %.not11 = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not11, ptr @.str.13, ptr @.str.12
  %i.q = load ptr, ptr %0, align 8, !tbaa !59
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.11, i64 noundef %i.i, ptr noundef nonnull %i.p, ptr noundef %i.q) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = load ptr, ptr @curr_run_ctx, align 8, !tbaa !51 ; 2 uses
  %i.s = icmp eq ptr %0, %i.r
  br i1 %i.s, label %scriptIsTimedout.exit.i, label %bb.f, !prof !60

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.10, i32 noundef 60) #11
  tail call void @abort() #13
  unreachable

scriptIsTimedout.exit.i:                          ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !53
  %i.v = and i32 %i.u, 8
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %enterScriptTimedoutMode.exit, label %bb.g, !prof !97

bb.g:                                             ; preds = %scriptIsTimedout.exit.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.10, i32 noundef 61) #11
  tail call void @abort() #13
  unreachable

enterScriptTimedoutMode.exit:                     ; preds = %scriptIsTimedout.exit.i
  %i.w = load i32, ptr %i.a, align 8, !tbaa !53
  %i.x = or i32 %i.w, 8
  store i32 %i.x, ptr %i.a, align 8, !tbaa !53
  tail call void @blockingOperationStarts() #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56
  tail call void @protectClient(ptr noundef %i.z) #11
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %enterScriptTimedoutMode.exit
  tail call void @processEventsWhileBlocked() #11
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !53
  %i.ab = and i32 %i.aa, 16
  %.not12 = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not12, i32 2, i32 1
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.b
  %.1 = phi i32 [ 2, %bb.b ], [ %i.ac, %.sink.split ]
  ret i32 %.1
}

declare void @processEventsWhileBlocked() local_unnamed_addr #3

declare void @protectClient(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, -65536) i64 @scriptFlagsToCmdFlags(i64 noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = and i64 %0, -66566                       ; 2 uses
  %i.b = and i64 %1, 3
  %.not = icmp eq i64 %i.b, 0
  %i.c = and i64 %1, 1
  %2 = shl i64 %1, 8
  %i.d = and i64 %2, 1024
  %3 = or disjoint i64 %i.a, 4
  %spec.select.masked.a = select i1 %.not, i64 %3, i64 %i.a
  %.masked.a = or disjoint i64 %i.d, %i.c
  %.2 = or disjoint i64 %.masked.a, %spec.select.masked.a
  %i.e = xor i64 %.2, 1
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @scriptPrepareForRun(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @curr_run_ctx, align 8, !tbaa !51
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 193) #11
  tail call void @abort() #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !75
  %i.d = and i64 %i.c, 17592186044416
  %.not73 = icmp eq i64 %i.d, 0                   ; 2 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !76
  %i.f = icmp ne ptr %i.e, null
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7476), align 4
  %i.h = icmp ne i32 %i.g, 13
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7568), align 8, !tbaa !98
  %i.j = icmp eq i32 %i.i, 0                      ; 2 uses
  %i.k = tail call i32 @mustObeyClient(ptr noundef nonnull %2) #11
  %i.l = and i64 %4, 16
  %.not74 = icmp eq i64 %i.l, 0
  br i1 %.not74, label %bb.e, label %bb.x

.thread:                                          ; preds = %bb.c
  %i.m = tail call i32 @mustObeyClient(ptr noundef nonnull %2) #11
  %i.n = and i64 %4, 16
  %.not7494 = icmp eq i64 %i.n, 0
  br i1 %.not7494, label %bb.e, label %.thread98

bb.e:                                             ; preds = %.thread, %bb.d
  %i.o = phi i32 [ %i.m, %.thread ], [ %i.k, %bb.d ]
  %i.p = phi i1 [ false, %.thread ], [ %i.j, %bb.d ]
  %i.q = and i64 %4, 8
  %i.r = icmp ne i64 %i.q, 0                      ; 2 uses
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8
  %i.t = icmp ne i32 %i.s, 0
  %or.cond3 = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @addReplyError(ptr noundef nonnull %2, ptr noundef nonnull @.str.15) #11
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !77
  %i.v = add nsw i64 %i.u, 1
  store i64 %i.v, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = and i64 %4, 4
  %.not75 = icmp eq i64 %i.w, 0
  %or.cond88 = and i1 %.not75, %i.p
  br i1 %or.cond88, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @addReplyError(ptr noundef nonnull %2, ptr noundef nonnull @.str.16) #11
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.x = and i64 %4, 1
  %.not76 = icmp eq i64 %i.x, 0
  br i1 %.not76, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !76
  %i.z = icmp eq ptr %i.y, null
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7572), align 4
  %i.ab = icmp eq i32 %i.aa, 0
  %or.cond5.not79 = select i1 %i.z, i1 true, i1 %i.ab
  %i.ac = icmp ne i32 %i.o, 0                     ; 2 uses
  %or.cond7 = select i1 %or.cond5.not79, i1 true, i1 %i.ac
  br i1 %or.cond7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @addReplyError(ptr noundef nonnull %2, ptr noundef nonnull @.str.17) #11
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.ad = tail call i32 @writeCommandsDeniedByDiskError() #11 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  %or.cond9 = select i1 %i.ae, i1 true, i1 %i.ac
  br i1 %or.cond9, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = icmp eq i32 %i.ad, 2
  br i1 %i.af, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @addReplyError(ptr noundef nonnull %2, ptr noundef nonnull @.str.18) #11
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6836), align 4, !tbaa !99
  %i.ah = tail call ptr @strerror(i32 noundef %i.ag) #11
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %2, ptr noundef nonnull @.str.19, ptr noundef %i.ah) #11
  br label %.critedge

bb.r:                                             ; preds = %bb.n
  %.not80 = icmp eq i32 %5, 0
  br i1 %.not80, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @addReplyError(ptr noundef nonnull %2, ptr noundef nonnull @.str.20) #11
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.ai = tail call i32 @checkGoodReplicasStatus() #11
  %.not81 = icmp eq i32 %i.ai, 0
  br i1 %.not81, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 320), align 8, !tbaa !79
  tail call void @addReplyErrorObject(ptr noundef nonnull %2, ptr noundef %i.aj) #11
  br label %.critedge

bb.v:                                             ; preds = %bb.t, %bb.k
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8344), align 8
  %i.al = icmp ne i32 %i.ak, 0
  %or.cond11 = select i1 %.not73, i1 %i.al, i1 false
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7752), align 8
  %i.an = icmp ne i64 %i.am, 0
  %or.cond13 = select i1 %or.cond11, i1 %i.an, i1 false
  %i.ao = and i64 %4, 3
  %.not82 = icmp eq i64 %i.ao, 0
  %or.cond89 = and i1 %.not82, %or.cond13
  br i1 %or.cond89, label %bb.w, label %.thread98

bb.w:                                             ; preds = %bb.v
  tail call void @addReplyError(ptr noundef nonnull %2, ptr noundef nonnull @.str.21) #11
  br label %.critedge

bb.x:                                             ; preds = %bb.d
  br i1 %i.j, label %bb.y, label %.thread98

bb.y:                                             ; preds = %bb.x
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 288), align 8, !tbaa !100
  tail call void @addReplyErrorObject(ptr noundef nonnull %2, ptr noundef %i.ap) #11
  br label %.critedge

.thread98:                                        ; preds = %.thread, %bb.x, %bb.v
  %.not7495 = phi i1 [ false, %bb.x ], [ true, %bb.v ], [ false, %.thread ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.aq, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.ar, align 8, !tbaa !56
  store ptr %3, ptr %0, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load <2 x i32>, ptr %i.as, align 8, !tbaa !13
  store <2 x i32> %i.au, ptr %i.at, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !101
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !104
  %i.az = tail call i32 @selectDb(ptr noundef %1, i32 noundef %i.ay) #11 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 2, ptr %i.ba, align 4, !tbaa !80
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !75
  %i.bc = and i64 %i.bb, 8
  %.not83 = icmp eq i64 %i.bc, 0
  br i1 %.not83, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.thread98
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !75
  %i.bf = or i64 %i.be, 8
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !75
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread98
  %i.bg = load ptr, ptr @getMonotonicUs, align 8, !tbaa !58
  %i.bh = tail call i64 %i.bg() #11
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 3, ptr %i.bk, align 4, !tbaa !81
  %.not84 = icmp ne i32 %5, 0
  %.not85 = trunc i64 %4 to i1
  %or.cond90.not = and i1 %.not7495, %.not85
  %or.cond100 = or i1 %.not84, %or.cond90.not
  br i1 %or.cond100, label %bb.ab, label %bb.ac

end_hunk_0
