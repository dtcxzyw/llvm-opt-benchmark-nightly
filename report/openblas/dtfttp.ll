Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtfttp?download=true
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
  %invariant.gep1639 = getelementptr [8 x i8], ptr %4, i64 %i.ab
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
  %gep1640 = getelementptr [8 x i8], ptr %invariant.gep1639, i64 %index ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %gep1640, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %gep1640, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %gep1640, i64 96
  store <4 x double> %wide.load, ptr %gep1640, align 8, !tbaa !9
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
  %invariant.gep1641 = getelementptr [8 x i8], ptr %4, i64 %i.ab
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index916 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next918, %vec.epilog.vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index916
  %wide.load917 = load <4 x double>, ptr %i.au, align 8, !tbaa !9
  %gep1642 = getelementptr [8 x i8], ptr %invariant.gep1641, i64 %index916
  store <4 x double> %wide.load917, ptr %gep1642, align 8, !tbaa !9
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
end_hunk_0
begin_hunk_1_@dtfttp_:bb.a
  %wide.trip.count714 = zext nneg i32 %i.h to i64 ; 4 uses
  %i.si = add i64 %i.b, -8
  %i.sj = sub i64 %i.si, %i.a
  %i.sk = shl nuw nsw i64 %i.sg, 3
  %i.sl = sub nuw nsw i64 -8, %i.sk
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.preheader, %._crit_edge484
  %indvars.iv716 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next717, %._crit_edge484 ] ; 2 uses
  %indvars.iv707 = phi i64 [ 0, %.preheader432.preheader ], [ %indvars.iv.next708, %._crit_edge484 ] ; 10 uses
  %.16489 = phi i32 [ 0, %.preheader432.preheader ], [ %.17.lcssa, %._crit_edge484 ] ; 2 uses
  %i.sm = sub nsw i64 %wide.trip.count714, %indvars.iv707 ; 7 uses
  %i.sn = mul i64 %i.sl, %indvars.iv707
  %i.so = add i64 %i.sj, %i.sn
  %indvars720 = trunc i64 %indvars.iv707 to i32
  %.not398.not480 = icmp sgt i32 %i.h, %indvars720
  br i1 %.not398.not480, label %iter.check1040, label %._crit_edge484

iter.check1040:                                   ; preds = %.preheader432
  %i.sp = sext i32 %.16489 to i64                 ; 7 uses
  %invariant.gep897 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv716 ; 11 uses
  %min.iters.check1024 = icmp ult i64 %i.sm, 4
  br i1 %min.iters.check1024, label %.lr.ph483.preheader, label %vector.memcheck1022

vector.memcheck1022:                              ; preds = %iter.check1040
  %i.sq = shl nsw i64 %i.sp, 3
  %i.sr = add i64 %i.so, %i.sq
  %i.ss = add i64 %i.sr, -1
  %diff.check1023 = icmp ult i64 %i.ss, 127
  br i1 %diff.check1023, label %.lr.ph483.preheader, label %vector.main.loop.iter.check1025

vector.main.loop.iter.check1025:                  ; preds = %vector.memcheck1022
  %min.iters.check1026 = icmp ult i64 %i.sm, 16
  br i1 %min.iters.check1026, label %vec.epilog.ph1044, label %vector.ph1027

vector.ph1027:                                    ; preds = %vector.main.loop.iter.check1025
  %i.st = and i64 %i.sm, 12
  %n.vec1028 = and i64 %i.sm, -16                 ; 5 uses
  %i.su = add i64 %indvars.iv707, %n.vec1028
  %i.sv = add i64 %n.vec1028, %i.sp               ; 2 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  %invariant.gep1655 = getelementptr [8 x i8], ptr %4, i64 %i.sp
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %vector.ph1027
  %index1030 = phi i64 [ 0, %vector.ph1027 ], [ %index.next1035, %vector.body1029 ] ; 3 uses
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %index1030 ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 72
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 104
  %wide.load1031 = load <4 x double>, ptr %i.sy, align 8, !tbaa !9
  %wide.load1032 = load <4 x double>, ptr %i.sz, align 8, !tbaa !9
  %wide.load1033 = load <4 x double>, ptr %i.ta, align 8, !tbaa !9
  %wide.load1034 = load <4 x double>, ptr %i.tb, align 8, !tbaa !9
  %gep1656 = getelementptr [8 x i8], ptr %invariant.gep1655, i64 %index1030 ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %gep1656, i64 32
  %i.td = getelementptr inbounds nuw i8, ptr %gep1656, i64 64
  %i.te = getelementptr inbounds nuw i8, ptr %gep1656, i64 96
  store <4 x double> %wide.load1031, ptr %gep1656, align 8, !tbaa !9
  store <4 x double> %wide.load1032, ptr %i.tc, align 8, !tbaa !9
  store <4 x double> %wide.load1033, ptr %i.td, align 8, !tbaa !9
  store <4 x double> %wide.load1034, ptr %i.te, align 8, !tbaa !9
  %index.next1035 = add nuw i64 %index1030, 16    ; 2 uses
  %i.tf = icmp eq i64 %index.next1035, %n.vec1028
  br i1 %i.tf, label %middle.block1036, label %vector.body1029, !llvm.loop !62

middle.block1036:                                 ; preds = %vector.body1029
  %cmp.n1037 = icmp eq i64 %i.sm, %n.vec1028
  br i1 %cmp.n1037, label %._crit_edge484.loopexit, label %vec.epilog.iter.check1042

vec.epilog.iter.check1042:                        ; preds = %middle.block1036
  %min.epilog.iters.check1043 = icmp eq i64 %i.st, 0
  br i1 %min.epilog.iters.check1043, label %.lr.ph483.preheader, label %vec.epilog.ph1044, !prof !15

vec.epilog.ph1044:                                ; preds = %vector.main.loop.iter.check1025, %vec.epilog.iter.check1042
  %vec.epilog.resume.val1038 = phi i64 [ %n.vec1028, %vec.epilog.iter.check1042 ], [ 0, %vector.main.loop.iter.check1025 ]
  %n.vec1045 = and i64 %i.sm, -4                  ; 4 uses
  %i.tg = add i64 %indvars.iv707, %n.vec1045
  %i.th = add i64 %n.vec1045, %i.sp               ; 2 uses
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv707
  %invariant.gep1657 = getelementptr [8 x i8], ptr %4, i64 %i.sp
  br label %vec.epilog.vector.body1046

vec.epilog.vector.body1046:                       ; preds = %vec.epilog.vector.body1046, %vec.epilog.ph1044
  %index1047 = phi i64 [ %vec.epilog.resume.val1038, %vec.epilog.ph1044 ], [ %index.next1049, %vec.epilog.vector.body1046 ] ; 3 uses
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.ti, i64 %index1047
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %wide.load1048 = load <4 x double>, ptr %i.tk, align 8, !tbaa !9
  %gep1658 = getelementptr [8 x i8], ptr %invariant.gep1657, i64 %index1047
  store <4 x double> %wide.load1048, ptr %gep1658, align 8, !tbaa !9
  %index.next1049 = add nuw i64 %index1047, 4     ; 2 uses
  %i.tl = icmp eq i64 %index.next1049, %n.vec1045
  br i1 %i.tl, label %vec.epilog.middle.block1050, label %vec.epilog.vector.body1046, !llvm.loop !63

vec.epilog.middle.block1050:                      ; preds = %vec.epilog.vector.body1046
  %cmp.n1051 = icmp eq i64 %i.sm, %n.vec1045
  br i1 %cmp.n1051, label %._crit_edge484.loopexit, label %.lr.ph483.preheader

.lr.ph483.preheader:                              ; preds = %vector.memcheck1022, %iter.check1040, %vec.epilog.iter.check1042, %vec.epilog.middle.block1050
  %indvars.iv709.ph = phi i64 [ %indvars.iv707, %iter.check1040 ], [ %indvars.iv707, %vector.memcheck1022 ], [ %i.su, %vec.epilog.iter.check1042 ], [ %i.tg, %vec.epilog.middle.block1050 ] ; 4 uses
  %indvars.iv705.ph = phi i64 [ %i.sp, %iter.check1040 ], [ %i.sp, %vector.memcheck1022 ], [ %i.sv, %vec.epilog.iter.check1042 ], [ %i.th, %vec.epilog.middle.block1050 ] ; 2 uses
  %i.tm = sub i64 %wide.trip.count714, %indvars.iv709.ph
  %xtraiter1613 = and i64 %i.tm, 7                ; 2 uses
  %lcmp.mod1614.not = icmp eq i64 %xtraiter1613, 0
  br i1 %lcmp.mod1614.not, label %.lr.ph483.prol.loopexit, label %.lr.ph483.prol

.lr.ph483.prol:                                   ; preds = %.lr.ph483.preheader, %.lr.ph483.prol
  %indvars.iv709.prol = phi i64 [ %indvars.iv.next710.prol, %.lr.ph483.prol ], [ %indvars.iv709.ph, %.lr.ph483.preheader ]
  %indvars.iv705.prol = phi i64 [ %indvars.iv.next706.prol, %.lr.ph483.prol ], [ %indvars.iv705.ph, %.lr.ph483.preheader ] ; 2 uses
  %prol.iter1615 = phi i64 [ %prol.iter1615.next, %.lr.ph483.prol ], [ 0, %.lr.ph483.preheader ]
  %indvars.iv.next710.prol = add nuw nsw i64 %indvars.iv709.prol, 1 ; 3 uses
  %gep898.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv.next710.prol
  %i.tn = load double, ptr %gep898.prol, align 8, !tbaa !9
  %i.to = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv705.prol
  store double %i.tn, ptr %i.to, align 8, !tbaa !9
  %indvars.iv.next706.prol = add nsw i64 %indvars.iv705.prol, 1 ; 3 uses
  %prol.iter1615.next = add i64 %prol.iter1615, 1 ; 2 uses
  %prol.iter1615.cmp.not = icmp eq i64 %prol.iter1615.next, %xtraiter1613
  br i1 %prol.iter1615.cmp.not, label %.lr.ph483.prol.loopexit, label %.lr.ph483.prol, !llvm.loop !64

.lr.ph483.prol.loopexit:                          ; preds = %.lr.ph483.prol, %.lr.ph483.preheader
  %indvars.iv.next706.lcssa1600.unr = phi i64 [ poison, %.lr.ph483.preheader ], [ %indvars.iv.next706.prol, %.lr.ph483.prol ]
  %indvars.iv709.unr = phi i64 [ %indvars.iv709.ph, %.lr.ph483.preheader ], [ %indvars.iv.next710.prol, %.lr.ph483.prol ]
  %indvars.iv705.unr = phi i64 [ %indvars.iv705.ph, %.lr.ph483.preheader ], [ %indvars.iv.next706.prol, %.lr.ph483.prol ]
  %i.tp = sub i64 %indvars.iv709.ph, %wide.trip.count714
  %i.tq = icmp ugt i64 %i.tp, -8
  br i1 %i.tq, label %._crit_edge484.loopexit, label %.lr.ph483

.lr.ph483:                                        ; preds = %.lr.ph483.prol.loopexit, %.lr.ph483
  %indvars.iv709 = phi i64 [ %indvars.iv.next710.7, %.lr.ph483 ], [ %indvars.iv709.unr, %.lr.ph483.prol.loopexit ] ; 8 uses
  %indvars.iv705 = phi i64 [ %indvars.iv.next706.7, %.lr.ph483 ], [ %indvars.iv705.unr, %.lr.ph483.prol.loopexit ] ; 9 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898 = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.ts = load double, ptr %gep898, align 8, !tbaa !9
  %i.tt = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv705
  store double %i.ts, ptr %i.tt, align 8, !tbaa !9
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.1 = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.tv = load double, ptr %gep898.1, align 8, !tbaa !9
  %i.tw = getelementptr [8 x i8], ptr %4, i64 %indvars.iv705
  %i.tx = getelementptr i8, ptr %i.tw, i64 8
  store double %i.tv, ptr %i.tx, align 8, !tbaa !9
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.2 = getelementptr inbounds nuw i8, ptr %i.ty, i64 24
  %i.tz = load double, ptr %gep898.2, align 8, !tbaa !9
  %i.ua = getelementptr [8 x i8], ptr %4, i64 %indvars.iv705
  %i.ub = getelementptr i8, ptr %i.ua, i64 16
  store double %i.tz, ptr %i.ub, align 8, !tbaa !9
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.3 = getelementptr inbounds nuw i8, ptr %i.uc, i64 32
  %i.ud = load double, ptr %gep898.3, align 8, !tbaa !9
  %i.ue = getelementptr [8 x i8], ptr %4, i64 %indvars.iv705
  %i.uf = getelementptr i8, ptr %i.ue, i64 24
  store double %i.ud, ptr %i.uf, align 8, !tbaa !9
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.4 = getelementptr inbounds nuw i8, ptr %i.ug, i64 40
  %i.uh = load double, ptr %gep898.4, align 8, !tbaa !9
  %i.ui = getelementptr [8 x i8], ptr %4, i64 %indvars.iv705
  %i.uj = getelementptr i8, ptr %i.ui, i64 32
  store double %i.uh, ptr %i.uj, align 8, !tbaa !9
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.5 = getelementptr inbounds nuw i8, ptr %i.uk, i64 48
  %i.ul = load double, ptr %gep898.5, align 8, !tbaa !9
  %i.um = getelementptr [8 x i8], ptr %4, i64 %indvars.iv705
  %i.un = getelementptr i8, ptr %i.um, i64 40
  store double %i.ul, ptr %i.un, align 8, !tbaa !9
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv709
  %gep898.6 = getelementptr inbounds nuw i8, ptr %i.uo, i64 56
  %i.up = load double, ptr %gep898.6, align 8, !tbaa !9
  %i.uq = getelementptr [8 x i8], ptr %4, i64 %indvars.iv705
  %i.ur = getelementptr i8, ptr %i.uq, i64 48
  store double %i.up, ptr %i.ur, align 8, !tbaa !9
  %indvars.iv.next710.7 = add nuw nsw i64 %indvars.iv709, 8 ; 3 uses
  %gep898.7 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep897, i64 %indvars.iv.next710.7
  %i.us = load double, ptr %gep898.7, align 8, !tbaa !9
  %i.ut = getelementptr [8 x i8], ptr %4, i64 %indvars.iv705
  %i.uu = getelementptr i8, ptr %i.ut, i64 56
  store double %i.us, ptr %i.uu, align 8, !tbaa !9
  %indvars.iv.next706.7 = add nsw i64 %indvars.iv705, 8 ; 2 uses
  %exitcond715.not.7 = icmp eq i64 %indvars.iv.next710.7, %wide.trip.count714
  br i1 %exitcond715.not.7, label %._crit_edge484.loopexit, label %.lr.ph483, !llvm.loop !65

