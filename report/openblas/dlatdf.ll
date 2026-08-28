Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlatdf?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@c__1 = internal global i32 1, align 4
@c_n1 = internal global i32 -1, align 4
@.str = private unnamed_addr constant [2 x i8] c"I\00", align 1
@c_b23 = internal global double 1.000000e+00, align 8
@c_b37 = internal global double -1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dlatdf_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 13 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca double, align 8                   ; 10 uses
  %i.e = alloca [32 x double], align 16           ; 4 uses
  %i.f = alloca [8 x i32], align 16               ; 3 uses
  %i.g = alloca [8 x double], align 16            ; 9 uses
  %i.h = alloca [8 x double], align 16            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.i = load i32, ptr %3, align 4, !tbaa !8      ; 4 uses
  %narrow = xor i32 %i.i, -1
  %i.j = sext i32 %narrow to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %2, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %4, i64 -8 ; 3 uses
  %i.m = load i32, ptr %0, align 4, !tbaa !8
  %.not = icmp eq i32 %i.m, 2
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %1, align 4, !tbaa !8
  %i.o = add nsw i32 %i.n, -1
  store i32 %i.o, ptr %i.a, align 4, !tbaa !8
  %i.p = call i32 @dlaswp_(ptr noundef nonnull @c__1, ptr noundef %4, ptr noundef nonnull %3, ptr noundef nonnull @c__1, ptr noundef nonnull %i.a, ptr noundef %7, ptr noundef nonnull @c__1) #5 ; 0 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !8      ; 2 uses
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !8
  %.not166168 = icmp slt i32 %i.q, 2
  br i1 %.not166168, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.s = sext i32 %i.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 6 uses
  %.0160170 = phi double [ -1.000000e+00, %.lr.ph.preheader ], [ %.1, %bb.e ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !9 ; 2 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !8
  %i.w = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.x = sub nsw i32 %i.v, %i.w
  store i32 %i.x, ptr %i.b, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = mul nsw i64 %indvars.iv, %i.s
  %i.z = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.y ; 4 uses
  %i.ab = call double @ddot_(ptr noundef nonnull %i.b, ptr noundef %i.aa, ptr noundef nonnull @c__1, ptr noundef %i.aa, ptr noundef nonnull @c__1) #5
  %i.ac = fadd double %i.ab, 1.000000e+00
  %i.ad = load i32, ptr %1, align 4, !tbaa !8
  %i.ae = sub nsw i32 %i.ad, %i.w
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !8
  %i.af = getelementptr [8 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.ag = call double @ddot_(ptr noundef nonnull %i.b, ptr noundef %i.aa, ptr noundef nonnull @c__1, ptr noundef nonnull %i.af, ptr noundef nonnull @c__1) #5 ; 2 uses
  %i.ah = load double, ptr %i.t, align 8, !tbaa !9 ; 2 uses
  %i.ai = fmul double %i.ac, %i.ah                ; 2 uses
  %i.aj = fcmp ogt double %i.ai, %i.ag
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ak = fadd double %i.u, 1.000000e+00
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.al = fadd double %i.u, -1.000000e+00
  %i.am = fcmp ogt double %i.ag, %i.ai
  br i1 %i.am, label %bb.e, label %9

9:                                                ; preds = %bb.d
  %10 = fadd double %.0160170, %i.ah
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %9, %bb.c
  %.sink = phi double [ %i.ak, %bb.c ], [ %10, %9 ], [ %i.al, %bb.d ] ; 2 uses
  %.1 = phi double [ %.0160170, %bb.c ], [ 1.000000e+00, %9 ], [ %.0160170, %bb.d ]
  store double %.sink, ptr %i.t, align 8, !tbaa !9
  %i.an = fneg double %.sink
  store double %i.an, ptr %i.d, align 8, !tbaa !9
  %i.ao = load i32, ptr %1, align 4, !tbaa !8
  %i.ap = sub nsw i32 %i.ao, %i.w
  store i32 %i.ap, ptr %i.b, align 4, !tbaa !8
  call void @daxpy_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef %i.aa, ptr noundef nonnull @c__1, ptr noundef nonnull %i.af, ptr noundef nonnull @c__1) #5
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !8
  %i.ar = sext i32 %i.aq to i64
  %.not166.not = icmp slt i64 %indvars.iv, %i.ar
  br i1 %.not166.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %1, align 4, !tbaa !8
  %.pre194 = add nsw i32 %.pre, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.pre-phi = phi i32 [ %.pre194, %._crit_edge.loopexit ], [ %i.r, %bb.b ]
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !8
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef nonnull @c__1, ptr noundef nonnull %i.h, ptr noundef nonnull @c__1) #5
  %i.as = load i32, ptr %1, align 4, !tbaa !8     ; 6 uses
  %i.at = sext i32 %i.as to i64                   ; 4 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.at ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !9 ; 2 uses
  %i.aw = fadd double %i.av, 1.000000e+00
  %i.ax = getelementptr [8 x i8], ptr %i.h, i64 %i.at
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  store double %i.aw, ptr %i.ay, align 8, !tbaa !9
  %i.az = fadd double %i.av, -1.000000e+00
  store double %i.az, ptr %i.au, align 8, !tbaa !9
  %i.ba = icmp sgt i32 %i.as, 0
  br i1 %i.ba, label %.lr.ph181, label %.thread

