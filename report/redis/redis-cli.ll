inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@clusterManagerCommandDeleteNode:bb.a

clusterManagerCheckRedisReply.exit.thread91:      ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !80
  %i.bm = load i32, ptr %i.bk, align 8, !tbaa !83
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.bl, i32 noundef %i.bm, ptr noundef %i.bo)
  call void @freeReplyObject(ptr noundef nonnull %i.bh) #32
  br label %clusterManagerCheckRedisReply.exit75

clusterManagerCheckRedisReply.exit:               ; preds = %bb.o
  call void @freeReplyObject(ptr noundef nonnull %i.bh) #32
  br label %bb.p

bb.p:                                             ; preds = %clusterManagerCheckRedisReply.exit, %bb.j, %bb.i
  %i.bp = load ptr, ptr %i.ag, align 8, !tbaa !88
  %i.bq = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.bp, ptr noundef nonnull @.str.393, ptr noundef %i.g) #32 ; 5 uses
  %.not.i66 = icmp eq ptr %i.bq, null
  br i1 %.not.i66, label %clusterManagerCheckRedisReply.exit75, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !41
  %.not19.i67 = icmp eq i32 %i.br, 6
  br i1 %.not19.i67, label %clusterManagerCheckRedisReply.exit70.thread100, label %clusterManagerCheckRedisReply.exit70

clusterManagerCheckRedisReply.exit70.thread100:   ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !80
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !83
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.bt, i32 noundef %i.bv, ptr noundef %i.bx)
  call void @freeReplyObject(ptr noundef nonnull %i.bq) #32
  br label %clusterManagerCheckRedisReply.exit75

clusterManagerCheckRedisReply.exit70:             ; preds = %bb.q
  call void @freeReplyObject(ptr noundef nonnull %i.bq) #32
  br label %bb.r

bb.r:                                             ; preds = %clusterManagerCheckRedisReply.exit70, %.lr.ph
  %i.by = call ptr @listNext(ptr noundef nonnull %3) #32 ; 2 uses
  %.not56 = icmp eq ptr %i.by, null
  br i1 %.not56, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.r, %bb.h
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.394)
  %i.bz = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.ca = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.bz, ptr noundef nonnull @.str.395, ptr noundef nonnull @.str.396) #32 ; 4 uses
  %.not.i71 = icmp eq ptr %i.ca, null
  br i1 %.not.i71, label %clusterManagerCheckRedisReply.exit75, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !41
  %.not19.i72 = icmp eq i32 %i.cb, 6
  br i1 %.not19.i72, label %.critedge18.i74, label %bb.t

.critedge18.i74:                                  ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !80
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !83
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.cd, i32 noundef %i.cf, ptr noundef %i.ch)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge18.i74
  %.012.i73.ph = phi i32 [ 1, %bb.s ], [ 0, %.critedge18.i74 ]
  call void @freeReplyObject(ptr noundef nonnull %i.ca) #32
  br label %clusterManagerCheckRedisReply.exit75

bb.u:                                             ; preds = %parseClusterNodeAddress.exit.i, %bb.c
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.cj = tail call i64 @fwrite(ptr nonnull @.str.386, i64 138, i64 1, ptr %i.ci) #33 ; 0 uses
  br label %clusterManagerCheckRedisReply.exit75

clusterManagerCheckRedisReply.exit75:             ; preds = %bb.p, %bb.n, %clusterManagerCheckRedisReply.exit70.thread100, %clusterManagerCheckRedisReply.exit.thread91, %._crit_edge, %bb.t, %getClusterHostFromCmdArgs.exit, %bb.u, %bb.g, %bb.e
  %.5 = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %._crit_edge ], [ 0, %getClusterHostFromCmdArgs.exit ], [ 0, %bb.u ], [ %.012.i73.ph, %bb.t ], [ 0, %clusterManagerCheckRedisReply.exit.thread91 ], [ 0, %clusterManagerCheckRedisReply.exit70.thread100 ], [ 0, %bb.n ], [ 0, %bb.p ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @clusterManagerCommandCall(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.listIter, align 8           ; 3 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !29     ; 3 uses
  %i.c = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 64) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 1, !tbaa !73
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 58) #34 ; 3 uses
  %.not17.i.i = icmp eq ptr %i.d, null
  br i1 %.not17.i.i, label %bb.q, label %parseClusterNodeAddress.exit.i

parseClusterNodeAddress.exit.i:                   ; preds = %bb.c
  store i8 0, ptr %i.d, align 1, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 10) #32
  %.013.i = trunc i64 %i.f to i32                 ; 3 uses
  %.not = icmp eq i32 %.013.i, 0
  br i1 %.not, label %bb.q, label %getClusterHostFromCmdArgs.exit

getClusterHostFromCmdArgs.exit:                   ; preds = %parseClusterNodeAddress.exit.i
  %i.g = tail call noalias dereferenceable_or_null(16520) ptr @zmalloc(i64 noundef 16520) #36 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.h, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %.013.i, ptr %i.i, align 8, !tbaa !83
  %i.j = add nsw i32 %.013.i, 10000
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 %i.j, ptr %i.k, align 4, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16480
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16472
  store i32 0, ptr %i.o, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.l, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.m, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16516
  store i32 0, ptr %i.q, align 4, !tbaa !87
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16388) %i.r, i8 0, i64 16388, i1 false)
  %i.s = tail call fastcc i32 @clusterManagerLoadInfoFromNode(ptr noundef nonnull %i.g)
  %.not38 = icmp eq i32 %i.s, 0
  br i1 %.not38, label %bb.r, label %bb.d

bb.d:                                             ; preds = %getClusterHostFromCmdArgs.exit
  %i.t = add nsw i32 %0, -1                       ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = sext i32 %i.t to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = tail call noalias ptr @zmalloc(i64 noundef %i.w) #36 ; 3 uses
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.464)
  %i.y = icmp sgt i32 %0, 1
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.t to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29  ; 2 uses
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #34
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !26
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.465, ptr noundef nonnull %i.aa) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !167

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.ae = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.ae, ptr noundef nonnull %2) #32
  %i.af = call ptr @listNext(ptr noundef nonnull %2) #32 ; 2 uses
  %.not3953 = icmp eq ptr %i.af, null
  br i1 %.not3953, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %._crit_edge, %bb.p
  %i.ag = phi ptr [ %i.bl, %bb.p ], [ %i.af, %._crit_edge ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !102 ; 10 uses
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 592), align 8, !tbaa !126 ; 2 uses
  %i.ak = and i32 %i.aj, 2048
  %.not40 = icmp eq i32 %i.ak, 0
  br i1 %.not40, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph55
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !118
  %.not41 = icmp eq ptr %i.am, null
  br i1 %.not41, label %bb.f, label %bb.p, !llvm.loop !168

bb.f:                                             ; preds = %bb.e, %.lr.ph55
  %i.an = and i32 %i.aj, 4096
  %.not42 = icmp eq i32 %i.an, 0
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !118
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.p, label %bb.h, !llvm.loop !168

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !88
  %.not43 = icmp eq ptr %i.ar, null
  br i1 %.not43, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = call fastcc i32 @clusterManagerNodeConnect(ptr noundef nonnull %i.ai)
  %.not44 = icmp eq i32 %i.as, 0
  br i1 %.not44, label %bb.p, label %bb.j, !llvm.loop !168

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr null, ptr %i.a, align 8, !tbaa !39
  %3 = load ptr, ptr %i.ai, align 8, !tbaa !88
  %i.at = call i32 @redisAppendCommandArgv(ptr noundef %3, i32 noundef %i.t, ptr noundef nonnull %i.u, ptr noundef %i.x) #32 ; 0 uses
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !88
  %i.av = call i32 @redisGetReply(ptr noundef %i.au, ptr noundef nonnull %i.a) #32
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  %or.cond = select i1 %i.aw, i1 true, i1 %i.ay
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !80
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !83
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.466, ptr noundef %i.ba, i32 noundef %i.bc) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.be = call fastcc ptr @cliFormatReplyRaw(ptr noundef nonnull %i.ax) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !83
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.200, ptr noundef %i.bg, i32 noundef %i.bi, ptr noundef %i.be) ; 0 uses
  call void @hi_sdsfree(ptr noundef %i.be) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %.not45 = icmp eq ptr %i.bk, null
  br i1 %.not45, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @freeReplyObject(ptr noundef nonnull %i.bk) #32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.o
  %i.bl = call ptr @listNext(ptr noundef nonnull %2) #32 ; 2 uses
  %.not39 = icmp eq ptr %i.bl, null
  br i1 %.not39, label %._crit_edge56, label %.lr.ph55

._crit_edge56:                                    ; preds = %bb.p, %._crit_edge
  call void @zfree(ptr noundef %i.x) #32
  br label %bb.r

bb.q:                                             ; preds = %parseClusterNodeAddress.exit.i, %bb.c
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bn = tail call i64 @fwrite(ptr nonnull @.str.386, i64 138, i64 1, ptr %i.bm) #33 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %getClusterHostFromCmdArgs.exit, %bb.q, %._crit_edge56
  %.0 = phi i32 [ 1, %._crit_edge56 ], [ 0, %bb.q ], [ 0, %getClusterHostFromCmdArgs.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @clusterManagerCommandSetTimeout(i32 %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.listIter, align 8           ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !29     ; 3 uses
  %i.b = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 64) #34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !73
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 58) #34 ; 3 uses
  %.not17.i.i = icmp eq ptr %i.c, null
  br i1 %.not17.i.i, label %bb.m, label %parseClusterNodeAddress.exit.i

parseClusterNodeAddress.exit.i:                   ; preds = %bb.c
  store i8 0, ptr %i.c, align 1, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 10) #32
  %.013.i = trunc i64 %i.e to i32                 ; 3 uses
  %.not = icmp eq i32 %.013.i, 0
  br i1 %.not, label %bb.m, label %getClusterHostFromCmdArgs.exit

