inline.NumInlined: 302
inline.NumDeleted: 51
begin_hunk_0_@readQueryFromClient:bb.a
  ]

bb.aw:                                            ; preds = %bb.av
  %i.fa = lshr i8 %.val.i131, 3
  %i.fb = zext nneg i8 %i.fa to i64
  br label %sdslen.exit133

bb.ax:                                            ; preds = %bb.av
  %i.fc = getelementptr inbounds i8, ptr %i.ex, i64 -3
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !17
  %i.fe = zext i8 %i.fd to i64
  br label %sdslen.exit133

bb.ay:                                            ; preds = %bb.av
  %i.ff = getelementptr inbounds i8, ptr %i.ex, i64 -5
  %i.fg = load i16, ptr %i.ff, align 1, !tbaa !18
  %i.fh = zext i16 %i.fg to i64
  br label %sdslen.exit133

bb.az:                                            ; preds = %bb.av
  %i.fi = getelementptr inbounds i8, ptr %i.ex, i64 -9
  %i.fj = load i32, ptr %i.fi, align 1, !tbaa !9
  %i.fk = zext i32 %i.fj to i64
  br label %sdslen.exit133

bb.ba:                                            ; preds = %bb.av
  %i.fl = getelementptr inbounds i8, ptr %i.ex, i64 -17
  %i.fm = load i64, ptr %i.fl, align 1, !tbaa !20
  br label %sdslen.exit133

