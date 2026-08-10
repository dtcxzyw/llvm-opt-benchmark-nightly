loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
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
  %i.d = load i32, ptr %4, align 4, !tbaa !8      ; 17 uses
  %narrow = xor i32 %i.d, -1                      ; 3 uses
  %i.e = sext i32 %narrow to i64                  ; 4 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %3, i64 %i.e ; 43 uses
  %i.g = getelementptr inbounds i8, ptr %5, i64 -8
  store i32 0, ptr %8, align 4, !tbaa !8
  %i.h = load i32, ptr %2, align 4, !tbaa !8      ; 3 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !8      ; 4 uses
  %i.j = sub nsw i32 %i.h, %i.i                   ; 2 uses
  store i32 %i.j, ptr %i.c, align 4, !tbaa !8
  %i.k = load i32, ptr %7, align 4, !tbaa !8      ; 2 uses
  %i.l = icmp eq i32 %i.k, -1                     ; 2 uses
  %i.m = load i32, ptr %0, align 4, !tbaa !8      ; 4 uses
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
  %i.s = load i32, ptr %4, align 4, !tbaa !8
  %i.t = icmp slt i32 %i.s, %spec.select
  br i1 %i.t, label %.thread140.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %i.v = icmp sge i32 %i.k, %i.u
  %or.cond = or i1 %i.v, %i.l
  br i1 %or.cond, label %.thread, label %.thread140.sink.split

.thread:                                          ; preds = %bb.f
  %i.w = call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #7
  %i.x = load i32, ptr %i.c, align 4, !tbaa !8    ; 2 uses
  %i.y = call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %i.z = mul nsw i32 %i.y, %i.w
  %i.aa = sitofp i32 %i.z to double               ; 2 uses
  store double %i.aa, ptr %6, align 8, !tbaa !9
  %.pr139.pr = load i32, ptr %8, align 4, !tbaa !8 ; 2 uses
  %.not128 = icmp eq i32 %.pr139.pr, 0
  br i1 %.not128, label %bb.g, label %.thread140

.thread140.sink.split:                            ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -3, %bb.d ], [ -5, %bb.e ], [ -2, %bb.b ], [ -2, %bb.c ], [ -8, %bb.f ] ; 2 uses
  store i32 %.sink, ptr %8, align 4, !tbaa !8
  br label %.thread140

.thread140:                                       ; preds = %.thread140.sink.split, %.thread
  %i.ab = phi i32 [ %.pr139.pr, %.thread ], [ %.sink, %.thread140.sink.split ]
  %i.ac = sub nsw i32 0, %i.ab
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !8
  %i.ad = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 6) #7 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %.thread
  br i1 %i.l, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr %0, align 4, !tbaa !8     ; 15 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double 1.000000e+00, ptr %6, align 8, !tbaa !9
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %1, align 4, !tbaa !8     ; 8 uses
  %i.ah = add i32 %i.ag, 1                        ; 4 uses
  %i.ai = load i32, ptr %2, align 4, !tbaa !8     ; 25 uses
  %.not129.not158 = icmp sgt i32 %i.ai, %i.ag
  br i1 %.not129.not158, label %.lr.ph160, label %._crit_edge

.lr.ph160:                                        ; preds = %bb.j
  %.not136.not155 = icmp slt i32 %i.ai, %i.ae
  %i.aj = shl nsw i64 %i.e, 3
  %scevgep190 = getelementptr i8, ptr %3, i64 %i.aj ; 3 uses
  %i.ak = mul i32 %i.d, %i.ai
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  %i.am = sext i32 %i.ai to i64                   ; 4 uses
  br i1 %.not136.not155, label %.lr.ph160.split.us.preheader, label %.lr.ph160.split.preheader

.lr.ph160.split.preheader:                        ; preds = %.lr.ph160
  %i.an = sext i32 %i.d to i64                    ; 3 uses
  %i.ao = sub i32 %i.ai, %i.ag
  %i.ap = shl nsw i64 %i.an, 3
  %i.aq = add nsw i64 %i.ap, -1
  %diff.check = icmp ult i64 %i.aq, 127
  br label %.lr.ph160.split

.lr.ph160.split.us.preheader:                     ; preds = %.lr.ph160
  %i.ar = add i32 %i.d, 1
  %i.as = mul i32 %i.ai, %i.ar
  %i.at = add i32 %i.as, 1
  %i.au = xor i32 %i.ai, -1
  %i.av = add i32 %i.ae, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 8
  %i.az = sext i32 %i.d to i64                    ; 3 uses
  %i.ba = sub i32 %i.ai, %i.ag
  %i.bb = shl nsw i64 %i.az, 3
  %i.bc = add nsw i64 %i.bb, -1
  %diff.check273 = icmp ult i64 %i.bc, 127
  br label %.lr.ph160.split.us

.lr.ph160.split.us:                               ; preds = %.lr.ph160.split.us.preheader, %.preheader148.us
  %indvars.iv201 = phi i64 [ %i.am, %.lr.ph160.split.us.preheader ], [ %indvars.iv.next202, %.preheader148.us ] ; 9 uses
  %indvar191 = phi i32 [ 0, %.lr.ph160.split.us.preheader ], [ %indvar.next192, %.preheader148.us ] ; 4 uses
  %i.bd = add i32 %indvar191, -1                  ; 3 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.be, 1                ; 5 uses
  %i.bg = mul i32 %i.d, %indvar191                ; 2 uses
  %i.bh = sub i32 %i.at, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 3
  %scevgep209 = getelementptr i8, ptr %scevgep190, i64 %i.bj
  %indvars.iv.next202 = add nsw i64 %indvars.iv201, -1 ; 2 uses
  %.not134.not150.us = icmp sgt i64 %indvars.iv201, 1
  br i1 %.not134.not150.us, label %.lr.ph.us, label %.preheader149.us

vec.epilog.scalar.ph290:                          ; preds = %vec.epilog.scalar.ph290.prol.loopexit, %vec.epilog.scalar.ph290
  %indvars.iv203 = phi i64 [ %indvars.iv.next204.7, %vec.epilog.scalar.ph290 ], [ %indvars.iv203.unr, %vec.epilog.scalar.ph290.prol.loopexit ] ; 8 uses
  %indvars.iv.next204 = add nsw i64 %indvars.iv203, 1 ; 2 uses
  %gep256 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204
  %i.bk = load double, ptr %gep256, align 8, !tbaa !9
  %gep258 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204
  store double %i.bk, ptr %gep258, align 8, !tbaa !9
  %indvars.iv.next204.1 = add nsw i64 %indvars.iv203, 2 ; 2 uses
  %gep256.1 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.1
  %i.bl = load double, ptr %gep256.1, align 8, !tbaa !9
  %gep258.1 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.1
  store double %i.bl, ptr %gep258.1, align 8, !tbaa !9
  %indvars.iv.next204.2 = add nsw i64 %indvars.iv203, 3 ; 2 uses
  %gep256.2 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.2
  %i.bm = load double, ptr %gep256.2, align 8, !tbaa !9
  %gep258.2 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.2
  store double %i.bm, ptr %gep258.2, align 8, !tbaa !9
  %indvars.iv.next204.3 = add nsw i64 %indvars.iv203, 4 ; 2 uses
  %gep256.3 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.3
  %i.bn = load double, ptr %gep256.3, align 8, !tbaa !9
  %gep258.3 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.3
  store double %i.bn, ptr %gep258.3, align 8, !tbaa !9
  %indvars.iv.next204.4 = add nsw i64 %indvars.iv203, 5 ; 2 uses
  %gep256.4 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.4
  %i.bo = load double, ptr %gep256.4, align 8, !tbaa !9
  %gep258.4 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.4
  store double %i.bo, ptr %gep258.4, align 8, !tbaa !9
  %indvars.iv.next204.5 = add nsw i64 %indvars.iv203, 6 ; 2 uses
  %gep256.5 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.5
  %i.bp = load double, ptr %gep256.5, align 8, !tbaa !9
  %gep258.5 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.5
  store double %i.bp, ptr %gep258.5, align 8, !tbaa !9
  %indvars.iv.next204.6 = add nsw i64 %indvars.iv203, 7 ; 2 uses
  %gep256.6 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.6
  %i.bq = load double, ptr %gep256.6, align 8, !tbaa !9
  %gep258.6 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.6
  store double %i.bq, ptr %gep258.6, align 8, !tbaa !9
  %indvars.iv.next204.7 = add nsw i64 %indvars.iv203, 8 ; 4 uses
  %gep256.7 = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.7
  %i.br = load double, ptr %gep256.7, align 8, !tbaa !9
  %gep258.7 = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.7
  store double %i.br, ptr %gep258.7, align 8, !tbaa !9
  %lftr.wideiv206.7 = trunc i64 %indvars.iv.next204.7 to i32
  %exitcond207.not.7 = icmp eq i32 %i.ai, %lftr.wideiv206.7
  br i1 %exitcond207.not.7, label %.preheader148.us, label %vec.epilog.scalar.ph290, !llvm.loop !11

