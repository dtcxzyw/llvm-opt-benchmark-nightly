Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsytri_3x?download=true
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DSYTRI_3X\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@c_b10 = internal global double 1.000000e+00, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c_b14 = internal global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dsytri_3x_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr noundef initializes((0, 4)) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %6 to i64
  %i.c = alloca i32, align 4                      ; 29 uses
  %i.d = alloca i32, align 4                      ; 18 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 27 uses
  %i.g = alloca i32, align 4                      ; 10 uses
  %i.h = alloca i32, align 4                      ; 22 uses
  %i.i = alloca i32, align 4                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  %i.j = load i32, ptr %3, align 4, !tbaa !137    ; 32 uses
  %narrow = xor i32 %i.j, -1
  %i.k = sext i32 %narrow to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %2, i64 %i.k ; 30 uses
  %i.m = getelementptr inbounds i8, ptr %4, i64 -8 ; 8 uses
  %i.n = getelementptr inbounds i8, ptr %5, i64 -4 ; 24 uses
  %i.o = load i32, ptr %1, align 4, !tbaa !137
  %i.p = load i32, ptr %7, align 4, !tbaa !137
  %i.q = add i32 %i.p, %i.o                       ; 28 uses
  %i.r = add i32 %i.q, 1                          ; 23 uses
  %narrow689 = sub nsw i32 -2, %i.q
  %i.s = sext i32 %narrow689 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %6, i64 %i.s ; 65 uses
  store i32 0, ptr %8, align 4, !tbaa !137
  %i.u = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #8
  %.not = icmp eq i32 %i.u, 0                     ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #8
  %.not637 = icmp eq i32 %i.v, 0
  br i1 %.not637, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = load i32, ptr %1, align 4, !tbaa !137    ; 13 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %3, align 4, !tbaa !137
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.w, i32 1)
  %i.z = icmp slt i32 %i.y, %spec.select
  br i1 %i.z, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.pr = load i32, ptr %8, align 4, !tbaa !137    ; 2 uses
  %.not638 = icmp eq i32 %.pr, 0
  br i1 %.not638, label %bb.f, label %.thread

.thread.sink.split:                               ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.c ], [ -4, %bb.d ] ; 2 uses
  store i32 %.sink, ptr %8, align 4, !tbaa !137
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e
  %i.aa = phi i32 [ %.pr, %bb.e ], [ %.sink, %.thread.sink.split ]
  %i.ab = sub nsw i32 0, %i.aa
  store i32 %i.ab, ptr %i.c, align 4, !tbaa !137
  %i.ac = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c, i32 noundef 9) #8 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i32 %i.w, 0
  br i1 %i.ad, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.f
  store i32 %i.w, ptr %i.c, align 4, !tbaa !137
  %i.ae = sext i32 %i.r to i64                    ; 41 uses
  %i.af = add nuw i32 %i.w, 1
  %wide.trip.count = zext i32 %i.af to i64        ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.t, i64 %i.ae ; 11 uses
  %i.ag = zext nneg i32 %i.w to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %i.w, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ah = shl nsw i64 %i.ae, 3
  %9 = add i64 %i.ah, %i.b
  %i.ai = sext i32 %i.q to i64
  %i.aj = shl nsw i64 %i.ai, 3
  %i.ak = add i64 %i.aj, %i.a
  %i.al = sub i64 %9, %i.ak
  %i.am = add i64 %i.al, -9
  %diff.check = icmp ult i64 %i.am, 127
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1344 = icmp ult i32 %i.w, 16
  br i1 %min.iters.check1344, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %i.ag, 12
  %n.vec = and i64 %i.ag, 2147483632              ; 4 uses
  %i.ao = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr [8 x i8], ptr %4, i64 %index ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %wide.load = load <4 x double>, ptr %i.ap, align 8, !tbaa !139
  %wide.load1345 = load <4 x double>, ptr %i.aq, align 8, !tbaa !139
  %wide.load1346 = load <4 x double>, ptr %i.ar, align 8, !tbaa !139
  %wide.load1347 = load <4 x double>, ptr %i.as, align 8, !tbaa !139
  %i.at = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = getelementptr i8, ptr %i.at, i64 40
  %i.aw = getelementptr i8, ptr %i.at, i64 72
  %i.ax = getelementptr i8, ptr %i.at, i64 104
  store <4 x double> %wide.load, ptr %i.au, align 8, !tbaa !139
  store <4 x double> %wide.load1345, ptr %i.av, align 8, !tbaa !139
  store <4 x double> %wide.load1346, ptr %i.aw, align 8, !tbaa !139
  store <4 x double> %wide.load1347, ptr %i.ax, align 8, !tbaa !139
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ag
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !143

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1348 = and i64 %i.ag, 2147483644          ; 3 uses
  %i.az = or disjoint i64 %n.vec1348, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1349 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1351, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = getelementptr [8 x i8], ptr %4, i64 %index1349
  %wide.load1350 = load <4 x double>, ptr %i.ba, align 8, !tbaa !139
  %i.bb = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1349
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  store <4 x double> %wide.load1350, ptr %i.bc, align 8, !tbaa !139
  %index.next1351 = add nuw i64 %index1349, 4     ; 2 uses
  %i.bd = icmp eq i64 %index.next1351, %n.vec1348
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1352 = icmp eq i64 %n.vec1348, %i.ag
  br i1 %cmp.n1352, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.ao, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ] ; 4 uses
  %i.be = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.bf = zext nneg i32 %i.w to i64
  %i.bg = sub nsw i64 %i.bf, %indvars.iv.ph
  %xtraiter = and i64 %i.be, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.prol
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !139
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  store double %i.bi, ptr %gep.prol, align 8, !tbaa !139
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !10

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bj = icmp ult i64 %i.bg, 7
  br i1 %i.bj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !139
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  store double %i.bl, ptr %gep, align 8, !tbaa !139
  %i.bm = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !139
  %i.bo = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.bo, i64 8
  store double %i.bn, ptr %gep.1, align 8, !tbaa !139
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.1
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !139
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  store double %i.bq, ptr %gep.2, align 8, !tbaa !139
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.2
  %i.bs = load double, ptr %i.br, align 8, !tbaa !139
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  store double %i.bs, ptr %gep.3, align 8, !tbaa !139
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.3
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !139
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  store double %i.bu, ptr %gep.4, align 8, !tbaa !139
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.4
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !139
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  store double %i.bw, ptr %gep.5, align 8, !tbaa !139
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.5
  %i.by = load double, ptr %i.bx, align 8, !tbaa !139
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  store double %i.by, ptr %gep.6, align 8, !tbaa !139
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.6
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !139
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  store double %i.ca, ptr %gep.7, align 8, !tbaa !139
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  br i1 %.not, label %.lr.ph736, label %.lr.ph732