sdslen.exit133:                                   ; preds = %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba
  %.0.i132 = phi i64 [ %i.fm, %bb.ba ], [ %i.fb, %bb.aw ], [ %i.fe, %bb.ax ], [ %i.fh, %bb.ay ], [ %i.fk, %bb.az ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !127
  %i.fp = icmp ult i64 %i.fo, %.0.i132
  br i1 %i.fp, label %bb.bb, label %sdslen.exit133.thread

bb.bb:                                            ; preds = %sdslen.exit133
  store i64 %.0.i132, ptr %i.fn, align 8, !tbaa !127
  br label %sdslen.exit133.thread

sdslen.exit133.thread:                            ; preds = %bb.av, %bb.bb, %sdslen.exit133
  %i.fq = load i64, ptr %i.cs, align 8, !tbaa !99
  %i.fr = and i64 %i.fq, 2
  %.not112 = icmp eq i64 %i.fr, 0
  br i1 %.not112, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %sdslen.exit133.thread
  %i.fs = load i8, ptr %i.j, align 1, !tbaa !84
  %i.ft = icmp eq i8 %i.fs, 0
  %spec.select167 = select i1 %i.ft, i64 312, i64 320
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %sdslen.exit133.thread
  %.sink163 = phi i64 [ 312, %sdslen.exit133.thread ], [ %spec.select167, %bb.bc ]
  %i.fu = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !90
  %i.fv = getelementptr inbounds nuw i8, ptr %.val, i64 %.sink163
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !20
  %i.fw = load i64, ptr %i.cs, align 8, !tbaa !99
  %i.fx = and i64 %i.fw, 2
  %.not113 = icmp eq i64 %i.fx, 0
  br i1 %.not113, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fy = load i8, ptr %i.j, align 1, !tbaa !84
  %i.fz = icmp eq i8 %i.fy, 0
  %. = select i1 %i.fz, i64 392, i64 400
  %i.ga = getelementptr inbounds nuw i8, ptr %.val, i64 %. ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !131
  %i.gc = add nsw i64 %i.gb, %i.ew
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !131
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.sink = phi ptr [ getelementptr inbounds nuw (i8, ptr @server, i64 2960), %bb.be ], [ getelementptr inbounds nuw (i8, ptr @server, i64 2944), %bb.bd ]
  %i.gd = atomicrmw add ptr %.sink, i64 %i.ew monotonic, align 8 ; 0 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.val, i64 1000 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !132
  %i.gg = add i64 %i.gf, %i.ew
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !132
  %i.gh = load i64, ptr %i.cs, align 8, !tbaa !99
  %i.gi = and i64 %i.gh, 2
  %.not114 = icmp eq i64 %i.gi, 0
  br i1 %.not114, label %bb.bg, label %authRequired.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.gj = getelementptr inbounds nuw i8, ptr %.val, i64 576
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !133 ; 2 uses
  %i.gl = load ptr, ptr %i.cc, align 8, !tbaa !123 ; 9 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 -1
  %.val.i134 = load i8, ptr %i.gm, align 1, !tbaa !17 ; 3 uses
  %i.gn = and i8 %.val.i134, 7                    ; 2 uses
  switch i8 %i.gn, label %sdslen.exit136 [
    i8 0, label %bb.bh
    i8 1, label %bb.bi
    i8 2, label %bb.bj
    i8 3, label %bb.bk
    i8 4, label %bb.bl
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.go = lshr i8 %.val.i134, 3
  %i.gp = zext nneg i8 %i.go to i64
  br label %sdslen.exit136

bb.bi:                                            ; preds = %bb.bg
  %i.gq = getelementptr inbounds i8, ptr %i.gl, i64 -3
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !17
  %i.gs = zext i8 %i.gr to i64
  br label %sdslen.exit136

bb.bj:                                            ; preds = %bb.bg
  %i.gt = getelementptr inbounds i8, ptr %i.gl, i64 -5
  %i.gu = load i16, ptr %i.gt, align 1, !tbaa !18
  %i.gv = zext i16 %i.gu to i64
  br label %sdslen.exit136

bb.bk:                                            ; preds = %bb.bg
  %i.gw = getelementptr inbounds i8, ptr %i.gl, i64 -9
  %i.gx = load i32, ptr %i.gw, align 1, !tbaa !9
  %i.gy = zext i32 %i.gx to i64
  br label %sdslen.exit136

bb.bl:                                            ; preds = %bb.bg
  %i.gz = getelementptr inbounds i8, ptr %i.gl, i64 -17
  %i.ha = load i64, ptr %i.gz, align 1, !tbaa !20
  br label %sdslen.exit136

sdslen.exit136:                                   ; preds = %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl
  %.0.i135 = phi i64 [ %i.ha, %bb.bl ], [ %i.gp, %bb.bh ], [ %i.gs, %bb.bi ], [ %i.gv, %bb.bj ], [ %i.gy, %bb.bk ], [ 0, %bb.bg ]
  %i.hb = add i64 %.0.i135, %i.gk
  %i.hc = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6504), align 8, !tbaa !134
  %i.hd = icmp ugt i64 %i.hb, %i.hc
  br i1 %i.hd, label %bb.bt, label %bb.bm

bb.bm:                                            ; preds = %sdslen.exit136
  switch i8 %i.gn, label %sdslen.exit139 [
    i8 0, label %bb.bn
    i8 1, label %bb.bo
    i8 2, label %bb.bp
    i8 3, label %bb.bq
    i8 4, label %bb.br
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.he = lshr i8 %.val.i134, 3
  %i.hf = zext nneg i8 %i.he to i64
  br label %sdslen.exit139

bb.bo:                                            ; preds = %bb.bm
  %i.hg = getelementptr inbounds i8, ptr %i.gl, i64 -3
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !17
  %i.hi = zext i8 %i.hh to i64
  br label %sdslen.exit139

bb.bp:                                            ; preds = %bb.bm
  %i.hj = getelementptr inbounds i8, ptr %i.gl, i64 -5
  %i.hk = load i16, ptr %i.hj, align 1, !tbaa !18
  %i.hl = zext i16 %i.hk to i64
  br label %sdslen.exit139

bb.bq:                                            ; preds = %bb.bm
  %i.hm = getelementptr inbounds i8, ptr %i.gl, i64 -9
  %i.hn = load i32, ptr %i.hm, align 1, !tbaa !9
  %i.ho = zext i32 %i.hn to i64
  br label %sdslen.exit139

bb.br:                                            ; preds = %bb.bm
  %i.hp = getelementptr inbounds i8, ptr %i.gl, i64 -17
  %i.hq = load i64, ptr %i.hp, align 1, !tbaa !20
  br label %sdslen.exit139

sdslen.exit139:                                   ; preds = %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br
  %.0.i138 = phi i64 [ %i.hq, %bb.br ], [ %i.hf, %bb.bn ], [ %i.hi, %bb.bo ], [ %i.hl, %bb.bp ], [ %i.ho, %bb.bq ], [ 0, %bb.bm ]
  %i.hr = add i64 %.0.i138, %i.gk
  %i.hs = icmp ugt i64 %i.hr, 1048576
  br i1 %i.hs, label %bb.bs, label %authRequired.exit.thread

bb.bs:                                            ; preds = %sdslen.exit139
  %i.ht = load ptr, ptr @DefaultUser, align 8, !tbaa !73
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load atomic i32, ptr %i.hu monotonic, align 8
  %i.hw = and i32 %i.hv, 6
  %or.cond.i = icmp eq i32 %i.hw, 4
  br i1 %or.cond.i, label %authRequired.exit.thread, label %authRequired.exit

authRequired.exit:                                ; preds = %bb.bs
  %i.hx = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !74
  %.not5.i.not = icmp eq i32 %i.hy, 0
  br i1 %.not5.i.not, label %bb.bt, label %authRequired.exit.thread

bb.bt:                                            ; preds = %authRequired.exit, %sdslen.exit136
  store i8 13, ptr %i.i, align 1, !tbaa !101
  tail call void @freeClientAsync(ptr noundef nonnull %.val)
  %i.hz = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @server, i64 5160), i64 1 monotonic, align 8 ; 0 uses
  br label %bb.bu

authRequired.exit.thread:                         ; preds = %bb.bs, %authRequired.exit, %sdslen.exit139, %bb.bf
  %i.ia = tail call i32 @processInputBuffer(ptr noundef nonnull %.val)
  %i.ib = icmp eq i32 %i.ia, -1
  br i1 %i.ib, label %beforeNextClient.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.as, %bb.at, %bb.au, %bb.bt, %authRequired.exit.thread
  %i.ic = load i8, ptr %i.i, align 1, !tbaa !101
  switch i8 %i.ic, label %bb.bv [
    i8 0, label %isClientReadErrorFatal.exit.thread
    i8 14, label %isClientReadErrorFatal.exit.thread
    i8 15, label %isClientReadErrorFatal.exit.thread
    i8 16, label %isClientReadErrorFatal.exit.thread
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.id = load i8, ptr %i.j, align 1, !tbaa !84
  %i.ie = icmp eq i8 %i.id, 0
  br i1 %i.ie, label %bb.bw, label %isClientReadErrorFatal.exit.thread

bb.bw:                                            ; preds = %bb.bv
  tail call void @handleClientReadError(ptr noundef nonnull %.val)
  br label %isClientReadErrorFatal.exit.thread

isClientReadErrorFatal.exit.thread:               ; preds = %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bw, %bb.bv
  %i.if = load i8, ptr %i.b, align 2, !tbaa !100
  %i.ig = and i8 %i.if, 8
  %.not118 = icmp eq i8 %i.ig, 0
  br i1 %.not118, label %.critedge, label %bb.bx

bb.bx:                                            ; preds = %isClientReadErrorFatal.exit.thread
  %i.ih = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !124
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %bb.bz, label %bb.by, !prof !13

bb.by:                                            ; preds = %bb.bx
  tail call void @_serverAssert(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.1, i32 noundef 3859) #29
  tail call void @abort() #30
  unreachable

bb.bz:                                            ; preds = %bb.bx
  tail call fastcc void @resetReusableQueryBuf(ptr noundef nonnull %.val)
  br label %.critedge

.critedge:                                        ; preds = %isClientReadErrorFatal.exit.thread, %bb.bz
  %i.ik = load i8, ptr %i.j, align 1, !tbaa !84
  %.not6.not.i = icmp eq i8 %i.ik, 0
  br i1 %.not6.not.i, label %bb.ca, label %beforeNextClient.exit

bb.ca:                                            ; preds = %.critedge
  %i.il = load i64, ptr %i.cs, align 8, !tbaa !99
  %i.im = and i64 %i.il, 1024
  %.not7.i = icmp eq i64 %i.im, 0
  br i1 %.not7.i, label %beforeNextClient.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @freeClient(ptr noundef nonnull %.val)
  br label %beforeNextClient.exit

beforeNextClient.exit:                            ; preds = %authRequired.exit.thread, %bb.cb, %bb.ca, %.critedge, %bb.b
  ret void
}

declare ptr @zmalloc_usable(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @selectDb(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @listCreate() local_unnamed_addr #2

declare void @initClientBlockingState(ptr noundef) local_unnamed_addr #2

declare ptr @dictCreate(ptr noundef) local_unnamed_addr #2

declare void @listInitNode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @initClientMultiState(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @installClientWriteHandler(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6668), align 4, !tbaa !135
  %i.b = icmp eq i32 %i.a, 1
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6672), align 8
  %i.d = icmp eq i32 %i.c, 1
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  %spec.store.select = zext i1 %or.cond to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.f, ptr noundef nonnull @sendReplyToClient, i32 noundef range(i32 0, 2) %spec.store.select) #29, !inline_history !137
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @freeClientAsync(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sendReplyToClient(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.b = tail call i32 @writeToClient(ptr noundef %.val, i32 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @freeClientAsync(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.b = load i8, ptr %i.a, align 1, !tbaa !84
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @pthread_self() #32
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8), align 8, !tbaa !138
  %.not18 = icmp eq i64 %i.c, %i.d                ; 2 uses
  br i1 %.not18, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !83
  %i.g = zext i8 %i.f to i32
  tail call void @pauseIOThread(i32 noundef %i.g) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2, !tbaa !100   ; 2 uses
  %i.j = and i8 %i.i, 16
  %.not17 = icmp eq i8 %i.j, 0
  br i1 %.not17, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = or disjoint i8 %i.i, 16
  store i8 %i.k, ptr %i.h, align 2, !tbaa !100
  tail call void @enqueuePendingClientsToMainThread(ptr noundef nonnull %0, i32 noundef 1) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not18, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !83
  %i.n = zext i8 %i.m to i32
  tail call void @resumeIOThread(i32 noundef %i.n) #29
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !99   ; 3 uses
  %i.q = and i64 %i.p, 1280
  %or.cond = icmp eq i64 %i.q, 0
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.r = or disjoint i64 %i.p, 1024
  store i64 %i.r, ptr %i.o, align 8, !tbaa !99
  %i.s = and i64 %i.p, 1
  %.not15 = icmp eq i64 %i.s, 0
  br i1 %.not15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @freeReplicaReferencedReplBuffer(ptr noundef nonnull %0) #29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1448), align 8, !tbaa !139
  %i.u = tail call ptr @listAddNodeTail(ptr noundef %i.t, ptr noundef nonnull %0) #29 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @putClientInPendingWriteQueue(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.c = and i64 %i.b, 2097152
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.e = load i32, ptr %i.d, align 4, !tbaa !111
  switch i32 %i.e, label %bb.e [
    i32 0, label %bb.d
    i32 12, label %bb.d
    i32 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
end_hunk_0
begin_hunk_1_@clientSetinfoCommand:bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local void @resetCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.c = and i64 %i.b, 4
  %.not = icmp eq i64 %i.c, 0
  %.v = select i1 %.not, i64 134217731, i64 134217730
  %i.d = and i64 %.v, %i.b
  %.not6 = icmp eq i64 %i.d, 0
  br i1 %.not6, label %bb.b, label %addReplyError.exit

addReplyError.exit:                               ; preds = %bb.a
  tail call void @addReplyProto(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef 5)
  tail call void @addReplyProto(ptr noundef nonnull %0, ptr noundef nonnull readonly @.str.104, i64 noundef 40)
  tail call void @addReplyProto(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef 2)
  tail call void @afterErrorReply(ptr noundef nonnull %0, ptr noundef nonnull @.str.104, i64 noundef 40, i32 noundef 0)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @clearClientConnectionState(ptr noundef nonnull %0)
  tail call void @addReplyProto(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, i64 noundef 1)
  tail call void @addReplyProto(ptr noundef nonnull %0, ptr noundef nonnull readonly @.str.105, i64 noundef 5)
  tail call void @addReplyProto(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef 2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %addReplyError.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @quitCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @shared, align 8, !tbaa !336
  tail call void @addReply(ptr noundef %0, ptr noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !99
  %i.d = or i64 %i.c, 64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !99
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clientCommand(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 8 uses
  %2 = alloca %struct.raxIterator, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !275  ; 12 uses
  %i.k = icmp ne i32 %i.j, 2                      ; 7 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !186 ; 15 uses
  %.phi.trans.insert828 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre829 = load ptr, ptr %.phi.trans.insert828, align 8, !tbaa !173
  %.phi.trans.insert830 = getelementptr inbounds nuw i8, ptr %.pre829, i64 8
  %.pre831 = load ptr, ptr %.phi.trans.insert830, align 8, !tbaa !14 ; 18 uses
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @strcasecmp(ptr noundef %.pre831, ptr noundef nonnull @.str.106) #33
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @addExtendedReplyHelp(ptr noundef nonnull %0, ptr noundef nonnull readonly @__const.clientCommand.help, ptr noundef null)
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = tail call i32 @strcasecmp(ptr noundef %.pre831, ptr noundef nonnull @.str.161) #33
  %.not508 = icmp eq i32 %i.n, 0
  br i1 %.not508, label %.thread639, label %bb.e

.thread:                                          ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = tail call i32 @strcasecmp(ptr noundef %.pre831, ptr noundef nonnull @.str.161) #33
  %.not508862 = icmp eq i32 %i.p, 0
  br i1 %.not508862, label %.thread863, label %bb.e

.thread863:                                       ; preds = %.thread
  %i.q = load i64, ptr %0, align 8, !tbaa !71
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.q)
  br label %.critedge

bb.e:                                             ; preds = %.thread, %bb.d
  %i.r = phi ptr [ %i.o, %.thread ], [ %i.m, %bb.d ]
  %i.s = tail call i32 @strcasecmp(ptr noundef %.pre831, ptr noundef nonnull @.str.162) #33
  %.not509 = icmp ne i32 %i.s, 0
  %brmerge = or i1 %i.k, %.not509
  br i1 %brmerge, label %.thread639, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @sdsempty() #29
  %i.u = tail call ptr @catClientInfoString(ptr noundef %i.t, ptr noundef nonnull %0)
  %i.v = tail call ptr @sdscatlen(ptr noundef %i.u, ptr noundef nonnull @.str.98, i64 noundef 1) #29 ; 7 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %.val.i = load i8, ptr %i.w, align 1, !tbaa !17 ; 2 uses
  %i.x = and i8 %.val.i, 7
  switch i8 %i.x, label %sdslen.exit [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = lshr i8 %.val.i, 3
  %i.z = zext nneg i8 %i.y to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = zext i8 %i.ab to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 -5
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !18
  %i.af = zext i16 %i.ae to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 -9
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !9
  %i.ai = zext i32 %i.ah to i64
  br label %sdslen.exit

bb.k:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds i8, ptr %i.v, i64 -17
  %i.ak = load i64, ptr %i.aj, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi i64 [ %i.ak, %bb.k ], [ %i.z, %bb.g ], [ %i.ac, %bb.h ], [ %i.af, %bb.i ], [ %i.ai, %bb.j ], [ 0, %bb.f ]
  tail call void @addReplyVerbatim(ptr noundef nonnull %0, ptr noundef nonnull %i.v, i64 noundef %.0.i, ptr noundef nonnull @.str.163)
  tail call void @sdsfree(ptr noundef nonnull %i.v) #29
  br label %.critedge

.thread639:                                       ; preds = %bb.d, %bb.e
  %i.al = phi ptr [ %i.r, %bb.e ], [ %i.m, %bb.d ] ; 6 uses
  %i.am = tail call i32 @strcasecmp(ptr noundef %.pre831, ptr noundef nonnull @.str.164) #33
  %.not510 = icmp eq i32 %i.am, 0
  br i1 %.not510, label %bb.l, label %bb.aj

bb.l:                                             ; preds = %.thread639
  %i.an = icmp eq i32 %i.j, 4
  br i1 %i.an, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !173
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !14 ; 2 uses
  %i.as = tail call i32 @strcasecmp(ptr noundef %i.ar, ptr noundef nonnull @.str.165) #33
  %.not511 = icmp eq i32 %i.as, 0
  br i1 %.not511, label %bb.n, label %.thread641

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !173
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !14 ; 6 uses
  %i.ax = tail call i32 @strcasecmp(ptr noundef readonly %i.aw, ptr noundef nonnull @.str.248) #33
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %.thread649, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = tail call i32 @strcasecmp(ptr noundef readonly %i.aw, ptr noundef nonnull @.str.249) #33
  %.not5.i = icmp eq i32 %i.ay, 0
  br i1 %.not5.i, label %.thread649, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = tail call i32 @strcasecmp(ptr noundef readonly %i.aw, ptr noundef nonnull @.str.13) #33
  %.not6.i = icmp eq i32 %i.az, 0
  br i1 %.not6.i, label %.thread649, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = tail call i32 @strcasecmp(ptr noundef readonly %i.aw, ptr noundef nonnull @.str.250) #33
  %.not7.i = icmp eq i32 %i.ba, 0
  br i1 %.not7.i, label %.thread649, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = tail call i32 @strcasecmp(ptr noundef readonly %i.aw, ptr noundef nonnull @.str.12) #33
  %.not8.i = icmp eq i32 %i.bb, 0
  br i1 %.not8.i, label %.thread649, label %getClientTypeByName.exit

getClientTypeByName.exit:                         ; preds = %bb.r
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.166, ptr noundef %i.aw)
  br label %.critedge

bb.s:                                             ; preds = %bb.l
  %i.bc = icmp sgt i32 %i.j, 3
  br i1 %i.bc, label %..thread641_crit_edge, label %bb.x

..thread641_crit_edge:                            ; preds = %bb.s
  %.phi.trans.insert837 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre838.a = load ptr, ptr %.phi.trans.insert837, align 8, !tbaa !173
  %.phi.trans.insert839 = getelementptr inbounds nuw i8, ptr %.pre838.a, i64 8
  %.pre840 = load ptr, ptr %.phi.trans.insert839, align 8, !tbaa !14
  br label %.thread641

.thread641:                                       ; preds = %..thread641_crit_edge, %bb.m
  %i.bd = phi ptr [ %.pre840, %..thread641_crit_edge ], [ %i.ar, %bb.m ]
  %i.be = tail call i32 @strcasecmp(ptr noundef %i.bd, ptr noundef nonnull @.str.161) #33
  %.not512 = icmp eq i32 %i.be, 0
  br i1 %.not512, label %bb.t, label %.thread647

bb.t:                                             ; preds = %.thread641
  %i.bf = tail call ptr @sdsempty() #29           ; 2 uses
  %i.bg = load i32, ptr %i.i, align 8, !tbaa !275
  %.not515810 = icmp sgt i32 %i.bg, 3
  br i1 %.not515810, label %.lr.ph814, label %._crit_edge815

.lr.ph814:                                        ; preds = %bb.t, %bb.w
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %bb.w ], [ 3, %bb.t ] ; 2 uses
  %.0411812 = phi ptr [ %.2413.ph, %bb.w ], [ %i.bf, %bb.t ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !186
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv824
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !173
  %i.bk = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.bj, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.167) #29
  %.not513 = icmp eq i32 %i.bk, 0
  br i1 %.not513, label %bb.u, label %.thread645

bb.u:                                             ; preds = %.lr.ph814
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bm = call i64 @llvm.bswap.i64(i64 %i.bl)
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store ptr null, ptr %i.b, align 8, !tbaa !73
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1536), align 8, !tbaa !72
  %i.bo = call i32 @raxFind(ptr noundef %i.bn, ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef nonnull %i.b) #29 ; 0 uses
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not514 = icmp eq ptr %i.bp, null
  br i1 %.not514, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = call ptr @catClientInfoString(ptr noundef %.0411812, ptr noundef nonnull %i.bp)
  %i.br = call ptr @sdscatlen(ptr noundef %i.bq, ptr noundef nonnull @.str.98, i64 noundef 1) #29
  br label %bb.w

.thread645:                                       ; preds = %.lr.ph814
  call void @sdsfree(ptr noundef %.0411812) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %.critedge

bb.w:                                             ; preds = %bb.u, %bb.v
  %.2413.ph = phi ptr [ %.0411812, %bb.u ], [ %i.br, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %indvars.iv.next825 = add nuw nsw i64 %indvars.iv824, 1 ; 2 uses
  %i.bs = load i32, ptr %i.i, align 8, !tbaa !275
  %i.bt = sext i32 %i.bs to i64
  %.not515 = icmp slt i64 %indvars.iv.next825, %i.bt
  br i1 %.not515, label %.lr.ph814, label %._crit_edge815, !llvm.loop !337

bb.x:                                             ; preds = %bb.s
  br i1 %i.k, label %.thread647, label %.thread649

.thread647:                                       ; preds = %.thread641, %bb.x
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !338 ; 2 uses
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef readonly %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !14 ; 6 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1
  %.val.i.i = load i8, ptr %i.bx, align 1, !tbaa !17 ; 2 uses
  %i.by = and i8 %.val.i.i, 7
  switch i8 %i.by, label %addReplyErrorObject.exit [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
  ]

bb.y:                                             ; preds = %.thread647
  %i.bz = lshr i8 %.val.i.i, 3
  %i.ca = zext nneg i8 %i.bz to i64
  br label %addReplyErrorObject.exit

bb.z:                                             ; preds = %.thread647
  %i.cb = getelementptr inbounds i8, ptr %i.bw, i64 -3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17
  %i.cd = zext i8 %i.cc to i64
  br label %addReplyErrorObject.exit

bb.aa:                                            ; preds = %.thread647
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 -5
  %i.cf = load i16, ptr %i.ce, align 1, !tbaa !18
  %i.cg = zext i16 %i.cf to i64
  br label %addReplyErrorObject.exit

bb.ab:                                            ; preds = %.thread647
  %i.ch = getelementptr inbounds i8, ptr %i.bw, i64 -9
  %i.ci = load i32, ptr %i.ch, align 1, !tbaa !9
  %i.cj = zext i32 %i.ci to i64
  br label %addReplyErrorObject.exit

bb.ac:                                            ; preds = %.thread647
  %i.ck = getelementptr inbounds i8, ptr %i.bw, i64 -17
  %i.cl = load i64, ptr %i.ck, align 1, !tbaa !20
  br label %addReplyErrorObject.exit

addReplyErrorObject.exit:                         ; preds = %.thread647, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.0.i.i = phi i64 [ %i.cl, %bb.ac ], [ %i.ca, %bb.y ], [ %i.cd, %bb.z ], [ %i.cg, %bb.aa ], [ %i.cj, %bb.ab ], [ 0, %.thread647 ]
  %i.cm = add i64 %.0.i.i, -2
  tail call void @afterErrorReply(ptr noundef nonnull %0, ptr noundef nonnull %i.bw, i64 noundef %i.cm, i32 noundef 0)
  br label %.critedge

._crit_edge815:                                   ; preds = %bb.w, %bb.t
  %.0411.lcssa = phi ptr [ %i.bf, %bb.t ], [ %.2413.ph, %bb.w ] ; 2 uses
  %.not517 = icmp eq ptr %.0411.lcssa, null
  br i1 %.not517, label %.thread649, label %bb.ad

.thread649:                                       ; preds = %bb.r, %bb.n, %bb.o, %bb.p, %bb.q, %bb.x, %._crit_edge815
  %.0410653 = phi i32 [ -1, %._crit_edge815 ], [ -1, %bb.x ], [ 2, %bb.q ], [ 0, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 3, %bb.r ]
  %i.cn = call ptr @getAllClientsInfoString(i32 noundef %.0410653)
  br label %bb.ad

bb.ad:                                            ; preds = %.thread649, %._crit_edge815
  %.5 = phi ptr [ %.0411.lcssa, %._crit_edge815 ], [ %i.cn, %.thread649 ] ; 7 uses
  %i.co = getelementptr i8, ptr %.5, i64 -1
  %.val.i621 = load i8, ptr %i.co, align 1, !tbaa !17 ; 2 uses
  %i.cp = and i8 %.val.i621, 7
  switch i8 %i.cp, label %sdslen.exit623 [
    i8 0, label %bb.ae
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.ah
    i8 4, label %bb.ai
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cq = lshr i8 %.val.i621, 3
  %i.cr = zext nneg i8 %i.cq to i64
  br label %sdslen.exit623

bb.af:                                            ; preds = %bb.ad
  %i.cs = getelementptr inbounds i8, ptr %.5, i64 -3
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !17
  %i.cu = zext i8 %i.ct to i64
  br label %sdslen.exit623

bb.ag:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds i8, ptr %.5, i64 -5
  %i.cw = load i16, ptr %i.cv, align 1, !tbaa !18
  %i.cx = zext i16 %i.cw to i64
  br label %sdslen.exit623

bb.ah:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds i8, ptr %.5, i64 -9
  %i.cz = load i32, ptr %i.cy, align 1, !tbaa !9
  %i.da = zext i32 %i.cz to i64
  br label %sdslen.exit623

bb.ai:                                            ; preds = %bb.ad
  %i.db = getelementptr inbounds i8, ptr %.5, i64 -17
  %i.dc = load i64, ptr %i.db, align 1, !tbaa !20
  br label %sdslen.exit623

sdslen.exit623:                                   ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.0.i622 = phi i64 [ %i.dc, %bb.ai ], [ %i.cr, %bb.ae ], [ %i.cu, %bb.af ], [ %i.cx, %bb.ag ], [ %i.da, %bb.ah ], [ 0, %bb.ad ]
  call void @addReplyVerbatim(ptr noundef nonnull %0, ptr noundef nonnull %.5, i64 noundef %.0.i622, ptr noundef nonnull @.str.163)
  call void @sdsfree(ptr noundef nonnull %.5) #29
  br label %.critedge

bb.aj:                                            ; preds = %.thread639
  %i.dd = tail call i32 @strcasecmp(ptr noundef %.pre831, ptr noundef nonnull @.str.168) #33
  %.not518 = icmp eq i32 %i.dd, 0
  %i.de = icmp eq i32 %i.j, 3                     ; 4 uses
  %or.cond698 = and i1 %i.de, %.not518
  br i1 %or.cond698, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !173
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !14 ; 3 uses
  %i.dj = tail call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.169) #33
  %.not519 = icmp eq i32 %i.dj, 0
  br i1 %.not519, label %bb.al, label %bb.am

end_hunk_1
begin_hunk_2_@clientCommand:bb.a
  %i.dm = and i64 %i.dl, -20971521
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !99
  %i.dn = load ptr, ptr @shared, align 8, !tbaa !336
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.dn)
  br label %.critedge

bb.am:                                            ; preds = %bb.ak
  %i.do = tail call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.170) #33
  %.not520 = icmp eq i32 %i.do, 0
  br i1 %.not520, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !99
  %i.dr = or i64 %i.dq, 4194304
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !99
  br label %.critedge

bb.ao:                                            ; preds = %bb.am
  %i.ds = tail call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.171) #33
  %.not521 = icmp eq i32 %i.ds, 0
  br i1 %.not521, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !99 ; 2 uses
  %i.dv = and i64 %i.du, 4194304
  %.not522 = icmp eq i64 %i.dv, 0
  br i1 %.not522, label %bb.aq, label %.critedge

bb.aq:                                            ; preds = %bb.ap
  %i.dw = or i64 %i.du, 8388608
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !99
  br label %.critedge

bb.ar:                                            ; preds = %bb.ao
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !338
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.dx)
  br label %.critedge

bb.as:                                            ; preds = %bb.aj
  %i.dy = tail call i32 @strcasecmp(ptr noundef %.pre831, ptr noundef nonnull @.str.172) #33
  %.not523 = icmp eq i32 %i.dy, 0
  %or.cond699 = and i1 %i.de, %.not523
  br i1 %or.cond699, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !173
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !14 ; 2 uses
  %i.ed = tail call i32 @strcasecmp(ptr noundef %i.ec, ptr noundef nonnull @.str.169) #33
  %.not524 = icmp eq i32 %i.ed, 0
  br i1 %.not524, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !99
  %i.eg = or i64 %i.ef, 8796093022208
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !99
  tail call void @removeClientFromMemUsageBucket(ptr noundef nonnull %0, i32 noundef 0) #29
  %i.eh = load ptr, ptr @shared, align 8, !tbaa !336
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.eh)
  br label %.critedge

bb.av:                                            ; preds = %bb.at
  %i.ei = tail call i32 @strcasecmp(ptr noundef %i.ec, ptr noundef nonnull @.str.170) #33
  %.not525 = icmp eq i32 %i.ei, 0
  br i1 %.not525, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !99
  %i.el = and i64 %i.ek, -8796093022209
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !99
  %i.em = tail call i32 @updateClientMemUsageAndBucket(ptr noundef nonnull %0) #29 ; 0 uses
  %i.en = load ptr, ptr @shared, align 8, !tbaa !336
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.en)
  br label %.critedge

bb.ax:                                            ; preds = %bb.av
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !338
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.eo)
  br label %.critedge