.preheader148.us:                                 ; preds = %vec.epilog.scalar.ph290.prol.loopexit, %vec.epilog.scalar.ph290, %middle.block286, %vec.epilog.middle.block299, %.preheader149.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep209, i8 0, i64 %i.ay, i1 false), !tbaa !9
  %indvar.next192 = add i32 %indvar191, 1         ; 2 uses
  %exitcond214.not = icmp eq i32 %indvar.next192, %i.ba
  br i1 %exitcond214.not, label %._crit_edge, label %.lr.ph160.split.us, !llvm.loop !14

.preheader149.us:                                 ; preds = %.lr.ph.us, %.lr.ph160.split.us
  %.not135.not152.us = icmp slt i64 %indvars.iv201, %i.am
  br i1 %.not135.not152.us, label %iter.check289, label %.preheader148.us

.lr.ph.us:                                        ; preds = %.lr.ph160.split.us
  %i.bs = xor i32 %indvar191, -1
  %i.bt = add i32 %i.ai, %i.bs
  %i.bu = zext i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = sub i32 %i.al, %i.bg
  %i.bx = sext i32 %i.bw to i64
  %i.by = shl nsw i64 %i.bx, 3
  %scevgep193 = getelementptr i8, ptr %scevgep190, i64 %i.by
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep193, i8 0, i64 %i.bv, i1 false), !tbaa !9
  br label %.preheader149.us

iter.check289:                                    ; preds = %.preheader149.us
  %i.bz = mul nsw i64 %indvars.iv.next202, %i.az
  %i.ca = mul nsw i64 %indvars.iv201, %i.az
  %invariant.gep255 = getelementptr [8 x i8], ptr %i.f, i64 %i.bz ; 11 uses
  %invariant.gep257 = getelementptr [8 x i8], ptr %i.f, i64 %i.ca ; 11 uses
  %min.iters.check274 = icmp ult i32 %i.bd, 3
  %or.cond385 = select i1 %min.iters.check274, i1 true, i1 %diff.check273
  br i1 %or.cond385, label %vec.epilog.scalar.ph290.preheader, label %vector.main.loop.iter.check275

vector.main.loop.iter.check275:                   ; preds = %iter.check289
  %min.iters.check276 = icmp ult i32 %i.bd, 15
  br i1 %min.iters.check276, label %vec.epilog.ph293, label %vector.ph277

vector.ph277:                                     ; preds = %vector.main.loop.iter.check275
  %i.cb = and i64 %i.bf, 12
  %n.vec278 = and i64 %i.bf, 8589934576           ; 4 uses
  %i.cc = add i64 %indvars.iv201, %n.vec278
  %invariant.op410 = add i64 %indvars.iv201, 1
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph277
  %index280 = phi i64 [ 0, %vector.ph277 ], [ %index.next285, %vector.body279 ] ; 2 uses
  %.reass411 = add i64 %index280, %invariant.op410 ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %invariant.gep255, i64 %.reass411 ; 4 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 32
  %i.cf = getelementptr i8, ptr %i.cd, i64 64
  %i.cg = getelementptr i8, ptr %i.cd, i64 96
  %wide.load281 = load <4 x double>, ptr %i.cd, align 8, !tbaa !9
  %wide.load282 = load <4 x double>, ptr %i.ce, align 8, !tbaa !9
  %wide.load283 = load <4 x double>, ptr %i.cf, align 8, !tbaa !9
  %wide.load284 = load <4 x double>, ptr %i.cg, align 8, !tbaa !9
  %i.ch = getelementptr [8 x i8], ptr %invariant.gep257, i64 %.reass411 ; 4 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 32
  %i.cj = getelementptr i8, ptr %i.ch, i64 64
  %i.ck = getelementptr i8, ptr %i.ch, i64 96
  store <4 x double> %wide.load281, ptr %i.ch, align 8, !tbaa !9
  store <4 x double> %wide.load282, ptr %i.ci, align 8, !tbaa !9
  store <4 x double> %wide.load283, ptr %i.cj, align 8, !tbaa !9
  store <4 x double> %wide.load284, ptr %i.ck, align 8, !tbaa !9
  %index.next285 = add nuw i64 %index280, 16      ; 2 uses
  %i.cl = icmp eq i64 %index.next285, %n.vec278
  br i1 %i.cl, label %middle.block286, label %vector.body279, !llvm.loop !15

middle.block286:                                  ; preds = %vector.body279
  %cmp.n287 = icmp eq i64 %i.bf, %n.vec278
  br i1 %cmp.n287, label %.preheader148.us, label %vec.epilog.iter.check291

vec.epilog.iter.check291:                         ; preds = %middle.block286
  %min.epilog.iters.check292 = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check292, label %vec.epilog.scalar.ph290.preheader, label %vec.epilog.ph293, !prof !17

vec.epilog.ph293:                                 ; preds = %vector.main.loop.iter.check275, %vec.epilog.iter.check291
  %vec.epilog.resume.val288 = phi i64 [ %n.vec278, %vec.epilog.iter.check291 ], [ 0, %vector.main.loop.iter.check275 ]
  %n.vec294 = and i64 %i.bf, 8589934588           ; 3 uses
  %i.cm = add i64 %indvars.iv201, %n.vec294
  %invariant.op412 = add i64 %indvars.iv201, 1
  br label %vec.epilog.vector.body295

vec.epilog.vector.body295:                        ; preds = %vec.epilog.vector.body295, %vec.epilog.ph293
  %index296 = phi i64 [ %vec.epilog.resume.val288, %vec.epilog.ph293 ], [ %index.next298, %vec.epilog.vector.body295 ] ; 2 uses
  %.reass413 = add i64 %index296, %invariant.op412 ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %invariant.gep255, i64 %.reass413
  %wide.load297 = load <4 x double>, ptr %i.cn, align 8, !tbaa !9
  %i.co = getelementptr [8 x i8], ptr %invariant.gep257, i64 %.reass413
  store <4 x double> %wide.load297, ptr %i.co, align 8, !tbaa !9
  %index.next298 = add nuw i64 %index296, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next298, %n.vec294
  br i1 %i.cp, label %vec.epilog.middle.block299, label %vec.epilog.vector.body295, !llvm.loop !18

vec.epilog.middle.block299:                       ; preds = %vec.epilog.vector.body295
  %cmp.n300 = icmp eq i64 %i.bf, %n.vec294
  br i1 %cmp.n300, label %.preheader148.us, label %vec.epilog.scalar.ph290.preheader

vec.epilog.scalar.ph290.preheader:                ; preds = %iter.check289, %vec.epilog.iter.check291, %vec.epilog.middle.block299
  %indvars.iv203.ph = phi i64 [ %indvars.iv201, %iter.check289 ], [ %i.cc, %vec.epilog.iter.check291 ], [ %i.cm, %vec.epilog.middle.block299 ] ; 3 uses
  %i.cq = trunc i64 %indvars.iv203.ph to i32      ; 2 uses
  %i.cr = sub i32 %i.ai, %i.cq
  %xtraiter390 = and i32 %i.cr, 7                 ; 2 uses
  %lcmp.mod391.not = icmp eq i32 %xtraiter390, 0
  br i1 %lcmp.mod391.not, label %vec.epilog.scalar.ph290.prol.loopexit, label %vec.epilog.scalar.ph290.prol

