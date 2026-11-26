Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dpstrf?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DPSTRF\00", align 1
@c__1 = internal global i32 1, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"DPOTRF\00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Trans\00", align 1
@c_b23 = internal global double -1.000000e+00, align 8
@c_b25 = internal global double 1.000000e+00, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"No Trans\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1

; Function Attrs: nounwind uwtable
define void @dpstrf_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef initializes((0, 4)) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 28 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca double, align 8                   ; 8 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca double, align 8                   ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.h = getelementptr inbounds i8, ptr %7, i64 -8 ; 30 uses
  %i.i = getelementptr inbounds i8, ptr %4, i64 -4 ; 5 uses
  %i.j = load i32, ptr %3, align 4, !tbaa !51     ; 12 uses
  %narrow = xor i32 %i.j, -1                      ; 4 uses
  %i.k = sext i32 %narrow to i64                  ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %2, i64 %i.k ; 74 uses
  store i32 0, ptr %8, align 4, !tbaa !51
  %i.m = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #8
  %.not = icmp eq i32 %i.m, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #8
  %.not411 = icmp eq i32 %i.n, 0
  br i1 %.not411, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = load i32, ptr %1, align 4, !tbaa !51     ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %3, align 4, !tbaa !51
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.o, i32 1)
  %i.r = icmp slt i32 %i.q, %spec.select
  br i1 %i.r, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.pr = load i32, ptr %8, align 4, !tbaa !51     ; 2 uses
  %.not412 = icmp eq i32 %.pr, 0
  br i1 %.not412, label %bb.f, label %.thread

.thread.sink.split:                               ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.c ], [ -4, %bb.d ] ; 2 uses
  store i32 %.sink, ptr %8, align 4, !tbaa !51
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e
  %i.s = phi i32 [ %.pr, %bb.e ], [ %.sink, %.thread.sink.split ]
  %i.t = sub nsw i32 0, %i.s
  store i32 %i.t, ptr %i.a, align 4, !tbaa !51
  %i.u = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 6) #8 ; 0 uses
  br label %bb.ay

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i32 %i.o, 0
  br i1 %i.v, label %bb.ay, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.3, ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #8 ; 21 uses
  %i.x = icmp slt i32 %i.w, 2
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %1, align 4, !tbaa !51     ; 5 uses
  %.not413 = icmp slt i32 %i.w, %i.y
  br i1 %.not413, label %iter.check, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @dpstf2_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8) #8
  br label %bb.ay

iter.check:                                       ; preds = %bb.h
  %i.z = add nuw i32 %i.y, 1
  %wide.trip.count = zext i32 %i.z to i64
  %i.aa = zext i32 %i.y to i64                    ; 5 uses
  %min.iters.check = icmp ult i32 %i.y, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check659 = icmp ult i32 %i.y, 32
  br i1 %min.iters.check659, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 24
  %n.vec = and i64 %i.aa, 4294967264              ; 4 uses
  %i.ac = or disjoint i64 %n.vec, 1               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.ad = getelementptr [4 x i8], ptr %4, i64 %index ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  store <8 x i32> %vec.ind, ptr %i.ad, align 4, !tbaa !51
  store <8 x i32> %step.add, ptr %i.ae, align 4, !tbaa !51
  store <8 x i32> %step.add.2, ptr %i.af, align 4, !tbaa !51
  store <8 x i32> %step.add.3, ptr %i.ag, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.ac, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec660 = and i64 %i.aa, 4294967288           ; 3 uses
  %i.ai = or disjoint i64 %n.vec660, 1
  %i.aj = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index661 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next663, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind662 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next664, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %4, i64 %index661
  store <8 x i32> %vec.ind662, ptr %i.ak, align 4, !tbaa !51
  %index.next663 = add nuw i64 %index661, 8       ; 2 uses
  %vec.ind.next664 = add <8 x i32> %vec.ind662, splat (i32 8)
  %i.al = icmp eq i64 %index.next663, %n.vec660
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n665 = icmp eq i64 %n.vec660, %i.aa
  br i1 %cmp.n665, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.an, ptr %i.am, align 4, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %1, align 4, !tbaa !51    ; 3 uses
  %i.ao = load double, ptr %2, align 8, !tbaa !57 ; 4 uses
  store double %i.ao, ptr %i.g, align 8, !tbaa !57
  %.not415454 = icmp slt i32 %.pre, 2
  br i1 %.not415454, label %._crit_edge459, label %.lr.ph458

.lr.ph458:                                        ; preds = %._crit_edge
  %i.ap = add i32 %i.j, 1                         ; 5 uses
  %i.aq = zext nneg i32 %.pre to i64
  %i.ar = add nsw i64 %i.aq, -1                   ; 2 uses
  %xtraiter = and i64 %i.ar, 3                    ; 3 uses
  %i.as = add nsw i32 %.pre, -2
  %i.at = icmp ult i32 %i.as, 3
  br i1 %i.at, label %.epil.preheader, label %.lr.ph458.new

.lr.ph458.new:                                    ; preds = %.lr.ph458
  %unroll_iter = and i64 %i.ar, -4
  br label %bb.j

bb.j:                                             ; preds = %bb.r, %.lr.ph458.new
  %indvars.iv518 = phi i64 [ 2, %.lr.ph458.new ], [ %indvars.iv.next519.3, %bb.r ] ; 5 uses
  %.0456 = phi i32 [ 1, %.lr.ph458.new ], [ %.1.3, %bb.r ]
  %i.au = phi double [ %i.ao, %.lr.ph458.new ], [ %i.bz, %bb.r ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph458.new ], [ %niter.next.3, %bb.r ]
  %i.av = trunc nuw nsw i64 %indvars.iv518 to i32 ; 2 uses
  %i.aw = mul i32 %i.ap, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !57 ; 3 uses
  %i.ba = fcmp ogt double %i.az, %i.au
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store double %i.az, ptr %i.g, align 8, !tbaa !57
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bb = phi double [ %i.az, %bb.k ], [ %i.au, %bb.j ] ; 2 uses
  %.1 = phi i32 [ %i.av, %bb.k ], [ %.0456, %bb.j ]
  %i.bc = trunc i64 %indvars.iv518 to i32
  %i.bd = or disjoint i32 %i.bc, 1                ; 2 uses
  %i.be = mul i32 %i.ap, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !57 ; 3 uses
  %i.bi = fcmp ogt double %i.bh, %i.bb
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double %i.bh, ptr %i.g, align 8, !tbaa !57
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = phi double [ %i.bh, %bb.m ], [ %i.bb, %bb.l ] ; 2 uses
  %.1.1 = phi i32 [ %i.bd, %bb.m ], [ %.1, %bb.l ]
  %i.bk = trunc i64 %indvars.iv518 to i32
  %i.bl = add i32 %i.bk, 2                        ; 2 uses
  %i.bm = mul i32 %i.ap, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !57 ; 3 uses
  %i.bq = fcmp ogt double %i.bp, %i.bj
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store double %i.bp, ptr %i.g, align 8, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.br = phi double [ %i.bp, %bb.o ], [ %i.bj, %bb.n ] ; 2 uses
  %.1.2 = phi i32 [ %i.bl, %bb.o ], [ %.1.1, %bb.n ]
  %i.bs = trunc i64 %indvars.iv518 to i32
  %i.bt = add i32 %i.bs, 3                        ; 2 uses
  %i.bu = mul i32 %i.ap, %i.bt
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !57 ; 3 uses
  %i.by = fcmp ogt double %i.bx, %i.br
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.bx, ptr %i.g, align 8, !tbaa !57
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bz = phi double [ %i.bx, %bb.q ], [ %i.br, %bb.p ] ; 3 uses
  %.1.3 = phi i32 [ %i.bt, %bb.q ], [ %.1.2, %bb.p ] ; 3 uses
  %indvars.iv.next519.3 = add nuw nsw i64 %indvars.iv518, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge459.loopexit.unr-lcssa, label %bb.j, !llvm.loop !11

._crit_edge459.loopexit.unr-lcssa:                ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge459, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge459.loopexit.unr-lcssa, %.lr.ph458
  %indvars.iv518.epil.init = phi i64 [ 2, %.lr.ph458 ], [ %indvars.iv.next519.3, %._crit_edge459.loopexit.unr-lcssa ]
  %.0456.epil.init = phi i32 [ 1, %.lr.ph458 ], [ %.1.3, %._crit_edge459.loopexit.unr-lcssa ]
  %.epil.init = phi double [ %i.ao, %.lr.ph458 ], [ %i.bz, %._crit_edge459.loopexit.unr-lcssa ]
  %lcmp.mod1009 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1009)
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv518.epil = phi i64 [ %indvars.iv518.epil.init, %.epil.preheader ], [ %indvars.iv.next519.epil, %bb.u ] ; 2 uses
  %.0456.epil = phi i32 [ %.0456.epil.init, %.epil.preheader ], [ %.1.epil, %bb.u ]
  %i.ca = phi double [ %.epil.init, %.epil.preheader ], [ %i.ch, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.cb = trunc nuw nsw i64 %indvars.iv518.epil to i32 ; 2 uses
  %i.cc = mul i32 %i.ap, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !57 ; 3 uses
  %i.cg = fcmp ogt double %i.cf, %i.ca
  br i1 %i.cg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double %i.cf, ptr %i.g, align 8, !tbaa !57
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ch = phi double [ %i.cf, %bb.t ], [ %i.ca, %bb.s ] ; 2 uses
  %.1.epil = phi i32 [ %i.cb, %bb.t ], [ %.0456.epil, %bb.s ] ; 2 uses
  %indvars.iv.next519.epil = add nuw nsw i64 %indvars.iv518.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge459, label %bb.s, !llvm.loop !12

._crit_edge459:                                   ; preds = %._crit_edge459.loopexit.unr-lcssa, %bb.u, %._crit_edge
  %i.ci = phi double [ %i.ao, %._crit_edge ], [ %i.bz, %._crit_edge459.loopexit.unr-lcssa ], [ %i.ch, %bb.u ]
  %.0.lcssa = phi i32 [ 1, %._crit_edge ], [ %.1.3, %._crit_edge459.loopexit.unr-lcssa ], [ %.1.epil, %bb.u ] ; 2 uses
  %i.cj = fcmp ugt double %i.ci, 0.000000e+00
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge459
  %i.ck = call i32 @disnan_(ptr noundef nonnull %i.g) #8
  %.not416 = icmp eq i32 %i.ck, 0
  br i1 %.not416, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge459
  store i32 0, ptr %5, align 4, !tbaa !51
  store i32 1, ptr %8, align 4, !tbaa !51
  br label %bb.ay

bb.x:                                             ; preds = %bb.v
  %i.cl = load double, ptr %6, align 8, !tbaa !57 ; 2 uses
  %i.cm = fcmp olt double %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cn = load i32, ptr %1, align 4, !tbaa !51
  %i.co = sitofp i32 %i.cn to double
  %i.cp = call double @dlamch_(ptr noundef nonnull @.str.4) #8
  %i.cq = fmul double %i.cp, %i.co
  %i.cr = load double, ptr %i.g, align 8, !tbaa !57
  %i.cs = fmul double %i.cq, %i.cr
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.0388 = phi double [ %i.cs, %bb.y ], [ %i.cl, %bb.x ] ; 2 uses
  %i.ct = load i32, ptr %1, align 4, !tbaa !51    ; 4 uses
  br i1 %.not, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not424479 = icmp slt i32 %i.ct, 1
  br i1 %.not424479, label %.loopexit, label %.lr.ph483

.lr.ph483:                                        ; preds = %bb.aa
  %i.cu = add i32 %i.j, 1                         ; 20 uses
  %i.cv = zext nneg i32 %i.w to i64               ; 2 uses
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = zext nneg i32 %i.w to i64               ; 4 uses
  %i.cy = sext i32 %i.j to i64                    ; 6 uses
  %i.cz = zext nneg i32 %i.ct to i64
  %i.da = shl nuw i32 %i.w, 1                     ; 2 uses
  %scevgep700 = getelementptr i8, ptr %2, i64 -8
  %scevgep701 = getelementptr i8, ptr %2, i64 -16
  %9 = shl nuw nsw i64 %i.cx, 4
  %i.db = sub nsw i32 0, %i.w                     ; 2 uses
  %i.dc = shl nuw nsw i64 %i.cx, 3
  %i.dd = zext i32 %i.db to i64
  %i.de = zext i32 %i.cu to i64                   ; 2 uses
  %i.df = mul i32 %i.w, %i.cu                     ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = sext i32 %i.cu to i64
  %i.di = sub nsw i32 0, %i.w
  %i.dj = zext i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.cx, 3
  %i.dl = icmp slt i32 %i.cu, 0                   ; 2 uses
  %i.dm = select i1 %i.dl, i32 %narrow, i32 %i.cu
  %broadcast.splatinsert766 = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat767 = shufflevector <4 x i32> %broadcast.splatinsert766, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert799 = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat800 = shufflevector <4 x i32> %broadcast.splatinsert799, <4 x i32> poison, <4 x i32> zeroinitializer
  %ident.check = icmp ne i32 %i.j, 1
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph483, %bb.ak
  %indvars.iv528 = phi i64 [ 1, %.lr.ph483 ], [ %indvars.iv.next529, %bb.ak ] ; 11 uses
  %indvars.iv523 = phi i64 [ 1, %.lr.ph483 ], [ %indvars.iv.next524, %bb.ak ] ; 2 uses
  %indvar = phi i64 [ 0, %.lr.ph483 ], [ %indvar.next, %bb.ak ] ; 15 uses
  %.2481 = phi i32 [ %.0.lcssa, %.lr.ph483 ], [ %.3.lcssa, %bb.ak ] ; 2 uses
  %i.dn = trunc i64 %indvar to i32
  %i.do = mul i32 %i.df, %i.dn
  %i.dp = add i32 %i.do, %i.cu
  %i.dq = mul i64 %indvar, %i.dj
  %i.dr = add i64 %i.dq, -1                       ; 2 uses
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = mul i64 %i.dk, %indvar                  ; 2 uses
  %i.du = add i64 %i.dt, 8
  %i.dv = mul i64 %indvar, %i.dd
  %i.dw = mul i64 %indvar, %i.dg
  %i.dx = add i64 %i.dw, %i.de
  %i.dy = trunc i64 %indvar to i32
  %i.dz = trunc i64 %indvar to i32
  %i.ea = mul i32 %i.da, %i.dz
  %i.eb = add i32 %i.ea, 2
  %10 = mul i64 %9, %indvar                       ; 2 uses
  %i.ec = trunc i64 %indvar to i32
  %i.ed = mul i32 %i.ec, %i.db
  %i.ee = mul i64 %i.dc, %indvar                  ; 2 uses
  %i.ef = add i64 %i.ee, 8
  %i.eg = trunc i64 %indvar to i32
  %i.eh = mul i32 %i.w, %i.eg
  %i.ei = xor i32 %i.eh, -1
  %i.ej = trunc i64 %indvar to i32
  %i.ek = mul i32 %i.da, %i.ej
  %i.el = add i32 %i.ek, 2
  %indvars542 = trunc i64 %indvars.iv523 to i32
  %i.em = load i32, ptr %1, align 4, !tbaa !51    ; 4 uses
  %i.en = trunc nuw nsw i64 %indvars.iv528 to i32 ; 2 uses
  %i.eo = sub nsw i32 %i.em, %i.en
  %i.ep = add nsw i32 %i.eo, 1                    ; 2 uses
  store i32 %i.ep, ptr %i.c, align 4, !tbaa !51
  %i.eq = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ep) ; 3 uses
  store i32 %i.eq, ptr %i.f, align 4, !tbaa !51
  %i.er = sext i32 %i.em to i64
  %.not426460 = icmp sgt i64 %indvars.iv528, %i.er
  br i1 %.not426460, label %._crit_edge464, label %.lr.ph463.preheader

