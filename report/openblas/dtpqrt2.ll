Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtpqrt2?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"DTPQRT2\00", align 1
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@c_b5 = internal global double 1.000000e+00, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c_b17 = internal global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dtpqrt2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = ptrtoaddr ptr %7 to i64                  ; 2 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 15 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca double, align 8                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.i = load i32, ptr %4, align 4, !tbaa !25     ; 5 uses
  %narrow = xor i32 %i.i, -1
  %i.j = sext i32 %narrow to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %3, i64 %i.j ; 3 uses
  %i.l = load i32, ptr %6, align 4, !tbaa !25     ; 8 uses
  %narrow224 = xor i32 %i.l, -1
  %i.m = sext i32 %narrow224 to i64               ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %5, i64 %i.m ; 13 uses
  %i.o = load i32, ptr %8, align 4, !tbaa !25     ; 8 uses
  %narrow225 = xor i32 %i.o, -1
  %i.p = sext i32 %narrow225 to i64               ; 5 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %7, i64 %i.p ; 10 uses
  store i32 0, ptr %9, align 4, !tbaa !25
  %i.r = load i32, ptr %0, align 4, !tbaa !25     ; 4 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %1, align 4, !tbaa !25     ; 5 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  %. = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.t)
  %i.x = icmp samesign ugt i32 %i.v, %.
  %or.cond = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %4, align 4, !tbaa !25
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.t, i32 1) ; 2 uses
  %i.z = icmp slt i32 %i.y, %spec.select
  br i1 %i.z, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %6, align 4, !tbaa !25
  %spec.select229 = tail call i32 @llvm.umax.i32(i32 %i.r, i32 1)
  %i.ab = icmp slt i32 %i.aa, %spec.select229
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %8, align 4, !tbaa !25
  %i.ad = icmp slt i32 %i.ac, %spec.select
  br i1 %i.ad, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -5, %bb.d ], [ -7, %bb.e ], [ -3, %bb.c ], [ -9, %bb.f ]
  %.neg = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 5, %bb.d ], [ 7, %bb.e ], [ 3, %bb.c ], [ 9, %bb.f ]
  store i32 %.sink, ptr %9, align 4, !tbaa !25
  store i32 %.neg, ptr %i.d, align 4, !tbaa !25
  %i.ae = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.d, i32 noundef 7) #5 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.af = icmp eq i32 %i.t, 0
  %i.ag = icmp eq i32 %i.r, 0
  %or.cond312 = or i1 %i.af, %i.ag
  br i1 %or.cond312, label %.loopexit, label %.lr.ph244

.lr.ph244:                                        ; preds = %bb.g
  %i.ah = add i32 %i.i, 1
  %i.ai = sext i32 %i.i to i64                    ; 14 uses
  %i.aj = sext i32 %i.l to i64                    ; 2 uses
  %i.ak = sext i32 %i.o to i64
  %invariant.gep306 = getelementptr [8 x i8], ptr %i.q, i64 %i.ak
  %i.al = zext nneg i32 %i.t to i64
  %i.am = shl nsw i64 %i.p, 3
  %i.an = add i64 %i.am, %i.c
  %ident.check337.not = icmp eq i32 %i.i, 1
  %ident.check.not = icmp eq i32 %i.i, 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph244, %bb.j
  %indvar = phi i64 [ 0, %.lr.ph244 ], [ %indvar.next, %bb.j ] ; 3 uses
  %indvars.iv264 = phi i64 [ 1, %.lr.ph244 ], [ %indvars.iv.next265.pre-phi, %bb.j ] ; 27 uses
  %indvars.iv257 = phi i32 [ 0, %.lr.ph244 ], [ %indvars.iv.next258, %bb.j ] ; 3 uses
  %i.ao = load i32, ptr %0, align 4, !tbaa !25
  %i.ap = load i32, ptr %2, align 4, !tbaa !25    ; 2 uses
  %i.aq = sub nsw i32 %i.ao, %i.ap
  %i.ar = trunc nuw nsw i64 %indvars.iv264 to i32 ; 4 uses
  %.0198. = call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.ar)
  %i.as = add nsw i32 %i.aq, %.0198.              ; 2 uses
  store i32 %i.as, ptr %i.g, align 4, !tbaa !25
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.e, align 4, !tbaa !25
  %i.au = mul i32 %i.ah, %i.ar
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.av
  %i.ax = mul nsw i64 %indvars.iv264, %i.aj
  %i.ay = getelementptr [8 x i8], ptr %i.n, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 8      ; 3 uses
  %gep307 = getelementptr [8 x i8], ptr %invariant.gep306, i64 %indvars.iv264 ; 2 uses
  call void @dlarfg_(ptr noundef nonnull %i.e, ptr noundef %i.aw, ptr noundef %i.az, ptr noundef nonnull @c__1, ptr noundef %gep307) #5
  %i.ba = load i32, ptr %1, align 4, !tbaa !25    ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv264, %i.bb
  br i1 %i.bc, label %bb.i, label %._crit_edge285

._crit_edge285:                                   ; preds = %bb.h
  %.pre297 = add nuw nsw i64 %indvars.iv264, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = sub nuw nsw i32 %i.ba, %i.ar            ; 2 uses
  %.not227233 = icmp slt i32 %i.bd, 1
  %.pre289 = mul i32 %i.ba, %i.o
  %.pre291 = sext i32 %.pre289 to i64             ; 3 uses
  br i1 %.not227233, label %._crit_edge, label %iter.check354

iter.check354:                                    ; preds = %bb.i
  %i.be = add i32 %i.ba, %indvars.iv257
  %wide.trip.count = zext i32 %i.be to i64        ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv264 ; 11 uses
  %invariant.gep300 = getelementptr [8 x i8], ptr %i.q, i64 %.pre291 ; 11 uses
  %i.bf = add nsw i64 %wide.trip.count, -1        ; 7 uses
  %min.iters.check339 = icmp ugt i64 %i.bf, 3
  %or.cond405 = select i1 %min.iters.check339, i1 %ident.check337.not, i1 false
  br i1 %or.cond405, label %vector.memcheck340, label %vec.epilog.scalar.ph356.preheader

vector.memcheck340:                               ; preds = %iter.check354
  %i.bg = shl i64 %indvar, 4
  %i.bh = add i64 %i.bg, %i.b
  %i.bi = sub i64 %i.an, %i.bh
  %i.bj = shl nsw i64 %.pre291, 3
  %i.bk = add i64 %i.bi, %i.bj
  %i.bl = add i64 %i.bk, -1
  %diff.check = icmp ult i64 %i.bl, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph356.preheader, label %vector.main.loop.iter.check341

