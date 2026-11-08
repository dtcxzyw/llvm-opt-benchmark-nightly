Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dorghr?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@c__1 = internal global i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"DORGQR\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"DORGHR\00", align 1

; Function Attrs: nounwind uwtable
define void @dorghr_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef captures(none) initializes((0, 4)) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = load i32, ptr %4, align 4, !tbaa !27     ; 17 uses
  %narrow = xor i32 %i.d, -1
  %i.e = sext i32 %narrow to i64                  ; 4 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %3, i64 %i.e ; 27 uses
  %i.g = getelementptr inbounds i8, ptr %5, i64 -8
  store i32 0, ptr %8, align 4, !tbaa !27
  %i.h = load i32, ptr %2, align 4, !tbaa !27     ; 3 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !27     ; 4 uses
  %i.j = sub nsw i32 %i.h, %i.i                   ; 2 uses
  store i32 %i.j, ptr %i.c, align 4, !tbaa !27
  %i.k = load i32, ptr %7, align 4, !tbaa !27     ; 2 uses
  %i.l = icmp eq i32 %i.k, -1                     ; 2 uses
  %i.m = load i32, ptr %0, align 4, !tbaa !27     ; 4 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.thread140.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp slt i32 %i.i, 1
  br i1 %i.o, label %.thread140.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.m, i32 1) ; 2 uses
  %i.p = icmp samesign ugt i32 %i.i, %spec.select
  br i1 %i.p, label %.thread140.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %. = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.m)
  %i.q = icmp slt i32 %i.h, %.
  %i.r = icmp samesign ugt i32 %i.h, %i.m
  %or.cond146 = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond146, label %.thread140.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %4, align 4, !tbaa !27
  %i.t = icmp slt i32 %i.s, %spec.select
  br i1 %i.t, label %.thread140.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %i.v = icmp sge i32 %i.k, %i.u
  %or.cond = or i1 %i.v, %i.l
  br i1 %or.cond, label %.thread, label %.thread140.sink.split

.thread:                                          ; preds = %bb.f
  %i.w = call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #7
  %i.x = load i32, ptr %i.c, align 4, !tbaa !27   ; 2 uses
  %i.y = call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %i.z = mul nsw i32 %i.y, %i.w
  %i.aa = sitofp i32 %i.z to double               ; 2 uses
  store double %i.aa, ptr %6, align 8, !tbaa !29
  %.pr139.pr = load i32, ptr %8, align 4, !tbaa !27 ; 2 uses
  %.not128 = icmp eq i32 %.pr139.pr, 0
  br i1 %.not128, label %bb.g, label %.thread140

.thread140.sink.split:                            ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -3, %bb.d ], [ -5, %bb.e ], [ -2, %bb.b ], [ -2, %bb.c ], [ -8, %bb.f ] ; 2 uses
  store i32 %.sink, ptr %8, align 4, !tbaa !27
  br label %.thread140

.thread140:                                       ; preds = %.thread140.sink.split, %.thread
  %i.ab = phi i32 [ %.pr139.pr, %.thread ], [ %.sink, %.thread140.sink.split ]
  %i.ac = sub nsw i32 0, %i.ab
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !27
  %i.ad = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 6) #7 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %.thread
  br i1 %i.l, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr %0, align 4, !tbaa !27    ; 12 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double 1.000000e+00, ptr %6, align 8, !tbaa !29
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %1, align 4, !tbaa !27    ; 8 uses
  %i.ah = add i32 %i.ag, 1                        ; 4 uses
  %i.ai = load i32, ptr %2, align 4, !tbaa !27    ; 24 uses
  %.not129.not158 = icmp sgt i32 %i.ai, %i.ag
  br i1 %.not129.not158, label %.lr.ph160, label %._crit_edge

.lr.ph160:                                        ; preds = %bb.j
  %.not136.not155 = icmp slt i32 %i.ai, %i.ae
  %i.aj = shl nsw i64 %i.e, 3
  %scevgep190 = getelementptr i8, ptr %3, i64 %i.aj ; 3 uses
  %i.ak = mul i32 %i.d, %i.ai
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  br i1 %.not136.not155, label %.lr.ph160.split.us.preheader, label %.lr.ph160.split.preheader

.lr.ph160.split.preheader:                        ; preds = %.lr.ph160
  %9 = sext i32 %i.ai to i64                      ; 2 uses
  %i.am = sext i32 %i.d to i64                    ; 3 uses
  %i.an = sub i32 %i.ai, %i.ag
  %i.ao = shl nsw i64 %i.am, 3
  %i.ap = add nsw i64 %i.ao, -1
  %diff.check = icmp ult i64 %i.ap, 127
  br label %.lr.ph160.split

