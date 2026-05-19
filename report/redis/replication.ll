inline.NumInlined: 195
inline.NumDeleted: 32
begin_hunk_0_@replDataBufReadFromConn:bb.a
  %i.t = icmp ugt i64 %i.r, %i.s
  br i1 %i.t, label %bb.f, label %.critedge.i, !prof !70

.critedge.i:                                      ; preds = %bb.e, %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.312, ptr noundef nonnull @.str.1, i32 noundef 3950) #19
  tail call void @abort() #20
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  %i.w = sub nuw i64 %i.r, %i.s
  %i.x = load ptr, ptr %0, align 8, !tbaa !86
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !248
  %i.aa = tail call i32 %i.z(ptr noundef nonnull %0, ptr noundef nonnull %i.v, i64 noundef %i.w) #19, !inline_history !330 ; 4 uses
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp eq i32 %i.aa, 0
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %0, i64 8
  %.val.i = load i32, ptr %i.ad, align 8, !tbaa !203
  %.not25.i = icmp eq i32 %.val.i, 3
  br i1 %.not25.i, label %replDataBufReadIntoLastBlock.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void %2(ptr noundef nonnull %0) #19, !inline_history !331
  br label %replDataBufReadIntoLastBlock.exit.thread

bb.j:                                             ; preds = %bb.f
  %i.ae = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.af = load i64, ptr %i.p, align 8, !tbaa !106
  %i.ag = add i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.p, align 8, !tbaa !106
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !332
  %i.aj = add i64 %i.ai, %i.ae
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !332
  %i.ak = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @server, i64 2960), i64 %i.ae monotonic, align 8 ; 0 uses
  %i.al = load i64, ptr %i.g, align 8, !tbaa !106
  %i.am = load i64, ptr %i.f, align 8, !tbaa !106
  %i.an = icmp ne i64 %i.al, %i.am
  %i.ao = icmp samesign ugt i32 %i.aa, 16383
  %.not46 = or i1 %i.ao, %i.an
  br i1 %.not46, label %replDataBufReadIntoLastBlock.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7288), align 8, !tbaa !333 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6568), align 8
  %spec.select = select i1 %i.aq, i64 %i.ar, i64 %i.ap ; 3 uses
  %.not47 = icmp eq i64 %spec.select, 0
  br i1 %.not47, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !334
  %i.au = icmp ugt i64 %i.at, %spec.select
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.aw = icmp sgt i32 %i.av, 2
  br i1 %i.aw, label %.critedge50, label %.critedge50.sink.split

.critedge50.sink.split:                           ; preds = %bb.l
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !73
  %.not48 = icmp eq ptr %i.ax, null
  %.str.225..str.224 = select i1 %.not48, ptr @.str.225, ptr @.str.224
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull %.str.225..str.224, i64 noundef %spec.select) #19
  br label %.critedge50

.critedge50:                                      ; preds = %bb.l, %.critedge50.sink.split
  %i.ay = load ptr, ptr %0, align 8, !tbaa !86
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !232
  %i.bb = tail call i32 %i.ba(ptr noundef nonnull %0, ptr noundef null) #19, !inline_history !233 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %replDataBufReadIntoLastBlock.exit.thread

bb.m:                                             ; preds = %bb.k, %.critedge
  %i.bc = call ptr @zmalloc_usable(i64 noundef 1048576, ptr noundef nonnull %i.a) #19 ; 3 uses
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !106
  %i.be = add i64 %i.bd, -16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !106
  store i64 0, ptr %i.bc, align 8, !tbaa !106
  %i.bg = load ptr, ptr %1, align 8, !tbaa !294
  %i.bh = call ptr @listAddNodeTail(ptr noundef %i.bg, ptr noundef nonnull %i.bc) #19 ; 0 uses
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !106
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !334
  %i.bl = add i64 %i.bk, %i.bi                    ; 3 uses
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !334
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !106
  %i.bn = add i64 %i.bm, 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !335
  %i.bq = add i64 %i.bn, %i.bp
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !335
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !336
  %i.bt = icmp ult i64 %i.bs, %i.bl
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.bl, ptr %i.br, align 8, !tbaa !336
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bu = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @server, i64 3112), i64 1 monotonic, align 8 ; 0 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !294
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !120
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !63 ; 6 uses
  %.not.i51 = icmp eq ptr %i.bz, null
  br i1 %.not.i51, label %.critedge.i52, label %bb.p, !prof !67

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !106 ; 2 uses
  %i.cc = load i64, ptr %i.bz, align 8, !tbaa !106 ; 3 uses
  %i.cd = icmp ugt i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.q, label %.critedge.i52, !prof !70