vector.main.loop.iter.check341:                   ; preds = %vector.memcheck340
  %min.iters.check342 = icmp ult i64 %i.bf, 16
  br i1 %min.iters.check342, label %vec.epilog.ph358, label %vector.ph343

vector.ph343:                                     ; preds = %vector.main.loop.iter.check341
  %i.bm = and i64 %i.bf, 12
  %n.vec344 = and i64 %i.bf, -16                  ; 4 uses
  %i.bn = or disjoint i64 %n.vec344, 1
  %invariant.gep413 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv264
  br label %vector.body345

vector.body345:                                   ; preds = %vector.ph343, %vector.body345
  %index346 = phi i64 [ 0, %vector.ph343 ], [ %index.next351, %vector.body345 ] ; 2 uses
  %i.bo = or disjoint i64 %index346, 1            ; 2 uses
  %gep414 = getelementptr [8 x i8], ptr %invariant.gep413, i64 %i.bo ; 4 uses
  %i.bp = getelementptr i8, ptr %gep414, i64 32
  %i.bq = getelementptr i8, ptr %gep414, i64 64
  %i.br = getelementptr i8, ptr %gep414, i64 96
  %wide.load347 = load <4 x double>, ptr %gep414, align 8, !tbaa !27
  %wide.load348 = load <4 x double>, ptr %i.bp, align 8, !tbaa !27
  %wide.load349 = load <4 x double>, ptr %i.bq, align 8, !tbaa !27
  %wide.load350 = load <4 x double>, ptr %i.br, align 8, !tbaa !27
  %i.bs = getelementptr [8 x i8], ptr %invariant.gep300, i64 %i.bo ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 32
  %i.bu = getelementptr i8, ptr %i.bs, i64 64
  %i.bv = getelementptr i8, ptr %i.bs, i64 96
  store <4 x double> %wide.load347, ptr %i.bs, align 8, !tbaa !27
  store <4 x double> %wide.load348, ptr %i.bt, align 8, !tbaa !27
  store <4 x double> %wide.load349, ptr %i.bu, align 8, !tbaa !27
  store <4 x double> %wide.load350, ptr %i.bv, align 8, !tbaa !27
  %index.next351 = add nuw i64 %index346, 16      ; 2 uses
  %i.bw = icmp eq i64 %index.next351, %n.vec344
  br i1 %i.bw, label %middle.block352, label %vector.body345, !llvm.loop !8

middle.block352:                                  ; preds = %vector.body345
  %cmp.n353 = icmp eq i64 %i.bf, %n.vec344
  br i1 %cmp.n353, label %._crit_edge, label %vec.epilog.iter.check355

vec.epilog.iter.check355:                         ; preds = %middle.block352
  %min.epilog.iters.check357 = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check357, label %vec.epilog.scalar.ph356.preheader, label %vec.epilog.ph358, !prof !31

vec.epilog.ph358:                                 ; preds = %vector.main.loop.iter.check341, %vec.epilog.iter.check355
  %vec.epilog.resume.val359 = phi i64 [ %n.vec344, %vec.epilog.iter.check355 ], [ 0, %vector.main.loop.iter.check341 ]
  %n.vec360 = and i64 %i.bf, -4                   ; 3 uses
  %i.bx = or disjoint i64 %n.vec360, 1
  %invariant.gep415 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv264
  br label %vec.epilog.vector.body361

vec.epilog.vector.body361:                        ; preds = %vec.epilog.vector.body361, %vec.epilog.ph358
  %index362 = phi i64 [ %vec.epilog.resume.val359, %vec.epilog.ph358 ], [ %index.next364, %vec.epilog.vector.body361 ] ; 2 uses
  %i.by = or disjoint i64 %index362, 1            ; 2 uses
  %gep416 = getelementptr [8 x i8], ptr %invariant.gep415, i64 %i.by
  %wide.load363 = load <4 x double>, ptr %gep416, align 8, !tbaa !27
  %i.bz = getelementptr [8 x i8], ptr %invariant.gep300, i64 %i.by
  store <4 x double> %wide.load363, ptr %i.bz, align 8, !tbaa !27
  %index.next364 = add nuw i64 %index362, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next364, %n.vec360
  br i1 %i.ca, label %vec.epilog.middle.block365, label %vec.epilog.vector.body361, !llvm.loop !9

vec.epilog.middle.block365:                       ; preds = %vec.epilog.vector.body361
  %cmp.n366 = icmp eq i64 %i.bf, %n.vec360
  br i1 %cmp.n366, label %._crit_edge, label %vec.epilog.scalar.ph356.preheader

vec.epilog.scalar.ph356.preheader:                ; preds = %iter.check354, %vector.memcheck340, %vec.epilog.iter.check355, %vec.epilog.middle.block365
  %indvars.iv.ph = phi i64 [ 1, %iter.check354 ], [ 1, %vector.memcheck340 ], [ %i.bn, %vec.epilog.iter.check355 ], [ %i.bx, %vec.epilog.middle.block365 ] ; 4 uses
  %i.cb = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.cb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph356.prol.loopexit, label %vec.epilog.scalar.ph356.prol

vec.epilog.scalar.ph356.prol:                     ; preds = %vec.epilog.scalar.ph356.preheader, %vec.epilog.scalar.ph356.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph356.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph356.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph356.prol ], [ 0, %vec.epilog.scalar.ph356.preheader ]
  %i.cc = add nuw nsw i64 %indvars.iv.prol, %indvars.iv264
  %i.cd = mul nsw i64 %i.cc, %i.ai
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cd
  %i.ce = load double, ptr %gep.prol, align 8, !tbaa !27
  %gep301.prol = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.prol
  store double %i.ce, ptr %gep301.prol, align 8, !tbaa !27
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph356.prol.loopexit, label %vec.epilog.scalar.ph356.prol, !llvm.loop !10

vec.epilog.scalar.ph356.prol.loopexit:            ; preds = %vec.epilog.scalar.ph356.prol, %vec.epilog.scalar.ph356.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph356.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph356.prol ]
  %i.cf = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cg = icmp ugt i64 %i.cf, -8
  br i1 %i.cg, label %._crit_edge, label %vec.epilog.scalar.ph356