.lr.ph732:                                        ; preds = %._crit_edge
  store i32 %i.w, ptr %8, align 4, !tbaa !137
  %i.cb = add i32 %i.j, 1
  %i.cc = zext nneg i32 %i.w to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph732, %bb.i
  %indvars.iv977 = phi i64 [ %i.cc, %.lr.ph732 ], [ %indvars.iv.next978, %bb.i ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv977
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !137
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cg = trunc nuw nsw i64 %indvars.iv977 to i32
  %i.ch = mul i32 %i.cb, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !139
  %i.cl = fcmp oeq double %i.ck, 0.000000e+00
  br i1 %i.cl, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, -1 ; 2 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv.next978 to i32
  store i32 %i.cm, ptr %8, align 4, !tbaa !137
  %i.cn = icmp sgt i64 %indvars.iv977, 1
  br i1 %i.cn, label %bb.g, label %.loopexit723, !llvm.loop !12

.lr.ph736:                                        ; preds = %._crit_edge
  store i32 %i.w, ptr %i.c, align 4, !tbaa !137
  store i32 1, ptr %8, align 4, !tbaa !137
  %i.co = add i32 %i.j, 1
  %i.cp = add nuw i32 %i.w, 1
  %wide.trip.count983 = zext i32 %i.cp to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph736, %bb.l
  %indvars.iv980 = phi i64 [ 1, %.lr.ph736 ], [ %indvars.iv.next981, %bb.l ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv980
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !137
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ct = trunc nuw nsw i64 %indvars.iv980 to i32
  %i.cu = mul i32 %i.co, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !139
  %i.cy = fcmp oeq double %i.cx, 0.000000e+00
  br i1 %i.cy, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %indvars.iv.next981 = add nuw nsw i64 %indvars.iv980, 1 ; 3 uses
  %i.cz = trunc nsw i64 %indvars.iv.next981 to i32
  store i32 %i.cz, ptr %8, align 4, !tbaa !137
  %exitcond984.not = icmp eq i64 %indvars.iv.next981, %wide.trip.count983
  br i1 %exitcond984.not, label %.loopexit723, label %bb.j, !llvm.loop !13
end_hunk_0
