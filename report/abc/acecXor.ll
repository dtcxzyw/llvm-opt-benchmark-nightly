Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acecXor?download=true
inline.NumInlined: 242
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Acec_FindXorRoots:bb.a

bb.m:                                             ; preds = %bb.k
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #21
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i

Vec_IntGrow.exit24thread-pre-split.sink.split.i.i: ; preds = %bb.l, %bb.m, %bb.h, %bb.i
  %storemerge = phi ptr [ %i.af, %bb.i ], [ %i.ae, %bb.h ], [ %i.al, %bb.l ], [ %i.am, %bb.m ] ; 2 uses
  %.sink.i.i = phi i32 [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i.i, %bb.l ], [ %spec.select.i.i, %bb.m ]
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !33
  store i32 %.sink.i.i, ptr %i.b, align 8, !tbaa !36
  br label %Vec_IntGrow.exit24.i.i

Vec_IntGrow.exit24.i.i:                           ; preds = %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i, %._crit_edge.i
  %i.an = phi ptr [ %storemerge, %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i ], [ %i.j, %._crit_edge.i ] ; 4 uses
  %i.ao = add nsw i32 %i.w, 1
  store i32 %i.ao, ptr %i.c, align 4, !tbaa !32
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
  %i.at = load i32, ptr %i.as, align 4, !tbaa !34 ; 2 uses
  %i.au = icmp sgt i32 %i.at, %i.o
  br i1 %i.au, label %bb.o, label %._crit_edge.loopexit.split.loop.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i.i
  store i32 %i.at, ptr %i.av, align 4, !tbaa !34
  %i.aw = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.aw, label %bb.n, label %Vec_IntPushOrder.exit.i, !llvm.loop !58

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %bb.n
  %i.ax = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %Vec_IntPushOrder.exit.i

Vec_IntPushOrder.exit.i:                          ; preds = %bb.o, %._crit_edge.loopexit.split.loop.exit.i.i, %Vec_IntGrow.exit24.i.i
  %i.ay = phi ptr [ %i.an, %Vec_IntGrow.exit24.i.i ], [ %i.ap, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.ap, %bb.o ]
  %i.az = phi ptr [ %i.an, %Vec_IntGrow.exit24.i.i ], [ %i.aq, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.aq, %bb.o ] ; 3 uses
  %.0.in.lcssa.i.i = phi i32 [ %i.w, %Vec_IntGrow.exit24.i.i ], [ %i.ax, %._crit_edge.loopexit.split.loop.exit.i.i ], [ 0, %bb.o ]
  %i.ba = sext i32 %.0.in.lcssa.i.i to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba
  store i32 %i.o, ptr %i.bb, align 4, !tbaa !34
  %.val.pre = load i32, ptr %i.f, align 4, !tbaa !32
  br label %Vec_IntPushUniqueOrder.exit

Vec_IntPushUniqueOrder.exit:                      ; preds = %bb.e, %Vec_IntPushOrder.exit.i, %bb.b
  %.val = phi i32 [ %.val21, %bb.b ], [ %.val.pre, %Vec_IntPushOrder.exit.i ], [ %.val21, %bb.e ] ; 2 uses
  %i.bc = phi ptr [ %i.j, %bb.b ], [ %i.ay, %Vec_IntPushOrder.exit.i ], [ %i.j, %bb.e ]
  %i.bd = phi ptr [ %i.k, %bb.b ], [ %i.az, %Vec_IntPushOrder.exit.i ], [ %i.k, %bb.e ]
  %i.be = phi ptr [ %i.l, %bb.b ], [ %i.az, %Vec_IntPushOrder.exit.i ], [ %i.l, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = shl nuw nsw i64 %indvars.iv.next, 2     ; 2 uses
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = icmp sgt i32 %.val, %i.bg
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %Vec_IntPushUniqueOrder.exit, %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %Vec_BitFree.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.bj) #22
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
  %.val = load i32, ptr %i.b, align 8, !tbaa !31  ; 5 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 6 uses
  %i.d = add i32 %.val, -1
  %or.cond.i.i = icmp ult i32 %i.d, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.c, align 8, !tbaa !36
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !33
  store i32 %.val, ptr %i.e, align 4, !tbaa !32
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #21 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !33
  store i32 %.val, ptr %i.e, align 4, !tbaa !32
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
  %.val5671 = load i32, ptr %i.m, align 4, !tbaa !32 ; 3 uses
  %i.n = icmp sgt i32 %.val5671, 0
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntStartFull.exit
  %i.o = getelementptr i8, ptr %2, i64 8
  %.val62 = load ptr, ptr %i.o, align 8, !tbaa !33 ; 5 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.t
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.v, ptr %i.u, align 4, !tbaa !34
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val62, i64 %indvars.iv.next
  %i.x = load i32, ptr %i.w, align 4, !tbaa !34
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.y
  %i.aa = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !34
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val62, i64 %indvars.iv.next.1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !34
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.ad
  %i.af = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !34
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val62, i64 %indvars.iv.next.2
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !34
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.ai
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !34
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.critedge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !60

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
  %i.am = load i32, ptr %i.al, align 4, !tbaa !34
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.an
  %i.ap = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !34
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %bb.d, !llvm.loop !61

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.d, %Vec_IntStartFull.exit
  %i.aq = getelementptr i8, ptr %1, i64 4
  %.val55 = load i32, ptr %i.aq, align 4, !tbaa !32 ; 2 uses
  %i.ar = icmp sgt i32 %.val55, 3
  br i1 %i.ar, label %.lr.ph76, label %.critedge2

