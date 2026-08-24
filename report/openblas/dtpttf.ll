Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtpttf?download=true
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
  %i.m = lshr i32 %i.h, 1                         ; 4 uses
  %i.n = sub nsw i32 %i.h, %i.m                   ; 2 uses
  %. = select i1 %.not379, i32 %i.m, i32 %i.n     ; 11 uses
  %.901 = select i1 %.not379, i32 %i.n, i32 %i.m  ; 16 uses
  %i.o = and i32 %i.h, 1
  %i.p = icmp eq i32 %i.o, 0                      ; 2 uses
  %i.q = lshr i32 %i.h, 1                         ; 15 uses
  %.0328 = or i32 %i.h, 1                         ; 8 uses
  br i1 %.not, label %bb.j, label %.thread416

bb.j:                                             ; preds = %bb.i
  %i.r = add nuw i32 %i.h, 1
  %i.s = lshr i32 %i.r, 1                         ; 23 uses
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
  %invariant.gep1640 = getelementptr [8 x i8], ptr %3, i64 %i.z
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep1641 = getelementptr [8 x i8], ptr %invariant.gep1640, i64 %index ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %gep1641, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %gep1641, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %gep1641, i64 96
  %wide.load = load <4 x double>, ptr %gep1641, align 8, !tbaa !9
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
  %invariant.gep1642 = getelementptr [8 x i8], ptr %3, i64 %i.z
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv644
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index916 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next918, %vec.epilog.vector.body ] ; 3 uses
  %gep1643 = getelementptr [8 x i8], ptr %invariant.gep1642, i64 %index916
  %wide.load917 = load <4 x double>, ptr %gep1643, align 8, !tbaa !9
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
end_hunk_0
begin_hunk_1_@dtpttf_:bb.a
  %wide.trip.count721 = zext nneg i32 %i.q to i64 ; 3 uses
  %wide.trip.count714 = zext nneg i32 %i.h to i64 ; 4 uses
  %i.se = add i64 %i.b, 8
  %i.sf = shl nuw nsw i64 %i.sc, 3
  %i.sg = add nuw nsw i64 %i.sf, 8
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.preheader, %._crit_edge484
  %indvars.iv716 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next717, %._crit_edge484 ] ; 2 uses
  %indvars.iv707 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next708, %._crit_edge484 ] ; 10 uses
  %.16489 = phi i32 [ 0, %.preheader432.preheader ], [ %.17.lcssa, %._crit_edge484 ] ; 2 uses
  %i.sh = sub nsw i64 %wide.trip.count714, %indvars.iv707 ; 7 uses
  %i.si = mul i64 %i.sg, %indvars.iv707
  %indvars720 = trunc i64 %indvars.iv707 to i32
  %.not398.not480 = icmp sgt i32 %i.h, %indvars720
  br i1 %.not398.not480, label %iter.check1040, label %._crit_edge484

iter.check1040:                                   ; preds = %.preheader432
  %i.sj = sext i32 %.16489 to i64                 ; 7 uses
  %invariant.gep897 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv716 ; 11 uses
  %min.iters.check1024 = icmp ult i64 %i.sh, 4
  br i1 %min.iters.check1024, label %.lr.ph483.preheader, label %vector.memcheck1022

vector.memcheck1022:                              ; preds = %iter.check1040
  %i.sk = shl nsw i64 %i.sj, 3
  %i.sl = add i64 %i.se, %i.si
  %i.sm = add i64 %i.sk, %i.a
  %i.sn = sub i64 %i.sm, %i.sl
  %diff.check1023 = icmp ugt i64 %i.sn, -128
  br i1 %diff.check1023, label %.lr.ph483.preheader, label %vector.main.loop.iter.check1025

vector.main.loop.iter.check1025:                  ; preds = %vector.memcheck1022
  %min.iters.check1026 = icmp ult i64 %i.sh, 16
  br i1 %min.iters.check1026, label %vec.epilog.ph1044, label %vector.ph1027

vector.ph1027:                                    ; preds = %vector.main.loop.iter.check1025
  %i.so = and i64 %i.sh, 12
  %n.vec1028 = and i64 %i.sh, -16                 ; 5 uses
  %i.sp = add i64 %indvars.iv707, %n.vec1028
  %i.sq = add i64 %n.vec1028, %i.sj               ; 2 uses
  %invariant.gep1656 = getelementptr [8 x i8], ptr %3, i64 %i.sj
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %vector.ph1027
  %index1030 = phi i64 [ 0, %vector.ph1027 ], [ %index.next1035, %vector.body1029 ] ; 3 uses
  %gep1657 = getelementptr [8 x i8], ptr %invariant.gep1656, i64 %index1030 ; 4 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %gep1657, i64 32
  %i.st = getelementptr inbounds nuw i8, ptr %gep1657, i64 64
  %i.su = getelementptr inbounds nuw i8, ptr %gep1657, i64 96
  %wide.load1031 = load <4 x double>, ptr %gep1657, align 8, !tbaa !9
  %wide.load1032 = load <4 x double>, ptr %i.ss, align 8, !tbaa !9
  %wide.load1033 = load <4 x double>, ptr %i.st, align 8, !tbaa !9
  %wide.load1034 = load <4 x double>, ptr %i.su, align 8, !tbaa !9
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %index1030 ; 4 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 40
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 72
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sv, i64 104
  store <4 x double> %wide.load1031, ptr %i.sw, align 8, !tbaa !9
  store <4 x double> %wide.load1032, ptr %i.sx, align 8, !tbaa !9
  store <4 x double> %wide.load1033, ptr %i.sy, align 8, !tbaa !9
  store <4 x double> %wide.load1034, ptr %i.sz, align 8, !tbaa !9
  %index.next1035 = add nuw i64 %index1030, 16    ; 2 uses
  %i.ta = icmp eq i64 %index.next1035, %n.vec1028
  br i1 %i.ta, label %middle.block1036, label %vector.body1029, !llvm.loop !62

middle.block1036:                                 ; preds = %vector.body1029
  %cmp.n1037 = icmp eq i64 %i.sh, %n.vec1028
  br i1 %cmp.n1037, label %._crit_edge484.loopexit, label %vec.epilog.iter.check1042

vec.epilog.iter.check1042:                        ; preds = %middle.block1036
  %min.epilog.iters.check1043 = icmp eq i64 %i.so, 0
  br i1 %min.epilog.iters.check1043, label %.lr.ph483.preheader, label %vec.epilog.ph1044, !prof !15

vec.epilog.ph1044:                                ; preds = %vector.main.loop.iter.check1025, %vec.epilog.iter.check1042
  %vec.epilog.resume.val1038 = phi i64 [ %n.vec1028, %vec.epilog.iter.check1042 ], [ 0, %vector.main.loop.iter.check1025 ]
  %n.vec1045 = and i64 %i.sh, -4                  ; 4 uses
  %i.tb = add i64 %indvars.iv707, %n.vec1045
  %i.tc = add i64 %n.vec1045, %i.sj               ; 2 uses
  %invariant.gep1658 = getelementptr [8 x i8], ptr %3, i64 %i.sj
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  br label %vec.epilog.vector.body1046

vec.epilog.vector.body1046:                       ; preds = %vec.epilog.vector.body1046, %vec.epilog.ph1044
  %index1047 = phi i64 [ %vec.epilog.resume.val1038, %vec.epilog.ph1044 ], [ %index.next1049, %vec.epilog.vector.body1046 ] ; 3 uses
  %gep1659 = getelementptr [8 x i8], ptr %invariant.gep1658, i64 %index1047
  %wide.load1048 = load <4 x double>, ptr %gep1659, align 8, !tbaa !9
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %index1047
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  store <4 x double> %wide.load1048, ptr %i.tf, align 8, !tbaa !9
  %index.next1049 = add nuw i64 %index1047, 4     ; 2 uses
  %i.tg = icmp eq i64 %index.next1049, %n.vec1045
  br i1 %i.tg, label %vec.epilog.middle.block1050, label %vec.epilog.vector.body1046, !llvm.loop !63

vec.epilog.middle.block1050:                      ; preds = %vec.epilog.vector.body1046
  %cmp.n1051 = icmp eq i64 %i.sh, %n.vec1045
  br i1 %cmp.n1051, label %._crit_edge484.loopexit, label %.lr.ph483.preheader

.lr.ph483.preheader:                              ; preds = %vector.memcheck1022, %iter.check1040, %vec.epilog.iter.check1042, %vec.epilog.middle.block1050
  %indvars.iv709.ph = phi i64 [ %indvars.iv707, %iter.check1040 ], [ %indvars.iv707, %vector.memcheck1022 ], [ %i.sp, %vec.epilog.iter.check1042 ], [ %i.tb, %vec.epilog.middle.block1050 ] ; 4 uses
  %indvars.iv705.ph = phi i64 [ %i.sj, %iter.check1040 ], [ %i.sj, %vector.memcheck1022 ], [ %i.sq, %vec.epilog.iter.check1042 ], [ %i.tc, %vec.epilog.middle.block1050 ] ; 2 uses
  %i.th = sub i64 %wide.trip.count714, %indvars.iv709.ph
  %xtraiter1614 = and i64 %i.th, 7                ; 2 uses
  %lcmp.mod1615.not = icmp eq i64 %xtraiter1614, 0
  br i1 %lcmp.mod1615.not, label %.lr.ph483.prol.loopexit, label %.lr.ph483.prol

.lr.ph483.prol:                                   ; preds = %.lr.ph483.preheader, %.lr.ph483.prol
  %indvars.iv709.prol = phi i64 [ %indvars.iv.next710.prol, %.lr.ph483.prol ], [ %indvars.iv709.ph, %.lr.ph483.preheader ]
  %indvars.iv705.prol = phi i64 [ %indvars.iv.next706.prol, %.lr.ph483.prol ], [ %indvars.iv705.ph, %.lr.ph483.preheader ] ; 2 uses
  %prol.iter1616 = phi i64 [ %prol.iter1616.next, %.lr.ph483.prol ], [ 0, %.lr.ph483.preheader ]
  %indvars.iv.next710.prol = add nuw nsw i64 %indvars.iv709.prol, 1 ; 3 uses
  %i.ti = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv705.prol
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !9
  %gep898.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv.next710.prol
  store double %i.tj, ptr %gep898.prol, align 8, !tbaa !9
  %indvars.iv.next706.prol = add nsw i64 %indvars.iv705.prol, 1 ; 3 uses
  %prol.iter1616.next = add i64 %prol.iter1616, 1 ; 2 uses
  %prol.iter1616.cmp.not = icmp eq i64 %prol.iter1616.next, %xtraiter1614
  br i1 %prol.iter1616.cmp.not, label %.lr.ph483.prol.loopexit, label %.lr.ph483.prol, !llvm.loop !64

.lr.ph483.prol.loopexit:                          ; preds = %.lr.ph483.prol, %.lr.ph483.preheader
  %indvars.iv.next706.lcssa1601.unr = phi i64 [ poison, %.lr.ph483.preheader ], [ %indvars.iv.next706.prol, %.lr.ph483.prol ]
  %indvars.iv709.unr = phi i64 [ %indvars.iv709.ph, %.lr.ph483.preheader ], [ %indvars.iv.next710.prol, %.lr.ph483.prol ]
  %indvars.iv705.unr = phi i64 [ %indvars.iv705.ph, %.lr.ph483.preheader ], [ %indvars.iv.next706.prol, %.lr.ph483.prol ]
  %i.tk = sub i64 %indvars.iv709.ph, %wide.trip.count714
  %i.tl = icmp ugt i64 %i.tk, -8
  br i1 %i.tl, label %._crit_edge484.loopexit, label %.lr.ph483

