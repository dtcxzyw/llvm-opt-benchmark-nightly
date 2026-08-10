loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DORGR2\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Right\00", align 1

; Function Attrs: nounwind uwtable
define void @dorgr2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.e = load i32, ptr %4, align 4, !tbaa !8      ; 9 uses
  %narrow = xor i32 %i.e, -1
  %i.f = sext i32 %narrow to i64                  ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %3, i64 %i.f ; 13 uses
  %i.h = getelementptr inbounds i8, ptr %5, i64 -8
  store i32 0, ptr %7, align 4, !tbaa !8
  %i.i = load i32, ptr %0, align 4, !tbaa !8      ; 10 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %1, align 4, !tbaa !8      ; 10 uses
  %i.l = icmp slt i32 %i.k, %i.i
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %2, align 4, !tbaa !8      ; 6 uses
  %or.cond = icmp ugt i32 %i.m, %i.i
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %4, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.i, i32 1)
  %i.o = icmp slt i32 %i.n, %spec.select
  br i1 %i.o, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -3, %bb.c ], [ -5, %bb.d ]
  %.neg = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 5, %bb.d ]
  store i32 %.sink, ptr %7, align 4, !tbaa !8
  store i32 %.neg, ptr %i.a, align 4, !tbaa !8
  %i.p = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq i32 %i.i, 0
  br i1 %i.q, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp samesign ult i32 %i.m, %i.i
  br i1 %i.r, label %bb.g, label %.lr.ph129.preheader

bb.g:                                             ; preds = %bb.f
  %.not106117 = icmp eq i32 %i.k, 0
  br i1 %.not106117, label %.loopexit150, label %.lr.ph120

.lr.ph120:                                        ; preds = %bb.g
  %i.s = sub nsw i32 %i.i, %i.m                   ; 2 uses
  %.not109115 = icmp slt i32 %i.s, 1
  %i.t = sub nsw i32 %i.k, %i.i                   ; 2 uses
  %i.u = sub nsw i32 %i.k, %i.m                   ; 2 uses
  %i.v = sub nsw i32 %i.i, %i.k                   ; 6 uses
  br i1 %.not109115, label %iter.check, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph120
  %i.w = add i32 %i.e, 1
  %i.x = sext i32 %i.w to i64
  %i.y = add nsw i64 %i.f, %i.x
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = sext i32 %i.e to i64                    ; 4 uses
  %i.ab = shl nsw i64 %i.aa, 3                    ; 3 uses
  %i.ac = zext nneg i32 %i.s to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3                ; 3 uses
  %i.ae = sext i32 %i.u to i64                    ; 3 uses
  %i.af = sext i32 %i.t to i64                    ; 3 uses
  %wide.trip.count = zext i32 %i.k to i64         ; 2 uses
  %i.ag = getelementptr i8, ptr %3, i64 %i.z      ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ah = icmp eq i32 %i.k, 1
  br i1 %i.ah, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

