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
  %i.h = getelementptr i8, ptr %7, i64 -8         ; 31 uses
  %i.i = getelementptr inbounds i8, ptr %4, i64 -4 ; 5 uses
  %i.j = load i32, ptr %3, align 4, !tbaa !51     ; 14 uses
  %narrow = xor i32 %i.j, -1                      ; 4 uses
  %i.k = sext i32 %narrow to i64                  ; 4 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %2, i64 %i.k ; 67 uses
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
  %i.w = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str.3, ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #8 ; 26 uses
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
  %min.iters.check655 = icmp ult i32 %i.y, 32
  br i1 %min.iters.check655, label %vec.epilog.ph, label %vector.ph

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
  %n.vec656 = and i64 %i.aa, 4294967288           ; 3 uses
  %i.ai = or disjoint i64 %n.vec656, 1
  %i.aj = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index657 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next659, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind658 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next660, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %4, i64 %index657
  store <8 x i32> %vec.ind658, ptr %i.ak, align 4, !tbaa !51
  %index.next659 = add nuw i64 %index657, 8       ; 2 uses
  %vec.ind.next660 = add <8 x i32> %vec.ind658, splat (i32 8)
  %i.al = icmp eq i64 %index.next659, %n.vec656
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n661 = icmp eq i64 %n.vec656, %i.aa
  br i1 %cmp.n661, label %._crit_edge, label %.lr.ph.preheader

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
  %indvars.iv517 = phi i64 [ 2, %.lr.ph458.new ], [ %indvars.iv.next518.3, %bb.r ] ; 5 uses
  %.0456 = phi i32 [ 1, %.lr.ph458.new ], [ %.1.3, %bb.r ]
  %i.au = phi double [ %i.ao, %.lr.ph458.new ], [ %i.bz, %bb.r ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph458.new ], [ %niter.next.3, %bb.r ]
  %i.av = trunc nuw nsw i64 %indvars.iv517 to i32 ; 2 uses
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
  %i.bc = trunc i64 %indvars.iv517 to i32
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
  %i.bk = trunc i64 %indvars.iv517 to i32
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
  %i.bs = trunc i64 %indvars.iv517 to i32
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
  %indvars.iv.next518.3 = add nuw nsw i64 %indvars.iv517, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge459.loopexit.unr-lcssa, label %bb.j, !llvm.loop !11

._crit_edge459.loopexit.unr-lcssa:                ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge459, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge459.loopexit.unr-lcssa, %.lr.ph458
  %indvars.iv517.epil.init = phi i64 [ 2, %.lr.ph458 ], [ %indvars.iv.next518.3, %._crit_edge459.loopexit.unr-lcssa ]
  %.0456.epil.init = phi i32 [ 1, %.lr.ph458 ], [ %.1.3, %._crit_edge459.loopexit.unr-lcssa ]
  %.epil.init = phi double [ %i.ao, %.lr.ph458 ], [ %i.bz, %._crit_edge459.loopexit.unr-lcssa ]
  %lcmp.mod952 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod952)
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv517.epil = phi i64 [ %indvars.iv517.epil.init, %.epil.preheader ], [ %indvars.iv.next518.epil, %bb.u ] ; 2 uses
  %.0456.epil = phi i32 [ %.0456.epil.init, %.epil.preheader ], [ %.1.epil, %bb.u ]
  %i.ca = phi double [ %.epil.init, %.epil.preheader ], [ %i.ch, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.cb = trunc nuw nsw i64 %indvars.iv517.epil to i32 ; 2 uses
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
  %indvars.iv.next518.epil = add nuw nsw i64 %indvars.iv517.epil, 1
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
  %i.cu = add i32 %i.j, 1                         ; 19 uses
  %i.cv = zext nneg i32 %i.w to i64               ; 2 uses
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = zext nneg i32 %i.w to i64               ; 4 uses
  %i.cy = sext i32 %i.j to i64                    ; 6 uses
  %i.cz = zext nneg i32 %i.ct to i64
  %i.da = sub nsw i32 0, %i.w                     ; 2 uses
  %i.db = shl nuw i32 %i.w, 1                     ; 2 uses
  %i.dc = shl nuw nsw i64 %i.cx, 3
  %i.dd = zext i32 %i.da to i64
  %scevgep672 = getelementptr i8, ptr %2, i64 -16
  %i.de = zext i32 %i.db to i64
  %scevgep674 = getelementptr i8, ptr %2, i64 -8
  %i.df = shl nuw nsw i64 %i.cx, 4
  %i.dg = sub nsw i32 0, %i.w                     ; 2 uses
  %i.dh = zext i32 %i.dg to i64
  %i.di = zext i32 %i.cu to i64                   ; 2 uses
  %i.dj = mul i32 %i.w, %i.cu
  %i.dk = zext i32 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.cx, 3
  %i.dm = zext i32 %i.dg to i64
  %i.dn = shl nsw i64 %i.k, 3                     ; 2 uses
  %scevgep712 = getelementptr i8, ptr %2, i64 %i.dn
  %i.do = sext i32 %i.cu to i64
  %i.dp = shl nsw i64 %i.do, 3
  %i.dq = zext i32 %i.cu to i64                   ; 2 uses
  %i.dr = mul i32 %i.w, %i.cu
  %i.ds = zext i32 %i.dr to i64
  %scevgep714 = getelementptr i8, ptr %2, i64 %i.dn
  %i.dt = sub nsw i32 0, %i.w
  %i.du = zext i32 %i.dt to i64
  %i.dv = icmp slt i32 %i.cu, 0                   ; 2 uses
  %i.dw = select i1 %i.dv, i32 %narrow, i32 %i.cu
  %broadcast.splatinsert731 = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat732 = shufflevector <4 x i32> %broadcast.splatinsert731, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert764 = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat765 = shufflevector <4 x i32> %broadcast.splatinsert764, <4 x i32> poison, <4 x i32> zeroinitializer
  %ident.check = icmp ne i32 %i.j, 1
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph483, %bb.ak
  %indvars.iv527 = phi i64 [ 1, %.lr.ph483 ], [ %indvars.iv.next528, %bb.ak ] ; 11 uses
  %indvars.iv522 = phi i64 [ 1, %.lr.ph483 ], [ %indvars.iv.next523, %bb.ak ] ; 2 uses
  %indvar = phi i64 [ 0, %.lr.ph483 ], [ %indvar.next, %bb.ak ] ; 16 uses
  %.2481 = phi i32 [ %.0.lcssa, %.lr.ph483 ], [ %.3.lcssa, %bb.ak ] ; 2 uses
  %i.dx = mul i64 %indvar, %i.du
  %i.dy = mul i64 %i.dl, %indvar                  ; 2 uses
  %i.dz = mul i64 %indvar, %i.dm
  %i.ea = mul i64 %indvar, %i.ds
  %i.eb = add i64 %i.ea, %i.dq
  %i.ec = mul i64 %indvar, %i.dh
  %i.ed = mul i64 %indvar, %i.dk
  %i.ee = add i64 %i.ed, %i.di
  %i.ef = mul i64 %i.dc, %indvar                  ; 2 uses
  %i.eg = mul i64 %indvar, %i.dd
  %i.eh = mul i64 %indvar, %i.de
  %i.ei = mul i64 %i.df, %indvar                  ; 2 uses
  %i.ej = trunc i64 %indvar to i32
  %i.ek = mul i32 %i.ej, %i.da
  %i.el = trunc i64 %indvar to i32
  %i.em = mul i32 %i.db, %i.el
  %i.en = add i32 %i.em, 2
  %indvars541 = trunc i64 %indvars.iv522 to i32
  %i.eo = load i32, ptr %1, align 4, !tbaa !51    ; 4 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv527 to i32 ; 2 uses
  %i.eq = sub nsw i32 %i.eo, %i.ep
  %i.er = add nsw i32 %i.eq, 1                    ; 2 uses
  store i32 %i.er, ptr %i.c, align 4, !tbaa !51
  %i.es = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.er) ; 3 uses
  store i32 %i.es, ptr %i.f, align 4, !tbaa !51
  %i.et = sext i32 %i.eo to i64
  %.not426460 = icmp sgt i64 %indvars.iv527, %i.et
  br i1 %.not426460, label %._crit_edge464, label %.lr.ph463.preheader

.lr.ph463.preheader:                              ; preds = %bb.ab
  %i.eu = trunc i64 %indvar to i32
  %i.ev = mul i32 %i.w, %i.eu
  %i.ew = xor i32 %i.ev, -1
  %i.ex = mul i64 %i.cw, %indvar
  %scevgep = getelementptr i8, ptr %7, i64 %i.ex
  %i.ey = add i32 %i.eo, %i.ew
  %i.ez = zext i32 %i.ey to i64
  %i.fa = shl nuw nsw i64 %i.ez, 3
  %i.fb = add nuw nsw i64 %i.fa, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.fb, i1 false), !tbaa !57
  br label %._crit_edge464

._crit_edge464:                                   ; preds = %.lr.ph463.preheader, %bb.ab
  %i.fc = trunc nuw i64 %indvars.iv527 to i32
  %i.fd = add i32 %i.fc, -1
  %i.fe = add i32 %i.fd, %i.es                    ; 2 uses
  store i32 %i.fe, ptr %i.b, align 4, !tbaa !51
  %i.ff = sext i32 %i.fe to i64
  %.not427470 = icmp sgt i64 %indvars.iv527, %i.ff
  br i1 %.not427470, label %._crit_edge476, label %.lr.ph475.preheader

.lr.ph475.preheader:                              ; preds = %._crit_edge464
  %invariant.gep622 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv527
  %invariant.gep624 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv527
  %i.fg = getelementptr i8, ptr %7, i64 %i.dy
  %i.fh = getelementptr i8, ptr %7, i64 %i.dy
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  %i.fj = getelementptr i8, ptr %7, i64 %i.ef
  %i.fk = getelementptr i8, ptr %7, i64 %i.ef
  %i.fl = getelementptr i8, ptr %i.fk, i64 8
  %i.fm = shl i64 %i.eh, 32
  %i.fn = add i64 %i.fm, 8589934592
  %i.fo = getelementptr i8, ptr %2, i64 %i.ei
  %i.fp = getelementptr i8, ptr %i.fo, i64 -8
  %i.fq = getelementptr i8, ptr %2, i64 %i.ei
  %9 = trunc i64 %indvar to i32
  %10 = mul i32 %i.w, %9
  %11 = xor i32 %10, -1
  br label %.lr.ph475