._crit_edge484.loopexit:                          ; preds = %.lr.ph483.prol.loopexit, %.lr.ph483, %vec.epilog.middle.block1050, %middle.block1036
  %indvars.iv.next706.lcssa = phi i64 [ %i.th, %vec.epilog.middle.block1050 ], [ %i.sv, %middle.block1036 ], [ %indvars.iv.next706.lcssa1600.unr, %.lr.ph483.prol.loopexit ], [ %indvars.iv.next706.7, %.lr.ph483 ]
  %i.uv = trunc nsw i64 %indvars.iv.next706.lcssa to i32
  br label %._crit_edge484

._crit_edge484:                                   ; preds = %._crit_edge484.loopexit, %.preheader432
  %.17.lcssa = phi i32 [ %.16489, %.preheader432 ], [ %i.uv, %._crit_edge484.loopexit ] ; 2 uses
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, %i.sg
  %indvars.iv.next708 = add nuw nsw i64 %indvars.iv707, 1 ; 2 uses
  %exitcond722.not = icmp eq i64 %indvars.iv.next708, %wide.trip.count721
  br i1 %exitcond722.not, label %._crit_edge490, label %.preheader432, !llvm.loop !66

._crit_edge490:                                   ; preds = %._crit_edge484
  %.not396.not497 = icmp eq i32 %i.h, 0
  br i1 %.not396.not497, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge490
  %i.uw = sext i32 %.17.lcssa to i64              ; 2 uses
  %i.ux = zext nneg i32 %.0328 to i64             ; 5 uses
  %i.uy = zext nneg i32 %i.q to i64               ; 5 uses
  %xtraiter1616 = and i64 %wide.trip.count721, 3  ; 3 uses
  %6 = icmp ult i32 %i.h, 8
  br i1 %6, label %iter.check1075.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count721, 1073741820
  br label %iter.check1075

iter.check1075:                                   ; preds = %._crit_edge495.3, %.preheader.preheader.new
  %indvars.iv725 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next726.3, %._crit_edge495.3 ] ; 6 uses
  %.18499 = phi i64 [ %i.uw, %.preheader.preheader.new ], [ %indvars.iv.next724.3, %._crit_edge495.3 ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %._crit_edge495.3 ]
  %invariant.gep899 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv725
  br label %bb.r

bb.r:                                             ; preds = %iter.check1075, %bb.r
  %indvars.iv727.a = phi i64 [ %indvars.iv725, %iter.check1075 ], [ %indvars.iv.next728, %bb.r ] ; 2 uses
  %indvars.iv723.a = phi i64 [ %.18499, %iter.check1075 ], [ %indvars.iv.next724, %bb.r ] ; 2 uses
  %7 = mul nuw nsw i64 %indvars.iv727.a, %i.ux
  %gep900 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899, i64 %7
  %8 = load double, ptr %gep900, align 8, !tbaa !9
  %i.uz = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv723.a
  store double %8, ptr %i.uz, align 8, !tbaa !9
  %indvars.iv.next724 = add nsw i64 %indvars.iv723.a, 1 ; 2 uses
  %indvars.iv.next728 = add nuw nsw i64 %indvars.iv727.a, 1 ; 2 uses
  %.not397.not = icmp samesign ult i64 %indvars.iv.next728, %i.uy
  br i1 %.not397.not, label %bb.r, label %._crit_edge495, !llvm.loop !67

._crit_edge495:                                   ; preds = %bb.r
  %indvars.iv.next726 = or disjoint i64 %indvars.iv725, 1 ; 2 uses
  %invariant.gep899.1 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next726
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %._crit_edge495
  %indvars.iv727.1 = phi i64 [ %indvars.iv.next726, %._crit_edge495 ], [ %indvars.iv.next728.1.a, %bb.s ] ; 2 uses
  %indvars.iv723.1 = phi i64 [ %indvars.iv.next724, %._crit_edge495 ], [ %indvars.iv.next724.1, %bb.s ] ; 2 uses
  %i.va = mul nuw nsw i64 %indvars.iv727.1, %i.ux
  %gep900.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.1, i64 %i.va
  %i.vb = load double, ptr %gep900.1.a, align 8, !tbaa !9
  %i.vc = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv723.1
  store double %i.vb, ptr %i.vc, align 8, !tbaa !9
  %indvars.iv.next724.1 = add nsw i64 %indvars.iv723.1, 1 ; 2 uses
  %indvars.iv.next728.1.a = add nuw nsw i64 %indvars.iv727.1, 1 ; 2 uses
  %.not397.not.1 = icmp samesign ult i64 %indvars.iv.next728.1.a, %i.uy
  br i1 %.not397.not.1, label %bb.s, label %._crit_edge495.1, !llvm.loop !67

._crit_edge495.1:                                 ; preds = %bb.s
  %indvars.iv.next726.1 = or disjoint i64 %indvars.iv725, 2 ; 2 uses
  %invariant.gep899.2 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next726.1
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %._crit_edge495.1
  %indvars.iv727.2 = phi i64 [ %indvars.iv.next726.1, %._crit_edge495.1 ], [ %indvars.iv.next728.2, %bb.t ] ; 2 uses
  %indvars.iv723.2 = phi i64 [ %indvars.iv.next724.1, %._crit_edge495.1 ], [ %indvars.iv.next724.2, %bb.t ] ; 2 uses
  %9 = mul nuw nsw i64 %indvars.iv727.2, %i.ux
  %gep900.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.2, i64 %9
  %10 = load double, ptr %gep900.2, align 8, !tbaa !9
  %11 = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv723.2
  store double %10, ptr %11, align 8, !tbaa !9
  %indvars.iv.next724.2 = add nsw i64 %indvars.iv723.2, 1 ; 2 uses
  %indvars.iv.next728.2 = add nuw nsw i64 %indvars.iv727.2, 1 ; 2 uses
  %.not397.not.2 = icmp samesign ult i64 %indvars.iv.next728.2, %i.uy
  br i1 %.not397.not.2, label %bb.t, label %._crit_edge495.2, !llvm.loop !67

._crit_edge495.2:                                 ; preds = %bb.t
  %indvars.iv.next726.2 = or disjoint i64 %indvars.iv725, 3 ; 2 uses
  %invariant.gep899.3 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next726.2
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %._crit_edge495.2
  %indvars.iv727.3 = phi i64 [ %indvars.iv.next726.2, %._crit_edge495.2 ], [ %indvars.iv.next728.3.a, %bb.u ] ; 2 uses
  %indvars.iv723.3 = phi i64 [ %indvars.iv.next724.2, %._crit_edge495.2 ], [ %indvars.iv.next724.3, %bb.u ] ; 2 uses
  %i.vd = mul nuw nsw i64 %indvars.iv727.3, %i.ux
  %gep900.3.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.3, i64 %i.vd
  %i.ve = load double, ptr %gep900.3.a, align 8, !tbaa !9
  %i.vf = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv723.3
  store double %i.ve, ptr %i.vf, align 8, !tbaa !9
  %indvars.iv.next724.3 = add nsw i64 %indvars.iv723.3, 1 ; 3 uses
  %indvars.iv.next728.3.a = add nuw nsw i64 %indvars.iv727.3, 1 ; 2 uses
  %.not397.not.3 = icmp samesign ult i64 %indvars.iv.next728.3.a, %i.uy
  br i1 %.not397.not.3, label %bb.u, label %._crit_edge495.3, !llvm.loop !67

._crit_edge495.3:                                 ; preds = %bb.u
  %indvars.iv.next726.3 = add nuw nsw i64 %indvars.iv725, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit1599.unr-lcssa, label %iter.check1075, !llvm.loop !68

iter.check1113:                                   ; preds = %.lr.ph507.preheader, %.loopexit1573
  %loop-unroll.iv1619 = phi i32 [ 0, %.lr.ph507.preheader ], [ %loop-unroll.iv.next1620, %.loopexit1573 ] ; 2 uses
  %indvar1095 = phi i64 [ 0, %.lr.ph507.preheader ], [ %indvar.next1096, %.loopexit1573 ] ; 3 uses
  %indvar1092 = phi i32 [ 0, %.lr.ph507.preheader ], [ %indvar.next1093, %.loopexit1573 ] ; 2 uses
  %indvars.iv744 = phi i32 [ 1, %.lr.ph507.preheader ], [ %indvars.iv.next745, %.loopexit1573 ] ; 3 uses
  %indvars.iv737.in = phi i32 [ %i.q, %.lr.ph507.preheader ], [ %indvars.iv737, %.loopexit1573 ]
  %.20505 = phi i32 [ 0, %.lr.ph507.preheader ], [ %i.vs, %.loopexit1573 ] ; 3 uses
  %i.vg = trunc i64 %indvar1095 to i32
  %i.vh = add i32 %i.vg, 2
  %i.vi = add i64 %indvar1095, 1                  ; 7 uses
  %i.vj = sext i32 %.20505 to i64
  %i.vk = shl nsw i64 %i.vj, 3
  %i.vl = add i32 %i.sh, %indvar1092
  %i.vm = sext i32 %i.vl to i64
  %i.vn = shl nsw i64 %i.vm, 3
  %i.vo = add i64 %i.vk, %i.b
  %i.vp = add i64 %i.vn, %i.a
  %indvars.iv737 = add i32 %indvars.iv737.in, 1   ; 2 uses
  %i.vq = sext i32 %indvars.iv737 to i64          ; 5 uses
  %i.vr = sext i32 %.20505 to i64                 ; 5 uses
  %i.vs = add i32 %.20505, %indvars.iv744         ; 4 uses
  %min.iters.check1097 = icmp ult i64 %i.vi, 4
  %or.cond1582.not1585 = or i1 %min.iters.check1097, %ident.check1090.not
  %i.vt = sub i64 %i.vp, %i.vo
  %diff.check1094 = icmp ugt i64 %i.vt, -128
  %or.cond1583 = select i1 %or.cond1582.not1585, i1 true, i1 %diff.check1094
  br i1 %or.cond1583, label %vec.epilog.scalar.ph1114.preheader, label %vector.main.loop.iter.check1098

vector.main.loop.iter.check1098:                  ; preds = %iter.check1113
  %min.iters.check1099 = icmp ult i64 %i.vi, 16
  br i1 %min.iters.check1099, label %vec.epilog.ph1117, label %vector.ph1100

vector.ph1100:                                    ; preds = %vector.main.loop.iter.check1098
  %i.vu = and i64 %i.vi, 12
  %n.vec1101 = and i64 %i.vi, -16                 ; 5 uses
  %i.vv = add i64 %n.vec1101, %i.vq
  %i.vw = add i64 %n.vec1101, %i.vr
  %invariant.gep1659 = getelementptr [8 x i8], ptr %3, i64 %i.vq
  %invariant.gep1661 = getelementptr [8 x i8], ptr %4, i64 %i.vr
  br label %vector.body1102

