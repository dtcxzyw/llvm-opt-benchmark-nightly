Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlagts?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DLAGTS\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1

; Function Attrs: nounwind uwtable
define void @dlagts_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds i8, ptr %7, i64 -8 ; 29 uses
  %i.c = getelementptr inbounds i8, ptr %6, i64 -4 ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %5, i64 -8 ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %4, i64 -8 ; 8 uses
  %i.f = getelementptr inbounds i8, ptr %3, i64 -8 ; 8 uses
  %i.g = getelementptr inbounds i8, ptr %2, i64 -8 ; 6 uses
  store i32 0, ptr %9, align 4, !tbaa !15
  %i.h = load i32, ptr %0, align 4, !tbaa !15     ; 2 uses
  %i.i = add i32 %i.h, -3
  %i.j = icmp ult i32 %i.i, -5
  %i.k = icmp eq i32 %i.h, 0
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 4, !tbaa !15     ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b, %bb.a
  %i.n = phi i32 [ -1, %bb.a ], [ -2, %bb.b ]     ; 2 uses
  store i32 %i.n, ptr %9, align 4, !tbaa !15
  %i.o = sub nsw i32 0, %i.n
  store i32 %i.o, ptr %i.a, align 4, !tbaa !15
  %i.p = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #6 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i32 %i.l, 0
  br i1 %i.q, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call double @dlamch_(ptr noundef nonnull @.str.1) #6 ; 2 uses
  %i.s = tail call double @dlamch_(ptr noundef nonnull @.str.2) #6 ; 13 uses
  %i.t = fdiv double 1.000000e+00, %i.s           ; 18 uses
  %i.u = load i32, ptr %0, align 4, !tbaa !15     ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.w = load double, ptr %8, align 8, !tbaa !17
  %i.x = fcmp ugt double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load double, ptr %2, align 8, !tbaa !17  ; 3 uses
  %i.z = fcmp ult double %i.y, 0.000000e+00
  %i.aa = fneg double %i.y
  %i.ab = select i1 %i.z, double %i.aa, double %i.y ; 4 uses
  store double %i.ab, ptr %8, align 8, !tbaa !17
  %i.ac = load i32, ptr %1, align 4, !tbaa !15    ; 5 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !17 ; 3 uses
  %i.ag = fcmp ult double %i.af, 0.000000e+00
  %i.ah = fneg double %i.af
  %i.ai = select i1 %i.ag, double %i.ah, double %i.af ; 2 uses
  %i.aj = fcmp oge double %i.ab, %i.ai
  %i.ak = select i1 %i.aj, double %i.ab, double %i.ai ; 2 uses
  %i.al = load double, ptr %3, align 8, !tbaa !17 ; 3 uses
  %i.am = fcmp ult double %i.al, 0.000000e+00
  %i.an = fneg double %i.al
  %i.ao = select i1 %i.am, double %i.an, double %i.al ; 2 uses
  %i.ap = fcmp oge double %i.ak, %i.ao
  %i.aq = select i1 %i.ap, double %i.ak, double %i.ao ; 4 uses
  store double %i.aq, ptr %8, align 8, !tbaa !17
  %.not410434 = icmp eq i32 %i.ac, 2
  br i1 %.not410434, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ar = zext nneg i32 %i.ac to i64              ; 2 uses
  %xtraiter = and i64 %i.ar, 1
  %i.as = icmp eq i32 %i.ac, 3
  br i1 %i.as, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.at = and i64 %i.ar, 2147483646
  %i.au = add nsw i64 %i.at, -4
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 3, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 7 uses
  %i.av = phi double [ %i.aq, %.lr.ph.new ], [ %i.cp, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !17 ; 3 uses
  %i.ay = fcmp oge double %i.ax, 0.000000e+00
  %i.az = fneg double %i.ax
  %i.ba = select i1 %i.ay, double %i.ax, double %i.az ; 2 uses
  %i.bb = fcmp oge double %i.av, %i.ba
  %i.bc = select i1 %i.bb, double %i.av, double %i.ba ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.be = getelementptr i8, ptr %i.bd, i64 -8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !17 ; 3 uses
  %i.bg = fcmp oge double %i.bf, 0.000000e+00
  %i.bh = fneg double %i.bf
  %i.bi = select i1 %i.bg, double %i.bf, double %i.bh ; 2 uses
  %i.bj = fcmp oge double %i.bc, %i.bi
  %i.bk = select i1 %i.bj, double %i.bc, double %i.bi ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.bm = getelementptr i8, ptr %i.bl, i64 -16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !17 ; 3 uses
  %i.bo = fcmp oge double %i.bn, 0.000000e+00
  %i.bp = fneg double %i.bn
  %i.bq = select i1 %i.bo, double %i.bn, double %i.bp ; 2 uses
  %i.br = fcmp oge double %i.bk, %i.bq
  %i.bs = select i1 %i.br, double %i.bk, double %i.bq ; 3 uses
  store double %i.bs, ptr %8, align 8, !tbaa !17
  %i.bt = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !17 ; 3 uses
  %i.bv = fcmp oge double %i.bu, 0.000000e+00
  %i.bw = fneg double %i.bu
  %i.bx = select i1 %i.bv, double %i.bu, double %i.bw ; 2 uses
  %i.by = fcmp oge double %i.bs, %i.bx
  %i.bz = select i1 %i.by, double %i.bs, double %i.bx ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !17 ; 3 uses
  %i.cd = fcmp oge double %i.cc, 0.000000e+00
  %i.ce = fneg double %i.cc
  %i.cf = select i1 %i.cd, double %i.cc, double %i.ce ; 2 uses
  %i.cg = fcmp oge double %i.bz, %i.cf
  %i.ch = select i1 %i.cg, double %i.bz, double %i.cf ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.cj = getelementptr i8, ptr %i.ci, i64 -16
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !17 ; 3 uses
  %i.cl = fcmp oge double %i.ck, 0.000000e+00
  %i.cm = fneg double %i.ck
  %i.cn = select i1 %i.cl, double %i.ck, double %i.cm ; 2 uses
  %i.co = fcmp oge double %i.ch, %i.cn
  %i.cp = select i1 %i.co, double %i.ch, double %i.cn ; 4 uses
  store double %i.cp, ptr %8, align 8, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.au
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !8

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init = phi double [ %i.aq, %.lr.ph ], [ %i.cp, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod585.a = trunc i32 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod585.a)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !17 ; 3 uses
  %i.cs = fcmp oge double %i.cr, 0.000000e+00
  %i.ct = fneg double %i.cr
  %i.cu = select i1 %i.cs, double %i.cr, double %i.ct ; 2 uses
  %i.cv = fcmp oge double %.epil.init, %i.cu
  %i.cw = select i1 %i.cv, double %.epil.init, double %i.cu ; 2 uses
  %i.cx = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.epil.init
  %i.cy = getelementptr i8, ptr %i.cx, i64 -8
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !17 ; 3 uses
  %i.da = fcmp oge double %i.cz, 0.000000e+00
  %i.db = fneg double %i.cz
  %i.dc = select i1 %i.da, double %i.cz, double %i.db ; 2 uses
  %i.dd = fcmp oge double %i.cw, %i.dc
  %i.de = select i1 %i.dd, double %i.cw, double %i.dc ; 2 uses
  %i.df = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  %i.dg = getelementptr i8, ptr %i.df, i64 -16
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !17 ; 3 uses
  %i.di = fcmp oge double %i.dh, 0.000000e+00
  %i.dj = fneg double %i.dh
  %i.dk = select i1 %i.di, double %i.dh, double %i.dj ; 2 uses
  %i.dl = fcmp oge double %i.de, %i.dk
  %i.dm = select i1 %i.dl, double %i.de, double %i.dk ; 2 uses
  store double %i.dm, ptr %8, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.f, %bb.g
  %i.dn = phi double [ %i.ab, %bb.f ], [ %i.aq, %bb.g ], [ %i.cp, %._crit_edge.loopexit.unr-lcssa ], [ %i.dm, %.epil.preheader ]
  %i.do = fmul double %i.r, %i.dn                 ; 2 uses
  %i.dp = fcmp oeq double %i.do, 0.000000e+00
  %spec.store.select = select i1 %i.dp, double %i.r, double %i.do
  store double %spec.store.select, ptr %8, align 8
  %.pr418 = load i32, ptr %0, align 4, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.e, %bb.d
  %10 = phi i32 [ %.pr418, %._crit_edge ], [ %i.u, %bb.e ], [ %i.u, %bb.d ] ; 3 uses
  %i.dq = tail call i32 @llvm.abs.i32(i32 %10, i1 true)
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %bb.j, label %bb.ap

bb.j:                                             ; preds = %bb.i
  %i.ds = load i32, ptr %1, align 4, !tbaa !15    ; 9 uses
  %.not413453 = icmp slt i32 %i.ds, 2
  br i1 %.not413453, label %._crit_edge457, label %.lr.ph456.preheader

.lr.ph456.preheader:                              ; preds = %bb.j
  %i.dt = add nuw i32 %i.ds, 1                    ; 3 uses
  %wide.trip.count506 = zext i32 %i.dt to i64     ; 2 uses
  %xtraiter586 = and i64 %wide.trip.count506, 1
  %i.du = icmp eq i32 %i.dt, 3
  br i1 %i.du, label %.lr.ph456.epil.preheader, label %.lr.ph456.preheader.new

.lr.ph456.preheader.new:                          ; preds = %.lr.ph456.preheader
  %i.dv = and i64 %wide.trip.count506, 4294967294
  %i.dw = add nsw i64 %i.dv, -4
  br label %.lr.ph456

.lr.ph456:                                        ; preds = %bb.o, %.lr.ph456.preheader.new
  %indvars.iv503 = phi i64 [ 2, %.lr.ph456.preheader.new ], [ %indvars.iv.next504.1, %bb.o ] ; 11 uses
  %niter590 = phi i64 [ 0, %.lr.ph456.preheader.new ], [ %niter590.next.1, %bb.o ] ; 2 uses
  %i.dx = add nsw i64 %indvars.iv503, -1          ; 5 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !15
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph456
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dx
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !17
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dx
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !17
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv503 ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !17
  %i.eh = fneg double %i.ec
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ee, double %i.eg)
  store double %i.ei, ptr %i.ef, align 8, !tbaa !17
  br label %.lr.ph456.1

