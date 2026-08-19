loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DTPTTF\00", align 1

; Function Attrs: nounwind uwtable
define void @dtpttf_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
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
  %i.v = shl nuw nsw i64 %i.t, 3
  %i.w = add nuw nsw i64 %i.v, 8
  br label %.preheader436

.preheader436:                                    ; preds = %.preheader436.preheader, %._crit_edge
  %indvars.iv651 = phi i64 [ 0, %.preheader436.preheader ], [ %indvars.iv.next652, %._crit_edge ] ; 2 uses
  %indvars.iv644 = phi i64 [ 0, %.preheader436.preheader ], [ %indvars.iv.next645, %._crit_edge ] ; 10 uses
  %.0443 = phi i32 [ 0, %.preheader436.preheader ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.x = sub nsw i64 %wide.trip.count, %indvars.iv644 ; 7 uses
  %i.y = mul i64 %i.w, %indvars.iv644
  %indvars655 = trunc i64 %indvars.iv644 to i32
  %.not414.not437 = icmp sgt i32 %i.h, %indvars655
  br i1 %.not414.not437, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader436
  %i.z = sext i32 %.0443 to i64                   ; 7 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv651 ; 11 uses
  %min.iters.check = icmp ult i64 %i.x, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = add i64 %i.y, %i.b
  %i.ac = add i64 %i.aa, %i.a
  %i.ad = sub i64 %i.ac, %i.ab
  %diff.check = icmp ugt i64 %i.ad, -128
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check910 = icmp ult i64 %i.x, 16
  br i1 %min.iters.check910, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.x, 12
  %n.vec = and i64 %i.x, -16                      ; 5 uses
  %i.af = add i64 %indvars.iv644, %n.vec
  %i.ag = add i64 %n.vec, %i.z                    ; 2 uses
  %invariant.gep1644 = getelementptr [8 x i8], ptr %3, i64 %i.z
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep1645 = getelementptr [8 x i8], ptr %invariant.gep1644, i64 %index ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %gep1645, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %gep1645, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %gep1645, i64 96
  %wide.load = load <4 x double>, ptr %gep1645, align 8, !tbaa !9
  %wide.load911 = load <4 x double>, ptr %i.ai, align 8, !tbaa !9
  %wide.load912 = load <4 x double>, ptr %i.aj, align 8, !tbaa !9
  %wide.load913 = load <4 x double>, ptr %i.ak, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store <4 x double> %wide.load, ptr %i.al, align 8, !tbaa !9
  store <4 x double> %wide.load911, ptr %i.am, align 8, !tbaa !9
  store <4 x double> %wide.load912, ptr %i.an, align 8, !tbaa !9
  store <4 x double> %wide.load913, ptr %i.ao, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec915 = and i64 %i.x, -4                    ; 4 uses
  %i.aq = add i64 %indvars.iv644, %n.vec915
  %i.ar = add i64 %n.vec915, %i.z                 ; 2 uses
  %invariant.gep1646 = getelementptr [8 x i8], ptr %3, i64 %i.z
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv644
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index916 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next918, %vec.epilog.vector.body ] ; 3 uses
  %gep1647 = getelementptr [8 x i8], ptr %invariant.gep1646, i64 %index916
  %wide.load917 = load <4 x double>, ptr %gep1647, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index916
  store <4 x double> %wide.load917, ptr %i.at, align 8, !tbaa !9
  %index.next918 = add nuw i64 %index916, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next918, %n.vec915
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n919 = icmp eq i64 %i.x, %n.vec915
  br i1 %cmp.n919, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv646.ph = phi i64 [ %indvars.iv644, %iter.check ], [ %indvars.iv644, %vector.memcheck ], [ %i.af, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %i.z, %iter.check ], [ %i.z, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ] ; 2 uses
  %i.av = sub i64 %wide.trip.count, %indvars.iv646.ph
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv646.prol = phi i64 [ %indvars.iv.next647.prol, %.lr.ph.prol ], [ %indvars.iv646.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.aw = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.prol
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !9
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646.prol
  store double %i.ax, ptr %gep.prol, align 8, !tbaa !9
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %indvars.iv.next647.prol = add nuw nsw i64 %indvars.iv646.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !17

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.next.lcssa1607.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %indvars.iv646.unr = phi i64 [ %indvars.iv646.ph, %.lr.ph.preheader ], [ %indvars.iv.next647.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ay = sub i64 %indvars.iv646.ph, %wide.trip.count
  %i.az = icmp ugt i64 %i.ay, -8
  br i1 %i.az, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv646 = phi i64 [ %indvars.iv.next647.7, %.lr.ph ], [ %indvars.iv646.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !9
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  store double %i.bb, ptr %gep, align 8, !tbaa !9
  %i.bc = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store double %i.be, ptr %gep.1, align 8, !tbaa !9
  %i.bg = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store double %i.bi, ptr %gep.2, align 8, !tbaa !9
  %i.bk = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.bl = getelementptr i8, ptr %i.bk, i64 24
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store double %i.bm, ptr %gep.3, align 8, !tbaa !9
  %i.bo = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.bp = getelementptr i8, ptr %i.bo, i64 32
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store double %i.bq, ptr %gep.4, align 8, !tbaa !9
  %i.bs = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.bt = getelementptr i8, ptr %i.bs, i64 40
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !9
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store double %i.bu, ptr %gep.5, align 8, !tbaa !9
  %i.bw = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.bx = getelementptr i8, ptr %i.bw, i64 48
  %i.by = load double, ptr %i.bx, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store double %i.by, ptr %gep.6, align 8, !tbaa !9
  %i.ca = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.cb = getelementptr i8, ptr %i.ca, i64 56
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !9
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv646
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  store double %i.cc, ptr %gep.7, align 8, !tbaa !9
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %indvars.iv.next647.7 = add nuw nsw i64 %indvars.iv646, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next647.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ar, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %indvars.iv.next.lcssa1607.unr, %.lr.ph.prol.loopexit ], [ %indvars.iv.next.7, %.lr.ph ]
  %i.ce = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

end_hunk_0
begin_hunk_1_@dtpttf_:bb.a
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !9
  %i.gn = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679
  store double %i.gm, ptr %i.gn, align 8, !tbaa !9
  %indvars.iv.next679.1 = add nsw i64 %indvars.iv.next679, %i.ex ; 2 uses
  %i.go = getelementptr [8 x i8], ptr %3, i64 %indvars.iv674
  %i.gp = getelementptr i8, ptr %i.go, i64 16
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !9
  %i.gr = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679.1
  store double %i.gq, ptr %i.gr, align 8, !tbaa !9
  %indvars.iv.next679.2 = add nsw i64 %indvars.iv.next679.1, %i.ex ; 2 uses
  %i.gs = getelementptr [8 x i8], ptr %3, i64 %indvars.iv674
  %i.gt = getelementptr i8, ptr %i.gs, i64 24
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !9
  %i.gv = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679.2
  store double %i.gu, ptr %i.gv, align 8, !tbaa !9
  %indvars.iv.next679.3 = add nsw i64 %indvars.iv.next679.2, %i.ex ; 2 uses
  %i.gw = getelementptr [8 x i8], ptr %3, i64 %indvars.iv674
  %i.gx = getelementptr i8, ptr %i.gw, i64 32
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !9
  %i.gz = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679.3
  store double %i.gy, ptr %i.gz, align 8, !tbaa !9
  %indvars.iv.next679.4 = add nsw i64 %indvars.iv.next679.3, %i.ex ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %3, i64 %indvars.iv674
  %i.hb = getelementptr i8, ptr %i.ha, i64 40
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !9
  %i.hd = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679.4
  store double %i.hc, ptr %i.hd, align 8, !tbaa !9
  %indvars.iv.next679.5 = add nsw i64 %indvars.iv.next679.4, %i.ex ; 2 uses
  %i.he = getelementptr [8 x i8], ptr %3, i64 %indvars.iv674
  %i.hf = getelementptr i8, ptr %i.he, i64 48
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !9
  %i.hh = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679.5
  store double %i.hg, ptr %i.hh, align 8, !tbaa !9
  %indvars.iv.next679.6 = add nsw i64 %indvars.iv.next679.5, %i.ex ; 2 uses
  %i.hi = getelementptr [8 x i8], ptr %3, i64 %indvars.iv674
  %i.hj = getelementptr i8, ptr %i.hi, i64 56
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !9
  %i.hl = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next679.6
  store double %i.hk, ptr %i.hl, align 8, !tbaa !9
  %indvars.iv.next675.7 = add nsw i64 %indvars.iv674, 8 ; 2 uses
  %indvars.iv.next679.7 = add nsw i64 %indvars.iv.next679.6, %i.ex
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next675.7 to i32
  %exitcond685.not.7 = icmp eq i32 %i.fl, %lftr.wideiv.7
  br i1 %exitcond685.not.7, label %.loopexit1575, label %vec.epilog.scalar.ph975, !llvm.loop !29

.loopexit1575:                                    ; preds = %vec.epilog.scalar.ph975.prol.loopexit, %vec.epilog.scalar.ph975, %vec.epilog.middle.block984, %middle.block970
  %indvars.iv.next677 = add i32 %indvars.iv676, 1
  %indvars.iv.next684 = add nuw i32 %indvars.iv683, 1
  %exitcond686.not = icmp eq i32 %indvars.iv683, %.
  %indvar.next = add i64 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.fb
  %loop-unroll.iv.next1612 = add i32 %loop-unroll.iv1611, %i.ez
  br i1 %exitcond686.not, label %._crit_edge465, label %iter.check974, !llvm.loop !30

._crit_edge465:                                   ; preds = %.loopexit1575, %bb.l
  %.4.lcssa = phi i32 [ 0, %bb.l ], [ %i.fl, %.loopexit1575 ]
  %.not408.not474 = icmp slt i32 %., %i.h
  br i1 %.not408.not474, label %.lr.ph479.preheader, label %.loopexit

.lr.ph479.preheader:                              ; preds = %._crit_edge465
  %i.hm = zext nneg i32 %.0328 to i64             ; 4 uses
  %i.hn = sext i32 %. to i64                      ; 2 uses
  %wide.trip.count702 = zext nneg i32 %i.h to i64
  %i.ho = shl nuw nsw i64 %i.hm, 3
  %i.hp = add nuw nsw i64 %i.hm, 1
  br label %.lr.ph479

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %._crit_edge472
  %indvar989 = phi i64 [ 0, %.lr.ph479.preheader ], [ %indvar.next990, %._crit_edge472 ] ; 4 uses
  %indvars.iv697 = phi i64 [ %i.hn, %.lr.ph479.preheader ], [ %indvars.iv.next698, %._crit_edge472 ] ; 3 uses
  %indvars.iv690 = phi i64 [ 0, %.lr.ph479.preheader ], [ %indvars.iv.next691, %._crit_edge472 ] ; 9 uses
  %.6477 = phi i32 [ %.4.lcssa, %.lr.ph479.preheader ], [ %.7.lcssa, %._crit_edge472 ] ; 2 uses
  %i.hq = mul i64 %i.hp, %indvar989
  %i.hr = add i64 %i.hq, %i.hn
  %smax = tail call i64 @llvm.smax.i64(i64 %i.hr, i64 %indvars.iv690)
  %i.hs = mul i64 %indvar989, %i.hm
  %reass.sub = sub i64 %smax, %i.hs
  %i.ht = add i64 %reass.sub, 1                   ; 7 uses
  %i.hu = mul i64 %i.ho, %indvar989
  %i.hv = add nsw i64 %indvars.iv690, %indvars.iv697
  %.not409467 = icmp slt i64 %indvars.iv697, 0
  br i1 %.not409467, label %._crit_edge472, label %iter.check1008

iter.check1008:                                   ; preds = %.lr.ph479
  %i.hw = sext i32 %.6477 to i64                  ; 7 uses
  %min.iters.check992 = icmp ult i64 %i.ht, 4
  br i1 %min.iters.check992, label %.lr.ph471.preheader, label %vector.memcheck988

vector.memcheck988:                               ; preds = %iter.check1008
  %i.hx = shl nsw i64 %i.hw, 3
  %i.hy = add i64 %i.hu, %i.b
  %i.hz = add i64 %i.hx, %i.a
  %i.ia = sub i64 %i.hz, %i.hy
  %diff.check991 = icmp ugt i64 %i.ia, -128
  br i1 %diff.check991, label %.lr.ph471.preheader, label %vector.main.loop.iter.check993

vector.main.loop.iter.check993:                   ; preds = %vector.memcheck988
  %min.iters.check994 = icmp ult i64 %i.ht, 16
  br i1 %min.iters.check994, label %vec.epilog.ph1012, label %vector.ph995

vector.ph995:                                     ; preds = %vector.main.loop.iter.check993
  %i.ib = and i64 %i.ht, 12
  %n.vec996 = and i64 %i.ht, -16                  ; 5 uses
  %i.ic = add i64 %indvars.iv690, %n.vec996
  %i.id = add i64 %n.vec996, %i.hw                ; 2 uses
  %invariant.gep1656 = getelementptr [8 x i8], ptr %3, i64 %i.hw
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv690
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %vector.ph995
  %index998 = phi i64 [ 0, %vector.ph995 ], [ %index.next1003, %vector.body997 ] ; 3 uses
  %gep1657 = getelementptr [8 x i8], ptr %invariant.gep1656, i64 %index998 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %gep1657, i64 32
  %i.ig = getelementptr inbounds nuw i8, ptr %gep1657, i64 64
  %i.ih = getelementptr inbounds nuw i8, ptr %gep1657, i64 96
  %wide.load999 = load <4 x double>, ptr %gep1657, align 8, !tbaa !9
  %wide.load1000 = load <4 x double>, ptr %i.if, align 8, !tbaa !9
  %wide.load1001 = load <4 x double>, ptr %i.ig, align 8, !tbaa !9
  %wide.load1002 = load <4 x double>, ptr %i.ih, align 8, !tbaa !9
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %index998 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 96
  store <4 x double> %wide.load999, ptr %i.ii, align 8, !tbaa !9
  store <4 x double> %wide.load1000, ptr %i.ij, align 8, !tbaa !9
  store <4 x double> %wide.load1001, ptr %i.ik, align 8, !tbaa !9
  store <4 x double> %wide.load1002, ptr %i.il, align 8, !tbaa !9
  %index.next1003 = add nuw i64 %index998, 16     ; 2 uses
  %i.im = icmp eq i64 %index.next1003, %n.vec996
  br i1 %i.im, label %middle.block1004, label %vector.body997, !llvm.loop !31

middle.block1004:                                 ; preds = %vector.body997
  %cmp.n1005 = icmp eq i64 %i.ht, %n.vec996
  br i1 %cmp.n1005, label %._crit_edge472.loopexit, label %vec.epilog.iter.check1010

vec.epilog.iter.check1010:                        ; preds = %middle.block1004
  %min.epilog.iters.check1011 = icmp eq i64 %i.ib, 0
  br i1 %min.epilog.iters.check1011, label %.lr.ph471.preheader, label %vec.epilog.ph1012, !prof !15

vec.epilog.ph1012:                                ; preds = %vector.main.loop.iter.check993, %vec.epilog.iter.check1010
  %vec.epilog.resume.val1006 = phi i64 [ %n.vec996, %vec.epilog.iter.check1010 ], [ 0, %vector.main.loop.iter.check993 ]
  %n.vec1013 = and i64 %i.ht, -4                  ; 4 uses
  %i.in = add i64 %indvars.iv690, %n.vec1013
  %i.io = add i64 %n.vec1013, %i.hw               ; 2 uses
  %invariant.gep1658 = getelementptr [8 x i8], ptr %3, i64 %i.hw
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv690
  br label %vec.epilog.vector.body1014

vec.epilog.vector.body1014:                       ; preds = %vec.epilog.vector.body1014, %vec.epilog.ph1012
  %index1015 = phi i64 [ %vec.epilog.resume.val1006, %vec.epilog.ph1012 ], [ %index.next1017, %vec.epilog.vector.body1014 ] ; 3 uses
  %gep1659 = getelementptr [8 x i8], ptr %invariant.gep1658, i64 %index1015
  %wide.load1016 = load <4 x double>, ptr %gep1659, align 8, !tbaa !9
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %index1015
  store <4 x double> %wide.load1016, ptr %i.iq, align 8, !tbaa !9
  %index.next1017 = add nuw i64 %index1015, 4     ; 2 uses
  %i.ir = icmp eq i64 %index.next1017, %n.vec1013
  br i1 %i.ir, label %vec.epilog.middle.block1018, label %vec.epilog.vector.body1014, !llvm.loop !32

vec.epilog.middle.block1018:                      ; preds = %vec.epilog.vector.body1014
  %cmp.n1019 = icmp eq i64 %i.ht, %n.vec1013
  br i1 %cmp.n1019, label %._crit_edge472.loopexit, label %.lr.ph471.preheader

.lr.ph471.preheader:                              ; preds = %vector.memcheck988, %iter.check1008, %vec.epilog.iter.check1010, %vec.epilog.middle.block1018
  %indvars.iv692.ph = phi i64 [ %indvars.iv690, %iter.check1008 ], [ %indvars.iv690, %vector.memcheck988 ], [ %i.ic, %vec.epilog.iter.check1010 ], [ %i.in, %vec.epilog.middle.block1018 ]
  %indvars.iv688.ph = phi i64 [ %i.hw, %iter.check1008 ], [ %i.hw, %vector.memcheck988 ], [ %i.id, %vec.epilog.iter.check1010 ], [ %i.io, %vec.epilog.middle.block1018 ]
  br label %.lr.ph471

.lr.ph471:                                        ; preds = %.lr.ph471.preheader, %.lr.ph471
  %indvars.iv692 = phi i64 [ %indvars.iv.next693, %.lr.ph471 ], [ %indvars.iv692.ph, %.lr.ph471.preheader ] ; 3 uses
  %indvars.iv688 = phi i64 [ %indvars.iv.next689, %.lr.ph471 ], [ %indvars.iv688.ph, %.lr.ph471.preheader ] ; 2 uses
  %i.is = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv688
  %i.it = load double, ptr %i.is, align 8, !tbaa !9
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv692
  store double %i.it, ptr %i.iu, align 8, !tbaa !9
  %indvars.iv.next689 = add nsw i64 %indvars.iv688, 1 ; 2 uses
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1
  %.not409.not = icmp slt i64 %indvars.iv692, %i.hv
  br i1 %.not409.not, label %.lr.ph471, label %._crit_edge472.loopexit, !llvm.loop !33

._crit_edge472.loopexit:                          ; preds = %.lr.ph471, %vec.epilog.middle.block1018, %middle.block1004
  %indvars.iv.next689.lcssa = phi i64 [ %i.io, %vec.epilog.middle.block1018 ], [ %i.id, %middle.block1004 ], [ %indvars.iv.next689, %.lr.ph471 ]
  %i.iv = trunc nsw i64 %indvars.iv.next689.lcssa to i32
  br label %._crit_edge472

._crit_edge472:                                   ; preds = %._crit_edge472.loopexit, %.lr.ph479
  %.7.lcssa = phi i32 [ %.6477, %.lr.ph479 ], [ %i.iv, %._crit_edge472.loopexit ]
  %indvars.iv.next691 = add i64 %indvars.iv690, %i.hm
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
  %i.iw = mul nuw nsw i32 %i.s, %i.h              ; 2 uses
  %i.ix = add nuw nsw i32 %i.s, 1
  %i.iy = zext nneg i32 %i.s to i64               ; 16 uses
  %i.iz = add nuw nsw i64 %i.iy, 1
  %i.ja = zext nneg i32 %i.iw to i64              ; 3 uses
  %i.jb = shl nuw nsw i64 %i.iy, 3
  %i.jc = add nuw nsw i64 %i.jb, 8
  %i.jd = shl nuw nsw i64 %i.iy, 3
  %i.je = xor i64 %i.iy, -1                       ; 2 uses
  %scevgep1171 = getelementptr i8, ptr %3, i64 8
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.iy, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jf = shl nuw nsw <4 x i64> %broadcast.splat, splat (i64 2) ; 5 uses
  %i.jg = mul nuw nsw <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op = add nuw nsw <4 x i64> %i.jf, %i.jf ; 2 uses
  %invariant.op1672 = add nuw nsw <4 x i64> %invariant.op, %i.jf ; 2 uses
  %invariant.op1675 = add nuw nsw <4 x i64> %invariant.op1672, %i.jf
  %broadcast.splatinsert1205 = insertelement <4 x i64> poison, i64 %i.iy, i64 0
  %broadcast.splat1206 = shufflevector <4 x i64> %broadcast.splatinsert1205, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.jh = mul nuw nsw <4 x i64> %broadcast.splat1206, <i64 0, i64 1, i64 2, i64 3>
  %i.ji = shl nuw nsw i64 %i.iy, 2
  %broadcast.splatinsert1208 = insertelement <4 x i64> poison, i64 %i.ji, i64 0
  %broadcast.splat1209 = shufflevector <4 x i64> %broadcast.splatinsert1208, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph534, %._crit_edge528
  %indvar1162 = phi i64 [ 0, %.lr.ph534 ], [ %indvar.next1163, %._crit_edge528 ] ; 4 uses
  %indvars.iv768 = phi i64 [ 0, %.lr.ph534 ], [ %indvars.iv.next769, %._crit_edge528 ] ; 9 uses
  %.8532 = phi i32 [ 0, %.lr.ph534 ], [ %.9.lcssa, %._crit_edge528 ] ; 2 uses
  %.3369531 = phi i32 [ 0, %.lr.ph534 ], [ %i.kn, %._crit_edge528 ] ; 3 uses
  %i.jj = mul i64 %i.jc, %indvar1162
  %scevgep = getelementptr i8, ptr %4, i64 %i.jj  ; 5 uses
  %i.jk = add nuw i64 %indvars.iv768, %i.iy
  %umax1164 = tail call i64 @llvm.umax.i64(i64 %i.jk, i64 %i.ja)
  %i.jl = mul i64 %indvar1162, %i.je
  %i.jm = sub i64 %i.jl, %i.iy
  %i.jn = add i64 %umax1164, %i.jm                ; 2 uses
  %i.jo = icmp ne i64 %i.jn, 0
  %umin = zext i1 %i.jo to i64                    ; 2 uses
  %i.jp = sub i64 %i.jn, %umin
  %i.jq = mul nsw i32 %.3369531, %i.ix
  %i.jr = icmp slt i32 %i.jq, %i.iw
  br i1 %i.jr, label %iter.check1197, label %._crit_edge528

iter.check1197:                                   ; preds = %bb.o
  %6 = add nuw i64 %indvars.iv768, %i.iy
  %umax1173 = tail call i64 @llvm.umax.i64(i64 %6, i64 %i.ja)
  %7 = mul i64 %indvar1162, %i.je
  %8 = sub i64 %7, %i.iy
  %9 = add i64 %umax1173, %8                      ; 2 uses
  %10 = icmp ne i64 %9, 0                         ; 2 uses
  %umin1174.neg = sext i1 %10 to i64
  %11 = add i64 %9, %umin1174.neg
  %i.js = sext i32 %.8532 to i64                  ; 8 uses
  %12 = select i1 %10, i64 2, i64 1
  %13 = udiv i64 %11, %i.iy
  %14 = add i64 %12, %13                          ; 7 uses
  %min.iters.check1176 = icmp ult i64 %14, 4
  br i1 %min.iters.check1176, label %.lr.ph527.preheader, label %vector.memcheck1161

vector.memcheck1161:                              ; preds = %iter.check1197
  %15 = udiv i64 %i.jp, %i.iy
  %16 = add i64 %15, %umin                        ; 2 uses
  %17 = mul i64 %i.jd, %16
  %scevgep1166 = getelementptr i8, ptr %scevgep, i64 %17 ; 4 uses
  %18 = icmp ult ptr %scevgep, %scevgep1166
  %umin1167 = select i1 %18, ptr %scevgep, ptr %scevgep1166
  %19 = icmp ugt ptr %scevgep, %scevgep1166
  %umax1168 = select i1 %19, ptr %scevgep, ptr %scevgep1166
  %scevgep1169 = getelementptr i8, ptr %umax1168, i64 8
  %i.jt = shl nsw i64 %i.js, 3
  %scevgep1170 = getelementptr i8, ptr %3, i64 %i.jt
  %i.ju = add i64 %16, %i.js
  %i.jv = shl i64 %i.ju, 3
  %scevgep1172 = getelementptr i8, ptr %scevgep1171, i64 %i.jv
  %bound0 = icmp ult ptr %umin1167, %scevgep1172
  %bound1 = icmp ult ptr %scevgep1170, %scevgep1169
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph527.preheader, label %vector.main.loop.iter.check1177

vector.main.loop.iter.check1177:                  ; preds = %vector.memcheck1161
  %min.iters.check1178 = icmp ult i64 %14, 16
  br i1 %min.iters.check1178, label %vec.epilog.ph1201, label %vector.ph1179

vector.ph1179:                                    ; preds = %vector.main.loop.iter.check1177
  %i.jw = and i64 %14, 12
  %n.vec1180 = and i64 %14, -16                   ; 5 uses
  %i.jx = mul i64 %n.vec1180, %i.iy
  %i.jy = add i64 %indvars.iv768, %i.jx           ; 2 uses
  %i.jz = add i64 %n.vec1180, %i.js               ; 2 uses
  %broadcast.splatinsert1181 = insertelement <4 x i64> poison, i64 %indvars.iv768, i64 0
  %broadcast.splat1182 = shufflevector <4 x i64> %broadcast.splatinsert1181, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat1182, %i.jg
  %invariant.gep1673 = getelementptr [8 x i8], ptr %3, i64 %i.js
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %vector.ph1179
  %index1184 = phi i64 [ 0, %vector.ph1179 ], [ %index.next1192, %vector.body1183 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph1179 ], [ %vec.ind.next.reass, %vector.body1183 ] ; 5 uses
  %step.add = add nuw nsw <4 x i64> %vec.ind, %i.jf
  %step.add.2.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op
  %step.add.3.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1672
  %gep1674 = getelementptr [8 x i8], ptr %invariant.gep1673, i64 %index1184 ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %gep1674, i64 32
  %i.kb = getelementptr inbounds nuw i8, ptr %gep1674, i64 64
  %i.kc = getelementptr inbounds nuw i8, ptr %gep1674, i64 96
  %wide.load1185 = load <4 x double>, ptr %gep1674, align 8, !tbaa !9, !alias.scope !35
  %wide.load1186 = load <4 x double>, ptr %i.ka, align 8, !tbaa !9, !alias.scope !35
  %wide.load1187 = load <4 x double>, ptr %i.kb, align 8, !tbaa !9, !alias.scope !35
  %wide.load1188 = load <4 x double>, ptr %i.kc, align 8, !tbaa !9, !alias.scope !35
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind
  %wide.gep1189 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add
  %wide.gep1190 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.2.reass
  %wide.gep1191 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.3.reass
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1185, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !38, !noalias !35
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1186, <4 x ptr> align 8 %wide.gep1189, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !38, !noalias !35
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1187, <4 x ptr> align 8 %wide.gep1190, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !38, !noalias !35
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1188, <4 x ptr> align 8 %wide.gep1191, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !38, !noalias !35
  %index.next1192 = add nuw i64 %index1184, 16    ; 2 uses
  %vec.ind.next.reass = add nuw nsw <4 x i64> %vec.ind, %invariant.op1675
  %i.kd = icmp eq i64 %index.next1192, %n.vec1180
  br i1 %i.kd, label %middle.block1193, label %vector.body1183, !llvm.loop !40

middle.block1193:                                 ; preds = %vector.body1183
  %cmp.n1194 = icmp eq i64 %14, %n.vec1180
  br i1 %cmp.n1194, label %._crit_edge528.loopexit, label %vec.epilog.iter.check1199

vec.epilog.iter.check1199:                        ; preds = %middle.block1193
  %min.epilog.iters.check1200 = icmp eq i64 %i.jw, 0
  br i1 %min.epilog.iters.check1200, label %.lr.ph527.preheader, label %vec.epilog.ph1201, !prof !15

vec.epilog.ph1201:                                ; preds = %vector.main.loop.iter.check1177, %vec.epilog.iter.check1199
  %vec.epilog.resume.val1195 = phi i64 [ %n.vec1180, %vec.epilog.iter.check1199 ], [ 0, %vector.main.loop.iter.check1177 ]
  %bc.resume.val = phi i64 [ %i.jy, %vec.epilog.iter.check1199 ], [ %indvars.iv768, %vector.main.loop.iter.check1177 ]
  %n.vec1202 = and i64 %14, -4                    ; 4 uses
  %i.ke = mul i64 %n.vec1202, %i.iy
  %i.kf = add i64 %indvars.iv768, %i.ke
  %i.kg = add i64 %n.vec1202, %i.js               ; 2 uses
  %broadcast.splatinsert1203 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat1204 = shufflevector <4 x i64> %broadcast.splatinsert1203, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1207 = add nuw nsw <4 x i64> %broadcast.splat1204, %i.jh
  %invariant.gep1676 = getelementptr [8 x i8], ptr %3, i64 %i.js
  br label %vec.epilog.vector.body1210

vec.epilog.vector.body1210:                       ; preds = %vec.epilog.vector.body1210, %vec.epilog.ph1201
  %index1211 = phi i64 [ %vec.epilog.resume.val1195, %vec.epilog.ph1201 ], [ %index.next1215, %vec.epilog.vector.body1210 ] ; 2 uses
  %vec.ind1212 = phi <4 x i64> [ %induction1207, %vec.epilog.ph1201 ], [ %vec.ind.next1216, %vec.epilog.vector.body1210 ] ; 2 uses
  %gep1677 = getelementptr [8 x i8], ptr %invariant.gep1676, i64 %index1211
  %wide.load1213 = load <4 x double>, ptr %gep1677, align 8, !tbaa !9, !alias.scope !35
  %wide.gep1214 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1212
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1213, <4 x ptr> align 8 %wide.gep1214, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !38, !noalias !35
  %index.next1215 = add nuw i64 %index1211, 4     ; 2 uses
  %vec.ind.next1216 = add nuw nsw <4 x i64> %vec.ind1212, %broadcast.splat1209
  %i.kh = icmp eq i64 %index.next1215, %n.vec1202
  br i1 %i.kh, label %vec.epilog.middle.block1217, label %vec.epilog.vector.body1210, !llvm.loop !41

vec.epilog.middle.block1217:                      ; preds = %vec.epilog.vector.body1210
  %cmp.n1218 = icmp eq i64 %14, %n.vec1202
  br i1 %cmp.n1218, label %._crit_edge528.loopexit, label %.lr.ph527.preheader

.lr.ph527.preheader:                              ; preds = %vector.memcheck1161, %iter.check1197, %vec.epilog.iter.check1199, %vec.epilog.middle.block1217
  %indvars.iv770.ph = phi i64 [ %indvars.iv768, %iter.check1197 ], [ %indvars.iv768, %vector.memcheck1161 ], [ %i.jy, %vec.epilog.iter.check1199 ], [ %i.kf, %vec.epilog.middle.block1217 ]
  %indvars.iv766.ph = phi i64 [ %i.js, %iter.check1197 ], [ %i.js, %vector.memcheck1161 ], [ %i.jz, %vec.epilog.iter.check1199 ], [ %i.kg, %vec.epilog.middle.block1217 ]
  br label %.lr.ph527

.lr.ph527:                                        ; preds = %.lr.ph527.preheader, %.lr.ph527
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %.lr.ph527 ], [ %indvars.iv770.ph, %.lr.ph527.preheader ] ; 2 uses
  %indvars.iv766 = phi i64 [ %indvars.iv.next767, %.lr.ph527 ], [ %indvars.iv766.ph, %.lr.ph527.preheader ] ; 2 uses
  %i.ki = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv766
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !9
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv770
  store double %i.kj, ptr %i.kk, align 8, !tbaa !9
  %indvars.iv.next767 = add nsw i64 %indvars.iv766, 1 ; 2 uses
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, %i.iy ; 2 uses
  %i.kl = icmp samesign ult i64 %indvars.iv.next771, %i.ja
  br i1 %i.kl, label %.lr.ph527, label %._crit_edge528.loopexit, !llvm.loop !42

._crit_edge528.loopexit:                          ; preds = %.lr.ph527, %vec.epilog.middle.block1217, %middle.block1193
  %indvars.iv.next767.lcssa = phi i64 [ %i.kg, %vec.epilog.middle.block1217 ], [ %i.jz, %middle.block1193 ], [ %indvars.iv.next767, %.lr.ph527 ]
  %i.km = trunc nsw i64 %indvars.iv.next767.lcssa to i32
  br label %._crit_edge528

._crit_edge528:                                   ; preds = %._crit_edge528.loopexit, %bb.o
  %.9.lcssa = phi i32 [ %.8532, %bb.o ], [ %i.km, %._crit_edge528.loopexit ] ; 2 uses
  %i.kn = add nuw i32 %.3369531, 1
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, %i.iz
  %exitcond775.not = icmp eq i32 %.3369531, %.901
  %indvar.next1163 = add i64 %indvar1162, 1
  br i1 %exitcond775.not, label %._crit_edge535, label %bb.o, !llvm.loop !43

._crit_edge535:                                   ; preds = %._crit_edge528
  %.not404.not544.not = icmp eq i32 %.901, 0
  br i1 %.not404.not544.not, label %.loopexit, label %.lr.ph549

.lr.ph549:                                        ; preds = %._crit_edge535
  %i.ko = add nuw nsw i32 %i.s, 1
  %i.kp = add nuw i32 %.901, 1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph549, %._crit_edge542
  %indvars.iv786 = phi i32 [ %i.kp, %.lr.ph549 ], [ %indvars.iv.next787, %._crit_edge542 ] ; 3 uses
  %indvars.iv779 = phi i32 [ 1, %.lr.ph549 ], [ %indvars.iv.next780, %._crit_edge542 ] ; 5 uses
  %.10547 = phi i32 [ %.9.lcssa, %.lr.ph549 ], [ %.11.lcssa, %._crit_edge542 ] ; 2 uses
  %.4358545 = phi i32 [ 0, %.lr.ph549 ], [ %i.no, %._crit_edge542 ] ; 4 uses
  %i.kq = mul i32 %i.s, %.4358545
  %i.kr = add i32 %.901, %i.kq
  %i.ks = xor i32 %.4358545, -1
  %i.kt = add nsw i32 %.901, %i.ks                ; 3 uses
  %i.ku = zext i32 %i.kt to i64
  %i.kv = add nuw nsw i64 %i.ku, 1                ; 5 uses
  %i.kw = sext i32 %indvars.iv779 to i64
  %i.kx = shl nsw i64 %i.kw, 3
  %i.ky = xor i32 %.4358545, -1
  %i.kz = add nsw i32 %.901, %i.ky
  %i.la = add i32 %i.kz, %indvars.iv779
  %.not405537 = icmp sgt i32 %indvars.iv779, %i.la
  br i1 %.not405537, label %._crit_edge542, label %iter.check1240

iter.check1240:                                   ; preds = %bb.p
  %i.lb = sext i32 %indvars.iv779 to i64          ; 6 uses
  %i.lc = sext i32 %.10547 to i64                 ; 7 uses
  %min.iters.check1223 = icmp ult i32 %i.kt, 3
  br i1 %min.iters.check1223, label %.lr.ph541.preheader, label %vector.memcheck1221

vector.memcheck1221:                              ; preds = %iter.check1240
  %i.ld = shl nsw i64 %i.lc, 3
  %i.le = add i64 %i.kx, %i.b
  %i.lf = add i64 %i.ld, %i.a
  %i.lg = sub i64 %i.lf, %i.le
  %diff.check1222 = icmp ugt i64 %i.lg, -128
  br i1 %diff.check1222, label %.lr.ph541.preheader, label %vector.main.loop.iter.check1224

vector.main.loop.iter.check1224:                  ; preds = %vector.memcheck1221
  %min.iters.check1225 = icmp ult i32 %i.kt, 15
  br i1 %min.iters.check1225, label %vec.epilog.ph1244, label %vector.ph1226

vector.ph1226:                                    ; preds = %vector.main.loop.iter.check1224
  %i.lh = and i64 %i.kv, 12
  %n.vec1227 = and i64 %i.kv, 8589934576          ; 5 uses
  %i.li = add nsw i64 %n.vec1227, %i.lb
  %i.lj = add nsw i64 %n.vec1227, %i.lc           ; 2 uses
  %invariant.gep1678 = getelementptr [8 x i8], ptr %3, i64 %i.lc
  %invariant.gep1680 = getelementptr [8 x i8], ptr %4, i64 %i.lb
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %vector.ph1226
  %index1229 = phi i64 [ 0, %vector.ph1226 ], [ %index.next1234, %vector.body1228 ] ; 3 uses
  %gep1679 = getelementptr [8 x i8], ptr %invariant.gep1678, i64 %index1229 ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %gep1679, i64 32
  %i.ll = getelementptr inbounds nuw i8, ptr %gep1679, i64 64
  %i.lm = getelementptr inbounds nuw i8, ptr %gep1679, i64 96
  %wide.load1230 = load <4 x double>, ptr %gep1679, align 8, !tbaa !9
  %wide.load1231 = load <4 x double>, ptr %i.lk, align 8, !tbaa !9
  %wide.load1232 = load <4 x double>, ptr %i.ll, align 8, !tbaa !9
  %wide.load1233 = load <4 x double>, ptr %i.lm, align 8, !tbaa !9
  %gep1681 = getelementptr [8 x i8], ptr %invariant.gep1680, i64 %index1229 ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %gep1681, i64 32
  %i.lo = getelementptr inbounds nuw i8, ptr %gep1681, i64 64
  %i.lp = getelementptr inbounds nuw i8, ptr %gep1681, i64 96
  store <4 x double> %wide.load1230, ptr %gep1681, align 8, !tbaa !9
  store <4 x double> %wide.load1231, ptr %i.ln, align 8, !tbaa !9
  store <4 x double> %wide.load1232, ptr %i.lo, align 8, !tbaa !9
  store <4 x double> %wide.load1233, ptr %i.lp, align 8, !tbaa !9
  %index.next1234 = add nuw i64 %index1229, 16    ; 2 uses
  %i.lq = icmp eq i64 %index.next1234, %n.vec1227
  br i1 %i.lq, label %middle.block1235, label %vector.body1228, !llvm.loop !44

middle.block1235:                                 ; preds = %vector.body1228
  %cmp.n1236 = icmp eq i64 %i.kv, %n.vec1227
  br i1 %cmp.n1236, label %._crit_edge542.loopexit, label %vec.epilog.iter.check1242
end_hunk_1
begin_hunk_2_@dtpttf_:bb.a
  %i.nc = getelementptr i8, ptr %i.nb, i64 40
  store double %i.na, ptr %i.nc, align 8, !tbaa !9
  %i.nd = getelementptr [8 x i8], ptr %3, i64 %indvars.iv777
  %i.ne = getelementptr i8, ptr %i.nd, i64 48
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !9
  %i.ng = getelementptr [8 x i8], ptr %4, i64 %indvars.iv781
  %i.nh = getelementptr i8, ptr %i.ng, i64 48
  store double %i.nf, ptr %i.nh, align 8, !tbaa !9
  %i.ni = getelementptr [8 x i8], ptr %3, i64 %indvars.iv777
  %i.nj = getelementptr i8, ptr %i.ni, i64 56
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !9
  %i.nl = getelementptr [8 x i8], ptr %4, i64 %indvars.iv781
  %i.nm = getelementptr i8, ptr %i.nl, i64 56
  store double %i.nk, ptr %i.nm, align 8, !tbaa !9
  %indvars.iv.next778.7 = add nsw i64 %indvars.iv777, 8 ; 2 uses
  %indvars.iv.next782.7 = add nsw i64 %indvars.iv781, 8 ; 2 uses
  %lftr.wideiv788.7 = trunc i64 %indvars.iv.next782.7 to i32
  %exitcond789.not.7 = icmp eq i32 %indvars.iv786, %lftr.wideiv788.7
  br i1 %exitcond789.not.7, label %._crit_edge542.loopexit, label %.lr.ph541, !llvm.loop !47

._crit_edge542.loopexit:                          ; preds = %.lr.ph541.prol.loopexit, %.lr.ph541, %vec.epilog.middle.block1250, %middle.block1235
  %indvars.iv.next778.lcssa = phi i64 [ %i.ls, %vec.epilog.middle.block1250 ], [ %i.lj, %middle.block1235 ], [ %indvars.iv.next778.lcssa1596.unr, %.lr.ph541.prol.loopexit ], [ %indvars.iv.next778.7, %.lr.ph541 ]
  %i.nn = trunc nsw i64 %indvars.iv.next778.lcssa to i32
  br label %._crit_edge542

._crit_edge542:                                   ; preds = %._crit_edge542.loopexit, %bb.p
  %.11.lcssa = phi i32 [ %.10547, %bb.p ], [ %i.nn, %._crit_edge542.loopexit ]
  %indvars.iv.next780 = add i32 %indvars.iv779, %i.ko
  %i.no = add nuw nsw i32 %.4358545, 1            ; 2 uses
  %indvars.iv.next787 = add i32 %indvars.iv786, %i.s
  %exitcond790.not = icmp eq i32 %i.no, %.901
  br i1 %exitcond790.not, label %.loopexit, label %bb.p, !llvm.loop !48

bb.q:                                             ; preds = %bb.m
  %.not399.not552 = icmp sgt i32 %., 0
  br i1 %.not399.not552, label %.lr.ph557.preheader, label %._crit_edge558

.lr.ph557.preheader:                              ; preds = %bb.q
  %i.np = mul i32 %.901, %i.s
  %i.nq = sext i32 %i.np to i64                   ; 4 uses
  %i.nr = zext nneg i32 %i.s to i64               ; 4 uses
  %wide.trip.count806 = zext nneg i32 %. to i64
  %i.ns = shl nsw i64 %i.nq, 3
  %i.nt = add i64 %i.ns, %i.b
  %i.nu = shl nuw nsw i64 %i.nr, 3
  %i.nv = add nuw nsw i64 %i.nr, 1
  br label %iter.check1274

iter.check1274:                                   ; preds = %.lr.ph557.preheader, %.loopexit1573
  %indvars.iv801 = phi i64 [ 0, %.lr.ph557.preheader ], [ %indvars.iv.next802, %.loopexit1573 ] ; 5 uses
  %indvars.iv794 = phi i64 [ %i.nq, %.lr.ph557.preheader ], [ %indvars.iv.next795, %.loopexit1573 ] ; 9 uses
  %.12555 = phi i64 [ 0, %.lr.ph557.preheader ], [ %indvars.iv.next793.lcssa, %.loopexit1573 ] ; 7 uses
  %i.nw = mul i64 %i.nv, %indvars.iv801
  %i.nx = add i64 %i.nw, %i.nq
  %smax1256 = tail call i64 @llvm.smax.i64(i64 %indvars.iv794, i64 %i.nx)
  %i.ny = mul i64 %indvars.iv801, %i.nr
  %i.nz = add i64 %i.ny, %i.nq
  %reass.sub1577 = sub i64 %smax1256, %i.nz
  %i.oa = add i64 %reass.sub1577, 1               ; 7 uses
  %i.ob = add nsw i64 %indvars.iv794, %indvars.iv801
  %min.iters.check1257 = icmp ult i64 %i.oa, 4
  br i1 %min.iters.check1257, label %vec.epilog.scalar.ph1275.preheader, label %vector.memcheck1254

vector.memcheck1254:                              ; preds = %iter.check1274
  %i.oc = mul i64 %i.nu, %indvars.iv801
  %i.od = shl i64 %.12555, 3
  %i.oe = add i64 %i.nt, %i.oc
  %i.of = add i64 %i.od, %i.a
  %i.og = sub i64 %i.of, %i.oe
  %diff.check1255 = icmp ugt i64 %i.og, -128
  br i1 %diff.check1255, label %vec.epilog.scalar.ph1275.preheader, label %vector.main.loop.iter.check1258

vector.main.loop.iter.check1258:                  ; preds = %vector.memcheck1254
  %min.iters.check1259 = icmp ult i64 %i.oa, 16
  br i1 %min.iters.check1259, label %vec.epilog.ph1278, label %vector.ph1260

vector.ph1260:                                    ; preds = %vector.main.loop.iter.check1258
  %i.oh = and i64 %i.oa, 12
  %n.vec1261 = and i64 %i.oa, -16                 ; 5 uses
  %i.oi = add i64 %indvars.iv794, %n.vec1261
  %i.oj = add i64 %.12555, %n.vec1261             ; 2 uses
  %i.ok = getelementptr [8 x i8], ptr %3, i64 %.12555
  %i.ol = getelementptr [8 x i8], ptr %4, i64 %indvars.iv794
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1260
  %index1263 = phi i64 [ 0, %vector.ph1260 ], [ %index.next1268, %vector.body1262 ] ; 3 uses
  %i.om = getelementptr [8 x i8], ptr %i.ok, i64 %index1263 ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 32
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 64
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 96
  %wide.load1264 = load <4 x double>, ptr %i.om, align 8, !tbaa !9
  %wide.load1265 = load <4 x double>, ptr %i.on, align 8, !tbaa !9
  %wide.load1266 = load <4 x double>, ptr %i.oo, align 8, !tbaa !9
  %wide.load1267 = load <4 x double>, ptr %i.op, align 8, !tbaa !9
  %i.oq = getelementptr [8 x i8], ptr %i.ol, i64 %index1263 ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 96
  store <4 x double> %wide.load1264, ptr %i.oq, align 8, !tbaa !9
  store <4 x double> %wide.load1265, ptr %i.or, align 8, !tbaa !9
  store <4 x double> %wide.load1266, ptr %i.os, align 8, !tbaa !9
  store <4 x double> %wide.load1267, ptr %i.ot, align 8, !tbaa !9
  %index.next1268 = add nuw i64 %index1263, 16    ; 2 uses
  %i.ou = icmp eq i64 %index.next1268, %n.vec1261
  br i1 %i.ou, label %middle.block1269, label %vector.body1262, !llvm.loop !49

middle.block1269:                                 ; preds = %vector.body1262
  %cmp.n1270 = icmp eq i64 %i.oa, %n.vec1261
  br i1 %cmp.n1270, label %.loopexit1573, label %vec.epilog.iter.check1276

vec.epilog.iter.check1276:                        ; preds = %middle.block1269
  %min.epilog.iters.check1277 = icmp eq i64 %i.oh, 0
  br i1 %min.epilog.iters.check1277, label %vec.epilog.scalar.ph1275.preheader, label %vec.epilog.ph1278, !prof !15

vec.epilog.ph1278:                                ; preds = %vector.main.loop.iter.check1258, %vec.epilog.iter.check1276
  %vec.epilog.resume.val1271 = phi i64 [ %n.vec1261, %vec.epilog.iter.check1276 ], [ 0, %vector.main.loop.iter.check1258 ]
  %n.vec1279 = and i64 %i.oa, -4                  ; 4 uses
  %i.ov = add i64 %indvars.iv794, %n.vec1279
  %i.ow = add i64 %.12555, %n.vec1279             ; 2 uses
  %i.ox = getelementptr [8 x i8], ptr %3, i64 %.12555
  %i.oy = getelementptr [8 x i8], ptr %4, i64 %indvars.iv794
  br label %vec.epilog.vector.body1280

vec.epilog.vector.body1280:                       ; preds = %vec.epilog.vector.body1280, %vec.epilog.ph1278
  %index1281 = phi i64 [ %vec.epilog.resume.val1271, %vec.epilog.ph1278 ], [ %index.next1283, %vec.epilog.vector.body1280 ] ; 3 uses
  %i.oz = getelementptr [8 x i8], ptr %i.ox, i64 %index1281
  %wide.load1282 = load <4 x double>, ptr %i.oz, align 8, !tbaa !9
  %i.pa = getelementptr [8 x i8], ptr %i.oy, i64 %index1281
  store <4 x double> %wide.load1282, ptr %i.pa, align 8, !tbaa !9
  %index.next1283 = add nuw i64 %index1281, 4     ; 2 uses
  %i.pb = icmp eq i64 %index.next1283, %n.vec1279
  br i1 %i.pb, label %vec.epilog.middle.block1284, label %vec.epilog.vector.body1280, !llvm.loop !50

vec.epilog.middle.block1284:                      ; preds = %vec.epilog.vector.body1280
  %cmp.n1285 = icmp eq i64 %i.oa, %n.vec1279
  br i1 %cmp.n1285, label %.loopexit1573, label %vec.epilog.scalar.ph1275.preheader

vec.epilog.scalar.ph1275.preheader:               ; preds = %vector.memcheck1254, %iter.check1274, %vec.epilog.iter.check1276, %vec.epilog.middle.block1284
  %indvars.iv796.ph = phi i64 [ %indvars.iv794, %iter.check1274 ], [ %indvars.iv794, %vector.memcheck1254 ], [ %i.oi, %vec.epilog.iter.check1276 ], [ %i.ov, %vec.epilog.middle.block1284 ]
  %indvars.iv792.ph = phi i64 [ %.12555, %iter.check1274 ], [ %.12555, %vector.memcheck1254 ], [ %i.oj, %vec.epilog.iter.check1276 ], [ %i.ow, %vec.epilog.middle.block1284 ]
  br label %vec.epilog.scalar.ph1275

vec.epilog.scalar.ph1275:                         ; preds = %vec.epilog.scalar.ph1275.preheader, %vec.epilog.scalar.ph1275
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %vec.epilog.scalar.ph1275 ], [ %indvars.iv796.ph, %vec.epilog.scalar.ph1275.preheader ] ; 3 uses
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %vec.epilog.scalar.ph1275 ], [ %indvars.iv792.ph, %vec.epilog.scalar.ph1275.preheader ] ; 2 uses
  %i.pc = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv792
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !9
  %i.pe = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv796
  store double %i.pd, ptr %i.pe, align 8, !tbaa !9
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, 1 ; 2 uses
  %indvars.iv.next797 = add nsw i64 %indvars.iv796, 1
  %.not402.not = icmp slt i64 %indvars.iv796, %i.ob
  br i1 %.not402.not, label %vec.epilog.scalar.ph1275, label %.loopexit1573, !llvm.loop !51