bb.ay:                                            ; preds = %bb.as
  %i.ep = tail call i32 @strcasecmp(ptr noundef %.pre831, ptr noundef nonnull @.str.173) #33
  %.not526 = icmp eq i32 %i.ep, 0
  br i1 %.not526, label %bb.az, label %bb.dd

bb.az:                                            ; preds = %bb.ay
  br i1 %i.de, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.eq = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !173
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !14
  br label %.loopexit

bb.bb:                                            ; preds = %bb.az
  %i.eu = icmp sgt i32 %i.j, 3
  br i1 %i.eu, label %.lr.ph794, label %bb.ca

.lr.ph794:                                        ; preds = %bb.bb, %getClientTypeByName.exit631.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %getClientTypeByName.exit631.thread ], [ 2, %bb.bb ] ; 3 uses
  %i.ev = phi i32 [ %i.hm, %getClientTypeByName.exit631.thread ], [ %i.j, %bb.bb ]
  %.0423793 = phi ptr [ %.1424, %getClientTypeByName.exit631.thread ], [ null, %bb.bb ] ; 11 uses
  %.0444792 = phi ptr [ %.1445, %getClientTypeByName.exit631.thread ], [ null, %bb.bb ] ; 11 uses
  %.0450791 = phi ptr [ %.1451, %getClientTypeByName.exit631.thread ], [ null, %bb.bb ] ; 11 uses
  %.0455790 = phi i32 [ %.1456, %getClientTypeByName.exit631.thread ], [ -1, %bb.bb ] ; 7 uses
  %.0467788 = phi i32 [ %.1468, %getClientTypeByName.exit631.thread ], [ 1, %bb.bb ] ; 10 uses
  %.0472787 = phi i64 [ %.2474, %getClientTypeByName.exit631.thread ], [ 0, %bb.bb ] ; 11 uses
  %.0478786 = phi i64 [ %.2480, %getClientTypeByName.exit631.thread ], [ 0, %bb.bb ] ; 11 uses
  %i.ew = or disjoint i64 %indvars.iv, 1          ; 9 uses
  %i.ex = sext i32 %i.ev to i64
  %i.ey = icmp slt i64 %i.ew, %i.ex               ; 7 uses
  %i.ez = load ptr, ptr %i.al, align 8, !tbaa !186 ; 8 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !173
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !14 ; 7 uses
  %i.fe = call i32 @strcasecmp(ptr noundef %i.fd, ptr noundef nonnull @.str.161) #33
  %i.ff = icmp eq i32 %i.fe, 0
  %or.cond = select i1 %i.ff, i1 %i.ey, i1 false
  br i1 %or.cond, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !173
  %i.fi = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.fh, i64 noundef 1, i64 noundef 9223372036854775807, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.174) #29
  %.not530 = icmp eq i32 %i.fi, 0
  %i.fj = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  br i1 %.not530, label %getClientTypeByName.exit631.thread, label %.critedge