.lr.ph475:                                        ; preds = %.lr.ph475.preheader, %bb.ai
  %indvar665 = phi i64 [ 0, %.lr.ph475.preheader ], [ %indvar.next666, %bb.ai ] ; 11 uses
  %indvar663 = phi i32 [ 0, %.lr.ph475.preheader ], [ %indvar.next664, %bb.ai ] ; 4 uses
  %indvars.iv529 = phi i64 [ %indvars.iv527, %.lr.ph475.preheader ], [ %indvars.iv.next530.pre-phi, %bb.ai ] ; 33 uses
  %.3473 = phi i32 [ %.2481, %.lr.ph475.preheader ], [ %.4, %bb.ai ]
  %i.fr = xor i64 %indvar665, -1
  %i.fs = add i64 %i.dx, %i.fr
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = shl nuw nsw i64 %indvar665, 3           ; 2 uses
  %scevgep708 = getelementptr i8, ptr %i.fg, i64 %i.fu ; 2 uses
  %scevgep710 = getelementptr i8, ptr %i.fi, i64 %i.fu ; 2 uses
  %i.fv = xor i64 %indvar665, -1
  %i.fw = add i64 %i.dz, %i.fv
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = mul i64 %indvar665, %i.dq
  %i.fz = add i64 %i.eb, %i.fy
  %i.ga = shl i64 %i.fz, 32
  %i.gb = ashr exact i64 %i.ga, 29                ; 2 uses
  %scevgep715 = getelementptr i8, ptr %scevgep714, i64 %i.gb ; 4 uses
  %i.gc = xor i64 %indvar665, -1
  %i.gd = add i64 %i.ec, %i.gc
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = mul i64 %indvar665, %i.di
  %i.gg = add i64 %i.ee, %i.gf
  %i.gh = trunc i64 %i.gg to i32                  ; 4 uses
  %i.gi = shl nuw nsw i64 %indvar665, 3           ; 2 uses
  %scevgep667 = getelementptr i8, ptr %i.fj, i64 %i.gi ; 4 uses
  %scevgep668 = getelementptr i8, ptr %i.fl, i64 %i.gi ; 2 uses
  %i.gj = xor i64 %indvar665, -1
  %i.gk = add i64 %i.eg, %i.gj
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = shl i64 %indvar665, 33
  %i.gn = add i64 %i.gm, %i.fn
  %i.go = ashr exact i64 %i.gn, 29                ; 2 uses
  %scevgep673 = getelementptr i8, ptr %scevgep672, i64 %i.go ; 2 uses
  %i.gp = shl nuw nsw i64 %indvar665, 4           ; 2 uses
  %scevgep676 = getelementptr i8, ptr %i.fp, i64 %i.gp ; 2 uses
  %scevgep677 = getelementptr i8, ptr %i.fq, i64 %i.gp
  %i.gq = xor i32 %indvar663, -1
  %i.gr = add i32 %i.ek, %i.gq
  %i.gs = shl nuw i32 %indvar663, 1
  %i.gt = add i32 %i.en, %i.gs                    ; 2 uses
  %i.gu = load i32, ptr %1, align 4, !tbaa !51    ; 16 uses
  store i32 %i.gu, ptr %i.c, align 4, !tbaa !51
  %i.gv = sext i32 %i.gu to i64                   ; 5 uses
  %.not429465 = icmp sgt i64 %indvars.iv529, %i.gv
  br i1 %.not429465, label %._crit_edge469, label %.lr.ph468

.lr.ph468:                                        ; preds = %.lr.ph475
  %i.gw = icmp sgt i64 %indvars.iv529, %indvars.iv527
  %i.gx = add i32 %i.gu, 1                        ; 2 uses
  br i1 %i.gw, label %.lr.ph468.split.us.preheader, label %iter.check758

iter.check758:                                    ; preds = %.lr.ph468
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.gv ; 7 uses
  %i.gy = add i32 %i.gu, %i.ft                    ; 3 uses
  %i.gz = zext i32 %i.gy to i64
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 5 uses
  %min.iters.check726 = icmp ult i32 %i.gy, 3
  br i1 %min.iters.check726, label %.lr.ph468.split.preheader, label %vector.scevcheck703

vector.scevcheck703:                              ; preds = %iter.check758
  %i.hb = add i32 %i.gu, %i.ge
  %mul704 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.dw, i32 %i.hb) ; 2 uses
  %mul.result705 = extractvalue { i32, i1 } %mul704, 0 ; 2 uses
  %mul.overflow706 = extractvalue { i32, i1 } %mul704, 1
  %i.hc = add i32 %mul.result705, %i.gh
  %i.hd = sub i32 %i.gh, %mul.result705
  %i.he = icmp slt i32 %i.hc, %i.gh
  %i.hf = icmp sgt i32 %i.hd, %i.gh
  %i.hg = select i1 %i.dv, i1 %i.hf, i1 %i.he
  %i.hh = or i1 %i.hg, %mul.overflow706
  br i1 %i.hh, label %.lr.ph468.split.preheader, label %vector.memcheck707

vector.memcheck707:                               ; preds = %vector.scevcheck703
  %i.hi = shl nsw i64 %i.gv, 3                    ; 2 uses
  %scevgep709 = getelementptr i8, ptr %scevgep708, i64 %i.hi ; 2 uses
  %i.hj = add i32 %i.gu, %i.fx
  %i.hk = zext i32 %i.hj to i64                   ; 2 uses
  %i.hl = shl nuw nsw i64 %i.hk, 3                ; 2 uses
  %i.hm = getelementptr i8, ptr %scevgep710, i64 %i.hi
  %scevgep711 = getelementptr i8, ptr %i.hm, i64 %i.hl ; 2 uses
  %i.hn = mul i64 %i.dp, %i.hk
  %i.ho = getelementptr i8, ptr %scevgep712, i64 %i.hn
  %scevgep713 = getelementptr i8, ptr %i.ho, i64 %i.gb ; 4 uses
  %i.hp = icmp ult ptr %scevgep713, %scevgep715
  %umin = select i1 %i.hp, ptr %scevgep713, ptr %scevgep715
  %i.hq = icmp ugt ptr %scevgep713, %scevgep715
  %umax = select i1 %i.hq, ptr %scevgep713, ptr %scevgep715
  %scevgep716 = getelementptr i8, ptr %umax, i64 8
  %scevgep717 = getelementptr i8, ptr %scevgep710, i64 %i.hl
  %bound0718 = icmp ult ptr %scevgep709, %scevgep716
  %bound1719 = icmp ult ptr %umin, %scevgep711
  %found.conflict720 = and i1 %bound0718, %bound1719
  %bound0721 = icmp ult ptr %scevgep709, %scevgep717
  %bound1722 = icmp ult ptr %scevgep708, %scevgep711
  %found.conflict723 = and i1 %bound0721, %bound1722
  %conflict.rdx724 = or i1 %found.conflict720, %found.conflict723
  br i1 %conflict.rdx724, label %.lr.ph468.split.preheader, label %vector.main.loop.iter.check727

vector.main.loop.iter.check727:                   ; preds = %vector.memcheck707
  %min.iters.check728 = icmp ult i32 %i.gy, 15
  br i1 %min.iters.check728, label %vec.epilog.ph762, label %vector.ph729

vector.ph729:                                     ; preds = %vector.main.loop.iter.check727
  %i.hr = and i64 %i.ha, 12
  %n.vec730 = and i64 %i.ha, 8589934576           ; 4 uses
  %i.hs = add i64 %indvars.iv529, %n.vec730       ; 2 uses
  %i.ht = trunc i64 %indvars.iv529 to i32
  %broadcast.splatinsert733 = insertelement <4 x i32> poison, i32 %i.ht, i64 0
  %broadcast.splat734 = shufflevector <4 x i32> %broadcast.splatinsert733, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction735 = add <4 x i32> %broadcast.splat734, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body736

vector.body736:                                   ; preds = %vector.ph729, %vector.body736
  %index737 = phi i64 [ 0, %vector.ph729 ], [ %index.next752, %vector.body736 ] ; 2 uses
  %vec.ind738 = phi <4 x i32> [ %induction735, %vector.ph729 ], [ %vec.ind.next753, %vector.body736 ] ; 5 uses
  %step.add739 = add <4 x i32> %vec.ind738, splat (i32 4)
  %step.add.2740 = add <4 x i32> %vec.ind738, splat (i32 8)
  %step.add.3741 = add <4 x i32> %vec.ind738, splat (i32 12)
  %i.hu = add i64 %indvars.iv529, %index737       ; 2 uses
  %i.hv = mul <4 x i32> %broadcast.splat732, %vec.ind738
  %i.hw = mul <4 x i32> %broadcast.splat732, %step.add739
  %i.hx = mul <4 x i32> %broadcast.splat732, %step.add.2740
  %i.hy = mul <4 x i32> %broadcast.splat732, %step.add.3741
  %i.hz = sext <4 x i32> %i.hv to <4 x i64>
  %i.ia = sext <4 x i32> %i.hw to <4 x i64>
  %i.ib = sext <4 x i32> %i.hx to <4 x i64>
  %i.ic = sext <4 x i32> %i.hy to <4 x i64>
  %wide.gep = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.hz
  %wide.gep742 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.ia
  %wide.gep743 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.ib
  %wide.gep744 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.ic
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !59
  %wide.masked.gather745 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep742, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !59
  %wide.masked.gather746 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep743, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !59
  %wide.masked.gather747 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep744, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !59
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.hu ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 96
  %wide.load748 = load <4 x double>, ptr %i.id, align 8, !tbaa !57, !alias.scope !60
  %wide.load749 = load <4 x double>, ptr %i.ie, align 8, !tbaa !57, !alias.scope !60
  %wide.load750 = load <4 x double>, ptr %i.if, align 8, !tbaa !57, !alias.scope !60
  %wide.load751 = load <4 x double>, ptr %i.ig, align 8, !tbaa !57, !alias.scope !60
  %i.ih = fsub <4 x double> %wide.masked.gather, %wide.load748
  %i.ii = fsub <4 x double> %wide.masked.gather745, %wide.load749
  %i.ij = fsub <4 x double> %wide.masked.gather746, %wide.load750
  %i.ik = fsub <4 x double> %wide.masked.gather747, %wide.load751
  %i.il = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.hu ; 4 uses
  %i.im = getelementptr i8, ptr %i.il, i64 32
  %i.in = getelementptr i8, ptr %i.il, i64 64
  %i.io = getelementptr i8, ptr %i.il, i64 96
  store <4 x double> %i.ih, ptr %i.il, align 8, !tbaa !57, !alias.scope !61, !noalias !62
  store <4 x double> %i.ii, ptr %i.im, align 8, !tbaa !57, !alias.scope !61, !noalias !62
  store <4 x double> %i.ij, ptr %i.in, align 8, !tbaa !57, !alias.scope !61, !noalias !62
  store <4 x double> %i.ik, ptr %i.io, align 8, !tbaa !57, !alias.scope !61, !noalias !62
  %index.next752 = add nuw i64 %index737, 16      ; 2 uses
  %vec.ind.next753 = add <4 x i32> %vec.ind738, splat (i32 16)
  %i.ip = icmp eq i64 %index.next752, %n.vec730
  br i1 %i.ip, label %middle.block754, label %vector.body736, !llvm.loop !17

middle.block754:                                  ; preds = %vector.body736
  %cmp.n755 = icmp eq i64 %i.ha, %n.vec730
  br i1 %cmp.n755, label %._crit_edge469, label %vec.epilog.iter.check760

vec.epilog.iter.check760:                         ; preds = %middle.block754
  %min.epilog.iters.check761 = icmp eq i64 %i.hr, 0
  br i1 %min.epilog.iters.check761, label %.lr.ph468.split.preheader, label %vec.epilog.ph762, !prof !63

vec.epilog.ph762:                                 ; preds = %vector.main.loop.iter.check727, %vec.epilog.iter.check760
  %vec.epilog.resume.val756 = phi i64 [ %n.vec730, %vec.epilog.iter.check760 ], [ 0, %vector.main.loop.iter.check727 ]
  %bc.resume.val757 = phi i64 [ %i.hs, %vec.epilog.iter.check760 ], [ %indvars.iv529, %vector.main.loop.iter.check727 ]
  %n.vec763 = and i64 %i.ha, 8589934588           ; 3 uses
  %i.iq = add i64 %indvars.iv529, %n.vec763
  %i.ir = trunc i64 %bc.resume.val757 to i32
  %broadcast.splatinsert766 = insertelement <4 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat767 = shufflevector <4 x i32> %broadcast.splatinsert766, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction768 = add <4 x i32> %broadcast.splat767, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body769

