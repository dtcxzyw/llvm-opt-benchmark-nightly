Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acecXor?download=true
inline.NumInlined: 242
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Acec_MapMajOuts:bb.a
._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %Vec_BitStart.exit
  ret ptr %i.g
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_MapMajOuts2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !8   ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.c = add i32 %.val, -1
  %or.cond.i.i = icmp ult i32 %i.c, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.b, align 8, !tbaa !35
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !31
  store i32 %.val, ptr %i.d, align 4, !tbaa !30
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #21 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !31
  store i32 %.val, ptr %i.d, align 4, !tbaa !30
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.j = sext i32 %.val to i64
  %i.k = shl nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 -1, i64 %i.k, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val16 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.h, %bb.b ]
  %i.l = getelementptr i8, ptr %1, i64 4
  %.val1217 = load i32, ptr %i.l, align 4, !tbaa !30 ; 2 uses
  %i.m = icmp sgt i32 %.val1217, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_IntStartFull.exit
  %i.n = getelementptr i8, ptr %1, i64 8
  %.val15 = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.o = getelementptr i8, ptr %2, i64 8
  %.val14 = load ptr, ptr %i.o, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.p = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.e ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %.val14, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32
  %.not = icmp eq i32 %i.v, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds [4 x i8], ptr %.val16, i64 %i.t
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = mul nuw nsw i64 %indvars.iv.next, 6      ; 2 uses
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = icmp sgt i32 %.val1217, %i.z
  br i1 %i.aa, label %bb.c, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.e, %Vec_IntStartFull.exit
  ret ptr %i.b
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_MapXorIns(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.b = ashr i32 %.val, 5
  %i.c = and i32 %.val, 31
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e                   ; 3 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.h = shl nsw i32 %i.f, 5                      ; 2 uses
  store i32 %i.h, ptr %i.g, align 8, !tbaa !42
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %Vec_BitStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %i.f to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #21
  br label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi8.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !44
  store i32 %i.h, ptr %i.m, align 4, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.pre-phi8.i, i1 false)
  %i.o = getelementptr i8, ptr %1, i64 4
  %.val14 = load i32, ptr %i.o, align 4, !tbaa !30 ; 2 uses
  %i.p = icmp sgt i32 %.val14, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_BitStart.exit
  %i.q = getelementptr i8, ptr %1, i64 8
  %.val17 = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.r = add nsw i32 %.val14, -1
  %i.s = lshr i32 %i.r, 2
  %i.t = add nuw nsw i32 %i.s, 1
  %wide.trip.count = zext nneg i32 %i.t to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv22 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next23, %bb.c ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val17, i64 %indvars.iv ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32   ; 2 uses
  %i.x = and i32 %i.w, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = ashr i32 %i.w, 5
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = or i32 %i.y, %i.ac
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !32 ; 2 uses
  %i.ag = and i32 %i.af, 31
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = ashr i32 %i.af, 5
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %i.am = or i32 %i.ah, %i.al
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32 ; 2 uses
  %i.ap = and i32 %i.ao, 31
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = ashr i32 %i.ao, 5
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32
  %i.av = or i32 %i.aq, %i.au
  store i32 %i.av, ptr %i.at, align 4, !tbaa !32
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.c, %Vec_BitStart.exit
  ret ptr %i.g
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_FindXorRoots(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @Acec_MapXorIns(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  store i32 0, ptr %i.c, align 4, !tbaa !30
  store i32 100, ptr %i.b, align 8, !tbaa !35
  %i.d = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val17 = load i32, ptr %i.f, align 4, !tbaa !30 ; 2 uses
  %i.g = icmp sgt i32 %.val17, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = getelementptr i8, ptr %i.a, i64 8
  %.val15 = load ptr, ptr %i.i, align 8, !tbaa !44
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntPushUniqueOrder.exit
  %.val21 = phi i32 [ %.val17, %.lr.ph ], [ %.val, %Vec_IntPushUniqueOrder.exit ] ; 2 uses
  %i.j = phi ptr [ %i.d, %.lr.ph ], [ %i.bc, %Vec_IntPushUniqueOrder.exit ] ; 4 uses
  %i.k = phi ptr [ %i.d, %.lr.ph ], [ %i.bd, %Vec_IntPushUniqueOrder.exit ] ; 7 uses
  %i.l = phi ptr [ %i.d, %.lr.ph ], [ %i.be, %Vec_IntPushUniqueOrder.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPushUniqueOrder.exit ]
  %i.m = phi i64 [ 0, %.lr.ph ], [ %i.bf, %Vec_IntPushUniqueOrder.exit ]
  %.val14 = load ptr, ptr %i.h, align 8, !tbaa !31
  %2 = and i64 %i.m, 4294967292
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %2
  %i.o = load i32, ptr %i.n, align 4, !tbaa !32   ; 5 uses
  %i.p = ashr i32 %i.o, 5
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %.val15, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  %i.t = and i32 %i.o, 31
  %i.u = shl nuw i32 1, %i.t
  %i.v = and i32 %i.s, %i.u
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.c, label %Vec_IntPushUniqueOrder.exit

bb.c:                                             ; preds = %bb.b
  %i.w = load i32, ptr %i.c, align 4, !tbaa !30   ; 11 uses
  %i.x = icmp sgt i32 %i.w, 0                     ; 2 uses
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.w to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !51

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32
  %i.aa = icmp eq i32 %i.z, %i.o
  br i1 %i.aa, label %Vec_IntPushUniqueOrder.exit, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !35
  %i.ac = icmp eq i32 %i.w, %i.ab
  br i1 %i.ac, label %bb.f, label %Vec_IntGrow.exit24.i.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.ad = icmp slt i32 %i.w, 16
  br i1 %i.ad, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.k, i64 noundef 64) #23
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i

bb.j:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i32 %i.w, 1073741823
  %i.ah = shl nuw nsw i32 %i.w, 1
  %spec.select.i.i = select i1 %i.ag, i32 %i.ah, i32 2147483647 ; 4 uses
  %.not.i22.i.i = icmp samesign ult i32 %i.w, %spec.select.i.i
  br i1 %.not.i22.i.i, label %bb.k, label %Vec_IntGrow.exit24.i.thread.i

Vec_IntGrow.exit24.i.thread.i:                    ; preds = %bb.j
  %i.ai = add nuw nsw i32 %i.w, 1
  store i32 %i.ai, ptr %i.c, align 4, !tbaa !30
  br label %.lr.ph.i.i

bb.k:                                             ; preds = %bb.j
  %.not9.i23.i.i = icmp eq ptr %i.k, null
  %i.aj = zext nneg i32 %spec.select.i.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  br i1 %.not9.i23.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.ak) #23
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i

