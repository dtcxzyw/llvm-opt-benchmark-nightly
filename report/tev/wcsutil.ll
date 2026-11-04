Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/wcsutil?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local i32 @ffwldp(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef writeonly captures(none) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef captures(none) %12) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %12, align 4, !tbaa !9     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.ch, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = insertelement <2 x double> poison, double %0, i64 0
  %i.d = insertelement <2 x double> %i.c, double %1, i64 1
  %i.e = insertelement <2 x double> poison, double %4, i64 0
  %i.f = insertelement <2 x double> %i.e, double %5, i64 1
  %i.g = fsub <2 x double> %i.d, %i.f
  %i.h = insertelement <2 x double> poison, double %6, i64 0
  %i.i = insertelement <2 x double> %i.h, double %7, i64 1
  %i.j = fmul <2 x double> %i.g, %i.i             ; 3 uses
  %i.k = fmul double %8, f0x3F91DF46A252DD11      ; 2 uses
  %i.l = tail call double @cos(double noundef %i.k) #3 ; 3 uses
  %i.m = tail call double @sin(double noundef %i.k) #3 ; 5 uses
  %i.n = fcmp une double %8, 0.000000e+00
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = fneg double %i.m
  %i.p = insertelement <2 x double> poison, double %i.m, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.o, i64 1
  %i.r = fmul <2 x double> %i.j, %i.q
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.t = insertelement <2 x double> poison, double %i.l, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> %i.u, <2 x double> %i.s)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi <2 x double> [ %i.v, %bb.c ], [ %i.j, %bb.b ]
  %i.x = fmul double %2, f0x3F91DF46A252DD11      ; 20 uses
  %.scalar = fmul double %3, f0x3F91DF46A252DD11  ; 14 uses
  %i.y = fmul <2 x double> %i.w, splat (double f0x3F91DF46A252DD11) ; 6 uses
  %i.z = extractelement <2 x double> %i.y, i64 1  ; 13 uses
  %i.aa = extractelement <2 x double> %i.y, i64 0 ; 12 uses
  %i.ab = fmul double %i.z, %i.z
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.ab) ; 7 uses
  %i.ad = tail call double @cos(double noundef %.scalar) #3 ; 10 uses
  %i.ae = tail call double @sin(double noundef %.scalar) #3 ; 10 uses
  %i.af = load i8, ptr %9, align 1, !tbaa !10
  %.not = icmp eq i8 %i.af, 45
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 504, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !10
  switch i8 %i.ah, label %bb.cf [
    i8 67, label %bb.g
    i8 84, label %bb.k
    i8 83, label %bb.o
    i8 65, label %bb.aj
    i8 78, label %bb.bf
    i8 71, label %bb.bq
    i8 77, label %bb.bz
  ]

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !10
  %.not376 = icmp eq i8 %i.aj, 65
  br i1 %.not376, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !10
  %.not377 = icmp eq i8 %i.al, 82
  br i1 %.not377, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 504, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.j:                                             ; preds = %bb.h
  %i.am = fadd double %i.x, %i.aa
  %i.an = fadd double %.scalar, %i.z
  br label %bb.cg

bb.k:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !10
  %.not374 = icmp eq i8 %i.ap, 65
  br i1 %.not374, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !10
  %.not375 = icmp eq i8 %i.ar, 78
  br i1 %.not375, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 504, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.n:                                             ; preds = %bb.l
  %i.as = tail call double @cos(double noundef %i.x) #3
  %i.at = tail call double @sin(double noundef %i.x) #3
  %i.au = fneg double %i.at
  %i.av = tail call double @cos(double noundef %i.x) #3
  %i.aw = tail call double @sin(double noundef %i.x) #3
  %i.ax = tail call double @cos(double noundef %i.x) #3
  %i.ay = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ax, i64 1
  %i.bb = fmul <2 x double> %i.ay, %i.ba
  %i.bc = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.aw, i64 1
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bf, <2 x double> %i.bb)
  %i.bh = tail call double @sin(double noundef %i.x) #3
  %i.bi = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bh, i64 1
  %i.bk = fneg <2 x double> %i.bj
  %i.bl = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = fmul <2 x double> %i.bl, %i.bk
  %i.bn = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bo, <2 x double> %i.bg) ; 2 uses
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ad, double %i.ae)
  %i.br = extractelement <2 x double> %i.bp, i64 0 ; 3 uses
  %i.bs = extractelement <2 x double> %i.bp, i64 1 ; 3 uses
  %i.bt = tail call double @atan2(double noundef %i.bs, double noundef %i.br) #3
  %i.bu = fmul double %i.bs, %i.bs
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.br, double %i.br, double %i.bu)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.bv)
  %i.bw = fdiv double %i.bq, %sqrt
  %i.bx = tail call double @atan(double noundef %i.bw) #3
  br label %bb.cg

