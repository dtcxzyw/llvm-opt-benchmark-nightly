Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilBSet?download=true
inline.NumInlined: 288
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@Vec_WecAppend:bb.a
  %i.a = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val67 = load i32, ptr %i.a, align 4, !tbaa !67
  %i.b = icmp sgt i32 %.val67, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 8 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntAppend.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntAppend.exit ] ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %indvars.iv ; 2 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !67   ; 5 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !61
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %.Vec_WecGrow.exit12_crit_edge.i

.Vec_WecGrow.exit12_crit_edge.i:                  ; preds = %bb.b
  %.val8.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !62
  br label %Vec_WecPushLevel.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i32 %i.f, 16
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !62 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.j, null
  br i1 %.not13.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.j, i64 noundef 256) #29
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !61
  br label %Vec_WecGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.l = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #30
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.m = phi i32 [ %.pre.i.i, %bb.e ], [ %i.f, %bb.f ] ; 2 uses
  %i.n = phi ptr [ %i.k, %bb.e ], [ %i.l, %bb.f ] ; 3 uses
  store ptr %i.n, ptr %.phi.trans.insert.i, align 8, !tbaa !62
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.o
  %i.q = sub nsw i32 16, %i.m
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  store i32 16, ptr %0, align 8, !tbaa !61
  br label %Vec_WecPushLevel.exit

bb.g:                                             ; preds = %bb.c
  %i.t = shl nuw nsw i32 %i.f, 1                  ; 3 uses
  %i.u = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !62 ; 2 uses
  %.not13.i10.i = icmp eq ptr %i.u, null
  %i.v = zext nneg i32 %i.t to i64
  %i.w = shl nuw nsw i64 %i.v, 4                  ; 2 uses
  br i1 %.not13.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @realloc(ptr noundef nonnull %i.u, i64 noundef %i.w) #29
  %.pre.i11.i = load i32, ptr %0, align 8, !tbaa !61
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.w) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = phi i32 [ %.pre.i11.i, %bb.h ], [ %i.f, %bb.i ] ; 2 uses
  %i.aa = phi ptr [ %i.x, %bb.h ], [ %i.y, %bb.i ] ; 3 uses
  store ptr %i.aa, ptr %.phi.trans.insert.i, align 8, !tbaa !62
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = sub nsw i32 %i.t, %i.z
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.af, i1 false)
  store i32 %i.t, ptr %0, align 8, !tbaa !61
  br label %Vec_WecPushLevel.exit

Vec_WecPushLevel.exit:                            ; preds = %.Vec_WecGrow.exit12_crit_edge.i, %Vec_WecGrow.exit.i, %bb.j
  %.val8.i = phi ptr [ %.val8.pre.i, %.Vec_WecGrow.exit12_crit_edge.i ], [ %i.aa, %bb.j ], [ %i.n, %Vec_WecGrow.exit.i ]
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !67
  %i.ah = add nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !67
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [16 x i8], ptr %.val8.i, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -16 ; 2 uses
  %i.al = getelementptr i8, ptr %i.e, i64 4       ; 2 uses
  %.val7.i = load i32, ptr %i.al, align 4, !tbaa !34
  %i.am = icmp sgt i32 %.val7.i, 0
  br i1 %i.am, label %.lr.ph.i, label %Vec_IntAppend.exit

.lr.ph.i:                                         ; preds = %Vec_WecPushLevel.exit
  %i.an = getelementptr i8, ptr %i.e, i64 8
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 -12 ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %i.aj, i64 -8 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_IntPush.exit.i ] ; 2 uses
  %.val6.i = load ptr, ptr %i.an, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val6.i, i64 %indvars.iv.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !29
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !34 ; 7 uses
  %i.at = load i32, ptr %i.ak, align 8, !tbaa !37
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %bb.l, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %bb.k
  %.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !35
  br label %Vec_IntPush.exit.i

