Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlarrf?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @dlarrf_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef writeonly captures(none) %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %17) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca double, align 8                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = getelementptr inbounds i8, ptr %16, i64 -8 ; 11 uses
  %i.e = getelementptr inbounds i8, ptr %15, i64 -8 ; 10 uses
  %i.f = getelementptr inbounds i8, ptr %14, i64 -8 ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %3, i64 -8 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %2, i64 -8 ; 2 uses
  store i32 0, ptr %17, align 4, !tbaa !12
  %i.i = load i32, ptr %0, align 4, !tbaa !12
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %.critedge441, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %6, i64 -8 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %7, i64 -8 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %8, i64 -8 ; 2 uses
  %i.n = tail call double @dlamch_(ptr noundef nonnull @.str) #5 ; 8 uses
  %i.o = load i32, ptr %5, align 4, !tbaa !12     ; 2 uses
  %i.p = sext i32 %i.o to i64                     ; 3 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !14 ; 5 uses
  %i.s = load i32, ptr %4, align 4, !tbaa !12     ; 2 uses
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !14 ; 5 uses
  %i.w = fsub double %i.r, %i.v                   ; 3 uses
  %i.x = fcmp oge double %i.w, 0.000000e+00
  %i.y = fneg double %i.w
  %i.z = select i1 %i.x, double %i.w, double %i.y
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.p
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %i.ac = fadd double %i.ab, %i.z
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.t
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !14 ; 2 uses
  %i.af = fadd double %i.ae, %i.ac                ; 2 uses
  %i.ag = sub nsw i32 %i.o, %i.s
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = fdiv double %i.af, %i.ah
  %i.aj = load double, ptr %10, align 8, !tbaa !14 ; 2 uses
  %i.ak = load double, ptr %11, align 8, !tbaa !14 ; 2 uses
  %.inv = fcmp ole double %i.aj, %i.ak
  %. = select i1 %.inv, double %i.aj, double %i.ak ; 3 uses
  %i.al = fcmp ole double %i.v, %i.r
  %i.am = select i1 %i.al, double %i.v, double %i.r
  %i.an = fsub double %i.am, %i.ae                ; 4 uses
  %i.ao = fcmp oge double %i.v, %i.r
  %i.ap = select i1 %i.ao, double %i.v, double %i.r
  %i.aq = fadd double %i.ab, %i.ap                ; 4 uses
  %i.ar = fcmp oge double %i.an, 0.000000e+00
  %i.as = fneg double %i.an
  %i.at = select i1 %i.ar, double %i.an, double %i.as
  %i.au = fmul double %i.at, -4.000000e+00
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double %i.n, double %i.an) ; 2 uses
  %i.aw = fcmp oge double %i.aq, 0.000000e+00
  %i.ax = fneg double %i.aq
  %i.ay = select i1 %i.aw, double %i.aq, double %i.ax
  %i.az = fmul double %i.ay, 4.000000e+00
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double %i.n, double %i.aq)
  %i.bb = load double, ptr %12, align 8, !tbaa !14
  %i.bc = fmul double %i.bb, 2.000000e+00
  %i.bd = tail call double @llvm.fmuladd.f64(double %., double 2.500000e-01, double %i.bc) ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.t
  %i.bf = load double, ptr %i.be, align 8, !tbaa !14
  %i.bg = getelementptr [8 x i8], ptr %i.l, i64 %i.p
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !14
  %i.bj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bi, i64 1 ; 2 uses
  %i.bn = fcmp oge <2 x double> %i.bk, %i.bm
  %i.bo = select <2 x i1> %i.bn, <2 x double> %i.bk, <2 x double> %i.bm
  %i.bp = fmul <2 x double> %i.bo, splat (double 5.000000e-01)
  %i.bq = tail call double @dlamch_(ptr noundef nonnull @.str.1) #5
  %i.br = fdiv double 1.000000e+00, %i.bq
  %i.bs = load i32, ptr %0, align 4, !tbaa !12
  %i.bt = add nsw i32 %i.bs, -1
  %i.bu = sitofp i32 %i.bt to double
  %i.bv = fmul double %., %i.bu
  %i.bw = load double, ptr %9, align 8, !tbaa !14 ; 2 uses
  %i.bx = tail call double @sqrt(double noundef %i.n) #5
  %i.by = insertelement <2 x double> poison, double %i.n, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bx, i64 1
  %i.ca = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x double> %i.bz, %i.cb
  %i.cd = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fdiv <2 x double> %i.ce, %i.cc          ; 2 uses
  %i.cg = fmul double %i.bw, 8.000000e+00         ; 2 uses
  %i.ch = fmul double %., 7.812500e-03
  %i.ci = fcmp olt double %i.af, %i.ch
  %i.cj = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cl = extractelement <2 x double> %i.cf, i64 0
  %i.cm = extractelement <2 x double> %i.cf, i64 1
  %18 = fcmp ult double %i.n, 1.000000e+00
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.0410 = phi i32 [ undef, %bb.b ], [ %.4, %.backedge.backedge ] ; 2 uses
  %i.cn = phi i1 [ true, %bb.b ], [ false, %.backedge.backedge ] ; 2 uses
  %.0394 = phi double [ %i.av, %bb.b ], [ %.3397, %.backedge.backedge ] ; 2 uses
  %.0391 = phi double [ %i.br, %bb.b ], [ %.3, %.backedge.backedge ] ; 3 uses
  %.0388 = phi double [ %i.av, %bb.b ], [ %.0388.be, %.backedge.backedge ] ; 7 uses
  %.not433 = phi i1 [ true, %bb.b ], [ %i.cn, %.backedge.backedge ]
  %.0385 = phi double [ %i.ba, %bb.b ], [ %.0385.be, %.backedge.backedge ] ; 6 uses
  %i.co = phi <2 x double> [ %i.bp, %bb.b ], [ %.be, %.backedge.backedge ] ; 2 uses
  %i.cp = fcmp ole <2 x double> %i.ck, %i.co
  %i.cq = select <2 x i1> %i.cp, <2 x double> %i.ck, <2 x double> %i.co ; 4 uses
  %i.cr = fneg double %.0388                      ; 2 uses
  %i.cs = load double, ptr %1, align 8, !tbaa !14
  %i.ct = fsub double %i.cs, %.0388               ; 3 uses
  store double %i.ct, ptr %14, align 8, !tbaa !14
  %i.cu = call double @llvm.fabs.f64(double %i.ct)
  %i.cv = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.cw = fcmp olt double %i.cu, %i.cv
  br i1 %i.cw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.backedge
  %i.cx = fneg double %i.cv                       ; 2 uses
  store double %i.cx, ptr %14, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.backedge
  %.pre = phi double [ %i.cx, %bb.c ], [ %i.ct, %.backedge ] ; 4 uses
  %.0382 = phi i32 [ 1, %bb.c ], [ 0, %.backedge ] ; 2 uses
  %i.cy = fcmp ult double %.pre, 0.000000e+00
  %i.cz = fneg double %.pre
  %i.da = select i1 %i.cy, double %i.cz, double %.pre ; 2 uses
  store double %i.da, ptr %i.b, align 8, !tbaa !14
  %i.db = load i32, ptr %0, align 4, !tbaa !12    ; 2 uses
  %.not.not451 = icmp sgt i32 %i.db, 1
  br i1 %.not.not451, label %.lr.ph.preheader, label %bb.g

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.db to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.dc = phi double [ %.pre, %.lr.ph.preheader ], [ %i.du, %bb.f ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 6 uses
  %.1383454 = phi i32 [ %.0382, %.lr.ph.preheader ], [ %.2384, %bb.f ]
  %.0399453 = phi double [ %i.cr, %.lr.ph.preheader ], [ %i.dl, %bb.f ]
  %i.dd = phi double [ %i.da, %.lr.ph.preheader ], [ %i.dz, %bb.f ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.df = load double, ptr %i.de, align 8, !tbaa !14
  %i.dg = fdiv double %i.df, %i.dc                ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.dg, ptr %i.dh, align 8, !tbaa !14
  %i.di = fmul double %.0399453, %i.dg
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !14
  %i.dl = call double @llvm.fmuladd.f64(double %i.di, double %i.dk, double %i.cr) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dm = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !14
  %i.do = fadd double %i.dn, %i.dl                ; 3 uses
  %i.dp = getelementptr [8 x i8], ptr %14, i64 %indvars.iv ; 2 uses
  store double %i.do, ptr %i.dp, align 8, !tbaa !14
  %i.dq = call double @llvm.fabs.f64(double %i.do)
  %i.dr = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.ds = fcmp olt double %i.dq, %i.dr
  br i1 %i.ds, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.dt = fneg double %i.dr                       ; 2 uses
  store double %i.dt, ptr %i.dp, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.du = phi double [ %i.dt, %bb.e ], [ %i.do, %.lr.ph ] ; 4 uses
  %.2384 = phi i32 [ 1, %bb.e ], [ %.1383454, %.lr.ph ] ; 2 uses
  %i.dv = fcmp oge double %i.du, 0.000000e+00
  %i.dw = fneg double %i.du
  %i.dx = select i1 %i.dv, double %i.du, double %i.dw ; 2 uses
  %i.dy = fcmp oge double %i.dd, %i.dx
  %i.dz = select i1 %i.dy, double %i.dd, double %i.dx ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.f
  store double %i.dz, ptr %i.b, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.d
  %.1383.lcssa = phi i32 [ %.2384, %._crit_edge ], [ %.0382, %bb.d ]
  %.not432 = icmp eq i32 %.1383.lcssa, 0
  br i1 %.not432, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ea = call i32 @disnan_(ptr noundef nonnull %i.b) #5
  %i.eb = icmp ne i32 %i.ea, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ec = phi i1 [ true, %bb.g ], [ %i.eb, %bb.h ] ; 6 uses
  br i1 %.not433, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ed = load double, ptr %i.b, align 8, !tbaa !14
  %i.ee = fcmp ugt double %i.ed, %i.cg
  %or.cond = select i1 %i.ee, i1 true, i1 %i.ec
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store double %.0388, ptr %13, align 8, !tbaa !14
  br label %.critedge441

bb.l:                                             ; preds = %bb.j
  %i.ef = fneg double %.0385                      ; 2 uses
  %i.eg = load double, ptr %1, align 8, !tbaa !14
  %i.eh = fsub double %i.eg, %.0385               ; 3 uses
  store double %i.eh, ptr %16, align 8, !tbaa !14
  %i.ei = call double @llvm.fabs.f64(double %i.eh)
  %i.ej = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.ek = fcmp olt double %i.ei, %i.ej
  br i1 %i.ek, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.el = fneg double %i.ej                       ; 2 uses
  store double %i.el, ptr %16, align 8, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre512 = phi double [ %i.el, %bb.m ], [ %i.eh, %bb.l ] ; 4 uses
  %.0380 = phi i32 [ 1, %bb.m ], [ 0, %bb.l ]     ; 2 uses
  %i.em = fcmp ult double %.pre512, 0.000000e+00
  %i.en = fneg double %.pre512
  %i.eo = select i1 %i.em, double %i.en, double %.pre512 ; 3 uses
  store double %i.eo, ptr %i.c, align 8, !tbaa !14
  %i.ep = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.eq = add nsw i32 %i.ep, -1
  store i32 %i.eq, ptr %i.a, align 4, !tbaa !12
  %.not434.not456 = icmp sgt i32 %i.ep, 1
  br i1 %.not434.not456, label %.lr.ph461.preheader, label %bb.q

.lr.ph461.preheader:                              ; preds = %bb.n
  %i.er = zext nneg i32 %i.ep to i64              ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.er
  br label %.lr.ph461

.lr.ph461:                                        ; preds = %.lr.ph461.preheader, %bb.p
  %i.es = phi double [ %.pre512, %.lr.ph461.preheader ], [ %i.fj, %bb.p ]
  %indvars.iv500 = phi i64 [ 1, %.lr.ph461.preheader ], [ %indvars.iv.next501, %bb.p ] ; 6 uses
  %.1381459 = phi i32 [ %.0380, %.lr.ph461.preheader ], [ %.2, %bb.p ]
  %.1400458 = phi double [ %i.ef, %.lr.ph461.preheader ], [ %i.fa, %bb.p ]
  %i.et = phi double [ %i.eo, %.lr.ph461.preheader ], [ %i.fo, %bb.p ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv500
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !14
  %i.ew = fdiv double %i.ev, %i.es                ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv500
  store double %i.ew, ptr %gep, align 8, !tbaa !14
  %i.ex = fmul double %.1400458, %i.ew
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv500
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !14
  %i.fa = call double @llvm.fmuladd.f64(double %i.ex, double %i.ez, double %i.ef) ; 2 uses
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1 ; 2 uses
  %i.fb = getelementptr [8 x i8], ptr %1, i64 %indvars.iv500
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !14
  %i.fd = fadd double %i.fc, %i.fa                ; 3 uses
  %i.fe = getelementptr [8 x i8], ptr %16, i64 %indvars.iv500 ; 2 uses
  store double %i.fd, ptr %i.fe, align 8, !tbaa !14
  %i.ff = call double @llvm.fabs.f64(double %i.fd)
  %i.fg = load double, ptr %12, align 8, !tbaa !14 ; 2 uses
  %i.fh = fcmp olt double %i.ff, %i.fg
  br i1 %i.fh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph461
  %i.fi = fneg double %i.fg                       ; 2 uses
  store double %i.fi, ptr %i.fe, align 8, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph461
  %i.fj = phi double [ %i.fi, %bb.o ], [ %i.fd, %.lr.ph461 ] ; 4 uses
  %.2 = phi i32 [ 1, %bb.o ], [ %.1381459, %.lr.ph461 ] ; 2 uses
  %i.fk = fcmp oge double %i.fj, 0.000000e+00
  %i.fl = fneg double %i.fj
  %i.fm = select i1 %i.fk, double %i.fj, double %i.fl ; 2 uses
  %i.fn = fcmp oge double %i.et, %i.fm
  %i.fo = select i1 %i.fn, double %i.et, double %i.fm ; 3 uses
  %exitcond504.not = icmp eq i64 %indvars.iv.next501, %i.er
  br i1 %exitcond504.not, label %._crit_edge462, label %.lr.ph461, !llvm.loop !9

._crit_edge462:                                   ; preds = %bb.p
  store double %i.fo, ptr %i.c, align 8, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge462, %bb.n
  %i.fp = phi double [ %i.fo, %._crit_edge462 ], [ %i.eo, %bb.n ]
  %.1381.lcssa = phi i32 [ %.2, %._crit_edge462 ], [ %.0380, %bb.n ]
  %.not435 = icmp eq i32 %.1381.lcssa, 0
  br i1 %.not435, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.fq = call i32 @disnan_(ptr noundef nonnull %i.c) #5
  %i.fr = icmp ne i32 %i.fq, 0                    ; 2 uses
  %i.fs = load double, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %i.ft = fcmp ugt double %i.fs, %i.cg
  %or.cond3 = select i1 %i.ft, i1 true, i1 %i.fr
  br i1 %or.cond3, label %.thread, label %bb.aj

.thread:                                          ; preds = %bb.q, %bb.r
  %i.fu = phi double [ %i.fs, %bb.r ], [ %i.fp, %bb.q ] ; 5 uses
  %i.fv = phi i1 [ %i.fr, %bb.r ], [ true, %bb.q ] ; 3 uses
  %or.cond5 = select i1 %i.ec, i1 %i.fv, i1 false
  br i1 %or.cond5, label %.critedge, label %bb.s

bb.s:                                             ; preds = %.thread
  %i.fw = load double, ptr %i.b, align 8          ; 5 uses
  %i.fx = fcmp ugt double %i.fw, %.0391
  %.1411 = select i1 %i.ec, i32 %.0410, i32 1
  %i.fy = select i1 %i.ec, i1 true, i1 %i.fx      ; 2 uses
  %.1395 = select i1 %i.fy, double %.0394, double %.0388 ; 2 uses
  %.1392 = select i1 %i.fy, double %.0391, double %i.fw ; 3 uses
  br i1 %i.fv, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fz = fcmp ole double %i.fu, %i.fw
  %or.cond444.not = select i1 %i.ec, i1 true, i1 %i.fz
  %.2412 = select i1 %or.cond444.not, i32 2, i32 1
  %i.ga = fcmp ugt double %i.fu, %.1392           ; 2 uses
  %spec.select438 = select i1 %i.ga, double %.1395, double %.0385
  %spec.select439 = select i1 %i.ga, double %.1392, double %i.fu
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3413 = phi i32 [ %.1411, %bb.s ], [ %.2412, %bb.t ] ; 3 uses
  %.2396 = phi double [ %.1395, %bb.s ], [ %spec.select438, %bb.t ] ; 4 uses
  %.2393 = phi double [ %.1392, %bb.s ], [ %spec.select439, %bb.t ] ; 4 uses
  br i1 %i.ci, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.gb = fcmp ole double %i.fw, %i.fu
  %i.gc = select i1 %i.gb, double %i.fw, double %i.fu
  %i.gd = fcmp uge double %i.gc, %i.cm
  %or.cond7 = select i1 %i.gd, i1 true, i1 %i.ec
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.fv
  br i1 %or.cond9, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ge = icmp eq i32 %.3413, 1
  %i.gf = load i32, ptr %0, align 4, !tbaa !12    ; 5 uses
  %i.gg = sext i32 %i.gf to i64                   ; 5 uses
  %i.gh = icmp sgt i32 %i.gf, 1                   ; 2 uses
  br i1 %i.ge, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gg
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !14 ; 4 uses
  %i.gk = fcmp oge double %i.gj, 0.000000e+00
  %i.gl = fneg double %i.gj
  %i.gm = select i1 %i.gk, double %i.gj, double %i.gl ; 2 uses
  br i1 %i.gh, label %.lr.ph483.preheader, label %._crit_edge484

.lr.ph483.preheader:                              ; preds = %bb.x
  %invariant.gep535 = getelementptr [8 x i8], ptr %i.d, i64 %i.gg
  %invariant.gep537 = getelementptr [8 x i8], ptr %i.d, i64 %i.gg
  br label %.lr.ph483

.lr.ph483:                                        ; preds = %.lr.ph483.preheader, %bb.aa
  %i.gn = phi double [ %i.gj, %.lr.ph483.preheader ], [ %i.he, %bb.aa ]
  %indvars.iv508 = phi i64 [ %i.gg, %.lr.ph483.preheader ], [ %indvars.iv.next509, %bb.aa ] ; 3 uses
  %.0480 = phi double [ 1.000000e+00, %.lr.ph483.preheader ], [ %i.hf, %bb.aa ]
  %.0378479 = phi double [ %i.gm, %.lr.ph483.preheader ], [ %i.hl, %bb.aa ] ; 2 uses
  %.0406477 = phi double [ 1.000000e+00, %.lr.ph483.preheader ], [ %.1407, %bb.aa ] ; 2 uses
  %indvars.iv.next509 = add nsw i64 %indvars.iv508, -1 ; 5 uses
  %i.go = fcmp ugt double %.0406477, %i.n
  br i1 %i.go, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph483
  %i.gp = trunc i64 %indvars.iv508 to i32
  %i.gq = add i32 %i.gf, %i.gp
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.gr
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !14
  %i.gu = fmul double %i.gn, %i.gt
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next509
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !14 ; 2 uses
  %gep536 = getelementptr [8 x i8], ptr %invariant.gep535, i64 %indvars.iv.next509
  %i.gx = load double, ptr %gep536, align 8, !tbaa !14
  %i.gy = fmul double %i.gw, %i.gx
  %i.gz = fdiv double %i.gu, %i.gy
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph483
  %gep538 = getelementptr [8 x i8], ptr %invariant.gep537, i64 %indvars.iv.next509
  %i.ha = load double, ptr %gep538, align 8, !tbaa !14 ; 3 uses
  %i.hb = fcmp oge double %i.ha, 0.000000e+00
  %i.hc = fneg double %i.ha
  %i.hd = select i1 %i.hb, double %i.ha, double %i.hc
  %.phi.trans.insert515 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next509
  %.pre516 = load double, ptr %.phi.trans.insert515, align 8, !tbaa !14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.he = phi double [ %i.gw, %bb.y ], [ %.pre516, %bb.z ] ; 2 uses
  %.pn487 = phi double [ %i.gz, %bb.y ], [ %i.hd, %bb.z ]
  %.1407 = fmul double %.0406477, %.pn487         ; 4 uses
  %i.hf = call double @llvm.fmuladd.f64(double %.1407, double %.1407, double %.0480) ; 2 uses
  %i.hg = fmul double %.1407, %i.he               ; 3 uses
  %i.hh = fcmp oge double %i.hg, 0.000000e+00
  %i.hi = fneg double %i.hg
  %i.hj = select i1 %i.hh, double %i.hg, double %i.hi ; 2 uses
  %i.hk = fcmp oge double %.0378479, %i.hj
  %i.hl = select i1 %i.hk, double %.0378479, double %i.hj ; 2 uses
  %i.hm = icmp samesign ugt i64 %indvars.iv508, 2
  br i1 %i.hm, label %.lr.ph483, label %._crit_edge484, !llvm.loop !10

._crit_edge484:                                   ; preds = %bb.aa, %bb.x
  %.0378.lcssa = phi double [ %i.gm, %bb.x ], [ %i.hl, %bb.aa ]
  %.0.lcssa = phi double [ 1.000000e+00, %bb.x ], [ %i.hf, %bb.aa ]
  %i.hn = load double, ptr %9, align 8, !tbaa !14
  %i.ho = call double @sqrt(double noundef %.0.lcssa) #5
  %i.hp = fmul double %i.hn, %i.ho
  %i.hq = fdiv double %.0378.lcssa, %i.hp
  %i.hr = fcmp ugt double %i.hq, 8.000000e+00
  br i1 %i.hr, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge484
  store double %.0388, ptr %13, align 8, !tbaa !14
  br label %.critedge441

bb.ac:                                            ; preds = %bb.w
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.gg
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !14 ; 3 uses
  %i.hu = fcmp oge double %i.ht, 0.000000e+00
  %i.hv = fneg double %i.ht
  %i.hw = select i1 %i.hu, double %i.ht, double %i.hv ; 4 uses
  br i1 %i.gh, label %.lr.ph472.preheader, label %._crit_edge473

.lr.ph472.preheader:                              ; preds = %bb.ac
  %19 = zext nneg i32 %i.gf to i64                ; 5 uses
  %20 = and i64 %19, 1
  %lcmp.mod.not.not = icmp eq i64 %20, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph472.prol, label %.lr.ph472.prol.loopexit

.lr.ph472.prol:                                   ; preds = %.lr.ph472.preheader
  %indvars.iv.next506.prol = add nsw i64 %19, -1  ; 4 uses
  %.phi.trans.insert513.prol = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next506.prol
  %.pre514.prol = load double, ptr %.phi.trans.insert513.prol, align 8, !tbaa !14 ; 2 uses
  br i1 %18, label %31, label %21

21:                                               ; preds = %.lr.ph472.prol
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %19
  %23 = load double, ptr %22, align 8, !tbaa !14
  %24 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %19
  %25 = load double, ptr %24, align 8, !tbaa !14
  %26 = fmul double %23, %25
  %27 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next506.prol
  %28 = load double, ptr %27, align 8, !tbaa !14
  %29 = fmul double %.pre514.prol, %28
  %30 = fdiv double %26, %29
  br label %.lr.ph472.preheader.a

31:                                               ; preds = %.lr.ph472.prol
  %32 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next506.prol
  %33 = load double, ptr %32, align 8, !tbaa !14  ; 3 uses
  %34 = fcmp oge double %33, 0.000000e+00
  %35 = fneg double %33
  %36 = select i1 %34, double %33, double %35
  br label %.lr.ph472.preheader.a

.lr.ph472.preheader.a:                            ; preds = %31, %21
  %.pn.prol = phi double [ %30, %21 ], [ %36, %31 ] ; 4 uses
  %37 = call double @llvm.fmuladd.f64(double %.pn.prol, double %.pn.prol, double 1.000000e+00) ; 2 uses
  %38 = fmul double %.pn.prol, %.pre514.prol      ; 3 uses
  %39 = fcmp oge double %38, 0.000000e+00
  %40 = fneg double %38
  %41 = select i1 %39, double %38, double %40     ; 2 uses
  %42 = fcmp oge double %i.hw, %41
  %43 = select i1 %42, double %i.hw, double %41   ; 2 uses
  br label %.lr.ph472.prol.loopexit

.lr.ph472.prol.loopexit:                          ; preds = %.lr.ph472.preheader.a, %.lr.ph472.preheader
  %indvars.iv505.unr = phi i64 [ %19, %.lr.ph472.preheader ], [ %indvars.iv.next506.prol, %.lr.ph472.preheader.a ]
  %.1469.unr = phi double [ 1.000000e+00, %.lr.ph472.preheader ], [ %37, %.lr.ph472.preheader.a ]
  %.1379468.unr = phi double [ %i.hw, %.lr.ph472.preheader ], [ %43, %.lr.ph472.preheader.a ]
  %.2408466.unr = phi double [ 1.000000e+00, %.lr.ph472.preheader ], [ %.pn.prol, %.lr.ph472.preheader.a ]
  %.lcssa552.unr = phi double [ poison, %.lr.ph472.preheader ], [ %37, %.lr.ph472.preheader.a ]
  %.lcssa551.unr = phi double [ poison, %.lr.ph472.preheader ], [ %43, %.lr.ph472.preheader.a ]
  %44 = icmp eq i32 %i.gf, 2
  br i1 %44, label %._crit_edge473, label %.lr.ph472

.lr.ph472:                                        ; preds = %.lr.ph472.prol.loopexit, %bb.af
  %indvars.iv505 = phi i64 [ %indvars.iv.next506.1, %bb.af ], [ %indvars.iv505.unr, %.lr.ph472.prol.loopexit ] ; 5 uses
  %.1469 = phi double [ %i.im, %bb.af ], [ %.1469.unr, %.lr.ph472.prol.loopexit ]
  %.1379468 = phi double [ %i.is, %bb.af ], [ %.1379468.unr, %.lr.ph472.prol.loopexit ] ; 2 uses
  %.2408466 = phi double [ %.3409.a, %bb.af ], [ %.2408466.unr, %.lr.ph472.prol.loopexit ] ; 2 uses
  %indvars.iv.next506 = add nsw i64 %indvars.iv505, -1 ; 4 uses
  %i.hx = fcmp ugt double %.2408466, %i.n
  %.phi.trans.insert513 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next506
  %.pre514 = load double, ptr %.phi.trans.insert513, align 8, !tbaa !14 ; 3 uses
  br i1 %i.hx, label %45, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph472
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv505
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !14
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv505
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !14
  %i.ic = fmul double %i.hz, %i.ib
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next506
  %i.ie = load double, ptr %i.id, align 8, !tbaa !14
  %i.if = fmul double %.pre514, %i.ie
  %i.ig = fdiv double %i.ic, %i.if
  br label %.lr.ph472.1

45:                                               ; preds = %.lr.ph472
  %46 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next506
  %47 = load double, ptr %46, align 8, !tbaa !14  ; 3 uses
  %48 = fcmp oge double %47, 0.000000e+00
  %49 = fneg double %47
  %50 = select i1 %48, double %47, double %49
  br label %.lr.ph472.1

.lr.ph472.1:                                      ; preds = %45, %bb.ad
  %.pn = phi double [ %i.ig, %bb.ad ], [ %50, %45 ]
  %.3409 = fmul double %.2408466, %.pn            ; 5 uses
  %51 = call double @llvm.fmuladd.f64(double %.3409, double %.3409, double %.1469)
  %52 = fmul double %.3409, %.pre514              ; 3 uses
  %53 = fcmp oge double %52, 0.000000e+00
  %54 = fneg double %52
  %55 = select i1 %53, double %52, double %54     ; 2 uses
  %56 = fcmp oge double %.1379468, %55
  %57 = select i1 %56, double %.1379468, double %55 ; 2 uses
  %indvars.iv.next506.1 = add nsw i64 %indvars.iv505, -2 ; 4 uses
  %58 = fcmp ugt double %.3409, %i.n
  %.phi.trans.insert513.1 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next506.1
  %.pre514.1 = load double, ptr %.phi.trans.insert513.1, align 8, !tbaa !14 ; 2 uses
  br i1 %58, label %bb.ae, label %59

59:                                               ; preds = %.lr.ph472.1
  %60 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next506
  %61 = load double, ptr %60, align 8, !tbaa !14
  %62 = fmul double %.pre514, %61
  %63 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next506.1
  %64 = load double, ptr %63, align 8, !tbaa !14
  %65 = fmul double %.pre514.1, %64
  %66 = fdiv double %62, %65
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph472.1
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next506.1
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !14 ; 3 uses
  %i.ij = fcmp oge double %i.ii, 0.000000e+00
  %i.ik = fneg double %i.ii
  %i.il = select i1 %i.ij, double %i.ii, double %i.ik
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %59
  %.pn.a = phi double [ %66, %59 ], [ %i.il, %bb.ae ]
  %.3409.a = fmul double %.3409, %.pn.a           ; 4 uses
  %i.im = call double @llvm.fmuladd.f64(double %.3409.a, double %.3409.a, double %51) ; 2 uses
  %i.in = fmul double %.3409.a, %.pre514.1        ; 3 uses
  %i.io = fcmp oge double %i.in, 0.000000e+00
  %i.ip = fneg double %i.in
  %i.iq = select i1 %i.io, double %i.in, double %i.ip ; 2 uses
  %i.ir = fcmp oge double %57, %i.iq
  %i.is = select i1 %i.ir, double %57, double %i.iq ; 2 uses
  %67 = icmp sgt i64 %indvars.iv505, 3
  br i1 %67, label %.lr.ph472, label %._crit_edge473, !llvm.loop !11

._crit_edge473:                                   ; preds = %.lr.ph472.prol.loopexit, %bb.af, %bb.ac
  %.1379.lcssa = phi double [ %i.hw, %bb.ac ], [ %.lcssa551.unr, %.lr.ph472.prol.loopexit ], [ %i.is, %bb.af ]
  %.1.lcssa = phi double [ 1.000000e+00, %bb.ac ], [ %.lcssa552.unr, %.lr.ph472.prol.loopexit ], [ %i.im, %bb.af ]
  %i.it = load double, ptr %9, align 8, !tbaa !14
  %i.iu = call double @sqrt(double noundef %.1.lcssa) #5
  %i.iv = fmul double %i.it, %i.iu
  %i.iw = fdiv double %.1379.lcssa, %i.iv
  %i.ix = fcmp ugt double %i.iw, 8.000000e+00
  br i1 %i.ix, label %.critedge, label %bb.aj

.critedge:                                        ; preds = %bb.u, %bb.v, %._crit_edge473, %._crit_edge484, %.thread
  %.4 = phi i32 [ %.0410, %.thread ], [ 1, %._crit_edge484 ], [ 2, %._crit_edge473 ], [ %.3413, %bb.u ], [ %.3413, %bb.v ]
  %.3397 = phi double [ %.0394, %.thread ], [ %.2396, %._crit_edge484 ], [ %.2396, %._crit_edge473 ], [ %.2396, %bb.u ], [ %.2396, %bb.v ] ; 3 uses
  %.3 = phi double [ %.0391, %.thread ], [ %.2393, %._crit_edge484 ], [ %.2393, %._crit_edge473 ], [ %.2393, %bb.u ], [ %.2393, %bb.v ] ; 2 uses
  br i1 %i.cn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.critedge
  %i.iy = extractelement <2 x double> %i.cq, i64 0
  %i.iz = fsub double %.0388, %i.iy               ; 2 uses
  %i.ja = fsub double %.0388, %i.bd               ; 2 uses
  %i.jb = fcmp oge double %i.iz, %i.ja
  %i.jc = select i1 %i.jb, double %i.iz, double %i.ja
  %i.jd = extractelement <2 x double> %i.cq, i64 1
  %i.je = fadd double %.0385, %i.jd               ; 2 uses
  %i.jf = fadd double %i.bd, %.0385               ; 2 uses
  %i.jg = fcmp ole double %i.je, %i.jf
  %i.jh = select i1 %i.jg, double %i.je, double %i.jf
  %i.ji = fmul <2 x double> %i.cq, splat (double 2.000000e+00)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ag, %bb.ah
  %.0388.be = phi double [ %i.jc, %bb.ag ], [ %.3397, %bb.ah ]
  %.0385.be = phi double [ %i.jh, %bb.ag ], [ %.3397, %bb.ah ]
  %.be = phi <2 x double> [ %i.ji, %bb.ag ], [ %i.cq, %bb.ah ]
  br label %.backedge

bb.ah:                                            ; preds = %.critedge
  %i.jj = fcmp olt double %.3, %i.cl
  br i1 %i.jj, label %.backedge.backedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 1, ptr %17, align 4, !tbaa !12
  br label %.critedge441

bb.aj:                                            ; preds = %._crit_edge473, %bb.r
  store double %.0385, ptr %13, align 8, !tbaa !14
  call void @dcopy_(ptr noundef nonnull %0, ptr noundef nonnull %16, ptr noundef nonnull @c__1, ptr noundef nonnull %14, ptr noundef nonnull @c__1) #5
  %i.jk = load i32, ptr %0, align 4, !tbaa !12    ; 2 uses
  %i.jl = add nsw i32 %i.jk, -1
  store i32 %i.jl, ptr %i.a, align 4, !tbaa !12
  %i.jm = sext i32 %i.jk to i64
  %i.jn = getelementptr [8 x i8], ptr %i.d, i64 %i.jm
  %i.jo = getelementptr i8, ptr %i.jn, i64 8
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.jo, ptr noundef nonnull @c__1, ptr noundef %15, ptr noundef nonnull @c__1) #5
  br label %.critedge441

.critedge441:                                     ; preds = %bb.aj, %bb.ab, %bb.k, %bb.a, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

declare i32 @disnan_(ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !15}
!9 = distinct !{!9, !15}
!10 = distinct !{!10, !15}
!11 = distinct !{!11, !15}
!12 = !{!5, !5, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
end_hunk_0