vector.body1102:                                  ; preds = %vector.body1102, %vector.ph1100
  %index1103 = phi i64 [ 0, %vector.ph1100 ], [ %index.next1108, %vector.body1102 ] ; 3 uses
  %gep1660 = getelementptr [8 x i8], ptr %invariant.gep1659, i64 %index1103 ; 4 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %gep1660, i64 32
  %i.vy = getelementptr inbounds nuw i8, ptr %gep1660, i64 64
  %i.vz = getelementptr inbounds nuw i8, ptr %gep1660, i64 96
  %wide.load1104 = load <4 x double>, ptr %gep1660, align 8, !tbaa !9
  %wide.load1105 = load <4 x double>, ptr %i.vx, align 8, !tbaa !9
  %wide.load1106 = load <4 x double>, ptr %i.vy, align 8, !tbaa !9
  %wide.load1107 = load <4 x double>, ptr %i.vz, align 8, !tbaa !9
  %gep1662 = getelementptr [8 x i8], ptr %invariant.gep1661, i64 %index1103 ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %gep1662, i64 32
  %i.wb = getelementptr inbounds nuw i8, ptr %gep1662, i64 64
  %i.wc = getelementptr inbounds nuw i8, ptr %gep1662, i64 96
  store <4 x double> %wide.load1104, ptr %gep1662, align 8, !tbaa !9
  store <4 x double> %wide.load1105, ptr %i.wa, align 8, !tbaa !9
  store <4 x double> %wide.load1106, ptr %i.wb, align 8, !tbaa !9
  store <4 x double> %wide.load1107, ptr %i.wc, align 8, !tbaa !9
  %index.next1108 = add nuw i64 %index1103, 16    ; 2 uses
  %i.wd = icmp eq i64 %index.next1108, %n.vec1101
  br i1 %i.wd, label %middle.block1109, label %vector.body1102, !llvm.loop !69

middle.block1109:                                 ; preds = %vector.body1102
  %cmp.n1110 = icmp eq i64 %i.vi, %n.vec1101
  br i1 %cmp.n1110, label %.loopexit1573, label %vec.epilog.iter.check1115

vec.epilog.iter.check1115:                        ; preds = %middle.block1109
  %min.epilog.iters.check1116 = icmp eq i64 %i.vu, 0
  br i1 %min.epilog.iters.check1116, label %vec.epilog.scalar.ph1114.preheader, label %vec.epilog.ph1117, !prof !15

vec.epilog.ph1117:                                ; preds = %vector.main.loop.iter.check1098, %vec.epilog.iter.check1115
  %vec.epilog.resume.val1111 = phi i64 [ %n.vec1101, %vec.epilog.iter.check1115 ], [ 0, %vector.main.loop.iter.check1098 ]
  %n.vec1118 = and i64 %i.vi, -4                  ; 4 uses
  %i.we = add i64 %n.vec1118, %i.vq
  %i.wf = add i64 %n.vec1118, %i.vr
  %invariant.gep1663 = getelementptr [8 x i8], ptr %3, i64 %i.vq
  %invariant.gep1665 = getelementptr [8 x i8], ptr %4, i64 %i.vr
  br label %vec.epilog.vector.body1119

vec.epilog.vector.body1119:                       ; preds = %vec.epilog.vector.body1119, %vec.epilog.ph1117
  %index1120 = phi i64 [ %vec.epilog.resume.val1111, %vec.epilog.ph1117 ], [ %index.next1122, %vec.epilog.vector.body1119 ] ; 3 uses
  %gep1664 = getelementptr [8 x i8], ptr %invariant.gep1663, i64 %index1120
  %wide.load1121 = load <4 x double>, ptr %gep1664, align 8, !tbaa !9
  %gep1666 = getelementptr [8 x i8], ptr %invariant.gep1665, i64 %index1120
  store <4 x double> %wide.load1121, ptr %gep1666, align 8, !tbaa !9
  %index.next1122 = add nuw i64 %index1120, 4     ; 2 uses
  %i.wg = icmp eq i64 %index.next1122, %n.vec1118
  br i1 %i.wg, label %vec.epilog.middle.block1123, label %vec.epilog.vector.body1119, !llvm.loop !70

vec.epilog.middle.block1123:                      ; preds = %vec.epilog.vector.body1119
  %cmp.n1124 = icmp eq i64 %i.vi, %n.vec1118
  br i1 %cmp.n1124, label %.loopexit1573, label %vec.epilog.scalar.ph1114.preheader

vec.epilog.scalar.ph1114.preheader:               ; preds = %iter.check1113, %vec.epilog.iter.check1115, %vec.epilog.middle.block1123
  %indvars.iv739.ph = phi i64 [ %i.vq, %iter.check1113 ], [ %i.vv, %vec.epilog.iter.check1115 ], [ %i.we, %vec.epilog.middle.block1123 ] ; 2 uses
  %indvars.iv735.ph = phi i64 [ %i.vr, %iter.check1113 ], [ %i.vw, %vec.epilog.iter.check1115 ], [ %i.wf, %vec.epilog.middle.block1123 ] ; 3 uses
  %i.wh = trunc i64 %indvars.iv735.ph to i32      ; 2 uses
  %i.wi = sub i32 %i.vs, %i.wh
  %i.wj = sub i32 %loop-unroll.iv1619, %i.wh
  %xtraiter1621 = and i32 %i.wi, 7                ; 2 uses
  %lcmp.mod1622.not = icmp eq i32 %xtraiter1621, 0
  br i1 %lcmp.mod1622.not, label %vec.epilog.scalar.ph1114.prol.loopexit, label %vec.epilog.scalar.ph1114.prol

vec.epilog.scalar.ph1114.prol:                    ; preds = %vec.epilog.scalar.ph1114.preheader, %vec.epilog.scalar.ph1114.prol
  %indvars.iv739.prol = phi i64 [ %indvars.iv.next740.prol, %vec.epilog.scalar.ph1114.prol ], [ %indvars.iv739.ph, %vec.epilog.scalar.ph1114.preheader ] ; 2 uses
  %indvars.iv735.prol = phi i64 [ %indvars.iv.next736.prol, %vec.epilog.scalar.ph1114.prol ], [ %indvars.iv735.ph, %vec.epilog.scalar.ph1114.preheader ] ; 2 uses
  %prol.iter1623 = phi i32 [ %prol.iter1623.next, %vec.epilog.scalar.ph1114.prol ], [ 0, %vec.epilog.scalar.ph1114.preheader ]
  %i.wk = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv739.prol
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !9
  %i.wm = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv735.prol
  store double %i.wl, ptr %i.wm, align 8, !tbaa !9
  %indvars.iv.next736.prol = add nsw i64 %indvars.iv735.prol, 1 ; 2 uses
  %indvars.iv.next740.prol = add nsw i64 %indvars.iv739.prol, %i.sg ; 2 uses
  %prol.iter1623.next = add i32 %prol.iter1623, 1 ; 2 uses
  %prol.iter1623.cmp.not = icmp eq i32 %prol.iter1623.next, %xtraiter1621
  br i1 %prol.iter1623.cmp.not, label %vec.epilog.scalar.ph1114.prol.loopexit, label %vec.epilog.scalar.ph1114.prol, !llvm.loop !71

vec.epilog.scalar.ph1114.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1114.prol, %vec.epilog.scalar.ph1114.preheader
  %indvars.iv739.unr = phi i64 [ %indvars.iv739.ph, %vec.epilog.scalar.ph1114.preheader ], [ %indvars.iv.next740.prol, %vec.epilog.scalar.ph1114.prol ]
  %indvars.iv735.unr = phi i64 [ %indvars.iv735.ph, %vec.epilog.scalar.ph1114.preheader ], [ %indvars.iv.next736.prol, %vec.epilog.scalar.ph1114.prol ]
  %i.wn = icmp ult i32 %i.wj, 7
  br i1 %i.wn, label %.loopexit1573, label %vec.epilog.scalar.ph1114

vec.epilog.scalar.ph1114:                         ; preds = %vec.epilog.scalar.ph1114.prol.loopexit, %vec.epilog.scalar.ph1114
  %indvars.iv739 = phi i64 [ %indvars.iv.next740.7, %vec.epilog.scalar.ph1114 ], [ %indvars.iv739.unr, %vec.epilog.scalar.ph1114.prol.loopexit ] ; 2 uses
  %indvars.iv735 = phi i64 [ %indvars.iv.next736.7, %vec.epilog.scalar.ph1114 ], [ %indvars.iv735.unr, %vec.epilog.scalar.ph1114.prol.loopexit ] ; 9 uses
  %i.wo = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv739
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !9
  %i.wq = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv735
  store double %i.wp, ptr %i.wq, align 8, !tbaa !9
  %indvars.iv.next740 = add nsw i64 %indvars.iv739, %i.sg ; 2 uses
  %i.wr = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !9
  %i.wt = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.wu = getelementptr i8, ptr %i.wt, i64 8
  store double %i.ws, ptr %i.wu, align 8, !tbaa !9
  %indvars.iv.next740.1 = add nsw i64 %indvars.iv.next740, %i.sg ; 2 uses
  %i.wv = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.1
  %i.ww = load double, ptr %i.wv, align 8, !tbaa !9
  %i.wx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.wy = getelementptr i8, ptr %i.wx, i64 16
  store double %i.ww, ptr %i.wy, align 8, !tbaa !9
  %indvars.iv.next740.2 = add nsw i64 %indvars.iv.next740.1, %i.sg ; 2 uses
  %i.wz = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.2
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !9
  %i.xb = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xc = getelementptr i8, ptr %i.xb, i64 24
  store double %i.xa, ptr %i.xc, align 8, !tbaa !9
  %indvars.iv.next740.3 = add nsw i64 %indvars.iv.next740.2, %i.sg ; 2 uses
  %i.xd = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.3
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !9
  %i.xf = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xg = getelementptr i8, ptr %i.xf, i64 32
  store double %i.xe, ptr %i.xg, align 8, !tbaa !9
  %indvars.iv.next740.4 = add nsw i64 %indvars.iv.next740.3, %i.sg ; 2 uses
  %i.xh = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.4
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !9
  %i.xj = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xk = getelementptr i8, ptr %i.xj, i64 40
  store double %i.xi, ptr %i.xk, align 8, !tbaa !9
  %indvars.iv.next740.5 = add nsw i64 %indvars.iv.next740.4, %i.sg ; 2 uses
  %i.xl = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.5
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !9
  %i.xn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xo = getelementptr i8, ptr %i.xn, i64 48
  store double %i.xm, ptr %i.xo, align 8, !tbaa !9
  %indvars.iv.next740.6 = add nsw i64 %indvars.iv.next740.5, %i.sg ; 2 uses
  %i.xp = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next740.6
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !9
  %i.xr = getelementptr [8 x i8], ptr %4, i64 %indvars.iv735
  %i.xs = getelementptr i8, ptr %i.xr, i64 56
  store double %i.xq, ptr %i.xs, align 8, !tbaa !9
  %indvars.iv.next736.7 = add nsw i64 %indvars.iv735, 8 ; 2 uses
  %indvars.iv.next740.7 = add nsw i64 %indvars.iv.next740.6, %i.sg
  %lftr.wideiv746.7 = trunc i64 %indvars.iv.next736.7 to i32
  %exitcond747.not.7 = icmp eq i32 %i.vs, %lftr.wideiv746.7
  br i1 %exitcond747.not.7, label %.loopexit1573, label %vec.epilog.scalar.ph1114, !llvm.loop !72

.loopexit1573:                                    ; preds = %vec.epilog.scalar.ph1114.prol.loopexit, %vec.epilog.scalar.ph1114, %vec.epilog.middle.block1123, %middle.block1109
  %indvars.iv.next745 = add nuw i32 %indvars.iv744, 1
  %exitcond748.not = icmp eq i32 %indvars.iv744, %i.q
  %indvar.next1093 = add i32 %indvar1092, 1
  %indvar.next1096 = add i64 %indvar1095, 1
  %loop-unroll.iv.next1620 = add i32 %loop-unroll.iv1619, %i.vh
  br i1 %exitcond748.not, label %._crit_edge508, label %iter.check1113, !llvm.loop !73

._crit_edge508:                                   ; preds = %.loopexit1573
  %.not392.not517.not = icmp eq i32 %i.h, 0
  br i1 %.not392.not517.not, label %.loopexit, label %.lr.ph522.preheader

.lr.ph522.preheader:                              ; preds = %._crit_edge508
  %i.xt = zext nneg i32 %.0328 to i64
  %i.xu = zext nneg i32 %i.q to i64               ; 2 uses
  %wide.trip.count764 = zext nneg i32 %i.h to i64
  %i.xv = sext i32 %i.vs to i64
  %i.xw = sub i64 %i.b, %i.a
  %i.xx = mul nsw i64 %i.sg, -8
  %i.xy = add nuw nsw i64 %i.sg, 1
  br label %iter.check1147

iter.check1147:                                   ; preds = %._crit_edge515, %.lr.ph522.preheader
  %indvar1128 = phi i64 [ %indvar.next1129, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 4 uses
  %indvars.iv759 = phi i64 [ %indvars.iv.next760, %._crit_edge515 ], [ %i.xu, %.lr.ph522.preheader ] ; 2 uses
  %indvars.iv752 = phi i64 [ %indvars.iv.next753, %._crit_edge515 ], [ 0, %.lr.ph522.preheader ] ; 9 uses
  %.22520 = phi i64 [ %indvars.iv.next751.lcssa, %._crit_edge515 ], [ %i.xv, %.lr.ph522.preheader ] ; 7 uses
  %i.xz = mul i64 %i.xy, %indvar1128
  %i.ya = add i64 %i.xz, %i.xu
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ya, i64 %indvars.iv752)
  %i.yb = mul i64 %indvar1128, %i.sg
  %reass.sub1575 = sub i64 %umax, %i.yb
  %i.yc = add i64 %reass.sub1575, 1               ; 7 uses
  %i.yd = add nuw nsw i64 %indvars.iv752, %indvars.iv759
  %min.iters.check1131 = icmp ult i64 %i.yc, 4
  br i1 %min.iters.check1131, label %.lr.ph514.preheader, label %vector.memcheck1127