end_hunk_0
begin_hunk_1_@dorghr_:bb.a
  %indvars.iv203.prol = phi i64 [ %indvars.iv.next204.prol, %vec.epilog.scalar.ph290.prol ], [ %indvars.iv203.ph, %vec.epilog.scalar.ph290.preheader ]
  %prol.iter392 = phi i32 [ %prol.iter392.next, %vec.epilog.scalar.ph290.prol ], [ 0, %vec.epilog.scalar.ph290.preheader ]
  %indvars.iv.next204.prol = add nsw i64 %indvars.iv203.prol, 1 ; 4 uses
  %gep256.prol = getelementptr [8 x i8], ptr %invariant.gep255, i64 %indvars.iv.next204.prol
  %i.cs = load double, ptr %gep256.prol, align 8, !tbaa !9
  %gep258.prol = getelementptr [8 x i8], ptr %invariant.gep257, i64 %indvars.iv.next204.prol
  store double %i.cs, ptr %gep258.prol, align 8, !tbaa !9
  %prol.iter392.next = add i32 %prol.iter392, 1   ; 2 uses
  %prol.iter392.cmp.not = icmp eq i32 %prol.iter392.next, %xtraiter390
  br i1 %prol.iter392.cmp.not, label %vec.epilog.scalar.ph290.prol.loopexit, label %vec.epilog.scalar.ph290.prol, !llvm.loop !19

vec.epilog.scalar.ph290.prol.loopexit:            ; preds = %vec.epilog.scalar.ph290.prol, %vec.epilog.scalar.ph290.preheader
  %indvars.iv203.unr = phi i64 [ %indvars.iv203.ph, %vec.epilog.scalar.ph290.preheader ], [ %indvars.iv.next204.prol, %vec.epilog.scalar.ph290.prol ]
  %i.ct = sub i32 %i.cq, %i.ai
  %i.cu = icmp ugt i32 %i.ct, -8
  br i1 %i.cu, label %.preheader148.us, label %vec.epilog.scalar.ph290

.lr.ph160.split:                                  ; preds = %.lr.ph160.split.preheader, %.preheader148
  %indvars.iv = phi i64 [ %i.am, %.lr.ph160.split.preheader ], [ %indvars.iv.next, %.preheader148 ] ; 9 uses
  %indvar = phi i32 [ 0, %.lr.ph160.split.preheader ], [ %indvar.next, %.preheader148 ] ; 4 uses
  %i.cv = add i32 %indvar, -1                     ; 3 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.not134.not150 = icmp sgt i64 %indvars.iv, 1
  br i1 %.not134.not150, label %.lr.ph, label %.preheader149

.lr.ph:                                           ; preds = %.lr.ph160.split
  %i.cy = xor i32 %indvar, -1
  %i.cz = add i32 %i.ai, %i.cy
  %i.da = zext i32 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = mul i32 %i.d, %indvar
  %i.dd = sub i32 %i.al, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = shl nsw i64 %i.de, 3
  %scevgep179 = getelementptr i8, ptr %scevgep190, i64 %i.df
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep179, i8 0, i64 %i.db, i1 false), !tbaa !9
  br label %.preheader149

.preheader149:                                    ; preds = %.lr.ph, %.lr.ph160.split
  %.not135.not152 = icmp slt i64 %indvars.iv, %i.am
  br i1 %.not135.not152, label %iter.check, label %.preheader148