.lr.ph160.split.us.preheader:                     ; preds = %.lr.ph160
  %i.aq = add i32 %i.d, 1
  %i.ar = mul i32 %i.ai, %i.aq
  %i.as = add i32 %i.ar, 1
  %i.at = xor i32 %i.ai, -1
  %i.au = add i32 %i.ae, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 8
  %10 = sext i32 %i.ai to i64                     ; 2 uses
  %i.ay = sext i32 %i.d to i64                    ; 3 uses
  %i.az = sub i32 %i.ai, %i.ag
  %i.ba = shl nsw i64 %i.ay, 3
  %i.bb = add nsw i64 %i.ba, -1
  %diff.check275 = icmp ult i64 %i.bb, 127
  br label %.lr.ph160.split.us

.lr.ph160.split.us:                               ; preds = %.lr.ph160.split.us.preheader, %.preheader148.us
  %indvars.iv201.a = phi i64 [ %10, %.lr.ph160.split.us.preheader ], [ %indvars.iv.next202.a, %.preheader148.us ] ; 9 uses
  %indvar191 = phi i32 [ 0, %.lr.ph160.split.us.preheader ], [ %indvar.next192, %.preheader148.us ] ; 4 uses
  %i.bc = add i32 %indvar191, -1                  ; 3 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %i.bd, 1                ; 5 uses
  %i.bf = mul i32 %i.d, %indvar191                ; 2 uses
  %i.bg = sub i32 %i.as, %i.bf
  %i.bh = sext i32 %i.bg to i64
  %i.bi = shl nsw i64 %i.bh, 3
  %scevgep209 = getelementptr i8, ptr %scevgep190, i64 %i.bi
  %indvars.iv.next202.a = add nsw i64 %indvars.iv201.a, -1 ; 2 uses
  %.not134.not150.us = icmp sgt i64 %indvars.iv201.a, 1
  br i1 %.not134.not150.us, label %.lr.ph.us, label %.preheader149.us

vec.epilog.scalar.ph291:                          ; preds = %vec.epilog.scalar.ph291.prol.loopexit, %vec.epilog.scalar.ph291
  %indvars.iv203 = phi i64 [ %indvars.iv.next204.7, %vec.epilog.scalar.ph291 ], [ %indvars.iv203.unr, %vec.epilog.scalar.ph291.prol.loopexit ] ; 8 uses
  %indvars.iv.next204 = add nsw i64 %indvars.iv203, 1 ; 2 uses
  %gep256 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204
  %i.bj = load double, ptr %gep256, align 8, !tbaa !29
  %gep258 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204
  store double %i.bj, ptr %gep258, align 8, !tbaa !29
  %indvars.iv.next204.1 = add nsw i64 %indvars.iv203, 2 ; 2 uses
  %gep256.1 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.1
  %i.bk = load double, ptr %gep256.1, align 8, !tbaa !29
  %gep258.1 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.1
  store double %i.bk, ptr %gep258.1, align 8, !tbaa !29
  %indvars.iv.next204.2 = add nsw i64 %indvars.iv203, 3 ; 2 uses
  %gep256.2 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.2
  %i.bl = load double, ptr %gep256.2, align 8, !tbaa !29
  %gep258.2 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.2
  store double %i.bl, ptr %gep258.2, align 8, !tbaa !29
  %indvars.iv.next204.3 = add nsw i64 %indvars.iv203, 4 ; 2 uses
  %gep256.3 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.3
  %i.bm = load double, ptr %gep256.3, align 8, !tbaa !29
  %gep258.3 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.3
  store double %i.bm, ptr %gep258.3, align 8, !tbaa !29
  %indvars.iv.next204.4 = add nsw i64 %indvars.iv203, 5 ; 2 uses
  %gep256.4 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.4
  %i.bn = load double, ptr %gep256.4, align 8, !tbaa !29
  %gep258.4 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.4
  store double %i.bn, ptr %gep258.4, align 8, !tbaa !29
  %indvars.iv.next204.5 = add nsw i64 %indvars.iv203, 6 ; 2 uses
  %gep256.5 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.5
  %i.bo = load double, ptr %gep256.5, align 8, !tbaa !29
  %gep258.5 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.5
  store double %i.bo, ptr %gep258.5, align 8, !tbaa !29
  %indvars.iv.next204.6 = add nsw i64 %indvars.iv203, 7 ; 2 uses
  %gep256.6 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.6
  %i.bp = load double, ptr %gep256.6, align 8, !tbaa !29
  %gep258.6 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.6
  store double %i.bp, ptr %gep258.6, align 8, !tbaa !29
  %indvars.iv.next204.7 = add nsw i64 %indvars.iv203, 8 ; 4 uses
  %gep256.7 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.7
  %i.bq = load double, ptr %gep256.7, align 8, !tbaa !29
  %gep258.7 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.7
  store double %i.bq, ptr %gep258.7, align 8, !tbaa !29
  %lftr.wideiv206.7 = trunc i64 %indvars.iv.next204.7 to i32
  %exitcond207.not.7 = icmp eq i32 %i.ai, %lftr.wideiv206.7
  br i1 %exitcond207.not.7, label %.preheader148.us, label %vec.epilog.scalar.ph291, !llvm.loop !8