.loopexit1573:                                    ; preds = %vec.epilog.scalar.ph1275, %vec.epilog.middle.block1284, %middle.block1269
  %indvars.iv.next793.lcssa = phi i64 [ %i.ow, %vec.epilog.middle.block1284 ], [ %i.oj, %middle.block1269 ], [ %indvars.iv.next793, %vec.epilog.scalar.ph1275 ] ; 2 uses
  %indvars.iv.next795 = add nsw i64 %indvars.iv794, %i.nr
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv801, 1 ; 2 uses
  %exitcond807.not = icmp eq i64 %indvars.iv.next802, %wide.trip.count806
  br i1 %exitcond807.not, label %._crit_edge558, label %iter.check1274, !llvm.loop !52

._crit_edge558:                                   ; preds = %.loopexit1573, %bb.q
  %.12.lcssa = phi i64 [ 0, %bb.q ], [ %indvars.iv.next793.lcssa, %.loopexit1573 ]
  %.not400567 = icmp slt i32 %., 0
  br i1 %.not400567, label %.loopexit, label %.lr.ph571

.lr.ph571:                                        ; preds = %._crit_edge558
  %i.pf = zext nneg i32 %i.s to i64               ; 13 uses
  %i.pg = add nuw i32 %., 1
  %wide.trip.count818 = zext i32 %i.pg to i64
  %i.ph = shl nuw nsw i64 %i.pf, 3
  %scevgep1298 = getelementptr i8, ptr %3, i64 8
  %broadcast.splatinsert1311 = insertelement <4 x i64> poison, i64 %i.pf, i64 0
  %broadcast.splat1312 = shufflevector <4 x i64> %broadcast.splatinsert1311, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pi = shl nuw nsw <4 x i64> %broadcast.splat1312, splat (i64 2) ; 5 uses
  %i.pj = mul nuw nsw <4 x i64> %broadcast.splat1312, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1686 = add nuw nsw <4 x i64> %i.pi, %i.pi ; 2 uses
  %invariant.op1687 = add nuw nsw <4 x i64> %invariant.op1686, %i.pi ; 2 uses
  %invariant.op1688 = add nuw nsw <4 x i64> %invariant.op1687, %i.pi
  %broadcast.splatinsert1345 = insertelement <4 x i64> poison, i64 %i.pf, i64 0
  %broadcast.splat1346 = shufflevector <4 x i64> %broadcast.splatinsert1345, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.pk = mul nuw nsw <4 x i64> %broadcast.splat1346, <i64 0, i64 1, i64 2, i64 3>
  %i.pl = shl nuw nsw i64 %i.pf, 2
  %broadcast.splatinsert1348 = insertelement <4 x i64> poison, i64 %i.pl, i64 0
  %broadcast.splat1349 = shufflevector <4 x i64> %broadcast.splatinsert1348, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1337