.lr.ph483:                                        ; preds = %.lr.ph483.prol.loopexit, %.lr.ph483
  %indvars.iv709 = phi i64 [ %indvars.iv.next710.7, %.lr.ph483 ], [ %indvars.iv709.unr, %.lr.ph483.prol.loopexit ] ; 8 uses
  %indvars.iv705 = phi i64 [ %indvars.iv.next706.7, %.lr.ph483 ], [ %indvars.iv705.unr, %.lr.ph483.prol.loopexit ] ; 9 uses
  %i.tm = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv705
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !9
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898 = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  store double %i.tn, ptr %gep898, align 8, !tbaa !9
  %i.tp = getelementptr [8 x i8], ptr %3, i64 %indvars.iv705
  %i.tq = getelementptr i8, ptr %i.tp, i64 8
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !9
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.1 = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  store double %i.tr, ptr %gep898.1, align 8, !tbaa !9
  %i.tt = getelementptr [8 x i8], ptr %3, i64 %indvars.iv705
  %i.tu = getelementptr i8, ptr %i.tt, i64 16
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !9
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.2 = getelementptr inbounds nuw i8, ptr %i.tw, i64 24
  store double %i.tv, ptr %gep898.2, align 8, !tbaa !9
  %i.tx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv705
  %i.ty = getelementptr i8, ptr %i.tx, i64 24
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !9
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.3 = getelementptr inbounds nuw i8, ptr %i.ua, i64 32
  store double %i.tz, ptr %gep898.3, align 8, !tbaa !9
  %i.ub = getelementptr [8 x i8], ptr %3, i64 %indvars.iv705
  %i.uc = getelementptr i8, ptr %i.ub, i64 32
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !9
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.4 = getelementptr inbounds nuw i8, ptr %i.ue, i64 40
  store double %i.ud, ptr %gep898.4, align 8, !tbaa !9
  %i.uf = getelementptr [8 x i8], ptr %3, i64 %indvars.iv705
  %i.ug = getelementptr i8, ptr %i.uf, i64 40
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !9
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.5 = getelementptr inbounds nuw i8, ptr %i.ui, i64 48
  store double %i.uh, ptr %gep898.5, align 8, !tbaa !9
  %i.uj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv705
  %i.uk = getelementptr i8, ptr %i.uj, i64 48
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !9
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.6 = getelementptr inbounds nuw i8, ptr %i.um, i64 56
  store double %i.ul, ptr %gep898.6, align 8, !tbaa !9
  %indvars.iv.next710.7 = add nuw nsw i64 %indvars.iv709, 8 ; 3 uses
  %i.un = getelementptr [8 x i8], ptr %3, i64 %indvars.iv705
  %i.uo = getelementptr i8, ptr %i.un, i64 56
  %i.up = load double, ptr %i.uo, align 8, !tbaa !9
  %gep898.7 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv.next710.7
  store double %i.up, ptr %gep898.7, align 8, !tbaa !9
  %indvars.iv.next706.7 = add nsw i64 %indvars.iv705, 8 ; 2 uses
  %exitcond715.not.7 = icmp eq i64 %indvars.iv.next710.7, %wide.trip.count714
  br i1 %exitcond715.not.7, label %._crit_edge484.loopexit, label %.lr.ph483, !llvm.loop !65

._crit_edge484.loopexit:                          ; preds = %.lr.ph483.prol.loopexit, %.lr.ph483, %vec.epilog.middle.block1050, %middle.block1036
  %indvars.iv.next706.lcssa = phi i64 [ %i.tc, %vec.epilog.middle.block1050 ], [ %i.sq, %middle.block1036 ], [ %indvars.iv.next706.lcssa1601.unr, %.lr.ph483.prol.loopexit ], [ %indvars.iv.next706.7, %.lr.ph483 ]
  %i.uq = trunc nsw i64 %indvars.iv.next706.lcssa to i32
  br label %._crit_edge484

._crit_edge484:                                   ; preds = %._crit_edge484.loopexit, %.preheader432
  %.17.lcssa = phi i32 [ %.16489, %.preheader432 ], [ %i.uq, %._crit_edge484.loopexit ] ; 2 uses
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, %i.sc
  %indvars.iv.next708 = add nuw nsw i64 %indvars.iv707, 1 ; 2 uses
  %exitcond722.not = icmp eq i64 %indvars.iv.next708, %wide.trip.count721
  br i1 %exitcond722.not, label %._crit_edge490, label %.preheader432, !llvm.loop !66

._crit_edge490:                                   ; preds = %._crit_edge484
  %.not396.not497 = icmp eq i32 %i.h, 0
  br i1 %.not396.not497, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge490
  %i.ur = sext i32 %.17.lcssa to i64              ; 2 uses
  %i.us = zext nneg i32 %.0328 to i64             ; 5 uses
  %i.ut = zext nneg i32 %i.q to i64               ; 5 uses
  %xtraiter1617 = and i64 %wide.trip.count721, 3  ; 3 uses
  %6 = icmp ult i32 %i.h, 8
  br i1 %6, label %iter.check1075.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count721, 1073741820
  br label %iter.check1075

iter.check1075:                                   ; preds = %._crit_edge495.3, %.preheader.preheader.new
  %indvars.iv725 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next726.3, %._crit_edge495.3 ] ; 6 uses
  %.18499 = phi i64 [ %i.ur, %.preheader.preheader.new ], [ %indvars.iv.next724.3, %._crit_edge495.3 ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %._crit_edge495.3 ]
  %invariant.gep899 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv725
  br label %bb.r

bb.r:                                             ; preds = %iter.check1075, %bb.r
  %indvars.iv727.a = phi i64 [ %indvars.iv725, %iter.check1075 ], [ %indvars.iv.next728, %bb.r ] ; 2 uses
  %indvars.iv723.a = phi i64 [ %.18499, %iter.check1075 ], [ %indvars.iv.next724, %bb.r ] ; 2 uses
  %7 = mul nuw nsw i64 %indvars.iv727.a, %i.us
  %8 = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv723.a
  %9 = load double, ptr %8, align 8, !tbaa !9
  %gep900.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899, i64 %7
  store double %9, ptr %gep900.a, align 8, !tbaa !9
  %indvars.iv.next724 = add nsw i64 %indvars.iv723.a, 1 ; 2 uses
  %indvars.iv.next728 = add nuw nsw i64 %indvars.iv727.a, 1 ; 2 uses
  %.not397.not = icmp samesign ult i64 %indvars.iv.next728, %i.ut
  br i1 %.not397.not, label %bb.r, label %._crit_edge495, !llvm.loop !67

._crit_edge495:                                   ; preds = %bb.r
  %indvars.iv.next726 = or disjoint i64 %indvars.iv725, 1 ; 2 uses
  %invariant.gep899.1 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next726
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %._crit_edge495
  %indvars.iv727.1 = phi i64 [ %indvars.iv.next726, %._crit_edge495 ], [ %indvars.iv.next728.1.a, %bb.s ] ; 2 uses
  %indvars.iv723.1 = phi i64 [ %indvars.iv.next724, %._crit_edge495 ], [ %indvars.iv.next724.1, %bb.s ] ; 2 uses
  %i.uu = mul nuw nsw i64 %indvars.iv727.1, %i.us
  %i.uv = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv723.1
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !9
  %gep900.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.1, i64 %i.uu
  store double %i.uw, ptr %gep900.1.a, align 8, !tbaa !9
  %indvars.iv.next724.1 = add nsw i64 %indvars.iv723.1, 1 ; 2 uses
  %indvars.iv.next728.1.a = add nuw nsw i64 %indvars.iv727.1, 1 ; 2 uses
  %.not397.not.1 = icmp samesign ult i64 %indvars.iv.next728.1.a, %i.ut
  br i1 %.not397.not.1, label %bb.s, label %._crit_edge495.1, !llvm.loop !67

._crit_edge495.1:                                 ; preds = %bb.s
  %indvars.iv.next726.1 = or disjoint i64 %indvars.iv725, 2 ; 2 uses
  %invariant.gep899.2 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next726.1
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %._crit_edge495.1
  %indvars.iv727.2 = phi i64 [ %indvars.iv.next726.1, %._crit_edge495.1 ], [ %indvars.iv.next728.2, %bb.t ] ; 2 uses
  %indvars.iv723.2 = phi i64 [ %indvars.iv.next724.1, %._crit_edge495.1 ], [ %indvars.iv.next724.2, %bb.t ] ; 2 uses
  %10 = mul nuw nsw i64 %indvars.iv727.2, %i.us
  %11 = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv723.2
  %12 = load double, ptr %11, align 8, !tbaa !9
  %gep900.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.2, i64 %10
  store double %12, ptr %gep900.2, align 8, !tbaa !9
  %indvars.iv.next724.2 = add nsw i64 %indvars.iv723.2, 1 ; 2 uses
  %indvars.iv.next728.2 = add nuw nsw i64 %indvars.iv727.2, 1 ; 2 uses
  %.not397.not.2 = icmp samesign ult i64 %indvars.iv.next728.2, %i.ut
  br i1 %.not397.not.2, label %bb.t, label %._crit_edge495.2, !llvm.loop !67

._crit_edge495.2:                                 ; preds = %bb.t
  %indvars.iv.next726.2 = or disjoint i64 %indvars.iv725, 3 ; 2 uses
  %invariant.gep899.3 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next726.2
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %._crit_edge495.2
  %indvars.iv727.3 = phi i64 [ %indvars.iv.next726.2, %._crit_edge495.2 ], [ %indvars.iv.next728.3.a, %bb.u ] ; 2 uses
  %indvars.iv723.3 = phi i64 [ %indvars.iv.next724.2, %._crit_edge495.2 ], [ %indvars.iv.next724.3, %bb.u ] ; 2 uses
  %i.ux = mul nuw nsw i64 %indvars.iv727.3, %i.us
  %i.uy = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv723.3
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !9
  %gep900.3.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.3, i64 %i.ux
  store double %i.uz, ptr %gep900.3.a, align 8, !tbaa !9
  %indvars.iv.next724.3 = add nsw i64 %indvars.iv723.3, 1 ; 3 uses
  %indvars.iv.next728.3.a = add nuw nsw i64 %indvars.iv727.3, 1 ; 2 uses
  %.not397.not.3 = icmp samesign ult i64 %indvars.iv.next728.3.a, %i.ut
  br i1 %.not397.not.3, label %bb.u, label %._crit_edge495.3, !llvm.loop !67

._crit_edge495.3:                                 ; preds = %bb.u
  %indvars.iv.next726.3 = add nuw nsw i64 %indvars.iv725, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit1600.unr-lcssa, label %iter.check1075, !llvm.loop !68

iter.check1113:                                   ; preds = %.lr.ph507.preheader, %.loopexit1574
  %loop-unroll.iv1620 = phi i32 [ 0, %.lr.ph507.preheader ], [ %loop-unroll.iv.next1621, %.loopexit1574 ] ; 2 uses
  %indvar1095 = phi i64 [ 0, %.lr.ph507.preheader ], [ %indvar.next1096, %.loopexit1574 ] ; 3 uses
  %indvar1092 = phi i32 [ 0, %.lr.ph507.preheader ], [ %indvar.next1093, %.loopexit1574 ] ; 2 uses
  %indvars.iv744 = phi i32 [ 1, %.lr.ph507.preheader ], [ %indvars.iv.next745, %.loopexit1574 ] ; 3 uses
  %indvars.iv737.in = phi i32 [ %i.q, %.lr.ph507.preheader ], [ %indvars.iv737, %.loopexit1574 ]
  %.20505 = phi i32 [ 0, %.lr.ph507.preheader ], [ %i.vm, %.loopexit1574 ] ; 3 uses
  %i.va = trunc i64 %indvar1095 to i32
  %i.vb = add i32 %i.va, 2
  %i.vc = add i64 %indvar1095, 1                  ; 7 uses
  %i.vd = add i32 %i.sd, %indvar1092
  %i.ve = sext i32 %i.vd to i64
  %i.vf = shl nsw i64 %i.ve, 3
  %i.vg = sext i32 %.20505 to i64
  %i.vh = shl nsw i64 %i.vg, 3
  %i.vi = add i64 %i.vf, %i.b
  %i.vj = add i64 %i.vh, %i.a
  %indvars.iv737 = add i32 %indvars.iv737.in, 1   ; 2 uses
  %i.vk = sext i32 %indvars.iv737 to i64          ; 5 uses
  %i.vl = sext i32 %.20505 to i64                 ; 5 uses
  %i.vm = add i32 %.20505, %indvars.iv744         ; 4 uses
  %min.iters.check1097 = icmp ult i64 %i.vc, 4
  %or.cond1583.not1586 = or i1 %min.iters.check1097, %ident.check1090.not
  %i.vn = sub i64 %i.vj, %i.vi
  %diff.check1094 = icmp ugt i64 %i.vn, -128
  %or.cond1584 = select i1 %or.cond1583.not1586, i1 true, i1 %diff.check1094
  br i1 %or.cond1584, label %vec.epilog.scalar.ph1114.preheader, label %vector.main.loop.iter.check1098

vector.main.loop.iter.check1098:                  ; preds = %iter.check1113
  %min.iters.check1099 = icmp ult i64 %i.vc, 16
  br i1 %min.iters.check1099, label %vec.epilog.ph1117, label %vector.ph1100

vector.ph1100:                                    ; preds = %vector.main.loop.iter.check1098
  %i.vo = and i64 %i.vc, 12
  %n.vec1101 = and i64 %i.vc, -16                 ; 5 uses
  %i.vp = add i64 %n.vec1101, %i.vk
  %i.vq = add i64 %n.vec1101, %i.vl
  %invariant.gep1660 = getelementptr [8 x i8], ptr %3, i64 %i.vl
  %invariant.gep1662 = getelementptr [8 x i8], ptr %4, i64 %i.vk
  br label %vector.body1102