getClusterHostFromCmdArgs.exit:                   ; preds = %parseClusterNodeAddress.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.g, ptr noundef null, i32 noundef 10) #32, !inline_history !55
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = icmp slt i32 %i.i, 100
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %getClusterHostFromCmdArgs.exit
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.430, i64 68, i64 1, ptr %i.k) #33 ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %getClusterHostFromCmdArgs.exit
  %i.m = tail call noalias dereferenceable_or_null(16520) ptr @zmalloc(i64 noundef 16520) #36 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %i.n, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 %.013.i, ptr %i.o, align 8, !tbaa !83
  %i.p = add nsw i32 %.013.i, 10000
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i32 %i.p, ptr %i.q, align 4, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16480
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16472
  store i32 0, ptr %i.u, align 8, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 16512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.r, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %i.v, align 8, !tbaa !86
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16516
  store i32 0, ptr %i.w, align 4, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16388) %i.x, i8 0, i64 16388, i1 false)
  %i.y = tail call fastcc i32 @clusterManagerLoadInfoFromNode(ptr noundef nonnull %i.m)
  %.not35 = icmp eq i32 %i.y, 0
  br i1 %.not35, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 1, ptr noundef nonnull @.str.431)
  %i.z = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.z, ptr noundef nonnull %2) #32
  %i.aa = call ptr @listNext(ptr noundef nonnull %2) #32 ; 2 uses
  %.not3662 = icmp eq ptr %i.aa, null
  br i1 %.not3662, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.l
  %i.ab = phi ptr [ %i.bk, %bb.l ], [ %i.aa, %bb.f ]
  %.02866 = phi i32 [ %.1, %bb.l ], [ 0, %bb.f ]  ; 2 uses
  %.02963 = phi i32 [ %.130, %bb.l ], [ 0, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !102 ; 8 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !88
  %i.af = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.ae, ptr noundef nonnull @.str.432, ptr noundef nonnull @.str.433, ptr noundef nonnull @.str.434, i32 noundef %i.i) #32 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !41
  %.not19.i = icmp eq i32 %i.ah, 6
  br i1 %.not19.i, label %clusterManagerCheckRedisReply.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @freeReplyObject(ptr noundef nonnull %i.af) #32
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !88
  %i.aj = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.ai, ptr noundef nonnull @.str.435, ptr noundef nonnull @.str.436) #32 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %i.aj, align 8, !tbaa !41
  %.not19.i41 = icmp eq i32 %i.al, 6
  br i1 %.not19.i41, label %clusterManagerCheckRedisReply.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @freeReplyObject(ptr noundef nonnull %i.aj) #32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 2, ptr noundef nonnull @.str.437, ptr noundef %i.an, i32 noundef %i.ap)
  %i.aq = add nsw i32 %.02963, 1
  br label %bb.l, !llvm.loop !169

clusterManagerCheckRedisReply.exit.thread:        ; preds = %bb.i, %bb.g
  %.sink87 = phi ptr [ %i.af, %bb.g ], [ %i.aj, %bb.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink87, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !70
  %i.at = add i64 %i.as, 1
  %i.au = call noalias ptr @zmalloc(i64 noundef %i.at) #36 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sink87, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !70
  %i.ay = add i64 %i.ax, 1
  %i.az = call i64 @redis_strlcpy(ptr noundef %i.au, ptr noundef %i.aw, i64 noundef %i.ay) #32 ; 0 uses
  call void @freeReplyObject(ptr noundef nonnull %.sink87) #32
  %i.ba = icmp eq ptr %i.au, null
  br i1 %i.ba, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.h, %.lr.ph, %clusterManagerCheckRedisReply.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.438, ptr noundef %i.bc, i32 noundef %i.be, ptr noundef nonnull @.str.34)
  br label %bb.k

.critedge:                                        ; preds = %clusterManagerCheckRedisReply.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !83
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.bud = fmul nnan double %i.buc, f0x3E10000000000000
  %i.bue = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.0.i187, i64 noundef 64, ptr noundef nonnull @.str.121, double noundef %i.bud) #32 ; 0 uses
  br label %bytesToHuman.exit

bb.vf:                                            ; preds = %bb.vd
  %i.buf = icmp samesign ult i64 %.029.i, 1125899906842624
  br i1 %i.buf, label %bb.vg, label %bytesToHuman.exit

bb.vg:                                            ; preds = %bb.vf
  %i.bug = uitofp nneg i64 %.029.i to double
  %i.buh = fmul nnan double %i.bug, f0x3D70000000000000
  %i.bui = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.0.i187, i64 noundef 64, ptr noundef nonnull @.str.122, double noundef %i.buh) #32 ; 0 uses
  br label %bytesToHuman.exit

bb.vh:                                            ; preds = %bb.uj
  %i.buj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.u, i64 noundef 64, ptr noundef nonnull @.str.823, i64 noundef %i.bsm, ptr noundef nonnull %i.bsr) #32 ; 0 uses
  %i.buk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 64, ptr noundef nonnull @.str.837, double noundef %i.bsp) #32 ; 0 uses
  br label %bytesToHuman.exit

bytesToHuman.exit:                                ; preds = %bb.vg, %bb.vf, %bb.ve, %bb.vc, %bb.va, %bb.uy, %bb.vh, %bb.ui, %bb.uh, %bytesToHuman.exit193
  %i.bul = load ptr, ptr %i.bqi, align 8, !tbaa !226
  %i.bum = load i64, ptr %i.bqj, align 8, !tbaa !363 ; 2 uses
  %i.bun = uitofp i64 %i.bum to double
  %i.buo = fmul nnan double %i.bun, 1.000000e+02
  %i.bup = fdiv double %i.buo, %i.bqc
  %i.buq = select i1 %.not37.i.i, double 0.000000e+00, double %i.bup
  %i.bur = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.838, ptr noundef %i.bul, i64 noundef %i.bum, double noundef %i.buq, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v) ; 0 uses
  br label %bb.vi

bb.vi:                                            ; preds = %bytesToHuman.exit, %bb.tj
  %i.bus = call ptr @dictNext(ptr noundef nonnull %10) #32 ; 2 uses
  %.not.i185.i = icmp eq ptr %i.bus, null
  br i1 %.not.i185.i, label %displayKeyStatsType.exit.i, label %bb.tj, !llvm.loop !367

displayKeyStatsType.exit.i:                       ; preds = %bb.vi, %displayKeyStatsLengthDist.exit.i
  call void @dictResetIterator(ptr noundef nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %.not159.i98 = icmp eq i64 %i.bmf, 0
  br i1 %.not159.i98, label %bb.vk, label %bb.vj

bb.vj:                                            ; preds = %displayKeyStatsType.exit.i
  %putchar.i99 = call i32 @putchar(i32 10)        ; 0 uses
  %puts160.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.33) ; 0 uses
  %i.but = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.815, i64 noundef %i.bmf) ; 0 uses
  br label %bb.vk

bb.vk:                                            ; preds = %bb.vj, %displayKeyStatsType.exit.i
  %.not161.i = icmp eq ptr %.1136.i88, null
  br i1 %.not161.i, label %bb.vm, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  call void @zfree(ptr noundef nonnull %.1136.i88) #32
  br label %bb.vm

bb.vm:                                            ; preds = %bb.vl, %bb.vk
  %.not162.i = icmp eq ptr %.1134.i, null
  br i1 %.not162.i, label %bb.vo, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  call void @zfree(ptr noundef nonnull %.1134.i) #32
  br label %bb.vo

bb.vo:                                            ; preds = %bb.vn, %bb.vm
  %.not163.i = icmp eq ptr %.1128.i, null
  br i1 %.not163.i, label %bb.vq, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  call void @zfree(ptr noundef nonnull %.1128.i) #32
  br label %bb.vq

bb.vq:                                            ; preds = %bb.vp, %bb.vo
  %.not164.i = icmp eq ptr %.1132.i89, null
  br i1 %.not164.i, label %bb.vs, label %bb.vr

bb.vr:                                            ; preds = %bb.vq
  call void @zfree(ptr noundef nonnull %.1132.i89) #32
  br label %bb.vs

bb.vs:                                            ; preds = %bb.vr, %bb.vq
  call void @dictRelease(ptr noundef %i.bdx) #32
  call void @dictRelease(ptr noundef %i.beq) #32
  %i.buu = load ptr, ptr %i.ab, align 8, !tbaa !332
  call void @hdr_close(ptr noundef %i.buu) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @listRewind(ptr noundef nonnull %i.bds, ptr noundef nonnull %17) #32
  %i.buv = call ptr @listNext(ptr noundef nonnull %17) #32 ; 2 uses
  %.not165240.i = icmp eq ptr %i.buv, null
  br i1 %.not165240.i, label %._crit_edge243.i, label %.lr.ph242.i

.lr.ph242.i:                                      ; preds = %bb.vs, %.lr.ph242.i
  %i.buw = phi ptr [ %i.bvb, %.lr.ph242.i ], [ %i.buv, %bb.vs ]
  %i.bux = getelementptr inbounds nuw i8, ptr %i.buw, i64 16
  %i.buy = load ptr, ptr %i.bux, align 8, !tbaa !102
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buy, i64 24
  %i.bva = load ptr, ptr %i.buz, align 8, !tbaa !346
  call void @hi_sdsfree(ptr noundef %i.bva) #32
  %i.bvb = call ptr @listNext(ptr noundef nonnull %17) #32 ; 2 uses
  %.not165.i = icmp eq ptr %i.bvb, null
  br i1 %.not165.i, label %._crit_edge243.i, label %.lr.ph242.i, !llvm.loop !368

._crit_edge243.i:                                 ; preds = %.lr.ph242.i, %bb.vs
  call void @listRelease(ptr noundef nonnull %i.bds) #32
  call void @exit(i32 noundef 0) #37
  unreachable

bb.vt:                                            ; preds = %bb.qi
  %i.bvc = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 312), align 8, !tbaa !257
  %.not35 = icmp eq i32 %i.bvc, 0
  br i1 %.not35, label %bb.aap, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  %i.bvd = call fastcc i32 @cliConnect(i32 noundef 0)
  %i.bve = icmp eq i32 %i.bvd, -1
  br i1 %i.bve, label %bb.vv, label %bb.vw

bb.vv:                                            ; preds = %bb.vu
  call void @exit(i32 noundef 1) #40
  unreachable

bb.vw:                                            ; preds = %bb.vu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.p, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.q, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #32
  store i64 0, ptr %i.r, align 8, !tbaa !339
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.bvf = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #32 ; 0 uses
  %i.bvg = load i64, ptr %9, align 8, !tbaa !318
  %i.bvh = mul nsw i64 %i.bvg, 1000000
  %i.bvi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bvj = load i64, ptr %i.bvi, align 8, !tbaa !319
  %i.bvk = add nsw i64 %i.bvh, %i.bvj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.bvl = sdiv i64 %i.bvk, 1000
  %i.bvm = call ptr @signal(i32 noundef 2, ptr noundef nonnull @longStatLoopModeStop) #32 ; 0 uses
  %i.bvn = call fastcc i32 @getDbSize()           ; 2 uses
  %i.bvo = sext i32 %i.bvn to i64                 ; 3 uses
  %puts.i106 = call i32 @puts(ptr nonnull dereferenceable(1) @str.34) ; 0 uses
  %puts91.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.35) ; 0 uses
  %puts92.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.36) ; 0 uses
  call fastcc void @sendReadOnly()
  %i.bvp = uitofp i64 %i.bvo to double            ; 2 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.bvv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bvw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not.i110.i = icmp eq i32 %i.bvn, 0
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 3 uses
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 3 uses
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 3 uses
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 3 uses
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 3 uses
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 3 uses
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 3 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.p, i64 104 ; 3 uses
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.p, i64 112 ; 3 uses
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.p, i64 120 ; 3 uses
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 2 uses
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.q, i64 112 ; 2 uses
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.q, i64 104 ; 2 uses
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 2 uses
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 2 uses
  %i.bws = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.bww = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br label %bb.vx

