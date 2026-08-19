loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"DSYCONV\00", align 1

; Function Attrs: nounwind uwtable
define void @dsyconv_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) initializes((0, 4)) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = load i32, ptr %4, align 4, !tbaa !8      ; 17 uses
  %narrow = xor i32 %i.b, -1
  %i.c = sext i32 %narrow to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %3, i64 %i.c ; 40 uses
  %i.e = getelementptr inbounds i8, ptr %5, i64 -4 ; 8 uses
  %i.f = getelementptr inbounds i8, ptr %6, i64 -8 ; 9 uses
  store i32 0, ptr %7, align 4, !tbaa !8
  %i.g = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #4
  %i.h = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #4
  %.not = icmp eq i32 %i.g, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #4
  %.not339 = icmp eq i32 %i.i, 0
  br i1 %.not339, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not340 = icmp eq i32 %i.h, 0                  ; 3 uses
  br i1 %.not340, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #4
  %.not341 = icmp eq i32 %i.j, 0
  br i1 %.not341, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = load i32, ptr %2, align 4, !tbaa !8      ; 28 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %4, align 4, !tbaa !8
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  %i.n = icmp slt i32 %i.m, %spec.select
  br i1 %i.n, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.pr = load i32, ptr %7, align 4, !tbaa !8      ; 2 uses
  %.not342 = icmp eq i32 %.pr, 0
  br i1 %.not342, label %bb.h, label %.thread

.thread.sink.split:                               ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -3, %bb.e ], [ -5, %bb.f ] ; 2 uses
  store i32 %.sink, ptr %7, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.g
  %i.o = phi i32 [ %.pr, %bb.g ], [ %.sink, %.thread.sink.split ]
  %i.p = sub nsw i32 0, %i.o
  store i32 %i.p, ptr %i.a, align 4, !tbaa !8
  %i.q = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 7) #4 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.r = icmp eq i32 %i.k, 0
  br i1 %i.r, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not340, label %.lr.ph388.preheader, label %bb.k

.lr.ph388.preheader:                              ; preds = %bb.j
  %i.s = sext i32 %i.b to i64                     ; 10 uses
  %i.t = add nuw i32 %i.k, 1
  %wide.trip.count439 = zext nneg i32 %i.k to i64 ; 6 uses
  %scevgep552 = getelementptr i8, ptr %3, i64 -8
  %scevgep554 = getelementptr i8, ptr %3, i64 -8
  %scevgep556 = getelementptr i8, ptr %3, i64 -8
  %scevgep558 = getelementptr i8, ptr %3, i64 -8
  %scevgep580 = getelementptr i8, ptr %3, i64 -16
  %scevgep582 = getelementptr i8, ptr %3, i64 -8
  %i.u = add nsw i32 %i.k, -2
  %scevgep584 = getelementptr i8, ptr %3, i64 -16
  %scevgep586 = getelementptr i8, ptr %3, i64 -8
  %i.v = add nuw i32 %i.k, 1
  %i.w = add nsw i32 %i.k, -2
  %ident.check578.not = icmp eq i32 %i.b, 1
  %ident.check550.not = icmp eq i32 %i.b, 1
  br label %.lr.ph388

bb.k:                                             ; preds = %bb.j
  store double 0.000000e+00, ptr %6, align 8, !tbaa !9
  %.not504 = icmp eq i32 %i.k, 1
  br i1 %.not504, label %.lr.ph379.preheader, label %.lr.ph

.lr.ph379.preheader:                              ; preds = %bb.n, %bb.k
  %i.x = sext i32 %i.b to i64                     ; 10 uses
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 11 uses
  %wide.trip.count430 = zext nneg i32 %i.k to i64
  %scevgep = getelementptr i8, ptr %3, i64 -8
  %scevgep512 = getelementptr i8, ptr %3, i64 -8
  %scevgep514 = getelementptr i8, ptr %3, i64 -8
  %scevgep516 = getelementptr i8, ptr %3, i64 -8
  %scevgep524 = getelementptr i8, ptr %3, i64 -8
  %i.y = shl nuw nsw i64 %wide.trip.count, 3
  %i.z = getelementptr i8, ptr %3, i64 %i.y
  %scevgep526 = getelementptr i8, ptr %i.z, i64 -8
  %scevgep528 = getelementptr i8, ptr %3, i64 -8
  %scevgep530 = getelementptr i8, ptr %3, i64 -8
  %ident.check522.not = icmp eq i32 %i.b, 1
  %ident.check.not = icmp eq i32 %i.b, 1
  br label %.lr.ph379

