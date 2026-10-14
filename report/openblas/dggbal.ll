Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dggbal?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DGGBAL\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @dggbal_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr nofree noundef captures(none) initializes((0, 4)) %11) local_unnamed_addr #0 {
bb.a:
  %12 = ptrtoaddr ptr %8 to i64                   ; 2 uses
  %13 = ptrtoaddr ptr %9 to i64                   ; 2 uses
  %i.a = alloca i32, align 4                      ; 22 uses
  %i.b = alloca i32, align 4                      ; 15 uses
  %i.c = alloca double, align 8                   ; 13 uses
  %i.d = alloca double, align 8                   ; 6 uses
  %i.e = alloca double, align 8                   ; 6 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.h = load i32, ptr %3, align 4, !tbaa !40     ; 10 uses
  %narrow = xor i32 %i.h, -1
  %i.i = sext i32 %narrow to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i ; 17 uses
  %i.k = load i32, ptr %5, align 4, !tbaa !40     ; 10 uses
  %narrow628 = xor i32 %i.k, -1
  %i.l = sext i32 %narrow628 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %4, i64 %i.l ; 17 uses
  %i.n = getelementptr inbounds i8, ptr %8, i64 -8 ; 23 uses
  %i.o = getelementptr inbounds i8, ptr %9, i64 -8 ; 23 uses
  %i.p = getelementptr inbounds i8, ptr %10, i64 -8 ; 39 uses
  store i32 0, ptr %11, align 4, !tbaa !40
  %i.q = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #8
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.r = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #8
  %.not629 = icmp eq i32 %i.r, 0
  br i1 %.not629, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  %.not630 = icmp eq i32 %i.s, 0
  br i1 %.not630, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  %.not631 = icmp eq i32 %i.t, 0
  br i1 %.not631, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.u = load i32, ptr %1, align 4, !tbaa !40     ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %3, align 4, !tbaa !40
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1) ; 2 uses
  %i.x = icmp slt i32 %i.w, %spec.select
  br i1 %i.x, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %5, align 4, !tbaa !40
  %i.z = icmp slt i32 %i.y, %spec.select
  br i1 %i.z, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.pr = load i32, ptr %11, align 4, !tbaa !40    ; 2 uses
  %.not632 = icmp eq i32 %.pr, 0
  br i1 %.not632, label %bb.i, label %.thread

.thread.sink.split:                               ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.sink = phi i32 [ -1, %bb.d ], [ -2, %bb.e ], [ -4, %bb.f ], [ -6, %bb.g ] ; 2 uses
  store i32 %.sink, ptr %11, align 4, !tbaa !40
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h
  %i.aa = phi i32 [ %.pr, %bb.h ], [ %.sink, %.thread.sink.split ]
  %i.ab = sub nsw i32 0, %i.aa
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !40
  %i.ac = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 6) #8 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  switch i32 %i.u, label %bb.l [
    i32 0, label %bb.j
    i32 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %6, align 4, !tbaa !40
  %i.ad = load i32, ptr %1, align 4, !tbaa !40
  store i32 %i.ad, ptr %7, align 4, !tbaa !40
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  store i32 1, ptr %6, align 4, !tbaa !40
  %i.ae = load i32, ptr %1, align 4, !tbaa !40
  store i32 %i.ae, ptr %7, align 4, !tbaa !40
  store double 1.000000e+00, ptr %8, align 8, !tbaa !42
  store double 1.000000e+00, ptr %9, align 8, !tbaa !42
  br label %.loopexit