vec.epilog.scalar.ph356:                          ; preds = %vec.epilog.scalar.ph356.prol.loopexit, %vec.epilog.scalar.ph356
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph356 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph356.prol.loopexit ] ; 10 uses
  %i.ch = add nuw nsw i64 %indvars.iv, %indvars.iv264
  %i.ci = mul nsw i64 %i.ch, %i.ai
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ci
  %i.cj = load double, ptr %gep, align 8, !tbaa !27
  %gep301 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv
  store double %i.cj, ptr %gep301, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = add nuw nsw i64 %indvars.iv.next, %indvars.iv264
  %i.cl = mul nsw i64 %i.ck, %i.ai
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cl
  %i.cm = load double, ptr %gep.1, align 8, !tbaa !27
  %gep301.1 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.next
  store double %i.cm, ptr %gep301.1, align 8, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cn = add nuw nsw i64 %indvars.iv.next.1, %indvars.iv264
  %i.co = mul nsw i64 %i.cn, %i.ai
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.co
  %i.cp = load double, ptr %gep.2, align 8, !tbaa !27
  %gep301.2 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.next.1
  store double %i.cp, ptr %gep301.2, align 8, !tbaa !27
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cq = add nuw nsw i64 %indvars.iv.next.2, %indvars.iv264
  %i.cr = mul nsw i64 %i.cq, %i.ai
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cr
  %i.cs = load double, ptr %gep.3, align 8, !tbaa !27
  %gep301.3 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.next.2
  store double %i.cs, ptr %gep301.3, align 8, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ct = add nuw nsw i64 %indvars.iv.next.3, %indvars.iv264
  %i.cu = mul nsw i64 %i.ct, %i.ai
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cu
  %i.cv = load double, ptr %gep.4, align 8, !tbaa !27
  %gep301.4 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.next.3
  store double %i.cv, ptr %gep301.4, align 8, !tbaa !27
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.cw = add nuw nsw i64 %indvars.iv.next.4, %indvars.iv264
  %i.cx = mul nsw i64 %i.cw, %i.ai
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cx
  %i.cy = load double, ptr %gep.5, align 8, !tbaa !27
  %gep301.5 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.next.4
  store double %i.cy, ptr %gep301.5, align 8, !tbaa !27
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.cz = add nuw nsw i64 %indvars.iv.next.5, %indvars.iv264
  %i.da = mul nsw i64 %i.cz, %i.ai
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.da
  %i.db = load double, ptr %gep.6, align 8, !tbaa !27
  %gep301.6 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.next.5
  store double %i.db, ptr %gep301.6, align 8, !tbaa !27
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.dc = add nuw nsw i64 %indvars.iv.next.6, %indvars.iv264
  %i.dd = mul nsw i64 %i.dc, %i.ai
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dd
  %i.de = load double, ptr %gep.7, align 8, !tbaa !27
  %gep301.7 = getelementptr [8 x i8], ptr %invariant.gep300, i64 %indvars.iv.next.6
  store double %i.de, ptr %gep301.7, align 8, !tbaa !27
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph356, !llvm.loop !11

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph356.prol.loopexit, %vec.epilog.scalar.ph356, %middle.block352, %vec.epilog.middle.block365, %bb.i
  store i32 %i.bd, ptr %i.e, align 4, !tbaa !25
  %i.df = add nuw nsw i64 %indvars.iv264, 1       ; 2 uses
  %i.dg = mul nsw i64 %i.df, %i.aj
  %i.dh = getelementptr [8 x i8], ptr %i.n, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 8      ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.q, i64 %.pre291
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  call void @dgemv_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b5, ptr noundef %i.di, ptr noundef nonnull %6, ptr noundef %i.az, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b5, ptr noundef %i.dk, ptr noundef nonnull @c__1) #5
  %i.dl = load double, ptr %gep307, align 8, !tbaa !27
  %i.dm = fneg double %i.dl                       ; 8 uses
  store double %i.dm, ptr %i.h, align 8, !tbaa !27
  %i.dn = load i32, ptr %1, align 4, !tbaa !25    ; 3 uses
  %i.do = sub nsw i32 %i.dn, %i.ar                ; 2 uses
  %.not228235 = icmp slt i32 %i.do, 1
  %.pre293 = mul i32 %i.dn, %i.o
  %.pre295 = sext i32 %.pre293 to i64             ; 3 uses
  br i1 %.not228235, label %._crit_edge239, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.dp = add i32 %i.dn, %indvars.iv257
  %wide.trip.count262 = zext i32 %i.dp to i64     ; 5 uses
  %invariant.gep302 = getelementptr [8 x i8], ptr %i.q, i64 %.pre295 ; 7 uses
  %invariant.gep304 = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv264 ; 7 uses
  %i.dq = add nsw i64 %wide.trip.count262, -1     ; 7 uses
  %min.iters.check = icmp ugt i64 %i.dq, 3
  %or.cond406 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond406, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.dr = shl nuw nsw i64 %indvar, 4              ; 2 uses
  %i.ds = getelementptr i8, ptr %3, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %i.du = shl nuw nsw i64 %wide.trip.count262, 3  ; 2 uses
  %i.dv = getelementptr i8, ptr %3, i64 %i.dr
  %i.dw = getelementptr i8, ptr %i.dv, i64 %i.du
  %10 = add nsw i64 %.pre295, %i.p
  %i.dx = shl nsw i64 %10, 3                      ; 2 uses
  %11 = getelementptr i8, ptr %7, i64 %i.dx
  %i.dy = getelementptr i8, ptr %11, i64 8
  %i.dz = getelementptr i8, ptr %7, i64 %i.dx
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.du
  %bound0 = icmp ult ptr %i.dt, %i.ea
  %bound1 = icmp ult ptr %i.dy, %i.dw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check320 = icmp ult i64 %i.dq, 16
  br i1 %min.iters.check320, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eb = and i64 %i.dq, 12
  %n.vec = and i64 %i.dq, -16                     ; 4 uses
  %i.ec = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.dm, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep417 = getelementptr [8 x i8], ptr %invariant.gep304, i64 %indvars.iv264
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ed = or disjoint i64 %index, 1               ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %invariant.gep302, i64 %i.ed ; 4 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 32
  %i.eg = getelementptr i8, ptr %i.ee, i64 64
  %i.eh = getelementptr i8, ptr %i.ee, i64 96
  %wide.load = load <4 x double>, ptr %i.ee, align 8, !tbaa !27, !alias.scope !33
  %wide.load321 = load <4 x double>, ptr %i.ef, align 8, !tbaa !27, !alias.scope !33
  %wide.load322 = load <4 x double>, ptr %i.eg, align 8, !tbaa !27, !alias.scope !33
  %wide.load323 = load <4 x double>, ptr %i.eh, align 8, !tbaa !27, !alias.scope !33
  %gep418 = getelementptr [8 x i8], ptr %invariant.gep417, i64 %i.ed ; 5 uses
  %i.ei = getelementptr i8, ptr %gep418, i64 32   ; 2 uses
  %i.ej = getelementptr i8, ptr %gep418, i64 64   ; 2 uses
  %i.ek = getelementptr i8, ptr %gep418, i64 96   ; 2 uses
  %wide.load324 = load <4 x double>, ptr %gep418, align 8, !tbaa !27, !alias.scope !34, !noalias !33
  %wide.load325 = load <4 x double>, ptr %i.ei, align 8, !tbaa !27, !alias.scope !34, !noalias !33
  %wide.load326 = load <4 x double>, ptr %i.ej, align 8, !tbaa !27, !alias.scope !34, !noalias !33
  %wide.load327 = load <4 x double>, ptr %i.ek, align 8, !tbaa !27, !alias.scope !34, !noalias !33
  %i.el = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load, <4 x double> %wide.load324)
  %i.em = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load321, <4 x double> %wide.load325)
  %i.en = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load322, <4 x double> %wide.load326)
  %i.eo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load323, <4 x double> %wide.load327)
  store <4 x double> %i.el, ptr %gep418, align 8, !tbaa !27, !alias.scope !34, !noalias !33
  store <4 x double> %i.em, ptr %i.ei, align 8, !tbaa !27, !alias.scope !34, !noalias !33
  store <4 x double> %i.en, ptr %i.ej, align 8, !tbaa !27, !alias.scope !34, !noalias !33
  store <4 x double> %i.eo, ptr %i.ek, align 8, !tbaa !27, !alias.scope !34, !noalias !33
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dq, %n.vec
  br i1 %cmp.n, label %._crit_edge239, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec328 = and i64 %i.dq, -4                   ; 3 uses
  %i.eq = or disjoint i64 %n.vec328, 1
  %broadcast.splatinsert329 = insertelement <4 x double> poison, double %i.dm, i64 0
  %broadcast.splat330 = shufflevector <4 x double> %broadcast.splatinsert329, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.gep419 = getelementptr [8 x i8], ptr %invariant.gep304, i64 %indvars.iv264
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index331 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next334, %vec.epilog.vector.body ] ; 2 uses
  %i.er = or disjoint i64 %index331, 1            ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %invariant.gep302, i64 %i.er
  %wide.load332 = load <4 x double>, ptr %i.es, align 8, !tbaa !27, !alias.scope !33
  %gep420 = getelementptr [8 x i8], ptr %invariant.gep419, i64 %i.er ; 2 uses
  %wide.load333 = load <4 x double>, ptr %gep420, align 8, !tbaa !27, !alias.scope !34, !noalias !33
  %i.et = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat330, <4 x double> %wide.load332, <4 x double> %wide.load333)
  store <4 x double> %i.et, ptr %gep420, align 8, !tbaa !27, !alias.scope !34, !noalias !33
  %index.next334 = add nuw i64 %index331, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next334, %n.vec328
  br i1 %i.eu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n335 = icmp eq i64 %i.dq, %n.vec328
  br i1 %cmp.n335, label %._crit_edge239, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv259.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.ec, %vec.epilog.iter.check ], [ %i.eq, %vec.epilog.middle.block ] ; 4 uses
  %i.ev = sub nsw i64 %wide.trip.count262, %indvars.iv259.ph
  %xtraiter407 = and i64 %i.ev, 3                 ; 2 uses
  %lcmp.mod408.not = icmp eq i64 %xtraiter407, 0
  br i1 %lcmp.mod408.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv259.prol = phi i64 [ %indvars.iv.next260.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv259.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter409 = phi i64 [ %prol.iter409.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep303.prol = getelementptr [8 x i8], ptr %invariant.gep302, i64 %indvars.iv259.prol
  %i.ew = load double, ptr %gep303.prol, align 8, !tbaa !27
  %i.ex = add nuw nsw i64 %indvars.iv259.prol, %indvars.iv264
  %i.ey = mul nsw i64 %i.ex, %i.ai
  %gep305.prol = getelementptr [8 x i8], ptr %invariant.gep304, i64 %i.ey ; 2 uses
  %i.ez = load double, ptr %gep305.prol, align 8, !tbaa !27
  %i.fa = call double @llvm.fmuladd.f64(double %i.dm, double %i.ew, double %i.ez)
  store double %i.fa, ptr %gep305.prol, align 8, !tbaa !27
  %indvars.iv.next260.prol = add nuw nsw i64 %indvars.iv259.prol, 1 ; 2 uses
  %prol.iter409.next = add i64 %prol.iter409, 1   ; 2 uses
  %prol.iter409.cmp.not = icmp eq i64 %prol.iter409.next, %xtraiter407
  br i1 %prol.iter409.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !17

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv259.unr = phi i64 [ %indvars.iv259.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next260.prol, %vec.epilog.scalar.ph.prol ]
  %i.fb = sub nsw i64 %indvars.iv259.ph, %wide.trip.count262
  %i.fc = icmp ugt i64 %i.fb, -4
  br i1 %i.fc, label %._crit_edge239, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv259 = phi i64 [ %indvars.iv.next260.3, %vec.epilog.scalar.ph ], [ %indvars.iv259.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep303 = getelementptr [8 x i8], ptr %invariant.gep302, i64 %indvars.iv259
  %i.fd = load double, ptr %gep303, align 8, !tbaa !27
  %i.fe = add nuw nsw i64 %indvars.iv259, %indvars.iv264
  %i.ff = mul nsw i64 %i.fe, %i.ai
  %gep305 = getelementptr [8 x i8], ptr %invariant.gep304, i64 %i.ff ; 2 uses
  %i.fg = load double, ptr %gep305, align 8, !tbaa !27
  %i.fh = call double @llvm.fmuladd.f64(double %i.dm, double %i.fd, double %i.fg)
  store double %i.fh, ptr %gep305, align 8, !tbaa !27
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %gep303.1 = getelementptr [8 x i8], ptr %invariant.gep302, i64 %indvars.iv.next260
  %i.fi = load double, ptr %gep303.1, align 8, !tbaa !27
  %i.fj = add nuw nsw i64 %indvars.iv.next260, %indvars.iv264
  %i.fk = mul nsw i64 %i.fj, %i.ai
  %gep305.1 = getelementptr [8 x i8], ptr %invariant.gep304, i64 %i.fk ; 2 uses
  %i.fl = load double, ptr %gep305.1, align 8, !tbaa !27
  %i.fm = call double @llvm.fmuladd.f64(double %i.dm, double %i.fi, double %i.fl)
  store double %i.fm, ptr %gep305.1, align 8, !tbaa !27
  %indvars.iv.next260.1 = add nuw nsw i64 %indvars.iv259, 2 ; 2 uses
  %gep303.2 = getelementptr [8 x i8], ptr %invariant.gep302, i64 %indvars.iv.next260.1
  %i.fn = load double, ptr %gep303.2, align 8, !tbaa !27
  %i.fo = add nuw nsw i64 %indvars.iv.next260.1, %indvars.iv264
  %i.fp = mul nsw i64 %i.fo, %i.ai
  %gep305.2 = getelementptr [8 x i8], ptr %invariant.gep304, i64 %i.fp ; 2 uses
  %i.fq = load double, ptr %gep305.2, align 8, !tbaa !27
  %i.fr = call double @llvm.fmuladd.f64(double %i.dm, double %i.fn, double %i.fq)
  store double %i.fr, ptr %gep305.2, align 8, !tbaa !27
  %indvars.iv.next260.2 = add nuw nsw i64 %indvars.iv259, 3 ; 2 uses
  %gep303.3 = getelementptr [8 x i8], ptr %invariant.gep302, i64 %indvars.iv.next260.2
  %i.fs = load double, ptr %gep303.3, align 8, !tbaa !27
  %i.ft = add nuw nsw i64 %indvars.iv.next260.2, %indvars.iv264
  %i.fu = mul nsw i64 %i.ft, %i.ai
  %gep305.3 = getelementptr [8 x i8], ptr %invariant.gep304, i64 %i.fu ; 2 uses
  %i.fv = load double, ptr %gep305.3, align 8, !tbaa !27
  %i.fw = call double @llvm.fmuladd.f64(double %i.dm, double %i.fs, double %i.fv)
  store double %i.fw, ptr %gep305.3, align 8, !tbaa !27
  %indvars.iv.next260.3 = add nuw nsw i64 %indvars.iv259, 4 ; 2 uses
  %exitcond263.not.3 = icmp eq i64 %indvars.iv.next260.3, %wide.trip.count262
  br i1 %exitcond263.not.3, label %._crit_edge239, label %vec.epilog.scalar.ph, !llvm.loop !18

._crit_edge239:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge
  store i32 %i.do, ptr %i.e, align 4, !tbaa !25
  %i.fx = getelementptr [8 x i8], ptr %i.q, i64 %.pre295
  %i.fy = getelementptr i8, ptr %i.fx, i64 8
  call void @dger_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef %i.az, ptr noundef nonnull @c__1, ptr noundef %i.fy, ptr noundef nonnull @c__1, ptr noundef %i.di, ptr noundef nonnull %6) #5
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge285, %._crit_edge239
  %indvars.iv.next265.pre-phi = phi i64 [ %.pre297, %._crit_edge285 ], [ %i.df, %._crit_edge239 ]
  %.not217.not = icmp slt i64 %indvars.iv264, %i.al
  %indvars.iv.next258 = add nsw i32 %indvars.iv257, -1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not217.not, label %bb.h, label %._crit_edge245, !llvm.loop !19

._crit_edge245:                                   ; preds = %bb.j
  %.pre = load i32, ptr %1, align 4, !tbaa !25    ; 2 uses
  %.not218252 = icmp slt i32 %.pre, 2
  br i1 %.not218252, label %.loopexit, label %.lr.ph255.preheader

.lr.ph255.preheader:                              ; preds = %._crit_edge245
  %i.fz = shl nsw i64 %i.p, 3
  %scevgep = getelementptr i8, ptr %7, i64 %i.fz
  %i.ga = shl i32 %i.o, 1
  %i.gb = or disjoint i32 %i.ga, 1
  %i.gc = sext i32 %i.o to i64                    ; 5 uses
  %i.gd = sext i32 %i.l to i64                    ; 2 uses
  %invariant.gep310 = getelementptr [8 x i8], ptr %i.q, i64 %i.gc
  %i.ge = zext nneg i32 %.pre to i64
  %i.gf = shl i32 %i.l, 1                         ; 2 uses
  %i.gg = or disjoint i32 %i.gf, 1
  %i.gh = or disjoint i32 %i.gf, 1
  %i.gi = shl nsw i64 %i.gc, 3
  %i.gj = shl nsw i64 %i.gc, 4
  %i.gk = add i64 %i.gj, %i.c
  %i.gl = shl nsw i64 %i.p, 3
  %i.gm = add i64 %i.gk, %i.gl
  %i.gn = add i64 %i.gm, 8
  br label %.lr.ph255

.lr.ph255:                                        ; preds = %.lr.ph255.preheader, %._crit_edge251
  %indvars.iv280 = phi i64 [ 2, %.lr.ph255.preheader ], [ %indvars.iv.next281, %._crit_edge251 ] ; 10 uses
  %indvars.iv276 = phi i32 [ 1, %.lr.ph255.preheader ], [ %indvars.iv.next277, %._crit_edge251 ] ; 2 uses
  %indvar268 = phi i64 [ 0, %.lr.ph255.preheader ], [ %indvar.next269, %._crit_edge251 ] ; 6 uses
  %i.go = trunc i64 %indvar268 to i32
  %i.gp = trunc i64 %indvar268 to i32
  %i.gq = mul i32 %i.l, %i.gp
  %i.gr = add i32 %i.gq, %i.gg
  %indvars284 = trunc nuw i64 %indvars.iv280 to i32
  %i.gs = trunc nuw nsw i64 %indvar268 to i32
  %i.gt = mul i32 %i.o, %i.gs
  %i.gu = add i32 %i.gb, %i.gt
  %i.gv = sext i32 %i.gu to i64
  %i.gw = shl nsw i64 %i.gv, 3
  %scevgep267 = getelementptr i8, ptr %scevgep, i64 %i.gw
  %i.gx = shl nuw nsw i64 %indvar268, 3
  %i.gy = add nuw nsw i64 %i.gx, 8
  %gep311 = getelementptr [8 x i8], ptr %invariant.gep310, i64 %indvars.iv280 ; 3 uses
  %i.gz = load double, ptr %gep311, align 8, !tbaa !27
  %i.ha = fneg double %i.gz                       ; 8 uses
  store double %i.ha, ptr %i.h, align 8, !tbaa !27
  %i.hb = trunc nuw i64 %indvars.iv280 to i32
  %i.hc = add i32 %i.hb, -1                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep267, i8 0, i64 %i.gy, i1 false), !tbaa !27
  %i.hd = load i32, ptr %2, align 4, !tbaa !25    ; 6 uses
  %.231 = call i32 @llvm.smin.i32(i32 %i.hc, i32 %i.hd) ; 5 uses
  store i32 %.231, ptr %i.g, align 4, !tbaa !25
  %i.he = load i32, ptr %0, align 4, !tbaa !25    ; 4 uses
  %i.hf = sub nsw i32 %i.he, %i.hd                ; 2 uses
  %i.hg = add nsw i32 %i.hf, 1
  %.not221.not = icmp sgt i32 %i.hd, 0
  %i.hh = select i1 %.not221.not, i32 %i.hg, i32 %i.he ; 3 uses
  %i.hi = add nsw i32 %.231, 1
  %i.hj = load i32, ptr %1, align 4, !tbaa !25    ; 2 uses
  %.not222.not = icmp slt i32 %.231, %i.hj
  %i.hk = select i1 %.not222.not, i32 %i.hi, i32 %i.hj ; 2 uses
  store i32 %.231, ptr %i.e, align 4, !tbaa !25
  %.not223247 = icmp slt i32 %.231, 1
  br i1 %.not223247, label %.lr.ph255.._crit_edge251_crit_edge, label %iter.check389

.lr.ph255.._crit_edge251_crit_edge:               ; preds = %.lr.ph255
  %.pre286 = mul nsw i64 %indvars.iv280, %i.gc
  %.pre287 = mul nsw i64 %indvars.iv280, %i.gd
  br label %._crit_edge251

iter.check389:                                    ; preds = %.lr.ph255
  %i.hl = mul nsw i64 %indvars.iv280, %i.gd       ; 5 uses
  %i.hm = trunc nsw i64 %i.hl to i32
  %i.hn = add i32 %i.hf, %i.hm                    ; 7 uses
  %i.ho = mul nsw i64 %indvars.iv280, %i.gc       ; 5 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.hd, i32 %indvars.iv276)
  %i.hp = add nsw i32 %smin, 1
  %wide.trip.count278 = zext i32 %i.hp to i64     ; 5 uses
  %invariant.gep308 = getelementptr [8 x i8], ptr %i.q, i64 %i.ho ; 7 uses
  %i.hq = add nsw i64 %wide.trip.count278, -1     ; 7 uses
  %min.iters.check371 = icmp ult i64 %i.hq, 4
  br i1 %min.iters.check371, label %vec.epilog.scalar.ph391.preheader, label %vector.scevcheck368

