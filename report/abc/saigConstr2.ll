Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/saigConstr2?download=true
inline.NumInlined: 563
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 36
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [65 x i8] c"Simulating %d nodes and %d flops for %d frames with %d words... \00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Primary output %d fails on some input patterns.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Primary output :  \00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Constraint %3d :  \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ProbOne = %f  \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"ProbOneC = %f  \00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"AllZeroValue = %d \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%d:%s%d  \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Found %3d candidates.\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Level %d. Cands  =%d    \00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Found %3d constraints after filtering.\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"Level %d. Constr =%d    \00", align 1
@.str.19 = private unnamed_addr constant [74 x i8] c"Detecting constraints with %d frames, %d conflicts, and %d propagations.\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"Frames: \00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"The problem is trivially UNSAT (inductive with k=%d).\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [34 x i8] c"Found %3d classes of candidates.\0A\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"%d:%s%d \0A\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c" type I : %d:%s%d \0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"%d:%s%d  \0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c" type II: %d:%s%d  \0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"#reg after unfold2: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"#reg after fold2: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@str = private unnamed_addr constant [54 x i8] c"Warning: Reached the limit on the number of patterns.\00", align 1
@str.1 = private unnamed_addr constant [45 x i8] c"Solver could not solve the original problem.\00", align 1
@str.2 = private unnamed_addr constant [43 x i8] c"The number of outputs is different from 1.\00", align 1
@str.3 = private unnamed_addr constant [27 x i8] c"Solver returned undecided.\00", align 1
@str.4 = private unnamed_addr constant [18 x i8] c"Filtered cands:  \00", align 1

; Function Attrs: nounwind uwtable
define noundef i32 @Ssw_ManProfileConstraints(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #19
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %5, align 8, !tbaa !142
  %.neg378 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !143
  %.neg377 = sdiv i64 %i.e, -1000
  %.neg379 = add i64 %.neg377, %.neg378
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg379, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.f = getelementptr i8, ptr %0, i64 148
  %.val = load i32, ptr %i.f, align 4, !tbaa !13
  %i.g = getelementptr i8, ptr %0, i64 152
  %.val284 = load i32, ptr %i.g, align 8, !tbaa !13
  %i.h = add nsw i32 %.val284, %.val
  %i.i = getelementptr i8, ptr %0, i64 104
  %.val285 = load i32, ptr %i.i, align 8, !tbaa !28
  %i.j = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.h, i32 noundef %.val285, i32 noundef %2, i32 noundef %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %Abc_Clock.exit
  %i.k = call i32 @Aig_ManRandom(i32 noundef 1) #19 ; 0 uses
  %i.l = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val290 = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.m = getelementptr i8, ptr %.val290, i64 4
  %.val290.val = load i32, ptr %i.m, align 4, !tbaa !31 ; 4 uses
  %i.n = add nsw i32 %.val290.val, 2              ; 4 uses
  %i.o = sext i32 %1 to i64                       ; 6 uses
  %i.p = shl nsw i64 %i.o, 2
  %i.q = add nsw i64 %i.p, 8
  %i.r = sext i32 %i.n to i64                     ; 4 uses
  %i.s = mul i64 %i.q, %i.r
  %i.t = call noalias ptr @malloc(i64 noundef %i.s) #20 ; 29 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.r ; 5 uses
  %i.v = icmp sgt i32 %.val290.val, -2
  br i1 %i.v, label %.lr.ph.preheader.i, label %Vec_PtrCleanSimInfo.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.n to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.w = add i32 %.val290.val, 1
  %i.x = icmp ult i32 %i.w, 3
  br i1 %i.x, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.y = mul nsw i64 %indvars.iv.i, %i.o
  %i.z = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !32
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ab = mul nsw i64 %indvars.iv.next.i, %i.o
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !32
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.ae = mul nsw i64 %indvars.iv.next.i.1, %i.o
  %i.af = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.1
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !32
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ah = mul nsw i64 %indvars.iv.next.i.2, %i.o
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.2
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !32
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i357.unr-lcssa, label %.lr.ph.i, !llvm.loop !79

.lr.ph.i357.unr-lcssa:                            ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i357, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i357.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.lr.ph.i357.unr-lcssa ]
  %lcmp.mod861 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod861)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ak = mul nsw i64 %indvars.iv.i.epil, %i.o
  %i.al = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.epil
  store ptr %i.al, ptr %i.am, align 8, !tbaa !32
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i357, label %.lr.ph.i.epil, !llvm.loop !80

