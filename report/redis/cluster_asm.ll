Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/cluster_asm?download=true
inline.NumInlined: 160
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@asmSendSlotRangesSync:bb.a
  %i.f = add nsw i32 %i.e, 4                      ; 4 uses
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3                      ; 2 uses
  %i.i = tail call noalias ptr @zcalloc(i64 noundef %i.h) #19 ; 9 uses
  %i.j = tail call noalias ptr @zcalloc(i64 noundef %i.h) #19 ; 8 uses
  store ptr @.str.45, ptr %i.i, align 8, !tbaa !104
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.46, ptr %i.k, align 8, !tbaa !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr @.str.100, ptr %i.l, align 8, !tbaa !104
  %i.m = load ptr, ptr %1, align 8, !tbaa !103    ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !104
  store i64 7, ptr %i.j, align 8, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 9, ptr %i.o, align 8, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 4, ptr %i.p, align 8, !tbaa !78
  %i.q = getelementptr i8, ptr %i.m, i64 -1
  %.val.i = load i8, ptr %i.q, align 1, !tbaa !75 ; 2 uses
  %i.r = and i8 %.val.i, 7
  switch i8 %i.r, label %sdslen.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = lshr i8 %.val.i, 3
  %i.t = zext nneg i8 %i.s to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.m, i64 -3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !75
  %i.w = zext i8 %i.v to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds i8, ptr %i.m, i64 -5
  %i.y = load i16, ptr %i.x, align 1, !tbaa !77
  %i.z = zext i16 %i.y to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds i8, ptr %i.m, i64 -9
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !27
  %i.ac = zext i32 %i.ab to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds i8, ptr %i.m, i64 -17
  %i.ae = load i64, ptr %i.ad, align 1, !tbaa !78
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.ae, %bb.h ], [ %i.t, %bb.d ], [ %i.w, %bb.e ], [ %i.z, %bb.f ], [ %i.ac, %bb.g ], [ 0, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.0.i, ptr %i.af, align 8, !tbaa !78
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !99  ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !27
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %sdslen.exit56
  %i.aj = trunc nuw i64 %indvars.iv.next64 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %sdslen.exit
  %.048.lcssa = phi i32 [ 4, %sdslen.exit ], [ %i.aj, %._crit_edge.loopexit ]
  %i.ak = icmp eq i32 %.048.lcssa, %i.f
  br i1 %i.ak, label %bb.t, label %bb.s, !prof !144

.lr.ph:                                           ; preds = %sdslen.exit, %sdslen.exit56
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %sdslen.exit56 ], [ 4, %sdslen.exit ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %sdslen.exit56 ], [ 0, %sdslen.exit ] ; 2 uses
  %i.al = phi ptr [ %i.cg, %sdslen.exit56 ], [ %i.ag, %sdslen.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.ao = tail call ptr @sdsempty() #20
  %i.ap = load i16, ptr %i.an, align 2, !tbaa !120
  %i.aq = zext i16 %i.ap to i32
  %i.ar = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.101, i32 noundef %i.aq) #20 ; 6 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv63
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !104
  %i.at = getelementptr i8, ptr %i.ar, i64 -1
  %.val.i51 = load i8, ptr %i.at, align 1, !tbaa !75 ; 2 uses
  %i.au = and i8 %.val.i51, 7
  switch i8 %i.au, label %sdslen.exit53 [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
  ]

bb.i:                                             ; preds = %.lr.ph
  %i.av = lshr i8 %.val.i51, 3
  %i.aw = zext nneg i8 %i.av to i64
  br label %sdslen.exit53

bb.j:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds i8, ptr %i.ar, i64 -3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !75
  %i.az = zext i8 %i.ay to i64
  br label %sdslen.exit53

bb.k:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds i8, ptr %i.ar, i64 -5
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !77
  %i.bc = zext i16 %i.bb to i64
  br label %sdslen.exit53

bb.l:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds i8, ptr %i.ar, i64 -9
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !27
  %i.bf = zext i32 %i.be to i64
  br label %sdslen.exit53

bb.m:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds i8, ptr %i.ar, i64 -17
  %i.bh = load i64, ptr %i.bg, align 1, !tbaa !78
  br label %sdslen.exit53

sdslen.exit53:                                    ; preds = %.lr.ph, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i52 = phi i64 [ %i.bh, %bb.m ], [ %i.aw, %bb.i ], [ %i.az, %bb.j ], [ %i.bc, %bb.k ], [ %i.bf, %bb.l ], [ 0, %.lr.ph ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv63
  store i64 %.0.i52, ptr %i.bi, align 8, !tbaa !78
  %i.bj = tail call ptr @sdsempty() #20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !121
  %i.bm = zext i16 %i.bl to i32
  %i.bn = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.101, i32 noundef %i.bm) #20 ; 6 uses
  %i.bo = or disjoint i64 %indvars.iv63, 1        ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bo
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !104
  %i.bq = getelementptr i8, ptr %i.bn, i64 -1
  %.val.i54 = load i8, ptr %i.bq, align 1, !tbaa !75 ; 2 uses
  %i.br = and i8 %.val.i54, 7
  switch i8 %i.br, label %sdslen.exit56 [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
  ]