vector.scevcheck368:                              ; preds = %iter.check389
  %i.hr = add nsw i64 %wide.trip.count278, -2     ; 2 uses
  %i.hs = add i32 %i.he, %i.gr
  %i.ht = sub i32 %i.hs, %i.hd                    ; 2 uses
  %i.hu = trunc i64 %i.hr to i32
  %i.hv = add i32 %i.ht, %i.hu
  %i.hw = icmp slt i32 %i.hv, %i.ht
  %i.hx = icmp ugt i64 %i.hr, 4294967295
  %i.hy = or i1 %i.hw, %i.hx
  br i1 %i.hy, label %vec.epilog.scalar.ph391.preheader, label %vector.memcheck372

vector.memcheck372:                               ; preds = %vector.scevcheck368
  %i.hz = mul i64 %indvar268, %i.gi
  %i.ia = add i64 %i.gn, %i.hz
  %i.ib = mul i32 %i.l, %i.go
  %i.ic = add i32 %i.gh, %i.ib
  %i.id = add i32 %i.he, %i.ic
  %i.ie = sub i32 %i.id, %i.hd
  %i.if = sext i32 %i.ie to i64
  %i.ig = add nsw i64 %i.if, %i.m
  %i.ih = shl nsw i64 %i.ig, 3
  %i.ii = add i64 %i.ih, %i.a
  %i.ij = sub i64 %i.ii, %i.ia
  %diff.check373 = icmp ugt i64 %i.ij, -128
  br i1 %diff.check373, label %vec.epilog.scalar.ph391.preheader, label %vector.main.loop.iter.check374