.critedge.i52:                                    ; preds = %bb.p, %bb.o
  call void @_serverAssert(ptr noundef nonnull @.str.312, ptr noundef nonnull @.str.1, i32 noundef 3950) #19
  call void @abort() #20
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  %i.cg = sub nuw i64 %i.cb, %i.cc
  %i.ch = load ptr, ptr %0, align 8, !tbaa !86
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !248
  %i.ck = call i32 %i.cj(ptr noundef nonnull %0, ptr noundef nonnull %i.cf, i64 noundef %i.cg) #19, !inline_history !330 ; 3 uses
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cm = icmp eq i32 %i.ck, 0
  br i1 %i.cm, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr i8, ptr %0, i64 8
  %.val.i54 = load i32, ptr %i.cn, align 8, !tbaa !203
  %.not25.i55 = icmp eq i32 %.val.i54, 3
  br i1 %.not25.i55, label %replDataBufReadIntoLastBlock.exit56, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void %2(ptr noundef nonnull %0) #19, !inline_history !331
  br label %replDataBufReadIntoLastBlock.exit56

bb.u:                                             ; preds = %bb.q
  %i.co = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.cp = load i64, ptr %i.bz, align 8, !tbaa !106
  %i.cq = add i64 %i.cp, %i.co
  store i64 %i.cq, ptr %i.bz, align 8, !tbaa !106
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !332
  %i.ct = add i64 %i.cs, %i.co
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !332
  %i.cu = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @server, i64 2960), i64 %i.co monotonic, align 8 ; 0 uses
  br label %replDataBufReadIntoLastBlock.exit56

replDataBufReadIntoLastBlock.exit56:              ; preds = %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %replDataBufReadIntoLastBlock.exit.thread

replDataBufReadIntoLastBlock.exit.thread:         ; preds = %bb.h, %bb.i, %bb.j, %replDataBufReadIntoLastBlock.exit56, %.critedge50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @replDataBufStreamToDb(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289  ; 4 uses
  tail call void @blockingOperationStarts() #19
  %i.c = load ptr, ptr %0, align 8, !tbaa !294    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %.not75 = icmp eq ptr %i.d, null
  br i1 %.not75, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %._crit_edge
  %i.m = phi ptr [ %i.d, %.lr.ph77 ], [ %i.aw, %._crit_edge ] ; 3 uses
  %i.n = phi ptr [ %i.c, %.lr.ph77 ], [ %i.av, %._crit_edge ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63   ; 6 uses
  tail call void @listUnlinkNode(ptr noundef nonnull %i.n, ptr noundef nonnull %i.m) #19
  tail call void @zfree(ptr noundef nonnull %i.m) #19
  %i.q = load i64, ptr %i.p, align 8, !tbaa !106  ; 2 uses
  %.not78 = icmp eq i64 %i.q, 0
  br i1 %.not78, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %i.s = phi i64 [ %i.q, %.lr.ph ], [ %i.ar, %bb.l ]
  %.04674 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %bb.l ] ; 3 uses
  %i.t = sub nuw i64 %i.s, %.04674
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.t, i64 16384) ; 6 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !234
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.04674
  %i.w = tail call ptr @sdscatlen(ptr noundef %i.u, ptr noundef nonnull %i.v, i64 noundef %spec.select) #19
  store ptr %i.w, ptr %i.e, align 8, !tbaa !234
  %i.x = load i64, ptr %i.f, align 8, !tbaa !237
  %i.y = add nsw i64 %i.x, %spec.select
  store i64 %i.y, ptr %i.f, align 8, !tbaa !237
  %i.z = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !126
  store i64 %i.z, ptr %i.g, align 8, !tbaa !76
  %i.aa = tail call i32 @processInputBuffer(ptr noundef %i.b) #19 ; 2 uses
  %.not55 = icmp eq i32 %i.aa, 0
  br i1 %.not55, label %bb.d, label %.thread70