vector.memcheck1127:                              ; preds = %iter.check1147
  %i.ye = mul i64 %i.xx, %indvar1128
  %i.yf = add i64 %i.xw, %i.ye
  %i.yg = shl i64 %.22520, 3
  %i.yh = add i64 %i.yf, %i.yg
  %i.yi = add i64 %i.yh, -1
  %diff.check1130 = icmp ult i64 %i.yi, 127
  br i1 %diff.check1130, label %.lr.ph514.preheader, label %vector.main.loop.iter.check1132

vector.main.loop.iter.check1132:                  ; preds = %vector.memcheck1127
  %min.iters.check1133 = icmp ult i64 %i.yc, 16
  br i1 %min.iters.check1133, label %vec.epilog.ph1151, label %vector.ph1134

vector.ph1134:                                    ; preds = %vector.main.loop.iter.check1132
  %i.yj = and i64 %i.yc, 12
  %n.vec1135 = and i64 %i.yc, -16                 ; 5 uses
  %i.yk = add i64 %indvars.iv752, %n.vec1135
  %i.yl = add i64 %.22520, %n.vec1135             ; 2 uses
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv752
  %i.yn = getelementptr [8 x i8], ptr %4, i64 %.22520
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1134
  %index1137 = phi i64 [ 0, %vector.ph1134 ], [ %index.next1142, %vector.body1136 ] ; 3 uses
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %index1137 ; 4 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 32
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 64
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 96
  %wide.load1138 = load <4 x double>, ptr %i.yo, align 8, !tbaa !9
  %wide.load1139 = load <4 x double>, ptr %i.yp, align 8, !tbaa !9
  %wide.load1140 = load <4 x double>, ptr %i.yq, align 8, !tbaa !9
  %wide.load1141 = load <4 x double>, ptr %i.yr, align 8, !tbaa !9
  %i.ys = getelementptr [8 x i8], ptr %i.yn, i64 %index1137 ; 4 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 32
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 64
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ys, i64 96
  store <4 x double> %wide.load1138, ptr %i.ys, align 8, !tbaa !9
  store <4 x double> %wide.load1139, ptr %i.yt, align 8, !tbaa !9
  store <4 x double> %wide.load1140, ptr %i.yu, align 8, !tbaa !9
  store <4 x double> %wide.load1141, ptr %i.yv, align 8, !tbaa !9
  %index.next1142 = add nuw i64 %index1137, 16    ; 2 uses
  %i.yw = icmp eq i64 %index.next1142, %n.vec1135
  br i1 %i.yw, label %middle.block1143, label %vector.body1136, !llvm.loop !74

middle.block1143:                                 ; preds = %vector.body1136
  %cmp.n1144 = icmp eq i64 %i.yc, %n.vec1135
  br i1 %cmp.n1144, label %._crit_edge515, label %vec.epilog.iter.check1149

vec.epilog.iter.check1149:                        ; preds = %middle.block1143
  %min.epilog.iters.check1150 = icmp eq i64 %i.yj, 0
  br i1 %min.epilog.iters.check1150, label %.lr.ph514.preheader, label %vec.epilog.ph1151, !prof !15

vec.epilog.ph1151:                                ; preds = %vector.main.loop.iter.check1132, %vec.epilog.iter.check1149
  %vec.epilog.resume.val1145 = phi i64 [ %n.vec1135, %vec.epilog.iter.check1149 ], [ 0, %vector.main.loop.iter.check1132 ]
  %n.vec1152 = and i64 %i.yc, -4                  ; 4 uses
  %i.yx = add i64 %indvars.iv752, %n.vec1152
  %i.yy = add i64 %.22520, %n.vec1152             ; 2 uses
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv752
  %i.za = getelementptr [8 x i8], ptr %4, i64 %.22520
  br label %vec.epilog.vector.body1153

vec.epilog.vector.body1153:                       ; preds = %vec.epilog.vector.body1153, %vec.epilog.ph1151
  %index1154 = phi i64 [ %vec.epilog.resume.val1145, %vec.epilog.ph1151 ], [ %index.next1156, %vec.epilog.vector.body1153 ] ; 3 uses
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %index1154
  %wide.load1155 = load <4 x double>, ptr %i.zb, align 8, !tbaa !9
  %i.zc = getelementptr [8 x i8], ptr %i.za, i64 %index1154
  store <4 x double> %wide.load1155, ptr %i.zc, align 8, !tbaa !9
  %index.next1156 = add nuw i64 %index1154, 4     ; 2 uses
  %i.zd = icmp eq i64 %index.next1156, %n.vec1152
  br i1 %i.zd, label %vec.epilog.middle.block1157, label %vec.epilog.vector.body1153, !llvm.loop !75

vec.epilog.middle.block1157:                      ; preds = %vec.epilog.vector.body1153
  %cmp.n1158 = icmp eq i64 %i.yc, %n.vec1152
  br i1 %cmp.n1158, label %._crit_edge515, label %.lr.ph514.preheader

.lr.ph514.preheader:                              ; preds = %vector.memcheck1127, %iter.check1147, %vec.epilog.iter.check1149, %vec.epilog.middle.block1157
  %indvars.iv754.ph = phi i64 [ %indvars.iv752, %iter.check1147 ], [ %indvars.iv752, %vector.memcheck1127 ], [ %i.yk, %vec.epilog.iter.check1149 ], [ %i.yx, %vec.epilog.middle.block1157 ]
  %indvars.iv750.ph = phi i64 [ %.22520, %iter.check1147 ], [ %.22520, %vector.memcheck1127 ], [ %i.yl, %vec.epilog.iter.check1149 ], [ %i.yy, %vec.epilog.middle.block1157 ]
  br label %.lr.ph514

.lr.ph514:                                        ; preds = %.lr.ph514.preheader, %.lr.ph514
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %.lr.ph514 ], [ %indvars.iv754.ph, %.lr.ph514.preheader ] ; 3 uses
  %indvars.iv750 = phi i64 [ %indvars.iv.next751, %.lr.ph514 ], [ %indvars.iv750.ph, %.lr.ph514.preheader ] ; 2 uses
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv754
  %i.zf = load double, ptr %i.ze, align 8, !tbaa !9
  %i.zg = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv750
  store double %i.zf, ptr %i.zg, align 8, !tbaa !9
  %indvars.iv.next751 = add nsw i64 %indvars.iv750, 1 ; 2 uses
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1
  %.not393.not = icmp samesign ult i64 %indvars.iv754, %i.yd
  br i1 %.not393.not, label %.lr.ph514, label %._crit_edge515, !llvm.loop !76

._crit_edge515:                                   ; preds = %.lr.ph514, %vec.epilog.middle.block1157, %middle.block1143
  %indvars.iv.next751.lcssa = phi i64 [ %i.yy, %vec.epilog.middle.block1157 ], [ %i.yl, %middle.block1143 ], [ %indvars.iv.next751, %.lr.ph514 ]
  %indvars.iv.next753 = add nuw nsw i64 %indvars.iv752, %i.xt
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 1 ; 2 uses
  %exitcond765.not = icmp eq i64 %indvars.iv.next760, %wide.trip.count764
  %indvar.next1129 = add i64 %indvar1128, 1
  br i1 %exitcond765.not, label %.loopexit, label %iter.check1147, !llvm.loop !77

bb.v:                                             ; preds = %bb.j
  br i1 %.not379, label %.lr.ph605.preheader, label %.lr.ph582

.lr.ph582:                                        ; preds = %bb.v
  %i.zh = mul nuw nsw i32 %i.s, %.0328            ; 2 uses
  %i.zi = add nuw nsw i32 %i.s, 1
  %i.zj = zext nneg i32 %i.s to i64               ; 11 uses
  %i.zk = zext nneg i32 %i.zh to i64              ; 5 uses
  %scevgep1362 = getelementptr i8, ptr %4, i64 8
  %i.zl = shl nuw nsw i64 %i.zj, 3
  %broadcast.splatinsert1381 = insertelement <4 x i64> poison, i64 %i.zj, i64 0
  %broadcast.splat1382 = shufflevector <4 x i64> %broadcast.splatinsert1381, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zm = shl nuw nsw <4 x i64> %broadcast.splat1382, splat (i64 2) ; 5 uses
  %i.zn = mul nuw nsw <4 x i64> %broadcast.splat1382, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1684 = add <4 x i64> %i.zm, %i.zm  ; 2 uses
  %invariant.op1685 = add <4 x i64> %invariant.op1684, %i.zm ; 2 uses
  %invariant.op1688 = add <4 x i64> %invariant.op1685, %i.zm
  %broadcast.splatinsert1415 = insertelement <4 x i64> poison, i64 %i.zj, i64 0
  %broadcast.splat1416 = shufflevector <4 x i64> %broadcast.splatinsert1415, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.zo = mul nuw nsw <4 x i64> %broadcast.splat1416, <i64 0, i64 1, i64 2, i64 3>
  %i.zp = shl nuw nsw i64 %i.zj, 2
  %broadcast.splatinsert1418 = insertelement <4 x i64> poison, i64 %i.zp, i64 0
  %broadcast.splat1419 = shufflevector <4 x i64> %broadcast.splatinsert1418, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.w

.loopexit427.loopexit:                            ; preds = %.lr.ph576, %vec.epilog.middle.block1427, %middle.block1402
  %indvars.iv.next821.lcssa = phi i64 [ %i.abe, %vec.epilog.middle.block1427 ], [ %i.aax, %middle.block1402 ], [ %indvars.iv.next821, %.lr.ph576 ]
  %i.zq = trunc nsw i64 %indvars.iv.next821.lcssa to i32
  br label %.loopexit427

.loopexit427:                                     ; preds = %.loopexit427.loopexit, %bb.w
  %.25.lcssa = phi i32 [ %.24580, %bb.w ], [ %i.zq, %.loopexit427.loopexit ] ; 2 uses
  %indvars.iv.next823 = add i32 %indvars.iv822, %i.zi
  %exitcond829.not = icmp eq i32 %i.zx, %i.q
  br i1 %exitcond829.not, label %.lr.ph597, label %bb.w, !llvm.loop !78

bb.w:                                             ; preds = %.lr.ph582, %.loopexit427
  %indvars.iv822 = phi i32 [ %i.s, %.lr.ph582 ], [ %indvars.iv.next823, %.loopexit427 ] ; 4 uses
  %.24580 = phi i32 [ 0, %.lr.ph582 ], [ %.25.lcssa, %.loopexit427 ] ; 2 uses
  %.8374579 = phi i32 [ 0, %.lr.ph582 ], [ %i.zx, %.loopexit427 ] ; 2 uses
  %i.zr = sext i32 %indvars.iv822 to i64          ; 2 uses
  %i.zs = add nsw i64 %i.zj, %i.zr                ; 3 uses
  %smax1363 = tail call i64 @llvm.smax.i64(i64 %i.zs, i64 %i.zk)
  %i.zt = icmp slt i64 %i.zs, %i.zk
  %umin1364 = zext i1 %i.zt to i64                ; 2 uses
  %i.zu = add nsw i64 %i.zs, %umin1364
  %i.zv = sub i64 %smax1363, %i.zu
  %i.zw = shl nsw i64 %i.zr, 3                    ; 2 uses
  %scevgep1367 = getelementptr i8, ptr %3, i64 %i.zw ; 4 uses
  %i.zx = add nuw nsw i32 %.8374579, 1            ; 3 uses
  %i.zy = mul nuw nsw i32 %i.zx, %i.s
  %i.zz = add nuw nsw i32 %i.zy, %.8374579
  %i.aaa = icmp slt i32 %i.zz, %i.zh
  br i1 %i.aaa, label %iter.check1407, label %.loopexit427

iter.check1407:                                   ; preds = %bb.w
  %i.aab = sext i32 %indvars.iv822 to i64
  %i.aac = add nsw i64 %i.zj, %i.aab              ; 3 uses
  %i.aad = icmp slt i64 %i.aac, %i.zk             ; 2 uses
  %umin1375 = zext i1 %i.aad to i64
  %smax1374 = tail call i64 @llvm.smax.i64(i64 %i.aac, i64 %i.zk)
  %i.aae = add nsw i64 %i.aac, %umin1375
  %i.aaf = sub i64 %smax1374, %i.aae
  %i.aag = sext i32 %indvars.iv822 to i64         ; 6 uses
  %i.aah = sext i32 %.24580 to i64                ; 8 uses
  %i.aai = select i1 %i.aad, i64 2, i64 1
  %i.aaj = udiv i64 %i.aaf, %i.zj
  %i.aak = add i64 %i.aai, %i.aaj                 ; 7 uses
  %min.iters.check1376 = icmp ult i64 %i.aak, 4
  br i1 %min.iters.check1376, label %.lr.ph576.preheader, label %vector.memcheck1360