bb.n:                                             ; preds = %sdslen.exit53
  %i.bs = lshr i8 %.val.i54, 3
  %i.bt = zext nneg i8 %i.bs to i64
  br label %sdslen.exit56

bb.o:                                             ; preds = %sdslen.exit53
  %i.bu = getelementptr inbounds i8, ptr %i.bn, i64 -3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !75
  %i.bw = zext i8 %i.bv to i64
  br label %sdslen.exit56

bb.p:                                             ; preds = %sdslen.exit53
  %i.bx = getelementptr inbounds i8, ptr %i.bn, i64 -5
  %i.by = load i16, ptr %i.bx, align 1, !tbaa !77
  %i.bz = zext i16 %i.by to i64
  br label %sdslen.exit56

bb.q:                                             ; preds = %sdslen.exit53
  %i.ca = getelementptr inbounds i8, ptr %i.bn, i64 -9
  %i.cb = load i32, ptr %i.ca, align 1, !tbaa !27
  %i.cc = zext i32 %i.cb to i64
  br label %sdslen.exit56

bb.r:                                             ; preds = %sdslen.exit53
  %i.cd = getelementptr inbounds i8, ptr %i.bn, i64 -17
  %i.ce = load i64, ptr %i.cd, align 1, !tbaa !78
  br label %sdslen.exit56