vec.epilog.vector.body769:                        ; preds = %vec.epilog.vector.body769, %vec.epilog.ph762
  %index770 = phi i64 [ %vec.epilog.resume.val756, %vec.epilog.ph762 ], [ %index.next775, %vec.epilog.vector.body769 ] ; 2 uses
  %vec.ind771 = phi <4 x i32> [ %induction768, %vec.epilog.ph762 ], [ %vec.ind.next776, %vec.epilog.vector.body769 ] ; 2 uses
  %i.is = add i64 %indvars.iv529, %index770       ; 2 uses
  %i.it = mul <4 x i32> %broadcast.splat765, %vec.ind771
  %i.iu = sext <4 x i32> %i.it to <4 x i64>
  %wide.gep772 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.iu
  %wide.masked.gather773 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep772, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !59
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.is
  %wide.load774 = load <4 x double>, ptr %i.iv, align 8, !tbaa !57, !alias.scope !60
  %i.iw = fsub <4 x double> %wide.masked.gather773, %wide.load774
  %i.ix = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.is
  store <4 x double> %i.iw, ptr %i.ix, align 8, !tbaa !57, !alias.scope !61, !noalias !62
  %index.next775 = add nuw i64 %index770, 4       ; 2 uses
  %vec.ind.next776 = add <4 x i32> %vec.ind771, splat (i32 4)
  %i.iy = icmp eq i64 %index.next775, %n.vec763
  br i1 %i.iy, label %vec.epilog.middle.block777, label %vec.epilog.vector.body769, !llvm.loop !18

vec.epilog.middle.block777:                       ; preds = %vec.epilog.vector.body769
  %cmp.n778 = icmp eq i64 %i.ha, %n.vec763
  br i1 %cmp.n778, label %._crit_edge469, label %.lr.ph468.split.preheader

.lr.ph468.split.preheader:                        ; preds = %iter.check758, %vector.scevcheck703, %vector.memcheck707, %vec.epilog.iter.check760, %vec.epilog.middle.block777
  %indvars.iv531.ph = phi i64 [ %indvars.iv529, %iter.check758 ], [ %indvars.iv529, %vector.scevcheck703 ], [ %indvars.iv529, %vector.memcheck707 ], [ %i.hs, %vec.epilog.iter.check760 ], [ %i.iq, %vec.epilog.middle.block777 ] ; 3 uses
  %i.iz = add i32 %i.gu, 1
  %i.ja = trunc i64 %indvars.iv531.ph to i32      ; 2 uses
  %i.jb = sub i32 %i.iz, %i.ja
  %i.jc = sub i32 %i.gu, %i.ja
  %xtraiter953 = and i32 %i.jb, 3                 ; 2 uses
  %lcmp.mod954.not = icmp eq i32 %xtraiter953, 0
  br i1 %lcmp.mod954.not, label %.lr.ph468.split.prol.loopexit, label %.lr.ph468.split.prol

.lr.ph468.split.prol:                             ; preds = %.lr.ph468.split.preheader, %.lr.ph468.split.prol
  %indvars.iv531.prol = phi i64 [ %indvars.iv.next532.prol, %.lr.ph468.split.prol ], [ %indvars.iv531.ph, %.lr.ph468.split.preheader ] ; 4 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph468.split.prol ], [ 0, %.lr.ph468.split.preheader ]
  %i.jd = trunc nsw i64 %indvars.iv531.prol to i32
  %i.je = mul i32 %i.cu, %i.jd
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.jf
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !57
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv531.prol
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !57
  %i.jk = fsub double %i.jh, %i.jj
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv531.prol
  store double %i.jk, ptr %gep.prol, align 8, !tbaa !57
  %indvars.iv.next532.prol = add i64 %indvars.iv531.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter953
  br i1 %prol.iter.cmp.not, label %.lr.ph468.split.prol.loopexit, label %.lr.ph468.split.prol, !llvm.loop !19

.lr.ph468.split.prol.loopexit:                    ; preds = %.lr.ph468.split.prol, %.lr.ph468.split.preheader
  %indvars.iv531.unr = phi i64 [ %indvars.iv531.ph, %.lr.ph468.split.preheader ], [ %indvars.iv.next532.prol, %.lr.ph468.split.prol ]
  %i.jl = icmp ult i32 %i.jc, 3
  br i1 %i.jl, label %._crit_edge469, label %.lr.ph468.split

.lr.ph468.split.us.preheader:                     ; preds = %.lr.ph468
  %i.jm = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv529
  %i.jn = getelementptr i8, ptr %i.jm, i64 -8     ; 4 uses
  %invariant.gep620 = getelementptr [8 x i8], ptr %i.h, i64 %i.gv ; 4 uses
  %12 = sub i32 %11, %indvar663
  %i.jo = add i32 %i.gu, %12                      ; 2 uses
  %i.jp = zext i32 %i.jo to i64
  %i.jq = add nuw nsw i64 %i.jp, 1                ; 2 uses
  %min.iters.check694 = icmp ult i32 %i.jo, 24
  br i1 %min.iters.check694, label %.lr.ph468.split.us.preheader941, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph468.split.us.preheader
  %i.jr = add i32 %i.gu, %i.gr                    ; 2 uses
  %mul.result = shl i32 %i.jr, 1
  %mul.overflow = icmp slt i32 %i.jr, 0
  %i.js = add i32 %i.gt, %mul.result
  %i.jt = icmp slt i32 %i.js, %i.gt
  %i.ju = or i1 %i.jt, %mul.overflow
  %i.jv = or i1 %ident.check, %i.ju
  br i1 %i.jv, label %.lr.ph468.split.us.preheader941, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.jw = add i32 %i.gu, %i.gl
  %i.jx = zext i32 %i.jw to i64                   ; 2 uses
  %i.jy = shl nuw nsw i64 %i.jx, 3                ; 3 uses
  %scevgep669 = getelementptr i8, ptr %scevgep668, i64 %i.jy ; 3 uses
  %i.jz = shl nsw i64 %i.gv, 3                    ; 2 uses
  %scevgep670 = getelementptr i8, ptr %scevgep667, i64 %i.jz ; 3 uses
  %i.ka = getelementptr i8, ptr %scevgep668, i64 %i.jz
  %scevgep671 = getelementptr i8, ptr %i.ka, i64 %i.jy ; 3 uses
  %i.kb = shl nuw nsw i64 %i.jx, 4
  %i.kc = getelementptr i8, ptr %scevgep674, i64 %i.kb
  %scevgep675 = getelementptr i8, ptr %i.kc, i64 %i.go ; 2 uses
  %scevgep678 = getelementptr i8, ptr %scevgep677, i64 %i.jy ; 2 uses
  %bound0 = icmp ult ptr %scevgep667, %scevgep671
  %bound1 = icmp ult ptr %scevgep670, %scevgep669
  %found.conflict = and i1 %bound0, %bound1
  %bound0679 = icmp ult ptr %scevgep667, %scevgep675
  %bound1680 = icmp ult ptr %scevgep673, %scevgep669
  %found.conflict681 = and i1 %bound0679, %bound1680
  %conflict.rdx = or i1 %found.conflict, %found.conflict681
  %bound0682 = icmp ult ptr %scevgep667, %scevgep678
  %bound1683 = icmp ult ptr %scevgep676, %scevgep669
  %found.conflict684 = and i1 %bound0682, %bound1683
  %conflict.rdx685 = or i1 %conflict.rdx, %found.conflict684
  %bound0686 = icmp ult ptr %scevgep670, %scevgep675
  %bound1687 = icmp ult ptr %scevgep673, %scevgep671
  %found.conflict688 = and i1 %bound0686, %bound1687
  %conflict.rdx689 = or i1 %conflict.rdx685, %found.conflict688
  %bound0690 = icmp ult ptr %scevgep670, %scevgep678
  %bound1691 = icmp ult ptr %scevgep676, %scevgep671
  %found.conflict692 = and i1 %bound0690, %bound1691
  %conflict.rdx693 = or i1 %conflict.rdx689, %found.conflict692
  br i1 %conflict.rdx693, label %.lr.ph468.split.us.preheader941, label %vector.ph695

vector.ph695:                                     ; preds = %vector.memcheck
  %i.kd = and i64 %i.jq, 3                        ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 0
  %i.kf = select i1 %i.ke, i64 4, i64 %i.kd
  %n.vec696 = sub nsw i64 %i.jq, %i.kf            ; 2 uses
  %i.kg = add i64 %indvars.iv529, %n.vec696
  br label %vector.body697

vector.body697:                                   ; preds = %vector.body697, %vector.ph695
  %index698 = phi i64 [ 0, %vector.ph695 ], [ %index.next700, %vector.body697 ] ; 2 uses
  %i.kh = add i64 %indvars.iv529, %index698       ; 4 uses
  %i.ki = trunc i64 %i.kh to i32
  %i.kj = getelementptr [8 x i8], ptr %i.jn, i64 %i.kh
  %wide.load = load <4 x double>, ptr %i.kj, align 8, !tbaa !57, !alias.scope !64 ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.kh ; 2 uses
  %wide.load699 = load <4 x double>, ptr %i.kk, align 8, !tbaa !57, !alias.scope !65, !noalias !66
  %i.kl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load, <4 x double> %wide.load, <4 x double> %wide.load699) ; 2 uses
  store <4 x double> %i.kl, ptr %i.kk, align 8, !tbaa !57, !alias.scope !65, !noalias !66
  %i.km = mul i32 %i.cu, %i.ki
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.kn
  %wide.vec = load <8 x double>, ptr %i.ko, align 8, !tbaa !57, !alias.scope !67
  %strided.vec = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.kp = fsub <4 x double> %strided.vec, %i.kl
  %i.kq = getelementptr [8 x i8], ptr %invariant.gep620, i64 %i.kh
  store <4 x double> %i.kp, ptr %i.kq, align 8, !tbaa !57, !alias.scope !68, !noalias !69
  %index.next700 = add nuw i64 %index698, 4       ; 2 uses
  %i.kr = icmp eq i64 %index.next700, %n.vec696
  br i1 %i.kr, label %.lr.ph468.split.us.preheader941, label %vector.body697, !llvm.loop !25

.lr.ph468.split.us.preheader941:                  ; preds = %vector.body697, %vector.memcheck, %vector.scevcheck, %.lr.ph468.split.us.preheader
  %indvars.iv535.ph = phi i64 [ %indvars.iv529, %vector.memcheck ], [ %indvars.iv529, %vector.scevcheck ], [ %indvars.iv529, %.lr.ph468.split.us.preheader ], [ %i.kg, %vector.body697 ] ; 7 uses
  %i.ks = trunc i64 %indvars.iv535.ph to i32      ; 2 uses
  %i.kt = add i32 %i.gu, %i.ks
  %i.ku = and i32 %i.kt, 1
  %lcmp.mod956.not.not = icmp eq i32 %i.ku, 0
  br i1 %lcmp.mod956.not.not, label %.lr.ph468.split.us.prol, label %.lr.ph468.split.us.prol.loopexit

.lr.ph468.split.us.prol:                          ; preds = %.lr.ph468.split.us.preheader941
  %i.kv = mul nsw i64 %indvars.iv535.ph, %i.cy
  %i.kw = getelementptr [8 x i8], ptr %i.jn, i64 %i.kv
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !57 ; 3 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv535.ph ; 2 uses
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !57
  %i.la = call double @llvm.fmuladd.f64(double %i.kx, double %i.kx, double %i.kz) ; 2 uses
  store double %i.la, ptr %i.ky, align 8, !tbaa !57
  %i.lb = trunc nsw i64 %indvars.iv535.ph to i32
  %i.lc = mul i32 %i.cu, %i.lb
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ld
  %i.lf = load double, ptr %i.le, align 8, !tbaa !57
  %i.lg = fsub double %i.lf, %i.la
  %gep621.prol = getelementptr [8 x i8], ptr %invariant.gep620, i64 %indvars.iv535.ph
  store double %i.lg, ptr %gep621.prol, align 8, !tbaa !57
  %indvars.iv.next536.prol = add i64 %indvars.iv535.ph, 1
  br label %.lr.ph468.split.us.prol.loopexit

.lr.ph468.split.us.prol.loopexit:                 ; preds = %.lr.ph468.split.us.prol, %.lr.ph468.split.us.preheader941
  %.lcssa943.unr = phi double [ poison, %.lr.ph468.split.us.preheader941 ], [ %i.kx, %.lr.ph468.split.us.prol ]
  %indvars.iv535.unr = phi i64 [ %indvars.iv535.ph, %.lr.ph468.split.us.preheader941 ], [ %indvars.iv.next536.prol, %.lr.ph468.split.us.prol ]
  %i.lh = icmp eq i32 %i.gu, %i.ks
  br i1 %i.lh, label %._crit_edge469.split.us, label %.lr.ph468.split.us