iter.check1337:                                   ; preds = %._crit_edge565, %.lr.ph571
  %indvars.iv810 = phi i64 [ 0, %.lr.ph571 ], [ %indvars.iv.next811, %._crit_edge565 ] ; 18 uses
  %.14569 = phi i64 [ %.12.lcssa, %.lr.ph571 ], [ %indvars.iv.next809.lcssa, %._crit_edge565 ]
  %i.pm = add nuw i64 %indvars.iv810, %i.pf       ; 2 uses
  %i.pn = add nuw i64 %indvars.iv810, 1
  %i.po = trunc i64 %indvars.iv810 to i32
  %i.pp = add i32 %., %i.po
  %i.pq = mul i32 %i.s, %i.pp
  %i.pr = sext i32 %i.pq to i64
  %i.ps = add i64 %i.pn, %i.pr                    ; 2 uses
  %smax1303 = tail call i64 @llvm.smax.i64(i64 %i.pm, i64 %i.ps)
  %i.pt = add nuw i64 %indvars.iv810, %i.pf
  %i.pu = icmp slt i64 %i.pm, %i.ps               ; 2 uses
  %umin1304 = zext i1 %i.pu to i64
  %i.pv = add i64 %i.pt, %umin1304
  %20 = sub i64 %smax1303, %i.pv
  %indvars817 = trunc i64 %indvars.iv810 to i32
  %i.pw = add nuw nsw i32 %., %indvars817
  %i.px = mul nsw i32 %i.pw, %i.s
  %i.py = sext i32 %i.px to i64
  %i.pz = add nsw i64 %indvars.iv810, %i.py
  %sext = shl i64 %.14569, 32                     ; 2 uses
  %i.qa = ashr exact i64 %sext, 32                ; 6 uses
  %21 = select i1 %i.pu, i64 2, i64 1
  %22 = udiv i64 %20, %i.pf
  %23 = add i64 %21, %22                          ; 7 uses
  %min.iters.check1306 = icmp ult i64 %23, 4
  br i1 %min.iters.check1306, label %.lr.ph564.preheader, label %vector.memcheck1288

