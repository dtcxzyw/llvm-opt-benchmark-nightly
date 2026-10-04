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
  %13 = tail call double @sin(double noundef %i.x) #3
  %14 = insertelement <2 x double> poison, double %i.av, i64 0
  %15 = insertelement <2 x double> %14, double %13, i64 1
  %16 = fneg <2 x double> %15
  %17 = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %18 = fmul <2 x double> %17, %16
  %19 = insertelement <2 x double> poison, double %i.ae, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %20, <2 x double> %i.bg) ; 2 uses
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ad, double %i.ae)
  %22 = extractelement <2 x double> %21, i64 0    ; 3 uses
  %23 = extractelement <2 x double> %21, i64 1    ; 3 uses
  %i.bi = tail call double @atan2(double noundef %23, double noundef %22) #3
  %i.bj = fmul double %23, %23
  %i.bk = tail call double @llvm.fmuladd.f64(double %22, double %22, double %i.bj)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.bk)
  %i.bl = fdiv double %i.bh, %sqrt
  %i.bm = tail call double @atan(double noundef %i.bl) #3
  br label %bb.cg

bb.o:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !10
  switch i8 %i.bo, label %.thread [
    i8 73, label %bb.p
    i8 84, label %bb.x
  ]

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !10
  %i.br = icmp eq i8 %i.bq, 78
  br i1 %i.br, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bs = fcmp ogt double %i.ac, 1.000000e+00
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.s:                                             ; preds = %bb.q
  %i.bt = fsub double 1.000000e+00, %i.ac
  %i.bu = tail call double @sqrt(double noundef %i.bt) #3 ; 2 uses
  %i.bv = fmul double %i.ad, %i.z
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.bu, double %i.bv) ; 2 uses
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw)
  %or.cond = fcmp ogt double %i.bx, 1.000000e+00
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.u:                                             ; preds = %bb.s
  %i.by = tail call double @asin(double noundef %i.bw) #3
  %i.bz = fneg double %i.z
  %i.ca = fmul double %i.ae, %i.bz
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.bu, double %i.ca) ; 2 uses
  %i.cc = fcmp oeq double %i.cb, 0.000000e+00
  %i.cd = fcmp oeq double %i.aa, 0.000000e+00
  %or.cond3 = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond3, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.w:                                             ; preds = %bb.u
  %i.ce = tail call double @atan2(double noundef %i.aa, double noundef %i.cb) #3
  %i.cf = fadd double %i.x, %i.ce
  br label %bb.cg