.lr.ph76:                                         ; preds = %.critedge
  %i.as = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.at = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %3 = lshr i32 %.val55, 2
  %i.au = zext nneg i32 %3 to i64
  br label %bb.e

.preheader:                                       ; preds = %.loopexit
  %i.av = icmp sgt i32 %i.ga, 0
  br i1 %i.av, label %.lr.ph78, label %.critedge2

.lr.ph78:                                         ; preds = %.preheader
  %i.aw = getelementptr i8, ptr %i.c, i64 8
  %.val64 = load ptr, ptr %i.aw, align 8, !tbaa !33 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ga to i64   ; 2 uses
  %xtraiter116 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ax = icmp ult i32 %i.ga, 4
  br i1 %i.ax, label %.epil.preheader115, label %.lr.ph78.new

.lr.ph78.new:                                     ; preds = %.lr.ph78
  %unroll_iter120 = and i64 %wide.trip.count, 2147483644
  br label %bb.ap

bb.e:                                             ; preds = %.lr.ph76, %.loopexit
  %i.ay = phi ptr [ %i.a, %.lr.ph76 ], [ %i.ft, %.loopexit ] ; 6 uses
  %i.az = phi i32 [ 100, %.lr.ph76 ], [ %i.fu, %.loopexit ] ; 6 uses
  %i.ba = phi ptr [ %i.a, %.lr.ph76 ], [ %i.fv, %.loopexit ] ; 6 uses
  %i.bb = phi i32 [ 100, %.lr.ph76 ], [ %i.fw, %.loopexit ] ; 6 uses
  %i.bc = phi ptr [ %i.a, %.lr.ph76 ], [ %i.fx, %.loopexit ] ; 6 uses
  %i.bd = phi ptr [ %i.a, %.lr.ph76 ], [ %i.fy, %.loopexit ] ; 8 uses
  %i.be = phi i32 [ 100, %.lr.ph76 ], [ %i.fz, %.loopexit ] ; 11 uses
  %i.bf = phi i32 [ 0, %.lr.ph76 ], [ %i.ga, %.loopexit ] ; 7 uses
  %indvars.iv83 = phi i64 [ %i.au, %.lr.ph76 ], [ %indvars.iv.next84, %.loopexit ] ; 2 uses
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, -1 ; 2 uses
  %i.bg = shl nuw nsw i64 %indvars.iv.next84, 2   ; 2 uses
  %.val61 = load ptr, ptr %i.as, align 8, !tbaa !33 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val61, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !34
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !34 ; 10 uses
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %.loopexit, label %.preheader70.preheader

.preheader70.preheader:                           ; preds = %bb.e
  %i.bn = and i64 %i.bg, 4294967292               ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.val61, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !34 ; 4 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.preheader70.1, label %bb.f

bb.f:                                             ; preds = %.preheader70.preheader
  %i.bs = sext i32 %i.bq to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !34 ; 3 uses
  %i.bv = icmp eq i32 %i.bu, %i.bl
  br i1 %i.bv, label %.preheader70.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = icmp eq i32 %i.bu, -1
  br i1 %i.bw, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  store i32 %i.bl, ptr %i.bt, align 4, !tbaa !34
  br label %.preheader70.1

bb.h:                                             ; preds = %bb.g
  %i.bx = icmp eq i32 %i.bf, %i.be
  br i1 %i.bx, label %bb.i, label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.h
  %i.by = icmp slt i32 %i.be, 16
  br i1 %i.by, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not9.i.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bd, i64 noundef 64) #23 ; 3 uses
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.ca = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21 ; 3 uses
  br label %Vec_IntGrow.exit11.sink.split.i

