Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/cluster_legacy?download=true
inline.NumInlined: 443
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@connTypeOfCluster

declare i32 @createSocketAcceptHandler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterAcceptHandler(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree readnone captures(none) %2, i32 %3) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [46 x i8], align 16               ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i32 1, ptr %i.c, align 4, !tbaa !9
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !141
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.f = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2476), align 4, !tbaa !142
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %.backedge
  %i.g = phi i32 [ %i.m, %.backedge ], [ 999, %.preheader ] ; 2 uses
  %i.h = call i32 @anetTcpAccept(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 1624), i32 noundef %1, ptr noundef nonnull %i.b, i64 noundef 46, ptr noundef nonnull %i.a) #30 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__errno_location() #33    ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = call i32 @anetAcceptFailureNeedsRetry(i32 noundef %i.k) #30
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %bb.e, label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.m
  %i.m = add nsw i32 %i.g, -1
  %.not18 = icmp eq i32 %i.g, 0
  br i1 %.not18, label %.critedge, label %bb.c, !llvm.loop !143

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.j, align 4, !tbaa !9
  %i.o = icmp eq i32 %i.n, 11
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.q = icmp sgt i32 %i.p, 1
  %or.cond = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.56, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 1624)) #30
  br label %.critedge

bb.g:                                             ; preds = %bb.c
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !144
  %i.s = call ptr @connTypeOfCluster() #30
  %i.t = getelementptr i8, ptr %i.s, i64 80
  %.val = load ptr, ptr %i.t, align 8, !tbaa !145
  %i.u = call ptr %.val(ptr noundef %i.r, i32 noundef range(i32 0, -1) %i.h, ptr noundef nonnull %i.c) #30, !inline_history !146 ; 14 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val22 = load i32, ptr %i.v, align 8, !tbaa !147
  %.not19 = icmp eq i32 %.val22, 2
  br i1 %.not19, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !149
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !150
  %i.ab = call ptr %i.aa(ptr noundef nonnull %i.u) #30, !inline_history !151
  call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.57, ptr noundef %i.ab) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !149
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !152
  call void %i.ae(ptr noundef nonnull %i.u) #30, !inline_history !153
  br label %.critedge

bb.k:                                             ; preds = %bb.g
  %i.af = call i32 @connEnableTcpNoDelay(ptr noundef nonnull %i.u) #30 ; 0 uses
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8168), align 8, !tbaa !154
  %i.ah = sdiv i64 %i.ag, 1000
  %.tr = trunc i64 %i.ah to i32
  %i.ai = shl i32 %.tr, 1
  %i.aj = call i32 @connKeepAlive(ptr noundef nonnull %i.u, i32 noundef %i.ai) #30 ; 0 uses
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.al = icmp sgt i32 %i.ak, 1
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load i32, ptr %i.a, align 4, !tbaa !9
  call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.b, i32 noundef %i.am) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !149
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !155
  %i.aq = call i32 %i.ap(ptr noundef nonnull %i.u, ptr noundef nonnull @clusterConnAcceptHandler) #30, !inline_history !156
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %bb.n, label %.backedge

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr i8, ptr %i.u, i64 8
  %.val21 = load i32, ptr %i.as, align 8, !tbaa !147
  %i.at = icmp ne i32 %.val21, 5
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.av = icmp sgt i32 %i.au, 1
  %or.cond3 = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !149
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 168
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !150
  %i.az = call ptr %i.ay(ptr noundef nonnull %i.u) #30, !inline_history !151
  call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.59, ptr noundef %i.az) #30
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !149
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !152
  call void %i.bc(ptr noundef nonnull %i.u) #30, !inline_history !153
  br label %.critedge

.critedge:                                        ; preds = %.backedge, %bb.j, %bb.p, %bb.e, %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterReset(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = load ptr, ptr @myself, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !89
  %i.d = and i32 %i.c, 2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @asmFinalizeMasterTask() #30
  %i.e = load ptr, ptr @myself, align 8, !tbaa !54 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !89   ; 2 uses
  %i.h = and i32 %i.g, 1
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %clusterSetNodeAsMaster.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2184 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65   ; 4 uses
  %.not10.i = icmp eq ptr %i.j, null
  br i1 %.not10.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2168 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !47   ; 5 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i, label %clusterNodeRemoveSlave.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 2176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53   ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.l to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.t = add nuw nsw i32 %i.s, 1                  ; 2 uses
  %i.u = icmp slt i32 %i.t, %i.l
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i
  %i.w = xor i32 %i.s, -1
  %i.x = add nsw i32 %i.l, %i.w
  %i.y = zext nneg i32 %i.t to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = sext i32 %i.x to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.z, i64 %i.ab, i1 false)
  %.pre.i.i = load i32, ptr %i.k, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = phi i32 [ %.pre.i.i, %bb.g ], [ %i.l, %bb.f ]
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.k, align 8, !tbaa !47
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %clusterNodeRemoveSlave.exit.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !89
  %i.ah = and i32 %i.ag, -257
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !89
  br label %clusterNodeRemoveSlave.exit.i

bb.j:                                             ; preds = %bb.e
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %clusterNodeRemoveSlave.exit.i, label %bb.e, !llvm.loop !157

clusterNodeRemoveSlave.exit.i:                    ; preds = %bb.j, %bb.i, %bb.h, %bb.d
  %i.ai = load ptr, ptr @myself, align 8, !tbaa !54
  %.not11.i = icmp eq ptr %i.e, %i.ai
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !89 ; 2 uses
  %i.aj = or i32 %.pre.i, 256
  %spec.select.i = select i1 %.not11.i, i32 %.pre.i, i32 %i.aj
  br label %bb.k