vector.memcheck1360:                              ; preds = %iter.check1407
  %i.aal = shl nsw i64 %i.aah, 3
  %scevgep1361 = getelementptr i8, ptr %4, i64 %i.aal
  %i.aam = udiv i64 %i.zv, %i.zj
  %i.aan = add i64 %i.aam, %umin1364              ; 2 uses
  %i.aao = add i64 %i.aan, %i.aah
  %i.aap = shl i64 %i.aao, 3
  %scevgep1365 = getelementptr i8, ptr %scevgep1362, i64 %i.aap
  %i.aaq = mul i64 %i.zl, %i.aan
  %i.aar = getelementptr i8, ptr %3, i64 %i.aaq
  %scevgep1366 = getelementptr i8, ptr %i.aar, i64 %i.zw ; 4 uses
  %i.aas = icmp ult ptr %scevgep1366, %scevgep1367
  %umin1368 = select i1 %i.aas, ptr %scevgep1366, ptr %scevgep1367
  %i.aat = icmp ugt ptr %scevgep1366, %scevgep1367
  %umax1369 = select i1 %i.aat, ptr %scevgep1366, ptr %scevgep1367
  %scevgep1370 = getelementptr i8, ptr %umax1369, i64 8
  %bound01371 = icmp ult ptr %scevgep1361, %scevgep1370
  %bound11372 = icmp ult ptr %umin1368, %scevgep1365
  %found.conflict1373 = and i1 %bound01371, %bound11372
  br i1 %found.conflict1373, label %.lr.ph576.preheader, label %vector.main.loop.iter.check1377

vector.main.loop.iter.check1377:                  ; preds = %vector.memcheck1360
  %min.iters.check1378 = icmp ult i64 %i.aak, 16
  br i1 %min.iters.check1378, label %vec.epilog.ph1411, label %vector.ph1379

vector.ph1379:                                    ; preds = %vector.main.loop.iter.check1377
  %i.aau = and i64 %i.aak, 12
  %n.vec1380 = and i64 %i.aak, -16                ; 5 uses
  %i.aav = mul i64 %n.vec1380, %i.zj
  %i.aaw = add i64 %i.aav, %i.aag                 ; 2 uses
  %i.aax = add i64 %n.vec1380, %i.aah             ; 2 uses
  %broadcast.splatinsert1383 = insertelement <4 x i64> poison, i64 %i.aag, i64 0
  %broadcast.splat1384 = shufflevector <4 x i64> %broadcast.splatinsert1383, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1385 = add nsw <4 x i64> %broadcast.splat1384, %i.zn
  %invariant.gep1686 = getelementptr [8 x i8], ptr %4, i64 %i.aah
  br label %vector.body1386

vector.body1386:                                  ; preds = %vector.body1386, %vector.ph1379
  %index1387 = phi i64 [ 0, %vector.ph1379 ], [ %index.next1400, %vector.body1386 ] ; 2 uses
  %vec.ind1388 = phi <4 x i64> [ %induction1385, %vector.ph1379 ], [ %vec.ind.next1401.reass, %vector.body1386 ] ; 5 uses
  %step.add1389 = add nsw <4 x i64> %vec.ind1388, %i.zm
  %step.add.21390.reass = add <4 x i64> %vec.ind1388, %invariant.op1684
  %step.add.31391.reass = add <4 x i64> %vec.ind1388, %invariant.op1685
  %wide.gep1392 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %vec.ind1388
  %wide.gep1393 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add1389
  %wide.gep1394 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add.21390.reass
  %wide.gep1395 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %step.add.31391.reass
  %wide.masked.gather1396 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1392, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !79
  %wide.masked.gather1397 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1393, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !79
  %wide.masked.gather1398 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1394, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !79
  %wide.masked.gather1399 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1395, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !79
  %gep1687 = getelementptr [8 x i8], ptr %invariant.gep1686, i64 %index1387 ; 4 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %gep1687, i64 32
  %i.aaz = getelementptr inbounds nuw i8, ptr %gep1687, i64 64
  %i.aba = getelementptr inbounds nuw i8, ptr %gep1687, i64 96
  store <4 x double> %wide.masked.gather1396, ptr %gep1687, align 8, !tbaa !9, !alias.scope !82, !noalias !79
  store <4 x double> %wide.masked.gather1397, ptr %i.aay, align 8, !tbaa !9, !alias.scope !82, !noalias !79
  store <4 x double> %wide.masked.gather1398, ptr %i.aaz, align 8, !tbaa !9, !alias.scope !82, !noalias !79
  store <4 x double> %wide.masked.gather1399, ptr %i.aba, align 8, !tbaa !9, !alias.scope !82, !noalias !79
  %index.next1400 = add nuw i64 %index1387, 16    ; 2 uses
  %vec.ind.next1401.reass = add <4 x i64> %vec.ind1388, %invariant.op1688
  %i.abb = icmp eq i64 %index.next1400, %n.vec1380
  br i1 %i.abb, label %middle.block1402, label %vector.body1386, !llvm.loop !84

middle.block1402:                                 ; preds = %vector.body1386
  %cmp.n1403 = icmp eq i64 %i.aak, %n.vec1380
  br i1 %cmp.n1403, label %.loopexit427.loopexit, label %vec.epilog.iter.check1409

vec.epilog.iter.check1409:                        ; preds = %middle.block1402
  %min.epilog.iters.check1410 = icmp eq i64 %i.aau, 0
  br i1 %min.epilog.iters.check1410, label %.lr.ph576.preheader, label %vec.epilog.ph1411, !prof !15

vec.epilog.ph1411:                                ; preds = %vector.main.loop.iter.check1377, %vec.epilog.iter.check1409
  %vec.epilog.resume.val1404 = phi i64 [ %n.vec1380, %vec.epilog.iter.check1409 ], [ 0, %vector.main.loop.iter.check1377 ]
  %bc.resume.val1405 = phi i64 [ %i.aaw, %vec.epilog.iter.check1409 ], [ %i.aag, %vector.main.loop.iter.check1377 ]
  %n.vec1412 = and i64 %i.aak, -4                 ; 4 uses
  %i.abc = mul i64 %n.vec1412, %i.zj
  %i.abd = add i64 %i.abc, %i.aag
  %i.abe = add i64 %n.vec1412, %i.aah             ; 2 uses
  %broadcast.splatinsert1413 = insertelement <4 x i64> poison, i64 %bc.resume.val1405, i64 0
  %broadcast.splat1414 = shufflevector <4 x i64> %broadcast.splatinsert1413, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1417 = add nsw <4 x i64> %broadcast.splat1414, %i.zo
  %invariant.gep1689 = getelementptr [8 x i8], ptr %4, i64 %i.aah
  br label %vec.epilog.vector.body1420

vec.epilog.vector.body1420:                       ; preds = %vec.epilog.vector.body1420, %vec.epilog.ph1411
  %index1421 = phi i64 [ %vec.epilog.resume.val1404, %vec.epilog.ph1411 ], [ %index.next1425, %vec.epilog.vector.body1420 ] ; 2 uses
  %vec.ind1422 = phi <4 x i64> [ %induction1417, %vec.epilog.ph1411 ], [ %vec.ind.next1426, %vec.epilog.vector.body1420 ] ; 2 uses
  %wide.gep1423 = getelementptr inbounds [8 x i8], ptr %3, <4 x i64> %vec.ind1422
  %wide.masked.gather1424 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1423, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !79
  %gep1690 = getelementptr [8 x i8], ptr %invariant.gep1689, i64 %index1421
  store <4 x double> %wide.masked.gather1424, ptr %gep1690, align 8, !tbaa !9, !alias.scope !82, !noalias !79
  %index.next1425 = add nuw i64 %index1421, 4     ; 2 uses
  %vec.ind.next1426 = add nsw <4 x i64> %vec.ind1422, %broadcast.splat1419
  %i.abf = icmp eq i64 %index.next1425, %n.vec1412
  br i1 %i.abf, label %vec.epilog.middle.block1427, label %vec.epilog.vector.body1420, !llvm.loop !85

vec.epilog.middle.block1427:                      ; preds = %vec.epilog.vector.body1420
  %cmp.n1428 = icmp eq i64 %i.aak, %n.vec1412
  br i1 %cmp.n1428, label %.loopexit427.loopexit, label %.lr.ph576.preheader

.lr.ph576.preheader:                              ; preds = %vector.memcheck1360, %iter.check1407, %vec.epilog.iter.check1409, %vec.epilog.middle.block1427
  %indvars.iv824.ph = phi i64 [ %i.aag, %iter.check1407 ], [ %i.aag, %vector.memcheck1360 ], [ %i.aaw, %vec.epilog.iter.check1409 ], [ %i.abd, %vec.epilog.middle.block1427 ]
  %indvars.iv820.ph = phi i64 [ %i.aah, %iter.check1407 ], [ %i.aah, %vector.memcheck1360 ], [ %i.aax, %vec.epilog.iter.check1409 ], [ %i.abe, %vec.epilog.middle.block1427 ]
  br label %.lr.ph576

.lr.ph576:                                        ; preds = %.lr.ph576.preheader, %.lr.ph576
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %.lr.ph576 ], [ %indvars.iv824.ph, %.lr.ph576.preheader ] ; 2 uses
  %indvars.iv820 = phi i64 [ %indvars.iv.next821, %.lr.ph576 ], [ %indvars.iv820.ph, %.lr.ph576.preheader ] ; 2 uses
  %i.abg = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv824
  %i.abh = load double, ptr %i.abg, align 8, !tbaa !9
  %i.abi = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv820
  store double %i.abh, ptr %i.abi, align 8, !tbaa !9
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, 1 ; 2 uses
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, %i.zj ; 2 uses
  %i.abj = icmp slt i64 %indvars.iv.next825, %i.zk
  br i1 %i.abj, label %.lr.ph576, label %.loopexit427.loopexit, !llvm.loop !86

.lr.ph597:                                        ; preds = %.loopexit427
  %i.abk = add nuw nsw i32 %i.s, 1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph597, %._crit_edge590
  %indvars.iv840 = phi i32 [ %i.q, %.lr.ph597 ], [ %indvars.iv.next841, %._crit_edge590 ] ; 3 uses
  %indvars.iv833 = phi i32 [ 0, %.lr.ph597 ], [ %indvars.iv.next834, %._crit_edge590 ] ; 5 uses
  %.26595 = phi i32 [ %.25.lcssa, %.lr.ph597 ], [ %.27.lcssa, %._crit_edge590 ] ; 2 uses
  %.10364593 = phi i32 [ 0, %.lr.ph597 ], [ %i.aeh, %._crit_edge590 ] ; 3 uses
  %i.abl = xor i32 %.10364593, -1
  %i.abm = add nsw i32 %i.q, %i.abl               ; 3 uses
  %i.abn = zext i32 %i.abm to i64
  %i.abo = add nuw nsw i64 %i.abn, 1              ; 5 uses
  %i.abp = sext i32 %indvars.iv833 to i64
  %i.abq = shl nsw i64 %i.abp, 3
  %i.abr = xor i32 %.10364593, -1
  %i.abs = add nsw i32 %i.q, %i.abr
  %i.abt = add i32 %i.abs, %indvars.iv833         ; 2 uses
  %.not389585 = icmp sgt i32 %indvars.iv833, %i.abt
  br i1 %.not389585, label %._crit_edge590, label %iter.check1450

iter.check1450:                                   ; preds = %bb.x
  %i.abu = sext i32 %indvars.iv833 to i64         ; 6 uses
  %i.abv = sext i32 %.26595 to i64                ; 7 uses
  %min.iters.check1433 = icmp ult i32 %i.abm, 3
  br i1 %min.iters.check1433, label %.lr.ph589.preheader, label %vector.memcheck1431

vector.memcheck1431:                              ; preds = %iter.check1450
  %i.abw = shl nsw i64 %i.abv, 3
  %i.abx = add i64 %i.abw, %i.b
  %i.aby = add i64 %i.abq, %i.a
  %i.abz = sub i64 %i.aby, %i.abx
  %diff.check1432 = icmp ugt i64 %i.abz, -128
  br i1 %diff.check1432, label %.lr.ph589.preheader, label %vector.main.loop.iter.check1434

vector.main.loop.iter.check1434:                  ; preds = %vector.memcheck1431
  %min.iters.check1435 = icmp ult i32 %i.abm, 15
  br i1 %min.iters.check1435, label %vec.epilog.ph1454, label %vector.ph1436

vector.ph1436:                                    ; preds = %vector.main.loop.iter.check1434
  %i.aca = and i64 %i.abo, 12
  %n.vec1437 = and i64 %i.abo, 8589934576         ; 5 uses
  %i.acb = add nsw i64 %n.vec1437, %i.abu
  %i.acc = add nsw i64 %n.vec1437, %i.abv         ; 2 uses
  %invariant.gep1691 = getelementptr [8 x i8], ptr %3, i64 %i.abu
  %invariant.gep1693 = getelementptr [8 x i8], ptr %4, i64 %i.abv
  br label %vector.body1438