bb.m:                                             ; preds = %bb.i
  %i.cb = icmp samesign ult i32 %i.be, 1073741823
  %i.cc = shl nuw nsw i32 %i.be, 1
  %spec.select.i = select i1 %i.cb, i32 %i.cc, i32 2147483647 ; 8 uses
  %.not.i9.i = icmp samesign ult i32 %i.be, %spec.select.i
  br i1 %.not.i9.i, label %bb.n, label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.m
  %.not9.i10.i = icmp eq ptr %i.bd, null
  %i.cd = zext nneg i32 %spec.select.i to i64
  %i.ce = shl nuw nsw i64 %i.cd, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = tail call ptr @realloc(ptr noundef nonnull %i.bd, i64 noundef %i.ce) #23 ; 3 uses
  br label %Vec_IntGrow.exit11.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.cg = tail call noalias ptr @malloc(i64 noundef %i.ce) #21 ; 3 uses
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %bb.k, %bb.p, %bb.o, %bb.h, %bb.m
  %i.ch = phi ptr [ %i.ay, %bb.h ], [ %i.ay, %bb.m ], [ %i.ca, %bb.l ], [ %i.bz, %bb.k ], [ %i.cf, %bb.o ], [ %i.cg, %bb.p ] ; 2 uses
  %i.ci = phi i32 [ %i.az, %bb.h ], [ %i.az, %bb.m ], [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i, %bb.o ], [ %spec.select.i, %bb.p ] ; 2 uses
  %i.cj = phi ptr [ %i.ba, %bb.h ], [ %i.ba, %bb.m ], [ %i.ca, %bb.l ], [ %i.bz, %bb.k ], [ %i.cf, %bb.o ], [ %i.cg, %bb.p ] ; 2 uses
  %i.ck = phi i32 [ %i.bb, %bb.h ], [ %i.bb, %bb.m ], [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i, %bb.o ], [ %spec.select.i, %bb.p ] ; 2 uses
  %i.cl = phi ptr [ %i.bc, %bb.h ], [ %i.bc, %bb.m ], [ %i.ca, %bb.l ], [ %i.bz, %bb.k ], [ %i.cf, %bb.o ], [ %i.cg, %bb.p ] ; 5 uses
  %i.cm = phi i32 [ %i.be, %bb.h ], [ %i.be, %bb.m ], [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i, %bb.o ], [ %spec.select.i, %bb.p ] ; 2 uses
  %i.cn = add nsw i32 %i.bf, 1                    ; 2 uses
  %i.co = sext i32 %i.bf to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.co
  store i32 %i.bq, ptr %i.cp, align 4, !tbaa !34
  %.val63 = load ptr, ptr %i.at, align 8, !tbaa !41
  %i.cq = getelementptr inbounds [12 x i8], ptr %.val63, i64 %i.bs
  %.val67 = load i64, ptr %i.cq, align 4          ; 2 uses
  %i.cr = and i64 %.val67, 2147483648
  %.not.i68 = icmp ne i64 %i.cr, 0
  %i.cs = and i64 %.val67, 536870911
  %i.ct = icmp eq i64 %i.cs, 536870911
  %narrow.i.not = or i1 %.not.i68, %i.ct
  br i1 %narrow.i.not, label %.preheader70.1, label %bb.q

bb.q:                                             ; preds = %Vec_IntGrow.exit11.sink.split.i
  %i.cu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.bq, i32 noundef %i.bu, i32 noundef %i.bl) ; 0 uses
  br label %.preheader70.1