bb.bd:                                            ; preds = %.lr.ph794
  %i.fk = call i32 @strcasecmp(ptr noundef %i.fd, ptr noundef nonnull @.str.175) #33
  %i.fl = icmp eq i32 %i.fk, 0
  %or.cond17 = select i1 %i.fl, i1 %i.ey, i1 false
  br i1 %or.cond17, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !173
  %i.fo = call i32 @getLongLongFromObjectOrReply(ptr noundef %0, ptr noundef %i.fn, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.176) #29
  %.not529 = icmp eq i32 %i.fo, 0
  br i1 %.not529, label %bb.bf, label %.thread655

bb.bf:                                            ; preds = %bb.be
  %i.fp = load i64, ptr %i.e, align 8, !tbaa !131 ; 2 uses
  %i.fq = icmp slt i64 %i.fp, 1
  br i1 %i.fq, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.177)
  br label %.thread655

.thread655:                                       ; preds = %bb.be, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  br label %.critedge

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  br label %getClientTypeByName.exit631.thread

bb.bi:                                            ; preds = %bb.bd
  %i.fr = call i32 @strcasecmp(ptr noundef %i.fd, ptr noundef nonnull @.str.165) #33
  %i.fs = icmp eq i32 %i.fr, 0
  %or.cond19 = select i1 %i.fs, i1 %i.ey, i1 false
  br i1 %or.cond19, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !173
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !14 ; 6 uses
  %i.fx = call i32 @strcasecmp(ptr noundef readonly %i.fw, ptr noundef nonnull @.str.248) #33
  %.not.i624 = icmp eq i32 %i.fx, 0
  br i1 %.not.i624, label %getClientTypeByName.exit631.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fy = call i32 @strcasecmp(ptr noundef readonly %i.fw, ptr noundef nonnull @.str.249) #33
  %.not5.i625 = icmp eq i32 %i.fy, 0
  br i1 %.not5.i625, label %getClientTypeByName.exit631.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fz = call i32 @strcasecmp(ptr noundef readonly %i.fw, ptr noundef nonnull @.str.13) #33
  %.not6.i626 = icmp eq i32 %i.fz, 0
  br i1 %.not6.i626, label %getClientTypeByName.exit631.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ga = call i32 @strcasecmp(ptr noundef readonly %i.fw, ptr noundef nonnull @.str.250) #33
  %.not7.i627 = icmp eq i32 %i.ga, 0
  br i1 %.not7.i627, label %getClientTypeByName.exit631.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gb = call i32 @strcasecmp(ptr noundef readonly %i.fw, ptr noundef nonnull @.str.12) #33
  %.not8.i628 = icmp eq i32 %i.gb, 0
  br i1 %.not8.i628, label %getClientTypeByName.exit631.thread, label %getClientTypeByName.exit631