bb.x:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !10
  %i.ci = icmp eq i8 %i.ch, 71
  br i1 %i.ci, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cj = fsub double 4.000000e+00, %i.ac
  %i.ck = fadd double %i.ac, 4.000000e+00
  %i.cl = fdiv double %i.cj, %i.ck                ; 3 uses
  %i.cm = tail call double @llvm.fabs.f64(double %i.cl)
  %i.cn = fcmp ogt double %i.cm, 1.000000e+00
  br i1 %i.cn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.aa:                                            ; preds = %bb.y
  %i.co = fmul double %i.z, %i.ad
  %i.cp = fadd double %i.cl, 1.000000e+00         ; 2 uses
  %i.cq = fmul double %i.co, %i.cp
  %i.cr = fmul double %i.cq, 5.000000e-01
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.ae, double %i.cr) ; 2 uses
  %i.ct = tail call double @llvm.fabs.f64(double %i.cs)
  %i.cu = fcmp ogt double %i.ct, 1.000000e+00
  br i1 %i.cu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.ac:                                            ; preds = %bb.aa
  %i.cv = tail call double @asin(double noundef %i.cs) #3 ; 6 uses
  %i.cw = tail call double @cos(double noundef %i.cv) #3 ; 2 uses
  %i.cx = tail call double @llvm.fabs.f64(double %i.cw)
  %i.cy = fcmp olt double %i.cx, 1.000000e-05
  br i1 %i.cy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.ae:                                            ; preds = %bb.ac
  %i.cz = fmul double %i.aa, %i.cp
  %i.da = fmul double %i.cw, 2.000000e+00
  %i.db = fdiv double %i.cz, %i.da                ; 2 uses
  %i.dc = tail call double @llvm.fabs.f64(double %i.db)
  %i.dd = fcmp ogt double %i.dc, 1.000000e+00
  br i1 %i.dd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.ag:                                            ; preds = %bb.ae
  %i.de = tail call double @asin(double noundef %i.db) #3 ; 4 uses
  %i.df = tail call double @sin(double noundef %i.cv) #3
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.ae, double 1.000000e+00)
  %i.dh = tail call double @cos(double noundef %i.cv) #3
  %i.di = fmul double %i.ad, %i.dh
  %i.dj = tail call double @cos(double noundef %i.de) #3
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dj, double %i.dg) ; 2 uses
  %i.dl = tail call double @llvm.fabs.f64(double %i.dk)
  %i.dm = fcmp olt double %i.dl, 1.000000e-05
  br i1 %i.dm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.ai:                                            ; preds = %bb.ag
  %i.dn = tail call double @sin(double noundef %i.cv) #3
  %i.do = tail call double @cos(double noundef %i.cv) #3
  %i.dp = fmul double %i.ae, %i.do
  %i.dq = tail call double @cos(double noundef %i.de) #3
  %i.dr = fneg double %i.dq
  %i.ds = fmul double %i.dp, %i.dr
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.ad, double %i.ds)
  %i.du = fmul double %i.dt, 2.000000e+00
  %i.dv = fdiv double %i.du, %i.dk
  %i.dw = fsub double %i.dv, %i.z
  %i.dx = tail call double @llvm.fabs.f64(double %i.dw)
  %i.dy = fcmp ogt double %i.dx, 1.000000e-05
  %i.dz = fsub double f0x400921FB54442D1C, %i.de
  %.0349 = select i1 %i.dy, double %i.dz, double %i.de
  %i.ea = fadd double %i.x, %.0349
  br label %bb.cg

.thread:                                          ; preds = %bb.o, %bb.p, %bb.x
  store i32 504, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.aj:                                            ; preds = %bb.f
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !10
  switch i8 %i.ec, label %.thread378 [
    i8 82, label %bb.ak
    i8 73, label %bb.au
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !10
  %i.ef = icmp eq i8 %i.ee, 67
  br i1 %i.ef, label %bb.al, label %.thread378

bb.al:                                            ; preds = %bb.ak
  %i.eg = fcmp ult double %i.ac, f0x4023BD3CC9BE45E4
  br i1 %i.eg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.an:                                            ; preds = %bb.al
  %sqrt379 = tail call double @llvm.sqrt.f64(double %i.ac) ; 3 uses
  %i.eh = tail call double @cos(double noundef %sqrt379) #3 ; 2 uses
  %i.ei = fcmp une double %i.ac, 0.000000e+00
  br i1 %i.ei, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ej = tail call double @sin(double noundef %sqrt379) #3
  %i.ek = fdiv double %i.ej, %sqrt379
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.0351 = phi double [ %i.ek, %bb.ao ], [ 1.000000e+00, %bb.an ] ; 2 uses
  %i.el = fmul double %i.z, %i.ad
  %i.em = fmul double %i.ae, %i.eh
  %i.en = tail call double @llvm.fmuladd.f64(double %i.el, double %.0351, double %i.em) ; 3 uses
  %i.eo = tail call double @llvm.fabs.f64(double %i.en)
  %or.cond5 = fcmp ogt double %i.eo, 1.000000e+00
  br i1 %or.cond5, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 501, ptr %12, align 4, !tbaa !9
  br label %bb.ch

bb.ar:                                            ; preds = %bb.ap
  %i.ep = tail call double @asin(double noundef %i.en) #3
end_hunk_0