.lr.ph468.split.us:                               ; preds = %.lr.ph468.split.us.prol.loopexit, %.lr.ph468.split.us
  %indvars.iv535 = phi i64 [ %indvars.iv.next536.1, %.lr.ph468.split.us ], [ %indvars.iv535.unr, %.lr.ph468.split.us.prol.loopexit ] ; 7 uses
  %i.li = mul nsw i64 %indvars.iv535, %i.cy
  %i.lj = getelementptr [8 x i8], ptr %i.jn, i64 %i.li
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !57 ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv535 ; 2 uses
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !57
  %i.ln = call double @llvm.fmuladd.f64(double %i.lk, double %i.lk, double %i.lm) ; 2 uses
  store double %i.ln, ptr %i.ll, align 8, !tbaa !57
  %i.lo = trunc nsw i64 %indvars.iv535 to i32
  %i.lp = mul i32 %i.cu, %i.lo
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.lq
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !57
  %i.lt = fsub double %i.ls, %i.ln
  %gep621 = getelementptr [8 x i8], ptr %invariant.gep620, i64 %indvars.iv535
  store double %i.lt, ptr %gep621, align 8, !tbaa !57
  %indvars.iv.next536 = add i64 %indvars.iv535, 1 ; 3 uses
  %i.lu = mul nsw i64 %indvars.iv.next536, %i.cy
  %i.lv = getelementptr [8 x i8], ptr %i.jn, i64 %i.lu
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !57 ; 3 uses
  %i.lx = getelementptr [8 x i8], ptr %7, i64 %indvars.iv535 ; 2 uses
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !57
  %i.lz = call double @llvm.fmuladd.f64(double %i.lw, double %i.lw, double %i.ly) ; 2 uses
  store double %i.lz, ptr %i.lx, align 8, !tbaa !57
  %i.ma = trunc nsw i64 %indvars.iv.next536 to i32
  %i.mb = mul i32 %i.cu, %i.ma
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.mc
  %i.me = load double, ptr %i.md, align 8, !tbaa !57
  %i.mf = fsub double %i.me, %i.lz
  %gep621.1 = getelementptr [8 x i8], ptr %invariant.gep620, i64 %indvars.iv.next536
  store double %i.mf, ptr %gep621.1, align 8, !tbaa !57
  %indvars.iv.next536.1 = add i64 %indvars.iv535, 2 ; 2 uses
  %lftr.wideiv538.1 = trunc i64 %indvars.iv.next536.1 to i32
  %exitcond539.not.1 = icmp eq i32 %i.gx, %lftr.wideiv538.1
  br i1 %exitcond539.not.1, label %._crit_edge469.split.us, label %.lr.ph468.split.us, !llvm.loop !26

._crit_edge469.split.us:                          ; preds = %.lr.ph468.split.us, %.lr.ph468.split.us.prol.loopexit
  %.lcssa943 = phi double [ %.lcssa943.unr, %.lr.ph468.split.us.prol.loopexit ], [ %i.lw, %.lr.ph468.split.us ]
  store double %.lcssa943, ptr %i.e, align 8, !tbaa !57
  br label %._crit_edge469

.lr.ph468.split:                                  ; preds = %.lr.ph468.split.prol.loopexit, %.lr.ph468.split
  %indvars.iv531 = phi i64 [ %indvars.iv.next532.3, %.lr.ph468.split ], [ %indvars.iv531.unr, %.lr.ph468.split.prol.loopexit ] ; 8 uses
  %i.mg = trunc nsw i64 %indvars.iv531 to i32
  %i.mh = mul i32 %i.cu, %i.mg
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.mi
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !57
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv531
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !57
  %i.mn = fsub double %i.mk, %i.mm
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv531
  store double %i.mn, ptr %gep, align 8, !tbaa !57
  %indvars.iv.next532 = add i64 %indvars.iv531, 1 ; 2 uses
  %i.mo = trunc nsw i64 %indvars.iv.next532 to i32
  %i.mp = mul i32 %i.cu, %i.mo
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.mq
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !57
  %i.mt = getelementptr [8 x i8], ptr %7, i64 %indvars.iv531
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !57
  %i.mv = fsub double %i.ms, %i.mu
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next532
  store double %i.mv, ptr %gep.1, align 8, !tbaa !57
  %indvars.iv.next532.1 = add i64 %indvars.iv531, 2 ; 3 uses
  %i.mw = trunc nsw i64 %indvars.iv.next532.1 to i32
  %i.mx = mul i32 %i.cu, %i.mw
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.my
  %i.na = load double, ptr %i.mz, align 8, !tbaa !57
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next532.1
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !57
  %i.nd = fsub double %i.na, %i.nc
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next532.1
  store double %i.nd, ptr %gep.2, align 8, !tbaa !57
  %indvars.iv.next532.2 = add i64 %indvars.iv531, 3 ; 3 uses
  %i.ne = trunc nsw i64 %indvars.iv.next532.2 to i32
  %i.nf = mul i32 %i.cu, %i.ne
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ng
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !57
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next532.2
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !57
  %i.nl = fsub double %i.ni, %i.nk
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next532.2
  store double %i.nl, ptr %gep.3, align 8, !tbaa !57
end_hunk_0
begin_hunk_1_@dpstrf_:bb.a
dmaxloc_.exit:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.ac
  %.0.lcssa.i = phi i32 [ %i.no, %bb.ac ], [ %spec.select18.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select18.i.7, %.lr.ph.i ]
  %reass.sub.i = sub i32 %.0.lcssa.i, %i.no
  %i.ph = add i32 %reass.sub.i, %i.nn             ; 2 uses
  %i.pi = add nsw i32 %i.ph, %i.gu
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.pj
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !57 ; 3 uses
  store double %i.pl, ptr %i.g, align 8, !tbaa !57
  %i.pm = fcmp ugt double %i.pl, %.0388
  br i1 %i.pm, label %bb.ad, label %split

bb.ad:                                            ; preds = %dmaxloc_.exit
  %i.pn = call i32 @disnan_(ptr noundef nonnull %i.g) #8
  %.not430 = icmp eq i32 %i.pn, 0
  br i1 %.not430, label %._crit_edge469._crit_edge, label %._crit_edge560

._crit_edge560:                                   ; preds = %bb.ad
  %.pre561 = load double, ptr %i.g, align 8, !tbaa !57
  br label %split

split:                                            ; preds = %dmaxloc_.exit, %._crit_edge560
  %i.po = phi double [ %.pre561, %._crit_edge560 ], [ %i.pl, %dmaxloc_.exit ]
  %i.pp = mul i32 %i.cu, %i.nn
  br label %bb.ax

._crit_edge469._crit_edge:                        ; preds = %._crit_edge469, %bb.ad
  %.4 = phi i32 [ %i.ph, %bb.ad ], [ %.3473, %._crit_edge469 ] ; 11 uses
  %.not431 = icmp eq i32 %.4, %i.nn
  %.pre581 = mul nsw i64 %indvars.iv529, %i.cy    ; 3 uses
  %.pre583 = add nsw i64 %.pre581, %indvars.iv529 ; 2 uses
  br i1 %.not431, label %._crit_edge570, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge469._crit_edge
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.pre583
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !57
  %i.ps = mul nsw i32 %.4, %i.j                   ; 2 uses
  %i.pt = add nsw i32 %i.ps, %.4
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.pu
  store double %i.pr, ptr %i.pv, align 8, !tbaa !57
  %i.pw = trunc i64 %indvars.iv529 to i32
  %i.px = add i32 %i.pw, -1
  store i32 %i.px, ptr %i.c, align 4, !tbaa !51
  %i.py = getelementptr [8 x i8], ptr %i.l, i64 %.pre581
  %i.pz = getelementptr i8, ptr %i.py, i64 8
  %i.qa = sext i32 %i.ps to i64                   ; 2 uses
  %i.qb = getelementptr [8 x i8], ptr %i.l, i64 %i.qa
  %i.qc = getelementptr i8, ptr %i.qb, i64 8
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.pz, ptr noundef nonnull @c__1, ptr noundef %i.qc, ptr noundef nonnull @c__1) #8
  %i.qd = load i32, ptr %1, align 4, !tbaa !51    ; 2 uses
  %i.qe = icmp slt i32 %.4, %i.qd
  br i1 %i.qe, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.qf = sub nsw i32 %i.qd, %.4
  store i32 %i.qf, ptr %i.c, align 4, !tbaa !51
  %i.qg = add nsw i32 %.4, 1
  %i.qh = mul nsw i32 %i.qg, %i.j                 ; 2 uses
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv529
  %i.qk = getelementptr [8 x i8], ptr %i.qj, i64 %i.qi
  %i.ql = add nsw i32 %i.qh, %.4
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.qm
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.qk, ptr noundef nonnull %3, ptr noundef nonnull %i.qn, ptr noundef nonnull %3) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.qo = xor i32 %i.nn, -1
  %i.qp = add i32 %.4, %i.qo
  store i32 %i.qp, ptr %i.c, align 4, !tbaa !51
  %i.qq = add nuw nsw i64 %indvars.iv529, 1       ; 2 uses
  %i.qr = mul nsw i64 %i.qq, %i.cy
  %i.qs = getelementptr [8 x i8], ptr %i.l, i64 %i.qr
  %i.qt = getelementptr [8 x i8], ptr %i.qs, i64 %indvars.iv529
  %i.qu = getelementptr [8 x i8], ptr %i.l, i64 %i.qq
  %i.qv = getelementptr [8 x i8], ptr %i.qu, i64 %i.qa
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.qt, ptr noundef nonnull %3, ptr noundef nonnull %i.qv, ptr noundef nonnull @c__1) #8
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv529 ; 2 uses
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !57
  %i.qy = sext i32 %.4 to i64                     ; 2 uses
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.qy ; 2 uses
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !57
  store double %i.ra, ptr %i.qw, align 8, !tbaa !57
  store double %i.qx, ptr %i.qz, align 8, !tbaa !57
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.qy ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !51
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv529 ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !51
  store i32 %i.re, ptr %i.rb, align 4, !tbaa !51
  store i32 %i.rc, ptr %i.rd, align 4, !tbaa !51
  br label %._crit_edge570

._crit_edge570:                                   ; preds = %._crit_edge469._crit_edge, %bb.ag
  %i.rf = load double, ptr %i.g, align 8, !tbaa !57
  %i.rg = call double @sqrt(double noundef %i.rf) #8 ; 2 uses
  store double %i.rg, ptr %i.g, align 8, !tbaa !57
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.pre583
  store double %i.rg, ptr %i.rh, align 8, !tbaa !57
  %i.ri = load i32, ptr %1, align 4, !tbaa !51    ; 2 uses
  %i.rj = sext i32 %i.ri to i64
  %i.rk = icmp slt i64 %indvars.iv529, %i.rj
  br i1 %i.rk, label %bb.ah, label %._crit_edge569