vector.body1102:                                  ; preds = %vector.body1102, %vector.ph1100
  %index1103 = phi i64 [ 0, %vector.ph1100 ], [ %index.next1108, %vector.body1102 ] ; 3 uses
  %gep1661 = getelementptr [8 x i8], ptr %invariant.gep1660, i64 %index1103 ; 4 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %gep1661, i64 32
  %i.vs = getelementptr inbounds nuw i8, ptr %gep1661, i64 64
  %i.vt = getelementptr inbounds nuw i8, ptr %gep1661, i64 96
  %wide.load1104 = load <4 x double>, ptr %gep1661, align 8, !tbaa !9
  %wide.load1105 = load <4 x double>, ptr %i.vr, align 8, !tbaa !9
  %wide.load1106 = load <4 x double>, ptr %i.vs, align 8, !tbaa !9
  %wide.load1107 = load <4 x double>, ptr %i.vt, align 8, !tbaa !9
  %gep1663 = getelementptr [8 x i8], ptr %invariant.gep1662, i64 %index1103 ; 4 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %gep1663, i64 32
  %i.vv = getelementptr inbounds nuw i8, ptr %gep1663, i64 64
  %i.vw = getelementptr inbounds nuw i8, ptr %gep1663, i64 96
  store <4 x double> %wide.load1104, ptr %gep1663, align 8, !tbaa !9
  store <4 x double> %wide.load1105, ptr %i.vu, align 8, !tbaa !9
  store <4 x double> %wide.load1106, ptr %i.vv, align 8, !tbaa !9
  store <4 x double> %wide.load1107, ptr %i.vw, align 8, !tbaa !9
  %index.next1108 = add nuw i64 %index1103, 16    ; 2 uses
  %i.vx = icmp eq i64 %index.next1108, %n.vec1101
  br i1 %i.vx, label %middle.block1109, label %vector.body1102, !llvm.loop !69

middle.block1109:                                 ; preds = %vector.body1102
  %cmp.n1110 = icmp eq i64 %i.vc, %n.vec1101
  br i1 %cmp.n1110, label %.loopexit1574, label %vec.epilog.iter.check1115

vec.epilog.iter.check1115:                        ; preds = %middle.block1109
  %min.epilog.iters.check1116 = icmp eq i64 %i.vo, 0
  br i1 %min.epilog.iters.check1116, label %vec.epilog.scalar.ph1114.preheader, label %vec.epilog.ph1117, !prof !15

vec.epilog.ph1117:                                ; preds = %vector.main.loop.iter.check1098, %vec.epilog.iter.check1115
  %vec.epilog.resume.val1111 = phi i64 [ %n.vec1101, %vec.epilog.iter.check1115 ], [ 0, %vector.main.loop.iter.check1098 ]
  %n.vec1118 = and i64 %i.vc, -4                  ; 4 uses
  %i.vy = add i64 %n.vec1118, %i.vk
  %i.vz = add i64 %n.vec1118, %i.vl
  %invariant.gep1664 = getelementptr [8 x i8], ptr %3, i64 %i.vl
  %invariant.gep1666 = getelementptr [8 x i8], ptr %4, i64 %i.vk
  br label %vec.epilog.vector.body1119

vec.epilog.vector.body1119:                       ; preds = %vec.epilog.vector.body1119, %vec.epilog.ph1117
  %index1120 = phi i64 [ %vec.epilog.resume.val1111, %vec.epilog.ph1117 ], [ %index.next1122, %vec.epilog.vector.body1119 ] ; 3 uses
  %gep1665 = getelementptr [8 x i8], ptr %invariant.gep1664, i64 %index1120
  %wide.load1121 = load <4 x double>, ptr %gep1665, align 8, !tbaa !9
  %gep1667 = getelementptr [8 x i8], ptr %invariant.gep1666, i64 %index1120
  store <4 x double> %wide.load1121, ptr %gep1667, align 8, !tbaa !9
  %index.next1122 = add nuw i64 %index1120, 4     ; 2 uses
  %i.wa = icmp eq i64 %index.next1122, %n.vec1118
  br i1 %i.wa, label %vec.epilog.middle.block1123, label %vec.epilog.vector.body1119, !llvm.loop !70

vec.epilog.middle.block1123:                      ; preds = %vec.epilog.vector.body1119
  %cmp.n1124 = icmp eq i64 %i.vc, %n.vec1118
  br i1 %cmp.n1124, label %.loopexit1574, label %vec.epilog.scalar.ph1114.preheader

vec.epilog.scalar.ph1114.preheader:               ; preds = %iter.check1113, %vec.epilog.iter.check1115, %vec.epilog.middle.block1123
  %indvars.iv739.ph = phi i64 [ %i.vk, %iter.check1113 ], [ %i.vp, %vec.epilog.iter.check1115 ], [ %i.vy, %vec.epilog.middle.block1123 ] ; 2 uses
  %indvars.iv735.ph = phi i64 [ %i.vl, %iter.check1113 ], [ %i.vq, %vec.epilog.iter.check1115 ], [ %i.vz, %vec.epilog.middle.block1123 ] ; 3 uses
  %i.wb = trunc i64 %indvars.iv735.ph to i32      ; 2 uses
  %i.wc = sub i32 %i.vm, %i.wb
  %i.wd = sub i32 %loop-unroll.iv1620, %i.wb
  %xtraiter1622 = and i32 %i.wc, 7                ; 2 uses
  %lcmp.mod1623.not = icmp eq i32 %xtraiter1622, 0
  br i1 %lcmp.mod1623.not, label %vec.epilog.scalar.ph1114.prol.loopexit, label %vec.epilog.scalar.ph1114.prol

vec.epilog.scalar.ph1114.prol:                    ; preds = %vec.epilog.scalar.ph1114.preheader, %vec.epilog.scalar.ph1114.prol
  %indvars.iv739.prol = phi i64 [ %indvars.iv.next740.prol, %vec.epilog.scalar.ph1114.prol ], [ %indvars.iv739.ph, %vec.epilog.scalar.ph1114.preheader ] ; 2 uses
  %indvars.iv735.prol = phi i64 [ %indvars.iv.next736.prol, %vec.epilog.scalar.ph1114.prol ], [ %indvars.iv735.ph, %vec.epilog.scalar.ph1114.preheader ] ; 2 uses
  %prol.iter1624 = phi i32 [ %prol.iter1624.next, %vec.epilog.scalar.ph1114.prol ], [ 0, %vec.epilog.scalar.ph1114.preheader ]
  %i.we = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv735.prol
  %i.wf = load double, ptr %i.we, align 8, !tbaa !9
  %i.wg = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv739.prol
  store double %i.wf, ptr %i.wg, align 8, !tbaa !9
  %indvars.iv.next736.prol = add nsw i64 %indvars.iv735.prol, 1 ; 2 uses
  %indvars.iv.next740.prol = add nsw i64 %indvars.iv739.prol, %i.sc ; 2 uses
  %prol.iter1624.next = add i32 %prol.iter1624, 1 ; 2 uses
  %prol.iter1624.cmp.not = icmp eq i32 %prol.iter1624.next, %xtraiter1622
  br i1 %prol.iter1624.cmp.not, label %vec.epilog.scalar.ph1114.prol.loopexit, label %vec.epilog.scalar.ph1114.prol, !llvm.loop !71

vec.epilog.scalar.ph1114.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1114.prol, %vec.epilog.scalar.ph1114.preheader
  %indvars.iv739.unr = phi i64 [ %indvars.iv739.ph, %vec.epilog.scalar.ph1114.preheader ], [ %indvars.iv.next740.prol, %vec.epilog.scalar.ph1114.prol ]
  %indvars.iv735.unr = phi i64 [ %indvars.iv735.ph, %vec.epilog.scalar.ph1114.preheader ], [ %indvars.iv.next736.prol, %vec.epilog.scalar.ph1114.prol ]
  %i.wh = icmp ult i32 %i.wd, 7
  br i1 %i.wh, label %.loopexit1574, label %vec.epilog.scalar.ph1114

vec.epilog.scalar.ph1114:                         ; preds = %vec.epilog.scalar.ph1114.prol.loopexit, %vec.epilog.scalar.ph1114
  %indvars.iv739 = phi i64 [ %indvars.iv.next740.7, %vec.epilog.scalar.ph1114 ], [ %indvars.iv739.unr, %vec.epilog.scalar.ph1114.prol.loopexit ] ; 2 uses
  %indvars.iv735 = phi i64 [ %indvars.iv.next736.7, %vec.epilog.scalar.ph1114 ], [ %indvars.iv735.unr, %vec.epilog.scalar.ph1114.prol.loopexit ] ; 9 uses
  %i.wi = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !9
  %i.wk = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv739
  store double %i.wj, ptr %i.wk, align 8, !tbaa !9
  %indvars.iv.next740 = add nsw i64 %indvars.iv739, %i.sc ; 2 uses
  %i.wl = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wm = getelementptr i8, ptr %i.wl, i64 8
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !9
  %i.wo = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740
  store double %i.wn, ptr %i.wo, align 8, !tbaa !9
  %indvars.iv.next740.1 = add nsw i64 %indvars.iv.next740, %i.sc ; 2 uses
  %i.wp = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wq = getelementptr i8, ptr %i.wp, i64 16
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !9
  %i.ws = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.1
  store double %i.wr, ptr %i.ws, align 8, !tbaa !9
  %indvars.iv.next740.2 = add nsw i64 %indvars.iv.next740.1, %i.sc ; 2 uses
  %i.wt = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wu = getelementptr i8, ptr %i.wt, i64 24
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !9
  %i.ww = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.2
  store double %i.wv, ptr %i.ww, align 8, !tbaa !9
  %indvars.iv.next740.3 = add nsw i64 %indvars.iv.next740.2, %i.sc ; 2 uses
  %i.wx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.wy = getelementptr i8, ptr %i.wx, i64 32
  %i.wz = load double, ptr %i.wy, align 8, !tbaa !9
  %i.xa = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.3
  store double %i.wz, ptr %i.xa, align 8, !tbaa !9
  %indvars.iv.next740.4 = add nsw i64 %indvars.iv.next740.3, %i.sc ; 2 uses
  %i.xb = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.xc = getelementptr i8, ptr %i.xb, i64 40
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !9
  %i.xe = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.4
  store double %i.xd, ptr %i.xe, align 8, !tbaa !9
  %indvars.iv.next740.5 = add nsw i64 %indvars.iv.next740.4, %i.sc ; 2 uses
  %i.xf = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.xg = getelementptr i8, ptr %i.xf, i64 48
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !9
  %i.xi = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.5
  store double %i.xh, ptr %i.xi, align 8, !tbaa !9
  %indvars.iv.next740.6 = add nsw i64 %indvars.iv.next740.5, %i.sc ; 2 uses
  %i.xj = getelementptr [8 x i8], ptr %3, i64 %indvars.iv735
  %i.xk = getelementptr i8, ptr %i.xj, i64 56
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !9
  %i.xm = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next740.6
  store double %i.xl, ptr %i.xm, align 8, !tbaa !9
  %indvars.iv.next736.7 = add nsw i64 %indvars.iv735, 8 ; 2 uses
  %indvars.iv.next740.7 = add nsw i64 %indvars.iv.next740.6, %i.sc
  %lftr.wideiv746.7 = trunc i64 %indvars.iv.next736.7 to i32
  %exitcond747.not.7 = icmp eq i32 %i.vm, %lftr.wideiv746.7
  br i1 %exitcond747.not.7, label %.loopexit1574, label %vec.epilog.scalar.ph1114, !llvm.loop !72

.loopexit1574:                                    ; preds = %vec.epilog.scalar.ph1114.prol.loopexit, %vec.epilog.scalar.ph1114, %vec.epilog.middle.block1123, %middle.block1109
  %indvars.iv.next745 = add nuw i32 %indvars.iv744, 1
  %exitcond748.not = icmp eq i32 %indvars.iv744, %i.q
  %indvar.next1093 = add i32 %indvar1092, 1
  %indvar.next1096 = add i64 %indvar1095, 1
  %loop-unroll.iv.next1621 = add i32 %loop-unroll.iv1620, %i.vb
  br i1 %exitcond748.not, label %._crit_edge508, label %iter.check1113, !llvm.loop !73

._crit_edge508:                                   ; preds = %.loopexit1574
  %.not392.not517.not = icmp eq i32 %i.h, 0
  br i1 %.not392.not517.not, label %.loopexit, label %.lr.ph522.preheader

.lr.ph522.preheader:                              ; preds = %._crit_edge508
  %i.xn = zext nneg i32 %.0328 to i64
  %i.xo = zext nneg i32 %i.q to i64               ; 2 uses
  %wide.trip.count764 = zext nneg i32 %i.h to i64
  %i.xp = sext i32 %i.vm to i64
  %i.xq = shl nuw nsw i64 %i.sc, 3
  %i.xr = add nuw nsw i64 %i.sc, 1
  br label %iter.check1147