bb.d:                                             ; preds = %bb.c
  %i.ab = add i64 %spec.select, %.04674           ; 2 uses
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !332
  %i.ad = sub i64 %i.ac, %spec.select
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !332
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7392), align 8, !tbaa !168
  %i.af = and i32 %i.ae, 8
  %.not56 = icmp eq i32 %i.af, 0
  br i1 %.not56, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @debugPauseProcess() #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2520), align 8, !tbaa !337 ; 3 uses
  %.not57 = icmp eq i64 %i.ag, 0
  %.pre80 = load i64, ptr %i.i, align 8, !tbaa !290 ; 4 uses
  br i1 %.not57, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = add i64 %.pre80, %spec.select
  %i.ai = udiv i64 %i.ah, %i.ag
  %i.aj = udiv i64 %.pre80, %i.ag
  %i.ak = icmp ugt i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !292
  tail call void %i.al(ptr noundef nonnull %1) #19
  tail call void @processEventsWhileBlocked() #19
  %.pre = load i64, ptr %i.i, align 8, !tbaa !290
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.am = phi i64 [ %.pre, %bb.h ], [ %.pre80, %bb.g ], [ %.pre80, %bb.f ]
  %i.an = add i64 %i.am, %spec.select
  store i64 %i.an, ptr %i.i, align 8, !tbaa !290
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !291
  %i.ap = tail call i32 %i.ao(ptr noundef nonnull %1) #19
  %.not58 = icmp eq i32 %i.ap, 0
  br i1 %.not58, label %.thread70, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7056), align 8, !tbaa !338 ; 2 uses
  %.not59 = icmp eq i32 %i.aq, 0
  br i1 %.not59, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @debugDelay(i32 noundef %i.aq) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ar = load i64, ptr %i.p, align 8, !tbaa !106 ; 2 uses
  %i.as = icmp ult i64 %i.ab, %i.ar
  br i1 %i.as, label %bb.c, label %._crit_edge

.thread70:                                        ; preds = %bb.i, %bb.c
  %.2.ph = phi i32 [ -1, %bb.i ], [ %i.aa, %bb.c ]
  tail call void @zfree(ptr noundef nonnull %i.p) #19
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.l, %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !106 ; 2 uses
  tail call void @zfree(ptr noundef nonnull %i.p) #19
  %3 = load i64, ptr %2, align 8, !tbaa !334
  %4 = sub i64 %3, %i.au
  store i64 %4, ptr %2, align 8, !tbaa !334
  %5 = load i64, ptr %i.l, align 8, !tbaa !335
  %reass.sub = sub i64 %5, %i.au
  %6 = add i64 %reass.sub, -40
  store i64 %6, ptr %i.l, align 8, !tbaa !335
  %i.av = load ptr, ptr %0, align 8, !tbaa !294   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !104 ; 2 uses
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %._crit_edge, %bb.a, %.thread70
  %.4 = phi i32 [ %.2.ph, %.thread70 ], [ 0, %bb.a ], [ 0, %._crit_edge ]
  tail call void @blockingOperationEnds() #19
  ret i32 %.4
}

declare void @blockingOperationStarts() local_unnamed_addr #1

declare void @listUnlinkNode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @processInputBuffer(ptr noundef) local_unnamed_addr #1

declare void @debugDelay(i32 noundef) local_unnamed_addr #1