bb.l:                                             ; preds = %.lr.ph456
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dx ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !17
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv503 ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !17 ; 2 uses
  store double %i.em, ptr %i.ej, align 8, !tbaa !17
  %i.en = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dx
  %i.eo = load double, ptr %i.en, align 8, !tbaa !17
  %i.ep = fneg double %i.eo
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.em, double %i.ek)
  store double %i.eq, ptr %i.el, align 8, !tbaa !17
  br label %.lr.ph456.1

.lr.ph456.1:                                      ; preds = %bb.k, %bb.l
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv503
  %i.es = load i32, ptr %i.er, align 4, !tbaa !15
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph456.1
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv503 ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !17
  %i.ew = getelementptr [8 x i8], ptr %7, i64 %indvars.iv503 ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !17 ; 2 uses
  store double %i.ex, ptr %i.eu, align 8, !tbaa !17
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv503
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !17
  %i.fa = fneg double %i.ez
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.ex, double %i.ev)
  store double %i.fb, ptr %i.ew, align 8, !tbaa !17
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph456.1
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv503
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !17
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv503
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !17
  %i.fg = getelementptr [8 x i8], ptr %7, i64 %indvars.iv503 ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !17
  %i.fi = fneg double %i.fd
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.ff, double %i.fh)
  store double %i.fj, ptr %i.fg, align 8, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next504.1 = add nuw nsw i64 %indvars.iv503, 2 ; 2 uses
  %niter590.next.1 = add i64 %niter590, 2
  %niter590.ncmp.1 = icmp eq i64 %niter590, %i.dw
  br i1 %niter590.ncmp.1, label %._crit_edge457.loopexit.unr-lcssa, label %.lr.ph456, !llvm.loop !9