iter.check:                                       ; preds = %.lr.ph120
  %i.ai = sext i32 %i.t to i64                    ; 3 uses
  %i.aj = sext i32 %i.u to i64                    ; 3 uses
  %i.ak = sext i32 %i.e to i64                    ; 3 uses
  %i.al = add i32 %i.k, 1
  %wide.trip.count136 = zext i32 %i.al to i64     ; 2 uses
  %i.am = add nsw i64 %wide.trip.count136, -1     ; 7 uses
  %min.iters.check = icmp ult i64 %i.am, 4
  br i1 %min.iters.check, label %bb.h, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check153 = icmp ult i64 %i.am, 16
  br i1 %min.iters.check153, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %i.am, 12
  %n.vec = and i64 %i.am, -16                     ; 4 uses
  %i.ao = or disjoint i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert154 = insertelement <4 x i64> poison, i64 %i.aj, i64 0
  %broadcast.splat155 = shufflevector <4 x i64> %broadcast.splatinsert154, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert156 = insertelement <4 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat157 = shufflevector <4 x i64> %broadcast.splatinsert156, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert158 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat159 = shufflevector <4 x i32> %broadcast.splatinsert158, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat159
  %invariant.op236 = add <4 x i32> splat (i32 8), %broadcast.splat159
  %invariant.op238 = add <4 x i32> splat (i32 12), %broadcast.splat159
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 7 uses
  %vec.ind160 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next171, %vector.body ] ; 5 uses
  %step.add = add nuw nsw <4 x i64> %vec.ind, splat (i64 4) ; 3 uses
  %step.add.2 = add nuw nsw <4 x i64> %vec.ind, splat (i64 8) ; 3 uses
  %step.add.3 = add nuw nsw <4 x i64> %vec.ind, splat (i64 12) ; 3 uses
  %i.ap = icmp sgt <4 x i64> %vec.ind, %broadcast.splat
  %i.aq = icmp sgt <4 x i64> %step.add, %broadcast.splat
  %i.ar = icmp sgt <4 x i64> %step.add.2, %broadcast.splat
  %i.as = icmp sgt <4 x i64> %step.add.3, %broadcast.splat
  %i.at = icmp sle <4 x i64> %vec.ind, %broadcast.splat155
  %i.au = icmp sle <4 x i64> %step.add, %broadcast.splat155
  %i.av = icmp sle <4 x i64> %step.add.2, %broadcast.splat155
  %i.aw = icmp sle <4 x i64> %step.add.3, %broadcast.splat155
  %.not222 = select <4 x i1> %i.ap, <4 x i1> %i.at, <4 x i1> zeroinitializer
  %.not224 = select <4 x i1> %i.aq, <4 x i1> %i.au, <4 x i1> zeroinitializer
  %.not226 = select <4 x i1> %i.ar, <4 x i1> %i.av, <4 x i1> zeroinitializer
  %.not228 = select <4 x i1> %i.as, <4 x i1> %i.aw, <4 x i1> zeroinitializer
  %i.ax = add nsw <4 x i32> %broadcast.splat159, %vec.ind160
  %.reass = add <4 x i32> %vec.ind160, %invariant.op
  %.reass237 = add <4 x i32> %vec.ind160, %invariant.op236
  %.reass239 = add <4 x i32> %vec.ind160, %invariant.op238
  %i.ay = mul nsw <4 x i64> %vec.ind, %broadcast.splat157
  %i.az = mul nsw <4 x i64> %step.add, %broadcast.splat157
  %i.ba = mul nsw <4 x i64> %step.add.2, %broadcast.splat157
  %i.bb = mul nsw <4 x i64> %step.add.3, %broadcast.splat157
  %i.bc = sext <4 x i32> %i.ax to <4 x i64>
  %i.bd = sext <4 x i32> %.reass to <4 x i64>
  %i.be = sext <4 x i32> %.reass237 to <4 x i64>
  %i.bf = sext <4 x i32> %.reass239 to <4 x i64>
  %wide.gep = getelementptr [8 x i8], ptr %i.g, <4 x i64> %i.ay
  %wide.gep164 = getelementptr [8 x i8], ptr %i.g, <4 x i64> %i.az
  %wide.gep165 = getelementptr [8 x i8], ptr %i.g, <4 x i64> %i.ba
  %wide.gep166 = getelementptr [8 x i8], ptr %i.g, <4 x i64> %i.bb
  %wide.gep167 = getelementptr [8 x i8], <4 x ptr> %wide.gep, <4 x i64> %i.bc
  %wide.gep168 = getelementptr [8 x i8], <4 x ptr> %wide.gep164, <4 x i64> %i.bd
  %wide.gep169 = getelementptr [8 x i8], <4 x ptr> %wide.gep165, <4 x i64> %i.be
  %wide.gep170 = getelementptr [8 x i8], <4 x ptr> %wide.gep166, <4 x i64> %i.bf
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep167, <4 x i1> %.not222), !tbaa !9
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep168, <4 x i1> %.not224), !tbaa !9
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep169, <4 x i1> %.not226), !tbaa !9
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep170, <4 x i1> %.not228), !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next171 = add <4 x i32> %vec.ind160, splat (i32 16)
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %.loopexit150, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %bb.h, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.ao, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec172 = and i64 %i.am, -4                   ; 3 uses
  %i.bh = or disjoint i64 %n.vec172, 1
  %broadcast.splatinsert173 = insertelement <4 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat174 = shufflevector <4 x i64> %broadcast.splatinsert173, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert175 = insertelement <4 x i64> poison, i64 %i.aj, i64 0
  %broadcast.splat176 = shufflevector <4 x i64> %broadcast.splatinsert175, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert177 = insertelement <4 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat178 = shufflevector <4 x i64> %broadcast.splatinsert177, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert179 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat180 = shufflevector <4 x i32> %broadcast.splatinsert179, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert181 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat182 = shufflevector <4 x i64> %broadcast.splatinsert181, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat182, <i64 0, i64 1, i64 2, i64 3>
  %i.bi = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert183 = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat184 = shufflevector <4 x i32> %broadcast.splatinsert183, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction185 = add <4 x i32> %broadcast.splat184, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index186 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next191, %vec.epilog.vector.body ]
  %vec.ind187 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next192, %vec.epilog.vector.body ] ; 4 uses
  %vec.ind188 = phi <4 x i32> [ %induction185, %vec.epilog.ph ], [ %vec.ind.next193, %vec.epilog.vector.body ] ; 2 uses
  %i.bj = icmp sgt <4 x i64> %vec.ind187, %broadcast.splat174
  %i.bk = icmp sle <4 x i64> %vec.ind187, %broadcast.splat176
  %.not230 = select <4 x i1> %i.bj, <4 x i1> %i.bk, <4 x i1> zeroinitializer
  %i.bl = add nsw <4 x i32> %broadcast.splat180, %vec.ind188
  %i.bm = mul nsw <4 x i64> %vec.ind187, %broadcast.splat178
  %i.bn = sext <4 x i32> %i.bl to <4 x i64>
  %wide.gep189 = getelementptr [8 x i8], ptr %i.g, <4 x i64> %i.bm
  %wide.gep190 = getelementptr [8 x i8], <4 x ptr> %wide.gep189, <4 x i64> %i.bn
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double 1.000000e+00), <4 x ptr> align 8 %wide.gep190, <4 x i1> %.not230), !tbaa !9
  %index.next191 = add nuw i64 %index186, 4       ; 2 uses
  %vec.ind.next192 = add nuw nsw <4 x i64> %vec.ind187, splat (i64 4)
  %vec.ind.next193 = add <4 x i32> %vec.ind188, splat (i32 4)
  %i.bo = icmp eq i64 %index.next191, %n.vec172
  br i1 %i.bo, label %.lr.ph120.split.us.preheader.a, label %vec.epilog.vector.body, !llvm.loop !16