bb.vx:                                            ; preds = %bb.yx, %bb.vw
  %.082.i = phi ptr [ null, %bb.vw ], [ %.183.i, %bb.yx ] ; 2 uses
  %.081.i = phi i64 [ 0, %bb.vw ], [ %i.bxe, %bb.yx ]
  %.079.i = phi i32 [ 0, %bb.vw ], [ %.180.i, %bb.yx ] ; 2 uses
  %.074.i = phi i64 [ 0, %bb.vw ], [ %.175.lcssa.i, %bb.yx ] ; 4 uses
  %.072.i = phi i64 [ %i.bvl, %bb.vw ], [ %.173.i, %bb.yx ] ; 3 uses
  %i.bxa = uitofp i64 %.074.i to double
  %i.bxb = fmul nnan double %i.bxa, 1.000000e+02
  %i.bxc = fdiv double %i.bxb, %i.bvp             ; 3 uses
  %i.bxd = call fastcc ptr @sendScan(ptr noundef %i.r) ; 2 uses
  %i.bxe = add i64 %.081.i, 1                     ; 2 uses
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxd, i64 56
  %i.bxg = load ptr, ptr %i.bxf, align 8, !tbaa !38
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bxg, i64 8
  %i.bxi = load ptr, ptr %i.bxh, align 8, !tbaa !39 ; 3 uses
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bxi, i64 48 ; 6 uses
  %i.bxk = load i64, ptr %i.bxj, align 8, !tbaa !33 ; 3 uses
  %i.bxl = zext i32 %.079.i to i64
  %i.bxm = icmp ugt i64 %i.bxk, %i.bxl
  br i1 %i.bxm, label %bb.vy, label %bb.wb

bb.vy:                                            ; preds = %bb.vx
  %i.bxn = shl i64 %i.bxk, 3
  %i.bxo = call ptr @zrealloc(ptr noundef %.082.i, i64 noundef %i.bxn) #35 ; 2 uses
  %.not.i127 = icmp eq ptr %i.bxo, null
  br i1 %.not.i127, label %bb.vz, label %bb.wa

bb.vz:                                            ; preds = %bb.vy
  %i.bxp = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bxq = call i64 @fwrite(ptr nonnull @.str.766, i64 37, i64 1, ptr %i.bxp) #33 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.wa:                                            ; preds = %bb.vy
  %i.bxr = load i64, ptr %i.bxj, align 8, !tbaa !33 ; 2 uses
  %i.bxs = trunc i64 %i.bxr to i32
  br label %bb.wb

bb.wb:                                            ; preds = %bb.wa, %bb.vx
  %i.bxt = phi i64 [ %i.bxr, %bb.wa ], [ %i.bxk, %bb.vx ]
  %.183.i = phi ptr [ %i.bxo, %bb.wa ], [ %.082.i, %bb.vx ] ; 6 uses
  %.180.i = phi i32 [ %i.bxs, %bb.wa ], [ %.079.i, %bb.vx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #32
  %.not35.i.i107 = icmp eq i64 %i.bxt, 0
  br i1 %.not35.i.i107, label %.getKeyFreqs.exit_crit_edge.i, label %.lr.ph.i.i108

.getKeyFreqs.exit_crit_edge.i:                    ; preds = %bb.wb
  %.pre.i126 = load i64, ptr %i.bxj, align 8, !tbaa !33
  br label %getKeyFreqs.exit.thread.i.a

.lr.ph.i.i108:                                    ; preds = %bb.wb
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxi, i64 56 ; 3 uses
  br label %bb.wc

.preheader.i.i:                                   ; preds = %bb.wc
  %i.bxv = icmp eq i64 %i.byi, 0
  br i1 %i.bxv, label %getKeyFreqs.exit.thread.i, label %.lr.ph34.i.i

getKeyFreqs.exit.thread.i:                        ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #32
  br label %._crit_edge.i112

bb.wc:                                            ; preds = %bb.wc, %.lr.ph.i.i108
  %i.bxw = phi i64 [ 0, %.lr.ph.i.i108 ], [ %i.byh, %bb.wc ]
  %.032.i.i = phi i32 [ 0, %.lr.ph.i.i108 ], [ %i.byg, %bb.wc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #32
  store <2 x ptr> <ptr @.str.843, ptr @.str.844>, ptr %i.n, align 16, !tbaa !29
  %i.bxx = load ptr, ptr %i.bxu, align 8, !tbaa !38
  %i.bxy = getelementptr inbounds nuw [8 x i8], ptr %i.bxx, i64 %i.bxw ; 2 uses
  %i.bxz = load ptr, ptr %i.bxy, align 8, !tbaa !39
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bxz, i64 32
  %i.byb = load ptr, ptr %i.bya, align 8, !tbaa !42
  store ptr %i.byb, ptr %i.bvq, align 16, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #32
  store i64 6, ptr %i.o, align 16, !tbaa !26
  store i64 4, ptr %i.bvr, align 8, !tbaa !26
  %36 = load ptr, ptr %i.bxy, align 8, !tbaa !39
  %i.byc = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.byd = load i64, ptr %i.byc, align 8, !tbaa !70
  store i64 %i.byd, ptr %i.bvs, align 16, !tbaa !26
  %i.bye = load ptr, ptr @context, align 8, !tbaa !219
  %i.byf = call i32 @redisAppendCommandArgv(ptr noundef %i.bye, i32 noundef 3, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #32
  %i.byg = add i32 %.032.i.i, 1                   ; 2 uses
  %i.byh = zext i32 %i.byg to i64                 ; 2 uses
  %i.byi = load i64, ptr %i.bxj, align 8, !tbaa !33 ; 2 uses
  %i.byj = icmp ugt i64 %i.byi, %i.byh
  br i1 %i.byj, label %bb.wc, label %.preheader.i.i, !llvm.loop !369

.lr.ph34.i.i:                                     ; preds = %.preheader.i.i, %bb.wi
  %i.byk = phi i64 [ %i.bzz, %bb.wi ], [ 0, %.preheader.i.i ] ; 4 uses
  %.133.i.i = phi i32 [ %i.bzy, %bb.wi ], [ 0, %.preheader.i.i ]
  %i.byl = load ptr, ptr @context, align 8, !tbaa !219
  %i.bym = call i32 @redisGetReply(ptr noundef %i.byl, ptr noundef nonnull %i.m) #32
  %.not.i.i109 = icmp eq i32 %i.bym, 0
  br i1 %.not.i.i109, label %bb.we, label %bb.wd

bb.wd:                                            ; preds = %.lr.ph34.i.i
  %i.byn = call ptr @hi_sdsempty() #32
  %i.byo = load ptr, ptr %i.bxu, align 8, !tbaa !38
  %i.byp = getelementptr inbounds nuw [8 x i8], ptr %i.byo, i64 %i.byk
  %i.byq = load ptr, ptr %i.byp, align 8, !tbaa !39 ; 2 uses
  %i.byr = getelementptr inbounds nuw i8, ptr %i.byq, i64 32
  %i.bys = load ptr, ptr %i.byr, align 8, !tbaa !42
  %i.byt = getelementptr inbounds nuw i8, ptr %i.byq, i64 24
  %i.byu = load i64, ptr %i.byt, align 8, !tbaa !70
  %i.byv = call ptr @hi_sdscatrepr(ptr noundef %i.byn, ptr noundef %i.bys, i64 noundef %i.byu) #32 ; 2 uses
  %i.byw = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.byx = load ptr, ptr @context, align 8, !tbaa !219 ; 2 uses
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byx, i64 8
  %i.byz = load i32, ptr %i.byy, align 8, !tbaa !170
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byx, i64 12
  %i.bzb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.byw, ptr noundef nonnull @.str.845, ptr noundef %i.byv, i32 noundef %i.byz, ptr noundef nonnull %i.bza) #39 ; 0 uses
  call void @hi_sdsfree(ptr noundef %i.byv) #32
  call void @exit(i32 noundef 1) #40
  unreachable

bb.we:                                            ; preds = %.lr.ph34.i.i
  %i.bzc = load ptr, ptr %i.m, align 8, !tbaa !39 ; 4 uses
  %i.bzd = load i32, ptr %i.bzc, align 8, !tbaa !41
  switch i32 %i.bzd, label %bb.wg [
    i32 3, label %bb.wh
    i32 6, label %bb.wf
  ]

bb.wf:                                            ; preds = %bb.we
  %i.bze = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bzc, i64 32
  %i.bzg = load ptr, ptr %i.bzf, align 8, !tbaa !42
  %i.bzh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bze, ptr noundef nonnull @.str.463, ptr noundef %i.bzg) #39 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.wg:                                            ; preds = %bb.we
  %i.bzi = call ptr @hi_sdsempty() #32
  %i.bzj = load ptr, ptr %i.bxu, align 8, !tbaa !38
  %i.bzk = getelementptr inbounds nuw [8 x i8], ptr %i.bzj, i64 %i.byk
  %i.bzl = load ptr, ptr %i.bzk, align 8, !tbaa !39 ; 2 uses
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzl, i64 32
  %i.bzn = load ptr, ptr %i.bzm, align 8, !tbaa !42
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bzl, i64 24
  %i.bzp = load i64, ptr %i.bzo, align 8, !tbaa !70
  %i.bzq = call ptr @hi_sdscatrepr(ptr noundef %i.bzi, ptr noundef %i.bzn, i64 noundef %i.bzp) #32 ; 2 uses
  %i.bzr = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bzs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bzr, ptr noundef nonnull @.str.846, ptr noundef %i.bzq) #39 ; 0 uses
  call void @hi_sdsfree(ptr noundef %i.bzq) #32
  %i.bzt = getelementptr inbounds nuw [8 x i8], ptr %.183.i, i64 %i.byk
  store i64 0, ptr %i.bzt, align 8, !tbaa !339
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !39
  br label %bb.wi

bb.wh:                                            ; preds = %bb.we
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzc, i64 8
  %i.bzv = load i64, ptr %i.bzu, align 8, !tbaa !180
  %i.bzw = getelementptr inbounds nuw [8 x i8], ptr %.183.i, i64 %i.byk
  store i64 %i.bzv, ptr %i.bzw, align 8, !tbaa !339
  br label %bb.wi

bb.wi:                                            ; preds = %bb.wh, %bb.wg
  %i.bzx = phi ptr [ %.pre.i.i, %bb.wg ], [ %i.bzc, %bb.wh ]
  call void @freeReplyObject(ptr noundef %i.bzx) #32
  %i.bzy = add i32 %.133.i.i, 1                   ; 2 uses
  %i.bzz = zext i32 %i.bzy to i64                 ; 2 uses
  %i.caa = load i64, ptr %i.bxj, align 8, !tbaa !33 ; 2 uses
  %i.cab = icmp ugt i64 %i.caa, %i.bzz
  br i1 %i.cab, label %.lr.ph34.i.i, label %getKeyFreqs.exit.thread.i.a, !llvm.loop !370