bb.l:                                             ; preds = %bb.i
  %i.af = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #8
  %.not633 = icmp eq i32 %i.af, 0
  br i1 %.not633, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %6, align 4, !tbaa !40
  %i.ag = load i32, ptr %1, align 4, !tbaa !40    ; 7 uses
  store i32 %i.ag, ptr %7, align 4, !tbaa !40
  %.not664703 = icmp slt i32 %i.ag, 1
  br i1 %.not664703, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.m
  %i.ah = add nuw i32 %i.ag, 1
  %wide.trip.count = zext i32 %i.ah to i64        ; 2 uses
  %i.ai = zext nneg i32 %i.ag to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ag, 4
  %i.aj = sub i64 %12, %13
  %diff.check = icmp ugt i64 %i.aj, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1124 = icmp ult i32 %i.ag, 16
  br i1 %min.iters.check1124, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %i.ai, 12
  %n.vec = and i64 %i.ai, 2147483632              ; 4 uses
  %i.al = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = getelementptr [8 x i8], ptr %8, i64 %index ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.am, align 8, !tbaa !42
  store <4 x double> splat (double 1.000000e+00), ptr %i.an, align 8, !tbaa !42
  store <4 x double> splat (double 1.000000e+00), ptr %i.ao, align 8, !tbaa !42
  store <4 x double> splat (double 1.000000e+00), ptr %i.ap, align 8, !tbaa !42
  %i.aq = getelementptr [8 x i8], ptr %9, i64 %index ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.aq, align 8, !tbaa !42
  store <4 x double> splat (double 1.000000e+00), ptr %i.ar, align 8, !tbaa !42
  store <4 x double> splat (double 1.000000e+00), ptr %i.as, align 8, !tbaa !42
  store <4 x double> splat (double 1.000000e+00), ptr %i.at, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ai
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1125 = and i64 %i.ai, 2147483644          ; 3 uses
  %i.av = or disjoint i64 %n.vec1125, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1126 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1127, %vec.epilog.vector.body ] ; 3 uses
  %i.aw = getelementptr [8 x i8], ptr %8, i64 %index1126
  store <4 x double> splat (double 1.000000e+00), ptr %i.aw, align 8, !tbaa !42
  %i.ax = getelementptr [8 x i8], ptr %9, i64 %index1126
  store <4 x double> splat (double 1.000000e+00), ptr %i.ax, align 8, !tbaa !42
  %index.next1127 = add nuw i64 %index1126, 4     ; 2 uses
  %i.ay = icmp eq i64 %index.next1127, %n.vec1125
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1128 = icmp eq i64 %n.vec1125, %i.ai
  br i1 %cmp.n1128, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 4 uses
  %i.az = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.ba = zext nneg i32 %i.ag to i64
  %i.bb = sub nsw i64 %i.ba, %indvars.iv.ph
  %xtraiter = and i64 %i.az, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.prol
  store double 1.000000e+00, ptr %i.bc, align 8, !tbaa !42
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.prol
  store double 1.000000e+00, ptr %i.bd, align 8, !tbaa !42
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !10

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.be = icmp ult i64 %i.bb, 7
  br i1 %i.be, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.bf, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.bg, align 8, !tbaa !42
  %i.bh = getelementptr [8 x i8], ptr %8, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.bh, align 8, !tbaa !42
  %i.bi = getelementptr [8 x i8], ptr %9, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.bi, align 8, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.1
  store double 1.000000e+00, ptr %i.bj, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.1
  store double 1.000000e+00, ptr %i.bk, align 8, !tbaa !42
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.2
  store double 1.000000e+00, ptr %i.bl, align 8, !tbaa !42
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.2
  store double 1.000000e+00, ptr %i.bm, align 8, !tbaa !42
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.3
  store double 1.000000e+00, ptr %i.bn, align 8, !tbaa !42
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.3
  store double 1.000000e+00, ptr %i.bo, align 8, !tbaa !42
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.4
  store double 1.000000e+00, ptr %i.bp, align 8, !tbaa !42
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.4
  store double 1.000000e+00, ptr %i.bq, align 8, !tbaa !42
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.5
  store double 1.000000e+00, ptr %i.br, align 8, !tbaa !42
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.5
  store double 1.000000e+00, ptr %i.bs, align 8, !tbaa !42
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.6
  store double 1.000000e+00, ptr %i.bt, align 8, !tbaa !42
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.6
  store double 1.000000e+00, ptr %i.bu, align 8, !tbaa !42
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !11

bb.n:                                             ; preds = %bb.l
  %i.bv = load i32, ptr %1, align 4, !tbaa !40    ; 3 uses
  store i32 %i.bv, ptr %i.f, align 4, !tbaa !40
  %i.bw = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  %.not634 = icmp eq i32 %i.bw, 0
  br i1 %.not634, label %.preheader.preheader, label %.loopexit690

.preheader.preheader:                             ; preds = %bb.n
  %i.bx = sext i32 %i.k to i64                    ; 3 uses
  %i.by = sext i32 %i.h to i64                    ; 3 uses
  br label %.preheader

bb.o:                                             ; preds = %bb.ah
  store double 1.000000e+00, ptr %9, align 8, !tbaa !42
  store double 1.000000e+00, ptr %8, align 8, !tbaa !42
  br label %.loopexit690

.preheader:                                       ; preds = %.preheader.preheader, %bb.ah
  %.promoted954 = phi i32 [ %.promoted953, %bb.ah ], [ undef, %.preheader.preheader ] ; 3 uses
  %i.bz = phi i32 [ %i.ca, %bb.ah ], [ %i.bv, %.preheader.preheader ] ; 16 uses
  %.0592 = phi i32 [ %.2594, %bb.ah ], [ 1, %.preheader.preheader ] ; 3 uses
  %i.ca = add nsw i32 %i.bz, -1                   ; 7 uses
  %i.cb = icmp sgt i32 %i.bz, 0
  br i1 %i.cb, label %.lr.ph713.preheader, label %.loopexit691