bb.m:                                             ; preds = %bb.k
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #21
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i

Vec_IntGrow.exit24thread-pre-split.sink.split.i.i: ; preds = %bb.l, %bb.m, %bb.h, %bb.i
  %storemerge = phi ptr [ %i.af, %bb.i ], [ %i.ae, %bb.h ], [ %i.al, %bb.l ], [ %i.am, %bb.m ] ; 2 uses
  %.sink.i.i = phi i32 [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i.i, %bb.l ], [ %spec.select.i.i, %bb.m ]
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !31
  store i32 %.sink.i.i, ptr %i.b, align 8, !tbaa !35
  br label %Vec_IntGrow.exit24.i.i

Vec_IntGrow.exit24.i.i:                           ; preds = %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i, %._crit_edge.i
  %i.an = phi ptr [ %storemerge, %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i ], [ %i.j, %._crit_edge.i ] ; 4 uses
  %i.ao = add nsw i32 %i.w, 1
  store i32 %i.ao, ptr %i.c, align 4, !tbaa !30
  br i1 %i.x, label %.lr.ph.i.i, label %Vec_IntPushOrder.exit.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit24.i.i, %Vec_IntGrow.exit24.i.thread.i
  %i.ap = phi ptr [ %i.j, %Vec_IntGrow.exit24.i.thread.i ], [ %i.an, %Vec_IntGrow.exit24.i.i ] ; 2 uses
  %i.aq = phi ptr [ %i.k, %Vec_IntGrow.exit24.i.thread.i ], [ %i.an, %Vec_IntGrow.exit24.i.i ] ; 4 uses
  %i.ar = zext nneg i32 %i.w to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.ar, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.o ] ; 4 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32 ; 2 uses
  %i.au = icmp sgt i32 %i.at, %i.o
  br i1 %i.au, label %bb.o, label %._crit_edge.loopexit.split.loop.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i.i
  store i32 %i.at, ptr %i.av, align 4, !tbaa !32
  %i.aw = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.aw, label %bb.n, label %Vec_IntPushOrder.exit.i, !llvm.loop !52

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %bb.n
  %i.ax = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %Vec_IntPushOrder.exit.i

