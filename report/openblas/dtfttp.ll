loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DTFTTP\00", align 1

; Function Attrs: nounwind uwtable
define void @dtfttp_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 11 uses
  %i.b = ptrtoaddr ptr %4 to i64                  ; 11 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 0, ptr %5, align 4, !tbaa !8
  %i.d = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #6
  %i.e = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #6
  %.not378 = icmp eq i32 %i.f, 0
  br i1 %.not378, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not379 = icmp eq i32 %i.e, 0                  ; 7 uses
  br i1 %.not379, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #6
  %.not380 = icmp eq i32 %i.g, 0
  br i1 %.not380, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load i32, ptr %2, align 4, !tbaa !8      ; 22 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.pr = load i32, ptr %5, align 4, !tbaa !8      ; 2 uses
  %.not381 = icmp eq i32 %.pr, 0
  br i1 %.not381, label %bb.g, label %.thread

.thread.sink.split:                               ; preds = %bb.e, %bb.d, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -3, %bb.e ] ; 2 uses
  store i32 %.sink, ptr %5, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.f
  %i.j = phi i32 [ %.pr, %bb.f ], [ %.sink, %.thread.sink.split ]
  %i.k = sub nsw i32 0, %i.j
  store i32 %i.k, ptr %i.c, align 4, !tbaa !8
  %i.l = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.c, i32 noundef 6) #6 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  switch i32 %i.h, label %bb.i [
    i32 0, label %.loopexit
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %storemerge = load double, ptr %3, align 8, !tbaa !9
  store double %storemerge, ptr %4, align 8, !tbaa !9
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.m = lshr i32 %i.h, 1                         ; 5 uses
  %i.n = sub nsw i32 %i.h, %i.m                   ; 2 uses
  %. = select i1 %.not379, i32 %i.m, i32 %i.n     ; 11 uses
  %.901 = select i1 %.not379, i32 %i.n, i32 %i.m  ; 17 uses
  %i.o = and i32 %i.h, 1
  %i.p = icmp eq i32 %i.o, 0                      ; 2 uses
  %i.q = lshr i32 %i.h, 1                         ; 15 uses
  %.0328 = or i32 %i.h, 1                         ; 8 uses
  br i1 %.not, label %bb.j, label %.thread416

bb.j:                                             ; preds = %bb.i
  %i.r = add nuw i32 %i.h, 1
  %i.s = lshr i32 %i.r, 1                         ; 25 uses
  br i1 %i.p, label %bb.v, label %bb.m

.thread416:                                       ; preds = %bb.i
  br i1 %i.p, label %.thread423, label %.thread420

.thread420:                                       ; preds = %.thread416
  br i1 %.not379, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread420
  %.not411440 = icmp slt i32 %.901, 0
  br i1 %.not411440, label %.loopexit, label %.preheader436.preheader

.preheader436.preheader:                          ; preds = %bb.k
  %i.t = zext nneg i32 %.0328 to i64              ; 2 uses
  %i.u = add nuw i32 %.901, 1
  %wide.trip.count656 = zext i32 %i.u to i64      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 4 uses
  %i.v = sub i64 %i.b, %i.a
  %i.w = shl nuw nsw i64 %i.t, 3
  %i.x = sub nuw nsw i64 -8, %i.w
  br label %.preheader436