getKeyFreqs.exit.thread.i.a:                      ; preds = %bb.wi, %.getKeyFreqs.exit_crit_edge.i
  %37 = phi i64 [ %.pre.i126, %.getKeyFreqs.exit_crit_edge.i ], [ %i.caa, %bb.wi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #32
  %.not133.i = icmp eq i64 %37, 0
  br i1 %.not133.i, label %._crit_edge.i112, label %getKeyFreqs.exit.i

getKeyFreqs.exit.i:                               ; preds = %getKeyFreqs.exit.thread.i.a
  %38 = getelementptr inbounds nuw i8, ptr %i.bxi, i64 56
  br label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %.critedge.i111, %getKeyFreqs.exit.i
  %i.cac = phi i64 [ 0, %getKeyFreqs.exit.i ], [ %i.ccr, %.critedge.i111 ] ; 2 uses
  %.175127.i = phi i64 [ %.074.i, %getKeyFreqs.exit.i ], [ %i.cad, %.critedge.i111 ]
  %.078126.i = phi i32 [ 0, %getKeyFreqs.exit.i ], [ %i.ccq, %.critedge.i111 ]
  %i.cad = add i64 %.175127.i, 1                  ; 4 uses
  %i.cae = urem i64 %i.cad, 1000000
  %i.caf = icmp eq i64 %i.cae, 0
  br i1 %i.caf, label %bb.wj, label %bb.wm

bb.wj:                                            ; preds = %.lr.ph.i110
  %i.cag = call i32 @isatty(i32 noundef 1) #32
  %.not105.i125 = icmp eq i32 %i.cag, 0
  br i1 %.not105.i125, label %bb.wk, label %bb.wm

bb.wk:                                            ; preds = %bb.wj
  %i.cah = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not106.i126 = icmp eq ptr %i.cah, null
  br i1 %.not106.i126, label %bb.wl, label %bb.wm

bb.wl:                                            ; preds = %bb.wk
  %i.cai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.769, double noundef %i.bxc, i64 noundef %i.cad) ; 0 uses
  br label %bb.wm

bb.wm:                                            ; preds = %bb.wl, %bb.wk, %bb.wj, %.lr.ph.i110
  %i.caj = getelementptr inbounds nuw [8 x i8], ptr %.183.i, i64 %i.cac ; 3 uses
  %i.cak = load i64, ptr %i.caj, align 8, !tbaa !339 ; 16 uses
  %i.cal = load i64, ptr %i.p, align 16, !tbaa !339
  %.not199.i = icmp ugt i64 %i.cak, %i.cal
  br i1 %.not199.i, label %bb.wn, label %.critedge.i111

bb.wn:                                            ; preds = %bb.wm
  %i.cam = load i64, ptr %i.bvt, align 8, !tbaa !339
  %i.can = icmp ugt i64 %i.cak, %i.cam
  br i1 %i.can, label %bb.wo, label %._crit_edge155.i

bb.wo:                                            ; preds = %bb.wn
  %i.cao = load i64, ptr %i.bvy, align 16, !tbaa !339
  %i.cap = icmp ugt i64 %i.cak, %i.cao
  br i1 %i.cap, label %bb.wp, label %._crit_edge153.i

bb.wp:                                            ; preds = %bb.wo
  %i.caq = load i64, ptr %i.bvz, align 8, !tbaa !339
  %i.car = icmp ugt i64 %i.cak, %i.caq
  br i1 %i.car, label %bb.wq, label %._crit_edge153.i

bb.wq:                                            ; preds = %bb.wp
  %i.cas = load i64, ptr %i.bwa, align 16, !tbaa !339
  %i.cat = icmp ugt i64 %i.cak, %i.cas
  br i1 %i.cat, label %bb.wr, label %._crit_edge153.i

bb.wr:                                            ; preds = %bb.wq
  %i.cau = load i64, ptr %i.bwb, align 8, !tbaa !339
  %i.cav = icmp ugt i64 %i.cak, %i.cau
  br i1 %i.cav, label %bb.ws, label %._crit_edge153.i

bb.ws:                                            ; preds = %bb.wr
  %i.caw = load i64, ptr %i.bwc, align 16, !tbaa !339
  %i.cax = icmp ugt i64 %i.cak, %i.caw
  br i1 %i.cax, label %bb.wt, label %._crit_edge153.i

bb.wt:                                            ; preds = %bb.ws
  %i.cay = load i64, ptr %i.bwd, align 8, !tbaa !339
  %i.caz = icmp ugt i64 %i.cak, %i.cay
  br i1 %i.caz, label %bb.wu, label %._crit_edge153.i

bb.wu:                                            ; preds = %bb.wt
  %i.cba = load i64, ptr %i.bwe, align 16, !tbaa !339
  %i.cbb = icmp ugt i64 %i.cak, %i.cba
  br i1 %i.cbb, label %bb.wv, label %._crit_edge153.i

bb.wv:                                            ; preds = %bb.wu
  %i.cbc = load i64, ptr %i.bwf, align 8, !tbaa !339
  %i.cbd = icmp ugt i64 %i.cak, %i.cbc
  br i1 %i.cbd, label %bb.ww, label %._crit_edge153.i

bb.ww:                                            ; preds = %bb.wv
  %i.cbe = load i64, ptr %i.bwg, align 16, !tbaa !339
  %i.cbf = icmp ugt i64 %i.cak, %i.cbe
  br i1 %i.cbf, label %bb.wx, label %._crit_edge153.i

bb.wx:                                            ; preds = %bb.ww
  %i.cbg = load i64, ptr %i.bwh, align 8, !tbaa !339
  %i.cbh = icmp ugt i64 %i.cak, %i.cbg
  br i1 %i.cbh, label %bb.wy, label %._crit_edge153.i

bb.wy:                                            ; preds = %bb.wx
  %i.cbi = load i64, ptr %i.bwi, align 16, !tbaa !339
  %i.cbj = icmp ugt i64 %i.cak, %i.cbi
  br i1 %i.cbj, label %bb.wz, label %._crit_edge153.i

bb.wz:                                            ; preds = %bb.wy
  %i.cbk = load i64, ptr %i.bwj, align 8, !tbaa !339
  %i.cbl = icmp ugt i64 %i.cak, %i.cbk
  br i1 %i.cbl, label %bb.xa, label %._crit_edge153.i

bb.xa:                                            ; preds = %bb.wz
  %i.cbm = load i64, ptr %i.bwk, align 16, !tbaa !339
  %i.cbn = icmp ugt i64 %i.cak, %i.cbm
  br i1 %i.cbn, label %bb.xb, label %._crit_edge153.i

bb.xb:                                            ; preds = %bb.xa
  %i.cbo = load i64, ptr %i.bwl, align 8, !tbaa !339 ; 2 uses
  %i.cbp = icmp ugt i64 %i.cak, %i.cbo
  br i1 %i.cbp, label %.thread.i124, label %._crit_edge153.i

._crit_edge153.i:                                 ; preds = %bb.xb, %bb.xa, %bb.wz, %bb.wy, %bb.wx, %bb.ww, %bb.wv, %bb.wu, %bb.wt, %bb.ws, %bb.wr, %bb.wq, %bb.wp, %bb.wo
  %.076125.lcssa.wide.ph.ph.i = phi i32 [ 1, %bb.wo ], [ 2, %bb.wp ], [ 3, %bb.wq ], [ 4, %bb.wr ], [ 5, %bb.ws ], [ 6, %bb.wt ], [ 7, %bb.wu ], [ 8, %bb.wv ], [ 9, %bb.ww ], [ 10, %bb.wx ], [ 11, %bb.wy ], [ 12, %bb.wz ], [ 13, %bb.xa ], [ 14, %bb.xb ] ; 2 uses
  %.phi.trans.insert.i122 = zext nneg i32 %.076125.lcssa.wide.ph.ph.i to i64
  %.phi.trans.insert154.i = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.phi.trans.insert.i122
  %.pre.i123 = load i64, ptr %.phi.trans.insert154.i, align 8, !tbaa !339
  br label %.thread.i124

.thread.i124:                                     ; preds = %._crit_edge153.i, %bb.xb
  %i.cbq = phi i64 [ %.pre.i123, %._crit_edge153.i ], [ %i.cbo, %bb.xb ]
  %i.cbr = phi i32 [ %.076125.lcssa.wide.ph.ph.i, %._crit_edge153.i ], [ 15, %bb.xb ] ; 2 uses
  %i.cbs = icmp eq i64 %i.cbq, 0
  br i1 %i.cbs, label %._crit_edge155.i, label %bb.xc

._crit_edge155.i:                                 ; preds = %.thread.i124, %bb.wn
  %i.cbt = phi i32 [ %i.cbr, %.thread.i124 ], [ 0, %bb.wn ]
  %i.cbu = zext nneg i32 %i.cbt to i64            ; 2 uses
  %i.cbv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cbu
  %i.cbw = load ptr, ptr %i.cbv, align 8, !tbaa !29
  call void @hi_sdsfree(ptr noundef %i.cbw) #32
  br label %bb.xd

bb.xc:                                            ; preds = %.thread.i124
  %i.cbx = zext nneg i32 %i.cbr to i64            ; 2 uses
  %i.cby = load ptr, ptr %i.q, align 16, !tbaa !29
  call void @hi_sdsfree(ptr noundef %i.cby) #32
  %i.cbz = shl nuw nsw i64 %i.cbx, 3              ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.bvt, i64 %i.cbz, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.bvu, i64 %i.cbz, i1 false)
  br label %bb.xd

bb.xd:                                            ; preds = %bb.xc, %._crit_edge155.i
  %.pre-phi.i120 = phi i64 [ %i.cbx, %bb.xc ], [ %i.cbu, %._crit_edge155.i ] ; 2 uses
  %i.cca = load i64, ptr %i.caj, align 8, !tbaa !339
  %i.ccb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.pre-phi.i120
  store i64 %i.cca, ptr %i.ccb, align 8, !tbaa !339
  %i.ccc = call ptr @hi_sdsempty() #32
  %i.ccd = load ptr, ptr %38, align 8, !tbaa !38
  %i.cce = getelementptr inbounds nuw [8 x i8], ptr %i.ccd, i64 %i.cac
  %i.ccf = load ptr, ptr %i.cce, align 8, !tbaa !39 ; 2 uses
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.ccf, i64 32
  %i.cch = load ptr, ptr %i.ccg, align 8, !tbaa !42
  %i.cci = getelementptr inbounds nuw i8, ptr %i.ccf, i64 24
  %i.ccj = load i64, ptr %i.cci, align 8, !tbaa !70
  %i.cck = call ptr @hi_sdscatrepr(ptr noundef %i.ccc, ptr noundef %i.cch, i64 noundef %i.ccj) #32 ; 2 uses
  %i.ccl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.pre-phi.i120
  store ptr %i.cck, ptr %i.ccl, align 8, !tbaa !29
  %i.ccm = call i32 @isatty(i32 noundef 1) #32
  %.not107.i121 = icmp eq i32 %i.ccm, 0
  br i1 %.not107.i121, label %bb.xe, label %.critedge.i111