Vec_IntPushOrder.exit.i:                          ; preds = %bb.o, %._crit_edge.loopexit.split.loop.exit.i.i, %Vec_IntGrow.exit24.i.i
  %i.ay = phi ptr [ %i.an, %Vec_IntGrow.exit24.i.i ], [ %i.ap, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.ap, %bb.o ]
  %i.az = phi ptr [ %i.an, %Vec_IntGrow.exit24.i.i ], [ %i.aq, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.aq, %bb.o ] ; 3 uses
  %.0.in.lcssa.i.i = phi i32 [ %i.w, %Vec_IntGrow.exit24.i.i ], [ %i.ax, %._crit_edge.loopexit.split.loop.exit.i.i ], [ 0, %bb.o ]
  %i.ba = sext i32 %.0.in.lcssa.i.i to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba
  store i32 %i.o, ptr %i.bb, align 4, !tbaa !32
  %.val.pre = load i32, ptr %i.f, align 4, !tbaa !30
  br label %Vec_IntPushUniqueOrder.exit

Vec_IntPushUniqueOrder.exit:                      ; preds = %bb.e, %Vec_IntPushOrder.exit.i, %bb.b
  %.val = phi i32 [ %.val21, %bb.b ], [ %.val.pre, %Vec_IntPushOrder.exit.i ], [ %.val21, %bb.e ] ; 2 uses
  %i.bc = phi ptr [ %i.j, %bb.b ], [ %i.ay, %Vec_IntPushOrder.exit.i ], [ %i.j, %bb.e ]
  %i.bd = phi ptr [ %i.k, %bb.b ], [ %i.az, %Vec_IntPushOrder.exit.i ], [ %i.k, %bb.e ]
  %i.be = phi ptr [ %i.l, %bb.b ], [ %i.az, %Vec_IntPushOrder.exit.i ], [ %i.l, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = shl nsw i64 %indvars.iv.next, 2         ; 2 uses
  %3 = sext i32 %.val to i64
  %4 = icmp slt i64 %i.bf, %3
  br i1 %4, label %bb.b, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %Vec_IntPushUniqueOrder.exit, %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %Vec_BitFree.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.bh) #22
  br label %Vec_BitFree.exit

Vec_BitFree.exit:                                 ; preds = %._crit_edge, %bb.p
  tail call void @free(ptr noundef nonnull %i.a) #22
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Acec_RankTrees(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21 ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.b, align 8, !tbaa !8   ; 5 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 6 uses
  %i.d = add i32 %.val, -1
  %or.cond.i.i = icmp ult i32 %i.d, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.c, align 8, !tbaa !35
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !31
  store i32 %.val, ptr %i.e, align 4, !tbaa !30
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #21 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !31
  store i32 %.val, ptr %i.e, align 4, !tbaa !30
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.k = sext i32 %.val to i64
  %i.l = shl nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 -1, i64 %i.l, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val60 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.i, %bb.b ] ; 9 uses
  %i.m = getelementptr i8, ptr %2, i64 4
  %.val5671 = load i32, ptr %i.m, align 4, !tbaa !30 ; 3 uses
  %i.n = icmp sgt i32 %.val5671, 0
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntStartFull.exit
  %i.o = getelementptr i8, ptr %2, i64 8
  %.val62 = load ptr, ptr %i.o, align 8, !tbaa !31 ; 5 uses
  %i.p = zext nneg i32 %.val5671 to i64           ; 2 uses
  %xtraiter = and i64 %i.p, 3                     ; 3 uses
  %i.q = icmp ult i32 %.val5671, 4
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.p, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val62, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.t
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.v, ptr %i.u, align 4, !tbaa !32
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val62, i64 %indvars.iv.next
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.y
  %i.aa = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !32
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val62, i64 %indvars.iv.next.1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.ad
  %i.af = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !32
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val62, i64 %indvars.iv.next.2
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !32
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.ai
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.critedge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !54

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod114 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val62, i64 %indvars.iv.epil
  %i.am = load i32, ptr %i.al, align 4, !tbaa !32
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.an
  %i.ap = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !32
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %bb.d, !llvm.loop !55

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.d, %Vec_IntStartFull.exit
  %i.aq = getelementptr i8, ptr %1, i64 4
  %.val55 = load i32, ptr %i.aq, align 4, !tbaa !30 ; 2 uses
  %i.ar = icmp sgt i32 %.val55, 3
  br i1 %i.ar, label %.lr.ph76, label %.critedge2