bb.k:                                             ; preds = %clusterNodeRemoveSlave.exit.i, %bb.c
  %i.ak = phi i32 [ %spec.select.i, %clusterNodeRemoveSlave.exit.i ], [ %i.g, %bb.c ]
  %i.al = and i32 %i.ak, -4
  %i.am = or disjoint i32 %i.al, 1
  store i32 %i.am, ptr %i.f, align 8, !tbaa !89
  store ptr null, ptr %i.i, align 8, !tbaa !65
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 393384 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !67
  %i.aq = or i32 %i.ap, 6
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !67
  br label %clusterSetNodeAsMaster.exit

clusterSetNodeAsMaster.exit:                      ; preds = %bb.b, %bb.k
  tail call void @replicationUnsetMaster() #30
  %i.ar = tail call i64 @emptyData(i32 noundef -1, i32 noundef 0, ptr noundef null) #30 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %clusterSetNodeAsMaster.exit, %bb.a
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.at, i8 0, i64 131072, i1 false)
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 131120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.av, i8 0, i64 131072, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 393352
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !131
  %.not.i12 = icmp eq ptr %i.ax, null
  br i1 %.not.i12, label %resetManualFailover.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @unpauseActions(i32 noundef 2) #30
  %.pre.i13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %resetManualFailover.exit

resetManualFailover.exit:                         ; preds = %bb.l, %bb.m
  %i.ay = phi ptr [ %.pre.i13, %bb.m ], [ %i.au, %bb.l ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 393344
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 393368
  store i32 0, ptr %i.ba, align 8, !tbaa !129
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 393360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.bb, align 8, !tbaa !130
  %i.bc = tail call i32 @clusterAsmCancel(ptr noundef null, ptr noundef nonnull @.str.48) #30 ; 0 uses
  tail call void @asmCancelTrimJobs() #30
  br label %bb.n

bb.n:                                             ; preds = %resetManualFailover.exit, %bb.n
  %.017 = phi i32 [ 0, %resetManualFailover.exit ], [ %i.be, %bb.n ] ; 2 uses
  %i.bd = tail call i32 @clusterDelSlot(i32 noundef %.017) ; 0 uses
  %i.be = add nuw nsw i32 %.017, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, 16384
  br i1 %exitcond.not, label %bb.o, label %bb.n, !llvm.loop !158

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !70
  tail call void @dictEmpty(ptr noundef %i.bh, ptr noundef null) #30
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !81
  call void @dictInitSafeIterator(ptr noundef nonnull %1, ptr noundef %i.bk) #30
  %i.bl = call ptr @dictNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not1018 = icmp eq ptr %i.bl, null
  br i1 %.not1018, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.q
  %i.bm = phi ptr [ %i.bq, %bb.q ], [ %i.bl, %bb.o ]
  %i.bn = call ptr @dictGetVal(ptr noundef nonnull %i.bm) #30 ; 2 uses
  %i.bo = load ptr, ptr @myself, align 8, !tbaa !54
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.q, label %bb.p, !llvm.loop !159

bb.p:                                             ; preds = %.lr.ph
  call void @clusterDelNode(ptr noundef %i.bn)
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.p
  %i.bq = call ptr @dictNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not10 = icmp eq ptr %i.bq, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.q, %bb.o
  call void @dictResetIterator(ptr noundef nonnull %1) #30
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !122
  call void @dictEmpty(ptr noundef %i.bt, ptr noundef null) #30
  %.not11 = icmp eq i32 %0, 0
  br i1 %.not11, label %bb.w, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 0, ptr %i.bv, align 8, !tbaa !78
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 393376
  store i64 0, ptr %i.bw, align 8, !tbaa !79
  %i.bx = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  store i64 0, ptr %i.by, align 8, !tbaa !95
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.ca = icmp sgt i32 %i.bz, 2
  br i1 %i.ca, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.49) #30
  %.pre = load ptr, ptr @myself, align 8, !tbaa !54
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.cb = phi ptr [ %i.bx, %bb.r ], [ %.pre, %bb.s ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = call ptr @sdsnewlen(ptr noundef nonnull %i.cc, i64 noundef 40) #30 ; 2 uses
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !81
  %i.ch = call i32 @dictDelete(ptr noundef %i.cg, ptr noundef %i.cd) #30 ; 0 uses
  call void @sdsfree(ptr noundef %i.cd) #30
  %i.ci = load ptr, ptr @myself, align 8, !tbaa !54
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  call void @getRandomHexChars(ptr noundef nonnull %i.cj, i64 noundef 40) #30
  %i.ck = load ptr, ptr @myself, align 8, !tbaa !54
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  call void @getRandomHexChars(ptr noundef nonnull %i.cl, i64 noundef 40) #30
  %i.cm = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !81
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cr = call ptr @sdsnewlen(ptr noundef nonnull %i.cq, i64 noundef 40) #30
  %i.cs = call i32 @dictAdd(ptr noundef %i.cp, ptr noundef %i.cr, ptr noundef %i.cm) #30
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %clusterAddNode.exit, label %bb.u, !prof !71

bb.u:                                             ; preds = %bb.t
  call void @_serverAssert(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.18, i32 noundef 1540) #30
  call void @abort() #32
  unreachable

clusterAddNode.exit:                              ; preds = %bb.t
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.cv = icmp sgt i32 %i.cu, 2
  br i1 %i.cv, label %bb.w, label %bb.v

bb.v:                                             ; preds = %clusterAddNode.exit
  %i.cw = load ptr, ptr @myself, align 8, !tbaa !54
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.cx) #30
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %clusterAddNode.exit, %._crit_edge
  %i.cy = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  call void @clusterAddNodeToShard(ptr noundef nonnull %i.cz, ptr noundef %i.cy)
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 393384 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !67
  %i.dd = or i32 %i.dc, 14
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

