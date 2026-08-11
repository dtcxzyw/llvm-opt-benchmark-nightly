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
  %8 = add nsw i32 %i.k, -2
  %ident.check578.not = icmp eq i32 %i.b, 1
  %ident.check550.not = icmp eq i32 %i.b, 1
  br label %.lr.ph388

bb.k:                                             ; preds = %bb.j
  store double 0.000000e+00, ptr %6, align 8, !tbaa !9
  %.not504 = icmp eq i32 %i.k, 1
  br i1 %.not504, label %.lr.ph379.preheader, label %.lr.ph

.lr.ph379.preheader:                              ; preds = %bb.n, %bb.k
  %i.w = sext i32 %i.b to i64                     ; 10 uses
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 11 uses
  %wide.trip.count430 = zext nneg i32 %i.k to i64
  %scevgep = getelementptr i8, ptr %3, i64 -8
  %scevgep512 = getelementptr i8, ptr %3, i64 -8
  %scevgep514 = getelementptr i8, ptr %3, i64 -8
  %scevgep516 = getelementptr i8, ptr %3, i64 -8
  %scevgep524 = getelementptr i8, ptr %3, i64 -8
  %i.x = shl nuw nsw i64 %wide.trip.count, 3
  %i.y = getelementptr i8, ptr %3, i64 %i.x
  %scevgep526 = getelementptr i8, ptr %i.y, i64 -8
  %scevgep528 = getelementptr i8, ptr %3, i64 -8
  %scevgep530 = getelementptr i8, ptr %3, i64 -8
  %ident.check522.not = icmp eq i32 %i.b, 1
  %ident.check.not = icmp eq i32 %i.b, 1
  br label %.lr.ph379

.lr.ph:                                           ; preds = %bb.k, %bb.n
  %.0311375 = phi i32 [ %i.an, %bb.n ], [ %i.k, %bb.k ] ; 4 uses
  %i.z = zext nneg i32 %.0311375 to i64           ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.ad = add nsw i32 %.0311375, -1               ; 3 uses
  %i.ae = mul nsw i32 %.0311375, %i.b
  %i.af = add nsw i32 %i.ad, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ag ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.z
  store double %i.ai, ptr %i.aj, align 8, !tbaa !9
  %i.ak = zext nneg i32 %i.ad to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ak
  store double 0.000000e+00, ptr %i.al, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.ah, align 8, !tbaa !9
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.z
  store double 0.000000e+00, ptr %i.am, align 8, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1312 = phi i32 [ %i.ad, %bb.l ], [ %.0311375, %bb.m ] ; 2 uses
  %i.an = add nsw i32 %.1312, -1
  %i.ao = icmp sgt i32 %.1312, 2
  br i1 %i.ao, label %.lr.ph, label %.lr.ph379.preheader, !llvm.loop !11

.lr.ph379:                                        ; preds = %.lr.ph379.preheader, %.loopexit371
  %.2313378 = phi i32 [ %i.dx, %.loopexit371 ], [ %i.k, %.lr.ph379.preheader ] ; 9 uses
  %i.ap = zext nneg i32 %.2313378 to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8  ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 0
  %i.at = icmp slt i32 %.2313378, %i.k            ; 2 uses
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph379
  br i1 %i.at, label %.preheader421, label %.loopexit371