.lr.ph76:                                         ; preds = %.critedge
  %i.as = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.at = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.au = lshr i32 %.val55, 2
  %i.av = zext nneg i32 %i.au to i64
  br label %bb.e

.preheader:                                       ; preds = %.loopexit
  %i.aw = icmp sgt i32 %i.gb, 0
  br i1 %i.aw, label %.lr.ph78, label %.critedge2

.lr.ph78:                                         ; preds = %.preheader
  %i.ax = getelementptr i8, ptr %i.c, i64 8
  %.val64 = load ptr, ptr %i.ax, align 8, !tbaa !31 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.gb to i64   ; 2 uses
  %xtraiter116 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ay = icmp ult i32 %i.gb, 4
  br i1 %i.ay, label %.epil.preheader115, label %.lr.ph78.new

.lr.ph78.new:                                     ; preds = %.lr.ph78
  %unroll_iter120 = and i64 %wide.trip.count, 2147483644
  br label %bb.ap

bb.e:                                             ; preds = %.lr.ph76, %.loopexit
  %i.az = phi ptr [ %i.a, %.lr.ph76 ], [ %i.fu, %.loopexit ] ; 6 uses
  %i.ba = phi i32 [ 100, %.lr.ph76 ], [ %i.fv, %.loopexit ] ; 6 uses
  %i.bb = phi ptr [ %i.a, %.lr.ph76 ], [ %i.fw, %.loopexit ] ; 6 uses
  %i.bc = phi i32 [ 100, %.lr.ph76 ], [ %i.fx, %.loopexit ] ; 6 uses
  %i.bd = phi ptr [ %i.a, %.lr.ph76 ], [ %i.fy, %.loopexit ] ; 6 uses
  %i.be = phi ptr [ %i.a, %.lr.ph76 ], [ %i.fz, %.loopexit ] ; 8 uses
  %i.bf = phi i32 [ 100, %.lr.ph76 ], [ %i.ga, %.loopexit ] ; 11 uses
  %i.bg = phi i32 [ 0, %.lr.ph76 ], [ %i.gb, %.loopexit ] ; 7 uses
  %indvars.iv83 = phi i64 [ %i.av, %.lr.ph76 ], [ %indvars.iv.next84, %.loopexit ] ; 2 uses
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, -1 ; 2 uses
  %i.bh = shl nuw nsw i64 %indvars.iv.next84, 2   ; 2 uses
  %.val61 = load ptr, ptr %i.as, align 8, !tbaa !31 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val61, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !32
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32 ; 10 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %.loopexit, label %.preheader70.preheader

.preheader70.preheader:                           ; preds = %bb.e
  %i.bo = and i64 %i.bh, 4294967292               ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.val61, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32 ; 4 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.preheader70.1, label %bb.f

bb.f:                                             ; preds = %.preheader70.preheader
  %i.bt = sext i32 %i.br to i64                   ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !32 ; 3 uses
  %i.bw = icmp eq i32 %i.bv, %i.bm
  br i1 %i.bw, label %.preheader70.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = icmp eq i32 %i.bv, -1
  br i1 %i.bx, label %.thread, label %bb.h

end_hunk_0
begin_hunk_1_@Acec_RankTrees:bb.a

