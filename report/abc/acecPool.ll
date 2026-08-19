inline.NumInlined: 268
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Acec_ManCollectCarryRoots:bb.a
  br i1 %i.p, label %.lr.ph, label %Vec_BitFree.exit

.lr.ph:                                           ; preds = %Vec_BitStart.exit.thread, %Vec_BitStart.exit
  %.val2651 = phi i32 [ %.val2650, %Vec_BitStart.exit.thread ], [ %.val26, %Vec_BitStart.exit ] ; 2 uses
  %i.q = phi ptr [ %i.o, %Vec_BitStart.exit.thread ], [ %i.m, %Vec_BitStart.exit ]
  %i.r = phi ptr [ null, %Vec_BitStart.exit.thread ], [ %calloc, %Vec_BitStart.exit ] ; 5 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %.val31 = load ptr, ptr %i.s, align 8, !tbaa !31
  br label %bb.b

.lr.ph36:                                         ; preds = %bb.b
  %i.t = getelementptr i8, ptr %1, i64 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %i.u = phi i64 [ 0, %.lr.ph ], [ %i.aw, %bb.b ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val31, i64 %i.u ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33   ; 2 uses
  %i.x = and i32 %i.w, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = ashr i32 %i.w, 5
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33
  %i.ad = or i32 %i.y, %i.ac
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33 ; 2 uses
  %i.ag = and i32 %i.af, 31
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = ashr i32 %i.af, 5
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !33
  %i.am = or i32 %i.ah, %i.al
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !33 ; 2 uses
  %i.ap = and i32 %i.ao, 31
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = ashr i32 %i.ao, 5
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !33
  %i.av = or i32 %i.aq, %i.au
  store i32 %i.av, ptr %i.at, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = mul nuw nsw i64 %indvars.iv.next, 6     ; 2 uses
  %i.ax = trunc nuw i64 %i.aw to i32
  %i.ay = icmp sgt i32 %.val2651, %i.ax
  br i1 %i.ay, label %bb.b, label %.lr.ph36, !llvm.loop !38

bb.c:                                             ; preds = %.lr.ph36, %bb.m
  %.val2541 = phi i32 [ %.val2651, %.lr.ph36 ], [ %.val25, %bb.m ]
  %i.az = phi ptr [ %i.c, %.lr.ph36 ], [ %i.cd, %bb.m ] ; 3 uses
  %i.ba = phi ptr [ %i.c, %.lr.ph36 ], [ %i.ce, %bb.m ] ; 5 uses
  %i.bb = phi i32 [ 100, %.lr.ph36 ], [ %i.cf, %bb.m ] ; 8 uses
  %i.bc = phi i32 [ 0, %.lr.ph36 ], [ %i.cg, %bb.m ] ; 4 uses
  %indvars.iv38 = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next39, %bb.m ]
  %i.bd = phi i64 [ 0, %.lr.ph36 ], [ %i.ch, %bb.m ]
  %.val28 = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !33 ; 3 uses
  %i.bh = ashr i32 %i.bg, 5
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !33
  %i.bl = and i32 %i.bg, 31
  %i.bm = shl nuw i32 1, %i.bl
  %i.bn = and i32 %i.bm, %i.bk
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.bo = icmp eq i32 %i.bc, %i.bb
  br i1 %i.bo, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.bp = icmp slt i32 %i.bb, 16
  br i1 %i.bp, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %i.ba, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ba, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.br = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.bs = icmp samesign ult i32 %i.bb, 1073741823
  %i.bt = shl nuw nsw i32 %i.bb, 1
  %spec.select.i = select i1 %i.bs, i32 %i.bt, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bb, %spec.select.i
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %i.ba, null
  %i.bu = zext nneg i32 %spec.select.i to i64
  %i.bv = shl nuw nsw i64 %i.bu, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = tail call ptr @realloc(ptr noundef nonnull %i.ba, i64 noundef %i.bv) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.bx = tail call noalias ptr @malloc(i64 noundef %i.bv) #22
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %storemerge = phi ptr [ %i.br, %bb.h ], [ %i.bq, %bb.g ], [ %i.bw, %bb.k ], [ %i.bx, %bb.l ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 2 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !31
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !30
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %bb.i, %Vec_IntGrow.exit11.sink.split.i
  %i.by = phi ptr [ %i.az, %bb.d ], [ %i.az, %bb.i ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.bz = phi i32 [ %i.bb, %bb.d ], [ %i.bb, %bb.i ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ca = add nsw i32 %i.bc, 1                    ; 2 uses
  store i32 %i.ca, ptr %i.b, align 4, !tbaa !32
  %i.cb = sext i32 %i.bc to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cb
  store i32 %i.bg, ptr %i.cc, align 4, !tbaa !33
  %.val25.pre = load i32, ptr %i.q, align 4, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %Vec_IntPush.exit
  %.val25 = phi i32 [ %.val2541, %bb.c ], [ %.val25.pre, %Vec_IntPush.exit ] ; 2 uses
  %i.cd = phi ptr [ %i.az, %bb.c ], [ %i.by, %Vec_IntPush.exit ]
  %i.ce = phi ptr [ %i.ba, %bb.c ], [ %i.by, %Vec_IntPush.exit ]
  %i.cf = phi i32 [ %i.bb, %bb.c ], [ %i.bz, %Vec_IntPush.exit ]
  %i.cg = phi i32 [ %i.bc, %bb.c ], [ %i.ca, %Vec_IntPush.exit ]
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %i.ch = mul nuw nsw i64 %indvars.iv.next39, 6   ; 2 uses
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = icmp sgt i32 %.val25, %i.ci
  br i1 %i.cj, label %bb.c, label %._crit_edge.thread, !llvm.loop !39

._crit_edge:                                      ; preds = %Vec_BitStart.exit
  %.not.i = icmp eq ptr %calloc, null
  br i1 %.not.i, label %Vec_BitFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  %i.ck = phi ptr [ %calloc, %._crit_edge ], [ %i.r, %bb.m ]
  tail call void @free(ptr noundef nonnull %i.ck) #24
  br label %Vec_BitFree.exit

Vec_BitFree.exit:                                 ; preds = %Vec_BitStart.exit.thread, %._crit_edge, %._crit_edge.thread
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_ManCollectXorRoots(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !32
  store i32 100, ptr %i.a, align 8, !tbaa !30
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #22 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !31
  %i.e = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.e, align 8, !tbaa !8   ; 2 uses
  %i.f = ashr i32 %.val, 5
  %i.g = and i32 %.val, 31
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = add nsw i32 %i.f, %i.i                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %Vec_BitStart.exit.thread, label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %bb.a
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.l) ; 3 uses
  %i.m = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val26 = load i32, ptr %i.m, align 4, !tbaa !32 ; 2 uses
  %i.n = icmp sgt i32 %.val26, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

Vec_BitStart.exit.thread:                         ; preds = %bb.a
  %i.o = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val2653 = load i32, ptr %i.o, align 4, !tbaa !32 ; 2 uses
  %i.p = icmp sgt i32 %.val2653, 0
  br i1 %i.p, label %.lr.ph, label %Vec_BitFree.exit

.lr.ph:                                           ; preds = %Vec_BitStart.exit.thread, %Vec_BitStart.exit
  %.val2654 = phi i32 [ %.val2653, %Vec_BitStart.exit.thread ], [ %.val26, %Vec_BitStart.exit ] ; 2 uses
  %i.q = phi ptr [ %i.o, %Vec_BitStart.exit.thread ], [ %i.m, %Vec_BitStart.exit ]
  %i.r = phi ptr [ null, %Vec_BitStart.exit.thread ], [ %calloc, %Vec_BitStart.exit ] ; 5 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %.val31 = load ptr, ptr %i.s, align 8, !tbaa !31
  %2 = add nsw i32 %.val2654, -1
  %3 = lshr i32 %2, 2
  %4 = add nuw nsw i32 %3, 1
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.b

.lr.ph36:                                         ; preds = %bb.b
  %i.t = getelementptr i8, ptr %1, i64 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv37 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next38, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val31, i64 %indvars.iv ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33   ; 2 uses
  %i.x = and i32 %i.w, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = ashr i32 %i.w, 5
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33
  %i.ad = or i32 %i.y, %i.ac
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33 ; 2 uses
  %i.ag = and i32 %i.af, 31
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = ashr i32 %i.af, 5
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !33
  %i.am = or i32 %i.ah, %i.al
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !33 ; 2 uses
  %i.ap = and i32 %i.ao, 31
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = ashr i32 %i.ao, 5
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !33
  %i.av = or i32 %i.aq, %i.au
  store i32 %i.av, ptr %i.at, align 4, !tbaa !33
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph36, label %bb.b, !llvm.loop !40

bb.c:                                             ; preds = %.lr.ph36, %bb.m
  %.val2545 = phi i32 [ %.val2654, %.lr.ph36 ], [ %.val25, %bb.m ]
  %i.aw = phi ptr [ %i.c, %.lr.ph36 ], [ %i.ca, %bb.m ] ; 3 uses
  %i.ax = phi ptr [ %i.c, %.lr.ph36 ], [ %i.cb, %bb.m ] ; 5 uses
  %i.ay = phi i32 [ 100, %.lr.ph36 ], [ %i.cc, %bb.m ] ; 8 uses
  %i.az = phi i32 [ 0, %.lr.ph36 ], [ %i.cd, %bb.m ] ; 4 uses
  %indvars.iv42 = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next43, %bb.m ]
  %i.ba = phi i64 [ 0, %.lr.ph36 ], [ %i.ce, %bb.m ]
  %.val28 = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.bb = and i64 %i.ba, 4294967292
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !33 ; 3 uses
  %i.be = ashr i32 %i.bd, 5
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !33
  %i.bi = and i32 %i.bd, 31
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = and i32 %i.bj, %i.bh
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.bl = icmp eq i32 %i.az, %i.ay
  br i1 %i.bl, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.bm = icmp slt i32 %i.ay, 16
  br i1 %i.bm, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %i.ax, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ax, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.bo = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.bp = icmp samesign ult i32 %i.ay, 1073741823
  %i.bq = shl nuw nsw i32 %i.ay, 1
  %spec.select.i = select i1 %i.bp, i32 %i.bq, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ay, %spec.select.i
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %i.ax, null
  %i.br = zext nneg i32 %spec.select.i to i64
  %i.bs = shl nuw nsw i64 %i.br, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = tail call ptr @realloc(ptr noundef nonnull %i.ax, i64 noundef %i.bs) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bs) #22
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %storemerge = phi ptr [ %i.bo, %bb.h ], [ %i.bn, %bb.g ], [ %i.bt, %bb.k ], [ %i.bu, %bb.l ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 2 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !31
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !30
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %bb.i, %Vec_IntGrow.exit11.sink.split.i
  %i.bv = phi ptr [ %i.aw, %bb.d ], [ %i.aw, %bb.i ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.bw = phi i32 [ %i.ay, %bb.d ], [ %i.ay, %bb.i ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.bx = add nsw i32 %i.az, 1                    ; 2 uses
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !32
  %i.by = sext i32 %i.az to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.by
  store i32 %i.bd, ptr %i.bz, align 4, !tbaa !33
  %.val25.pre = load i32, ptr %i.q, align 4, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %Vec_IntPush.exit
  %.val25 = phi i32 [ %.val2545, %bb.c ], [ %.val25.pre, %Vec_IntPush.exit ] ; 2 uses
  %i.ca = phi ptr [ %i.aw, %bb.c ], [ %i.bv, %Vec_IntPush.exit ]
  %i.cb = phi ptr [ %i.ax, %bb.c ], [ %i.bv, %Vec_IntPush.exit ]
  %i.cc = phi i32 [ %i.ay, %bb.c ], [ %i.bw, %Vec_IntPush.exit ]
  %i.cd = phi i32 [ %i.az, %bb.c ], [ %i.bx, %Vec_IntPush.exit ]
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.ce = shl nsw i64 %indvars.iv.next43, 2       ; 2 uses
  %i.cf = sext i32 %.val25 to i64
  %i.cg = icmp slt i64 %i.ce, %i.cf
  br i1 %i.cg, label %bb.c, label %._crit_edge.thread, !llvm.loop !41

._crit_edge:                                      ; preds = %Vec_BitStart.exit
  %.not.i = icmp eq ptr %calloc, null
  br i1 %.not.i, label %Vec_BitFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  %i.ch = phi ptr [ %calloc, %._crit_edge ], [ %i.r, %bb.m ]
  tail call void @free(ptr noundef nonnull %i.ch) #24
  br label %Vec_BitFree.exit

Vec_BitFree.exit:                                 ; preds = %Vec_BitStart.exit.thread, %._crit_edge, %._crit_edge.thread
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Acec_ManCountXorTreeInputs_rec(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 176
  %.val31 = load i32, ptr %i.b, align 8, !tbaa !42 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 624
  %.val32 = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %.val32, i64 %i.d ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %.not = icmp eq i32 %i.f, %.val31
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %.val31, ptr %i.e, align 4, !tbaa !33
  %i.g = getelementptr i8, ptr %3, i64 8
  %.val29 = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds [4 x i8], ptr %.val29, i64 %i.d
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.k = shl nsw i32 %i.i, 2
  %i.l = getelementptr i8, ptr %2, i64 8          ; 4 uses
  %i.m = sext i32 %i.k to i64                     ; 4 uses
  %.val28 = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr [4 x i8], ptr %.val28, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !33
  tail call void @Acec_ManCountXorTreeInputs_rec(ptr noundef nonnull %0, i32 noundef %i.p, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %.val28.1 = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.q = getelementptr [4 x i8], ptr %.val28.1, i64 %i.m
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33
  tail call void @Acec_ManCountXorTreeInputs_rec(ptr noundef nonnull %0, i32 noundef %i.s, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %.val28.2 = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.t = getelementptr [4 x i8], ptr %.val28.2, i64 %i.m
  %i.u = getelementptr i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !33
  tail call void @Acec_ManCountXorTreeInputs_rec(ptr noundef nonnull %0, i32 noundef %i.v, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %.val = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.w = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.m
  %i.x = load i32, ptr %i.w, align 4, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32   ; 7 uses
  %i.aa = load i32, ptr %6, align 8, !tbaa !30
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.o, label %Vec_IntPush.exit42

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr i8, ptr %4, i64 8
  %.val30 = load ptr, ptr %i.ac, align 8, !tbaa !44
  %i.ad = ashr i32 %1, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.val30, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33
  %i.ah = and i32 %1, 31
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = and i32 %i.ag, %i.ai
  %.not27 = icmp eq i32 %i.aj, 0
  br i1 %.not27, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32 ; 7 uses
  %i.am = load i32, ptr %5, align 8, !tbaa !30
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp slt i32 %i.al, 16
  br i1 %i.ao, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aq, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aq, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

bb.i:                                             ; preds = %bb.g
  %i.as = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.i, %bb.h
end_hunk_0