.preheader148.us:                                 ; preds = %vec.epilog.scalar.ph291.prol.loopexit, %vec.epilog.scalar.ph291, %middle.block287, %vec.epilog.middle.block300, %.preheader149.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep209, i8 0, i64 %i.ax, i1 false), !tbaa !29
  %indvar.next192 = add i32 %indvar191, 1         ; 2 uses
  %exitcond214.not = icmp eq i32 %indvar.next192, %i.az
  br i1 %exitcond214.not, label %._crit_edge, label %.lr.ph160.split.us, !llvm.loop !9

.preheader149.us:                                 ; preds = %.lr.ph.us, %.lr.ph160.split.us
  %.not135.not152.us = icmp slt i64 %indvars.iv201.a, %10
  br i1 %.not135.not152.us, label %iter.check289, label %.preheader148.us

.lr.ph.us:                                        ; preds = %.lr.ph160.split.us
  %i.br = xor i32 %indvar191, -1
  %i.bs = add i32 %i.ai, %i.br
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = sub i32 %i.al, %i.bf
  %i.bw = sext i32 %i.bv to i64
  %i.bx = shl nsw i64 %i.bw, 3
  %scevgep193 = getelementptr i8, ptr %scevgep190, i64 %i.bx
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep193, i8 0, i64 %i.bu, i1 false), !tbaa !29
  br label %.preheader149.us

iter.check289:                                    ; preds = %.preheader149.us
  %i.by = mul nsw i64 %indvars.iv.next202.a, %i.ay
  %i.bz = mul nsw i64 %indvars.iv201.a, %i.ay
  %invariant.gep255 = getelementptr [8 x i8], ptr %i.f, i64 %i.by ; 11 uses
  %invariant.gep257 = getelementptr [8 x i8], ptr %i.f, i64 %i.bz ; 11 uses
  %min.iters.check273 = icmp ult i32 %i.bc, 3
  %or.cond383 = select i1 %min.iters.check273, i1 true, i1 %diff.check275
  br i1 %or.cond383, label %vec.epilog.scalar.ph291.preheader, label %vector.main.loop.iter.check276

vector.main.loop.iter.check276:                   ; preds = %iter.check289
  %min.iters.check277 = icmp ult i32 %i.bc, 15
  br i1 %min.iters.check277, label %vec.epilog.ph293, label %vector.ph278

vector.ph278:                                     ; preds = %vector.main.loop.iter.check276
  %i.ca = and i64 %i.be, 12
  %n.vec279 = and i64 %i.be, 8589934576           ; 4 uses
  %i.cb = add i64 %indvars.iv201.a, %n.vec279
  %invariant.op402 = add i64 %indvars.iv201.a, 1
  br label %vector.body280

vector.body280:                                   ; preds = %vector.ph278, %vector.body280
  %index281 = phi i64 [ 0, %vector.ph278 ], [ %index.next286, %vector.body280 ] ; 2 uses
  %.reass403 = add i64 %index281, %invariant.op402 ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %invariant.gep255, i64 %.reass403 ; 4 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 32
  %i.ce = getelementptr i8, ptr %i.cc, i64 64
  %i.cf = getelementptr i8, ptr %i.cc, i64 96
  %wide.load282 = load <4 x double>, ptr %i.cc, align 8, !tbaa !29
  %wide.load283 = load <4 x double>, ptr %i.cd, align 8, !tbaa !29
  %wide.load284 = load <4 x double>, ptr %i.ce, align 8, !tbaa !29
  %wide.load285 = load <4 x double>, ptr %i.cf, align 8, !tbaa !29
  %i.cg = getelementptr [8 x i8], ptr %invariant.gep257, i64 %.reass403 ; 4 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 32
  %i.ci = getelementptr i8, ptr %i.cg, i64 64
  %i.cj = getelementptr i8, ptr %i.cg, i64 96
  store <4 x double> %wide.load282, ptr %i.cg, align 8, !tbaa !29
  store <4 x double> %wide.load283, ptr %i.ch, align 8, !tbaa !29
  store <4 x double> %wide.load284, ptr %i.ci, align 8, !tbaa !29
  store <4 x double> %wide.load285, ptr %i.cj, align 8, !tbaa !29
  %index.next286 = add nuw i64 %index281, 16      ; 2 uses
  %i.ck = icmp eq i64 %index.next286, %n.vec279
  br i1 %i.ck, label %middle.block287, label %vector.body280, !llvm.loop !10