.lr.ph713.preheader:                              ; preds = %.preheader
  %i.cc = add nuw i32 %i.bz, 1
  %i.cd = zext nneg i32 %i.bz to i64              ; 2 uses
  %wide.trip.count851 = zext nneg i32 %i.bz to i64
  %exitcond852.not1112 = icmp eq i32 %i.bz, 1
  br label %.lr.ph713

.lr.ph713:                                        ; preds = %.lr.ph713.preheader, %bb.u
  %indvars.iv860 = phi i64 [ %i.cd, %.lr.ph713.preheader ], [ %indvars.iv.next861, %bb.u ] ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv860
  %invariant.gep1035 = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv860
  br i1 %exitcond852.not1112, label %.loopexit688, label %.lr.ph1115

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv8481114, 1 ; 2 uses
  %indvars.iv.next854 = add nuw i32 %indvars.iv8531113, 1
  %exitcond852.not = icmp eq i64 %indvars.iv.next849, %wide.trip.count851
  br i1 %exitcond852.not, label %.loopexit688, label %.lr.ph1115, !llvm.loop !12

.lr.ph1115:                                       ; preds = %.lr.ph713, %bb.p
  %indvars.iv8481114 = phi i64 [ %indvars.iv.next849, %bb.p ], [ 1, %.lr.ph713 ] ; 4 uses
  %indvars.iv8531113 = phi i32 [ %indvars.iv.next854, %bb.p ], [ 2, %.lr.ph713 ] ; 2 uses
  %i.ce = mul nsw i64 %indvars.iv8481114, %i.by
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ce
  %i.cf = load double, ptr %gep, align 8, !tbaa !42
  %i.cg = fcmp une double %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph1115
  %i.ch = mul nsw i64 %indvars.iv8481114, %i.bx
  %gep1036 = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %i.ch
  %i.ci = load double, ptr %gep1036, align 8, !tbaa !42
  %i.cj = fcmp une double %i.ci, 0.000000e+00
  br i1 %i.cj, label %bb.r, label %bb.p, !llvm.loop !12

bb.r:                                             ; preds = %.lr.ph1115, %bb.q
  %i.ck = trunc nuw nsw i64 %indvars.iv8481114 to i32 ; 3 uses
  %.not636705.not = icmp sgt i32 %i.bz, %i.ck
  br i1 %.not636705.not, label %.lr.ph707.preheader, label %.loopexit688

.lr.ph707.preheader:                              ; preds = %bb.r
end_hunk_0
begin_hunk_1_@dggbal_:bb.a
  %.1603712833 = trunc i64 %indvars.iv860 to i32
  br label %bb.ac

bb.u:                                             ; preds = %bb.t, %.lr.ph707
  %indvars.iv.next861 = add nsw i64 %indvars.iv860, -1
  %i.cs = icmp sgt i64 %indvars.iv860, 1
  br i1 %i.cs, label %.lr.ph713, label %.loopexit691, !llvm.loop !14

.loopexit691:                                     ; preds = %bb.u, %.preheader, %bb.ai
  %.promoted = phi i32 [ %.promoted953, %bb.ai ], [ %.promoted954, %.preheader ], [ %.promoted954, %bb.u ]
  %i.ct = phi i32 [ %.pre, %bb.ai ], [ %i.bz, %.preheader ], [ %i.bz, %bb.u ] ; 11 uses
  %.1593 = phi i32 [ %i.ex, %bb.ai ], [ %.0592, %.preheader ], [ %.0592, %bb.u ] ; 9 uses
  store i32 %i.ct, ptr %i.a, align 4, !tbaa !40
  %.not637723 = icmp sgt i32 %.1593, %i.ct
  br i1 %.not637723, label %.loopexit690, label %.lr.ph725.preheader

.lr.ph725.preheader:                              ; preds = %.loopexit691
  %i.cu = sext i32 %.1593 to i64                  ; 3 uses
  %smax = call i32 @llvm.smax.i32(i32 %.1593, i32 %i.bz)
  %i.cv = add i32 %i.ct, 1                        ; 2 uses
  %wide.trip.count866 = sext i32 %smax to i64
  %exitcond867.not1118.not = icmp slt i32 %.1593, %i.bz
  br label %.lr.ph725

.lr.ph725:                                        ; preds = %.lr.ph725.preheader, %bb.ab
  %indvars.iv876 = phi i64 [ %i.cu, %.lr.ph725.preheader ], [ %indvars.iv.next877, %bb.ab ] ; 4 uses
  %i.cw = mul nsw i64 %indvars.iv876, %i.by       ; 2 uses
  %i.cx = mul nsw i64 %indvars.iv876, %i.bx       ; 2 uses
  %invariant.gep1041 = getelementptr [8 x i8], ptr %i.j, i64 %i.cw
  %invariant.gep1043 = getelementptr [8 x i8], ptr %i.m, i64 %i.cx
  br i1 %exitcond867.not1118.not, label %.lr.ph1121, label %.loopexit686