declare void @asmFinalizeMasterTask() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @clusterSetNodeAsMaster(ptr nofree noundef captures(address) %0) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2184 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 4 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2168 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47   ; 5 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %clusterNodeRemoveSlave.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.n = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.o = add nuw nsw i32 %i.n, 1                  ; 2 uses
  %i.p = icmp slt i32 %i.o, %i.g
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.r = xor i32 %i.n, -1
  %i.s = add nsw i32 %i.g, %i.r
  %i.t = zext nneg i32 %i.o to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.t
  %i.v = sext i32 %i.s to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i32 [ %.pre.i, %bb.f ], [ %i.g, %bb.e ]
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.f, align 8, !tbaa !47
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %clusterNodeRemoveSlave.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !89
  %i.ac = and i32 %i.ab, -257
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !89
  br label %clusterNodeRemoveSlave.exit

bb.i:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %clusterNodeRemoveSlave.exit, label %bb.d, !llvm.loop !157

clusterNodeRemoveSlave.exit:                      ; preds = %bb.i, %bb.c, %bb.g, %bb.h
  %i.ad = load ptr, ptr @myself, align 8, !tbaa !54
  %.not11 = icmp eq ptr %0, %i.ad
  %.pre = load i32, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.ae = or i32 %.pre, 256
  %spec.select = select i1 %.not11, i32 %.pre, i32 %i.ae
  br label %bb.j

bb.j:                                             ; preds = %clusterNodeRemoveSlave.exit, %bb.b
  %i.af = phi i32 [ %spec.select, %clusterNodeRemoveSlave.exit ], [ %i.b, %bb.b ]
  %i.ag = and i32 %i.af, -4
  %i.ah = or disjoint i32 %i.ag, 1
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !89
  store ptr null, ptr %i.d, align 8, !tbaa !65
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 393384 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !67
  %i.al = or i32 %i.ak, 6
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !67
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void
}

declare void @replicationUnsetMaster() local_unnamed_addr #2

declare i64 @emptyData(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @clusterAsmCancel(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @asmCancelTrimJobs() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @clusterDelSlot(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 262192
  %i.c = sext i32 %0 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8144), align 8, !tbaa !160
  %i.g = tail call i64 @kvstoreDictSize(ptr noundef %i.f, i32 noundef %0) #30
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %removeChannelsInSlot.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @pubsubShardUnsubscribeAllChannelsInSlot(i32 noundef %0) #30
  br label %removeChannelsInSlot.exit

removeChannelsInSlot.exit:                        ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.k = sdiv i32 %0, 8
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = and i32 %0, 7
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.l ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !58    ; 2 uses
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 1, %i.m                  ; 2 uses
  %i.r = and i32 %i.q, %i.p
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %removeChannelsInSlot.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.18, i32 noundef 5092) #30
  tail call void @abort() #32
  unreachable

bb.e:                                             ; preds = %removeChannelsInSlot.exit
  %i.s = trunc nuw i32 %i.q to i8
  %i.t = xor i8 %i.s, -1                          ; 2 uses
  %i.u = and i8 %i.o, %i.t
  store i8 %i.u, ptr %i.n, align 1, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 2164 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !161
  %i.x = add nsw i32 %i.w, -1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !161
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 262192
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.c
  store ptr null, ptr %i.aa, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 393584
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.l ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !58
  %i.ae = and i8 %i.ad, %i.t
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !58
  tail call void @clusterSlotStatReset(i32 noundef %0) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %bb.a ]
  ret i32 %.0
}