._crit_edge457.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod587.not = icmp eq i64 %xtraiter586, 0
  br i1 %lcmp.mod587.not, label %._crit_edge457, label %.lr.ph456.epil.preheader

.lr.ph456.epil.preheader:                         ; preds = %._crit_edge457.loopexit.unr-lcssa, %.lr.ph456.preheader
  %indvars.iv503.epil.init = phi i64 [ 2, %.lr.ph456.preheader ], [ %indvars.iv.next504.1, %._crit_edge457.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod588 = trunc i32 %i.dt to i1
  tail call void @llvm.assume(i1 %lcmp.mod588)
  %i.fk = add nsw i64 %indvars.iv503.epil.init, -1 ; 5 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !15
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph456.epil.preheader
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.fk ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !17
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv503.epil.init ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !17 ; 2 uses
  store double %i.fr, ptr %i.fo, align 8, !tbaa !17
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.fk
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !17
  %i.fu = fneg double %i.ft
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.fu, double %i.fr, double %i.fp)
  store double %i.fv, ptr %i.fq, align 8, !tbaa !17
  br label %._crit_edge457

bb.q:                                             ; preds = %.lr.ph456.epil.preheader
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.fk
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !17
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.fk
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !17
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv503.epil.init ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !17
  %i.gc = fneg double %i.fx
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.fz, double %i.gb)
  store double %i.gd, ptr %i.ga, align 8, !tbaa !17
  br label %._crit_edge457

