Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-benchmark?download=true
inline.NumInlined: 91
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@getRedisContext:bb.a

bb.h:                                             ; preds = %bb.f
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.151, ptr noundef nonnull %2, ptr noundef nonnull %i.j) #25 ; 0 uses
  br label %bb.z

bb.i:                                             ; preds = %bb.e
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 48), align 8, !tbaa !62
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !22
  %i.p = call i32 @cliSecureConnection(ptr noundef nonnull %.040, ptr noundef nonnull byval(%struct.cliSSLconfig) align 8 getelementptr inbounds nuw (i8, ptr @config, i64 56), ptr noundef nonnull %i.a) #20
  %i.q = icmp eq i32 %i.p, -1
  %i.r = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.s = icmp ne ptr %i.r, null
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.u = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.152, ptr noundef nonnull %i.r) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.z

bb.l:                                             ; preds = %.thread, %bb.i
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 24), align 8, !tbaa !43 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 32), align 8, !tbaa !44 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.z = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef nonnull %.040, ptr noundef nonnull @.str.153, ptr noundef nonnull %i.v) #20
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.aa = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef nonnull %.040, ptr noundef nonnull @.str.154, ptr noundef nonnull %i.x, ptr noundef nonnull %i.v) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.039 = phi ptr [ %i.z, %bb.n ], [ %i.aa, %bb.o ] ; 5 uses
  %.not47 = icmp eq ptr %.039, null
  br i1 %.not47, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = load i32, ptr %.039, align 8, !tbaa !91
  %i.ac = icmp eq i32 %i.ab, 6
  br i1 %i.ac, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.039, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !92 ; 2 uses
  br i1 %i.b, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ag = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.155, ptr noundef %0, i32 noundef %1, ptr noundef %i.af) #25 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ah = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.156, ptr noundef nonnull %2, ptr noundef %i.af) #25 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @freeReplyObject(ptr noundef nonnull %.039) #20
  call void @redisFree(ptr noundef nonnull %.040) #20
  call void @exit(i32 noundef 1) #24
  unreachable

bb.v:                                             ; preds = %bb.q
  call void @freeReplyObject(ptr noundef nonnull %.039) #20
  br label %bb.aa

bb.w:                                             ; preds = %bb.p
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !40
  %fwrite = call i64 @fwrite(ptr nonnull @.str.157, i64 34, i64 1, ptr %i.ai) #23 ; 0 uses
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !40 ; 2 uses
  br i1 %i.b, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ak = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.64, ptr noundef %0, i32 noundef %1) #25 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.al = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.158, ptr noundef nonnull %2) #25 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.k, %bb.g, %bb.h, %bb.x, %bb.y
  call void @freeReplyObject(ptr noundef null) #20
  call void @redisFree(ptr noundef %.040) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.l, %bb.z, %bb.v
  %.041 = phi ptr [ null, %bb.z ], [ %.040, %bb.v ], [ %.040, %bb.l ]
  ret ptr %.041
}