declare void @dictEmpty(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dictInitSafeIterator(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dictNext(ptr noundef) local_unnamed_addr #2

declare ptr @dictGetVal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterDelNode(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %.pre24 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.h
  %i.a = phi ptr [ %.pre24, %bb.a ], [ %i.p, %bb.h ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 131120
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.c, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = icmp eq ptr %i.h, %0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.g, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 262192
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = tail call i32 @clusterDelSlot(i32 noundef %i.n) ; 0 uses
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.p = phi ptr [ %i.a, %bb.f ], [ %.pre, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16384
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !162

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81
  call void @dictInitSafeIterator(ptr noundef nonnull %1, ptr noundef %i.r) #30
  %i.s = call ptr @dictNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not22 = icmp eq ptr %i.s, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.k
  %i.t = phi ptr [ %i.x, %bb.k ], [ %i.s, %bb.i ]
  %i.u = call ptr @dictGetVal(ptr noundef nonnull %i.t) #30 ; 2 uses
  %i.v = icmp eq ptr %i.u, %0
  br i1 %i.v, label %bb.k, label %bb.j, !llvm.loop !163

bb.j:                                             ; preds = %.lr.ph
  %i.w = call i32 @clusterNodeDelFailureReport(ptr noundef %i.u, ptr noundef %0) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j
end_hunk_0
begin_hunk_1_@clusterCountNonFailingSlaves:bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 3 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load i32, ptr %i.i, align 8, !tbaa !89
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 1
  %i.m = xor i32 %i.l, 1
  %spec.select = add nuw nsw i32 %i.m, %.08
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !89
  %i.s = lshr i32 %i.r, 3
  %i.t = and i32 %i.s, 1
  %i.u = xor i32 %i.t, 1
  %spec.select.1 = add nuw nsw i32 %i.u, %spec.select ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !192

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.08.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !89
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 9 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2184
  store ptr null, ptr %i.i, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2184
  store ptr null, ptr %i.m, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2184
  store ptr null, ptr %i.q, align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2184
  store ptr null, ptr %i.u, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2184
  store ptr null, ptr %i.y, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2184
  store ptr null, ptr %i.ac, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2184
  store ptr null, ptr %i.ag, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2184
  store ptr null, ptr %i.ak, align 8, !tbaa !65
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !193

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
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2184
  store ptr null, ptr %i.an, align 8, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !194

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !89
  %i.aq = and i32 %i.ap, 2
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %clusterNodeRemoveSlave.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !65 ; 4 uses
  %.not23 = icmp eq ptr %i.as, null
  br i1 %.not23, label %clusterNodeRemoveSlave.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2168 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !47 ; 5 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i, label %clusterNodeRemoveSlave.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 2176
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !53 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.au to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.ba = icmp eq ptr %i.az, %0
  br i1 %i.ba, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bb = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.bc = add nuw nsw i32 %i.bb, 1                ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.au
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bf = xor i32 %i.bb, -1
  %i.bg = add nsw i32 %i.au, %i.bf
  %i.bh = zext nneg i32 %i.bc to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bh
  %i.bj = sext i32 %i.bg to i64
  %i.bk = shl nuw nsw i64 %i.bj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull align 8 %i.bi, i64 %i.bk, i1 false)
  %.pre.i = load i32, ptr %i.at, align 8, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bl = phi i32 [ %.pre.i, %bb.h ], [ %i.au, %bb.g ]
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.at, align 8, !tbaa !47
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.j, label %clusterNodeRemoveSlave.exit

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 88 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !89
  %i.bq = and i32 %i.bp, -257
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !89
  br label %clusterNodeRemoveSlave.exit

bb.k:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %clusterNodeRemoveSlave.exit, label %bb.f, !llvm.loop !157

clusterNodeRemoveSlave.exit:                      ; preds = %bb.k, %bb.j, %bb.i, %bb.e, %bb.d, %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = tail call ptr @sdsnewlen(ptr noundef nonnull %i.br, i64 noundef 40) #30 ; 2 uses
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !81
  %i.bw = tail call i32 @dictDelete(ptr noundef %i.bv, ptr noundef %i.bs) #30
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %bb.l, !prof !71

bb.l:                                             ; preds = %clusterNodeRemoveSlave.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.18, i32 noundef 1521) #30
  tail call void @abort() #32
  unreachable

bb.m:                                             ; preds = %clusterNodeRemoveSlave.exit
  tail call void @sdsfree(ptr noundef %i.bs) #30
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !82
  tail call void @sdsfree(ptr noundef %i.bz) #30
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !57
  tail call void @sdsfree(ptr noundef %i.cb) #30
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !176 ; 2 uses
  %.not24 = icmp eq ptr %i.cd, null
  br i1 %.not24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @freeClusterLink(ptr noundef nonnull %i.cd)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !177 ; 2 uses
  %.not25 = icmp eq ptr %i.cf, null
  br i1 %.not25, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @freeClusterLink(ptr noundef nonnull %i.cf)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !98
  tail call void @listRelease(ptr noundef %i.ch) #30
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !53
  tail call void @zfree(ptr noundef %i.cj) #30
  tail call void @zfree(ptr noundef nonnull %0) #30
  ret void
}

declare i32 @dictAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @clusterAsmCancelByNode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dictFind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @clusterGetSecret(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 40, ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 393264
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @clusterGetNodesInMyShard(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call ptr @sdsnewlen(ptr noundef nonnull %i.a, i64 noundef 40) #30 ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = tail call ptr @dictFind(ptr noundef %i.e, ptr noundef %i.b) #30 ; 2 uses
  tail call void @sdsfree(ptr noundef %i.b) #30
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @dictGetVal(ptr noundef nonnull %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterRenameNode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = tail call ptr @sdsnewlen(ptr noundef nonnull %i.a, i64 noundef 40) #30 ; 2 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 0, ptr noundef nonnull @.str.63, ptr noundef nonnull %i.a, ptr noundef %1) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = tail call i32 @dictDelete(ptr noundef %i.g, ptr noundef %i.b) #30
  tail call void @sdsfree(ptr noundef %i.b) #30
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d, !prof !71

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.18, i32 noundef 1634) #30
  tail call void @abort() #32
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 1 dereferenceable(40) %1, i64 40, i1 false)
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.m = tail call ptr @sdsnewlen(ptr noundef nonnull %i.a, i64 noundef 40) #30
  %i.n = tail call i32 @dictAdd(ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull %0) #30
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %clusterAddNode.exit, label %bb.f, !prof !71

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.18, i32 noundef 1540) #30
  tail call void @abort() #32
  unreachable

clusterAddNode.exit:                              ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @clusterAddNodeToShard(ptr noundef nonnull %i.p, ptr noundef nonnull %0)
  ret void
}

declare ptr @listSearchKey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @clusterBumpConfigEpochWithoutConsensus() local_unnamed_addr #3 {
bb.a:
  %0 = alloca %struct.dictIterator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  call void @dictInitSafeIterator(ptr noundef nonnull %0, ptr noundef %i.c) #30
  %i.d = call ptr @dictNext(ptr noundef nonnull %0) #30 ; 2 uses
  %.not9.i = icmp eq ptr %i.d, null
  br i1 %.not9.i, label %clusterGetMaxEpoch.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.e = phi ptr [ %i.i, %.lr.ph.i ], [ %i.d, %bb.a ]
  %.010.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.a ]
  %i.f = call ptr @dictGetVal(ptr noundef nonnull %i.e) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i64, ptr %i.g, align 8, !tbaa !95
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.h, i64 %.010.i) ; 2 uses
  %i.i = call ptr @dictNext(ptr noundef nonnull %0) #30 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %clusterGetMaxEpoch.exit, label %.lr.ph.i, !llvm.loop !104