vector.main.loop.iter.check374:                   ; preds = %vector.memcheck372
  %min.iters.check375 = icmp ult i64 %i.hq, 16
  br i1 %min.iters.check375, label %vec.epilog.ph393, label %vector.ph376

vector.ph376:                                     ; preds = %vector.main.loop.iter.check374
  %i.ik = and i64 %i.hq, 12
  %n.vec377 = and i64 %i.hq, -16                  ; 4 uses
  %i.il = or disjoint i64 %n.vec377, 1
  %broadcast.splatinsert378 = insertelement <4 x double> poison, double %i.ha, i64 0
  %broadcast.splat379 = shufflevector <4 x double> %broadcast.splatinsert378, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body380

vector.body380:                                   ; preds = %vector.ph376, %vector.body380
  %index381 = phi i64 [ 0, %vector.ph376 ], [ %index.next386, %vector.body380 ] ; 2 uses
  %i.im = or disjoint i64 %index381, 1            ; 2 uses
  %i.in = trunc nuw nsw i64 %i.im to i32
  %i.io = add i32 %i.hn, %i.in
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ip ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 96
  %wide.load382 = load <4 x double>, ptr %i.iq, align 8, !tbaa !27
  %wide.load383 = load <4 x double>, ptr %i.ir, align 8, !tbaa !27
  %wide.load384 = load <4 x double>, ptr %i.is, align 8, !tbaa !27
  %wide.load385 = load <4 x double>, ptr %i.it, align 8, !tbaa !27
  %i.iu = fmul <4 x double> %wide.load382, %broadcast.splat379
  %i.iv = fmul <4 x double> %wide.load383, %broadcast.splat379
  %i.iw = fmul <4 x double> %wide.load384, %broadcast.splat379
  %i.ix = fmul <4 x double> %wide.load385, %broadcast.splat379
  %i.iy = getelementptr [8 x i8], ptr %invariant.gep308, i64 %i.im ; 4 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 32
  %i.ja = getelementptr i8, ptr %i.iy, i64 64
  %i.jb = getelementptr i8, ptr %i.iy, i64 96
  store <4 x double> %i.iu, ptr %i.iy, align 8, !tbaa !27
  store <4 x double> %i.iv, ptr %i.iz, align 8, !tbaa !27
  store <4 x double> %i.iw, ptr %i.ja, align 8, !tbaa !27
  store <4 x double> %i.ix, ptr %i.jb, align 8, !tbaa !27
  %index.next386 = add nuw i64 %index381, 16      ; 2 uses
  %i.jc = icmp eq i64 %index.next386, %n.vec377
  br i1 %i.jc, label %middle.block387, label %vector.body380, !llvm.loop !20