._crit_edge457:                                   ; preds = %._crit_edge457.loopexit.unr-lcssa, %bb.q, %bb.p, %bb.j
  %i.ge = icmp eq i32 %10, 1
  %i.gf = icmp sgt i32 %i.ds, 0                   ; 2 uses
  br i1 %i.ge, label %.preheader, label %.preheader421

.preheader421:                                    ; preds = %._crit_edge457
  br i1 %i.gf, label %.lr.ph466, label %.loopexit

.lr.ph466:                                        ; preds = %.preheader421
  %i.gg = add nsw i32 %i.ds, -2
  %i.gh = add nsw i32 %i.ds, -1
  %i.gi = zext nneg i32 %i.ds to i64
  %i.gj = zext nneg i32 %i.gh to i64              ; 3 uses
  %i.gk = sext i32 %i.gg to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gj ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gj
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  br label %bb.af

.preheader:                                       ; preds = %._crit_edge457
  br i1 %i.gf, label %.lr.ph468, label %.loopexit

.lr.ph468:                                        ; preds = %.preheader
  %i.go = add nsw i32 %i.ds, -2
  %i.gp = add nsw i32 %i.ds, -1
  %i.gq = zext nneg i32 %i.ds to i64
  %i.gr = zext nneg i32 %i.gp to i64              ; 3 uses
  %i.gs = sext i32 %i.go to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gr ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph468, %bb.ae
  %indvars.iv511 = phi i64 [ %i.gq, %.lr.ph468 ], [ %indvars.iv.next512, %bb.ae ] ; 12 uses
  %.not415 = icmp sgt i64 %indvars.iv511, %i.gs
  br i1 %.not415, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv511 ; 3 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !17
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv511
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !17
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !17
  %i.hc = fneg double %i.gz
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.hc, double %i.hb, double %i.gx)
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv511
  %i.hf = load double, ptr %i.he, align 8, !tbaa !17
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !17
  %i.hi = fneg double %i.hf
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.hi, double %i.hh, double %i.hd)
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.hk = icmp eq i64 %indvars.iv511, %i.gr
  br i1 %i.hk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hl = load double, ptr %i.gt, align 8, !tbaa !17
  %i.hm = load double, ptr %i.gu, align 8, !tbaa !17
  %i.hn = load double, ptr %i.gv, align 8, !tbaa !17
  %i.ho = fneg double %i.hm
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.hn, double %i.hl)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv511
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !17
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s
  %.0376 = phi double [ %i.hj, %bb.s ], [ %i.hp, %bb.u ], [ %i.hr, %bb.v ] ; 7 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv511
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !17 ; 7 uses
  %i.hu = fcmp oge double %i.ht, 0.000000e+00
  %i.hv = fneg double %i.ht
  %i.hw = select i1 %i.hu, double %i.ht, double %i.hv ; 4 uses
  %i.hx = fcmp olt double %i.hw, 1.000000e+00
  br i1 %i.hx, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.hy = fcmp olt double %i.hw, %i.s
  br i1 %i.hy, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.hz = fcmp oeq double %i.ht, 0.000000e+00
  br i1 %i.hz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ia = fcmp oge double %.0376, 0.000000e+00
  %i.ib = fneg double %.0376
  %i.ic = select i1 %i.ia, double %.0376, double %i.ib
  %i.id = fmul double %i.s, %i.ic
  %i.ie = fcmp ogt double %i.id, %i.hw
  br i1 %i.ie, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.if = trunc nuw nsw i64 %indvars.iv511 to i32
  store i32 %i.if, ptr %9, align 4, !tbaa !15
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.ig = fmul double %i.t, %.0376
  %i.ih = fmul double %i.t, %i.ht
  br label %bb.ae