._crit_edge569:                                   ; preds = %._crit_edge570
  %.pre585 = add nuw nsw i64 %indvars.iv529, 1
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge570
  %i.rl = sub nuw nsw i64 %indvars.iv529, %indvars.iv527
  %i.rm = trunc nsw i64 %i.rl to i32
  store i32 %i.rm, ptr %i.c, align 4, !tbaa !51
  %i.rn = sub nsw i32 %i.ri, %i.nn
  store i32 %i.rn, ptr %i.d, align 4, !tbaa !51
  %i.ro = add nuw nsw i64 %indvars.iv529, 1       ; 2 uses
  %i.rp = mul nsw i64 %i.ro, %i.cy                ; 2 uses
  %gep623 = getelementptr [8 x i8], ptr %invariant.gep622, i64 %i.rp
  %gep625 = getelementptr [8 x i8], ptr %invariant.gep624, i64 %.pre581
  %i.rq = getelementptr [8 x i8], ptr %i.l, i64 %i.rp
  %i.rr = getelementptr [8 x i8], ptr %i.rq, i64 %indvars.iv529 ; 2 uses
  call void @dgemv_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b23, ptr noundef nonnull %gep623, ptr noundef nonnull %3, ptr noundef nonnull %gep625, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b25, ptr noundef nonnull %i.rr, ptr noundef nonnull %3) #8
  %i.rs = load i32, ptr %1, align 4, !tbaa !51
  %i.rt = sub nsw i32 %i.rs, %i.nn
  store i32 %i.rt, ptr %i.c, align 4, !tbaa !51
  %i.ru = load double, ptr %i.g, align 8, !tbaa !57
  %i.rv = fdiv double 1.000000e+00, %i.ru
  store double %i.rv, ptr %i.e, align 8, !tbaa !57
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.rr, ptr noundef nonnull %3) #8
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge569, %bb.ah
  %indvars.iv.next530.pre-phi = phi i64 [ %.pre585, %._crit_edge569 ], [ %i.ro, %bb.ah ] ; 2 uses
  %i.rw = load i32, ptr %i.b, align 4, !tbaa !51
  %i.rx = sext i32 %i.rw to i64
  %.not427.not = icmp slt i64 %indvars.iv529, %i.rx
  %indvar.next664 = add i32 %indvar663, 1
  %indvar.next666 = add i64 %indvar665, 1
  br i1 %.not427.not, label %.lr.ph475, label %._crit_edge476.loopexit, !llvm.loop !30

._crit_edge476.loopexit:                          ; preds = %bb.ai
  %i.ry = trunc nsw i64 %indvars.iv.next530.pre-phi to i32
  %.pre562 = load i32, ptr %i.f, align 4, !tbaa !51
  %.pre563 = load i32, ptr %1, align 4, !tbaa !51
  br label %._crit_edge476

._crit_edge476:                                   ; preds = %._crit_edge476.loopexit, %._crit_edge464
  %i.rz = phi i32 [ %i.eo, %._crit_edge464 ], [ %.pre563, %._crit_edge476.loopexit ] ; 2 uses
  %i.sa = phi i32 [ %i.es, %._crit_edge464 ], [ %.pre562, %._crit_edge476.loopexit ]
  %.0391.lcssa = phi i32 [ %i.ep, %._crit_edge464 ], [ %i.ry, %._crit_edge476.loopexit ] ; 3 uses
  %.3.lcssa = phi i32 [ %.2481, %._crit_edge464 ], [ %.4, %._crit_edge476.loopexit ]
  %i.sb = add nsw i32 %i.sa, %indvars541
  %.not428 = icmp sgt i32 %i.sb, %i.rz
  br i1 %.not428, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge476
  %reass.sub = sub i32 %i.rz, %.0391.lcssa
  %i.sc = add i32 %reass.sub, 1
  store i32 %i.sc, ptr %i.b, align 4, !tbaa !51
  %i.sd = mul nsw i32 %.0391.lcssa, %i.j          ; 2 uses
  %i.se = sext i32 %i.sd to i64
  %i.sf = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv527
  %i.sg = getelementptr [8 x i8], ptr %i.sf, i64 %i.se
  %i.sh = add nsw i32 %i.sd, %.0391.lcssa
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.si
  call void @dsyrk_(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b23, ptr noundef nonnull %i.sg, ptr noundef nonnull %3, ptr noundef nonnull @c_b25, ptr noundef nonnull %i.sj, ptr noundef nonnull %3) #8
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge476, %bb.aj
  %indvars.iv.next528 = add nuw nsw i64 %indvars.iv527, %i.cx ; 2 uses
  %indvars.iv.next523 = add i64 %indvars.iv522, %i.cv
  %.not424 = icmp samesign ugt i64 %indvars.iv.next528, %i.cz
  %indvar.next = add i64 %indvar, 1
  br i1 %.not424, label %.loopexit, label %bb.ab, !llvm.loop !31

bb.al:                                            ; preds = %bb.z
  %i.sk = icmp sgt i32 %i.ct, 0
  br i1 %i.sk, label %.lr.ph508, label %.loopexit

.lr.ph508:                                        ; preds = %bb.al
  %i.sl = add i32 %i.j, 1                         ; 30 uses
  %i.sm = sext i32 %i.j to i64                    ; 5 uses
  %invariant.gep632 = getelementptr [8 x i8], ptr %i.l, i64 %i.sm
  %i.sn = sub nsw i32 0, %i.w                     ; 2 uses
  %i.so = mul i32 %i.w, %i.sl
  %i.sp = zext nneg i32 %i.w to i64               ; 2 uses
  %i.sq = shl nuw nsw i64 %i.sp, 3
  %i.sr = zext i32 %i.sn to i64
  %i.ss = shl nsw i64 %i.k, 3                     ; 4 uses
  %scevgep798 = getelementptr i8, ptr %2, i64 %i.ss
  %i.st = sext i32 %i.sl to i64
  %i.su = shl nsw i64 %i.st, 3
  %i.sv = zext i32 %i.sl to i64                   ; 2 uses
  %i.sw = mul i32 %i.w, %i.sl
  %i.sx = zext i32 %i.sw to i64
  %scevgep800 = getelementptr i8, ptr %2, i64 %i.ss
  %i.sy = shl nsw i64 %i.sm, 3
  %i.sz = add nsw i64 %i.sy, 8                    ; 2 uses
  %i.ta = mul i64 %i.sz, %i.sp
  %i.tb = sub nsw i32 0, %i.w
  %i.tc = zext i32 %i.tb to i64
  %i.td = zext i32 %i.sl to i64                   ; 2 uses
  %i.te = mul i32 %i.w, %i.sl
  %i.tf = zext i32 %i.te to i64
  %i.tg = zext nneg i32 %i.w to i64
  %i.th = shl nuw nsw i64 %i.tg, 3
  %i.ti = sub nsw i32 0, %i.w
  %i.tj = zext i32 %i.ti to i64
  %i.tk = shl nsw i64 %i.k, 3                     ; 2 uses
  %scevgep862 = getelementptr i8, ptr %2, i64 %i.tk
  %i.tl = sext i32 %i.sl to i64
  %i.tm = shl nsw i64 %i.tl, 3
  %i.tn = zext i32 %i.sl to i64                   ; 2 uses
  %i.to = mul i32 %i.w, %i.sl
  %i.tp = zext i32 %i.to to i64
  %scevgep864 = getelementptr i8, ptr %2, i64 %i.tk
  %i.tq = sub nsw i32 0, %i.w
  %i.tr = zext i32 %i.tq to i64
  %i.ts = getelementptr i8, ptr %2, i64 %i.ss
  %i.tt = getelementptr i8, ptr %i.ts, i64 8
  %i.tu = getelementptr i8, ptr %2, i64 %i.ss
  %i.tv = getelementptr i8, ptr %i.tu, i64 16
  %i.tw = icmp slt i32 %i.sl, 0                   ; 2 uses
  %i.tx = select i1 %i.tw, i32 %narrow, i32 %i.sl
  %broadcast.splatinsert883 = insertelement <4 x i32> poison, i32 %i.sl, i64 0
  %broadcast.splat884 = shufflevector <4 x i32> %broadcast.splatinsert883, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert918 = insertelement <4 x i32> poison, i32 %i.sl, i64 0
  %broadcast.splat919 = shufflevector <4 x i32> %broadcast.splatinsert918, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ty = icmp slt i32 %i.sl, 0                   ; 2 uses
  %i.tz = select i1 %i.ty, i32 %narrow, i32 %i.sl
  %broadcast.splatinsert831 = insertelement <4 x i32> poison, i32 %i.sl, i64 0
  %broadcast.splat832 = shufflevector <4 x i32> %broadcast.splatinsert831, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph508, %bb.aw
  %indvar789 = phi i64 [ 0, %.lr.ph508 ], [ %indvar.next790, %bb.aw ] ; 12 uses
  %indvar781 = phi i32 [ 0, %.lr.ph508 ], [ %indvar.next782, %bb.aw ] ; 3 uses
  %.5506 = phi i32 [ %.0.lcssa, %.lr.ph508 ], [ %.6.lcssa, %bb.aw ] ; 2 uses
  %.1390505 = phi i32 [ 1, %.lr.ph508 ], [ %i.aiz, %bb.aw ] ; 12 uses
  %i.ua = mul i64 %indvar789, %i.tr
  %i.ub = mul i64 %i.th, %indvar789               ; 2 uses
  %i.uc = mul i64 %indvar789, %i.tj
  %i.ud = mul i64 %indvar789, %i.tp
  %i.ue = add i64 %i.ud, %i.tn
  %i.uf = mul i64 %indvar789, %i.tc
  %i.ug = mul i64 %indvar789, %i.tf
  %i.uh = add i64 %i.ug, %i.td
  %i.ui = mul i64 %i.sq, %indvar789               ; 2 uses
  %i.uj = mul i64 %indvar789, %i.sr
  %i.uk = mul i64 %indvar789, %i.sx
  %i.ul = add i64 %i.uk, %i.sv
  %i.um = mul i64 %i.ta, %indvar789               ; 2 uses
  %i.un = mul i32 %indvar781, %i.sn
  %i.uo = mul i32 %i.so, %indvar781
  %i.up = add i32 %i.sl, %i.uo
  %i.uq = load i32, ptr %1, align 4, !tbaa !51    ; 3 uses
  %i.ur = sub i32 %i.uq, %.1390505                ; 2 uses
  %i.us = add nsw i32 %i.ur, 1                    ; 2 uses
  store i32 %i.us, ptr %i.c, align 4, !tbaa !51
  %i.ut = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.us) ; 3 uses
  store i32 %i.ut, ptr %i.f, align 4, !tbaa !51
  %.not418484 = icmp sgt i32 %.1390505, %i.uq
  br i1 %.not418484, label %._crit_edge488, label %.lr.ph487.preheader

.lr.ph487.preheader:                              ; preds = %bb.am
  %i.uu = zext nneg i32 %.1390505 to i64
  %i.uv = shl nuw nsw i64 %i.uu, 3
  %scevgep543 = getelementptr i8, ptr %i.h, i64 %i.uv
  %i.uw = zext i32 %i.ur to i64
  %i.ux = shl nuw nsw i64 %i.uw, 3
  %i.uy = add nuw nsw i64 %i.ux, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep543, i8 0, i64 %i.uy, i1 false), !tbaa !57
  br label %._crit_edge488

._crit_edge488:                                   ; preds = %.lr.ph487.preheader, %bb.am
  %i.uz = add nsw i32 %.1390505, -1
  %i.va = add i32 %i.uz, %i.ut                    ; 2 uses
  store i32 %i.va, ptr %i.b, align 4, !tbaa !51
  %.not419495 = icmp sgt i32 %.1390505, %i.va
  br i1 %.not419495, label %._crit_edge501, label %.lr.ph500