bb.xe:                                            ; preds = %bb.xd
  %i.ccn = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not108.i = icmp eq ptr %i.ccn, null
  br i1 %.not108.i, label %bb.xf, label %.critedge.i111

bb.xf:                                            ; preds = %bb.xe
  %i.cco = load i64, ptr %i.caj, align 8, !tbaa !339
  %i.ccp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.840, double noundef %i.bxc, ptr noundef %i.cck, i64 noundef %i.cco) ; 0 uses
  br label %.critedge.i111

.critedge.i111:                                   ; preds = %bb.xf, %bb.xe, %bb.xd, %bb.wm
  %i.ccq = add i32 %.078126.i, 1                  ; 2 uses
  %i.ccr = zext i32 %i.ccq to i64                 ; 2 uses
  %i.ccs = load i64, ptr %i.bxj, align 8, !tbaa !33
  %i.cct = icmp ugt i64 %i.ccs, %i.ccr
  br i1 %i.cct, label %.lr.ph.i110, label %._crit_edge.i112, !llvm.loop !371

._crit_edge.i112:                                 ; preds = %.critedge.i111, %getKeyFreqs.exit.thread.i.a, %getKeyFreqs.exit.thread.i
  %.175.lcssa.i = phi i64 [ %.074.i, %getKeyFreqs.exit.thread.i.a ], [ %.074.i, %getKeyFreqs.exit.thread.i ], [ %i.cad, %.critedge.i111 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.ccu = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #32 ; 0 uses
  %i.ccv = load i64, ptr %8, align 8, !tbaa !318
  %i.ccw = mul nsw i64 %i.ccv, 1000000
  %i.ccx = load i64, ptr %i.bvv, align 8, !tbaa !319
  %i.ccy = add nsw i64 %i.ccw, %i.ccx
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.ccz = sdiv i64 %i.ccy, 1000
  %i.cda = add nsw i64 %.072.i, 300
  %i.cdb = icmp sgt i64 %i.ccz, %i.cda
  br i1 %i.cdb, label %bb.xg, label %bb.yv

bb.xg:                                            ; preds = %._crit_edge.i112
  %i.cdc = call i32 @isatty(i32 noundef 1) #32
  %.not93.i = icmp eq i32 %i.cdc, 0
  br i1 %.not93.i, label %bb.xh, label %bb.xi

bb.xh:                                            ; preds = %bb.xg
  %i.cdd = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not94.i = icmp eq ptr %i.cdd, null
  br i1 %.not94.i, label %bb.yv, label %bb.xi

bb.xi:                                            ; preds = %bb.xh, %bb.xg
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.cde = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #32 ; 0 uses
  %i.cdf = load i64, ptr %7, align 8, !tbaa !318
  %i.cdg = mul nsw i64 %i.cdf, 1000000
  %i.cdh = load i64, ptr %i.bvw, align 8, !tbaa !319
  %i.cdi = add nsw i64 %i.cdg, %i.cdh
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.cdj = sdiv i64 %i.cdi, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #32
  br i1 %.not.i110.i, label %bb.xl, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.cdk = icmp ult i64 %.175.lcssa.i, %i.bvo
  br i1 %i.cdk, label %bb.xk, label %bb.xl

bb.xk:                                            ; preds = %bb.xj
  %i.cdl = uitofp i64 %.175.lcssa.i to double
  %i.cdm = fdiv double %i.cdl, %i.bvp
  br label %bb.xl

bb.xl:                                            ; preds = %bb.xk, %bb.xj, %bb.xi
  %i.cdn = phi double [ 1.000000e+00, %bb.xj ], [ %i.cdm, %bb.xk ], [ 0.000000e+00, %bb.xi ] ; 2 uses
  %i.cdo = call i32 @isatty(i32 noundef 1) #32
  %.not16.i.i = icmp eq i32 %i.cdo, 0
  br i1 %.not16.i.i, label %bb.xm, label %bb.xn

bb.xm:                                            ; preds = %bb.xl
  %i.cdp = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not17.i.i = icmp eq ptr %i.cdp, null
  br i1 %.not17.i.i, label %bb.xo, label %bb.xn

bb.xn:                                            ; preds = %bb.xm, %bb.xl
  %i.cdq = fmul double %i.cdn, 6.000000e+01
  %i.cdr = call double @llvm.round.f64(double %i.cdq)
  %i.cds = fptosi double %i.cdr to i32            ; 2 uses
  %i.cdt = sext i32 %i.cds to i64                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.i, i8 124, i64 %i.cdt, i1 false)
  %i.cdu = getelementptr inbounds i8, ptr %i.i, i64 %i.cdt
  store i8 0, ptr %i.cdu, align 1, !tbaa !73
  %i.cdv = sub nsw i32 60, %i.cds
  %i.cdw = sext i32 %i.cdv to i64                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.bvx, i8 45, i64 %i.cdw, i1 false)
  %i.cdx = getelementptr inbounds i8, ptr %i.bvx, i64 %i.cdw
  store i8 0, ptr %i.cdx, align 1, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.j, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.red, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.k, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.green, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.l, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.default_color, i64 6, i1 false)
  %i.cdy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 512, ptr noundef nonnull @.str.802, ptr noundef nonnull %i.k, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.bvx, ptr noundef nonnull %i.l) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #32
  br label %displayKeyStatsProgressbar.exit.i

bb.xo:                                            ; preds = %bb.xm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.h, ptr noundef nonnull align 1 dereferenceable(13) @.str.803, i64 13, i1 false)
  br label %displayKeyStatsProgressbar.exit.i

displayKeyStatsProgressbar.exit.i:                ; preds = %bb.xo, %bb.xn
  %i.cdz = fmul double %i.cdn, 1.000000e+02
  %i.cea = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.804, double noundef %i.cdz, ptr noundef nonnull %i.h)
  %i.ceb = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.805, i64 noundef %.175.lcssa.i)
  %i.cec = add nsw i32 %i.ceb, %i.cea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  %i.ced = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.34)
  %i.cee = add nsw i32 %i.cec, %i.ced             ; 2 uses
  %i.cef = load i64, ptr %i.bwl, align 8, !tbaa !339 ; 2 uses
  %.not104.i118 = icmp eq i64 %i.cef, 0
  br i1 %.not104.i118, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %displayKeyStatsProgressbar.exit.i
  %i.ceg = load ptr, ptr %i.bwm, align 8, !tbaa !29
  %i.ceh = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cef, ptr noundef %i.ceg)
  %i.cei = add nsw i32 %i.ceh, %i.cee
  br label %bb.xq

bb.xq:                                            ; preds = %bb.xp, %displayKeyStatsProgressbar.exit.i
  %.1.i119 = phi i32 [ %i.cei, %bb.xp ], [ %i.cee, %displayKeyStatsProgressbar.exit.i ] ; 2 uses
  %i.cej = load i64, ptr %i.bwk, align 16, !tbaa !339 ; 2 uses
  %.not104.1.i = icmp eq i64 %i.cej, 0
  br i1 %.not104.1.i, label %bb.xs, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  %i.cek = load ptr, ptr %i.bwn, align 16, !tbaa !29
  %i.cel = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cej, ptr noundef %i.cek)
  %i.cem = add nsw i32 %i.cel, %.1.i119
  br label %bb.xs

bb.xs:                                            ; preds = %bb.xr, %bb.xq
  %.1.1.i = phi i32 [ %i.cem, %bb.xr ], [ %.1.i119, %bb.xq ] ; 2 uses
  %i.cen = load i64, ptr %i.bwj, align 8, !tbaa !339 ; 2 uses
  %.not104.2.i = icmp eq i64 %i.cen, 0
  br i1 %.not104.2.i, label %bb.xu, label %bb.xt

bb.xt:                                            ; preds = %bb.xs
  %i.ceo = load ptr, ptr %i.bwo, align 8, !tbaa !29
  %i.cep = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cen, ptr noundef %i.ceo)
  %i.ceq = add nsw i32 %i.cep, %.1.1.i
  br label %bb.xu

bb.xu:                                            ; preds = %bb.xt, %bb.xs
  %.1.2.i = phi i32 [ %i.ceq, %bb.xt ], [ %.1.1.i, %bb.xs ] ; 2 uses
  %i.cer = load i64, ptr %i.bwi, align 16, !tbaa !339 ; 2 uses
  %.not104.3.i = icmp eq i64 %i.cer, 0
  br i1 %.not104.3.i, label %bb.xw, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  %i.ces = load ptr, ptr %i.bwp, align 16, !tbaa !29
  %i.cet = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cer, ptr noundef %i.ces)
  %i.ceu = add nsw i32 %i.cet, %.1.2.i
  br label %bb.xw

bb.xw:                                            ; preds = %bb.xv, %bb.xu
  %.1.3.i = phi i32 [ %i.ceu, %bb.xv ], [ %.1.2.i, %bb.xu ] ; 2 uses
  %i.cev = load i64, ptr %i.bwh, align 8, !tbaa !339 ; 2 uses
  %.not104.4.i = icmp eq i64 %i.cev, 0
  br i1 %.not104.4.i, label %bb.xy, label %bb.xx

bb.xx:                                            ; preds = %bb.xw
  %i.cew = load ptr, ptr %i.bwq, align 8, !tbaa !29
  %i.cex = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cev, ptr noundef %i.cew)
  %i.cey = add nsw i32 %i.cex, %.1.3.i
  br label %bb.xy

bb.xy:                                            ; preds = %bb.xx, %bb.xw
  %.1.4.i = phi i32 [ %i.cey, %bb.xx ], [ %.1.3.i, %bb.xw ] ; 2 uses
  %i.cez = load i64, ptr %i.bwg, align 16, !tbaa !339 ; 2 uses
  %.not104.5.i = icmp eq i64 %i.cez, 0
  br i1 %.not104.5.i, label %bb.ya, label %bb.xz

bb.xz:                                            ; preds = %bb.xy
  %i.cfa = load ptr, ptr %i.bwr, align 16, !tbaa !29
  %i.cfb = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cez, ptr noundef %i.cfa)
  %i.cfc = add nsw i32 %i.cfb, %.1.4.i
  br label %bb.ya

bb.ya:                                            ; preds = %bb.xz, %bb.xy
  %.1.5.i = phi i32 [ %i.cfc, %bb.xz ], [ %.1.4.i, %bb.xy ] ; 2 uses
  %i.cfd = load i64, ptr %i.bwf, align 8, !tbaa !339 ; 2 uses
  %.not104.6.i = icmp eq i64 %i.cfd, 0
  br i1 %.not104.6.i, label %bb.yc, label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  %i.cfe = load ptr, ptr %i.bws, align 8, !tbaa !29
  %i.cff = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cfd, ptr noundef %i.cfe)
  %i.cfg = add nsw i32 %i.cff, %.1.5.i
  br label %bb.yc