iter.check:                                       ; preds = %.preheader149
  %i.dg = mul nsw i64 %indvars.iv.next, %i.an
  %i.dh = mul nsw i64 %indvars.iv, %i.an
  %invariant.gep = getelementptr [8 x i8], ptr %i.f, i64 %i.dg ; 11 uses
  %invariant.gep253 = getelementptr [8 x i8], ptr %i.f, i64 %i.dh ; 11 uses
  %min.iters.check = icmp ult i32 %i.cv, 3
  %or.cond386 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond386, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check262 = icmp ult i32 %i.cv, 15
  br i1 %min.iters.check262, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.di = and i64 %i.cx, 12
  %n.vec = and i64 %i.cx, 8589934576              ; 4 uses
  %i.dj = add i64 %indvars.iv, %n.vec
  %invariant.op = add i64 %indvars.iv, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i64 %index, %invariant.op         ; 2 uses
  %i.dk = getelementptr [8 x i8], ptr %invariant.gep, i64 %.reass ; 4 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 32
  %i.dm = getelementptr i8, ptr %i.dk, i64 64
  %i.dn = getelementptr i8, ptr %i.dk, i64 96
  %wide.load = load <4 x double>, ptr %i.dk, align 8, !tbaa !9
  %wide.load263 = load <4 x double>, ptr %i.dl, align 8, !tbaa !9
  %wide.load264 = load <4 x double>, ptr %i.dm, align 8, !tbaa !9
  %wide.load265 = load <4 x double>, ptr %i.dn, align 8, !tbaa !9
  %i.do = getelementptr [8 x i8], ptr %invariant.gep253, i64 %.reass ; 4 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 32
  %i.dq = getelementptr i8, ptr %i.do, i64 64
  %i.dr = getelementptr i8, ptr %i.do, i64 96
  store <4 x double> %wide.load, ptr %i.do, align 8, !tbaa !9
  store <4 x double> %wide.load263, ptr %i.dp, align 8, !tbaa !9
  store <4 x double> %wide.load264, ptr %i.dq, align 8, !tbaa !9
  store <4 x double> %wide.load265, ptr %i.dr, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %.preheader148, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.di, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec266 = and i64 %i.cx, 8589934588           ; 3 uses
  %i.dt = add i64 %indvars.iv, %n.vec266
  %invariant.op408 = add i64 %indvars.iv, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index267 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next269, %vec.epilog.vector.body ] ; 2 uses
  %.reass409 = add i64 %index267, %invariant.op408 ; 2 uses
  %i.du = getelementptr [8 x i8], ptr %invariant.gep, i64 %.reass409
  %wide.load268 = load <4 x double>, ptr %i.du, align 8, !tbaa !9
  %i.dv = getelementptr [8 x i8], ptr %invariant.gep253, i64 %.reass409
  store <4 x double> %wide.load268, ptr %i.dv, align 8, !tbaa !9
  %index.next269 = add nuw i64 %index267, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next269, %n.vec266
  br i1 %i.dw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n270 = icmp eq i64 %i.cx, %n.vec266
  br i1 %cmp.n270, label %.preheader148, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv185.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.dj, %vec.epilog.iter.check ], [ %i.dt, %vec.epilog.middle.block ] ; 3 uses
  %i.dx = trunc i64 %indvars.iv185.ph to i32      ; 2 uses
  %i.dy = sub i32 %i.ai, %i.dx
  %xtraiter = and i32 %i.dy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv185.prol = phi i64 [ %indvars.iv.next186.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv185.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next186.prol = add nsw i64 %indvars.iv185.prol, 1 ; 4 uses
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next186.prol
  %i.dz = load double, ptr %gep.prol, align 8, !tbaa !9
  %gep254.prol = getelementptr [8 x i8], ptr %invariant.gep253, i64 %indvars.iv.next186.prol
  store double %i.dz, ptr %gep254.prol, align 8, !tbaa !9
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !23

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv185.unr = phi i64 [ %indvars.iv185.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next186.prol, %vec.epilog.scalar.ph.prol ]
  %i.ea = sub i32 %i.dx, %i.ai
  %i.eb = icmp ugt i32 %i.ea, -8
  br i1 %i.eb, label %.preheader148, label %vec.epilog.scalar.ph

.preheader148:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader149
  %indvar.next = add i32 %indvar, 1               ; 2 uses
  %exitcond189.not = icmp eq i32 %indvar.next, %i.ao
  br i1 %exitcond189.not, label %._crit_edge, label %.lr.ph160.split, !llvm.loop !14

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv185 = phi i64 [ %indvars.iv.next186.7, %vec.epilog.scalar.ph ], [ %indvars.iv185.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 8 uses
  %indvars.iv.next186 = add nsw i64 %indvars.iv185, 1 ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next186
  %i.ec = load double, ptr %gep, align 8, !tbaa !9
  %gep254 = getelementptr [8 x i8], ptr %invariant.gep253, i64 %indvars.iv.next186
  store double %i.ec, ptr %gep254, align 8, !tbaa !9
  %indvars.iv.next186.1 = add nsw i64 %indvars.iv185, 2 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next186.1
  %i.ed = load double, ptr %gep.1, align 8, !tbaa !9
  %gep254.1 = getelementptr [8 x i8], ptr %invariant.gep253, i64 %indvars.iv.next186.1
  store double %i.ed, ptr %gep254.1, align 8, !tbaa !9
  %indvars.iv.next186.2 = add nsw i64 %indvars.iv185, 3 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next186.2
  %i.ee = load double, ptr %gep.2, align 8, !tbaa !9
  %gep254.2 = getelementptr [8 x i8], ptr %invariant.gep253, i64 %indvars.iv.next186.2
  store double %i.ee, ptr %gep254.2, align 8, !tbaa !9
  %indvars.iv.next186.3 = add nsw i64 %indvars.iv185, 4 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next186.3
  %i.ef = load double, ptr %gep.3, align 8, !tbaa !9
  %gep254.3 = getelementptr [8 x i8], ptr %invariant.gep253, i64 %indvars.iv.next186.3
  store double %i.ef, ptr %gep254.3, align 8, !tbaa !9
  %indvars.iv.next186.4 = add nsw i64 %indvars.iv185, 5 ; 2 uses
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next186.4
  %i.eg = load double, ptr %gep.4, align 8, !tbaa !9
  %gep254.4 = getelementptr [8 x i8], ptr %invariant.gep253, i64 %indvars.iv.next186.4
  store double %i.eg, ptr %gep254.4, align 8, !tbaa !9
  %indvars.iv.next186.5 = add nsw i64 %indvars.iv185, 6 ; 2 uses
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next186.5
  %i.eh = load double, ptr %gep.5, align 8, !tbaa !9
  %gep254.5 = getelementptr [8 x i8], ptr %invariant.gep253, i64 %indvars.iv.next186.5
  store double %i.eh, ptr %gep254.5, align 8, !tbaa !9
  %indvars.iv.next186.6 = add nsw i64 %indvars.iv185, 7 ; 2 uses
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next186.6
  %i.ei = load double, ptr %gep.6, align 8, !tbaa !9
  %gep254.6 = getelementptr [8 x i8], ptr %invariant.gep253, i64 %indvars.iv.next186.6
  store double %i.ei, ptr %gep254.6, align 8, !tbaa !9
  %indvars.iv.next186.7 = add nsw i64 %indvars.iv185, 8 ; 4 uses
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next186.7
  %i.ej = load double, ptr %gep.7, align 8, !tbaa !9
  %gep254.7 = getelementptr [8 x i8], ptr %invariant.gep253, i64 %indvars.iv.next186.7
  store double %i.ej, ptr %gep254.7, align 8, !tbaa !9
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next186.7 to i32
  %exitcond.not.7 = icmp eq i32 %i.ai, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %.preheader148, label %vec.epilog.scalar.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %.preheader148, %.preheader148.us, %bb.j
  %.not130165 = icmp slt i32 %i.ag, 1
  br i1 %.not130165, label %._crit_edge167, label %.preheader147.lr.ph

.preheader147.lr.ph:                              ; preds = %._crit_edge
  %.not133161 = icmp slt i32 %i.ae, 1
  %i.ek = add i32 %i.d, 1                         ; 24 uses
  br i1 %.not133161, label %iter.check316, label %.preheader147.preheader

.preheader147.preheader:                          ; preds = %.preheader147.lr.ph
  %i.el = sext i32 %i.ek to i64
  %i.em = add nsw i64 %i.e, %i.el
  %i.en = shl nsw i64 %i.em, 3
  %i.eo = sext i32 %i.d to i64
  %i.ep = shl nsw i64 %i.eo, 3                    ; 5 uses
  %i.eq = zext nneg i32 %i.ae to i64
  %i.er = shl nuw nsw i64 %i.eq, 3                ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 2 uses
  %i.es = getelementptr i8, ptr %3, i64 %i.en     ; 5 uses
  %xtraiter393 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.et = icmp ult i32 %i.ag, 4
  br i1 %i.et, label %.preheader147.epil.preheader, label %.preheader147.preheader.new

.preheader147.preheader.new:                      ; preds = %.preheader147.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.preheader147

iter.check316:                                    ; preds = %.preheader147.lr.ph
  %wide.trip.count228 = zext i32 %i.ah to i64     ; 5 uses
  %i.eu = add nsw i64 %wide.trip.count228, -1     ; 5 uses
  %min.iters.check302 = icmp ult i32 %i.ah, 5
  br i1 %min.iters.check302, label %.preheader147.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check316
  %9 = add nsw i64 %wide.trip.count228, -2        ; 2 uses
  %10 = icmp slt i32 %i.ek, 0                     ; 2 uses
  %11 = select i1 %10, i32 %narrow, i32 %i.ek
  %12 = trunc i64 %9 to i32
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 %12) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %13 = add i32 %i.ek, %mul.result
  %14 = sub i32 %i.ek, %mul.result
  %15 = icmp slt i32 %13, %i.ek
  %16 = icmp sgt i32 %14, %i.ek
  %17 = select i1 %10, i1 %16, i1 %15
  %18 = or i1 %17, %mul.overflow
  %19 = icmp ugt i64 %9, 4294967295
  %20 = icmp ne i32 %i.ek, 0
  %21 = and i1 %19, %20
  %22 = or i1 %18, %21
  br i1 %22, label %.preheader147.us.preheader, label %vector.main.loop.iter.check303

vector.main.loop.iter.check303:                   ; preds = %vector.scevcheck
  %min.iters.check304 = icmp ult i32 %i.ah, 17
  br i1 %min.iters.check304, label %vec.epilog.ph320, label %vector.ph305

vector.ph305:                                     ; preds = %vector.main.loop.iter.check303
  %i.ev = and i64 %i.eu, 12
  %n.vec306 = and i64 %i.eu, -16                  ; 4 uses
  %i.ew = or disjoint i64 %n.vec306, 1            ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph305
  %index308 = phi i64 [ 0, %vector.ph305 ], [ %index.next312, %vector.body307 ]
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph305 ], [ %vec.ind.next, %vector.body307 ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add.2 = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.3 = add <4 x i32> %vec.ind, splat (i32 12)
  %i.ex = mul <4 x i32> %broadcast.splat, %vec.ind
  %i.ey = mul <4 x i32> %broadcast.splat, %step.add
  %i.ez = mul <4 x i32> %broadcast.splat, %step.add.2
  %i.fa = mul <4 x i32> %broadcast.splat, %step.add.3
  %i.fb = sext <4 x i32> %i.ex to <4 x i64>
  %i.fc = sext <4 x i32> %i.ey to <4 x i64>
  %i.fd = sext <4 x i32> %i.ez to <4 x i64>
  %i.fe = sext <4 x i32> %i.fa to <4 x i64>
  %wide.gep = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.fb
  %wide.gep309 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.fc
  %wide.gep310 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.fd
  %wide.gep311 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.fe
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !9
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep309, <4 x i1> splat (i1 true)), !tbaa !9
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep310, <4 x i1> splat (i1 true)), !tbaa !9
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep311, <4 x i1> splat (i1 true)), !tbaa !9
  %index.next312 = add nuw i64 %index308, 16      ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.ff = icmp eq i64 %index.next312, %n.vec306
  br i1 %i.ff, label %middle.block313, label %vector.body307, !llvm.loop !25

middle.block313:                                  ; preds = %vector.body307
  %cmp.n314 = icmp eq i64 %i.eu, %n.vec306
  br i1 %cmp.n314, label %._crit_edge167, label %vec.epilog.iter.check318

vec.epilog.iter.check318:                         ; preds = %middle.block313
  %min.epilog.iters.check319 = icmp eq i64 %i.ev, 0
  br i1 %min.epilog.iters.check319, label %.preheader147.us.preheader, label %vec.epilog.ph320, !prof !17

vec.epilog.ph320:                                 ; preds = %vector.main.loop.iter.check303, %vec.epilog.iter.check318
  %vec.epilog.resume.val315 = phi i64 [ %n.vec306, %vec.epilog.iter.check318 ], [ 0, %vector.main.loop.iter.check303 ]
  %bc.resume.val = phi i64 [ %i.ew, %vec.epilog.iter.check318 ], [ 1, %vector.main.loop.iter.check303 ]
  %n.vec321 = and i64 %i.eu, -4                   ; 3 uses
  %i.fg = or disjoint i64 %n.vec321, 1
  %broadcast.splatinsert322 = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %broadcast.splat323 = shufflevector <4 x i32> %broadcast.splatinsert322, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fh = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert324 = insertelement <4 x i32> poison, i32 %i.fh, i64 0
  %broadcast.splat325 = shufflevector <4 x i32> %broadcast.splatinsert324, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat325, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body326