.lr.ph463.preheader:                              ; preds = %bb.ab
  %i.es = trunc i64 %indvar to i32
  %i.et = mul i32 %i.w, %i.es
  %i.eu = xor i32 %i.et, -1
  %i.ev = mul i64 %i.cw, %indvar
  %scevgep = getelementptr i8, ptr %7, i64 %i.ev
  %i.ew = add i32 %i.em, %i.eu
  %i.ex = zext i32 %i.ew to i64
  %i.ey = shl nuw nsw i64 %i.ex, 3
  %i.ez = add nuw nsw i64 %i.ey, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.ez, i1 false), !tbaa !57
  br label %._crit_edge464

._crit_edge464:                                   ; preds = %.lr.ph463.preheader, %bb.ab
  %i.fa = trunc i64 %indvars.iv528 to i32
  %i.fb = add i32 %i.fa, -1
  %i.fc = add i32 %i.fb, %i.eq                    ; 2 uses
  store i32 %i.fc, ptr %i.b, align 4, !tbaa !51
  %i.fd = sext i32 %i.fc to i64
  %.not427470 = icmp sgt i64 %indvars.iv528, %i.fd
  br i1 %.not427470, label %._crit_edge476, label %.lr.ph475.preheader

.lr.ph475.preheader:                              ; preds = %._crit_edge464
  %invariant.gep626 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv528
  %invariant.gep628 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv528
  %i.fe = mul i32 %i.w, %i.dy
  %i.ff = xor i32 %i.fe, -1
  %i.fg = getelementptr i8, ptr %2, i64 %10
  %i.fh = getelementptr i8, ptr %i.fg, i64 -8
  %i.fi = getelementptr i8, ptr %2, i64 %10
  br label %.lr.ph475

.lr.ph475:                                        ; preds = %.lr.ph475.preheader, %bb.ai
  %indvar698 = phi i64 [ 0, %.lr.ph475.preheader ], [ %indvar.next699, %bb.ai ] ; 7 uses
  %indvar667 = phi i32 [ 0, %.lr.ph475.preheader ], [ %indvar.next668, %bb.ai ] ; 8 uses
  %indvars.iv530 = phi i64 [ %indvars.iv528, %.lr.ph475.preheader ], [ %indvars.iv.next531.pre-phi, %bb.ai ] ; 33 uses
  %.3473 = phi i32 [ %.2481, %.lr.ph475.preheader ], [ %.4, %bb.ai ]
  %i.fj = sub i64 %i.dr, %indvar698
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = xor i64 %indvar698, -1
  %i.fm = add i64 %i.dv, %i.fl
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = mul i64 %indvar698, %i.de
  %i.fp = add i64 %i.dx, %i.fo
  %i.fq = trunc i64 %i.fp to i32                  ; 4 uses
  %i.fr = sub i32 %i.ei, %indvar667
  %i.fs = shl nuw i32 %indvar667, 1
  %i.ft = add i32 %i.el, %i.fs                    ; 2 uses
  %i.fu = load i32, ptr %1, align 4, !tbaa !51    ; 16 uses
  store i32 %i.fu, ptr %i.c, align 4, !tbaa !51
  %i.fv = sext i32 %i.fu to i64                   ; 5 uses
  %.not429465 = icmp sgt i64 %indvars.iv530, %i.fv
  br i1 %.not429465, label %._crit_edge469, label %.lr.ph468

.lr.ph468:                                        ; preds = %.lr.ph475
  %i.fw = icmp sgt i64 %indvars.iv530, %indvars.iv528
  %i.fx = add i32 %i.fu, 1                        ; 2 uses
  br i1 %i.fw, label %.lr.ph468.split.us.preheader, label %iter.check791

iter.check791:                                    ; preds = %.lr.ph468
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.fv ; 7 uses
  %i.fy = add i32 %i.fu, %i.fk                    ; 3 uses
  %i.fz = zext i32 %i.fy to i64
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 5 uses
  %min.iters.check753 = icmp ult i32 %i.fy, 3
  br i1 %min.iters.check753, label %.lr.ph468.split.preheader, label %vector.scevcheck730

vector.scevcheck730:                              ; preds = %iter.check791
  %i.gb = add i32 %i.fu, %i.fn
  %mul731 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.dm, i32 %i.gb) ; 2 uses
  %mul.result732 = extractvalue { i32, i1 } %mul731, 0 ; 2 uses
  %mul.overflow733 = extractvalue { i32, i1 } %mul731, 1
  %i.gc = add i32 %mul.result732, %i.fq
  %i.gd = sub i32 %i.fq, %mul.result732
  %i.ge = icmp slt i32 %i.gc, %i.fq
  %i.gf = icmp sgt i32 %i.gd, %i.fq
  %i.gg = select i1 %i.dl, i1 %i.gf, i1 %i.ge
  %i.gh = or i1 %i.gg, %mul.overflow733
  br i1 %i.gh, label %.lr.ph468.split.preheader, label %vector.memcheck754

vector.memcheck754:                               ; preds = %vector.scevcheck730
  %i.gi = shl nuw nsw i64 %indvar698, 3           ; 2 uses
  %i.gj = add i64 %i.dt, %i.gi                    ; 2 uses
  %i.gk = shl nsw i64 %i.fv, 3                    ; 2 uses
  %i.gl = getelementptr i8, ptr %7, i64 %i.gj
  %i.gm = getelementptr i8, ptr %i.gl, i64 %i.gk  ; 2 uses
  %i.gn = add i64 %i.du, %i.gi                    ; 2 uses
  %i.go = sub i32 %i.ds, %indvar667
  %i.gp = add i32 %i.fu, %i.go
  %i.gq = zext i32 %i.gp to i64                   ; 2 uses
  %i.gr = shl nuw nsw i64 %i.gq, 3                ; 2 uses
  %i.gs = getelementptr i8, ptr %7, i64 %i.gn
  %i.gt = getelementptr i8, ptr %i.gs, i64 %i.gk
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.gr  ; 2 uses
  %i.gv = mul nsw i64 %i.dh, %i.gq
  %i.gw = mul i32 %indvar667, %i.cu
  %i.gx = add i32 %i.dp, %i.gw
  %i.gy = sext i32 %i.gx to i64                   ; 2 uses
  %i.gz = shl nsw i64 %i.gy, 3
  %i.ha = add i64 %i.gv, %i.gy
  %i.hb = shl i64 %i.ha, 3
  %i.hc = getelementptr i8, ptr %i.l, i64 %i.hb   ; 4 uses
  %i.hd = getelementptr i8, ptr %i.l, i64 %i.gz   ; 4 uses
  %i.he = icmp ult ptr %i.hc, %i.hd
  %i.hf = select i1 %i.he, ptr %i.hc, ptr %i.hd
  %i.hg = icmp ugt ptr %i.hc, %i.hd
  %i.hh = select i1 %i.hg, ptr %i.hc, ptr %i.hd
  %i.hi = getelementptr i8, ptr %i.hh, i64 8
  %i.hj = getelementptr i8, ptr %7, i64 %i.gj
  %i.hk = getelementptr i8, ptr %7, i64 %i.gn
  %i.hl = getelementptr i8, ptr %i.hk, i64 %i.gr
  %bound0755 = icmp ult ptr %i.gm, %i.hi
  %bound1756 = icmp ult ptr %i.hf, %i.gu
  %found.conflict757 = and i1 %bound0755, %bound1756
  %bound0758 = icmp ult ptr %i.gm, %i.hl
  %bound1759 = icmp ult ptr %i.hj, %i.gu
  %found.conflict760 = and i1 %bound0758, %bound1759
  %conflict.rdx761 = or i1 %found.conflict757, %found.conflict760
  br i1 %conflict.rdx761, label %.lr.ph468.split.preheader, label %vector.main.loop.iter.check762

vector.main.loop.iter.check762:                   ; preds = %vector.memcheck754
  %min.iters.check763 = icmp ult i32 %i.fy, 15
  br i1 %min.iters.check763, label %vec.epilog.ph795, label %vector.ph764

vector.ph764:                                     ; preds = %vector.main.loop.iter.check762
  %i.hm = and i64 %i.ga, 12
  %n.vec765 = and i64 %i.ga, 8589934576           ; 4 uses
  %i.hn = add i64 %indvars.iv530, %n.vec765       ; 2 uses
  %i.ho = trunc i64 %indvars.iv530 to i32
  %broadcast.splatinsert768 = insertelement <4 x i32> poison, i32 %i.ho, i64 0
  %broadcast.splat769 = shufflevector <4 x i32> %broadcast.splatinsert768, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction770 = add <4 x i32> %broadcast.splat769, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body771

vector.body771:                                   ; preds = %vector.ph764, %vector.body771
  %index772 = phi i64 [ 0, %vector.ph764 ], [ %index.next787, %vector.body771 ] ; 2 uses
  %vec.ind773 = phi <4 x i32> [ %induction770, %vector.ph764 ], [ %vec.ind.next788, %vector.body771 ] ; 5 uses
  %step.add774 = add <4 x i32> %vec.ind773, splat (i32 4)
  %step.add.2775 = add <4 x i32> %vec.ind773, splat (i32 8)
  %step.add.3776 = add <4 x i32> %vec.ind773, splat (i32 12)
  %i.hp = add i64 %indvars.iv530, %index772       ; 2 uses
  %i.hq = mul <4 x i32> %broadcast.splat767, %vec.ind773
  %i.hr = mul <4 x i32> %broadcast.splat767, %step.add774
  %i.hs = mul <4 x i32> %broadcast.splat767, %step.add.2775
  %i.ht = mul <4 x i32> %broadcast.splat767, %step.add.3776
  %i.hu = sext <4 x i32> %i.hq to <4 x i64>
  %i.hv = sext <4 x i32> %i.hr to <4 x i64>
  %i.hw = sext <4 x i32> %i.hs to <4 x i64>
  %i.hx = sext <4 x i32> %i.ht to <4 x i64>
  %wide.gep = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.hu
  %wide.gep777 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.hv
  %wide.gep778 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.hw
  %wide.gep779 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.hx
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !59
  %wide.masked.gather780 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep777, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !59
  %wide.masked.gather781 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep778, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !59
  %wide.masked.gather782 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep779, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !59
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.hp ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 96
  %wide.load783 = load <4 x double>, ptr %i.hy, align 8, !tbaa !57, !alias.scope !60
  %wide.load784 = load <4 x double>, ptr %i.hz, align 8, !tbaa !57, !alias.scope !60
  %wide.load785 = load <4 x double>, ptr %i.ia, align 8, !tbaa !57, !alias.scope !60
  %wide.load786 = load <4 x double>, ptr %i.ib, align 8, !tbaa !57, !alias.scope !60
  %i.ic = fsub <4 x double> %wide.masked.gather, %wide.load783
  %i.id = fsub <4 x double> %wide.masked.gather780, %wide.load784
  %i.ie = fsub <4 x double> %wide.masked.gather781, %wide.load785
  %i.if = fsub <4 x double> %wide.masked.gather782, %wide.load786
  %i.ig = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.hp ; 4 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 32
  %i.ii = getelementptr i8, ptr %i.ig, i64 64
  %i.ij = getelementptr i8, ptr %i.ig, i64 96
  store <4 x double> %i.ic, ptr %i.ig, align 8, !tbaa !57, !alias.scope !61, !noalias !62
  store <4 x double> %i.id, ptr %i.ih, align 8, !tbaa !57, !alias.scope !61, !noalias !62
  store <4 x double> %i.ie, ptr %i.ii, align 8, !tbaa !57, !alias.scope !61, !noalias !62
  store <4 x double> %i.if, ptr %i.ij, align 8, !tbaa !57, !alias.scope !61, !noalias !62
  %index.next787 = add nuw i64 %index772, 16      ; 2 uses
  %vec.ind.next788 = add <4 x i32> %vec.ind773, splat (i32 16)
  %i.ik = icmp eq i64 %index.next787, %n.vec765
  br i1 %i.ik, label %middle.block789, label %vector.body771, !llvm.loop !17

middle.block789:                                  ; preds = %vector.body771
  %cmp.n790 = icmp eq i64 %i.ga, %n.vec765
  br i1 %cmp.n790, label %._crit_edge469, label %vec.epilog.iter.check792

vec.epilog.iter.check792:                         ; preds = %middle.block789
  %min.epilog.iters.check794 = icmp eq i64 %i.hm, 0
  br i1 %min.epilog.iters.check794, label %.lr.ph468.split.preheader, label %vec.epilog.ph795, !prof !63

vec.epilog.ph795:                                 ; preds = %vector.main.loop.iter.check762, %vec.epilog.iter.check792
  %vec.epilog.resume.val796 = phi i64 [ %n.vec765, %vec.epilog.iter.check792 ], [ 0, %vector.main.loop.iter.check762 ]
  %bc.resume.val797 = phi i64 [ %i.hn, %vec.epilog.iter.check792 ], [ %indvars.iv530, %vector.main.loop.iter.check762 ]
  %n.vec798 = and i64 %i.ga, 8589934588           ; 3 uses
  %i.il = add i64 %indvars.iv530, %n.vec798
  %i.im = trunc i64 %bc.resume.val797 to i32
  %broadcast.splatinsert801 = insertelement <4 x i32> poison, i32 %i.im, i64 0
  %broadcast.splat802 = shufflevector <4 x i32> %broadcast.splatinsert801, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction803 = add <4 x i32> %broadcast.splat802, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body804