vector.memcheck1288:                              ; preds = %iter.check1337
  %i.qb = add nuw i64 %indvars.iv810, %i.pf       ; 2 uses
  %i.qc = add nuw i64 %indvars.iv810, 1
  %i.qd = trunc i64 %indvars.iv810 to i32
  %i.qe = add i32 %., %i.qd
  %i.qf = mul i32 %i.s, %i.qe
  %i.qg = sext i32 %i.qf to i64
  %i.qh = add i64 %i.qc, %i.qg                    ; 2 uses
  %i.qi = icmp slt i64 %i.qb, %i.qh
  %umin1291 = zext i1 %i.qi to i64                ; 2 uses
  %i.qj = add nuw i64 %indvars.iv810, %i.pf
  %smax1290 = tail call i64 @llvm.smax.i64(i64 %i.qb, i64 %i.qh)
  %i.qk = add i64 %i.qj, %umin1291
  %24 = sub i64 %smax1290, %i.qk
  %i.ql = shl nuw nsw i64 %indvars.iv810, 3
  %scevgep1289 = getelementptr nuw i8, ptr %4, i64 %i.ql ; 5 uses
  %25 = udiv i64 %24, %i.pf
  %26 = add i64 %25, %umin1291                    ; 2 uses
  %i.qm = mul i64 %i.ph, %26
  %scevgep1293 = getelementptr i8, ptr %scevgep1289, i64 %i.qm ; 4 uses
  %27 = icmp ult ptr %scevgep1289, %scevgep1293
  %umin1294.a = select i1 %27, ptr %scevgep1289, ptr %scevgep1293
  %28 = icmp ugt ptr %scevgep1289, %scevgep1293
  %umax1295 = select i1 %28, ptr %scevgep1289, ptr %scevgep1293
  %scevgep1296 = getelementptr i8, ptr %umax1295, i64 8
  %i.qn = ashr exact i64 %sext, 29                ; 2 uses
  %scevgep1297 = getelementptr i8, ptr %3, i64 %i.qn
  %29 = shl i64 %26, 3
  %i.qo = getelementptr i8, ptr %scevgep1298, i64 %29
  %scevgep1299 = getelementptr i8, ptr %i.qo, i64 %i.qn
  %bound01300 = icmp ult ptr %umin1294.a, %scevgep1299
  %bound11301 = icmp ult ptr %scevgep1297, %scevgep1296
  %found.conflict1302 = and i1 %bound01300, %bound11301
  br i1 %found.conflict1302, label %.lr.ph564.preheader, label %vector.main.loop.iter.check1307

