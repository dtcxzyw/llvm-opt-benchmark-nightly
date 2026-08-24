Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/darPrec?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Dar_TruthPolarize.Signs = internal unnamed_addr constant [5 x i32] [i32 -1431655766, i32 -858993460, i32 -252645136, i32 -16711936, i32 -65536], align 16

; Function Attrs: nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @Dar_ArrayAlloc(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = mul i32 %2, %1                           ; 6 uses
  %i.c = sext i32 %i.b to i64
  %i.d = add nsw i64 %i.c, 8
  %i.e = mul nsw i64 %i.d, %i.a
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #14 ; 8 uses
  %i.g = shl nsw i64 %i.a, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 6 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !8
  %i.i = icmp sgt i32 %0, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  %i.j = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = add nsw i32 %0, -2
  %i.l = icmp ult i32 %i.k, 3
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.j, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = mul i32 %i.b, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store ptr %i.p, ptr %i.q, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.s = mul i32 %i.b, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.h, i64 %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next
  store ptr %i.u, ptr %i.v, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.x = mul i32 %i.b, %i.w
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.h, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.1
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.ac = mul i32 %i.b, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.h, i64 %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.2
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !11

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ag = trunc nuw nsw i64 %indvars.iv.epil to i32
  %i.ah = mul i32 %i.b, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.h, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !13

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  ret ptr %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i32 @Dar_Factorial(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %.not7 = icmp slt i32 %0, 1
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %0, 2147483640                 ; 3 uses
  %i.a = or disjoint i32 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi10 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.c, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.b = mul <4 x i32> %vec.phi, %vec.ind         ; 2 uses
  %i.c = mul <4 x i32> %vec.phi10, %step.add      ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.d = icmp eq i32 %index.next, %n.vec
  br i1 %i.d, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.c, %i.b
  %i.e = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %0, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader11

.lr.ph.preheader11:                               ; preds = %.lr.ph.preheader, %middle.block
  %.09.ph = phi i32 [ 1, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.068.ph = phi i32 [ 1, %.lr.ph.preheader ], [ %i.a, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader11, %.lr.ph
  %.09 = phi i32 [ %i.f, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader11 ]
  %.068 = phi i32 [ %i.g, %.lr.ph ], [ %.068.ph, %.lr.ph.preheader11 ] ; 3 uses
  %i.f = mul nuw nsw i32 %.09, %.068              ; 2 uses
  %i.g = add nuw i32 %.068, 1
  %exitcond.not = icmp eq i32 %.068, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.e, %middle.block ], [ %i.f, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Dar_Permutations_rec(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %3, align 1, !tbaa !19
  %i.c = load ptr, ptr %0, align 8, !tbaa !8
  store i8 %i.b, ptr %i.c, align 1, !tbaa !19
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = sdiv i32 %1, %2                          ; 7 uses
  %i.e = add nsw i32 %2, -1                       ; 4 uses
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.lr.ph48, label %.loopexit

.lr.ph48:                                         ; preds = %bb.c
  %i.g = zext nneg i32 %i.e to i64                ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g ; 7 uses
  %i.i = icmp sgt i32 %i.d, 0
  %4 = zext nneg i32 %i.e to i64                  ; 2 uses
  %wide.trip.count59 = zext nneg i32 %2 to i64    ; 2 uses
  %.pre61 = load i8, ptr %i.h, align 1, !tbaa !19 ; 2 uses
  br i1 %i.i, label %.lr.ph.us.preheader, label %.lr.ph48.split.preheader

.lr.ph48.split.preheader:                         ; preds = %.lr.ph48
  %i.j = sext i32 %i.d to i64
  br label %.lr.ph48.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph48
  %i.k = zext nneg i32 %i.d to i64
  %wide.trip.count54 = zext nneg i32 %i.d to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count54, 3       ; 3 uses
  %i.l = icmp ult i32 %i.d, 4
  %unroll_iter = and i64 %wide.trip.count54, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod66 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %i.m = phi i8 [ %.pre61, %.lr.ph.us.preheader ], [ %i.ak, %._crit_edge.us ]
  %indvars.iv56 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next57, %._crit_edge.us ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv56 ; 4 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !19    ; 6 uses
  store i8 %i.m, ptr %i.n, align 1, !tbaa !19
  store i8 %i.o, ptr %i.h, align 1, !tbaa !19
  %i.p = sub nsw i64 %4, %indvars.iv56
  %i.q = mul nsw i64 %i.p, %i.k
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q ; 6 uses
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv51 = phi i64 [ %indvars.iv.next52.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv51
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.g
  store i8 %i.o, ptr %i.u, align 1, !tbaa !19
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv51
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.g
  store i8 %i.o, ptr %i.y, align 1, !tbaa !19
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store i8 %i.o, ptr %i.ac, align 1, !tbaa !19
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.g
  store i8 %i.o, ptr %i.ag, align 1, !tbaa !19
  %indvars.iv.next52.3 = add nuw nsw i64 %indvars.iv51, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !20

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv51.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next52.3, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod66)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv51.epil = phi i64 [ %indvars.iv51.epil.init, %.epil.preheader ], [ %indvars.iv.next52.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv51.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.g
  store i8 %i.o, ptr %i.aj, align 1, !tbaa !19
  %indvars.iv.next52.epil = add nuw nsw i64 %indvars.iv51.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.d, !llvm.loop !21

._crit_edge.us:                                   ; preds = %bb.d, %._crit_edge.us.unr-lcssa
  tail call void @Dar_Permutations_rec(ptr noundef nonnull %i.r, i32 noundef %i.d, i32 noundef %i.e, ptr noundef nonnull %3)
  %i.ak = load i8, ptr %i.n, align 1, !tbaa !19   ; 2 uses
  %i.al = load i8, ptr %i.h, align 1, !tbaa !19
  store i8 %i.al, ptr %i.n, align 1, !tbaa !19
  store i8 %i.ak, ptr %i.h, align 1, !tbaa !19
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %.loopexit, label %.lr.ph.us, !llvm.loop !22

.lr.ph48.split:                                   ; preds = %.lr.ph48.split.preheader, %.lr.ph48.split
  %i.am = phi i8 [ %.pre61, %.lr.ph48.split.preheader ], [ %i.as, %.lr.ph48.split ]
  %indvars.iv = phi i64 [ 0, %.lr.ph48.split.preheader ], [ %indvars.iv.next, %.lr.ph48.split ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv ; 4 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !19
  store i8 %i.am, ptr %i.an, align 1, !tbaa !19
  store i8 %i.ao, ptr %i.h, align 1, !tbaa !19
  %i.ap = sub nsw i64 %4, %indvars.iv
  %i.aq = mul nsw i64 %i.ap, %i.j
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  tail call void @Dar_Permutations_rec(ptr noundef %i.ar, i32 noundef %i.d, i32 noundef %i.e, ptr noundef nonnull %3)
  %i.as = load i8, ptr %i.an, align 1, !tbaa !19  ; 2 uses
  %i.at = load i8, ptr %i.h, align 1, !tbaa !19
  store i8 %i.at, ptr %i.an, align 1, !tbaa !19
  store i8 %i.as, ptr %i.h, align 1, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count59
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph48.split, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph48.split, %._crit_edge.us, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable
define noundef ptr @Dar_Permutations(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.not7.i = icmp slt i32 %0, 1
  br i1 %.not7.i, label %Dar_Factorial.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i32 %0, 2147483640                 ; 3 uses
  %i.b = or disjoint i32 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.c, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.d, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.c = mul <4 x i32> %vec.ind, %vec.phi         ; 2 uses
  %i.d = mul <4 x i32> %step.add, %vec.phi16      ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.e = icmp eq i32 %index.next, %n.vec
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.d, %i.c
  %i.f = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %0, %n.vec
  br i1 %cmp.n, label %Dar_Factorial.exit, label %.lr.ph.i.preheader37

.lr.ph.i.preheader37:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.f, %middle.block ]
  %.068.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.b, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader37, %.lr.ph.i
  %.09.i = phi i32 [ %i.g, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader37 ]
  %.068.i = phi i32 [ %i.h, %.lr.ph.i ], [ %.068.i.ph, %.lr.ph.i.preheader37 ] ; 3 uses
  %i.g = mul nuw nsw i32 %.068.i, %.09.i          ; 2 uses
  %i.h = add nuw i32 %.068.i, 1
  %exitcond.not.i = icmp eq i32 %.068.i, %0
  br i1 %exitcond.not.i, label %Dar_Factorial.exit, label %.lr.ph.i, !llvm.loop !24

Dar_Factorial.exit:                               ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.0.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.f, %middle.block ], [ %i.g, %.lr.ph.i ] ; 5 uses
  %i.i = sext i32 %.0.lcssa.i to i64              ; 2 uses
  %i.j = sext i32 %0 to i64
  %i.k = add nsw i64 %i.j, 8
  %i.l = mul nsw i64 %i.k, %i.i
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #14 ; 9 uses
  %i.n = shl nsw i64 %i.i, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 6 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !8
  %i.p = icmp sgt i32 %.0.lcssa.i, 1
  br i1 %i.p, label %.lr.ph.i12, label %Dar_ArrayAlloc.exit

.lr.ph.i12:                                       ; preds = %Dar_Factorial.exit
  %wide.trip.count.i = zext nneg i32 %.0.lcssa.i to i64
  %i.q = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %xtraiter = and i64 %i.q, 3                     ; 3 uses
  %i.r = add nsw i32 %.0.lcssa.i, -2
  %i.s = icmp ult i32 %i.r, 3
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i12.new

.lr.ph.i12.new:                                   ; preds = %.lr.ph.i12
  %unroll_iter = and i64 %i.q, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i12.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i12.new ], [ %indvars.iv.next.i.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i12.new ], [ %niter.next.3, %bb.b ]
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.u = mul i32 %0, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  store ptr %i.w, ptr %i.x, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.z = mul i32 %0, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %i.o, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %i.ae = mul i32 %0, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.o, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.1
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !8
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  %i.aj = mul i32 %0, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.o, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.2
  store ptr %i.al, ptr %i.am, align 8, !tbaa !8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Dar_ArrayAlloc.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !11

Dar_ArrayAlloc.exit.loopexit.unr-lcssa:           ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Dar_ArrayAlloc.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %Dar_ArrayAlloc.exit.loopexit.unr-lcssa, %.lr.ph.i12
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i12 ], [ %indvars.iv.next.i.3, %Dar_ArrayAlloc.exit.loopexit.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.an = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  %i.ao = mul i32 %0, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.o, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.epil
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Dar_ArrayAlloc.exit, label %bb.c, !llvm.loop !25

Dar_ArrayAlloc.exit:                              ; preds = %Dar_ArrayAlloc.exit.loopexit.unr-lcssa, %bb.c, %Dar_Factorial.exit
  %i.as = icmp sgt i32 %0, 0
  br i1 %i.as, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %Dar_ArrayAlloc.exit
  %wide.trip.count = zext nneg i32 %0 to i64      ; 6 uses
  %min.iters.check18 = icmp ult i32 %0, 4
  br i1 %min.iters.check18, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i32 %0, 32
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph20

vector.ph20:                                      ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %wide.trip.count, 28
  %n.vec21 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph20
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next26, %vector.body22 ] ; 2 uses
  %vec.ind24 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph20 ], [ %vec.ind.next27, %vector.body22 ] ; 3 uses
  %step.add25 = add <16 x i8> %vec.ind24, splat (i8 16)
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %index23 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %vec.ind24, ptr %i.au, align 16, !tbaa !19
  store <16 x i8> %step.add25, ptr %i.av, align 16, !tbaa !19
  %index.next26 = add nuw i64 %index23, 32        ; 2 uses
  %vec.ind.next27 = add <16 x i8> %vec.ind24, splat (i8 32)
  %i.aw = icmp eq i64 %index.next26, %n.vec21
  br i1 %i.aw, label %middle.block28, label %vector.body22, !llvm.loop !26

middle.block28:                                   ; preds = %vector.body22
  %cmp.n29 = icmp eq i64 %n.vec21, %wide.trip.count
  br i1 %cmp.n29, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block28
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec21, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec30 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %i.ax = trunc i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.ax, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind32 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next34, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %index31
end_hunk_0