vec.epilog.vector.body326:                        ; preds = %vec.epilog.vector.body326, %vec.epilog.ph320
  %index327 = phi i64 [ %vec.epilog.resume.val315, %vec.epilog.ph320 ], [ %index.next330, %vec.epilog.vector.body326 ]
  %vec.ind328 = phi <4 x i32> [ %induction, %vec.epilog.ph320 ], [ %vec.ind.next331, %vec.epilog.vector.body326 ] ; 2 uses
  %i.fi = mul <4 x i32> %broadcast.splat323, %vec.ind328
  %i.fj = sext <4 x i32> %i.fi to <4 x i64>
  %wide.gep329 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.fj
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep329, <4 x i1> splat (i1 true)), !tbaa !9
  %index.next330 = add nuw i64 %index327, 4       ; 2 uses
  %vec.ind.next331 = add <4 x i32> %vec.ind328, splat (i32 4)
  %i.fk = icmp eq i64 %index.next330, %n.vec321
  br i1 %i.fk, label %vec.epilog.middle.block332, label %vec.epilog.vector.body326, !llvm.loop !26

vec.epilog.middle.block332:                       ; preds = %vec.epilog.vector.body326
  %cmp.n333 = icmp eq i64 %i.eu, %n.vec321
  br i1 %cmp.n333, label %._crit_edge167, label %.preheader147.us.preheader

.preheader147.us.preheader:                       ; preds = %vector.scevcheck, %iter.check316, %vec.epilog.iter.check318, %vec.epilog.middle.block332
  %indvars.iv225.ph = phi i64 [ 1, %iter.check316 ], [ 1, %vector.scevcheck ], [ %i.ew, %vec.epilog.iter.check318 ], [ %i.fg, %vec.epilog.middle.block332 ] ; 4 uses
  %23 = sub nsw i64 %wide.trip.count228, %indvars.iv225.ph
  %xtraiter396 = and i64 %23, 7                   ; 2 uses
  %lcmp.mod397.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod397.not, label %.preheader147.us.prol.loopexit, label %.preheader147.us.prol

.preheader147.us.prol:                            ; preds = %.preheader147.us.preheader, %.preheader147.us.prol
  %indvars.iv225.prol = phi i64 [ %indvars.iv.next226.prol, %.preheader147.us.prol ], [ %indvars.iv225.ph, %.preheader147.us.preheader ] ; 2 uses
  %prol.iter398 = phi i64 [ %prol.iter398.next, %.preheader147.us.prol ], [ 0, %.preheader147.us.preheader ]
  %24 = trunc nuw nsw i64 %indvars.iv225.prol to i32
  %25 = mul i32 %i.ek, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %26
  store double 1.000000e+00, ptr %27, align 8, !tbaa !9
  %indvars.iv.next226.prol = add nuw nsw i64 %indvars.iv225.prol, 1 ; 2 uses
  %prol.iter398.next = add i64 %prol.iter398, 1   ; 2 uses
  %prol.iter398.cmp.not = icmp eq i64 %prol.iter398.next, %xtraiter396
  br i1 %prol.iter398.cmp.not, label %.preheader147.us.prol.loopexit, label %.preheader147.us.prol, !llvm.loop !27

.preheader147.us.prol.loopexit:                   ; preds = %.preheader147.us.prol, %.preheader147.us.preheader
  %indvars.iv225.unr = phi i64 [ %indvars.iv225.ph, %.preheader147.us.preheader ], [ %indvars.iv.next226.prol, %.preheader147.us.prol ]
  %28 = sub nsw i64 %indvars.iv225.ph, %wide.trip.count228
  %29 = icmp ugt i64 %28, -8
  br i1 %29, label %._crit_edge167, label %.preheader147.us

.preheader147.us:                                 ; preds = %.preheader147.us.prol.loopexit, %.preheader147.us
  %indvars.iv225 = phi i64 [ %indvars.iv.next226.7, %.preheader147.us ], [ %indvars.iv225.unr, %.preheader147.us.prol.loopexit ] ; 9 uses
  %30 = trunc nuw nsw i64 %indvars.iv225 to i32
  %31 = mul i32 %i.ek, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %32
  store double 1.000000e+00, ptr %33, align 8, !tbaa !9
  %34 = trunc i64 %indvars.iv225 to i32
  %35 = add i32 %34, 1
  %36 = mul i32 %i.ek, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %37
  store double 1.000000e+00, ptr %38, align 8, !tbaa !9
  %39 = trunc i64 %indvars.iv225 to i32
  %40 = add i32 %39, 2
  %41 = mul i32 %i.ek, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %42
  store double 1.000000e+00, ptr %43, align 8, !tbaa !9
  %44 = trunc i64 %indvars.iv225 to i32
  %45 = add i32 %44, 3
  %46 = mul i32 %i.ek, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %47
  store double 1.000000e+00, ptr %48, align 8, !tbaa !9
  %49 = trunc i64 %indvars.iv225 to i32
  %50 = add i32 %49, 4
  %51 = mul i32 %i.ek, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %52
  store double 1.000000e+00, ptr %53, align 8, !tbaa !9
  %54 = trunc i64 %indvars.iv225 to i32
  %55 = add i32 %54, 5
  %56 = mul i32 %i.ek, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %57
  store double 1.000000e+00, ptr %58, align 8, !tbaa !9
  %59 = trunc i64 %indvars.iv225 to i32
  %60 = add i32 %59, 6
  %61 = mul i32 %i.ek, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %62
  store double 1.000000e+00, ptr %63, align 8, !tbaa !9
  %i.fl = trunc i64 %indvars.iv225 to i32
  %64 = add i32 %i.fl, 7
  %i.fm = mul i32 %i.ek, %64
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.fn
  store double 1.000000e+00, ptr %i.fo, align 8, !tbaa !9
  %indvars.iv.next226.7 = add nuw nsw i64 %indvars.iv225, 8 ; 2 uses
  %exitcond229.not.7 = icmp eq i64 %indvars.iv.next226.7, %wide.trip.count228
  br i1 %exitcond229.not.7, label %._crit_edge167, label %.preheader147.us, !llvm.loop !28

.preheader147:                                    ; preds = %.preheader147, %.preheader147.preheader.new
  %indvars.iv221 = phi i64 [ 1, %.preheader147.preheader.new ], [ %indvars.iv.next222.3, %.preheader147 ] ; 5 uses
  %indvar215 = phi i64 [ 0, %.preheader147.preheader.new ], [ %indvar.next216.3, %.preheader147 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader147.preheader.new ], [ %niter.next.3, %.preheader147 ]
  %i.fp = mul i64 %i.ep, %indvar215
  %scevgep217 = getelementptr i8, ptr %i.es, i64 %i.fp
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep217, i8 0, i64 %i.er, i1 false), !tbaa !9
  %i.fq = trunc nuw nsw i64 %indvars.iv221 to i32
  %i.fr = mul i32 %i.ek, %i.fq
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.fs
  store double 1.000000e+00, ptr %i.ft, align 8, !tbaa !9
  %indvar.next216 = or disjoint i64 %indvar215, 1
  %i.fu = mul i64 %i.ep, %indvar.next216
  %scevgep217.1 = getelementptr i8, ptr %i.es, i64 %i.fu
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep217.1, i8 0, i64 %i.er, i1 false), !tbaa !9
  %i.fv = trunc i64 %indvars.iv221 to i32
  %i.fw = add i32 %i.fv, 1
  %i.fx = mul i32 %i.ek, %i.fw
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.fy
  store double 1.000000e+00, ptr %i.fz, align 8, !tbaa !9
  %indvar.next216.1 = or disjoint i64 %indvar215, 2
  %i.ga = mul i64 %i.ep, %indvar.next216.1
  %scevgep217.2 = getelementptr i8, ptr %i.es, i64 %i.ga
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep217.2, i8 0, i64 %i.er, i1 false), !tbaa !9
  %i.gb = trunc i64 %indvars.iv221 to i32
  %i.gc = add i32 %i.gb, 2
  %i.gd = mul i32 %i.ek, %i.gc
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ge
  store double 1.000000e+00, ptr %i.gf, align 8, !tbaa !9
  %indvar.next216.2 = or disjoint i64 %indvar215, 3
  %i.gg = mul i64 %i.ep, %indvar.next216.2
  %scevgep217.3 = getelementptr i8, ptr %i.es, i64 %i.gg
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep217.3, i8 0, i64 %i.er, i1 false), !tbaa !9
  %i.gh = trunc i64 %indvars.iv221 to i32
  %i.gi = add i32 %i.gh, 3
  %i.gj = mul i32 %i.ek, %i.gi
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gk
  store double 1.000000e+00, ptr %i.gl, align 8, !tbaa !9
  %indvars.iv.next222.3 = add nuw nsw i64 %indvars.iv221, 4 ; 2 uses
  %indvar.next216.3 = add nuw nsw i64 %indvar215, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge167.loopexit388.unr-lcssa, label %.preheader147, !llvm.loop !29