.lr.ph:                                           ; preds = %bb.k, %bb.n
  %.0311375 = phi i32 [ %i.ao, %bb.n ], [ %i.k, %bb.k ] ; 4 uses
  %i.aa = zext nneg i32 %.0311375 to i64          ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.ae = add nsw i32 %.0311375, -1               ; 3 uses
  %i.af = mul nsw i32 %.0311375, %i.b
  %i.ag = add nsw i32 %i.ae, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ah ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.aa
  store double %i.aj, ptr %i.ak, align 8, !tbaa !9
  %i.al = zext nneg i32 %i.ae to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  store double 0.000000e+00, ptr %i.am, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !9
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.aa
  store double 0.000000e+00, ptr %i.an, align 8, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1312 = phi i32 [ %i.ae, %bb.l ], [ %.0311375, %bb.m ] ; 2 uses
  %i.ao = add nsw i32 %.1312, -1
  %i.ap = icmp sgt i32 %.1312, 2
  br i1 %i.ap, label %.lr.ph, label %.lr.ph379.preheader, !llvm.loop !11

.lr.ph379:                                        ; preds = %.lr.ph379.preheader, %.loopexit371
  %.2313378 = phi i32 [ %i.dy, %.loopexit371 ], [ %i.k, %.lr.ph379.preheader ] ; 9 uses
  %i.aq = zext nneg i32 %.2313378 to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8  ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  %i.au = icmp slt i32 %.2313378, %i.k            ; 2 uses
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph379
  br i1 %i.au, label %.preheader421, label %.loopexit371