.preheader436:                                    ; preds = %.preheader436.preheader, %._crit_edge
  %indvars.iv651 = phi i64 [ 0, %.preheader436.preheader ], [ %indvars.iv.next652, %._crit_edge ] ; 2 uses
  %indvars.iv644 = phi i64 [ 0, %.preheader436.preheader ], [ %indvars.iv.next645, %._crit_edge ] ; 10 uses
  %.0443 = phi i32 [ 0, %.preheader436.preheader ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.y = sub nsw i64 %wide.trip.count, %indvars.iv644 ; 7 uses
  %i.z = mul i64 %i.x, %indvars.iv644
  %i.aa = add i64 %i.v, %i.z
  %indvars655 = trunc i64 %indvars.iv644 to i32
  %.not414.not437 = icmp sgt i32 %i.h, %indvars655
  br i1 %.not414.not437, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader436
  %i.ab = sext i32 %.0443 to i64                  ; 7 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv651 ; 11 uses
  %min.iters.check = icmp ult i64 %i.y, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = add i64 %i.aa, %i.ac
  %i.ae = add i64 %i.ad, -1
  %diff.check = icmp ult i64 %i.ae, 127
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check910 = icmp ult i64 %i.y, 16
  br i1 %min.iters.check910, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.y, 12
  %n.vec = and i64 %i.y, -16                      ; 5 uses
  %i.ag = add i64 %indvars.iv644, %n.vec
  %i.ah = add i64 %n.vec, %i.ab                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv644
  %invariant.gep1643 = getelementptr [8 x i8], ptr %4, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %wide.load = load <4 x double>, ptr %i.aj, align 8, !tbaa !9
  %wide.load911 = load <4 x double>, ptr %i.ak, align 8, !tbaa !9
  %wide.load912 = load <4 x double>, ptr %i.al, align 8, !tbaa !9
  %wide.load913 = load <4 x double>, ptr %i.am, align 8, !tbaa !9
  %gep1644 = getelementptr [8 x i8], ptr %invariant.gep1643, i64 %index ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %gep1644, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %gep1644, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %gep1644, i64 96
  store <4 x double> %wide.load, ptr %gep1644, align 8, !tbaa !9
  store <4 x double> %wide.load911, ptr %i.an, align 8, !tbaa !9
  store <4 x double> %wide.load912, ptr %i.ao, align 8, !tbaa !9
  store <4 x double> %wide.load913, ptr %i.ap, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec915 = and i64 %i.y, -4                    ; 4 uses
  %i.ar = add i64 %indvars.iv644, %n.vec915
  %i.as = add i64 %n.vec915, %i.ab                ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv644
  %invariant.gep1645 = getelementptr [8 x i8], ptr %4, i64 %i.ab
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index916 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next918, %vec.epilog.vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index916
  %wide.load917 = load <4 x double>, ptr %i.au, align 8, !tbaa !9
  %gep1646 = getelementptr [8 x i8], ptr %invariant.gep1645, i64 %index916
  store <4 x double> %wide.load917, ptr %gep1646, align 8, !tbaa !9
  %index.next918 = add nuw i64 %index916, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next918, %n.vec915
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n919 = icmp eq i64 %i.y, %n.vec915
  br i1 %cmp.n919, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv646.ph = phi i64 [ %indvars.iv644, %iter.check ], [ %indvars.iv644, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %i.ab, %iter.check ], [ %i.ab, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ] ; 2 uses
  %i.aw = sub i64 %wide.trip.count, %indvars.iv646.ph
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv646.prol = phi i64 [ %indvars.iv.next647.prol, %.lr.ph.prol ], [ %indvars.iv646.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646.prol
  %i.ax = load double, ptr %gep.prol, align 8, !tbaa !9
  %i.ay = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.prol
  store double %i.ax, ptr %i.ay, align 8, !tbaa !9
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %indvars.iv.next647.prol = add nuw nsw i64 %indvars.iv646.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !17

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.next.lcssa1606.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %indvars.iv646.unr = phi i64 [ %indvars.iv646.ph, %.lr.ph.preheader ], [ %indvars.iv.next647.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.az = sub i64 %indvars.iv646.ph, %wide.trip.count
  %i.ba = icmp ugt i64 %i.az, -8
  br i1 %i.ba, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv646 = phi i64 [ %indvars.iv.next647.7, %.lr.ph ], [ %indvars.iv646.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %i.bb = load double, ptr %gep, align 8, !tbaa !9
  %i.bc = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv
  store double %i.bb, ptr %i.bc, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.be = load double, ptr %gep.1, align 8, !tbaa !9
  %i.bf = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  store double %i.be, ptr %i.bg, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bi = load double, ptr %gep.2, align 8, !tbaa !9
  %i.bj = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  store double %i.bi, ptr %i.bk, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bm = load double, ptr %gep.3, align 8, !tbaa !9
  %i.bn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.bo = getelementptr i8, ptr %i.bn, i64 24
  store double %i.bm, ptr %i.bo, align 8, !tbaa !9
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bq = load double, ptr %gep.4, align 8, !tbaa !9
  %i.br = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.bs = getelementptr i8, ptr %i.br, i64 32
  store double %i.bq, ptr %i.bs, align 8, !tbaa !9
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bu = load double, ptr %gep.5, align 8, !tbaa !9
  %i.bv = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.bw = getelementptr i8, ptr %i.bv, i64 40
  store double %i.bu, ptr %i.bw, align 8, !tbaa !9
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.by = load double, ptr %gep.6, align 8, !tbaa !9
  %i.bz = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.ca = getelementptr i8, ptr %i.bz, i64 48
  store double %i.by, ptr %i.ca, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cc = load double, ptr %gep.7, align 8, !tbaa !9
  %i.cd = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.ce = getelementptr i8, ptr %i.cd, i64 56
  store double %i.cc, ptr %i.ce, align 8, !tbaa !9
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %indvars.iv.next647.7 = add nuw nsw i64 %indvars.iv646, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next647.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.as, %vec.epilog.middle.block ], [ %i.ah, %middle.block ], [ %indvars.iv.next.lcssa1606.unr, %.lr.ph.prol.loopexit ], [ %indvars.iv.next.7, %.lr.ph ]
  %i.cf = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge
end_hunk_0
begin_hunk_1_@dtfttp_:bb.a
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  store double %i.gn, ptr %i.gp, align 8, !tbaa !9
  %indvars.iv.next679.1 = add nsw i64 %indvars.iv.next679, %i.ez ; 2 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.1
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !9
  %i.gs = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  store double %i.gr, ptr %i.gt, align 8, !tbaa !9
  %indvars.iv.next679.2 = add nsw i64 %indvars.iv.next679.1, %i.ez ; 2 uses
  %i.gu = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.2
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !9
  %i.gw = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.gx = getelementptr i8, ptr %i.gw, i64 24
  store double %i.gv, ptr %i.gx, align 8, !tbaa !9
  %indvars.iv.next679.3 = add nsw i64 %indvars.iv.next679.2, %i.ez ; 2 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.3
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !9
  %i.ha = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.hb = getelementptr i8, ptr %i.ha, i64 32
  store double %i.gz, ptr %i.hb, align 8, !tbaa !9
  %indvars.iv.next679.4 = add nsw i64 %indvars.iv.next679.3, %i.ez ; 2 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.4
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !9
  %i.he = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.hf = getelementptr i8, ptr %i.he, i64 40
  store double %i.hd, ptr %i.hf, align 8, !tbaa !9
  %indvars.iv.next679.5 = add nsw i64 %indvars.iv.next679.4, %i.ez ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.5
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !9
  %i.hi = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.hj = getelementptr i8, ptr %i.hi, i64 48
  store double %i.hh, ptr %i.hj, align 8, !tbaa !9
  %indvars.iv.next679.6 = add nsw i64 %indvars.iv.next679.5, %i.ez ; 2 uses
  %i.hk = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next679.6
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !9
  %i.hm = getelementptr [8 x i8], ptr %4, i64 %indvars.iv674
  %i.hn = getelementptr i8, ptr %i.hm, i64 56
  store double %i.hl, ptr %i.hn, align 8, !tbaa !9
  %indvars.iv.next675.7 = add nsw i64 %indvars.iv674, 8 ; 2 uses
  %indvars.iv.next679.7 = add nsw i64 %indvars.iv.next679.6, %i.ez
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next675.7 to i32
  %exitcond685.not.7 = icmp eq i32 %i.fn, %lftr.wideiv.7
  br i1 %exitcond685.not.7, label %.loopexit1574, label %vec.epilog.scalar.ph975, !llvm.loop !29

.loopexit1574:                                    ; preds = %vec.epilog.scalar.ph975.prol.loopexit, %vec.epilog.scalar.ph975, %vec.epilog.middle.block984, %middle.block970
  %indvars.iv.next677 = add i32 %indvars.iv676, 1
  %indvars.iv.next684 = add nuw i32 %indvars.iv683, 1
  %exitcond686.not = icmp eq i32 %indvars.iv683, %.
  %indvar.next = add i64 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.fd
  %loop-unroll.iv.next1611 = add i32 %loop-unroll.iv1610, %i.fb
  br i1 %exitcond686.not, label %._crit_edge465, label %iter.check974, !llvm.loop !30

._crit_edge465:                                   ; preds = %.loopexit1574, %bb.l
  %.4.lcssa = phi i32 [ 0, %bb.l ], [ %i.fn, %.loopexit1574 ]
  %.not408.not474 = icmp slt i32 %., %i.h
  br i1 %.not408.not474, label %.lr.ph479.preheader, label %.loopexit

.lr.ph479.preheader:                              ; preds = %._crit_edge465
  %i.ho = zext nneg i32 %.0328 to i64             ; 4 uses
  %i.hp = sext i32 %. to i64                      ; 2 uses
  %wide.trip.count702 = zext nneg i32 %i.h to i64
  %i.hq = sub i64 %i.b, %i.a
  %i.hr = mul nsw i64 %i.ho, -8
  %i.hs = add nuw nsw i64 %i.ho, 1
  br label %.lr.ph479

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %._crit_edge472
  %indvar989 = phi i64 [ 0, %.lr.ph479.preheader ], [ %indvar.next990, %._crit_edge472 ] ; 4 uses
  %indvars.iv697 = phi i64 [ %i.hp, %.lr.ph479.preheader ], [ %indvars.iv.next698, %._crit_edge472 ] ; 3 uses
  %indvars.iv690 = phi i64 [ 0, %.lr.ph479.preheader ], [ %indvars.iv.next691, %._crit_edge472 ] ; 9 uses
  %.6477 = phi i32 [ %.4.lcssa, %.lr.ph479.preheader ], [ %.7.lcssa, %._crit_edge472 ] ; 2 uses
  %i.ht = mul i64 %i.hs, %indvar989
  %i.hu = add i64 %i.ht, %i.hp
  %smax = tail call i64 @llvm.smax.i64(i64 %i.hu, i64 %indvars.iv690)
  %i.hv = mul i64 %indvar989, %i.ho
  %reass.sub = sub i64 %smax, %i.hv
  %i.hw = add i64 %reass.sub, 1                   ; 7 uses
  %i.hx = mul i64 %i.hr, %indvar989
  %i.hy = add i64 %i.hq, %i.hx
  %i.hz = add nsw i64 %indvars.iv690, %indvars.iv697
  %.not409467 = icmp slt i64 %indvars.iv697, 0
  br i1 %.not409467, label %._crit_edge472, label %iter.check1008

iter.check1008:                                   ; preds = %.lr.ph479
  %i.ia = sext i32 %.6477 to i64                  ; 7 uses
  %min.iters.check992 = icmp ult i64 %i.hw, 4
  br i1 %min.iters.check992, label %.lr.ph471.preheader, label %vector.memcheck988

vector.memcheck988:                               ; preds = %iter.check1008
  %i.ib = shl nsw i64 %i.ia, 3
  %i.ic = add i64 %i.hy, %i.ib
  %i.id = add i64 %i.ic, -1
  %diff.check991 = icmp ult i64 %i.id, 127
  br i1 %diff.check991, label %.lr.ph471.preheader, label %vector.main.loop.iter.check993

vector.main.loop.iter.check993:                   ; preds = %vector.memcheck988
  %min.iters.check994 = icmp ult i64 %i.hw, 16
  br i1 %min.iters.check994, label %vec.epilog.ph1012, label %vector.ph995

vector.ph995:                                     ; preds = %vector.main.loop.iter.check993
  %i.ie = and i64 %i.hw, 12
  %n.vec996 = and i64 %i.hw, -16                  ; 5 uses
  %i.if = add i64 %indvars.iv690, %n.vec996
  %i.ig = add i64 %n.vec996, %i.ia                ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv690
  %invariant.gep1655 = getelementptr [8 x i8], ptr %4, i64 %i.ia
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %vector.ph995
  %index998 = phi i64 [ 0, %vector.ph995 ], [ %index.next1003, %vector.body997 ] ; 3 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %index998 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 96
  %wide.load999 = load <4 x double>, ptr %i.ii, align 8, !tbaa !9
  %wide.load1000 = load <4 x double>, ptr %i.ij, align 8, !tbaa !9
  %wide.load1001 = load <4 x double>, ptr %i.ik, align 8, !tbaa !9
  %wide.load1002 = load <4 x double>, ptr %i.il, align 8, !tbaa !9
  %gep1656 = getelementptr [8 x i8], ptr %invariant.gep1655, i64 %index998 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %gep1656, i64 32
  %i.in = getelementptr inbounds nuw i8, ptr %gep1656, i64 64
  %i.io = getelementptr inbounds nuw i8, ptr %gep1656, i64 96
  store <4 x double> %wide.load999, ptr %gep1656, align 8, !tbaa !9
  store <4 x double> %wide.load1000, ptr %i.im, align 8, !tbaa !9
  store <4 x double> %wide.load1001, ptr %i.in, align 8, !tbaa !9
  store <4 x double> %wide.load1002, ptr %i.io, align 8, !tbaa !9
  %index.next1003 = add nuw i64 %index998, 16     ; 2 uses
  %i.ip = icmp eq i64 %index.next1003, %n.vec996
  br i1 %i.ip, label %middle.block1004, label %vector.body997, !llvm.loop !31

middle.block1004:                                 ; preds = %vector.body997
  %cmp.n1005 = icmp eq i64 %i.hw, %n.vec996
  br i1 %cmp.n1005, label %._crit_edge472.loopexit, label %vec.epilog.iter.check1010

vec.epilog.iter.check1010:                        ; preds = %middle.block1004
  %min.epilog.iters.check1011 = icmp eq i64 %i.ie, 0
  br i1 %min.epilog.iters.check1011, label %.lr.ph471.preheader, label %vec.epilog.ph1012, !prof !15

vec.epilog.ph1012:                                ; preds = %vector.main.loop.iter.check993, %vec.epilog.iter.check1010
  %vec.epilog.resume.val1006 = phi i64 [ %n.vec996, %vec.epilog.iter.check1010 ], [ 0, %vector.main.loop.iter.check993 ]
  %n.vec1013 = and i64 %i.hw, -4                  ; 4 uses
  %i.iq = add i64 %indvars.iv690, %n.vec1013
  %i.ir = add i64 %n.vec1013, %i.ia               ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv690
  %invariant.gep1657 = getelementptr [8 x i8], ptr %4, i64 %i.ia
  br label %vec.epilog.vector.body1014

vec.epilog.vector.body1014:                       ; preds = %vec.epilog.vector.body1014, %vec.epilog.ph1012
  %index1015 = phi i64 [ %vec.epilog.resume.val1006, %vec.epilog.ph1012 ], [ %index.next1017, %vec.epilog.vector.body1014 ] ; 3 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %index1015
  %wide.load1016 = load <4 x double>, ptr %i.it, align 8, !tbaa !9
  %gep1658 = getelementptr [8 x i8], ptr %invariant.gep1657, i64 %index1015
  store <4 x double> %wide.load1016, ptr %gep1658, align 8, !tbaa !9
  %index.next1017 = add nuw i64 %index1015, 4     ; 2 uses
  %i.iu = icmp eq i64 %index.next1017, %n.vec1013
  br i1 %i.iu, label %vec.epilog.middle.block1018, label %vec.epilog.vector.body1014, !llvm.loop !32

vec.epilog.middle.block1018:                      ; preds = %vec.epilog.vector.body1014
  %cmp.n1019 = icmp eq i64 %i.hw, %n.vec1013
  br i1 %cmp.n1019, label %._crit_edge472.loopexit, label %.lr.ph471.preheader

.lr.ph471.preheader:                              ; preds = %vector.memcheck988, %iter.check1008, %vec.epilog.iter.check1010, %vec.epilog.middle.block1018
  %indvars.iv692.ph = phi i64 [ %indvars.iv690, %iter.check1008 ], [ %indvars.iv690, %vector.memcheck988 ], [ %i.if, %vec.epilog.iter.check1010 ], [ %i.iq, %vec.epilog.middle.block1018 ]
  %indvars.iv688.ph = phi i64 [ %i.ia, %iter.check1008 ], [ %i.ia, %vector.memcheck988 ], [ %i.ig, %vec.epilog.iter.check1010 ], [ %i.ir, %vec.epilog.middle.block1018 ]
  br label %.lr.ph471

.lr.ph471:                                        ; preds = %.lr.ph471.preheader, %.lr.ph471
  %indvars.iv692 = phi i64 [ %indvars.iv.next693, %.lr.ph471 ], [ %indvars.iv692.ph, %.lr.ph471.preheader ] ; 3 uses
  %indvars.iv688 = phi i64 [ %indvars.iv.next689, %.lr.ph471 ], [ %indvars.iv688.ph, %.lr.ph471.preheader ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv692
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !9
  %i.ix = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv688
  store double %i.iw, ptr %i.ix, align 8, !tbaa !9
  %indvars.iv.next689 = add nsw i64 %indvars.iv688, 1 ; 2 uses
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1
  %.not409.not = icmp slt i64 %indvars.iv692, %i.hz
  br i1 %.not409.not, label %.lr.ph471, label %._crit_edge472.loopexit, !llvm.loop !33

._crit_edge472.loopexit:                          ; preds = %.lr.ph471, %vec.epilog.middle.block1018, %middle.block1004
  %indvars.iv.next689.lcssa = phi i64 [ %i.ir, %vec.epilog.middle.block1018 ], [ %i.ig, %middle.block1004 ], [ %indvars.iv.next689, %.lr.ph471 ]
  %i.iy = trunc nsw i64 %indvars.iv.next689.lcssa to i32
  br label %._crit_edge472

._crit_edge472:                                   ; preds = %._crit_edge472.loopexit, %.lr.ph479
  %.7.lcssa = phi i32 [ %.6477, %.lr.ph479 ], [ %i.iy, %._crit_edge472.loopexit ]
  %indvars.iv.next691 = add i64 %indvars.iv690, %i.ho
  %indvars.iv.next698 = add nsw i64 %indvars.iv697, 1 ; 2 uses
  %exitcond703.not = icmp eq i64 %indvars.iv.next698, %wide.trip.count702
  %indvar.next990 = add i64 %indvar989, 1
  br i1 %exitcond703.not, label %.loopexit, label %.lr.ph479, !llvm.loop !34

bb.m:                                             ; preds = %bb.j
  br i1 %.not379, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not403530 = icmp slt i32 %.901, 0
  br i1 %.not403530, label %.loopexit, label %.lr.ph534

.lr.ph534:                                        ; preds = %bb.n
  %i.iz = mul nuw nsw i32 %i.s, %i.h              ; 2 uses
  %i.ja = add nuw nsw i32 %i.s, 1
  %i.jb = zext nneg i32 %i.s to i64               ; 16 uses
  %i.jc = add nuw nsw i64 %i.jb, 1
  %i.jd = zext nneg i32 %i.iz to i64              ; 3 uses
  %scevgep1162 = getelementptr i8, ptr %4, i64 8
  %i.je = xor i64 %i.jb, -1                       ; 2 uses
  %i.jf = shl nuw nsw i64 %i.jb, 3
  %i.jg = add nuw nsw i64 %i.jf, 8
  %i.jh = shl nuw nsw i64 %i.jb, 3
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.jb, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ji = shl nuw nsw <4 x i64> %broadcast.splat, splat (i64 2) ; 5 uses
  %i.jj = mul nuw nsw <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op = add nuw nsw <4 x i64> %i.ji, %i.ji ; 2 uses
  %invariant.op1671 = add nuw nsw <4 x i64> %invariant.op, %i.ji ; 2 uses
  %invariant.op1674 = add nuw nsw <4 x i64> %invariant.op1671, %i.ji
  %broadcast.splatinsert1204 = insertelement <4 x i64> poison, i64 %i.jb, i64 0
  %broadcast.splat1205 = shufflevector <4 x i64> %broadcast.splatinsert1204, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.jk = mul nuw nsw <4 x i64> %broadcast.splat1205, <i64 0, i64 1, i64 2, i64 3>
  %i.jl = shl nuw nsw i64 %i.jb, 2
  %broadcast.splatinsert1207 = insertelement <4 x i64> poison, i64 %i.jl, i64 0
  %broadcast.splat1208 = shufflevector <4 x i64> %broadcast.splatinsert1207, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph534, %._crit_edge528
  %indvar1164 = phi i64 [ 0, %.lr.ph534 ], [ %indvar.next1165, %._crit_edge528 ] ; 4 uses
  %indvars.iv768 = phi i64 [ 0, %.lr.ph534 ], [ %indvars.iv.next769, %._crit_edge528 ] ; 9 uses
  %.8532 = phi i32 [ 0, %.lr.ph534 ], [ %.9.lcssa, %._crit_edge528 ] ; 2 uses
  %.3369531 = phi i32 [ 0, %.lr.ph534 ], [ %i.kq, %._crit_edge528 ] ; 3 uses
  %i.jm = add nuw i64 %indvars.iv768, %i.jb
  %umax1163 = tail call i64 @llvm.umax.i64(i64 %i.jm, i64 %i.jd)
  %i.jn = mul i64 %indvar1164, %i.je
  %i.jo = sub i64 %i.jn, %i.jb
  %i.jp = add i64 %umax1163, %i.jo                ; 2 uses
  %i.jq = icmp ne i64 %i.jp, 0
  %umin = zext i1 %i.jq to i64                    ; 2 uses
  %i.jr = sub i64 %i.jp, %umin
  %i.js = mul i64 %i.jg, %indvar1164
  %scevgep1168.a = getelementptr i8, ptr %3, i64 %i.js ; 5 uses
  %i.jt = mul nsw i32 %.3369531, %i.ja
  %i.ju = icmp slt i32 %i.jt, %i.iz
  br i1 %i.ju, label %iter.check1196, label %._crit_edge528

iter.check1196:                                   ; preds = %bb.o
  %6 = add nuw i64 %indvars.iv768, %i.jb
  %umax1173 = tail call i64 @llvm.umax.i64(i64 %6, i64 %i.jd)
  %7 = mul i64 %indvar1164, %i.je
  %8 = sub i64 %7, %i.jb
  %9 = add i64 %umax1173, %8                      ; 2 uses
  %10 = icmp ne i64 %9, 0                         ; 2 uses
  %umin1174.neg = sext i1 %10 to i64
  %11 = add i64 %9, %umin1174.neg
  %i.jv = sext i32 %.8532 to i64                  ; 8 uses
  %12 = select i1 %10, i64 2, i64 1
  %13 = udiv i64 %11, %i.jb
  %14 = add i64 %12, %13                          ; 7 uses
  %min.iters.check1176 = icmp ult i64 %14, 4
  br i1 %min.iters.check1176, label %.lr.ph527.preheader, label %vector.memcheck1161

vector.memcheck1161:                              ; preds = %iter.check1196
  %i.jw = shl nsw i64 %i.jv, 3
  %scevgep = getelementptr i8, ptr %4, i64 %i.jw
  %15 = udiv i64 %i.jr, %i.jb
  %16 = add i64 %15, %umin                        ; 2 uses
  %i.jx = add i64 %16, %i.jv
  %i.jy = shl i64 %i.jx, 3
  %scevgep1167 = getelementptr i8, ptr %scevgep1162, i64 %i.jy
  %17 = mul i64 %i.jh, %16
  %scevgep1169 = getelementptr i8, ptr %scevgep1168.a, i64 %17 ; 4 uses
  %18 = icmp ult ptr %scevgep1168.a, %scevgep1169
  %umin1170 = select i1 %18, ptr %scevgep1168.a, ptr %scevgep1169
  %19 = icmp ugt ptr %scevgep1168.a, %scevgep1169
  %umax1171 = select i1 %19, ptr %scevgep1168.a, ptr %scevgep1169
  %scevgep1172 = getelementptr i8, ptr %umax1171, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep1172
  %bound1 = icmp ult ptr %umin1170, %scevgep1167
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph527.preheader, label %vector.main.loop.iter.check1177

vector.main.loop.iter.check1177:                  ; preds = %vector.memcheck1161
  %min.iters.check1178 = icmp ult i64 %14, 16
  br i1 %min.iters.check1178, label %vec.epilog.ph1200, label %vector.ph1179

vector.ph1179:                                    ; preds = %vector.main.loop.iter.check1177
  %i.jz = and i64 %14, 12
  %n.vec1180 = and i64 %14, -16                   ; 5 uses
  %i.ka = mul i64 %n.vec1180, %i.jb
  %i.kb = add i64 %indvars.iv768, %i.ka           ; 2 uses
  %i.kc = add i64 %n.vec1180, %i.jv               ; 2 uses
  %broadcast.splatinsert1181 = insertelement <4 x i64> poison, i64 %indvars.iv768, i64 0
  %broadcast.splat1182 = shufflevector <4 x i64> %broadcast.splatinsert1181, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat1182, %i.jj
  %invariant.gep1672 = getelementptr [8 x i8], ptr %4, i64 %i.jv
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %vector.ph1179
  %index1184 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1191, %vector.body1183 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph1179 ], [ %vec.ind.next.reass, %vector.body1183 ] ; 5 uses
  %step.add = add nuw nsw <4 x i64> %vec.ind, %i.ji
  %step.add.2.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op
  %step.add.3.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1671
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind
  %wide.gep1185 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add
  %wide.gep1186 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.2.reass
  %wide.gep1187 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.3.reass
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !35
  %wide.masked.gather1188 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1185, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !35
  %wide.masked.gather1189 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1186, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !35
  %wide.masked.gather1190 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1187, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !35
  %gep1673 = getelementptr [8 x i8], ptr %invariant.gep1672, i64 %index1184 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %gep1673, i64 32
  %i.ke = getelementptr inbounds nuw i8, ptr %gep1673, i64 64
  %i.kf = getelementptr inbounds nuw i8, ptr %gep1673, i64 96
  store <4 x double> %wide.masked.gather, ptr %gep1673, align 8, !tbaa !9, !alias.scope !38, !noalias !35
  store <4 x double> %wide.masked.gather1188, ptr %i.kd, align 8, !tbaa !9, !alias.scope !38, !noalias !35
  store <4 x double> %wide.masked.gather1189, ptr %i.ke, align 8, !tbaa !9, !alias.scope !38, !noalias !35
  store <4 x double> %wide.masked.gather1190, ptr %i.kf, align 8, !tbaa !9, !alias.scope !38, !noalias !35
  %index.next1191 = add nuw i64 %index1184, 16    ; 2 uses
  %vec.ind.next.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1674
  %i.kg = icmp eq i64 %index.next1191, %n.vec1180
  br i1 %i.kg, label %middle.block1192, label %vector.body1183, !llvm.loop !40

middle.block1192:                                 ; preds = %vector.body1183
  %cmp.n1193 = icmp eq i64 %14, %n.vec1180
  br i1 %cmp.n1193, label %._crit_edge528.loopexit, label %vec.epilog.iter.check1198

vec.epilog.iter.check1198:                        ; preds = %middle.block1192
  %min.epilog.iters.check1199 = icmp eq i64 %i.jz, 0
  br i1 %min.epilog.iters.check1199, label %.lr.ph527.preheader, label %vec.epilog.ph1200, !prof !15

vec.epilog.ph1200:                                ; preds = %vector.main.loop.iter.check1177, %vec.epilog.iter.check1198
  %vec.epilog.resume.val1194 = phi i64 [ %n.vec1180, %vec.epilog.iter.check1198 ], [ 0, %vector.main.loop.iter.check1177 ]
  %bc.resume.val = phi i64 [ %i.kb, %vec.epilog.iter.check1198 ], [ %indvars.iv768, %vector.main.loop.iter.check1177 ]
  %n.vec1201 = and i64 %14, -4                    ; 4 uses
  %i.kh = mul i64 %n.vec1201, %i.jb
  %i.ki = add i64 %indvars.iv768, %i.kh
  %i.kj = add i64 %n.vec1201, %i.jv               ; 2 uses
  %broadcast.splatinsert1202 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat1203 = shufflevector <4 x i64> %broadcast.splatinsert1202, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1206 = add nuw nsw <4 x i64> %broadcast.splat1203, %i.jk
  %invariant.gep1675 = getelementptr [8 x i8], ptr %4, i64 %i.jv
  br label %vec.epilog.vector.body1209

vec.epilog.vector.body1209:                       ; preds = %vec.epilog.vector.body1209, %vec.epilog.ph1200
  %index1210 = phi i64 [ %vec.epilog.resume.val1194, %vec.epilog.ph1200 ], [ %index.next1214, %vec.epilog.vector.body1209 ] ; 2 uses
  %vec.ind1211 = phi <4 x i64> [ %induction1206, %vec.epilog.ph1200 ], [ %vec.ind.next1215, %vec.epilog.vector.body1209 ] ; 2 uses
  %wide.gep1212 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1211
  %wide.masked.gather1213 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1212, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !35
  %gep1676 = getelementptr [8 x i8], ptr %invariant.gep1675, i64 %index1210
  store <4 x double> %wide.masked.gather1213, ptr %gep1676, align 8, !tbaa !9, !alias.scope !38, !noalias !35
  %index.next1214 = add nuw i64 %index1210, 4     ; 2 uses
  %vec.ind.next1215 = add nuw nsw <4 x i64> %vec.ind1211, %broadcast.splat1208
  %i.kk = icmp eq i64 %index.next1214, %n.vec1201
  br i1 %i.kk, label %vec.epilog.middle.block1216, label %vec.epilog.vector.body1209, !llvm.loop !41

vec.epilog.middle.block1216:                      ; preds = %vec.epilog.vector.body1209
  %cmp.n1217 = icmp eq i64 %14, %n.vec1201
  br i1 %cmp.n1217, label %._crit_edge528.loopexit, label %.lr.ph527.preheader

.lr.ph527.preheader:                              ; preds = %vector.memcheck1161, %iter.check1196, %vec.epilog.iter.check1198, %vec.epilog.middle.block1216
  %indvars.iv770.ph = phi i64 [ %indvars.iv768, %iter.check1196 ], [ %indvars.iv768, %vector.memcheck1161 ], [ %i.kb, %vec.epilog.iter.check1198 ], [ %i.ki, %vec.epilog.middle.block1216 ]
  %indvars.iv766.ph = phi i64 [ %i.jv, %iter.check1196 ], [ %i.jv, %vector.memcheck1161 ], [ %i.kc, %vec.epilog.iter.check1198 ], [ %i.kj, %vec.epilog.middle.block1216 ]
  br label %.lr.ph527

.lr.ph527:                                        ; preds = %.lr.ph527.preheader, %.lr.ph527
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %.lr.ph527 ], [ %indvars.iv770.ph, %.lr.ph527.preheader ] ; 2 uses
  %indvars.iv766 = phi i64 [ %indvars.iv.next767, %.lr.ph527 ], [ %indvars.iv766.ph, %.lr.ph527.preheader ] ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv770
  %i.km = load double, ptr %i.kl, align 8, !tbaa !9
  %i.kn = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv766
  store double %i.km, ptr %i.kn, align 8, !tbaa !9
  %indvars.iv.next767 = add nsw i64 %indvars.iv766, 1 ; 2 uses
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, %i.jb ; 2 uses
  %i.ko = icmp samesign ult i64 %indvars.iv.next771, %i.jd
  br i1 %i.ko, label %.lr.ph527, label %._crit_edge528.loopexit, !llvm.loop !42

._crit_edge528.loopexit:                          ; preds = %.lr.ph527, %vec.epilog.middle.block1216, %middle.block1192
  %indvars.iv.next767.lcssa = phi i64 [ %i.kj, %vec.epilog.middle.block1216 ], [ %i.kc, %middle.block1192 ], [ %indvars.iv.next767, %.lr.ph527 ]
  %i.kp = trunc nsw i64 %indvars.iv.next767.lcssa to i32
  br label %._crit_edge528

._crit_edge528:                                   ; preds = %._crit_edge528.loopexit, %bb.o
  %.9.lcssa = phi i32 [ %.8532, %bb.o ], [ %i.kp, %._crit_edge528.loopexit ] ; 2 uses
  %i.kq = add nuw i32 %.3369531, 1
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, %i.jc
  %exitcond775.not = icmp eq i32 %.3369531, %.901
  %indvar.next1165 = add i64 %indvar1164, 1
  br i1 %exitcond775.not, label %._crit_edge535, label %bb.o, !llvm.loop !43

._crit_edge535:                                   ; preds = %._crit_edge528
  %.not404.not544.not = icmp eq i32 %.901, 0
  br i1 %.not404.not544.not, label %.loopexit, label %.lr.ph549

.lr.ph549:                                        ; preds = %._crit_edge535
  %i.kr = add nuw nsw i32 %i.s, 1
  %i.ks = add nuw i32 %.901, 1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph549, %._crit_edge542
  %indvars.iv786 = phi i32 [ %i.ks, %.lr.ph549 ], [ %indvars.iv.next787, %._crit_edge542 ] ; 3 uses
  %indvars.iv779 = phi i32 [ 1, %.lr.ph549 ], [ %indvars.iv.next780, %._crit_edge542 ] ; 5 uses
  %.10547 = phi i32 [ %.9.lcssa, %.lr.ph549 ], [ %.11.lcssa, %._crit_edge542 ] ; 2 uses
  %.4358545 = phi i32 [ 0, %.lr.ph549 ], [ %i.nr, %._crit_edge542 ] ; 4 uses
  %i.kt = mul i32 %i.s, %.4358545
  %i.ku = add i32 %.901, %i.kt
  %i.kv = xor i32 %.4358545, -1
  %i.kw = add nsw i32 %.901, %i.kv                ; 3 uses
  %i.kx = zext i32 %i.kw to i64
  %i.ky = add nuw nsw i64 %i.kx, 1                ; 5 uses
  %i.kz = sext i32 %indvars.iv779 to i64
  %i.la = shl nsw i64 %i.kz, 3
  %i.lb = xor i32 %.4358545, -1
  %i.lc = add nsw i32 %.901, %i.lb
  %i.ld = add i32 %i.lc, %indvars.iv779
  %.not405537 = icmp sgt i32 %indvars.iv779, %i.ld
  br i1 %.not405537, label %._crit_edge542, label %iter.check1239

iter.check1239:                                   ; preds = %bb.p
  %i.le = sext i32 %indvars.iv779 to i64          ; 6 uses
  %i.lf = sext i32 %.10547 to i64                 ; 7 uses
  %min.iters.check1222 = icmp ult i32 %i.kw, 3
  br i1 %min.iters.check1222, label %.lr.ph541.preheader, label %vector.memcheck1220

vector.memcheck1220:                              ; preds = %iter.check1239
  %i.lg = shl nsw i64 %i.lf, 3
  %i.lh = add i64 %i.lg, %i.b
  %i.li = add i64 %i.la, %i.a
  %i.lj = sub i64 %i.li, %i.lh
  %diff.check1221 = icmp ugt i64 %i.lj, -128
  br i1 %diff.check1221, label %.lr.ph541.preheader, label %vector.main.loop.iter.check1223

vector.main.loop.iter.check1223:                  ; preds = %vector.memcheck1220
  %min.iters.check1224 = icmp ult i32 %i.kw, 15
  br i1 %min.iters.check1224, label %vec.epilog.ph1243, label %vector.ph1225

vector.ph1225:                                    ; preds = %vector.main.loop.iter.check1223
  %i.lk = and i64 %i.ky, 12
  %n.vec1226 = and i64 %i.ky, 8589934576          ; 5 uses
  %i.ll = add nsw i64 %n.vec1226, %i.le
  %i.lm = add nsw i64 %n.vec1226, %i.lf           ; 2 uses
  %invariant.gep1677 = getelementptr [8 x i8], ptr %3, i64 %i.le
  %invariant.gep1679 = getelementptr [8 x i8], ptr %4, i64 %i.lf
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1225
  %index1228 = phi i64 [ 0, %vector.ph1225 ], [ %index.next1233, %vector.body1227 ] ; 3 uses
  %gep1678 = getelementptr [8 x i8], ptr %invariant.gep1677, i64 %index1228 ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %gep1678, i64 32
  %i.lo = getelementptr inbounds nuw i8, ptr %gep1678, i64 64
  %i.lp = getelementptr inbounds nuw i8, ptr %gep1678, i64 96
  %wide.load1229 = load <4 x double>, ptr %gep1678, align 8, !tbaa !9
  %wide.load1230 = load <4 x double>, ptr %i.ln, align 8, !tbaa !9
  %wide.load1231 = load <4 x double>, ptr %i.lo, align 8, !tbaa !9
  %wide.load1232 = load <4 x double>, ptr %i.lp, align 8, !tbaa !9
  %gep1680 = getelementptr [8 x i8], ptr %invariant.gep1679, i64 %index1228 ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %gep1680, i64 32
  %i.lr = getelementptr inbounds nuw i8, ptr %gep1680, i64 64
  %i.ls = getelementptr inbounds nuw i8, ptr %gep1680, i64 96
  store <4 x double> %wide.load1229, ptr %gep1680, align 8, !tbaa !9
  store <4 x double> %wide.load1230, ptr %i.lq, align 8, !tbaa !9
  store <4 x double> %wide.load1231, ptr %i.lr, align 8, !tbaa !9
  store <4 x double> %wide.load1232, ptr %i.ls, align 8, !tbaa !9
  %index.next1233 = add nuw i64 %index1228, 16    ; 2 uses
  %i.lt = icmp eq i64 %index.next1233, %n.vec1226
  br i1 %i.lt, label %middle.block1234, label %vector.body1227, !llvm.loop !44

middle.block1234:                                 ; preds = %vector.body1227
  %cmp.n1235 = icmp eq i64 %i.ky, %n.vec1226
  br i1 %cmp.n1235, label %._crit_edge542.loopexit, label %vec.epilog.iter.check1241

vec.epilog.iter.check1241:                        ; preds = %middle.block1234
  %min.epilog.iters.check1242 = icmp eq i64 %i.lk, 0
  br i1 %min.epilog.iters.check1242, label %.lr.ph541.preheader, label %vec.epilog.ph1243, !prof !15

vec.epilog.ph1243:                                ; preds = %vector.main.loop.iter.check1223, %vec.epilog.iter.check1241
  %vec.epilog.resume.val1236 = phi i64 [ %n.vec1226, %vec.epilog.iter.check1241 ], [ 0, %vector.main.loop.iter.check1223 ]
end_hunk_1
begin_hunk_2_@dtfttp_:bb.a
  store double %i.nd, ptr %i.nf, align 8, !tbaa !9
  %i.ng = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.nh = getelementptr i8, ptr %i.ng, i64 48
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !9
  %i.nj = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.nk = getelementptr i8, ptr %i.nj, i64 48
  store double %i.ni, ptr %i.nk, align 8, !tbaa !9
  %i.nl = getelementptr [8 x i8], ptr %3, i64 %indvars.iv781
  %i.nm = getelementptr i8, ptr %i.nl, i64 56
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !9
  %i.no = getelementptr [8 x i8], ptr %4, i64 %indvars.iv777
  %i.np = getelementptr i8, ptr %i.no, i64 56
  store double %i.nn, ptr %i.np, align 8, !tbaa !9
  %indvars.iv.next778.7 = add nsw i64 %indvars.iv777, 8 ; 2 uses
  %indvars.iv.next782.7 = add nsw i64 %indvars.iv781, 8 ; 2 uses
  %lftr.wideiv788.7 = trunc i64 %indvars.iv.next782.7 to i32
  %exitcond789.not.7 = icmp eq i32 %indvars.iv786, %lftr.wideiv788.7
  br i1 %exitcond789.not.7, label %._crit_edge542.loopexit, label %.lr.ph541, !llvm.loop !47

._crit_edge542.loopexit:                          ; preds = %.lr.ph541.prol.loopexit, %.lr.ph541, %vec.epilog.middle.block1249, %middle.block1234
  %indvars.iv.next778.lcssa = phi i64 [ %i.lv, %vec.epilog.middle.block1249 ], [ %i.lm, %middle.block1234 ], [ %indvars.iv.next778.lcssa1595.unr, %.lr.ph541.prol.loopexit ], [ %indvars.iv.next778.7, %.lr.ph541 ]
  %i.nq = trunc nsw i64 %indvars.iv.next778.lcssa to i32
  br label %._crit_edge542

._crit_edge542:                                   ; preds = %._crit_edge542.loopexit, %bb.p
  %.11.lcssa = phi i32 [ %.10547, %bb.p ], [ %i.nq, %._crit_edge542.loopexit ]
  %indvars.iv.next780 = add i32 %indvars.iv779, %i.kr
  %i.nr = add nuw nsw i32 %.4358545, 1            ; 2 uses
  %indvars.iv.next787 = add i32 %indvars.iv786, %i.s
  %exitcond790.not = icmp eq i32 %i.nr, %.901
  br i1 %exitcond790.not, label %.loopexit, label %bb.p, !llvm.loop !48

bb.q:                                             ; preds = %bb.m
  %.not399.not552 = icmp sgt i32 %., 0
  br i1 %.not399.not552, label %.lr.ph557.preheader, label %._crit_edge558

.lr.ph557.preheader:                              ; preds = %bb.q
  %i.ns = mul i32 %.901, %i.s
  %i.nt = sext i32 %i.ns to i64                   ; 4 uses
  %i.nu = zext nneg i32 %i.s to i64               ; 4 uses
  %wide.trip.count806 = zext nneg i32 %. to i64
  %i.nv = shl nsw i64 %i.nt, 3
  %i.nw = add i64 %i.nv, %i.a
  %i.nx = sub i64 %i.b, %i.nw
  %i.ny = mul nsw i64 %i.nu, -8
  %i.nz = add nuw nsw i64 %i.nu, 1
  br label %iter.check1273

iter.check1273:                                   ; preds = %.lr.ph557.preheader, %.loopexit1572
  %indvars.iv801 = phi i64 [ 0, %.lr.ph557.preheader ], [ %indvars.iv.next802, %.loopexit1572 ] ; 5 uses
  %indvars.iv794 = phi i64 [ %i.nt, %.lr.ph557.preheader ], [ %indvars.iv.next795, %.loopexit1572 ] ; 9 uses
  %.12555 = phi i64 [ 0, %.lr.ph557.preheader ], [ %indvars.iv.next793.lcssa, %.loopexit1572 ] ; 7 uses
  %i.oa = mul i64 %i.nz, %indvars.iv801
  %i.ob = add i64 %i.oa, %i.nt
  %smax1255 = tail call i64 @llvm.smax.i64(i64 %indvars.iv794, i64 %i.ob)
  %i.oc = mul i64 %indvars.iv801, %i.nu
  %i.od = add i64 %i.oc, %i.nt
  %reass.sub1576 = sub i64 %smax1255, %i.od
  %i.oe = add i64 %reass.sub1576, 1               ; 7 uses
  %i.of = add nsw i64 %indvars.iv794, %indvars.iv801
  %min.iters.check1256 = icmp ult i64 %i.oe, 4
  br i1 %min.iters.check1256, label %vec.epilog.scalar.ph1274.preheader, label %vector.memcheck1253

vector.memcheck1253:                              ; preds = %iter.check1273
  %i.og = mul i64 %i.ny, %indvars.iv801
  %i.oh = add i64 %i.nx, %i.og
  %i.oi = shl i64 %.12555, 3
  %i.oj = add i64 %i.oh, %i.oi
  %i.ok = add i64 %i.oj, -1
  %diff.check1254 = icmp ult i64 %i.ok, 127
  br i1 %diff.check1254, label %vec.epilog.scalar.ph1274.preheader, label %vector.main.loop.iter.check1257

vector.main.loop.iter.check1257:                  ; preds = %vector.memcheck1253
  %min.iters.check1258 = icmp ult i64 %i.oe, 16
  br i1 %min.iters.check1258, label %vec.epilog.ph1277, label %vector.ph1259

vector.ph1259:                                    ; preds = %vector.main.loop.iter.check1257
  %i.ol = and i64 %i.oe, 12
  %n.vec1260 = and i64 %i.oe, -16                 ; 5 uses
  %i.om = add i64 %indvars.iv794, %n.vec1260
  %i.on = add i64 %.12555, %n.vec1260             ; 2 uses
  %i.oo = getelementptr [8 x i8], ptr %3, i64 %indvars.iv794
  %i.op = getelementptr [8 x i8], ptr %4, i64 %.12555
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %vector.ph1259
  %index1262 = phi i64 [ 0, %vector.ph1259 ], [ %index.next1267, %vector.body1261 ] ; 3 uses
  %i.oq = getelementptr [8 x i8], ptr %i.oo, i64 %index1262 ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 96
  %wide.load1263 = load <4 x double>, ptr %i.oq, align 8, !tbaa !9
  %wide.load1264 = load <4 x double>, ptr %i.or, align 8, !tbaa !9
  %wide.load1265 = load <4 x double>, ptr %i.os, align 8, !tbaa !9
  %wide.load1266 = load <4 x double>, ptr %i.ot, align 8, !tbaa !9
  %i.ou = getelementptr [8 x i8], ptr %i.op, i64 %index1262 ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 32
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 96
  store <4 x double> %wide.load1263, ptr %i.ou, align 8, !tbaa !9
  store <4 x double> %wide.load1264, ptr %i.ov, align 8, !tbaa !9
  store <4 x double> %wide.load1265, ptr %i.ow, align 8, !tbaa !9
  store <4 x double> %wide.load1266, ptr %i.ox, align 8, !tbaa !9
  %index.next1267 = add nuw i64 %index1262, 16    ; 2 uses
  %i.oy = icmp eq i64 %index.next1267, %n.vec1260
  br i1 %i.oy, label %middle.block1268, label %vector.body1261, !llvm.loop !49

middle.block1268:                                 ; preds = %vector.body1261
  %cmp.n1269 = icmp eq i64 %i.oe, %n.vec1260
  br i1 %cmp.n1269, label %.loopexit1572, label %vec.epilog.iter.check1275

vec.epilog.iter.check1275:                        ; preds = %middle.block1268
  %min.epilog.iters.check1276 = icmp eq i64 %i.ol, 0
  br i1 %min.epilog.iters.check1276, label %vec.epilog.scalar.ph1274.preheader, label %vec.epilog.ph1277, !prof !15

vec.epilog.ph1277:                                ; preds = %vector.main.loop.iter.check1257, %vec.epilog.iter.check1275
  %vec.epilog.resume.val1270 = phi i64 [ %n.vec1260, %vec.epilog.iter.check1275 ], [ 0, %vector.main.loop.iter.check1257 ]
  %n.vec1278 = and i64 %i.oe, -4                  ; 4 uses
  %i.oz = add i64 %indvars.iv794, %n.vec1278
  %i.pa = add i64 %.12555, %n.vec1278             ; 2 uses
  %i.pb = getelementptr [8 x i8], ptr %3, i64 %indvars.iv794
  %i.pc = getelementptr [8 x i8], ptr %4, i64 %.12555
  br label %vec.epilog.vector.body1279

vec.epilog.vector.body1279:                       ; preds = %vec.epilog.vector.body1279, %vec.epilog.ph1277
  %index1280 = phi i64 [ %vec.epilog.resume.val1270, %vec.epilog.ph1277 ], [ %index.next1282, %vec.epilog.vector.body1279 ] ; 3 uses
  %i.pd = getelementptr [8 x i8], ptr %i.pb, i64 %index1280
  %wide.load1281 = load <4 x double>, ptr %i.pd, align 8, !tbaa !9
  %i.pe = getelementptr [8 x i8], ptr %i.pc, i64 %index1280
  store <4 x double> %wide.load1281, ptr %i.pe, align 8, !tbaa !9
  %index.next1282 = add nuw i64 %index1280, 4     ; 2 uses
  %i.pf = icmp eq i64 %index.next1282, %n.vec1278
  br i1 %i.pf, label %vec.epilog.middle.block1283, label %vec.epilog.vector.body1279, !llvm.loop !50

vec.epilog.middle.block1283:                      ; preds = %vec.epilog.vector.body1279
  %cmp.n1284 = icmp eq i64 %i.oe, %n.vec1278
  br i1 %cmp.n1284, label %.loopexit1572, label %vec.epilog.scalar.ph1274.preheader

vec.epilog.scalar.ph1274.preheader:               ; preds = %vector.memcheck1253, %iter.check1273, %vec.epilog.iter.check1275, %vec.epilog.middle.block1283
  %indvars.iv796.ph = phi i64 [ %indvars.iv794, %iter.check1273 ], [ %indvars.iv794, %vector.memcheck1253 ], [ %i.om, %vec.epilog.iter.check1275 ], [ %i.oz, %vec.epilog.middle.block1283 ]
  %indvars.iv792.ph = phi i64 [ %.12555, %iter.check1273 ], [ %.12555, %vector.memcheck1253 ], [ %i.on, %vec.epilog.iter.check1275 ], [ %i.pa, %vec.epilog.middle.block1283 ]
  br label %vec.epilog.scalar.ph1274

vec.epilog.scalar.ph1274:                         ; preds = %vec.epilog.scalar.ph1274.preheader, %vec.epilog.scalar.ph1274
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %vec.epilog.scalar.ph1274 ], [ %indvars.iv796.ph, %vec.epilog.scalar.ph1274.preheader ] ; 3 uses
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %vec.epilog.scalar.ph1274 ], [ %indvars.iv792.ph, %vec.epilog.scalar.ph1274.preheader ] ; 2 uses
  %i.pg = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv796
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !9
  %i.pi = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv792
  store double %i.ph, ptr %i.pi, align 8, !tbaa !9
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, 1 ; 2 uses
  %indvars.iv.next797 = add nsw i64 %indvars.iv796, 1
  %.not402.not = icmp slt i64 %indvars.iv796, %i.of
  br i1 %.not402.not, label %vec.epilog.scalar.ph1274, label %.loopexit1572, !llvm.loop !51