bb.v:                                             ; preds = %bb.w
  %indvars.iv.next864 = add nsw i64 %indvars.iv8631119, 1 ; 2 uses
  %exitcond867.not = icmp eq i64 %indvars.iv.next864, %wide.trip.count866
  br i1 %exitcond867.not, label %.loopexit686, label %.lr.ph1121, !llvm.loop !15

.lr.ph1121:                                       ; preds = %.lr.ph725, %bb.v
  %indvars.iv8681120.in = phi i32 [ %indvars.iv8681120, %bb.v ], [ %.1593, %.lr.ph725 ]
  %indvars.iv8631119 = phi i64 [ %indvars.iv.next864, %bb.v ], [ %i.cu, %.lr.ph725 ] ; 4 uses
  %indvars.iv8681120 = add i32 %indvars.iv8681120.in, 1 ; 2 uses
  %gep1042 = getelementptr [8 x i8], ptr %invariant.gep1041, i64 %indvars.iv8631119
  %i.cy = load double, ptr %gep1042, align 8, !tbaa !42
  %i.cz = fcmp une double %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph1121
  %gep1044 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %indvars.iv8631119
  %i.da = load double, ptr %gep1044, align 8, !tbaa !42
  %i.db = fcmp une double %i.da, 0.000000e+00
  br i1 %i.db, label %bb.x, label %bb.v, !llvm.loop !15

bb.x:                                             ; preds = %.lr.ph1121, %bb.w
  %i.dc = trunc nsw i64 %indvars.iv8631119 to i32 ; 3 uses
  %.not639714.not = icmp sgt i32 %i.ct, %i.dc
  br i1 %.not639714.not, label %.lr.ph716, label %.loopexit686

.lr.ph716:                                        ; preds = %bb.x
  %i.dd = sext i32 %indvars.iv8681120 to i64
  %invariant.gep1045 = getelementptr [8 x i8], ptr %i.j, i64 %i.cw
  %invariant.gep1047 = getelementptr [8 x i8], ptr %i.m, i64 %i.cx
  br label %bb.z

bb.y:                                             ; preds = %bb.aa
  %indvars.iv.next872 = add nsw i64 %indvars.iv871, 1 ; 2 uses
  %lftr.wideiv874 = trunc i64 %indvars.iv.next872 to i32
  %exitcond875.not = icmp eq i32 %i.cv, %lftr.wideiv874
  br i1 %exitcond875.not, label %.loopexit686, label %bb.z, !llvm.loop !16

bb.z:                                             ; preds = %.lr.ph716, %bb.y
  %indvars.iv871 = phi i64 [ %i.dd, %.lr.ph716 ], [ %indvars.iv.next872, %bb.y ] ; 3 uses
  %gep1046 = getelementptr [8 x i8], ptr %invariant.gep1045, i64 %indvars.iv871
  %i.de = load double, ptr %gep1046, align 8, !tbaa !42
  %i.df = fcmp une double %i.de, 0.000000e+00
  br i1 %i.df, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %gep1048 = getelementptr [8 x i8], ptr %invariant.gep1047, i64 %indvars.iv871
  %i.dg = load double, ptr %gep1048, align 8, !tbaa !42
  %i.dh = fcmp une double %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.ab, label %bb.y

.loopexit686:                                     ; preds = %bb.x, %.lr.ph725, %bb.v, %bb.y
  %.sink1080 = phi i32 [ %i.ca, %bb.v ], [ %i.ct, %bb.y ], [ %i.ct, %bb.x ], [ %i.ca, %.lr.ph725 ] ; 2 uses
  %.4606 = phi i32 [ %i.ct, %bb.v ], [ %i.dc, %bb.y ], [ %i.dc, %bb.x ], [ %i.ct, %.lr.ph725 ]
  store i32 %.sink1080, ptr %i.b, align 4
  %.3599724841 = trunc i64 %indvars.iv876 to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next877 = add nsw i64 %indvars.iv876, 1 ; 2 uses
  %lftr.wideiv879 = trunc i64 %indvars.iv.next877 to i32
  %exitcond880.not = icmp eq i32 %i.cv, %lftr.wideiv879
  br i1 %exitcond880.not, label %.loopexit690, label %.lr.ph725, !llvm.loop !17