bb.o:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !10
  switch i8 %i.bz, label %.thread [
    i8 73, label %bb.p
    i8 84, label %bb.x
  ]

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !10
  %i.cc = icmp eq i8 %i.cb, 78
  br i1 %i.cc, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cd = fcmp ogt double %i.ac, 1.000000e+00
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.s:                                             ; preds = %bb.q
  %i.ce = fsub double 1.000000e+00, %i.ac
  %i.cf = tail call double @sqrt(double noundef %i.ce) #3 ; 2 uses
  %i.cg = fmul double %i.ad, %i.z
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.cf, double %i.cg) ; 2 uses
  %i.ci = tail call double @llvm.fabs.f64(double %i.ch)
  %or.cond = fcmp ogt double %i.ci, 1.000000e+00
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.u:                                             ; preds = %bb.s
  %i.cj = tail call double @asin(double noundef %i.ch) #3
  %i.ck = fneg double %i.z
  %i.cl = fmul double %i.ae, %i.ck
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.cf, double %i.cl) ; 2 uses
  %i.cn = fcmp oeq double %i.cm, 0.000000e+00
  %i.co = fcmp oeq double %i.aa, 0.000000e+00
  %or.cond3 = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond3, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.w:                                             ; preds = %bb.u
  %i.cp = tail call double @atan2(double noundef %i.aa, double noundef %i.cm) #3
  %i.cq = fadd double %i.x, %i.cp
  br label %bb.cg

bb.x:                                             ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !10
  %i.ct = icmp eq i8 %i.cs, 71
  br i1 %i.ct, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cu = fsub double 4.000000e+00, %i.ac
  %i.cv = fadd double %i.ac, 4.000000e+00
  %i.cw = fdiv double %i.cu, %i.cv                ; 3 uses
  %i.cx = tail call double @llvm.fabs.f64(double %i.cw)
  %i.cy = fcmp ogt double %i.cx, 1.000000e+00
  br i1 %i.cy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.aa:                                            ; preds = %bb.y
  %i.cz = fmul double %i.z, %i.ad
  %i.da = fadd double %i.cw, 1.000000e+00         ; 2 uses
  %i.db = fmul double %i.cz, %i.da
  %i.dc = fmul double %i.db, 5.000000e-01
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.ae, double %i.dc) ; 2 uses
  %i.de = tail call double @llvm.fabs.f64(double %i.dd)
  %i.df = fcmp ogt double %i.de, 1.000000e+00
  br i1 %i.df, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.ac:                                            ; preds = %bb.aa
  %i.dg = tail call double @asin(double noundef %i.dd) #3 ; 6 uses
  %i.dh = tail call double @cos(double noundef %i.dg) #3 ; 2 uses
  %i.di = tail call double @llvm.fabs.f64(double %i.dh)
  %i.dj = fcmp olt double %i.di, 1.000000e-05
  br i1 %i.dj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.ae:                                            ; preds = %bb.ac
  %i.dk = fmul double %i.aa, %i.da
  %i.dl = fmul double %i.dh, 2.000000e+00
  %i.dm = fdiv double %i.dk, %i.dl                ; 2 uses
  %i.dn = tail call double @llvm.fabs.f64(double %i.dm)
  %i.do = fcmp ogt double %i.dn, 1.000000e+00
  br i1 %i.do, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.ag:                                            ; preds = %bb.ae
  %i.dp = tail call double @asin(double noundef %i.dm) #3 ; 4 uses
  %i.dq = tail call double @sin(double noundef %i.dg) #3
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.ae, double 1.000000e+00)
  %i.ds = tail call double @cos(double noundef %i.dg) #3
  %i.dt = fmul double %i.ad, %i.ds
  %i.du = tail call double @cos(double noundef %i.dp) #3
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.du, double %i.dr) ; 2 uses
  %i.dw = tail call double @llvm.fabs.f64(double %i.dv)
  %i.dx = fcmp olt double %i.dw, 1.000000e-05
  br i1 %i.dx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.ai:                                            ; preds = %bb.ag
  %i.dy = tail call double @sin(double noundef %i.dg) #3
  %i.dz = tail call double @cos(double noundef %i.dg) #3
  %i.ea = fmul double %i.ae, %i.dz
  %i.eb = tail call double @cos(double noundef %i.dp) #3
  %i.ec = fneg double %i.eb
  %i.ed = fmul double %i.ea, %i.ec
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.ad, double %i.ed)
  %i.ef = fmul double %i.ee, 2.000000e+00
  %i.eg = fdiv double %i.ef, %i.dv
  %i.eh = fsub double %i.eg, %i.z
  %i.ei = tail call double @llvm.fabs.f64(double %i.eh)
  %i.ej = fcmp ogt double %i.ei, 1.000000e-05
  %i.ek = fsub double f0x400921FB54442D1C, %i.dp
  %.0349 = select i1 %i.ej, double %i.ek, double %i.dp
  %i.el = fadd double %i.x, %.0349
  br label %bb.cg