.loopexit1572:                                    ; preds = %vec.epilog.scalar.ph1274, %vec.epilog.middle.block1283, %middle.block1268
  %indvars.iv.next793.lcssa = phi i64 [ %i.pa, %vec.epilog.middle.block1283 ], [ %i.on, %middle.block1268 ], [ %indvars.iv.next793, %vec.epilog.scalar.ph1274 ] ; 2 uses
  %indvars.iv.next795 = add nsw i64 %indvars.iv794, %i.nu
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv801, 1 ; 2 uses
  %exitcond807.not = icmp eq i64 %indvars.iv.next802, %wide.trip.count806
  br i1 %exitcond807.not, label %._crit_edge558, label %iter.check1273, !llvm.loop !52

._crit_edge558:                                   ; preds = %.loopexit1572, %bb.q
  %.12.lcssa = phi i64 [ 0, %bb.q ], [ %indvars.iv.next793.lcssa, %.loopexit1572 ]
  %.not400567 = icmp slt i32 %., 0
  br i1 %.not400567, label %.loopexit, label %.lr.ph571

.lr.ph571:                                        ; preds = %._crit_edge558
  %i.pj = zext nneg i32 %i.s to i64               ; 13 uses
  %i.pk = add nuw i32 %., 1
  %wide.trip.count818 = zext i32 %i.pk to i64
  %scevgep1289 = getelementptr i8, ptr %4, i64 8
  %i.pl = shl nuw nsw i64 %i.pj, 3
  %broadcast.splatinsert1310 = insertelement <4 x i64> poison, i64 %i.pj, i64 0
  %broadcast.splat1311 = shufflevector <4 x i64> %broadcast.splatinsert1310, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pm = shl nuw nsw <4 x i64> %broadcast.splat1311, splat (i64 2) ; 5 uses
  %i.pn = mul nuw nsw <4 x i64> %broadcast.splat1311, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1685 = add nuw nsw <4 x i64> %i.pm, %i.pm ; 2 uses
  %invariant.op1686 = add nuw nsw <4 x i64> %invariant.op1685, %i.pm ; 2 uses
  %invariant.op1687 = add nuw nsw <4 x i64> %invariant.op1686, %i.pm
  %broadcast.splatinsert1344 = insertelement <4 x i64> poison, i64 %i.pj, i64 0
  %broadcast.splat1345 = shufflevector <4 x i64> %broadcast.splatinsert1344, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.po = mul nuw nsw <4 x i64> %broadcast.splat1345, <i64 0, i64 1, i64 2, i64 3>
  %i.pp = shl nuw nsw i64 %i.pj, 2
  %broadcast.splatinsert1347 = insertelement <4 x i64> poison, i64 %i.pp, i64 0
  %broadcast.splat1348 = shufflevector <4 x i64> %broadcast.splatinsert1347, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1336