.lr.ph500:                                        ; preds = %._crit_edge488
  %i.vb = mul nsw i32 %.1390505, %i.j
  %i.vc = zext nneg i32 %.1390505 to i64          ; 2 uses
  %i.vd = sext i32 %i.vb to i64                   ; 2 uses
  %invariant.gep634 = getelementptr [8 x i8], ptr %i.l, i64 %i.vd
  %invariant.gep636 = getelementptr [8 x i8], ptr %i.l, i64 %i.vd
  %i.ve = getelementptr i8, ptr %7, i64 %i.ub
  %i.vf = getelementptr i8, ptr %7, i64 %i.ub
  %i.vg = getelementptr i8, ptr %i.vf, i64 8
  %i.vh = getelementptr i8, ptr %7, i64 %i.ui
  %i.vi = getelementptr i8, ptr %7, i64 %i.ui
  %i.vj = getelementptr i8, ptr %i.vi, i64 8
  %i.vk = getelementptr i8, ptr %i.tt, i64 %i.um
  %i.vl = getelementptr i8, ptr %i.tv, i64 %i.um
  %13 = trunc i64 %indvar789 to i32
  %14 = mul i32 %i.w, %13
  %15 = xor i32 %14, -1
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph500, %bb.au
  %indvar791 = phi i64 [ 0, %.lr.ph500 ], [ %indvar.next792, %bb.au ] ; 11 uses
  %indvar783 = phi i32 [ 0, %.lr.ph500 ], [ %indvar.next784, %bb.au ] ; 4 uses
  %indvars.iv547 = phi i64 [ %i.vc, %.lr.ph500 ], [ %indvars.iv.next548.pre-phi, %bb.au ] ; 33 uses
  %.6498 = phi i32 [ %.5506, %.lr.ph500 ], [ %.7, %bb.au ]
  %i.vm = xor i64 %indvar791, -1
  %i.vn = add i64 %i.ua, %i.vm
  %i.vo = trunc i64 %i.vn to i32
  %i.vp = shl nuw nsw i64 %indvar791, 3           ; 2 uses
  %scevgep858 = getelementptr i8, ptr %i.ve, i64 %i.vp ; 2 uses
  %scevgep860 = getelementptr i8, ptr %i.vg, i64 %i.vp ; 2 uses
  %i.vq = xor i64 %indvar791, -1
  %i.vr = add i64 %i.uc, %i.vq
  %i.vs = trunc i64 %i.vr to i32
  %i.vt = mul i64 %indvar791, %i.tn
  %i.vu = add i64 %i.ue, %i.vt
  %i.vv = shl i64 %i.vu, 32
  %i.vw = ashr exact i64 %i.vv, 29                ; 2 uses
  %scevgep865 = getelementptr i8, ptr %scevgep864, i64 %i.vw ; 4 uses
  %i.vx = xor i64 %indvar791, -1
  %i.vy = add i64 %i.uf, %i.vx
  %i.vz = trunc i64 %i.vy to i32
  %i.wa = mul i64 %indvar791, %i.td
  %i.wb = add i64 %i.uh, %i.wa
  %i.wc = trunc i64 %i.wb to i32                  ; 4 uses
  %i.wd = shl nuw nsw i64 %indvar791, 3           ; 2 uses
  %scevgep793 = getelementptr i8, ptr %i.vh, i64 %i.wd ; 4 uses
  %scevgep794 = getelementptr i8, ptr %i.vj, i64 %i.wd ; 2 uses
  %i.we = xor i64 %indvar791, -1
  %i.wf = add i64 %i.uj, %i.we
  %i.wg = trunc i64 %i.wf to i32
  %i.wh = mul i64 %indvar791, %i.sv
  %i.wi = add i64 %i.ul, %i.wh
  %i.wj = shl i64 %i.wi, 32
  %i.wk = ashr exact i64 %i.wj, 29                ; 2 uses
  %scevgep801 = getelementptr i8, ptr %scevgep800, i64 %i.wk ; 4 uses
  %i.wl = mul i64 %i.sz, %indvar791               ; 2 uses
  %scevgep805 = getelementptr i8, ptr %i.vk, i64 %i.wl ; 2 uses
  %scevgep806 = getelementptr i8, ptr %i.vl, i64 %i.wl
  %i.wm = xor i32 %indvar783, -1
  %i.wn = add i32 %i.un, %i.wm
  %i.wo = mul i32 %i.sl, %indvar783
  %i.wp = add i32 %i.up, %i.wo                    ; 4 uses
  %i.wq = load i32, ptr %1, align 4, !tbaa !51    ; 16 uses
  store i32 %i.wq, ptr %i.c, align 4, !tbaa !51
  %i.wr = sext i32 %i.wq to i64                   ; 5 uses
  %.not421489 = icmp sgt i64 %indvars.iv547, %i.wr
  br i1 %.not421489, label %._crit_edge493, label %.lr.ph492

.lr.ph492:                                        ; preds = %bb.an
  %i.ws = icmp sgt i64 %indvars.iv547, %i.vc
  %i.wt = add i32 %i.wq, 1                        ; 2 uses
  br i1 %i.ws, label %.lr.ph492.split.us.preheader, label %iter.check912

iter.check912:                                    ; preds = %.lr.ph492
  %invariant.gep626 = getelementptr [8 x i8], ptr %i.h, i64 %i.wr ; 7 uses
  %i.wu = add i32 %i.wq, %i.vo                    ; 3 uses
  %i.wv = zext i32 %i.wu to i64
  %i.ww = add nuw nsw i64 %i.wv, 1                ; 5 uses
  %min.iters.check878 = icmp ult i32 %i.wu, 3
  br i1 %min.iters.check878, label %.lr.ph492.split.preheader, label %vector.scevcheck853

vector.scevcheck853:                              ; preds = %iter.check912
  %i.wx = add i32 %i.wq, %i.vz
  %mul854 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.tx, i32 %i.wx) ; 2 uses
  %mul.result855 = extractvalue { i32, i1 } %mul854, 0 ; 2 uses
  %mul.overflow856 = extractvalue { i32, i1 } %mul854, 1
  %i.wy = add i32 %mul.result855, %i.wc
  %i.wz = sub i32 %i.wc, %mul.result855
  %i.xa = icmp slt i32 %i.wy, %i.wc
  %i.xb = icmp sgt i32 %i.wz, %i.wc
  %i.xc = select i1 %i.tw, i1 %i.xb, i1 %i.xa
  %i.xd = or i1 %i.xc, %mul.overflow856
  br i1 %i.xd, label %.lr.ph492.split.preheader, label %vector.memcheck857

vector.memcheck857:                               ; preds = %vector.scevcheck853
  %i.xe = shl nsw i64 %i.wr, 3                    ; 2 uses
  %scevgep859 = getelementptr i8, ptr %scevgep858, i64 %i.xe ; 2 uses
  %i.xf = add i32 %i.wq, %i.vs
  %i.xg = zext i32 %i.xf to i64                   ; 2 uses
  %i.xh = shl nuw nsw i64 %i.xg, 3                ; 2 uses
  %i.xi = getelementptr i8, ptr %scevgep860, i64 %i.xe
  %scevgep861 = getelementptr i8, ptr %i.xi, i64 %i.xh ; 2 uses
  %i.xj = mul i64 %i.tm, %i.xg
  %i.xk = getelementptr i8, ptr %scevgep862, i64 %i.xj
  %scevgep863 = getelementptr i8, ptr %i.xk, i64 %i.vw ; 4 uses
  %i.xl = icmp ult ptr %scevgep863, %scevgep865
  %umin866 = select i1 %i.xl, ptr %scevgep863, ptr %scevgep865
  %i.xm = icmp ugt ptr %scevgep863, %scevgep865
  %umax867 = select i1 %i.xm, ptr %scevgep863, ptr %scevgep865
  %scevgep868 = getelementptr i8, ptr %umax867, i64 8
  %scevgep869 = getelementptr i8, ptr %scevgep860, i64 %i.xh
  %bound0870 = icmp ult ptr %scevgep859, %scevgep868
  %bound1871 = icmp ult ptr %umin866, %scevgep861
  %found.conflict872 = and i1 %bound0870, %bound1871
  %bound0873 = icmp ult ptr %scevgep859, %scevgep869
  %bound1874 = icmp ult ptr %scevgep858, %scevgep861
  %found.conflict875 = and i1 %bound0873, %bound1874
  %conflict.rdx876 = or i1 %found.conflict872, %found.conflict875
  br i1 %conflict.rdx876, label %.lr.ph492.split.preheader, label %vector.main.loop.iter.check879

vector.main.loop.iter.check879:                   ; preds = %vector.memcheck857
  %min.iters.check880 = icmp ult i32 %i.wu, 15
  br i1 %min.iters.check880, label %vec.epilog.ph916, label %vector.ph881

vector.ph881:                                     ; preds = %vector.main.loop.iter.check879
  %i.xn = and i64 %i.ww, 12
  %n.vec882 = and i64 %i.ww, 8589934576           ; 4 uses
  %i.xo = add i64 %indvars.iv547, %n.vec882       ; 2 uses
  %i.xp = trunc i64 %indvars.iv547 to i32
  %broadcast.splatinsert885 = insertelement <4 x i32> poison, i32 %i.xp, i64 0
  %broadcast.splat886 = shufflevector <4 x i32> %broadcast.splatinsert885, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction887 = add <4 x i32> %broadcast.splat886, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body888

vector.body888:                                   ; preds = %vector.ph881, %vector.body888
  %index889 = phi i64 [ 0, %vector.ph881 ], [ %index.next906, %vector.body888 ] ; 2 uses
  %vec.ind890 = phi <4 x i32> [ %induction887, %vector.ph881 ], [ %vec.ind.next907, %vector.body888 ] ; 5 uses
  %step.add891 = add <4 x i32> %vec.ind890, splat (i32 4)
  %step.add.2892 = add <4 x i32> %vec.ind890, splat (i32 8)
  %step.add.3893 = add <4 x i32> %vec.ind890, splat (i32 12)
  %i.xq = add i64 %indvars.iv547, %index889       ; 2 uses
  %i.xr = mul <4 x i32> %broadcast.splat884, %vec.ind890
  %i.xs = mul <4 x i32> %broadcast.splat884, %step.add891
  %i.xt = mul <4 x i32> %broadcast.splat884, %step.add.2892
  %i.xu = mul <4 x i32> %broadcast.splat884, %step.add.3893
  %i.xv = sext <4 x i32> %i.xr to <4 x i64>
  %i.xw = sext <4 x i32> %i.xs to <4 x i64>
  %i.xx = sext <4 x i32> %i.xt to <4 x i64>
  %i.xy = sext <4 x i32> %i.xu to <4 x i64>
  %wide.gep894 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.xv
  %wide.gep895 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.xw
  %wide.gep896 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.xx
  %wide.gep897 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.xy
  %wide.masked.gather898 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep894, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !70
  %wide.masked.gather899 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep895, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !70
  %wide.masked.gather900 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep896, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !70
  %wide.masked.gather901 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep897, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !70
  %i.xz = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.xq ; 4 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 32
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 64
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 96
  %wide.load902 = load <4 x double>, ptr %i.xz, align 8, !tbaa !57, !alias.scope !71
  %wide.load903 = load <4 x double>, ptr %i.ya, align 8, !tbaa !57, !alias.scope !71
  %wide.load904 = load <4 x double>, ptr %i.yb, align 8, !tbaa !57, !alias.scope !71
  %wide.load905 = load <4 x double>, ptr %i.yc, align 8, !tbaa !57, !alias.scope !71
  %i.yd = fsub <4 x double> %wide.masked.gather898, %wide.load902
  %i.ye = fsub <4 x double> %wide.masked.gather899, %wide.load903
  %i.yf = fsub <4 x double> %wide.masked.gather900, %wide.load904
  %i.yg = fsub <4 x double> %wide.masked.gather901, %wide.load905
  %i.yh = getelementptr [8 x i8], ptr %invariant.gep626, i64 %i.xq ; 4 uses
  %i.yi = getelementptr i8, ptr %i.yh, i64 32
  %i.yj = getelementptr i8, ptr %i.yh, i64 64
  %i.yk = getelementptr i8, ptr %i.yh, i64 96
  store <4 x double> %i.yd, ptr %i.yh, align 8, !tbaa !57, !alias.scope !72, !noalias !73
  store <4 x double> %i.ye, ptr %i.yi, align 8, !tbaa !57, !alias.scope !72, !noalias !73
  store <4 x double> %i.yf, ptr %i.yj, align 8, !tbaa !57, !alias.scope !72, !noalias !73
  store <4 x double> %i.yg, ptr %i.yk, align 8, !tbaa !57, !alias.scope !72, !noalias !73
  %index.next906 = add nuw i64 %index889, 16      ; 2 uses
  %vec.ind.next907 = add <4 x i32> %vec.ind890, splat (i32 16)
  %i.yl = icmp eq i64 %index.next906, %n.vec882
  br i1 %i.yl, label %middle.block908, label %vector.body888, !llvm.loop !36