clusterGetMaxEpoch.exit:                          ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %spec.select.i, %.lr.ph.i ]
  call void @dictResetIterator(ptr noundef nonnull %0) #30
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
end_hunk_1
begin_hunk_2_@clusterUpdateSlotsConfigWith:bb.a
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !65 ; 2 uses
  %.not82 = icmp eq ptr %i.dn, null
  br i1 %.not82, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2184
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !65 ; 5 uses
  %.not83 = icmp eq ptr %i.dp, null
  %.not84 = icmp eq ptr %i.dp, %i.dl
  %or.cond95 = or i1 %.not83, %.not84
  br i1 %or.cond95, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.dr = icmp sgt i32 %i.dq, 2
  br i1 %i.dr, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 2320
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !57
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.88, ptr noundef nonnull %i.ds, ptr noundef %i.du) #30
  %.pre118 = load ptr, ptr @myself, align 8, !tbaa !54
  %.phi.trans.insert119 = getelementptr inbounds nuw i8, ptr %.pre118, i64 2184
  %.pre120 = load ptr, ptr %.phi.trans.insert119, align 8, !tbaa !65
  %.phi.trans.insert121 = getelementptr inbounds nuw i8, ptr %.pre120, i64 2184
  %.pre122 = load ptr, ptr %.phi.trans.insert121, align 8, !tbaa !65
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.dv = phi ptr [ %i.dp, %bb.aj ], [ %.pre122, %bb.ak ]
  call void @clusterSetMaster(ptr noundef %i.dv)
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 393384 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !67
  %i.dz = or i32 %i.dy, 46
  store i32 %i.dz, ptr %i.dx, align 8, !tbaa !67
  br label %.loopexit

bb.am:                                            ; preds = %bb.ai, %bb.ah
  %i.ea = icmp slt i32 %.264, 1
  %or.cond106.not = or i1 %i.ea, %.0
  br i1 %or.cond106.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.am
  %wide.trip.count = zext nneg i32 %.264 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv109 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next110, %.lr.ph ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv109
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !59
  %i.ed = zext i16 %i.ec to i32
  %i.ee = call i32 @clusterDelKeysInSlot(i32 noundef %i.ed, i32 noundef 0) #30 ; 0 uses
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count
  br i1 %exitcond113.not, label %.loopexit, label %.lr.ph, !llvm.loop !222

.loopexit:                                        ; preds = %.lr.ph, %bb.aa, %bb.al, %bb.am, %bb.ag, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @bitmapTestBit(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = sdiv i32 %1, 8
  %i.b = sext i32 %i.a to i64
  %i.c = and i32 %1, 7
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !tbaa !58
  %i.f = zext i8 %i.e to i32
  %i.g = lshr i32 %i.f, %i.c
  %i.h = and i32 %i.g, 1
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bitmapClearBit(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #23 {
bb.a:
  %i.a = sdiv i32 %1, 8
  %i.b = sext i32 %i.a to i64
  %i.c = and i32 %1, 7
  %i.d = shl nuw nsw i32 1, %i.c
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.b ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !58
  %i.g = trunc nuw i32 %i.d to i8
  %i.h = xor i8 %i.g, -1
  %i.i = and i8 %i.f, %i.h
  store i8 %i.i, ptr %i.e, align 1, !tbaa !58
  ret void
}

declare ptr @slotRangeArrayAppend(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @countKeysInSlot(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bitmapSetBit(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #23 {
bb.a:
  %i.a = sdiv i32 %1, 8
  %i.b = sext i32 %i.a to i64
  %i.c = and i32 %1, 7
  %i.d = shl nuw nsw i32 1, %i.c
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.b ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !58
  %i.g = trunc nuw i32 %i.d to i8
  %i.h = or i8 %i.f, %i.g
  store i8 %i.h, ptr %i.e, align 1, !tbaa !58
  ret void
}

declare ptr @asmLookupTaskBySlotRangeArray(ptr noundef) local_unnamed_addr #2

declare i32 @clusterAsmCancelBySlotRangeArray(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @asmNotifyConfigUpdated(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slotRangeArrayFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterSetMaster(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @myself, align 8, !tbaa !54 ; 5 uses
  %.not = icmp eq ptr %0, %i.a
  br i1 %.not, label %bb.b, label %bb.c, !prof !96

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.18, i32 noundef 5293) #30
  tail call void @abort() #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2164
  %i.c = load i32, ptr %i.b, align 4, !tbaa !161
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.d, !prof !71

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.18, i32 noundef 5294) #30
  tail call void @abort() #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !89   ; 2 uses
  %i.g = and i32 %i.f, 1
  %.not9 = icmp eq i32 %i.g, 0                    ; 2 uses
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = and i32 %i.f, -260
  %i.i = or disjoint i32 %i.h, 2
  store i32 %i.i, ptr %i.e, align 8, !tbaa !89
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.k, i8 0, i64 131072, i1 false)
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 131120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.m, i8 0, i64 131072, i1 false)
  br label %clusterNodeRemoveSlave.exit

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65   ; 4 uses
  %.not10 = icmp eq ptr %i.o, null
  br i1 %.not10, label %clusterNodeRemoveSlave.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2168 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !47   ; 5 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i, label %clusterNodeRemoveSlave.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 2176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.q to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.w = icmp eq ptr %i.v, %i.a
  br i1 %i.w, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.x = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.y = add nuw nsw i32 %i.x, 1                  ; 2 uses
  %i.z = icmp slt i32 %i.y, %i.q
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.ab = xor i32 %i.x, -1
  %i.ac = add nsw i32 %i.q, %i.ab
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ad
  %i.af = sext i32 %i.ac to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false)
  %.pre.i = load i32, ptr %i.p, align 8, !tbaa !47
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = phi i32 [ %.pre.i, %bb.k ], [ %i.q, %bb.j ]
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.p, align 8, !tbaa !47
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.m, label %clusterNodeRemoveSlave.exit

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !89
  %i.am = and i32 %i.al, -257
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !89
  br label %clusterNodeRemoveSlave.exit

bb.n:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %clusterNodeRemoveSlave.exit, label %bb.i, !llvm.loop !157

clusterNodeRemoveSlave.exit:                      ; preds = %bb.n, %bb.m, %bb.l, %bb.h, %bb.g, %bb.f
  %i.an = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2184
  store ptr %0, ptr %i.ao, align 8, !tbaa !65
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @updateShardId(ptr noundef %i.an, ptr noundef nonnull %i.ap)
  %i.aq = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2168 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !47 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !53 ; 2 uses
  br i1 %i.at, label %.lr.ph.i11, label %._crit_edge.i

.lr.ph.i11:                                       ; preds = %clusterNodeRemoveSlave.exit
  %wide.trip.count.i12 = zext nneg i32 %i.as to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i13, 1 ; 2 uses
  %exitcond.not.i15 = icmp eq i64 %indvars.iv.next.i14, %wide.trip.count.i12
  br i1 %exitcond.not.i15, label %._crit_edge.i, label %bb.p, !llvm.loop !92

bb.p:                                             ; preds = %bb.o, %.lr.ph.i11
  %indvars.iv.i13 = phi i64 [ 0, %.lr.ph.i11 ], [ %indvars.iv.next.i14, %bb.o ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i13
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !54
  %i.ay = icmp eq ptr %i.ax, %i.aq
  br i1 %i.ay, label %clusterNodeAddSlave.exit, label %bb.o

._crit_edge.i:                                    ; preds = %bb.o, %clusterNodeRemoveSlave.exit
  %i.az = add nsw i32 %i.as, 1
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 3
  %i.bc = tail call ptr @zrealloc(ptr noundef %i.av, i64 noundef %i.bb) #36 ; 2 uses
  store ptr %i.bc, ptr %i.au, align 8, !tbaa !53
  %i.bd = load i32, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.be
  store ptr %i.aq, ptr %i.bf, align 8, !tbaa !54
  %i.bg = add nsw i32 %i.bd, 1
  store i32 %i.bg, ptr %i.ar, align 8, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !89
  %i.bj = or i32 %i.bi, 256
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !89
  br label %clusterNodeAddSlave.exit

clusterNodeAddSlave.exit:                         ; preds = %bb.p, %._crit_edge.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8492), align 4, !tbaa !218
  %.not.i = icmp eq i32 %i.bl, 0
  %.in.v.i = select i1 %.not.i, i64 2328, i64 2332
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.bm = load i32, ptr %.in.i, align 4, !tbaa !9
  tail call void @replicationSetMaster(ptr noundef nonnull %i.bk, i32 noundef %i.bm) #30
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8144), align 8, !tbaa !160
  %i.bo = tail call i64 @kvstoreSize(ptr noundef %i.bn) #30
  %.not.i16 = icmp eq i64 %i.bo, 0
  br i1 %.not.i16, label %removeAllNotOwnedShardChannelSubscriptions.exit, label %bb.q