bb.ac:                                            ; preds = %bb.x
  %i.ii = tail call double @llvm.fabs.f64(double %.0376)
  %i.ij = fmul double %i.t, %i.hw
  %i.ik = fcmp ogt double %i.ii, %i.ij
  br i1 %i.ik, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.il = trunc nuw nsw i64 %indvars.iv511 to i32
  store i32 %i.il, ptr %9, align 4, !tbaa !15
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.w
  %.1377 = phi double [ %i.ig, %bb.ab ], [ %.0376, %bb.ac ], [ %.0376, %bb.w ]
  %.0 = phi double [ %i.ih, %bb.ab ], [ %i.ht, %bb.ac ], [ %i.ht, %bb.w ]
  %i.im = fdiv double %.1377, %.0
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv511
  store double %i.im, ptr %i.in, align 8, !tbaa !17
  %indvars.iv.next512 = add nsw i64 %indvars.iv511, -1
  %i.io = icmp sgt i64 %indvars.iv511, 1
  br i1 %i.io, label %bb.r, label %.loopexit, !llvm.loop !10

bb.af:                                            ; preds = %.lr.ph466, %.loopexit420
  %indvars.iv508 = phi i64 [ %i.gi, %.lr.ph466 ], [ %indvars.iv.next509, %.loopexit420 ] ; 10 uses
  %.not414 = icmp sgt i64 %indvars.iv508, %i.gk
  br i1 %.not414, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv508 ; 3 uses
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !17
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv508
  %i.is = load double, ptr %i.ir, align 8, !tbaa !17
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.iu = load double, ptr %i.it, align 8, !tbaa !17
  %i.iv = fneg double %i.is
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.iv, double %i.iu, double %i.iq)
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv508
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !17
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !17
  %i.jb = fneg double %i.iy
  %i.jc = tail call double @llvm.fmuladd.f64(double %i.jb, double %i.ja, double %i.iw)
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.jd = icmp eq i64 %indvars.iv508, %i.gj
  br i1 %i.jd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.je = load double, ptr %i.gl, align 8, !tbaa !17
  %i.jf = load double, ptr %i.gm, align 8, !tbaa !17
  %i.jg = load double, ptr %i.gn, align 8, !tbaa !17
  %i.jh = fneg double %i.jf
  %i.ji = tail call double @llvm.fmuladd.f64(double %i.jh, double %i.jg, double %i.je)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv508
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !17
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ag
  %.2378 = phi double [ %i.jc, %bb.ag ], [ %i.ji, %bb.ai ], [ %i.jk, %bb.aj ] ; 8 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv508
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !17 ; 5 uses
  %i.jn = fcmp oge double %i.jm, 0.000000e+00     ; 2 uses
  %i.jo = fneg double %i.jm
  %i.jp = select i1 %i.jn, double %i.jm, double %i.jo ; 2 uses
  %i.jq = fcmp olt double %i.jp, 1.000000e+00
  br i1 %i.jq, label %.lr.ph461, label %.loopexit420