vector.body1438:                                  ; preds = %vector.body1438, %vector.ph1436
  %index1439 = phi i64 [ 0, %vector.ph1436 ], [ %index.next1444, %vector.body1438 ] ; 3 uses
  %gep1692 = getelementptr [8 x i8], ptr %invariant.gep1691, i64 %index1439 ; 4 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %gep1692, i64 32
  %i.ace = getelementptr inbounds nuw i8, ptr %gep1692, i64 64
  %i.acf = getelementptr inbounds nuw i8, ptr %gep1692, i64 96
  %wide.load1440 = load <4 x double>, ptr %gep1692, align 8, !tbaa !9
  %wide.load1441 = load <4 x double>, ptr %i.acd, align 8, !tbaa !9
  %wide.load1442 = load <4 x double>, ptr %i.ace, align 8, !tbaa !9
  %wide.load1443 = load <4 x double>, ptr %i.acf, align 8, !tbaa !9
  %gep1694 = getelementptr [8 x i8], ptr %invariant.gep1693, i64 %index1439 ; 4 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %gep1694, i64 32
  %i.ach = getelementptr inbounds nuw i8, ptr %gep1694, i64 64
  %i.aci = getelementptr inbounds nuw i8, ptr %gep1694, i64 96
  store <4 x double> %wide.load1440, ptr %gep1694, align 8, !tbaa !9
  store <4 x double> %wide.load1441, ptr %i.acg, align 8, !tbaa !9
  store <4 x double> %wide.load1442, ptr %i.ach, align 8, !tbaa !9
  store <4 x double> %wide.load1443, ptr %i.aci, align 8, !tbaa !9
  %index.next1444 = add nuw i64 %index1439, 16    ; 2 uses
  %i.acj = icmp eq i64 %index.next1444, %n.vec1437
  br i1 %i.acj, label %middle.block1445, label %vector.body1438, !llvm.loop !87

middle.block1445:                                 ; preds = %vector.body1438
  %cmp.n1446 = icmp eq i64 %i.abo, %n.vec1437
  br i1 %cmp.n1446, label %._crit_edge590.loopexit, label %vec.epilog.iter.check1452

vec.epilog.iter.check1452:                        ; preds = %middle.block1445
  %min.epilog.iters.check1453 = icmp eq i64 %i.aca, 0
  br i1 %min.epilog.iters.check1453, label %.lr.ph589.preheader, label %vec.epilog.ph1454, !prof !15

vec.epilog.ph1454:                                ; preds = %vector.main.loop.iter.check1434, %vec.epilog.iter.check1452
  %vec.epilog.resume.val1447 = phi i64 [ %n.vec1437, %vec.epilog.iter.check1452 ], [ 0, %vector.main.loop.iter.check1434 ]
  %n.vec1455 = and i64 %i.abo, 8589934588         ; 4 uses
  %i.ack = add nsw i64 %n.vec1455, %i.abu
  %i.acl = add nsw i64 %n.vec1455, %i.abv         ; 2 uses
  %invariant.gep1695 = getelementptr [8 x i8], ptr %3, i64 %i.abu
  %invariant.gep1697 = getelementptr [8 x i8], ptr %4, i64 %i.abv
  br label %vec.epilog.vector.body1456

vec.epilog.vector.body1456:                       ; preds = %vec.epilog.vector.body1456, %vec.epilog.ph1454
  %index1457 = phi i64 [ %vec.epilog.resume.val1447, %vec.epilog.ph1454 ], [ %index.next1459, %vec.epilog.vector.body1456 ] ; 3 uses
  %gep1696 = getelementptr [8 x i8], ptr %invariant.gep1695, i64 %index1457
  %wide.load1458 = load <4 x double>, ptr %gep1696, align 8, !tbaa !9
  %gep1698 = getelementptr [8 x i8], ptr %invariant.gep1697, i64 %index1457
  store <4 x double> %wide.load1458, ptr %gep1698, align 8, !tbaa !9
  %index.next1459 = add nuw i64 %index1457, 4     ; 2 uses
  %i.acm = icmp eq i64 %index.next1459, %n.vec1455
  br i1 %i.acm, label %vec.epilog.middle.block1460, label %vec.epilog.vector.body1456, !llvm.loop !88

vec.epilog.middle.block1460:                      ; preds = %vec.epilog.vector.body1456
  %cmp.n1461 = icmp eq i64 %i.abo, %n.vec1455
  br i1 %cmp.n1461, label %._crit_edge590.loopexit, label %.lr.ph589.preheader

.lr.ph589.preheader:                              ; preds = %vector.memcheck1431, %iter.check1450, %vec.epilog.iter.check1452, %vec.epilog.middle.block1460
  %indvars.iv835.ph = phi i64 [ %i.abu, %iter.check1450 ], [ %i.abu, %vector.memcheck1431 ], [ %i.acb, %vec.epilog.iter.check1452 ], [ %i.ack, %vec.epilog.middle.block1460 ] ; 3 uses
  %indvars.iv831.ph = phi i64 [ %i.abv, %iter.check1450 ], [ %i.abv, %vector.memcheck1431 ], [ %i.acc, %vec.epilog.iter.check1452 ], [ %i.acl, %vec.epilog.middle.block1460 ] ; 2 uses
  %i.acn = trunc i64 %indvars.iv835.ph to i32     ; 2 uses
  %i.aco = sub i32 %indvars.iv840, %i.acn
  %i.acp = sub i32 %i.abt, %i.acn
  %xtraiter1627 = and i32 %i.aco, 7               ; 2 uses
  %lcmp.mod1628.not = icmp eq i32 %xtraiter1627, 0
  br i1 %lcmp.mod1628.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol

.lr.ph589.prol:                                   ; preds = %.lr.ph589.preheader, %.lr.ph589.prol
  %indvars.iv835.prol = phi i64 [ %indvars.iv.next836.prol, %.lr.ph589.prol ], [ %indvars.iv835.ph, %.lr.ph589.preheader ] ; 2 uses
  %indvars.iv831.prol = phi i64 [ %indvars.iv.next832.prol, %.lr.ph589.prol ], [ %indvars.iv831.ph, %.lr.ph589.preheader ] ; 2 uses
  %prol.iter1629 = phi i32 [ %prol.iter1629.next, %.lr.ph589.prol ], [ 0, %.lr.ph589.preheader ]
  %i.acq = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv835.prol
  %i.acr = load double, ptr %i.acq, align 8, !tbaa !9
  %i.acs = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv831.prol
  store double %i.acr, ptr %i.acs, align 8, !tbaa !9
  %indvars.iv.next832.prol = add nsw i64 %indvars.iv831.prol, 1 ; 3 uses
  %indvars.iv.next836.prol = add nsw i64 %indvars.iv835.prol, 1 ; 2 uses
  %prol.iter1629.next = add i32 %prol.iter1629, 1 ; 2 uses
  %prol.iter1629.cmp.not = icmp eq i32 %prol.iter1629.next, %xtraiter1627
  br i1 %prol.iter1629.cmp.not, label %.lr.ph589.prol.loopexit, label %.lr.ph589.prol, !llvm.loop !89

.lr.ph589.prol.loopexit:                          ; preds = %.lr.ph589.prol, %.lr.ph589.preheader
  %indvars.iv.next832.lcssa1589.unr = phi i64 [ poison, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %indvars.iv835.unr = phi i64 [ %indvars.iv835.ph, %.lr.ph589.preheader ], [ %indvars.iv.next836.prol, %.lr.ph589.prol ]
  %indvars.iv831.unr = phi i64 [ %indvars.iv831.ph, %.lr.ph589.preheader ], [ %indvars.iv.next832.prol, %.lr.ph589.prol ]
  %i.act = icmp ult i32 %i.acp, 7
  br i1 %i.act, label %._crit_edge590.loopexit, label %.lr.ph589

.lr.ph589:                                        ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589
  %indvars.iv835 = phi i64 [ %indvars.iv.next836.7, %.lr.ph589 ], [ %indvars.iv835.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %indvars.iv831 = phi i64 [ %indvars.iv.next832.7, %.lr.ph589 ], [ %indvars.iv831.unr, %.lr.ph589.prol.loopexit ] ; 9 uses
  %i.acu = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv835
  %i.acv = load double, ptr %i.acu, align 8, !tbaa !9
  %i.acw = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv831
  store double %i.acv, ptr %i.acw, align 8, !tbaa !9
  %i.acx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.acy = getelementptr i8, ptr %i.acx, i64 8
  %i.acz = load double, ptr %i.acy, align 8, !tbaa !9
  %i.ada = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adb = getelementptr i8, ptr %i.ada, i64 8
  store double %i.acz, ptr %i.adb, align 8, !tbaa !9
  %i.adc = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.add = getelementptr i8, ptr %i.adc, i64 16
  %i.ade = load double, ptr %i.add, align 8, !tbaa !9
  %i.adf = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adg = getelementptr i8, ptr %i.adf, i64 16
  store double %i.ade, ptr %i.adg, align 8, !tbaa !9
  %i.adh = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.adi = getelementptr i8, ptr %i.adh, i64 24
  %i.adj = load double, ptr %i.adi, align 8, !tbaa !9
  %i.adk = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adl = getelementptr i8, ptr %i.adk, i64 24
  store double %i.adj, ptr %i.adl, align 8, !tbaa !9
  %i.adm = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.adn = getelementptr i8, ptr %i.adm, i64 32
  %i.ado = load double, ptr %i.adn, align 8, !tbaa !9
  %i.adp = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adq = getelementptr i8, ptr %i.adp, i64 32
  store double %i.ado, ptr %i.adq, align 8, !tbaa !9
  %i.adr = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.ads = getelementptr i8, ptr %i.adr, i64 40
  %i.adt = load double, ptr %i.ads, align 8, !tbaa !9
  %i.adu = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.adv = getelementptr i8, ptr %i.adu, i64 40
  store double %i.adt, ptr %i.adv, align 8, !tbaa !9
  %i.adw = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.adx = getelementptr i8, ptr %i.adw, i64 48
  %i.ady = load double, ptr %i.adx, align 8, !tbaa !9
  %i.adz = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.aea = getelementptr i8, ptr %i.adz, i64 48
  store double %i.ady, ptr %i.aea, align 8, !tbaa !9
  %i.aeb = getelementptr [8 x i8], ptr %3, i64 %indvars.iv835
  %i.aec = getelementptr i8, ptr %i.aeb, i64 56
  %i.aed = load double, ptr %i.aec, align 8, !tbaa !9
  %i.aee = getelementptr [8 x i8], ptr %4, i64 %indvars.iv831
  %i.aef = getelementptr i8, ptr %i.aee, i64 56
  store double %i.aed, ptr %i.aef, align 8, !tbaa !9
  %indvars.iv.next832.7 = add nsw i64 %indvars.iv831, 8 ; 2 uses
  %indvars.iv.next836.7 = add nsw i64 %indvars.iv835, 8 ; 2 uses
  %lftr.wideiv842.7 = trunc i64 %indvars.iv.next836.7 to i32
  %exitcond843.not.7 = icmp eq i32 %indvars.iv840, %lftr.wideiv842.7
  br i1 %exitcond843.not.7, label %._crit_edge590.loopexit, label %.lr.ph589, !llvm.loop !90

._crit_edge590.loopexit:                          ; preds = %.lr.ph589.prol.loopexit, %.lr.ph589, %vec.epilog.middle.block1460, %middle.block1445
  %indvars.iv.next832.lcssa = phi i64 [ %i.acl, %vec.epilog.middle.block1460 ], [ %i.acc, %middle.block1445 ], [ %indvars.iv.next832.lcssa1589.unr, %.lr.ph589.prol.loopexit ], [ %indvars.iv.next832.7, %.lr.ph589 ]
  %i.aeg = trunc nsw i64 %indvars.iv.next832.lcssa to i32
  br label %._crit_edge590

._crit_edge590:                                   ; preds = %._crit_edge590.loopexit, %bb.x
  %.27.lcssa = phi i32 [ %.26595, %bb.x ], [ %i.aeg, %._crit_edge590.loopexit ]
  %indvars.iv.next834 = add i32 %indvars.iv833, %i.abk
  %i.aeh = add nuw nsw i32 %.10364593, 1          ; 2 uses
  %indvars.iv.next841 = add i32 %indvars.iv840, %i.s
  %exitcond844.not = icmp eq i32 %i.aeh, %i.q
  br i1 %exitcond844.not, label %.loopexit, label %bb.x, !llvm.loop !91

.lr.ph605.preheader:                              ; preds = %bb.v
  %i.aei = add nuw nsw i32 %i.q, 1
  %i.aej = mul i32 %i.aei, %i.s
  %i.aek = sext i32 %i.aej to i64                 ; 4 uses
  %i.ael = zext nneg i32 %i.s to i64              ; 13 uses
  %wide.trip.count860 = zext nneg i32 %i.q to i64
  %i.aem = shl nsw i64 %i.aek, 3
  %i.aen = add i64 %i.aem, %i.a
  %i.aeo = sub i64 %i.b, %i.aen
  %i.aep = mul nsw i64 %i.ael, -8
  %i.aeq = add nuw nsw i64 %i.ael, 1
  br label %iter.check1484

iter.check1484:                                   ; preds = %.lr.ph605.preheader, %.loopexit1571
  %indvars.iv855 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next856, %.loopexit1571 ] ; 5 uses
  %indvars.iv848 = phi i64 [ %i.aek, %.lr.ph605.preheader ], [ %indvars.iv.next849, %.loopexit1571 ] ; 9 uses
  %.28603 = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next847.lcssa, %.loopexit1571 ] ; 7 uses
  %i.aer = mul i64 %i.aeq, %indvars.iv855
  %i.aes = add i64 %i.aer, %i.aek
  %smax1466 = tail call i64 @llvm.smax.i64(i64 %indvars.iv848, i64 %i.aes)
  %i.aet = mul i64 %indvars.iv855, %i.ael
  %i.aeu = add i64 %i.aet, %i.aek
  %reass.sub1578 = sub i64 %smax1466, %i.aeu
  %i.aev = add i64 %reass.sub1578, 1              ; 7 uses
  %i.aew = add nsw i64 %indvars.iv848, %indvars.iv855
  %min.iters.check1467 = icmp ult i64 %i.aev, 4
  br i1 %min.iters.check1467, label %vec.epilog.scalar.ph1485.preheader, label %vector.memcheck1464