vec.epilog.vector.body804:                        ; preds = %vec.epilog.vector.body804, %vec.epilog.ph795
  %index805 = phi i64 [ %vec.epilog.resume.val796, %vec.epilog.ph795 ], [ %index.next810, %vec.epilog.vector.body804 ] ; 2 uses
  %vec.ind806 = phi <4 x i32> [ %induction803, %vec.epilog.ph795 ], [ %vec.ind.next811, %vec.epilog.vector.body804 ] ; 2 uses
  %i.in = add i64 %indvars.iv530, %index805       ; 2 uses
  %i.io = mul <4 x i32> %broadcast.splat800, %vec.ind806
  %i.ip = sext <4 x i32> %i.io to <4 x i64>
  %wide.gep807 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.ip
  %wide.masked.gather808 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep807, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !59
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.in
  %wide.load809 = load <4 x double>, ptr %i.iq, align 8, !tbaa !57, !alias.scope !60
  %i.ir = fsub <4 x double> %wide.masked.gather808, %wide.load809
  %i.is = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.in
  store <4 x double> %i.ir, ptr %i.is, align 8, !tbaa !57, !alias.scope !61, !noalias !62
  %index.next810 = add nuw i64 %index805, 4       ; 2 uses
  %vec.ind.next811 = add <4 x i32> %vec.ind806, splat (i32 4)
  %i.it = icmp eq i64 %index.next810, %n.vec798
  br i1 %i.it, label %vec.epilog.middle.block812, label %vec.epilog.vector.body804, !llvm.loop !18

vec.epilog.middle.block812:                       ; preds = %vec.epilog.vector.body804
  %cmp.n813 = icmp eq i64 %i.ga, %n.vec798
  br i1 %cmp.n813, label %._crit_edge469, label %.lr.ph468.split.preheader

.lr.ph468.split.preheader:                        ; preds = %iter.check791, %vector.scevcheck730, %vector.memcheck754, %vec.epilog.iter.check792, %vec.epilog.middle.block812
  %indvars.iv532.ph = phi i64 [ %indvars.iv530, %iter.check791 ], [ %indvars.iv530, %vector.scevcheck730 ], [ %indvars.iv530, %vector.memcheck754 ], [ %i.hn, %vec.epilog.iter.check792 ], [ %i.il, %vec.epilog.middle.block812 ] ; 3 uses
  %i.iu = add i32 %i.fu, 1
  %i.iv = trunc i64 %indvars.iv532.ph to i32      ; 2 uses
  %i.iw = sub i32 %i.iu, %i.iv
  %i.ix = sub i32 %i.fu, %i.iv
  %xtraiter1010 = and i32 %i.iw, 3                ; 2 uses
  %lcmp.mod1011.not = icmp eq i32 %xtraiter1010, 0
  br i1 %lcmp.mod1011.not, label %.lr.ph468.split.prol.loopexit, label %.lr.ph468.split.prol

.lr.ph468.split.prol:                             ; preds = %.lr.ph468.split.preheader, %.lr.ph468.split.prol
  %indvars.iv532.prol = phi i64 [ %indvars.iv.next533.prol, %.lr.ph468.split.prol ], [ %indvars.iv532.ph, %.lr.ph468.split.preheader ] ; 4 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph468.split.prol ], [ 0, %.lr.ph468.split.preheader ]
  %i.iy = trunc nsw i64 %indvars.iv532.prol to i32
  %i.iz = mul i32 %i.cu, %i.iy
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ja
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !57
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv532.prol
  %i.je = load double, ptr %i.jd, align 8, !tbaa !57
  %i.jf = fsub double %i.jc, %i.je
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv532.prol
  store double %i.jf, ptr %gep.prol, align 8, !tbaa !57
  %indvars.iv.next533.prol = add i64 %indvars.iv532.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1010
  br i1 %prol.iter.cmp.not, label %.lr.ph468.split.prol.loopexit, label %.lr.ph468.split.prol, !llvm.loop !19

.lr.ph468.split.prol.loopexit:                    ; preds = %.lr.ph468.split.prol, %.lr.ph468.split.preheader
  %indvars.iv532.unr = phi i64 [ %indvars.iv532.ph, %.lr.ph468.split.preheader ], [ %indvars.iv.next533.prol, %.lr.ph468.split.prol ]
  %i.jg = icmp ult i32 %i.ix, 3
  br i1 %i.jg, label %._crit_edge469, label %.lr.ph468.split

.lr.ph468.split.us.preheader:                     ; preds = %.lr.ph468
  %i.jh = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv530
  %i.ji = getelementptr i8, ptr %i.jh, i64 -8     ; 4 uses
  %invariant.gep624 = getelementptr [8 x i8], ptr %i.h, i64 %i.fv ; 4 uses
  %i.jj = sub i32 %i.ff, %indvar667
  %i.jk = add i32 %i.fu, %i.jj                    ; 2 uses
  %i.jl = zext i32 %i.jk to i64
  %i.jm = add nuw nsw i64 %i.jl, 1                ; 2 uses
  %min.iters.check702 = icmp ult i32 %i.jk, 24
  br i1 %min.iters.check702, label %.lr.ph468.split.us.preheader998, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph468.split.us.preheader
  %i.jn = add i32 %i.fu, %i.fr                    ; 2 uses
  %mul.result = shl i32 %i.jn, 1
  %mul.overflow = icmp slt i32 %i.jn, 0
  %i.jo = add i32 %i.ft, %mul.result
  %i.jp = icmp slt i32 %i.jo, %i.ft
  %i.jq = or i1 %i.jp, %mul.overflow
  %i.jr = or i1 %ident.check, %i.jq
  br i1 %i.jr, label %.lr.ph468.split.us.preheader998, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.js = shl nuw nsw i64 %indvar698, 3           ; 2 uses
  %i.jt = add i64 %i.ee, %i.js                    ; 2 uses
  %i.ju = getelementptr i8, ptr %7, i64 %i.jt     ; 3 uses
  %i.jv = add i64 %i.ef, %i.js                    ; 2 uses
  %i.jw = xor i32 %indvar667, -1
  %i.jx = add i32 %i.ed, %i.jw
  %i.jy = add i32 %i.fu, %i.jx
  %i.jz = zext i32 %i.jy to i64                   ; 2 uses
  %i.ka = shl nuw nsw i64 %i.jz, 3                ; 3 uses
  %i.kb = getelementptr i8, ptr %7, i64 %i.jv
  %i.kc = getelementptr i8, ptr %i.kb, i64 %i.ka  ; 3 uses
  %i.kd = shl nsw i64 %i.fv, 3                    ; 2 uses
  %i.ke = getelementptr i8, ptr %7, i64 %i.jt
  %i.kf = getelementptr i8, ptr %i.ke, i64 %i.kd  ; 3 uses
  %i.kg = getelementptr i8, ptr %7, i64 %i.jv
  %i.kh = getelementptr i8, ptr %i.kg, i64 %i.kd
  %i.ki = getelementptr i8, ptr %i.kh, i64 %i.ka  ; 3 uses
  %11 = shl nuw nsw i64 %indvar698, 4             ; 2 uses
  %12 = getelementptr i8, ptr %i.fh, i64 %11      ; 2 uses
  %13 = getelementptr i8, ptr %i.fi, i64 %11
  %i.kj = getelementptr i8, ptr %13, i64 %i.ka    ; 2 uses
  %14 = shl nuw i32 %indvar667, 1
  %15 = add i32 %i.eb, %14
  %16 = sext i32 %15 to i64
  %i.kk = shl nsw i64 %16, 3                      ; 2 uses
  %i.kl = getelementptr i8, ptr %scevgep701, i64 %i.kk ; 2 uses
  %17 = shl nuw nsw i64 %i.jz, 4
  %i.km = getelementptr i8, ptr %scevgep700, i64 %17
  %i.kn = getelementptr i8, ptr %i.km, i64 %i.kk  ; 2 uses
  %bound0 = icmp ult ptr %i.ju, %i.ki
  %bound1 = icmp ult ptr %i.kf, %i.kc
  %found.conflict = and i1 %bound0, %bound1
  %bound0703 = icmp ult ptr %i.ju, %i.kj
  %bound1704 = icmp ult ptr %12, %i.kc
  %found.conflict705 = and i1 %bound0703, %bound1704
  %conflict.rdx = or i1 %found.conflict, %found.conflict705
  %bound0706 = icmp ult ptr %i.ju, %i.kn
  %bound1707 = icmp ult ptr %i.kl, %i.kc
  %found.conflict708 = and i1 %bound0706, %bound1707
  %conflict.rdx709 = or i1 %conflict.rdx, %found.conflict708
  %bound0710 = icmp ult ptr %i.kf, %i.kj
  %bound1711 = icmp ult ptr %12, %i.ki
  %found.conflict712 = and i1 %bound0710, %bound1711
  %conflict.rdx713 = or i1 %conflict.rdx709, %found.conflict712
  %bound0714 = icmp ult ptr %i.kf, %i.kn
  %bound1715 = icmp ult ptr %i.kl, %i.ki
  %found.conflict716 = and i1 %bound0714, %bound1715
  %conflict.rdx717 = or i1 %conflict.rdx713, %found.conflict716
  br i1 %conflict.rdx717, label %.lr.ph468.split.us.preheader998, label %vector.ph718

vector.ph718:                                     ; preds = %vector.memcheck
  %i.ko = and i64 %i.jm, 7                        ; 2 uses
  %i.kp = icmp eq i64 %i.ko, 0
  %i.kq = select i1 %i.kp, i64 8, i64 %i.ko
  %n.vec719 = sub nsw i64 %i.jm, %i.kq            ; 2 uses
  %i.kr = add i64 %indvars.iv530, %n.vec719
  br label %vector.body720

vector.body720:                                   ; preds = %vector.body720, %vector.ph718
  %index721 = phi i64 [ 0, %vector.ph718 ], [ %index.next727, %vector.body720 ] ; 2 uses
  %i.ks = add i64 %indvars.iv530, %index721       ; 5 uses
  %i.kt = getelementptr [8 x i8], ptr %i.ji, i64 %i.ks ; 2 uses
  %i.ku = getelementptr i8, ptr %i.kt, i64 32
  %wide.load = load <4 x double>, ptr %i.kt, align 8, !tbaa !57, !alias.scope !64 ; 2 uses
  %wide.load722 = load <4 x double>, ptr %i.ku, align 8, !tbaa !57, !alias.scope !64 ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ks ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32 ; 2 uses
  %wide.load723 = load <4 x double>, ptr %i.kv, align 8, !tbaa !57, !alias.scope !65, !noalias !66
  %wide.load724 = load <4 x double>, ptr %i.kw, align 8, !tbaa !57, !alias.scope !65, !noalias !66
  %i.kx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load, <4 x double> %wide.load, <4 x double> %wide.load723) ; 2 uses
  %i.ky = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load722, <4 x double> %wide.load722, <4 x double> %wide.load724) ; 2 uses
  store <4 x double> %i.kx, ptr %i.kv, align 8, !tbaa !57, !alias.scope !65, !noalias !66
  store <4 x double> %i.ky, ptr %i.kw, align 8, !tbaa !57, !alias.scope !65, !noalias !66
  %i.kz = trunc nsw i64 %i.ks to i32
  %i.la = trunc i64 %i.ks to i32
  %i.lb = add i32 %i.la, 4
  %i.lc = mul i32 %i.cu, %i.kz
  %i.ld = mul i32 %i.cu, %i.lb
  %i.le = sext i32 %i.lc to i64
  %i.lf = sext i32 %i.ld to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.le
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.lf
  %wide.vec = load <8 x double>, ptr %i.lg, align 8, !tbaa !57, !alias.scope !67
  %strided.vec = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec725 = load <8 x double>, ptr %i.lh, align 8, !tbaa !57, !alias.scope !67
  %strided.vec726 = shufflevector <8 x double> %wide.vec725, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.li = fsub <4 x double> %strided.vec, %i.kx
  %i.lj = fsub <4 x double> %strided.vec726, %i.ky
  %i.lk = getelementptr [8 x i8], ptr %invariant.gep624, i64 %i.ks ; 2 uses
  %i.ll = getelementptr i8, ptr %i.lk, i64 32
  store <4 x double> %i.li, ptr %i.lk, align 8, !tbaa !57, !alias.scope !68, !noalias !69
  store <4 x double> %i.lj, ptr %i.ll, align 8, !tbaa !57, !alias.scope !68, !noalias !69
  %index.next727 = add nuw i64 %index721, 8       ; 2 uses
  %i.lm = icmp eq i64 %index.next727, %n.vec719
  br i1 %i.lm, label %.lr.ph468.split.us.preheader998, label %vector.body720, !llvm.loop !25

.lr.ph468.split.us.preheader998:                  ; preds = %vector.body720, %vector.memcheck, %vector.scevcheck, %.lr.ph468.split.us.preheader
  %indvars.iv536.ph = phi i64 [ %indvars.iv530, %vector.memcheck ], [ %indvars.iv530, %vector.scevcheck ], [ %indvars.iv530, %.lr.ph468.split.us.preheader ], [ %i.kr, %vector.body720 ] ; 7 uses
  %i.ln = trunc i64 %indvars.iv536.ph to i32      ; 2 uses
  %i.lo = add i32 %i.fu, %i.ln
  %i.lp = and i32 %i.lo, 1
  %lcmp.mod1013.not.not = icmp eq i32 %i.lp, 0
  br i1 %lcmp.mod1013.not.not, label %.lr.ph468.split.us.prol, label %.lr.ph468.split.us.prol.loopexit

.lr.ph468.split.us.prol:                          ; preds = %.lr.ph468.split.us.preheader998
  %i.lq = mul nsw i64 %indvars.iv536.ph, %i.cy
  %i.lr = getelementptr [8 x i8], ptr %i.ji, i64 %i.lq
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !57 ; 3 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv536.ph ; 2 uses
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !57
  %i.lv = call double @llvm.fmuladd.f64(double %i.ls, double %i.ls, double %i.lu) ; 2 uses
  store double %i.lv, ptr %i.lt, align 8, !tbaa !57
  %i.lw = trunc nsw i64 %indvars.iv536.ph to i32
  %i.lx = mul i32 %i.cu, %i.lw
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ly
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !57
  %i.mb = fsub double %i.ma, %i.lv
  %gep625.prol = getelementptr [8 x i8], ptr %invariant.gep624, i64 %indvars.iv536.ph
  store double %i.mb, ptr %gep625.prol, align 8, !tbaa !57
  %indvars.iv.next537.prol = add i64 %indvars.iv536.ph, 1
  br label %.lr.ph468.split.us.prol.loopexit