._crit_edge167.loopexit388.unr-lcssa:             ; preds = %.preheader147
  %lcmp.mod394.not.a = icmp eq i64 %xtraiter393, 0
  br i1 %lcmp.mod394.not.a, label %._crit_edge167, label %.preheader147.epil.preheader

.preheader147.epil.preheader:                     ; preds = %._crit_edge167.loopexit388.unr-lcssa, %.preheader147.preheader
  %indvars.iv221.epil.init = phi i64 [ 1, %.preheader147.preheader ], [ %indvars.iv.next222.3, %._crit_edge167.loopexit388.unr-lcssa ]
  %indvar215.epil.init = phi i64 [ 0, %.preheader147.preheader ], [ %indvar.next216.3, %._crit_edge167.loopexit388.unr-lcssa ]
  %lcmp.mod395.a = icmp ne i64 %xtraiter393, 0
  call void @llvm.assume(i1 %lcmp.mod395.a)
  br label %.preheader147.epil

.preheader147.epil:                               ; preds = %.preheader147.epil, %.preheader147.epil.preheader
  %indvars.iv221.epil = phi i64 [ %indvars.iv221.epil.init, %.preheader147.epil.preheader ], [ %indvars.iv.next222.epil, %.preheader147.epil ] ; 2 uses
  %indvar215.epil = phi i64 [ %indvar215.epil.init, %.preheader147.epil.preheader ], [ %indvar.next216.epil, %.preheader147.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader147.epil.preheader ], [ %epil.iter.next, %.preheader147.epil ]
  %i.gm = mul i64 %i.ep, %indvar215.epil
  %scevgep217.epil = getelementptr i8, ptr %i.es, i64 %i.gm
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep217.epil, i8 0, i64 %i.er, i1 false), !tbaa !9
  %i.gn = trunc nuw nsw i64 %indvars.iv221.epil to i32
  %i.go = mul i32 %i.ek, %i.gn
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gp
  store double 1.000000e+00, ptr %i.gq, align 8, !tbaa !9
  %indvars.iv.next222.epil = add nuw nsw i64 %indvars.iv221.epil, 1
  %indvar.next216.epil = add nuw nsw i64 %indvar215.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter393
  br i1 %epil.iter.cmp.not, label %._crit_edge167, label %.preheader147.epil, !llvm.loop !30

._crit_edge167:                                   ; preds = %._crit_edge167.loopexit388.unr-lcssa, %.preheader147.epil, %.preheader147.us.prol.loopexit, %.preheader147.us, %middle.block313, %vec.epilog.middle.block332, %._crit_edge
  %.not131.not173 = icmp slt i32 %i.ai, %i.ae
  br i1 %.not131.not173, label %.preheader.lr.ph, label %._crit_edge175

.preheader.lr.ph:                                 ; preds = %._crit_edge167
  %.not132168 = icmp slt i32 %i.ae, 1
  %i.gr = add i32 %i.d, 1                         ; 19 uses
  br i1 %.not132168, label %iter.check365, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.2172 = add nsw i32 %i.ai, 1
  %i.gs = shl nsw i64 %i.e, 3
  %scevgep230 = getelementptr i8, ptr %3, i64 %i.gs ; 5 uses
  %i.gt = mul i32 %i.d, %.2172
  %i.gu = add i32 %i.gt, 1                        ; 5 uses
  %i.gv = zext nneg i32 %i.ae to i64
  %i.gw = shl nuw nsw i64 %i.gv, 3                ; 5 uses
  %i.gx = zext i32 %i.ai to i64                   ; 2 uses
  %i.gy = sub i32 %i.ae, %i.ai                    ; 2 uses
  %xtraiter399 = and i32 %i.gy, 3                 ; 3 uses
  %i.gz = sub i32 %i.ai, %i.ae
  %i.ha = icmp ugt i32 %i.gz, -4
  br i1 %i.ha, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter403 = and i32 %i.gy, -4
  br label %.preheader

iter.check365:                                    ; preds = %.preheader.lr.ph
  %i.hb = zext i32 %i.ai to i64
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 6 uses
  %i.hd = add nsw i32 %i.ae, 1
  %i.he = xor i32 %i.ai, -1
  %i.hf = add i32 %i.ae, %i.he                    ; 3 uses
  %i.hg = zext i32 %i.hf to i64
  %i.hh = add nuw nsw i64 %i.hg, 1                ; 5 uses
  %min.iters.check339 = icmp ult i32 %i.hf, 3
  br i1 %min.iters.check339, label %.preheader.us.preheader, label %vector.scevcheck335

vector.scevcheck335:                              ; preds = %iter.check365
  %65 = xor i32 %i.ai, -1
  %66 = add i32 %i.ae, %65
  %67 = add i32 %i.ai, 1
  %68 = mul i32 %67, %i.gr                        ; 4 uses
  %69 = icmp slt i32 %i.gr, 0                     ; 2 uses
  %70 = select i1 %69, i32 %narrow, i32 %i.gr
  %mul336 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %70, i32 %66) ; 2 uses
  %mul.result337 = extractvalue { i32, i1 } %mul336, 0 ; 2 uses
  %mul.overflow338 = extractvalue { i32, i1 } %mul336, 1
  %71 = add i32 %68, %mul.result337
  %72 = sub i32 %68, %mul.result337
  %73 = icmp slt i32 %71, %68
  %74 = icmp sgt i32 %72, %68
  %75 = select i1 %69, i1 %74, i1 %73
  %76 = or i1 %75, %mul.overflow338
  br i1 %76, label %.preheader.us.preheader, label %vector.main.loop.iter.check340

vector.main.loop.iter.check340:                   ; preds = %vector.scevcheck335
  %min.iters.check341 = icmp ult i32 %i.hf, 15
  br i1 %min.iters.check341, label %vec.epilog.ph369, label %vector.ph342

vector.ph342:                                     ; preds = %vector.main.loop.iter.check340
  %i.hi = and i64 %i.hh, 12
  %n.vec343 = and i64 %i.hh, 8589934576           ; 4 uses
  %i.hj = add nuw nsw i64 %i.hc, %n.vec343        ; 2 uses
  %broadcast.splatinsert344 = insertelement <4 x i32> poison, i32 %i.gr, i64 0
  %broadcast.splat345 = shufflevector <4 x i32> %broadcast.splatinsert344, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hk = trunc i64 %i.hc to i32
  %broadcast.splatinsert346 = insertelement <4 x i32> poison, i32 %i.hk, i64 0
  %broadcast.splat347 = shufflevector <4 x i32> %broadcast.splatinsert346, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction348 = add <4 x i32> %broadcast.splat347, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body349