vector.main.loop.iter.check1307:                  ; preds = %vector.memcheck1288
  %min.iters.check1308 = icmp ult i64 %23, 16
  br i1 %min.iters.check1308, label %vec.epilog.ph1341, label %vector.ph1309

vector.ph1309:                                    ; preds = %vector.main.loop.iter.check1307
  %i.qp = and i64 %23, 12
  %n.vec1310 = and i64 %23, -16                   ; 5 uses
  %i.qq = mul i64 %n.vec1310, %i.pf
  %i.qr = add i64 %indvars.iv810, %i.qq           ; 2 uses
  %i.qs = add i64 %i.qa, %n.vec1310               ; 2 uses
  %broadcast.splatinsert1313 = insertelement <4 x i64> poison, i64 %indvars.iv810, i64 0
  %broadcast.splat1314 = shufflevector <4 x i64> %broadcast.splatinsert1313, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1315 = add nuw nsw <4 x i64> %broadcast.splat1314, %i.pj
  %i.qt = getelementptr [8 x i8], ptr %3, i64 %i.qa
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.body1316, %vector.ph1309
  %index1317 = phi i64 [ 0, %vector.ph1309 ], [ %index.next1330, %vector.body1316 ] ; 2 uses
  %vec.ind1318 = phi <4 x i64> [ %induction1315, %vector.ph1309 ], [ %vec.ind.next1331.reass, %vector.body1316 ] ; 5 uses
  %step.add1319 = add nuw nsw <4 x i64> %vec.ind1318, %i.pi
  %step.add.21320.reass = add nuw nsw <4 x i64> %vec.ind1318, %invariant.op1686
  %step.add.31321.reass = add nuw nsw <4 x i64> %vec.ind1318, %invariant.op1687
  %i.qu = getelementptr [8 x i8], ptr %i.qt, i64 %index1317 ; 4 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 32
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 64
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 96
  %wide.load1322 = load <4 x double>, ptr %i.qu, align 8, !tbaa !9, !alias.scope !53
  %wide.load1323 = load <4 x double>, ptr %i.qv, align 8, !tbaa !9, !alias.scope !53
  %wide.load1324 = load <4 x double>, ptr %i.qw, align 8, !tbaa !9, !alias.scope !53
  %wide.load1325 = load <4 x double>, ptr %i.qx, align 8, !tbaa !9, !alias.scope !53
  %wide.gep1326 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1318
  %wide.gep1327 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add1319
  %wide.gep1328 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.21320.reass
  %wide.gep1329 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.31321.reass
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1322, <4 x ptr> align 8 %wide.gep1326, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !56, !noalias !53
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1323, <4 x ptr> align 8 %wide.gep1327, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !56, !noalias !53
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1324, <4 x ptr> align 8 %wide.gep1328, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !56, !noalias !53
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1325, <4 x ptr> align 8 %wide.gep1329, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !56, !noalias !53
  %index.next1330 = add nuw i64 %index1317, 16    ; 2 uses
  %vec.ind.next1331.reass = add nuw nsw <4 x i64> %vec.ind1318, %invariant.op1688
  %i.qy = icmp eq i64 %index.next1330, %n.vec1310
  br i1 %i.qy, label %middle.block1332, label %vector.body1316, !llvm.loop !58

middle.block1332:                                 ; preds = %vector.body1316
  %cmp.n1333 = icmp eq i64 %23, %n.vec1310
  br i1 %cmp.n1333, label %._crit_edge565, label %vec.epilog.iter.check1339

vec.epilog.iter.check1339:                        ; preds = %middle.block1332
  %min.epilog.iters.check1340 = icmp eq i64 %i.qp, 0
  br i1 %min.epilog.iters.check1340, label %.lr.ph564.preheader, label %vec.epilog.ph1341, !prof !15

vec.epilog.ph1341:                                ; preds = %vector.main.loop.iter.check1307, %vec.epilog.iter.check1339
  %vec.epilog.resume.val1334 = phi i64 [ %n.vec1310, %vec.epilog.iter.check1339 ], [ 0, %vector.main.loop.iter.check1307 ]
  %bc.resume.val1335 = phi i64 [ %i.qr, %vec.epilog.iter.check1339 ], [ %indvars.iv810, %vector.main.loop.iter.check1307 ]
  %n.vec1342 = and i64 %23, -4                    ; 4 uses
  %i.qz = mul i64 %n.vec1342, %i.pf
  %i.ra = add i64 %indvars.iv810, %i.qz
  %i.rb = add i64 %i.qa, %n.vec1342               ; 2 uses
  %broadcast.splatinsert1343 = insertelement <4 x i64> poison, i64 %bc.resume.val1335, i64 0
  %broadcast.splat1344 = shufflevector <4 x i64> %broadcast.splatinsert1343, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1347 = add nuw nsw <4 x i64> %broadcast.splat1344, %i.pk
  %i.rc = getelementptr [8 x i8], ptr %3, i64 %i.qa
  br label %vec.epilog.vector.body1350

vec.epilog.vector.body1350:                       ; preds = %vec.epilog.vector.body1350, %vec.epilog.ph1341
  %index1351 = phi i64 [ %vec.epilog.resume.val1334, %vec.epilog.ph1341 ], [ %index.next1355, %vec.epilog.vector.body1350 ] ; 2 uses
  %vec.ind1352 = phi <4 x i64> [ %induction1347, %vec.epilog.ph1341 ], [ %vec.ind.next1356, %vec.epilog.vector.body1350 ] ; 2 uses
  %i.rd = getelementptr [8 x i8], ptr %i.rc, i64 %index1351
  %wide.load1353 = load <4 x double>, ptr %i.rd, align 8, !tbaa !9, !alias.scope !53
  %wide.gep1354 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1352
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1353, <4 x ptr> align 8 %wide.gep1354, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !56, !noalias !53
  %index.next1355 = add nuw i64 %index1351, 4     ; 2 uses
  %vec.ind.next1356 = add nuw nsw <4 x i64> %vec.ind1352, %broadcast.splat1349
  %i.re = icmp eq i64 %index.next1355, %n.vec1342
  br i1 %i.re, label %vec.epilog.middle.block1357, label %vec.epilog.vector.body1350, !llvm.loop !59

vec.epilog.middle.block1357:                      ; preds = %vec.epilog.vector.body1350
  %cmp.n1358 = icmp eq i64 %23, %n.vec1342
  br i1 %cmp.n1358, label %._crit_edge565, label %.lr.ph564.preheader

.lr.ph564.preheader:                              ; preds = %vector.memcheck1288, %iter.check1337, %vec.epilog.iter.check1339, %vec.epilog.middle.block1357
  %indvars.iv812.ph = phi i64 [ %indvars.iv810, %iter.check1337 ], [ %indvars.iv810, %vector.memcheck1288 ], [ %i.qr, %vec.epilog.iter.check1339 ], [ %i.ra, %vec.epilog.middle.block1357 ]
  %indvars.iv808.ph = phi i64 [ %i.qa, %iter.check1337 ], [ %i.qa, %vector.memcheck1288 ], [ %i.qs, %vec.epilog.iter.check1339 ], [ %i.rb, %vec.epilog.middle.block1357 ]
  br label %.lr.ph564

.lr.ph564:                                        ; preds = %.lr.ph564.preheader, %.lr.ph564
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %.lr.ph564 ], [ %indvars.iv812.ph, %.lr.ph564.preheader ] ; 2 uses
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %.lr.ph564 ], [ %indvars.iv808.ph, %.lr.ph564.preheader ] ; 2 uses
  %i.rf = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv808
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !9
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv812
  store double %i.rg, ptr %i.rh, align 8, !tbaa !9
  %indvars.iv.next809 = add nsw i64 %indvars.iv808, 1 ; 2 uses
  %indvars.iv.next813 = add nuw nsw i64 %indvars.iv812, %i.pf ; 2 uses
  %.not881 = icmp sgt i64 %indvars.iv.next813, %i.pz
  br i1 %.not881, label %._crit_edge565, label %.lr.ph564, !llvm.loop !60

._crit_edge565:                                   ; preds = %.lr.ph564, %vec.epilog.middle.block1357, %middle.block1332
  %indvars.iv.next809.lcssa = phi i64 [ %i.rb, %vec.epilog.middle.block1357 ], [ %i.qs, %middle.block1332 ], [ %indvars.iv.next809, %.lr.ph564 ]
  %indvars.iv.next811 = add nuw nsw i64 %indvars.iv810, 1 ; 2 uses
  %exitcond819.not = icmp eq i64 %indvars.iv.next811, %wide.trip.count818
  br i1 %exitcond819.not, label %.loopexit, label %iter.check1337, !llvm.loop !61

.thread423:                                       ; preds = %.thread416
  %i.ri = zext nneg i32 %.0328 to i64             ; 14 uses
  br i1 %.not379, label %.lr.ph507.preheader, label %.preheader432.preheader

.lr.ph507.preheader:                              ; preds = %.thread423
  %i.rj = add nuw nsw i32 %i.m, 1
  %ident.check1090.not = icmp ugt i32 %i.h, 1
  br label %iter.check1113

.preheader432.preheader:                          ; preds = %.thread423
  %wide.trip.count721 = zext nneg i32 %i.q to i64 ; 3 uses
  %wide.trip.count714 = zext nneg i32 %i.h to i64 ; 4 uses
  %i.rk = add i64 %i.b, 8
  %i.rl = shl nuw nsw i64 %i.ri, 3
  %i.rm = add nuw nsw i64 %i.rl, 8
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.preheader, %._crit_edge484
  %indvars.iv716 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next717, %._crit_edge484 ] ; 2 uses
  %indvars.iv707 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next708, %._crit_edge484 ] ; 10 uses
  %.16489 = phi i32 [ 0, %.preheader432.preheader ], [ %.17.lcssa, %._crit_edge484 ] ; 2 uses
  %i.rn = sub nsw i64 %wide.trip.count714, %indvars.iv707 ; 7 uses
  %i.ro = mul i64 %i.rm, %indvars.iv707
  %indvars720 = trunc i64 %indvars.iv707 to i32
  %.not398.not480 = icmp sgt i32 %i.h, %indvars720
  br i1 %.not398.not480, label %iter.check1040, label %._crit_edge484

iter.check1040:                                   ; preds = %.preheader432
  %i.rp = sext i32 %.16489 to i64                 ; 7 uses
  %invariant.gep897 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv716 ; 11 uses
  %min.iters.check1024 = icmp ult i64 %i.rn, 4
  br i1 %min.iters.check1024, label %.lr.ph483.preheader, label %vector.memcheck1022

vector.memcheck1022:                              ; preds = %iter.check1040
  %i.rq = shl nsw i64 %i.rp, 3
  %i.rr = add i64 %i.rk, %i.ro
  %i.rs = add i64 %i.rq, %i.a
  %i.rt = sub i64 %i.rs, %i.rr
  %diff.check1023 = icmp ugt i64 %i.rt, -128
  br i1 %diff.check1023, label %.lr.ph483.preheader, label %vector.main.loop.iter.check1025

vector.main.loop.iter.check1025:                  ; preds = %vector.memcheck1022
  %min.iters.check1026 = icmp ult i64 %i.rn, 16
  br i1 %min.iters.check1026, label %vec.epilog.ph1044, label %vector.ph1027

vector.ph1027:                                    ; preds = %vector.main.loop.iter.check1025
  %i.ru = and i64 %i.rn, 12
  %n.vec1028 = and i64 %i.rn, -16                 ; 5 uses
  %i.rv = add i64 %indvars.iv707, %n.vec1028
  %i.rw = add i64 %n.vec1028, %i.rp               ; 2 uses
  %invariant.gep1660 = getelementptr [8 x i8], ptr %3, i64 %i.rp
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %vector.ph1027
  %index1030 = phi i64 [ 0, %vector.ph1027 ], [ %index.next1035, %vector.body1029 ] ; 3 uses
  %gep1661 = getelementptr [8 x i8], ptr %invariant.gep1660, i64 %index1030 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %gep1661, i64 32
  %i.rz = getelementptr inbounds nuw i8, ptr %gep1661, i64 64
  %i.sa = getelementptr inbounds nuw i8, ptr %gep1661, i64 96
  %wide.load1031 = load <4 x double>, ptr %gep1661, align 8, !tbaa !9
  %wide.load1032 = load <4 x double>, ptr %i.ry, align 8, !tbaa !9
  %wide.load1033 = load <4 x double>, ptr %i.rz, align 8, !tbaa !9
  %wide.load1034 = load <4 x double>, ptr %i.sa, align 8, !tbaa !9
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %index1030 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 40
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 72
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sb, i64 104
  store <4 x double> %wide.load1031, ptr %i.sc, align 8, !tbaa !9
  store <4 x double> %wide.load1032, ptr %i.sd, align 8, !tbaa !9
  store <4 x double> %wide.load1033, ptr %i.se, align 8, !tbaa !9
  store <4 x double> %wide.load1034, ptr %i.sf, align 8, !tbaa !9
  %index.next1035 = add nuw i64 %index1030, 16    ; 2 uses
  %i.sg = icmp eq i64 %index.next1035, %n.vec1028
  br i1 %i.sg, label %middle.block1036, label %vector.body1029, !llvm.loop !62

middle.block1036:                                 ; preds = %vector.body1029
  %cmp.n1037 = icmp eq i64 %i.rn, %n.vec1028
  br i1 %cmp.n1037, label %._crit_edge484.loopexit, label %vec.epilog.iter.check1042

vec.epilog.iter.check1042:                        ; preds = %middle.block1036
  %min.epilog.iters.check1043 = icmp eq i64 %i.ru, 0
  br i1 %min.epilog.iters.check1043, label %.lr.ph483.preheader, label %vec.epilog.ph1044, !prof !15