.lr.ph461:                                        ; preds = %bb.ak
  %i.jr = load double, ptr %8, align 8, !tbaa !17 ; 3 uses
  %i.js = fneg double %i.jr
  %i.jt = fcmp ult double %i.jr, 0.000000e+00
  %i.ju = xor i1 %i.jt, %i.jn
  %i.jv = select i1 %i.ju, double %i.jr, double %i.js
  %i.jw = tail call double @llvm.fabs.f64(double %.2378)
  %i.jx = fcmp oge double %.2378, 0.000000e+00
  %i.jy = fneg double %.2378
  %i.jz = select i1 %i.jx, double %.2378, double %i.jy
  %i.ka = fmul double %i.s, %i.jz
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph461, %.backedge
  %i.kb = phi double [ %i.jp, %.lr.ph461 ], [ %i.kh, %.backedge ] ; 3 uses
  %.1459 = phi double [ %i.jm, %.lr.ph461 ], [ %.1.be, %.backedge ] ; 4 uses
  %.0374458 = phi double [ %i.jv, %.lr.ph461 ], [ %.0374.be, %.backedge ] ; 2 uses
  %i.kc = fcmp olt double %i.kb, %i.s
  br i1 %i.kc, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.kd = fcmp oeq double %.1459, 0.000000e+00
  %i.ke = fcmp ogt double %i.ka, %i.kb
  %or.cond469.a = select i1 %i.kd, i1 true, i1 %i.ke
  br i1 %or.cond469.a, label %.backedge, label %bb.an

.backedge:                                        ; preds = %bb.ao, %bb.am
  %.1.be = fadd double %.0374458, %.1459          ; 5 uses
  %.0374.be = fmul double %.0374458, 2.000000e+00
  %i.kf = fcmp oge double %.1.be, 0.000000e+00
  %i.kg = fneg double %.1.be
  %i.kh = select i1 %i.kf, double %.1.be, double %i.kg ; 2 uses
  %i.ki = fcmp olt double %i.kh, 1.000000e+00
  br i1 %i.ki, label %bb.al, label %.loopexit420

bb.an:                                            ; preds = %bb.am
  %i.kj = fmul double %i.t, %.2378
  %i.kk = fmul double %i.t, %.1459
  br label %.loopexit420

bb.ao:                                            ; preds = %bb.al
  %i.kl = fmul double %i.t, %i.kb
  %i.km = fcmp ogt double %i.jw, %i.kl
  br i1 %i.km, label %.backedge, label %.loopexit420

.loopexit420:                                     ; preds = %.backedge, %bb.ao, %bb.ak, %bb.an
  %.3379 = phi double [ %i.kj, %bb.an ], [ %.2378, %bb.ak ], [ %.2378, %bb.ao ], [ %.2378, %.backedge ]
  %.2 = phi double [ %i.kk, %bb.an ], [ %i.jm, %bb.ak ], [ %.1.be, %.backedge ], [ %.1459, %bb.ao ]
  %i.kn = fdiv double %.3379, %.2
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv508
  store double %i.kn, ptr %i.ko, align 8, !tbaa !17
  %indvars.iv.next509 = add nsw i64 %indvars.iv508, -1
  %i.kp = icmp sgt i64 %indvars.iv508, 1
  br i1 %i.kp, label %bb.af, label %.loopexit, !llvm.loop !11

bb.ap:                                            ; preds = %bb.i
  %i.kq = icmp eq i32 %10, 2
  %i.kr = load i32, ptr %1, align 4, !tbaa !15    ; 5 uses
  %.not412446 = icmp slt i32 %i.kr, 1             ; 2 uses
  br i1 %i.kq, label %bb.aq, label %bb.bm

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not412446, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ks = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.kt = add nuw i32 %i.kr, 1                    ; 3 uses
  %wide.trip.count489 = zext i32 %i.kt to i64
  %i.ku = load double, ptr %7, align 8, !tbaa !17 ; 7 uses
  %i.kv = load double, ptr %2, align 8, !tbaa !17 ; 7 uses
  %i.kw = fcmp oge double %i.kv, 0.000000e+00
  %i.kx = fneg double %i.kv
  %i.ky = select i1 %i.kw, double %i.kv, double %i.kx ; 4 uses
  %i.kz = fcmp olt double %i.ky, 1.000000e+00
  br i1 %i.kz, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.la = fcmp olt double %i.ky, %i.s
  br i1 %i.la, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lb = tail call double @llvm.fabs.f64(double %i.ku)
  %i.lc = fmul double %i.t, %i.ky
  %i.ld = fcmp ogt double %i.lb, %i.lc
  br i1 %i.ld, label %bb.bk, label %bb.ax