middle.block387:                                  ; preds = %vector.body380
  %cmp.n388 = icmp eq i64 %i.hq, %n.vec377
  br i1 %cmp.n388, label %._crit_edge251, label %vec.epilog.iter.check390

vec.epilog.iter.check390:                         ; preds = %middle.block387
  %min.epilog.iters.check392 = icmp eq i64 %i.ik, 0
  br i1 %min.epilog.iters.check392, label %vec.epilog.scalar.ph391.preheader, label %vec.epilog.ph393, !prof !31

vec.epilog.ph393:                                 ; preds = %vector.main.loop.iter.check374, %vec.epilog.iter.check390
  %vec.epilog.resume.val394 = phi i64 [ %n.vec377, %vec.epilog.iter.check390 ], [ 0, %vector.main.loop.iter.check374 ]
  %n.vec395 = and i64 %i.hq, -4                   ; 3 uses
  %i.jd = or disjoint i64 %n.vec395, 1
  %broadcast.splatinsert396 = insertelement <4 x double> poison, double %i.ha, i64 0
  %broadcast.splat397 = shufflevector <4 x double> %broadcast.splatinsert396, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body398

vec.epilog.vector.body398:                        ; preds = %vec.epilog.vector.body398, %vec.epilog.ph393
  %index399 = phi i64 [ %vec.epilog.resume.val394, %vec.epilog.ph393 ], [ %index.next401, %vec.epilog.vector.body398 ] ; 2 uses
  %i.je = or disjoint i64 %index399, 1            ; 2 uses
  %i.jf = trunc nuw nsw i64 %i.je to i32
  %i.jg = add i32 %i.hn, %i.jf
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.jh
  %wide.load400 = load <4 x double>, ptr %i.ji, align 8, !tbaa !27
  %i.jj = fmul <4 x double> %wide.load400, %broadcast.splat397
  %i.jk = getelementptr [8 x i8], ptr %invariant.gep308, i64 %i.je
  store <4 x double> %i.jj, ptr %i.jk, align 8, !tbaa !27
  %index.next401 = add nuw i64 %index399, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next401, %n.vec395
  br i1 %i.jl, label %vec.epilog.middle.block402, label %vec.epilog.vector.body398, !llvm.loop !21