vec.epilog.ph1044:                                ; preds = %vector.main.loop.iter.check1025, %vec.epilog.iter.check1042
  %vec.epilog.resume.val1038 = phi i64 [ %n.vec1028, %vec.epilog.iter.check1042 ], [ 0, %vector.main.loop.iter.check1025 ]
  %n.vec1045 = and i64 %i.rn, -4                  ; 4 uses
  %i.sh = add i64 %indvars.iv707, %n.vec1045
  %i.si = add i64 %n.vec1045, %i.rp               ; 2 uses
  %invariant.gep1662 = getelementptr [8 x i8], ptr %3, i64 %i.rp
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  br label %vec.epilog.vector.body1046
end_hunk_2
begin_hunk_3_@dtpttf_:bb.a
  %indvars.iv833 = phi i32 [ 0, %.lr.ph597 ], [ %indvars.iv.next834, %._crit_edge590 ] ; 5 uses
  %.26595 = phi i32 [ %.25.lcssa, %.lr.ph597 ], [ %.27.lcssa, %._crit_edge590 ] ; 2 uses
  %.10364593 = phi i32 [ 0, %.lr.ph597 ], [ %i.ads, %._crit_edge590 ] ; 4 uses
  %i.aau = mul i32 %i.s, %.10364593
  %i.aav = add i32 %i.aat, %i.aau
  %i.aaw = xor i32 %.10364593, -1
  %i.aax = add nsw i32 %i.q, %i.aaw               ; 3 uses
  %i.aay = zext i32 %i.aax to i64
  %i.aaz = add nuw nsw i64 %i.aay, 1              ; 5 uses
  %i.aba = sext i32 %indvars.iv833 to i64
  %i.abb = shl nsw i64 %i.aba, 3
  %i.abc = xor i32 %.10364593, -1
  %i.abd = add nsw i32 %i.q, %i.abc
  %i.abe = add i32 %i.abd, %indvars.iv833
  %.not389585 = icmp sgt i32 %indvars.iv833, %i.abe
  br i1 %.not389585, label %._crit_edge590, label %iter.check1451

iter.check1451:                                   ; preds = %bb.x
  %i.abf = sext i32 %indvars.iv833 to i64         ; 6 uses
  %i.abg = sext i32 %.26595 to i64                ; 7 uses
  %min.iters.check1434 = icmp ult i32 %i.aax, 3
  br i1 %min.iters.check1434, label %.lr.ph589.preheader, label %vector.memcheck1432

vector.memcheck1432:                              ; preds = %iter.check1451
  %i.abh = shl nsw i64 %i.abg, 3
  %i.abi = add i64 %i.abb, %i.b
  %i.abj = add i64 %i.abh, %i.a
  %i.abk = sub i64 %i.abj, %i.abi
  %diff.check1433 = icmp ugt i64 %i.abk, -128
  br i1 %diff.check1433, label %.lr.ph589.preheader, label %vector.main.loop.iter.check1435

vector.main.loop.iter.check1435:                  ; preds = %vector.memcheck1432
  %min.iters.check1436 = icmp ult i32 %i.aax, 15
  br i1 %min.iters.check1436, label %vec.epilog.ph1455, label %vector.ph1437

vector.ph1437:                                    ; preds = %vector.main.loop.iter.check1435
  %i.abl = and i64 %i.aaz, 12
  %n.vec1438 = and i64 %i.aaz, 8589934576         ; 5 uses
  %i.abm = add nsw i64 %n.vec1438, %i.abf
  %i.abn = add nsw i64 %n.vec1438, %i.abg         ; 2 uses
  %invariant.gep1696 = getelementptr [8 x i8], ptr %3, i64 %i.abg
  %invariant.gep1698 = getelementptr [8 x i8], ptr %4, i64 %i.abf
  br label %vector.body1439

vector.body1439:                                  ; preds = %vector.body1439, %vector.ph1437
  %index1440 = phi i64 [ 0, %vector.ph1437 ], [ %index.next1445, %vector.body1439 ] ; 3 uses
  %gep1697 = getelementptr [8 x i8], ptr %invariant.gep1696, i64 %index1440 ; 4 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %gep1697, i64 32
  %i.abp = getelementptr inbounds nuw i8, ptr %gep1697, i64 64
  %i.abq = getelementptr inbounds nuw i8, ptr %gep1697, i64 96
  %wide.load1441 = load <4 x double>, ptr %gep1697, align 8, !tbaa !9
  %wide.load1442 = load <4 x double>, ptr %i.abo, align 8, !tbaa !9
  %wide.load1443 = load <4 x double>, ptr %i.abp, align 8, !tbaa !9
  %wide.load1444 = load <4 x double>, ptr %i.abq, align 8, !tbaa !9
  %gep1699 = getelementptr [8 x i8], ptr %invariant.gep1698, i64 %index1440 ; 4 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %gep1699, i64 32
  %i.abs = getelementptr inbounds nuw i8, ptr %gep1699, i64 64
  %i.abt = getelementptr inbounds nuw i8, ptr %gep1699, i64 96
  store <4 x double> %wide.load1441, ptr %gep1699, align 8, !tbaa !9
  store <4 x double> %wide.load1442, ptr %i.abr, align 8, !tbaa !9
  store <4 x double> %wide.load1443, ptr %i.abs, align 8, !tbaa !9
  store <4 x double> %wide.load1444, ptr %i.abt, align 8, !tbaa !9
  %index.next1445 = add nuw i64 %index1440, 16    ; 2 uses
  %i.abu = icmp eq i64 %index.next1445, %n.vec1438
  br i1 %i.abu, label %middle.block1446, label %vector.body1439, !llvm.loop !87

middle.block1446:                                 ; preds = %vector.body1439
  %cmp.n1447 = icmp eq i64 %i.aaz, %n.vec1438
  br i1 %cmp.n1447, label %._crit_edge590.loopexit, label %vec.epilog.iter.check1453

vec.epilog.iter.check1453:                        ; preds = %middle.block1446
  %min.epilog.iters.check1454 = icmp eq i64 %i.abl, 0
  br i1 %min.epilog.iters.check1454, label %.lr.ph589.preheader, label %vec.epilog.ph1455, !prof !15

vec.epilog.ph1455:                                ; preds = %vector.main.loop.iter.check1435, %vec.epilog.iter.check1453
  %vec.epilog.resume.val1448 = phi i64 [ %n.vec1438, %vec.epilog.iter.check1453 ], [ 0, %vector.main.loop.iter.check1435 ]
  %n.vec1456 = and i64 %i.aaz, 8589934588         ; 4 uses
  %i.abv = add nsw i64 %n.vec1456, %i.abf
  %i.abw = add nsw i64 %n.vec1456, %i.abg         ; 2 uses
  %invariant.gep1700 = getelementptr [8 x i8], ptr %3, i64 %i.abg
  %invariant.gep1702 = getelementptr [8 x i8], ptr %4, i64 %i.abf
  br label %vec.epilog.vector.body1457

vec.epilog.vector.body1457:                       ; preds = %vec.epilog.vector.body1457, %vec.epilog.ph1455
  %index1458 = phi i64 [ %vec.epilog.resume.val1448, %vec.epilog.ph1455 ], [ %index.next1460, %vec.epilog.vector.body1457 ] ; 3 uses
  %gep1701 = getelementptr [8 x i8], ptr %invariant.gep1700, i64 %index1458
  %wide.load1459 = load <4 x double>, ptr %gep1701, align 8, !tbaa !9
  %gep1703 = getelementptr [8 x i8], ptr %invariant.gep1702, i64 %index1458
  store <4 x double> %wide.load1459, ptr %gep1703, align 8, !tbaa !9
  %index.next1460 = add nuw i64 %index1458, 4     ; 2 uses
  %i.abx = icmp eq i64 %index.next1460, %n.vec1456
  br i1 %i.abx, label %vec.epilog.middle.block1461, label %vec.epilog.vector.body1457, !llvm.loop !88

vec.epilog.middle.block1461:                      ; preds = %vec.epilog.vector.body1457
  %cmp.n1462 = icmp eq i64 %i.aaz, %n.vec1456
  br i1 %cmp.n1462, label %._crit_edge590.loopexit, label %.lr.ph589.preheader

.lr.ph589.preheader:                              ; preds = %vector.memcheck1432, %iter.check1451, %vec.epilog.iter.check1453, %vec.epilog.middle.block1461
  %indvars.iv835.ph = phi i64 [ %i.abf, %iter.check1451 ], [ %i.abf, %vector.memcheck1432 ], [ %i.abm, %vec.epilog.iter.check1453 ], [ %i.abv, %vec.epilog.middle.block1461 ] ; 3 uses
  %indvars.iv831.ph = phi i64 [ %i.abg, %iter.check1451 ], [ %i.abg, %vector.memcheck1432 ], [ %i.abn, %vec.epilog.iter.check1453 ], [ %i.abw, %vec.epilog.middle.block1461 ] ; 2 uses
  %i.aby = trunc i64 %indvars.iv835.ph to i32     ; 2 uses
  %i.abz = sub i32 %indvars.iv840, %i.aby
  %i.aca = sub i32 %i.aav, %i.aby
  %xtraiter1632 = and i32 %i.abz, 7               ; 2 uses
  %lcmp.mod1633.not = icmp eq i32 %xtraiter1632, 0
  br i1 %lcmp.mod1633.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol

.lr.ph589.prol:                                   ; preds = %.lr.ph589.preheader, %.lr.ph589.prol
  %indvars.iv835.prol = phi i64 [ %indvars.iv.next836.prol, %.lr.ph589.prol ], [ %indvars.iv835.ph, %.lr.ph589.preheader ] ; 2 uses
  %indvars.iv831.prol = phi i64 [ %indvars.iv.next832.prol, %.lr.ph589.prol ], [ %indvars.iv831.ph, %.lr.ph589.preheader ] ; 2 uses
  %prol.iter1634 = phi i32 [ %prol.iter1634.next, %.lr.ph589.prol ], [ 0, %.lr.ph589.preheader ]
  %i.acb = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv831.prol
  %i.acc = load double, ptr %i.acb, align 8, !tbaa !9
  %i.acd = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv835.prol
  store double %i.acc, ptr %i.acd, align 8, !tbaa !9
  %indvars.iv.next832.prol = add nsw i64 %indvars.iv831.prol, 1 ; 3 uses
  %indvars.iv.next836.prol = add nsw i64 %indvars.iv835.prol, 1 ; 2 uses
  %prol.iter1634.next = add i32 %prol.iter1634, 1 ; 2 uses
  %prol.iter1634.cmp.not = icmp eq i32 %prol.iter1634.next, %xtraiter1632
  br i1 %prol.iter1634.cmp.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol, !llvm.loop !89