.lr.ph120.split.us.preheader.a:                   ; preds = %vec.epilog.vector.body
  %lcmp.mod235.not = icmp eq i64 %i.am, %n.vec172
  br i1 %lcmp.mod235.not, label %.loopexit150, label %bb.h

bb.h:                                             ; preds = %iter.check, %vec.epilog.iter.check, %.lr.ph120.split.us.preheader.a
  %indvars.iv133.ph = phi i64 [ 1, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.bh, %.lr.ph120.split.us.preheader.a ]
  br label %.lr.ph120.split.us

.lr.ph120.split.us:                               ; preds = %bb.h, %bb.j
  %indvars.iv133 = phi i64 [ %indvars.iv.next134.3, %bb.j ], [ %indvars.iv133.ph, %bb.h ] ; 5 uses
  %i.bp = icmp sle i64 %indvars.iv133, %i.ai
  %.not110.us = icmp sgt i64 %indvars.iv133, %i.aj
  %or.cond112.us = select i1 %i.bp, i1 true, i1 %.not110.us
  br i1 %or.cond112.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph120.split.us
  %i.bq = trunc nuw nsw i64 %indvars.iv133 to i32
  %i.br = add nsw i32 %i.v, %i.bq
  %i.bs = mul nsw i64 %indvars.iv133, %i.ak
  %i.bt = sext i32 %i.br to i64
  %i.bu = getelementptr [8 x i8], ptr %i.g, i64 %i.bs
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %i.bt
  store double 1.000000e+00, ptr %i.bv, align 8, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph120.split.us
  %indvars.iv.next134.3 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not.3 = icmp eq i64 %indvars.iv.next134.3, %wide.trip.count136
  br i1 %exitcond137.not.3, label %.loopexit150, label %.lr.ph120.split.us, !llvm.loop !17