bb.au:                                            ; preds = %bb.as
  %i.le = fcmp oeq double %i.kv, 0.000000e+00
  br i1 %i.le, label %.loopexit499, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lf = fcmp oge double %i.ku, 0.000000e+00
  %i.lg = fneg double %i.ku
  %i.lh = select i1 %i.lf, double %i.ku, double %i.lg
  %i.li = fmul double %i.s, %i.lh
  %i.lj = fcmp ogt double %i.li, %i.ky
  br i1 %i.lj, label %.loopexit499, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lk = fmul double %i.t, %i.ku
  %i.ll = fmul double %i.t, %i.kv
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at, %bb.ar
  %.5381.peel = phi double [ %i.lk, %bb.aw ], [ %i.ku, %bb.at ], [ %i.ku, %bb.ar ]
  %.3.peel = phi double [ %i.ll, %bb.aw ], [ %i.kv, %bb.at ], [ %i.kv, %bb.ar ]
  %i.lm = fdiv double %.5381.peel, %.3.peel       ; 2 uses
  store double %i.lm, ptr %7, align 8, !tbaa !17
  %exitcond490.peel.not = icmp eq i32 %i.kt, 2
  br i1 %exitcond490.peel.not, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ln = load double, ptr %i.ks, align 8, !tbaa !17
  %i.lo = load double, ptr %3, align 8, !tbaa !17
  %i.lp = fneg double %i.lo
  %i.lq = tail call double @llvm.fmuladd.f64(double %i.lp, double %i.lm, double %i.ln) ; 7 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !17 ; 7 uses
  %i.lt = fcmp oge double %i.ls, 0.000000e+00
  %i.lu = fneg double %i.ls
  %i.lv = select i1 %i.lt, double %i.ls, double %i.lu ; 4 uses
  %i.lw = fcmp olt double %i.lv, 1.000000e+00
  br i1 %i.lw, label %bb.az, label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.lx = fcmp olt double %i.lv, %i.s
  br i1 %i.lx, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ly = tail call double @llvm.fabs.f64(double %i.lq)
  %i.lz = fmul double %i.t, %i.lv
  %i.ma = fcmp ogt double %i.ly, %i.lz
  br i1 %i.ma, label %bb.bk, label %bb.be

bb.bb:                                            ; preds = %bb.az
  %i.mb = fcmp oeq double %i.ls, 0.000000e+00
  br i1 %i.mb, label %.loopexit499, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mc = fcmp oge double %i.lq, 0.000000e+00
  %i.md = fneg double %i.lq
  %i.me = select i1 %i.mc, double %i.lq, double %i.md
  %i.mf = fmul double %i.s, %i.me
  %i.mg = fcmp ogt double %i.mf, %i.lv
  br i1 %i.mg, label %.loopexit499, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mh = fmul double %i.t, %i.lq
  %i.mi = fmul double %i.t, %i.ls
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba, %bb.ay
  %.5381.peel493 = phi double [ %i.mh, %bb.bd ], [ %i.lq, %bb.ba ], [ %i.lq, %bb.ay ]
  %.3.peel494 = phi double [ %i.mi, %bb.bd ], [ %i.ls, %bb.ba ], [ %i.ls, %bb.ay ]
  %i.mj = fdiv double %.5381.peel493, %.3.peel494 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.mj, ptr %i.mk, align 8, !tbaa !17
  %exitcond490.peel496.not = icmp eq i32 %i.kt, 3
  br i1 %exitcond490.peel496.not, label %.lr.ph452.preheader, label %.peel.next491