bb.yc:                                            ; preds = %bb.yb, %bb.ya
  %.1.6.i = phi i32 [ %i.cfg, %bb.yb ], [ %.1.5.i, %bb.ya ] ; 2 uses
  %i.cfh = load i64, ptr %i.bwe, align 16, !tbaa !339 ; 2 uses
  %.not104.7.i = icmp eq i64 %i.cfh, 0
  br i1 %.not104.7.i, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.cfi = load ptr, ptr %i.bwt, align 16, !tbaa !29
  %i.cfj = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cfh, ptr noundef %i.cfi)
  %i.cfk = add nsw i32 %i.cfj, %.1.6.i
  br label %bb.ye

bb.ye:                                            ; preds = %bb.yd, %bb.yc
  %.1.7.i = phi i32 [ %i.cfk, %bb.yd ], [ %.1.6.i, %bb.yc ] ; 2 uses
  %i.cfl = load i64, ptr %i.bwd, align 8, !tbaa !339 ; 2 uses
  %.not104.8.i = icmp eq i64 %i.cfl, 0
  br i1 %.not104.8.i, label %bb.yg, label %bb.yf

bb.yf:                                            ; preds = %bb.ye
  %i.cfm = load ptr, ptr %i.bwu, align 8, !tbaa !29
  %i.cfn = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cfl, ptr noundef %i.cfm)
  %i.cfo = add nsw i32 %i.cfn, %.1.7.i
  br label %bb.yg

bb.yg:                                            ; preds = %bb.yf, %bb.ye
end_hunk_1
begin_hunk_2_@clusterManagerMigrateKeysInReply:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.1 = phi i64 [ %i.aw, %bb.e ], [ %i.ar, %bb.f ], [ %.094, %bb.c ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.1
  store ptr @.str.340, ptr %i.ay, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1
  store i64 4, ptr %i.az, align 8, !tbaa !26
  %i.ba = add nuw nsw i64 %.1, 1                  ; 3 uses
  %i.bb = load i64, ptr %i.j, align 8, !tbaa !33
  %.not115 = icmp eq i64 %i.bb, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.not107 = icmp eq ptr %5, null
  br i1 %.not107, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.095110.us = phi i64 [ %i.br, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.095110.us
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !41
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.h, label %.split.us

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.bi = add i64 %.095110.us, %i.ba              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !70
  %i.bn = call ptr @hi_sdsnewlen(ptr noundef %i.bk, i64 noundef %i.bm) #32
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bi
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !29
  %i.bp = load i64, ptr %i.bl, align 8, !tbaa !70
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bi
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !26
  %i.br = add nuw i64 %.095110.us, 1              ; 2 uses
  %i.bs = load i64, ptr %i.j, align 8, !tbaa !33  ; 2 uses
  %i.bt = icmp ult i64 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !530

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.095110 = phi i64 [ %i.cj, %bb.i ], [ 0, %.lr.ph ] ; 4 uses
  %i.bu = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.095110
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !39 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !41
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.i, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  call void @__assert_fail(ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.7, i32 noundef 5165, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerMigrateKeysInReply) #37
  unreachable

bb.i:                                             ; preds = %.lr.ph.split
  %i.bz = add i64 %.095110, %i.ba                 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !42
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !70
  %i.ce = call ptr @hi_sdsnewlen(ptr noundef %i.cb, i64 noundef %i.cd) #32
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bz
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !29
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !70
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bz
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !26
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 %.095110
  store i8 46, ptr %i.ci, align 1, !tbaa !73
  %i.cj = add nuw i64 %.095110, 1                 ; 2 uses
  %i.ck = load i64, ptr %i.j, align 8, !tbaa !33  ; 2 uses
  %i.cl = icmp ult i64 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph.split, label %._crit_edge.thread, !llvm.loop !530

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.lcssa = phi i64 [ 0, %bb.g ], [ %i.bs, %bb.h ]
  %.not106 = icmp eq ptr %5, null
  br i1 %.not106, label %bb.j, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.i, %._crit_edge
  %.lcssa130 = phi i64 [ %.lcssa, %._crit_edge ], [ %i.ck, %bb.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 %.lcssa130
  store i8 0, ptr %i.cm, align 1, !tbaa !73
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr null, ptr %i.c, align 8, !tbaa !28
  %i.cn = load ptr, ptr %0, align 8, !tbaa !88
  %i.co = trunc i64 %i.l to i32
  %i.cp = call i32 @redisAppendCommandArgv(ptr noundef %i.cn, i32 noundef %i.co, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #32 ; 0 uses
  %i.cq = load ptr, ptr %0, align 8, !tbaa !88
  %i.cr = call i32 @redisGetReply(ptr noundef %i.cq, ptr noundef nonnull %i.c) #32
  %invariant.gep = getelementptr [8 x i8], ptr %i.n, i64 %i.ba
  %i.cs = load i64, ptr %i.j, align 8, !tbaa !33
  %.not116 = icmp eq i64 %i.cs, 0
  br i1 %.not116, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.j, %.lr.ph113
  %.196111 = phi i64 [ %i.cu, %.lr.ph113 ], [ 0, %bb.j ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.196111
  %i.ct = load ptr, ptr %gep, align 8, !tbaa !29
  call void @hi_sdsfree(ptr noundef %i.ct) #32
  %i.cu = add nuw i64 %.196111, 1                 ; 2 uses
  %i.cv = load i64, ptr %i.j, align 8, !tbaa !33
  %i.cw = icmp ult i64 %i.cu, %i.cv
  br i1 %i.cw, label %.lr.ph113, label %._crit_edge114, !llvm.loop !531

._crit_edge114:                                   ; preds = %.lr.ph113, %bb.j
  %i.cx = icmp eq i32 %i.cr, 0
  %i.cy = load ptr, ptr %i.c, align 8
  %spec.select108 = select i1 %i.cx, ptr %i.cy, ptr null
  call void @zfree(ptr noundef nonnull %i.n) #32
  call void @zfree(ptr noundef nonnull %i.o) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret ptr %spec.select108
}

declare ptr @hi_sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @clusterManagerPrintSlotsList(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.clusterManagerNode, align 8 ; 5 uses
  %2 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16520) %1, i8 0, i64 16520, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @listRewind(ptr noundef %0, ptr noundef nonnull %2) #32
  %i.a = call ptr @listNext(ptr noundef nonnull %2) #32 ; 2 uses
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 84
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.c = phi ptr [ %i.a, %.lr.ph ], [ %i.j, %bb.d ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.f = call i64 @__isoc23_strtol(ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 10) #32, !inline_history !55 ; 2 uses
  %i.g = and i64 %i.f, 4294950912
  %or.cond = icmp eq i64 %i.g, 0
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.f, 16383
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  store i8 1, ptr %i.i, align 1, !tbaa !73
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = call ptr @listNext(ptr noundef nonnull %2) #32 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !532

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.k = call fastcc ptr @clusterManagerNodeSlotsString(ptr noundef nonnull %1) ; 2 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.k) ; 0 uses
  call void @hi_sdsfree(ptr noundef nonnull %i.k) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clusterManagerShowClusterInfo() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = alloca [9 x i8], align 8                 ; 6 uses
  %1 = alloca %struct.listIter, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  %i.b = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %0) #32
  %i.c = call ptr @listNext(ptr noundef nonnull %0) #32 ; 2 uses
  %.not95 = icmp eq ptr %i.c, null
  br i1 %.not95, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph99, %bb.m
  %i.e = phi ptr [ %i.c, %.lr.ph99 ], [ %i.bb, %bb.m ]
  %.097 = phi i32 [ 0, %.lr.ph99 ], [ %.3, %bb.m ] ; 3 uses
  %.04196 = phi i64 [ 0, %.lr.ph99 ], [ %.344, %bb.m ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102  ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !141
  %i.j = and i32 %i.i, 2
  %.not59 = icmp eq i32 %i.j, 0
  br i1 %.not59, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !119
  %.not60 = icmp eq ptr %i.l, null
  br i1 %.not60, label %bb.m, label %bb.d, !llvm.loop !533

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %2 = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.m = load i64, ptr %2, align 1
  store i64 %i.m, ptr %i.a, align 8
  store i8 0, ptr %i.d, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.n = load ptr, ptr @cluster_manager.0, align 8, !tbaa !77
  call void @listRewind(ptr noundef %i.n, ptr noundef nonnull %1) #32
  %i.o = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not6193 = icmp eq ptr %i.o, null
  br i1 %.not6193, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.h
  %i.p = phi ptr [ %i.ab, %bb.h ], [ %i.o, %bb.d ]
  %.04794 = phi i32 [ %.249, %bb.h ], [ 0, %bb.d ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !102  ; 3 uses
  %i.s = icmp eq ptr %i.r, %i.g
  br i1 %i.s, label %bb.h, label %bb.e, !llvm.loop !534

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !141
  %i.v = and i32 %i.u, 2
  %.not63 = icmp eq i32 %i.v, 0
  br i1 %.not63, label %bb.h, label %bb.f, !llvm.loop !534

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !118  ; 2 uses
  %.not64 = icmp eq ptr %i.x, null
  br i1 %.not64, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.z = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) %i.y) #34
  %.not65 = icmp eq i32 %i.z, 0
  %i.aa = zext i1 %.not65 to i32
  %spec.select = add nsw i32 %.04794, %i.aa
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph, %bb.e
  %.249 = phi i32 [ %.04794, %.lr.ph ], [ %.04794, %bb.e ], [ %spec.select, %bb.g ], [ %.04794, %bb.f ] ; 2 uses
  %i.ab = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not61 = icmp eq ptr %i.ab, null
  br i1 %.not61, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %.047.lcssa = phi i32 [ 0, %bb.d ], [ %.249, %bb.h ]
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.ad = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.ac, ptr noundef nonnull @.str.397) #32 ; 6 uses
  %.not62 = icmp eq ptr %i.ad, null
  br i1 %.not62, label %.critedge, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !41
  switch i32 %i.ae, label %.loopexit.thread [
    i32 3, label %bb.j
    i32 6, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !180 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  br i1 %i.ah, label %bb.l, label %.loopexit.thread

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.j, %bb.i, %bb.k
  %.040 = phi ptr [ %i.aj, %bb.k ], [ @.str.34, %bb.i ], [ @.str.34, %bb.j ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !80
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.al, i32 noundef %i.an, ptr noundef %.040)
  call void @freeReplyObject(ptr noundef nonnull %i.ad) #32
  br label %.thread76

.critedge:                                        ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !80
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.ap, i32 noundef %i.ar, ptr noundef nonnull @.str.34)
  br label %.thread76

.thread76:                                        ; preds = %.loopexit.thread, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @freeReplyObject(ptr noundef nonnull %i.ad) #32
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !80
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 16468
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !107
  %i.ay = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.398, ptr noundef %i.at, i32 noundef %i.av, ptr noundef nonnull %i.a, i64 noundef %i.ag, i32 noundef %i.ax, i32 noundef %.047.lcssa) ; 0 uses
  %i.az = add nsw i32 %.097, 1
  %i.ba = add nuw nsw i64 %i.ag, %.04196
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b, %bb.c
  %.344 = phi i64 [ %.04196, %bb.c ], [ %.04196, %bb.b ], [ %i.ba, %bb.l ] ; 2 uses
  %.3 = phi i32 [ %.097, %bb.c ], [ %.097, %bb.b ], [ %i.az, %bb.l ] ; 2 uses
  %i.bb = call ptr @listNext(ptr noundef nonnull %0) #32 ; 2 uses
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %._crit_edge100, label %bb.b

._crit_edge100:                                   ; preds = %bb.m, %bb.a
  %.041.lcssa = phi i64 [ 0, %bb.a ], [ %.344, %bb.m ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.3, %bb.m ]
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 4, ptr noundef nonnull @.str.399, i64 noundef %.041.lcssa, i32 noundef %.0.lcssa)
  %i.bc = uitofp nneg i64 %.041.lcssa to float
  %i.bd = fmul nnan float %i.bc, f0x38800000
  %i.be = fpext float %i.bd to double
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.400, double noundef %i.be) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.thread76, %._crit_edge100
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @clusterManagerComputeReshardTable(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = tail call ptr @listCreate() #32          ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !90   ; 3 uses
  %i.d = trunc i64 %i.c to i32
  %sext = shl i64 %i.c, 32                        ; 2 uses
  %i.e = ashr exact i64 %sext, 32
  %i.f = ashr exact i64 %sext, 29
  %i.g = tail call noalias ptr @zmalloc(i64 noundef %i.f) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @listRewind(ptr noundef %0, ptr noundef nonnull %2) #32
  %i.h = call ptr @listNext(ptr noundef nonnull %2) #32 ; 2 uses
  %.not53 = icmp eq ptr %i.h, null
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %i.p, %.lr.ph ], [ %i.h, %bb.a ]
  %.04254 = phi i32 [ %i.n, %.lr.ph ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16468
  %i.m = load i32, ptr %i.l, align 4, !tbaa !107
  %i.n = add nsw i32 %i.m, %.04254                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  store ptr %i.k, ptr %i.o, align 8, !tbaa !99
  %i.p = call ptr @listNext(ptr noundef nonnull %2) #32 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !535

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.q = sitofp i32 %i.n to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.042.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.q, %._crit_edge.loopexit ]
  call void @qsort(ptr noundef %i.g, i64 noundef %i.e, i64 noundef 8, ptr noundef nonnull @clusterManagerSlotCountCompareDesc) #32
  %i.r = icmp sgt i32 %i.d, 0
  br i1 %i.r, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %._crit_edge
  %i.s = sitofp i32 %1 to float
  %i.t = fdiv float %i.s, %.042.lcssa
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %wide.trip.count = and i64 %i.c, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph60, %.thread
  %indvars.iv66 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next67, %.thread ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv66
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !99   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16468
  %i.y = load i32, ptr %i.x, align 4, !tbaa !107
  %i.z = sitofp i32 %i.y to float
  %i.aa = fmul float %i.t, %i.z                   ; 2 uses
  %i.ab = icmp eq i64 %indvars.iv66, 0
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = call float @llvm.ceil.f32(float %i.aa)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ad = call float @llvm.floor.f32(float %i.aa)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_2
begin_hunk_3_@sendReadOnly:bb.a
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.84, i64 11, i64 1, ptr %i.d) #33 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 8, !tbaa !41
  %i.g = icmp eq i32 %i.f, 6
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 3 uses
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(47) @.str.782) #34
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(20) @.str.783, i64 noundef 19) #34
  %.not6 = icmp eq i32 %i.k, 0
  br i1 %.not6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.463, ptr noundef nonnull %i.i) #39 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e
  tail call void @freeReplyObject(ptr noundef nonnull %i.b) #32
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @sendScan(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 280), align 8, !tbaa !284 ; 7 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = load ptr, ptr @context, align 8, !tbaa !219 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !339    ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !73
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = and i32 %i.f, 7
  switch i32 %i.g, label %hi_sdslen.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i32 %i.f, 3
  %i.i = zext nneg i32 %i.h to i64
  br label %hi_sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 -3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !73
  %i.l = zext i8 %i.k to i64
  br label %hi_sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 -5
  %i.n = load i16, ptr %i.m, align 1, !tbaa !74
  %i.o = zext i16 %i.n to i64
  br label %hi_sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 -9
  %i.q = load i32, ptr %i.p, align 1, !tbaa !9
  %i.r = zext i32 %i.q to i64
  br label %hi_sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.a, i64 -17
  %i.t = load i64, ptr %i.s, align 1, !tbaa !26
  br label %hi_sdslen.exit