.lr.ph:                                           ; preds = %bb.m, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.m ] ; 8 uses
  %indvar = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvar.next.1, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.m ]
  %i.bw = mul i64 %i.ab, %indvar
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.bw
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.ad, i1 false), !tbaa !9
  %i.bx = icmp sle i64 %indvars.iv, %i.af
  %.not110 = icmp sgt i64 %indvars.iv, %i.ae
  %or.cond112 = select i1 %i.bx, i1 true, i1 %.not110
  br i1 %or.cond112, label %.lr.ph.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.by = trunc nuw nsw i64 %indvars.iv to i32
  %i.bz = add nsw i32 %i.v, %i.by
  %i.ca = mul nsw i64 %indvars.iv, %i.aa
  %i.cb = sext i32 %i.bz to i64
  %i.cc = getelementptr [8 x i8], ptr %i.g, i64 %i.ca
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %i.cb
  store double 1.000000e+00, ptr %i.cd, align 8, !tbaa !9
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.k
  %indvar.next = or disjoint i64 %indvar, 1
  %i.ce = mul i64 %i.ab, %indvar.next
  %scevgep.1 = getelementptr i8, ptr %i.ag, i64 %i.ce
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.1, i8 0, i64 %i.ad, i1 false), !tbaa !9
  %i.cf = icmp slt i64 %indvars.iv, %i.af
  %.not110.1 = icmp sge i64 %indvars.iv, %i.ae
  %or.cond112.1 = select i1 %i.cf, i1 true, i1 %.not110.1
  br i1 %or.cond112.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ch = add nsw i32 %i.v, %i.cg
  %i.ci = mul nsw i64 %indvars.iv.next, %i.aa
  %i.cj = sext i32 %i.ch to i64
  %i.ck = getelementptr [8 x i8], ptr %i.g, i64 %i.ci
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %i.cj
  store double 1.000000e+00, ptr %i.cl, align 8, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvar.next.1 = add nuw nsw i64 %indvar, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit150.loopexit232.unr-lcssa, label %.lr.ph, !llvm.loop !18

.loopexit150.loopexit232.unr-lcssa:               ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit150, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit150.loopexit232.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit150.loopexit232.unr-lcssa ] ; 4 uses
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next.1, %.loopexit150.loopexit232.unr-lcssa ]
  %lcmp.mod233 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod233)
  %i.cm = mul i64 %i.ab, %indvar.epil.init
  %scevgep.epil = getelementptr i8, ptr %i.ag, i64 %i.cm
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.ad, i1 false), !tbaa !9
  %i.cn = icmp sle i64 %indvars.iv.epil.init, %i.af
  %.not110.epil = icmp sgt i64 %indvars.iv.epil.init, %i.ae
  %or.cond112.epil = select i1 %i.cn, i1 true, i1 %.not110.epil
  br i1 %or.cond112.epil, label %.loopexit150, label %bb.n

bb.n:                                             ; preds = %.lr.ph.epil.preheader
  %i.co = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.cp = add nsw i32 %i.v, %i.co
  %i.cq = mul nsw i64 %indvars.iv.epil.init, %i.aa
  %i.cr = sext i32 %i.cp to i64
  %i.cs = getelementptr [8 x i8], ptr %i.g, i64 %i.cq
  %i.ct = getelementptr [8 x i8], ptr %i.cs, i64 %i.cr
  store double 1.000000e+00, ptr %i.ct, align 8, !tbaa !9
  br label %.loopexit150

