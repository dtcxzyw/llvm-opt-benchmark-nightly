Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddGroup?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Unknown group ckecking method\0A\00", align 1
@entry = internal unnamed_addr global ptr null, align 8
@ddTotalNumberSwapping = external local_unnamed_addr global i32, align 4
@originalSize = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define ptr @Cudd_MakeTreeNode(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = icmp ult i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.h, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.j = add i32 %i.i, %2                         ; 2 uses
  %i.k = add i32 %i.j, -1
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @Mtr_InitGroupTree(i32 noundef 0, i32 noundef %i.b) #12 ; 4 uses
  store ptr %i.p, ptr %i.m, align 8, !tbaa !29
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %i.t, ptr %i.u, align 4, !tbaa !32
  %.pre = load i32, ptr %i.a, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.v = phi i32 [ %.pre, %bb.f ], [ %i.b, %bb.d ]
  %.0 = phi ptr [ %i.p, %bb.f ], [ %i.n, %bb.d ]  ; 2 uses
  %. = tail call i32 @llvm.umax.i32(i32 %i.v, i32 %i.j)
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !33
  %spec.select = tail call i32 @llvm.umax.i32(i32 %., i32 %i.x)
  store i32 %spec.select, ptr %i.w, align 8, !tbaa !33
  %i.y = tail call ptr @Mtr_MakeGroup(ptr noundef nonnull %.0, i32 noundef %i.i, i32 noundef %2, i32 noundef %3) #12 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 %1, ptr %i.aa, align 4, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.h
  %.037 = phi ptr [ %i.y, %bb.h ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.g ]
  ret ptr %.037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @Mtr_InitGroupTree(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Mtr_MakeGroup(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cuddTreeSifting(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26
  %i.f = tail call ptr @Mtr_InitGroupTree(i32 noundef 0, i32 noundef %i.e) #12 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.i, ptr %i.j, align 4, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26   ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34   ; 9 uses
  %wide.trip.count = zext nneg i32 %i.m to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.q = icmp ult i32 %i.m, 8
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.d ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.d ]
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.t, ptr %i.s, align 4, !tbaa !35
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.w = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.w, ptr %i.v, align 4, !tbaa !35
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %indvars.iv.next.1
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.z, ptr %i.y, align 4, !tbaa !35
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aa = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %indvars.iv.next.2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !35
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %indvars.iv.next.3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.af = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !35
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %indvars.iv.next.4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !35
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %indvars.iv.next.5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  %i.al = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !35
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %indvars.iv.next.6
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 28
  %i.ao = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !35
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !61

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ap = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %indvars.iv.epil
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.ar = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !35
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.e, !llvm.loop !62

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %bb.c
  %i.as = tail call fastcc i32 @ddTreeSiftingAux(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i32 noundef %1)
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  tail call void @Cudd_FreeTree(ptr noundef nonnull %0) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  ret i32 %i.as
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ddTreeSiftingAux(ptr noundef %0, ptr nofree noundef captures(address) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %.not28 = icmp eq ptr %1, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 6 uses
  %.not27 = icmp eq i32 %2, 20
  br i1 %.not27, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.02129.us = phi ptr [ %i.m, %bb.f ], [ %1, %.lr.ph ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02129.us, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %.not24.us = icmp eq ptr %i.c, null
  br i1 %.not24.us, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.d = tail call fastcc i32 @ddTreeSiftingAux(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 20)
  %.not26.us = icmp eq i32 %i.d, 0
  br i1 %.not26.us, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 8, !tbaa !39
  store i32 0, ptr %i.a, align 8, !tbaa !39
  %i.f = tail call fastcc i32 @ddReorderChildren(ptr noundef nonnull %0, ptr noundef %.02129.us, i32 noundef 20)
  store i32 %i.e, ptr %i.a, align 8, !tbaa !39
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %._crit_edge, label %bb.f

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.h = getelementptr inbounds nuw i8, ptr %.02129.us, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !33
  %i.j = icmp ugt i32 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call fastcc i32 @ddReorderChildren(ptr noundef %0, ptr noundef %.02129.us, i32 noundef 20)
  %.not25.us = icmp eq i32 %i.k, 0
  br i1 %.not25.us, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.02129.us, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %.not.us = icmp eq ptr %i.m, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !63

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %.02129 = phi ptr [ %i.y, %bb.k ], [ %1, %.lr.ph ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02129, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38   ; 2 uses
  %.not24 = icmp eq ptr %i.o, null
  br i1 %.not24, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split
  %i.p = tail call fastcc i32 @ddTreeSiftingAux(ptr noundef %0, ptr noundef nonnull %i.o, i32 noundef %2)
  %.not26 = icmp eq i32 %i.p, 0
  br i1 %.not26, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %i.a, align 8, !tbaa !39
  store i32 0, ptr %i.a, align 8, !tbaa !39
  %i.r = tail call fastcc i32 @ddReorderChildren(ptr noundef nonnull %0, ptr noundef %.02129, i32 noundef 14)
  store i32 %i.q, ptr %i.a, align 8, !tbaa !39
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %._crit_edge, label %bb.k

bb.i:                                             ; preds = %.lr.ph.split
  %i.t = getelementptr inbounds nuw i8, ptr %.02129, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !33
  %i.v = icmp ugt i32 %i.u, 1
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = tail call fastcc i32 @ddReorderChildren(ptr noundef %0, ptr noundef %.02129, i32 noundef %2)
  %.not25 = icmp eq i32 %i.w, 0
  br i1 %.not25, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.02129, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.g, %bb.h, %bb.j, %bb.k, %bb.b, %bb.c, %bb.e, %bb.f, %bb.a
  %.022 = phi i32 [ 1, %bb.f ], [ 1, %bb.a ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.h ], [ 1, %bb.k ], [ 0, %bb.j ], [ 0, %bb.g ]
  ret i32 %.022
}

declare void @Cudd_FreeTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ddReorderChildren(ptr noundef %0, ptr nofree noundef nonnull captures(address) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 5 uses
  %.not.i = icmp slt i32 %i.b, %i.d
  br i1 %.not.i, label %bb.b, label %ddMergeGroups.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28   ; 24 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !33
  %i.n = add i32 %i.k, -1
  %i.o = add i32 %i.n, %i.m                       ; 2 uses
  %.not35.i = icmp slt i32 %i.o, %i.d
  br i1 %.not35.i, label %ddFindNodeHiLo.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %i.d, -1
  br label %ddFindNodeHiLo.exit

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.095 = phi i32 [ %spec.select, %.preheader.i ], [ -1, %bb.c ]
  %i.t = phi i32 [ %spec.select100, %.preheader.i ], [ %i.d, %bb.c ] ; 3 uses
  %.038.i = phi ptr [ %i.af, %.preheader.i ], [ %i.q, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.038.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !70
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !28   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.038.i, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !33
  %i.ab = add i32 %i.y, -1                        ; 2 uses
  %i.ac = add i32 %i.ab, %i.aa
  %.not37.i = icmp sge i32 %i.ac, %i.t
  %i.ad = icmp slt i32 %i.y, %i.t
  %or.cond.i = and i1 %i.ad, %.not37.i            ; 2 uses
  %spec.select = select i1 %or.cond.i, i32 %i.ab, i32 %.095 ; 2 uses
  %spec.select100 = select i1 %or.cond.i, i32 %i.d, i32 %i.t
  %i.ae = getelementptr inbounds nuw i8, ptr %.038.i, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %.not36.i = icmp eq ptr %i.af, null
  br i1 %.not36.i, label %ddFindNodeHiLo.exit, label %.preheader.i, !llvm.loop !64

ddFindNodeHiLo.exit:                              ; preds = %.preheader.i, %bb.b, %bb.d
  %.2 = phi i32 [ %i.s, %bb.d ], [ %i.o, %bb.b ], [ %spec.select, %.preheader.i ] ; 23 uses
  %i.ag = icmp eq i32 %.2, -1
  br i1 %i.ag, label %ddMergeGroups.exit, label %bb.e

bb.e:                                             ; preds = %ddFindNodeHiLo.exit
  %i.ah = load i32, ptr %1, align 8, !tbaa !71
  %i.ai = icmp eq i32 %i.ah, 4
  br i1 %i.ai, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %2, label %ddMergeGroups.exit [
    i32 2, label %bb.g
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %.preheader
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 14, label %bb.l
    i32 15, label %.preheader101
    i32 8, label %bb.w
    i32 9, label %bb.w
    i32 10, label %bb.w
    i32 11, label %bb.w
    i32 12, label %bb.w
    i32 13, label %bb.w
    i32 16, label %bb.x
    i32 17, label %bb.y
    i32 18, label %bb.z
    i32 19, label %.preheader103
    i32 21, label %bb.ab
    i32 20, label %bb.ac
  ]

.preheader103:                                    ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %.pre = load i32, ptr %i.aj, align 4, !tbaa !41
  %.pre111 = load i32, ptr %i.ak, align 8, !tbaa !42
  br label %bb.aa

.preheader101:                                    ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.pre112 = load i32, ptr %i.al, align 4, !tbaa !41
  %.pre113 = load i32, ptr %i.am, align 8, !tbaa !42
  br label %bb.q

.preheader:                                       ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %.pre114 = load i32, ptr %i.ap, align 4, !tbaa !41
  %.pre115 = load i32, ptr %i.aq, align 8, !tbaa !42
  br label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.ar = tail call i32 @cuddSwapping(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2, i32 noundef %2) #12
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.as = tail call i32 @cuddSifting(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2) #12
  br label %.loopexit

bb.i:                                             ; preds = %.preheader, %bb.i
  %i.at = phi i32 [ %.pre115, %.preheader ], [ %i.ay, %bb.i ]
  %i.au = phi i32 [ %.pre114, %.preheader ], [ %i.ax, %bb.i ]
  %i.av = sub i32 %i.au, %i.at
  %i.aw = tail call i32 @cuddSifting(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2) #12 ; 2 uses
  %i.ax = load i32, ptr %i.ap, align 4, !tbaa !41 ; 2 uses
  %i.ay = load i32, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.az = sub i32 %i.ax, %i.ay
  %i.ba = icmp ugt i32 %i.av, %i.az
  %i.bb = icmp ne i32 %i.aw, 0
  %or.cond = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond, label %bb.i, label %.loopexit, !llvm.loop !65

bb.j:                                             ; preds = %bb.f
  %i.bc = tail call i32 @cuddSymmSifting(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2) #12
  br label %.loopexit

bb.k:                                             ; preds = %bb.f
  %i.bd = tail call i32 @cuddSymmSiftingConv(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2) #12
  br label %.loopexit

bb.l:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !39
  switch i32 %i.bf, label %bb.p [
    i32 0, label %bb.m
    i32 5, label %bb.n
    i32 7, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.bg = tail call fastcc i32 @ddGroupSifting(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2, ptr noundef nonnull @ddNoCheck, i32 noundef 0)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.bh = tail call fastcc i32 @ddGroupSifting(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2, ptr noundef nonnull @ddExtSymmCheck, i32 noundef 0)
  br label %.loopexit

bb.o:                                             ; preds = %bb.l
  %i.bi = tail call fastcc i32 @ddGroupSifting(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2, ptr noundef nonnull @ddExtSymmCheck, i32 noundef 0)
  br label %.loopexit

bb.p:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !72
  %fwrite63 = tail call i64 @fwrite(ptr nonnull @.str, i64 30, i64 1, ptr %i.bk) ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %.preheader101, %bb.v
  %i.bl = phi i32 [ %.pre113, %.preheader101 ], [ %i.bv, %bb.v ]
  %i.bm = phi i32 [ %.pre112, %.preheader101 ], [ %i.bu, %bb.v ]
  %i.bn = sub i32 %i.bm, %i.bl
  %i.bo = load i32, ptr %i.an, align 8, !tbaa !39
  switch i32 %i.bo, label %bb.u [
    i32 0, label %bb.r
    i32 5, label %bb.s
    i32 7, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.bp = tail call fastcc i32 @ddGroupSifting(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2, ptr noundef nonnull @ddNoCheck, i32 noundef 0) ; 0 uses
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bq = tail call fastcc i32 @ddGroupSifting(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2, ptr noundef nonnull @ddExtSymmCheck, i32 noundef 0) ; 0 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.br = tail call fastcc i32 @ddGroupSifting(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2, ptr noundef nonnull @ddExtSymmCheck, i32 noundef 0) ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.ao, align 8, !tbaa !72
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str, i64 30, i64 1, ptr %i.bs) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  %i.bt = tail call i32 @cuddWindowReorder(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2, i32 noundef 10) #12 ; 2 uses
  %i.bu = load i32, ptr %i.al, align 4, !tbaa !41 ; 2 uses
  %i.bv = load i32, ptr %i.am, align 8, !tbaa !42 ; 2 uses
  %i.bw = sub i32 %i.bu, %i.bv
  %i.bx = icmp ugt i32 %i.bn, %i.bw
  %i.by = icmp ne i32 %i.bt, 0
  %or.cond3 = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond3, label %bb.q, label %.loopexit, !llvm.loop !66

bb.w:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.bz = tail call i32 @cuddWindowReorder(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2, i32 noundef %2) #12
  br label %.loopexit

bb.x:                                             ; preds = %bb.f
  %i.ca = tail call i32 @cuddAnnealing(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2) #12
  br label %.loopexit

bb.y:                                             ; preds = %bb.f
  %i.cb = tail call i32 @cuddGa(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2) #12
  br label %.loopexit

bb.z:                                             ; preds = %bb.f
  %i.cc = tail call i32 @cuddLinearAndSifting(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2) #12
  br label %.loopexit

bb.aa:                                            ; preds = %.preheader103, %bb.aa
  %i.cd = phi i32 [ %.pre111, %.preheader103 ], [ %i.ci, %bb.aa ]
  %i.ce = phi i32 [ %.pre, %.preheader103 ], [ %i.ch, %bb.aa ]
  %i.cf = sub i32 %i.ce, %i.cd
  %i.cg = tail call i32 @cuddLinearAndSifting(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2) #12 ; 2 uses
  %i.ch = load i32, ptr %i.aj, align 4, !tbaa !41 ; 2 uses
  %i.ci = load i32, ptr %i.ak, align 8, !tbaa !42 ; 2 uses
  %i.cj = sub i32 %i.ch, %i.ci
  %i.ck = icmp ugt i32 %i.cf, %i.cj
  %i.cl = icmp ne i32 %i.cg, 0
  %or.cond5 = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond5, label %bb.aa, label %.loopexit, !llvm.loop !67

bb.ab:                                            ; preds = %bb.f
  %i.cm = tail call i32 @cuddExact(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2) #12
  br label %.loopexit

bb.ac:                                            ; preds = %bb.f
  %i.cn = tail call fastcc i32 @ddGroupSifting(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %.2, ptr noundef nonnull @ddVarGroupCheck, i32 noundef 1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aa, %bb.v, %bb.i, %bb.e, %bb.g, %bb.h, %bb.j, %bb.k, %bb.w, %bb.x, %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.n, %bb.p, %bb.o, %bb.m
  %.0 = phi i32 [ %i.cn, %bb.ac ], [ %i.ar, %bb.g ], [ %i.as, %bb.h ], [ 1, %bb.e ], [ %i.bc, %bb.j ], [ %i.bd, %bb.k ], [ %i.bg, %bb.m ], [ %i.bh, %bb.n ], [ %i.bi, %bb.o ], [ 0, %bb.p ], [ %i.bt, %bb.v ], [ %i.bz, %bb.w ], [ %i.ca, %bb.x ], [ %i.cb, %bb.y ], [ %i.cc, %bb.z ], [ %i.aw, %bb.i ], [ %i.cm, %bb.ab ], [ %i.cg, %bb.aa ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !29
  %.not.i64 = icmp eq ptr %1, %i.cp
  br i1 %.not.i64, label %bb.ad, label %.preheader.i65

.preheader.i65:                                   ; preds = %.loopexit
  %i.cq = icmp slt i32 %i.k, %.2
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !34 ; 10 uses
  br i1 %i.cq, label %.lr.ph.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %.preheader.i65
  %.pre27.i = sext i32 %.2 to i64
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i65
  %i.ct = sext i32 %i.k to i64                    ; 4 uses
  %wide.trip.count.i = sext i32 %.2 to i64        ; 5 uses
  %i.cu = sub nsw i64 %wide.trip.count.i, %i.ct
  %xtraiter = and i64 %i.cu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.ct, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 3 uses
  %i.cv = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %indvars.iv.i.prol
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  %i.cx = trunc nsw i64 %indvars.iv.next.i.prol to i32
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !35
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !68

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.ct, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.cy = sub nsw i64 %i.ct, %wide.trip.count.i
  %i.cz = icmp ugt i64 %i.cy, -8
  br i1 %i.cz, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 9 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.da = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %indvars.iv.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 28
  %i.dc = trunc nsw i64 %indvars.iv.next.i to i32
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !35
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.dd = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %indvars.iv.next.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  %i.df = trunc nsw i64 %indvars.iv.next.i.1 to i32
  store i32 %i.df, ptr %i.de, align 4, !tbaa !35
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.dg = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %indvars.iv.next.i.1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  %i.di = trunc nsw i64 %indvars.iv.next.i.2 to i32
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !35
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.dj = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %indvars.iv.next.i.2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.dl = trunc nsw i64 %indvars.iv.next.i.3 to i32
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !35
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.dm = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %indvars.iv.next.i.3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 28
  %i.do = trunc nsw i64 %indvars.iv.next.i.4 to i32
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !35
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.dp = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %indvars.iv.next.i.4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  %i.dr = trunc nsw i64 %indvars.iv.next.i.5 to i32
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !35
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.ds = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %indvars.iv.next.i.5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  %i.du = trunc nsw i64 %indvars.iv.next.i.6 to i32
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !35
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.dv = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %indvars.iv.next.i.6
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 28
  %i.dx = trunc nsw i64 %indvars.iv.next.i.7 to i32
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !35
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !69

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %.preheader.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre27.i, %.preheader.._crit_edge_crit_edge.i ], [ %wide.trip.count.i, %.lr.ph.i.new ], [ %wide.trip.count.i, %.prol.loopexit ]
  %i.dy = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %.pre-phi.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 28
  store i32 %i.k, ptr %i.dz, align 4, !tbaa !35
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i, %.loopexit
  %i.ea = load i32, ptr %i.g, align 4, !tbaa !32
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !30
  %i.ed = sext i32 %i.k to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.0.i = phi ptr [ %1, %bb.ad ], [ %i.ei, %bb.af ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !32
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !73 ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %ddMergeGroups.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !32
  %.not24.i = icmp eq i32 %i.el, %i.ea
  br i1 %.not24.i, label %bb.ae, label %ddMergeGroups.exit

ddMergeGroups.exit:                               ; preds = %bb.af, %bb.ae, %bb.a, %bb.f, %ddFindNodeHiLo.exit
  %.059 = phi i32 [ 1, %ddFindNodeHiLo.exit ], [ 1, %bb.a ], [ 0, %bb.f ], [ %.0, %bb.ae ], [ %.0, %bb.af ]
  ret i32 %.059
}

declare i32 @cuddSwapping(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cuddSifting(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cuddSymmSifting(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cuddSymmSiftingConv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ddGroupSifting(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 7 uses
  store ptr null, ptr @entry, align 8, !tbaa !43
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2                      ; 3 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #13 ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread282, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.d) #13 ; 4 uses
  store ptr %i.g, ptr @entry, align 8, !tbaa !43
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread285, label %bb.c

.thread285:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.i, align 8, !tbaa !81
  tail call void @free(ptr noundef nonnull %i.e) #12
  br label %bb.ap

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.d) #13 ; 9 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit.thread274, label %.preheader226

.preheader226:                                    ; preds = %bb.c
  %i.l = icmp sgt i32 %i.b, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader226
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = zext nneg i32 %i.b to i64                ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.r, i1 false), !tbaa !28
  br label %bb.d

.loopexit.thread274:                              ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.s, align 8, !tbaa !81
  br label %bb.an

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %.0162230 = phi i32 [ 0, %.lr.ph ], [ %.1163, %bb.f ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28   ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [56 x i8], ptr %i.p, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !35
  %.not200 = icmp ult i32 %i.u, %i.y
  br i1 %.not200, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !28
  %i.ac = sext i32 %.0162230 to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ac
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !28
  %i.af = add nsw i32 %.0162230, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1163 = phi i32 [ %i.af, %bb.e ], [ %.0162230, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.f, %.preheader226
  %.0162.lcssa = phi i32 [ 0, %.preheader226 ], [ %.1163, %bb.f ] ; 3 uses
  %i.ag = sext i32 %.0162.lcssa to i64
  tail call void @qsort(ptr noundef nonnull %i.e, i64 noundef %i.ag, i64 noundef 4, ptr noundef nonnull @ddUniqueCompareGroup) #12
  %.not = icmp eq i32 %4, 0                       ; 4 uses
  %i.ah = icmp slt i32 %i.b, 1
  %or.cond240.not = or i1 %i.ah, %.not
  br i1 %or.cond240.not, label %.loopexit225, label %.lr.ph232

.lr.ph232:                                        ; preds = %._crit_edge
  %i.ai = load i32, ptr %i.a, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.al = sext i32 %i.ai to i64                   ; 3 uses
  %wide.trip.count248 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count248, 1
  %i.am = icmp eq i32 %i.b, 1
  br i1 %i.am, label %.epil.preheader, label %.lr.ph232.new

.lr.ph232.new:                                    ; preds = %.lr.ph232
  %unroll_iter = and i64 %wide.trip.count248, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %ddResetVarHandled.exit.1, %.lr.ph232.new
  %indvars.iv245 = phi i64 [ 0, %.lr.ph232.new ], [ %indvars.iv.next246.1, %ddResetVarHandled.exit.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph232.new ], [ %niter.next.1, %ddResetVarHandled.exit.1 ]
  %.not221 = icmp slt i64 %indvars.iv245, %i.al
  br i1 %.not221, label %bb.h, label %ddResetVarHandled.exit

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !34
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv245
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [56 x i8], ptr %i.an, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 44
  store i32 0, ptr %i.at, align 4, !tbaa !45
  br label %ddResetVarHandled.exit

ddResetVarHandled.exit:                           ; preds = %bb.g, %bb.h
  %indvars.iv.next246 = or disjoint i64 %indvars.iv245, 1 ; 2 uses
  %.not221.1 = icmp slt i64 %indvars.iv.next246, %i.al
  br i1 %.not221.1, label %bb.i, label %ddResetVarHandled.exit.1

bb.i:                                             ; preds = %ddResetVarHandled.exit
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !34
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next246
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !28
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [56 x i8], ptr %i.au, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 44
  store i32 0, ptr %i.ba, align 4, !tbaa !45
  br label %ddResetVarHandled.exit.1

ddResetVarHandled.exit.1:                         ; preds = %bb.i, %ddResetVarHandled.exit
  %indvars.iv.next246.1 = add nuw nsw i64 %indvars.iv245, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit225.loopexit.unr-lcssa, label %bb.g, !llvm.loop !75

.loopexit225.loopexit.unr-lcssa:                  ; preds = %ddResetVarHandled.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit225, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit225.loopexit.unr-lcssa, %.lr.ph232
  %indvars.iv245.epil.init = phi i64 [ 0, %.lr.ph232 ], [ %indvars.iv.next246.1, %.loopexit225.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod296 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod296)
  %.not221.epil = icmp slt i64 %indvars.iv245.epil.init, %i.al
  br i1 %.not221.epil, label %bb.j, label %.loopexit225

bb.j:                                             ; preds = %.epil.preheader
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !34
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv245.epil.init
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !28
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [56 x i8], ptr %i.bb, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  store i32 0, ptr %i.bh, align 4, !tbaa !45
  br label %.loopexit225

.loopexit225:                                     ; preds = %.loopexit225.loopexit.unr-lcssa, %bb.j, %.epil.preheader, %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !82
  %.0162.234 = tail call i32 @llvm.smin.i32(i32 %.0162.lcssa, i32 %i.bj)
  %i.bk = icmp sgt i32 %.0162.234, 0
  br i1 %i.bk, label %.lr.ph237, label %._crit_edge238

.lr.ph237:                                        ; preds = %.loopexit225
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph237, %ddSetVarHandled.exit
  %indvars.iv250 = phi i64 [ 0, %.lr.ph237 ], [ %indvars.iv.next251, %ddSetVarHandled.exit ] ; 2 uses
  %i.bq = load i32, ptr @ddTotalNumberSwapping, align 4, !tbaa !28
  %i.br = load i32, ptr %i.bl, align 4, !tbaa !83
  %.not188 = icmp slt i32 %i.bq, %i.br
  br i1 %.not188, label %bb.l, label %._crit_edge238

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv250
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !28 ; 3 uses
  %i.bu = sext i32 %i.bt to i64                   ; 4 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !28
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %ddSetVarHandled.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !27
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.bu
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !28 ; 5 uses
  %i.cb = icmp slt i32 %i.ca, %1
  %i.cc = icmp sgt i32 %i.ca, %2
  %or.cond204 = or i1 %i.cb, %i.cc
  br i1 %or.cond204, label %ddSetVarHandled.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %i.bn, align 8, !tbaa !34
  %i.ce = sext i32 %i.ca to i64
  %i.cf = getelementptr inbounds [56 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !84
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %ddSetVarHandled.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !35
  %i.cl = icmp eq i32 %i.ca, %i.ck                ; 2 uses
  %.ddNoCheck = select i1 %i.cl, ptr %3, ptr @ddNoCheck
  %i.cm = tail call fastcc i32 @ddGroupSiftingAux(ptr noundef nonnull %0, i32 noundef %i.ca, i32 noundef %1, i32 noundef %2, ptr noundef %.ddNoCheck, i32 noundef %4)
  %.not189 = icmp eq i32 %i.cm, 0
  br i1 %.not189, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cn = load i32, ptr %i.bo, align 8, !tbaa !39
  %i.co = icmp eq i32 %i.cn, 7
  br i1 %i.co, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.cp = load ptr, ptr %i.bm, align 8, !tbaa !27
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.bu
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !28 ; 12 uses
  %i.cs = load ptr, ptr %i.bn, align 8, !tbaa !34 ; 2 uses
  %i.ct = sext i32 %i.cr to i64                   ; 2 uses
  %i.cu = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 28
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !35
  %i.cx = icmp eq i32 %i.cr, %i.cw
  br i1 %i.cx, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %.not190 = icmp eq i32 %i.cr, %2
  br i1 %.not190, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = load ptr, ptr %i.bp, align 8, !tbaa !30
  %i.cz = add nsw i32 %i.cr, 1                    ; 5 uses
  %i.da = sext i32 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !28
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !28
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.dh = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %i.da
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !35
  %i.dk = icmp eq i32 %i.cz, %i.dj
  br i1 %i.dk, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dl = tail call fastcc i32 @ddSecDiffCheck(ptr noundef nonnull %0, i32 noundef %i.cr, i32 noundef %i.cz)
  %.not191 = icmp eq i32 %i.dl, 0
  br i1 %.not191, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = load ptr, ptr %i.bn, align 8, !tbaa !34 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.0.i205 = phi i32 [ %i.cz, %bb.w ], [ %i.dq, %bb.x ] ; 2 uses
  %i.dn = sext i32 %.0.i205 to i64
  %i.do = getelementptr inbounds [56 x i8], ptr %i.dm, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !35 ; 2 uses
  %i.dr = icmp ult i32 %.0.i205, %i.dq
  br i1 %i.dr, label %bb.x, label %ddCreateGroup.exit, !llvm.loop !76

ddCreateGroup.exit:                               ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  %i.dt = getelementptr inbounds [56 x i8], ptr %i.dm, i64 %i.ct
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 28
  store i32 %i.cz, ptr %i.du, align 4, !tbaa !35
  store i32 %i.cr, ptr %i.ds, align 4, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %ddCreateGroup.exit, %bb.u, %bb.t, %bb.s
  %.not194 = phi i1 [ false, %ddCreateGroup.exit ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ true, %bb.s ]
  %.not192 = icmp eq i32 %i.cr, %1
  br i1 %.not192, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dv = load ptr, ptr %i.bp, align 8, !tbaa !30
  %i.dw = add nsw i32 %i.cr, -1                   ; 4 uses
  %i.dx = sext i32 %i.dw to i64                   ; 3 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !28
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !28
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.ee = load ptr, ptr %i.bn, align 8, !tbaa !34
  %i.ef = getelementptr inbounds [56 x i8], ptr %i.ee, i64 %i.dx
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 28
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !35
  %i.ei = icmp eq i32 %i.dw, %i.eh
  br i1 %i.ei, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ej = tail call fastcc i32 @ddSecDiffCheck(ptr noundef nonnull %0, i32 noundef %i.dw, i32 noundef %i.cr)
  %.not193 = icmp eq i32 %i.ej, 0
  br i1 %.not193, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ek = load ptr, ptr %i.bn, align 8, !tbaa !34 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %.0.i206 = phi i32 [ %i.cr, %bb.ac ], [ %i.eo, %bb.ad ] ; 2 uses
  %i.el = sext i32 %.0.i206 to i64
  %i.em = getelementptr inbounds [56 x i8], ptr %i.ek, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !35 ; 2 uses
  %i.ep = icmp ult i32 %.0.i206, %i.eo
  br i1 %i.ep, label %bb.ad, label %.thread267, !llvm.loop !76

.thread267:                                       ; preds = %bb.ad
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  %i.er = getelementptr inbounds [56 x i8], ptr %i.ek, i64 %i.dx
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 28
  store i32 %i.cr, ptr %i.es, align 4, !tbaa !35
  store i32 %i.dw, ptr %i.eq, align 4, !tbaa !35
  br label %.preheader223

bb.ae:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  br i1 %.not194, label %.thread, label %.preheader223

.preheader223:                                    ; preds = %.thread267, %bb.ae
  %i.et = load ptr, ptr %i.bn, align 8, !tbaa !34
  br label %bb.af

bb.af:                                            ; preds = %.preheader223, %bb.af
  %.1165 = phi i32 [ %i.ex, %bb.af ], [ %i.cr, %.preheader223 ] ; 3 uses
  %i.eu = sext i32 %.1165 to i64
  %i.ev = getelementptr inbounds [56 x i8], ptr %i.et, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 28
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !35 ; 2 uses
  %i.ey = icmp ult i32 %.1165, %i.ex
  br i1 %i.ey, label %bb.af, label %bb.ag, !llvm.loop !77

bb.ag:                                            ; preds = %bb.af
  %i.ez = tail call fastcc i32 @ddGroupSiftingAux(ptr noundef nonnull %0, i32 noundef %.1165, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @ddNoCheck, i32 noundef 0)
  %.not195 = icmp eq i32 %i.ez, 0
  br i1 %.not195, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.p, %bb.q, %bb.r, %bb.ag, %bb.ae
  %i.fa = load ptr, ptr %i.bm, align 8, !tbaa !27
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.bu
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !28 ; 6 uses
  %i.fd = load ptr, ptr %i.bn, align 8, !tbaa !34 ; 3 uses
  %i.fe = sext i32 %i.fc to i64
  %i.ff = getelementptr inbounds [56 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 28
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !35
  %.not196 = icmp eq i32 %i.fc, %i.fh
  br i1 %.not196, label %bb.aj, label %.preheader222

.preheader222:                                    ; preds = %.thread
  %i.fi = load ptr, ptr %i.bp, align 8, !tbaa !30
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader222, %bb.ah
  %.2 = phi i32 [ %i.fq, %bb.ah ], [ %i.fc, %.preheader222 ]
  %i.fj = sext i32 %.2 to i64                     ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !28
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.fm
  store i32 1, ptr %i.fn, align 4, !tbaa !28
  %i.fo = getelementptr inbounds [56 x i8], ptr %i.fd, i64 %i.fj
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 28
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !35 ; 2 uses
  %.not197 = icmp eq i32 %i.fq, %i.fc
  br i1 %.not197, label %bb.ai, label %bb.ah, !llvm.loop !78

bb.ai:                                            ; preds = %bb.ah
  %or.cond = and i1 %.not, %i.cl
  br i1 %or.cond, label %.preheader, label %bb.aj

.preheader:                                       ; preds = %bb.ai, %.preheader
  %.3 = phi i32 [ %i.fu, %.preheader ], [ %i.fc, %bb.ai ] ; 2 uses
  %i.fr = sext i32 %.3 to i64
  %i.fs = getelementptr inbounds [56 x i8], ptr %i.fd, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 28 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !35 ; 2 uses
  store i32 %.3, ptr %i.ft, align 4, !tbaa !35
  %.not198 = icmp eq i32 %i.fu, %i.fc
  br i1 %.not198, label %ddSetVarHandled.exit, label %.preheader, !llvm.loop !79

bb.aj:                                            ; preds = %bb.ai, %.thread
  br i1 %.not, label %ddSetVarHandled.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fv = load i32, ptr %i.a, align 8, !tbaa !26
  %i.fw = icmp sge i32 %i.bt, %i.fv
  %i.fx = icmp slt i32 %i.bt, 0
  %or.cond.i = or i1 %i.fx, %i.fw
  br i1 %or.cond.i, label %ddSetVarHandled.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ff, i64 44
  store i32 1, ptr %i.fy, align 4, !tbaa !45
  br label %ddSetVarHandled.exit

ddSetVarHandled.exit:                             ; preds = %.preheader, %bb.al, %bb.ak, %bb.aj, %bb.m, %bb.n, %bb.l
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %i.fz = load i32, ptr %i.bi, align 8, !tbaa !82
  %.0162. = tail call i32 @llvm.smin.i32(i32 %.0162.lcssa, i32 %i.fz)
  %i.ga = sext i32 %.0162. to i64
  %i.gb = icmp slt i64 %indvars.iv.next251, %i.ga
  br i1 %i.gb, label %bb.k, label %._crit_edge238, !llvm.loop !80

._crit_edge238:                                   ; preds = %bb.k, %ddSetVarHandled.exit, %.loopexit225
  tail call void @free(ptr noundef %i.j) #12
  tail call void @free(ptr noundef %i.e) #12
  %i.gc = load ptr, ptr @entry, align 8, !tbaa !43 ; 2 uses
  %.not199 = icmp eq ptr %i.gc, null
  br i1 %.not199, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %._crit_edge238
  tail call void @free(ptr noundef nonnull %i.gc) #12
  store ptr null, ptr @entry, align 8, !tbaa !43
  br label %bb.ap

.loopexit:                                        ; preds = %bb.ag, %bb.o
  %.pr.pre = load ptr, ptr @entry, align 8, !tbaa !43 ; 2 uses
  %.not201 = icmp eq ptr %.pr.pre, null
  br i1 %.not201, label %.thread288, label %bb.an

.thread288:                                       ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.e) #12
  br label %bb.ao

.thread282:                                       ; preds = %bb.a
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.gd, align 8, !tbaa !81
  br label %bb.ap

bb.an:                                            ; preds = %.loopexit, %.loopexit.thread274
  %.pr278 = phi ptr [ %i.g, %.loopexit.thread274 ], [ %.pr.pre, %.loopexit ]
  tail call void @free(ptr noundef nonnull %.pr278) #12
  store ptr null, ptr @entry, align 8, !tbaa !43
  tail call void @free(ptr noundef nonnull %i.e) #12
  %.not203 = icmp eq ptr %i.j, null
  br i1 %.not203, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.thread288, %bb.an
  tail call void @free(ptr noundef nonnull %i.j) #12
  br label %bb.ap

bb.ap:                                            ; preds = %.thread285, %.thread282, %bb.an, %bb.ao, %bb.am, %._crit_edge238
  %.0169 = phi i32 [ 1, %bb.am ], [ 1, %._crit_edge238 ], [ 0, %bb.ao ], [ 0, %bb.an ], [ 0, %.thread282 ], [ 0, %.thread285 ]
  ret i32 %.0169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ddNoCheck(ptr nofree readnone captures(none) %0, i32 %1, i32 %2) #3 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ddExtSymmCheck(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28   ; 4 uses
  %i.i = tail call i32 @cuddTestInteract(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.h) #12
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = getelementptr inbounds [56 x i8], ptr %i.k, i64 %i.c ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !90   ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !91
  %i.r = icmp sgt i32 %i.p, 0
  br i1 %i.r, label %.lr.ph124.preheader, label %._crit_edge125

.lr.ph124.preheader:                              ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !44
  %i.u = uitofp i32 %i.t to double
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.w = load i32, ptr %i.v, align 8, !tbaa !92
  %i.x = sitofp i32 %i.w to double
  %i.y = fdiv double %i.x, 1.000000e+02
  %i.z = tail call double @llvm.fmuladd.f64(double %i.u, double %i.y, double 5.000000e-01)
  %i.aa = fptosi double %i.z to i32
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph124.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.081121 = phi i32 [ %i.aa, %.lr.ph124.preheader ], [ %.182.lcssa, %._crit_edge ] ; 2 uses
  %.085120 = phi i32 [ 0, %.lr.ph124.preheader ], [ %.186.lcssa, %._crit_edge ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %.095114 = load ptr, ptr %i.ab, align 8, !tbaa !46 ; 2 uses
  %.not101115 = icmp eq ptr %.095114, %0
  br i1 %.not101115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph124, %bb.n
  %.095118 = phi ptr [ %.095, %bb.n ], [ %.095114, %.lr.ph124 ] ; 4 uses
  %.182117 = phi i32 [ %.4, %bb.n ], [ %.081121, %.lr.ph124 ] ; 4 uses
  %.186116 = phi i32 [ %.388, %bb.n ], [ %.085120, %.lr.ph124 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.095118, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !93 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.095118, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !93
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = and i64 %i.ag, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 7 uses
  %.not102 = icmp eq ptr %i.ad, %i.n
  %.not103 = icmp eq ptr %i.n, %i.ai
  %or.cond107 = select i1 %.not102, i1 %.not103, i1 false
  br i1 %or.cond107, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.095118, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !47
  %i.al = icmp ne i32 %i.ak, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.am = phi i1 [ %i.al, %bb.c ], [ true, %.lr.ph ] ; 2 uses
  %i.an = load i32, ptr %i.ad, align 8, !tbaa !94
  %i.ao = icmp eq i32 %i.an, %i.h
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = add nsw i32 %.186116, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !93
  %.pre = load i32, ptr %i.ai, align 8, !tbaa !94
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.au = load i32, ptr %i.ai, align 8, !tbaa !94 ; 3 uses
  %i.av = icmp ne i32 %i.au, %i.h
  %or.cond = select i1 %i.av, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp eq i32 %.182117, 0
  br i1 %i.aw, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = add nsw i32 %.182117, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.e
  %i.ay = phi i32 [ %.pre, %bb.e ], [ %i.au, %bb.h ], [ %i.au, %bb.f ]
  %.090 = phi ptr [ %i.ar, %bb.e ], [ %i.ad, %bb.h ], [ %i.ad, %bb.f ]
  %.089 = phi ptr [ %i.at, %bb.e ], [ %i.ad, %bb.h ], [ %i.ad, %bb.f ]
  %.287 = phi i32 [ %i.ap, %bb.e ], [ %.186116, %bb.h ], [ %.186116, %bb.f ] ; 2 uses
  %.3 = phi i32 [ %.182117, %bb.e ], [ %i.ax, %bb.h ], [ %.182117, %bb.f ] ; 3 uses
  %i.az = icmp eq i32 %i.ay, %i.h
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = add nsw i32 %.287, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !93
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !93
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.093 = phi ptr [ %i.bc, %bb.j ], [ %i.ai, %bb.i ] ; 2 uses
  %.091 = phi ptr [ %i.be, %bb.j ], [ %i.ai, %bb.i ] ; 2 uses
  %.388 = phi i32 [ %i.ba, %bb.j ], [ %.287, %bb.i ] ; 2 uses
  %i.bf = and i64 %i.ag, 1
  %.not104 = icmp eq i64 %i.bf, 0                 ; 2 uses
  %i.bg = ptrtoint ptr %.093 to i64
  %i.bh = xor i64 %i.bg, 1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = ptrtoint ptr %.091 to i64
  %i.bk = xor i64 %i.bj, 1
  %i.bl = inttoptr i64 %i.bk to ptr
  %.194 = select i1 %.not104, ptr %.093, ptr %i.bi
  %.192 = select i1 %.not104, ptr %.091, ptr %i.bl
  %.not108 = xor i1 %i.am, true
  %.not105 = icmp eq ptr %.194, %.089
  %or.cond109 = select i1 %.not108, i1 true, i1 %.not105
  %.not106 = icmp eq ptr %.090, %.192
  %or.cond110 = select i1 %or.cond109, i1 true, i1 %.not106
  br i1 %or.cond110, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp eq i32 %.3, 0
  br i1 %i.bm, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = add nsw i32 %.3, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.4 = phi i32 [ %i.bn, %bb.m ], [ %.3, %bb.k ]  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.095118, i64 8
  %.095 = load ptr, ptr %i.bo, align 8, !tbaa !46 ; 2 uses
  %.not101 = icmp eq ptr %.095, %0
  br i1 %.not101, label %._crit_edge, label %.lr.ph, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.n, %.lr.ph124
  %.186.lcssa = phi i32 [ %.085120, %.lr.ph124 ], [ %.388, %bb.n ] ; 2 uses
  %.182.lcssa = phi i32 [ %.081121, %.lr.ph124 ], [ %.4, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge125, label %.lr.ph124, !llvm.loop !86

._crit_edge125:                                   ; preds = %._crit_edge, %bb.b
  %.085.lcssa = phi i32 [ 0, %bb.b ], [ %.186.lcssa, %._crit_edge ]
  %i.bp = getelementptr inbounds [56 x i8], ptr %i.k, i64 %i.f ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !90 ; 4 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !91 ; 3 uses
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph138.preheader, label %._crit_edge139

.lr.ph138.preheader:                              ; preds = %._crit_edge125
  %wide.trip.count145 = zext nneg i32 %i.br to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count145, 1
  %i.bu = icmp eq i32 %i.br, 1
  br i1 %i.bu, label %.lr.ph138.epil.preheader, label %.lr.ph138.preheader.new

.lr.ph138.preheader.new:                          ; preds = %.lr.ph138.preheader
  %unroll_iter = and i64 %wide.trip.count145, 2147483646
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %._crit_edge133.1, %.lr.ph138.preheader.new
  %indvars.iv142 = phi i64 [ 0, %.lr.ph138.preheader.new ], [ %indvars.iv.next143.1, %._crit_edge133.1 ] ; 3 uses
  %.083135 = phi i32 [ -1, %.lr.ph138.preheader.new ], [ %.184.lcssa.1, %._crit_edge133.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph138.preheader.new ], [ %niter.next.1, %._crit_edge133.1 ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv142
  %.196127 = load ptr, ptr %i.bv, align 8, !tbaa !46 ; 2 uses
  %.not100128 = icmp eq ptr %.196127, %0
  br i1 %.not100128, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph138, %.lr.ph132
  %.196130 = phi ptr [ %.196, %.lr.ph132 ], [ %.196127, %.lr.ph138 ] ; 2 uses
  %.184129 = phi i32 [ %i.by, %.lr.ph132 ], [ %.083135, %.lr.ph138 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.196130, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !47
  %i.by = add i32 %i.bx, %.184129                 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.196130, i64 8
  %.196 = load ptr, ptr %i.bz, align 8, !tbaa !46 ; 2 uses
  %.not100 = icmp eq ptr %.196, %0
  br i1 %.not100, label %._crit_edge133, label %.lr.ph132, !llvm.loop !87

._crit_edge133:                                   ; preds = %.lr.ph132, %.lr.ph138
  %.184.lcssa = phi i32 [ %.083135, %.lr.ph138 ], [ %i.by, %.lr.ph132 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv142
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.196127.1 = load ptr, ptr %i.cb, align 8, !tbaa !46 ; 2 uses
  %.not100128.1 = icmp eq ptr %.196127.1, %0
  br i1 %.not100128.1, label %._crit_edge133.1, label %.lr.ph132.1

.lr.ph132.1:                                      ; preds = %._crit_edge133, %.lr.ph132.1
  %.196130.1 = phi ptr [ %.196.1, %.lr.ph132.1 ], [ %.196127.1, %._crit_edge133 ] ; 2 uses
  %.184129.1 = phi i32 [ %i.ce, %.lr.ph132.1 ], [ %.184.lcssa, %._crit_edge133 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.196130.1, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !47
  %i.ce = add i32 %i.cd, %.184129.1               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.196130.1, i64 8
  %.196.1 = load ptr, ptr %i.cf, align 8, !tbaa !46 ; 2 uses
  %.not100.1 = icmp eq ptr %.196.1, %0
  br i1 %.not100.1, label %._crit_edge133.1, label %.lr.ph132.1, !llvm.loop !87

._crit_edge133.1:                                 ; preds = %.lr.ph132.1, %._crit_edge133
  %.184.lcssa.1 = phi i32 [ %.184.lcssa, %._crit_edge133 ], [ %i.ce, %.lr.ph132.1 ] ; 3 uses
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge139.loopexit.unr-lcssa, label %.lr.ph138, !llvm.loop !88

._crit_edge139.loopexit.unr-lcssa:                ; preds = %._crit_edge133.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge139, label %.lr.ph138.epil.preheader

.lr.ph138.epil.preheader:                         ; preds = %._crit_edge139.loopexit.unr-lcssa, %.lr.ph138.preheader
  %indvars.iv142.epil.init = phi i64 [ 0, %.lr.ph138.preheader ], [ %indvars.iv.next143.1, %._crit_edge139.loopexit.unr-lcssa ]
  %.083135.epil.init = phi i32 [ -1, %.lr.ph138.preheader ], [ %.184.lcssa.1, %._crit_edge139.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod152 = trunc i32 %i.br to i1
  tail call void @llvm.assume(i1 %lcmp.mod152)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv142.epil.init
  %.196127.epil = load ptr, ptr %i.cg, align 8, !tbaa !46 ; 2 uses
  %.not100128.epil = icmp eq ptr %.196127.epil, %0
  br i1 %.not100128.epil, label %._crit_edge139, label %.lr.ph132.epil

.lr.ph132.epil:                                   ; preds = %.lr.ph138.epil.preheader, %.lr.ph132.epil
  %.196130.epil = phi ptr [ %.196.epil, %.lr.ph132.epil ], [ %.196127.epil, %.lr.ph138.epil.preheader ] ; 2 uses
  %.184129.epil = phi i32 [ %i.cj, %.lr.ph132.epil ], [ %.083135.epil.init, %.lr.ph138.epil.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.196130.epil, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !47
  %i.cj = add i32 %i.ci, %.184129.epil            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.196130.epil, i64 8
  %.196.epil = load ptr, ptr %i.ck, align 8, !tbaa !46 ; 2 uses
  %.not100.epil = icmp eq ptr %.196.epil, %0
  br i1 %.not100.epil, label %._crit_edge139, label %.lr.ph132.epil, !llvm.loop !87

._crit_edge139:                                   ; preds = %._crit_edge139.loopexit.unr-lcssa, %.lr.ph132.epil, %.lr.ph138.epil.preheader, %._crit_edge125
  %.083.lcssa = phi i32 [ -1, %._crit_edge125 ], [ %.184.lcssa.1, %._crit_edge139.loopexit.unr-lcssa ], [ %.083135.epil.init, %.lr.ph138.epil.preheader ], [ %i.cj, %.lr.ph132.epil ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !44
  %i.cn = uitofp i32 %i.cm to double
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !95
  %i.cq = sitofp i32 %i.cp to double
  %i.cr = fdiv double %i.cq, 1.000000e+02
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cr, double 5.000000e-01)
  %i.ct = fptosi double %i.cs to i32
  %i.cu = sub nsw i32 %.083.lcssa, %i.ct
  %i.cv = icmp sge i32 %.085.lcssa, %i.cu
  %i.cw = zext i1 %i.cv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.g, %bb.a, %._crit_edge139
  %.097 = phi i32 [ %i.cw, %._crit_edge139 ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.l ]
  ret i32 %.097
}

declare i32 @cuddWindowReorder(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cuddAnnealing(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cuddGa(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cuddLinearAndSifting(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cuddExact(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ddVarGroupCheck(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28   ; 6 uses
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28   ; 5 uses
  %i.i = tail call i32 @Cudd_bddIsVarToBeUngrouped(ptr noundef %0, i32 noundef %i.e) #12
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @Cudd_bddReadPairIndex(ptr noundef nonnull %0, i32 noundef %i.e) #12
  %i.k = icmp eq i32 %i.j, %i.h
  br i1 %i.k, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = icmp sge i32 %i.e, %i.m
  %i.o = icmp slt i32 %i.e, 0
  %or.cond.i = or i1 %i.o, %i.n
  br i1 %or.cond.i, label %ddIsVarHandled.exit.thread, label %ddIsVarHandled.exit

ddIsVarHandled.exit:                              ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = zext nneg i32 %i.e to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [56 x i8], ptr %i.q, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !45
  %.not20 = icmp eq i32 %i.z, 0
  br i1 %.not20, label %bb.d, label %ddIsVarHandled.exit.thread

bb.d:                                             ; preds = %ddIsVarHandled.exit
  %i.aa = icmp sge i32 %i.h, %i.m
  %i.ab = icmp slt i32 %i.h, 0
  %or.cond.i25 = or i1 %i.ab, %i.aa
  br i1 %or.cond.i25, label %ddIsVarHandled.exit.thread, label %ddIsVarHandled.exit27

ddIsVarHandled.exit27:                            ; preds = %bb.d
  %i.ac = zext nneg i32 %i.h to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [56 x i8], ptr %i.q, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !45
  %.not21 = icmp eq i32 %i.ai, 0
  br i1 %.not21, label %bb.g, label %ddIsVarHandled.exit.thread

ddIsVarHandled.exit.thread:                       ; preds = %bb.d, %bb.c, %ddIsVarHandled.exit27, %ddIsVarHandled.exit
  %i.aj = tail call i32 @Cudd_bddIsVarToBeGrouped(ptr noundef nonnull %0, i32 noundef %i.e) #12
  %.not22 = icmp eq i32 %i.aj, 0
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %ddIsVarHandled.exit.thread
  %i.ak = tail call i32 @Cudd_bddIsVarToBeGrouped(ptr noundef nonnull %0, i32 noundef %i.h) #12
  %.not23 = icmp eq i32 %i.ak, 0
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %ddIsVarHandled.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !42
  %i.ap = sub i32 %i.am, %i.ao
  %i.aq = load i32, ptr @originalSize, align 4, !tbaa !28
  %.not24 = icmp ugt i32 %i.ap, %i.aq
  br i1 %.not24, label %bb.g, label %bb.h

bb.g:                                             ; preds = %ddIsVarHandled.exit27, %bb.f, %bb.e, %bb.b
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ 0, %bb.a ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @ddUniqueCompareGroup(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load ptr, ptr @entry, align 8, !tbaa !43 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !28     ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28   ; 2 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28   ; 2 uses
  %i.j = icmp eq i32 %i.e, %i.i
  %i.k = sub nsw i32 %i.f, %i.b
  %i.l = sub nsw i32 %i.e, %i.i
  %.0 = select i1 %i.j, i32 %i.k, i32 %i.l
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ddGroupSiftingAux(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.c = load i32, ptr %i.b, align 4, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load i32, ptr %i.d, align 8, !tbaa !42
  %i.f = sub i32 %i.c, %i.e                       ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !49
  store i32 %i.f, ptr @originalSize, align 4, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = sext i32 %1 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !35
  %i.m = icmp eq i32 %1, %i.l
  br i1 %i.m, label %.preheader158, label %.loopexit157

.preheader158:                                    ; preds = %bb.a
  %i.n = icmp sgt i32 %1, %2
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader158, %bb.b
  %.0123162 = phi i32 [ %i.u, %bb.b ], [ %1, %.preheader158 ] ; 3 uses
  %i.o = add nsw i32 %.0123162, -1                ; 2 uses
  %i.p = tail call i32 %4(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %.0123162) #12, !callees !50
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [56 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 28 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35   ; 3 uses
  store i32 %.0123162, ptr %i.t, align 4, !tbaa !35
  %i.v = getelementptr inbounds [56 x i8], ptr %i.q, i64 %i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  store i32 %i.u, ptr %i.w, align 4, !tbaa !35
  %i.x = icmp sgt i32 %i.u, %2
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !96

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %.preheader158
  %i.y = icmp slt i32 %1, %3
  br i1 %i.y, label %.lr.ph167, label %.loopexit157

.lr.ph167:                                        ; preds = %._crit_edge, %bb.d
  %.1165 = phi i32 [ %.0, %bb.d ], [ %1, %._crit_edge ] ; 3 uses
  %i.z = add nsw i32 %.1165, 1                    ; 3 uses
  %i.aa = tail call i32 %4(ptr noundef nonnull %0, i32 noundef %.1165, i32 noundef %i.z) #12, !callees !50
  %.not140 = icmp eq i32 %i.aa, 0
  br i1 %.not140, label %.loopexit157, label %.preheader

.preheader:                                       ; preds = %.lr.ph167
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !34  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %.0 = phi i32 [ %i.af, %bb.c ], [ %i.z, %.preheader ] ; 4 uses
  %i.ac = sext i32 %.0 to i64
  %i.ad = getelementptr inbounds [56 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !35 ; 2 uses
  %i.ag = icmp ult i32 %.0, %i.af
  br i1 %i.ag, label %bb.c, label %bb.d, !llvm.loop !97

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.ai = sext i32 %.1165 to i64
  %i.aj = getelementptr inbounds [56 x i8], ptr %i.ab, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 28 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !35
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !35
  store i32 %i.z, ptr %i.ak, align 4, !tbaa !35
  %i.am = icmp slt i32 %.0, %3
  br i1 %i.am, label %.lr.ph167, label %.loopexit157, !llvm.loop !98

.loopexit157:                                     ; preds = %.lr.ph167, %bb.d, %._crit_edge, %bb.a
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.loopexit157
  %.0125 = phi i32 [ %1, %.loopexit157 ], [ %i.ar, %bb.e ] ; 8 uses
  %i.ao = sext i32 %.0125 to i64                  ; 3 uses
  %i.ap = getelementptr inbounds [56 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !35 ; 2 uses
  %i.as = icmp ult i32 %.0125, %i.ar
  br i1 %i.as, label %bb.e, label %bb.f, !llvm.loop !99

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.0125, %2
  br i1 %i.at, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.au = icmp eq i32 %2, %3
  br i1 %i.au, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = call fastcc i32 @ddGroupSiftingDown(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %i.a)
  %.not151 = icmp eq i32 %i.av, 0
  %.pr155.pre194 = load ptr, ptr %i.a, align 8, !tbaa !49 ; 4 uses
  br i1 %.not151, label %bb.ad, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = tail call fastcc i32 @ddGroupSiftingBackward(ptr noundef nonnull %0, ptr noundef %.pr155.pre194, i32 noundef %i.f, i32 noundef 0, i32 noundef %5)
  %.not152 = icmp eq i32 %i.aw, 0
  br i1 %.not152, label %bb.ad, label %bb.ab

bb.j:                                             ; preds = %bb.f
  %i.ax = tail call i32 @cuddNextHigh(ptr noundef nonnull %0, i32 noundef %.0125) #12
  %i.ay = icmp sgt i32 %i.ax, %3
  br i1 %i.ay, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.ba = getelementptr inbounds [56 x i8], ptr %i.az, i64 %i.ao
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !35
  %i.bd = call fastcc i32 @ddGroupSiftingUp(ptr noundef nonnull %0, i32 noundef %i.bc, i32 noundef %2, ptr noundef %4, ptr noundef %i.a)
  %.not149 = icmp eq i32 %i.bd, 0
  %.pr155.pre193 = load ptr, ptr %i.a, align 8, !tbaa !49 ; 4 uses
  br i1 %.not149, label %bb.ad, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = tail call fastcc i32 @ddGroupSiftingBackward(ptr noundef nonnull %0, ptr noundef %.pr155.pre193, i32 noundef %i.f, i32 noundef 1, i32 noundef %5)
  %.not150 = icmp eq i32 %i.be, 0
  br i1 %.not150, label %bb.ad, label %bb.ab

bb.m:                                             ; preds = %bb.j
  %i.bf = sub nsw i32 %.0125, %2
  %i.bg = sub nsw i32 %3, %.0125
  %i.bh = icmp sgt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.bi = call fastcc i32 @ddGroupSiftingDown(ptr noundef nonnull %0, i32 noundef %.0125, i32 noundef %3, ptr noundef %4, ptr noundef %i.a)
  %.not145 = icmp eq i32 %i.bi, 0
  %.pr155.pre192 = load ptr, ptr %i.a, align 8, !tbaa !49 ; 3 uses
  br i1 %.not145, label %bb.ad, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not146 = icmp eq ptr %.pr155.pre192, null
  br i1 %.not146, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %.pr155.pre192, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !52
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1126 = phi i32 [ %i.bk, %bb.p ], [ %.0125, %bb.o ]
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !34
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.2 = phi i32 [ %.1126, %bb.q ], [ %i.bp, %bb.r ] ; 2 uses
  %i.bm = sext i32 %.2 to i64
  %i.bn = getelementptr inbounds [56 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !35 ; 3 uses
  %i.bq = icmp ult i32 %.2, %i.bp
  br i1 %i.bq, label %bb.r, label %bb.s, !llvm.loop !100

bb.s:                                             ; preds = %bb.r
  %i.br = call fastcc i32 @ddGroupSiftingUp(ptr noundef nonnull %0, i32 noundef %i.bp, i32 noundef %2, ptr noundef %4, ptr noundef %i.a)
  %.not147 = icmp eq i32 %i.br, 0
  %.pr155.pre191 = load ptr, ptr %i.a, align 8, !tbaa !49 ; 4 uses
  br i1 %.not147, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = tail call fastcc i32 @ddGroupSiftingBackward(ptr noundef nonnull %0, ptr noundef %.pr155.pre191, i32 noundef %i.f, i32 noundef 1, i32 noundef %5)
  %.not148 = icmp eq i32 %i.bs, 0
  br i1 %.not148, label %bb.ad, label %bb.ab

bb.u:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.bu = getelementptr inbounds [56 x i8], ptr %i.bt, i64 %i.ao
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !35 ; 2 uses
  %i.bx = call fastcc i32 @ddGroupSiftingUp(ptr noundef nonnull %0, i32 noundef %i.bw, i32 noundef %2, ptr noundef %4, ptr noundef %i.a)
  %.not141 = icmp eq i32 %i.bx, 0
  %.pr155.pre190 = load ptr, ptr %i.a, align 8, !tbaa !49 ; 3 uses
  br i1 %.not141, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not142 = icmp eq ptr %.pr155.pre190, null
  br i1 %.not142, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = load i32, ptr %.pr155.pre190, align 8, !tbaa !53
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.3 = phi i32 [ %i.by, %bb.w ], [ %i.bw, %bb.v ]
  %i.bz = load ptr, ptr %i.g, align 8, !tbaa !34
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.4 = phi i32 [ %.3, %bb.x ], [ %i.cd, %bb.y ]  ; 3 uses
  %i.ca = sext i32 %.4 to i64
  %i.cb = getelementptr inbounds [56 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !35 ; 2 uses
  %i.ce = icmp ult i32 %.4, %i.cd
  br i1 %i.ce, label %bb.y, label %bb.z, !llvm.loop !101

bb.z:                                             ; preds = %bb.y
  %i.cf = call fastcc i32 @ddGroupSiftingDown(ptr noundef nonnull %0, i32 noundef %.4, i32 noundef %3, ptr noundef %4, ptr noundef %i.a)
  %.not143 = icmp eq i32 %i.cf, 0
  %.pr155.pre = load ptr, ptr %i.a, align 8, !tbaa !49 ; 4 uses
  br i1 %.not143, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = tail call fastcc i32 @ddGroupSiftingBackward(ptr noundef nonnull %0, ptr noundef %.pr155.pre, i32 noundef %i.f, i32 noundef 0, i32 noundef %5)
  %.not144 = icmp eq i32 %i.cg, 0
  br i1 %.not144, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.l, %bb.aa, %bb.t, %bb.i
  %.pr = phi ptr [ %.pr155.pre193, %bb.l ], [ %.pr155.pre, %bb.aa ], [ %.pr155.pre191, %bb.t ], [ %.pr155.pre194, %bb.i ] ; 2 uses
  %.not154170 = icmp eq ptr %.pr, null
  br i1 %.not154170, label %.loopexit, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted173 = load ptr, ptr %i.ch, align 8, !tbaa !54
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph172, %bb.ac
  %i.ci = phi ptr [ %.promoted173, %.lr.ph172 ], [ %i.cj, %bb.ac ]
  %i.cj = phi ptr [ %.pr, %.lr.ph172 ], [ %i.cl, %bb.ac ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !55 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 0, ptr %i.cm, align 4, !tbaa !47
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.ci, ptr %i.cn, align 8, !tbaa !56
  %.not154 = icmp eq ptr %i.cl, null
  br i1 %.not154, label %..loopexit156_crit_edge, label %bb.ac, !llvm.loop !102

bb.ad:                                            ; preds = %bb.aa, %bb.z, %bb.u, %bb.t, %bb.s, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h
  %.pr155 = phi ptr [ %.pr155.pre, %bb.aa ], [ %.pr155.pre, %bb.z ], [ %.pr155.pre190, %bb.u ], [ %.pr155.pre191, %bb.t ], [ %.pr155.pre191, %bb.s ], [ %.pr155.pre192, %bb.n ], [ %.pr155.pre193, %bb.l ], [ %.pr155.pre193, %bb.k ], [ %.pr155.pre194, %bb.i ], [ %.pr155.pre194, %bb.h ] ; 2 uses
  %.not153177 = icmp eq ptr %.pr155, null
  br i1 %.not153177, label %.loopexit, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted181 = load ptr, ptr %i.co, align 8, !tbaa !54
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph179, %bb.ae
  %i.cp = phi ptr [ %.promoted181, %.lr.ph179 ], [ %i.cq, %bb.ae ]
  %i.cq = phi ptr [ %.pr155, %.lr.ph179 ], [ %i.cs, %bb.ae ] ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !55 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 0, ptr %i.ct, align 4, !tbaa !47
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cp, ptr %i.cu, align 8, !tbaa !56
  %.not153 = icmp eq ptr %i.cs, null
  br i1 %.not153, label %..loopexit_crit_edge, label %bb.ae, !llvm.loop !103

..loopexit_crit_edge:                             ; preds = %bb.ae
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !54
  br label %.loopexit

..loopexit156_crit_edge:                          ; preds = %bb.ac
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %..loopexit156_crit_edge, %bb.ad, %..loopexit_crit_edge, %bb.g
  %.0124 = phi i32 [ 0, %bb.ad ], [ 1, %bb.g ], [ 0, %..loopexit_crit_edge ], [ 1, %..loopexit156_crit_edge ], [ 1, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0124
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ddSecDiffCheck(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [56 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr i8, ptr %i.e, i64 -40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44
  %i.j = sext i32 %2 to i64                       ; 2 uses
  %i.k = getelementptr inbounds [56 x i8], ptr %i.c, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !44
  %i.n = uitofp i32 %i.g to double                ; 2 uses
  %i.o = uitofp i32 %i.i to double
  %i.p = uitofp i32 %i.m to double
  %i.q = insertelement <2 x double> poison, double %i.p, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.n, i64 1
  %i.s = insertelement <2 x double> poison, double %i.n, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.o, i64 1
  %i.u = fdiv <2 x double> %i.r, %i.t             ; 2 uses
  %shift = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.u, %shift
  %i.v = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.x = load i32, ptr %i.w, align 4, !tbaa !104
  %i.y = sitofp i32 %i.x to double
  %i.z = fdiv double %i.y, 1.000000e+02
  %i.aa = fcmp olt double %i.v, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.d
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.j
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !28
  %i.ah = tail call i32 @cuddTestInteract(ptr noundef nonnull %0, i32 noundef %i.ae, i32 noundef %i.ag) #12
  %.not = icmp ne i32 %i.ah, 0
  %. = zext i1 %.not to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ddGroupSiftingDown(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0187 = phi i32 [ %1, %bb.a ], [ %i.h, %bb.c ]
  %i.c = sext i32 %.0187 to i64
  %i.d = getelementptr inbounds [56 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !44
  %.not.not = icmp eq i32 %i.f, 1
  br i1 %.not.not, label %bb.c, label %.critedge219

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35   ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [56 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !35
  %.not204 = icmp eq i32 %i.l, %1
  br i1 %.not204, label %.critedge, label %bb.b, !llvm.loop !105

.critedge219:                                     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.o = sext i32 %1 to i64                       ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28   ; 7 uses
  %i.r = getelementptr inbounds [56 x i8], ptr %i.b, i64 %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !42
  %i.y = sub i32 %i.v, %i.x                       ; 2 uses
  %i.z = icmp sgt i32 %2, %i.t
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.critedge219
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ab = sext i32 %2 to i64
  %i.ac = sext i32 %i.t to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.0177232 = phi i32 [ 0, %.lr.ph ], [ %.1178, %bb.g ] ; 2 uses
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28 ; 3 uses
  %i.ag = icmp eq i32 %i.af, %i.q
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call i32 @cuddTestInteract(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef %i.af) #12
  %.not216 = icmp eq i32 %i.ah, 0
  br i1 %.not216, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !57
  %i.aj = sext i32 %i.af to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !47
  %i.ao = icmp eq i32 %i.an, 1
  %.neg217 = sext i1 %i.ao to i32
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.aq = getelementptr inbounds [56 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !44
  %i.at = add i32 %.0177232, %.neg217
  %i.au = add i32 %i.at, %i.as
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1178 = phi i32 [ %i.au, %bb.f ], [ %.0177232, %bb.e ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.av = icmp sgt i64 %indvars.iv.next, %i.ac
  br i1 %i.av, label %bb.d, label %._crit_edge, !llvm.loop !106

._crit_edge:                                      ; preds = %bb.g, %.critedge219
  %.0177.lcssa = phi i32 [ 0, %.critedge219 ], [ %.1178, %bb.g ] ; 2 uses
  %i.aw = tail call i32 @cuddNextHigh(ptr noundef nonnull %0, i32 noundef %1) #12 ; 2 uses
  %.not241 = icmp sle i32 %i.aw, %2
  %i.ax = icmp sgt i32 %.0177.lcssa, 0
  %or.cond242 = select i1 %.not241, i1 %i.ax, i1 false
  br i1 %or.cond242, label %.lr.ph249, label %.critedge

.lr.ph249:                                        ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph249, %.loopexit
  %.2179247 = phi i32 [ %.0177.lcssa, %.lr.ph249 ], [ %.8, %.loopexit ] ; 4 uses
  %.0181246 = phi i32 [ %i.y, %.lr.ph249 ], [ %.3184, %.loopexit ] ; 5 uses
  %.0185245 = phi i32 [ %i.y, %.lr.ph249 ], [ %.1186, %.loopexit ]
  %.1188244 = phi i32 [ %i.aw, %.lr.ph249 ], [ %i.fh, %.loopexit ] ; 10 uses
  %.0190243 = phi i32 [ %1, %.lr.ph249 ], [ %.0180, %.loopexit ] ; 7 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.bb = sext i32 %.1188244 to i64               ; 4 uses
  %i.bc = getelementptr inbounds [56 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0180 = phi i32 [ %i.be, %bb.h ], [ %i.bi, %bb.i ] ; 4 uses
  %i.bf = sext i32 %.0180 to i64                  ; 5 uses
  %i.bg = getelementptr inbounds [56 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !35 ; 2 uses
  %.not206 = icmp eq i32 %i.bi, %.1188244
  br i1 %.not206, label %bb.j, label %bb.i, !llvm.loop !107

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call i32 %3(ptr noundef nonnull %0, i32 noundef %.0190243, i32 noundef %.1188244) #12, !callees !50
  %.not207 = icmp eq i32 %i.bj, 0
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !34  ; 3 uses
  %i.bl = sext i32 %.0190243 to i64
  %i.bm = getelementptr inbounds [56 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 28 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !35 ; 3 uses
  br i1 %.not207, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %.1188244, ptr %i.bn, align 4, !tbaa !35
  %i.bp = getelementptr inbounds [56 x i8], ptr %i.bk, i64 %i.bf
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !35
  %i.br = tail call ptr @cuddDynamicAllocNode(ptr noundef nonnull %0) #12 ; 7 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.af, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %.0190243, ptr %i.br, align 8, !tbaa !53
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 %.1188244, ptr %i.bt, align 4, !tbaa !52
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 8, ptr %i.bu, align 8, !tbaa !58
  %i.bv = load i32, ptr %i.u, align 4, !tbaa !41
  %i.bw = load i32, ptr %i.w, align 8, !tbaa !42
  %i.bx = sub i32 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !59
  %i.bz = load ptr, ptr %4, align 8, !tbaa !49
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !55
  store ptr %i.br, ptr %4, align 8, !tbaa !49
  br label %.loopexit

bb.m:                                             ; preds = %bb.j
  %i.cb = icmp eq i32 %i.bo, %.0190243
  br i1 %i.cb, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds [56 x i8], ptr %i.bk, i64 %i.bb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !35
  %i.cf = icmp eq i32 %i.ce, %.1188244
  br i1 %i.cf, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.bb
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !28 ; 2 uses
  %i.cj = tail call i32 @cuddTestInteract(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef %i.ci) #12
  %.not213 = icmp eq i32 %i.cj, 0
  br i1 %.not213, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.cl = sext i32 %i.ci to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !46
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !47
  %i.cq = icmp eq i32 %i.cp, 1
  %.neg214.neg257 = zext i1 %i.cq to i32
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.cs = getelementptr inbounds [56 x i8], ptr %i.cr, i64 %i.bb
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !44
  %.neg225 = add i32 %.2179247, %.neg214.neg257
  %i.cv = sub i32 %.neg225, %i.cu
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3 = phi i32 [ %i.cv, %bb.p ], [ %.2179247, %bb.o ]
  %i.cw = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %.0190243, i32 noundef %.1188244) #12 ; 5 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = tail call ptr @cuddDynamicAllocNode(ptr noundef nonnull %0) #12 ; 7 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.af, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %.0190243, ptr %i.cy, align 8, !tbaa !53
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %.1188244, ptr %i.da, align 4, !tbaa !52
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 0, ptr %i.db, align 8, !tbaa !58
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 %i.cw, ptr %i.dc, align 4, !tbaa !59
  %i.dd = load ptr, ptr %4, align 8, !tbaa !49
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !55
  store ptr %i.cy, ptr %4, align 8, !tbaa !49
  %i.df = sitofp i32 %i.cw to double
  %i.dg = sitofp i32 %.0181246 to double
  %i.dh = load double, ptr %i.az, align 8, !tbaa !60
  %i.di = fmul double %i.dh, %i.dg
  %i.dj = fcmp olt double %i.di, %i.df
  br i1 %i.dj, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.cw, i32 %.0181246)
  %i.dk = tail call i32 @cuddNextHigh(ptr noundef nonnull %0, i32 noundef %.1188244) #12 ; 0 uses
  br label %.loopexit

bb.u:                                             ; preds = %bb.n, %bb.m
  %i.dl = sext i32 %i.bo to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %bb.u
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %bb.y ], [ %i.dl, %bb.u ]
  %.4 = phi i32 [ %.5, %bb.y ], [ %.2179247, %bb.u ] ; 2 uses
  %indvars.iv.next262 = add nsw i64 %indvars.iv261, 1 ; 4 uses
  %i.dm = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %indvars.iv.next262
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !28 ; 3 uses
  %i.dp = icmp eq i32 %i.do, %i.q
  br i1 %i.dp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = tail call i32 @cuddTestInteract(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef %i.do) #12
  %.not208 = icmp eq i32 %i.dq, 0
  br i1 %.not208, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dr = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.ds = sext i32 %i.do to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !46
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !47
  %i.dx = icmp eq i32 %i.dw, 1
  %.neg.neg256 = zext i1 %i.dx to i32
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.dz = getelementptr inbounds [56 x i8], ptr %i.dy, i64 %indvars.iv.next262
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !44
  %.neg223 = add i32 %.4, %.neg.neg256
  %i.ec = sub i32 %.neg223, %i.eb
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.5 = phi i32 [ %i.ec, %bb.x ], [ %.4, %bb.w ]  ; 3 uses
  %.not209.not = icmp slt i64 %indvars.iv.next262, %i.bf
  br i1 %.not209.not, label %bb.v, label %bb.z, !llvm.loop !108

bb.z:                                             ; preds = %bb.y
  %i.ed = tail call fastcc i32 @ddGroupMove(ptr noundef nonnull %0, i32 noundef %.0190243, i32 noundef %.1188244, ptr noundef %4) ; 5 uses
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = sitofp i32 %i.ed to double
  %i.eg = sitofp i32 %.0181246 to double
  %i.eh = load double, ptr %i.az, align 8, !tbaa !60
  %i.ei = fmul double %i.eh, %i.eg
  %i.ej = fcmp olt double %i.ei, %i.ef
  br i1 %i.ej, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %spec.select221 = tail call i32 @llvm.smin.i32(i32 %i.ed, i32 %.0181246) ; 2 uses
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.el = getelementptr inbounds [56 x i8], ptr %i.ek, i64 %i.bf
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 28
  %i.en = load i32, ptr %i.em, align 4, !tbaa !35 ; 2 uses
  %.not210.not235 = icmp slt i32 %i.en, %.0180
  br i1 %.not210.not235, label %.lr.ph239.preheader, label %.loopexit

.lr.ph239.preheader:                              ; preds = %bb.ab
  %i.eo = sext i32 %i.en to i64
  br label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239.preheader, %bb.ae
  %indvars.iv264 = phi i64 [ %i.eo, %.lr.ph239.preheader ], [ %indvars.iv.next265, %bb.ae ]
  %.6236 = phi i32 [ %.5, %.lr.ph239.preheader ], [ %.7, %bb.ae ] ; 2 uses
  %indvars.iv.next265 = add nsw i64 %indvars.iv264, 1 ; 4 uses
  %i.ep = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %indvars.iv.next265
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !28 ; 3 uses
  %i.es = icmp eq i32 %i.er, %i.q
  br i1 %i.es, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph239
  %i.et = tail call i32 @cuddTestInteract(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef %i.er) #12
  %.not211 = icmp eq i32 %i.et, 0
  br i1 %.not211, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph239
  %i.eu = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.ev = sext i32 %i.er to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !46
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !47
  %i.fa = icmp eq i32 %i.ez, 1
  %.neg212 = sext i1 %i.fa to i32
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.fc = getelementptr inbounds [56 x i8], ptr %i.fb, i64 %indvars.iv.next265
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !44
  %i.ff = add i32 %.6236, %.neg212
  %i.fg = add i32 %i.ff, %i.fe
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.7 = phi i32 [ %i.fg, %bb.ad ], [ %.6236, %bb.ac ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next265, %i.bf
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph239, !llvm.loop !109

.loopexit:                                        ; preds = %bb.ae, %bb.ab, %bb.t, %bb.l
  %.1186 = phi i32 [ %.0185245, %bb.l ], [ %i.cw, %bb.t ], [ %i.ed, %bb.ab ], [ %i.ed, %bb.ae ] ; 2 uses
  %.3184 = phi i32 [ %.0181246, %bb.l ], [ %spec.select, %bb.t ], [ %spec.select221, %bb.ab ], [ %spec.select221, %bb.ae ] ; 2 uses
  %.8 = phi i32 [ %.2179247, %bb.l ], [ %.3, %bb.t ], [ %.5, %bb.ab ], [ %.7, %bb.ae ] ; 2 uses
  %i.fh = tail call i32 @cuddNextHigh(ptr noundef nonnull %0, i32 noundef %.0180) #12 ; 2 uses
  %.not = icmp sle i32 %i.fh, %2
  %i.fi = sub nsw i32 %.1186, %.8
  %i.fj = icmp slt i32 %i.fi, %.3184
  %or.cond = select i1 %.not, i1 %i.fj, i1 false
  br i1 %or.cond, label %bb.h, label %.critedge, !llvm.loop !110

bb.af:                                            ; preds = %bb.z, %bb.r, %bb.q, %bb.k
  %.pr = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %.not215252 = icmp eq ptr %.pr, null
  br i1 %.not215252, label %.critedge, label %.lr.ph254

.lr.ph254:                                        ; preds = %bb.af
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted = load ptr, ptr %i.fk, align 8, !tbaa !54
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph254, %bb.ag
  %i.fl = phi ptr [ %.promoted, %.lr.ph254 ], [ %i.fm, %bb.ag ]
  %i.fm = phi ptr [ %.pr, %.lr.ph254 ], [ %i.fo, %bb.ag ] ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !55 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i32 0, ptr %i.fp, align 4, !tbaa !47
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fl, ptr %i.fq, align 8, !tbaa !56
  store ptr %i.fo, ptr %4, align 8, !tbaa !49
  %.not215 = icmp eq ptr %i.fo, null
  br i1 %.not215, label %..critedge.loopexit_crit_edge, label %bb.ag, !llvm.loop !111

..critedge.loopexit_crit_edge:                    ; preds = %bb.ag
  store ptr %i.fm, ptr %i.fk, align 8, !tbaa !54
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.s, %bb.aa, %.loopexit, %._crit_edge, %bb.af, %..critedge.loopexit_crit_edge
  %.0189 = phi i32 [ 0, %bb.af ], [ 1, %._crit_edge ], [ 0, %..critedge.loopexit_crit_edge ], [ 1, %bb.s ], [ 1, %.loopexit ], [ 1, %bb.aa ], [ 1, %bb.c ]
  ret i32 %.0189
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ddGroupSiftingBackward(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  %.not104133 = icmp eq ptr %1, null              ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader121

.preheader121:                                    ; preds = %bb.a
  br i1 %.not104133, label %ddGroupMoveBackward.exit.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %.not104133, label %ddGroupMoveBackward.exit.thread, label %.lr.ph136

.lr.ph:                                           ; preds = %.preheader121, %.lr.ph
  %.078128 = phi ptr [ %.179, %.lr.ph ], [ null, %.preheader121 ] ; 2 uses
  %.080127 = phi ptr [ %i.h, %.lr.ph ], [ %1, %.preheader121 ] ; 3 uses
  %.085126 = phi i32 [ %.186, %.lr.ph ], [ %2, %.preheader121 ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.080127, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !59   ; 3 uses
  %i.c = icmp slt i32 %i.b, %.085126
  %i.d = icmp eq i32 %i.b, %.085126
  %i.e = icmp eq ptr %.078128, null
  %or.cond = select i1 %i.d, i1 %i.e, i1 false
  %.186 = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %.085126) ; 5 uses
  %i.f = select i1 %i.c, i1 true, i1 %or.cond
  %.179 = select i1 %i.f, ptr %.080127, ptr %.078128 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.080127, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %.not105 = icmp eq ptr %i.h, null
  br i1 %.not105, label %._crit_edge, label %.lr.ph, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph
  %i.i = tail call i32 @Cudd_ReadSize(ptr noundef %0) #12
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  %.not107 = icmp eq i32 %3, 0                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %.sink186.in.idx = select i1 %.not107, i64 4, i64 0
  %.sink186.in = getelementptr inbounds nuw i8, ptr %1, i64 %.sink186.in.idx
  %.sink186 = load i32, ptr %.sink186.in, align 4, !tbaa !28
  %i.m = zext i32 %.sink186 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = tail call i32 @Cudd_bddReadPairIndex(ptr noundef nonnull %0, i32 noundef %i.o) #12
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28   ; 6 uses
  br i1 %.not107, label %.split.us, label %.split

.split.us:                                        ; preds = %._crit_edge, %bb.c
  %.077132.us = phi i32 [ %.1.us, %bb.c ], [ %i.j, %._crit_edge ] ; 3 uses
  %.2131.us = phi ptr [ %.3.us, %bb.c ], [ %.179, %._crit_edge ] ; 2 uses
  %.181130.us = phi ptr [ %i.ad, %bb.c ], [ %1, %._crit_edge ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.181130.us, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !59
  %i.x = icmp eq i32 %i.w, %.186
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %.181130.us, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !52   ; 3 uses
  %5 = icmp ugt i32 %i.z, %i.u
  %6 = sub nuw i32 %i.z, %i.u
  %i.aa = sub nuw i32 %i.u, %i.z
  %7 = select i1 %5, i32 %6, i32 %i.aa            ; 2 uses
  %i.ab = icmp slt i32 %7, %.077132.us
  %spec.select112.us = select i1 %i.ab, ptr %.181130.us, ptr %.2131.us
  %spec.select113.us = tail call i32 @llvm.smin.i32(i32 %7, i32 %.077132.us)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split.us
  %.3.us = phi ptr [ %.2131.us, %.split.us ], [ %spec.select112.us, %bb.b ] ; 2 uses
  %.1.us = phi i32 [ %.077132.us, %.split.us ], [ %spec.select113.us, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.181130.us, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55 ; 2 uses
  %.not108.us = icmp eq ptr %i.ad, null
  br i1 %.not108.us, label %.lr.ph142, label %.split.us, !llvm.loop !113

.split:                                           ; preds = %._crit_edge, %bb.e
  %.077132 = phi i32 [ %.1, %bb.e ], [ %i.j, %._crit_edge ] ; 3 uses
  %.2131 = phi ptr [ %.3, %bb.e ], [ %.179, %._crit_edge ] ; 2 uses
  %.181130 = phi ptr [ %i.al, %bb.e ], [ %1, %._crit_edge ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.181130, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !59
  %i.ag = icmp eq i32 %i.af, %.186
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.split
  %i.ah = load i32, ptr %.181130, align 8, !tbaa !53 ; 3 uses
  %8 = icmp ugt i32 %i.ah, %i.u
  %9 = sub nuw i32 %i.ah, %i.u
  %i.ai = sub nuw i32 %i.u, %i.ah
  %10 = select i1 %8, i32 %9, i32 %i.ai           ; 2 uses
  %i.aj = icmp slt i32 %10, %.077132
  %spec.select112 = select i1 %i.aj, ptr %.181130, ptr %.2131
  %spec.select113 = tail call i32 @llvm.smin.i32(i32 %10, i32 %.077132)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split
  %.3 = phi ptr [ %.2131, %.split ], [ %spec.select112, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.077132, %.split ], [ %spec.select113, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.181130, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !55 ; 2 uses
  %.not108 = icmp eq ptr %i.al, null
  br i1 %.not108, label %.lr.ph142, label %.split, !llvm.loop !113

.lr.ph136:                                        ; preds = %.preheader, %.lr.ph136
  %.282135 = phi ptr [ %i.ap, %.lr.ph136 ], [ %1, %.preheader ] ; 2 uses
  %.287134 = phi i32 [ %spec.select114, %.lr.ph136 ], [ %2, %.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.282135, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !59
  %spec.select114 = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %.287134) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.282135, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !55 ; 2 uses
  %.not104 = icmp eq ptr %i.ap, null
  br i1 %.not104, label %.lr.ph142, label %.lr.ph136, !llvm.loop !114

.lr.ph142:                                        ; preds = %bb.e, %bb.c, %.lr.ph136
  %.4178 = phi ptr [ null, %.lr.ph136 ], [ %.3.us, %bb.c ], [ %.3, %bb.e ]
  %.489177 = phi i32 [ %spec.select114, %.lr.ph136 ], [ %.186, %bb.c ], [ %.186, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph142, %bb.r
  %.383140 = phi ptr [ %1, %.lr.ph142 ], [ %i.dt, %bb.r ] ; 7 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp eq ptr %.383140, %.4178
  br i1 %i.ar, label %ddGroupMoveBackward.exit.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.383140, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !59
  %i.au = icmp eq i32 %i.at, %.489177
  br i1 %i.au, label %ddGroupMoveBackward.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !34 ; 6 uses
  %i.aw = load i32, ptr %.383140, align 8, !tbaa !53 ; 8 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.av, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !35
  %i.bb = icmp eq i32 %i.ba, %i.aw
  br i1 %i.bb, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.383140, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !52 ; 3 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [56 x i8], ptr %i.av, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !35
  %i.bi = icmp eq i32 %i.bh, %i.bd
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.aw, i32 noundef %i.bd) #12
  %.not111 = icmp eq i32 %i.bj, 0
  br i1 %.not111, label %ddGroupMoveBackward.exit.thread, label %bb.r

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.383140, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !58
  %i.bm = icmp eq i32 %i.bl, 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.383140, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !52 ; 8 uses
  br i1 %i.bm, label %.preheader191, label %bb.m

.preheader191:                                    ; preds = %bb.l, %.preheader191
  %.0.i = phi i32 [ %i.bs, %.preheader191 ], [ %i.bo, %bb.l ] ; 2 uses
  %i.bp = sext i32 %.0.i to i64
  %i.bq = getelementptr inbounds [56 x i8], ptr %i.av, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !35 ; 3 uses
  %i.bt = icmp ult i32 %.0.i, %i.bs
  br i1 %i.bt, label %.preheader191, label %ddDissolveGroup.exit, !llvm.loop !115

ddDissolveGroup.exit:                             ; preds = %.preheader191
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  store i32 %i.bo, ptr %i.bu, align 4, !tbaa !35
  br label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.bv = sext i32 %i.aw to i64
  %i.bw = getelementptr inbounds [56 x i8], ptr %i.av, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !35 ; 6 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.0.i115 = phi i32 [ %i.bo, %bb.m ], [ %i.cc, %bb.n ] ; 4 uses
  %i.bz = sext i32 %.0.i115 to i64
  %i.ca = getelementptr inbounds [56 x i8], ptr %i.av, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !35 ; 2 uses
  %i.cd = icmp ult i32 %.0.i115, %i.cc
  br i1 %i.cd, label %bb.n, label %bb.o, !llvm.loop !116

bb.o:                                             ; preds = %bb.n
  %i.ce = sub i32 %i.aw, %i.by                    ; 3 uses
  %i.cf = sub nsw i32 %.0.i115, %i.bo             ; 4 uses
  %.not75.i = icmp slt i32 %i.cf, 0
  br i1 %.not75.i, label %._crit_edge81.i, label %.preheader70.lr.ph.i

.preheader70.lr.ph.i:                             ; preds = %bb.o
  %.not6971.i = icmp slt i32 %i.ce, 0
  br i1 %.not6971.i, label %.preheader70.us.preheader.i, label %.preheader70.preheader.i

.preheader70.preheader.i:                         ; preds = %.preheader70.lr.ph.i
  %i.cg = add i32 %i.aw, 2
  %i.ch = sub i32 %i.cg, %i.by
  %i.ci = add nuw i32 %i.cf, 1
  br label %.preheader70.i

.preheader70.us.preheader.i:                      ; preds = %.preheader70.lr.ph.i
  %i.cj = add nuw i32 %i.cf, 1
  br label %.preheader70.us.i

.preheader70.us.i:                                ; preds = %.preheader70.us.i, %.preheader70.us.preheader.i
  %.06078.us.i = phi i32 [ %i.cm, %.preheader70.us.i ], [ 1, %.preheader70.us.preheader.i ] ; 3 uses
  %i.ck = add nsw i32 %.06078.us.i, %i.bo
  %i.cl = tail call i32 @cuddNextLow(ptr noundef nonnull %0, i32 noundef %i.ck) #12 ; 0 uses
  %i.cm = add nuw i32 %.06078.us.i, 1
  %exitcond93.i = icmp eq i32 %.06078.us.i, %i.cj
  br i1 %exitcond93.i, label %.preheader.i, label %.preheader70.us.i, !llvm.loop !117

.preheader70.i:                                   ; preds = %._crit_edge.i, %.preheader70.preheader.i
  %.06078.i = phi i32 [ %i.ct, %._crit_edge.i ], [ 1, %.preheader70.preheader.i ] ; 3 uses
  %.06177.i = phi i32 [ %i.cr, %._crit_edge.i ], [ %i.bo, %.preheader70.preheader.i ]
  %.06476.i = phi i32 [ %i.cs, %._crit_edge.i ], [ %i.aw, %.preheader70.preheader.i ]
  br label %bb.p

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader70.us.i
  %.not.i = icmp eq i32 %.0.i115, %i.bo
  br i1 %.not.i, label %._crit_edge81.i, label %.lr.ph.i

bb.p:                                             ; preds = %bb.q, %.preheader70.i
  %.05974.i = phi i32 [ 1, %.preheader70.i ], [ %i.cq, %bb.q ]
  %.16273.i = phi i32 [ %.06177.i, %.preheader70.i ], [ %.16572.i, %bb.q ]
  %.16572.i = phi i32 [ %.06476.i, %.preheader70.i ], [ %i.cp, %bb.q ] ; 3 uses
  %i.cn = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.16572.i, i32 noundef %.16273.i) #12
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %ddGroupMoveBackward.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %.16572.i) #12
  %i.cq = add nuw i32 %.05974.i, 1                ; 2 uses
  %exitcond.i = icmp eq i32 %i.cq, %i.ch
  br i1 %exitcond.i, label %._crit_edge.i, label %bb.p, !llvm.loop !118

._crit_edge.i:                                    ; preds = %bb.q
  %i.cr = add nsw i32 %.06078.i, %i.bo            ; 2 uses
  %i.cs = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %i.cr) #12
  %i.ct = add nuw i32 %.06078.i, 1
  %exitcond91.i = icmp eq i32 %.06078.i, %i.ci
  br i1 %exitcond91.i, label %.preheader.i, label %.preheader70.i, !llvm.loop !117

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.180.i = phi i32 [ %i.da, %.lr.ph.i ], [ 0, %.preheader.i ]
  %.26379.i = phi i32 [ %i.cz, %.lr.ph.i ], [ %i.by, %.preheader.i ] ; 3 uses
  %i.cu = tail call i32 @cuddNextHigh(ptr noundef %0, i32 noundef %.26379.i) #12
  %i.cv = load ptr, ptr %i.aq, align 8, !tbaa !34
  %i.cw = sext i32 %.26379.i to i64
  %i.cx = getelementptr inbounds [56 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 28
  store i32 %i.cu, ptr %i.cy, align 4, !tbaa !35
  %i.cz = tail call i32 @cuddNextHigh(ptr noundef %0, i32 noundef %.26379.i) #12 ; 2 uses
  %i.da = add nuw nsw i32 %.180.i, 1              ; 2 uses
  %exitcond94.not.i = icmp eq i32 %i.da, %i.cf
  br i1 %exitcond94.not.i, label %._crit_edge81.i, label %.lr.ph.i, !llvm.loop !119

._crit_edge81.i:                                  ; preds = %.lr.ph.i, %.preheader.i, %bb.o
  %.263.lcssa.i = phi i32 [ %i.by, %.preheader.i ], [ %i.by, %bb.o ], [ %i.cz, %.lr.ph.i ] ; 2 uses
  %i.db = load ptr, ptr %i.aq, align 8, !tbaa !34
  %i.dc = sext i32 %.263.lcssa.i to i64
  %i.dd = getelementptr inbounds [56 x i8], ptr %i.db, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  store i32 %i.by, ptr %i.de, align 4, !tbaa !35
  %i.df = tail call i32 @cuddNextHigh(ptr noundef %0, i32 noundef %.263.lcssa.i) #12 ; 3 uses
  %i.dg = icmp sgt i32 %i.ce, 0
  br i1 %i.dg, label %.lr.ph85.i, label %ddGroupMoveBackward.exit

.lr.ph85.i:                                       ; preds = %._crit_edge81.i, %.lr.ph85.i
  %.283.i = phi i32 [ %i.dn, %.lr.ph85.i ], [ 0, %._crit_edge81.i ]
  %.26682.i = phi i32 [ %i.dm, %.lr.ph85.i ], [ %i.df, %._crit_edge81.i ] ; 3 uses
  %i.dh = tail call i32 @cuddNextHigh(ptr noundef nonnull %0, i32 noundef %.26682.i) #12
  %i.di = load ptr, ptr %i.aq, align 8, !tbaa !34
  %i.dj = sext i32 %.26682.i to i64
  %i.dk = getelementptr inbounds [56 x i8], ptr %i.di, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  store i32 %i.dh, ptr %i.dl, align 4, !tbaa !35
  %i.dm = tail call i32 @cuddNextHigh(ptr noundef nonnull %0, i32 noundef %.26682.i) #12 ; 2 uses
  %i.dn = add nuw nsw i32 %.283.i, 1              ; 2 uses
  %exitcond95.not.i = icmp eq i32 %i.dn, %i.ce
  br i1 %exitcond95.not.i, label %ddGroupMoveBackward.exit, label %.lr.ph85.i, !llvm.loop !120

ddGroupMoveBackward.exit:                         ; preds = %.lr.ph85.i, %._crit_edge81.i
  %.266.lcssa.i = phi i32 [ %i.df, %._crit_edge81.i ], [ %i.dm, %.lr.ph85.i ]
  %i.do = load ptr, ptr %i.aq, align 8, !tbaa !34
  br label %.sink.split

.sink.split:                                      ; preds = %ddDissolveGroup.exit, %ddGroupMoveBackward.exit
  %.266.lcssa.i.sink = phi i32 [ %.266.lcssa.i, %ddGroupMoveBackward.exit ], [ %i.aw, %ddDissolveGroup.exit ]
  %.sink189 = phi ptr [ %i.do, %ddGroupMoveBackward.exit ], [ %i.av, %ddDissolveGroup.exit ]
  %.sink = phi i32 [ %i.df, %ddGroupMoveBackward.exit ], [ %i.bs, %ddDissolveGroup.exit ]
  %i.dp = sext i32 %.266.lcssa.i.sink to i64
  %i.dq = getelementptr inbounds [56 x i8], ptr %.sink189, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 28
  store i32 %.sink, ptr %i.dr, align 4, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %.383140, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !55 ; 2 uses
  %.not109 = icmp eq ptr %i.dt, null
  br i1 %.not109, label %ddGroupMoveBackward.exit.thread, label %bb.f, !llvm.loop !121

ddGroupMoveBackward.exit.thread:                  ; preds = %bb.g, %bb.h, %bb.k, %bb.r, %bb.p, %.preheader121, %.preheader
  %.084 = phi i32 [ 1, %.preheader ], [ 0, %bb.p ], [ 1, %.preheader121 ], [ 0, %bb.k ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.r ]
  ret i32 %.084
}

declare i32 @cuddNextHigh(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ddGroupSiftingUp(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0149 = phi i32 [ %1, %bb.a ], [ %i.o, %bb.b ] ; 3 uses
  %i.l = sext i32 %.0149 to i64                   ; 2 uses
  %i.m = getelementptr inbounds [56 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !35   ; 2 uses
  %i.p = icmp ult i32 %.0149, %i.o
  br i1 %i.p, label %bb.b, label %.preheader, !llvm.loop !122

.preheader:                                       ; preds = %bb.b
  %i.q = sub i32 %i.g, %i.i                       ; 4 uses
  %.not.not178 = icmp slt i32 %2, %.0149
  br i1 %.not.not178, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.s = sext i32 %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %bb.f ]
  %.0179 = phi i32 [ %i.q, %.lr.ph ], [ %.1, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28   ; 3 uses
  %i.w = icmp eq i32 %i.v, %i.e
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = tail call i32 @cuddTestInteract(ptr noundef nonnull %0, i32 noundef %i.v, i32 noundef %i.e) #12
  %.not170 = icmp eq i32 %i.x, 0
  br i1 %.not170, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !47
  %i.ae = icmp eq i32 %i.ad, 1
  %.neg171.neg193 = zext i1 %i.ae to i32
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.ag = getelementptr inbounds [56 x i8], ptr %i.af, i64 %indvars.iv.next
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !44
  %.neg174 = add i32 %.0179, %.neg171.neg193
  %i.aj = sub i32 %.neg174, %i.ai
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi i32 [ %i.aj, %bb.e ], [ %.0179, %bb.d ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.0.lcssa = phi i32 [ %i.q, %.preheader ], [ %.1, %bb.f ] ; 2 uses
  %i.ak = tail call i32 @cuddNextLow(ptr noundef nonnull %0, i32 noundef %1) #12 ; 2 uses
  %i.al = icmp sge i32 %i.ak, %2
  %i.am = icmp sle i32 %.0.lcssa, %i.q
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %.lr.ph187, label %.loopexit

.lr.ph187:                                        ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph187, %bb.aa
  %.2185 = phi i32 [ %.0.lcssa, %.lr.ph187 ], [ %.6, %bb.aa ] ; 4 uses
  %.0147184 = phi i32 [ %i.q, %.lr.ph187 ], [ %.1148, %bb.aa ] ; 5 uses
  %.0151183 = phi i32 [ %i.ak, %.lr.ph187 ], [ %i.el, %bb.aa ] ; 7 uses
  %.0153182 = phi i32 [ %1, %.lr.ph187 ], [ %i.au, %bb.aa ] ; 10 uses
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.ar = sext i32 %.0151183 to i64               ; 3 uses
  %i.as = getelementptr inbounds [56 x i8], ptr %i.aq, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !35 ; 3 uses
  %i.av = tail call i32 %3(ptr noundef nonnull %0, i32 noundef %.0151183, i32 noundef %.0153182) #12, !callees !50
  %.not = icmp eq i32 %i.av, 0
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !34  ; 4 uses
  %i.ax = getelementptr inbounds [56 x i8], ptr %i.aw, i64 %i.ar
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 28 ; 2 uses
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %.0153182, ptr %i.ay, align 4, !tbaa !35
  %i.az = sext i32 %.0153182 to i64
  %i.ba = getelementptr inbounds [56 x i8], ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0150 = phi i32 [ %i.bc, %bb.h ], [ %i.bg, %bb.i ]
  %i.bd = sext i32 %.0150 to i64
  %i.be = getelementptr inbounds [56 x i8], ptr %i.aw, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 28
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !35 ; 2 uses
  %.not168 = icmp eq i32 %i.bg, %.0153182
  br i1 %.not168, label %bb.j, label %bb.i, !llvm.loop !124

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 28
  store i32 %i.au, ptr %i.bh, align 4, !tbaa !35
  %i.bi = tail call ptr @cuddDynamicAllocNode(ptr noundef nonnull %0) #12 ; 7 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %.0151183, ptr %i.bi, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 %.0153182, ptr %i.bk, align 4, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 8, ptr %i.bl, align 8, !tbaa !58
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !41
  %i.bn = load i32, ptr %i.h, align 8, !tbaa !42
  %i.bo = sub i32 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !59
  %i.bq = load ptr, ptr %4, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !55
  store ptr %i.bi, ptr %4, align 8, !tbaa !49
  br label %bb.aa

bb.l:                                             ; preds = %bb.g
  %i.bs = load i32, ptr %i.ay, align 4, !tbaa !35
  %i.bt = icmp eq i32 %i.bs, %.0151183
  br i1 %i.bt, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bu = sext i32 %.0153182 to i64               ; 2 uses
  %i.bv = getelementptr inbounds [56 x i8], ptr %i.aw, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !35
  %i.by = icmp eq i32 %i.bx, %.0153182
  br i1 %i.by, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ar
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !28 ; 2 uses
  %i.cc = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %.0151183, i32 noundef %.0153182) #12 ; 4 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ab, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = tail call i32 @cuddTestInteract(ptr noundef nonnull %0, i32 noundef %i.cb, i32 noundef %i.e) #12
  %.not166 = icmp eq i32 %i.ce, 0
  br i1 %.not166, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.cg = sext i32 %i.cb to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !46
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !47
  %i.cl = icmp eq i32 %i.ck, 1
  %.neg167 = sext i1 %i.cl to i32
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.cn = getelementptr inbounds [56 x i8], ptr %i.cm, i64 %i.bu
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !44
  %i.cq = add i32 %.2185, %.neg167
  %i.cr = add i32 %i.cq, %i.cp
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3 = phi i32 [ %i.cr, %bb.p ], [ %.2185, %bb.o ]
  %i.cs = tail call ptr @cuddDynamicAllocNode(ptr noundef nonnull %0) #12 ; 7 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %.0151183, ptr %i.cs, align 8, !tbaa !53
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %.0153182, ptr %i.cu, align 4, !tbaa !52
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 0, ptr %i.cv, align 8, !tbaa !58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %i.cc, ptr %i.cw, align 4, !tbaa !59
  %i.cx = load ptr, ptr %4, align 8, !tbaa !49
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !55
  store ptr %i.cs, ptr %4, align 8, !tbaa !49
  %i.cz = sitofp i32 %i.cc to double
  %i.da = sitofp i32 %.0147184 to double
  %i.db = load double, ptr %i.ap, align 8, !tbaa !60
  %i.dc = fmul double %i.db, %i.da
  %i.dd = fcmp olt double %i.dc, %i.cz
  br i1 %i.dd, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.cc, i32 %.0147184)
  br label %bb.aa

bb.t:                                             ; preds = %bb.m, %bb.l
  %i.de = tail call fastcc i32 @ddGroupMove(ptr noundef nonnull %0, i32 noundef %.0151183, i32 noundef %.0153182, ptr noundef %4) ; 3 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = load ptr, ptr %4, align 8, !tbaa !49
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !52
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %.1146 = phi i32 [ %i.di, %bb.u ], [ %i.ec, %bb.x ]
  %.4 = phi i32 [ %.2185, %bb.u ], [ %.5, %bb.x ] ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.dk = sext i32 %.1146 to i64                  ; 3 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !28 ; 2 uses
  %i.dn = tail call i32 @cuddTestInteract(ptr noundef nonnull %0, i32 noundef %i.dm, i32 noundef %i.e) #12
  %.not164 = icmp eq i32 %i.dn, 0
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !34  ; 2 uses
  br i1 %.not164, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.dp = sext i32 %i.dm to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !46
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !47
  %i.du = icmp eq i32 %i.dt, 1
  %.neg = sext i1 %i.du to i32
  %i.dv = getelementptr inbounds [56 x i8], ptr %.pre, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !44
  %i.dy = add i32 %.4, %.neg
  %i.dz = add i32 %i.dy, %i.dx
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5 = phi i32 [ %i.dz, %bb.w ], [ %.4, %bb.v ]  ; 2 uses
  %i.ea = getelementptr inbounds [56 x i8], ptr %.pre, i64 %i.dk
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !35 ; 2 uses
  %i.ed = load ptr, ptr %4, align 8, !tbaa !49
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !52
  %.not165 = icmp eq i32 %i.ec, %i.ef
  br i1 %.not165, label %bb.y, label %bb.v, !llvm.loop !125

bb.y:                                             ; preds = %bb.x
  %i.eg = sitofp i32 %i.de to double
  %i.eh = sitofp i32 %.0147184 to double
  %i.ei = load double, ptr %i.ap, align 8, !tbaa !60
  %i.ej = fmul double %i.ei, %i.eh
  %i.ek = fcmp olt double %i.ej, %i.eg
  br i1 %i.ek, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %spec.select172 = tail call i32 @llvm.smin.i32(i32 %i.de, i32 %.0147184)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.s, %bb.k
  %.1148 = phi i32 [ %.0147184, %bb.k ], [ %spec.select, %bb.s ], [ %spec.select172, %bb.z ] ; 2 uses
  %.6 = phi i32 [ %.2185, %bb.k ], [ %.3, %bb.s ], [ %.5, %bb.z ] ; 2 uses
  %i.el = tail call i32 @cuddNextLow(ptr noundef nonnull %0, i32 noundef %i.au) #12 ; 2 uses
  %i.em = icmp sge i32 %i.el, %2
  %i.en = icmp sle i32 %.6, %.1148
  %i.eo = select i1 %i.em, i1 %i.en, i1 false
  br i1 %i.eo, label %bb.g, label %.loopexit, !llvm.loop !126

bb.ab:                                            ; preds = %bb.t, %bb.q, %bb.n, %bb.j
  %.pr = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %.not169190 = icmp eq ptr %.pr, null
  br i1 %.not169190, label %.loopexit, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted = load ptr, ptr %i.ep, align 8, !tbaa !54
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph192, %bb.ac
  %i.eq = phi ptr [ %.promoted, %.lr.ph192 ], [ %i.er, %bb.ac ]
  %i.er = phi ptr [ %.pr, %.lr.ph192 ], [ %i.et, %bb.ac ] ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !55 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store i32 0, ptr %i.eu, align 4, !tbaa !47
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.eq, ptr %i.ev, align 8, !tbaa !56
  store ptr %i.et, ptr %4, align 8, !tbaa !49
  %.not169 = icmp eq ptr %i.et, null
  br i1 %.not169, label %..loopexit_crit_edge, label %bb.ac, !llvm.loop !127

..loopexit_crit_edge:                             ; preds = %bb.ac
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.y, %bb.aa, %._crit_edge, %bb.ab, %..loopexit_crit_edge
  %.0152 = phi i32 [ 0, %bb.ab ], [ 0, %..loopexit_crit_edge ], [ 1, %._crit_edge ], [ 1, %bb.aa ], [ 1, %bb.y ], [ 1, %bb.r ]
  ret i32 %.0152
}

declare i32 @cuddTestInteract(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @cuddDynamicAllocNode(ptr noundef) local_unnamed_addr #2

declare i32 @cuddSwapInPlace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ddGroupMove(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [56 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35   ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.088 = phi i32 [ %2, %bb.a ], [ %i.j, %bb.b ]  ; 6 uses
  %i.g = sext i32 %.088 to i64
  %i.h = getelementptr inbounds [56 x i8], ptr %i.b, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35   ; 2 uses
  %i.k = icmp ult i32 %.088, %i.j
  br i1 %i.k, label %bb.b, label %bb.c, !llvm.loop !128

bb.c:                                             ; preds = %bb.b
  %i.l = sub i32 %1, %i.f                         ; 3 uses
  %i.m = sub nsw i32 %.088, %2                    ; 2 uses
  %.not115 = icmp slt i32 %i.m, 0
  br i1 %.not115, label %._crit_edge126, label %.preheader104.lr.ph

.preheader104.lr.ph:                              ; preds = %bb.c
  %.not102110 = icmp slt i32 %i.l, 0
  br i1 %.not102110, label %.preheader104.us.preheader, label %.preheader104.preheader

.preheader104.preheader:                          ; preds = %.preheader104.lr.ph
  %i.n = add i32 %1, 2
  %i.o = sub i32 %i.n, %i.f
  %reass.sub = sub i32 %.088, %2
  %i.p = add i32 %reass.sub, 1
  br label %.preheader104

.preheader104.us.preheader:                       ; preds = %.preheader104.lr.ph
  %reass.sub152 = sub i32 %.088, %2
  %i.q = add i32 %reass.sub152, 1
  br label %.preheader104.us

.preheader104.us:                                 ; preds = %.preheader104.us.preheader, %.preheader104.us
  %.090118.us = phi i32 [ %i.t, %.preheader104.us ], [ 1, %.preheader104.us.preheader ] ; 3 uses
  %i.r = add nsw i32 %.090118.us, %2
  %i.s = tail call i32 @cuddNextLow(ptr noundef nonnull %0, i32 noundef %i.r) #12 ; 0 uses
  %i.t = add nuw i32 %.090118.us, 1
  %exitcond145 = icmp eq i32 %.090118.us, %i.q
  br i1 %exitcond145, label %.preheader, label %.preheader104.us, !llvm.loop !129

.preheader104:                                    ; preds = %.preheader104.preheader, %._crit_edge
  %.090118 = phi i32 [ %i.aa, %._crit_edge ], [ 1, %.preheader104.preheader ] ; 3 uses
  %.093117 = phi i32 [ %i.y, %._crit_edge ], [ %2, %.preheader104.preheader ]
  %.096116 = phi i32 [ %i.z, %._crit_edge ], [ %1, %.preheader104.preheader ]
  br label %bb.d

.preheader:                                       ; preds = %._crit_edge, %.preheader104.us
  %.086.lcssa = phi i32 [ -1, %.preheader104.us ], [ %.197111, %._crit_edge ] ; 2 uses
  %.0.lcssa = phi i32 [ -1, %.preheader104.us ], [ %.194112, %._crit_edge ] ; 2 uses
  %.not = icmp eq i32 %.088, %2
  br i1 %.not, label %._crit_edge126, label %.lr.ph

bb.d:                                             ; preds = %.preheader104, %bb.e
  %.089113 = phi i32 [ 1, %.preheader104 ], [ %i.x, %bb.e ]
  %.194112 = phi i32 [ %.093117, %.preheader104 ], [ %.197111, %bb.e ] ; 2 uses
  %.197111 = phi i32 [ %.096116, %.preheader104 ], [ %i.w, %bb.e ] ; 4 uses
  %i.u = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.197111, i32 noundef %.194112) #12
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.loopexit105, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %.197111) #12
  %i.x = add nuw i32 %.089113, 1                  ; 2 uses
  %exitcond = icmp eq i32 %i.x, %i.o
  br i1 %exitcond, label %._crit_edge, label %bb.d, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.e
  %i.y = add nsw i32 %.090118, %2                 ; 2 uses
  %i.z = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %i.y) #12
  %i.aa = add nuw i32 %.090118, 1
  %exitcond143 = icmp eq i32 %.090118, %i.p
  br i1 %exitcond143, label %.preheader, label %.preheader104, !llvm.loop !129

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.191125 = phi i32 [ %i.ah, %.lr.ph ], [ 0, %.preheader ]
  %.295124 = phi i32 [ %i.ag, %.lr.ph ], [ %i.f, %.preheader ] ; 3 uses
  %i.ab = tail call i32 @cuddNextHigh(ptr noundef %0, i32 noundef %.295124) #12
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ad = sext i32 %.295124 to i64
  %i.ae = getelementptr inbounds [56 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  store i32 %i.ab, ptr %i.af, align 4, !tbaa !35
  %i.ag = tail call i32 @cuddNextHigh(ptr noundef %0, i32 noundef %.295124) #12 ; 2 uses
  %i.ah = add nuw nsw i32 %.191125, 1             ; 2 uses
  %exitcond146.not = icmp eq i32 %i.ah, %i.m
  br i1 %exitcond146.not, label %._crit_edge126, label %.lr.ph, !llvm.loop !131

._crit_edge126:                                   ; preds = %.lr.ph, %bb.c, %.preheader
  %.0.lcssa156 = phi i32 [ %.0.lcssa, %.preheader ], [ -1, %bb.c ], [ %.0.lcssa, %.lr.ph ]
  %.086.lcssa155 = phi i32 [ %.086.lcssa, %.preheader ], [ -1, %bb.c ], [ %.086.lcssa, %.lr.ph ]
  %.295.lcssa = phi i32 [ %i.f, %.preheader ], [ %i.f, %bb.c ], [ %i.ag, %.lr.ph ] ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.aj = sext i32 %.295.lcssa to i64
  %i.ak = getelementptr inbounds [56 x i8], ptr %i.ai, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  store i32 %i.f, ptr %i.al, align 4, !tbaa !35
  %i.am = tail call i32 @cuddNextHigh(ptr noundef %0, i32 noundef %.295.lcssa) #12 ; 3 uses
  %i.an = icmp sgt i32 %i.l, 0
  br i1 %i.an, label %.lr.ph131, label %._crit_edge132

.lr.ph131:                                        ; preds = %._crit_edge126, %.lr.ph131
  %.2129 = phi i32 [ %i.au, %.lr.ph131 ], [ 0, %._crit_edge126 ]
  %.298128 = phi i32 [ %i.at, %.lr.ph131 ], [ %i.am, %._crit_edge126 ] ; 3 uses
  %i.ao = tail call i32 @cuddNextHigh(ptr noundef nonnull %0, i32 noundef %.298128) #12
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.aq = sext i32 %.298128 to i64
  %i.ar = getelementptr inbounds [56 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  store i32 %i.ao, ptr %i.as, align 4, !tbaa !35
  %i.at = tail call i32 @cuddNextHigh(ptr noundef nonnull %0, i32 noundef %.298128) #12 ; 2 uses
  %i.au = add nuw nsw i32 %.2129, 1               ; 2 uses
  %exitcond147.not = icmp eq i32 %i.au, %i.l
  br i1 %exitcond147.not, label %._crit_edge132, label %.lr.ph131, !llvm.loop !132

._crit_edge132:                                   ; preds = %.lr.ph131, %._crit_edge126
  %.298.lcssa = phi i32 [ %i.am, %._crit_edge126 ], [ %i.at, %.lr.ph131 ]
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.aw = sext i32 %.298.lcssa to i64
  %i.ax = getelementptr inbounds [56 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  store i32 %i.am, ptr %i.ay, align 4, !tbaa !35
  %i.az = tail call ptr @cuddDynamicAllocNode(ptr noundef nonnull %0) #12 ; 7 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.loopexit105, label %bb.f

bb.f:                                             ; preds = %._crit_edge132
  store i32 %.086.lcssa155, ptr %i.az, align 8, !tbaa !53
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 %.0.lcssa156, ptr %i.bb, align 4, !tbaa !52
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 0, ptr %i.bc, align 8, !tbaa !58
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !42
  %i.bh = sub i32 %i.be, %i.bg                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !59
  %i.bj = load ptr, ptr %3, align 8, !tbaa !49
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !55
  store ptr %i.az, ptr %3, align 8, !tbaa !49
  br label %.loopexit

.loopexit105:                                     ; preds = %bb.d, %._crit_edge132
  %.pr = load ptr, ptr %3, align 8, !tbaa !49     ; 2 uses
  %.not103134 = icmp eq ptr %.pr, null
  br i1 %.not103134, label %.loopexit, label %.lr.ph136

.lr.ph136:                                        ; preds = %.loopexit105
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted = load ptr, ptr %i.bl, align 8, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph136, %bb.g
  %i.bm = phi ptr [ %.promoted, %.lr.ph136 ], [ %i.bn, %bb.g ]
  %i.bn = phi ptr [ %.pr, %.lr.ph136 ], [ %i.bp, %bb.g ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !55 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 0, ptr %i.bq, align 4, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bm, ptr %i.br, align 8, !tbaa !56
  store ptr %i.bp, ptr %3, align 8, !tbaa !49
  %.not103 = icmp eq ptr %i.bp, null
  br i1 %.not103, label %..loopexit_crit_edge, label %bb.g, !llvm.loop !133

..loopexit_crit_edge:                             ; preds = %bb.g
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit105, %..loopexit_crit_edge, %bb.f
  %.092 = phi i32 [ %i.bh, %bb.f ], [ 0, %..loopexit_crit_edge ], [ 0, %.loopexit105 ]
  ret i32 %.092
}

declare i32 @cuddNextLow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Cudd_ReadSize(ptr noundef) local_unnamed_addr #2

declare i32 @Cudd_bddReadPairIndex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

declare i32 @Cudd_bddIsVarToBeUngrouped(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Cudd_bddIsVarToBeGrouped(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6DdNode", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"DdNode", !5, i64 0, !5, i64 4, !9, i64 8, !4, i64 16, !10, i64 32}
!12 = !{!"p1 _ZTS7DdCache", !8, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"p1 _ZTS10DdSubtable", !8, i64 0}
!15 = !{!"any p2 pointer", !8, i64 0}
!16 = !{!"p2 _ZTS6DdNode", !15, i64 0}
!17 = !{!"DdSubtable", !16, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48}
!18 = !{!"p1 int", !8, i64 0}
!19 = !{!"p1 long", !8, i64 0}
!20 = !{!"p1 omnipotent char", !8, i64 0}
!21 = !{!"p1 _ZTS7MtrNode", !8, i64 0}
!22 = !{!"p1 _ZTS12DdLocalCache", !8, i64 0}
!23 = !{!"p1 _ZTS6DdHook", !8, i64 0}
!24 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!25 = !{!"DdManager", !11, i64 0, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !12, i64 80, !12, i64 88, !5, i64 96, !5, i64 100, !13, i64 104, !13, i64 112, !13, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !14, i64 152, !14, i64 160, !17, i64 168, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !13, i64 256, !5, i64 264, !5, i64 268, !5, i64 272, !16, i64 280, !10, i64 288, !10, i64 296, !13, i64 304, !5, i64 312, !18, i64 320, !18, i64 328, !18, i64 336, !18, i64 344, !16, i64 352, !18, i64 360, !16, i64 368, !5, i64 376, !19, i64 384, !19, i64 392, !16, i64 400, !9, i64 408, !20, i64 416, !16, i64 424, !5, i64 432, !5, i64 436, !5, i64 440, !13, i64 448, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !13, i64 472, !13, i64 480, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !21, i64 528, !21, i64 536, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !22, i64 568, !20, i64 576, !23, i64 584, !23, i64 592, !23, i64 600, !23, i64 608, !24, i64 616, !24, i64 624, !5, i64 632, !10, i64 640, !10, i64 648, !10, i64 656, !5, i64 664, !10, i64 672, !10, i64 680, !13, i64 688, !13, i64 696, !13, i64 704, !13, i64 712, !13, i64 720, !13, i64 728, !5, i64 736, !9, i64 744, !9, i64 752, !10, i64 760}
!26 = !{!25, !5, i64 136}
!27 = !{!25, !18, i64 320}
!28 = !{!5, !5, i64 0}
!29 = !{!25, !21, i64 528}
!30 = !{!25, !18, i64 336}
!31 = !{!"MtrNode", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40}
!32 = !{!31, !5, i64 12}
!33 = !{!31, !5, i64 8}
!34 = !{!25, !14, i64 152}
!35 = !{!17, !5, i64 28}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!31, !21, i64 24}
!39 = !{!25, !5, i64 544}
!40 = !{!31, !21, i64 40}
!41 = !{!25, !5, i64 228}
!42 = !{!25, !5, i64 312}
!43 = !{!18, !18, i64 0}
!44 = !{!17, !5, i64 16}
!45 = !{!17, !5, i64 44}
!46 = !{!9, !9, i64 0}
!47 = !{!11, !5, i64 4}
!48 = !{!"p1 _ZTS4Move", !8, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{ptr @ddExtSymmCheck, ptr @ddNoCheck, ptr @ddVarGroupCheck}
!51 = !{!"Move", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !48, i64 16}
!52 = !{!51, !5, i64 4}
!53 = !{!51, !5, i64 0}
!54 = !{!25, !9, i64 408}
!55 = !{!51, !48, i64 16}
!56 = !{!11, !9, i64 8}
!57 = !{!25, !16, i64 352}
!58 = !{!51, !5, i64 8}
!59 = !{!51, !5, i64 12}
!60 = !{!25, !13, i64 472}
!61 = distinct !{!61, !36}
!62 = distinct !{!62, !37}
!63 = distinct !{!63, !36}
!64 = distinct !{!64, !36}
!65 = distinct !{!65, !36}
!66 = distinct !{!66, !36}
!67 = distinct !{!67, !36}
!68 = distinct !{!68, !37}
!69 = distinct !{!69, !36}
!70 = !{!31, !5, i64 4}
!71 = !{!31, !5, i64 0}
!72 = !{!25, !24, i64 624}
!73 = !{!31, !21, i64 16}
!74 = distinct !{!74, !36}
!75 = distinct !{!75, !36}
!76 = distinct !{!76, !36}
!77 = distinct !{!77, !36}
!78 = distinct !{!78, !36}
!79 = distinct !{!79, !36}
!80 = distinct !{!80, !36}
!81 = !{!25, !5, i64 632}
!82 = !{!25, !5, i64 464}
!83 = !{!25, !5, i64 468}
!84 = !{!17, !5, i64 32}
!85 = distinct !{!85, !36}
!86 = distinct !{!86, !36}
!87 = distinct !{!87, !36}
!88 = distinct !{!88, !36}
!89 = !{!25, !9, i64 40}
!90 = !{!17, !5, i64 12}
!91 = !{!17, !16, i64 0}
!92 = !{!25, !5, i64 552}
!93 = !{!4, !4, i64 0}
!94 = !{!11, !5, i64 0}
!95 = !{!25, !5, i64 556}
!96 = distinct !{!96, !36}
!97 = distinct !{!97, !36}
!98 = distinct !{!98, !36}
!99 = distinct !{!99, !36}
!100 = distinct !{!100, !36}
!101 = distinct !{!101, !36}
!102 = distinct !{!102, !36}
!103 = distinct !{!103, !36}
!104 = !{!25, !5, i64 548}
!105 = distinct !{!105, !36}
!106 = distinct !{!106, !36}
!107 = distinct !{!107, !36}
!108 = distinct !{!108, !36}
!109 = distinct !{!109, !36}
!110 = distinct !{!110, !36}
!111 = distinct !{!111, !36}
!112 = distinct !{!112, !36}
!113 = distinct !{!113, !36}
!114 = distinct !{!114, !36}
!115 = distinct !{!115, !36}
!116 = distinct !{!116, !36}
!117 = distinct !{!117, !36}
!118 = distinct !{!118, !36}
!119 = distinct !{!119, !36}
!120 = distinct !{!120, !36}
!121 = distinct !{!121, !36}
!122 = distinct !{!122, !36}
!123 = distinct !{!123, !36}
!124 = distinct !{!124, !36}
!125 = distinct !{!125, !36}
!126 = distinct !{!126, !36}
!127 = distinct !{!127, !36}
!128 = distinct !{!128, !36}
!129 = distinct !{!129, !36}
!130 = distinct !{!130, !36}
!131 = distinct !{!131, !36}
!132 = distinct !{!132, !36}
!133 = distinct !{!133, !36}
end_hunk_0