declare void @blockingOperationEnds() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @replicaofCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !172
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.226) #19
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8692), align 4, !tbaa !173
  %.not19 = icmp eq i32 %i.c, 0
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.227) #19
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116
  %i.j = tail call i32 @strcasecmp(ptr noundef %i.i, ptr noundef nonnull @.str.228) #22
  %.not20 = icmp eq i32 %i.j, 0
  br i1 %.not20, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !116
  %i.o = tail call i32 @strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.229) #22
  %.not21 = icmp eq i32 %i.o, 0
  br i1 %.not21, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !73
  %.not22 = icmp eq ptr %i.p, null
  br i1 %.not22, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @replicationUnsetMaster()
  %i.q = tail call ptr @sdsempty() #19
  %i.r = tail call ptr @catClientInfoString(ptr noundef %i.q, ptr noundef nonnull %0) #19 ; 2 uses
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.t = icmp sgt i32 %i.s, 2
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.230, ptr noundef %i.r) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  tail call void @sdsfree(ptr noundef %i.r) #19
  br label %bb.v

bb.k:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = and i64 %i.v, 1
  %.not23 = icmp eq i64 %i.w, 0
  br i1 %.not23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.231) #19
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !128
  %i.z = call i32 @getRangeLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.y, i64 noundef 0, i64 noundef 65535, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.232) #19
  %.not24 = icmp eq i32 %i.z, 0
  br i1 %.not24, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !73 ; 2 uses
  %.not25 = icmp eq ptr %i.aa, null
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !158
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre28 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !128
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %.pre28, i64 8
  %.pre30 = load ptr, ptr %.phi.trans.insert29, align 8, !tbaa !116 ; 2 uses
  br i1 %.not25, label %._crit_edge, label %bb.o

._crit_edge:                                      ; preds = %bb.n
  %.pre31 = load i64, ptr %i.a, align 8, !tbaa !106
  br label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ab = call i32 @strcasecmp(ptr noundef nonnull %i.aa, ptr noundef %.pre30) #22
  %.not26 = icmp eq i32 %i.ab, 0
  %.pre32 = load i64, ptr %i.a, align 8, !tbaa !106 ; 2 uses
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7448), align 8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i64 %.pre32, %i.ad
  %or.cond = select i1 %.not26, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.ag = icmp sgt i32 %i.af, 2
  br i1 %i.ag, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.233) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ah = call ptr @sdsnew(ptr noundef nonnull @.str.234) #19
  call void @addReplySds(ptr noundef nonnull %0, ptr noundef %i.ah) #19
  br label %.thread

bb.s:                                             ; preds = %._crit_edge, %bb.o
  %i.ai = phi i64 [ %.pre31, %._crit_edge ], [ %.pre32, %bb.o ]
  %i.aj = trunc i64 %i.ai to i32
  call void @replicationSetMaster(ptr noundef %.pre30, i32 noundef %i.aj)
  %i.ak = call ptr @sdsempty() #19
  %i.al = call ptr @catClientInfoString(ptr noundef %i.ak, ptr noundef nonnull %0) #19 ; 2 uses
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.an = icmp sgt i32 %i.am, 2
  br i1 %i.an, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !73
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7448), align 8, !tbaa !250
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.235, ptr noundef %i.ao, i32 noundef %i.ap, ptr noundef %i.al) #19
  br label %bb.u

.thread:                                          ; preds = %bb.l, %bb.r, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.w

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @sdsfree(ptr noundef %i.al) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.g, %bb.j
  %i.aq = load ptr, ptr @shared, align 8, !tbaa !196
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.aq) #19
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %bb.d, %bb.b
  ret void
}

declare void @addReplySds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @roleCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = alloca [46 x i8], align 16               ; 4 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 204), align 4, !tbaa !339
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @sentinelRoleCommand(ptr noundef %0) #19
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !73
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  tail call void @addReplyArrayLen(ptr noundef %0, i64 noundef 3) #19
  tail call void @addReplyBulkCBuffer(ptr noundef %0, ptr noundef nonnull @.str.236, i64 noundef 6) #19
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7232), align 8, !tbaa !98
  tail call void @addReplyLongLong(ptr noundef %0, i64 noundef %i.e) #19
end_hunk_0