iter.check1336:                                   ; preds = %._crit_edge565, %.lr.ph571
  %indvars.iv810 = phi i64 [ 0, %.lr.ph571 ], [ %indvars.iv.next811, %._crit_edge565 ] ; 18 uses
  %.14569 = phi i64 [ %.12.lcssa, %.lr.ph571 ], [ %indvars.iv.next809.lcssa, %._crit_edge565 ]
  %i.pq = add nuw i64 %indvars.iv810, %i.pj       ; 2 uses
  %i.pr = add nuw i64 %indvars.iv810, 1
  %i.ps = trunc i64 %indvars.iv810 to i32
  %i.pt = add i32 %., %i.ps
  %i.pu = mul i32 %i.s, %i.pt
  %i.pv = sext i32 %i.pu to i64
  %i.pw = add i64 %i.pr, %i.pv                    ; 2 uses
  %smax1302 = tail call i64 @llvm.smax.i64(i64 %i.pq, i64 %i.pw)
  %i.px = add nuw i64 %indvars.iv810, %i.pj
  %i.py = icmp slt i64 %i.pq, %i.pw               ; 2 uses
  %umin1303 = zext i1 %i.py to i64
  %i.pz = add i64 %i.px, %umin1303
  %20 = sub i64 %smax1302, %i.pz
  %indvars817 = trunc i64 %indvars.iv810 to i32
  %i.qa = add nuw nsw i32 %., %indvars817
  %i.qb = mul nsw i32 %i.qa, %i.s
  %i.qc = sext i32 %i.qb to i64
  %i.qd = add nsw i64 %indvars.iv810, %i.qc
  %sext = shl i64 %.14569, 32                     ; 2 uses
  %i.qe = ashr exact i64 %sext, 32                ; 6 uses
  %21 = select i1 %i.py, i64 2, i64 1
  %22 = udiv i64 %20, %i.pj
  %23 = add i64 %21, %22                          ; 7 uses
  %min.iters.check1305 = icmp ult i64 %23, 4
  br i1 %min.iters.check1305, label %.lr.ph564.preheader, label %vector.memcheck1287