vector.body349:                                   ; preds = %vector.body349, %vector.ph342
  %index350 = phi i64 [ 0, %vector.ph342 ], [ %index.next359, %vector.body349 ]
  %vec.ind351 = phi <4 x i32> [ %induction348, %vector.ph342 ], [ %vec.ind.next360, %vector.body349 ] ; 5 uses
  %step.add352 = add <4 x i32> %vec.ind351, splat (i32 4)
  %step.add.2353 = add <4 x i32> %vec.ind351, splat (i32 8)
  %step.add.3354 = add <4 x i32> %vec.ind351, splat (i32 12)
  %i.hl = mul <4 x i32> %broadcast.splat345, %vec.ind351
  %i.hm = mul <4 x i32> %broadcast.splat345, %step.add352
  %i.hn = mul <4 x i32> %broadcast.splat345, %step.add.2353
  %i.ho = mul <4 x i32> %broadcast.splat345, %step.add.3354
  %i.hp = sext <4 x i32> %i.hl to <4 x i64>
  %i.hq = sext <4 x i32> %i.hm to <4 x i64>
  %i.hr = sext <4 x i32> %i.hn to <4 x i64>
  %i.hs = sext <4 x i32> %i.ho to <4 x i64>
  %wide.gep355 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.hp
  %wide.gep356 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.hq
  %wide.gep357 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.hr
  %wide.gep358 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.hs
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep355, <4 x i1> splat (i1 true)), !tbaa !9
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep356, <4 x i1> splat (i1 true)), !tbaa !9
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep357, <4 x i1> splat (i1 true)), !tbaa !9
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep358, <4 x i1> splat (i1 true)), !tbaa !9
  %index.next359 = add nuw i64 %index350, 16      ; 2 uses
  %vec.ind.next360 = add <4 x i32> %vec.ind351, splat (i32 16)
  %i.ht = icmp eq i64 %index.next359, %n.vec343
  br i1 %i.ht, label %middle.block361, label %vector.body349, !llvm.loop !31

middle.block361:                                  ; preds = %vector.body349
  %cmp.n362 = icmp eq i64 %i.hh, %n.vec343
  br i1 %cmp.n362, label %._crit_edge175, label %vec.epilog.iter.check367

vec.epilog.iter.check367:                         ; preds = %middle.block361
  %min.epilog.iters.check368 = icmp eq i64 %i.hi, 0
  br i1 %min.epilog.iters.check368, label %.preheader.us.preheader, label %vec.epilog.ph369, !prof !17

vec.epilog.ph369:                                 ; preds = %vector.main.loop.iter.check340, %vec.epilog.iter.check367
  %vec.epilog.resume.val363 = phi i64 [ %n.vec343, %vec.epilog.iter.check367 ], [ 0, %vector.main.loop.iter.check340 ]
  %bc.resume.val364 = phi i64 [ %i.hj, %vec.epilog.iter.check367 ], [ %i.hc, %vector.main.loop.iter.check340 ]
  %n.vec370 = and i64 %i.hh, 8589934588           ; 3 uses
  %i.hu = add nuw nsw i64 %i.hc, %n.vec370
  %broadcast.splatinsert371 = insertelement <4 x i32> poison, i32 %i.gr, i64 0
  %broadcast.splat372 = shufflevector <4 x i32> %broadcast.splatinsert371, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hv = trunc i64 %bc.resume.val364 to i32
  %broadcast.splatinsert373 = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %broadcast.splat374 = shufflevector <4 x i32> %broadcast.splatinsert373, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction375 = add <4 x i32> %broadcast.splat374, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body376

vec.epilog.vector.body376:                        ; preds = %vec.epilog.vector.body376, %vec.epilog.ph369
  %index377 = phi i64 [ %vec.epilog.resume.val363, %vec.epilog.ph369 ], [ %index.next380, %vec.epilog.vector.body376 ]
  %vec.ind378 = phi <4 x i32> [ %induction375, %vec.epilog.ph369 ], [ %vec.ind.next381, %vec.epilog.vector.body376 ] ; 2 uses
  %i.hw = mul <4 x i32> %broadcast.splat372, %vec.ind378
  %i.hx = sext <4 x i32> %i.hw to <4 x i64>
  %wide.gep379 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.hx
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep379, <4 x i1> splat (i1 true)), !tbaa !9
  %index.next380 = add nuw i64 %index377, 4       ; 2 uses
  %vec.ind.next381 = add <4 x i32> %vec.ind378, splat (i32 4)
  %i.hy = icmp eq i64 %index.next380, %n.vec370
  br i1 %i.hy, label %vec.epilog.middle.block382, label %vec.epilog.vector.body376, !llvm.loop !32

vec.epilog.middle.block382:                       ; preds = %vec.epilog.vector.body376
  %cmp.n383 = icmp eq i64 %i.hh, %n.vec370
  br i1 %cmp.n383, label %._crit_edge175, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %vector.scevcheck335, %iter.check365, %vec.epilog.iter.check367, %vec.epilog.middle.block382
  %indvars.iv241.ph = phi i64 [ %i.hc, %iter.check365 ], [ %i.hc, %vector.scevcheck335 ], [ %i.hj, %vec.epilog.iter.check367 ], [ %i.hu, %vec.epilog.middle.block382 ] ; 3 uses
  %77 = add i32 %i.ae, 1
  %78 = trunc i64 %indvars.iv241.ph to i32        ; 2 uses
  %79 = sub i32 %77, %78
  %80 = sub i32 %i.ae, %78
  %xtraiter405 = and i32 %79, 7                   ; 2 uses
  %lcmp.mod406.not = icmp eq i32 %xtraiter405, 0
  br i1 %lcmp.mod406.not, label %.preheader.us.prol.loopexit, label %.preheader.us.prol

.preheader.us.prol:                               ; preds = %.preheader.us.preheader, %.preheader.us.prol
  %indvars.iv241.prol = phi i64 [ %indvars.iv.next242.prol, %.preheader.us.prol ], [ %indvars.iv241.ph, %.preheader.us.preheader ] ; 2 uses
  %prol.iter407 = phi i32 [ %prol.iter407.next, %.preheader.us.prol ], [ 0, %.preheader.us.preheader ]
  %81 = trunc i64 %indvars.iv241.prol to i32
  %82 = mul i32 %i.gr, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %83
  store double 1.000000e+00, ptr %84, align 8, !tbaa !9
  %indvars.iv.next242.prol = add i64 %indvars.iv241.prol, 1 ; 2 uses
  %prol.iter407.next = add i32 %prol.iter407, 1   ; 2 uses
  %prol.iter407.cmp.not = icmp eq i32 %prol.iter407.next, %xtraiter405
  br i1 %prol.iter407.cmp.not, label %.preheader.us.prol.loopexit, label %.preheader.us.prol, !llvm.loop !33