iter.check1147:                                   ; preds = %._crit_edge515, %.lr.ph522.preheader
  %indvar1128 = phi i64 [ %indvar.next1129, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 4 uses
  %indvars.iv759 = phi i64 [ %indvars.iv.next760, %._crit_edge515 ], [ %i.xo, %.lr.ph522.preheader ] ; 2 uses
  %indvars.iv752 = phi i64 [ %indvars.iv.next753, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 9 uses
  %.22520 = phi i64 [ %indvars.iv.next751.lcssa, %._crit_edge515 ], [ %i.xp, %.lr.ph522.preheader ] ; 7 uses
  %i.xs = mul i64 %i.xr, %indvar1128
  %i.xt = add i64 %i.xs, %i.xo
  %umax = tail call i64 @llvm.umax.i64(i64 %i.xt, i64 %indvars.iv752)
  %i.xu = mul i64 %indvar1128, %i.sc
  %reass.sub1576 = sub i64 %umax, %i.xu
  %i.xv = add i64 %reass.sub1576, 1               ; 7 uses
  %i.xw = add nuw nsw i64 %indvars.iv752, %indvars.iv759
  %min.iters.check1131 = icmp ult i64 %i.xv, 4
  br i1 %min.iters.check1131, label %.lr.ph514.preheader, label %vector.memcheck1127

vector.memcheck1127:                              ; preds = %iter.check1147
  %i.xx = mul i64 %i.xq, %indvar1128
  %i.xy = shl i64 %.22520, 3
  %i.xz = add i64 %i.xx, %i.b
  %i.ya = add i64 %i.xy, %i.a
  %i.yb = sub i64 %i.ya, %i.xz
  %diff.check1130 = icmp ugt i64 %i.yb, -128
  br i1 %diff.check1130, label %.lr.ph514.preheader, label %vector.main.loop.iter.check1132

vector.main.loop.iter.check1132:                  ; preds = %vector.memcheck1127
  %min.iters.check1133 = icmp ult i64 %i.xv, 16
  br i1 %min.iters.check1133, label %vec.epilog.ph1151, label %vector.ph1134

vector.ph1134:                                    ; preds = %vector.main.loop.iter.check1132
  %i.yc = and i64 %i.xv, 12
  %n.vec1135 = and i64 %i.xv, -16                 ; 5 uses
  %i.yd = add i64 %indvars.iv752, %n.vec1135
  %i.ye = add i64 %.22520, %n.vec1135             ; 2 uses
  %i.yf = getelementptr [8 x i8], ptr %3, i64 %.22520
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv752
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1134
  %index1137 = phi i64 [ 0, %vector.ph1134 ], [ %index.next1142, %vector.body1136 ] ; 3 uses
  %i.yh = getelementptr [8 x i8], ptr %i.yf, i64 %index1137 ; 4 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 32
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 64
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 96
  %wide.load1138 = load <4 x double>, ptr %i.yh, align 8, !tbaa !9
  %wide.load1139 = load <4 x double>, ptr %i.yi, align 8, !tbaa !9
  %wide.load1140 = load <4 x double>, ptr %i.yj, align 8, !tbaa !9
  %wide.load1141 = load <4 x double>, ptr %i.yk, align 8, !tbaa !9
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %index1137 ; 4 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 32
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yl, i64 64
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yl, i64 96
  store <4 x double> %wide.load1138, ptr %i.yl, align 8, !tbaa !9
  store <4 x double> %wide.load1139, ptr %i.ym, align 8, !tbaa !9
  store <4 x double> %wide.load1140, ptr %i.yn, align 8, !tbaa !9
  store <4 x double> %wide.load1141, ptr %i.yo, align 8, !tbaa !9
  %index.next1142 = add nuw i64 %index1137, 16    ; 2 uses
  %i.yp = icmp eq i64 %index.next1142, %n.vec1135
  br i1 %i.yp, label %middle.block1143, label %vector.body1136, !llvm.loop !74

middle.block1143:                                 ; preds = %vector.body1136
  %cmp.n1144 = icmp eq i64 %i.xv, %n.vec1135
  br i1 %cmp.n1144, label %._crit_edge515, label %vec.epilog.iter.check1149

vec.epilog.iter.check1149:                        ; preds = %middle.block1143
  %min.epilog.iters.check1150 = icmp eq i64 %i.yc, 0
  br i1 %min.epilog.iters.check1150, label %.lr.ph514.preheader, label %vec.epilog.ph1151, !prof !15

vec.epilog.ph1151:                                ; preds = %vector.main.loop.iter.check1132, %vec.epilog.iter.check1149
  %vec.epilog.resume.val1145 = phi i64 [ %n.vec1135, %vec.epilog.iter.check1149 ], [ 0, %vector.main.loop.iter.check1132 ]
  %n.vec1152 = and i64 %i.xv, -4                  ; 4 uses
  %i.yq = add i64 %indvars.iv752, %n.vec1152
  %i.yr = add i64 %.22520, %n.vec1152             ; 2 uses
  %i.ys = getelementptr [8 x i8], ptr %3, i64 %.22520
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv752
  br label %vec.epilog.vector.body1153

vec.epilog.vector.body1153:                       ; preds = %vec.epilog.vector.body1153, %vec.epilog.ph1151
  %index1154 = phi i64 [ %vec.epilog.resume.val1145, %vec.epilog.ph1151 ], [ %index.next1156, %vec.epilog.vector.body1153 ] ; 3 uses
  %i.yu = getelementptr [8 x i8], ptr %i.ys, i64 %index1154
  %wide.load1155 = load <4 x double>, ptr %i.yu, align 8, !tbaa !9
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %index1154
  store <4 x double> %wide.load1155, ptr %i.yv, align 8, !tbaa !9
  %index.next1156 = add nuw i64 %index1154, 4     ; 2 uses
  %i.yw = icmp eq i64 %index.next1156, %n.vec1152
  br i1 %i.yw, label %vec.epilog.middle.block1157, label %vec.epilog.vector.body1153, !llvm.loop !75

vec.epilog.middle.block1157:                      ; preds = %vec.epilog.vector.body1153
  %cmp.n1158 = icmp eq i64 %i.xv, %n.vec1152
  br i1 %cmp.n1158, label %._crit_edge515, label %.lr.ph514.preheader

.lr.ph514.preheader:                              ; preds = %vector.memcheck1127, %iter.check1147, %vec.epilog.iter.check1149, %vec.epilog.middle.block1157
  %indvars.iv754.ph = phi i64 [ %indvars.iv752, %iter.check1147 ], [ %indvars.iv752, %vector.memcheck1127 ], [ %i.yd, %vec.epilog.iter.check1149 ], [ %i.yq, %vec.epilog.middle.block1157 ]
  %indvars.iv750.ph = phi i64 [ %.22520, %iter.check1147 ], [ %.22520, %vector.memcheck1127 ], [ %i.ye, %vec.epilog.iter.check1149 ], [ %i.yr, %vec.epilog.middle.block1157 ]
  br label %.lr.ph514

.lr.ph514:                                        ; preds = %.lr.ph514.preheader, %.lr.ph514
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %.lr.ph514 ], [ %indvars.iv754.ph, %.lr.ph514.preheader ] ; 3 uses
  %indvars.iv750 = phi i64 [ %indvars.iv.next751, %.lr.ph514 ], [ %indvars.iv750.ph, %.lr.ph514.preheader ] ; 2 uses
  %i.yx = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv750
  %i.yy = load double, ptr %i.yx, align 8, !tbaa !9
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv754
  store double %i.yy, ptr %i.yz, align 8, !tbaa !9
  %indvars.iv.next751 = add nsw i64 %indvars.iv750, 1 ; 2 uses
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1
  %.not393.not = icmp samesign ult i64 %indvars.iv754, %i.xw
  br i1 %.not393.not, label %.lr.ph514, label %._crit_edge515, !llvm.loop !76

._crit_edge515:                                   ; preds = %.lr.ph514, %vec.epilog.middle.block1157, %middle.block1143
  %indvars.iv.next751.lcssa = phi i64 [ %i.yr, %vec.epilog.middle.block1157 ], [ %i.ye, %middle.block1143 ], [ %indvars.iv.next751, %.lr.ph514 ]
  %indvars.iv.next753 = add nuw nsw i64 %indvars.iv752, %i.xn
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 1 ; 2 uses
  %exitcond765.not = icmp eq i64 %indvars.iv.next760, %wide.trip.count764
  %indvar.next1129 = add i64 %indvar1128, 1
  br i1 %exitcond765.not, label %.loopexit, label %iter.check1147, !llvm.loop !77

bb.v:                                             ; preds = %bb.j
  br i1 %.not379, label %.lr.ph605.preheader, label %.lr.ph582

.lr.ph582:                                        ; preds = %bb.v
  %i.za = mul nuw nsw i32 %i.s, %.0328            ; 2 uses
  %i.zb = add nuw nsw i32 %i.s, 1
  %i.zc = zext nneg i32 %i.s to i64               ; 11 uses
  %i.zd = zext nneg i32 %i.za to i64              ; 5 uses
  %i.ze = shl nuw nsw i64 %i.zc, 3
  %scevgep1370 = getelementptr i8, ptr %3, i64 8
  %broadcast.splatinsert1382 = insertelement <4 x i64> poison, i64 %i.zc, i64 0
  %broadcast.splat1383 = shufflevector <4 x i64> %broadcast.splatinsert1382, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zf = shl nuw nsw <4 x i64> %broadcast.splat1383, splat (i64 2) ; 5 uses
  %i.zg = mul nuw nsw <4 x i64> %broadcast.splat1383, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1685 = add <4 x i64> %i.zf, %i.zf  ; 2 uses
  %invariant.op1686 = add <4 x i64> %invariant.op1685, %i.zf ; 2 uses
  %invariant.op1689 = add <4 x i64> %invariant.op1686, %i.zf
  %broadcast.splatinsert1416 = insertelement <4 x i64> poison, i64 %i.zc, i64 0
  %broadcast.splat1417 = shufflevector <4 x i64> %broadcast.splatinsert1416, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.zh = mul nuw nsw <4 x i64> %broadcast.splat1417, <i64 0, i64 1, i64 2, i64 3>
  %i.zi = shl nuw nsw i64 %i.zc, 2
  %broadcast.splatinsert1419 = insertelement <4 x i64> poison, i64 %i.zi, i64 0
  %broadcast.splat1420 = shufflevector <4 x i64> %broadcast.splatinsert1419, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.w

.loopexit427.loopexit:                            ; preds = %.lr.ph576, %vec.epilog.middle.block1428, %middle.block1403
  %indvars.iv.next821.lcssa = phi i64 [ %i.aax, %vec.epilog.middle.block1428 ], [ %i.aaq, %middle.block1403 ], [ %indvars.iv.next821, %.lr.ph576 ]
  %i.zj = trunc nsw i64 %indvars.iv.next821.lcssa to i32
  br label %.loopexit427

.loopexit427:                                     ; preds = %.loopexit427.loopexit, %bb.w
  %.25.lcssa = phi i32 [ %.24580, %bb.w ], [ %i.zj, %.loopexit427.loopexit ] ; 2 uses
  %indvars.iv.next823 = add i32 %indvars.iv822, %i.zb
  %exitcond829.not = icmp eq i32 %i.zq, %i.q
  br i1 %exitcond829.not, label %.lr.ph597, label %bb.w, !llvm.loop !78

bb.w:                                             ; preds = %.lr.ph582, %.loopexit427
  %indvars.iv822 = phi i32 [ %i.s, %.lr.ph582 ], [ %indvars.iv.next823, %.loopexit427 ] ; 4 uses
  %.24580 = phi i32 [ 0, %.lr.ph582 ], [ %.25.lcssa, %.loopexit427 ] ; 2 uses
  %.8374579 = phi i32 [ 0, %.lr.ph582 ], [ %i.zq, %.loopexit427 ] ; 2 uses
  %i.zk = sext i32 %indvars.iv822 to i64          ; 2 uses
  %i.zl = add nsw i64 %i.zc, %i.zk                ; 3 uses
  %smax1362 = tail call i64 @llvm.smax.i64(i64 %i.zl, i64 %i.zd)
  %i.zm = icmp slt i64 %i.zl, %i.zd
  %umin1363 = zext i1 %i.zm to i64                ; 2 uses
  %i.zn = add nsw i64 %i.zl, %umin1363
  %i.zo = sub i64 %smax1362, %i.zn
  %i.zp = shl nsw i64 %i.zk, 3                    ; 2 uses
  %scevgep1365 = getelementptr i8, ptr %4, i64 %i.zp ; 4 uses
  %i.zq = add nuw nsw i32 %.8374579, 1            ; 3 uses
  %i.zr = mul nuw nsw i32 %i.zq, %i.s
  %i.zs = add nuw nsw i32 %i.zr, %.8374579
  %i.zt = icmp slt i32 %i.zs, %i.za
  br i1 %i.zt, label %iter.check1408, label %.loopexit427

iter.check1408:                                   ; preds = %bb.w
  %i.zu = sext i32 %indvars.iv822 to i64
  %i.zv = add nsw i64 %i.zc, %i.zu                ; 3 uses
  %i.zw = icmp slt i64 %i.zv, %i.zd               ; 2 uses
  %umin1376 = zext i1 %i.zw to i64
  %smax1375 = tail call i64 @llvm.smax.i64(i64 %i.zv, i64 %i.zd)
  %i.zx = add nsw i64 %i.zv, %umin1376
  %i.zy = sub i64 %smax1375, %i.zx
  %i.zz = sext i32 %indvars.iv822 to i64          ; 6 uses
  %i.aaa = sext i32 %.24580 to i64                ; 8 uses
  %i.aab = select i1 %i.zw, i64 2, i64 1
  %i.aac = udiv i64 %i.zy, %i.zc
  %i.aad = add i64 %i.aab, %i.aac                 ; 7 uses
  %min.iters.check1377 = icmp ult i64 %i.aad, 4
  br i1 %min.iters.check1377, label %.lr.ph576.preheader, label %vector.memcheck1361

vector.memcheck1361:                              ; preds = %iter.check1408
  %i.aae = udiv i64 %i.zo, %i.zc
  %i.aaf = add i64 %i.aae, %umin1363              ; 2 uses
  %i.aag = mul i64 %i.ze, %i.aaf
  %i.aah = getelementptr i8, ptr %4, i64 %i.aag
  %scevgep1364 = getelementptr i8, ptr %i.aah, i64 %i.zp ; 4 uses
  %i.aai = icmp ult ptr %scevgep1364, %scevgep1365
  %umin1366 = select i1 %i.aai, ptr %scevgep1364, ptr %scevgep1365
  %i.aaj = icmp ugt ptr %scevgep1364, %scevgep1365
  %umax1367 = select i1 %i.aaj, ptr %scevgep1364, ptr %scevgep1365
  %scevgep1368 = getelementptr i8, ptr %umax1367, i64 8
  %i.aak = shl nsw i64 %i.aaa, 3
  %scevgep1369 = getelementptr i8, ptr %3, i64 %i.aak
  %i.aal = add i64 %i.aaf, %i.aaa
  %i.aam = shl i64 %i.aal, 3
  %scevgep1371 = getelementptr i8, ptr %scevgep1370, i64 %i.aam
  %bound01372 = icmp ult ptr %umin1366, %scevgep1371
  %bound11373 = icmp ult ptr %scevgep1369, %scevgep1368
  %found.conflict1374 = and i1 %bound01372, %bound11373
  br i1 %found.conflict1374, label %.lr.ph576.preheader, label %vector.main.loop.iter.check1378

vector.main.loop.iter.check1378:                  ; preds = %vector.memcheck1361
  %min.iters.check1379 = icmp ult i64 %i.aad, 16
  br i1 %min.iters.check1379, label %vec.epilog.ph1412, label %vector.ph1380

vector.ph1380:                                    ; preds = %vector.main.loop.iter.check1378
  %i.aan = and i64 %i.aad, 12
  %n.vec1381 = and i64 %i.aad, -16                ; 5 uses
  %i.aao = mul i64 %n.vec1381, %i.zc
  %i.aap = add i64 %i.aao, %i.zz                  ; 2 uses
  %i.aaq = add i64 %n.vec1381, %i.aaa             ; 2 uses
  %broadcast.splatinsert1384 = insertelement <4 x i64> poison, i64 %i.zz, i64 0
  %broadcast.splat1385 = shufflevector <4 x i64> %broadcast.splatinsert1384, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1386 = add nsw <4 x i64> %broadcast.splat1385, %i.zg
  %invariant.gep1687 = getelementptr [8 x i8], ptr %3, i64 %i.aaa
  br label %vector.body1387

vector.body1387:                                  ; preds = %vector.body1387, %vector.ph1380
  %index1388 = phi i64 [ 0, %vector.ph1380 ], [ %index.next1401, %vector.body1387 ] ; 2 uses
  %vec.ind1389 = phi <4 x i64> [ %induction1386, %vector.ph1380 ], [ %vec.ind.next1402.reass, %vector.body1387 ] ; 5 uses
  %step.add1390 = add nsw <4 x i64> %vec.ind1389, %i.zf
  %step.add.21391.reass = add <4 x i64> %vec.ind1389, %invariant.op1685
  %step.add.31392.reass = add <4 x i64> %vec.ind1389, %invariant.op1686
  %gep1688 = getelementptr [8 x i8], ptr %invariant.gep1687, i64 %index1388 ; 4 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %gep1688, i64 32
  %i.aas = getelementptr inbounds nuw i8, ptr %gep1688, i64 64
  %i.aat = getelementptr inbounds nuw i8, ptr %gep1688, i64 96
  %wide.load1393 = load <4 x double>, ptr %gep1688, align 8, !tbaa !9, !alias.scope !79
  %wide.load1394 = load <4 x double>, ptr %i.aar, align 8, !tbaa !9, !alias.scope !79
  %wide.load1395 = load <4 x double>, ptr %i.aas, align 8, !tbaa !9, !alias.scope !79
  %wide.load1396 = load <4 x double>, ptr %i.aat, align 8, !tbaa !9, !alias.scope !79
  %wide.gep1397 = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %vec.ind1389
  %wide.gep1398 = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %step.add1390
  %wide.gep1399 = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %step.add.21391.reass
  %wide.gep1400 = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %step.add.31392.reass
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1393, <4 x ptr> align 8 %wide.gep1397, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !82, !noalias !79
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1394, <4 x ptr> align 8 %wide.gep1398, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !82, !noalias !79
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1395, <4 x ptr> align 8 %wide.gep1399, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !82, !noalias !79
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1396, <4 x ptr> align 8 %wide.gep1400, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !82, !noalias !79
  %index.next1401 = add nuw i64 %index1388, 16    ; 2 uses
  %vec.ind.next1402.reass = add <4 x i64> %vec.ind1389, %invariant.op1689
  %i.aau = icmp eq i64 %index.next1401, %n.vec1381
  br i1 %i.aau, label %middle.block1403, label %vector.body1387, !llvm.loop !84

middle.block1403:                                 ; preds = %vector.body1387
  %cmp.n1404 = icmp eq i64 %i.aad, %n.vec1381
  br i1 %cmp.n1404, label %.loopexit427.loopexit, label %vec.epilog.iter.check1410

vec.epilog.iter.check1410:                        ; preds = %middle.block1403
  %min.epilog.iters.check1411 = icmp eq i64 %i.aan, 0
  br i1 %min.epilog.iters.check1411, label %.lr.ph576.preheader, label %vec.epilog.ph1412, !prof !15

vec.epilog.ph1412:                                ; preds = %vector.main.loop.iter.check1378, %vec.epilog.iter.check1410
  %vec.epilog.resume.val1405 = phi i64 [ %n.vec1381, %vec.epilog.iter.check1410 ], [ 0, %vector.main.loop.iter.check1378 ]
  %bc.resume.val1406 = phi i64 [ %i.aap, %vec.epilog.iter.check1410 ], [ %i.zz, %vector.main.loop.iter.check1378 ]
  %n.vec1413 = and i64 %i.aad, -4                 ; 4 uses
  %i.aav = mul i64 %n.vec1413, %i.zc
  %i.aaw = add i64 %i.aav, %i.zz
  %i.aax = add i64 %n.vec1413, %i.aaa             ; 2 uses
  %broadcast.splatinsert1414 = insertelement <4 x i64> poison, i64 %bc.resume.val1406, i64 0
  %broadcast.splat1415 = shufflevector <4 x i64> %broadcast.splatinsert1414, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1418 = add nsw <4 x i64> %broadcast.splat1415, %i.zh
  %invariant.gep1690 = getelementptr [8 x i8], ptr %3, i64 %i.aaa
  br label %vec.epilog.vector.body1421

vec.epilog.vector.body1421:                       ; preds = %vec.epilog.vector.body1421, %vec.epilog.ph1412
  %index1422 = phi i64 [ %vec.epilog.resume.val1405, %vec.epilog.ph1412 ], [ %index.next1426, %vec.epilog.vector.body1421 ] ; 2 uses
  %vec.ind1423 = phi <4 x i64> [ %induction1418, %vec.epilog.ph1412 ], [ %vec.ind.next1427, %vec.epilog.vector.body1421 ] ; 2 uses
  %gep1691 = getelementptr [8 x i8], ptr %invariant.gep1690, i64 %index1422
  %wide.load1424 = load <4 x double>, ptr %gep1691, align 8, !tbaa !9, !alias.scope !79
  %wide.gep1425 = getelementptr inbounds [8 x i8], ptr %4, <4 x i64> %vec.ind1423
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1424, <4 x ptr> align 8 %wide.gep1425, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !82, !noalias !79
  %index.next1426 = add nuw i64 %index1422, 4     ; 2 uses
  %vec.ind.next1427 = add nsw <4 x i64> %vec.ind1423, %broadcast.splat1420
  %i.aay = icmp eq i64 %index.next1426, %n.vec1413
  br i1 %i.aay, label %vec.epilog.middle.block1428, label %vec.epilog.vector.body1421, !llvm.loop !85

vec.epilog.middle.block1428:                      ; preds = %vec.epilog.vector.body1421
  %cmp.n1429 = icmp eq i64 %i.aad, %n.vec1413
  br i1 %cmp.n1429, label %.loopexit427.loopexit, label %.lr.ph576.preheader

.lr.ph576.preheader:                              ; preds = %vector.memcheck1361, %iter.check1408, %vec.epilog.iter.check1410, %vec.epilog.middle.block1428
  %indvars.iv824.ph = phi i64 [ %i.zz, %iter.check1408 ], [ %i.zz, %vector.memcheck1361 ], [ %i.aap, %vec.epilog.iter.check1410 ], [ %i.aaw, %vec.epilog.middle.block1428 ]
  %indvars.iv820.ph = phi i64 [ %i.aaa, %iter.check1408 ], [ %i.aaa, %vector.memcheck1361 ], [ %i.aaq, %vec.epilog.iter.check1410 ], [ %i.aax, %vec.epilog.middle.block1428 ]
  br label %.lr.ph576

.lr.ph576:                                        ; preds = %.lr.ph576.preheader, %.lr.ph576
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %.lr.ph576 ], [ %indvars.iv824.ph, %.lr.ph576.preheader ] ; 2 uses
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %.lr.ph576 ], [ %indvars.iv820.ph, %.lr.ph576.preheader ] ; 2 uses
  %i.aaz = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv820
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !9
  %i.abb = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv824
  store double %i.aba, ptr %i.abb, align 8, !tbaa !9
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, 1 ; 2 uses
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, %i.zc ; 2 uses
  %i.abc = icmp slt i64 %indvars.iv.next825, %i.zd
  br i1 %i.abc, label %.lr.ph576, label %.loopexit427.loopexit, !llvm.loop !86