getClientTypeByName.exit631:                      ; preds = %bb.bn
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %0, ptr noundef nonnull @.str.166, ptr noundef %i.fw)
  br label %.critedge

bb.bo:                                            ; preds = %bb.bi
  %i.gc = call i32 @strcasecmp(ptr noundef %i.fd, ptr noundef nonnull @.str.178) #33
  %i.gd = icmp eq i32 %i.gc, 0
  %or.cond21 = select i1 %i.gd, i1 %i.ey, i1 false
  br i1 %or.cond21, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !173
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !14
  br label %getClientTypeByName.exit631.thread

bb.bq:                                            ; preds = %bb.bo
  %i.gi = call i32 @strcasecmp(ptr noundef %i.fd, ptr noundef nonnull @.str.179) #33
  %i.gj = icmp eq i32 %i.gi, 0
  %or.cond23 = select i1 %i.gj, i1 %i.ey, i1 false
  br i1 %or.cond23, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !173
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !14
  br label %getClientTypeByName.exit631.thread

bb.bs:                                            ; preds = %bb.bq
  %i.go = call i32 @strcasecmp(ptr noundef %i.fd, ptr noundef nonnull @.str.180) #33
  %i.gp = icmp eq i32 %i.go, 0
  %or.cond25 = select i1 %i.gp, i1 %i.ey, i1 false
  br i1 %or.cond25, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !173
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !14 ; 2 uses
  %i.gu = call fastcc i64 @sdslen(ptr noundef %i.gt)
  %i.gv = call ptr @ACLGetUserByName(ptr noundef %i.gt, i64 noundef %i.gu) #29 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.bu, label %getClientTypeByName.exit631.thread