.peel.next491:                                    ; preds = %bb.be, %bb.bl
  %i.ml = phi double [ %i.nu, %bb.bl ], [ %i.mj, %bb.be ]
  %indvars.iv486 = phi i64 [ %indvars.iv.next487, %bb.bl ], [ 3, %bb.be ] ; 8 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv486
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !17
  %i.mo = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv486
  %i.mp = getelementptr i8, ptr %i.mo, i64 -8
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !17
  %i.mr = fneg double %i.mq
  %i.ms = tail call double @llvm.fmuladd.f64(double %i.mr, double %i.ml, double %i.mn)
  %i.mt = add nsw i64 %indvars.iv486, -2          ; 2 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.mt
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !17
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.mt
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !17
  %i.my = fneg double %i.mv
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.my, double %i.mx, double %i.ms) ; 7 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv486
  %i.nb = load double, ptr %i.na, align 8, !tbaa !17 ; 7 uses
  %i.nc = fcmp oge double %i.nb, 0.000000e+00
  %i.nd = fneg double %i.nb
  %i.ne = select i1 %i.nc, double %i.nb, double %i.nd ; 4 uses
  %i.nf = fcmp olt double %i.ne, 1.000000e+00
  br i1 %i.nf, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %.peel.next491
  %i.ng = fcmp olt double %i.ne, %i.s
  br i1 %i.ng, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.nh = fcmp oeq double %i.nb, 0.000000e+00
  br i1 %i.nh, label %.loopexit499.loopexit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ni = fcmp oge double %i.mz, 0.000000e+00
  %i.nj = fneg double %i.mz
  %i.nk = select i1 %i.ni, double %i.mz, double %i.nj
  %i.nl = fmul double %i.s, %i.nk
  %i.nm = fcmp ogt double %i.nl, %i.ne
  br i1 %i.nm, label %.loopexit499.loopexit, label %bb.bi

.loopexit499.loopexit:                            ; preds = %bb.bg, %bb.bh
  %i.nn = trunc nuw nsw i64 %indvars.iv486 to i32
  br label %.loopexit499

.loopexit499:                                     ; preds = %.loopexit499.loopexit, %bb.bc, %bb.bb, %bb.av, %bb.au
  %.4372447.lcssa477 = phi i32 [ 2, %bb.bb ], [ 2, %bb.bc ], [ 1, %bb.au ], [ 1, %bb.av ], [ %i.nn, %.loopexit499.loopexit ]
  store i32 %.4372447.lcssa477, ptr %9, align 4, !tbaa !15
  br label %.loopexit

bb.bi:                                            ; preds = %bb.bh
  %i.no = fmul double %i.t, %i.mz
  %i.np = fmul double %i.t, %i.nb
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bf
  %i.nq = tail call double @llvm.fabs.f64(double %i.mz)
  %i.nr = fmul double %i.t, %i.ne
  %i.ns = fcmp ogt double %i.nq, %i.nr
  br i1 %i.ns, label %.loopexit498, label %bb.bl

.loopexit498:                                     ; preds = %bb.bj
  %i.nt = trunc nuw nsw i64 %indvars.iv486 to i32
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit498, %bb.ba, %bb.at
  %.4372447.lcssa.wide = phi i32 [ 2, %bb.ba ], [ 1, %bb.at ], [ %i.nt, %.loopexit498 ]
  store i32 %.4372447.lcssa.wide, ptr %9, align 4, !tbaa !15
  br label %.loopexit

bb.bl:                                            ; preds = %bb.bi, %bb.bj, %.peel.next491
  %.5381 = phi double [ %i.no, %bb.bi ], [ %i.mz, %bb.bj ], [ %i.mz, %.peel.next491 ]
  %.3 = phi double [ %i.np, %bb.bi ], [ %i.nb, %bb.bj ], [ %i.nb, %.peel.next491 ]
  %i.nu = fdiv double %.5381, %.3                 ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv486
  store double %i.nu, ptr %i.nv, align 8, !tbaa !17
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1 ; 2 uses
  %exitcond490.not = icmp eq i64 %indvars.iv.next487, %wide.trip.count489
  br i1 %exitcond490.not, label %.loopexit424, label %.peel.next491, !llvm.loop !12

bb.bm:                                            ; preds = %bb.ap
  br i1 %.not412446, label %.loopexit, label %.lr.ph445

.lr.ph445:                                        ; preds = %bb.bm
  %i.nw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.nx = add nuw i32 %i.kr, 1
  %wide.trip.count484 = zext i32 %i.nx to i64
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph445, %.loopexit425
  %indvars.iv481 = phi i64 [ 1, %.lr.ph445 ], [ %indvars.iv.next482, %.loopexit425 ] ; 9 uses
  %i.ny = icmp samesign ugt i64 %indvars.iv481, 2
  br i1 %i.ny, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv481
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !17
end_hunk_0