.preheader421:                                    ; preds = %bb.o
  %i.av = sext i32 %.2313378 to i64               ; 9 uses
  %i.aw = zext nneg i32 %i.as to i64              ; 3 uses
  %invariant.gep482 = getelementptr [8 x i8], ptr %i.d, i64 %i.aw ; 6 uses
  %invariant.gep484 = getelementptr [8 x i8], ptr %i.d, i64 %i.av ; 6 uses
  %i.ax = sub nsw i64 %wide.trip.count, %i.av     ; 3 uses
  %min.iters.check = icmp ugt i64 %i.ax, 11
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader421
  %i.ay = add nsw i64 %i.av, %i.aw
  %i.az = shl nsw i64 %i.ay, 3
  %scevgep511 = getelementptr i8, ptr %scevgep, i64 %i.az
  %i.ba = add nuw nsw i64 %wide.trip.count, %i.aw
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %scevgep513 = getelementptr i8, ptr %scevgep512, i64 %i.bb
  %i.bc = shl nsw i64 %i.av, 4
  %scevgep515 = getelementptr i8, ptr %scevgep514, i64 %i.bc
  %i.bd = add nsw i64 %wide.trip.count, %i.av
  %i.be = shl nsw i64 %i.bd, 3
  %scevgep517 = getelementptr i8, ptr %scevgep516, i64 %i.be
  %bound0 = icmp ult ptr %scevgep511, %scevgep517
  %bound1 = icmp ult ptr %scevgep515, %scevgep513
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, -8                      ; 3 uses
  %i.bf = add nsw i64 %n.vec, %i.av
  %invariant.op755 = add nuw i64 %i.av, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass756 = add nuw i64 %index, %invariant.op755 ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %invariant.gep482, i64 %.reass756 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 32     ; 2 uses
  %wide.load = load <4 x double>, ptr %i.bg, align 8, !tbaa !9, !alias.scope !13, !noalias !16
  %wide.load518 = load <4 x double>, ptr %i.bh, align 8, !tbaa !9, !alias.scope !13, !noalias !16
  %i.bi = getelementptr [8 x i8], ptr %invariant.gep484, i64 %.reass756 ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 32     ; 2 uses
  %wide.load519 = load <4 x double>, ptr %i.bi, align 8, !tbaa !9, !alias.scope !16
  %wide.load520 = load <4 x double>, ptr %i.bj, align 8, !tbaa !9, !alias.scope !16
  store <4 x double> %wide.load519, ptr %i.bg, align 8, !tbaa !9, !alias.scope !13, !noalias !16
  store <4 x double> %wide.load520, ptr %i.bh, align 8, !tbaa !9, !alias.scope !13, !noalias !16
  store <4 x double> %wide.load, ptr %i.bi, align 8, !tbaa !9, !alias.scope !16
  store <4 x double> %wide.load518, ptr %i.bj, align 8, !tbaa !9, !alias.scope !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %.loopexit371, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader421, %middle.block
  %indvars.iv427.ph = phi i64 [ %i.av, %vector.memcheck ], [ %i.av, %.preheader421 ], [ %i.bf, %middle.block ] ; 4 uses
  %i.bl = sub nsw i64 %wide.trip.count, %indvars.iv427.ph
  %xtraiter734 = and i64 %i.bl, 3                 ; 2 uses
  %lcmp.mod735.not = icmp eq i64 %xtraiter734, 0
  br i1 %lcmp.mod735.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv427.prol = phi i64 [ %indvars.iv.next428.prol, %scalar.ph.prol ], [ %indvars.iv427.ph, %scalar.ph.preheader ]
  %prol.iter736 = phi i64 [ %prol.iter736.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next428.prol = add nuw nsw i64 %indvars.iv427.prol, 1 ; 3 uses
  %i.bm = mul nsw i64 %indvars.iv.next428.prol, %i.x ; 2 uses
  %gep483.prol = getelementptr [8 x i8], ptr %invariant.gep482, i64 %i.bm ; 2 uses
  %i.bn = load double, ptr %gep483.prol, align 8, !tbaa !9
  %gep485.prol = getelementptr [8 x i8], ptr %invariant.gep484, i64 %i.bm ; 2 uses
  %i.bo = load double, ptr %gep485.prol, align 8, !tbaa !9
  store double %i.bo, ptr %gep483.prol, align 8, !tbaa !9
  store double %i.bn, ptr %gep485.prol, align 8, !tbaa !9
  %prol.iter736.next = add i64 %prol.iter736, 1   ; 2 uses
  %prol.iter736.cmp.not = icmp eq i64 %prol.iter736.next, %xtraiter734
  br i1 %prol.iter736.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !21

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv427.unr = phi i64 [ %indvars.iv427.ph, %scalar.ph.preheader ], [ %indvars.iv.next428.prol, %scalar.ph.prol ]
  %i.bp = sub nsw i64 %indvars.iv427.ph, %wide.trip.count
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %.loopexit371, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv427 = phi i64 [ %indvars.iv.next428.3, %scalar.ph ], [ %indvars.iv427.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 1
  %i.br = mul nsw i64 %indvars.iv.next428, %i.x   ; 2 uses
  %gep483 = getelementptr [8 x i8], ptr %invariant.gep482, i64 %i.br ; 2 uses
  %i.bs = load double, ptr %gep483, align 8, !tbaa !9
  %gep485 = getelementptr [8 x i8], ptr %invariant.gep484, i64 %i.br ; 2 uses
  %i.bt = load double, ptr %gep485, align 8, !tbaa !9
  store double %i.bt, ptr %gep483, align 8, !tbaa !9
  store double %i.bs, ptr %gep485, align 8, !tbaa !9
  %indvars.iv.next428.1 = add nuw nsw i64 %indvars.iv427, 2
  %i.bu = mul nsw i64 %indvars.iv.next428.1, %i.x ; 2 uses
  %gep483.1 = getelementptr [8 x i8], ptr %invariant.gep482, i64 %i.bu ; 2 uses
  %i.bv = load double, ptr %gep483.1, align 8, !tbaa !9
  %gep485.1 = getelementptr [8 x i8], ptr %invariant.gep484, i64 %i.bu ; 2 uses
  %i.bw = load double, ptr %gep485.1, align 8, !tbaa !9
  store double %i.bw, ptr %gep483.1, align 8, !tbaa !9
  store double %i.bv, ptr %gep485.1, align 8, !tbaa !9
  %indvars.iv.next428.2 = add nuw nsw i64 %indvars.iv427, 3
  %i.bx = mul nsw i64 %indvars.iv.next428.2, %i.x ; 2 uses
  %gep483.2 = getelementptr [8 x i8], ptr %invariant.gep482, i64 %i.bx ; 2 uses
  %i.by = load double, ptr %gep483.2, align 8, !tbaa !9
  %gep485.2 = getelementptr [8 x i8], ptr %invariant.gep484, i64 %i.bx ; 2 uses
  %i.bz = load double, ptr %gep485.2, align 8, !tbaa !9
  store double %i.bz, ptr %gep483.2, align 8, !tbaa !9
  store double %i.by, ptr %gep485.2, align 8, !tbaa !9
  %indvars.iv.next428.3 = add nuw nsw i64 %indvars.iv427, 4 ; 3 uses
  %i.ca = mul nsw i64 %indvars.iv.next428.3, %i.x ; 2 uses
  %gep483.3 = getelementptr [8 x i8], ptr %invariant.gep482, i64 %i.ca ; 2 uses
  %i.cb = load double, ptr %gep483.3, align 8, !tbaa !9
  %gep485.3 = getelementptr [8 x i8], ptr %invariant.gep484, i64 %i.ca ; 2 uses
  %i.cc = load double, ptr %gep485.3, align 8, !tbaa !9
  store double %i.cc, ptr %gep483.3, align 8, !tbaa !9
  store double %i.cb, ptr %gep485.3, align 8, !tbaa !9
  %exitcond431.not.3 = icmp eq i64 %indvars.iv.next428.3, %wide.trip.count430
  br i1 %exitcond431.not.3, label %.loopexit371, label %scalar.ph, !llvm.loop !23

bb.p:                                             ; preds = %.lr.ph379
  %i.cd = add nsw i32 %.2313378, -1               ; 5 uses
  br i1 %i.au, label %bb.q, label %.loopexit371

bb.q:                                             ; preds = %bb.p
  %i.ce = sext i32 %.2313378 to i64               ; 7 uses
  %i.cf = sext i32 %i.cd to i64                   ; 3 uses
  %i.cg = sext i32 %i.as to i64                   ; 8 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.d, i64 %i.cf ; 6 uses
  %i.ch = sub nsw i64 %wide.trip.count, %i.ce     ; 3 uses
  %min.iters.check536 = icmp ugt i64 %i.ch, 11
  %or.cond717 = select i1 %min.iters.check536, i1 %ident.check522.not, i1 false
  br i1 %or.cond717, label %vector.memcheck523, label %scalar.ph535.preheader

vector.memcheck523:                               ; preds = %bb.q
  %i.ci = sub nsw i64 %i.ce, %i.cg
  %i.cj = shl nsw i64 %i.ci, 3
  %scevgep525 = getelementptr i8, ptr %scevgep524, i64 %i.cj
  %i.ck = mul nsw i64 %i.cg, -8
  %scevgep527 = getelementptr i8, ptr %scevgep526, i64 %i.ck
  %i.cl = add nsw i64 %i.ce, %i.cf
  %i.cm = shl nsw i64 %i.cl, 3
  %scevgep529 = getelementptr i8, ptr %scevgep528, i64 %i.cm
  %i.cn = add nsw i64 %wide.trip.count, %i.cf
  %i.co = shl nsw i64 %i.cn, 3
  %scevgep531 = getelementptr i8, ptr %scevgep530, i64 %i.co
  %bound0532 = icmp ult ptr %scevgep525, %scevgep531
  %bound1533 = icmp ult ptr %scevgep529, %scevgep527
  %found.conflict534 = and i1 %bound0532, %bound1533
  br i1 %found.conflict534, label %scalar.ph535.preheader, label %vector.ph537

vector.ph537:                                     ; preds = %vector.memcheck523
  %n.vec538 = and i64 %i.ch, -8                   ; 3 uses
  %i.cp = add nsw i64 %n.vec538, %i.ce
  %invariant.op = add nuw i64 %i.ce, 1
  br label %vector.body539

vector.body539:                                   ; preds = %vector.body539, %vector.ph537
  %index540 = phi i64 [ 0, %vector.ph537 ], [ %index.next545, %vector.body539 ] ; 2 uses
  %.reass = add nuw i64 %index540, %invariant.op  ; 2 uses
  %i.cq = sub nsw i64 %.reass, %i.cg
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.cq ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 2 uses
  %wide.load541 = load <4 x double>, ptr %i.cr, align 8, !tbaa !9, !alias.scope !24, !noalias !27
  %wide.load542 = load <4 x double>, ptr %i.cs, align 8, !tbaa !9, !alias.scope !24, !noalias !27
  %i.ct = getelementptr [8 x i8], ptr %invariant.gep, i64 %.reass ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 32     ; 2 uses
  %wide.load543 = load <4 x double>, ptr %i.ct, align 8, !tbaa !9, !alias.scope !27
  %wide.load544 = load <4 x double>, ptr %i.cu, align 8, !tbaa !9, !alias.scope !27
  store <4 x double> %wide.load543, ptr %i.cr, align 8, !tbaa !9, !alias.scope !24, !noalias !27
  store <4 x double> %wide.load544, ptr %i.cs, align 8, !tbaa !9, !alias.scope !24, !noalias !27
  store <4 x double> %wide.load541, ptr %i.ct, align 8, !tbaa !9, !alias.scope !27
  store <4 x double> %wide.load542, ptr %i.cu, align 8, !tbaa !9, !alias.scope !27
  %index.next545 = add nuw i64 %index540, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next545, %n.vec538
  br i1 %i.cv, label %middle.block546, label %vector.body539, !llvm.loop !29

middle.block546:                                  ; preds = %vector.body539
  %cmp.n547 = icmp eq i64 %i.ch, %n.vec538
  br i1 %cmp.n547, label %.loopexit371, label %scalar.ph535.preheader

scalar.ph535.preheader:                           ; preds = %vector.memcheck523, %bb.q, %middle.block546
  %indvars.iv.ph = phi i64 [ %i.ce, %vector.memcheck523 ], [ %i.ce, %bb.q ], [ %i.cp, %middle.block546 ] ; 4 uses
  %i.cw = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.cw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph535.prol.loopexit, label %scalar.ph535.prol

scalar.ph535.prol:                                ; preds = %scalar.ph535.preheader, %scalar.ph535.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph535.prol ], [ %indvars.iv.ph, %scalar.ph535.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph535.prol ], [ 0, %scalar.ph535.preheader ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.cx = mul nsw i64 %indvars.iv.next.prol, %i.x ; 2 uses
  %i.cy = sub nsw i64 %i.cx, %i.cg
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.cy ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !9
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cx ; 2 uses
  %i.db = load double, ptr %gep.prol, align 8, !tbaa !9
  store double %i.db, ptr %i.cz, align 8, !tbaa !9
  store double %i.da, ptr %gep.prol, align 8, !tbaa !9
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph535.prol.loopexit, label %scalar.ph535.prol, !llvm.loop !30

scalar.ph535.prol.loopexit:                       ; preds = %scalar.ph535.prol, %scalar.ph535.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph535.preheader ], [ %indvars.iv.next.prol, %scalar.ph535.prol ]
  %i.dc = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dd = icmp ugt i64 %i.dc, -4
  br i1 %i.dd, label %.loopexit371, label %scalar.ph535

scalar.ph535:                                     ; preds = %scalar.ph535.prol.loopexit, %scalar.ph535
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph535 ], [ %indvars.iv.unr, %scalar.ph535.prol.loopexit ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.de = mul nsw i64 %indvars.iv.next, %i.x      ; 2 uses
  %i.df = sub nsw i64 %i.de, %i.cg
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.df ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !9
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.de ; 2 uses
  %i.di = load double, ptr %gep, align 8, !tbaa !9
  store double %i.di, ptr %i.dg, align 8, !tbaa !9
  store double %i.dh, ptr %gep, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %i.dj = mul nsw i64 %indvars.iv.next.1, %i.x    ; 2 uses
  %i.dk = sub nsw i64 %i.dj, %i.cg
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dk ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !9
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dj ; 2 uses
  %i.dn = load double, ptr %gep.1, align 8, !tbaa !9
  store double %i.dn, ptr %i.dl, align 8, !tbaa !9
  store double %i.dm, ptr %gep.1, align 8, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %i.do = mul nsw i64 %indvars.iv.next.2, %i.x    ; 2 uses
  %i.dp = sub nsw i64 %i.do, %i.cg
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dp ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !9
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.do ; 2 uses
  %i.ds = load double, ptr %gep.2, align 8, !tbaa !9
  store double %i.ds, ptr %i.dq, align 8, !tbaa !9
  store double %i.dr, ptr %gep.2, align 8, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.dt = mul nsw i64 %indvars.iv.next.3, %i.x    ; 2 uses
  %i.du = sub nsw i64 %i.dt, %i.cg
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.du ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !9
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dt ; 2 uses
  %i.dx = load double, ptr %gep.3, align 8, !tbaa !9
  store double %i.dx, ptr %i.dv, align 8, !tbaa !9
  store double %i.dw, ptr %gep.3, align 8, !tbaa !9
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit371, label %scalar.ph535, !llvm.loop !31

.loopexit371:                                     ; preds = %scalar.ph535.prol.loopexit, %scalar.ph535, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block546, %middle.block, %bb.p, %bb.o
  %.3314 = phi i32 [ %i.cd, %bb.p ], [ %.2313378, %bb.o ], [ %.2313378, %middle.block ], [ %i.cd, %middle.block546 ], [ %.2313378, %scalar.ph.prol.loopexit ], [ %.2313378, %scalar.ph ], [ %i.cd, %scalar.ph535 ], [ %i.cd, %scalar.ph535.prol.loopexit ] ; 2 uses
  %i.dy = add nsw i32 %.3314, -1
  %i.dz = icmp sgt i32 %.3314, 1
  br i1 %i.dz, label %.lr.ph379, label %.loopexit, !llvm.loop !32

.preheader366:                                    ; preds = %.loopexit368
  %i.ea = icmp sgt i32 %i.k, 1
  br i1 %i.ea, label %.lr.ph391, label %.loopexit

.lr.ph388:                                        ; preds = %.lr.ph388.preheader, %.loopexit368
  %.4315387 = phi i32 [ %i.hr, %.loopexit368 ], [ 1, %.lr.ph388.preheader ] ; 10 uses
  %i.eb = sext i32 %.4315387 to i64               ; 12 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8  ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph388
  %i.ef = icmp slt i32 %.4315387, %i.k
  br i1 %i.ef, label %.preheader419, label %.loopexit368

.preheader419:                                    ; preds = %bb.r
  %i.eg = zext nneg i32 %i.ed to i64              ; 3 uses
  %invariant.gep488 = getelementptr [8 x i8], ptr %i.d, i64 %i.eg ; 6 uses
  %invariant.gep490 = getelementptr [8 x i8], ptr %i.d, i64 %i.eb ; 6 uses
  %i.eh = sub nsw i64 %wide.trip.count439, %i.eb  ; 3 uses
  %min.iters.check564 = icmp ugt i64 %i.eh, 11
  %or.cond718 = select i1 %min.iters.check564, i1 %ident.check550.not, i1 false
  br i1 %or.cond718, label %vector.memcheck551, label %scalar.ph563.preheader

vector.memcheck551:                               ; preds = %.preheader419
  %i.ei = add nsw i64 %i.eb, %i.eg
  %i.ej = shl nsw i64 %i.ei, 3
  %scevgep553 = getelementptr i8, ptr %scevgep552, i64 %i.ej
  %i.ek = add nuw nsw i64 %wide.trip.count439, %i.eg
  %i.el = shl nuw nsw i64 %i.ek, 3
  %scevgep555 = getelementptr i8, ptr %scevgep554, i64 %i.el
  %i.em = shl nsw i64 %i.eb, 4
  %scevgep557 = getelementptr i8, ptr %scevgep556, i64 %i.em
  %i.en = add nsw i64 %wide.trip.count439, %i.eb
  %i.eo = shl nsw i64 %i.en, 3
  %scevgep559 = getelementptr i8, ptr %scevgep558, i64 %i.eo
  %bound0560 = icmp ult ptr %scevgep553, %scevgep559
  %bound1561 = icmp ult ptr %scevgep557, %scevgep555
  %found.conflict562 = and i1 %bound0560, %bound1561
  br i1 %found.conflict562, label %scalar.ph563.preheader, label %vector.ph565

vector.ph565:                                     ; preds = %vector.memcheck551
  %n.vec566 = and i64 %i.eh, -8                   ; 3 uses
  %i.ep = add nsw i64 %n.vec566, %i.eb
  %invariant.op757 = add i64 %i.eb, 1
  br label %vector.body567

vector.body567:                                   ; preds = %vector.body567, %vector.ph565
  %index568 = phi i64 [ 0, %vector.ph565 ], [ %index.next573, %vector.body567 ] ; 2 uses
  %.reass758 = add i64 %index568, %invariant.op757 ; 2 uses
  %i.eq = getelementptr [8 x i8], ptr %invariant.gep488, i64 %.reass758 ; 3 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 32     ; 2 uses
  %wide.load569 = load <4 x double>, ptr %i.eq, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  %wide.load570 = load <4 x double>, ptr %i.er, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  %i.es = getelementptr [8 x i8], ptr %invariant.gep490, i64 %.reass758 ; 3 uses
  %i.et = getelementptr i8, ptr %i.es, i64 32     ; 2 uses
  %wide.load571 = load <4 x double>, ptr %i.es, align 8, !tbaa !9, !alias.scope !36
  %wide.load572 = load <4 x double>, ptr %i.et, align 8, !tbaa !9, !alias.scope !36
  store <4 x double> %wide.load571, ptr %i.eq, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  store <4 x double> %wide.load572, ptr %i.er, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  store <4 x double> %wide.load569, ptr %i.es, align 8, !tbaa !9, !alias.scope !36
  store <4 x double> %wide.load570, ptr %i.et, align 8, !tbaa !9, !alias.scope !36
  %index.next573 = add nuw i64 %index568, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next573, %n.vec566
  br i1 %i.eu, label %middle.block574, label %vector.body567, !llvm.loop !38

middle.block574:                                  ; preds = %vector.body567
  %cmp.n575 = icmp eq i64 %i.eh, %n.vec566
  br i1 %cmp.n575, label %.loopexit368, label %scalar.ph563.preheader

scalar.ph563.preheader:                           ; preds = %vector.memcheck551, %.preheader419, %middle.block574
  %indvars.iv436.ph = phi i64 [ %i.eb, %vector.memcheck551 ], [ %i.eb, %.preheader419 ], [ %i.ep, %middle.block574 ] ; 4 uses
  %i.ev = sub nsw i64 %wide.trip.count439, %indvars.iv436.ph
  %xtraiter740 = and i64 %i.ev, 3                 ; 2 uses
  %lcmp.mod741.not = icmp eq i64 %xtraiter740, 0
  br i1 %lcmp.mod741.not, label %scalar.ph563.prol.loopexit, label %scalar.ph563.prol

scalar.ph563.prol:                                ; preds = %scalar.ph563.preheader, %scalar.ph563.prol
  %indvars.iv436.prol = phi i64 [ %indvars.iv.next437.prol, %scalar.ph563.prol ], [ %indvars.iv436.ph, %scalar.ph563.preheader ]
  %prol.iter742 = phi i64 [ %prol.iter742.next, %scalar.ph563.prol ], [ 0, %scalar.ph563.preheader ]
  %indvars.iv.next437.prol = add nsw i64 %indvars.iv436.prol, 1 ; 3 uses
  %i.ew = mul nsw i64 %indvars.iv.next437.prol, %i.s ; 2 uses
  %gep489.prol = getelementptr [8 x i8], ptr %invariant.gep488, i64 %i.ew ; 2 uses
  %i.ex = load double, ptr %gep489.prol, align 8, !tbaa !9
  %gep491.prol = getelementptr [8 x i8], ptr %invariant.gep490, i64 %i.ew ; 2 uses
  %i.ey = load double, ptr %gep491.prol, align 8, !tbaa !9
  store double %i.ey, ptr %gep489.prol, align 8, !tbaa !9
  store double %i.ex, ptr %gep491.prol, align 8, !tbaa !9
  %prol.iter742.next = add i64 %prol.iter742, 1   ; 2 uses
  %prol.iter742.cmp.not = icmp eq i64 %prol.iter742.next, %xtraiter740
  br i1 %prol.iter742.cmp.not, label %scalar.ph563.prol.loopexit, label %scalar.ph563.prol, !llvm.loop !39

scalar.ph563.prol.loopexit:                       ; preds = %scalar.ph563.prol, %scalar.ph563.preheader
  %indvars.iv436.unr = phi i64 [ %indvars.iv436.ph, %scalar.ph563.preheader ], [ %indvars.iv.next437.prol, %scalar.ph563.prol ]
  %i.ez = sub nsw i64 %indvars.iv436.ph, %wide.trip.count439
  %i.fa = icmp ugt i64 %i.ez, -4
  br i1 %i.fa, label %.loopexit368, label %scalar.ph563

scalar.ph563:                                     ; preds = %scalar.ph563.prol.loopexit, %scalar.ph563
  %indvars.iv436 = phi i64 [ %indvars.iv.next437.3, %scalar.ph563 ], [ %indvars.iv436.unr, %scalar.ph563.prol.loopexit ] ; 4 uses
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1
  %i.fb = mul nsw i64 %indvars.iv.next437, %i.s   ; 2 uses
  %gep489 = getelementptr [8 x i8], ptr %invariant.gep488, i64 %i.fb ; 2 uses
  %i.fc = load double, ptr %gep489, align 8, !tbaa !9
  %gep491 = getelementptr [8 x i8], ptr %invariant.gep490, i64 %i.fb ; 2 uses
  %i.fd = load double, ptr %gep491, align 8, !tbaa !9
  store double %i.fd, ptr %gep489, align 8, !tbaa !9
  store double %i.fc, ptr %gep491, align 8, !tbaa !9
  %indvars.iv.next437.1 = add nsw i64 %indvars.iv436, 2
  %i.fe = mul nsw i64 %indvars.iv.next437.1, %i.s ; 2 uses
  %gep489.1 = getelementptr [8 x i8], ptr %invariant.gep488, i64 %i.fe ; 2 uses
  %i.ff = load double, ptr %gep489.1, align 8, !tbaa !9
  %gep491.1 = getelementptr [8 x i8], ptr %invariant.gep490, i64 %i.fe ; 2 uses
  %i.fg = load double, ptr %gep491.1, align 8, !tbaa !9
  store double %i.fg, ptr %gep489.1, align 8, !tbaa !9
  store double %i.ff, ptr %gep491.1, align 8, !tbaa !9
  %indvars.iv.next437.2 = add nsw i64 %indvars.iv436, 3
  %i.fh = mul nsw i64 %indvars.iv.next437.2, %i.s ; 2 uses
  %gep489.2 = getelementptr [8 x i8], ptr %invariant.gep488, i64 %i.fh ; 2 uses
  %i.fi = load double, ptr %gep489.2, align 8, !tbaa !9
  %gep491.2 = getelementptr [8 x i8], ptr %invariant.gep490, i64 %i.fh ; 2 uses
  %i.fj = load double, ptr %gep491.2, align 8, !tbaa !9
  store double %i.fj, ptr %gep489.2, align 8, !tbaa !9
  store double %i.fi, ptr %gep491.2, align 8, !tbaa !9
  %indvars.iv.next437.3 = add nsw i64 %indvars.iv436, 4 ; 3 uses
  %i.fk = mul nsw i64 %indvars.iv.next437.3, %i.s ; 2 uses
  %gep489.3 = getelementptr [8 x i8], ptr %invariant.gep488, i64 %i.fk ; 2 uses
  %i.fl = load double, ptr %gep489.3, align 8, !tbaa !9
  %gep491.3 = getelementptr [8 x i8], ptr %invariant.gep490, i64 %i.fk ; 2 uses
  %i.fm = load double, ptr %gep491.3, align 8, !tbaa !9
  store double %i.fm, ptr %gep489.3, align 8, !tbaa !9
  store double %i.fl, ptr %gep491.3, align 8, !tbaa !9
  %exitcond440.not.3 = icmp eq i64 %indvars.iv.next437.3, %wide.trip.count439
  br i1 %exitcond440.not.3, label %.loopexit368, label %scalar.ph563, !llvm.loop !40

bb.s:                                             ; preds = %.lr.ph388
  %i.fn = add nsw i32 %.4315387, 1                ; 6 uses
  %i.fo = icmp slt i32 %i.fn, %i.k
  br i1 %i.fo, label %bb.t, label %.loopexit368

bb.t:                                             ; preds = %bb.s
  %i.fp = add nsw i32 %.4315387, 2                ; 2 uses
  %.not354380 = icmp sgt i32 %i.fp, %i.k
  br i1 %.not354380, label %.loopexit368, label %.lr.ph382.preheader

.lr.ph382.preheader:                              ; preds = %bb.t
  %i.fq = sext i32 %i.fp to i64                   ; 6 uses
  %i.fr = sext i32 %i.ed to i64                   ; 7 uses
  %invariant.gep486 = getelementptr [8 x i8], ptr %i.d, i64 %i.eb ; 6 uses
  %i.fs = sub i32 %i.w, %.4315387                 ; 2 uses
  %i.ft = zext i32 %i.fs to i64
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check592 = icmp ugt i32 %i.fs, 10
  %or.cond719 = select i1 %min.iters.check592, i1 %ident.check578.not, i1 false
  br i1 %or.cond719, label %vector.memcheck579, label %.lr.ph382.preheader730

vector.memcheck579:                               ; preds = %.lr.ph382.preheader
  %i.fv = shl nsw i64 %i.fq, 3                    ; 2 uses
  %i.fw = shl nsw i64 %i.fr, 3                    ; 2 uses
  %i.fx = sub nsw i64 %i.fv, %i.fw
  %scevgep581 = getelementptr i8, ptr %scevgep580, i64 %i.fx
  %i.fy = sub i32 %i.u, %.4315387
  %i.fz = zext i32 %i.fy to i64
  %i.ga = shl nuw nsw i64 %i.fz, 3                ; 2 uses
  %i.gb = add nsw i64 %i.fv, %i.ga
  %i.gc = sub nsw i64 %i.gb, %i.fw
  %scevgep583 = getelementptr i8, ptr %scevgep582, i64 %i.gc
  %i.gd = add nsw i64 %i.eb, %i.fq
  %i.ge = shl nsw i64 %i.gd, 3                    ; 2 uses
  %scevgep585 = getelementptr i8, ptr %scevgep584, i64 %i.ge
  %i.gf = getelementptr i8, ptr %scevgep586, i64 %i.ge
  %scevgep587 = getelementptr i8, ptr %i.gf, i64 %i.ga
  %bound0588 = icmp ult ptr %scevgep581, %scevgep587
  %bound1589 = icmp ult ptr %scevgep585, %scevgep583
  %found.conflict590 = and i1 %bound0588, %bound1589
  br i1 %found.conflict590, label %.lr.ph382.preheader730, label %vector.ph593

vector.ph593:                                     ; preds = %vector.memcheck579
  %n.vec594 = and i64 %i.fu, 8589934584           ; 3 uses
  %i.gg = add nsw i64 %n.vec594, %i.fq
  br label %vector.body595

end_hunk_0