bb.bu:                                            ; preds = %bb.bt
  %i.gx = load ptr, ptr %i.al, align 8, !tbaa !186
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.ew
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !173
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !14
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %0, ptr noundef nonnull @.str.181, ptr noundef %i.hb)
  br label %.critedge

bb.bv:                                            ; preds = %bb.bs
  %i.hc = call i32 @strcasecmp(ptr noundef %i.fd, ptr noundef nonnull @.str.182) #33
  %i.hd = icmp eq i32 %i.hc, 0
  %or.cond27 = select i1 %i.hd, i1 %i.ey, i1 false
  br i1 %or.cond27, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !173
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !14 ; 2 uses
  %i.hi = call i32 @strcasecmp(ptr noundef %i.hh, ptr noundef nonnull @.str.183) #33
  %.not527 = icmp eq i32 %i.hi, 0
  br i1 %.not527, label %getClientTypeByName.exit631.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hj = call i32 @strcasecmp(ptr noundef %i.hh, ptr noundef nonnull @.str.184) #33
  %.not528 = icmp eq i32 %i.hj, 0
  br i1 %.not528, label %getClientTypeByName.exit631.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !338
  call void @addReplyErrorObject(ptr noundef %0, ptr noundef %i.hk)
  br label %.critedge

bb.bz:                                            ; preds = %bb.bv
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !338
  call void @addReplyErrorObject(ptr noundef %0, ptr noundef %i.hl)
  br label %.critedge