bb.ac:                                            ; preds = %.loopexit686, %.loopexit688
  %.pre-phi = phi i64 [ %i.cu, %.loopexit686 ], [ %i.cd, %.loopexit688 ] ; 2 uses
  %.promoted953 = phi i32 [ %.sink1080, %.loopexit686 ], [ %.promoted954, %.loopexit688 ] ; 3 uses
  %.5607 = phi i32 [ %.4606, %.loopexit686 ], [ %.1603712833, %.loopexit688 ] ; 4 uses
  %.4600 = phi i32 [ %.3599724841, %.loopexit686 ], [ %.2598, %.loopexit688 ] ; 4 uses
  %.2594 = phi i32 [ %.1593, %.loopexit686 ], [ %.0592, %.loopexit688 ] ; 7 uses
  %.0591 = phi i32 [ %.1593, %.loopexit686 ], [ %i.bz, %.loopexit688 ] ; 6 uses
  %i.di = phi i1 [ false, %.loopexit686 ], [ true, %.loopexit688 ]
  %i.dj = sitofp i32 %.5607 to double
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.pre-phi
  store double %i.dj, ptr %i.dk, align 8, !tbaa !42
  %i.dl = icmp eq i32 %.5607, %.0591
  br i1 %i.dl, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load i32, ptr %1, align 4, !tbaa !40
  %reass.sub = sub i32 %i.dm, %.2594
  %i.dn = add i32 %reass.sub, 1
  store i32 %i.dn, ptr %i.a, align 4, !tbaa !40
  %i.do = mul nsw i32 %.2594, %i.h                ; 2 uses
  %i.dp = add nsw i32 %i.do, %.5607
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dq
  %i.ds = add nsw i32 %.0591, %i.do
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dt
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.dr, ptr noundef nonnull %3, ptr noundef %i.du, ptr noundef nonnull %3) #8
  %i.dv = load i32, ptr %1, align 4, !tbaa !40
  %reass.sub819 = sub i32 %i.dv, %.2594
  %i.dw = add i32 %reass.sub819, 1
  store i32 %i.dw, ptr %i.a, align 4, !tbaa !40
  %i.dx = mul nsw i32 %.2594, %i.k                ; 2 uses
  %i.dy = add nsw i32 %i.dx, %.5607
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.dz
  %i.eb = add nsw i32 %.0591, %i.dx
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ec
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.ea, ptr noundef nonnull %5, ptr noundef %i.ed, ptr noundef nonnull %5) #8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ee = sitofp i32 %.4600 to double
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.pre-phi
  store double %i.ee, ptr %i.ef, align 8, !tbaa !42
  %i.eg = icmp eq i32 %.4600, %.0591
  br i1 %i.eg, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eh = mul nsw i32 %.4600, %i.h
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr [8 x i8], ptr %i.j, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %i.el = mul nsw i32 %.0591, %i.h
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr [8 x i8], ptr %i.j, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  call void @dswap_(ptr noundef nonnull %i.f, ptr noundef %i.ek, ptr noundef nonnull @c__1, ptr noundef %i.eo, ptr noundef nonnull @c__1) #8
  %i.ep = mul nsw i32 %.4600, %i.k
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr [8 x i8], ptr %i.m, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 8
  %i.et = mul nsw i32 %.0591, %i.k
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr [8 x i8], ptr %i.m, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.ev, i64 8
  call void @dswap_(ptr noundef nonnull %i.f, ptr noundef %i.es, ptr noundef nonnull @c__1, ptr noundef %i.ew, ptr noundef nonnull @c__1) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  br i1 %i.di, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.ca, ptr %i.f, align 4, !tbaa !40
  %.not640 = icmp eq i32 %i.ca, 1
  br i1 %.not640, label %bb.o, label %.preheader

bb.ai:                                            ; preds = %bb.ag
  %i.ex = add nsw i32 %.2594, 1
  %.pre = load i32, ptr %i.f, align 4, !tbaa !40
  br label %.loopexit691

.loopexit690:                                     ; preds = %.loopexit691, %bb.ab, %bb.n, %bb.o
  %.promoted742 = phi i32 [ undef, %bb.n ], [ %.promoted953, %bb.o ], [ %i.ct, %bb.ab ], [ %.promoted, %.loopexit691 ]
  %i.ey = phi i32 [ %i.bv, %bb.n ], [ 1, %bb.o ], [ %i.ct, %bb.ab ], [ %i.ct, %.loopexit691 ]
  %.3595 = phi i32 [ 1, %bb.n ], [ %.2594, %bb.o ], [ %.1593, %bb.ab ], [ %.1593, %.loopexit691 ]
  store i32 %.3595, ptr %6, align 4, !tbaa !40
  store i32 %i.ey, ptr %7, align 4, !tbaa !40
  %i.ez = call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #8
  %.not641 = icmp eq i32 %i.ez, 0
  br i1 %.not641, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.loopexit690
  %i.fa = load i32, ptr %7, align 4, !tbaa !40    ; 5 uses
  %i.fb = load i32, ptr %6, align 4, !tbaa !40    ; 3 uses
  %.not663731 = icmp sgt i32 %i.fb, %i.fa
  br i1 %.not663731, label %.loopexit, label %iter.check1143