.lr.ph.i357:                                      ; preds = %.lr.ph.i.epil, %.lr.ph.i357.unr-lcssa
  %i.an = shl nsw i32 %1, 2
  %6 = sext i32 %i.an to i64                      ; 9 uses
  %i.ao = sext i32 %.val290.val to i64
  %7 = add nsw i64 %i.ao, 1
  %xtraiter862 = and i64 %i.r, 7
  %i.ap = icmp ult i64 %7, 7
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.i357.new

.lr.ph.i357.new:                                  ; preds = %.lr.ph.i357
  %unroll_iter866 = and i64 %i.r, -8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i357.new
  %indvars.iv.i358 = phi i64 [ 0, %.lr.ph.i357.new ], [ %indvars.iv.next.i359.7, %bb.e ] ; 9 uses
  %niter867 = phi i64 [ 0, %.lr.ph.i357.new ], [ %niter867.next.7, %bb.e ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i358
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr align 1 %i.ar, i8 0, i64 %6, i1 false)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i358
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr align 1 %i.au, i8 0, i64 %6, i1 false)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i358
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr align 1 %i.ax, i8 0, i64 %6, i1 false)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i358
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr align 1 %i.ba, i8 0, i64 %6, i1 false)
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i358
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr align 1 %i.bd, i8 0, i64 %6, i1 false)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i358
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr align 1 %i.bg, i8 0, i64 %6, i1 false)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i358
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr align 1 %i.bj, i8 0, i64 %6, i1 false)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i358
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr align 1 %i.bm, i8 0, i64 %6, i1 false)
  %indvars.iv.next.i359.7 = add nuw nsw i64 %indvars.iv.i358, 8 ; 2 uses
  %niter867.next.7 = add i64 %niter867, 8         ; 2 uses
  %niter867.ncmp.7 = icmp eq i64 %niter867.next.7, %unroll_iter866
  br i1 %niter867.ncmp.7, label %Vec_PtrCleanSimInfo.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !0

Vec_PtrCleanSimInfo.exit.loopexit.unr-lcssa:      ; preds = %bb.e
  %i.bn = and i32 %i.n, 7
  %lcmp.mod864.not = icmp eq i32 %i.bn, 0
  br i1 %lcmp.mod864.not, label %Vec_PtrCleanSimInfo.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %Vec_PtrCleanSimInfo.exit.loopexit.unr-lcssa, %.lr.ph.i357
  %indvars.iv.i358.epil.init = phi i64 [ 0, %.lr.ph.i357 ], [ %indvars.iv.next.i359.7, %Vec_PtrCleanSimInfo.exit.loopexit.unr-lcssa ]
  %i.bo = and i32 %i.n, 7
  %lcmp.mod865 = icmp ne i32 %i.bo, 0
  call void @llvm.assume(i1 %lcmp.mod865)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i358.epil = phi i64 [ %indvars.iv.i358.epil.init, %.epil.preheader ], [ %indvars.iv.next.i359.epil, %bb.f ] ; 2 uses
  %epil.iter863 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter863.next, %bb.f ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i358.epil
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 0, i64 %6, i1 false)
  %indvars.iv.next.i359.epil = add nuw nsw i64 %indvars.iv.i358.epil, 1
  %epil.iter863.next = add i64 %epil.iter863, 1   ; 2 uses
  %epil.iter863.cmp.not = icmp eq i64 %epil.iter863.next, %xtraiter862
  br i1 %epil.iter863.cmp.not, label %Vec_PtrCleanSimInfo.exit, label %bb.f, !llvm.loop !81