.thread:                                          ; preds = %bb.o, %bb.p, %bb.x
  store i32 504, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.aj:                                            ; preds = %bb.f
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.en = load i8, ptr %i.em, align 1, !tbaa !10
  switch i8 %i.en, label %.thread378 [
    i8 82, label %bb.ak
    i8 73, label %bb.au
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !10
  %i.eq = icmp eq i8 %i.ep, 67
  br i1 %i.eq, label %bb.al, label %.thread378

bb.al:                                            ; preds = %bb.ak
  %i.er = fcmp ult double %i.ac, f0x4023BD3CC9BE45E4
  br i1 %i.er, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.an:                                            ; preds = %bb.al
  %sqrt379 = tail call double @llvm.sqrt.f64(double %i.ac) ; 3 uses
  %i.es = tail call double @cos(double noundef %sqrt379) #3 ; 2 uses
  %i.et = fcmp une double %i.ac, 0.000000e+00
  br i1 %i.et, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eu = tail call double @sin(double noundef %sqrt379) #3
  %i.ev = fdiv double %i.eu, %sqrt379
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.0351 = phi double [ %i.ev, %bb.ao ], [ 1.000000e+00, %bb.an ] ; 2 uses
  %i.ew = fmul double %i.z, %i.ad
  %i.ex = fmul double %i.ae, %i.es
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ew, double %.0351, double %i.ex) ; 3 uses
  %i.ez = tail call double @llvm.fabs.f64(double %i.ey)
  %or.cond5 = fcmp ogt double %i.ez, 1.000000e+00
  br i1 %or.cond5, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.ar:                                            ; preds = %bb.ap
  %i.fa = tail call double @asin(double noundef %i.ey) #3
  %i.fb = fneg double %i.ey
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.fb, double %i.ae, double %i.es) ; 2 uses
  %i.fd = fmul double %i.aa, %.0351
  %i.fe = fmul double %i.ad, %i.fd                ; 2 uses
  %i.ff = fcmp oeq double %i.fc, 0.000000e+00
  %i.fg = fcmp oeq double %i.fe, 0.000000e+00
  %or.cond7 = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %or.cond7, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.at:                                            ; preds = %bb.ar
  %i.fh = tail call double @atan2(double noundef %i.fe, double noundef %i.fc) #3
  %i.fi = fadd double %i.x, %i.fh
  br label %bb.cg

bb.au:                                            ; preds = %bb.aj
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !10
  %i.fl = icmp eq i8 %i.fk, 84
  br i1 %i.fl, label %bb.av, label %.thread378