vector.memcheck1287:                              ; preds = %iter.check1336
  %i.qf = shl nuw nsw i64 %indvars.iv810, 3
  %scevgep1294 = getelementptr nuw i8, ptr %3, i64 %i.qf ; 5 uses
  %i.qg = add nuw i64 %indvars.iv810, %i.pj       ; 2 uses
  %i.qh = add nuw i64 %indvars.iv810, 1
  %i.qi = trunc i64 %indvars.iv810 to i32
  %i.qj = add i32 %., %i.qi
  %i.qk = mul i32 %i.s, %i.qj
  %i.ql = sext i32 %i.qk to i64
  %i.qm = add i64 %i.qh, %i.ql                    ; 2 uses
  %24 = icmp slt i64 %i.qg, %i.qm
  %umin1291 = zext i1 %24 to i64                  ; 2 uses
  %i.qn = add nuw i64 %indvars.iv810, %i.pj
  %smax1290 = tail call i64 @llvm.smax.i64(i64 %i.qg, i64 %i.qm)
  %25 = add i64 %i.qn, %umin1291
  %26 = sub i64 %smax1290, %25
  %27 = ashr exact i64 %sext, 29                  ; 2 uses
  %scevgep1288 = getelementptr i8, ptr %4, i64 %27
  %i.qo = udiv i64 %26, %i.pj
  %i.qp = add i64 %i.qo, %umin1291                ; 2 uses
  %28 = shl i64 %i.qp, 3
  %i.qq = getelementptr i8, ptr %scevgep1289, i64 %28
  %scevgep1293 = getelementptr i8, ptr %i.qq, i64 %27
  %29 = mul i64 %i.pl, %i.qp
  %scevgep1295 = getelementptr i8, ptr %scevgep1294, i64 %29 ; 4 uses
  %i.qr = icmp ult ptr %scevgep1294, %scevgep1295
  %umin1296 = select i1 %i.qr, ptr %scevgep1294, ptr %scevgep1295
  %30 = icmp ugt ptr %scevgep1294, %scevgep1295
  %umax1297 = select i1 %30, ptr %scevgep1294, ptr %scevgep1295
  %scevgep1298 = getelementptr i8, ptr %umax1297, i64 8
  %bound01299 = icmp ult ptr %scevgep1288, %scevgep1298
  %bound11300 = icmp ult ptr %umin1296, %scevgep1293
  %found.conflict1301 = and i1 %bound01299, %bound11300
  br i1 %found.conflict1301, label %.lr.ph564.preheader, label %vector.main.loop.iter.check1306

vector.main.loop.iter.check1306:                  ; preds = %vector.memcheck1287
  %min.iters.check1307 = icmp ult i64 %23, 16
  br i1 %min.iters.check1307, label %vec.epilog.ph1340, label %vector.ph1308

vector.ph1308:                                    ; preds = %vector.main.loop.iter.check1306
  %i.qs = and i64 %23, 12
  %n.vec1309 = and i64 %23, -16                   ; 5 uses
  %i.qt = mul i64 %n.vec1309, %i.pj
  %i.qu = add i64 %indvars.iv810, %i.qt           ; 2 uses
  %i.qv = add i64 %i.qe, %n.vec1309               ; 2 uses
  %broadcast.splatinsert1312 = insertelement <4 x i64> poison, i64 %indvars.iv810, i64 0
  %broadcast.splat1313 = shufflevector <4 x i64> %broadcast.splatinsert1312, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1314 = add nuw nsw <4 x i64> %broadcast.splat1313, %i.pn
  %i.qw = getelementptr [8 x i8], ptr %4, i64 %i.qe
  br label %vector.body1315

vector.body1315:                                  ; preds = %vector.body1315, %vector.ph1308
  %index1316 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1329, %vector.body1315 ] ; 2 uses
  %vec.ind1317 = phi <4 x i64> [ %induction1314, %vector.ph1308 ], [ %vec.ind.next1330.reass, %vector.body1315 ] ; 5 uses
  %step.add1318 = add nuw nsw <4 x i64> %vec.ind1317, %i.pm
  %step.add.21319.reass = add nuw nsw <4 x i64> %vec.ind1317, %invariant.op1685
  %step.add.31320.reass = add nuw nsw <4 x i64> %vec.ind1317, %invariant.op1686
  %wide.gep1321 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1317
  %wide.gep1322 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add1318
  %wide.gep1323 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.21319.reass
  %wide.gep1324 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.31320.reass
  %wide.masked.gather1325 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1321, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !53
  %wide.masked.gather1326 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1322, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !53
  %wide.masked.gather1327 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1323, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !53
  %wide.masked.gather1328 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1324, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !53
  %i.qx = getelementptr [8 x i8], ptr %i.qw, i64 %index1316 ; 4 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 32
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 64
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 96
  store <4 x double> %wide.masked.gather1325, ptr %i.qx, align 8, !tbaa !9, !alias.scope !56, !noalias !53
  store <4 x double> %wide.masked.gather1326, ptr %i.qy, align 8, !tbaa !9, !alias.scope !56, !noalias !53
  store <4 x double> %wide.masked.gather1327, ptr %i.qz, align 8, !tbaa !9, !alias.scope !56, !noalias !53
  store <4 x double> %wide.masked.gather1328, ptr %i.ra, align 8, !tbaa !9, !alias.scope !56, !noalias !53
  %index.next1329 = add nuw i64 %index1316, 16    ; 2 uses
  %vec.ind.next1330.reass = add nuw nsw <4 x i64> %vec.ind1317, %invariant.op1687
  %i.rb = icmp eq i64 %index.next1329, %n.vec1309
  br i1 %i.rb, label %middle.block1331, label %vector.body1315, !llvm.loop !58

middle.block1331:                                 ; preds = %vector.body1315
  %cmp.n1332 = icmp eq i64 %23, %n.vec1309
  br i1 %cmp.n1332, label %._crit_edge565, label %vec.epilog.iter.check1338

vec.epilog.iter.check1338:                        ; preds = %middle.block1331
  %min.epilog.iters.check1339 = icmp eq i64 %i.qs, 0
  br i1 %min.epilog.iters.check1339, label %.lr.ph564.preheader, label %vec.epilog.ph1340, !prof !15

vec.epilog.ph1340:                                ; preds = %vector.main.loop.iter.check1306, %vec.epilog.iter.check1338
  %vec.epilog.resume.val1333 = phi i64 [ %n.vec1309, %vec.epilog.iter.check1338 ], [ 0, %vector.main.loop.iter.check1306 ]
  %bc.resume.val1334 = phi i64 [ %i.qu, %vec.epilog.iter.check1338 ], [ %indvars.iv810, %vector.main.loop.iter.check1306 ]
  %n.vec1341 = and i64 %23, -4                    ; 4 uses
  %i.rc = mul i64 %n.vec1341, %i.pj
  %i.rd = add i64 %indvars.iv810, %i.rc
  %i.re = add i64 %i.qe, %n.vec1341               ; 2 uses
  %broadcast.splatinsert1342 = insertelement <4 x i64> poison, i64 %bc.resume.val1334, i64 0
  %broadcast.splat1343 = shufflevector <4 x i64> %broadcast.splatinsert1342, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1346 = add nuw nsw <4 x i64> %broadcast.splat1343, %i.po
  %i.rf = getelementptr [8 x i8], ptr %4, i64 %i.qe
  br label %vec.epilog.vector.body1349

vec.epilog.vector.body1349:                       ; preds = %vec.epilog.vector.body1349, %vec.epilog.ph1340
  %index1350 = phi i64 [ %vec.epilog.resume.val1333, %vec.epilog.ph1340 ], [ %index.next1354, %vec.epilog.vector.body1349 ] ; 2 uses
  %vec.ind1351 = phi <4 x i64> [ %induction1346, %vec.epilog.ph1340 ], [ %vec.ind.next1355, %vec.epilog.vector.body1349 ] ; 2 uses
  %wide.gep1352 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1351
  %wide.masked.gather1353 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1352, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !53
  %i.rg = getelementptr [8 x i8], ptr %i.rf, i64 %index1350
  store <4 x double> %wide.masked.gather1353, ptr %i.rg, align 8, !tbaa !9, !alias.scope !56, !noalias !53
  %index.next1354 = add nuw i64 %index1350, 4     ; 2 uses
  %vec.ind.next1355 = add nuw nsw <4 x i64> %vec.ind1351, %broadcast.splat1348
  %i.rh = icmp eq i64 %index.next1354, %n.vec1341
  br i1 %i.rh, label %vec.epilog.middle.block1356, label %vec.epilog.vector.body1349, !llvm.loop !59

vec.epilog.middle.block1356:                      ; preds = %vec.epilog.vector.body1349
  %cmp.n1357 = icmp eq i64 %23, %n.vec1341
  br i1 %cmp.n1357, label %._crit_edge565, label %.lr.ph564.preheader

.lr.ph564.preheader:                              ; preds = %vector.memcheck1287, %iter.check1336, %vec.epilog.iter.check1338, %vec.epilog.middle.block1356
  %indvars.iv812.ph = phi i64 [ %indvars.iv810, %iter.check1336 ], [ %indvars.iv810, %vector.memcheck1287 ], [ %i.qu, %vec.epilog.iter.check1338 ], [ %i.rd, %vec.epilog.middle.block1356 ]
  %indvars.iv808.ph = phi i64 [ %i.qe, %iter.check1336 ], [ %i.qe, %vector.memcheck1287 ], [ %i.qv, %vec.epilog.iter.check1338 ], [ %i.re, %vec.epilog.middle.block1356 ]
  br label %.lr.ph564

.lr.ph564:                                        ; preds = %.lr.ph564.preheader, %.lr.ph564
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %.lr.ph564 ], [ %indvars.iv812.ph, %.lr.ph564.preheader ] ; 2 uses
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %.lr.ph564 ], [ %indvars.iv808.ph, %.lr.ph564.preheader ] ; 2 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv812
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !9
  %i.rk = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv808
  store double %i.rj, ptr %i.rk, align 8, !tbaa !9
  %indvars.iv.next809 = add nsw i64 %indvars.iv808, 1 ; 2 uses
  %indvars.iv.next813 = add nuw nsw i64 %indvars.iv812, %i.pj ; 2 uses
  %.not881 = icmp sgt i64 %indvars.iv.next813, %i.qd
  br i1 %.not881, label %._crit_edge565, label %.lr.ph564, !llvm.loop !60

._crit_edge565:                                   ; preds = %.lr.ph564, %vec.epilog.middle.block1356, %middle.block1331
  %indvars.iv.next809.lcssa = phi i64 [ %i.re, %vec.epilog.middle.block1356 ], [ %i.qv, %middle.block1331 ], [ %indvars.iv.next809, %.lr.ph564 ]
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 1 ; 2 uses
  %exitcond819.not = icmp eq i64 %indvars.iv.next811, %wide.trip.count818
  br i1 %exitcond819.not, label %.loopexit, label %iter.check1336, !llvm.loop !61

.thread423:                                       ; preds = %.thread416
  %i.rl = zext nneg i32 %.0328 to i64             ; 14 uses
  br i1 %.not379, label %.lr.ph507.preheader, label %.preheader432.preheader

.lr.ph507.preheader:                              ; preds = %.thread423
  %i.rm = add nuw nsw i32 %i.m, 1
  %ident.check1090.not = icmp ugt i32 %i.h, 1
  br label %iter.check1113

.preheader432.preheader:                          ; preds = %.thread423
  %wide.trip.count721 = zext nneg i32 %i.q to i64 ; 3 uses
  %wide.trip.count714 = zext nneg i32 %i.h to i64 ; 4 uses
  %i.rn = add i64 %i.b, -8
  %i.ro = sub i64 %i.rn, %i.a
  %i.rp = shl nuw nsw i64 %i.rl, 3
  %i.rq = sub nuw nsw i64 -8, %i.rp
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.preheader, %._crit_edge484
  %indvars.iv716 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next717, %._crit_edge484 ] ; 2 uses
  %indvars.iv707 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next708, %._crit_edge484 ] ; 10 uses
  %.16489 = phi i32 [ 0, %.preheader432.preheader ], [ %.17.lcssa, %._crit_edge484 ] ; 2 uses
  %i.rr = sub nsw i64 %wide.trip.count714, %indvars.iv707 ; 7 uses
  %i.rs = mul i64 %i.rq, %indvars.iv707
  %i.rt = add i64 %i.ro, %i.rs
  %indvars720 = trunc i64 %indvars.iv707 to i32
  %.not398.not480 = icmp sgt i32 %i.h, %indvars720
  br i1 %.not398.not480, label %iter.check1040, label %._crit_edge484

iter.check1040:                                   ; preds = %.preheader432
  %i.ru = sext i32 %.16489 to i64                 ; 7 uses
  %invariant.gep897 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv716 ; 11 uses
  %min.iters.check1024 = icmp ult i64 %i.rr, 4
  br i1 %min.iters.check1024, label %.lr.ph483.preheader, label %vector.memcheck1022

vector.memcheck1022:                              ; preds = %iter.check1040
  %i.rv = shl nsw i64 %i.ru, 3
  %i.rw = add i64 %i.rt, %i.rv
  %i.rx = add i64 %i.rw, -1
  %diff.check1023 = icmp ult i64 %i.rx, 127
  br i1 %diff.check1023, label %.lr.ph483.preheader, label %vector.main.loop.iter.check1025

vector.main.loop.iter.check1025:                  ; preds = %vector.memcheck1022
  %min.iters.check1026 = icmp ult i64 %i.rr, 16
  br i1 %min.iters.check1026, label %vec.epilog.ph1044, label %vector.ph1027

vector.ph1027:                                    ; preds = %vector.main.loop.iter.check1025
  %i.ry = and i64 %i.rr, 12
  %n.vec1028 = and i64 %i.rr, -16                 ; 5 uses
  %i.rz = add i64 %indvars.iv707, %n.vec1028
  %i.sa = add i64 %n.vec1028, %i.ru               ; 2 uses
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  %invariant.gep1659 = getelementptr [8 x i8], ptr %4, i64 %i.ru
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %vector.ph1027
  %index1030 = phi i64 [ 0, %vector.ph1027 ], [ %index.next1035, %vector.body1029 ] ; 3 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %index1030 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 40
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 72
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 104
  %wide.load1031 = load <4 x double>, ptr %i.sd, align 8, !tbaa !9
  %wide.load1032 = load <4 x double>, ptr %i.se, align 8, !tbaa !9
  %wide.load1033 = load <4 x double>, ptr %i.sf, align 8, !tbaa !9
  %wide.load1034 = load <4 x double>, ptr %i.sg, align 8, !tbaa !9
  %gep1660 = getelementptr [8 x i8], ptr %invariant.gep1659, i64 %index1030 ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %gep1660, i64 32
  %i.si = getelementptr inbounds nuw i8, ptr %gep1660, i64 64
  %i.sj = getelementptr inbounds nuw i8, ptr %gep1660, i64 96
  store <4 x double> %wide.load1031, ptr %gep1660, align 8, !tbaa !9
  store <4 x double> %wide.load1032, ptr %i.sh, align 8, !tbaa !9
  store <4 x double> %wide.load1033, ptr %i.si, align 8, !tbaa !9
  store <4 x double> %wide.load1034, ptr %i.sj, align 8, !tbaa !9
  %index.next1035 = add nuw i64 %index1030, 16    ; 2 uses
  %i.sk = icmp eq i64 %index.next1035, %n.vec1028
  br i1 %i.sk, label %middle.block1036, label %vector.body1029, !llvm.loop !62

middle.block1036:                                 ; preds = %vector.body1029
  %cmp.n1037 = icmp eq i64 %i.rr, %n.vec1028
  br i1 %cmp.n1037, label %._crit_edge484.loopexit, label %vec.epilog.iter.check1042

vec.epilog.iter.check1042:                        ; preds = %middle.block1036
  %min.epilog.iters.check1043 = icmp eq i64 %i.ry, 0
  br i1 %min.epilog.iters.check1043, label %.lr.ph483.preheader, label %vec.epilog.ph1044, !prof !15

