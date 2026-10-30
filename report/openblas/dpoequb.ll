Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dpoequb?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"DPOEQUB\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1

; Function Attrs: nounwind uwtable
define void @dpoequb_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load i32, ptr %2, align 4, !tbaa !12     ; 2 uses
  %narrow = xor i32 %i.b, -1
  %i.c = sext i32 %narrow to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %1, i64 %i.c ; 5 uses
  %i.e = getelementptr inbounds i8, ptr %3, i64 -8 ; 6 uses
  store i32 0, ptr %6, align 4, !tbaa !12
  %i.f = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %2, align 4, !tbaa !12
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.f, i32 1)
  %i.i = icmp slt i32 %i.h, %spec.select
  br i1 %i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ -1, %bb.a ], [ -3, %bb.b ]     ; 2 uses
  store i32 %i.j, ptr %6, align 4, !tbaa !12
  %7 = sub nsw i32 0, %i.j
  store i32 %7, ptr %i.a, align 4, !tbaa !12
  %i.k = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #7 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %i.f, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double 1.000000e+00, ptr %4, align 8, !tbaa !14
  store double 0.000000e+00, ptr %5, align 8, !tbaa !14
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.m = tail call double @dlamch_(ptr noundef nonnull @.str.1) #7 ; 3 uses
  %i.n = tail call double @log(double noundef %i.m) #7
  %i.o = fdiv double -5.000000e-01, %i.n
  %i.p = load double, ptr %1, align 8, !tbaa !14  ; 6 uses
  store double %i.p, ptr %3, align 8, !tbaa !14
  store double %i.p, ptr %5, align 8, !tbaa !14
  %i.q = load i32, ptr %0, align 4, !tbaa !12     ; 6 uses
  %.not7176 = icmp slt i32 %i.q, 2
  br i1 %.not7176, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.r = add i32 %i.b, 1                          ; 5 uses
  %i.s = zext nneg i32 %i.q to i64
  %i.t = add nsw i64 %i.s, -1                     ; 2 uses
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.u = add nsw i32 %i.q, -2
  %i.v = icmp ult i32 %i.u, 3
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.t, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 2, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.f ] ; 7 uses
  %.06877 = phi double [ %i.p, %.lr.ph.new ], [ %i.bl, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.f ]
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = mul i32 %i.r, %i.w
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !14 ; 5 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.aa, ptr %i.ab, align 8, !tbaa !14
  %i.ac = fcmp ole double %.06877, %i.aa
  %i.ad = select i1 %i.ac, double %.06877, double %i.aa ; 2 uses
  %i.ae = load double, ptr %5, align 8, !tbaa !14 ; 2 uses
  %i.af = fcmp oge double %i.ae, %i.aa
  %i.ag = select i1 %i.af, double %i.ae, double %i.aa
  store double %i.ag, ptr %5, align 8, !tbaa !14
  %i.ah = trunc i64 %indvars.iv to i32
  %i.ai = or disjoint i32 %i.ah, 1
  %i.aj = mul i32 %i.r, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !14 ; 5 uses
  %i.an = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.am, ptr %i.an, align 8, !tbaa !14
  %i.ao = fcmp ole double %i.ad, %i.am
  %i.ap = select i1 %i.ao, double %i.ad, double %i.am ; 2 uses
  %i.aq = load double, ptr %5, align 8, !tbaa !14 ; 2 uses
  %i.ar = fcmp oge double %i.aq, %i.am
  %i.as = select i1 %i.ar, double %i.aq, double %i.am
  store double %i.as, ptr %5, align 8, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.at = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.au = mul i32 %i.r, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !14 ; 5 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.1
  store double %i.ax, ptr %i.ay, align 8, !tbaa !14
  %i.az = fcmp ole double %i.ap, %i.ax
  %i.ba = select i1 %i.az, double %i.ap, double %i.ax ; 2 uses
  %i.bb = load double, ptr %5, align 8, !tbaa !14 ; 2 uses
  %i.bc = fcmp oge double %i.bb, %i.ax
  %i.bd = select i1 %i.bc, double %i.bb, double %i.ax
  store double %i.bd, ptr %5, align 8, !tbaa !14
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.be = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.bf = mul i32 %i.r, %i.be
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !14 ; 5 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.2
  store double %i.bi, ptr %i.bj, align 8, !tbaa !14
  %i.bk = fcmp ole double %i.ba, %i.bi
  %i.bl = select i1 %i.bk, double %i.ba, double %i.bi ; 3 uses
  %i.bm = load double, ptr %5, align 8, !tbaa !14 ; 2 uses
  %i.bn = fcmp oge double %i.bm, %i.bi
  %i.bo = select i1 %i.bn, double %i.bm, double %i.bi ; 2 uses
  store double %i.bo, ptr %5, align 8, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !8

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.06877.epil.init = phi double [ %i.p, %.lr.ph ], [ %i.bl, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.g ] ; 3 uses
  %.06877.epil = phi double [ %.06877.epil.init, %.epil.preheader ], [ %i.bw, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.bp = trunc nuw nsw i64 %indvars.iv.epil to i32
  %i.bq = mul i32 %i.r, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !14 ; 5 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil
  store double %i.bt, ptr %i.bu, align 8, !tbaa !14
  %i.bv = fcmp ole double %.06877.epil, %i.bt
  %i.bw = select i1 %i.bv, double %.06877.epil, double %i.bt ; 2 uses
  %i.bx = load double, ptr %5, align 8, !tbaa !14 ; 2 uses
  %i.by = fcmp oge double %i.bx, %i.bt
  %i.bz = select i1 %i.by, double %i.bx, double %i.bt ; 2 uses
  store double %i.bz, ptr %5, align 8, !tbaa !14
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.g, !llvm.loop !9

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %bb.e
  %i.ca = phi double [ %i.p, %bb.e ], [ %i.bo, %._crit_edge.loopexit.unr-lcssa ], [ %i.bz, %bb.g ]
  %.068.lcssa = phi double [ %i.p, %bb.e ], [ %i.bl, %._crit_edge.loopexit.unr-lcssa ], [ %i.bw, %bb.g ] ; 2 uses
  %i.cb = fcmp ugt double %.068.lcssa, 0.000000e+00
  %.not7283 = icmp slt i32 %i.q, 1                ; 2 uses
  br i1 %i.cb, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  br i1 %.not7283, label %.loopexit, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %bb.h
  %i.cc = add nuw i32 %i.q, 1
  %wide.trip.count93 = zext i32 %i.cc to i64
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %bb.j
  %indvars.iv90 = phi i64 [ 1, %.lr.ph82.preheader ], [ %indvars.iv.next91, %bb.j ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv90
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !14
  %i.cf = fcmp ugt double %i.ce, 0.000000e+00
  br i1 %i.cf, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph82
  %i.cg = trunc nuw nsw i64 %indvars.iv90 to i32
  store i32 %i.cg, ptr %6, align 4, !tbaa !12
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph82
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %.loopexit, label %.lr.ph82, !llvm.loop !10

bb.k:                                             ; preds = %._crit_edge
  br i1 %.not7283, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.k
  %i.ch = fdiv double 1.000000e+00, %i.m
  %i.ci = add nuw i32 %i.q, 1
  %wide.trip.count98 = zext i32 %i.ci to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph86, %dpow_ui.exit
  %indvars.iv95 = phi i64 [ 1, %.lr.ph86 ], [ %indvars.iv.next96, %dpow_ui.exit ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv95 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !14
  %i.cl = tail call double @log(double noundef %i.ck) #7
  %i.cm = fmul double %i.o, %i.cl
  %i.cn = fptosi double %i.cm to i32              ; 3 uses
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %dpow_ui.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = icmp slt i32 %i.cn, 0
  %.013.i = select i1 %i.co, double %i.ch, double %i.m ; 2 uses
  %.012.i = tail call i32 @llvm.abs.i32(i32 %i.cn, i1 true)
  %i.cp = zext nneg i32 %.012.i to i64            ; 2 uses
  %i.cq = and i64 %i.cp, 1
  %.not1719.i = icmp eq i64 %i.cq, 0
  %spec.select20.i = select i1 %.not1719.i, double 1.000000e+00, double %.013.i ; 2 uses
  %i.cr = lshr i64 %i.cp, 1                       ; 2 uses
  %.not1821.i = icmp eq i64 %i.cr, 0
  br i1 %.not1821.i, label %dpow_ui.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %i.cs = phi i64 [ %i.cw, %.lr.ph.i ], [ %i.cr, %bb.m ] ; 2 uses
  %spec.select23.i = phi double [ %spec.select.i, %.lr.ph.i ], [ %spec.select20.i, %bb.m ] ; 2 uses
  %.11422.i = phi double [ %i.ct, %.lr.ph.i ], [ %.013.i, %bb.m ] ; 2 uses
  %i.ct = fmul double %.11422.i, %.11422.i        ; 2 uses
  %i.cu = and i64 %i.cs, 1
  %.not17.i = icmp eq i64 %i.cu, 0
  %i.cv = fmul double %spec.select23.i, %i.ct
  %spec.select.i = select i1 %.not17.i, double %spec.select23.i, double %i.cv ; 2 uses
end_hunk_0