sdslen.exit56:                                    ; preds = %sdslen.exit53, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i55 = phi i64 [ %i.ce, %bb.r ], [ %i.bt, %bb.n ], [ %i.bw, %bb.o ], [ %i.bz, %bb.p ], [ %i.cc, %bb.q ], [ 0, %sdslen.exit53 ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bo
  store i64 %.0.i55, ptr %i.cf, align 8, !tbaa !78
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 2 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !99  ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !27
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !216

bb.s:                                             ; preds = %._crit_edge
  tail call void @_serverAssert(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.50, i32 noundef 1440) #20
  tail call void @abort() #22
  unreachable

bb.t:                                             ; preds = %._crit_edge
  %i.ck = tail call ptr @sendCommandArgv(ptr noundef %0, i32 noundef %i.f, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #20
  %i.cl = icmp sgt i32 %i.c, 0
  br i1 %i.cl, label %.lr.ph61.preheader, label %._crit_edge62

.lr.ph61.preheader:                               ; preds = %bb.t
  %smax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 5)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph61

._crit_edge62:                                    ; preds = %.lr.ph61, %bb.t
  tail call void @zfree(ptr noundef nonnull %i.i) #20
  tail call void @zfree(ptr noundef nonnull %i.j) #20
  ret ptr %i.ck

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %.lr.ph61
  %indvars.iv68 = phi i64 [ 4, %.lr.ph61.preheader ], [ %indvars.iv.next69, %.lr.ph61 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv68
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !104
  tail call void @sdsfree(ptr noundef %i.cn) #20
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge62, label %.lr.ph61, !llvm.loop !217
}

declare ptr @sendCommandArgv(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @asmSyncWithSource(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.c, align 8, !tbaa !148 ; 8 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val92 = load i32, ptr %i.d, align 8, !tbaa !158
  %.not = icmp eq i32 %.val92, 3
  br i1 %.not, label %bb.b, label %.thread103

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 12 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !89   ; 6 uses
  %i.g = load ptr, ptr @asmManager, align 8, !tbaa !30 ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %asmDebugIsFailPointActive.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !73
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %asmDebugIsFailPointActive.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.l = load i32, ptr %i.k, align 4, !tbaa !74
  %i.m = icmp eq i32 %i.l, %i.f
  br i1 %i.m, label %bb.e, label %asmDebugIsFailPointActive.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.o = icmp sgt i32 %i.n, 2
  br i1 %i.o, label %asmDebugIsFailPointActive.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp ult i32 %i.f, 26
  br i1 %i.p, label %switch.lookup, label %asmTaskStateToString.exit.i

switch.lookup:                                    ; preds = %bb.f
  %i.q = zext nneg i32 %i.f to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.replyTaskStatus, i64 %i.q
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %asmTaskStateToString.exit.i

asmTaskStateToString.exit.i:                      ; preds = %bb.f, %switch.lookup
  %.0.i8.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.26, %bb.f ]
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.27, ptr noundef nonnull %.0.i8.i) #20
  br label %asmDebugIsFailPointActive.exit

asmDebugIsFailPointActive.exit:                   ; preds = %asmTaskStateToString.exit.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !159
  %i.t = tail call i32 @shutdown(i32 noundef %i.s, i32 noundef 2) #20 ; 0 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !152
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !160
  %i.x = call i32 %i.w(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1) #20, !inline_history !6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %.pr108.pre = load i32, ptr %i.e, align 8, !tbaa !89
  br label %asmDebugIsFailPointActive.exit.thread

asmDebugIsFailPointActive.exit.thread:            ; preds = %bb.c, %bb.d, %asmDebugIsFailPointActive.exit, %bb.b
  %i.y = phi i32 [ %i.f, %bb.b ], [ %.pr108.pre, %asmDebugIsFailPointActive.exit ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  switch i32 %i.y, label %bb.o [
    i32 1, label %bb.g
    i32 2, label %bb.j
  ]

bb.g:                                             ; preds = %asmDebugIsFailPointActive.exit.thread
  %i.z = load ptr, ptr %0, align 8, !tbaa !152
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  %i.ac = call i32 %i.ab(ptr noundef nonnull %0, ptr noundef nonnull @asmSyncWithSource) #20, !inline_history !7 ; 0 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !152
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !162
  %i.ag = call i32 %i.af(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #20, !inline_history !8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !78
  %i.ah = call ptr @clusterGetSecret(ptr noundef nonnull %i.a) #20 ; 2 uses
  %.not.i94 = icmp eq ptr %i.ah, null
  br i1 %.not.i94, label %bb.h, label %asmSendInternalAuth.exit, !prof !115

bb.h:                                             ; preds = %bb.g
  call void @_serverAssert(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.50, i32 noundef 1289) #20
  call void @abort() #22
  unreachable

asmSendInternalAuth.exit:                         ; preds = %bb.g
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !78
  %i.aj = call ptr @sdsnewlen(ptr noundef nonnull %i.ah, i64 noundef %i.ai) #20 ; 2 uses
  %i.ak = call ptr (ptr, ...) @sendCommand(ptr noundef nonnull %0, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, ptr noundef %i.aj, ptr noundef null) #20 ; 2 uses
  call void @sdsfree(ptr noundef %i.aj) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not90 = icmp eq ptr %i.ak, null
  br i1 %.not90, label %bb.i, label %.critedge

bb.i:                                             ; preds = %asmSendInternalAuth.exit
  store i32 2, ptr %i.e, align 8, !tbaa !89
  br label %bb.au

bb.j:                                             ; preds = %asmDebugIsFailPointActive.exit.thread
  %i.al = call ptr @receiveSynchronousResponse(ptr noundef nonnull %0) #20 ; 5 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.ao, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(4) @.str.88) #21
  %.not83 = icmp eq i32 %i.an, 0
  br i1 %.not83, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @sdsfree(ptr noundef nonnull %i.al) #20
  store i32 6, ptr %i.e, align 8, !tbaa !89
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.ap = icmp sgt i32 %i.ao, 2
  br i1 %i.ap, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.103) #20
  %.pr = load i32, ptr %i.e, align 8, !tbaa !89
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.aq = call ptr @sdsempty() #20
  %i.ar = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.al) #20
  br label %bb.aq

bb.o:                                             ; preds = %asmDebugIsFailPointActive.exit.thread, %bb.m
  %i.as = phi i32 [ %i.y, %asmDebugIsFailPointActive.exit.thread ], [ %.pr, %bb.m ] ; 2 uses
  switch i32 %i.as, label %bb.v [
    i32 6, label %.thread
    i32 7, label %bb.q
  ]

.thread:                                          ; preds = %bb.l, %bb.o
  %i.at = call ptr @getMyClusterNode() #20
  %i.au = call ptr @clusterNodeGetName(ptr noundef %i.at) #20
  %i.av = call ptr @sdsnewlen(ptr noundef %i.au, i64 noundef 40) #20 ; 2 uses
  %i.aw = call ptr (ptr, ...) @sendCommand(ptr noundef nonnull %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.105, ptr noundef %i.av, ptr noundef null) #20 ; 2 uses
  call void @sdsfree(ptr noundef %i.av) #20
  %.not89.not = icmp eq ptr %i.aw, null
  br i1 %.not89.not, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.thread
  store i32 7, ptr %i.e, align 8, !tbaa !89
  br label %bb.au

bb.q:                                             ; preds = %bb.o
  %i.ax = call ptr @receiveSynchronousResponse(ptr noundef nonnull %0) #20 ; 5 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.ao, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ax, ptr noundef nonnull dereferenceable(4) @.str.88) #21
  %.not84 = icmp eq i32 %i.az, 0
  br i1 %.not84, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @sdsfree(ptr noundef nonnull %i.ax) #20
  store i32 8, ptr %i.e, align 8, !tbaa !89
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.bb = icmp sgt i32 %i.ba, 2
  br i1 %i.bb, label %.thread98, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.106) #20
  %.pr97.pre = load i32, ptr %i.e, align 8, !tbaa !89
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.bc = call ptr @sdsempty() #20
  %i.bd = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.107, ptr noundef nonnull %i.ax) #20
  br label %bb.aq

bb.v:                                             ; preds = %bb.o, %bb.t
  %.pr97 = phi i32 [ %i.as, %bb.o ], [ %.pr97.pre, %bb.t ] ; 2 uses
  switch i32 %.pr97, label %bb.af [
end_hunk_0