.preheader.us.prol.loopexit:                      ; preds = %.preheader.us.prol, %.preheader.us.preheader
  %indvars.iv241.unr = phi i64 [ %indvars.iv241.ph, %.preheader.us.preheader ], [ %indvars.iv.next242.prol, %.preheader.us.prol ]
  %85 = icmp ult i32 %80, 7
  br i1 %85, label %._crit_edge175, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.prol.loopexit, %.preheader.us
  %indvars.iv241 = phi i64 [ %indvars.iv.next242.7, %.preheader.us ], [ %indvars.iv241.unr, %.preheader.us.prol.loopexit ] ; 9 uses
  %86 = trunc i64 %indvars.iv241 to i32
  %87 = mul i32 %i.gr, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %88
  store double 1.000000e+00, ptr %89, align 8, !tbaa !9
  %90 = trunc i64 %indvars.iv241 to i32
  %91 = add i32 %90, 1
  %92 = mul i32 %i.gr, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %93
  store double 1.000000e+00, ptr %94, align 8, !tbaa !9
  %95 = trunc i64 %indvars.iv241 to i32
  %96 = add i32 %95, 2
  %97 = mul i32 %i.gr, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %98
  store double 1.000000e+00, ptr %99, align 8, !tbaa !9
  %100 = trunc i64 %indvars.iv241 to i32
  %101 = add i32 %100, 3
  %102 = mul i32 %i.gr, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %103
  store double 1.000000e+00, ptr %104, align 8, !tbaa !9
  %105 = trunc i64 %indvars.iv241 to i32
  %106 = add i32 %105, 4
  %107 = mul i32 %i.gr, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %108
  store double 1.000000e+00, ptr %109, align 8, !tbaa !9
  %110 = trunc i64 %indvars.iv241 to i32
  %111 = add i32 %110, 5
  %112 = mul i32 %i.gr, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %113
  store double 1.000000e+00, ptr %114, align 8, !tbaa !9
  %115 = trunc i64 %indvars.iv241 to i32
  %116 = add i32 %115, 6
  %117 = mul i32 %i.gr, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %118
  store double 1.000000e+00, ptr %119, align 8, !tbaa !9
  %i.hz = trunc i64 %indvars.iv241 to i32
  %120 = add i32 %i.hz, 7
  %i.ia = mul i32 %i.gr, %120
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ib
  store double 1.000000e+00, ptr %i.ic, align 8, !tbaa !9
  %indvars.iv.next242.7 = add nsw i64 %indvars.iv241, 8 ; 2 uses
  %lftr.wideiv244.7 = trunc i64 %indvars.iv.next242.7 to i32
  %exitcond245.not.7 = icmp eq i32 %i.hd, %lftr.wideiv244.7
  br i1 %exitcond245.not.7, label %._crit_edge175, label %.preheader.us, !llvm.loop !34

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv237.in = phi i64 [ %i.gx, %.preheader.preheader.new ], [ %indvars.iv237.3, %.preheader ] ; 4 uses
  %indvar231 = phi i32 [ 0, %.preheader.preheader.new ], [ %indvar.next232.3, %.preheader ] ; 5 uses
  %niter404 = phi i32 [ 0, %.preheader.preheader.new ], [ %niter404.next.3, %.preheader ]
  %i.id = mul i32 %i.d, %indvar231
  %i.ie = add i32 %i.gu, %i.id
  %i.if = sext i32 %i.ie to i64
  %i.ig = shl nsw i64 %i.if, 3
  %scevgep233 = getelementptr i8, ptr %scevgep230, i64 %i.ig
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep233, i8 0, i64 %i.gw, i1 false), !tbaa !9
  %i.ih = trunc i64 %indvars.iv237.in to i32
  %i.ii = add i32 %i.ih, 1
  %i.ij = mul i32 %i.gr, %i.ii
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ik
  store double 1.000000e+00, ptr %i.il, align 8, !tbaa !9
  %indvar.next232 = or disjoint i32 %indvar231, 1
  %i.im = mul i32 %i.d, %indvar.next232
  %i.in = add i32 %i.gu, %i.im
  %i.io = sext i32 %i.in to i64
  %i.ip = shl nsw i64 %i.io, 3
  %scevgep233.1 = getelementptr i8, ptr %scevgep230, i64 %i.ip
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep233.1, i8 0, i64 %i.gw, i1 false), !tbaa !9
  %i.iq = trunc i64 %indvars.iv237.in to i32
  %i.ir = add i32 %i.iq, 2
  %i.is = mul i32 %i.gr, %i.ir
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.it
  store double 1.000000e+00, ptr %i.iu, align 8, !tbaa !9
  %indvar.next232.1 = or disjoint i32 %indvar231, 2
  %i.iv = mul i32 %i.d, %indvar.next232.1
  %i.iw = add i32 %i.gu, %i.iv
  %i.ix = sext i32 %i.iw to i64
  %i.iy = shl nsw i64 %i.ix, 3
  %scevgep233.2 = getelementptr i8, ptr %scevgep230, i64 %i.iy
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep233.2, i8 0, i64 %i.gw, i1 false), !tbaa !9
  %i.iz = trunc i64 %indvars.iv237.in to i32
  %i.ja = add i32 %i.iz, 3
  %i.jb = mul i32 %i.gr, %i.ja
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jc
  store double 1.000000e+00, ptr %i.jd, align 8, !tbaa !9
  %indvar.next232.2 = or disjoint i32 %indvar231, 3
  %indvars.iv237.3 = add nuw nsw i64 %indvars.iv237.in, 4 ; 3 uses
  %i.je = mul i32 %i.d, %indvar.next232.2
  %i.jf = add i32 %i.gu, %i.je
  %i.jg = sext i32 %i.jf to i64
  %i.jh = shl nsw i64 %i.jg, 3
  %scevgep233.3 = getelementptr i8, ptr %scevgep230, i64 %i.jh
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep233.3, i8 0, i64 %i.gw, i1 false), !tbaa !9
  %i.ji = trunc i64 %indvars.iv237.3 to i32
  %i.jj = mul i32 %i.gr, %i.ji
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jk
  store double 1.000000e+00, ptr %i.jl, align 8, !tbaa !9
  %indvar.next232.3 = add i32 %indvar231, 4       ; 2 uses
  %niter404.next.3 = add i32 %niter404, 4         ; 2 uses
  %niter404.ncmp.3 = icmp eq i32 %niter404.next.3, %unroll_iter403
  br i1 %niter404.ncmp.3, label %._crit_edge175.loopexit387.unr-lcssa, label %.preheader, !llvm.loop !35

._crit_edge175.loopexit387.unr-lcssa:             ; preds = %.preheader
  %lcmp.mod401.not = icmp eq i32 %xtraiter399, 0
  br i1 %lcmp.mod401.not, label %._crit_edge175, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge175.loopexit387.unr-lcssa, %.preheader.preheader
  %indvars.iv237.in.epil.init = phi i64 [ %i.gx, %.preheader.preheader ], [ %indvars.iv237.3, %._crit_edge175.loopexit387.unr-lcssa ]
  %indvar231.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %indvar.next232.3, %._crit_edge175.loopexit387.unr-lcssa ]
  %lcmp.mod402 = icmp ne i32 %xtraiter399, 0
  call void @llvm.assume(i1 %lcmp.mod402)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv237.in.epil = phi i64 [ %indvars.iv237.in.epil.init, %.preheader.epil.preheader ], [ %indvars.iv237.epil, %.preheader.epil ]
  %indvar231.epil = phi i32 [ %indvar231.epil.init, %.preheader.epil.preheader ], [ %indvar.next232.epil, %.preheader.epil ] ; 2 uses
  %epil.iter400 = phi i32 [ 0, %.preheader.epil.preheader ], [ %epil.iter400.next, %.preheader.epil ]
  %indvars.iv237.epil = add i64 %indvars.iv237.in.epil, 1 ; 2 uses
  %i.jm = mul i32 %i.d, %indvar231.epil
  %i.jn = add i32 %i.gu, %i.jm
  %i.jo = sext i32 %i.jn to i64
  %i.jp = shl nsw i64 %i.jo, 3
  %scevgep233.epil = getelementptr i8, ptr %scevgep230, i64 %i.jp
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep233.epil, i8 0, i64 %i.gw, i1 false), !tbaa !9
  %i.jq = trunc i64 %indvars.iv237.epil to i32
  %i.jr = mul i32 %i.gr, %i.jq
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.js
  store double 1.000000e+00, ptr %i.jt, align 8, !tbaa !9
  %indvar.next232.epil = add i32 %indvar231.epil, 1
  %epil.iter400.next = add i32 %epil.iter400, 1   ; 2 uses
  %epil.iter400.cmp.not = icmp eq i32 %epil.iter400.next, %xtraiter399
  br i1 %epil.iter400.cmp.not, label %._crit_edge175, label %.preheader.epil, !llvm.loop !36

._crit_edge175:                                   ; preds = %._crit_edge175.loopexit387.unr-lcssa, %.preheader.epil, %.preheader.us.prol.loopexit, %.preheader.us, %middle.block361, %vec.epilog.middle.block382, %._crit_edge167
  %i.ju = icmp sgt i32 %i.x, 0
  br i1 %i.ju, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge175
  %i.jv = add i32 %i.d, 1
  %i.jw = mul i32 %i.ah, %i.jv
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jx
  %i.jz = sext i32 %i.ag to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.jz
  call void @dorgqr_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef %i.jy, ptr noundef nonnull %4, ptr noundef nonnull %i.ka, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %i.b) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge175
  store double %i.aa, ptr %6, align 8, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.l, %bb.i, %.thread140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dorgqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12, !13, !16}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"branch_weights", i32 4, i32 12}
!18 = distinct !{!18, !12, !13, !16}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !12, !13, !16}
!22 = distinct !{!22, !12, !13, !16}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !12, !13}
!25 = distinct !{!25, !12, !13, !16}
!26 = distinct !{!26, !12, !13, !16}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !12, !13}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !12, !13, !16}
!32 = distinct !{!32, !12, !13, !16}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !12, !13}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !20}
end_hunk_1