.loopexit150:                                     ; preds = %.loopexit150.loopexit232.unr-lcssa, %bb.n, %.lr.ph.epil.preheader, %bb.j, %middle.block, %.lr.ph120.split.us.preheader.a, %bb.g
  %.not107126 = icmp slt i32 %i.m, 1
  br i1 %.not107126, label %.loopexit, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %bb.f, %.loopexit150
  %i.cu = sext i32 %i.e to i64
  %i.cv = zext nneg i32 %i.m to i64
  %ident.check.not = icmp eq i32 %i.e, 1
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %._crit_edge125
  %i.cw = phi i32 [ %i.k, %.lr.ph129.preheader ], [ %i.dv, %._crit_edge125 ]
  %i.cx = phi i32 [ %i.i, %.lr.ph129.preheader ], [ %i.dw, %._crit_edge125 ] ; 3 uses
  %indvars.iv141 = phi i64 [ 1, %.lr.ph129.preheader ], [ %indvars.iv.next142, %._crit_edge125 ] ; 4 uses
  %i.cy = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.cz = sub nsw i32 %i.cx, %i.cy
  %i.da = trunc nuw nsw i64 %indvars.iv141 to i32 ; 2 uses
  %i.db = add nsw i32 %i.cz, %i.da                ; 7 uses
  %i.dc = sub nsw i32 %i.cw, %i.cx
  %i.dd = add nsw i32 %i.dc, %i.db                ; 2 uses
  %i.de = mul nsw i32 %i.dd, %i.e
  %i.df = add nsw i32 %i.de, %i.db
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.dg
  store double 1.000000e+00, ptr %i.dh, align 8, !tbaa !9
  %i.di = add i32 %i.db, -1                       ; 2 uses
  store i32 %i.di, ptr %i.b, align 4, !tbaa !8
  store i32 %i.dd, ptr %i.c, align 4, !tbaa !8
  %i.dj = add nsw i32 %i.db, %i.e
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv141 ; 3 uses
  call void @dlarf_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %i.dl, ptr noundef nonnull %4, ptr noundef nonnull %i.dm, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %6) #7
  %i.dn = load i32, ptr %1, align 4, !tbaa !8
  %i.do = load i32, ptr %0, align 4, !tbaa !8
  %i.dp = add i32 %i.di, %i.dn
  %i.dq = sub i32 %i.dp, %i.do
  store i32 %i.dq, ptr %i.b, align 4, !tbaa !8
  %i.dr = load double, ptr %i.dm, align 8, !tbaa !9
  %i.ds = fneg double %i.dr
  store double %i.ds, ptr %i.d, align 8, !tbaa !9
  call void @dscal_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef %i.dl, ptr noundef nonnull %4) #7
  %i.dt = load double, ptr %i.dm, align 8, !tbaa !9
  %i.du = fsub double 1.000000e+00, %i.dt
  %i.dv = load i32, ptr %1, align 4, !tbaa !8     ; 6 uses
  %i.dw = load i32, ptr %0, align 4, !tbaa !8     ; 3 uses
  %i.dx = sub nsw i32 %i.dv, %i.dw
  %i.dy = add nsw i32 %i.dx, %i.db                ; 2 uses
  %i.dz = mul nsw i32 %i.dy, %i.e
  %i.ea = add nsw i32 %i.dz, %i.db
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.eb
  store double %i.du, ptr %i.ec, align 8, !tbaa !9
  store i32 %i.dv, ptr %i.b, align 4, !tbaa !8
  %.not108.not121 = icmp slt i32 %i.dy, %i.dv
  br i1 %.not108.not121, label %iter.check209, label %._crit_edge125

iter.check209:                                    ; preds = %.lr.ph129
  %i.ed = add i32 %i.dv, %i.cx
  %i.ee = add i32 %i.ed, %i.da
  %i.ef = add i32 %i.cy, %i.dw
  %i.eg = sub i32 %i.ee, %i.ef
  %i.eh = sext i32 %i.eg to i64                   ; 7 uses
  %i.ei = sext i32 %i.db to i64
  %i.ej = sext i32 %i.dv to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.g, i64 %i.ei ; 3 uses
  %i.ek = add nsw i64 %i.eh, 1
  %smax = call i64 @llvm.smax.i64(i64 %i.ek, i64 %i.ej)
  %i.el = sub i64 %smax, %i.eh                    ; 7 uses
  %min.iters.check197 = icmp ugt i64 %i.el, 3
  %or.cond231 = select i1 %min.iters.check197, i1 %ident.check.not, i1 false
  br i1 %or.cond231, label %vector.main.loop.iter.check198, label %.lr.ph124.preheader

vector.main.loop.iter.check198:                   ; preds = %iter.check209
  %min.iters.check199 = icmp ult i64 %i.el, 16
  br i1 %min.iters.check199, label %vec.epilog.ph213, label %vector.ph200