Vec_PtrCleanSimInfo.exit:                         ; preds = %Vec_PtrCleanSimInfo.exit.loopexit.unr-lcssa, %bb.f, %bb.d
  %i.br = getelementptr i8, ptr %0, i64 112       ; 9 uses
  %.val321 = load i32, ptr %i.br, align 8, !tbaa !35 ; 6 uses
  %i.bs = add i32 %.val321, -1
  %or.cond.i.i = icmp ult i32 %i.bs, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val321 ; 3 uses
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i365, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %Vec_PtrCleanSimInfo.exit
  %i.bt = sext i32 %spec.store.select.i.i to i64
  %i.bu = shl nsw i64 %i.bt, 2                    ; 2 uses
  %i.bv = call noalias ptr @malloc(i64 noundef %i.bu) #20 ; 4 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %Vec_IntAlloc.exit.i363, label %bb.g

bb.g:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.bw = sext i32 %.val321 to i64
  %i.bx = shl nsw i64 %i.bw, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bv, i8 0, i64 %i.bx, i1 false)
  br label %Vec_IntAlloc.exit.i363

Vec_IntAlloc.exit.thread.i365:                    ; preds = %Vec_PtrCleanSimInfo.exit
  %i.by = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 0, ptr %i.by, align 8, !tbaa !145
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr null, ptr %i.ca, align 8, !tbaa !146
  store i32 %.val321, ptr %i.bz, align 4, !tbaa !147
  br label %Vec_IntStart.exit366

Vec_IntAlloc.exit.i363:                           ; preds = %Vec_IntAlloc.exit.i, %bb.g
  %i.cb = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %spec.store.select.i.i, ptr %i.cb, align 8, !tbaa !145
  %i.cd = call noalias ptr @malloc(i64 noundef %i.bu) #20 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !146
  store i32 %.val321, ptr %i.cc, align 4, !tbaa !147
  %.not.i364 = icmp eq ptr %i.cd, null
  br i1 %.not.i364, label %Vec_IntStart.exit366, label %bb.h

bb.h:                                             ; preds = %Vec_IntAlloc.exit.i363
  %i.cf = sext i32 %.val321 to i64
  %i.cg = shl nsw i64 %i.cf, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cd, i8 0, i64 %i.cg, i1 false)
  br label %Vec_IntStart.exit366

Vec_IntStart.exit366:                             ; preds = %Vec_IntAlloc.exit.thread.i365, %Vec_IntAlloc.exit.i363, %bb.h
  %i.ch = phi ptr [ null, %Vec_IntAlloc.exit.thread.i365 ], [ %i.bv, %Vec_IntAlloc.exit.i363 ], [ %i.bv, %bb.h ] ; 4 uses
  %i.ci = phi ptr [ %i.by, %Vec_IntAlloc.exit.thread.i365 ], [ %i.cb, %Vec_IntAlloc.exit.i363 ], [ %i.cb, %bb.h ] ; 4 uses
  %i.cj = icmp sgt i32 %1, 0                      ; 13 uses
  br i1 %i.cj, label %.preheader404, label %.preheader404.thread

.preheader404:                                    ; preds = %Vec_IntStart.exit366
  %i.ck = getelementptr i8, ptr %0, i64 48
  %.val322 = load ptr, ptr %i.ck, align 8, !tbaa !36
  %i.cl = getelementptr i8, ptr %.val322, i64 36
  %.val330 = load i32, ptr %i.cl, align 4, !tbaa !37
  %i.cm = sext i32 %.val330 to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !32
  %i.cp = zext nneg i32 %1 to i64
  %i.cq = shl nuw nsw i64 %i.cp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.co, i8 -1, i64 %i.cq, i1 false), !tbaa !13
  %i.cr = getelementptr i8, ptr %0, i64 104       ; 4 uses
  %.val332410 = load i32, ptr %i.cr, align 8, !tbaa !28
  %i.cs = icmp sgt i32 %.val332410, 0
  br i1 %i.cs, label %.lr.ph409.preheader, label %.critedge