getClientTypeByName.exit631.thread:               ; preds = %bb.bn, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bc, %bb.br, %bb.bt, %bb.bp, %bb.bw, %bb.bx, %bb.bh
  %.2480 = phi i64 [ %i.fj, %bb.bc ], [ %.0478786, %bb.bh ], [ %.0478786, %bb.bx ], [ %.0478786, %bb.bp ], [ %.0478786, %bb.br ], [ %.0478786, %bb.bt ], [ %.0478786, %bb.bw ], [ %.0478786, %bb.bm ], [ %.0478786, %bb.bl ], [ %.0478786, %bb.bk ], [ %.0478786, %bb.bj ], [ %.0478786, %bb.bn ] ; 2 uses
  %.2474 = phi i64 [ %.0472787, %bb.bc ], [ %i.fp, %bb.bh ], [ %.0472787, %bb.bx ], [ %.0472787, %bb.bp ], [ %.0472787, %bb.br ], [ %.0472787, %bb.bt ], [ %.0472787, %bb.bw ], [ %.0472787, %bb.bm ], [ %.0472787, %bb.bl ], [ %.0472787, %bb.bk ], [ %.0472787, %bb.bj ], [ %.0472787, %bb.bn ] ; 2 uses
  %.1468 = phi i32 [ %.0467788, %bb.bc ], [ %.0467788, %bb.bh ], [ 0, %bb.bx ], [ %.0467788, %bb.bp ], [ %.0467788, %bb.br ], [ %.0467788, %bb.bt ], [ 1, %bb.bw ], [ %.0467788, %bb.bm ], [ %.0467788, %bb.bl ], [ %.0467788, %bb.bk ], [ %.0467788, %bb.bj ], [ %.0467788, %bb.bn ] ; 2 uses
  %.1456 = phi i32 [ %.0455790, %bb.bc ], [ %.0455790, %bb.bh ], [ %.0455790, %bb.bx ], [ %.0455790, %bb.bp ], [ %.0455790, %bb.br ], [ %.0455790, %bb.bt ], [ %.0455790, %bb.bw ], [ 2, %bb.bm ], [ 1, %bb.bl ], [ 1, %bb.bk ], [ 0, %bb.bj ], [ 3, %bb.bn ] ; 2 uses
  %.1451 = phi ptr [ %.0450791, %bb.bc ], [ %.0450791, %bb.bh ], [ %.0450791, %bb.bx ], [ %.0450791, %bb.bp ], [ %.0450791, %bb.br ], [ %i.gv, %bb.bt ], [ %.0450791, %bb.bw ], [ %.0450791, %bb.bm ], [ %.0450791, %bb.bl ], [ %.0450791, %bb.bk ], [ %.0450791, %bb.bj ], [ %.0450791, %bb.bn ] ; 2 uses
  %.1445 = phi ptr [ %.0444792, %bb.bc ], [ %.0444792, %bb.bh ], [ %.0444792, %bb.bx ], [ %.0444792, %bb.bp ], [ %i.gn, %bb.br ], [ %.0444792, %bb.bt ], [ %.0444792, %bb.bw ], [ %.0444792, %bb.bm ], [ %.0444792, %bb.bl ], [ %.0444792, %bb.bk ], [ %.0444792, %bb.bj ], [ %.0444792, %bb.bn ] ; 2 uses
  %.1424 = phi ptr [ %.0423793, %bb.bc ], [ %.0423793, %bb.bh ], [ %.0423793, %bb.bx ], [ %i.gh, %bb.bp ], [ %.0423793, %bb.br ], [ %.0423793, %bb.bt ], [ %.0423793, %bb.bw ], [ %.0423793, %bb.bm ], [ %.0423793, %bb.bl ], [ %.0423793, %bb.bk ], [ %.0423793, %bb.bj ], [ %.0423793, %bb.bn ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.hm = load i32, ptr %i.i, align 8, !tbaa !275 ; 2 uses
  %i.hn = trunc nuw i64 %indvars.iv.next to i32
  %.not531 = icmp sgt i32 %i.hm, %i.hn
  br i1 %.not531, label %.lr.ph794, label %.loopexit.loopexit, !llvm.loop !339

bb.ca:                                            ; preds = %bb.bb
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !338 ; 2 uses
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef readonly %i.ho)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !14 ; 6 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 -1
  %.val.i.i632 = load i8, ptr %i.hr, align 1, !tbaa !17 ; 2 uses
  %i.hs = and i8 %.val.i.i632, 7
  switch i8 %i.hs, label %addReplyErrorObject.exit634 [
    i8 0, label %bb.cb
    i8 1, label %bb.cc
    i8 2, label %bb.cd
    i8 3, label %bb.ce
    i8 4, label %bb.cf
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.ht = lshr i8 %.val.i.i632, 3
  %i.hu = zext nneg i8 %i.ht to i64
  br label %addReplyErrorObject.exit634

bb.cc:                                            ; preds = %bb.ca
  %i.hv = getelementptr inbounds i8, ptr %i.hq, i64 -3
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !17
  %i.hx = zext i8 %i.hw to i64
  br label %addReplyErrorObject.exit634

bb.cd:                                            ; preds = %bb.ca
  %i.hy = getelementptr inbounds i8, ptr %i.hq, i64 -5
  %i.hz = load i16, ptr %i.hy, align 1, !tbaa !18
  %i.ia = zext i16 %i.hz to i64
  br label %addReplyErrorObject.exit634

bb.ce:                                            ; preds = %bb.ca
  %i.ib = getelementptr inbounds i8, ptr %i.hq, i64 -9
  %i.ic = load i32, ptr %i.ib, align 1, !tbaa !9
  %i.id = zext i32 %i.ic to i64
  br label %addReplyErrorObject.exit634

bb.cf:                                            ; preds = %bb.ca
  %i.ie = getelementptr inbounds i8, ptr %i.hq, i64 -17
  %i.if = load i64, ptr %i.ie, align 1, !tbaa !20
  br label %addReplyErrorObject.exit634

addReplyErrorObject.exit634:                      ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf
  %.0.i.i633 = phi i64 [ %i.if, %bb.cf ], [ %i.hu, %bb.cb ], [ %i.hx, %bb.cc ], [ %i.ia, %bb.cd ], [ %i.id, %bb.ce ], [ 0, %bb.ca ]
  %i.ig = add i64 %.0.i.i633, -2
  tail call void @afterErrorReply(ptr noundef nonnull %0, ptr noundef nonnull %i.hq, i64 noundef %i.ig, i32 noundef 0)
  br label %.critedge

.loopexit.loopexit:                               ; preds = %getClientTypeByName.exit631.thread
  %i.ih = icmp ne i32 %.1468, 0
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ba
  %.5483 = phi i64 [ 0, %bb.ba ], [ %.2480, %.loopexit.loopexit ] ; 2 uses
  %.5477 = phi i64 [ 0, %bb.ba ], [ %.2474, %.loopexit.loopexit ] ; 2 uses
  %.4471 = phi i1 [ false, %bb.ba ], [ %i.ih, %.loopexit.loopexit ]
  %.4459 = phi i32 [ -1, %bb.ba ], [ %.1456, %.loopexit.loopexit ] ; 2 uses
  %.4454 = phi ptr [ null, %bb.ba ], [ %.1451, %.loopexit.loopexit ] ; 2 uses
  %.4448 = phi ptr [ null, %bb.ba ], [ %.1445, %.loopexit.loopexit ] ; 2 uses
  %.4427 = phi ptr [ %i.et, %bb.ba ], [ %.1424, %.loopexit.loopexit ] ; 2 uses
  %i.ii = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1440), align 8, !tbaa !22
  call void @listRewind(ptr noundef %i.ii, ptr noundef nonnull %1) #29
  %i.ij = call ptr @listNext(ptr noundef nonnull %1) #29 ; 2 uses
  %.not532802 = icmp eq ptr %i.ij, null
  br i1 %.not532802, label %._crit_edge807.thread, label %.lr.ph806