middle.block287:                                  ; preds = %vector.body280
  %cmp.n288 = icmp eq i64 %i.be, %n.vec279
  br i1 %cmp.n288, label %.preheader148.us, label %vec.epilog.iter.check290

vec.epilog.iter.check290:                         ; preds = %middle.block287
  %min.epilog.iters.check292 = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check292, label %vec.epilog.scalar.ph291.preheader, label %vec.epilog.ph293, !prof !33

vec.epilog.ph293:                                 ; preds = %vector.main.loop.iter.check276, %vec.epilog.iter.check290
  %vec.epilog.resume.val294 = phi i64 [ %n.vec279, %vec.epilog.iter.check290 ], [ 0, %vector.main.loop.iter.check276 ]
  %n.vec295 = and i64 %i.be, 8589934588           ; 3 uses
  %i.cl = add i64 %indvars.iv201.a, %n.vec295
  %invariant.op404 = add i64 %indvars.iv201.a, 1
  br label %vec.epilog.vector.body296

vec.epilog.vector.body296:                        ; preds = %vec.epilog.vector.body296, %vec.epilog.ph293
  %index297 = phi i64 [ %vec.epilog.resume.val294, %vec.epilog.ph293 ], [ %index.next299, %vec.epilog.vector.body296 ] ; 2 uses
  %.reass405 = add i64 %index297, %invariant.op404 ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %invariant.gep255, i64 %.reass405
  %wide.load298 = load <4 x double>, ptr %i.cm, align 8, !tbaa !29
  %i.cn = getelementptr [8 x i8], ptr %invariant.gep257, i64 %.reass405
  store <4 x double> %wide.load298, ptr %i.cn, align 8, !tbaa !29
  %index.next299 = add nuw i64 %index297, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next299, %n.vec295
  br i1 %i.co, label %vec.epilog.middle.block300, label %vec.epilog.vector.body296, !llvm.loop !11

vec.epilog.middle.block300:                       ; preds = %vec.epilog.vector.body296
  %cmp.n301 = icmp eq i64 %i.be, %n.vec295
  br i1 %cmp.n301, label %.preheader148.us, label %vec.epilog.scalar.ph291.preheader

vec.epilog.scalar.ph291.preheader:                ; preds = %iter.check289, %vec.epilog.iter.check290, %vec.epilog.middle.block300
  %indvars.iv203.ph = phi i64 [ %indvars.iv201.a, %iter.check289 ], [ %i.cb, %vec.epilog.iter.check290 ], [ %i.cl, %vec.epilog.middle.block300 ] ; 3 uses
  %i.cp = trunc i64 %indvars.iv203.ph to i32      ; 2 uses
  %i.cq = sub i32 %i.ai, %i.cp
  %xtraiter388 = and i32 %i.cq, 7                 ; 2 uses
  %lcmp.mod389.not = icmp eq i32 %xtraiter388, 0
  br i1 %lcmp.mod389.not, label %vec.epilog.scalar.ph291.prol.loopexit, label %vec.epilog.scalar.ph291.prol

vec.epilog.scalar.ph291.prol:                     ; preds = %vec.epilog.scalar.ph291.preheader, %vec.epilog.scalar.ph291.prol
  %indvars.iv203.prol = phi i64 [ %indvars.iv.next204.prol, %vec.epilog.scalar.ph291.prol ], [ %indvars.iv203.ph, %vec.epilog.scalar.ph291.preheader ]
  %prol.iter390 = phi i32 [ %prol.iter390.next, %vec.epilog.scalar.ph291.prol ], [ 0, %vec.epilog.scalar.ph291.preheader ]
  %indvars.iv.next204.prol = add nsw i64 %indvars.iv203.prol, 1 ; 4 uses
  %gep256.prol = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.prol
  %i.cr = load double, ptr %gep256.prol, align 8, !tbaa !29
  %gep258.prol = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.prol
  store double %i.cr, ptr %gep258.prol, align 8, !tbaa !29
  %prol.iter390.next = add i32 %prol.iter390, 1   ; 2 uses
  %prol.iter390.cmp.not = icmp eq i32 %prol.iter390.next, %xtraiter388
  br i1 %prol.iter390.cmp.not, label %vec.epilog.scalar.ph291.prol.loopexit, label %vec.epilog.scalar.ph291.prol, !llvm.loop !12