middle.block908:                                  ; preds = %vector.body888
  %cmp.n909 = icmp eq i64 %i.ww, %n.vec882
  br i1 %cmp.n909, label %._crit_edge493, label %vec.epilog.iter.check914

vec.epilog.iter.check914:                         ; preds = %middle.block908
  %min.epilog.iters.check915 = icmp eq i64 %i.xn, 0
  br i1 %min.epilog.iters.check915, label %.lr.ph492.split.preheader, label %vec.epilog.ph916, !prof !63

vec.epilog.ph916:                                 ; preds = %vector.main.loop.iter.check879, %vec.epilog.iter.check914
  %vec.epilog.resume.val910 = phi i64 [ %n.vec882, %vec.epilog.iter.check914 ], [ 0, %vector.main.loop.iter.check879 ]
  %bc.resume.val911 = phi i64 [ %i.xo, %vec.epilog.iter.check914 ], [ %indvars.iv547, %vector.main.loop.iter.check879 ]
  %n.vec917 = and i64 %i.ww, 8589934588           ; 3 uses
  %i.ym = add i64 %indvars.iv547, %n.vec917
  %i.yn = trunc i64 %bc.resume.val911 to i32
  %broadcast.splatinsert920 = insertelement <4 x i32> poison, i32 %i.yn, i64 0
  %broadcast.splat921 = shufflevector <4 x i32> %broadcast.splatinsert920, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction922 = add <4 x i32> %broadcast.splat921, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body923

vec.epilog.vector.body923:                        ; preds = %vec.epilog.vector.body923, %vec.epilog.ph916
  %index924 = phi i64 [ %vec.epilog.resume.val910, %vec.epilog.ph916 ], [ %index.next929, %vec.epilog.vector.body923 ] ; 2 uses
  %vec.ind925 = phi <4 x i32> [ %induction922, %vec.epilog.ph916 ], [ %vec.ind.next930, %vec.epilog.vector.body923 ] ; 2 uses
  %i.yo = add i64 %indvars.iv547, %index924       ; 2 uses
  %i.yp = mul <4 x i32> %broadcast.splat919, %vec.ind925
  %i.yq = sext <4 x i32> %i.yp to <4 x i64>
  %wide.gep926 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.yq
  %wide.masked.gather927 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep926, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !70
  %i.yr = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.yo
  %wide.load928 = load <4 x double>, ptr %i.yr, align 8, !tbaa !57, !alias.scope !71
  %i.ys = fsub <4 x double> %wide.masked.gather927, %wide.load928
  %i.yt = getelementptr [8 x i8], ptr %invariant.gep626, i64 %i.yo
  store <4 x double> %i.ys, ptr %i.yt, align 8, !tbaa !57, !alias.scope !72, !noalias !73
  %index.next929 = add nuw i64 %index924, 4       ; 2 uses
  %vec.ind.next930 = add <4 x i32> %vec.ind925, splat (i32 4)
  %i.yu = icmp eq i64 %index.next929, %n.vec917
  br i1 %i.yu, label %vec.epilog.middle.block931, label %vec.epilog.vector.body923, !llvm.loop !37

vec.epilog.middle.block931:                       ; preds = %vec.epilog.vector.body923
  %cmp.n932 = icmp eq i64 %i.ww, %n.vec917
  br i1 %cmp.n932, label %._crit_edge493, label %.lr.ph492.split.preheader

.lr.ph492.split.preheader:                        ; preds = %iter.check912, %vector.scevcheck853, %vector.memcheck857, %vec.epilog.iter.check914, %vec.epilog.middle.block931
  %indvars.iv549.ph = phi i64 [ %indvars.iv547, %iter.check912 ], [ %indvars.iv547, %vector.scevcheck853 ], [ %indvars.iv547, %vector.memcheck857 ], [ %i.xo, %vec.epilog.iter.check914 ], [ %i.ym, %vec.epilog.middle.block931 ] ; 3 uses
  %i.yv = add i32 %i.wq, 1
  %i.yw = trunc i64 %indvars.iv549.ph to i32      ; 2 uses
  %i.yx = sub i32 %i.yv, %i.yw
  %i.yy = sub i32 %i.wq, %i.yw
  %xtraiter961 = and i32 %i.yx, 3                 ; 2 uses
  %lcmp.mod962.not = icmp eq i32 %xtraiter961, 0
  br i1 %lcmp.mod962.not, label %.lr.ph492.split.prol.loopexit, label %.lr.ph492.split.prol

.lr.ph492.split.prol:                             ; preds = %.lr.ph492.split.preheader, %.lr.ph492.split.prol
  %indvars.iv549.prol = phi i64 [ %indvars.iv.next550.prol, %.lr.ph492.split.prol ], [ %indvars.iv549.ph, %.lr.ph492.split.preheader ] ; 4 uses
  %prol.iter963 = phi i32 [ %prol.iter963.next, %.lr.ph492.split.prol ], [ 0, %.lr.ph492.split.preheader ]
  %i.yz = trunc nsw i64 %indvars.iv549.prol to i32
  %i.za = mul i32 %i.sl, %i.yz
  %i.zb = sext i32 %i.za to i64
  %i.zc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.zb
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !57
  %i.ze = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv549.prol
  %i.zf = load double, ptr %i.ze, align 8, !tbaa !57
  %i.zg = fsub double %i.zd, %i.zf
  %gep627.prol = getelementptr [8 x i8], ptr %invariant.gep626, i64 %indvars.iv549.prol
  store double %i.zg, ptr %gep627.prol, align 8, !tbaa !57
  %indvars.iv.next550.prol = add nsw i64 %indvars.iv549.prol, 1 ; 2 uses
  %prol.iter963.next = add i32 %prol.iter963, 1   ; 2 uses
  %prol.iter963.cmp.not = icmp eq i32 %prol.iter963.next, %xtraiter961
  br i1 %prol.iter963.cmp.not, label %.lr.ph492.split.prol.loopexit, label %.lr.ph492.split.prol, !llvm.loop !38

.lr.ph492.split.prol.loopexit:                    ; preds = %.lr.ph492.split.prol, %.lr.ph492.split.preheader
  %indvars.iv549.unr = phi i64 [ %indvars.iv549.ph, %.lr.ph492.split.preheader ], [ %indvars.iv.next550.prol, %.lr.ph492.split.prol ]
  %i.zh = icmp ult i32 %i.yy, 3
  br i1 %i.zh, label %._crit_edge493, label %.lr.ph492.split

.lr.ph492.split.us.preheader:                     ; preds = %.lr.ph492
  %i.zi = add nsw i64 %indvars.iv547, -1
  %i.zj = mul nsw i64 %i.zi, %i.sm
  %invariant.gep628 = getelementptr [8 x i8], ptr %i.l, i64 %i.zj ; 6 uses
  %invariant.gep630 = getelementptr [8 x i8], ptr %i.h, i64 %i.wr ; 6 uses
  %16 = sub i32 %15, %indvar783
  %i.zk = add i32 %i.wq, %16                      ; 2 uses
  %i.zl = zext i32 %i.zk to i64
  %i.zm = add nuw nsw i64 %i.zl, 1                ; 2 uses
  %min.iters.check828 = icmp ult i32 %i.zk, 27
  br i1 %min.iters.check828, label %.lr.ph492.split.us.preheader934, label %vector.scevcheck780

vector.scevcheck780:                              ; preds = %.lr.ph492.split.us.preheader
  %i.zn = add i32 %i.wq, %i.wn
  %mul785 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.tz, i32 %i.zn) ; 2 uses
  %mul.result786 = extractvalue { i32, i1 } %mul785, 0 ; 2 uses
  %mul.overflow787 = extractvalue { i32, i1 } %mul785, 1
  %i.zo = add i32 %i.wp, %mul.result786
  %i.zp = sub i32 %i.wp, %mul.result786
  %i.zq = icmp slt i32 %i.zo, %i.wp
  %i.zr = icmp sgt i32 %i.zp, %i.wp
  %i.zs = select i1 %i.ty, i1 %i.zr, i1 %i.zq
  %i.zt = or i1 %i.zs, %mul.overflow787
  br i1 %i.zt, label %.lr.ph492.split.us.preheader934, label %vector.memcheck788

vector.memcheck788:                               ; preds = %vector.scevcheck780
  %i.zu = add i32 %i.wq, %i.wg
  %i.zv = zext i32 %i.zu to i64                   ; 2 uses
  %i.zw = shl nuw nsw i64 %i.zv, 3                ; 3 uses
  %scevgep795 = getelementptr i8, ptr %scevgep794, i64 %i.zw ; 3 uses
  %i.zx = shl nsw i64 %i.wr, 3                    ; 2 uses
  %scevgep796 = getelementptr i8, ptr %scevgep793, i64 %i.zx ; 3 uses
  %i.zy = getelementptr i8, ptr %scevgep794, i64 %i.zx
  %scevgep797 = getelementptr i8, ptr %i.zy, i64 %i.zw ; 3 uses
  %i.zz = mul i64 %i.su, %i.zv
  %i.aaa = getelementptr i8, ptr %scevgep798, i64 %i.zz
  %scevgep799 = getelementptr i8, ptr %i.aaa, i64 %i.wk ; 4 uses
  %i.aab = icmp ult ptr %scevgep799, %scevgep801
  %umin802 = select i1 %i.aab, ptr %scevgep799, ptr %scevgep801 ; 2 uses
  %i.aac = icmp ugt ptr %scevgep799, %scevgep801
  %umax803 = select i1 %i.aac, ptr %scevgep799, ptr %scevgep801
  %scevgep804 = getelementptr i8, ptr %umax803, i64 8 ; 2 uses
  %scevgep807 = getelementptr i8, ptr %scevgep806, i64 %i.zw ; 2 uses
  %bound0808 = icmp ult ptr %scevgep793, %scevgep797
  %bound1809 = icmp ult ptr %scevgep796, %scevgep795
  %found.conflict810 = and i1 %bound0808, %bound1809
  %bound0811 = icmp ult ptr %scevgep793, %scevgep804
  %bound1812 = icmp ult ptr %umin802, %scevgep795
  %found.conflict813 = and i1 %bound0811, %bound1812
  %conflict.rdx814 = or i1 %found.conflict810, %found.conflict813
  %bound0815 = icmp ult ptr %scevgep793, %scevgep807
  %bound1816 = icmp ult ptr %scevgep805, %scevgep795
  %found.conflict817 = and i1 %bound0815, %bound1816
  %conflict.rdx818 = or i1 %conflict.rdx814, %found.conflict817
  %bound0819 = icmp ult ptr %scevgep796, %scevgep804
  %bound1820 = icmp ult ptr %umin802, %scevgep797
  %found.conflict821 = and i1 %bound0819, %bound1820
  %conflict.rdx822 = or i1 %conflict.rdx818, %found.conflict821
  %bound0823 = icmp ult ptr %scevgep796, %scevgep807
  %bound1824 = icmp ult ptr %scevgep805, %scevgep797
  %found.conflict825 = and i1 %bound0823, %bound1824
  %conflict.rdx826 = or i1 %conflict.rdx822, %found.conflict825
  br i1 %conflict.rdx826, label %.lr.ph492.split.us.preheader934, label %vector.ph829

vector.ph829:                                     ; preds = %vector.memcheck788
  %n.vec830 = and i64 %i.zm, 8589934584           ; 3 uses
  %i.aad = add i64 %indvars.iv547, %n.vec830
  %i.aae = trunc i64 %indvars.iv547 to i32
  %broadcast.splatinsert833 = insertelement <4 x i32> poison, i32 %i.aae, i64 0
  %broadcast.splat834 = shufflevector <4 x i32> %broadcast.splatinsert833, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction835 = add <4 x i32> %broadcast.splat834, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body836