iter.check1143:                                   ; preds = %bb.aj
  %i.fc = sext i32 %i.fb to i64                   ; 5 uses
  %i.fd = add i32 %i.fa, 1
  %i.fe = sub i32 %i.fa, %i.fb                    ; 3 uses
  %i.ff = zext i32 %i.fe to i64
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 5 uses
  %min.iters.check1132 = icmp ult i32 %i.fe, 3
  %i.fh = sub i64 %12, %13
  %diff.check1131 = icmp ugt i64 %i.fh, -128
  %or.cond1175 = or i1 %min.iters.check1132, %diff.check1131
  br i1 %or.cond1175, label %.lr.ph733.preheader, label %vector.main.loop.iter.check1133

vector.main.loop.iter.check1133:                  ; preds = %iter.check1143
  %min.iters.check1134 = icmp ult i32 %i.fe, 15
  br i1 %min.iters.check1134, label %vec.epilog.ph1147, label %vector.ph1135

vector.ph1135:                                    ; preds = %vector.main.loop.iter.check1133
  %i.fi = and i64 %i.fg, 12
  %n.vec1136 = and i64 %i.fg, 8589934576          ; 4 uses
  %i.fj = add nsw i64 %n.vec1136, %i.fc
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.ph1135, %vector.body1137
  %index1138 = phi i64 [ 0, %vector.ph1135 ], [ %index.next1139, %vector.body1137 ] ; 2 uses
  %i.fk = add i64 %index1138, %i.fc               ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fk ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.fl, align 8, !tbaa !42
  store <4 x double> splat (double 1.000000e+00), ptr %i.fm, align 8, !tbaa !42
  store <4 x double> splat (double 1.000000e+00), ptr %i.fn, align 8, !tbaa !42
  store <4 x double> splat (double 1.000000e+00), ptr %i.fo, align 8, !tbaa !42
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.fk ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.fp, align 8, !tbaa !42
  store <4 x double> splat (double 1.000000e+00), ptr %i.fq, align 8, !tbaa !42
  store <4 x double> splat (double 1.000000e+00), ptr %i.fr, align 8, !tbaa !42
  store <4 x double> splat (double 1.000000e+00), ptr %i.fs, align 8, !tbaa !42
  %index.next1139 = add nuw i64 %index1138, 16    ; 2 uses
  %i.ft = icmp eq i64 %index.next1139, %n.vec1136
  br i1 %i.ft, label %middle.block1140, label %vector.body1137, !llvm.loop !18

middle.block1140:                                 ; preds = %vector.body1137
  %cmp.n1141 = icmp eq i64 %i.fg, %n.vec1136
  br i1 %cmp.n1141, label %.loopexit, label %vec.epilog.iter.check1145

vec.epilog.iter.check1145:                        ; preds = %middle.block1140
  %min.epilog.iters.check1146 = icmp eq i64 %i.fi, 0
  br i1 %min.epilog.iters.check1146, label %.lr.ph733.preheader, label %vec.epilog.ph1147, !prof !46

vec.epilog.ph1147:                                ; preds = %vector.main.loop.iter.check1133, %vec.epilog.iter.check1145
  %vec.epilog.resume.val1142 = phi i64 [ %n.vec1136, %vec.epilog.iter.check1145 ], [ 0, %vector.main.loop.iter.check1133 ]
  %n.vec1148 = and i64 %i.fg, 8589934588          ; 3 uses
  %i.fu = add nsw i64 %n.vec1148, %i.fc
  br label %vec.epilog.vector.body1149

vec.epilog.vector.body1149:                       ; preds = %vec.epilog.vector.body1149, %vec.epilog.ph1147
  %index1150 = phi i64 [ %vec.epilog.resume.val1142, %vec.epilog.ph1147 ], [ %index.next1151, %vec.epilog.vector.body1149 ] ; 2 uses
  %i.fv = add i64 %index1150, %i.fc               ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fv
  store <4 x double> splat (double 1.000000e+00), ptr %i.fw, align 8, !tbaa !42
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.fv
  store <4 x double> splat (double 1.000000e+00), ptr %i.fx, align 8, !tbaa !42
  %index.next1151 = add nuw i64 %index1150, 4     ; 2 uses
  %i.fy = icmp eq i64 %index.next1151, %n.vec1148
  br i1 %i.fy, label %vec.epilog.middle.block1152, label %vec.epilog.vector.body1149, !llvm.loop !19

vec.epilog.middle.block1152:                      ; preds = %vec.epilog.vector.body1149
  %cmp.n1153 = icmp eq i64 %i.fg, %n.vec1148
  br i1 %cmp.n1153, label %.loopexit, label %.lr.ph733.preheader