.lr.ph468.split.us.prol.loopexit:                 ; preds = %.lr.ph468.split.us.prol, %.lr.ph468.split.us.preheader998
  %.lcssa1000.unr = phi double [ poison, %.lr.ph468.split.us.preheader998 ], [ %i.ls, %.lr.ph468.split.us.prol ]
  %indvars.iv536.unr = phi i64 [ %indvars.iv536.ph, %.lr.ph468.split.us.preheader998 ], [ %indvars.iv.next537.prol, %.lr.ph468.split.us.prol ]
  %i.mc = icmp eq i32 %i.fu, %i.ln
  br i1 %i.mc, label %._crit_edge469.split.us, label %.lr.ph468.split.us

.lr.ph468.split.us:                               ; preds = %.lr.ph468.split.us.prol.loopexit, %.lr.ph468.split.us
  %indvars.iv536 = phi i64 [ %indvars.iv.next537.1, %.lr.ph468.split.us ], [ %indvars.iv536.unr, %.lr.ph468.split.us.prol.loopexit ] ; 7 uses
  %i.md = mul nsw i64 %indvars.iv536, %i.cy
  %i.me = getelementptr [8 x i8], ptr %i.ji, i64 %i.md
  %i.mf = load double, ptr %i.me, align 8, !tbaa !57 ; 2 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv536 ; 2 uses
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !57
  %i.mi = call double @llvm.fmuladd.f64(double %i.mf, double %i.mf, double %i.mh) ; 2 uses
  store double %i.mi, ptr %i.mg, align 8, !tbaa !57
  %i.mj = trunc nsw i64 %indvars.iv536 to i32
  %i.mk = mul i32 %i.cu, %i.mj
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ml
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !57
  %i.mo = fsub double %i.mn, %i.mi
  %gep625 = getelementptr [8 x i8], ptr %invariant.gep624, i64 %indvars.iv536
  store double %i.mo, ptr %gep625, align 8, !tbaa !57
  %indvars.iv.next537 = add i64 %indvars.iv536, 1 ; 3 uses
  %i.mp = mul nsw i64 %indvars.iv.next537, %i.cy
  %i.mq = getelementptr [8 x i8], ptr %i.ji, i64 %i.mp
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !57 ; 3 uses
  %i.ms = getelementptr [8 x i8], ptr %7, i64 %indvars.iv536 ; 2 uses
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !57
  %i.mu = call double @llvm.fmuladd.f64(double %i.mr, double %i.mr, double %i.mt) ; 2 uses
  store double %i.mu, ptr %i.ms, align 8, !tbaa !57
  %i.mv = trunc nsw i64 %indvars.iv.next537 to i32
  %i.mw = mul i32 %i.cu, %i.mv
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.mx
  %i.mz = load double, ptr %i.my, align 8, !tbaa !57
  %i.na = fsub double %i.mz, %i.mu
  %gep625.1 = getelementptr [8 x i8], ptr %invariant.gep624, i64 %indvars.iv.next537
  store double %i.na, ptr %gep625.1, align 8, !tbaa !57
  %indvars.iv.next537.1 = add i64 %indvars.iv536, 2 ; 2 uses
  %lftr.wideiv539.1 = trunc i64 %indvars.iv.next537.1 to i32
  %exitcond540.not.1 = icmp eq i32 %i.fx, %lftr.wideiv539.1
  br i1 %exitcond540.not.1, label %._crit_edge469.split.us, label %.lr.ph468.split.us, !llvm.loop !26

._crit_edge469.split.us:                          ; preds = %.lr.ph468.split.us, %.lr.ph468.split.us.prol.loopexit
  %.lcssa1000 = phi double [ %.lcssa1000.unr, %.lr.ph468.split.us.prol.loopexit ], [ %i.mr, %.lr.ph468.split.us ]
  store double %.lcssa1000, ptr %i.e, align 8, !tbaa !57
  br label %._crit_edge469

.lr.ph468.split:                                  ; preds = %.lr.ph468.split.prol.loopexit, %.lr.ph468.split
  %indvars.iv532 = phi i64 [ %indvars.iv.next533.3, %.lr.ph468.split ], [ %indvars.iv532.unr, %.lr.ph468.split.prol.loopexit ] ; 8 uses
  %i.nb = trunc nsw i64 %indvars.iv532 to i32
  %i.nc = mul i32 %i.cu, %i.nb
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.nd
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !57
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv532
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !57
  %i.ni = fsub double %i.nf, %i.nh
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv532
  store double %i.ni, ptr %gep, align 8, !tbaa !57
  %indvars.iv.next533 = add i64 %indvars.iv532, 1 ; 2 uses
  %i.nj = trunc nsw i64 %indvars.iv.next533 to i32
  %i.nk = mul i32 %i.cu, %i.nj
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.nl
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !57
  %i.no = getelementptr [8 x i8], ptr %7, i64 %indvars.iv532
  %i.np = load double, ptr %i.no, align 8, !tbaa !57
  %i.nq = fsub double %i.nn, %i.np
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next533
  store double %i.nq, ptr %gep.1, align 8, !tbaa !57
  %indvars.iv.next533.1 = add i64 %indvars.iv532, 2 ; 3 uses
  %i.nr = trunc nsw i64 %indvars.iv.next533.1 to i32
  %i.ns = mul i32 %i.cu, %i.nr
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.nt
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !57
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next533.1
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !57
  %i.ny = fsub double %i.nv, %i.nx
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next533.1
  store double %i.ny, ptr %gep.2, align 8, !tbaa !57
  %indvars.iv.next533.2 = add i64 %indvars.iv532, 3 ; 3 uses
  %i.nz = trunc nsw i64 %indvars.iv.next533.2 to i32
  %i.oa = mul i32 %i.cu, %i.nz
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ob
  %i.od = load double, ptr %i.oc, align 8, !tbaa !57
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next533.2
  %i.of = load double, ptr %i.oe, align 8, !tbaa !57
  %i.og = fsub double %i.od, %i.of
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next533.2
  store double %i.og, ptr %gep.3, align 8, !tbaa !57
  %indvars.iv.next533.3 = add i64 %indvars.iv532, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next533.3 to i32
  %exitcond535.not.3 = icmp eq i32 %i.fx, %lftr.wideiv.3
  br i1 %exitcond535.not.3, label %._crit_edge469, label %.lr.ph468.split, !llvm.loop !27

._crit_edge469:                                   ; preds = %.lr.ph468.split.prol.loopexit, %.lr.ph468.split, %middle.block789, %vec.epilog.middle.block812, %._crit_edge469.split.us, %.lr.ph475
  %i.oh = icmp sgt i64 %indvars.iv530, 1
  %i.oi = trunc nsw i64 %indvars.iv530 to i32     ; 8 uses
  br i1 %i.oh, label %bb.ac, label %._crit_edge469._crit_edge

bb.ac:                                            ; preds = %._crit_edge469
  %i.oj = add nsw i32 %i.fu, %i.oi                ; 7 uses
  store i32 %i.oj, ptr %i.c, align 4, !tbaa !51
  %i.ok = shl i32 %i.fu, 1                        ; 3 uses
  store i32 %i.ok, ptr %i.d, align 4, !tbaa !51
  %.not.not1.i = icmp slt i32 %i.oj, %i.ok
  br i1 %.not.not1.i, label %.lr.ph.preheader.i, label %dmaxloc_.exit

.lr.ph.preheader.i:                               ; preds = %bb.ac
  %i.ol = sext i32 %i.oj to i64                   ; 5 uses
  %i.om = getelementptr [8 x i8], ptr %7, i64 %i.ol
  %i.on = getelementptr i8, ptr %i.om, i64 -8
  %i.oo = load double, ptr %i.on, align 8, !tbaa !57 ; 2 uses
  %wide.trip.count.i = sext i32 %i.ok to i64      ; 3 uses
  %i.op = sub nsw i64 %wide.trip.count.i, %i.ol
end_hunk_0
begin_hunk_1_@dpstrf_:bb.a
  %i.pt = trunc nsw i64 %indvars.iv.next.i.5 to i32
  %spec.select18.i.5 = select i1 %i.ps, i32 %i.pt, i32 %spec.select18.i.4
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.pu = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i.5
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !57 ; 2 uses
  %i.pw = fcmp ogt double %i.pv, %spec.select.i.5 ; 2 uses
  %spec.select.i.6 = select i1 %i.pw, double %i.pv, double %spec.select.i.5 ; 2 uses
  %i.px = trunc nsw i64 %indvars.iv.next.i.6 to i32
  %spec.select18.i.6 = select i1 %i.pw, i32 %i.px, i32 %spec.select18.i.5
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.py = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i.6
  %i.pz = load double, ptr %i.py, align 8, !tbaa !57 ; 2 uses
  %i.qa = fcmp ogt double %i.pz, %spec.select.i.6 ; 2 uses
  %spec.select.i.7 = select i1 %i.qa, double %i.pz, double %spec.select.i.6
  %i.qb = trunc nsw i64 %indvars.iv.next.i.7 to i32
  %spec.select18.i.7 = select i1 %i.qa, i32 %i.qb, i32 %spec.select18.i.6 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %dmaxloc_.exit, label %.lr.ph.i, !llvm.loop !29

dmaxloc_.exit:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.ac
  %.0.lcssa.i = phi i32 [ %i.oj, %bb.ac ], [ %spec.select18.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select18.i.7, %.lr.ph.i ]
  %reass.sub.i = sub i32 %.0.lcssa.i, %i.oj
  %i.qc = add i32 %reass.sub.i, %i.oi             ; 2 uses
  %i.qd = add nsw i32 %i.qc, %i.fu
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.qe
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !57 ; 3 uses
  store double %i.qg, ptr %i.g, align 8, !tbaa !57
  %i.qh = fcmp ugt double %i.qg, %.0388
  br i1 %i.qh, label %bb.ad, label %split

bb.ad:                                            ; preds = %dmaxloc_.exit
  %i.qi = call i32 @disnan_(ptr noundef nonnull %i.g) #8
  %.not430 = icmp eq i32 %i.qi, 0
  br i1 %.not430, label %._crit_edge469._crit_edge, label %._crit_edge565

._crit_edge565:                                   ; preds = %bb.ad
  %.pre566 = load double, ptr %i.g, align 8, !tbaa !57
  br label %split

split:                                            ; preds = %dmaxloc_.exit, %._crit_edge565
  %i.qj = phi double [ %.pre566, %._crit_edge565 ], [ %i.qg, %dmaxloc_.exit ]
  %i.qk = mul i32 %i.cu, %i.oi
  br label %bb.ax

._crit_edge469._crit_edge:                        ; preds = %._crit_edge469, %bb.ad
  %.4 = phi i32 [ %i.qc, %bb.ad ], [ %.3473, %._crit_edge469 ] ; 11 uses
  %.not431 = icmp eq i32 %.4, %i.oi
  %.pre586 = mul nsw i64 %indvars.iv530, %i.cy    ; 3 uses
  %.pre588 = add nsw i64 %.pre586, %indvars.iv530 ; 2 uses
  br i1 %.not431, label %._crit_edge575, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge469._crit_edge
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.pre588
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !57
  %i.qn = mul nsw i32 %.4, %i.j                   ; 2 uses
  %i.qo = add nsw i32 %i.qn, %.4
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.qp
  store double %i.qm, ptr %i.qq, align 8, !tbaa !57
  %i.qr = trunc i64 %indvars.iv530 to i32
  %i.qs = add i32 %i.qr, -1
  store i32 %i.qs, ptr %i.c, align 4, !tbaa !51
  %i.qt = getelementptr [8 x i8], ptr %i.l, i64 %.pre586
  %i.qu = getelementptr i8, ptr %i.qt, i64 8
  %i.qv = sext i32 %i.qn to i64                   ; 2 uses
  %i.qw = getelementptr [8 x i8], ptr %i.l, i64 %i.qv
  %i.qx = getelementptr i8, ptr %i.qw, i64 8
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.qu, ptr noundef nonnull @c__1, ptr noundef %i.qx, ptr noundef nonnull @c__1) #8
  %i.qy = load i32, ptr %1, align 4, !tbaa !51    ; 2 uses
  %i.qz = icmp slt i32 %.4, %i.qy
  br i1 %i.qz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ra = sub nsw i32 %i.qy, %.4
  store i32 %i.ra, ptr %i.c, align 4, !tbaa !51
  %i.rb = add nsw i32 %.4, 1
  %i.rc = mul nsw i32 %i.rb, %i.j                 ; 2 uses
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv530
  %i.rf = getelementptr [8 x i8], ptr %i.re, i64 %i.rd
  %i.rg = add nsw i32 %i.rc, %.4
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.rh
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.rf, ptr noundef nonnull %3, ptr noundef nonnull %i.ri, ptr noundef nonnull %3) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.rj = xor i32 %i.oi, -1
  %i.rk = add i32 %.4, %i.rj
  store i32 %i.rk, ptr %i.c, align 4, !tbaa !51
  %i.rl = add nuw nsw i64 %indvars.iv530, 1       ; 2 uses
  %i.rm = mul nsw i64 %i.rl, %i.cy
  %i.rn = getelementptr [8 x i8], ptr %i.l, i64 %i.rm
  %i.ro = getelementptr [8 x i8], ptr %i.rn, i64 %indvars.iv530
  %i.rp = getelementptr [8 x i8], ptr %i.l, i64 %i.rl
  %i.rq = getelementptr [8 x i8], ptr %i.rp, i64 %i.qv
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ro, ptr noundef nonnull %3, ptr noundef nonnull %i.rq, ptr noundef nonnull @c__1) #8
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv530 ; 2 uses
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !57
  %i.rt = sext i32 %.4 to i64                     ; 2 uses
  %i.ru = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.rt ; 2 uses
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !57
  store double %i.rv, ptr %i.rr, align 8, !tbaa !57
  store double %i.rs, ptr %i.ru, align 8, !tbaa !57
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.rt ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !51
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv530 ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !51
  store i32 %i.rz, ptr %i.rw, align 4, !tbaa !51
  store i32 %i.rx, ptr %i.ry, align 4, !tbaa !51
  br label %._crit_edge575