.lr.ph589.prol.loopexit:                          ; preds = %.lr.ph589.prol, %.lr.ph589.preheader
  %indvars.iv.next832.lcssa1590.unr = phi i64 [ poison, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %indvars.iv835.unr = phi i64 [ %indvars.iv835.ph, %.lr.ph589.preheader ], [ %indvars.iv.next836.prol, %.lr.ph589.prol ]
  %indvars.iv831.unr = phi i64 [ %indvars.iv831.ph, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %i.ace = icmp ult i32 %i.aca, 7
  br i1 %i.ace, label %._crit_edge590.loopexit, label %.lr.ph589

.lr.ph589:                                        ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589
  %indvars.iv835 = phi i64 [ %indvars.iv.next836.7, %.lr.ph589 ], [ %indvars.iv835.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %indvars.iv831 = phi i64 [ %indvars.iv.next832.7, %.lr.ph589 ], [ %indvars.iv831.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %i.acf = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv831
  %i.acg = load double, ptr %i.acf, align 8, !tbaa !9
  %i.ach = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv835
  store double %i.acg, ptr %i.ach, align 8, !tbaa !9
  %i.aci = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.acj = getelementptr i8, ptr %i.aci, i64 8
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !9
  %i.acl = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.acm = getelementptr i8, ptr %i.acl, i64 8
  store double %i.ack, ptr %i.acm, align 8, !tbaa !9
  %i.acn = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.aco = getelementptr i8, ptr %i.acn, i64 16
  %i.acp = load double, ptr %i.aco, align 8, !tbaa !9
  %i.acq = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.acr = getelementptr i8, ptr %i.acq, i64 16
  store double %i.acp, ptr %i.acr, align 8, !tbaa !9
  %i.acs = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.act = getelementptr i8, ptr %i.acs, i64 24
  %i.acu = load double, ptr %i.act, align 8, !tbaa !9
  %i.acv = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.acw = getelementptr i8, ptr %i.acv, i64 24
  store double %i.acu, ptr %i.acw, align 8, !tbaa !9
  %i.acx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.acy = getelementptr i8, ptr %i.acx, i64 32
  %i.acz = load double, ptr %i.acy, align 8, !tbaa !9
  %i.ada = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.adb = getelementptr i8, ptr %i.ada, i64 32
  store double %i.acz, ptr %i.adb, align 8, !tbaa !9
  %i.adc = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.add = getelementptr i8, ptr %i.adc, i64 40
  %i.ade = load double, ptr %i.add, align 8, !tbaa !9
  %i.adf = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.adg = getelementptr i8, ptr %i.adf, i64 40
  store double %i.ade, ptr %i.adg, align 8, !tbaa !9
  %i.adh = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.adi = getelementptr i8, ptr %i.adh, i64 48
  %i.adj = load double, ptr %i.adi, align 8, !tbaa !9
  %i.adk = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.adl = getelementptr i8, ptr %i.adk, i64 48
  store double %i.adj, ptr %i.adl, align 8, !tbaa !9
  %i.adm = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.adn = getelementptr i8, ptr %i.adm, i64 56
  %i.ado = load double, ptr %i.adn, align 8, !tbaa !9
  %i.adp = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.adq = getelementptr i8, ptr %i.adp, i64 56
  store double %i.ado, ptr %i.adq, align 8, !tbaa !9
  %indvars.iv.next832.7 = add nsw i64 %indvars.iv831, 8 ; 2 uses
  %indvars.iv.next836.7 = add nsw i64 %indvars.iv835, 8 ; 2 uses
  %lftr.wideiv842.7 = trunc i64 %indvars.iv.next836.7 to i32
  %exitcond843.not.7 = icmp eq i32 %indvars.iv840, %lftr.wideiv842.7
  br i1 %exitcond843.not.7, label %._crit_edge590.loopexit, label %.lr.ph589, !llvm.loop !90

._crit_edge590.loopexit:                          ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589, %vec.epilog.middle.block1461, %middle.block1446
  %indvars.iv.next832.lcssa = phi i64 [ %i.abw, %vec.epilog.middle.block1461 ], [ %i.abn, %middle.block1446 ], [ %indvars.iv.next832.lcssa1590.unr, %.lr.ph589.prol.loopexit ], [ %indvars.iv.next832.7, %.lr.ph589 ]
  %i.adr = trunc nsw i64 %indvars.iv.next832.lcssa to i32
  br label %._crit_edge590

._crit_edge590:                                   ; preds = %._crit_edge590.loopexit, %bb.x
  %.27.lcssa = phi i32 [ %.26595, %bb.x ], [ %i.adr, %._crit_edge590.loopexit ]
  %indvars.iv.next834 = add i32 %indvars.iv833, %i.aas
  %i.ads = add nuw nsw i32 %.10364593, 1          ; 2 uses
  %indvars.iv.next841 = add i32 %indvars.iv840, %i.s
  %exitcond844.not = icmp eq i32 %i.ads, %i.q
  br i1 %exitcond844.not, label %.loopexit, label %bb.x, !llvm.loop !91

.lr.ph605.preheader:                              ; preds = %bb.v
  %i.adt = add nuw nsw i32 %i.q, 1
  %i.adu = mul i32 %i.adt, %i.s
  %i.adv = sext i32 %i.adu to i64                 ; 4 uses
  %i.adw = zext nneg i32 %i.s to i64              ; 13 uses
  %wide.trip.count860 = zext nneg i32 %i.q to i64
  %i.adx = shl nsw i64 %i.adv, 3
  %i.ady = add i64 %i.adx, %i.b
  %i.adz = shl nuw nsw i64 %i.adw, 3
  %i.aea = add nuw nsw i64 %i.adw, 1
  br label %iter.check1485

iter.check1485:                                   ; preds = %.lr.ph605.preheader, %.loopexit1572
  %indvars.iv855 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next856, %.loopexit1572 ] ; 5 uses
  %indvars.iv848 = phi i64 [ %i.adv, %.lr.ph605.preheader ], [ %indvars.iv.next849, %.loopexit1572 ] ; 9 uses
  %.28603 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next847.lcssa, %.loopexit1572 ] ; 7 uses
  %i.aeb = mul i64 %i.aea, %indvars.iv855
  %i.aec = add i64 %i.aeb, %i.adv
  %smax1467 = tail call i64 @llvm.smax.i64(i64 %indvars.iv848, i64 %i.aec)
  %i.aed = mul i64 %indvars.iv855, %i.adw
  %i.aee = add i64 %i.aed, %i.adv
  %reass.sub1579 = sub i64 %smax1467, %i.aee
  %i.aef = add i64 %reass.sub1579, 1              ; 7 uses
  %i.aeg = add nsw i64 %indvars.iv848, %indvars.iv855
  %min.iters.check1468 = icmp ult i64 %i.aef, 4
  br i1 %min.iters.check1468, label %vec.epilog.scalar.ph1486.preheader, label %vector.memcheck1465

vector.memcheck1465:                              ; preds = %iter.check1485
  %i.aeh = mul i64 %i.adz, %indvars.iv855
  %i.aei = shl i64 %.28603, 3
  %i.aej = add i64 %i.ady, %i.aeh
  %i.aek = add i64 %i.aei, %i.a
  %i.ael = sub i64 %i.aek, %i.aej
  %diff.check1466 = icmp ugt i64 %i.ael, -128
  br i1 %diff.check1466, label %vec.epilog.scalar.ph1486.preheader, label %vector.main.loop.iter.check1469

vector.main.loop.iter.check1469:                  ; preds = %vector.memcheck1465
  %min.iters.check1470 = icmp ult i64 %i.aef, 16
  br i1 %min.iters.check1470, label %vec.epilog.ph1489, label %vector.ph1471

vector.ph1471:                                    ; preds = %vector.main.loop.iter.check1469
  %i.aem = and i64 %i.aef, 12
  %n.vec1472 = and i64 %i.aef, -16                ; 5 uses
  %i.aen = add i64 %indvars.iv848, %n.vec1472
  %i.aeo = add i64 %.28603, %n.vec1472            ; 2 uses
  %i.aep = getelementptr [8 x i8], ptr %3, i64 %.28603
  %i.aeq = getelementptr [8 x i8], ptr %4, i64 %indvars.iv848
  br label %vector.body1473

vector.body1473:                                  ; preds = %vector.body1473, %vector.ph1471
  %index1474 = phi i64 [ 0, %vector.ph1471 ], [ %index.next1479, %vector.body1473 ] ; 3 uses
  %i.aer = getelementptr [8 x i8], ptr %i.aep, i64 %index1474 ; 4 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 32
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aer, i64 64
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aer, i64 96
  %wide.load1475 = load <4 x double>, ptr %i.aer, align 8, !tbaa !9
  %wide.load1476 = load <4 x double>, ptr %i.aes, align 8, !tbaa !9
  %wide.load1477 = load <4 x double>, ptr %i.aet, align 8, !tbaa !9
  %wide.load1478 = load <4 x double>, ptr %i.aeu, align 8, !tbaa !9
  %i.aev = getelementptr [8 x i8], ptr %i.aeq, i64 %index1474 ; 4 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 32
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aev, i64 64
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aev, i64 96
  store <4 x double> %wide.load1475, ptr %i.aev, align 8, !tbaa !9
  store <4 x double> %wide.load1476, ptr %i.aew, align 8, !tbaa !9
  store <4 x double> %wide.load1477, ptr %i.aex, align 8, !tbaa !9
  store <4 x double> %wide.load1478, ptr %i.aey, align 8, !tbaa !9
  %index.next1479 = add nuw i64 %index1474, 16    ; 2 uses
  %i.aez = icmp eq i64 %index.next1479, %n.vec1472
  br i1 %i.aez, label %middle.block1480, label %vector.body1473, !llvm.loop !92

middle.block1480:                                 ; preds = %vector.body1473
  %cmp.n1481 = icmp eq i64 %i.aef, %n.vec1472
  br i1 %cmp.n1481, label %.loopexit1572, label %vec.epilog.iter.check1487

vec.epilog.iter.check1487:                        ; preds = %middle.block1480
  %min.epilog.iters.check1488 = icmp eq i64 %i.aem, 0
  br i1 %min.epilog.iters.check1488, label %vec.epilog.scalar.ph1486.preheader, label %vec.epilog.ph1489, !prof !15

vec.epilog.ph1489:                                ; preds = %vector.main.loop.iter.check1469, %vec.epilog.iter.check1487
  %vec.epilog.resume.val1482 = phi i64 [ %n.vec1472, %vec.epilog.iter.check1487 ], [ 0, %vector.main.loop.iter.check1469 ]
  %n.vec1490 = and i64 %i.aef, -4                 ; 4 uses
  %i.afa = add i64 %indvars.iv848, %n.vec1490
  %i.afb = add i64 %.28603, %n.vec1490            ; 2 uses
  %i.afc = getelementptr [8 x i8], ptr %3, i64 %.28603
  %i.afd = getelementptr [8 x i8], ptr %4, i64 %indvars.iv848
  br label %vec.epilog.vector.body1491

vec.epilog.vector.body1491:                       ; preds = %vec.epilog.vector.body1491, %vec.epilog.ph1489
  %index1492 = phi i64 [ %vec.epilog.resume.val1482, %vec.epilog.ph1489 ], [ %index.next1494, %vec.epilog.vector.body1491 ] ; 3 uses
  %i.afe = getelementptr [8 x i8], ptr %i.afc, i64 %index1492
  %wide.load1493 = load <4 x double>, ptr %i.afe, align 8, !tbaa !9
  %i.aff = getelementptr [8 x i8], ptr %i.afd, i64 %index1492
  store <4 x double> %wide.load1493, ptr %i.aff, align 8, !tbaa !9
  %index.next1494 = add nuw i64 %index1492, 4     ; 2 uses
  %i.afg = icmp eq i64 %index.next1494, %n.vec1490
  br i1 %i.afg, label %vec.epilog.middle.block1495, label %vec.epilog.vector.body1491, !llvm.loop !93

vec.epilog.middle.block1495:                      ; preds = %vec.epilog.vector.body1491
  %cmp.n1496 = icmp eq i64 %i.aef, %n.vec1490
  br i1 %cmp.n1496, label %.loopexit1572, label %vec.epilog.scalar.ph1486.preheader

vec.epilog.scalar.ph1486.preheader:               ; preds = %vector.memcheck1465, %iter.check1485, %vec.epilog.iter.check1487, %vec.epilog.middle.block1495
  %indvars.iv850.ph = phi i64 [ %indvars.iv848, %iter.check1485 ], [ %indvars.iv848, %vector.memcheck1465 ], [ %i.aen, %vec.epilog.iter.check1487 ], [ %i.afa, %vec.epilog.middle.block1495 ]
  %indvars.iv846.ph = phi i64 [ %.28603, %iter.check1485 ], [ %.28603, %vector.memcheck1465 ], [ %i.aeo, %vec.epilog.iter.check1487 ], [ %i.afb, %vec.epilog.middle.block1495 ]
  br label %vec.epilog.scalar.ph1486

vec.epilog.scalar.ph1486:                         ; preds = %vec.epilog.scalar.ph1486.preheader, %vec.epilog.scalar.ph1486
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %vec.epilog.scalar.ph1486 ], [ %indvars.iv850.ph, %vec.epilog.scalar.ph1486.preheader ] ; 3 uses
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %vec.epilog.scalar.ph1486 ], [ %indvars.iv846.ph, %vec.epilog.scalar.ph1486.preheader ] ; 2 uses
  %i.afh = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv846
  %i.afi = load double, ptr %i.afh, align 8, !tbaa !9
  %i.afj = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv850
  store double %i.afi, ptr %i.afj, align 8, !tbaa !9
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, 1 ; 2 uses
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, 1
  %.not386.not = icmp slt i64 %indvars.iv850, %i.aeg
  br i1 %.not386.not, label %vec.epilog.scalar.ph1486, label %.loopexit1572, !llvm.loop !94

.loopexit1572:                                    ; preds = %vec.epilog.scalar.ph1486, %vec.epilog.middle.block1495, %middle.block1480
  %indvars.iv.next847.lcssa = phi i64 [ %i.afb, %vec.epilog.middle.block1495 ], [ %i.aeo, %middle.block1480 ], [ %indvars.iv.next847, %vec.epilog.scalar.ph1486 ] ; 2 uses
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, %i.adw
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1 ; 2 uses
  %exitcond861.not = icmp eq i64 %indvars.iv.next856, %wide.trip.count860
  br i1 %exitcond861.not, label %.lr.ph619, label %iter.check1485, !llvm.loop !95

.lr.ph619:                                        ; preds = %.loopexit1572
  %i.afk = zext nneg i32 %i.s to i64
  %wide.trip.count872 = zext nneg i32 %i.q to i64
  %i.afl = shl nuw nsw i64 %i.adw, 3
  %umax1503 = tail call i64 @llvm.umax.i64(i64 %i.adw, i64 1)
  %scevgep1509 = getelementptr i8, ptr %3, i64 8
  %umax1516 = tail call i64 @llvm.umax.i64(i64 %i.adw, i64 1)
  %30 = insertelement <2 x i64> poison, i64 %i.adw, i64 0
  %31 = shufflevector <2 x i64> %30, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %32 = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %33 = shufflevector <2 x i32> %32, <2 x i32> poison, <2 x i32> zeroinitializer
  %34 = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %35 = shufflevector <2 x i32> %34, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1522 = insertelement <4 x i64> poison, i64 %i.adw, i64 0
  %broadcast.splat1523 = shufflevector <4 x i64> %broadcast.splatinsert1522, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afm = shl nuw nsw <4 x i64> %broadcast.splat1523, splat (i64 2) ; 5 uses
  %i.afn = mul nuw nsw <4 x i64> %broadcast.splat1523, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1704 = add nuw nsw <4 x i64> %i.afm, %i.afm ; 2 uses
  %invariant.op1705 = add nuw nsw <4 x i64> %invariant.op1704, %i.afm ; 2 uses
  %invariant.op1706 = add nuw nsw <4 x i64> %invariant.op1705, %i.afm
  %broadcast.splatinsert1556 = insertelement <4 x i64> poison, i64 %i.adw, i64 0
  %broadcast.splat1557 = shufflevector <4 x i64> %broadcast.splatinsert1556, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.afo = mul nuw nsw <4 x i64> %broadcast.splat1557, <i64 0, i64 1, i64 2, i64 3>
  %i.afp = shl nuw nsw i64 %i.adw, 2
  %broadcast.splatinsert1559 = insertelement <4 x i64> poison, i64 %i.afp, i64 0
  %broadcast.splat1560 = shufflevector <4 x i64> %broadcast.splatinsert1559, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1548

iter.check1548:                                   ; preds = %.lr.ph619, %._crit_edge613
  %indvars.iv864 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next865, %._crit_edge613 ] ; 11 uses
  %.30617 = phi i64 [ %indvars.iv.next847.lcssa, %.lr.ph619 ], [ %indvars.iv.next863.lcssa, %._crit_edge613 ]
  %36 = insertelement <2 x i64> poison, i64 %indvars.iv864, i64 0
  %37 = shufflevector <2 x i64> %36, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %38 = add nuw <2 x i64> %37, %31                ; 2 uses
  %39 = add nuw <2 x i64> %37, splat (i64 1)
  %40 = trunc <2 x i64> %37 to <2 x i32>
  %41 = add nuw <2 x i64> %37, %31
  %indvars871.a = trunc i64 %indvars.iv864 to i32
  %i.afq = add nsw i32 %i.q, %indvars871.a
  %i.afr = mul nsw i32 %i.afq, %i.s
  %i.afs = sext i32 %i.afr to i64
  %i.aft = add nsw i64 %indvars.iv864, %i.afs
  %42 = add <2 x i32> %35, %40
  %43 = mul <2 x i32> %33, %42
  %44 = sext <2 x i32> %43 to <2 x i64>
  %45 = add <2 x i64> %39, %44                    ; 2 uses
  %46 = icmp slt <2 x i64> %38, %45               ; 2 uses
  %47 = zext <2 x i1> %46 to <2 x i64>            ; 2 uses
  %48 = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %38, <2 x i64> %45)
  %49 = add <2 x i64> %41, %47
  %50 = sub <2 x i64> %48, %49                    ; 2 uses
  %sext1580 = shl i64 %.30617, 32                 ; 2 uses
  %51 = ashr exact i64 %sext1580, 32              ; 6 uses
  %52 = extractelement <2 x i1> %46, i64 1
  %53 = select i1 %52, i64 2, i64 1
  %54 = extractelement <2 x i64> %50, i64 1
  %55 = udiv i64 %54, %umax1516
  %56 = add i64 %53, %55                          ; 7 uses
  %min.iters.check1517 = icmp ult i64 %56, 4
  br i1 %min.iters.check1517, label %.lr.ph612.preheader, label %vector.memcheck1499