.lr.ph733.preheader:                              ; preds = %iter.check1143, %vec.epilog.iter.check1145, %vec.epilog.middle.block1152
  %indvars.iv881.ph = phi i64 [ %i.fc, %iter.check1143 ], [ %i.fj, %vec.epilog.iter.check1145 ], [ %i.fu, %vec.epilog.middle.block1152 ] ; 3 uses
  %i.fz = add i32 %i.fa, 1
  %i.ga = trunc i64 %indvars.iv881.ph to i32      ; 2 uses
  %i.gb = sub i32 %i.fz, %i.ga
  %i.gc = sub i32 %i.fa, %i.ga
  %xtraiter1205 = and i32 %i.gb, 7                ; 2 uses
  %lcmp.mod1206.not = icmp eq i32 %xtraiter1205, 0
  br i1 %lcmp.mod1206.not, label %.lr.ph733.prol.loopexit, label %.lr.ph733.prol

.lr.ph733.prol:                                   ; preds = %.lr.ph733.preheader, %.lr.ph733.prol
  %indvars.iv881.prol = phi i64 [ %indvars.iv.next882.prol, %.lr.ph733.prol ], [ %indvars.iv881.ph, %.lr.ph733.preheader ] ; 3 uses
  %prol.iter1207 = phi i32 [ %prol.iter1207.next, %.lr.ph733.prol ], [ 0, %.lr.ph733.preheader ]
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv881.prol
  store double 1.000000e+00, ptr %i.gd, align 8, !tbaa !42
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv881.prol
  store double 1.000000e+00, ptr %i.ge, align 8, !tbaa !42
  %indvars.iv.next882.prol = add nsw i64 %indvars.iv881.prol, 1 ; 2 uses
  %prol.iter1207.next = add i32 %prol.iter1207, 1 ; 2 uses
  %prol.iter1207.cmp.not = icmp eq i32 %prol.iter1207.next, %xtraiter1205
  br i1 %prol.iter1207.cmp.not, label %.lr.ph733.prol.loopexit, label %.lr.ph733.prol, !llvm.loop !20

.lr.ph733.prol.loopexit:                          ; preds = %.lr.ph733.prol, %.lr.ph733.preheader
  %indvars.iv881.unr = phi i64 [ %indvars.iv881.ph, %.lr.ph733.preheader ], [ %indvars.iv.next882.prol, %.lr.ph733.prol ]
  %i.gf = icmp ult i32 %i.gc, 7
  br i1 %i.gf, label %.loopexit, label %.lr.ph733

.lr.ph733:                                        ; preds = %.lr.ph733.prol.loopexit, %.lr.ph733
  %indvars.iv881 = phi i64 [ %indvars.iv.next882.7, %.lr.ph733 ], [ %indvars.iv881.unr, %.lr.ph733.prol.loopexit ] ; 11 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv881
  store double 1.000000e+00, ptr %i.gg, align 8, !tbaa !42
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv881
  store double 1.000000e+00, ptr %i.gh, align 8, !tbaa !42
  %i.gi = getelementptr [8 x i8], ptr %8, i64 %indvars.iv881
  store double 1.000000e+00, ptr %i.gi, align 8, !tbaa !42
  %i.gj = getelementptr [8 x i8], ptr %9, i64 %indvars.iv881
  store double 1.000000e+00, ptr %i.gj, align 8, !tbaa !42
  %indvars.iv.next882.1 = add nsw i64 %indvars.iv881, 2 ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv.next882.1
  store double 1.000000e+00, ptr %i.gk, align 8, !tbaa !42
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next882.1
  store double 1.000000e+00, ptr %i.gl, align 8, !tbaa !42
  %indvars.iv.next882.2 = add nsw i64 %indvars.iv881, 3 ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv.next882.2
  store double 1.000000e+00, ptr %i.gm, align 8, !tbaa !42
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next882.2
  store double 1.000000e+00, ptr %i.gn, align 8, !tbaa !42
  %indvars.iv.next882.3 = add nsw i64 %indvars.iv881, 4 ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv.next882.3
  store double 1.000000e+00, ptr %i.go, align 8, !tbaa !42
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next882.3
  store double 1.000000e+00, ptr %i.gp, align 8, !tbaa !42
  %indvars.iv.next882.4 = add nsw i64 %indvars.iv881, 5 ; 2 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv.next882.4
  store double 1.000000e+00, ptr %i.gq, align 8, !tbaa !42
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next882.4
  store double 1.000000e+00, ptr %i.gr, align 8, !tbaa !42
  %indvars.iv.next882.5 = add nsw i64 %indvars.iv881, 6 ; 2 uses
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv.next882.5
  store double 1.000000e+00, ptr %i.gs, align 8, !tbaa !42
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next882.5
  store double 1.000000e+00, ptr %i.gt, align 8, !tbaa !42
  %indvars.iv.next882.6 = add nsw i64 %indvars.iv881, 7 ; 2 uses
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv.next882.6
  store double 1.000000e+00, ptr %i.gu, align 8, !tbaa !42
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next882.6
  store double 1.000000e+00, ptr %i.gv, align 8, !tbaa !42
  %indvars.iv.next882.7 = add nsw i64 %indvars.iv881, 8 ; 2 uses
  %lftr.wideiv884.7 = trunc i64 %indvars.iv.next882.7 to i32
  %exitcond885.not.7 = icmp eq i32 %i.fd, %lftr.wideiv884.7
  br i1 %exitcond885.not.7, label %.loopexit, label %.lr.ph733, !llvm.loop !21