.lr.ph181:                                        ; preds = %._crit_edge
  %i.bb = add i32 %i.i, 1
  store i32 %i.as, ptr %i.a, align 4, !tbaa !8
  %i.bc = sext i32 %i.i to i64                    ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph181, %._crit_edge175
  %indvar = phi i32 [ 0, %.lr.ph181 ], [ %indvar.next, %._crit_edge175 ] ; 3 uses
  %indvars.iv187 = phi i64 [ %i.at, %.lr.ph181 ], [ %indvars.iv.next188, %._crit_edge175 ] ; 11 uses
  %.0179 = phi double [ 0.000000e+00, %.lr.ph181 ], [ %i.df, %._crit_edge175 ]
  %.0159178 = phi double [ 0.000000e+00, %.lr.ph181 ], [ %i.dj, %._crit_edge175 ]
  %i.bd = trunc nuw nsw i64 %indvars.iv187 to i32
  %i.be = mul i32 %i.bb, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !9
  %i.bi = fdiv double 1.000000e+00, %i.bh         ; 6 uses
  %i.bj = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv187
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8     ; 5 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !9
  %i.bm = fmul double %i.bi, %i.bl                ; 4 uses
  store double %i.bm, ptr %i.bk, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv187 ; 5 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !9
  %i.bp = fmul double %i.bi, %i.bo                ; 4 uses
  store double %i.bp, ptr %i.bn, align 8, !tbaa !9
  %.not167.not171 = icmp slt i64 %indvars.iv187, %i.at
  br i1 %.not167.not171, label %.lr.ph174, label %._crit_edge175