._crit_edge575:                                   ; preds = %._crit_edge469._crit_edge, %bb.ag
  %i.sa = load double, ptr %i.g, align 8, !tbaa !57
  %i.sb = call double @sqrt(double noundef %i.sa) #8 ; 2 uses
  store double %i.sb, ptr %i.g, align 8, !tbaa !57
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.pre588
  store double %i.sb, ptr %i.sc, align 8, !tbaa !57
  %i.sd = load i32, ptr %1, align 4, !tbaa !51    ; 2 uses
  %i.se = sext i32 %i.sd to i64
  %i.sf = icmp slt i64 %indvars.iv530, %i.se
  br i1 %i.sf, label %bb.ah, label %._crit_edge574

._crit_edge574:                                   ; preds = %._crit_edge575
  %.pre590 = add nuw nsw i64 %indvars.iv530, 1
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge575
  %i.sg = sub nuw nsw i64 %indvars.iv530, %indvars.iv528
  %i.sh = trunc nsw i64 %i.sg to i32
  store i32 %i.sh, ptr %i.c, align 4, !tbaa !51
  %i.si = sub nsw i32 %i.sd, %i.oi
  store i32 %i.si, ptr %i.d, align 4, !tbaa !51
  %i.sj = add nuw nsw i64 %indvars.iv530, 1       ; 2 uses
  %i.sk = mul nsw i64 %i.sj, %i.cy                ; 2 uses
  %gep627 = getelementptr [8 x i8], ptr %invariant.gep626, i64 %i.sk
  %gep629 = getelementptr [8 x i8], ptr %invariant.gep628, i64 %.pre586
  %i.sl = getelementptr [8 x i8], ptr %i.l, i64 %i.sk
  %i.sm = getelementptr [8 x i8], ptr %i.sl, i64 %indvars.iv530 ; 2 uses
  call void @dgemv_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b23, ptr noundef nonnull %gep627, ptr noundef nonnull %3, ptr noundef nonnull %gep629, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b25, ptr noundef nonnull %i.sm, ptr noundef nonnull %3) #8
  %i.sn = load i32, ptr %1, align 4, !tbaa !51
  %i.so = sub nsw i32 %i.sn, %i.oi
  store i32 %i.so, ptr %i.c, align 4, !tbaa !51
  %i.sp = load double, ptr %i.g, align 8, !tbaa !57
  %i.sq = fdiv double 1.000000e+00, %i.sp
  store double %i.sq, ptr %i.e, align 8, !tbaa !57
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.sm, ptr noundef nonnull %3) #8
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge574, %bb.ah
  %indvars.iv.next531.pre-phi = phi i64 [ %.pre590, %._crit_edge574 ], [ %i.sj, %bb.ah ] ; 2 uses
  %i.sr = load i32, ptr %i.b, align 4, !tbaa !51
  %i.ss = sext i32 %i.sr to i64
  %.not427.not = icmp slt i64 %indvars.iv530, %i.ss
  %indvar.next668 = add i32 %indvar667, 1
  %indvar.next699 = add i64 %indvar698, 1
  br i1 %.not427.not, label %.lr.ph475, label %._crit_edge476.loopexit, !llvm.loop !30

._crit_edge476.loopexit:                          ; preds = %bb.ai
  %i.st = trunc nsw i64 %indvars.iv.next531.pre-phi to i32
  %.pre567 = load i32, ptr %i.f, align 4, !tbaa !51
  %.pre568 = load i32, ptr %1, align 4, !tbaa !51
  br label %._crit_edge476

._crit_edge476:                                   ; preds = %._crit_edge476.loopexit, %._crit_edge464
  %i.su = phi i32 [ %i.em, %._crit_edge464 ], [ %.pre568, %._crit_edge476.loopexit ] ; 2 uses
  %i.sv = phi i32 [ %i.eq, %._crit_edge464 ], [ %.pre567, %._crit_edge476.loopexit ]
  %.0391.lcssa = phi i32 [ %i.en, %._crit_edge464 ], [ %i.st, %._crit_edge476.loopexit ] ; 3 uses
  %.3.lcssa = phi i32 [ %.2481, %._crit_edge464 ], [ %.4, %._crit_edge476.loopexit ]
  %i.sw = add nsw i32 %i.sv, %indvars542
  %.not428 = icmp sgt i32 %i.sw, %i.su
  br i1 %.not428, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge476
  %reass.sub = sub i32 %i.su, %.0391.lcssa
  %i.sx = add i32 %reass.sub, 1
  store i32 %i.sx, ptr %i.b, align 4, !tbaa !51
  %i.sy = mul nsw i32 %.0391.lcssa, %i.j          ; 2 uses
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv528
  %i.tb = getelementptr [8 x i8], ptr %i.ta, i64 %i.sz
  %i.tc = add nsw i32 %i.sy, %.0391.lcssa
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.td
  call void @dsyrk_(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b23, ptr noundef nonnull %i.tb, ptr noundef nonnull %3, ptr noundef nonnull @c_b25, ptr noundef nonnull %i.te, ptr noundef nonnull %3) #8
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge476, %bb.aj
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, %i.cx ; 2 uses
  %indvars.iv.next524 = add i64 %indvars.iv523, %i.cv
  %.not424 = icmp samesign ugt i64 %indvars.iv.next529, %i.cz
  %indvar.next = add i64 %indvar, 1
  br i1 %.not424, label %.loopexit, label %bb.ab, !llvm.loop !31

bb.al:                                            ; preds = %bb.z
  %i.tf = icmp sgt i32 %i.ct, 0
  br i1 %i.tf, label %.lr.ph508, label %.loopexit

.lr.ph508:                                        ; preds = %bb.al
  %i.tg = add i32 %i.j, 1                         ; 30 uses
  %i.th = zext nneg i32 %i.w to i64               ; 5 uses
  %i.ti = shl nuw nsw i64 %i.th, 3
  %i.tj = sext i32 %i.j to i64                    ; 7 uses
  %i.tk = zext nneg i32 %i.ct to i64
  %invariant.gep636 = getelementptr [8 x i8], ptr %i.l, i64 %i.tj
  %i.tl = mul i32 %i.w, %i.tg                     ; 2 uses
  %18 = sext i32 %i.tg to i64
  %i.tm = shl nsw i64 %i.k, 3                     ; 2 uses
  %i.tn = shl nsw i64 %i.tj, 3
  %i.to = add nsw i64 %i.tn, 8                    ; 2 uses
  %i.tp = mul i64 %i.to, %i.th
  %i.tq = sub nsw i32 0, %i.w                     ; 2 uses
  %i.tr = shl nuw nsw i64 %i.th, 3
  %i.ts = zext i32 %i.tq to i64
  %i.tt = zext i32 %i.tg to i64                   ; 2 uses
  %i.tu = mul i32 %i.w, %i.tg                     ; 2 uses
  %i.tv = zext i32 %i.tu to i64
  %i.tw = sext i32 %i.tg to i64
  %i.tx = sub nsw i32 0, %i.w
  %i.ty = zext i32 %i.tx to i64
  %i.tz = shl nuw nsw i64 %i.th, 3
  %i.ua = icmp slt i32 %i.tg, 0                   ; 2 uses
  %i.ub = select i1 %i.ua, i32 %narrow, i32 %i.tg
  %broadcast.splatinsert940 = insertelement <4 x i32> poison, i32 %i.tg, i64 0
  %broadcast.splat941 = shufflevector <4 x i32> %broadcast.splatinsert940, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert975 = insertelement <4 x i32> poison, i32 %i.tg, i64 0
  %broadcast.splat976 = shufflevector <4 x i32> %broadcast.splatinsert975, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.uc = icmp slt i32 %i.tg, 0                   ; 2 uses
  %i.ud = select i1 %i.uc, i32 %narrow, i32 %i.tg
  %i.ue = getelementptr i8, ptr %2, i64 %i.tm
  %i.uf = getelementptr i8, ptr %i.ue, i64 8
  %i.ug = getelementptr i8, ptr %2, i64 %i.tm
  %i.uh = getelementptr i8, ptr %i.ug, i64 16
  %broadcast.splatinsert882 = insertelement <4 x i32> poison, i32 %i.tg, i64 0
  %broadcast.splat883 = shufflevector <4 x i32> %broadcast.splatinsert882, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph508, %bb.aw
  %indvars.iv546 = phi i64 [ 1, %.lr.ph508 ], [ %indvars.iv.next547, %bb.aw ] ; 9 uses
  %indvar543 = phi i64 [ 0, %.lr.ph508 ], [ %indvar.next544, %bb.aw ] ; 15 uses
  %.5506 = phi i32 [ %.0.lcssa, %.lr.ph508 ], [ %.6.lcssa, %bb.aw ] ; 2 uses
  %i.ui = trunc i64 %indvar543 to i32
  %i.uj = mul i32 %i.tu, %i.ui
  %i.uk = add i32 %i.uj, %i.tg
  %i.ul = mul i64 %indvar543, %i.ty
  %i.um = add i64 %i.ul, -1                       ; 2 uses
  %i.un = trunc i64 %i.um to i32
  %i.uo = mul i64 %i.tz, %indvar543               ; 2 uses
  %i.up = add i64 %i.uo, 8
  %i.uq = mul i64 %indvar543, %i.ts
  %i.ur = mul i64 %indvar543, %i.tv
  %i.us = add i64 %i.ur, %i.tt
  %i.ut = trunc i64 %indvar543 to i32
  %i.uu = trunc i64 %indvar543 to i32
  %i.uv = mul i32 %i.tl, %i.uu
  %i.uw = add i32 %i.uv, %i.tg
  %19 = mul i64 %i.tp, %indvar543                 ; 2 uses
  %i.ux = trunc i64 %indvar543 to i32
  %i.uy = mul i32 %i.ux, %i.tq
  %i.uz = mul i64 %i.tr, %indvar543               ; 2 uses
  %i.va = add i64 %i.uz, 8
  %i.vb = trunc i64 %indvar543 to i32
  %i.vc = mul i32 %i.w, %i.vb
  %i.vd = xor i32 %i.vc, -1
  %i.ve = trunc i64 %indvar543 to i32
  %i.vf = mul i32 %i.tl, %i.ve
  %i.vg = add i32 %i.vf, %i.tg
  %indvars564 = trunc nuw nsw i64 %indvars.iv546 to i32 ; 4 uses
  %i.vh = load i32, ptr %1, align 4, !tbaa !51    ; 4 uses
  %i.vi = sub nsw i32 %i.vh, %indvars564
  %i.vj = add nsw i32 %i.vi, 1                    ; 2 uses
  store i32 %i.vj, ptr %i.c, align 4, !tbaa !51
  %i.vk = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.vj) ; 3 uses
  store i32 %i.vk, ptr %i.f, align 4, !tbaa !51
  %i.vl = sext i32 %i.vh to i64
  %.not418484 = icmp sgt i64 %indvars.iv546, %i.vl
  br i1 %.not418484, label %._crit_edge488, label %.lr.ph487.preheader

.lr.ph487.preheader:                              ; preds = %bb.am
  %i.vm = trunc i64 %indvar543 to i32
  %i.vn = mul i32 %i.w, %i.vm
  %i.vo = xor i32 %i.vn, -1
  %i.vp = mul i64 %i.ti, %indvar543
  %scevgep545 = getelementptr i8, ptr %7, i64 %i.vp
  %i.vq = add i32 %i.vh, %i.vo
  %i.vr = zext i32 %i.vq to i64
  %i.vs = shl nuw nsw i64 %i.vr, 3
  %i.vt = add nuw nsw i64 %i.vs, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep545, i8 0, i64 %i.vt, i1 false), !tbaa !57
  br label %._crit_edge488

._crit_edge488:                                   ; preds = %.lr.ph487.preheader, %bb.am
  %i.vu = add nsw i32 %indvars564, -1
  %i.vv = add i32 %i.vu, %i.vk                    ; 2 uses
  store i32 %i.vv, ptr %i.b, align 4, !tbaa !51
  %i.vw = sext i32 %i.vv to i64
  %.not419495 = icmp sgt i64 %indvars.iv546, %i.vw
  br i1 %.not419495, label %._crit_edge501, label %.lr.ph500

.lr.ph500:                                        ; preds = %._crit_edge488
  %i.vx = mul nsw i64 %indvars.iv546, %i.tj       ; 2 uses
  %invariant.gep638 = getelementptr [8 x i8], ptr %i.l, i64 %i.vx
  %invariant.gep640 = getelementptr [8 x i8], ptr %i.l, i64 %i.vx
  %i.vy = mul i32 %i.w, %i.ut
  %i.vz = xor i32 %i.vy, -1
  %i.wa = getelementptr i8, ptr %i.uf, i64 %19
  %i.wb = getelementptr i8, ptr %i.uh, i64 %19
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph500, %bb.au
  %indvar856 = phi i64 [ 0, %.lr.ph500 ], [ %indvar.next857, %bb.au ] ; 7 uses
  %indvar816 = phi i32 [ 0, %.lr.ph500 ], [ %indvar.next817, %bb.au ] ; 8 uses
  %indvars.iv551 = phi i64 [ %indvars.iv546, %.lr.ph500 ], [ %indvars.iv.next552.pre-phi, %bb.au ] ; 33 uses
  %.6498 = phi i32 [ %.5506, %.lr.ph500 ], [ %.7, %bb.au ]
  %i.wc = sub i64 %i.um, %indvar856
  %i.wd = trunc i64 %i.wc to i32
  %i.we = xor i64 %indvar856, -1
  %i.wf = add i64 %i.uq, %i.we
  %i.wg = trunc i64 %i.wf to i32
  %i.wh = mul i64 %indvar856, %i.tt
  %i.wi = add i64 %i.us, %i.wh
  %i.wj = trunc i64 %i.wi to i32                  ; 4 uses
  %i.wk = sub i32 %i.vd, %indvar816
  %i.wl = mul i32 %i.tg, %indvar816
  %i.wm = add i32 %i.vg, %i.wl                    ; 4 uses
  %i.wn = load i32, ptr %1, align 4, !tbaa !51    ; 16 uses
  store i32 %i.wn, ptr %i.c, align 4, !tbaa !51
  %i.wo = sext i32 %i.wn to i64                   ; 5 uses
  %.not421489 = icmp sgt i64 %indvars.iv551, %i.wo
  br i1 %.not421489, label %._crit_edge493, label %.lr.ph492

.lr.ph492:                                        ; preds = %bb.an
  %i.wp = icmp sgt i64 %indvars.iv551, %indvars.iv546
  %i.wq = add i32 %i.wn, 1                        ; 2 uses
  br i1 %i.wp, label %.lr.ph492.split.us.preheader, label %iter.check967