bb.ak:                                            ; preds = %.loopexit690
  %i.gw = load i32, ptr %6, align 4, !tbaa !40    ; 5 uses
  %i.gx = load i32, ptr %7, align 4, !tbaa !40    ; 6 uses
  %i.gy = icmp eq i32 %i.gw, %i.gx
  br i1 %i.gy, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gz = sub i32 %i.gx, %i.gw                    ; 3 uses
  %i.ha = add nsw i32 %i.gz, 1                    ; 2 uses
  store i32 %i.ha, ptr %i.g, align 4, !tbaa !40
  %.not642734 = icmp sgt i32 %i.gw, %i.gx
  br i1 %.not642734, label %._crit_edge.thread, label %.lr.ph747.split.preheader

._crit_edge.thread:                               ; preds = %bb.al
  store i32 %i.gx, ptr %i.a, align 4, !tbaa !40
  br label %._crit_edge748

.lr.ph747.split.preheader:                        ; preds = %bb.al
  %i.hb = load i32, ptr %1, align 4, !tbaa !40    ; 5 uses
  %i.hc = shl i32 %i.hb, 1
  %i.hd = mul i32 %i.hb, 3
  %i.he = shl i32 %i.hb, 2
  %i.hf = mul i32 %i.hb, 5
  %i.hg = sext i32 %i.gw to i64                   ; 6 uses
  %i.hh = shl nsw i64 %i.hg, 3
  %i.hi = add nsw i64 %i.hh, -8                   ; 3 uses
  %scevgep = getelementptr i8, ptr %9, i64 %i.hi
  %i.hj = zext i32 %i.gz to i64
  %i.hk = shl nuw nsw i64 %i.hj, 3
  %i.hl = add nuw nsw i64 %i.hk, 8                ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.hl, i1 false), !tbaa !42
  %scevgep886 = getelementptr i8, ptr %8, i64 %i.hi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep886, i8 0, i64 %i.hl, i1 false), !tbaa !42
  %scevgep887 = getelementptr i8, ptr %10, i64 %i.hi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep887, i8 0, i64 %i.hl, i1 false), !tbaa !42
  %i.hm = sext i32 %i.hb to i64
  %i.hn = add nsw i64 %i.hg, %i.hm
  %i.ho = shl nsw i64 %i.hn, 3
  %i.hp = getelementptr i8, ptr %10, i64 %i.ho
  %scevgep888 = getelementptr i8, ptr %i.hp, i64 -8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep888, i8 0, i64 %i.hl, i1 false), !tbaa !42
  %i.hq = sext i32 %i.hc to i64
  %i.hr = add nsw i64 %i.hg, %i.hq
  %i.hs = shl nsw i64 %i.hr, 3
  %i.ht = getelementptr i8, ptr %10, i64 %i.hs
  %scevgep889 = getelementptr i8, ptr %i.ht, i64 -8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep889, i8 0, i64 %i.hl, i1 false), !tbaa !42
  %i.hu = sext i32 %i.hd to i64
  %i.hv = add nsw i64 %i.hg, %i.hu
  %i.hw = shl nsw i64 %i.hv, 3
  %i.hx = getelementptr i8, ptr %10, i64 %i.hw
  %scevgep890 = getelementptr i8, ptr %i.hx, i64 -8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep890, i8 0, i64 %i.hl, i1 false), !tbaa !42
  %i.hy = sext i32 %i.he to i64
  %i.hz = add nsw i64 %i.hg, %i.hy
  %i.ia = shl nsw i64 %i.hz, 3
  %i.ib = getelementptr i8, ptr %10, i64 %i.ia
  %scevgep891 = getelementptr i8, ptr %i.ib, i64 -8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep891, i8 0, i64 %i.hl, i1 false), !tbaa !42
  %i.ic = sext i32 %i.hf to i64
  %i.id = add nsw i64 %i.hg, %i.ic
  %i.ie = shl nsw i64 %i.id, 3
end_hunk_1