hi_sdslen.exit:                                   ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.t, %bb.g ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ %i.r, %bb.f ], [ 0, %bb.b ]
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !250
  %i.v = tail call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.b, ptr noundef nonnull @.str.784, i64 noundef %i.c, ptr noundef nonnull %i.a, i64 noundef %.0.i, i32 noundef %i.u) #32
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !250
  %i.x = tail call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.b, ptr noundef nonnull @.str.785, i64 noundef %i.c, i32 noundef %i.w) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %hi_sdslen.exit
  %.0 = phi ptr [ %i.v, %hi_sdslen.exit ], [ %i.x, %bb.h ] ; 6 uses
  %i.y = icmp eq ptr %.0, null
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.aa = tail call i64 @fwrite(ptr nonnull @.str.84, i64 11, i64 1, ptr %i.z) #33 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %.0, align 8, !tbaa !41
  switch i32 %i.ab, label %bb.m [
    i32 6, label %bb.l
    i32 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.786, ptr noundef %i.ae) #39 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ah = tail call i64 @fwrite(ptr nonnull @.str.787, i64 30, i64 1, ptr %i.ag) #33 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !33
  %.not15 = icmp eq i64 %i.aj, 2
  br i1 %.not15, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.al = tail call i64 @fwrite(ptr nonnull @.str.788, i64 33, i64 1, ptr %i.ak) #33 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !39 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !41
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.789, ptr noundef nonnull @.str.7, i32 noundef 9309, ptr noundef nonnull @__PRETTY_FUNCTION__.sendScan) #37
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.at = load i32, ptr %i.as, align 8, !tbaa !41
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.790, ptr noundef nonnull @.str.7, i32 noundef 9310, ptr noundef nonnull @__PRETTY_FUNCTION__.sendScan) #37
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  %i.ax = tail call i64 @__isoc23_strtoull(ptr noundef %i.aw, ptr noundef null, i32 noundef 10) #32
  store i64 %i.ax, ptr %0, align 8, !tbaa !339
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @getKeyTypes(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %.not40 = icmp eq i64 %i.e, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.i = icmp eq i64 %i.v, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph39

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.j = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.b ]
  %.02237 = phi i32 [ 0, %.lr.ph ], [ %i.t, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr @.str.791, ptr %i.b, align 16, !tbaa !29
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  store ptr %i.o, ptr %i.f, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i64 4, ptr %i.c, align 16, !tbaa !26
  %3 = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !70
  store i64 %i.q, ptr %i.h, align 8, !tbaa !26
  %i.r = load ptr, ptr @context, align 8, !tbaa !219
  %i.s = call i32 @redisAppendCommandArgv(ptr noundef %i.r, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.t = add i32 %.02237, 1                       ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.w = icmp ugt i64 %i.v, %i.u
  br i1 %i.w, label %bb.b, label %.preheader, !llvm.loop !564

.lr.ph39:                                         ; preds = %.preheader, %bb.l
  %i.x = phi i64 [ %i.bp, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %.138 = phi i32 [ %i.bo, %bb.l ], [ 0, %.preheader ]
  %i.y = load ptr, ptr @context, align 8, !tbaa !219
  %i.z = call i32 @redisGetReply(ptr noundef %i.y, ptr noundef nonnull %i.a) #32
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph39
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.x
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.ah = load ptr, ptr @context, align 8, !tbaa !219 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !170
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.al = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.792, ptr noundef %i.ag, i32 noundef %i.aj, ptr noundef nonnull %i.ak) #39 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.d:                                             ; preds = %.lr.ph39
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !39  ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !41 ; 2 uses
  switch i32 %i.an, label %bb.f [
    i32 5, label %bb.h
    i32 6, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.ar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.793, ptr noundef %i.aq) #39 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.x
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !42
  %i.az = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.794, i32 noundef %i.an, ptr noundef %i.ay) #39 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @exit(i32 noundef 1) #40
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !42
  %i.bc = call ptr @hi_sdsnew(ptr noundef %i.bb) #32 ; 2 uses
  %i.bd = call ptr @dictFind(ptr noundef %0, ptr noundef %i.bc) #32 ; 2 uses
  call void @hi_sdsfree(ptr noundef %i.bc) #32
  %.not28 = icmp eq ptr %i.bd, null
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = call ptr @dictGetVal(ptr noundef nonnull %i.bd) #32
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.bi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(5) @.str.795) #34
  %.not29 = icmp eq i32 %i.bi, 0
  br i1 %.not29, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = call noalias dereferenceable_or_null(56) ptr @zmalloc(i64 noundef 56) #36 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bj, ptr noundef nonnull align 8 dereferenceable(56) @type_other, i64 56, i1 false), !tbaa.struct !341
  %i.bk = call ptr @hi_sdsnew(ptr noundef nonnull %i.bh) #32 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !226
  %i.bl = call i32 @dictAdd(ptr noundef %0, ptr noundef %i.bk, ptr noundef nonnull %i.bj) #32 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.0 = phi ptr [ %i.be, %bb.i ], [ %i.bj, %bb.k ], [ null, %bb.j ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.x
  store ptr %.0, ptr %i.bm, align 8, !tbaa !28
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !39
  call void @freeReplyObject(ptr noundef %i.bn) #32
  %i.bo = add i32 %.138, 1                        ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !33
  %i.br = icmp ugt i64 %i.bq, %i.bp
  br i1 %i.br, label %.lr.ph39, label %._crit_edge, !llvm.loop !565