bb.av:                                            ; preds = %bb.au
  %i.fm = fneg double %i.m
  %i.fn = insertelement <2 x double> poison, double %7, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %6, i64 1 ; 2 uses
  %i.fp = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.m, i64 1
  %i.fr = fmul <2 x double> %i.fo, %i.fq
  %i.fs = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ft = insertelement <2 x double> poison, double %i.l, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.fu, <2 x double> %i.fr) ; 2 uses
  %i.fw = fcmp oeq <2 x double> %i.fv, zeroinitializer
  %i.fx = fmul <2 x double> %i.fv, splat (double f0x3F91DF46A252DD11)
  %i.fy = select <2 x i1> %i.fw, <2 x double> splat (double f0x3F91DF46A252DD11), <2 x double> %i.fx ; 4 uses
  %i.fz = extractelement <2 x double> %i.fy, i64 1
  %i.ga = fadd double %.scalar, %i.fz             ; 2 uses
  %i.gb = tail call double @sin(double noundef %i.ga) #3
  %i.gc = tail call double @cos(double noundef %i.ga) #3
  %i.gd = fadd double %i.gc, 1.000000e+00
  %i.ge = fmul double %i.gd, 5.000000e-01
  %i.gf = tail call double @sqrt(double noundef %i.ge) #3
  %i.gg = tail call double @sin(double noundef %.scalar) #3
  %i.gh = tail call double @cos(double noundef %.scalar) #3
  %i.gi = fadd double %i.gh, 1.000000e+00
  %i.gj = fmul double %i.gi, 5.000000e-01
  %i.gk = tail call double @sqrt(double noundef %i.gj) #3
  %i.gl = tail call double @cos(double noundef %.scalar) #3
  %i.gm = extractelement <2 x double> %i.fy, i64 0
  %i.gn = fmul double %i.gm, 5.000000e-01         ; 2 uses
  %i.go = tail call double @sin(double noundef %i.gn) #3
  %i.gp = tail call double @cos(double noundef %.scalar) #3
  %i.gq = tail call double @cos(double noundef %i.gn) #3
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gp, double %i.gq, double 1.000000e+00)
  %i.gs = fmul double %i.gr, 5.000000e-01
  %i.gt = tail call double @sqrt(double noundef %i.gs) #3
  %i.gu = tail call double @sin(double noundef %.scalar) #3
  %i.gv = tail call double @cos(double noundef %.scalar) #3
  %i.gw = fadd double %i.gv, 1.000000e+00
  %i.gx = fmul double %i.gw, 5.000000e-01
  %i.gy = tail call double @sqrt(double noundef %i.gx) #3
  %i.gz = fcmp une <2 x double> %i.y, zeroinitializer ; 2 uses
  %13 = extractelement <2 x i1> %i.gz, i64 0
  %14 = extractelement <2 x i1> %i.gz, i64 1
  %or.cond10 = select i1 %13, i1 true, i1 %14
  br i1 %or.cond10, label %bb.aw, label %bb.cg

bb.aw:                                            ; preds = %bb.av
  %i.ha = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hb = extractelement <2 x double> %i.fy, i64 0
  %i.hc = fmul double %i.hb, %i.gt
  %i.hd = insertelement <2 x double> %i.ha, double %i.hc, i64 1
  %i.he = fdiv double %i.gb, %i.gf
  %i.hf = fdiv double %i.gg, %i.gk
  %i.hg = fsub double %i.he, %i.hf
  %i.hh = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hi = fmul double %i.gl, 2.000000e+00
  %i.hj = fmul double %i.hi, %i.go
  %i.hk = insertelement <2 x double> %i.hh, double %i.hj, i64 1 ; 2 uses
  %i.hl = fcmp oeq <2 x double> %i.hk, zeroinitializer
  %i.hm = select <2 x i1> %i.hl, <2 x double> splat (double 1.000000e+00), <2 x double> %i.hk
  %i.hn = fdiv <2 x double> %i.hd, %i.hm          ; 3 uses
  %i.ho = shufflevector <2 x double> %i.hn, <2 x double> %i.y, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.hp = insertelement <2 x double> %i.ho, double %i.gu, i64 0
  %i.hq = fmul <2 x double> %i.ho, %i.hp
  %i.hr = extractelement <2 x double> %i.hn, i64 1 ; 3 uses
  %i.hs = fmul double %i.hr, 4.000000e+00
  %i.ht = fmul double %i.hr, %i.hs
  %i.hu = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hv = insertelement <2 x double> %i.hu, double %i.ht, i64 1
  %i.hw = fdiv <2 x double> %i.hq, %i.hv          ; 2 uses
  %i.hx = extractelement <2 x double> %i.hw, i64 1
  %i.hy = fsub double 4.000000e+00, %i.hx
  %i.hz = extractelement <2 x double> %i.hw, i64 0
  %i.ia = fadd double %i.z, %i.hz                 ; 2 uses
  %i.ib = extractelement <2 x double> %i.hn, i64 0 ; 2 uses
  %i.ic = fdiv double %i.ia, %i.ib                ; 2 uses
  %i.id = fneg double %i.ic
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.id, double %i.ic, double %i.hy) ; 3 uses
  %i.if = fcmp ogt double %i.ie, 4.000000e+00
  %i.ig = fcmp olt double %i.ie, 2.000000e+00
  %or.cond12 = or i1 %i.if, %i.ig
  br i1 %or.cond12, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.ay:                                            ; preds = %bb.aw
  %i.ih = tail call double @sqrt(double noundef %i.ie) #3
  %i.ii = fmul double %i.ih, 5.000000e-01         ; 2 uses
  %i.ij = fmul double %i.ia, %i.ii
  %i.ik = fdiv double %i.ij, %i.ib                ; 2 uses
  %i.il = tail call double @llvm.fabs.f64(double %i.ik)
  %i.im = fcmp ogt double %i.il, 1.000000e+00
  br i1 %i.im, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.ba:                                            ; preds = %bb.ay
  %i.in = tail call double @asin(double noundef %i.ik) #3 ; 2 uses
  %i.io = tail call double @cos(double noundef %i.in) #3 ; 2 uses
  %i.ip = tail call double @llvm.fabs.f64(double %i.io)
  %i.iq = fcmp olt double %i.ip, 1.000000e-05
  br i1 %i.iq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.bc:                                            ; preds = %bb.ba
  %i.ir = fmul double %i.aa, %i.ii
  %i.is = fmul double %i.hr, 2.000000e+00
  %i.it = fmul double %i.is, %i.io
  %i.iu = fdiv double %i.ir, %i.it                ; 2 uses
  %i.iv = tail call double @llvm.fabs.f64(double %i.iu)
  %i.iw = fcmp ogt double %i.iv, 1.000000e+00
  br i1 %i.iw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.be:                                            ; preds = %bb.bc
  %i.ix = tail call double @asin(double noundef %i.iu) #3
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.ix, double 2.000000e+00, double %i.x)
  br label %bb.cg