bb.q:                                             ; preds = %clusterNodeAddSlave.exit
  %i.bp = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !89
  %i.bs = and i32 %i.br, 1
  %.not4.i = icmp eq i32 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 2184
  %.in.i17 = select i1 %.not4.i, ptr %i.bt, ptr @myself
  %i.bu = load ptr, ptr %.in.i17, align 8, !tbaa !54
  br label %bb.r

bb.r:                                             ; preds = %removeChannelsInSlot.exit.i, %bb.q
  %indvars.iv.i18 = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i19, %removeChannelsInSlot.exit.i ] ; 3 uses
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 262192
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i18
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !54
  %.not5.i = icmp eq ptr %i.by, %i.bu
  br i1 %.not5.i, label %removeChannelsInSlot.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8144), align 8, !tbaa !160
  %i.ca = trunc nuw nsw i64 %indvars.iv.i18 to i32 ; 2 uses
  %i.cb = tail call i64 @kvstoreDictSize(ptr noundef %i.bz, i32 noundef %i.ca) #30
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %removeChannelsInSlot.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @pubsubShardUnsubscribeAllChannelsInSlot(i32 noundef %i.ca) #30
  br label %removeChannelsInSlot.exit.i

removeChannelsInSlot.exit.i:                      ; preds = %bb.t, %bb.s, %bb.r
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1 ; 2 uses
  %exitcond.not.i20 = icmp eq i64 %indvars.iv.next.i19, 16384
  br i1 %exitcond.not.i20, label %removeAllNotOwnedShardChannelSubscriptions.exit, label %bb.r, !llvm.loop !223

removeAllNotOwnedShardChannelSubscriptions.exit:  ; preds = %removeChannelsInSlot.exit.i, %clusterNodeAddSlave.exit
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 393352
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !131
  %.not.i21 = icmp eq ptr %i.cg, null
  br i1 %.not.i21, label %resetManualFailover.exit, label %bb.u

bb.u:                                             ; preds = %removeAllNotOwnedShardChannelSubscriptions.exit
  tail call void @unpauseActions(i32 noundef 2) #30
  %.pre.i22 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %resetManualFailover.exit

resetManualFailover.exit:                         ; preds = %removeAllNotOwnedShardChannelSubscriptions.exit, %bb.u
  %i.ch = phi ptr [ %.pre.i22, %bb.u ], [ %i.ce, %removeAllNotOwnedShardChannelSubscriptions.exit ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 393344
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 393368
  store i32 0, ptr %i.cj, align 8, !tbaa !129
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 393360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.ck, align 8, !tbaa !130
  br i1 %.not9, label %bb.w, label %bb.v

bb.v:                                             ; preds = %resetManualFailover.exit
  %i.cl = tail call i32 @clusterAsmCancel(ptr noundef null, ptr noundef nonnull @.str.158) #30 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %resetManualFailover.exit
  ret void
}