bb.aq:                                            ; preds = %bb.aq, %.epil.preheader115
  %indvars.iv85.epil = phi i64 [ %indvars.iv85.epil.init, %.epil.preheader115 ], [ %indvars.iv.next86.epil, %bb.aq ] ; 2 uses
  %epil.iter117 = phi i64 [ 0, %.epil.preheader115 ], [ %epil.iter117.next, %bb.aq ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv85.epil
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !32
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %.val64, i64 %i.gy
  store i32 -1, ptr %i.gz, align 4, !tbaa !32
  %indvars.iv.next86.epil = add nuw nsw i64 %indvars.iv85.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %.critedge2, label %bb.aq, !llvm.loop !60

.critedge2:                                       ; preds = %.critedge2.loopexit.unr-lcssa, %bb.aq, %.critedge, %.preheader
  %i.ha = phi ptr [ %i.a, %.critedge ], [ %i.fu, %.preheader ], [ %i.fu, %bb.aq ], [ %i.fu, %.critedge2.loopexit.unr-lcssa ] ; 2 uses
  %.not.i69 = icmp eq ptr %i.ha, null
  br i1 %.not.i69, label %Vec_IntFree.exit, label %bb.ar

bb.ar:                                            ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.ha) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2, %bb.ar
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Acec_FindXorLeaves(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !8 ; 5 uses
  %i.b = ashr i32 %.val.i, 5
  %i.c = and i32 %.val.i, 31
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e                   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %Vec_BitStart.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 2                      ; 2 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #21
  br label %Vec_BitStart.exit.i

Vec_BitStart.exit.i:                              ; preds = %bb.b, %bb.a
  %.pre-phi8.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %.pre-phi8.i.i, i1 false)
  %i.k = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val11.i = load i32, ptr %i.k, align 4, !tbaa !30 ; 3 uses
  %i.l = icmp sgt i32 %.val11.i, 0                ; 2 uses
  br i1 %i.l, label %.lr.ph.i, label %Acec_MapXorOuts2.exit

.lr.ph.i:                                         ; preds = %Vec_BitStart.exit.i
  %i.m = getelementptr i8, ptr %1, i64 8
  %.val14.i = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr i8, ptr %4, i64 8
  %.val13.i = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.o = add nsw i32 %.val11.i, -1
  %i.p = lshr i32 %i.o, 2
  %i.q = add nuw nsw i32 %i.p, 1
  %wide.trip.count.i = zext nneg i32 %i.q to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv17.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next18.i, %bb.e ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %indvars.iv.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32   ; 3 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %.val13.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32
  %.not.i = icmp eq i32 %i.v, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = and i32 %i.s, 31
  %i.x = shl nuw i32 1, %i.w
  %i.y = ashr i32 %i.s, 5
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32
  %i.ac = or i32 %i.ab, %i.x
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4
  %exitcond.not.i = icmp eq i64 %indvars.iv.next18.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Acec_MapXorOuts2.exit, label %bb.c, !llvm.loop !47

Acec_MapXorOuts2.exit:                            ; preds = %bb.e, %Vec_BitStart.exit.i
  %i.ad = add i32 %.val.i, -1
  %or.cond.i.i.i = icmp ult i32 %i.ad, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %.val.i ; 2 uses
  %.not.i.i.i56 = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i56, label %Vec_IntStartFull.exit.i, label %Vec_IntAlloc.exit.i.i

Vec_IntAlloc.exit.i.i:                            ; preds = %Acec_MapXorOuts2.exit
  %i.ae = sext i32 %spec.store.select.i.i.i to i64
  %i.af = shl nsw i64 %i.ae, 2
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #21 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %Vec_IntStartFull.exit.i, label %bb.f

bb.f:                                             ; preds = %Vec_IntAlloc.exit.i.i
  %i.ah = sext i32 %.val.i to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 -1, i64 %i.ai, i1 false)
  br label %Vec_IntStartFull.exit.i

Vec_IntStartFull.exit.i:                          ; preds = %Acec_MapXorOuts2.exit, %bb.f, %Vec_IntAlloc.exit.i.i
  %i.aj = phi ptr [ %i.ag, %bb.f ], [ null, %Vec_IntAlloc.exit.i.i ], [ null, %Acec_MapXorOuts2.exit ] ; 6 uses
  %i.ak = getelementptr i8, ptr %2, i64 4
  %.val1217.i = load i32, ptr %i.ak, align 4, !tbaa !30 ; 2 uses
  %i.al = icmp sgt i32 %.val1217.i, 0
  br i1 %i.al, label %.lr.ph.i57, label %Acec_MapMajOuts2.exit