.preheader404.thread:                             ; preds = %Vec_IntStart.exit366
  %i.ct = getelementptr i8, ptr %0, i64 104
  br label %.critedge

.lr.ph409.preheader:                              ; preds = %.preheader404
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !38
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %.val308 = load ptr, ptr %i.cw, align 8, !tbaa !39
  %i.cx = zext nneg i32 %1 to i64
  %i.cy = shl nuw nsw i64 %i.cx, 2
  br label %.lr.ph409

.lr.ph409:                                        ; preds = %.lr.ph409.preheader, %.lr.ph409
  %.0265411 = phi i32 [ %i.dh, %.lr.ph409 ], [ 0, %.lr.ph409.preheader ] ; 2 uses
  %.val319 = load i32, ptr %i.br, align 8, !tbaa !35
  %i.cz = add nsw i32 %.val319, %.0265411
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %.val308, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !32
  %i.dd = getelementptr i8, ptr %i.dc, i64 36
  %.val329 = load i32, ptr %i.dd, align 4, !tbaa !37
  %i.de = sext i32 %.val329 to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr align 4 %i.dg, i8 0, i64 %i.cy, i1 false), !tbaa !13
  %i.dh = add nuw nsw i32 %.0265411, 1            ; 2 uses
  %.val332 = load i32, ptr %i.cr, align 8, !tbaa !28
  %i.di = icmp slt i32 %i.dh, %.val332
  br i1 %i.di, label %.lr.ph409, label %.critedge, !llvm.loop !82

.critedge:                                        ; preds = %.lr.ph409, %.preheader404.thread, %.preheader404
  %i.dj = phi ptr [ %i.cr, %.preheader404 ], [ %i.ct, %.preheader404.thread ], [ %i.cr, %.lr.ph409 ] ; 2 uses
  %.val289 = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.dk = getelementptr i8, ptr %.val289, i64 4
  %.val289.val = load i32, ptr %i.dk, align 4, !tbaa !31
  %i.dl = sext i32 %.val289.val to i64
  %i.dm = getelementptr [8 x i8], ptr %i.t, i64 %i.dl ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !32 ; 12 uses
  %i.do = getelementptr i8, ptr %i.dm, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !32 ; 10 uses
  %i.dq = icmp sgt i32 %2, 0
  br i1 %i.dq, label %.preheader403.lr.ph, label %._crit_edge469