vector.body836:                                   ; preds = %vector.body836, %vector.ph829
  %index837 = phi i64 [ 0, %vector.ph829 ], [ %index.next848, %vector.body836 ] ; 2 uses
  %vec.ind838 = phi <4 x i32> [ %induction835, %vector.ph829 ], [ %vec.ind.next849, %vector.body836 ] ; 3 uses
  %step.add839 = add <4 x i32> %vec.ind838, splat (i32 4)
  %i.aaf = add i64 %indvars.iv547, %index837      ; 3 uses
  %i.aag = getelementptr [8 x i8], ptr %invariant.gep628, i64 %i.aaf ; 2 uses
  %i.aah = getelementptr i8, ptr %i.aag, i64 32
  %wide.load840 = load <4 x double>, ptr %i.aag, align 8, !tbaa !57, !alias.scope !74 ; 2 uses
  %wide.load841 = load <4 x double>, ptr %i.aah, align 8, !tbaa !57, !alias.scope !74 ; 3 uses
  %i.aai = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aaf ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 32 ; 2 uses
  %wide.load842 = load <4 x double>, ptr %i.aai, align 8, !tbaa !57, !alias.scope !75, !noalias !76
  %wide.load843 = load <4 x double>, ptr %i.aaj, align 8, !tbaa !57, !alias.scope !75, !noalias !76
  %i.aak = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load840, <4 x double> %wide.load840, <4 x double> %wide.load842) ; 2 uses
  %i.aal = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load841, <4 x double> %wide.load841, <4 x double> %wide.load843) ; 2 uses
  store <4 x double> %i.aak, ptr %i.aai, align 8, !tbaa !57, !alias.scope !75, !noalias !76
  store <4 x double> %i.aal, ptr %i.aaj, align 8, !tbaa !57, !alias.scope !75, !noalias !76
  %i.aam = mul <4 x i32> %broadcast.splat832, %vec.ind838
  %i.aan = mul <4 x i32> %broadcast.splat832, %step.add839
  %i.aao = sext <4 x i32> %i.aam to <4 x i64>
  %i.aap = sext <4 x i32> %i.aan to <4 x i64>
  %wide.gep844 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.aao
  %wide.gep845 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.aap
  %wide.masked.gather846 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep844, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !77
  %wide.masked.gather847 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep845, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !57, !alias.scope !77
  %i.aaq = fsub <4 x double> %wide.masked.gather846, %i.aak
  %i.aar = fsub <4 x double> %wide.masked.gather847, %i.aal
  %i.aas = getelementptr [8 x i8], ptr %invariant.gep630, i64 %i.aaf ; 2 uses
  %i.aat = getelementptr i8, ptr %i.aas, i64 32
  store <4 x double> %i.aaq, ptr %i.aas, align 8, !tbaa !57, !alias.scope !78, !noalias !79
  store <4 x double> %i.aar, ptr %i.aat, align 8, !tbaa !57, !alias.scope !78, !noalias !79
  %index.next848 = add nuw i64 %index837, 8       ; 2 uses
  %vec.ind.next849 = add <4 x i32> %vec.ind838, splat (i32 8)
  %i.aau = icmp eq i64 %index.next848, %n.vec830
  br i1 %i.aau, label %middle.block850, label %vector.body836, !llvm.loop !44

middle.block850:                                  ; preds = %vector.body836
  %i.aav = extractelement <4 x double> %wide.load841, i64 3
  %cmp.n851 = icmp eq i64 %i.zm, %n.vec830
  br i1 %cmp.n851, label %._crit_edge493.split.us, label %.lr.ph492.split.us.preheader934

.lr.ph492.split.us.preheader934:                  ; preds = %vector.memcheck788, %vector.scevcheck780, %.lr.ph492.split.us.preheader, %middle.block850
  %indvars.iv554.ph = phi i64 [ %indvars.iv547, %vector.memcheck788 ], [ %indvars.iv547, %vector.scevcheck780 ], [ %indvars.iv547, %.lr.ph492.split.us.preheader ], [ %i.aad, %middle.block850 ] ; 3 uses
  %i.aaw = add i32 %i.wq, 1
  %i.aax = trunc i64 %indvars.iv554.ph to i32     ; 2 uses
  %i.aay = sub i32 %i.aaw, %i.aax
  %i.aaz = sub i32 %i.wq, %i.aax
  %xtraiter964 = and i32 %i.aay, 3                ; 2 uses
  %lcmp.mod965.not = icmp eq i32 %xtraiter964, 0
  br i1 %lcmp.mod965.not, label %.lr.ph492.split.us.prol.loopexit, label %.lr.ph492.split.us.prol

.lr.ph492.split.us.prol:                          ; preds = %.lr.ph492.split.us.preheader934, %.lr.ph492.split.us.prol
  %indvars.iv554.prol = phi i64 [ %indvars.iv.next555.prol, %.lr.ph492.split.us.prol ], [ %indvars.iv554.ph, %.lr.ph492.split.us.preheader934 ] ; 5 uses
  %prol.iter966 = phi i32 [ %prol.iter966.next, %.lr.ph492.split.us.prol ], [ 0, %.lr.ph492.split.us.preheader934 ]
  %gep629.prol = getelementptr [8 x i8], ptr %invariant.gep628, i64 %indvars.iv554.prol
  %i.aba = load double, ptr %gep629.prol, align 8, !tbaa !57 ; 3 uses
  %i.abb = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv554.prol ; 2 uses
  %i.abc = load double, ptr %i.abb, align 8, !tbaa !57
  %i.abd = call double @llvm.fmuladd.f64(double %i.aba, double %i.aba, double %i.abc) ; 2 uses
  store double %i.abd, ptr %i.abb, align 8, !tbaa !57
  %i.abe = trunc nsw i64 %indvars.iv554.prol to i32
  %i.abf = mul i32 %i.sl, %i.abe
  %i.abg = sext i32 %i.abf to i64
  %i.abh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.abg
  %i.abi = load double, ptr %i.abh, align 8, !tbaa !57
  %i.abj = fsub double %i.abi, %i.abd
  %gep631.prol = getelementptr [8 x i8], ptr %invariant.gep630, i64 %indvars.iv554.prol
  store double %i.abj, ptr %gep631.prol, align 8, !tbaa !57
  %indvars.iv.next555.prol = add nsw i64 %indvars.iv554.prol, 1 ; 2 uses
  %prol.iter966.next = add i32 %prol.iter966, 1   ; 2 uses
  %prol.iter966.cmp.not = icmp eq i32 %prol.iter966.next, %xtraiter964
  br i1 %prol.iter966.cmp.not, label %.lr.ph492.split.us.prol.loopexit, label %.lr.ph492.split.us.prol, !llvm.loop !45

.lr.ph492.split.us.prol.loopexit:                 ; preds = %.lr.ph492.split.us.prol, %.lr.ph492.split.us.preheader934
  %.lcssa935.unr = phi double [ poison, %.lr.ph492.split.us.preheader934 ], [ %i.aba, %.lr.ph492.split.us.prol ]
  %indvars.iv554.unr = phi i64 [ %indvars.iv554.ph, %.lr.ph492.split.us.preheader934 ], [ %indvars.iv.next555.prol, %.lr.ph492.split.us.prol ]
  %i.abk = icmp ult i32 %i.aaz, 3
  br i1 %i.abk, label %._crit_edge493.split.us, label %.lr.ph492.split.us

.lr.ph492.split.us:                               ; preds = %.lr.ph492.split.us.prol.loopexit, %.lr.ph492.split.us
  %indvars.iv554 = phi i64 [ %indvars.iv.next555.3, %.lr.ph492.split.us ], [ %indvars.iv554.unr, %.lr.ph492.split.us.prol.loopexit ] ; 9 uses
  %gep629 = getelementptr [8 x i8], ptr %invariant.gep628, i64 %indvars.iv554
  %i.abl = load double, ptr %gep629, align 8, !tbaa !57 ; 2 uses
  %i.abm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv554 ; 2 uses
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !57
  %i.abo = call double @llvm.fmuladd.f64(double %i.abl, double %i.abl, double %i.abn) ; 2 uses
  store double %i.abo, ptr %i.abm, align 8, !tbaa !57
  %i.abp = trunc nsw i64 %indvars.iv554 to i32
  %i.abq = mul i32 %i.sl, %i.abp
  %i.abr = sext i32 %i.abq to i64
  %i.abs = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.abr
  %i.abt = load double, ptr %i.abs, align 8, !tbaa !57
  %i.abu = fsub double %i.abt, %i.abo
  %gep631 = getelementptr [8 x i8], ptr %invariant.gep630, i64 %indvars.iv554
  store double %i.abu, ptr %gep631, align 8, !tbaa !57
  %indvars.iv.next555 = add nsw i64 %indvars.iv554, 1 ; 3 uses
  %gep629.1 = getelementptr [8 x i8], ptr %invariant.gep628, i64 %indvars.iv.next555
  %i.abv = load double, ptr %gep629.1, align 8, !tbaa !57 ; 2 uses
  %i.abw = getelementptr [8 x i8], ptr %7, i64 %indvars.iv554 ; 2 uses
  %i.abx = load double, ptr %i.abw, align 8, !tbaa !57
  %i.aby = call double @llvm.fmuladd.f64(double %i.abv, double %i.abv, double %i.abx) ; 2 uses
  store double %i.aby, ptr %i.abw, align 8, !tbaa !57
  %i.abz = trunc nsw i64 %indvars.iv.next555 to i32
  %i.aca = mul i32 %i.sl, %i.abz
  %i.acb = sext i32 %i.aca to i64
  %i.acc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.acb
  %i.acd = load double, ptr %i.acc, align 8, !tbaa !57
  %i.ace = fsub double %i.acd, %i.aby
  %gep631.1 = getelementptr [8 x i8], ptr %invariant.gep630, i64 %indvars.iv.next555
  store double %i.ace, ptr %gep631.1, align 8, !tbaa !57
  %indvars.iv.next555.1 = add nsw i64 %indvars.iv554, 2 ; 4 uses
  %gep629.2 = getelementptr [8 x i8], ptr %invariant.gep628, i64 %indvars.iv.next555.1
  %i.acf = load double, ptr %gep629.2, align 8, !tbaa !57 ; 2 uses
  %i.acg = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.next555.1 ; 2 uses
  %i.ach = load double, ptr %i.acg, align 8, !tbaa !57
  %i.aci = call double @llvm.fmuladd.f64(double %i.acf, double %i.acf, double %i.ach) ; 2 uses
  store double %i.aci, ptr %i.acg, align 8, !tbaa !57
  %i.acj = trunc nsw i64 %indvars.iv.next555.1 to i32
  %i.ack = mul i32 %i.sl, %i.acj
  %i.acl = sext i32 %i.ack to i64
  %i.acm = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.acl
  %i.acn = load double, ptr %i.acm, align 8, !tbaa !57
  %i.aco = fsub double %i.acn, %i.aci
  %gep631.2 = getelementptr [8 x i8], ptr %invariant.gep630, i64 %indvars.iv.next555.1
  store double %i.aco, ptr %gep631.2, align 8, !tbaa !57
  %indvars.iv.next555.2 = add nsw i64 %indvars.iv554, 3 ; 4 uses
  %gep629.3 = getelementptr [8 x i8], ptr %invariant.gep628, i64 %indvars.iv.next555.2
  %i.acp = load double, ptr %gep629.3, align 8, !tbaa !57 ; 3 uses
  %i.acq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.next555.2 ; 2 uses
  %i.acr = load double, ptr %i.acq, align 8, !tbaa !57
  %i.acs = call double @llvm.fmuladd.f64(double %i.acp, double %i.acp, double %i.acr) ; 2 uses
  store double %i.acs, ptr %i.acq, align 8, !tbaa !57
  %i.act = trunc nsw i64 %indvars.iv.next555.2 to i32
  %i.acu = mul i32 %i.sl, %i.act
end_hunk_1