._crit_edge:                                      ; preds = %bb.l, %bb.a, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @getKeySizes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 0, 2) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 5 uses
  %i.d = alloca [3 x ptr], align 16               ; 5 uses
  %i.e = alloca [3 x i64], align 16               ; 6 uses
  %i.f = alloca [5 x ptr], align 16               ; 7 uses
  %i.g = alloca [5 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33   ; 4 uses
  %.not65 = icmp eq i64 %i.i, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not66 = icmp eq i32 %3, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br i1 %.not66, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.w = icmp eq i64 %4, -1
  br i1 %i.w, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.c
  %i.x = phi i64 [ %i.ak, %bb.c ], [ %i.i, %.lr.ph.split.us ]
  %i.y = phi i64 [ %i.am, %bb.c ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.062.us.us = phi i32 [ %i.al, %bb.c ], [ 0, %.lr.ph.split.us ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28
  %.not60.us.us = icmp eq ptr %i.aa, null
  br i1 %.not60.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store <2 x ptr> <ptr @.str.796, ptr @.str.797>, ptr %i.d, align 16, !tbaa !29
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.y ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  store ptr %i.af, ptr %i.t, align 16, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i64 6, ptr %i.e, align 16, !tbaa !26
  store i64 5, ptr %i.u, align 8, !tbaa !26
  %5 = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !70
  store i64 %i.ah, ptr %i.v, align 16, !tbaa !26
  %i.ai = load ptr, ptr @context, align 8, !tbaa !219
  %i.aj = call i32 @redisAppendCommandArgv(ptr noundef %i.ai, i32 noundef 3, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %.pre72 = load i64, ptr %i.h, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.split.us
  %i.ak = phi i64 [ %.pre72, %bb.b ], [ %i.x, %.lr.ph.split.us.split.us ] ; 3 uses
  %i.al = add i32 %.062.us.us, 1                  ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = icmp ugt i64 %i.ak, %i.am
  br i1 %i.an, label %.lr.ph.split.us.split.us, label %.preheader, !llvm.loop !566

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.j
  %i.ao = phi i64 [ %i.bt, %bb.j ], [ %i.i, %.lr.ph.split.us ]
  %i.ap = phi i64 [ %i.bv, %bb.j ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.062.us = phi i32 [ %i.bu, %bb.j ], [ 0, %.lr.ph.split.us ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28
  %.not60.us = icmp eq ptr %i.ar, null
  br i1 %.not60.us, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.split
  %i.as = call ptr @hi_sdsfromlonglong(i64 noundef %4) #32 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  store <2 x ptr> <ptr @.str.796, ptr @.str.797>, ptr %i.f, align 16, !tbaa !29
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ap ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42
  store ptr %i.ax, ptr %i.m, align 16, !tbaa !29
  store ptr @.str.798, ptr %i.n, align 8, !tbaa !29
  store ptr %i.as, ptr %i.o, align 16, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  store i64 6, ptr %i.g, align 16, !tbaa !26
  store i64 5, ptr %i.p, align 8, !tbaa !26
  %6 = load ptr, ptr %i.au, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !70
  store i64 %i.az, ptr %i.q, align 16, !tbaa !26
  store i64 7, ptr %i.r, align 8, !tbaa !26
  %i.ba = getelementptr inbounds i8, ptr %i.as, i64 -1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !73
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = and i32 %i.bc, 7
  switch i32 %i.bd, label %hi_sdslen.exit.us [
    i32 0, label %bb.i
    i32 1, label %bb.h
    i32 2, label %bb.g
    i32 3, label %bb.f
    i32 4, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds i8, ptr %i.as, i64 -17
  %i.bf = load i64, ptr %i.be, align 1, !tbaa !26
  br label %hi_sdslen.exit.us

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds i8, ptr %i.as, i64 -9
  %i.bh = load i32, ptr %i.bg, align 1, !tbaa !9
  %i.bi = zext i32 %i.bh to i64
  br label %hi_sdslen.exit.us

bb.g:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 -5
  %i.bk = load i16, ptr %i.bj, align 1, !tbaa !74
  %i.bl = zext i16 %i.bk to i64
  br label %hi_sdslen.exit.us

bb.h:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds i8, ptr %i.as, i64 -3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !73
  %i.bo = zext i8 %i.bn to i64
  br label %hi_sdslen.exit.us

bb.i:                                             ; preds = %bb.d
  %i.bp = lshr i32 %i.bc, 3
  %i.bq = zext nneg i32 %i.bp to i64
  br label %hi_sdslen.exit.us

hi_sdslen.exit.us:                                ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0.i.us = phi i64 [ %i.bf, %bb.e ], [ %i.bq, %bb.i ], [ %i.bo, %bb.h ], [ %i.bl, %bb.g ], [ %i.bi, %bb.f ], [ 0, %bb.d ]
  store i64 %.0.i.us, ptr %i.s, align 16, !tbaa !26
  %i.br = load ptr, ptr @context, align 8, !tbaa !219
  %i.bs = call i32 @redisAppendCommandArgv(ptr noundef %i.br, i32 noundef 5, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #32 ; 0 uses
  call void @hi_sdsfree(ptr noundef nonnull %i.as) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  %.pre = load i64, ptr %i.h, align 8, !tbaa !33
  br label %bb.j

bb.j:                                             ; preds = %hi_sdslen.exit.us, %.lr.ph.split.us.split
  %i.bt = phi i64 [ %.pre, %hi_sdslen.exit.us ], [ %i.ao, %.lr.ph.split.us.split ] ; 3 uses
  %i.bu = add i32 %.062.us, 1                     ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = icmp ugt i64 %i.bt, %i.bv
  br i1 %i.bw, label %.lr.ph.split.us.split, label %.preheader, !llvm.loop !566

.preheader:                                       ; preds = %bb.j, %bb.c, %bb.m
  %i.bx = phi i64 [ %i.ak, %bb.c ], [ %i.cr, %bb.m ], [ %i.bt, %bb.j ] ; 2 uses
  %.not68 = icmp eq i64 %i.bx, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph64

.lr.ph64:                                         ; preds = %.preheader
  %i.by = icmp ne i32 %3, 0                       ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.n

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %i.ca = phi i64 [ %i.cr, %bb.m ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.cb = phi i64 [ %i.ct, %bb.m ], [ 0, %.lr.ph ] ; 2 uses
  %.062 = phi i32 [ %i.cs, %bb.m ], [ 0, %.lr.ph ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !28 ; 2 uses
  %.not60 = icmp eq ptr %i.cd, null
  br i1 %.not60, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !365
  %.not67 = icmp eq ptr %i.cf, null
  br i1 %.not67, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %7 = load ptr, ptr %i.ce, align 8, !tbaa !365
  store ptr %7, ptr %i.b, align 16, !tbaa !29
  %i.cg = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cb ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !39
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !42
  store ptr %i.ck, ptr %i.j, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !365
  %i.cm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cl) #34
  store i64 %i.cm, ptr %i.c, align 16, !tbaa !26
  %8 = load ptr, ptr %i.ch, align 8, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !70
  store i64 %i.co, ptr %i.l, align 8, !tbaa !26
  %i.cp = load ptr, ptr @context, align 8, !tbaa !219
  %i.cq = call i32 @redisAppendCommandArgv(ptr noundef %i.cp, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %.pre73 = load i64, ptr %i.h, align 8, !tbaa !33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split, %bb.k
  %i.cr = phi i64 [ %.pre73, %bb.l ], [ %i.ca, %.lr.ph.split ], [ %i.ca, %bb.k ] ; 3 uses
  %i.cs = add i32 %.062, 1                        ; 2 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = icmp ugt i64 %i.cr, %i.ct
  br i1 %i.cu, label %.lr.ph.split, label %.preheader, !llvm.loop !566

bb.n:                                             ; preds = %.lr.ph64, %bb.y
  %i.cv = phi i64 [ %i.bx, %.lr.ph64 ], [ %i.ei, %bb.y ]
  %i.cw = phi i64 [ 0, %.lr.ph64 ], [ %i.ek, %bb.y ] ; 6 uses
  %.163 = phi i32 [ 0, %.lr.ph64 ], [ %i.ej, %bb.y ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cw ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.cy, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !365
  %i.db = icmp ne ptr %i.da, null
  %or.cond3 = or i1 %i.by, %i.db
  br i1 %or.cond3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cw
  store i64 0, ptr %i.dc, align 8, !tbaa !339
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.dd = load ptr, ptr @context, align 8, !tbaa !219
  %i.de = call i32 @redisGetReply(ptr noundef %i.dd, ptr noundef nonnull %i.a) #32
  %.not58 = icmp eq i32 %i.de, 0
  br i1 %.not58, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dg = load ptr, ptr %i.bz, align 8, !tbaa !38
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.cw
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !39
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !42
  %i.dl = load ptr, ptr @context, align 8, !tbaa !219 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !170
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.dp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.df, ptr noundef nonnull @.str.799, ptr noundef %i.dk, i32 noundef %i.dn, ptr noundef nonnull %i.do) #39 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !39  ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !41
  %.not59 = icmp eq i32 %i.dr, 3
  br i1 %.not59, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = load ptr, ptr @stderr, align 8, !tbaa !13
  br i1 %i.by, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dt = load ptr, ptr %i.cx, align 8, !tbaa !28
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !365
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.dw = phi ptr [ %i.dv, %bb.u ], [ @.str.801, %bb.t ]
  %i.dx = load ptr, ptr %i.bz, align 8, !tbaa !38
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.cw
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !39
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !42
  %i.ec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ds, ptr noundef nonnull @.str.800, ptr noundef %i.dw, ptr noundef %i.eb) #39 ; 0 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cw
  store i64 0, ptr %i.ed, align 8, !tbaa !339
  %.pre74 = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !180
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cw
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !339
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.eh = phi ptr [ %.pre74, %bb.v ], [ %i.dq, %bb.w ]
  call void @freeReplyObject(ptr noundef %i.eh) #32
  %.pre75 = load i64, ptr %i.h, align 8, !tbaa !33
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.p
  %i.ei = phi i64 [ %.pre75, %bb.x ], [ %i.cv, %bb.p ] ; 2 uses
  %i.ej = add i32 %.163, 1                        ; 2 uses
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = icmp ugt i64 %i.ei, %i.ek
  br i1 %i.el, label %bb.n, label %._crit_edge, !llvm.loop !567

._crit_edge:                                      ; preds = %bb.y, %bb.a, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @displayKeyStatsProgressbar(i64 noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  %i.b = alloca [2 x [128 x i8]], align 16        ; 6 uses
  %i.c = alloca [6 x i8], align 1                 ; 4 uses
  %i.d = alloca [6 x i8], align 1                 ; 4 uses
  %i.e = alloca [6 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %0, %1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = uitofp i64 %0 to double
  %i.h = uitofp i64 %1 to double
  %i.i = fdiv double %i.g, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.j = phi double [ 1.000000e+00, %bb.b ], [ %i.i, %bb.c ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.k = tail call i32 @isatty(i32 noundef 1) #32
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not17 = icmp eq ptr %i.l, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = fmul double %i.j, 6.000000e+01
  %i.n = tail call double @llvm.round.f64(double %i.m)
  %i.o = fptosi double %i.n to i32                ; 2 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 124, i64 %i.p, i1 false)
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 %i.p
  store i8 0, ptr %i.q, align 1, !tbaa !73
  %i.r = sub nsw i32 60, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  %i.t = sext i32 %i.r to i64                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.s, i8 45, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.red, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.green, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.e, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.default_color, i64 6, i1 false)
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 512, ptr noundef nonnull @.str.802, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.s, ptr noundef nonnull %i.e) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.803, i64 13, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = fmul double %i.j, 1.000000e+02
  %i.x = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.804, double noundef %i.w, ptr noundef nonnull %i.a)
  %i.y = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.805, i64 noundef %0)
  %i.z = add nsw i32 %i.y, %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i32 %i.z
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @displayKeyStats(i64 noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i64 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %9 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %10 = alloca %struct.listIter, align 8          ; 5 uses
  %i.d = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
end_hunk_3