declare i32 @clusterDelKeysInSlot(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 8, 1) i32 @getAlignedPingExtSize(i32 noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = add i32 %0, 7
  %i.b = and i32 %i.a, -8
  %i.c = add i32 %i.b, 8
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 8, 1) i32 @getHostnamePingExtSize() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @myself, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82   ; 9 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %.val.i = load i8, ptr %i.d, align 1, !tbaa !58 ; 3 uses
  %i.e = and i8 %.val.i, 7                        ; 2 uses
  switch i8 %i.e, label %sdslen.exit.thread [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i8 %.val.i, 3
  %i.g = zext nneg i8 %i.f to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !58
  %i.j = zext i8 %i.i to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -5
  %i.l = load i16, ptr %i.k, align 1, !tbaa !59
  %i.m = zext i16 %i.l to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -9
  %i.o = load i32, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i32 %i.o to i64
end_hunk_2
begin_hunk_3_@clusterGetSlaveRank:bb.a
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54  ; 3 uses
  %.not17.1 = icmp eq ptr %i.aa, %i.n
  br i1 %.not17.1, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !89
  %i.ad = and i32 %i.ac, 512
  %.not18.1 = icmp eq i32 %i.ad, 0
  br i1 %.not18.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 2256
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !241
  %i.ag = icmp sgt i64 %i.af, %i.h
  %i.ah = zext i1 %i.ag to i32
  %spec.select.1 = add nsw i32 %.1, %i.ah
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.1.1 = phi i32 [ %.1, %bb.i ], [ %.1, %bb.h ], [ %spec.select.1, %bb.j ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !277

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.020.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod25 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !54 ; 3 uses
  %.not17.epil = icmp eq ptr %i.aj, %i.n
  br i1 %.not17.epil, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !89
  %i.am = and i32 %i.al, 512
  %.not18.epil = icmp eq i32 %i.am, 0
  br i1 %.not18.epil, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 2256
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !241
  %i.ap = icmp sgt i64 %i.ao, %i.h
  %i.aq = zext i1 %i.ap to i32
  %spec.select.epil = add nsw i32 %.020.epil.init, %i.aq
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.m, %bb.l, %.epil.preheader, %bb.d, %bb.c
  %.014 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ], [ %.020.epil.init, %bb.l ], [ %.020.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.m ]
  ret i32 %.014
}

declare i64 @replicationGetSlaveOffset() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clusterLogCantFailover(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8168), align 8, !tbaa !154
  %i.b = add nsw i64 %i.a, 5000
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 393336
  %i.e = load i32, ptr %i.d, align 8, !tbaa !127
  %i.f = icmp eq i32 %0, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @time(ptr noundef null) #30
  %i.h = load i64, ptr @clusterLogCantFailover.lastlog_time, align 8, !tbaa !61
  %i.i = sub nsw i64 %i.g, %i.h
  %i.j = icmp slt i64 %i.i, 10
  br i1 %i.j, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 393336
  store i32 %0, ptr %i.l, align 8, !tbaa !127
  %i.m = load ptr, ptr @myself, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !89
  %i.r = and i32 %i.q, 8
  %.not12 = icmp eq i32 %i.r, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call i64 @mstime() #30
  %i.t = load ptr, ptr @myself, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2184
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2224
  %i.x = load i64, ptr %i.w, align 8, !tbaa !90
  %i.y = sub nsw i64 %i.s, %i.x
  %i.z = icmp slt i64 %i.y, %i.b
  br i1 %i.z, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.aa = icmp ult i32 %switch.tableidx, 4
  br i1 %i.aa, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.f
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.clusterLogCantFailover, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.139, %bb.f ]
  %i.ac = tail call i64 @time(ptr noundef null) #30
  store i64 %i.ac, ptr @clusterLogCantFailover.lastlog_time, align 8, !tbaa !61
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.ae = icmp sgt i32 %i.ad, 2
  br i1 %i.ae, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.140, ptr noundef nonnull %.0) #30
  %.pre13 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.af = icmp sgt i32 %.pre13, 2
  %i.ag = add i32 %0, -5
  %or.cond = icmp ult i32 %i.ag, -2
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.af
  br i1 %or.cond3, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !121
  %i.ak = sdiv i32 %i.aj, 2
  %i.al = add nsw i32 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 393312
  %i.an = load i32, ptr %i.am, align 8, !tbaa !124
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.141, i32 noundef %i.al, i32 noundef %i.an) #30
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.h, %bb.i, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterFailoverReplaceYourMaster() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @myself, align 8, !tbaa !54 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2184 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !89
  %i.f = trunc i32 %i.e to i1
  %i.g = icmp eq ptr %i.c, null
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2168 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !47   ; 5 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i, label %clusterSetNodeAsMaster.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53   ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.q = add nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = icmp slt i32 %i.q, %i.i
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.t = xor i32 %i.p, -1
  %i.u = add nsw i32 %i.i, %i.t
  %i.v = zext nneg i32 %i.q to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.v
  %i.x = sext i32 %i.u to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.w, i64 %i.y, i1 false)
  %.pre.i.i = load i32, ptr %i.h, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi i32 [ %.pre.i.i, %bb.e ], [ %i.i, %bb.d ]
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.h, align 8, !tbaa !47
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %clusterSetNodeAsMaster.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !89
  %i.ae = and i32 %i.ad, -257
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !89
  br label %clusterSetNodeAsMaster.exit