iter.check967:                                    ; preds = %.lr.ph492
  %invariant.gep630 = getelementptr [8 x i8], ptr %i.h, i64 %i.wo ; 7 uses
  %i.wr = add i32 %i.wn, %i.wd                    ; 3 uses
  %i.ws = zext i32 %i.wr to i64
  %i.wt = add nuw nsw i64 %i.ws, 1                ; 5 uses
  %min.iters.check927 = icmp ult i32 %i.wr, 3
  br i1 %min.iters.check927, label %.lr.ph492.split.preheader, label %vector.scevcheck904

vector.scevcheck904:                              ; preds = %iter.check967
  %i.wu = add i32 %i.wn, %i.wg
  %mul905 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ub, i32 %i.wu) ; 2 uses
  %mul.result906 = extractvalue { i32, i1 } %mul905, 0 ; 2 uses
  %mul.overflow907 = extractvalue { i32, i1 } %mul905, 1
  %i.wv = add i32 %mul.result906, %i.wj
  %i.ww = sub i32 %i.wj, %mul.result906
  %i.wx = icmp slt i32 %i.wv, %i.wj
  %i.wy = icmp sgt i32 %i.ww, %i.wj
  %i.wz = select i1 %i.ua, i1 %i.wy, i1 %i.wx
  %i.xa = or i1 %i.wz, %mul.overflow907
  br i1 %i.xa, label %.lr.ph492.split.preheader, label %vector.memcheck928

vector.memcheck928:                               ; preds = %vector.scevcheck904
  %i.xb = shl nuw nsw i64 %indvar856, 3           ; 2 uses
  %i.xc = add i64 %i.uo, %i.xb                    ; 2 uses
  %i.xd = shl nsw i64 %i.wo, 3                    ; 2 uses
  %i.xe = getelementptr i8, ptr %7, i64 %i.xc
  %i.xf = getelementptr i8, ptr %i.xe, i64 %i.xd  ; 2 uses
  %i.xg = add i64 %i.up, %i.xb                    ; 2 uses
  %i.xh = sub i32 %i.un, %indvar816
  %i.xi = add i32 %i.wn, %i.xh
  %i.xj = zext i32 %i.xi to i64                   ; 2 uses
  %i.xk = shl nuw nsw i64 %i.xj, 3                ; 2 uses
  %i.xl = getelementptr i8, ptr %7, i64 %i.xg
  %i.xm = getelementptr i8, ptr %i.xl, i64 %i.xd
  %i.xn = getelementptr i8, ptr %i.xm, i64 %i.xk  ; 2 uses
  %i.xo = mul nsw i64 %i.tw, %i.xj
  %i.xp = mul i32 %indvar816, %i.tg
  %i.xq = add i32 %i.uk, %i.xp
  %i.xr = sext i32 %i.xq to i64                   ; 2 uses
  %i.xs = shl nsw i64 %i.xr, 3
  %i.xt = add i64 %i.xo, %i.xr
  %i.xu = shl i64 %i.xt, 3
  %i.xv = getelementptr i8, ptr %i.l, i64 %i.xu   ; 4 uses
  %i.xw = getelementptr i8, ptr %i.l, i64 %i.xs   ; 4 uses
  %i.xx = icmp ult ptr %i.xv, %i.xw
  %i.xy = select i1 %i.xx, ptr %i.xv, ptr %i.xw
  %i.xz = icmp ugt ptr %i.xv, %i.xw
  %i.ya = select i1 %i.xz, ptr %i.xv, ptr %i.xw
  %i.yb = getelementptr i8, ptr %i.ya, i64 8
  %i.yc = getelementptr i8, ptr %7, i64 %i.xc
  %i.yd = getelementptr i8, ptr %7, i64 %i.xg
  %i.ye = getelementptr i8, ptr %i.yd, i64 %i.xk
  %bound0929 = icmp ult ptr %i.xf, %i.yb
  %bound1930 = icmp ult ptr %i.xy, %i.xn
  %found.conflict931 = and i1 %bound0929, %bound1930
  %bound0932 = icmp ult ptr %i.xf, %i.ye
  %bound1933 = icmp ult ptr %i.yc, %i.xn
  %found.conflict934 = and i1 %bound0932, %bound1933
  %conflict.rdx935 = or i1 %found.conflict931, %found.conflict934
  br i1 %conflict.rdx935, label %.lr.ph492.split.preheader, label %vector.main.loop.iter.check936

vector.main.loop.iter.check936:                   ; preds = %vector.memcheck928
  %min.iters.check937 = icmp ult i32 %i.wr, 15
  br i1 %min.iters.check937, label %vec.epilog.ph971, label %vector.ph938

vector.ph938:                                     ; preds = %vector.main.loop.iter.check936
  %i.yf = and i64 %i.wt, 12
  %n.vec939 = and i64 %i.wt, 8589934576           ; 4 uses
  %i.yg = add i64 %indvars.iv551, %n.vec939       ; 2 uses
  %i.yh = trunc i64 %indvars.iv551 to i32
  %broadcast.splatinsert942 = insertelement <4 x i32> poison, i32 %i.yh, i64 0
  %broadcast.splat943 = shufflevector <4 x i32> %broadcast.splatinsert942, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction944 = add <4 x i32> %broadcast.splat943, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body945

vector.body945:                                   ; preds = %vector.ph938, %vector.body945
  %index946 = phi i64 [ 0, %vector.ph938 ], [ %index.next963, %vector.body945 ] ; 2 uses
  %vec.ind947 = phi <4 x i32> [ %induction944, %vector.ph938 ], [ %vec.ind.next964, %vector.body945 ] ; 5 uses
  %step.add948 = add <4 x i32> %vec.ind947, splat (i32 4)
  %step.add.2949 = add <4 x i32> %vec.ind947, splat (i32 8)
  %step.add.3950 = add <4 x i32> %vec.ind947, splat (i32 12)
  %i.yi = add i64 %indvars.iv551, %index946       ; 2 uses
  %i.yj = mul <4 x i32> %broadcast.splat941, %vec.ind947
  %i.yk = mul <4 x i32> %broadcast.splat941, %step.add948
  %i.yl = mul <4 x i32> %broadcast.splat941, %step.add.2949
  %i.ym = mul <4 x i32> %broadcast.splat941, %step.add.3950
  %i.yn = sext <4 x i32> %i.yj to <4 x i64>
  %i.yo = sext <4 x i32> %i.yk to <4 x i64>
  %i.yp = sext <4 x i32> %i.yl to <4 x i64>
  %i.yq = sext <4 x i32> %i.ym to <4 x i64>
  %wide.gep951 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.yn
  %wide.gep952 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.yo
  %wide.gep953 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.yp
  %wide.gep954 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.yq
  %wide.masked.gather955 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep951, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !70
  %wide.masked.gather956 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep952, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !70
  %wide.masked.gather957 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep953, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !70
  %wide.masked.gather958 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep954, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !70
  %i.yr = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.yi ; 4 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 32
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yr, i64 64
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 96
  %wide.load959 = load <4 x double>, ptr %i.yr, align 8, !tbaa !57, !alias.scope !71
  %wide.load960 = load <4 x double>, ptr %i.ys, align 8, !tbaa !57, !alias.scope !71
  %wide.load961 = load <4 x double>, ptr %i.yt, align 8, !tbaa !57, !alias.scope !71
  %wide.load962 = load <4 x double>, ptr %i.yu, align 8, !tbaa !57, !alias.scope !71
  %i.yv = fsub <4 x double> %wide.masked.gather955, %wide.load959
  %i.yw = fsub <4 x double> %wide.masked.gather956, %wide.load960
  %i.yx = fsub <4 x double> %wide.masked.gather957, %wide.load961
  %i.yy = fsub <4 x double> %wide.masked.gather958, %wide.load962
  %i.yz = getelementptr [8 x i8], ptr %invariant.gep630, i64 %i.yi ; 4 uses
  %i.za = getelementptr i8, ptr %i.yz, i64 32
  %i.zb = getelementptr i8, ptr %i.yz, i64 64
  %i.zc = getelementptr i8, ptr %i.yz, i64 96
  store <4 x double> %i.yv, ptr %i.yz, align 8, !tbaa !57, !alias.scope !72, !noalias !73
  store <4 x double> %i.yw, ptr %i.za, align 8, !tbaa !57, !alias.scope !72, !noalias !73
  store <4 x double> %i.yx, ptr %i.zb, align 8, !tbaa !57, !alias.scope !72, !noalias !73
  store <4 x double> %i.yy, ptr %i.zc, align 8, !tbaa !57, !alias.scope !72, !noalias !73
  %index.next963 = add nuw i64 %index946, 16      ; 2 uses
  %vec.ind.next964 = add <4 x i32> %vec.ind947, splat (i32 16)
  %i.zd = icmp eq i64 %index.next963, %n.vec939
  br i1 %i.zd, label %middle.block965, label %vector.body945, !llvm.loop !36

middle.block965:                                  ; preds = %vector.body945
  %cmp.n966 = icmp eq i64 %i.wt, %n.vec939
  br i1 %cmp.n966, label %._crit_edge493, label %vec.epilog.iter.check968

vec.epilog.iter.check968:                         ; preds = %middle.block965
  %min.epilog.iters.check970 = icmp eq i64 %i.yf, 0
  br i1 %min.epilog.iters.check970, label %.lr.ph492.split.preheader, label %vec.epilog.ph971, !prof !63

vec.epilog.ph971:                                 ; preds = %vector.main.loop.iter.check936, %vec.epilog.iter.check968
  %vec.epilog.resume.val972 = phi i64 [ %n.vec939, %vec.epilog.iter.check968 ], [ 0, %vector.main.loop.iter.check936 ]
  %bc.resume.val973 = phi i64 [ %i.yg, %vec.epilog.iter.check968 ], [ %indvars.iv551, %vector.main.loop.iter.check936 ]
  %n.vec974 = and i64 %i.wt, 8589934588           ; 3 uses
  %i.ze = add i64 %indvars.iv551, %n.vec974
  %i.zf = trunc i64 %bc.resume.val973 to i32
  %broadcast.splatinsert977 = insertelement <4 x i32> poison, i32 %i.zf, i64 0
  %broadcast.splat978 = shufflevector <4 x i32> %broadcast.splatinsert977, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction979 = add <4 x i32> %broadcast.splat978, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body980

vec.epilog.vector.body980:                        ; preds = %vec.epilog.vector.body980, %vec.epilog.ph971
  %index981 = phi i64 [ %vec.epilog.resume.val972, %vec.epilog.ph971 ], [ %index.next986, %vec.epilog.vector.body980 ] ; 2 uses
  %vec.ind982 = phi <4 x i32> [ %induction979, %vec.epilog.ph971 ], [ %vec.ind.next987, %vec.epilog.vector.body980 ] ; 2 uses
  %i.zg = add i64 %indvars.iv551, %index981       ; 2 uses
  %i.zh = mul <4 x i32> %broadcast.splat976, %vec.ind982
  %i.zi = sext <4 x i32> %i.zh to <4 x i64>
  %wide.gep983 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.zi
  %wide.masked.gather984 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep983, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !70
  %i.zj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.zg
  %wide.load985 = load <4 x double>, ptr %i.zj, align 8, !tbaa !57, !alias.scope !71
  %i.zk = fsub <4 x double> %wide.masked.gather984, %wide.load985
  %i.zl = getelementptr [8 x i8], ptr %invariant.gep630, i64 %i.zg
  store <4 x double> %i.zk, ptr %i.zl, align 8, !tbaa !57, !alias.scope !72, !noalias !73
  %index.next986 = add nuw i64 %index981, 4       ; 2 uses
  %vec.ind.next987 = add <4 x i32> %vec.ind982, splat (i32 4)
  %i.zm = icmp eq i64 %index.next986, %n.vec974
  br i1 %i.zm, label %vec.epilog.middle.block988, label %vec.epilog.vector.body980, !llvm.loop !37

vec.epilog.middle.block988:                       ; preds = %vec.epilog.vector.body980
  %cmp.n989 = icmp eq i64 %i.wt, %n.vec974
  br i1 %cmp.n989, label %._crit_edge493, label %.lr.ph492.split.preheader

.lr.ph492.split.preheader:                        ; preds = %iter.check967, %vector.scevcheck904, %vector.memcheck928, %vec.epilog.iter.check968, %vec.epilog.middle.block988
  %indvars.iv553.ph = phi i64 [ %indvars.iv551, %iter.check967 ], [ %indvars.iv551, %vector.scevcheck904 ], [ %indvars.iv551, %vector.memcheck928 ], [ %i.yg, %vec.epilog.iter.check968 ], [ %i.ze, %vec.epilog.middle.block988 ] ; 3 uses
  %i.zn = add i32 %i.wn, 1
  %i.zo = trunc i64 %indvars.iv553.ph to i32      ; 2 uses
  %i.zp = sub i32 %i.zn, %i.zo
  %i.zq = sub i32 %i.wn, %i.zo
  %xtraiter1018 = and i32 %i.zp, 3                ; 2 uses
  %lcmp.mod1019.not = icmp eq i32 %xtraiter1018, 0
  br i1 %lcmp.mod1019.not, label %.lr.ph492.split.prol.loopexit, label %.lr.ph492.split.prol

.lr.ph492.split.prol:                             ; preds = %.lr.ph492.split.preheader, %.lr.ph492.split.prol
  %indvars.iv553.prol = phi i64 [ %indvars.iv.next554.prol, %.lr.ph492.split.prol ], [ %indvars.iv553.ph, %.lr.ph492.split.preheader ] ; 4 uses
  %prol.iter1020 = phi i32 [ %prol.iter1020.next, %.lr.ph492.split.prol ], [ 0, %.lr.ph492.split.preheader ]
  %i.zr = trunc nsw i64 %indvars.iv553.prol to i32
  %i.zs = mul i32 %i.tg, %i.zr
  %i.zt = sext i32 %i.zs to i64
  %i.zu = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.zt
  %i.zv = load double, ptr %i.zu, align 8, !tbaa !57
  %i.zw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv553.prol
  %i.zx = load double, ptr %i.zw, align 8, !tbaa !57
  %i.zy = fsub double %i.zv, %i.zx
  %gep631.prol = getelementptr [8 x i8], ptr %invariant.gep630, i64 %indvars.iv553.prol
  store double %i.zy, ptr %gep631.prol, align 8, !tbaa !57
  %indvars.iv.next554.prol = add i64 %indvars.iv553.prol, 1 ; 2 uses
  %prol.iter1020.next = add i32 %prol.iter1020, 1 ; 2 uses
  %prol.iter1020.cmp.not = icmp eq i32 %prol.iter1020.next, %xtraiter1018
  br i1 %prol.iter1020.cmp.not, label %.lr.ph492.split.prol.loopexit, label %.lr.ph492.split.prol, !llvm.loop !38