.thread378:                                       ; preds = %bb.aj, %bb.ak, %bb.au
  store i32 504, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.bf:                                            ; preds = %bb.f
  %i.iz = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !10
  %.not372 = icmp eq i8 %i.ja, 67
  br i1 %.not372, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !10
  %.not373 = icmp eq i8 %i.jc, 80
  br i1 %.not373, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  store i32 504, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.bi:                                            ; preds = %bb.bg
  %i.jd = fneg double %i.z
  %i.je = tail call double @llvm.fmuladd.f64(double %i.jd, double %i.ae, double %i.ad) ; 3 uses
  %i.jf = fcmp oeq double %i.je, 0.000000e+00
  br i1 %i.jf, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.bk:                                            ; preds = %bb.bi
  %i.jg = tail call double @atan2(double noundef %i.aa, double noundef %i.je) #3
  %i.jh = fadd double %i.x, %i.jg                 ; 3 uses
  %i.ji = fsub double %i.jh, %i.x
  %i.jj = tail call double @cos(double noundef %i.ji) #3 ; 2 uses
  %i.jk = fcmp oeq double %i.jj, 0.000000e+00
  br i1 %i.jk, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.bm:                                            ; preds = %bb.bk
  %i.jl = fdiv double %i.je, %i.jj                ; 2 uses
  %i.jm = tail call double @llvm.fabs.f64(double %i.jl)
  %or.cond14 = fcmp ogt double %i.jm, 1.000000e+00
  br i1 %or.cond14, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.bo:                                            ; preds = %bb.bm
  %i.jn = tail call double @acos(double noundef %i.jl) #3 ; 2 uses
  %i.jo = fcmp olt double %.scalar, 0.000000e+00
  br i1 %i.jo, label %bb.bp, label %bb.cg

bb.bp:                                            ; preds = %bb.bo
  %i.jp = fneg double %i.jn
  br label %bb.cg

bb.bq:                                            ; preds = %bb.f
  %i.jq = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !10
  %.not370 = icmp eq i8 %i.jr, 76
  br i1 %.not370, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.js = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !10
  %.not371 = icmp eq i8 %i.jt, 83
  br i1 %.not371, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  store i32 504, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.bt:                                            ; preds = %bb.br
  %i.ju = fadd double %.scalar, %i.z              ; 4 uses
  %i.jv = tail call double @llvm.fabs.f64(double %i.ju)
  %i.jw = fcmp ogt double %i.jv, f0x3FF921FB54442D1C
  br i1 %i.jw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.bv:                                            ; preds = %bb.bt
  %i.jx = tail call double @cos(double noundef %i.ju) #3 ; 3 uses
  %i.jy = tail call double @llvm.fabs.f64(double %i.aa)
  %i.jz = fmul double %i.jx, f0x401921FB54442D1C
  %i.ka = fmul double %i.jz, 5.000000e-01
  %i.kb = fcmp ogt double %i.jy, %i.ka
  br i1 %i.kb, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.bx:                                            ; preds = %bb.bv
  %i.kc = fcmp ogt double %i.jx, 1.000000e-05
  br i1 %i.kc, label %bb.by, label %bb.cg

bb.by:                                            ; preds = %bb.bx
  %i.kd = fdiv double %i.aa, %i.jx
  %i.ke = fadd double %i.x, %i.kd
  br label %bb.cg

bb.bz:                                            ; preds = %bb.f
  %i.kf = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !10
  %.not368 = icmp eq i8 %i.kg, 69
  br i1 %.not368, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.kh = getelementptr inbounds nuw i8, ptr %9, i64 3
end_hunk_0