declare ptr @redisCommand(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @redisFree(ptr noundef) local_unnamed_addr #3

declare void @freeReplyObject(ptr noundef) local_unnamed_addr #3

declare ptr @redisConnect(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @redisConnectUnix(ptr noundef) local_unnamed_addr #3

declare i32 @cliSecureConnection(ptr noundef, ptr noundef byval(%struct.cliSSLconfig) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @zcalloc(i64 noundef) local_unnamed_addr #10

declare i32 @redisAppendCommand(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @redisGetReply(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

declare void @aeDeleteEventLoop(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

declare ptr @redisConnectNonBlock(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @redisConnectUnixNonBlock(ptr noundef) local_unnamed_addr #3

declare ptr @hi_sdsempty() local_unnamed_addr #3

declare i32 @aeCreateFileEvent(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @writeHandler(ptr noundef %0, i32 %1, ptr noundef %2, i32 %3) #0 {
bb.a:
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !132
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 180), align 4, !tbaa !49
  %i.e = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @config, i64 132), i32 %i.d monotonic, align 4
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 128), align 8, !tbaa !35
  %.not = icmp slt i32 %i.e, %i.f
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 168), align 8, !tbaa !51
  %.not38 = icmp eq i32 %i.g, 0
  br i1 %.not38, label %randomizeClientKey.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !134
  %.not17.i = icmp eq i64 %i.i, 0
  br i1 %.not17.i, label %randomizeClientKey.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %.01216.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bj, %bb.g ] ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01216.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 11
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 172), align 4, !tbaa !52
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i64 @random() #20
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 172), align 4, !tbaa !52
  %i.r = sext i32 %i.q to i64
  %i.s = srem i64 %i.p, %i.r
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.010.i = phi i64 [ %i.s, %bb.f ], [ 0, %bb.e ] ; 12 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %6 = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %7 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %8 = udiv i64 %.010.i, 10
  %9 = udiv i64 %.010.i, 100
  %i.t = udiv i64 %.010.i, 1000
  %10 = insertelement <4 x i64> poison, i64 %.010.i, i64 0
  %11 = insertelement <4 x i64> %10, i64 %8, i64 1
  %12 = insertelement <4 x i64> %11, i64 %9, i64 2
  %13 = insertelement <4 x i64> %12, i64 %i.t, i64 3
  %14 = urem <4 x i64> %13, splat (i64 10)        ; 4 uses
  %15 = bitcast <4 x i64> %14 to <32 x i8>
  %16 = extractelement <32 x i8> %15, i64 0
  %i.u = or disjoint i8 %16, 48
  store i8 %i.u, ptr %i.n, align 1, !tbaa !50
  %17 = bitcast <4 x i64> %14 to <32 x i8>
  %18 = extractelement <32 x i8> %17, i64 8
  %19 = or disjoint i8 %18, 48
  store i8 %19, ptr %5, align 1, !tbaa !50
  %20 = bitcast <4 x i64> %14 to <32 x i8>
  %21 = extractelement <32 x i8> %20, i64 16
  %22 = or disjoint i8 %21, 48
  store i8 %22, ptr %6, align 1, !tbaa !50
  %23 = bitcast <4 x i64> %14 to <32 x i8>
  %24 = extractelement <32 x i8> %23, i64 24
  %i.v = or disjoint i8 %24, 48
  store i8 %i.v, ptr %7, align 1, !tbaa !50
  %i.w = udiv i64 %.010.i, 10000
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 7
  %i.y = urem i64 %i.w, 10
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = or disjoint i8 %i.z, 48
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !50
  %i.ab = udiv i64 %.010.i, 100000
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.ad = urem i64 %i.ab, 10
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = or disjoint i8 %i.ae, 48
  store i8 %i.af, ptr %i.ac, align 1, !tbaa !50
  %i.ag = udiv i64 %.010.i, 1000000
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.ai = urem i64 %i.ag, 10
  %i.aj = trunc nuw nsw i64 %i.ai to i8
  %i.ak = or disjoint i8 %i.aj, 48
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !50
  %i.al = udiv i64 %.010.i, 10000000
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.an = urem i64 %i.al, 10
  %i.ao = trunc nuw nsw i64 %i.an to i8
  %i.ap = or disjoint i8 %i.ao, 48
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !50
  %i.aq = udiv i64 %.010.i, 100000000
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.as = urem i64 %i.aq, 10
  %i.at = trunc nuw nsw i64 %i.as to i8
  %i.au = or disjoint i8 %i.at, 48
  store i8 %i.au, ptr %i.ar, align 1, !tbaa !50
  %i.av = udiv i64 %.010.i, 1000000000
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.ax = urem i64 %i.av, 10
  %i.ay = trunc nuw nsw i64 %i.ax to i8
  %i.az = or disjoint i8 %i.ay, 48
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !50
  %i.ba = udiv i64 %.010.i, 10000000000
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.lhs.trunc.i = trunc nuw nsw i64 %i.ba to i32
  %i.bc = urem i32 %.lhs.trunc.i, 10
  %i.bd = trunc nuw nsw i32 %i.bc to i8
  %i.be = or disjoint i8 %i.bd, 48
  store i8 %i.be, ptr %i.bb, align 1, !tbaa !50
  %i.bf = udiv i64 %.010.i, 100000000000
  %.lhs.trunc18.i = trunc nuw nsw i64 %i.bf to i32
  %i.bg = urem i32 %.lhs.trunc18.i, 10
  %i.bh = trunc nuw nsw i32 %i.bg to i8
  %i.bi = or disjoint i8 %i.bh, 48
  store i8 %i.bi, ptr %i.m, align 1, !tbaa !50
  %i.bj = add nuw i64 %.01216.i, 1                ; 2 uses
  %i.bk = load i64, ptr %i.h, align 8, !tbaa !134
  %i.bl = icmp ult i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.e, label %randomizeClientKey.exit, !llvm.loop !218

randomizeClientKey.exit:                          ; preds = %bb.g, %bb.d, %bb.c
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 272), align 8, !tbaa !60
  %.not39 = icmp eq i32 %i.bm, 0
  br i1 %.not39, label %setClusterKeyHashTag.exit, label %bb.h