.lr.ph492.split.prol.loopexit:                    ; preds = %.lr.ph492.split.prol, %.lr.ph492.split.preheader
  %indvars.iv553.unr = phi i64 [ %indvars.iv553.ph, %.lr.ph492.split.preheader ], [ %indvars.iv.next554.prol, %.lr.ph492.split.prol ]
  %i.zz = icmp ult i32 %i.zq, 3
  br i1 %i.zz, label %._crit_edge493, label %.lr.ph492.split

.lr.ph492.split.us.preheader:                     ; preds = %.lr.ph492
  %i.aaa = add nsw i64 %indvars.iv551, -1
  %i.aab = mul nsw i64 %i.aaa, %i.tj
  %invariant.gep632 = getelementptr [8 x i8], ptr %i.l, i64 %i.aab ; 6 uses
  %invariant.gep634 = getelementptr [8 x i8], ptr %i.h, i64 %i.wo ; 6 uses
  %i.aac = sub i32 %i.vz, %indvar816
  %i.aad = add i32 %i.wn, %i.aac                  ; 2 uses
  %i.aae = zext i32 %i.aad to i64
  %i.aaf = add nuw nsw i64 %i.aae, 1              ; 2 uses
  %min.iters.check859 = icmp ult i32 %i.aad, 27
  br i1 %min.iters.check859, label %.lr.ph492.split.us.preheader991, label %vector.scevcheck815

vector.scevcheck815:                              ; preds = %.lr.ph492.split.us.preheader
  %i.aag = add i32 %i.wn, %i.wk
  %mul818 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ud, i32 %i.aag) ; 2 uses
  %mul.result819 = extractvalue { i32, i1 } %mul818, 0 ; 2 uses
  %mul.overflow820 = extractvalue { i32, i1 } %mul818, 1
  %i.aah = add i32 %i.wm, %mul.result819
  %i.aai = sub i32 %i.wm, %mul.result819
  %i.aaj = icmp slt i32 %i.aah, %i.wm
  %i.aak = icmp sgt i32 %i.aai, %i.wm
  %i.aal = select i1 %i.uc, i1 %i.aak, i1 %i.aaj
  %i.aam = or i1 %i.aal, %mul.overflow820
  br i1 %i.aam, label %.lr.ph492.split.us.preheader991, label %vector.memcheck860

vector.memcheck860:                               ; preds = %vector.scevcheck815
  %i.aan = shl nuw nsw i64 %indvar856, 3          ; 2 uses
  %i.aao = add i64 %i.uz, %i.aan                  ; 2 uses
  %i.aap = getelementptr i8, ptr %7, i64 %i.aao   ; 3 uses
  %i.aaq = add i64 %i.va, %i.aan                  ; 2 uses
  %i.aar = xor i32 %indvar816, -1
  %i.aas = add i32 %i.uy, %i.aar
  %i.aat = add i32 %i.wn, %i.aas
  %i.aau = zext i32 %i.aat to i64                 ; 2 uses
  %i.aav = shl nuw nsw i64 %i.aau, 3              ; 3 uses
  %i.aaw = getelementptr i8, ptr %7, i64 %i.aaq
  %i.aax = getelementptr i8, ptr %i.aaw, i64 %i.aav ; 3 uses
  %i.aay = shl nsw i64 %i.wo, 3                   ; 2 uses
  %20 = getelementptr i8, ptr %7, i64 %i.aao
  %21 = getelementptr i8, ptr %20, i64 %i.aay     ; 3 uses
  %22 = getelementptr i8, ptr %7, i64 %i.aaq
  %i.aaz = getelementptr i8, ptr %22, i64 %i.aay
  %i.aba = getelementptr i8, ptr %i.aaz, i64 %i.aav ; 3 uses
  %23 = mul i64 %indvar856, %i.to                 ; 2 uses
  %i.abb = getelementptr i8, ptr %i.wa, i64 %23   ; 2 uses
  %i.abc = getelementptr i8, ptr %i.wb, i64 %23
  %i.abd = getelementptr i8, ptr %i.abc, i64 %i.aav ; 2 uses
  %i.abe = mul nsw i64 %18, %i.aau
  %i.abf = mul i32 %indvar816, %i.tg
  %i.abg = add i32 %i.uw, %i.abf
  %i.abh = sext i32 %i.abg to i64                 ; 2 uses
  %i.abi = shl nsw i64 %i.abh, 3
  %i.abj = add i64 %i.abe, %i.abh
  %i.abk = shl i64 %i.abj, 3
  %i.abl = getelementptr i8, ptr %i.l, i64 %i.abk ; 4 uses
  %i.abm = getelementptr i8, ptr %i.l, i64 %i.abi ; 4 uses
  %i.abn = icmp ult ptr %i.abl, %i.abm
  %i.abo = select i1 %i.abn, ptr %i.abl, ptr %i.abm ; 2 uses
  %i.abp = icmp ugt ptr %i.abl, %i.abm
  %i.abq = select i1 %i.abp, ptr %i.abl, ptr %i.abm
  %i.abr = getelementptr i8, ptr %i.abq, i64 8    ; 2 uses
  %bound0861 = icmp ult ptr %i.aap, %i.aba
  %bound1862 = icmp ult ptr %21, %i.aax
  %found.conflict863 = and i1 %bound0861, %bound1862
  %bound0864 = icmp ult ptr %i.aap, %i.abd
  %bound1865 = icmp ult ptr %i.abb, %i.aax
  %found.conflict866 = and i1 %bound0864, %bound1865
  %conflict.rdx867 = or i1 %found.conflict863, %found.conflict866
  %bound0868 = icmp ult ptr %i.aap, %i.abr
  %bound1869 = icmp ult ptr %i.abo, %i.aax
  %found.conflict870 = and i1 %bound0868, %bound1869
  %conflict.rdx871 = or i1 %conflict.rdx867, %found.conflict870
  %bound0872 = icmp ult ptr %21, %i.abd
  %bound1873 = icmp ult ptr %i.abb, %i.aba
  %found.conflict874 = and i1 %bound0872, %bound1873
  %conflict.rdx875 = or i1 %conflict.rdx871, %found.conflict874
  %bound0876 = icmp ult ptr %21, %i.abr
  %bound1877 = icmp ult ptr %i.abo, %i.aba
  %found.conflict878 = and i1 %bound0876, %bound1877
  %conflict.rdx879 = or i1 %conflict.rdx875, %found.conflict878
  br i1 %conflict.rdx879, label %.lr.ph492.split.us.preheader991, label %vector.ph880

vector.ph880:                                     ; preds = %vector.memcheck860
  %n.vec881 = and i64 %i.aaf, 8589934584          ; 3 uses
  %i.abs = add i64 %indvars.iv551, %n.vec881
  %i.abt = trunc i64 %indvars.iv551 to i32
  %broadcast.splatinsert884 = insertelement <4 x i32> poison, i32 %i.abt, i64 0
  %broadcast.splat885 = shufflevector <4 x i32> %broadcast.splatinsert884, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction886 = add <4 x i32> %broadcast.splat885, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body887

vector.body887:                                   ; preds = %vector.body887, %vector.ph880
  %index888 = phi i64 [ 0, %vector.ph880 ], [ %index.next899, %vector.body887 ] ; 2 uses
  %vec.ind889 = phi <4 x i32> [ %induction886, %vector.ph880 ], [ %vec.ind.next900, %vector.body887 ] ; 3 uses
  %step.add890 = add <4 x i32> %vec.ind889, splat (i32 4)
  %i.abu = add i64 %indvars.iv551, %index888      ; 3 uses
  %i.abv = getelementptr [8 x i8], ptr %invariant.gep632, i64 %i.abu ; 2 uses
  %i.abw = getelementptr i8, ptr %i.abv, i64 32
  %wide.load891 = load <4 x double>, ptr %i.abv, align 8, !tbaa !57, !alias.scope !74 ; 2 uses
  %wide.load892 = load <4 x double>, ptr %i.abw, align 8, !tbaa !57, !alias.scope !74 ; 3 uses
  %i.abx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.abu ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 32 ; 2 uses
  %wide.load893 = load <4 x double>, ptr %i.abx, align 8, !tbaa !57, !alias.scope !75, !noalias !76
  %wide.load894 = load <4 x double>, ptr %i.aby, align 8, !tbaa !57, !alias.scope !75, !noalias !76
  %i.abz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load891, <4 x double> %wide.load891, <4 x double> %wide.load893) ; 2 uses
  %i.aca = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load892, <4 x double> %wide.load892, <4 x double> %wide.load894) ; 2 uses
  store <4 x double> %i.abz, ptr %i.abx, align 8, !tbaa !57, !alias.scope !75, !noalias !76
  store <4 x double> %i.aca, ptr %i.aby, align 8, !tbaa !57, !alias.scope !75, !noalias !76
  %i.acb = mul <4 x i32> %broadcast.splat883, %vec.ind889
  %i.acc = mul <4 x i32> %broadcast.splat883, %step.add890
  %i.acd = sext <4 x i32> %i.acb to <4 x i64>
  %i.ace = sext <4 x i32> %i.acc to <4 x i64>
  %wide.gep895 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.acd
  %wide.gep896 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.ace
  %wide.masked.gather897 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep895, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !77
  %wide.masked.gather898 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep896, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !77
  %i.acf = fsub <4 x double> %wide.masked.gather897, %i.abz
  %i.acg = fsub <4 x double> %wide.masked.gather898, %i.aca
  %i.ach = getelementptr [8 x i8], ptr %invariant.gep634, i64 %i.abu ; 2 uses
  %i.aci = getelementptr i8, ptr %i.ach, i64 32
  store <4 x double> %i.acf, ptr %i.ach, align 8, !tbaa !57, !alias.scope !78, !noalias !79
  store <4 x double> %i.acg, ptr %i.aci, align 8, !tbaa !57, !alias.scope !78, !noalias !79
  %index.next899 = add nuw i64 %index888, 8       ; 2 uses
  %vec.ind.next900 = add <4 x i32> %vec.ind889, splat (i32 8)
  %i.acj = icmp eq i64 %index.next899, %n.vec881
  br i1 %i.acj, label %middle.block901, label %vector.body887, !llvm.loop !44

middle.block901:                                  ; preds = %vector.body887
  %i.ack = extractelement <4 x double> %wide.load892, i64 3
  %cmp.n902 = icmp eq i64 %i.aaf, %n.vec881
  br i1 %cmp.n902, label %._crit_edge493.split.us, label %.lr.ph492.split.us.preheader991

.lr.ph492.split.us.preheader991:                  ; preds = %vector.memcheck860, %vector.scevcheck815, %.lr.ph492.split.us.preheader, %middle.block901
  %indvars.iv558.ph = phi i64 [ %indvars.iv551, %vector.memcheck860 ], [ %indvars.iv551, %vector.scevcheck815 ], [ %indvars.iv551, %.lr.ph492.split.us.preheader ], [ %i.abs, %middle.block901 ] ; 3 uses
  %i.acl = add i32 %i.wn, 1
  %i.acm = trunc i64 %indvars.iv558.ph to i32     ; 2 uses
  %i.acn = sub i32 %i.acl, %i.acm
  %i.aco = sub i32 %i.wn, %i.acm
  %xtraiter1021 = and i32 %i.acn, 3               ; 2 uses
  %lcmp.mod1022.not = icmp eq i32 %xtraiter1021, 0
  br i1 %lcmp.mod1022.not, label %.lr.ph492.split.us.prol.loopexit, label %.lr.ph492.split.us.prol

.lr.ph492.split.us.prol:                          ; preds = %.lr.ph492.split.us.preheader991, %.lr.ph492.split.us.prol
  %indvars.iv558.prol = phi i64 [ %indvars.iv.next559.prol, %.lr.ph492.split.us.prol ], [ %indvars.iv558.ph, %.lr.ph492.split.us.preheader991 ] ; 5 uses
  %prol.iter1023 = phi i32 [ %prol.iter1023.next, %.lr.ph492.split.us.prol ], [ 0, %.lr.ph492.split.us.preheader991 ]
  %gep633.prol = getelementptr [8 x i8], ptr %invariant.gep632, i64 %indvars.iv558.prol
  %i.acp = load double, ptr %gep633.prol, align 8, !tbaa !57 ; 3 uses
  %i.acq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv558.prol ; 2 uses
  %i.acr = load double, ptr %i.acq, align 8, !tbaa !57
  %i.acs = call double @llvm.fmuladd.f64(double %i.acp, double %i.acp, double %i.acr) ; 2 uses
  store double %i.acs, ptr %i.acq, align 8, !tbaa !57
  %i.act = trunc nsw i64 %indvars.iv558.prol to i32
  %i.acu = mul i32 %i.tg, %i.act
  %i.acv = sext i32 %i.acu to i64
  %i.acw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.acv
  %i.acx = load double, ptr %i.acw, align 8, !tbaa !57
  %i.acy = fsub double %i.acx, %i.acs
  %gep635.prol = getelementptr [8 x i8], ptr %invariant.gep634, i64 %indvars.iv558.prol
  store double %i.acy, ptr %gep635.prol, align 8, !tbaa !57
  %indvars.iv.next559.prol = add i64 %indvars.iv558.prol, 1 ; 2 uses
  %prol.iter1023.next = add i32 %prol.iter1023, 1 ; 2 uses
  %prol.iter1023.cmp.not = icmp eq i32 %prol.iter1023.next, %xtraiter1021
  br i1 %prol.iter1023.cmp.not, label %.lr.ph492.split.us.prol.loopexit, label %.lr.ph492.split.us.prol, !llvm.loop !45

.lr.ph492.split.us.prol.loopexit:                 ; preds = %.lr.ph492.split.us.prol, %.lr.ph492.split.us.preheader991
  %.lcssa992.unr = phi double [ poison, %.lr.ph492.split.us.preheader991 ], [ %i.acp, %.lr.ph492.split.us.prol ]
  %indvars.iv558.unr = phi i64 [ %indvars.iv558.ph, %.lr.ph492.split.us.preheader991 ], [ %indvars.iv.next559.prol, %.lr.ph492.split.us.prol ]
  %i.acz = icmp ult i32 %i.aco, 3
  br i1 %i.acz, label %._crit_edge493.split.us, label %.lr.ph492.split.us