.lr.ph597:                                        ; preds = %.loopexit427
  %i.abd = add nuw nsw i32 %i.s, 1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph597, %._crit_edge590
  %indvars.iv840 = phi i32 [ %i.q, %.lr.ph597 ], [ %indvars.iv.next841, %._crit_edge590 ] ; 3 uses
  %indvars.iv833 = phi i32 [ 0, %.lr.ph597 ], [ %indvars.iv.next834, %._crit_edge590 ] ; 5 uses
  %.26595 = phi i32 [ %.25.lcssa, %.lr.ph597 ], [ %.27.lcssa, %._crit_edge590 ] ; 2 uses
  %.10364593 = phi i32 [ 0, %.lr.ph597 ], [ %i.aea, %._crit_edge590 ] ; 3 uses
  %i.abe = xor i32 %.10364593, -1
  %i.abf = add nsw i32 %i.q, %i.abe               ; 3 uses
  %i.abg = zext i32 %i.abf to i64
  %i.abh = add nuw nsw i64 %i.abg, 1              ; 5 uses
  %i.abi = sext i32 %indvars.iv833 to i64
  %i.abj = shl nsw i64 %i.abi, 3
  %i.abk = xor i32 %.10364593, -1
  %i.abl = add nsw i32 %i.q, %i.abk
  %i.abm = add i32 %i.abl, %indvars.iv833         ; 2 uses
  %.not389585 = icmp sgt i32 %indvars.iv833, %i.abm
  br i1 %.not389585, label %._crit_edge590, label %iter.check1451

iter.check1451:                                   ; preds = %bb.x
  %i.abn = sext i32 %indvars.iv833 to i64         ; 6 uses
  %i.abo = sext i32 %.26595 to i64                ; 7 uses
  %min.iters.check1434 = icmp ult i32 %i.abf, 3
  br i1 %min.iters.check1434, label %.lr.ph589.preheader, label %vector.memcheck1432

vector.memcheck1432:                              ; preds = %iter.check1451
  %i.abp = shl nsw i64 %i.abo, 3
  %i.abq = add i64 %i.abj, %i.b
  %i.abr = add i64 %i.abp, %i.a
  %i.abs = sub i64 %i.abr, %i.abq
  %diff.check1433 = icmp ugt i64 %i.abs, -128
  br i1 %diff.check1433, label %.lr.ph589.preheader, label %vector.main.loop.iter.check1435

vector.main.loop.iter.check1435:                  ; preds = %vector.memcheck1432
  %min.iters.check1436 = icmp ult i32 %i.abf, 15
  br i1 %min.iters.check1436, label %vec.epilog.ph1455, label %vector.ph1437

vector.ph1437:                                    ; preds = %vector.main.loop.iter.check1435
  %i.abt = and i64 %i.abh, 12
  %n.vec1438 = and i64 %i.abh, 8589934576         ; 5 uses
  %i.abu = add nsw i64 %n.vec1438, %i.abn
  %i.abv = add nsw i64 %n.vec1438, %i.abo         ; 2 uses
  %invariant.gep1692 = getelementptr [8 x i8], ptr %3, i64 %i.abo
  %invariant.gep1694 = getelementptr [8 x i8], ptr %4, i64 %i.abn
  br label %vector.body1439