vec.epilog.middle.block402:                       ; preds = %vec.epilog.vector.body398
  %cmp.n403 = icmp eq i64 %i.hq, %n.vec395
  br i1 %cmp.n403, label %._crit_edge251, label %vec.epilog.scalar.ph391.preheader

vec.epilog.scalar.ph391.preheader:                ; preds = %iter.check389, %vector.scevcheck368, %vector.memcheck372, %vec.epilog.iter.check390, %vec.epilog.middle.block402
  %indvars.iv273.ph = phi i64 [ 1, %iter.check389 ], [ 1, %vector.scevcheck368 ], [ 1, %vector.memcheck372 ], [ %i.il, %vec.epilog.iter.check390 ], [ %i.jd, %vec.epilog.middle.block402 ] ; 4 uses
  %i.jm = sub i64 %wide.trip.count278, %indvars.iv273.ph
  %xtraiter410 = and i64 %i.jm, 3                 ; 2 uses
  %lcmp.mod411.not = icmp eq i64 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %vec.epilog.scalar.ph391.prol.loopexit, label %vec.epilog.scalar.ph391.prol

vec.epilog.scalar.ph391.prol:                     ; preds = %vec.epilog.scalar.ph391.preheader, %vec.epilog.scalar.ph391.prol
  %indvars.iv273.prol = phi i64 [ %indvars.iv.next274.prol, %vec.epilog.scalar.ph391.prol ], [ %indvars.iv273.ph, %vec.epilog.scalar.ph391.preheader ] ; 3 uses
  %prol.iter412 = phi i64 [ %prol.iter412.next, %vec.epilog.scalar.ph391.prol ], [ 0, %vec.epilog.scalar.ph391.preheader ]
  %i.jn = trunc nuw nsw i64 %indvars.iv273.prol to i32
  %i.jo = add i32 %i.hn, %i.jn
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.jp
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !27
  %i.js = fmul double %i.jr, %i.ha
  %gep309.prol = getelementptr [8 x i8], ptr %invariant.gep308, i64 %indvars.iv273.prol
  store double %i.js, ptr %gep309.prol, align 8, !tbaa !27
  %indvars.iv.next274.prol = add nuw nsw i64 %indvars.iv273.prol, 1 ; 2 uses
  %prol.iter412.next = add i64 %prol.iter412, 1   ; 2 uses
  %prol.iter412.cmp.not = icmp eq i64 %prol.iter412.next, %xtraiter410
  br i1 %prol.iter412.cmp.not, label %vec.epilog.scalar.ph391.prol.loopexit, label %vec.epilog.scalar.ph391.prol, !llvm.loop !22

vec.epilog.scalar.ph391.prol.loopexit:            ; preds = %vec.epilog.scalar.ph391.prol, %vec.epilog.scalar.ph391.preheader
  %indvars.iv273.unr = phi i64 [ %indvars.iv273.ph, %vec.epilog.scalar.ph391.preheader ], [ %indvars.iv.next274.prol, %vec.epilog.scalar.ph391.prol ]
  %i.jt = sub i64 %indvars.iv273.ph, %wide.trip.count278
  %i.ju = icmp ugt i64 %i.jt, -4
  br i1 %i.ju, label %._crit_edge251, label %vec.epilog.scalar.ph391