vec.epilog.scalar.ph291.prol.loopexit:            ; preds = %vec.epilog.scalar.ph291.prol, %vec.epilog.scalar.ph291.preheader
  %indvars.iv203.unr = phi i64 [ %indvars.iv203.ph, %vec.epilog.scalar.ph291.preheader ], [ %indvars.iv.next204.prol, %vec.epilog.scalar.ph291.prol ]
  %i.cs = sub i32 %i.cp, %i.ai
  %i.ct = icmp ugt i32 %i.cs, -8
  br i1 %i.ct, label %.preheader148.us, label %vec.epilog.scalar.ph291

.lr.ph160.split:                                  ; preds = %.lr.ph160.split.preheader, %.preheader148
  %indvars.iv.a = phi i64 [ %9, %.lr.ph160.split.preheader ], [ %indvars.iv.next.a, %.preheader148 ] ; 9 uses
  %indvar = phi i32 [ 0, %.lr.ph160.split.preheader ], [ %indvar.next, %.preheader148 ] ; 4 uses
  %i.cu = add i32 %indvar, -1                     ; 3 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 5 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1 ; 2 uses
  %.not134.not150 = icmp sgt i64 %indvars.iv.a, 1
  br i1 %.not134.not150, label %.lr.ph, label %.preheader149

.lr.ph:                                           ; preds = %.lr.ph160.split
  %i.cx = xor i32 %indvar, -1
  %i.cy = add i32 %i.ai, %i.cx
  %i.cz = zext i32 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = mul i32 %i.d, %indvar
  %i.dc = sub i32 %i.al, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = shl nsw i64 %i.dd, 3
  %scevgep179 = getelementptr i8, ptr %scevgep190, i64 %i.de
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep179, i8 0, i64 %i.da, i1 false), !tbaa !29
  br label %.preheader149

.preheader149:                                    ; preds = %.lr.ph, %.lr.ph160.split
  %.not135.not152 = icmp slt i64 %indvars.iv.a, %9
  br i1 %.not135.not152, label %iter.check, label %.preheader148

iter.check:                                       ; preds = %.preheader149
  %i.df = mul nsw i64 %indvars.iv.next.a, %i.am
  %i.dg = mul nsw i64 %indvars.iv.a, %i.am
  %invariant.gep = getelementptr [8 x i8], ptr %i.f, i64 %i.df ; 11 uses
  %invariant.gep253 = getelementptr [8 x i8], ptr %i.f, i64 %i.dg ; 11 uses
  %min.iters.check = icmp ult i32 %i.cu, 3
  %or.cond384 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond384, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check262 = icmp ult i32 %i.cu, 15
  br i1 %min.iters.check262, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dh = and i64 %i.cw, 12
  %n.vec = and i64 %i.cw, 8589934576              ; 4 uses
  %i.di = add i64 %indvars.iv.a, %n.vec
  %invariant.op = add i64 %indvars.iv.a, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i64 %index, %invariant.op         ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %invariant.gep, i64 %.reass ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 32
  %i.dl = getelementptr i8, ptr %i.dj, i64 64
  %i.dm = getelementptr i8, ptr %i.dj, i64 96
  %wide.load = load <4 x double>, ptr %i.dj, align 8, !tbaa !29
  %wide.load263 = load <4 x double>, ptr %i.dk, align 8, !tbaa !29
  %wide.load264 = load <4 x double>, ptr %i.dl, align 8, !tbaa !29
  %wide.load265 = load <4 x double>, ptr %i.dm, align 8, !tbaa !29
  %i.dn = getelementptr [8 x i8], ptr %invariant.gep253, i64 %.reass ; 4 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 32
  %i.dp = getelementptr i8, ptr %i.dn, i64 64
  %i.dq = getelementptr i8, ptr %i.dn, i64 96
  store <4 x double> %wide.load, ptr %i.dn, align 8, !tbaa !29
  store <4 x double> %wide.load263, ptr %i.do, align 8, !tbaa !29
  store <4 x double> %wide.load264, ptr %i.dp, align 8, !tbaa !29
  store <4 x double> %wide.load265, ptr %i.dq, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %.preheader148, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec266 = and i64 %i.cw, 8589934588           ; 3 uses
  %i.ds = add i64 %indvars.iv.a, %n.vec266
  %invariant.op400 = add i64 %indvars.iv.a, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index267 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next269, %vec.epilog.vector.body ] ; 2 uses
end_hunk_0