vector.body1439:                                  ; preds = %vector.body1439, %vector.ph1437
  %index1440 = phi i64 [ 0, %vector.ph1437 ], [ %index.next1445, %vector.body1439 ] ; 3 uses
  %gep1693 = getelementptr [8 x i8], ptr %invariant.gep1692, i64 %index1440 ; 4 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %gep1693, i64 32
  %i.abx = getelementptr inbounds nuw i8, ptr %gep1693, i64 64
  %i.aby = getelementptr inbounds nuw i8, ptr %gep1693, i64 96
  %wide.load1441 = load <4 x double>, ptr %gep1693, align 8, !tbaa !9
  %wide.load1442 = load <4 x double>, ptr %i.abw, align 8, !tbaa !9
  %wide.load1443 = load <4 x double>, ptr %i.abx, align 8, !tbaa !9
  %wide.load1444 = load <4 x double>, ptr %i.aby, align 8, !tbaa !9
  %gep1695 = getelementptr [8 x i8], ptr %invariant.gep1694, i64 %index1440 ; 4 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %gep1695, i64 32
  %i.aca = getelementptr inbounds nuw i8, ptr %gep1695, i64 64
  %i.acb = getelementptr inbounds nuw i8, ptr %gep1695, i64 96
  store <4 x double> %wide.load1441, ptr %gep1695, align 8, !tbaa !9
  store <4 x double> %wide.load1442, ptr %i.abz, align 8, !tbaa !9
  store <4 x double> %wide.load1443, ptr %i.aca, align 8, !tbaa !9
  store <4 x double> %wide.load1444, ptr %i.acb, align 8, !tbaa !9
  %index.next1445 = add nuw i64 %index1440, 16    ; 2 uses
  %i.acc = icmp eq i64 %index.next1445, %n.vec1438
  br i1 %i.acc, label %middle.block1446, label %vector.body1439, !llvm.loop !87

middle.block1446:                                 ; preds = %vector.body1439
  %cmp.n1447 = icmp eq i64 %i.abh, %n.vec1438
  br i1 %cmp.n1447, label %._crit_edge590.loopexit, label %vec.epilog.iter.check1453

vec.epilog.iter.check1453:                        ; preds = %middle.block1446
  %min.epilog.iters.check1454 = icmp eq i64 %i.abt, 0
  br i1 %min.epilog.iters.check1454, label %.lr.ph589.preheader, label %vec.epilog.ph1455, !prof !15

vec.epilog.ph1455:                                ; preds = %vector.main.loop.iter.check1435, %vec.epilog.iter.check1453
  %vec.epilog.resume.val1448 = phi i64 [ %n.vec1438, %vec.epilog.iter.check1453 ], [ 0, %vector.main.loop.iter.check1435 ]
  %n.vec1456 = and i64 %i.abh, 8589934588         ; 4 uses
  %i.acd = add nsw i64 %n.vec1456, %i.abn
  %i.ace = add nsw i64 %n.vec1456, %i.abo         ; 2 uses
  %invariant.gep1696 = getelementptr [8 x i8], ptr %3, i64 %i.abo
  %invariant.gep1698 = getelementptr [8 x i8], ptr %4, i64 %i.abn
  br label %vec.epilog.vector.body1457

vec.epilog.vector.body1457:                       ; preds = %vec.epilog.vector.body1457, %vec.epilog.ph1455
  %index1458 = phi i64 [ %vec.epilog.resume.val1448, %vec.epilog.ph1455 ], [ %index.next1460, %vec.epilog.vector.body1457 ] ; 3 uses
  %gep1697 = getelementptr [8 x i8], ptr %invariant.gep1696, i64 %index1458
  %wide.load1459 = load <4 x double>, ptr %gep1697, align 8, !tbaa !9
  %gep1699 = getelementptr [8 x i8], ptr %invariant.gep1698, i64 %index1458
  store <4 x double> %wide.load1459, ptr %gep1699, align 8, !tbaa !9
  %index.next1460 = add nuw i64 %index1458, 4     ; 2 uses
  %i.acf = icmp eq i64 %index.next1460, %n.vec1456
  br i1 %i.acf, label %vec.epilog.middle.block1461, label %vec.epilog.vector.body1457, !llvm.loop !88

vec.epilog.middle.block1461:                      ; preds = %vec.epilog.vector.body1457
  %cmp.n1462 = icmp eq i64 %i.abh, %n.vec1456
  br i1 %cmp.n1462, label %._crit_edge590.loopexit, label %.lr.ph589.preheader

.lr.ph589.preheader:                              ; preds = %vector.memcheck1432, %iter.check1451, %vec.epilog.iter.check1453, %vec.epilog.middle.block1461
  %indvars.iv835.ph = phi i64 [ %i.abn, %iter.check1451 ], [ %i.abn, %vector.memcheck1432 ], [ %i.abu, %vec.epilog.iter.check1453 ], [ %i.acd, %vec.epilog.middle.block1461 ] ; 3 uses
  %indvars.iv831.ph = phi i64 [ %i.abo, %iter.check1451 ], [ %i.abo, %vector.memcheck1432 ], [ %i.abv, %vec.epilog.iter.check1453 ], [ %i.ace, %vec.epilog.middle.block1461 ] ; 2 uses
  %i.acg = trunc i64 %indvars.iv835.ph to i32     ; 2 uses
  %i.ach = sub i32 %indvars.iv840, %i.acg
  %i.aci = sub i32 %i.abm, %i.acg
  %xtraiter1628 = and i32 %i.ach, 7               ; 2 uses
  %lcmp.mod1629.not = icmp eq i32 %xtraiter1628, 0
  br i1 %lcmp.mod1629.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol

.lr.ph589.prol:                                   ; preds = %.lr.ph589.preheader, %.lr.ph589.prol
  %indvars.iv835.prol = phi i64 [ %indvars.iv.next836.prol, %.lr.ph589.prol ], [ %indvars.iv835.ph, %.lr.ph589.preheader ] ; 2 uses
  %indvars.iv831.prol = phi i64 [ %indvars.iv.next832.prol, %.lr.ph589.prol ], [ %indvars.iv831.ph, %.lr.ph589.preheader ] ; 2 uses
  %prol.iter1630 = phi i32 [ %prol.iter1630.next, %.lr.ph589.prol ], [ 0, %.lr.ph589.preheader ]
  %i.acj = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv831.prol
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !9
  %i.acl = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv835.prol
  store double %i.ack, ptr %i.acl, align 8, !tbaa !9
  %indvars.iv.next832.prol = add nsw i64 %indvars.iv831.prol, 1 ; 3 uses
  %indvars.iv.next836.prol = add nsw i64 %indvars.iv835.prol, 1 ; 2 uses
  %prol.iter1630.next = add i32 %prol.iter1630, 1 ; 2 uses
  %prol.iter1630.cmp.not = icmp eq i32 %prol.iter1630.next, %xtraiter1628
  br i1 %prol.iter1630.cmp.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol, !llvm.loop !89