vec.epilog.scalar.ph391:                          ; preds = %vec.epilog.scalar.ph391.prol.loopexit, %vec.epilog.scalar.ph391
  %indvars.iv273 = phi i64 [ %indvars.iv.next274.3, %vec.epilog.scalar.ph391 ], [ %indvars.iv273.unr, %vec.epilog.scalar.ph391.prol.loopexit ] ; 6 uses
  %i.jv = trunc nuw nsw i64 %indvars.iv273 to i32
  %i.jw = add i32 %i.hn, %i.jv
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.jx
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !27
  %i.ka = fmul double %i.jz, %i.ha
  %gep309 = getelementptr [8 x i8], ptr %invariant.gep308, i64 %indvars.iv273
  store double %i.ka, ptr %gep309, align 8, !tbaa !27
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %i.kb = trunc nuw nsw i64 %indvars.iv.next274 to i32
  %i.kc = add i32 %i.hn, %i.kb
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.kd
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !27
  %i.kg = fmul double %i.kf, %i.ha
  %gep309.1 = getelementptr [8 x i8], ptr %invariant.gep308, i64 %indvars.iv.next274
  store double %i.kg, ptr %gep309.1, align 8, !tbaa !27
  %indvars.iv.next274.1 = add nuw nsw i64 %indvars.iv273, 2 ; 2 uses
  %i.kh = trunc nuw nsw i64 %indvars.iv.next274.1 to i32
  %i.ki = add i32 %i.hn, %i.kh
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.kj
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !27
  %i.km = fmul double %i.kl, %i.ha
  %gep309.2 = getelementptr [8 x i8], ptr %invariant.gep308, i64 %indvars.iv.next274.1
  store double %i.km, ptr %gep309.2, align 8, !tbaa !27
  %indvars.iv.next274.2 = add nuw nsw i64 %indvars.iv273, 3 ; 2 uses
  %i.kn = trunc nuw nsw i64 %indvars.iv.next274.2 to i32
  %i.ko = add i32 %i.hn, %i.kn
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.kp
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !27
  %i.ks = fmul double %i.kr, %i.ha
  %gep309.3 = getelementptr [8 x i8], ptr %invariant.gep308, i64 %indvars.iv.next274.2
  store double %i.ks, ptr %gep309.3, align 8, !tbaa !27
  %indvars.iv.next274.3 = add nuw nsw i64 %indvars.iv273, 4 ; 2 uses
  %exitcond279.not.3 = icmp eq i64 %indvars.iv.next274.3, %wide.trip.count278
  br i1 %exitcond279.not.3, label %._crit_edge251, label %vec.epilog.scalar.ph391, !llvm.loop !23

._crit_edge251:                                   ; preds = %vec.epilog.scalar.ph391.prol.loopexit, %vec.epilog.scalar.ph391, %middle.block387, %vec.epilog.middle.block402, %.lr.ph255.._crit_edge251_crit_edge
  %.pre-phi288 = phi i64 [ %.pre287, %.lr.ph255.._crit_edge251_crit_edge ], [ %i.hl, %middle.block387 ], [ %i.hl, %vec.epilog.middle.block402 ], [ %i.hl, %vec.epilog.scalar.ph391 ], [ %i.hl, %vec.epilog.scalar.ph391.prol.loopexit ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre286, %.lr.ph255.._crit_edge251_crit_edge ], [ %i.ho, %middle.block387 ], [ %i.ho, %vec.epilog.middle.block402 ], [ %i.ho, %vec.epilog.scalar.ph391 ], [ %i.ho, %vec.epilog.scalar.ph391.prol.loopexit ] ; 2 uses
  %i.kt = add nsw i32 %i.hh, %i.l
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ku
  %i.kw = mul nsw i32 %i.o, %indvars284
  %i.kx = getelementptr [8 x i8], ptr %i.q, i64 %.pre-phi
  %i.ky = getelementptr i8, ptr %i.kx, i64 8      ; 3 uses
  call void @dtrmv_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.g, ptr noundef %i.kv, ptr noundef nonnull %6, ptr noundef %i.ky, ptr noundef nonnull @c__1) #5
  %i.kz = load i32, ptr %i.g, align 4, !tbaa !25
  %i.la = sub nsw i32 %i.hc, %i.kz
  store i32 %i.la, ptr %i.e, align 4, !tbaa !25
  %i.lb = mul nsw i32 %i.hk, %i.l
  %i.lc = add nsw i32 %i.lb, %i.hh
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ld
  %i.lf = sext i32 %i.hh to i64
  %i.lg = getelementptr [8 x i8], ptr %i.n, i64 %.pre-phi288
  %i.lh = getelementptr [8 x i8], ptr %i.lg, i64 %i.lf
  %i.li = sext i32 %i.hk to i64
  %i.lj = getelementptr [8 x i8], ptr %i.q, i64 %.pre-phi
  %i.lk = getelementptr [8 x i8], ptr %i.lj, i64 %i.li
  call void @dgemv_(ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef %i.le, ptr noundef nonnull %6, ptr noundef %i.lh, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b17, ptr noundef %i.lk, ptr noundef nonnull @c__1) #5
  %i.ll = load i32, ptr %0, align 4, !tbaa !25
  %i.lm = load i32, ptr %2, align 4, !tbaa !25
  %i.ln = sub nsw i32 %i.ll, %i.lm
  store i32 %i.ln, ptr %i.e, align 4, !tbaa !25
  store i32 %i.hc, ptr %i.f, align 4, !tbaa !25
  %i.lo = getelementptr [8 x i8], ptr %i.n, i64 %.pre-phi288
  %i.lp = getelementptr i8, ptr %i.lo, i64 8
  call void @dgemv_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %i.lp, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b5, ptr noundef %i.ky, ptr noundef nonnull @c__1) #5
  store i32 %i.hc, ptr %i.e, align 4, !tbaa !25
  call void @dtrmv_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.e, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %i.ky, ptr noundef nonnull @c__1) #5
  %i.lq = load double, ptr %gep311, align 8, !tbaa !27
  %i.lr = sext i32 %i.kw to i64
  %i.ls = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv280
  %i.lt = getelementptr [8 x i8], ptr %i.ls, i64 %i.lr
  store double %i.lq, ptr %i.lt, align 8, !tbaa !27
  store double 0.000000e+00, ptr %gep311, align 8, !tbaa !27
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1
  %.not218.not = icmp samesign ult i64 %indvars.iv280, %i.ge
  %indvar.next269 = add nuw nsw i64 %indvar268, 1
  %indvars.iv.next277 = add nuw nsw i32 %indvars.iv276, 1
  br i1 %.not218.not, label %.lr.ph255, label %.loopexit, !llvm.loop !24

.loopexit:                                        ; preds = %._crit_edge251, %._crit_edge245, %bb.g, %.thread
end_hunk_0