bb.h:                                             ; preds = %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %clusterSetNodeAsMaster.exit, label %bb.c, !llvm.loop !157

clusterSetNodeAsMaster.exit:                      ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %i.af = load ptr, ptr @myself, align 8, !tbaa !54
  %.not11.i = icmp eq ptr %i.a, %i.af
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !89 ; 2 uses
  %i.ag = or i32 %.pre.i, 256
  %spec.select.i = select i1 %.not11.i, i32 %.pre.i, i32 %i.ag
  %i.ah = and i32 %spec.select.i, -4
  %i.ai = or disjoint i32 %i.ah, 1
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !89
  store ptr null, ptr %i.b, align 8, !tbaa !65
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 393384 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !67
  %i.am = or i32 %i.al, 6
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !67
  tail call void @replicationUnsetMaster() #30
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  br label %bb.i

bb.i:                                             ; preds = %clusterSetNodeAsMaster.exit, %clusterAddSlot.exit
  %indvars.iv = phi i64 [ 0, %clusterSetNodeAsMaster.exit ], [ %indvars.iv.next, %clusterAddSlot.exit ] ; 5 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %.zext = lshr i64 %indvars.iv, 3
  %i.ap = and i64 %.zext, 536870911               ; 2 uses
  %i.aq = and i32 %i.ao, 7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !58
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 1, %i.aq                ; 2 uses
  %i.av = and i32 %i.au, %i.at
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %clusterAddSlot.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = tail call i32 @clusterDelSlot(i32 noundef %i.ao) ; 0 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 262192
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !54
  %.not.i8 = icmp eq ptr %i.ba, null
  br i1 %.not.i8, label %bb.k, label %clusterAddSlot.exit

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %i.bc = tail call i32 @clusterNodeSetSlotBit(ptr noundef %i.bb, i32 noundef %i.ao) ; 0 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 262192
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  store ptr %i.bb, ptr %i.bf, align 8, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 393584
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ap ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !58
  %i.bj = trunc nuw i32 %i.au to i8
  %i.bk = xor i8 %i.bj, -1
  %i.bl = and i8 %i.bi, %i.bk
  store i8 %i.bl, ptr %i.bh, align 1, !tbaa !58
  tail call void @clusterSlotStatReset(i32 noundef %i.ao) #30
  br label %clusterAddSlot.exit

clusterAddSlot.exit:                              ; preds = %bb.k, %bb.j, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16384
  br i1 %exitcond.not, label %bb.l, label %bb.i, !llvm.loop !278

bb.l:                                             ; preds = %clusterAddSlot.exit
  tail call void @clusterUpdateState()
  %i.bm = tail call i32 @clusterSaveConfig(i32 noundef 1)
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %bb.m, label %clusterSaveConfigOrDie.exit

bb.m:                                             ; preds = %bb.l
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.bp = icmp sgt i32 %i.bo, 3
  br i1 %i.bp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.38) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @exit(i32 noundef 1) #34
  unreachable

clusterSaveConfigOrDie.exit:                      ; preds = %bb.l
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 393384 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !67
  %i.bt = or i32 %i.bs, 32
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !67
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 393352
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !131
  %.not.i9 = icmp eq ptr %i.bv, null
  br i1 %.not.i9, label %resetManualFailover.exit, label %bb.p

bb.p:                                             ; preds = %clusterSaveConfigOrDie.exit
  tail call void @unpauseActions(i32 noundef 2) #30
  %.pre.i10 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %resetManualFailover.exit

resetManualFailover.exit:                         ; preds = %clusterSaveConfigOrDie.exit, %bb.p
  %i.bw = phi ptr [ %.pre.i10, %bb.p ], [ %i.bq, %clusterSaveConfigOrDie.exit ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 393344
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 393368
  store i32 0, ptr %i.by, align 8, !tbaa !129
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 393360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.bz, align 8, !tbaa !130
  tail call void @asmFinalizeMasterTask() #30
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %resetManualFailover.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @clusterNodeCoversSlot(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = sdiv i32 %1, 8
  %i.c = sext i32 %i.b to i64
  %i.d = and i32 %1, 7
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.c
  %i.f = load i8, ptr %i.e, align 1, !tbaa !58
  %i.g = zext i8 %i.f to i32
  %i.h = lshr i32 %i.g, %i.d
  %i.i = and i32 %i.h, 1
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterUpdateState() local_unnamed_addr #3 {
bb.a:
  %0 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 393384 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !67
  %i.d = and i32 %i.c, -3
  store i32 %i.d, ptr %i.b, align 8, !tbaa !67
  %i.e = load i64, ptr @clusterUpdateState.first_call_time, align 8, !tbaa !232
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @mstime() #30
  store i64 %i.g, ptr @clusterUpdateState.first_call_time, align 8, !tbaa !232
  %.pre.pre42.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre.pre42 = phi ptr [ %.pre.pre42.pre, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr @myself, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load i32, ptr %i.i, align 8, !tbaa !89
  %i.k = and i32 %i.j, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.pre.pre42, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !120
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i64 @mstime() #30
  %i.p = load i64, ptr @clusterUpdateState.first_call_time, align 8, !tbaa !232
  %i.q = sub nsw i64 %i.o, %i.p
  %i.r = icmp slt i64 %i.q, 2000
  br i1 %i.r, label %bb.v, label %._crit_edge41

._crit_edge41:                                    ; preds = %bb.e
  %.pre.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge41, %bb.d, %bb.c
  %.pre = phi ptr [ %.pre.pre, %._crit_edge41 ], [ %.pre.pre42, %bb.d ], [ %.pre.pre42, %bb.c ] ; 3 uses
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8244), align 4, !tbaa !279
end_hunk_3