bb.l:                                             ; preds = %bb.k
  %i.av = icmp slt i32 %i.as, 16
  br i1 %i.av, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not9.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aw, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.o:                                             ; preds = %bb.m
  %i.ay = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.p:                                             ; preds = %bb.l
  %i.az = icmp samesign ult i32 %i.as, 1073741823
  %i.ba = shl nuw nsw i32 %i.as, 1
  %spec.select.i.i = select i1 %i.az, i32 %i.ba, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.as, %spec.select.i.i
  %.pre10.i = load ptr, ptr %i.ap, align 8, !tbaa !35 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.q, label %Vec_IntPush.exit.i

bb.q:                                             ; preds = %bb.p
  %.not9.i10.i.i = icmp eq ptr %.pre10.i, null
  %i.bb = zext nneg i32 %spec.select.i.i to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = tail call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.bc) #29
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.s:                                             ; preds = %bb.q
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bc) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.s, %bb.r, %bb.o, %bb.n
  %i.bf = phi ptr [ %i.ay, %bb.o ], [ %i.ax, %bb.n ], [ %i.bd, %bb.r ], [ %i.be, %bb.s ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.o ], [ 16, %bb.n ], [ %spec.select.i.i, %bb.r ], [ %spec.select.i.i, %bb.s ]
  store ptr %i.bf, ptr %i.ap, align 8, !tbaa !35
  store i32 %spec.select.sink.i.i, ptr %i.ak, align 8, !tbaa !37
  %.pre11.i = load i32, ptr %i.ao, align 4, !tbaa !34
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.p, %.Vec_IntPush.exit_crit_edge.i
  %i.bg = phi i32 [ %i.as, %.Vec_IntPush.exit_crit_edge.i ], [ %i.as, %bb.p ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.bh = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre10.i, %bb.p ], [ %i.bf, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.bi = add nsw i32 %i.bg, 1
  store i32 %i.bi, ptr %i.ao, align 4, !tbaa !34
  %i.bj = sext i32 %i.bg to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bj
  store i32 %i.ar, ptr %i.bk, align 4, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.al, align 4, !tbaa !34
  %i.bl = sext i32 %.val.i to i64
  %i.bm = icmp slt i64 %indvars.iv.next.i, %i.bl
  br i1 %i.bm, label %bb.k, label %Vec_IntAppend.exit, !llvm.loop !194

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i, %Vec_WecPushLevel.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val6 = load i32, ptr %i.a, align 4, !tbaa !67
  %i.bn = sext i32 %.val6 to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %bb.b, label %.critedge, !llvm.loop !195

.critedge:                                        ; preds = %Vec_IntAppend.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Abc_TtFindBVars3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 %6, ptr nofree readnone captures(none) %7, i32 %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !67
  store i32 1000, ptr %i.a, align 8, !tbaa !61
  %i.c = tail call noalias dereferenceable_or_null(16000) ptr @calloc(i64 noundef 1000, i64 noundef 16) #31
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !62
  %i.e = sub nsw i32 %5, %3                       ; 8 uses
  %i.f = sub nsw i32 %2, %3                       ; 6 uses
  %i.g = add i32 %i.f, -1
  %or.cond.i.i = icmp ult i32 %i.g, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.f ; 3 uses
  %i.h = icmp sgt i32 %i.f, 0
  %wide.trip.count.i = zext i32 %i.f to i64       ; 3 uses
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %spec.store.select.i.i, ptr %i.i, align 8, !tbaa !37
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sext i32 %spec.store.select.i.i to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #30
  br label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !35
  store i32 %i.f, ptr %i.j, align 4, !tbaa !34
  br i1 %i.h, label %.lr.ph.i.preheader, label %Vec_IntStartNatural.exit

.lr.ph.i.preheader:                               ; preds = %Vec_IntAlloc.exit.i
  %min.iters.check = icmp ult i32 %i.f, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %vec.ind, ptr %i.p, align 4, !tbaa !29
  store <4 x i32> %step.add, ptr %i.q, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Vec_IntStartNatural.exit, label %.lr.ph.i.preheader64

.lr.ph.i.preheader64:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader64, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader64 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.t, ptr %i.s, align 4, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntStartNatural.exit, label %.lr.ph.i, !llvm.loop !197

Vec_IntStartNatural.exit:                         ; preds = %.lr.ph.i, %middle.block, %Vec_IntAlloc.exit.i
  %11 = getelementptr i8, ptr %i.i, i64 4
  %.0.val = load i32, ptr %11, align 4, !tbaa !34
  %.not = icmp sgt i32 %.0.val, %i.e
  br i1 %.not, label %Vec_WecFreeP.exit, label %Vec_WecFreeP.exit38

Vec_WecFreeP.exit:                                ; preds = %Vec_IntStartNatural.exit
  %i.u = tail call ptr @Abc_BSFind(ptr noundef nonnull %i.i, i32 noundef %i.e, i32 noundef %9) ; 8 uses
  tail call void @Abc_BSEvalSet(ptr noundef %0, ptr noundef %i.u, ptr noundef %1, i32 noundef %2, i32 poison, i32 noundef %5)
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val = load i32, ptr %i.v, align 4, !tbaa !67
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %.val27 = load ptr, ptr %i.w, align 8, !tbaa !62 ; 4 uses
  %i.x = sext i32 %.val to i64
  tail call void @qsort(ptr noundef %.val27, i64 noundef %i.x, i64 noundef 16, ptr noundef nonnull @Vec_WecSortCompare5) #28
  tail call void @Vec_WecAppend(ptr noundef nonnull %i.a, ptr noundef %i.u)
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %Vec_IntStartNatural.exit.1, label %bb.c

bb.c:                                             ; preds = %Vec_WecFreeP.exit
  tail call void @free(ptr noundef nonnull %i.z) #28
  br label %Vec_IntStartNatural.exit.1

Vec_IntStartNatural.exit.1:                       ; preds = %Vec_WecFreeP.exit, %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #28
  %i.aa = tail call ptr @Abc_BSFindNextVars(ptr noundef nonnull %i.u, i32 noundef %i.e, i32 poison, i32 noundef %10) ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %.0.val.1 = load i32, ptr %i.ab, align 4, !tbaa !34
  %.not.1 = icmp sgt i32 %.0.val.1, %i.e
  br i1 %.not.1, label %bb.d, label %bb.l

bb.d:                                             ; preds = %Vec_IntStartNatural.exit.1
  %i.ac = load i32, ptr %i.u, align 8, !tbaa !61  ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.preheader.1, label %._crit_edge.i.i.i.1

._crit_edge.i.i.i.1:                              ; preds = %bb.d
  %.not.i.i.i.1 = icmp eq ptr %.val27, null
  br i1 %.not.i.i.i.1, label %Vec_WecFreeP.exit.1, label %._crit_edge.thread.i.i.i.1

.lr.ph.i.i.i.preheader.1:                         ; preds = %bb.d
  %i.ae = zext nneg i32 %i.ac to i64
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.f, %.lr.ph.i.i.i.preheader.1
  %indvars.iv.i.i.i.1 = phi i64 [ %indvars.iv.next.i.i.i.1, %bb.f ], [ 0, %.lr.ph.i.i.i.preheader.1 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val27, i64 %indvars.iv.i.i.i.1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35 ; 2 uses
  %.not15.i.i.i.1 = icmp eq ptr %i.ah, null
  br i1 %.not15.i.i.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.1
  tail call void @free(ptr noundef nonnull %i.ah) #28
  store ptr null, ptr %i.ag, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i.1
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.i.i.i.1, %i.ae
  br i1 %exitcond.1.not, label %._crit_edge.thread.i.i.i.1, label %.lr.ph.i.i.i.1, !llvm.loop !11

._crit_edge.thread.i.i.i.1:                       ; preds = %bb.f, %._crit_edge.i.i.i.1
  tail call void @free(ptr noundef nonnull %.val27) #28
  br label %Vec_WecFreeP.exit.1

Vec_WecFreeP.exit.1:                              ; preds = %._crit_edge.i.i.i.1, %._crit_edge.thread.i.i.i.1
  tail call void @free(ptr noundef nonnull %i.u) #28
  %i.ai = tail call ptr @Abc_BSFind(ptr noundef %i.aa, i32 noundef %i.e, i32 noundef %9) ; 8 uses
  tail call void @Abc_BSEvalSet(ptr noundef %0, ptr noundef %i.ai, ptr noundef %1, i32 noundef %2, i32 poison, i32 noundef %5)
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val.1 = load i32, ptr %i.aj, align 4, !tbaa !67
  %i.ak = getelementptr i8, ptr %i.ai, i64 8
  %.val27.1 = load ptr, ptr %i.ak, align 8, !tbaa !62 ; 4 uses
  %i.al = sext i32 %.val.1 to i64
  tail call void @qsort(ptr noundef %.val27.1, i64 noundef %i.al, i64 noundef 16, ptr noundef nonnull @Vec_WecSortCompare5) #28
  tail call void @Vec_WecAppend(ptr noundef nonnull %i.a, ptr noundef %i.ai)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.an, null
  br i1 %.not.i.1, label %Vec_IntStartNatural.exit.2, label %bb.g

bb.g:                                             ; preds = %Vec_WecFreeP.exit.1
  tail call void @free(ptr noundef nonnull %i.an) #28
  br label %Vec_IntStartNatural.exit.2

Vec_IntStartNatural.exit.2:                       ; preds = %bb.g, %Vec_WecFreeP.exit.1
  tail call void @free(ptr noundef nonnull %i.aa) #28
  %i.ao = tail call ptr @Abc_BSFindNextVars(ptr noundef nonnull %i.ai, i32 noundef %i.e, i32 poison, i32 noundef %10) ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %.0.val.2 = load i32, ptr %i.ap, align 4, !tbaa !34
  %.not.2 = icmp sgt i32 %.0.val.2, %i.e
  br i1 %.not.2, label %bb.h, label %bb.l

bb.h:                                             ; preds = %Vec_IntStartNatural.exit.2
  %i.aq = load i32, ptr %i.ai, align 8, !tbaa !61 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.preheader.2, label %._crit_edge.i.i.i.2

._crit_edge.i.i.i.2:                              ; preds = %bb.h
  %.not.i.i.i.2 = icmp eq ptr %.val27.1, null
  br i1 %.not.i.i.i.2, label %Vec_WecFreeP.exit.2, label %._crit_edge.thread.i.i.i.2

.lr.ph.i.i.i.preheader.2:                         ; preds = %bb.h
  %i.as = zext nneg i32 %i.aq to i64
  br label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.j, %.lr.ph.i.i.i.preheader.2
  %indvars.iv.i.i.i.2 = phi i64 [ %indvars.iv.next.i.i.i.2, %bb.j ], [ 0, %.lr.ph.i.i.i.preheader.2 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %.val27.1, i64 %indvars.iv.i.i.i.2
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35 ; 2 uses
  %.not15.i.i.i.2 = icmp eq ptr %i.av, null
  br i1 %.not15.i.i.i.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.2
  tail call void @free(ptr noundef nonnull %i.av) #28
  store ptr null, ptr %i.au, align 8, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i.2
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.i.i.i.2, %i.as
  br i1 %exitcond.2.not, label %._crit_edge.thread.i.i.i.2, label %.lr.ph.i.i.i.2, !llvm.loop !11

._crit_edge.thread.i.i.i.2:                       ; preds = %bb.j, %._crit_edge.i.i.i.2
  tail call void @free(ptr noundef nonnull %.val27.1) #28
  br label %Vec_WecFreeP.exit.2

Vec_WecFreeP.exit.2:                              ; preds = %._crit_edge.i.i.i.2, %._crit_edge.thread.i.i.i.2
  tail call void @free(ptr noundef nonnull %i.ai) #28
  %i.aw = tail call ptr @Abc_BSFind(ptr noundef %i.ao, i32 noundef %i.e, i32 noundef %9) ; 5 uses
  tail call void @Abc_BSEvalSet(ptr noundef %0, ptr noundef %i.aw, ptr noundef %1, i32 noundef %2, i32 poison, i32 noundef %5)
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %.val.2 = load i32, ptr %i.ax, align 4, !tbaa !67
  %i.ay = getelementptr i8, ptr %i.aw, i64 8
  %.val27.2 = load ptr, ptr %i.ay, align 8, !tbaa !62
  %i.az = sext i32 %.val.2 to i64
  tail call void @qsort(ptr noundef %.val27.2, i64 noundef %i.az, i64 noundef 16, ptr noundef nonnull @Vec_WecSortCompare5) #28
  tail call void @Vec_WecAppend(ptr noundef nonnull %i.a, ptr noundef %i.aw)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !35 ; 2 uses
  %.not.i.2 = icmp eq ptr %i.bb, null
  br i1 %.not.i.2, label %Vec_IntFree.exit.2, label %bb.k

bb.k:                                             ; preds = %Vec_WecFreeP.exit.2
  tail call void @free(ptr noundef nonnull %i.bb) #28
  br label %Vec_IntFree.exit.2

Vec_IntFree.exit.2:                               ; preds = %bb.k, %Vec_WecFreeP.exit.2
  tail call void @free(ptr noundef nonnull %i.ao) #28
  br label %bb.l

bb.l:                                             ; preds = %Vec_IntFree.exit.2, %Vec_IntStartNatural.exit.1, %Vec_IntStartNatural.exit.2
  %.043.lcssa.ph = phi ptr [ %i.ai, %Vec_IntStartNatural.exit.2 ], [ %i.u, %Vec_IntStartNatural.exit.1 ], [ %i.aw, %Vec_IntFree.exit.2 ] ; 3 uses
  %i.bc = load i32, ptr %.043.lcssa.ph, align 8, !tbaa !61 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  %i.be = getelementptr inbounds nuw i8, ptr %.043.lcssa.ph, i64 8
  %.pre.i.i.i28 = load ptr, ptr %i.be, align 8, !tbaa !62 ; 3 uses
  br i1 %i.bd, label %.lr.ph.i.i.i33.preheader, label %._crit_edge.i.i.i29

.lr.ph.i.i.i33.preheader:                         ; preds = %bb.l
  %i.bf = zext nneg i32 %i.bc to i64
  br label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %.lr.ph.i.i.i33.preheader, %bb.n
  %indvars.iv.i.i.i34 = phi i64 [ %indvars.iv.next.i.i.i37, %bb.n ], [ 0, %.lr.ph.i.i.i33.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i.i28, i64 %indvars.iv.i.i.i34
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !35 ; 2 uses
  %.not15.i.i.i35 = icmp eq ptr %i.bi, null
  br i1 %.not15.i.i.i35, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i33
  tail call void @free(ptr noundef nonnull %i.bi) #28
  store ptr null, ptr %i.bh, align 8, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.i33
  %indvars.iv.next.i.i.i37 = add nuw nsw i64 %indvars.iv.i.i.i34, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i.i37, %i.bf
  br i1 %exitcond.not, label %._crit_edge.thread.i.i.i31, label %.lr.ph.i.i.i33, !llvm.loop !11

._crit_edge.i.i.i29:                              ; preds = %bb.l
  %.not.i.i.i30 = icmp eq ptr %.pre.i.i.i28, null
  br i1 %.not.i.i.i30, label %Vec_WecFree.exit.i32, label %._crit_edge.thread.i.i.i31

._crit_edge.thread.i.i.i31:                       ; preds = %bb.n, %._crit_edge.i.i.i29
  tail call void @free(ptr noundef nonnull %.pre.i.i.i28) #28
  br label %Vec_WecFree.exit.i32

Vec_WecFree.exit.i32:                             ; preds = %._crit_edge.thread.i.i.i31, %._crit_edge.i.i.i29
  tail call void @free(ptr noundef nonnull %.043.lcssa.ph) #28
  br label %Vec_WecFreeP.exit38

Vec_WecFreeP.exit38:                              ; preds = %Vec_IntStartNatural.exit, %Vec_WecFree.exit.i32
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Abc_TtFindBVarsSVars2(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef captures(address_is_null) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #5 {
bb.a:
end_hunk_0