vec.epilog.ph1044:                                ; preds = %vector.main.loop.iter.check1025, %vec.epilog.iter.check1042
  %vec.epilog.resume.val1038 = phi i64 [ %n.vec1028, %vec.epilog.iter.check1042 ], [ 0, %vector.main.loop.iter.check1025 ]
  %n.vec1045 = and i64 %i.rr, -4                  ; 4 uses
  %i.sl = add i64 %indvars.iv707, %n.vec1045
  %i.sm = add i64 %n.vec1045, %i.ru               ; 2 uses
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  %invariant.gep1661 = getelementptr [8 x i8], ptr %4, i64 %i.ru
  br label %vec.epilog.vector.body1046
end_hunk_2
begin_hunk_3_@dtfttp_:bb.a
  %indvars.iv833 = phi i32 [ 0, %.lr.ph597 ], [ %indvars.iv.next834, %._crit_edge590 ] ; 5 uses
  %.26595 = phi i32 [ %.25.lcssa, %.lr.ph597 ], [ %.27.lcssa, %._crit_edge590 ] ; 2 uses
  %.10364593 = phi i32 [ 0, %.lr.ph597 ], [ %i.adx, %._crit_edge590 ] ; 4 uses
  %i.aaz = mul i32 %i.s, %.10364593
  %i.aba = add i32 %i.aay, %i.aaz
  %i.abb = xor i32 %.10364593, -1
  %i.abc = add nsw i32 %i.q, %i.abb               ; 3 uses
  %i.abd = zext i32 %i.abc to i64
  %i.abe = add nuw nsw i64 %i.abd, 1              ; 5 uses
  %i.abf = sext i32 %indvars.iv833 to i64
  %i.abg = shl nsw i64 %i.abf, 3
  %i.abh = xor i32 %.10364593, -1
  %i.abi = add nsw i32 %i.q, %i.abh
  %i.abj = add i32 %i.abi, %indvars.iv833
  %.not389585 = icmp sgt i32 %indvars.iv833, %i.abj
  br i1 %.not389585, label %._crit_edge590, label %iter.check1450

iter.check1450:                                   ; preds = %bb.x
  %i.abk = sext i32 %indvars.iv833 to i64         ; 6 uses
  %i.abl = sext i32 %.26595 to i64                ; 7 uses
  %min.iters.check1433 = icmp ult i32 %i.abc, 3
  br i1 %min.iters.check1433, label %.lr.ph589.preheader, label %vector.memcheck1431

vector.memcheck1431:                              ; preds = %iter.check1450
  %i.abm = shl nsw i64 %i.abl, 3
  %i.abn = add i64 %i.abm, %i.b
  %i.abo = add i64 %i.abg, %i.a
  %i.abp = sub i64 %i.abo, %i.abn
  %diff.check1432 = icmp ugt i64 %i.abp, -128
  br i1 %diff.check1432, label %.lr.ph589.preheader, label %vector.main.loop.iter.check1434

vector.main.loop.iter.check1434:                  ; preds = %vector.memcheck1431
  %min.iters.check1435 = icmp ult i32 %i.abc, 15
  br i1 %min.iters.check1435, label %vec.epilog.ph1454, label %vector.ph1436

vector.ph1436:                                    ; preds = %vector.main.loop.iter.check1434
  %i.abq = and i64 %i.abe, 12
  %n.vec1437 = and i64 %i.abe, 8589934576         ; 5 uses
  %i.abr = add nsw i64 %n.vec1437, %i.abk
  %i.abs = add nsw i64 %n.vec1437, %i.abl         ; 2 uses
  %invariant.gep1695 = getelementptr [8 x i8], ptr %3, i64 %i.abk
  %invariant.gep1697 = getelementptr [8 x i8], ptr %4, i64 %i.abl
  br label %vector.body1438

vector.body1438:                                  ; preds = %vector.body1438, %vector.ph1436
  %index1439 = phi i64 [ 0, %vector.ph1436 ], [ %index.next1444, %vector.body1438 ] ; 3 uses
  %gep1696 = getelementptr [8 x i8], ptr %invariant.gep1695, i64 %index1439 ; 4 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %gep1696, i64 32
  %i.abu = getelementptr inbounds nuw i8, ptr %gep1696, i64 64
  %i.abv = getelementptr inbounds nuw i8, ptr %gep1696, i64 96
  %wide.load1440 = load <4 x double>, ptr %gep1696, align 8, !tbaa !9
  %wide.load1441 = load <4 x double>, ptr %i.abt, align 8, !tbaa !9
  %wide.load1442 = load <4 x double>, ptr %i.abu, align 8, !tbaa !9
  %wide.load1443 = load <4 x double>, ptr %i.abv, align 8, !tbaa !9
  %gep1698 = getelementptr [8 x i8], ptr %invariant.gep1697, i64 %index1439 ; 4 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %gep1698, i64 32
  %i.abx = getelementptr inbounds nuw i8, ptr %gep1698, i64 64
  %i.aby = getelementptr inbounds nuw i8, ptr %gep1698, i64 96
  store <4 x double> %wide.load1440, ptr %gep1698, align 8, !tbaa !9
  store <4 x double> %wide.load1441, ptr %i.abw, align 8, !tbaa !9
  store <4 x double> %wide.load1442, ptr %i.abx, align 8, !tbaa !9
  store <4 x double> %wide.load1443, ptr %i.aby, align 8, !tbaa !9
  %index.next1444 = add nuw i64 %index1439, 16    ; 2 uses
  %i.abz = icmp eq i64 %index.next1444, %n.vec1437
  br i1 %i.abz, label %middle.block1445, label %vector.body1438, !llvm.loop !87

middle.block1445:                                 ; preds = %vector.body1438
  %cmp.n1446 = icmp eq i64 %i.abe, %n.vec1437
  br i1 %cmp.n1446, label %._crit_edge590.loopexit, label %vec.epilog.iter.check1452

vec.epilog.iter.check1452:                        ; preds = %middle.block1445
  %min.epilog.iters.check1453 = icmp eq i64 %i.abq, 0
  br i1 %min.epilog.iters.check1453, label %.lr.ph589.preheader, label %vec.epilog.ph1454, !prof !15

vec.epilog.ph1454:                                ; preds = %vector.main.loop.iter.check1434, %vec.epilog.iter.check1452
  %vec.epilog.resume.val1447 = phi i64 [ %n.vec1437, %vec.epilog.iter.check1452 ], [ 0, %vector.main.loop.iter.check1434 ]
  %n.vec1455 = and i64 %i.abe, 8589934588         ; 4 uses
  %i.aca = add nsw i64 %n.vec1455, %i.abk
  %i.acb = add nsw i64 %n.vec1455, %i.abl         ; 2 uses
  %invariant.gep1699 = getelementptr [8 x i8], ptr %3, i64 %i.abk
  %invariant.gep1701 = getelementptr [8 x i8], ptr %4, i64 %i.abl
  br label %vec.epilog.vector.body1456

vec.epilog.vector.body1456:                       ; preds = %vec.epilog.vector.body1456, %vec.epilog.ph1454
  %index1457 = phi i64 [ %vec.epilog.resume.val1447, %vec.epilog.ph1454 ], [ %index.next1459, %vec.epilog.vector.body1456 ] ; 3 uses
  %gep1700 = getelementptr [8 x i8], ptr %invariant.gep1699, i64 %index1457
  %wide.load1458 = load <4 x double>, ptr %gep1700, align 8, !tbaa !9
  %gep1702 = getelementptr [8 x i8], ptr %invariant.gep1701, i64 %index1457
  store <4 x double> %wide.load1458, ptr %gep1702, align 8, !tbaa !9
  %index.next1459 = add nuw i64 %index1457, 4     ; 2 uses
  %i.acc = icmp eq i64 %index.next1459, %n.vec1455
  br i1 %i.acc, label %vec.epilog.middle.block1460, label %vec.epilog.vector.body1456, !llvm.loop !88

vec.epilog.middle.block1460:                      ; preds = %vec.epilog.vector.body1456
  %cmp.n1461 = icmp eq i64 %i.abe, %n.vec1455
  br i1 %cmp.n1461, label %._crit_edge590.loopexit, label %.lr.ph589.preheader

.lr.ph589.preheader:                              ; preds = %vector.memcheck1431, %iter.check1450, %vec.epilog.iter.check1452, %vec.epilog.middle.block1460
  %indvars.iv835.ph = phi i64 [ %i.abk, %iter.check1450 ], [ %i.abk, %vector.memcheck1431 ], [ %i.abr, %vec.epilog.iter.check1452 ], [ %i.aca, %vec.epilog.middle.block1460 ] ; 3 uses
  %indvars.iv831.ph = phi i64 [ %i.abl, %iter.check1450 ], [ %i.abl, %vector.memcheck1431 ], [ %i.abs, %vec.epilog.iter.check1452 ], [ %i.acb, %vec.epilog.middle.block1460 ] ; 2 uses
  %i.acd = trunc i64 %indvars.iv835.ph to i32     ; 2 uses
  %i.ace = sub i32 %indvars.iv840, %i.acd
  %i.acf = sub i32 %i.aba, %i.acd
  %xtraiter1631 = and i32 %i.ace, 7               ; 2 uses
  %lcmp.mod1632.not = icmp eq i32 %xtraiter1631, 0
  br i1 %lcmp.mod1632.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol

.lr.ph589.prol:                                   ; preds = %.lr.ph589.preheader, %.lr.ph589.prol
  %indvars.iv835.prol = phi i64 [ %indvars.iv.next836.prol, %.lr.ph589.prol ], [ %indvars.iv835.ph, %.lr.ph589.preheader ] ; 2 uses
  %indvars.iv831.prol = phi i64 [ %indvars.iv.next832.prol, %.lr.ph589.prol ], [ %indvars.iv831.ph, %.lr.ph589.preheader ] ; 2 uses
  %prol.iter1633 = phi i32 [ %prol.iter1633.next, %.lr.ph589.prol ], [ 0, %.lr.ph589.preheader ]
  %i.acg = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv835.prol
  %i.ach = load double, ptr %i.acg, align 8, !tbaa !9
  %i.aci = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv831.prol
  store double %i.ach, ptr %i.aci, align 8, !tbaa !9
  %indvars.iv.next832.prol = add nsw i64 %indvars.iv831.prol, 1 ; 3 uses
  %indvars.iv.next836.prol = add nsw i64 %indvars.iv835.prol, 1 ; 2 uses
  %prol.iter1633.next = add i32 %prol.iter1633, 1 ; 2 uses
  %prol.iter1633.cmp.not = icmp eq i32 %prol.iter1633.next, %xtraiter1631
  br i1 %prol.iter1633.cmp.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol, !llvm.loop !89