vector.memcheck1464:                              ; preds = %iter.check1484
  %i.aex = mul i64 %i.aep, %indvars.iv855
  %i.aey = add i64 %i.aeo, %i.aex
  %i.aez = shl i64 %.28603, 3
  %i.afa = add i64 %i.aey, %i.aez
  %i.afb = add i64 %i.afa, -1
  %diff.check1465 = icmp ult i64 %i.afb, 127
  br i1 %diff.check1465, label %vec.epilog.scalar.ph1485.preheader, label %vector.main.loop.iter.check1468

vector.main.loop.iter.check1468:                  ; preds = %vector.memcheck1464
  %min.iters.check1469 = icmp ult i64 %i.aev, 16
  br i1 %min.iters.check1469, label %vec.epilog.ph1488, label %vector.ph1470

vector.ph1470:                                    ; preds = %vector.main.loop.iter.check1468
  %i.afc = and i64 %i.aev, 12
  %n.vec1471 = and i64 %i.aev, -16                ; 5 uses
  %i.afd = add i64 %indvars.iv848, %n.vec1471
  %i.afe = add i64 %.28603, %n.vec1471            ; 2 uses
  %i.aff = getelementptr [8 x i8], ptr %3, i64 %indvars.iv848
  %i.afg = getelementptr [8 x i8], ptr %4, i64 %.28603
  br label %vector.body1472

vector.body1472:                                  ; preds = %vector.body1472, %vector.ph1470
  %index1473 = phi i64 [ 0, %vector.ph1470 ], [ %index.next1478, %vector.body1472 ] ; 3 uses
  %i.afh = getelementptr [8 x i8], ptr %i.aff, i64 %index1473 ; 4 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 32
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afh, i64 64
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afh, i64 96
  %wide.load1474 = load <4 x double>, ptr %i.afh, align 8, !tbaa !9
  %wide.load1475 = load <4 x double>, ptr %i.afi, align 8, !tbaa !9
  %wide.load1476 = load <4 x double>, ptr %i.afj, align 8, !tbaa !9
  %wide.load1477 = load <4 x double>, ptr %i.afk, align 8, !tbaa !9
  %i.afl = getelementptr [8 x i8], ptr %i.afg, i64 %index1473 ; 4 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 32
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afl, i64 64
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afl, i64 96
  store <4 x double> %wide.load1474, ptr %i.afl, align 8, !tbaa !9
  store <4 x double> %wide.load1475, ptr %i.afm, align 8, !tbaa !9
  store <4 x double> %wide.load1476, ptr %i.afn, align 8, !tbaa !9
  store <4 x double> %wide.load1477, ptr %i.afo, align 8, !tbaa !9
  %index.next1478 = add nuw i64 %index1473, 16    ; 2 uses
  %i.afp = icmp eq i64 %index.next1478, %n.vec1471
  br i1 %i.afp, label %middle.block1479, label %vector.body1472, !llvm.loop !92

middle.block1479:                                 ; preds = %vector.body1472
  %cmp.n1480 = icmp eq i64 %i.aev, %n.vec1471
  br i1 %cmp.n1480, label %.loopexit1571, label %vec.epilog.iter.check1486

vec.epilog.iter.check1486:                        ; preds = %middle.block1479
  %min.epilog.iters.check1487 = icmp eq i64 %i.afc, 0
  br i1 %min.epilog.iters.check1487, label %vec.epilog.scalar.ph1485.preheader, label %vec.epilog.ph1488, !prof !15

vec.epilog.ph1488:                                ; preds = %vector.main.loop.iter.check1468, %vec.epilog.iter.check1486
  %vec.epilog.resume.val1481 = phi i64 [ %n.vec1471, %vec.epilog.iter.check1486 ], [ 0, %vector.main.loop.iter.check1468 ]
  %n.vec1489 = and i64 %i.aev, -4                 ; 4 uses
  %i.afq = add i64 %indvars.iv848, %n.vec1489
  %i.afr = add i64 %.28603, %n.vec1489            ; 2 uses
  %i.afs = getelementptr [8 x i8], ptr %3, i64 %indvars.iv848
  %i.aft = getelementptr [8 x i8], ptr %4, i64 %.28603
  br label %vec.epilog.vector.body1490

vec.epilog.vector.body1490:                       ; preds = %vec.epilog.vector.body1490, %vec.epilog.ph1488
  %index1491 = phi i64 [ %vec.epilog.resume.val1481, %vec.epilog.ph1488 ], [ %index.next1493, %vec.epilog.vector.body1490 ] ; 3 uses
  %i.afu = getelementptr [8 x i8], ptr %i.afs, i64 %index1491
  %wide.load1492 = load <4 x double>, ptr %i.afu, align 8, !tbaa !9
  %i.afv = getelementptr [8 x i8], ptr %i.aft, i64 %index1491
  store <4 x double> %wide.load1492, ptr %i.afv, align 8, !tbaa !9
  %index.next1493 = add nuw i64 %index1491, 4     ; 2 uses
  %i.afw = icmp eq i64 %index.next1493, %n.vec1489
  br i1 %i.afw, label %vec.epilog.middle.block1494, label %vec.epilog.vector.body1490, !llvm.loop !93

vec.epilog.middle.block1494:                      ; preds = %vec.epilog.vector.body1490
  %cmp.n1495 = icmp eq i64 %i.aev, %n.vec1489
  br i1 %cmp.n1495, label %.loopexit1571, label %vec.epilog.scalar.ph1485.preheader

vec.epilog.scalar.ph1485.preheader:               ; preds = %vector.memcheck1464, %iter.check1484, %vec.epilog.iter.check1486, %vec.epilog.middle.block1494
  %indvars.iv850.ph = phi i64 [ %indvars.iv848, %iter.check1484 ], [ %indvars.iv848, %vector.memcheck1464 ], [ %i.afd, %vec.epilog.iter.check1486 ], [ %i.afq, %vec.epilog.middle.block1494 ]
  %indvars.iv846.ph = phi i64 [ %.28603, %iter.check1484 ], [ %.28603, %vector.memcheck1464 ], [ %i.afe, %vec.epilog.iter.check1486 ], [ %i.afr, %vec.epilog.middle.block1494 ]
  br label %vec.epilog.scalar.ph1485

vec.epilog.scalar.ph1485:                         ; preds = %vec.epilog.scalar.ph1485.preheader, %vec.epilog.scalar.ph1485
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %vec.epilog.scalar.ph1485 ], [ %indvars.iv850.ph, %vec.epilog.scalar.ph1485.preheader ] ; 3 uses
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %vec.epilog.scalar.ph1485 ], [ %indvars.iv846.ph, %vec.epilog.scalar.ph1485.preheader ] ; 2 uses
  %i.afx = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv850
  %i.afy = load double, ptr %i.afx, align 8, !tbaa !9
  %i.afz = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv846
  store double %i.afy, ptr %i.afz, align 8, !tbaa !9
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, 1 ; 2 uses
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, 1
  %.not386.not = icmp slt i64 %indvars.iv850, %i.aew
  br i1 %.not386.not, label %vec.epilog.scalar.ph1485, label %.loopexit1571, !llvm.loop !94

.loopexit1571:                                    ; preds = %vec.epilog.scalar.ph1485, %vec.epilog.middle.block1494, %middle.block1479
  %indvars.iv.next847.lcssa = phi i64 [ %i.afr, %vec.epilog.middle.block1494 ], [ %i.afe, %middle.block1479 ], [ %indvars.iv.next847, %vec.epilog.scalar.ph1485 ] ; 2 uses
  %indvars.iv.next849 = add nsw i64 %indvars.iv848, %i.ael
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1 ; 2 uses
  %exitcond861.not = icmp eq i64 %indvars.iv.next856, %wide.trip.count860
  br i1 %exitcond861.not, label %.lr.ph619, label %iter.check1484, !llvm.loop !95

.lr.ph619:                                        ; preds = %.loopexit1571
  %i.aga = zext nneg i32 %i.s to i64
  %wide.trip.count872 = zext nneg i32 %i.q to i64
  %scevgep1500 = getelementptr i8, ptr %4, i64 8
  %umax1503 = tail call i64 @llvm.umax.i64(i64 %i.ael, i64 1)
  %i.agb = shl nuw nsw i64 %i.ael, 3
  %umax1515 = tail call i64 @llvm.umax.i64(i64 %i.ael, i64 1)
  %i.agc = insertelement <2 x i64> poison, i64 %i.ael, i64 0
  %i.agd = shufflevector <2 x i64> %i.agc, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.age = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.agf = shufflevector <2 x i32> %i.age, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.agg = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.agh = shufflevector <2 x i32> %i.agg, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1521 = insertelement <4 x i64> poison, i64 %i.ael, i64 0
  %broadcast.splat1522 = shufflevector <4 x i64> %broadcast.splatinsert1521, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.agi = shl nuw nsw <4 x i64> %broadcast.splat1522, splat (i64 2) ; 5 uses
  %i.agj = mul nuw nsw <4 x i64> %broadcast.splat1522, <i64 0, i64 1, i64 2, i64 3>
  %invariant.op1699 = add nuw nsw <4 x i64> %i.agi, %i.agi ; 2 uses
  %invariant.op1700 = add nuw nsw <4 x i64> %invariant.op1699, %i.agi ; 2 uses
  %invariant.op1701 = add nuw nsw <4 x i64> %invariant.op1700, %i.agi
  %broadcast.splatinsert1555 = insertelement <4 x i64> poison, i64 %i.ael, i64 0
  %broadcast.splat1556 = shufflevector <4 x i64> %broadcast.splatinsert1555, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.agk = mul nuw nsw <4 x i64> %broadcast.splat1556, <i64 0, i64 1, i64 2, i64 3>
  %i.agl = shl nuw nsw i64 %i.ael, 2
  %broadcast.splatinsert1558 = insertelement <4 x i64> poison, i64 %i.agl, i64 0
  %broadcast.splat1559 = shufflevector <4 x i64> %broadcast.splatinsert1558, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check1547

iter.check1547:                                   ; preds = %.lr.ph619, %._crit_edge613
  %indvars.iv864 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next865, %._crit_edge613 ] ; 11 uses
  %.30617 = phi i64 [ %indvars.iv.next847.lcssa, %.lr.ph619 ], [ %indvars.iv.next863.lcssa, %._crit_edge613 ]
  %i.agm = insertelement <2 x i64> poison, i64 %indvars.iv864, i64 0
  %i.agn = shufflevector <2 x i64> %i.agm, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ago = add nuw <2 x i64> %i.agn, %i.agd       ; 2 uses
  %i.agp = add nuw <2 x i64> %i.agn, splat (i64 1)
  %i.agq = trunc <2 x i64> %i.agn to <2 x i32>
  %i.agr = add nuw <2 x i64> %i.agn, %i.agd
  %indvars871 = trunc i64 %indvars.iv864 to i32
  %i.ags = add nsw i32 %i.q, %indvars871
  %i.agt = mul nsw i32 %i.ags, %i.s
  %i.agu = sext i32 %i.agt to i64
  %i.agv = add nsw i64 %indvars.iv864, %i.agu
  %i.agw = add <2 x i32> %i.agh, %i.agq
  %i.agx = mul <2 x i32> %i.agf, %i.agw
  %i.agy = sext <2 x i32> %i.agx to <2 x i64>
  %i.agz = add <2 x i64> %i.agp, %i.agy           ; 2 uses
  %i.aha = icmp slt <2 x i64> %i.ago, %i.agz      ; 2 uses
  %i.ahb = zext <2 x i1> %i.aha to <2 x i64>      ; 2 uses
  %i.ahc = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.ago, <2 x i64> %i.agz)
  %i.ahd = add <2 x i64> %i.agr, %i.ahb
  %i.ahe = sub <2 x i64> %i.ahc, %i.ahd           ; 2 uses
  %sext1579 = shl i64 %.30617, 32                 ; 2 uses
  %i.ahf = ashr exact i64 %sext1579, 32           ; 6 uses
  %i.ahg = extractelement <2 x i1> %i.aha, i64 1
  %i.ahh = select i1 %i.ahg, i64 2, i64 1
  %i.ahi = extractelement <2 x i64> %i.ahe, i64 1
  %i.ahj = udiv i64 %i.ahi, %umax1515
  %i.ahk = add i64 %i.ahh, %i.ahj                 ; 7 uses
  %min.iters.check1516 = icmp ult i64 %i.ahk, 4
  br i1 %min.iters.check1516, label %.lr.ph612.preheader, label %vector.memcheck1498