.lr.ph806:                                        ; preds = %.loopexit
  %.not534 = icmp eq ptr %.4427, null
  %.not536 = icmp eq ptr %.4448, null
  %.not538 = icmp eq i32 %.4459, -1
  %.not540 = icmp eq i64 %.5483, 0
  %.not542 = icmp eq ptr %.4454, null
  %.not544 = icmp eq i64 %.5477, 0
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph806, %bb.cy
  %i.ik = phi ptr [ %i.ij, %.lr.ph806 ], [ %i.ji, %bb.cy ]
  %.0462804 = phi i32 [ 0, %.lr.ph806 ], [ %.2464, %bb.cy ] ; 8 uses
  %.0465803 = phi i32 [ 0, %.lr.ph806 ], [ %.1466, %bb.cy ] ; 8 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !160 ; 8 uses
  br i1 %.not534, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.in = call ptr @getClientPeerId(ptr noundef %i.im)
  %i.io = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.in, ptr noundef nonnull dereferenceable(1) %.4427) #33
  %.not535 = icmp eq i32 %i.io, 0
  br i1 %.not535, label %bb.ci, label %bb.cy, !llvm.loop !340

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  br i1 %.not536, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ip = call ptr @getClientSockname(ptr noundef %i.im)
  %i.iq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ip, ptr noundef nonnull dereferenceable(1) %.4448) #33
  %.not537 = icmp eq i32 %i.iq, 0
  br i1 %.not537, label %bb.ck, label %bb.cy, !llvm.loop !340
end_hunk_2
