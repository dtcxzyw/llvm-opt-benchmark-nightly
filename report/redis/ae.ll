Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/ae?download=true
inline.NumInlined: 9
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@aeGetFileEvents:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @aeCreateTimeEvent(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !24
  %i.d = tail call noalias dereferenceable_or_null(64) ptr @zmalloc(i64 noundef 64) #18 ; 11 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.d, align 8, !tbaa !48
  %i.f = load ptr, ptr @getMonotonicUs, align 8, !tbaa !49
  %i.g = tail call i64 %i.f() #17
  %i.h = mul nsw i64 %1, 1000
  %i.i = add i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %2, ptr %i.k, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %4, ptr %i.l, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %3, ptr %i.m, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr null, ptr %i.n, align 8, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.p, ptr %i.q, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 0, ptr %i.r, align 8, !tbaa !53
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.d, ptr %i.s, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.d, ptr %i.o, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i64 [ %i.b, %bb.d ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @aeDeleteTimeEvent(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.08 = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %.not9 = icmp eq ptr %.08, null
  br i1 %.not9, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.010 = phi ptr [ %.0, %bb.c ], [ %.08, %bb.a ] ; 3 uses
  %i.b = load i64, ptr %.010, align 8, !tbaa !48
  %i.c = icmp eq i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i64 -1, ptr %.010, align 8, !tbaa !48
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.010, i64 48
  %.0 = load ptr, ptr %i.d, align 8, !tbaa !64    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !63

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.06 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: nounwind uwtable
define dso_local i32 @aeProcessEvents(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 2
  %.not.not = icmp eq i32 %i.a, 0                 ; 2 uses
  %i.b = and i32 %1, 3
  %or.cond = icmp eq i32 %i.b, 0
  br i1 %or.cond, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !26
  %.not84 = icmp ne i32 %i.c, -1
  %i.d = and i32 %1, 6
  %or.cond101 = icmp eq i32 %i.d, 2
  %or.cond133 = or i1 %or.cond101, %.not84
  br i1 %or.cond133, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %.not86 = icmp eq ptr %i.f, null
  %i.g = and i32 %1, 8
  %.not87 = icmp eq i32 %i.g, 0
  %or.cond102 = or i1 %.not87, %.not86
  br i1 %or.cond102, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.f(ptr noundef nonnull %0) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = and i32 %1, 4
  %.not88 = icmp eq i32 %i.h, 0
  br i1 %.not88, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !36
  %i.k = and i32 %i.j, 4
  %.not89 = icmp ne i32 %i.k, 0                   ; 2 uses
  %brmerge = or i1 %.not89, %.not.not
  %not..not89 = xor i1 %.not89, true
  %.mux = sext i1 %not..not89 to i32
  br i1 %brmerge, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.l, align 8, !tbaa !23  ; 2 uses
  %i.m = icmp eq ptr %.val, null
  br i1 %i.m, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %bb.j
  %.02.i = phi ptr [ %.1.i, %bb.j ], [ null, %bb.g ] ; 4 uses
  %.0131.i = phi ptr [ %i.u, %bb.j ], [ %.val, %bb.g ] ; 4 uses
  %.not19.i = icmp eq ptr %.02.i, null
  br i1 %.not19.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0131.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %.02.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !50
  %i.r = icmp ult i64 %i.o, %i.q
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %.preheader.i
  %i.s = load i64, ptr %.0131.i, align 8, !tbaa !48
  %.not20.i = icmp eq i64 %i.s, -1
  %spec.select.i = select i1 %.not20.i, ptr %.02.i, ptr %.0131.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.i = phi ptr [ %.02.i, %bb.h ], [ %spec.select.i, %bb.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0131.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %usUntilEarliestTimer.exit, label %.preheader.i, !llvm.loop !65

usUntilEarliestTimer.exit:                        ; preds = %bb.j
  %i.v = load ptr, ptr @getMonotonicUs, align 8, !tbaa !49
  %i.w = tail call i64 %i.v() #17, !inline_history !66
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !50
  %spec.select21.i = tail call i64 @llvm.usub.sat.i64(i64 %i.y, i64 %i.w) ; 3 uses
  %i.z = icmp sgt i64 %spec.select21.i, -1
  br i1 %i.z, label %bb.k, label %.thread

bb.k:                                             ; preds = %usUntilEarliestTimer.exit
  %i.aa = udiv i64 %spec.select21.i, 1000000
  %i.ab = urem i64 %spec.select21.i, 1000000
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %.lhs.trunc = add nuw nsw i32 %i.ac, 999
  %i.ad = udiv i32 %.lhs.trunc, 1000
  %i.ae = trunc i64 %i.aa to i32
  %i.af = mul i32 %i.ae, 1000
  %i.ag = add i32 %i.af, %i.ad
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.k, %bb.e, %bb.g, %usUntilEarliestTimer.exit
  %i.ah = phi i32 [ -1, %bb.g ], [ -1, %usUntilEarliestTimer.exit ], [ 0, %bb.e ], [ %i.ag, %bb.k ], [ %.mux, %bb.f ]
  %.pn.in = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !31 ; 2 uses
  %i.ai = load i32, ptr %.pn, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !29
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %.in, align 4, !tbaa !22
  %i.am = tail call i32 @epoll_wait(i32 noundef %i.ai, ptr noundef %i.ak, i32 noundef %i.al, i32 noundef %i.ah) #17 ; 5 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.preheader.i105, label %bb.l

.preheader.i105:                                  ; preds = %.thread
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !29 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.am to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.am, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i105
  %i.ar = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.as = getelementptr i8, ptr %i.aq, i64 %i.ar
  %i.at = mul nuw nsw i64 %wide.trip.count.i, 12
  %i.au = getelementptr i8, ptr %i.ao, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  %bound0 = icmp ult ptr %i.aq, %i.av
  %bound1 = icmp ult ptr %i.ao, %i.as
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %wide.trip.count.i, -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count.i  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.aw, align 1, !tbaa !43, !alias.scope !75
  %i.ba = load i32, ptr %i.ay, align 1, !tbaa !43, !alias.scope !75
  %i.bb = insertelement <2 x i32> poison, i32 %i.az, i64 0
  %i.bc = insertelement <2 x i32> %i.bb, i32 %i.ba, i64 1 ; 3 uses
  %i.bd = and <2 x i32> %i.bc, splat (i32 1)
  %i.be = lshr <2 x i32> %i.bc, splat (i32 1)
  %i.bf = and <2 x i32> %i.be, splat (i32 2)
  %i.bg = or disjoint <2 x i32> %i.bf, %i.bd
  %i.bh = and <2 x i32> %i.bc, splat (i32 24)
  %i.bi = icmp eq <2 x i32> %i.bh, zeroinitializer
  %i.bj = select <2 x i1> %i.bi, <2 x i32> %i.bg, <2 x i32> splat (i32 3)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bm = load i32, ptr %i.bk, align 1, !tbaa !44, !alias.scope !75
  %i.bn = load i32, ptr %i.bl, align 1, !tbaa !44, !alias.scope !75
  %i.bo = insertelement <2 x i32> poison, i32 %i.bm, i64 0
  %i.bp = insertelement <2 x i32> %i.bo, i32 %i.bn, i64 1
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %interleaved.vec = shufflevector <2 x i32> %i.bp, <2 x i32> %i.bj, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bq, align 4, !tbaa !12, !alias.scope !76, !noalias !75
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %scalar.ph.preheader, label %vector.body, !llvm.loop !70

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.preheader.i105
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i105 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %indvars.iv.i ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 1, !tbaa !43 ; 3 uses
  %spec.select.i106 = and i32 %i.bt, 1
  %i.bu = lshr i32 %i.bt, 1
  %i.bv = and i32 %i.bu, 2
  %.1.i107 = or disjoint i32 %i.bv, %spec.select.i106
  %i.bw = and i32 %i.bt, 24
  %i.bx = icmp eq i32 %i.bw, 0
  %.3.i = select i1 %i.bx, i32 %.1.i107, i32 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bz = load i32, ptr %i.by, align 1, !tbaa !44
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i ; 2 uses
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !80
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 %.3.i, ptr %i.cb, align 4, !tbaa !81
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %aeApiPoll.exit, label %scalar.ph, !llvm.loop !71

bb.l:                                             ; preds = %.thread
  %i.cc = icmp eq i32 %i.am, -1
  br i1 %i.cc, label %bb.m, label %aeApiPoll.exit

bb.m:                                             ; preds = %bb.l
  %i.cd = tail call ptr @__errno_location() #20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !12 ; 2 uses
  %.not35.i = icmp eq i32 %i.ce, 4
  br i1 %.not35.i, label %aeApiPoll.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = tail call ptr @strerror(i32 noundef %i.ce) #17
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 111, ptr noundef nonnull @.str.1, ptr noundef %i.cf) #17
  tail call void @abort() #21
  unreachable

aeApiPoll.exit:                                   ; preds = %scalar.ph, %bb.l, %bb.m
  %.030.i = phi i32 [ 0, %bb.l ], [ 0, %bb.m ], [ %i.am, %scalar.ph ] ; 2 uses
  %.not90 = trunc i32 %1 to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !55 ; 2 uses
  %.not91 = icmp eq ptr %i.ch, null
  %i.ci = and i32 %1, 16
  %.not92 = icmp eq i32 %i.ci, 0
  %or.cond103 = or i1 %.not92, %.not91
  br i1 %or.cond103, label %bb.p, label %bb.o

bb.o:                                             ; preds = %aeApiPoll.exit
  tail call void %i.ch(ptr noundef nonnull %0) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %aeApiPoll.exit
  %i.cj = icmp ne i32 %.030.i, 0
  %i.ck = and i1 %i.cj, %.not90
  br i1 %i.ck, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cn = zext nneg i32 %.030.i to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %.thread129
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread129 ] ; 2 uses
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !21
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !80 ; 4 uses
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !20 ; 2 uses
  %i.cs = sext i32 %i.cq to i64                   ; 4 uses
  %i.ct = getelementptr inbounds [32 x i8], ptr %i.cr, i64 %i.cs ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !81 ; 7 uses
  %i.cw = load i32, ptr %i.ct, align 8, !tbaa !33 ; 3 uses
  %i.cx = and i32 %i.cw, 4
  %.not93 = icmp eq i32 %i.cx, 0                  ; 2 uses
  br i1 %.not93, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cy = and i32 %i.cv, 1
  %i.cz = and i32 %i.cy, %i.cw
  %.not94 = icmp eq i32 %i.cz, 0
  br i1 %.not94, label %bb.s, label %.thread116

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.da = and i32 %i.cv, 2
  %i.db = and i32 %i.da, %i.cw
  %.not95 = icmp eq i32 %i.db, 0
  br i1 %.not95, label %bb.v, label %._crit_edge139

._crit_edge139:                                   ; preds = %bb.s
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  br label %bb.u

.thread116:                                       ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !45
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !47
  tail call void %i.dd(ptr noundef nonnull %0, i32 noundef %i.cq, ptr noundef %i.df, i32 noundef %i.cv) #17
  %i.dg = load ptr, ptr %i.cm, align 8, !tbaa !20 ; 2 uses
  %i.dh = getelementptr inbounds [32 x i8], ptr %i.dg, i64 %i.cs ; 3 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !33
  %i.dj = and i32 %i.cv, 2
  %i.dk = and i32 %i.dj, %i.di
  %.not95120 = icmp eq i32 %i.dk, 0
  br i1 %.not95120, label %.thread129, label %bb.t

bb.t:                                             ; preds = %.thread116
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !46 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !45
  %.not97 = icmp eq ptr %i.dm, %i.do
  br i1 %.not97, label %.thread129, label %bb.u

bb.u:                                             ; preds = %._crit_edge139, %bb.t
  %i.dp = phi ptr [ %i.dm, %bb.t ], [ %.pre, %._crit_edge139 ]
  %i.dq = phi ptr [ %i.dg, %bb.t ], [ %i.cr, %._crit_edge139 ]
  %i.dr = getelementptr inbounds [32 x i8], ptr %i.dq, i64 %i.cs
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !47
  tail call void %i.dp(ptr noundef nonnull %0, i32 noundef %i.cq, ptr noundef %i.dt, i32 noundef %i.cv) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.not99 = phi i1 [ false, %bb.u ], [ true, %bb.s ]
  br i1 %.not93, label %.thread129, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.du = load ptr, ptr %i.cm, align 8, !tbaa !20
  %i.dv = getelementptr inbounds [32 x i8], ptr %i.du, i64 %i.cs ; 5 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !33
  %i.dx = and i32 %i.cv, 1
  %i.dy = and i32 %i.dx, %i.dw
  %.not98 = icmp eq i32 %i.dy, 0
  br i1 %.not98, label %.thread129, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not99, label %._crit_edge140, label %bb.y

._crit_edge140:                                   ; preds = %bb.x
  %.phi.trans.insert141 = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.pre142 = load ptr, ptr %.phi.trans.insert141, align 8, !tbaa !45
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !46
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !45 ; 2 uses
  %.not100 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not100, label %.thread129, label %bb.z

bb.z:                                             ; preds = %._crit_edge140, %bb.y
  %i.ed = phi ptr [ %.pre142, %._crit_edge140 ], [ %i.ec, %bb.y ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !47
  tail call void %i.ed(ptr noundef nonnull %0, i32 noundef %i.cq, ptr noundef %i.ef, i32 noundef %i.cv) #17
  br label %.thread129

.thread129:                                       ; preds = %bb.t, %.thread116, %bb.w, %bb.y, %bb.z, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.eg = icmp samesign ult i64 %indvars.iv.next, %i.cn
end_hunk_0