.lr.ph589.prol.loopexit:                          ; preds = %.lr.ph589.prol, %.lr.ph589.preheader
  %indvars.iv.next832.lcssa1590.unr = phi i64 [ poison, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %indvars.iv835.unr = phi i64 [ %indvars.iv835.ph, %.lr.ph589.preheader ], [ %indvars.iv.next836.prol, %.lr.ph589.prol ]
  %indvars.iv831.unr = phi i64 [ %indvars.iv831.ph, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %i.acm = icmp ult i32 %i.aci, 7
  br i1 %i.acm, label %._crit_edge590.loopexit, label %.lr.ph589

.lr.ph589:                                        ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589
  %indvars.iv835 = phi i64 [ %indvars.iv.next836.7, %.lr.ph589 ], [ %indvars.iv835.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %indvars.iv831 = phi i64 [ %indvars.iv.next832.7, %.lr.ph589 ], [ %indvars.iv831.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %i.acn = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv831
  %i.aco = load double, ptr %i.acn, align 8, !tbaa !9
  %i.acp = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv835
  store double %i.aco, ptr %i.acp, align 8, !tbaa !9
  %i.acq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.acr = getelementptr i8, ptr %i.acq, i64 8
  %i.acs = load double, ptr %i.acr, align 8, !tbaa !9
  %i.act = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.acu = getelementptr i8, ptr %i.act, i64 8
  store double %i.acs, ptr %i.acu, align 8, !tbaa !9
  %i.acv = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.acw = getelementptr i8, ptr %i.acv, i64 16
  %i.acx = load double, ptr %i.acw, align 8, !tbaa !9
  %i.acy = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.acz = getelementptr i8, ptr %i.acy, i64 16
  store double %i.acx, ptr %i.acz, align 8, !tbaa !9
  %i.ada = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.adb = getelementptr i8, ptr %i.ada, i64 24
  %i.adc = load double, ptr %i.adb, align 8, !tbaa !9
  %i.add = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.ade = getelementptr i8, ptr %i.add, i64 24
  store double %i.adc, ptr %i.ade, align 8, !tbaa !9
  %i.adf = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.adg = getelementptr i8, ptr %i.adf, i64 32
  %i.adh = load double, ptr %i.adg, align 8, !tbaa !9
  %i.adi = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.adj = getelementptr i8, ptr %i.adi, i64 32
  store double %i.adh, ptr %i.adj, align 8, !tbaa !9
  %i.adk = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.adl = getelementptr i8, ptr %i.adk, i64 40
  %i.adm = load double, ptr %i.adl, align 8, !tbaa !9
  %i.adn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.ado = getelementptr i8, ptr %i.adn, i64 40
  store double %i.adm, ptr %i.ado, align 8, !tbaa !9
  %i.adp = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.adq = getelementptr i8, ptr %i.adp, i64 48
  %i.adr = load double, ptr %i.adq, align 8, !tbaa !9
  %i.ads = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.adt = getelementptr i8, ptr %i.ads, i64 48
  store double %i.adr, ptr %i.adt, align 8, !tbaa !9
  %i.adu = getelementptr [8 x i8], ptr %3, i64 %indvars.iv831
  %i.adv = getelementptr i8, ptr %i.adu, i64 56
  %i.adw = load double, ptr %i.adv, align 8, !tbaa !9
  %i.adx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv835
  %i.ady = getelementptr i8, ptr %i.adx, i64 56
  store double %i.adw, ptr %i.ady, align 8, !tbaa !9
  %indvars.iv.next832.7 = add nsw i64 %indvars.iv831, 8 ; 2 uses
  %indvars.iv.next836.7 = add nsw i64 %indvars.iv835, 8 ; 2 uses
  %lftr.wideiv842.7 = trunc i64 %indvars.iv.next836.7 to i32
  %exitcond843.not.7 = icmp eq i32 %indvars.iv840, %lftr.wideiv842.7
  br i1 %exitcond843.not.7, label %._crit_edge590.loopexit, label %.lr.ph589, !llvm.loop !90

._crit_edge590.loopexit:                          ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589, %vec.epilog.middle.block1461, %middle.block1446
  %indvars.iv.next832.lcssa = phi i64 [ %i.ace, %vec.epilog.middle.block1461 ], [ %i.abv, %middle.block1446 ], [ %indvars.iv.next832.lcssa1590.unr, %.lr.ph589.prol.loopexit ], [ %indvars.iv.next832.7, %.lr.ph589 ]
  %i.adz = trunc nsw i64 %indvars.iv.next832.lcssa to i32
  br label %._crit_edge590

._crit_edge590:                                   ; preds = %._crit_edge590.loopexit, %bb.x
  %.27.lcssa = phi i32 [ %.26595, %bb.x ], [ %i.adz, %._crit_edge590.loopexit ]
  %indvars.iv.next834 = add i32 %indvars.iv833, %i.abd
  %i.aea = add nuw nsw i32 %.10364593, 1          ; 2 uses
  %indvars.iv.next841 = add i32 %indvars.iv840, %i.s
  %exitcond844.not = icmp eq i32 %i.aea, %i.q
  br i1 %exitcond844.not, label %.loopexit, label %bb.x, !llvm.loop !91

.lr.ph605.preheader:                              ; preds = %bb.v
  %i.aeb = add nuw nsw i32 %i.q, 1
  %i.aec = mul i32 %i.aeb, %i.s
  %i.aed = sext i32 %i.aec to i64                 ; 4 uses
  %i.aee = zext nneg i32 %i.s to i64              ; 13 uses
  %wide.trip.count860 = zext nneg i32 %i.q to i64
  %i.aef = shl nsw i64 %i.aed, 3
  %i.aeg = add i64 %i.aef, %i.b
  %i.aeh = shl nuw nsw i64 %i.aee, 3
  %i.aei = add nuw nsw i64 %i.aee, 1
  br label %iter.check1485

iter.check1485:                                   ; preds = %.lr.ph605.preheader, %.loopexit1572
  %indvars.iv855 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next856, %.loopexit1572 ] ; 5 uses
  %indvars.iv848 = phi i64 [ %i.aed, %.lr.ph605.preheader ], [ %indvars.iv.next849, %.loopexit1572 ] ; 9 uses
  %.28603 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next847.lcssa, %.loopexit1572 ] ; 7 uses
  %i.aej = mul i64 %i.aei, %indvars.iv855
  %i.aek = add i64 %i.aej, %i.aed
  %smax1467 = tail call i64 @llvm.smax.i64(i64 %indvars.iv848, i64 %i.aek)
  %i.ael = mul i64 %indvars.iv855, %i.aee
  %i.aem = add i64 %i.ael, %i.aed
  %reass.sub1579 = sub i64 %smax1467, %i.aem
  %i.aen = add i64 %reass.sub1579, 1              ; 7 uses
  %i.aeo = add nsw i64 %indvars.iv848, %indvars.iv855
  %min.iters.check1468 = icmp ult i64 %i.aen, 4
  br i1 %min.iters.check1468, label %vec.epilog.scalar.ph1486.preheader, label %vector.memcheck1465

vector.memcheck1465:                              ; preds = %iter.check1485
  %i.aep = mul i64 %i.aeh, %indvars.iv855
  %i.aeq = shl i64 %.28603, 3
  %i.aer = add i64 %i.aeg, %i.aep
  %i.aes = add i64 %i.aeq, %i.a
  %i.aet = sub i64 %i.aes, %i.aer
  %diff.check1466 = icmp ugt i64 %i.aet, -128
  br i1 %diff.check1466, label %vec.epilog.scalar.ph1486.preheader, label %vector.main.loop.iter.check1469

vector.main.loop.iter.check1469:                  ; preds = %vector.memcheck1465
  %min.iters.check1470 = icmp ult i64 %i.aen, 16
  br i1 %min.iters.check1470, label %vec.epilog.ph1489, label %vector.ph1471

vector.ph1471:                                    ; preds = %vector.main.loop.iter.check1469
  %i.aeu = and i64 %i.aen, 12
  %n.vec1472 = and i64 %i.aen, -16                ; 5 uses
  %i.aev = add i64 %indvars.iv848, %n.vec1472
  %i.aew = add i64 %.28603, %n.vec1472            ; 2 uses
  %i.aex = getelementptr [8 x i8], ptr %3, i64 %.28603
  %i.aey = getelementptr [8 x i8], ptr %4, i64 %indvars.iv848
  br label %vector.body1473

vector.body1473:                                  ; preds = %vector.body1473, %vector.ph1471
  %index1474 = phi i64 [ 0, %vector.ph1471 ], [ %index.next1479, %vector.body1473 ] ; 3 uses
  %i.aez = getelementptr [8 x i8], ptr %i.aex, i64 %index1474 ; 4 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 32
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aez, i64 64
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aez, i64 96
  %wide.load1475 = load <4 x double>, ptr %i.aez, align 8, !tbaa !9
  %wide.load1476 = load <4 x double>, ptr %i.afa, align 8, !tbaa !9
  %wide.load1477 = load <4 x double>, ptr %i.afb, align 8, !tbaa !9
  %wide.load1478 = load <4 x double>, ptr %i.afc, align 8, !tbaa !9
  %i.afd = getelementptr [8 x i8], ptr %i.aey, i64 %index1474 ; 4 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 32
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afd, i64 64
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afd, i64 96
  store <4 x double> %wide.load1475, ptr %i.afd, align 8, !tbaa !9
  store <4 x double> %wide.load1476, ptr %i.afe, align 8, !tbaa !9
  store <4 x double> %wide.load1477, ptr %i.aff, align 8, !tbaa !9
  store <4 x double> %wide.load1478, ptr %i.afg, align 8, !tbaa !9
  %index.next1479 = add nuw i64 %index1474, 16    ; 2 uses
  %i.afh = icmp eq i64 %index.next1479, %n.vec1472
  br i1 %i.afh, label %middle.block1480, label %vector.body1473, !llvm.loop !92

middle.block1480:                                 ; preds = %vector.body1473
  %cmp.n1481 = icmp eq i64 %i.aen, %n.vec1472
  br i1 %cmp.n1481, label %.loopexit1572, label %vec.epilog.iter.check1487

vec.epilog.iter.check1487:                        ; preds = %middle.block1480
  %min.epilog.iters.check1488 = icmp eq i64 %i.aeu, 0
  br i1 %min.epilog.iters.check1488, label %vec.epilog.scalar.ph1486.preheader, label %vec.epilog.ph1489, !prof !15

vec.epilog.ph1489:                                ; preds = %vector.main.loop.iter.check1469, %vec.epilog.iter.check1487
  %vec.epilog.resume.val1482 = phi i64 [ %n.vec1472, %vec.epilog.iter.check1487 ], [ 0, %vector.main.loop.iter.check1469 ]
  %n.vec1490 = and i64 %i.aen, -4                 ; 4 uses
  %i.afi = add i64 %indvars.iv848, %n.vec1490
  %i.afj = add i64 %.28603, %n.vec1490            ; 2 uses
  %i.afk = getelementptr [8 x i8], ptr %3, i64 %.28603
  %i.afl = getelementptr [8 x i8], ptr %4, i64 %indvars.iv848
  br label %vec.epilog.vector.body1491

vec.epilog.vector.body1491:                       ; preds = %vec.epilog.vector.body1491, %vec.epilog.ph1489
  %index1492 = phi i64 [ %vec.epilog.resume.val1482, %vec.epilog.ph1489 ], [ %index.next1494, %vec.epilog.vector.body1491 ] ; 3 uses
  %i.afm = getelementptr [8 x i8], ptr %i.afk, i64 %index1492
  %wide.load1493 = load <4 x double>, ptr %i.afm, align 8, !tbaa !9
  %i.afn = getelementptr [8 x i8], ptr %i.afl, i64 %index1492
  store <4 x double> %wide.load1493, ptr %i.afn, align 8, !tbaa !9
  %index.next1494 = add nuw i64 %index1492, 4     ; 2 uses
  %i.afo = icmp eq i64 %index.next1494, %n.vec1490
  br i1 %i.afo, label %vec.epilog.middle.block1495, label %vec.epilog.vector.body1491, !llvm.loop !93

vec.epilog.middle.block1495:                      ; preds = %vec.epilog.vector.body1491
  %cmp.n1496 = icmp eq i64 %i.aen, %n.vec1490
  br i1 %cmp.n1496, label %.loopexit1572, label %vec.epilog.scalar.ph1486.preheader

vec.epilog.scalar.ph1486.preheader:               ; preds = %vector.memcheck1465, %iter.check1485, %vec.epilog.iter.check1487, %vec.epilog.middle.block1495
  %indvars.iv850.ph = phi i64 [ %indvars.iv848, %iter.check1485 ], [ %indvars.iv848, %vector.memcheck1465 ], [ %i.aev, %vec.epilog.iter.check1487 ], [ %i.afi, %vec.epilog.middle.block1495 ]
  %indvars.iv846.ph = phi i64 [ %.28603, %iter.check1485 ], [ %.28603, %vector.memcheck1465 ], [ %i.aew, %vec.epilog.iter.check1487 ], [ %i.afj, %vec.epilog.middle.block1495 ]
  br label %vec.epilog.scalar.ph1486

vec.epilog.scalar.ph1486:                         ; preds = %vec.epilog.scalar.ph1486.preheader, %vec.epilog.scalar.ph1486
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %vec.epilog.scalar.ph1486 ], [ %indvars.iv850.ph, %vec.epilog.scalar.ph1486.preheader ] ; 3 uses
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %vec.epilog.scalar.ph1486 ], [ %indvars.iv846.ph, %vec.epilog.scalar.ph1486.preheader ] ; 2 uses
  %i.afp = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv846
  %i.afq = load double, ptr %i.afp, align 8, !tbaa !9
  %i.afr = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv850
  store double %i.afq, ptr %i.afr, align 8, !tbaa !9
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, 1 ; 2 uses
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, 1
  %.not386.not = icmp slt i64 %indvars.iv850, %i.aeo
  br i1 %.not386.not, label %vec.epilog.scalar.ph1486, label %.loopexit1572, !llvm.loop !94

.loopexit1572:                                    ; preds = %vec.epilog.scalar.ph1486, %vec.epilog.middle.block1495, %middle.block1480
  %indvars.iv.next847.lcssa = phi i64 [ %i.afj, %vec.epilog.middle.block1495 ], [ %i.aew, %middle.block1480 ], [ %indvars.iv.next847, %vec.epilog.scalar.ph1486 ] ; 2 uses
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, %i.aee
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1 ; 2 uses
  %exitcond861.not = icmp eq i64 %indvars.iv.next856, %wide.trip.count860
  br i1 %exitcond861.not, label %.lr.ph619, label %iter.check1485, !llvm.loop !95

.lr.ph619:                                        ; preds = %.loopexit1572
  %i.afs = zext nneg i32 %i.s to i64
  %wide.trip.count872 = zext nneg i32 %i.q to i64
  %i.aft = shl nuw nsw i64 %i.aee, 3
  %umax1503 = tail call i64 @llvm.umax.i64(i64 %i.aee, i64 1)
  %scevgep1509 = getelementptr i8, ptr %3, i64 8
  %umax1516 = tail call i64 @llvm.umax.i64(i64 %i.aee, i64 1)
  %i.afu = insertelement <2 x i64> poison, i64 %i.aee, i64 0
  %i.afv = shufflevector <2 x i64> %i.afu, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afw = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.afx = shufflevector <2 x i32> %i.afw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afy = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.afz = shufflevector <2 x i32> %i.afy, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1522 = insertelement <4 x i64> poison, i64 %i.aee, i64 0
  %broadcast.splat1523 = shufflevector <4 x i64> %broadcast.splatinsert1522, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aga = shl nuw nsw <4 x i64> %broadcast.splat1523, splat (i64 2) ; 5 uses
  %i.agb = mul nuw nsw <4 x i64> %broadcast.splat1523, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1700 = add nuw nsw <4 x i64> %i.aga, %i.aga ; 2 uses
  %invariant.op1701 = add nuw nsw <4 x i64> %invariant.op1700, %i.aga ; 2 uses
  %invariant.op1702 = add nuw nsw <4 x i64> %invariant.op1701, %i.aga
  %broadcast.splatinsert1556 = insertelement <4 x i64> poison, i64 %i.aee, i64 0
  %broadcast.splat1557 = shufflevector <4 x i64> %broadcast.splatinsert1556, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.agc = mul nuw nsw <4 x i64> %broadcast.splat1557, <i64 0, i64 1, i64 2, i64 3>
  %i.agd = shl nuw nsw i64 %i.aee, 2
  %broadcast.splatinsert1559 = insertelement <4 x i64> poison, i64 %i.agd, i64 0
  %broadcast.splat1560 = shufflevector <4 x i64> %broadcast.splatinsert1559, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1548

iter.check1548:                                   ; preds = %.lr.ph619, %._crit_edge613
  %indvars.iv864 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next865, %._crit_edge613 ] ; 11 uses
  %.30617 = phi i64 [ %indvars.iv.next847.lcssa, %.lr.ph619 ], [ %indvars.iv.next863.lcssa, %._crit_edge613 ]
  %i.age = insertelement <2 x i64> poison, i64 %indvars.iv864, i64 0
  %i.agf = shufflevector <2 x i64> %i.age, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.agg = add nuw <2 x i64> %i.agf, %i.afv       ; 2 uses
  %i.agh = add nuw <2 x i64> %i.agf, splat (i64 1)
  %i.agi = trunc <2 x i64> %i.agf to <2 x i32>
  %i.agj = add nuw <2 x i64> %i.agf, %i.afv
  %indvars871 = trunc i64 %indvars.iv864 to i32
  %i.agk = add nsw i32 %i.q, %indvars871
  %i.agl = mul nsw i32 %i.agk, %i.s
  %i.agm = sext i32 %i.agl to i64
  %i.agn = add nsw i64 %indvars.iv864, %i.agm
  %i.ago = add <2 x i32> %i.afz, %i.agi
  %i.agp = mul <2 x i32> %i.afx, %i.ago
  %i.agq = sext <2 x i32> %i.agp to <2 x i64>
  %i.agr = add <2 x i64> %i.agh, %i.agq           ; 2 uses
  %i.ags = icmp slt <2 x i64> %i.agg, %i.agr      ; 2 uses
  %i.agt = zext <2 x i1> %i.ags to <2 x i64>      ; 2 uses
  %i.agu = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.agg, <2 x i64> %i.agr)
  %i.agv = add <2 x i64> %i.agj, %i.agt
  %i.agw = sub <2 x i64> %i.agu, %i.agv           ; 2 uses
  %sext1580 = shl i64 %.30617, 32                 ; 2 uses
  %i.agx = ashr exact i64 %sext1580, 32           ; 6 uses
  %i.agy = extractelement <2 x i1> %i.ags, i64 1
  %i.agz = select i1 %i.agy, i64 2, i64 1
  %i.aha = extractelement <2 x i64> %i.agw, i64 1
  %i.ahb = udiv i64 %i.aha, %umax1516
  %i.ahc = add i64 %i.agz, %i.ahb                 ; 7 uses
  %min.iters.check1517 = icmp ult i64 %i.ahc, 4
  br i1 %min.iters.check1517, label %.lr.ph612.preheader, label %vector.memcheck1499