.lr.ph589.prol.loopexit:                          ; preds = %.lr.ph589.prol, %.lr.ph589.preheader
  %indvars.iv.next832.lcssa1589.unr = phi i64 [ poison, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %indvars.iv835.unr = phi i64 [ %indvars.iv835.ph, %.lr.ph589.preheader ], [ %indvars.iv.next836.prol, %.lr.ph589.prol ]
  %indvars.iv831.unr = phi i64 [ %indvars.iv831.ph, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %i.acj = icmp ult i32 %i.acf, 7
  br i1 %i.acj, label %._crit_edge590.loopexit, label %.lr.ph589

.lr.ph589:                                        ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589
  %indvars.iv835 = phi i64 [ %indvars.iv.next836.7, %.lr.ph589 ], [ %indvars.iv835.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %indvars.iv831 = phi i64 [ %indvars.iv.next832.7, %.lr.ph589 ], [ %indvars.iv831.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %i.ack = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv835
  %i.acl = load double, ptr %i.ack, align 8, !tbaa !9
  %i.acm = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv831
  store double %i.acl, ptr %i.acm, align 8, !tbaa !9
  %i.acn = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.aco = getelementptr i8, ptr %i.acn, i64 8
  %i.acp = load double, ptr %i.aco, align 8, !tbaa !9
  %i.acq = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.acr = getelementptr i8, ptr %i.acq, i64 8
  store double %i.acp, ptr %i.acr, align 8, !tbaa !9
  %i.acs = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.act = getelementptr i8, ptr %i.acs, i64 16
  %i.acu = load double, ptr %i.act, align 8, !tbaa !9
  %i.acv = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.acw = getelementptr i8, ptr %i.acv, i64 16
  store double %i.acu, ptr %i.acw, align 8, !tbaa !9
  %i.acx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.acy = getelementptr i8, ptr %i.acx, i64 24
  %i.acz = load double, ptr %i.acy, align 8, !tbaa !9
  %i.ada = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adb = getelementptr i8, ptr %i.ada, i64 24
  store double %i.acz, ptr %i.adb, align 8, !tbaa !9
  %i.adc = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.add = getelementptr i8, ptr %i.adc, i64 32
  %i.ade = load double, ptr %i.add, align 8, !tbaa !9
  %i.adf = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adg = getelementptr i8, ptr %i.adf, i64 32
  store double %i.ade, ptr %i.adg, align 8, !tbaa !9
  %i.adh = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.adi = getelementptr i8, ptr %i.adh, i64 40
  %i.adj = load double, ptr %i.adi, align 8, !tbaa !9
  %i.adk = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adl = getelementptr i8, ptr %i.adk, i64 40
  store double %i.adj, ptr %i.adl, align 8, !tbaa !9
  %i.adm = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.adn = getelementptr i8, ptr %i.adm, i64 48
  %i.ado = load double, ptr %i.adn, align 8, !tbaa !9
  %i.adp = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adq = getelementptr i8, ptr %i.adp, i64 48
  store double %i.ado, ptr %i.adq, align 8, !tbaa !9
  %i.adr = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.ads = getelementptr i8, ptr %i.adr, i64 56
  %i.adt = load double, ptr %i.ads, align 8, !tbaa !9
  %i.adu = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adv = getelementptr i8, ptr %i.adu, i64 56
  store double %i.adt, ptr %i.adv, align 8, !tbaa !9
  %indvars.iv.next832.7 = add nsw i64 %indvars.iv831, 8 ; 2 uses
  %indvars.iv.next836.7 = add nsw i64 %indvars.iv835, 8 ; 2 uses
  %lftr.wideiv842.7 = trunc i64 %indvars.iv.next836.7 to i32
  %exitcond843.not.7 = icmp eq i32 %indvars.iv840, %lftr.wideiv842.7
  br i1 %exitcond843.not.7, label %._crit_edge590.loopexit, label %.lr.ph589, !llvm.loop !90

._crit_edge590.loopexit:                          ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589, %vec.epilog.middle.block1460, %middle.block1445
  %indvars.iv.next832.lcssa = phi i64 [ %i.acb, %vec.epilog.middle.block1460 ], [ %i.abs, %middle.block1445 ], [ %indvars.iv.next832.lcssa1589.unr, %.lr.ph589.prol.loopexit ], [ %indvars.iv.next832.7, %.lr.ph589 ]
  %i.adw = trunc nsw i64 %indvars.iv.next832.lcssa to i32
  br label %._crit_edge590

._crit_edge590:                                   ; preds = %._crit_edge590.loopexit, %bb.x
  %.27.lcssa = phi i32 [ %.26595, %bb.x ], [ %i.adw, %._crit_edge590.loopexit ]
  %indvars.iv.next834 = add i32 %indvars.iv833, %i.aax
  %i.adx = add nuw nsw i32 %.10364593, 1          ; 2 uses
  %indvars.iv.next841 = add i32 %indvars.iv840, %i.s
  %exitcond844.not = icmp eq i32 %i.adx, %i.q
  br i1 %exitcond844.not, label %.loopexit, label %bb.x, !llvm.loop !91

.lr.ph605.preheader:                              ; preds = %bb.v
  %i.ady = add nuw nsw i32 %i.q, 1
  %i.adz = mul i32 %i.ady, %i.s
  %i.aea = sext i32 %i.adz to i64                 ; 4 uses
  %i.aeb = zext nneg i32 %i.s to i64              ; 13 uses
  %wide.trip.count860 = zext nneg i32 %i.q to i64
  %i.aec = shl nsw i64 %i.aea, 3
  %i.aed = add i64 %i.aec, %i.a
  %i.aee = sub i64 %i.b, %i.aed
  %i.aef = mul nsw i64 %i.aeb, -8
  %i.aeg = add nuw nsw i64 %i.aeb, 1
  br label %iter.check1484

iter.check1484:                                   ; preds = %.lr.ph605.preheader, %.loopexit1571
  %indvars.iv855 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next856, %.loopexit1571 ] ; 5 uses
  %indvars.iv848 = phi i64 [ %i.aea, %.lr.ph605.preheader ], [ %indvars.iv.next849, %.loopexit1571 ] ; 9 uses
  %.28603 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next847.lcssa, %.loopexit1571 ] ; 7 uses
  %i.aeh = mul i64 %i.aeg, %indvars.iv855
  %i.aei = add i64 %i.aeh, %i.aea
  %smax1466 = tail call i64 @llvm.smax.i64(i64 %indvars.iv848, i64 %i.aei)
  %i.aej = mul i64 %indvars.iv855, %i.aeb
  %i.aek = add i64 %i.aej, %i.aea
  %reass.sub1578 = sub i64 %smax1466, %i.aek
  %i.ael = add i64 %reass.sub1578, 1              ; 7 uses
  %i.aem = add nsw i64 %indvars.iv848, %indvars.iv855
  %min.iters.check1467 = icmp ult i64 %i.ael, 4
  br i1 %min.iters.check1467, label %vec.epilog.scalar.ph1485.preheader, label %vector.memcheck1464

vector.memcheck1464:                              ; preds = %iter.check1484
  %i.aen = mul i64 %i.aef, %indvars.iv855
  %i.aeo = add i64 %i.aee, %i.aen
  %i.aep = shl i64 %.28603, 3
  %i.aeq = add i64 %i.aeo, %i.aep
  %i.aer = add i64 %i.aeq, -1
  %diff.check1465 = icmp ult i64 %i.aer, 127
  br i1 %diff.check1465, label %vec.epilog.scalar.ph1485.preheader, label %vector.main.loop.iter.check1468

vector.main.loop.iter.check1468:                  ; preds = %vector.memcheck1464
  %min.iters.check1469 = icmp ult i64 %i.ael, 16
  br i1 %min.iters.check1469, label %vec.epilog.ph1488, label %vector.ph1470

vector.ph1470:                                    ; preds = %vector.main.loop.iter.check1468
  %i.aes = and i64 %i.ael, 12
  %n.vec1471 = and i64 %i.ael, -16                ; 5 uses
  %i.aet = add i64 %indvars.iv848, %n.vec1471
  %i.aeu = add i64 %.28603, %n.vec1471            ; 2 uses
  %i.aev = getelementptr [8 x i8], ptr %3, i64 %indvars.iv848
  %i.aew = getelementptr [8 x i8], ptr %4, i64 %.28603
  br label %vector.body1472

vector.body1472:                                  ; preds = %vector.body1472, %vector.ph1470
  %index1473 = phi i64 [ 0, %vector.ph1470 ], [ %index.next1478, %vector.body1472 ] ; 3 uses
  %i.aex = getelementptr [8 x i8], ptr %i.aev, i64 %index1473 ; 4 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 32
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aex, i64 64
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aex, i64 96
  %wide.load1474 = load <4 x double>, ptr %i.aex, align 8, !tbaa !9
  %wide.load1475 = load <4 x double>, ptr %i.aey, align 8, !tbaa !9
  %wide.load1476 = load <4 x double>, ptr %i.aez, align 8, !tbaa !9
  %wide.load1477 = load <4 x double>, ptr %i.afa, align 8, !tbaa !9
  %i.afb = getelementptr [8 x i8], ptr %i.aew, i64 %index1473 ; 4 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 32
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afb, i64 64
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 96
  store <4 x double> %wide.load1474, ptr %i.afb, align 8, !tbaa !9
  store <4 x double> %wide.load1475, ptr %i.afc, align 8, !tbaa !9
  store <4 x double> %wide.load1476, ptr %i.afd, align 8, !tbaa !9
  store <4 x double> %wide.load1477, ptr %i.afe, align 8, !tbaa !9
  %index.next1478 = add nuw i64 %index1473, 16    ; 2 uses
  %i.aff = icmp eq i64 %index.next1478, %n.vec1471
  br i1 %i.aff, label %middle.block1479, label %vector.body1472, !llvm.loop !92

middle.block1479:                                 ; preds = %vector.body1472
  %cmp.n1480 = icmp eq i64 %i.ael, %n.vec1471
  br i1 %cmp.n1480, label %.loopexit1571, label %vec.epilog.iter.check1486

vec.epilog.iter.check1486:                        ; preds = %middle.block1479
  %min.epilog.iters.check1487 = icmp eq i64 %i.aes, 0
  br i1 %min.epilog.iters.check1487, label %vec.epilog.scalar.ph1485.preheader, label %vec.epilog.ph1488, !prof !15

vec.epilog.ph1488:                                ; preds = %vector.main.loop.iter.check1468, %vec.epilog.iter.check1486
  %vec.epilog.resume.val1481 = phi i64 [ %n.vec1471, %vec.epilog.iter.check1486 ], [ 0, %vector.main.loop.iter.check1468 ]
  %n.vec1489 = and i64 %i.ael, -4                 ; 4 uses
  %i.afg = add i64 %indvars.iv848, %n.vec1489
  %i.afh = add i64 %.28603, %n.vec1489            ; 2 uses
  %i.afi = getelementptr [8 x i8], ptr %3, i64 %indvars.iv848
  %i.afj = getelementptr [8 x i8], ptr %4, i64 %.28603
  br label %vec.epilog.vector.body1490

vec.epilog.vector.body1490:                       ; preds = %vec.epilog.vector.body1490, %vec.epilog.ph1488
  %index1491 = phi i64 [ %vec.epilog.resume.val1481, %vec.epilog.ph1488 ], [ %index.next1493, %vec.epilog.vector.body1490 ] ; 3 uses
  %i.afk = getelementptr [8 x i8], ptr %i.afi, i64 %index1491
  %wide.load1492 = load <4 x double>, ptr %i.afk, align 8, !tbaa !9
  %i.afl = getelementptr [8 x i8], ptr %i.afj, i64 %index1491
  store <4 x double> %wide.load1492, ptr %i.afl, align 8, !tbaa !9
  %index.next1493 = add nuw i64 %index1491, 4     ; 2 uses
  %i.afm = icmp eq i64 %index.next1493, %n.vec1489
  br i1 %i.afm, label %vec.epilog.middle.block1494, label %vec.epilog.vector.body1490, !llvm.loop !93

vec.epilog.middle.block1494:                      ; preds = %vec.epilog.vector.body1490
  %cmp.n1495 = icmp eq i64 %i.ael, %n.vec1489
  br i1 %cmp.n1495, label %.loopexit1571, label %vec.epilog.scalar.ph1485.preheader

vec.epilog.scalar.ph1485.preheader:               ; preds = %vector.memcheck1464, %iter.check1484, %vec.epilog.iter.check1486, %vec.epilog.middle.block1494
  %indvars.iv850.ph = phi i64 [ %indvars.iv848, %iter.check1484 ], [ %indvars.iv848, %vector.memcheck1464 ], [ %i.aet, %vec.epilog.iter.check1486 ], [ %i.afg, %vec.epilog.middle.block1494 ]
  %indvars.iv846.ph = phi i64 [ %.28603, %iter.check1484 ], [ %.28603, %vector.memcheck1464 ], [ %i.aeu, %vec.epilog.iter.check1486 ], [ %i.afh, %vec.epilog.middle.block1494 ]
  br label %vec.epilog.scalar.ph1485

vec.epilog.scalar.ph1485:                         ; preds = %vec.epilog.scalar.ph1485.preheader, %vec.epilog.scalar.ph1485
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %vec.epilog.scalar.ph1485 ], [ %indvars.iv850.ph, %vec.epilog.scalar.ph1485.preheader ] ; 3 uses
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %vec.epilog.scalar.ph1485 ], [ %indvars.iv846.ph, %vec.epilog.scalar.ph1485.preheader ] ; 2 uses
  %i.afn = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv850
  %i.afo = load double, ptr %i.afn, align 8, !tbaa !9
  %i.afp = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv846
  store double %i.afo, ptr %i.afp, align 8, !tbaa !9
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, 1 ; 2 uses
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, 1
  %.not386.not = icmp slt i64 %indvars.iv850, %i.aem
  br i1 %.not386.not, label %vec.epilog.scalar.ph1485, label %.loopexit1571, !llvm.loop !94

.loopexit1571:                                    ; preds = %vec.epilog.scalar.ph1485, %vec.epilog.middle.block1494, %middle.block1479
  %indvars.iv.next847.lcssa = phi i64 [ %i.afh, %vec.epilog.middle.block1494 ], [ %i.aeu, %middle.block1479 ], [ %indvars.iv.next847, %vec.epilog.scalar.ph1485 ] ; 2 uses
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, %i.aeb
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1 ; 2 uses
  %exitcond861.not = icmp eq i64 %indvars.iv.next856, %wide.trip.count860
  br i1 %exitcond861.not, label %.lr.ph619, label %iter.check1484, !llvm.loop !95

.lr.ph619:                                        ; preds = %.loopexit1571
  %i.afq = zext nneg i32 %i.s to i64
  %wide.trip.count872 = zext nneg i32 %i.q to i64
  %scevgep1500 = getelementptr i8, ptr %4, i64 8
  %umax1503 = tail call i64 @llvm.umax.i64(i64 %i.aeb, i64 1)
  %i.afr = shl nuw nsw i64 %i.aeb, 3
  %umax1515 = tail call i64 @llvm.umax.i64(i64 %i.aeb, i64 1)
  %31 = insertelement <2 x i64> poison, i64 %i.aeb, i64 0
  %32 = shufflevector <2 x i64> %31, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %33 = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %34 = shufflevector <2 x i32> %33, <2 x i32> poison, <2 x i32> zeroinitializer
  %35 = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %36 = shufflevector <2 x i32> %35, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1521 = insertelement <4 x i64> poison, i64 %i.aeb, i64 0
  %broadcast.splat1522 = shufflevector <4 x i64> %broadcast.splatinsert1521, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afs = shl nuw nsw <4 x i64> %broadcast.splat1522, splat (i64 2) ; 5 uses
  %i.aft = mul nuw nsw <4 x i64> %broadcast.splat1522, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1703 = add nuw nsw <4 x i64> %i.afs, %i.afs ; 2 uses
  %invariant.op1704 = add nuw nsw <4 x i64> %invariant.op1703, %i.afs ; 2 uses
  %invariant.op1705 = add nuw nsw <4 x i64> %invariant.op1704, %i.afs
  %broadcast.splatinsert1555 = insertelement <4 x i64> poison, i64 %i.aeb, i64 0
  %broadcast.splat1556 = shufflevector <4 x i64> %broadcast.splatinsert1555, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.afu = mul nuw nsw <4 x i64> %broadcast.splat1556, <i64 0, i64 1, i64 2, i64 3>
  %i.afv = shl nuw nsw i64 %i.aeb, 2
  %broadcast.splatinsert1558 = insertelement <4 x i64> poison, i64 %i.afv, i64 0
  %broadcast.splat1559 = shufflevector <4 x i64> %broadcast.splatinsert1558, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1547

iter.check1547:                                   ; preds = %.lr.ph619, %._crit_edge613
  %indvars.iv864 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next865, %._crit_edge613 ] ; 11 uses
  %.30617 = phi i64 [ %indvars.iv.next847.lcssa, %.lr.ph619 ], [ %indvars.iv.next863.lcssa, %._crit_edge613 ]
  %37 = insertelement <2 x i64> poison, i64 %indvars.iv864, i64 0
  %38 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %39 = add nuw <2 x i64> %38, %32                ; 2 uses
  %40 = add nuw <2 x i64> %38, splat (i64 1)
  %41 = trunc <2 x i64> %38 to <2 x i32>
  %42 = add nuw <2 x i64> %38, %32
  %indvars871.a = trunc i64 %indvars.iv864 to i32
  %i.afw = add nsw i32 %i.q, %indvars871.a
  %i.afx = mul nsw i32 %i.afw, %i.s
  %i.afy = sext i32 %i.afx to i64
  %i.afz = add nsw i64 %indvars.iv864, %i.afy
  %43 = add <2 x i32> %36, %41
  %44 = mul <2 x i32> %34, %43
  %45 = sext <2 x i32> %44 to <2 x i64>
  %46 = add <2 x i64> %40, %45                    ; 2 uses
  %47 = icmp slt <2 x i64> %39, %46               ; 2 uses
  %48 = zext <2 x i1> %47 to <2 x i64>            ; 2 uses
  %49 = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %39, <2 x i64> %46)
  %50 = add <2 x i64> %42, %48
  %51 = sub <2 x i64> %49, %50                    ; 2 uses
  %sext1579 = shl i64 %.30617, 32                 ; 2 uses
  %52 = ashr exact i64 %sext1579, 32              ; 6 uses
  %53 = extractelement <2 x i1> %47, i64 1
  %54 = select i1 %53, i64 2, i64 1
  %55 = extractelement <2 x i64> %51, i64 1
  %56 = udiv i64 %55, %umax1515
  %57 = add i64 %54, %56                          ; 7 uses
  %min.iters.check1516 = icmp ult i64 %57, 4
  br i1 %min.iters.check1516, label %.lr.ph612.preheader, label %vector.memcheck1498