vector.ph200:                                     ; preds = %vector.main.loop.iter.check198
  %i.em = and i64 %i.el, 12
  %n.vec201 = and i64 %i.el, -16                  ; 4 uses
  %i.en = add i64 %n.vec201, %i.eh
  %invariant.gep240 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.eh
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next204, %vector.body202 ] ; 2 uses
  %gep241 = getelementptr [8 x i8], ptr %invariant.gep240, i64 %index203 ; 4 uses
  %i.eo = getelementptr i8, ptr %gep241, i64 8
  %i.ep = getelementptr i8, ptr %gep241, i64 40
  %i.eq = getelementptr i8, ptr %gep241, i64 72
  %i.er = getelementptr i8, ptr %gep241, i64 104
  store <4 x double> zeroinitializer, ptr %i.eo, align 8, !tbaa !9
  store <4 x double> zeroinitializer, ptr %i.ep, align 8, !tbaa !9
  store <4 x double> zeroinitializer, ptr %i.eq, align 8, !tbaa !9
  store <4 x double> zeroinitializer, ptr %i.er, align 8, !tbaa !9
  %index.next204 = add nuw i64 %index203, 16      ; 2 uses
  %i.es = icmp eq i64 %index.next204, %n.vec201
  br i1 %i.es, label %middle.block205, label %vector.body202, !llvm.loop !19

middle.block205:                                  ; preds = %vector.body202
  %cmp.n206 = icmp eq i64 %i.el, %n.vec201
  br i1 %cmp.n206, label %._crit_edge125, label %vec.epilog.iter.check211

vec.epilog.iter.check211:                         ; preds = %middle.block205
  %min.epilog.iters.check212 = icmp eq i64 %i.em, 0
  br i1 %min.epilog.iters.check212, label %.lr.ph124.preheader, label %vec.epilog.ph213, !prof !15

vec.epilog.ph213:                                 ; preds = %vector.main.loop.iter.check198, %vec.epilog.iter.check211
  %vec.epilog.resume.val207 = phi i64 [ %n.vec201, %vec.epilog.iter.check211 ], [ 0, %vector.main.loop.iter.check198 ]
  %n.vec214 = and i64 %i.el, -4                   ; 3 uses
  %i.et = add i64 %n.vec214, %i.eh
  %invariant.gep242 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.eh
  br label %vec.epilog.vector.body215

vec.epilog.vector.body215:                        ; preds = %vec.epilog.vector.body215, %vec.epilog.ph213
  %index216 = phi i64 [ %vec.epilog.resume.val207, %vec.epilog.ph213 ], [ %index.next217, %vec.epilog.vector.body215 ] ; 2 uses
  %gep243 = getelementptr [8 x i8], ptr %invariant.gep242, i64 %index216
  %i.eu = getelementptr i8, ptr %gep243, i64 8
  store <4 x double> zeroinitializer, ptr %i.eu, align 8, !tbaa !9
  %index.next217 = add nuw i64 %index216, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next217, %n.vec214
  br i1 %i.ev, label %vec.epilog.middle.block218, label %vec.epilog.vector.body215, !llvm.loop !20

vec.epilog.middle.block218:                       ; preds = %vec.epilog.vector.body215
  %cmp.n219 = icmp eq i64 %i.el, %n.vec214
  br i1 %cmp.n219, label %._crit_edge125, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %iter.check209, %vec.epilog.iter.check211, %vec.epilog.middle.block218
  %indvars.iv138.ph = phi i64 [ %i.eh, %iter.check209 ], [ %i.en, %vec.epilog.iter.check211 ], [ %i.et, %vec.epilog.middle.block218 ]
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.lr.ph124
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %.lr.ph124 ], [ %indvars.iv138.ph, %.lr.ph124.preheader ]
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 3 uses
  %i.ew = mul nsw i64 %indvars.iv.next139, %i.cu
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ew
  store double 0.000000e+00, ptr %gep, align 8, !tbaa !9
  %.not108.not = icmp slt i64 %indvars.iv.next139, %i.ej
  br i1 %.not108.not, label %.lr.ph124, label %._crit_edge125, !llvm.loop !21

._crit_edge125:                                   ; preds = %.lr.ph124, %middle.block205, %vec.epilog.middle.block218, %.lr.ph129
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %.not107.not = icmp samesign ult i64 %indvars.iv141, %i.cv
  br i1 %.not107.not, label %.lr.ph129, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %._crit_edge125, %.loopexit150, %bb.e, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlarf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

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
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 4, i32 12}
!16 = distinct !{!16, !12, !13, !14}
!17 = distinct !{!17, !12, !14, !13}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12, !13, !14}
!20 = distinct !{!20, !12, !13, !14}
!21 = distinct !{!21, !12, !13}
!22 = distinct !{!22, !12}
end_hunk_0