vector.memcheck1498:                              ; preds = %iter.check1547
  %i.ahl = shl i64 %indvars.iv864, 3
  %scevgep1505 = getelementptr i8, ptr %3, i64 %i.ahl ; 5 uses
  %i.ahm = ashr exact i64 %sext1579, 29           ; 2 uses
  %scevgep1499 = getelementptr i8, ptr %4, i64 %i.ahm
  %i.ahn = extractelement <2 x i64> %i.ahe, i64 0
  %i.aho = udiv i64 %i.ahn, %umax1503
  %i.ahp = extractelement <2 x i64> %i.ahb, i64 0
  %i.ahq = add i64 %i.aho, %i.ahp                 ; 2 uses
  %i.ahr = shl i64 %i.ahq, 3
  %i.ahs = getelementptr i8, ptr %scevgep1500, i64 %i.ahr
  %scevgep1504 = getelementptr i8, ptr %i.ahs, i64 %i.ahm
  %i.aht = mul i64 %i.agb, %i.ahq
  %scevgep1506 = getelementptr i8, ptr %scevgep1505, i64 %i.aht ; 4 uses
  %i.ahu = icmp ult ptr %scevgep1505, %scevgep1506
  %umin1507 = select i1 %i.ahu, ptr %scevgep1505, ptr %scevgep1506
  %i.ahv = icmp ugt ptr %scevgep1505, %scevgep1506
  %umax1508 = select i1 %i.ahv, ptr %scevgep1505, ptr %scevgep1506
  %scevgep1509 = getelementptr i8, ptr %umax1508, i64 8
  %bound01510 = icmp ult ptr %scevgep1499, %scevgep1509
  %bound11511 = icmp ult ptr %umin1507, %scevgep1504
  %found.conflict1512 = and i1 %bound01510, %bound11511
  br i1 %found.conflict1512, label %.lr.ph612.preheader, label %vector.main.loop.iter.check1517

vector.main.loop.iter.check1517:                  ; preds = %vector.memcheck1498
  %min.iters.check1518 = icmp ult i64 %i.ahk, 16
  br i1 %min.iters.check1518, label %vec.epilog.ph1551, label %vector.ph1519

vector.ph1519:                                    ; preds = %vector.main.loop.iter.check1517
  %i.ahw = and i64 %i.ahk, 12
  %n.vec1520 = and i64 %i.ahk, -16                ; 5 uses
  %i.ahx = mul i64 %n.vec1520, %i.ael
  %i.ahy = add i64 %indvars.iv864, %i.ahx         ; 2 uses
  %i.ahz = add i64 %i.ahf, %n.vec1520             ; 2 uses
  %broadcast.splatinsert1523 = insertelement <4 x i64> poison, i64 %indvars.iv864, i64 0
  %broadcast.splat1524 = shufflevector <4 x i64> %broadcast.splatinsert1523, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1525 = add nuw nsw <4 x i64> %broadcast.splat1524, %i.agj
  %i.aia = getelementptr [8 x i8], ptr %4, i64 %i.ahf
  br label %vector.body1526

vector.body1526:                                  ; preds = %vector.body1526, %vector.ph1519
  %index1527 = phi i64 [ 0, %vector.ph1519 ], [ %index.next1540, %vector.body1526 ] ; 2 uses
  %vec.ind1528 = phi <4 x i64> [ %induction1525, %vector.ph1519 ], [ %vec.ind.next1541.reass, %vector.body1526 ] ; 5 uses
  %step.add1529 = add nuw nsw <4 x i64> %vec.ind1528, %i.agi
  %step.add.21530.reass = add nuw nsw <4 x i64> %vec.ind1528, %invariant.op1699
  %step.add.31531.reass = add nuw nsw <4 x i64> %vec.ind1528, %invariant.op1700
  %wide.gep1532 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1528
  %wide.gep1533 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add1529
  %wide.gep1534 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.21530.reass
  %wide.gep1535 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %step.add.31531.reass
  %wide.masked.gather1536 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1532, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !96
  %wide.masked.gather1537 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1533, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !96
  %wide.masked.gather1538 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1534, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !96
  %wide.masked.gather1539 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1535, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !96
  %i.aib = getelementptr [8 x i8], ptr %i.aia, i64 %index1527 ; 4 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 32
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aib, i64 64
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aib, i64 96
  store <4 x double> %wide.masked.gather1536, ptr %i.aib, align 8, !tbaa !9, !alias.scope !99, !noalias !96
  store <4 x double> %wide.masked.gather1537, ptr %i.aic, align 8, !tbaa !9, !alias.scope !99, !noalias !96
  store <4 x double> %wide.masked.gather1538, ptr %i.aid, align 8, !tbaa !9, !alias.scope !99, !noalias !96
  store <4 x double> %wide.masked.gather1539, ptr %i.aie, align 8, !tbaa !9, !alias.scope !99, !noalias !96
  %index.next1540 = add nuw i64 %index1527, 16    ; 2 uses
  %vec.ind.next1541.reass = add nuw nsw <4 x i64> %vec.ind1528, %invariant.op1701
  %i.aif = icmp eq i64 %index.next1540, %n.vec1520
  br i1 %i.aif, label %middle.block1542, label %vector.body1526, !llvm.loop !101

middle.block1542:                                 ; preds = %vector.body1526
  %cmp.n1543 = icmp eq i64 %i.ahk, %n.vec1520
  br i1 %cmp.n1543, label %._crit_edge613, label %vec.epilog.iter.check1549

vec.epilog.iter.check1549:                        ; preds = %middle.block1542
  %min.epilog.iters.check1550 = icmp eq i64 %i.ahw, 0
  br i1 %min.epilog.iters.check1550, label %.lr.ph612.preheader, label %vec.epilog.ph1551, !prof !15

vec.epilog.ph1551:                                ; preds = %vector.main.loop.iter.check1517, %vec.epilog.iter.check1549
  %vec.epilog.resume.val1544 = phi i64 [ %n.vec1520, %vec.epilog.iter.check1549 ], [ 0, %vector.main.loop.iter.check1517 ]
  %bc.resume.val1545 = phi i64 [ %i.ahy, %vec.epilog.iter.check1549 ], [ %indvars.iv864, %vector.main.loop.iter.check1517 ]
  %n.vec1552 = and i64 %i.ahk, -4                 ; 4 uses
  %i.aig = mul i64 %n.vec1552, %i.ael
  %i.aih = add i64 %indvars.iv864, %i.aig
  %i.aii = add i64 %i.ahf, %n.vec1552             ; 2 uses
  %broadcast.splatinsert1553 = insertelement <4 x i64> poison, i64 %bc.resume.val1545, i64 0
  %broadcast.splat1554 = shufflevector <4 x i64> %broadcast.splatinsert1553, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1557 = add nuw nsw <4 x i64> %broadcast.splat1554, %i.agk
  %i.aij = getelementptr [8 x i8], ptr %4, i64 %i.ahf
  br label %vec.epilog.vector.body1560

vec.epilog.vector.body1560:                       ; preds = %vec.epilog.vector.body1560, %vec.epilog.ph1551
  %index1561 = phi i64 [ %vec.epilog.resume.val1544, %vec.epilog.ph1551 ], [ %index.next1565, %vec.epilog.vector.body1560 ] ; 2 uses
  %vec.ind1562 = phi <4 x i64> [ %induction1557, %vec.epilog.ph1551 ], [ %vec.ind.next1566, %vec.epilog.vector.body1560 ] ; 2 uses
  %wide.gep1563 = getelementptr inbounds nuw [8 x i8], ptr %3, <4 x i64> %vec.ind1562
  %wide.masked.gather1564 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1563, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !96
  %i.aik = getelementptr [8 x i8], ptr %i.aij, i64 %index1561
  store <4 x double> %wide.masked.gather1564, ptr %i.aik, align 8, !tbaa !9, !alias.scope !99, !noalias !96
  %index.next1565 = add nuw i64 %index1561, 4     ; 2 uses
  %vec.ind.next1566 = add nuw nsw <4 x i64> %vec.ind1562, %broadcast.splat1559
  %i.ail = icmp eq i64 %index.next1565, %n.vec1552
  br i1 %i.ail, label %vec.epilog.middle.block1567, label %vec.epilog.vector.body1560, !llvm.loop !102

vec.epilog.middle.block1567:                      ; preds = %vec.epilog.vector.body1560
  %cmp.n1568 = icmp eq i64 %i.ahk, %n.vec1552
  br i1 %cmp.n1568, label %._crit_edge613, label %.lr.ph612.preheader

.lr.ph612.preheader:                              ; preds = %vector.memcheck1498, %iter.check1547, %vec.epilog.iter.check1549, %vec.epilog.middle.block1567
  %indvars.iv866.ph = phi i64 [ %indvars.iv864, %iter.check1547 ], [ %indvars.iv864, %vector.memcheck1498 ], [ %i.ahy, %vec.epilog.iter.check1549 ], [ %i.aih, %vec.epilog.middle.block1567 ]
  %indvars.iv862.ph = phi i64 [ %i.ahf, %iter.check1547 ], [ %i.ahf, %vector.memcheck1498 ], [ %i.ahz, %vec.epilog.iter.check1549 ], [ %i.aii, %vec.epilog.middle.block1567 ]
  br label %.lr.ph612

.lr.ph612:                                        ; preds = %.lr.ph612.preheader, %.lr.ph612
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %.lr.ph612 ], [ %indvars.iv866.ph, %.lr.ph612.preheader ] ; 2 uses
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %.lr.ph612 ], [ %indvars.iv862.ph, %.lr.ph612.preheader ] ; 2 uses
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv866
  %i.ain = load double, ptr %i.aim, align 8, !tbaa !9
  %i.aio = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv862
  store double %i.ain, ptr %i.aio, align 8, !tbaa !9
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, 1 ; 2 uses
  %indvars.iv.next867 = add nuw nsw i64 %indvars.iv866, %i.aga ; 2 uses
  %.not882 = icmp sgt i64 %indvars.iv.next867, %i.agv
  br i1 %.not882, label %._crit_edge613, label %.lr.ph612, !llvm.loop !103

._crit_edge613:                                   ; preds = %.lr.ph612, %middle.block1542, %vec.epilog.middle.block1567
  %indvars.iv.next863.lcssa = phi i64 [ %i.aii, %vec.epilog.middle.block1567 ], [ %i.ahz, %middle.block1542 ], [ %indvars.iv.next863, %.lr.ph612 ]
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1 ; 2 uses
  %exitcond873.not = icmp eq i64 %indvars.iv.next865, %wide.trip.count872
  br i1 %exitcond873.not, label %.loopexit, label %iter.check1547, !llvm.loop !104

.loopexit.loopexit1599.unr-lcssa:                 ; preds = %._crit_edge495.3
  %lcmp.mod1617.not = icmp eq i64 %xtraiter1616, 0
  br i1 %lcmp.mod1617.not, label %.loopexit, label %iter.check1075.epil.preheader

iter.check1075.epil.preheader:                    ; preds = %.loopexit.loopexit1599.unr-lcssa, %.preheader.preheader
  %indvars.iv725.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next726.3, %.loopexit.loopexit1599.unr-lcssa ]
  %.18499.epil.init = phi i64 [ %i.uw, %.preheader.preheader ], [ %indvars.iv.next724.3, %.loopexit.loopexit1599.unr-lcssa ]
  %lcmp.mod1618 = icmp ne i64 %xtraiter1616, 0
  tail call void @llvm.assume(i1 %lcmp.mod1618)
  br label %iter.check1075.epil

iter.check1075.epil:                              ; preds = %._crit_edge495.epil, %iter.check1075.epil.preheader
  %indvars.iv725.epil = phi i64 [ %indvars.iv725.epil.init, %iter.check1075.epil.preheader ], [ %indvars.iv.next726.epil, %._crit_edge495.epil ] ; 3 uses
  %.18499.epil = phi i64 [ %.18499.epil.init, %iter.check1075.epil.preheader ], [ %indvars.iv.next724.epil, %._crit_edge495.epil ]
  %epil.iter = phi i64 [ 0, %iter.check1075.epil.preheader ], [ %epil.iter.next, %._crit_edge495.epil ]
  %invariant.gep899.epil = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv725.epil
  br label %12

12:                                               ; preds = %12, %iter.check1075.epil
  %indvars.iv727.epil = phi i64 [ %indvars.iv725.epil, %iter.check1075.epil ], [ %indvars.iv.next728.epil, %12 ] ; 2 uses
  %indvars.iv723.epil = phi i64 [ %.18499.epil, %iter.check1075.epil ], [ %indvars.iv.next724.epil, %12 ] ; 2 uses
  %13 = mul nuw nsw i64 %indvars.iv727.epil, %i.ux
  %gep900.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep899.epil, i64 %13
  %14 = load double, ptr %gep900.epil, align 8, !tbaa !9
  %15 = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv723.epil
  store double %14, ptr %15, align 8, !tbaa !9
  %indvars.iv.next724.epil = add nsw i64 %indvars.iv723.epil, 1 ; 2 uses
  %indvars.iv.next728.epil = add nuw nsw i64 %indvars.iv727.epil, 1 ; 2 uses
  %.not397.not.epil = icmp samesign ult i64 %indvars.iv.next728.epil, %i.uy
  br i1 %.not397.not.epil, label %12, label %._crit_edge495.epil, !llvm.loop !67

._crit_edge495.epil:                              ; preds = %12
  %indvars.iv.next726.epil = add nuw nsw i64 %indvars.iv725.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1616
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
end_hunk_1