vector.memcheck1498:                              ; preds = %iter.check1547
  %i.aga = shl i64 %indvars.iv864, 3
  %scevgep1505 = getelementptr i8, ptr %3, i64 %i.aga ; 5 uses
  %58 = ashr exact i64 %sext1579, 29              ; 2 uses
  %scevgep1499 = getelementptr i8, ptr %4, i64 %58
  %59 = extractelement <2 x i64> %51, i64 0
  %60 = udiv i64 %59, %umax1503
  %61 = extractelement <2 x i64> %48, i64 0
  %i.agb = add i64 %60, %61                       ; 2 uses
  %62 = shl i64 %i.agb, 3
  %i.agc = getelementptr i8, ptr %scevgep1500, i64 %62
  %scevgep1504 = getelementptr i8, ptr %i.agc, i64 %58
  %63 = mul i64 %i.afr, %i.agb
  %scevgep1506 = getelementptr i8, ptr %scevgep1505, i64 %63 ; 4 uses
  %i.agd = icmp ult ptr %scevgep1505, %scevgep1506
  %umin1507 = select i1 %i.agd, ptr %scevgep1505, ptr %scevgep1506
  %64 = icmp ugt ptr %scevgep1505, %scevgep1506
  %umax1508 = select i1 %64, ptr %scevgep1505, ptr %scevgep1506
  %scevgep1509 = getelementptr i8, ptr %umax1508, i64 8
  %bound01510 = icmp ult ptr %scevgep1499, %scevgep1509
  %bound11511 = icmp ult ptr %umin1507, %scevgep1504
  %found.conflict1512 = and i1 %bound01510, %bound11511
  br i1 %found.conflict1512, label %.lr.ph612.preheader, label %vector.main.loop.iter.check1517

vector.main.loop.iter.check1517:                  ; preds = %vector.memcheck1498
  %min.iters.check1518 = icmp ult i64 %57, 16
  br i1 %min.iters.check1518, label %vec.epilog.ph1551, label %vector.ph1519

vector.ph1519:                                    ; preds = %vector.main.loop.iter.check1517
  %i.age = and i64 %57, 12
  %n.vec1520 = and i64 %57, -16                   ; 5 uses
  %i.agf = mul i64 %n.vec1520, %i.aeb
  %i.agg = add i64 %indvars.iv864, %i.agf         ; 2 uses
  %i.agh = add i64 %52, %n.vec1520                ; 2 uses
  %broadcast.splatinsert1523 = insertelement <4 x i64> poison, i64 %indvars.iv864, i64 0
  %broadcast.splat1524 = shufflevector <4 x i64> %broadcast.splatinsert1523, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1525 = add nuw nsw <4 x i64> %broadcast.splat1524, %i.aft
  %i.agi = getelementptr [8 x i8], ptr %4, i64 %52
  br label %vector.body1526

vector.body1526:                                  ; preds = %vector.body1526, %vector.ph1519
  %index1527 = phi i64 [ 0, %vector.ph1519 ], [ %index.next1540, %vector.body1526 ] ; 2 uses
  %vec.ind1528 = phi <4 x i64> [ %induction1525, %vector.ph1519 ], [ %vec.ind.next1541.reass, %vector.body1526 ] ; 5 uses
  %step.add1529 = add nuw nsw <4 x i64> %vec.ind1528, %i.afs
  %step.add.21530.reass = add nuw nsw <4 x i64> %vec.ind1528, %invariant.op1703
  %step.add.31531.reass = add nuw nsw <4 x i64> %vec.ind1528, %invariant.op1704
  %wide.gep1532 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1528
  %wide.gep1533 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add1529
  %wide.gep1534 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.21530.reass
  %wide.gep1535 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.31531.reass
  %wide.masked.gather1536 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1532, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !96
  %wide.masked.gather1537 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1533, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !96
  %wide.masked.gather1538 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1534, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !96
  %wide.masked.gather1539 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1535, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !96
  %i.agj = getelementptr [8 x i8], ptr %i.agi, i64 %index1527 ; 4 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 32
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agj, i64 64
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agj, i64 96
  store <4 x double> %wide.masked.gather1536, ptr %i.agj, align 8, !tbaa !9, !alias.scope !99, !noalias !96
  store <4 x double> %wide.masked.gather1537, ptr %i.agk, align 8, !tbaa !9, !alias.scope !99, !noalias !96
  store <4 x double> %wide.masked.gather1538, ptr %i.agl, align 8, !tbaa !9, !alias.scope !99, !noalias !96
  store <4 x double> %wide.masked.gather1539, ptr %i.agm, align 8, !tbaa !9, !alias.scope !99, !noalias !96
  %index.next1540 = add nuw i64 %index1527, 16    ; 2 uses
  %vec.ind.next1541.reass = add nuw nsw <4 x i64> %vec.ind1528, %invariant.op1705
  %i.agn = icmp eq i64 %index.next1540, %n.vec1520
  br i1 %i.agn, label %middle.block1542, label %vector.body1526, !llvm.loop !101

middle.block1542:                                 ; preds = %vector.body1526
  %cmp.n1543 = icmp eq i64 %57, %n.vec1520
  br i1 %cmp.n1543, label %._crit_edge613, label %vec.epilog.iter.check1549

vec.epilog.iter.check1549:                        ; preds = %middle.block1542
  %min.epilog.iters.check1550 = icmp eq i64 %i.age, 0
  br i1 %min.epilog.iters.check1550, label %.lr.ph612.preheader, label %vec.epilog.ph1551, !prof !15

vec.epilog.ph1551:                                ; preds = %vector.main.loop.iter.check1517, %vec.epilog.iter.check1549
  %vec.epilog.resume.val1544 = phi i64 [ %n.vec1520, %vec.epilog.iter.check1549 ], [ 0, %vector.main.loop.iter.check1517 ]
  %bc.resume.val1545 = phi i64 [ %i.agg, %vec.epilog.iter.check1549 ], [ %indvars.iv864, %vector.main.loop.iter.check1517 ]
  %n.vec1552 = and i64 %57, -4                    ; 4 uses
  %i.ago = mul i64 %n.vec1552, %i.aeb
  %i.agp = add i64 %indvars.iv864, %i.ago
  %i.agq = add i64 %52, %n.vec1552                ; 2 uses
  %broadcast.splatinsert1553 = insertelement <4 x i64> poison, i64 %bc.resume.val1545, i64 0
  %broadcast.splat1554 = shufflevector <4 x i64> %broadcast.splatinsert1553, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1557 = add nuw nsw <4 x i64> %broadcast.splat1554, %i.afu
  %i.agr = getelementptr [8 x i8], ptr %4, i64 %52
  br label %vec.epilog.vector.body1560

vec.epilog.vector.body1560:                       ; preds = %vec.epilog.vector.body1560, %vec.epilog.ph1551
  %index1561 = phi i64 [ %vec.epilog.resume.val1544, %vec.epilog.ph1551 ], [ %index.next1565, %vec.epilog.vector.body1560 ] ; 2 uses
  %vec.ind1562 = phi <4 x i64> [ %induction1557, %vec.epilog.ph1551 ], [ %vec.ind.next1566, %vec.epilog.vector.body1560 ] ; 2 uses
  %wide.gep1563 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1562
  %wide.masked.gather1564 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1563, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !96
  %i.ags = getelementptr [8 x i8], ptr %i.agr, i64 %index1561
  store <4 x double> %wide.masked.gather1564, ptr %i.ags, align 8, !tbaa !9, !alias.scope !99, !noalias !96
  %index.next1565 = add nuw i64 %index1561, 4     ; 2 uses
  %vec.ind.next1566 = add nuw nsw <4 x i64> %vec.ind1562, %broadcast.splat1559
  %i.agt = icmp eq i64 %index.next1565, %n.vec1552
  br i1 %i.agt, label %vec.epilog.middle.block1567, label %vec.epilog.vector.body1560, !llvm.loop !102

vec.epilog.middle.block1567:                      ; preds = %vec.epilog.vector.body1560
  %cmp.n1568 = icmp eq i64 %57, %n.vec1552
  br i1 %cmp.n1568, label %._crit_edge613, label %.lr.ph612.preheader

.lr.ph612.preheader:                              ; preds = %vector.memcheck1498, %iter.check1547, %vec.epilog.iter.check1549, %vec.epilog.middle.block1567
  %indvars.iv866.ph = phi i64 [ %indvars.iv864, %iter.check1547 ], [ %indvars.iv864, %vector.memcheck1498 ], [ %i.agg, %vec.epilog.iter.check1549 ], [ %i.agp, %vec.epilog.middle.block1567 ]
  %indvars.iv862.ph = phi i64 [ %52, %iter.check1547 ], [ %52, %vector.memcheck1498 ], [ %i.agh, %vec.epilog.iter.check1549 ], [ %i.agq, %vec.epilog.middle.block1567 ]
  br label %.lr.ph612

.lr.ph612:                                        ; preds = %.lr.ph612.preheader, %.lr.ph612
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %.lr.ph612 ], [ %indvars.iv866.ph, %.lr.ph612.preheader ] ; 2 uses
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %.lr.ph612 ], [ %indvars.iv862.ph, %.lr.ph612.preheader ] ; 2 uses
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv866
  %i.agv = load double, ptr %i.agu, align 8, !tbaa !9
  %i.agw = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv862
  store double %i.agv, ptr %i.agw, align 8, !tbaa !9
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, 1 ; 2 uses
  %indvars.iv.next867 = add nuw nsw i64 %indvars.iv866, %i.afq ; 2 uses
  %.not882 = icmp sgt i64 %indvars.iv.next867, %i.afz
  br i1 %.not882, label %._crit_edge613, label %.lr.ph612, !llvm.loop !103

._crit_edge613:                                   ; preds = %.lr.ph612, %middle.block1542, %vec.epilog.middle.block1567
  %indvars.iv.next863.lcssa = phi i64 [ %i.agq, %vec.epilog.middle.block1567 ], [ %i.agh, %middle.block1542 ], [ %indvars.iv.next863, %.lr.ph612 ]
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1 ; 2 uses
  %exitcond873.not = icmp eq i64 %indvars.iv.next865, %wide.trip.count872
  br i1 %exitcond873.not, label %.loopexit, label %iter.check1547, !llvm.loop !104

.loopexit.loopexit1599.unr-lcssa:                 ; preds = %._crit_edge495.3
  %lcmp.mod1619.not = icmp eq i64 %xtraiter1618, 0
  br i1 %lcmp.mod1619.not, label %.loopexit, label %iter.check1075.epil.preheader

iter.check1075.epil.preheader:                    ; preds = %.loopexit.loopexit1599.unr-lcssa, %.preheader.preheader
  %indvars.iv725.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next726.3, %.loopexit.loopexit1599.unr-lcssa ]
  %.18499.epil.init = phi i64 [ %i.ub, %.preheader.preheader ], [ %indvars.iv.next724.3, %.loopexit.loopexit1599.unr-lcssa ]
  %lcmp.mod1620 = icmp ne i64 %xtraiter1618, 0
  tail call void @llvm.assume(i1 %lcmp.mod1620)
  br label %iter.check1075.epil

iter.check1075.epil:                              ; preds = %._crit_edge495.epil, %iter.check1075.epil.preheader
  %indvars.iv725.epil = phi i64 [ %indvars.iv725.epil.init, %iter.check1075.epil.preheader ], [ %indvars.iv.next726.epil, %._crit_edge495.epil ] ; 3 uses
  %.18499.epil = phi i64 [ %.18499.epil.init, %iter.check1075.epil.preheader ], [ %indvars.iv.next724.epil, %._crit_edge495.epil ]
  %epil.iter = phi i64 [ 0, %iter.check1075.epil.preheader ], [ %epil.iter.next, %._crit_edge495.epil ]
  %invariant.gep899.epil = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv725.epil
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %iter.check1075.epil
  %indvars.iv727.epil = phi i64 [ %indvars.iv725.epil, %iter.check1075.epil ], [ %indvars.iv.next728.epil, %bb.y ] ; 2 uses
  %indvars.iv723.epil = phi i64 [ %.18499.epil, %iter.check1075.epil ], [ %indvars.iv.next724.epil, %bb.y ] ; 2 uses
  %i.agx = mul nuw nsw i64 %indvars.iv727.epil, %i.uc
  %gep900.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.epil, i64 %i.agx
  %i.agy = load double, ptr %gep900.epil, align 8, !tbaa !9
  %i.agz = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv723.epil
  store double %i.agy, ptr %i.agz, align 8, !tbaa !9
  %indvars.iv.next724.epil = add nsw i64 %indvars.iv723.epil, 1 ; 2 uses
  %indvars.iv.next728.epil = add nuw nsw i64 %indvars.iv727.epil, 1 ; 2 uses
  %.not397.not.epil = icmp samesign ult i64 %indvars.iv.next728.epil, %i.ud
  br i1 %.not397.not.epil, label %bb.y, label %._crit_edge495.epil, !llvm.loop !67

._crit_edge495.epil:                              ; preds = %bb.y
  %indvars.iv.next726.epil = add nuw nsw i64 %indvars.iv725.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1618
  br i1 %epil.iter.cmp.not, label %.loopexit, label %iter.check1075.epil, !llvm.loop !105

.loopexit:                                        ; preds = %.loopexit434, %._crit_edge472, %.loopexit.loopexit1599.unr-lcssa, %._crit_edge495.epil, %._crit_edge515, %._crit_edge542, %._crit_edge565, %._crit_edge590, %._crit_edge613, %bb.n, %bb.k, %._crit_edge490, %._crit_edge444, %._crit_edge465, %._crit_edge508, %._crit_edge535, %._crit_edge558, %bb.g, %bb.h, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smax.v2i64(<2 x i64>, <2 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

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
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !12, !13}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12, !13, !14}
!23 = distinct !{!23, !12, !13, !14}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !12, !13}
!26 = distinct !{!26, !12, !13, !14}
!27 = distinct !{!27, !12, !13, !14}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !12, !13}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12, !13, !14}
!32 = distinct !{!32, !12, !13, !14}
!33 = distinct !{!33, !12, !13}
!34 = distinct !{!34, !12}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !12, !13, !14}
!41 = distinct !{!41, !12, !13, !14}
!42 = distinct !{!42, !12, !13}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12, !13, !14}
!45 = distinct !{!45, !12, !13, !14}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !12, !13}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12, !13, !14}
!50 = distinct !{!50, !12, !13, !14}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12}
!53 = !{!54}
!54 = distinct !{!54, !55}
!55 = distinct !{!55, !"LVerDomain"}
!56 = !{!57}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !12, !13, !14}
!59 = distinct !{!59, !12, !13, !14}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12, !13, !14}
!63 = distinct !{!63, !12, !13, !14}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12, !13}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12, !13, !14}
!70 = distinct !{!70, !12, !13, !14}
!71 = distinct !{!71, !18}
!72 = distinct !{!72, !12, !13}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12, !13, !14}
!75 = distinct !{!75, !12, !13, !14}
!76 = distinct !{!76, !12, !13}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !12, !13, !14}
!85 = distinct !{!85, !12, !13, !14}
!86 = distinct !{!86, !12, !13}
!87 = distinct !{!87, !12, !13, !14}
!88 = distinct !{!88, !12, !13, !14}
!89 = distinct !{!89, !18}
!90 = distinct !{!90, !12, !13}
!91 = distinct !{!91, !12}
!92 = distinct !{!92, !12, !13, !14}
!93 = distinct !{!93, !12, !13, !14}
!94 = distinct !{!94, !12, !13}
!95 = distinct !{!95, !12}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!100}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !12, !13, !14}
!102 = distinct !{!102, !12, !13, !14}
!103 = distinct !{!103, !12, !13}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !18}
end_hunk_3