.lr.ph174:                                        ; preds = %bb.f
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv187 ; 3 uses
  %xtraiter = and i32 %indvar, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph174
  %indvars.iv.next190.prol = add nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv187
  %i.br = load double, ptr %i.bq, align 8, !tbaa !9
  %i.bs = mul nsw i64 %indvars.iv.next190.prol, %i.bc
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bs
  %i.bt = load double, ptr %gep.prol, align 8, !tbaa !9
  %i.bu = fmul double %i.bi, %i.bt                ; 2 uses
  %i.bv = fneg double %i.br
  %i.bw = call double @llvm.fmuladd.f64(double %i.bv, double %i.bu, double %i.bm) ; 3 uses
  store double %i.bw, ptr %i.bk, align 8, !tbaa !9
  %i.bx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv187
  %i.by = load double, ptr %i.bx, align 8, !tbaa !9
  %i.bz = fneg double %i.by
  %i.ca = call double @llvm.fmuladd.f64(double %i.bz, double %i.bu, double %i.bp) ; 3 uses
  store double %i.ca, ptr %i.bn, align 8, !tbaa !9
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph174
  %.lcssa208.unr = phi double [ poison, %.lr.ph174 ], [ %i.bw, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi double [ poison, %.lr.ph174 ], [ %i.ca, %.prol.loopexit.unr-lcssa ]
  %indvars.iv189.unr = phi i64 [ %indvars.iv187, %.lr.ph174 ], [ %indvars.iv.next190.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ %i.bp, %.lr.ph174 ], [ %i.ca, %.prol.loopexit.unr-lcssa ]
  %.unr212 = phi double [ %i.bm, %.lr.ph174 ], [ %i.bw, %.prol.loopexit.unr-lcssa ]
  %i.cb = icmp eq i32 %indvar, 1
  br i1 %i.cb, label %._crit_edge175, label %.lr.ph174.new

.lr.ph174.new:                                    ; preds = %.prol.loopexit, %.lr.ph174.new
  %indvars.iv189 = phi i64 [ %indvars.iv.next190.1, %.lr.ph174.new ], [ %indvars.iv189.unr, %.prol.loopexit ] ; 4 uses
  %i.cc = phi double [ %i.cz, %.lr.ph174.new ], [ %.unr, %.prol.loopexit ]
  %i.cd = phi double [ %i.cv, %.lr.ph174.new ], [ %.unr212, %.prol.loopexit ]
  %indvars.iv.next190 = add nsw i64 %indvars.iv189, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv189
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !9
  %i.cg = mul nsw i64 %indvars.iv.next190, %i.bc
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cg
  %i.ch = load double, ptr %gep, align 8, !tbaa !9
  %i.ci = fmul double %i.bi, %i.ch                ; 2 uses
  %i.cj = fneg double %i.cf
  %i.ck = call double @llvm.fmuladd.f64(double %i.cj, double %i.ci, double %i.cd) ; 2 uses
  store double %i.ck, ptr %i.bk, align 8, !tbaa !9
  %i.cl = getelementptr [8 x i8], ptr %4, i64 %indvars.iv189
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !9
  %i.cn = fneg double %i.cm
  %i.co = call double @llvm.fmuladd.f64(double %i.cn, double %i.ci, double %i.cc) ; 2 uses
  store double %i.co, ptr %i.bn, align 8, !tbaa !9
  %indvars.iv.next190.1 = add nsw i64 %indvars.iv189, 2 ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next190
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !9
  %i.cr = mul nsw i64 %indvars.iv.next190.1, %i.bc
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cr
  %i.cs = load double, ptr %gep.1, align 8, !tbaa !9
  %i.ct = fmul double %i.bi, %i.cs                ; 2 uses
  %i.cu = fneg double %i.cq
  %i.cv = call double @llvm.fmuladd.f64(double %i.cu, double %i.ct, double %i.ck) ; 3 uses
  store double %i.cv, ptr %i.bk, align 8, !tbaa !9
  %i.cw = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next190
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !9
  %i.cy = fneg double %i.cx
  %i.cz = call double @llvm.fmuladd.f64(double %i.cy, double %i.ct, double %i.co) ; 3 uses
  store double %i.cz, ptr %i.bn, align 8, !tbaa !9
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next190.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.as, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge175, label %.lr.ph174.new, !llvm.loop !13

._crit_edge175:                                   ; preds = %.prol.loopexit, %.lr.ph174.new, %bb.f
  %i.da = phi double [ %i.bp, %bb.f ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.cz, %.lr.ph174.new ] ; 3 uses
  %i.db = phi double [ %i.bm, %bb.f ], [ %.lcssa208.unr, %.prol.loopexit ], [ %i.cv, %.lr.ph174.new ] ; 3 uses
  %i.dc = fcmp oge double %i.db, 0.000000e+00
  %i.dd = fneg double %i.db
  %i.de = select i1 %i.dc, double %i.db, double %i.dd
  %i.df = fadd double %.0179, %i.de               ; 2 uses
  %i.dg = fcmp oge double %i.da, 0.000000e+00
  %i.dh = fneg double %i.da
  %i.di = select i1 %i.dg, double %i.da, double %i.dh
  %i.dj = fadd double %.0159178, %i.di            ; 2 uses
  %indvars.iv.next188 = add nsw i64 %indvars.iv187, -1
  %i.dk = icmp sgt i64 %indvars.iv187, 1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.dk, label %bb.f, label %bb.g, !llvm.loop !14

bb.g:                                             ; preds = %._crit_edge175
  store double %i.bi, ptr %i.d, align 8, !tbaa !9
  %i.dl = fcmp ogt double %i.df, %i.dj
  br i1 %i.dl, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef nonnull %i.h, ptr noundef nonnull @c__1, ptr noundef nonnull %4, ptr noundef nonnull @c__1) #5
  %.pre193 = load i32, ptr %1, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.h, %bb.g
  %i.dm = phi i32 [ %.pre193, %bb.h ], [ %i.as, %bb.g ], [ %i.as, %._crit_edge ]
  %i.dn = add nsw i32 %i.dm, -1
  store i32 %i.dn, ptr %i.a, align 4, !tbaa !8
  %i.do = call i32 @dlaswp_(ptr noundef nonnull @c__1, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull @c__1, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull @c_n1) #5 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  call void @dgecon_(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull @c_b23, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c) #5
  %i.dp = load i32, ptr %1, align 4, !tbaa !8
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dq
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef nonnull %i.dr, ptr noundef nonnull @c__1, ptr noundef nonnull %i.g, ptr noundef nonnull @c__1) #5
  %i.ds = load i32, ptr %1, align 4, !tbaa !8
  %i.dt = add nsw i32 %i.ds, -1
  store i32 %i.dt, ptr %i.a, align 4, !tbaa !8
  %i.du = call i32 @dlaswp_(ptr noundef nonnull @c__1, ptr noundef nonnull %i.g, ptr noundef nonnull %3, ptr noundef nonnull @c__1, ptr noundef nonnull %i.a, ptr noundef %7, ptr noundef nonnull @c_n1) #5 ; 0 uses
  %i.dv = call double @ddot_(ptr noundef nonnull %1, ptr noundef nonnull %i.g, ptr noundef nonnull @c__1, ptr noundef nonnull %i.g, ptr noundef nonnull @c__1) #5
  %i.dw = call double @sqrt(double noundef %i.dv) #5
  %i.dx = fdiv double 1.000000e+00, %i.dw
  store double %i.dx, ptr %i.d, align 8, !tbaa !9
  call void @dscal_(ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, ptr noundef nonnull @c__1) #5
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef nonnull %i.g, ptr noundef nonnull @c__1, ptr noundef nonnull %i.h, ptr noundef nonnull @c__1) #5
  call void @daxpy_(ptr noundef nonnull %1, ptr noundef nonnull @c_b23, ptr noundef %4, ptr noundef nonnull @c__1, ptr noundef nonnull %i.h, ptr noundef nonnull @c__1) #5
  call void @daxpy_(ptr noundef nonnull %1, ptr noundef nonnull @c_b37, ptr noundef nonnull %i.g, ptr noundef nonnull @c__1, ptr noundef %4, ptr noundef nonnull @c__1) #5
  call void @dgesc2_(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %i.d) #5
  call void @dgesc2_(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %i.h, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %i.d) #5
  %i.dy = call double @dasum_(ptr noundef nonnull %1, ptr noundef nonnull %i.h, ptr noundef nonnull @c__1) #5
  %i.dz = call double @dasum_(ptr noundef nonnull %1, ptr noundef %4, ptr noundef nonnull @c__1) #5
  %i.ea = fcmp ogt double %i.dy, %i.dz
  br i1 %i.ea, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef nonnull %i.h, ptr noundef nonnull @c__1, ptr noundef %4, ptr noundef nonnull @c__1) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %.thread
  call void @dlassq_(ptr noundef nonnull %1, ptr noundef %4, ptr noundef nonnull @c__1, ptr noundef %6, ptr noundef %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
end_hunk_0