.lr.ph492.split.us:                               ; preds = %.lr.ph492.split.us.prol.loopexit, %.lr.ph492.split.us
  %indvars.iv558 = phi i64 [ %indvars.iv.next559.3, %.lr.ph492.split.us ], [ %indvars.iv558.unr, %.lr.ph492.split.us.prol.loopexit ] ; 9 uses
  %gep633 = getelementptr [8 x i8], ptr %invariant.gep632, i64 %indvars.iv558
  %i.ada = load double, ptr %gep633, align 8, !tbaa !57 ; 2 uses
  %i.adb = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv558 ; 2 uses
  %i.adc = load double, ptr %i.adb, align 8, !tbaa !57
  %i.add = call double @llvm.fmuladd.f64(double %i.ada, double %i.ada, double %i.adc) ; 2 uses
  store double %i.add, ptr %i.adb, align 8, !tbaa !57
  %i.ade = trunc nsw i64 %indvars.iv558 to i32
  %i.adf = mul i32 %i.tg, %i.ade
  %i.adg = sext i32 %i.adf to i64
  %i.adh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.adg
  %i.adi = load double, ptr %i.adh, align 8, !tbaa !57
  %i.adj = fsub double %i.adi, %i.add
  %gep635 = getelementptr [8 x i8], ptr %invariant.gep634, i64 %indvars.iv558
  store double %i.adj, ptr %gep635, align 8, !tbaa !57
  %indvars.iv.next559 = add i64 %indvars.iv558, 1 ; 3 uses
  %gep633.1 = getelementptr [8 x i8], ptr %invariant.gep632, i64 %indvars.iv.next559
  %i.adk = load double, ptr %gep633.1, align 8, !tbaa !57 ; 2 uses
  %i.adl = getelementptr [8 x i8], ptr %7, i64 %indvars.iv558 ; 2 uses
  %i.adm = load double, ptr %i.adl, align 8, !tbaa !57
  %i.adn = call double @llvm.fmuladd.f64(double %i.adk, double %i.adk, double %i.adm) ; 2 uses
  store double %i.adn, ptr %i.adl, align 8, !tbaa !57
  %i.ado = trunc nsw i64 %indvars.iv.next559 to i32
  %i.adp = mul i32 %i.tg, %i.ado
  %i.adq = sext i32 %i.adp to i64
  %i.adr = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.adq
  %i.ads = load double, ptr %i.adr, align 8, !tbaa !57
  %i.adt = fsub double %i.ads, %i.adn
  %gep635.1 = getelementptr [8 x i8], ptr %invariant.gep634, i64 %indvars.iv.next559
  store double %i.adt, ptr %gep635.1, align 8, !tbaa !57
  %indvars.iv.next559.1 = add i64 %indvars.iv558, 2 ; 4 uses
  %gep633.2 = getelementptr [8 x i8], ptr %invariant.gep632, i64 %indvars.iv.next559.1
  %i.adu = load double, ptr %gep633.2, align 8, !tbaa !57 ; 2 uses
  %i.adv = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.next559.1 ; 2 uses
  %i.adw = load double, ptr %i.adv, align 8, !tbaa !57
  %i.adx = call double @llvm.fmuladd.f64(double %i.adu, double %i.adu, double %i.adw) ; 2 uses
  store double %i.adx, ptr %i.adv, align 8, !tbaa !57
  %i.ady = trunc nsw i64 %indvars.iv.next559.1 to i32
  %i.adz = mul i32 %i.tg, %i.ady
  %i.aea = sext i32 %i.adz to i64
  %i.aeb = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aea
  %i.aec = load double, ptr %i.aeb, align 8, !tbaa !57
  %i.aed = fsub double %i.aec, %i.adx
  %gep635.2 = getelementptr [8 x i8], ptr %invariant.gep634, i64 %indvars.iv.next559.1
  store double %i.aed, ptr %gep635.2, align 8, !tbaa !57
  %indvars.iv.next559.2 = add i64 %indvars.iv558, 3 ; 4 uses
  %gep633.3 = getelementptr [8 x i8], ptr %invariant.gep632, i64 %indvars.iv.next559.2
  %i.aee = load double, ptr %gep633.3, align 8, !tbaa !57 ; 3 uses
  %i.aef = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.next559.2 ; 2 uses
  %i.aeg = load double, ptr %i.aef, align 8, !tbaa !57
  %i.aeh = call double @llvm.fmuladd.f64(double %i.aee, double %i.aee, double %i.aeg) ; 2 uses
  store double %i.aeh, ptr %i.aef, align 8, !tbaa !57
  %i.aei = trunc nsw i64 %indvars.iv.next559.2 to i32
  %i.aej = mul i32 %i.tg, %i.aei
  %i.aek = sext i32 %i.aej to i64
  %i.ael = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aek
  %i.aem = load double, ptr %i.ael, align 8, !tbaa !57
  %i.aen = fsub double %i.aem, %i.aeh
  %gep635.3 = getelementptr [8 x i8], ptr %invariant.gep634, i64 %indvars.iv.next559.2
  store double %i.aen, ptr %gep635.3, align 8, !tbaa !57
  %indvars.iv.next559.3 = add i64 %indvars.iv558, 4 ; 2 uses
  %lftr.wideiv561.3 = trunc i64 %indvars.iv.next559.3 to i32
  %exitcond562.not.3 = icmp eq i32 %i.wq, %lftr.wideiv561.3
  br i1 %exitcond562.not.3, label %._crit_edge493.split.us, label %.lr.ph492.split.us, !llvm.loop !46

._crit_edge493.split.us:                          ; preds = %.lr.ph492.split.us.prol.loopexit, %.lr.ph492.split.us, %middle.block901
  %.lcssa = phi double [ %i.ack, %middle.block901 ], [ %.lcssa992.unr, %.lr.ph492.split.us.prol.loopexit ], [ %i.aee, %.lr.ph492.split.us ]
  store double %.lcssa, ptr %i.e, align 8, !tbaa !57
  br label %._crit_edge493

.lr.ph492.split:                                  ; preds = %.lr.ph492.split.prol.loopexit, %.lr.ph492.split
  %indvars.iv553 = phi i64 [ %indvars.iv.next554.3, %.lr.ph492.split ], [ %indvars.iv553.unr, %.lr.ph492.split.prol.loopexit ] ; 8 uses
  %i.aeo = trunc nsw i64 %indvars.iv553 to i32
  %i.aep = mul i32 %i.tg, %i.aeo
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aeq
  %i.aes = load double, ptr %i.aer, align 8, !tbaa !57
  %i.aet = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv553
  %i.aeu = load double, ptr %i.aet, align 8, !tbaa !57
  %i.aev = fsub double %i.aes, %i.aeu
  %gep631 = getelementptr [8 x i8], ptr %invariant.gep630, i64 %indvars.iv553
  store double %i.aev, ptr %gep631, align 8, !tbaa !57
  %indvars.iv.next554 = add i64 %indvars.iv553, 1 ; 2 uses
  %i.aew = trunc nsw i64 %indvars.iv.next554 to i32
  %i.aex = mul i32 %i.tg, %i.aew
  %i.aey = sext i32 %i.aex to i64
  %i.aez = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aey
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !57
  %i.afb = getelementptr [8 x i8], ptr %7, i64 %indvars.iv553
  %i.afc = load double, ptr %i.afb, align 8, !tbaa !57
  %i.afd = fsub double %i.afa, %i.afc
  %gep631.1 = getelementptr [8 x i8], ptr %invariant.gep630, i64 %indvars.iv.next554
  store double %i.afd, ptr %gep631.1, align 8, !tbaa !57
  %indvars.iv.next554.1 = add i64 %indvars.iv553, 2 ; 3 uses
  %i.afe = trunc nsw i64 %indvars.iv.next554.1 to i32
  %i.aff = mul i32 %i.tg, %i.afe
  %i.afg = sext i32 %i.aff to i64
  %i.afh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.afg
  %i.afi = load double, ptr %i.afh, align 8, !tbaa !57
  %i.afj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.next554.1
  %i.afk = load double, ptr %i.afj, align 8, !tbaa !57
  %i.afl = fsub double %i.afi, %i.afk
  %gep631.2 = getelementptr [8 x i8], ptr %invariant.gep630, i64 %indvars.iv.next554.1
  store double %i.afl, ptr %gep631.2, align 8, !tbaa !57
  %indvars.iv.next554.2 = add i64 %indvars.iv553, 3 ; 3 uses
  %i.afm = trunc nsw i64 %indvars.iv.next554.2 to i32
  %i.afn = mul i32 %i.tg, %i.afm
end_hunk_1
begin_hunk_2_@dpstrf_:bb.a
  %indvar.next817 = add i32 %indvar816, 1
  %indvar.next857 = add i64 %indvar856, 1
  br i1 %.not419.not, label %bb.an, label %._crit_edge501.loopexit, !llvm.loop !49

._crit_edge501.loopexit:                          ; preds = %bb.au
  %i.akc = trunc nsw i64 %indvars.iv.next552.pre-phi to i32
  %.pre572 = load i32, ptr %i.f, align 4, !tbaa !51
  %.pre573 = load i32, ptr %1, align 4, !tbaa !51
  br label %._crit_edge501

._crit_edge501:                                   ; preds = %._crit_edge501.loopexit, %._crit_edge488
  %i.akd = phi i32 [ %i.vh, %._crit_edge488 ], [ %.pre573, %._crit_edge501.loopexit ] ; 2 uses
  %i.ake = phi i32 [ %i.vk, %._crit_edge488 ], [ %.pre572, %._crit_edge501.loopexit ]
  %.1392.lcssa = phi i32 [ %indvars564, %._crit_edge488 ], [ %i.akc, %._crit_edge501.loopexit ] ; 3 uses
  %.6.lcssa = phi i32 [ %.5506, %._crit_edge488 ], [ %.7, %._crit_edge501.loopexit ]
  %i.akf = add nsw i32 %i.ake, %indvars564
  %.not420 = icmp sgt i32 %i.akf, %i.akd
  br i1 %.not420, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge501
  %reass.sub509 = sub i32 %i.akd, %.1392.lcssa
  %i.akg = add i32 %reass.sub509, 1
  store i32 %i.akg, ptr %i.b, align 4, !tbaa !51
  %i.akh = mul nsw i64 %indvars.iv546, %i.tj
  %i.aki = sext i32 %.1392.lcssa to i64
  %i.akj = getelementptr [8 x i8], ptr %i.l, i64 %i.akh
  %i.akk = getelementptr [8 x i8], ptr %i.akj, i64 %i.aki
  %i.akl = mul i32 %.1392.lcssa, %i.tg
  %i.akm = sext i32 %i.akl to i64
  %i.akn = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.akm
  call void @dsyrk_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b23, ptr noundef nonnull %i.akk, ptr noundef nonnull %3, ptr noundef nonnull @c_b25, ptr noundef nonnull %i.akn, ptr noundef nonnull %3) #8
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge501, %bb.av
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, %i.th ; 2 uses
  %.not510 = icmp samesign ugt i64 %indvars.iv.next547, %i.tk
  %indvar.next544 = add i64 %indvar543, 1
  br i1 %.not510, label %.loopexit, label %bb.am, !llvm.loop !50

.loopexit:                                        ; preds = %bb.ak, %bb.aw, %bb.aa, %bb.al
  %i.ako = load i32, ptr %1, align 4, !tbaa !51
  store i32 %i.ako, ptr %5, align 4, !tbaa !51
  br label %bb.ay

bb.ax:                                            ; preds = %split570, %split
  %.sink645 = phi i32 [ %i.ahx, %split570 ], [ %i.qk, %split ]
  %.sink642 = phi double [ %i.ahw, %split570 ], [ %i.qj, %split ]
  %.2393 = phi i32 [ %i.afv, %split570 ], [ %i.oi, %split ]
  %i.akp = sext i32 %.sink645 to i64
  %i.akq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.akp
  store double %.sink642, ptr %i.akq, align 8, !tbaa !57
  %i.akr = add nsw i32 %.2393, -1
  store i32 %i.akr, ptr %5, align 4, !tbaa !51
  store i32 1, ptr %8, align 4, !tbaa !51
  br label %bb.ay

bb.ay:                                            ; preds = %bb.i, %bb.w, %.loopexit, %bb.ax, %bb.f, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @dpstf2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @disnan_(ptr noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dsyrk_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !52, !53, !54}
!9 = distinct !{!9, !52, !53, !54}
!10 = distinct !{!10, !52, !54, !53}
!11 = distinct !{!11, !52}
!12 = distinct !{!12, !58}
!13 = distinct !{!13, i1 false, !"LVerDomain"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !52, !53, !54}
!18 = distinct !{!18, !52, !53, !54}
!19 = distinct !{!19, !58}
!20 = distinct !{!20, i1 false, !"LVerDomain"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !52, !53, !54}
!26 = distinct !{!26, !52, !53}
!27 = distinct !{!27, !52, !53}
!28 = distinct !{!28, !58}
!29 = distinct !{!29, !52}
!30 = distinct !{!30, !52}
!31 = distinct !{!31, !52}
!32 = distinct !{!32, i1 false, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !32}
!36 = distinct !{!36, !52, !53, !54}
!37 = distinct !{!37, !52, !53, !54}
!38 = distinct !{!38, !58}
!39 = distinct !{!39, i1 false, !"LVerDomain"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !39}
!43 = distinct !{!43, !39}
!44 = distinct !{!44, !52, !53, !54}
!45 = distinct !{!45, !58}
!46 = distinct !{!46, !52, !53}
!47 = distinct !{!47, !52, !53}
!48 = distinct !{!48, !58}
!49 = distinct !{!49, !52}
!50 = distinct !{!50, !52}
!51 = !{!5, !5, i64 0}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!"branch_weights", i32 8, i32 24}
!56 = !{!"double", !4, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!14}
!60 = !{!15}
!61 = !{!16}
!62 = !{!14, !15}
!63 = !{!"branch_weights", i32 4, i32 12}
!64 = !{!21}
!65 = !{!22}
!66 = !{!24, !21, !23}
!67 = !{!23}
!68 = !{!24}
!69 = !{!21, !23}
!70 = !{!33}
!71 = !{!34}
!72 = !{!35}
!73 = !{!33, !34}
!74 = !{!40}
!75 = !{!41}
!76 = !{!43, !40, !42}
!77 = !{!42}
!78 = !{!43}
!79 = !{!40, !42}
end_hunk_2