vector.memcheck1499:                              ; preds = %iter.check1548
  %57 = shl i64 %indvars.iv864, 3
  %scevgep1500 = getelementptr i8, ptr %4, i64 %57 ; 5 uses
  %58 = extractelement <2 x i64> %50, i64 0
  %i.afu = udiv i64 %58, %umax1503
  %59 = extractelement <2 x i64> %47, i64 0
  %60 = add i64 %i.afu, %59                       ; 2 uses
  %61 = mul i64 %i.afl, %60
  %scevgep1504.a = getelementptr i8, ptr %scevgep1500, i64 %61 ; 4 uses
  %62 = icmp ult ptr %scevgep1500, %scevgep1504.a
  %umin1505 = select i1 %62, ptr %scevgep1500, ptr %scevgep1504.a
  %i.afv = icmp ugt ptr %scevgep1500, %scevgep1504.a
  %umax1506 = select i1 %i.afv, ptr %scevgep1500, ptr %scevgep1504.a
  %scevgep1507 = getelementptr i8, ptr %umax1506, i64 8
  %63 = ashr exact i64 %sext1580, 29              ; 2 uses
  %scevgep1508 = getelementptr i8, ptr %3, i64 %63
  %64 = shl i64 %60, 3
  %i.afw = getelementptr i8, ptr %scevgep1509, i64 %64
  %scevgep1510 = getelementptr i8, ptr %i.afw, i64 %63
  %bound01511 = icmp ult ptr %umin1505, %scevgep1510
  %bound11512 = icmp ult ptr %scevgep1508, %scevgep1507
  %found.conflict1513 = and i1 %bound01511, %bound11512
  br i1 %found.conflict1513, label %.lr.ph612.preheader, label %vector.main.loop.iter.check1518

vector.main.loop.iter.check1518:                  ; preds = %vector.memcheck1499
  %min.iters.check1519 = icmp ult i64 %56, 16
  br i1 %min.iters.check1519, label %vec.epilog.ph1552, label %vector.ph1520

vector.ph1520:                                    ; preds = %vector.main.loop.iter.check1518
  %i.afx = and i64 %56, 12
  %n.vec1521 = and i64 %56, -16                   ; 5 uses
  %i.afy = mul i64 %n.vec1521, %i.adw
  %i.afz = add i64 %indvars.iv864, %i.afy         ; 2 uses
  %i.aga = add i64 %51, %n.vec1521                ; 2 uses
  %broadcast.splatinsert1524 = insertelement <4 x i64> poison, i64 %indvars.iv864, i64 0
  %broadcast.splat1525 = shufflevector <4 x i64> %broadcast.splatinsert1524, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1526 = add nuw nsw <4 x i64> %broadcast.splat1525, %i.afn
  %i.agb = getelementptr [8 x i8], ptr %3, i64 %51
  br label %vector.body1527

vector.body1527:                                  ; preds = %vector.body1527, %vector.ph1520
  %index1528 = phi i64 [ 0, %vector.ph1520 ], [ %index.next1541, %vector.body1527 ] ; 2 uses
  %vec.ind1529 = phi <4 x i64> [ %induction1526, %vector.ph1520 ], [ %vec.ind.next1542.reass, %vector.body1527 ] ; 5 uses
  %step.add1530 = add nuw nsw <4 x i64> %vec.ind1529, %i.afm
  %step.add.21531.reass = add nuw nsw <4 x i64> %vec.ind1529, %invariant.op1704
  %step.add.31532.reass = add nuw nsw <4 x i64> %vec.ind1529, %invariant.op1705
  %i.agc = getelementptr [8 x i8], ptr %i.agb, i64 %index1528 ; 4 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 32
  %i.age = getelementptr inbounds nuw i8, ptr %i.agc, i64 64
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agc, i64 96
  %wide.load1533 = load <4 x double>, ptr %i.agc, align 8, !tbaa !9, !alias.scope !96
  %wide.load1534 = load <4 x double>, ptr %i.agd, align 8, !tbaa !9, !alias.scope !96
  %wide.load1535 = load <4 x double>, ptr %i.age, align 8, !tbaa !9, !alias.scope !96
  %wide.load1536 = load <4 x double>, ptr %i.agf, align 8, !tbaa !9, !alias.scope !96
  %wide.gep1537 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1529
  %wide.gep1538 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add1530
  %wide.gep1539 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.21531.reass
  %wide.gep1540 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.31532.reass
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1533, <4 x ptr> align 8 %wide.gep1537, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99, !noalias !96
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1534, <4 x ptr> align 8 %wide.gep1538, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99, !noalias !96
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1535, <4 x ptr> align 8 %wide.gep1539, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99, !noalias !96
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1536, <4 x ptr> align 8 %wide.gep1540, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99, !noalias !96
  %index.next1541 = add nuw i64 %index1528, 16    ; 2 uses
  %vec.ind.next1542.reass = add nuw nsw <4 x i64> %vec.ind1529, %invariant.op1706
  %i.agg = icmp eq i64 %index.next1541, %n.vec1521
  br i1 %i.agg, label %middle.block1543, label %vector.body1527, !llvm.loop !101

middle.block1543:                                 ; preds = %vector.body1527
  %cmp.n1544 = icmp eq i64 %56, %n.vec1521
  br i1 %cmp.n1544, label %._crit_edge613, label %vec.epilog.iter.check1550

vec.epilog.iter.check1550:                        ; preds = %middle.block1543
  %min.epilog.iters.check1551 = icmp eq i64 %i.afx, 0
  br i1 %min.epilog.iters.check1551, label %.lr.ph612.preheader, label %vec.epilog.ph1552, !prof !15

vec.epilog.ph1552:                                ; preds = %vector.main.loop.iter.check1518, %vec.epilog.iter.check1550
  %vec.epilog.resume.val1545 = phi i64 [ %n.vec1521, %vec.epilog.iter.check1550 ], [ 0, %vector.main.loop.iter.check1518 ]
  %bc.resume.val1546 = phi i64 [ %i.afz, %vec.epilog.iter.check1550 ], [ %indvars.iv864, %vector.main.loop.iter.check1518 ]
  %n.vec1553 = and i64 %56, -4                    ; 4 uses
  %i.agh = mul i64 %n.vec1553, %i.adw
  %i.agi = add i64 %indvars.iv864, %i.agh
  %i.agj = add i64 %51, %n.vec1553                ; 2 uses
  %broadcast.splatinsert1554 = insertelement <4 x i64> poison, i64 %bc.resume.val1546, i64 0
  %broadcast.splat1555 = shufflevector <4 x i64> %broadcast.splatinsert1554, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1558 = add nuw nsw <4 x i64> %broadcast.splat1555, %i.afo
  %i.agk = getelementptr [8 x i8], ptr %3, i64 %51
  br label %vec.epilog.vector.body1561

vec.epilog.vector.body1561:                       ; preds = %vec.epilog.vector.body1561, %vec.epilog.ph1552
  %index1562 = phi i64 [ %vec.epilog.resume.val1545, %vec.epilog.ph1552 ], [ %index.next1566, %vec.epilog.vector.body1561 ] ; 2 uses
  %vec.ind1563 = phi <4 x i64> [ %induction1558, %vec.epilog.ph1552 ], [ %vec.ind.next1567, %vec.epilog.vector.body1561 ] ; 2 uses
  %i.agl = getelementptr [8 x i8], ptr %i.agk, i64 %index1562
  %wide.load1564 = load <4 x double>, ptr %i.agl, align 8, !tbaa !9, !alias.scope !96
  %wide.gep1565 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1563
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1564, <4 x ptr> align 8 %wide.gep1565, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99, !noalias !96
  %index.next1566 = add nuw i64 %index1562, 4     ; 2 uses
  %vec.ind.next1567 = add nuw nsw <4 x i64> %vec.ind1563, %broadcast.splat1560
  %i.agm = icmp eq i64 %index.next1566, %n.vec1553
  br i1 %i.agm, label %vec.epilog.middle.block1568, label %vec.epilog.vector.body1561, !llvm.loop !102

vec.epilog.middle.block1568:                      ; preds = %vec.epilog.vector.body1561
  %cmp.n1569 = icmp eq i64 %56, %n.vec1553
  br i1 %cmp.n1569, label %._crit_edge613, label %.lr.ph612.preheader

.lr.ph612.preheader:                              ; preds = %vector.memcheck1499, %iter.check1548, %vec.epilog.iter.check1550, %vec.epilog.middle.block1568
  %indvars.iv866.ph = phi i64 [ %indvars.iv864, %iter.check1548 ], [ %indvars.iv864, %vector.memcheck1499 ], [ %i.afz, %vec.epilog.iter.check1550 ], [ %i.agi, %vec.epilog.middle.block1568 ]
  %indvars.iv862.ph = phi i64 [ %51, %iter.check1548 ], [ %51, %vector.memcheck1499 ], [ %i.aga, %vec.epilog.iter.check1550 ], [ %i.agj, %vec.epilog.middle.block1568 ]
  br label %.lr.ph612

.lr.ph612:                                        ; preds = %.lr.ph612.preheader, %.lr.ph612
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %.lr.ph612 ], [ %indvars.iv866.ph, %.lr.ph612.preheader ] ; 2 uses
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %.lr.ph612 ], [ %indvars.iv862.ph, %.lr.ph612.preheader ] ; 2 uses
  %i.agn = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv862
  %i.ago = load double, ptr %i.agn, align 8, !tbaa !9
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv866
  store double %i.ago, ptr %i.agp, align 8, !tbaa !9
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, 1 ; 2 uses
  %indvars.iv.next867 = add nuw nsw i64 %indvars.iv866, %i.afk ; 2 uses
  %.not882 = icmp sgt i64 %indvars.iv.next867, %i.aft
  br i1 %.not882, label %._crit_edge613, label %.lr.ph612, !llvm.loop !103

._crit_edge613:                                   ; preds = %.lr.ph612, %middle.block1543, %vec.epilog.middle.block1568
  %indvars.iv.next863.lcssa = phi i64 [ %i.agj, %vec.epilog.middle.block1568 ], [ %i.aga, %middle.block1543 ], [ %indvars.iv.next863, %.lr.ph612 ]
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1 ; 2 uses
  %exitcond873.not = icmp eq i64 %indvars.iv.next865, %wide.trip.count872
  br i1 %exitcond873.not, label %.loopexit, label %iter.check1548, !llvm.loop !104

.loopexit.loopexit1600.unr-lcssa:                 ; preds = %._crit_edge495.3
  %lcmp.mod1620.not = icmp eq i64 %xtraiter1619, 0
  br i1 %lcmp.mod1620.not, label %.loopexit, label %iter.check1075.epil.preheader

iter.check1075.epil.preheader:                    ; preds = %.loopexit.loopexit1600.unr-lcssa, %.preheader.preheader
  %indvars.iv725.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next726.3, %.loopexit.loopexit1600.unr-lcssa ]
  %.18499.epil.init = phi i64 [ %i.tx, %.preheader.preheader ], [ %indvars.iv.next724.3, %.loopexit.loopexit1600.unr-lcssa ]
  %lcmp.mod1621 = icmp ne i64 %xtraiter1619, 0
  tail call void @llvm.assume(i1 %lcmp.mod1621)
  br label %iter.check1075.epil

iter.check1075.epil:                              ; preds = %._crit_edge495.epil, %iter.check1075.epil.preheader
  %indvars.iv725.epil = phi i64 [ %indvars.iv725.epil.init, %iter.check1075.epil.preheader ], [ %indvars.iv.next726.epil, %._crit_edge495.epil ] ; 3 uses
  %.18499.epil = phi i64 [ %.18499.epil.init, %iter.check1075.epil.preheader ], [ %indvars.iv.next724.epil, %._crit_edge495.epil ]
  %epil.iter = phi i64 [ 0, %iter.check1075.epil.preheader ], [ %epil.iter.next, %._crit_edge495.epil ]
  %invariant.gep899.epil = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv725.epil
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %iter.check1075.epil
  %indvars.iv727.epil = phi i64 [ %indvars.iv725.epil, %iter.check1075.epil ], [ %indvars.iv.next728.epil, %bb.y ] ; 2 uses
  %indvars.iv723.epil = phi i64 [ %.18499.epil, %iter.check1075.epil ], [ %indvars.iv.next724.epil, %bb.y ] ; 2 uses
  %i.agq = mul nuw nsw i64 %indvars.iv727.epil, %i.ty
  %i.agr = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv723.epil
  %i.ags = load double, ptr %i.agr, align 8, !tbaa !9
  %gep900.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.epil, i64 %i.agq
  store double %i.ags, ptr %gep900.epil, align 8, !tbaa !9
  %indvars.iv.next724.epil = add nsw i64 %indvars.iv723.epil, 1 ; 2 uses
  %indvars.iv.next728.epil = add nuw nsw i64 %indvars.iv727.epil, 1 ; 2 uses
  %.not397.not.epil = icmp samesign ult i64 %indvars.iv.next728.epil, %i.tz
  br i1 %.not397.not.epil, label %bb.y, label %._crit_edge495.epil, !llvm.loop !67

._crit_edge495.epil:                              ; preds = %bb.y
  %indvars.iv.next726.epil = add nuw nsw i64 %indvars.iv725.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1619
  br i1 %epil.iter.cmp.not, label %.loopexit, label %iter.check1075.epil, !llvm.loop !105

.loopexit:                                        ; preds = %.loopexit434, %._crit_edge472, %.loopexit.loopexit1600.unr-lcssa, %._crit_edge495.epil, %._crit_edge515, %._crit_edge542, %._crit_edge565, %._crit_edge590, %._crit_edge613, %bb.n, %bb.k, %._crit_edge490, %._crit_edge444, %._crit_edge465, %._crit_edge508, %._crit_edge535, %._crit_edge558, %bb.g, %bb.h, %.thread
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smax.v2i64(<2 x i64>, <2 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(write) }
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