.preheader421:                                    ; preds = %bb.o
  %i.au = sext i32 %.2313378 to i64               ; 9 uses
  %i.av = zext nneg i32 %i.ar to i64              ; 3 uses
  %invariant.gep482 = getelementptr [8 x i8], ptr %i.d, i64 %i.av ; 6 uses
  %invariant.gep484 = getelementptr [8 x i8], ptr %i.d, i64 %i.au ; 6 uses
  %i.aw = sub nsw i64 %wide.trip.count, %i.au     ; 3 uses
  %min.iters.check = icmp ugt i64 %i.aw, 11
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader421
  %i.ax = add nsw i64 %i.au, %i.av
  %i.ay = shl nsw i64 %i.ax, 3
  %scevgep511 = getelementptr i8, ptr %scevgep, i64 %i.ay
  %i.az = add nuw nsw i64 %wide.trip.count, %i.av
  %i.ba = shl nuw nsw i64 %i.az, 3
  %scevgep513 = getelementptr i8, ptr %scevgep512, i64 %i.ba
  %i.bb = shl nsw i64 %i.au, 4
  %scevgep515 = getelementptr i8, ptr %scevgep514, i64 %i.bb
  %i.bc = add nsw i64 %wide.trip.count, %i.au
  %i.bd = shl nsw i64 %i.bc, 3
  %scevgep517 = getelementptr i8, ptr %scevgep516, i64 %i.bd
  %bound0 = icmp ult ptr %scevgep511, %scevgep517
  %bound1 = icmp ult ptr %scevgep515, %scevgep513
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, -8                      ; 3 uses
  %i.be = add nsw i64 %n.vec, %i.au
  %invariant.op755 = add i64 %i.au, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass756 = add i64 %index, %invariant.op755   ; 2 uses
  %i.bf = getelementptr [8 x i8], ptr %invariant.gep482, i64 %.reass756 ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 32     ; 2 uses
  %wide.load = load <4 x double>, ptr %i.bf, align 8, !tbaa !9, !alias.scope !13, !noalias !16
  %wide.load518 = load <4 x double>, ptr %i.bg, align 8, !tbaa !9, !alias.scope !13, !noalias !16
  %i.bh = getelementptr [8 x i8], ptr %invariant.gep484, i64 %.reass756 ; 3 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 32     ; 2 uses
  %wide.load519 = load <4 x double>, ptr %i.bh, align 8, !tbaa !9, !alias.scope !16
  %wide.load520 = load <4 x double>, ptr %i.bi, align 8, !tbaa !9, !alias.scope !16
  store <4 x double> %wide.load519, ptr %i.bf, align 8, !tbaa !9, !alias.scope !13, !noalias !16
  store <4 x double> %wide.load520, ptr %i.bg, align 8, !tbaa !9, !alias.scope !13, !noalias !16
  store <4 x double> %wide.load, ptr %i.bh, align 8, !tbaa !9, !alias.scope !16
  store <4 x double> %wide.load518, ptr %i.bi, align 8, !tbaa !9, !alias.scope !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %.loopexit371, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader421, %middle.block
  %indvars.iv427.ph = phi i64 [ %i.au, %vector.memcheck ], [ %i.au, %.preheader421 ], [ %i.be, %middle.block ] ; 4 uses
  %i.bk = sub nsw i64 %wide.trip.count, %indvars.iv427.ph
  %xtraiter734 = and i64 %i.bk, 3                 ; 2 uses
  %lcmp.mod735.not = icmp eq i64 %xtraiter734, 0
  br i1 %lcmp.mod735.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv427.prol = phi i64 [ %indvars.iv.next428.prol, %scalar.ph.prol ], [ %indvars.iv427.ph, %scalar.ph.preheader ]
  %prol.iter736 = phi i64 [ %prol.iter736.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next428.prol = add nsw i64 %indvars.iv427.prol, 1 ; 3 uses
  %i.bl = mul nsw i64 %indvars.iv.next428.prol, %i.w ; 2 uses
  %gep483.prol = getelementptr [8 x i8], ptr %invariant.gep482, i64 %i.bl ; 2 uses
  %i.bm = load double, ptr %gep483.prol, align 8, !tbaa !9
  %gep485.prol = getelementptr [8 x i8], ptr %invariant.gep484, i64 %i.bl ; 2 uses
  %i.bn = load double, ptr %gep485.prol, align 8, !tbaa !9
  store double %i.bn, ptr %gep483.prol, align 8, !tbaa !9
  store double %i.bm, ptr %gep485.prol, align 8, !tbaa !9
  %prol.iter736.next = add i64 %prol.iter736, 1   ; 2 uses
  %prol.iter736.cmp.not = icmp eq i64 %prol.iter736.next, %xtraiter734
  br i1 %prol.iter736.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !21

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv427.unr = phi i64 [ %indvars.iv427.ph, %scalar.ph.preheader ], [ %indvars.iv.next428.prol, %scalar.ph.prol ]
  %i.bo = sub nsw i64 %indvars.iv427.ph, %wide.trip.count
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.loopexit371, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv427 = phi i64 [ %indvars.iv.next428.3, %scalar.ph ], [ %indvars.iv427.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %indvars.iv.next428 = add nsw i64 %indvars.iv427, 1
  %i.bq = mul nsw i64 %indvars.iv.next428, %i.w   ; 2 uses
  %gep483 = getelementptr [8 x i8], ptr %invariant.gep482, i64 %i.bq ; 2 uses
  %i.br = load double, ptr %gep483, align 8, !tbaa !9
  %gep485 = getelementptr [8 x i8], ptr %invariant.gep484, i64 %i.bq ; 2 uses
  %i.bs = load double, ptr %gep485, align 8, !tbaa !9
  store double %i.bs, ptr %gep483, align 8, !tbaa !9
  store double %i.br, ptr %gep485, align 8, !tbaa !9
  %indvars.iv.next428.1 = add nsw i64 %indvars.iv427, 2
  %i.bt = mul nsw i64 %indvars.iv.next428.1, %i.w ; 2 uses
  %gep483.1 = getelementptr [8 x i8], ptr %invariant.gep482, i64 %i.bt ; 2 uses
  %i.bu = load double, ptr %gep483.1, align 8, !tbaa !9
  %gep485.1 = getelementptr [8 x i8], ptr %invariant.gep484, i64 %i.bt ; 2 uses
  %i.bv = load double, ptr %gep485.1, align 8, !tbaa !9
  store double %i.bv, ptr %gep483.1, align 8, !tbaa !9
  store double %i.bu, ptr %gep485.1, align 8, !tbaa !9
  %indvars.iv.next428.2 = add nsw i64 %indvars.iv427, 3
  %i.bw = mul nsw i64 %indvars.iv.next428.2, %i.w ; 2 uses
  %gep483.2 = getelementptr [8 x i8], ptr %invariant.gep482, i64 %i.bw ; 2 uses
  %i.bx = load double, ptr %gep483.2, align 8, !tbaa !9
  %gep485.2 = getelementptr [8 x i8], ptr %invariant.gep484, i64 %i.bw ; 2 uses
  %i.by = load double, ptr %gep485.2, align 8, !tbaa !9
  store double %i.by, ptr %gep483.2, align 8, !tbaa !9
  store double %i.bx, ptr %gep485.2, align 8, !tbaa !9
  %indvars.iv.next428.3 = add nsw i64 %indvars.iv427, 4 ; 3 uses
  %i.bz = mul nsw i64 %indvars.iv.next428.3, %i.w ; 2 uses
  %gep483.3 = getelementptr [8 x i8], ptr %invariant.gep482, i64 %i.bz ; 2 uses
  %i.ca = load double, ptr %gep483.3, align 8, !tbaa !9
  %gep485.3 = getelementptr [8 x i8], ptr %invariant.gep484, i64 %i.bz ; 2 uses
  %i.cb = load double, ptr %gep485.3, align 8, !tbaa !9
  store double %i.cb, ptr %gep483.3, align 8, !tbaa !9
  store double %i.ca, ptr %gep485.3, align 8, !tbaa !9
  %exitcond431.not.3 = icmp eq i64 %indvars.iv.next428.3, %wide.trip.count430
  br i1 %exitcond431.not.3, label %.loopexit371, label %scalar.ph, !llvm.loop !23

bb.p:                                             ; preds = %.lr.ph379
  %i.cc = add nsw i32 %.2313378, -1               ; 5 uses
  br i1 %i.at, label %bb.q, label %.loopexit371

bb.q:                                             ; preds = %bb.p
  %i.cd = sext i32 %.2313378 to i64               ; 7 uses
end_hunk_0
begin_hunk_1_@dsyconv_:bb.a
  %i.dc = icmp ugt i64 %i.db, -4
  br i1 %i.dc, label %.loopexit371, label %scalar.ph535

scalar.ph535:                                     ; preds = %scalar.ph535.prol.loopexit, %scalar.ph535
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph535 ], [ %indvars.iv.unr, %scalar.ph535.prol.loopexit ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.dd = mul nsw i64 %indvars.iv.next, %i.w      ; 2 uses
  %i.de = sub nsw i64 %i.dd, %i.cf
  %i.df = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.de ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !9
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dd ; 2 uses
  %i.dh = load double, ptr %gep, align 8, !tbaa !9
  store double %i.dh, ptr %i.df, align 8, !tbaa !9
  store double %i.dg, ptr %gep, align 8, !tbaa !9
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %i.di = mul nsw i64 %indvars.iv.next.1, %i.w    ; 2 uses
  %i.dj = sub nsw i64 %i.di, %i.cf
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dj ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !9
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.di ; 2 uses
  %i.dm = load double, ptr %gep.1, align 8, !tbaa !9
  store double %i.dm, ptr %i.dk, align 8, !tbaa !9
  store double %i.dl, ptr %gep.1, align 8, !tbaa !9
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %i.dn = mul nsw i64 %indvars.iv.next.2, %i.w    ; 2 uses
  %i.do = sub nsw i64 %i.dn, %i.cf
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.do ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !9
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dn ; 2 uses
  %i.dr = load double, ptr %gep.2, align 8, !tbaa !9
  store double %i.dr, ptr %i.dp, align 8, !tbaa !9
  store double %i.dq, ptr %gep.2, align 8, !tbaa !9
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 3 uses
  %i.ds = mul nsw i64 %indvars.iv.next.3, %i.w    ; 2 uses
  %i.dt = sub nsw i64 %i.ds, %i.cf
  %i.du = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dt ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !9
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ds ; 2 uses
  %i.dw = load double, ptr %gep.3, align 8, !tbaa !9
  store double %i.dw, ptr %i.du, align 8, !tbaa !9
  store double %i.dv, ptr %gep.3, align 8, !tbaa !9
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit371, label %scalar.ph535, !llvm.loop !31

.loopexit371:                                     ; preds = %scalar.ph535.prol.loopexit, %scalar.ph535, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block546, %middle.block, %bb.p, %bb.o
  %.3314 = phi i32 [ %i.cc, %bb.p ], [ %.2313378, %bb.o ], [ %.2313378, %middle.block ], [ %i.cc, %middle.block546 ], [ %.2313378, %scalar.ph.prol.loopexit ], [ %.2313378, %scalar.ph ], [ %i.cc, %scalar.ph535 ], [ %i.cc, %scalar.ph535.prol.loopexit ] ; 2 uses
  %i.dx = add nsw i32 %.3314, -1
  %i.dy = icmp sgt i32 %.3314, 1
  br i1 %i.dy, label %.lr.ph379, label %.loopexit, !llvm.loop !32

.preheader366:                                    ; preds = %.loopexit368
  %i.dz = icmp sgt i32 %i.k, 1
  br i1 %i.dz, label %.lr.ph391, label %.loopexit

.lr.ph388:                                        ; preds = %.lr.ph388.preheader, %.loopexit368
  %.4315387 = phi i32 [ %i.hq, %.loopexit368 ], [ 1, %.lr.ph388.preheader ] ; 10 uses
  %i.ea = sext i32 %.4315387 to i64               ; 12 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !8  ; 3 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph388
  %i.ee = icmp slt i32 %.4315387, %i.k
  br i1 %i.ee, label %.preheader419, label %.loopexit368

.preheader419:                                    ; preds = %bb.r
  %i.ef = zext nneg i32 %i.ec to i64              ; 3 uses
  %invariant.gep488 = getelementptr [8 x i8], ptr %i.d, i64 %i.ef ; 6 uses
  %invariant.gep490 = getelementptr [8 x i8], ptr %i.d, i64 %i.ea ; 6 uses
  %i.eg = sub nsw i64 %wide.trip.count439, %i.ea  ; 3 uses
  %min.iters.check564 = icmp ugt i64 %i.eg, 11
  %or.cond718 = select i1 %min.iters.check564, i1 %ident.check550.not, i1 false
  br i1 %or.cond718, label %vector.memcheck551, label %scalar.ph563.preheader

vector.memcheck551:                               ; preds = %.preheader419
  %i.eh = add nsw i64 %i.ea, %i.ef
  %i.ei = shl nsw i64 %i.eh, 3
  %scevgep553 = getelementptr i8, ptr %scevgep552, i64 %i.ei
  %i.ej = add nuw nsw i64 %wide.trip.count439, %i.ef
  %i.ek = shl nuw nsw i64 %i.ej, 3
  %scevgep555 = getelementptr i8, ptr %scevgep554, i64 %i.ek
  %i.el = shl nsw i64 %i.ea, 4
  %scevgep557 = getelementptr i8, ptr %scevgep556, i64 %i.el
  %i.em = add nsw i64 %wide.trip.count439, %i.ea
  %i.en = shl nsw i64 %i.em, 3
  %scevgep559 = getelementptr i8, ptr %scevgep558, i64 %i.en
  %bound0560 = icmp ult ptr %scevgep553, %scevgep559
  %bound1561 = icmp ult ptr %scevgep557, %scevgep555
  %found.conflict562 = and i1 %bound0560, %bound1561
  br i1 %found.conflict562, label %scalar.ph563.preheader, label %vector.ph565

vector.ph565:                                     ; preds = %vector.memcheck551
  %n.vec566 = and i64 %i.eg, -8                   ; 3 uses
  %i.eo = add nsw i64 %n.vec566, %i.ea
  %invariant.op757 = add i64 %i.ea, 1
  br label %vector.body567

vector.body567:                                   ; preds = %vector.body567, %vector.ph565
  %index568 = phi i64 [ 0, %vector.ph565 ], [ %index.next573, %vector.body567 ] ; 2 uses
  %.reass758 = add i64 %index568, %invariant.op757 ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %invariant.gep488, i64 %.reass758 ; 3 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 32     ; 2 uses
  %wide.load569 = load <4 x double>, ptr %i.ep, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  %wide.load570 = load <4 x double>, ptr %i.eq, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  %i.er = getelementptr [8 x i8], ptr %invariant.gep490, i64 %.reass758 ; 3 uses
  %i.es = getelementptr i8, ptr %i.er, i64 32     ; 2 uses
  %wide.load571 = load <4 x double>, ptr %i.er, align 8, !tbaa !9, !alias.scope !36
  %wide.load572 = load <4 x double>, ptr %i.es, align 8, !tbaa !9, !alias.scope !36
  store <4 x double> %wide.load571, ptr %i.ep, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  store <4 x double> %wide.load572, ptr %i.eq, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  store <4 x double> %wide.load569, ptr %i.er, align 8, !tbaa !9, !alias.scope !36
  store <4 x double> %wide.load570, ptr %i.es, align 8, !tbaa !9, !alias.scope !36
  %index.next573 = add nuw i64 %index568, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next573, %n.vec566
  br i1 %i.et, label %middle.block574, label %vector.body567, !llvm.loop !38

middle.block574:                                  ; preds = %vector.body567
  %cmp.n575 = icmp eq i64 %i.eg, %n.vec566
  br i1 %cmp.n575, label %.loopexit368, label %scalar.ph563.preheader

scalar.ph563.preheader:                           ; preds = %vector.memcheck551, %.preheader419, %middle.block574
  %indvars.iv436.ph = phi i64 [ %i.ea, %vector.memcheck551 ], [ %i.ea, %.preheader419 ], [ %i.eo, %middle.block574 ] ; 4 uses
  %i.eu = sub nsw i64 %wide.trip.count439, %indvars.iv436.ph
  %xtraiter740 = and i64 %i.eu, 3                 ; 2 uses
  %lcmp.mod741.not = icmp eq i64 %xtraiter740, 0
  br i1 %lcmp.mod741.not, label %scalar.ph563.prol.loopexit, label %scalar.ph563.prol

scalar.ph563.prol:                                ; preds = %scalar.ph563.preheader, %scalar.ph563.prol
  %indvars.iv436.prol = phi i64 [ %indvars.iv.next437.prol, %scalar.ph563.prol ], [ %indvars.iv436.ph, %scalar.ph563.preheader ]
  %prol.iter742 = phi i64 [ %prol.iter742.next, %scalar.ph563.prol ], [ 0, %scalar.ph563.preheader ]
  %indvars.iv.next437.prol = add nsw i64 %indvars.iv436.prol, 1 ; 3 uses
  %i.ev = mul nsw i64 %indvars.iv.next437.prol, %i.s ; 2 uses
  %gep489.prol = getelementptr [8 x i8], ptr %invariant.gep488, i64 %i.ev ; 2 uses
  %i.ew = load double, ptr %gep489.prol, align 8, !tbaa !9
  %gep491.prol = getelementptr [8 x i8], ptr %invariant.gep490, i64 %i.ev ; 2 uses
  %i.ex = load double, ptr %gep491.prol, align 8, !tbaa !9
  store double %i.ex, ptr %gep489.prol, align 8, !tbaa !9
  store double %i.ew, ptr %gep491.prol, align 8, !tbaa !9
  %prol.iter742.next = add i64 %prol.iter742, 1   ; 2 uses
  %prol.iter742.cmp.not = icmp eq i64 %prol.iter742.next, %xtraiter740
  br i1 %prol.iter742.cmp.not, label %scalar.ph563.prol.loopexit, label %scalar.ph563.prol, !llvm.loop !39

scalar.ph563.prol.loopexit:                       ; preds = %scalar.ph563.prol, %scalar.ph563.preheader
  %indvars.iv436.unr = phi i64 [ %indvars.iv436.ph, %scalar.ph563.preheader ], [ %indvars.iv.next437.prol, %scalar.ph563.prol ]
  %i.ey = sub nsw i64 %indvars.iv436.ph, %wide.trip.count439
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %.loopexit368, label %scalar.ph563

scalar.ph563:                                     ; preds = %scalar.ph563.prol.loopexit, %scalar.ph563
  %indvars.iv436 = phi i64 [ %indvars.iv.next437.3, %scalar.ph563 ], [ %indvars.iv436.unr, %scalar.ph563.prol.loopexit ] ; 4 uses
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1
  %i.fa = mul nsw i64 %indvars.iv.next437, %i.s   ; 2 uses
  %gep489 = getelementptr [8 x i8], ptr %invariant.gep488, i64 %i.fa ; 2 uses
  %i.fb = load double, ptr %gep489, align 8, !tbaa !9
  %gep491 = getelementptr [8 x i8], ptr %invariant.gep490, i64 %i.fa ; 2 uses
  %i.fc = load double, ptr %gep491, align 8, !tbaa !9
  store double %i.fc, ptr %gep489, align 8, !tbaa !9
  store double %i.fb, ptr %gep491, align 8, !tbaa !9
  %indvars.iv.next437.1 = add nsw i64 %indvars.iv436, 2
  %i.fd = mul nsw i64 %indvars.iv.next437.1, %i.s ; 2 uses
  %gep489.1 = getelementptr [8 x i8], ptr %invariant.gep488, i64 %i.fd ; 2 uses
  %i.fe = load double, ptr %gep489.1, align 8, !tbaa !9
  %gep491.1 = getelementptr [8 x i8], ptr %invariant.gep490, i64 %i.fd ; 2 uses
  %i.ff = load double, ptr %gep491.1, align 8, !tbaa !9
  store double %i.ff, ptr %gep489.1, align 8, !tbaa !9
  store double %i.fe, ptr %gep491.1, align 8, !tbaa !9
  %indvars.iv.next437.2 = add nsw i64 %indvars.iv436, 3
  %i.fg = mul nsw i64 %indvars.iv.next437.2, %i.s ; 2 uses
  %gep489.2 = getelementptr [8 x i8], ptr %invariant.gep488, i64 %i.fg ; 2 uses
  %i.fh = load double, ptr %gep489.2, align 8, !tbaa !9
  %gep491.2 = getelementptr [8 x i8], ptr %invariant.gep490, i64 %i.fg ; 2 uses
  %i.fi = load double, ptr %gep491.2, align 8, !tbaa !9
  store double %i.fi, ptr %gep489.2, align 8, !tbaa !9
  store double %i.fh, ptr %gep491.2, align 8, !tbaa !9
  %indvars.iv.next437.3 = add nsw i64 %indvars.iv436, 4 ; 3 uses
  %i.fj = mul nsw i64 %indvars.iv.next437.3, %i.s ; 2 uses
  %gep489.3 = getelementptr [8 x i8], ptr %invariant.gep488, i64 %i.fj ; 2 uses
  %i.fk = load double, ptr %gep489.3, align 8, !tbaa !9
  %gep491.3 = getelementptr [8 x i8], ptr %invariant.gep490, i64 %i.fj ; 2 uses
  %i.fl = load double, ptr %gep491.3, align 8, !tbaa !9
  store double %i.fl, ptr %gep489.3, align 8, !tbaa !9
  store double %i.fk, ptr %gep491.3, align 8, !tbaa !9
  %exitcond440.not.3 = icmp eq i64 %indvars.iv.next437.3, %wide.trip.count439
  br i1 %exitcond440.not.3, label %.loopexit368, label %scalar.ph563, !llvm.loop !40

bb.s:                                             ; preds = %.lr.ph388
  %i.fm = add nsw i32 %.4315387, 1                ; 6 uses
  %i.fn = icmp slt i32 %i.fm, %i.k
  br i1 %i.fn, label %bb.t, label %.loopexit368

bb.t:                                             ; preds = %bb.s
  %i.fo = add nsw i32 %.4315387, 2                ; 2 uses
  %.not354380 = icmp sgt i32 %i.fo, %i.k
  br i1 %.not354380, label %.loopexit368, label %.lr.ph382.preheader

.lr.ph382.preheader:                              ; preds = %bb.t
  %i.fp = sext i32 %i.fo to i64                   ; 6 uses
  %i.fq = sext i32 %i.ec to i64                   ; 7 uses
  %invariant.gep486 = getelementptr [8 x i8], ptr %i.d, i64 %i.ea ; 6 uses
  %i.fr = sub i32 %8, %.4315387                   ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check592 = icmp ugt i32 %i.fr, 10
  %or.cond719 = select i1 %min.iters.check592, i1 %ident.check578.not, i1 false
  br i1 %or.cond719, label %vector.memcheck579, label %.lr.ph382.preheader730

vector.memcheck579:                               ; preds = %.lr.ph382.preheader
  %i.fu = shl nsw i64 %i.fp, 3                    ; 2 uses
  %i.fv = shl nsw i64 %i.fq, 3                    ; 2 uses
  %i.fw = sub nsw i64 %i.fu, %i.fv
  %scevgep581 = getelementptr i8, ptr %scevgep580, i64 %i.fw
  %i.fx = sub i32 %i.u, %.4315387
  %i.fy = zext i32 %i.fx to i64
  %i.fz = shl nuw nsw i64 %i.fy, 3                ; 2 uses
  %i.ga = add nsw i64 %i.fu, %i.fz
  %i.gb = sub nsw i64 %i.ga, %i.fv
  %scevgep583 = getelementptr i8, ptr %scevgep582, i64 %i.gb
  %i.gc = add nsw i64 %i.ea, %i.fp
  %i.gd = shl nsw i64 %i.gc, 3                    ; 2 uses
  %scevgep585 = getelementptr i8, ptr %scevgep584, i64 %i.gd
  %i.ge = getelementptr i8, ptr %scevgep586, i64 %i.gd
  %scevgep587 = getelementptr i8, ptr %i.ge, i64 %i.fz
  %bound0588 = icmp ult ptr %scevgep581, %scevgep587
  %bound1589 = icmp ult ptr %scevgep585, %scevgep583
  %found.conflict590 = and i1 %bound0588, %bound1589
  br i1 %found.conflict590, label %.lr.ph382.preheader730, label %vector.ph593

vector.ph593:                                     ; preds = %vector.memcheck579
  %n.vec594 = and i64 %i.ft, 8589934584           ; 3 uses
  %i.gf = add nsw i64 %n.vec594, %i.fp
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph593
  %index596 = phi i64 [ 0, %vector.ph593 ], [ %index.next601, %vector.body595 ] ; 2 uses
  %i.gg = add i64 %index596, %i.fp                ; 2 uses
  %i.gh = sub nsw i64 %i.gg, %i.fq
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.gh ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32 ; 2 uses
  %wide.load597 = load <4 x double>, ptr %i.gi, align 8, !tbaa !9, !alias.scope !41, !noalias !44
  %wide.load598 = load <4 x double>, ptr %i.gj, align 8, !tbaa !9, !alias.scope !41, !noalias !44
  %i.gk = getelementptr [8 x i8], ptr %invariant.gep486, i64 %i.gg ; 3 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 32     ; 2 uses
  %wide.load599 = load <4 x double>, ptr %i.gk, align 8, !tbaa !9, !alias.scope !44
  %wide.load600 = load <4 x double>, ptr %i.gl, align 8, !tbaa !9, !alias.scope !44
  store <4 x double> %wide.load599, ptr %i.gi, align 8, !tbaa !9, !alias.scope !41, !noalias !44
  store <4 x double> %wide.load600, ptr %i.gj, align 8, !tbaa !9, !alias.scope !41, !noalias !44
  store <4 x double> %wide.load597, ptr %i.gk, align 8, !tbaa !9, !alias.scope !44
  store <4 x double> %wide.load598, ptr %i.gl, align 8, !tbaa !9, !alias.scope !44
  %index.next601 = add nuw i64 %index596, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next601, %n.vec594
  br i1 %i.gm, label %middle.block602, label %vector.body595, !llvm.loop !46

middle.block602:                                  ; preds = %vector.body595
  %cmp.n603 = icmp eq i64 %i.ft, %n.vec594
  br i1 %cmp.n603, label %.loopexit368, label %.lr.ph382.preheader730

.lr.ph382.preheader730:                           ; preds = %vector.memcheck579, %.lr.ph382.preheader, %middle.block602
  %indvars.iv432.ph = phi i64 [ %i.fp, %vector.memcheck579 ], [ %i.fp, %.lr.ph382.preheader ], [ %i.gf, %middle.block602 ] ; 3 uses
  %i.gn = trunc i64 %indvars.iv432.ph to i32      ; 2 uses
  %i.go = sub i32 %i.v, %i.gn
  %i.gp = sub i32 %i.k, %i.gn
  %xtraiter737 = and i32 %i.go, 3                 ; 2 uses
  %lcmp.mod738.not = icmp eq i32 %xtraiter737, 0
  br i1 %lcmp.mod738.not, label %.lr.ph382.prol.loopexit, label %.lr.ph382.prol

.lr.ph382.prol:                                   ; preds = %.lr.ph382.preheader730, %.lr.ph382.prol
  %indvars.iv432.prol = phi i64 [ %indvars.iv.next433.prol, %.lr.ph382.prol ], [ %indvars.iv432.ph, %.lr.ph382.preheader730 ] ; 2 uses
  %prol.iter739 = phi i32 [ %prol.iter739.next, %.lr.ph382.prol ], [ 0, %.lr.ph382.preheader730 ]
  %i.gq = mul nsw i64 %indvars.iv432.prol, %i.s   ; 2 uses
  %i.gr = sub nsw i64 %i.gq, %i.fq
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.gr ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !9
  %gep487.prol = getelementptr [8 x i8], ptr %invariant.gep486, i64 %i.gq ; 2 uses
  %i.gu = load double, ptr %gep487.prol, align 8, !tbaa !9
  store double %i.gu, ptr %i.gs, align 8, !tbaa !9
  store double %i.gt, ptr %gep487.prol, align 8, !tbaa !9
  %indvars.iv.next433.prol = add nsw i64 %indvars.iv432.prol, 1 ; 2 uses
  %prol.iter739.next = add i32 %prol.iter739, 1   ; 2 uses
  %prol.iter739.cmp.not = icmp eq i32 %prol.iter739.next, %xtraiter737
  br i1 %prol.iter739.cmp.not, label %.lr.ph382.prol.loopexit, label %.lr.ph382.prol, !llvm.loop !47

.lr.ph382.prol.loopexit:                          ; preds = %.lr.ph382.prol, %.lr.ph382.preheader730
  %indvars.iv432.unr = phi i64 [ %indvars.iv432.ph, %.lr.ph382.preheader730 ], [ %indvars.iv.next433.prol, %.lr.ph382.prol ]
  %i.gv = icmp ult i32 %i.gp, 3
  br i1 %i.gv, label %.loopexit368, label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph382.prol.loopexit, %.lr.ph382
  %indvars.iv432 = phi i64 [ %indvars.iv.next433.3, %.lr.ph382 ], [ %indvars.iv432.unr, %.lr.ph382.prol.loopexit ] ; 5 uses
  %i.gw = mul nsw i64 %indvars.iv432, %i.s        ; 2 uses
  %i.gx = sub nsw i64 %i.gw, %i.fq
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.gx ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !9
  %gep487 = getelementptr [8 x i8], ptr %invariant.gep486, i64 %i.gw ; 2 uses
  %i.ha = load double, ptr %gep487, align 8, !tbaa !9
  store double %i.ha, ptr %i.gy, align 8, !tbaa !9
  store double %i.gz, ptr %gep487, align 8, !tbaa !9
  %indvars.iv.next433 = add nsw i64 %indvars.iv432, 1
  %i.hb = mul nsw i64 %indvars.iv.next433, %i.s   ; 2 uses
  %i.hc = sub nsw i64 %i.hb, %i.fq
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.hc ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !9
  %gep487.1 = getelementptr [8 x i8], ptr %invariant.gep486, i64 %i.hb ; 2 uses
  %i.hf = load double, ptr %gep487.1, align 8, !tbaa !9
  store double %i.hf, ptr %i.hd, align 8, !tbaa !9
  store double %i.he, ptr %gep487.1, align 8, !tbaa !9
  %indvars.iv.next433.1 = add nsw i64 %indvars.iv432, 2
  %i.hg = mul nsw i64 %indvars.iv.next433.1, %i.s ; 2 uses
  %i.hh = sub nsw i64 %i.hg, %i.fq
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.hh ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !9
  %gep487.2 = getelementptr [8 x i8], ptr %invariant.gep486, i64 %i.hg ; 2 uses
  %i.hk = load double, ptr %gep487.2, align 8, !tbaa !9
  store double %i.hk, ptr %i.hi, align 8, !tbaa !9
  store double %i.hj, ptr %gep487.2, align 8, !tbaa !9
  %indvars.iv.next433.2 = add nsw i64 %indvars.iv432, 3
  %i.hl = mul nsw i64 %indvars.iv.next433.2, %i.s ; 2 uses
  %i.hm = sub nsw i64 %i.hl, %i.fq
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.hm ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !9
  %gep487.3 = getelementptr [8 x i8], ptr %invariant.gep486, i64 %i.hl ; 2 uses
  %i.hp = load double, ptr %gep487.3, align 8, !tbaa !9
  store double %i.hp, ptr %i.hn, align 8, !tbaa !9
  store double %i.ho, ptr %gep487.3, align 8, !tbaa !9
  %indvars.iv.next433.3 = add nsw i64 %indvars.iv432, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next433.3 to i32
  %exitcond435.not.3 = icmp eq i32 %i.t, %lftr.wideiv.3
  br i1 %exitcond435.not.3, label %.loopexit368, label %.lr.ph382, !llvm.loop !48

.loopexit368:                                     ; preds = %.lr.ph382.prol.loopexit, %.lr.ph382, %scalar.ph563.prol.loopexit, %scalar.ph563, %middle.block602, %middle.block574, %bb.t, %bb.s, %bb.r
  %.5316 = phi i32 [ %i.fm, %bb.s ], [ %.4315387, %bb.r ], [ %i.fm, %bb.t ], [ %.4315387, %middle.block574 ], [ %i.fm, %middle.block602 ], [ %.4315387, %scalar.ph563.prol.loopexit ], [ %.4315387, %scalar.ph563 ], [ %i.fm, %.lr.ph382 ], [ %i.fm, %.lr.ph382.prol.loopexit ] ; 2 uses
  %i.hq = add nsw i32 %.5316, 1
  %.not353.not = icmp slt i32 %.5316, %i.k
  br i1 %.not353.not, label %.lr.ph388, label %.preheader366, !llvm.loop !49

.lr.ph391:                                        ; preds = %.preheader366, %bb.v
  %.6317390 = phi i32 [ %i.ic, %bb.v ], [ %i.k, %.preheader366 ] ; 4 uses
  %i.hr = zext nneg i32 %.6317390 to i64          ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !8
  %i.hu = icmp slt i32 %i.ht, 0
  br i1 %i.hu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph391
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hr
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !9
  %i.hx = add nsw i32 %.6317390, -1               ; 2 uses
  %i.hy = mul nsw i32 %.6317390, %i.b
  %i.hz = add nsw i32 %i.hx, %i.hy
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ia
  store double %i.hw, ptr %i.ib, align 8, !tbaa !9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph391
  %.7318 = phi i32 [ %i.hx, %bb.u ], [ %.6317390, %.lr.ph391 ] ; 2 uses
  %i.ic = add nsw i32 %.7318, -1
  %i.id = icmp sgt i32 %.7318, 2
  br i1 %i.id, label %.lr.ph391, label %.loopexit, !llvm.loop !50

bb.w:                                             ; preds = %bb.i
  br i1 %.not340, label %.lr.ph412.preheader, label %.lr.ph394.preheader

.lr.ph412.preheader:                              ; preds = %bb.w
  %i.ie = sext i32 %i.b to i64                    ; 10 uses
  %scevgep664 = getelementptr i8, ptr %3, i64 -8
  %scevgep666 = getelementptr i8, ptr %3, i64 -16
  %scevgep668 = getelementptr i8, ptr %3, i64 -8
  %scevgep670 = getelementptr i8, ptr %3, i64 -16
  %scevgep692 = getelementptr i8, ptr %3, i64 -8
  %scevgep694 = getelementptr i8, ptr %3, i64 -16
  %scevgep696 = getelementptr i8, ptr %3, i64 -8
  %scevgep698 = getelementptr i8, ptr %3, i64 -16
  %ident.check690.not = icmp eq i32 %i.b, 1
  %ident.check662.not = icmp eq i32 %i.b, 1
  br label %.lr.ph412

.lr.ph394.preheader:                              ; preds = %bb.w
  %i.if = zext nneg i32 %i.k to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.if
  store double 0.000000e+00, ptr %i.ig, align 8, !tbaa !9
  br label %.lr.ph394

.lr.ph401.preheader:                              ; preds = %bb.aa
  %i.ih = sext i32 %i.b to i64                    ; 10 uses
  %scevgep608 = getelementptr i8, ptr %3, i64 -8
  %scevgep610 = getelementptr i8, ptr %3, i64 -16
  %scevgep612 = getelementptr i8, ptr %3, i64 -8
  %scevgep614 = getelementptr i8, ptr %3, i64 -16
  %scevgep636 = getelementptr i8, ptr %3, i64 -8
  %scevgep638 = getelementptr i8, ptr %3, i64 -16
  %scevgep640 = getelementptr i8, ptr %3, i64 -8
  %scevgep642 = getelementptr i8, ptr %3, i64 -16
  %ident.check634.not = icmp eq i32 %i.b, 1
  %ident.check606.not = icmp eq i32 %i.b, 1
  br label %.lr.ph401

.lr.ph394:                                        ; preds = %.lr.ph394.preheader, %bb.aa
  %.8393 = phi i32 [ %i.ix, %bb.aa ], [ 1, %.lr.ph394.preheader ] ; 6 uses
  %i.ii = icmp slt i32 %.8393, %i.k
  br i1 %i.ii, label %bb.x, label %.lr.ph394._crit_edge

.lr.ph394._crit_edge:                             ; preds = %.lr.ph394
  %.pre462 = zext nneg i32 %.8393 to i64
end_hunk_1