.preheader70.1:                                   ; preds = %.thread, %Vec_IntGrow.exit11.sink.split.i, %bb.q, %bb.f, %.preheader70.preheader
  %i.cv = phi ptr [ %i.ay, %.thread ], [ %i.ch, %Vec_IntGrow.exit11.sink.split.i ], [ %i.ch, %bb.q ], [ %i.ay, %bb.f ], [ %i.ay, %.preheader70.preheader ] ; 5 uses
  %i.cw = phi i32 [ %i.az, %.thread ], [ %i.ci, %Vec_IntGrow.exit11.sink.split.i ], [ %i.ci, %bb.q ], [ %i.az, %bb.f ], [ %i.az, %.preheader70.preheader ] ; 5 uses
  %i.cx = phi ptr [ %i.ba, %.thread ], [ %i.cj, %Vec_IntGrow.exit11.sink.split.i ], [ %i.cj, %bb.q ], [ %i.ba, %bb.f ], [ %i.ba, %.preheader70.preheader ] ; 5 uses
  %i.cy = phi i32 [ %i.bb, %.thread ], [ %i.ck, %Vec_IntGrow.exit11.sink.split.i ], [ %i.ck, %bb.q ], [ %i.bb, %bb.f ], [ %i.bb, %.preheader70.preheader ] ; 10 uses
  %i.cz = phi ptr [ %i.bc, %.thread ], [ %i.cl, %Vec_IntGrow.exit11.sink.split.i ], [ %i.cl, %bb.q ], [ %i.bc, %bb.f ], [ %i.bc, %.preheader70.preheader ] ; 7 uses
  %i.da = phi ptr [ %i.bd, %.thread ], [ %i.cl, %Vec_IntGrow.exit11.sink.split.i ], [ %i.cl, %bb.q ], [ %i.bd, %bb.f ], [ %i.bd, %.preheader70.preheader ] ; 3 uses
  %i.db = phi i32 [ %i.be, %.thread ], [ %i.cm, %Vec_IntGrow.exit11.sink.split.i ], [ %i.cm, %bb.q ], [ %i.be, %bb.f ], [ %i.be, %.preheader70.preheader ] ; 3 uses
  %i.dc = phi i32 [ %i.bf, %.thread ], [ %i.cn, %Vec_IntGrow.exit11.sink.split.i ], [ %i.cn, %bb.q ], [ %i.bf, %bb.f ], [ %i.bf, %.preheader70.preheader ] ; 6 uses
  %.val59.1 = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.val59.1, i64 %i.bn
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !34 ; 4 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %.preheader70.2, label %bb.r

bb.r:                                             ; preds = %.preheader70.1
  %i.dh = sext i32 %i.df to i64                   ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %.val60, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !34 ; 3 uses
  %i.dk = icmp eq i32 %i.dj, %i.bl
  br i1 %i.dk, label %.preheader70.2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dl = icmp eq i32 %i.dj, -1
  br i1 %i.dl, label %.thread.1, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = icmp eq i32 %i.dc, %i.cy
  br i1 %i.dm, label %bb.u, label %Vec_IntGrow.exit11.sink.split.i.1

bb.u:                                             ; preds = %bb.t
  %i.dn = icmp slt i32 %i.cy, 16
  br i1 %i.dn, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = icmp samesign ult i32 %i.cy, 1073741823
  %i.dp = shl nuw nsw i32 %i.cy, 1
  %spec.select.i.1 = select i1 %i.do, i32 %i.dp, i32 2147483647 ; 6 uses
  %.not.i9.i.1 = icmp samesign ult i32 %i.cy, %spec.select.i.1
  br i1 %.not.i9.i.1, label %bb.w, label %Vec_IntGrow.exit11.sink.split.i.1

bb.w:                                             ; preds = %bb.v
  %.not9.i10.i.1 = icmp eq ptr %i.cz, null
  %i.dq = zext nneg i32 %spec.select.i.1 to i64
  %i.dr = shl nuw nsw i64 %i.dq, 2                ; 2 uses
  br i1 %.not9.i10.i.1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ds = tail call ptr @realloc(ptr noundef nonnull %i.cz, i64 noundef %i.dr) #23 ; 2 uses
  br label %Vec_IntGrow.exit11.sink.split.i.1

bb.y:                                             ; preds = %bb.w
  %i.dt = tail call noalias ptr @malloc(i64 noundef %i.dr) #21 ; 2 uses
  br label %Vec_IntGrow.exit11.sink.split.i.1

bb.z:                                             ; preds = %bb.u
  %.not9.i.i.1 = icmp eq ptr %i.cz, null
  br i1 %.not9.i.i.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cz, i64 noundef 64) #23 ; 2 uses
  br label %Vec_IntGrow.exit11.sink.split.i.1

bb.ab:                                            ; preds = %bb.z
  %i.dv = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21 ; 2 uses
  br label %Vec_IntGrow.exit11.sink.split.i.1

Vec_IntGrow.exit11.sink.split.i.1:                ; preds = %bb.x, %bb.y, %bb.aa, %bb.ab, %bb.v, %bb.t
  %i.dw = phi ptr [ %i.cv, %bb.t ], [ %i.cv, %bb.v ], [ %i.dv, %bb.ab ], [ %i.du, %bb.aa ], [ %i.ds, %bb.x ], [ %i.dt, %bb.y ] ; 2 uses
  %i.dx = phi i32 [ %i.cw, %bb.t ], [ %i.cw, %bb.v ], [ 16, %bb.ab ], [ 16, %bb.aa ], [ %spec.select.i.1, %bb.x ], [ %spec.select.i.1, %bb.y ] ; 2 uses
end_hunk_0