vector.memcheck1499:                              ; preds = %iter.check1548
  %i.ahd = shl i64 %indvars.iv864, 3
  %scevgep1500 = getelementptr i8, ptr %4, i64 %i.ahd ; 5 uses
  %i.ahe = extractelement <2 x i64> %i.agw, i64 0
  %i.ahf = udiv i64 %i.ahe, %umax1503
  %i.ahg = extractelement <2 x i64> %i.agt, i64 0
  %i.ahh = add i64 %i.ahf, %i.ahg                 ; 2 uses
  %i.ahi = mul i64 %i.aft, %i.ahh
  %scevgep1504 = getelementptr i8, ptr %scevgep1500, i64 %i.ahi ; 4 uses
  %i.ahj = icmp ult ptr %scevgep1500, %scevgep1504
  %umin1505 = select i1 %i.ahj, ptr %scevgep1500, ptr %scevgep1504
  %i.ahk = icmp ugt ptr %scevgep1500, %scevgep1504
  %umax1506 = select i1 %i.ahk, ptr %scevgep1500, ptr %scevgep1504
  %scevgep1507 = getelementptr i8, ptr %umax1506, i64 8
  %i.ahl = ashr exact i64 %sext1580, 29           ; 2 uses
  %scevgep1508 = getelementptr i8, ptr %3, i64 %i.ahl
  %i.ahm = shl i64 %i.ahh, 3
  %i.ahn = getelementptr i8, ptr %scevgep1509, i64 %i.ahm
  %scevgep1510 = getelementptr i8, ptr %i.ahn, i64 %i.ahl
  %bound01511 = icmp ult ptr %umin1505, %scevgep1510
  %bound11512 = icmp ult ptr %scevgep1508, %scevgep1507
  %found.conflict1513 = and i1 %bound01511, %bound11512
  br i1 %found.conflict1513, label %.lr.ph612.preheader, label %vector.main.loop.iter.check1518

vector.main.loop.iter.check1518:                  ; preds = %vector.memcheck1499
  %min.iters.check1519 = icmp ult i64 %i.ahc, 16
  br i1 %min.iters.check1519, label %vec.epilog.ph1552, label %vector.ph1520

vector.ph1520:                                    ; preds = %vector.main.loop.iter.check1518
  %i.aho = and i64 %i.ahc, 12
  %n.vec1521 = and i64 %i.ahc, -16                ; 5 uses
  %i.ahp = mul i64 %n.vec1521, %i.aee
  %i.ahq = add i64 %indvars.iv864, %i.ahp         ; 2 uses
  %i.ahr = add i64 %i.agx, %n.vec1521             ; 2 uses
  %broadcast.splatinsert1524 = insertelement <4 x i64> poison, i64 %indvars.iv864, i64 0
  %broadcast.splat1525 = shufflevector <4 x i64> %broadcast.splatinsert1524, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1526 = add nuw nsw <4 x i64> %broadcast.splat1525, %i.agb
  %i.ahs = getelementptr [8 x i8], ptr %3, i64 %i.agx
  br label %vector.body1527

vector.body1527:                                  ; preds = %vector.body1527, %vector.ph1520
  %index1528 = phi i64 [ 0, %vector.ph1520 ], [ %index.next1541, %vector.body1527 ] ; 2 uses
  %vec.ind1529 = phi <4 x i64> [ %induction1526, %vector.ph1520 ], [ %vec.ind.next1542.reass, %vector.body1527 ] ; 5 uses
  %step.add1530 = add nuw nsw <4 x i64> %vec.ind1529, %i.aga
  %step.add.21531.reass = add nuw nsw <4 x i64> %vec.ind1529, %invariant.op1700
  %step.add.31532.reass = add nuw nsw <4 x i64> %vec.ind1529, %invariant.op1701
  %i.aht = getelementptr [8 x i8], ptr %i.ahs, i64 %index1528 ; 4 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 32
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.aht, i64 64
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aht, i64 96
  %wide.load1533 = load <4 x double>, ptr %i.aht, align 8, !tbaa !9, !alias.scope !96
  %wide.load1534 = load <4 x double>, ptr %i.ahu, align 8, !tbaa !9, !alias.scope !96
  %wide.load1535 = load <4 x double>, ptr %i.ahv, align 8, !tbaa !9, !alias.scope !96
  %wide.load1536 = load <4 x double>, ptr %i.ahw, align 8, !tbaa !9, !alias.scope !96
  %wide.gep1537 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1529
  %wide.gep1538 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add1530
  %wide.gep1539 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.21531.reass
  %wide.gep1540 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %step.add.31532.reass
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1533, <4 x ptr> align 8 %wide.gep1537, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99, !noalias !96
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1534, <4 x ptr> align 8 %wide.gep1538, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99, !noalias !96
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1535, <4 x ptr> align 8 %wide.gep1539, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99, !noalias !96
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1536, <4 x ptr> align 8 %wide.gep1540, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99, !noalias !96
  %index.next1541 = add nuw i64 %index1528, 16    ; 2 uses
  %vec.ind.next1542.reass = add nuw nsw <4 x i64> %vec.ind1529, %invariant.op1702
  %i.ahx = icmp eq i64 %index.next1541, %n.vec1521
  br i1 %i.ahx, label %middle.block1543, label %vector.body1527, !llvm.loop !101

middle.block1543:                                 ; preds = %vector.body1527
  %cmp.n1544 = icmp eq i64 %i.ahc, %n.vec1521
  br i1 %cmp.n1544, label %._crit_edge613, label %vec.epilog.iter.check1550

vec.epilog.iter.check1550:                        ; preds = %middle.block1543
  %min.epilog.iters.check1551 = icmp eq i64 %i.aho, 0
  br i1 %min.epilog.iters.check1551, label %.lr.ph612.preheader, label %vec.epilog.ph1552, !prof !15

vec.epilog.ph1552:                                ; preds = %vector.main.loop.iter.check1518, %vec.epilog.iter.check1550
  %vec.epilog.resume.val1545 = phi i64 [ %n.vec1521, %vec.epilog.iter.check1550 ], [ 0, %vector.main.loop.iter.check1518 ]
  %bc.resume.val1546 = phi i64 [ %i.ahq, %vec.epilog.iter.check1550 ], [ %indvars.iv864, %vector.main.loop.iter.check1518 ]
  %n.vec1553 = and i64 %i.ahc, -4                 ; 4 uses
  %i.ahy = mul i64 %n.vec1553, %i.aee
  %i.ahz = add i64 %indvars.iv864, %i.ahy
  %i.aia = add i64 %i.agx, %n.vec1553             ; 2 uses
  %broadcast.splatinsert1554 = insertelement <4 x i64> poison, i64 %bc.resume.val1546, i64 0
  %broadcast.splat1555 = shufflevector <4 x i64> %broadcast.splatinsert1554, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1558 = add nuw nsw <4 x i64> %broadcast.splat1555, %i.agc
  %i.aib = getelementptr [8 x i8], ptr %3, i64 %i.agx
  br label %vec.epilog.vector.body1561

vec.epilog.vector.body1561:                       ; preds = %vec.epilog.vector.body1561, %vec.epilog.ph1552
  %index1562 = phi i64 [ %vec.epilog.resume.val1545, %vec.epilog.ph1552 ], [ %index.next1566, %vec.epilog.vector.body1561 ] ; 2 uses
  %vec.ind1563 = phi <4 x i64> [ %induction1558, %vec.epilog.ph1552 ], [ %vec.ind.next1567, %vec.epilog.vector.body1561 ] ; 2 uses
  %i.aic = getelementptr [8 x i8], ptr %i.aib, i64 %index1562
  %wide.load1564 = load <4 x double>, ptr %i.aic, align 8, !tbaa !9, !alias.scope !96
  %wide.gep1565 = getelementptr inbounds nuw [8 x i8], ptr %4, <4 x i64> %vec.ind1563
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load1564, <4 x ptr> align 8 %wide.gep1565, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99, !noalias !96
  %index.next1566 = add nuw i64 %index1562, 4     ; 2 uses
  %vec.ind.next1567 = add nuw nsw <4 x i64> %vec.ind1563, %broadcast.splat1560
  %i.aid = icmp eq i64 %index.next1566, %n.vec1553
  br i1 %i.aid, label %vec.epilog.middle.block1568, label %vec.epilog.vector.body1561, !llvm.loop !102

vec.epilog.middle.block1568:                      ; preds = %vec.epilog.vector.body1561
  %cmp.n1569 = icmp eq i64 %i.ahc, %n.vec1553
  br i1 %cmp.n1569, label %._crit_edge613, label %.lr.ph612.preheader

.lr.ph612.preheader:                              ; preds = %vector.memcheck1499, %iter.check1548, %vec.epilog.iter.check1550, %vec.epilog.middle.block1568
  %indvars.iv866.ph = phi i64 [ %indvars.iv864, %iter.check1548 ], [ %indvars.iv864, %vector.memcheck1499 ], [ %i.ahq, %vec.epilog.iter.check1550 ], [ %i.ahz, %vec.epilog.middle.block1568 ]
  %indvars.iv862.ph = phi i64 [ %i.agx, %iter.check1548 ], [ %i.agx, %vector.memcheck1499 ], [ %i.ahr, %vec.epilog.iter.check1550 ], [ %i.aia, %vec.epilog.middle.block1568 ]
  br label %.lr.ph612

.lr.ph612:                                        ; preds = %.lr.ph612.preheader, %.lr.ph612
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %.lr.ph612 ], [ %indvars.iv866.ph, %.lr.ph612.preheader ] ; 2 uses
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %.lr.ph612 ], [ %indvars.iv862.ph, %.lr.ph612.preheader ] ; 2 uses
  %i.aie = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv862
  %i.aif = load double, ptr %i.aie, align 8, !tbaa !9
  %i.aig = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv866
  store double %i.aif, ptr %i.aig, align 8, !tbaa !9
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, 1 ; 2 uses
  %indvars.iv.next867 = add nuw nsw i64 %indvars.iv866, %i.afs ; 2 uses
  %.not882 = icmp sgt i64 %indvars.iv.next867, %i.agn
  br i1 %.not882, label %._crit_edge613, label %.lr.ph612, !llvm.loop !103

._crit_edge613:                                   ; preds = %.lr.ph612, %middle.block1543, %vec.epilog.middle.block1568
  %indvars.iv.next863.lcssa = phi i64 [ %i.aia, %vec.epilog.middle.block1568 ], [ %i.ahr, %middle.block1543 ], [ %indvars.iv.next863, %.lr.ph612 ]
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1 ; 2 uses
  %exitcond873.not = icmp eq i64 %indvars.iv.next865, %wide.trip.count872
  br i1 %exitcond873.not, label %.loopexit, label %iter.check1548, !llvm.loop !104

.loopexit.loopexit1600.unr-lcssa:                 ; preds = %._crit_edge495.3
  %lcmp.mod1618.not = icmp eq i64 %xtraiter1617, 0
  br i1 %lcmp.mod1618.not, label %.loopexit, label %iter.check1075.epil.preheader

iter.check1075.epil.preheader:                    ; preds = %.loopexit.loopexit1600.unr-lcssa, %.preheader.preheader
  %indvars.iv725.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next726.3, %.loopexit.loopexit1600.unr-lcssa ]
  %.18499.epil.init = phi i64 [ %i.ur, %.preheader.preheader ], [ %indvars.iv.next724.3, %.loopexit.loopexit1600.unr-lcssa ]
  %lcmp.mod1619 = icmp ne i64 %xtraiter1617, 0
  tail call void @llvm.assume(i1 %lcmp.mod1619)
  br label %iter.check1075.epil

iter.check1075.epil:                              ; preds = %._crit_edge495.epil, %iter.check1075.epil.preheader
  %indvars.iv725.epil = phi i64 [ %indvars.iv725.epil.init, %iter.check1075.epil.preheader ], [ %indvars.iv.next726.epil, %._crit_edge495.epil ] ; 3 uses
  %.18499.epil = phi i64 [ %.18499.epil.init, %iter.check1075.epil.preheader ], [ %indvars.iv.next724.epil, %._crit_edge495.epil ]
  %epil.iter = phi i64 [ 0, %iter.check1075.epil.preheader ], [ %epil.iter.next, %._crit_edge495.epil ]
  %invariant.gep899.epil = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv725.epil
  br label %13

13:                                               ; preds = %13, %iter.check1075.epil
  %indvars.iv727.epil = phi i64 [ %indvars.iv725.epil, %iter.check1075.epil ], [ %indvars.iv.next728.epil, %13 ] ; 2 uses
  %indvars.iv723.epil = phi i64 [ %.18499.epil, %iter.check1075.epil ], [ %indvars.iv.next724.epil, %13 ] ; 2 uses
  %14 = mul nuw nsw i64 %indvars.iv727.epil, %i.us
  %15 = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv723.epil
  %16 = load double, ptr %15, align 8, !tbaa !9
  %gep900.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.epil, i64 %14
  store double %16, ptr %gep900.epil, align 8, !tbaa !9
  %indvars.iv.next724.epil = add nsw i64 %indvars.iv723.epil, 1 ; 2 uses
  %indvars.iv.next728.epil = add nuw nsw i64 %indvars.iv727.epil, 1 ; 2 uses
  %.not397.not.epil = icmp samesign ult i64 %indvars.iv.next728.epil, %i.ut
  br i1 %.not397.not.epil, label %13, label %._crit_edge495.epil, !llvm.loop !67

._crit_edge495.epil:                              ; preds = %13
  %indvars.iv.next726.epil = add nuw nsw i64 %indvars.iv725.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1617
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
end_hunk_1