bb.h:                                             ; preds = %randomizeClientKey.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !138
  %.not40 = icmp eq i64 %i.bo, 0
  br i1 %.not40, label %setClusterKeyHashTag.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !128
  %i.br = icmp sgt i32 %i.bq, -1
  br i1 %i.br, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.164, i32 noundef 396, ptr noundef nonnull @__PRETTY_FUNCTION__.setClusterKeyHashTag) #22
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !118 ; 3 uses
  %.not.i46 = icmp eq ptr %i.bt, null
  br i1 %.not.i46, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.164, i32 noundef 398, ptr noundef nonnull @__PRETTY_FUNCTION__.setClusterKeyHashTag) #22
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bu = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 316) monotonic, align 4
  %.not22.i = icmp eq i32 %i.bu, 0
  br i1 %.not22.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @config, i64 368)) #20 ; 0 uses
  store atomic i32 1, ptr getelementptr inbounds nuw (i8, ptr @config, i64 316) monotonic, align 4
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 276), align 4, !tbaa !94 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.preheader.i.i, label %updateClusterSlotsConfiguration.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.n
  %.pre17.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 280), align 8, !tbaa !95
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.preheader.i.i
  %i.by = phi i32 [ %i.bw, %.lr.ph.preheader.i.i ], [ %i.cj, %bb.p ]
  %i.bz = phi ptr [ %.pre17.i.i, %.lr.ph.preheader.i.i ], [ %i.ck, %bb.p ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.p ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.i.i
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !97 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !86 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !84
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !84
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 64 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !87
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !85
  store ptr null, ptr %i.cc, align 8, !tbaa !86
  store i32 0, ptr %i.cg, align 8, !tbaa !87
  tail call void @zfree(ptr noundef %i.cf) #20
  %.pre.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 280), align 8, !tbaa !95
  %.pre18.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 276), align 4, !tbaa !94
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i
  %i.cj = phi i32 [ %.pre18.i.i, %bb.o ], [ %i.by, %.lr.ph.i.i ] ; 2 uses
  %i.ck = phi ptr [ %.pre.i.i, %bb.o ], [ %i.bz, %.lr.ph.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cl = sext i32 %i.cj to i64
  %i.cm = icmp slt i64 %indvars.iv.next.i.i, %i.cl
  br i1 %i.cm, label %.lr.ph.i.i, label %updateClusterSlotsConfiguration.exit.i, !llvm.loop !6

updateClusterSlotsConfiguration.exit.i:           ; preds = %bb.p, %bb.n
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 316) monotonic, align 4
  %i.cn = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @config, i64 320), i32 1 monotonic, align 8 ; 0 uses
  %i.co = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @config, i64 368)) #20 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %updateClusterSlotsConfiguration.exit.i, %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !84
  %i.cr = tail call i32 @rand() #20
  %i.cs = load i64, ptr %i.bn, align 8, !tbaa !138
  %.not24.i = icmp eq i64 %i.cs, 0
  br i1 %.not24.i, label %setClusterKeyHashTag.exit, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !85
  %i.cv = srem i32 %i.cr, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !19
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr @crc16_slot_table, i64 %i.cz ; 4 uses
  %i.db = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.da) #21
  %i.dc = trunc i64 %i.db to i32                  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.de = load i8, ptr %i.da, align 4, !tbaa !50  ; 3 uses
  %i.df = icmp sgt i32 %i.dc, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  br i1 %i.df, label %.lr.ph.split.us.i, label %.thread.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i47
  %i.dh = icmp eq i32 %i.dc, 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !50  ; 2 uses
  br i1 %i.dh, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i
  %i.dk = load i8, ptr %i.dg, align 2, !tbaa !50
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.split.us.split.us.i
  %.023.us.us.i = phi i64 [ 0, %.lr.ph.split.us.split.us.i ], [ %i.dr, %bb.r ] ; 2 uses
  %i.dl = load ptr, ptr %i.dd, align 8, !tbaa !139
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.023.us.us.i
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !22 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store i8 %i.de, ptr %i.do, align 1, !tbaa !50
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i8 %i.dj, ptr %i.dp, align 1, !tbaa !50
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 3
  store i8 %i.dk, ptr %i.dq, align 1, !tbaa !50
  %i.dr = add nuw i64 %.023.us.us.i, 1            ; 2 uses
  %i.ds = load i64, ptr %i.bn, align 8, !tbaa !138
  %i.dt = icmp ult i64 %i.dr, %i.ds
  br i1 %i.dt, label %bb.r, label %setClusterKeyHashTag.exit, !llvm.loop !219

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.split.i
  %.023.us.i = phi i64 [ %i.ea, %.lr.ph.split.us.split.i ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %i.du = load ptr, ptr %i.dd, align 8, !tbaa !139
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.023.us.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !22 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  store i8 %i.de, ptr %i.dx, align 1, !tbaa !50
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
end_hunk_0