.lr.ph.i57:                                       ; preds = %Vec_IntStartFull.exit.i
  %i.am = getelementptr i8, ptr %2, i64 8
  %.val15.i = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.an = getelementptr i8, ptr %4, i64 8
  %.val14.i58 = load ptr, ptr %i.an, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i57
  %indvars.iv.i59 = phi i64 [ 0, %.lr.ph.i57 ], [ %indvars.iv.next.i61, %bb.i ] ; 2 uses
  %i.ao = phi i64 [ 0, %.lr.ph.i57 ], [ %i.ax, %bb.i ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %.val14.i58, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32
  %.not.i60 = icmp eq i32 %i.au, -1
  br i1 %.not.i60, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.as
  %i.aw = trunc nuw nsw i64 %indvars.iv.i59 to i32
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %i.ax = mul nuw nsw i64 %indvars.iv.next.i61, 6 ; 2 uses
  %i.ay = trunc nuw i64 %i.ax to i32
  %i.az = icmp sgt i32 %.val1217.i, %i.ay
  br i1 %i.az, label %bb.g, label %Acec_MapMajOuts2.exit, !llvm.loop !49

Acec_MapMajOuts2.exit:                            ; preds = %bb.i, %Vec_IntStartFull.exit.i
  %i.ba = getelementptr i8, ptr %3, i64 4
  %.val47 = load i32, ptr %i.ba, align 4, !tbaa !30 ; 4 uses
  %i.bb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 7 uses
  %i.bc = add i32 %.val47, -1
  %or.cond.i.i = icmp ult i32 %i.bc, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %.val47 ; 5 uses
  store i32 %spec.store.select.i.i, ptr %i.bb, align 8, !tbaa !61
  %.not.i.i62 = icmp eq i32 %spec.store.select.i.i, 0 ; 2 uses
  br i1 %.not.i.i62, label %Vec_WecStart.exit, label %bb.j

bb.j:                                             ; preds = %Acec_MapMajOuts2.exit
  %i.bd = sext i32 %spec.store.select.i.i to i64
  %i.be = tail call noalias ptr @calloc(i64 noundef %i.bd, i64 noundef 16) #24
  br label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %Acec_MapMajOuts2.exit, %bb.j
  %i.bf = phi ptr [ %i.be, %bb.j ], [ null, %Acec_MapMajOuts2.exit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !63
  store i32 %.val47, ptr %i.bg, align 4, !tbaa !64
  %i.bi = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 7 uses
  store i32 %spec.store.select.i.i, ptr %i.bi, align 8, !tbaa !61
  br i1 %.not.i.i62, label %Vec_WecStart.exit66, label %bb.k

bb.k:                                             ; preds = %Vec_WecStart.exit
  %i.bj = sext i32 %spec.store.select.i.i to i64
  %i.bk = tail call noalias ptr @calloc(i64 noundef %i.bj, i64 noundef 16) #24
  br label %Vec_WecStart.exit66

Vec_WecStart.exit66:                              ; preds = %Vec_WecStart.exit, %bb.k
  %i.bl = phi ptr [ %i.bk, %bb.k ], [ null, %Vec_WecStart.exit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !63
  store i32 %.val47, ptr %i.bm, align 4, !tbaa !64
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_WecStart.exit66
  %i.bo = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.bp = getelementptr i8, ptr %4, i64 8         ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %.loopexit
  %.val82 = phi i32 [ %.val11.i, %.lr.ph ], [ %.val, %.loopexit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ]
  %i.bq = phi i64 [ 0, %.lr.ph ], [ %i.dy, %.loopexit ]
  %.val53 = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %6 = and i64 %i.bq, 4294967292                  ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.val53, i64 %6
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !32
  %.val52 = load ptr, ptr %i.bp, align 8, !tbaa !31
  %i.bt = sext i32 %i.bs to i64                   ; 3 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %.val52, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !32 ; 6 uses
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.bx = add nsw i32 %i.bv, -1                   ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.val53, i64 %6
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !32 ; 5 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.r, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.cc = ashr i32 %i.ca, 5
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !32
  %i.cg = and i32 %i.ca, 31
  %i.ch = shl nuw i32 1, %i.cg
  %i.ci = and i32 %i.cf, %i.ch
  %.not45 = icmp eq i32 %i.ci, 0
  br i1 %.not45, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.cj = sext i32 %i.ca to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !32 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, -1
  br i1 %i.cm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @Vec_WecPush(ptr noundef nonnull %i.bb, i32 noundef %i.bv, i32 noundef %i.ca)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.cn = icmp sgt i32 %i.bv, 0
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @Vec_WecPush(ptr noundef nonnull %i.bi, i32 noundef %i.bx, i32 noundef %i.cl)
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p, %bb.m, %.preheader
  %.val51.1 = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.val51.1, i64 %6
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !32 ; 5 uses
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = ashr i32 %i.cq, 5
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !32
  %i.cw = and i32 %i.cq, 31
  %i.cx = shl nuw i32 1, %i.cw
  %i.cy = and i32 %i.cv, %i.cx
  %.not45.1 = icmp eq i32 %i.cy, 0
  br i1 %.not45.1, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cz = sext i32 %i.cq to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !32 ; 2 uses
  %i.dc = icmp eq i32 %i.db, -1
  br i1 %i.dc, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val49.1 = load ptr, ptr %i.bp, align 8, !tbaa !31
  %i.dd = getelementptr inbounds [4 x i8], ptr %.val49.1, i64 %i.bt
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !32
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @Vec_WecPush(ptr noundef nonnull %i.bi, i32 noundef %i.bx, i32 noundef %i.db)
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call fastcc void @Vec_WecPush(ptr noundef nonnull %i.bb, i32 noundef %i.bv, i32 noundef %i.cq)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  %.val51.2 = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.val51.2, i64 %6
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !32 ; 5 uses
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %.loopexit.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = ashr i32 %i.di, 5
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !32
  %i.do = and i32 %i.di, 31
  %i.dp = shl nuw i32 1, %i.do
  %i.dq = and i32 %i.dn, %i.dp
  %.not45.2 = icmp eq i32 %i.dq, 0
  br i1 %.not45.2, label %bb.z, label %.loopexit.loopexit

bb.z:                                             ; preds = %bb.y
  %i.dr = sext i32 %i.di to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !32 ; 2 uses
  %i.du = icmp eq i32 %i.dt, -1
  br i1 %i.du, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val49.2 = load ptr, ptr %i.bp, align 8, !tbaa !31
  %i.dv = getelementptr inbounds [4 x i8], ptr %.val49.2, i64 %i.bt
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !32
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %bb.ab, label %.loopexit.loopexit

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @Vec_WecPush(ptr noundef nonnull %i.bi, i32 noundef %i.bx, i32 noundef %i.dt)
  br label %.loopexit.loopexit

bb.ac:                                            ; preds = %bb.z
  tail call fastcc void @Vec_WecPush(ptr noundef nonnull %i.bb, i32 noundef %i.bv, i32 noundef %i.di)
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  %.val.pre = load i32, ptr %i.k, align 4, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.l
  %.val = phi i32 [ %.val.pre, %.loopexit.loopexit ], [ %.val82, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dy = shl nsw i64 %indvars.iv.next, 2         ; 2 uses
  %7 = sext i32 %.val to i64
  %8 = icmp slt i64 %i.dy, %7
  br i1 %8, label %bb.l, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %.loopexit, %Vec_WecStart.exit66
  %.not.i67 = icmp eq ptr %i.j, null
  br i1 %.not.i67, label %Vec_BitFree.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.j) #22
  br label %Vec_BitFree.exit

Vec_BitFree.exit:                                 ; preds = %._crit_edge, %bb.ad
  %.not.i68 = icmp eq ptr %i.aj, null
  br i1 %.not.i68, label %Vec_IntFree.exit, label %bb.ae

bb.ae:                                            ; preds = %Vec_BitFree.exit
  tail call void @free(ptr noundef nonnull %i.aj) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_BitFree.exit, %bb.ae
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %Vec_IntFree.exit
  store ptr %i.bi, ptr %5, align 8, !tbaa !66
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %Vec_IntFree.exit
  ret ptr %i.bb
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_WecPush(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64   ; 2 uses
  %.not = icmp sgt i32 %i.b, %1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, 1                        ; 2 uses
  %i.d = shl nsw i32 %i.b, 1
  %i.e = tail call range(i32 -2147483647, -2147483648) i32 @llvm.smax.i32(i32 %i.d, i32 range(i32 -2147483647, -2147483648) %i.c) ; 4 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !61     ; 2 uses
  %.not.i = icmp slt i32 %i.f, %i.e
  br i1 %.not.i, label %bb.c, label %Vec_WecGrow.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 2 uses
  %.not13.i = icmp eq ptr %i.h, null
  %i.i = sext i32 %i.e to i64
  %i.j = shl nsw i64 %i.i, 4                      ; 2 uses
  br i1 %.not13.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.j) #23
  %.pre.i = load i32, ptr %0, align 8, !tbaa !61
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.j) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i32 [ %.pre.i, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.n = phi ptr [ %i.k, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !63
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.o
  %i.q = sub nsw i32 %i.e, %i.m
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  store i32 %i.e, ptr %0, align 8, !tbaa !61
  br label %Vec_WecGrow.exit

Vec_WecGrow.exit:                                 ; preds = %bb.b, %bb.f
  store i32 %i.c, ptr %i.a, align 4, !tbaa !64
  br label %bb.g

bb.g:                                             ; preds = %Vec_WecGrow.exit, %bb.a
  %i.t = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.u ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !30   ; 7 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !35
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %i.x, 16
  br i1 %i.aa, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ae = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.k, %bb.j
  %i.af = phi ptr [ %i.ad, %bb.j ], [ %i.ae, %bb.k ]
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !31
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.ag = icmp samesign ult i32 %i.x, 1073741823
  %i.ah = shl nuw nsw i32 %i.x, 1
  %spec.select.i = select i1 %i.ag, i32 %i.ah, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.x, %spec.select.i
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.aj, null
  %i.ak = zext nneg i32 %spec.select.i to i64
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = tail call ptr @realloc(ptr noundef nonnull %i.aj, i64 noundef %i.al) #23
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.al) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ao = phi ptr [ %i.am, %bb.n ], [ %i.an, %bb.o ]
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !31
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.p, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.p ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.v, align 8, !tbaa !35
  %.pre = load i32, ptr %i.w, align 4, !tbaa !30
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.ap = phi i32 [ %i.x, %bb.g ], [ %i.x, %bb.l ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31
  %i.as = add nsw i32 %i.ap, 1
  store i32 %i.as, ptr %i.w, align 4, !tbaa !30
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.at
  store i32 %2, ptr %i.au, align 4, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define void @Acec_CheckBoothPPs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Acec_MultMarkPPs(ptr noundef %0) #22 ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val3848 = load i32, ptr %i.b, align 4, !tbaa !64
  %i.c = icmp sgt i32 %.val3848, 0
  br i1 %i.c, label %.lr.ph50, label %.critedge

.lr.ph50:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = getelementptr i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph50, %.critedge2
  %indvars.iv52 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next53, %.critedge2 ] ; 3 uses
  %.val37 = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.val37, i64 %indvars.iv52 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val32 = load i32, ptr %i.h, align 4, !tbaa !30 ; 3 uses
  %i.i = icmp sgt i32 %.val32, 0
  br i1 %i.i, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val33 = load ptr, ptr %i.j, align 8, !tbaa !31
  %.val34 = load ptr, ptr %i.e, align 8, !tbaa !57
  %wide.trip.count = zext nneg i32 %.val32 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.044 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.h ]  ; 3 uses
  %.02543 = phi i32 [ 0, %.lr.ph ], [ %.126, %bb.h ] ; 3 uses
  %.02742 = phi i32 [ 0, %.lr.ph ], [ %.128, %bb.h ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val33, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !32   ; 2 uses
  %i.m = ashr i32 %i.l, 1                         ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [12 x i8], ptr %.val34, i64 %i.n
end_hunk_1