.preheader403.lr.ph:                              ; preds = %.critedge
  %i.dr = getelementptr i8, ptr %0, i64 108       ; 3 uses
  %i.ds = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.dt = icmp slt i32 %1, 1                      ; 2 uses
  %i.du = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %i.dv = getelementptr i8, ptr %0, i64 120       ; 4 uses
  %i.dw = getelementptr i8, ptr %i.ci, i64 8
  %i.dx = zext i32 %1 to i64                      ; 64 uses
  %i.dy = shl nuw nsw i64 %i.dx, 2                ; 11 uses
  %scevgep615 = getelementptr i8, ptr %i.dn, i64 %i.dy ; 2 uses
  %scevgep659 = getelementptr i8, ptr %i.dp, i64 %i.dy
  %min.iters.check820 = icmp ult i32 %1, 8
  %n.vec822 = and i64 %i.dx, 2147483640           ; 3 uses
  %cmp.n829 = icmp eq i64 %n.vec822, %i.dx
  %xtraiter868 = and i64 %i.dx, 3                 ; 2 uses
  %lcmp.mod869.not = icmp eq i64 %xtraiter868, 0
  %min.iters.check804 = icmp ult i32 %1, 8
  %n.vec806 = and i64 %i.dx, 2147483640           ; 3 uses
  %cmp.n815 = icmp eq i64 %n.vec806, %i.dx
  %xtraiter870 = and i64 %i.dx, 1
  %lcmp.mod871.not = icmp eq i64 %xtraiter870, 0
  %i.dz = add nsw i64 %i.dx, -1
  %min.iters.check786 = icmp ult i32 %1, 8
  %n.vec788 = and i64 %i.dx, 2147483640           ; 3 uses
  %cmp.n797 = icmp eq i64 %n.vec788, %i.dx
  %xtraiter873 = and i64 %i.dx, 1
  %lcmp.mod874.not = icmp eq i64 %xtraiter873, 0
  %i.ea = add nsw i64 %i.dx, -1
  %min.iters.check768 = icmp ult i32 %1, 8
  %n.vec770 = and i64 %i.dx, 2147483640           ; 3 uses
  %cmp.n779 = icmp eq i64 %n.vec770, %i.dx
  %xtraiter876 = and i64 %i.dx, 1
  %lcmp.mod877.not = icmp eq i64 %xtraiter876, 0
  %i.eb = add nsw i64 %i.dx, -1
  %min.iters.check750 = icmp ult i32 %1, 8
  %n.vec752 = and i64 %i.dx, 2147483640           ; 3 uses
  %cmp.n761 = icmp eq i64 %n.vec752, %i.dx
  %xtraiter879 = and i64 %i.dx, 3                 ; 2 uses
  %lcmp.mod880.not = icmp eq i64 %xtraiter879, 0
  %min.iters.check734 = icmp ult i32 %1, 8
  %n.vec736 = and i64 %i.dx, 2147483640           ; 3 uses
  %cmp.n743 = icmp eq i64 %n.vec736, %i.dx
  %xtraiter882 = and i64 %i.dx, 3                 ; 2 uses
  %lcmp.mod883.not = icmp eq i64 %xtraiter882, 0
  %min.iters.check720 = icmp ult i32 %1, 8
  %n.vec722 = and i64 %i.dx, 2147483640           ; 3 uses
  %cmp.n729 = icmp eq i64 %n.vec722, %i.dx
  %xtraiter885 = and i64 %i.dx, 3                 ; 2 uses
  %lcmp.mod886.not = icmp eq i64 %xtraiter885, 0
  %min.iters.check705 = icmp ult i32 %1, 8
  %n.vec707 = and i64 %i.dx, 2147483640           ; 3 uses
  %cmp.n716 = icmp eq i64 %n.vec707, %i.dx
  %xtraiter888 = and i64 %i.dx, 1
  %lcmp.mod889.not = icmp eq i64 %xtraiter888, 0
  %i.ec = add nsw i64 %i.dx, -1
  %min.iters.check685 = icmp ult i32 %1, 8
  %n.vec687 = and i64 %i.dx, 2147483640           ; 3 uses
  %cmp.n696 = icmp eq i64 %n.vec687, %i.dx
  %xtraiter891 = and i64 %i.dx, 3                 ; 2 uses
  %lcmp.mod892.not = icmp eq i64 %xtraiter891, 0
  %min.iters.check665 = icmp ult i32 %1, 8
  %n.vec667 = and i64 %i.dx, 2147483640           ; 3 uses
  %cmp.n676 = icmp eq i64 %n.vec667, %i.dx
  %xtraiter894 = and i64 %i.dx, 3                 ; 2 uses
  %lcmp.mod895.not = icmp eq i64 %xtraiter894, 0
  %min.iters.check645 = icmp ult i32 %1, 8
  %n.vec647 = and i64 %i.dx, 2147483640           ; 3 uses
  %cmp.n656 = icmp eq i64 %n.vec647, %i.dx
  %xtraiter897 = and i64 %i.dx, 3                 ; 2 uses
  %lcmp.mod898.not = icmp eq i64 %xtraiter897, 0
  %min.iters.check624 = icmp ult i32 %1, 8
  %n.vec626 = and i64 %i.dx, 2147483640           ; 3 uses
  %cmp.n636 = icmp eq i64 %n.vec626, %i.dx
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %i.dx, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dx
  br label %.preheader403

.preheader403:                                    ; preds = %.preheader403.lr.ph, %.critedge10
  %.0468 = phi i32 [ 0, %.preheader403.lr.ph ], [ %i.ys, %.critedge10 ]
  %.val333417 = load i32, ptr %i.dr, align 4, !tbaa !40
end_hunk_0
