Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/n1_15?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kdft_desc_s = type { i64, ptr, %struct.opcnt, ptr, i64, i64, i64, i64 }
%struct.opcnt = type { double, double, double, double }
%struct.kdft_genus = type { ptr, i64 }

@desc = internal constant %struct.kdft_desc_s { i64 15, ptr @.str, %struct.opcnt { double 1.280000e+02, double 2.800000e+01, double 2.800000e+01, double 0.000000e+00 }, ptr @fftw_dft_n_genus, i64 0, i64 0, i64 0, i64 0 }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [6 x i8] c"n1_15\00", align 1
@fftw_dft_n_genus = external constant %struct.kdft_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_n1_15(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kdft_register(ptr noundef %0, ptr noundef nonnull @n1_15, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kdft_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @n1_15(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp sgt i64 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0452 = phi ptr [ %0, %.lr.ph ], [ %i.ld, %bb.b ] ; 16 uses
  %.0440451 = phi ptr [ %1, %.lr.ph ], [ %i.le, %bb.b ] ; 16 uses
  %.0441450 = phi ptr [ %2, %.lr.ph ], [ %i.lf, %bb.b ] ; 16 uses
  %.0442449 = phi ptr [ %3, %.lr.ph ], [ %i.lg, %bb.b ] ; 16 uses
  %.0443448 = phi ptr [ %4, %.lr.ph ], [ %i.lh, %bb.b ] ; 15 uses
  %.0444447 = phi ptr [ %5, %.lr.ph ], [ %i.li, %bb.b ] ; 15 uses
  %.0445446 = phi i64 [ %6, %.lr.ph ], [ %i.lc, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.0452, align 8, !tbaa !13 ; 2 uses
  %i.d = load double, ptr %.0440451, align 8, !tbaa !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0443448, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %.0452, i64 %i.f
  %i.h = load double, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0443448, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %.0452, i64 %i.j
  %i.l = load double, ptr %i.k, align 8, !tbaa !13 ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %i.f
  %i.n = load double, ptr %i.m, align 8, !tbaa !13 ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %i.j
  %i.p = load double, ptr %i.o, align 8, !tbaa !13 ; 2 uses
  %i.q = insertelement <2 x double> poison, double %i.h, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.n, i64 1
  %i.s = insertelement <2 x double> poison, double %i.l, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.p, i64 1
  %i.u = fadd <2 x double> %i.r, %i.t             ; 3 uses
  %i.v = extractelement <2 x double> %i.u, i64 0
  %i.w = fadd double %i.c, %i.v                   ; 2 uses
  %i.x = extractelement <2 x double> %i.u, i64 1
  %i.y = insertelement <2 x double> poison, double %i.c, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.d, i64 1
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> splat (double -5.000000e-01), <2 x double> %i.z) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0443448, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.0452, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0443448, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.0452, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.0443448, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %.0452, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !13
  %i.an = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %i.ac
  %i.ao = load double, ptr %i.an, align 8, !tbaa !13 ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %i.ag
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !13 ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %i.ak
  %i.as = load double, ptr %i.ar, align 8, !tbaa !13 ; 2 uses
  %i.at = insertelement <2 x double> poison, double %i.ai, i64 0 ; 2 uses
  %i.au = insertelement <2 x double> %i.at, double %i.aq, i64 1
  %i.av = insertelement <2 x double> poison, double %i.am, i64 0 ; 2 uses
  %i.aw = insertelement <2 x double> %i.av, double %i.as, i64 1
  %i.ax = fadd <2 x double> %i.au, %i.aw          ; 3 uses
  %i.ay = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ao, i64 1
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> splat (double -5.000000e-01), <2 x double> %i.az) ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0443448, i64 72
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11 ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.0452, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !13 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0443448, i64 112
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !11 ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.0452, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %.0443448, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.0452, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !13
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %i.bc
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !13 ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %i.bg
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !13 ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %i.bk
  %i.bs = load double, ptr %i.br, align 8, !tbaa !13 ; 2 uses
  %i.bt = insertelement <2 x double> poison, double %i.bi, i64 0 ; 2 uses
  %i.bu = insertelement <2 x double> %i.bt, double %i.bq, i64 1
  %i.bv = insertelement <2 x double> poison, double %i.bm, i64 0 ; 2 uses
  %i.bw = insertelement <2 x double> %i.bv, double %i.bs, i64 1
  %i.bx = fadd <2 x double> %i.bu, %i.bw          ; 3 uses
  %i.by = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bo, i64 1
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> splat (double -5.000000e-01), <2 x double> %i.bz) ; 4 uses
  %i.cb = extractelement <2 x double> %i.ax, i64 1
  %i.cc = fadd double %i.ao, %i.cb                ; 2 uses
  %i.cd = extractelement <2 x double> %i.bx, i64 1
  %i.ce = fadd double %i.bo, %i.cd                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0443448, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !11 ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %.0452, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %.0443448, i64 64
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %.0452, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !13 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0443448, i64 104
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !11 ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %.0452, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !13 ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %i.cg
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !13 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %i.ck
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !13 ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %i.co
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !13 ; 2 uses
  %i.cx = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cu, i64 1
  %i.cz = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cw, i64 1
  %i.db = fadd <2 x double> %i.cy, %i.da          ; 3 uses
  %i.dc = insertelement <2 x double> poison, double %i.ci, i64 0 ; 2 uses
  %i.dd = insertelement <2 x double> %i.dc, double %i.cs, i64 1
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> splat (double -5.000000e-01), <2 x double> %i.dd) ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0443448, i64 96
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !11 ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %.0452, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !13
  %i.dj = getelementptr inbounds nuw i8, ptr %.0443448, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !11 ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %.0452, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !13 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0443448, i64 56
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !11 ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %.0452, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !13 ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %i.dg
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !13 ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %i.dk
  %i.du = load double, ptr %i.dt, align 8, !tbaa !13 ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %i.do
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !13 ; 2 uses
  %i.dx = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %i.du, i64 1
  %i.dz = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.dw, i64 1
  %i.eb = fadd <2 x double> %i.dy, %i.ea          ; 3 uses
  %i.ec = insertelement <2 x double> poison, double %i.di, i64 0 ; 2 uses
  %i.ed = insertelement <2 x double> %i.ec, double %i.ds, i64 1
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> splat (double -5.000000e-01), <2 x double> %i.ed) ; 4 uses
  %i.ef = extractelement <2 x double> %i.db, i64 1
  %i.eg = extractelement <2 x double> %i.eb, i64 1
  %i.eh = fadd double %i.ds, %i.eg                ; 2 uses
  %i.ei = fsub double %i.cc, %i.ce                ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0444447, i64 72
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !11 ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %.0444447, i64 48
  %i.en = load i64, ptr %i.em, align 8, !tbaa !11 ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %.0444447, i64 96
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !11 ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %.0444447, i64 24
  %i.et = load i64, ptr %i.es, align 8, !tbaa !11 ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %i.et
  %i.ev = fadd double %i.d, %i.x                  ; 2 uses
  %i.ew = fadd double %i.cc, %i.ce                ; 2 uses
  %i.ex = fadd double %i.cs, %i.ef                ; 2 uses
  %i.ey = fadd double %i.ex, %i.eh                ; 2 uses
  %i.ez = fsub double %i.ex, %i.eh                ; 2 uses
  %i.fa = fmul double %i.ez, f0xBFE2CF2304755A5E
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.ei, double f0x3FEE6F0E134454FF, double %i.fa) ; 2 uses
  %i.fc = fmul double %i.ei, f0x3FE2CF2304755A5E
  %i.fd = fadd double %i.ew, %i.ey                ; 2 uses
  %i.fe = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.fd, i64 1
  %i.fg = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.ev, i64 1
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> <double f0x3FEE6F0E134454FF, double -2.500000e-01>, <2 x double> %i.fh) ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 0 ; 2 uses
  %i.fk = fsub double %i.ey, %i.ew
  %i.fl = fmul double %i.fk, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.fm = insertelement <2 x double> %i.dc, double %i.ae, i64 1
  %i.fn = shufflevector <2 x double> %i.db, <2 x double> %i.ax, <2 x i32> <i32 0, i32 2>
  %i.fo = fadd <2 x double> %i.fm, %i.fn          ; 3 uses
  %i.fp = insertelement <2 x double> %i.ec, double %i.be, i64 1
  %i.fq = shufflevector <2 x double> %i.eb, <2 x double> %i.bx, <2 x i32> <i32 0, i32 2>
  %i.fr = fadd <2 x double> %i.fp, %i.fq          ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.fo, %i.fr
  %i.fs = extractelement <2 x double> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop454 = fadd <2 x double> %i.fo, %i.fr
  %i.ft = extractelement <2 x double> %foldExtExtBinop454, i64 0 ; 2 uses
  %i.fu = fsub double %i.ft, %i.fs
  %i.fv = fmul double %i.fu, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.fw = fadd double %i.fs, %i.ft                ; 2 uses
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fw, double -2.500000e-01, double %i.w) ; 2 uses
  %i.fy = fadd double %i.w, %i.fw
  store double %i.fy, ptr %.0441450, align 8, !tbaa !13
  %i.fz = fadd double %i.fv, %i.fx                ; 2 uses
  %i.ga = fsub double %i.fx, %i.fv                ; 2 uses
  %i.gb = fsub double %i.fz, %i.fj
  store double %i.gb, ptr %i.el, align 8, !tbaa !13
  %i.gc = fadd double %i.fz, %i.fj
  store double %i.gc, ptr %i.eo, align 8, !tbaa !13
  %i.gd = fsub double %i.ga, %i.fb
  store double %i.gd, ptr %i.er, align 8, !tbaa !13
  %i.ge = fadd double %i.ga, %i.fb
  store double %i.ge, ptr %i.eu, align 8, !tbaa !13
  %i.gf = fsub <2 x double> %i.fo, %i.fr          ; 2 uses
  %i.gg = fmul <2 x double> %i.gf, <double f0xBFE2CF2304755A5E, double f0x3FE2CF2304755A5E>
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.gh) ; 2 uses
  %i.gj = fadd double %i.ev, %i.fd
  store double %i.gj, ptr %.0442449, align 8, !tbaa !13
  %i.gk = extractelement <2 x double> %i.fi, i64 1 ; 2 uses
  %i.gl = fadd double %i.fl, %i.gk                ; 2 uses
  %i.gm = extractelement <2 x double> %i.gi, i64 0 ; 2 uses
  %i.gn = fsub double %i.gl, %i.gm
  %i.go = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %i.en
  store double %i.gn, ptr %i.go, align 8, !tbaa !13
  %i.gp = fadd double %i.gm, %i.gl
  %i.gq = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %i.ek
  store double %i.gp, ptr %i.gq, align 8, !tbaa !13
  %i.gr = fsub double %i.gk, %i.fl                ; 2 uses
  %i.gs = extractelement <2 x double> %i.gi, i64 1 ; 2 uses
  %i.gt = fsub double %i.gr, %i.gs
  %i.gu = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %i.et
  store double %i.gt, ptr %i.gu, align 8, !tbaa !13
  %i.gv = fadd double %i.gs, %i.gr
  %i.gw = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %i.eq
  store double %i.gv, ptr %i.gw, align 8, !tbaa !13
  %i.gx = getelementptr inbounds nuw i8, ptr %.0444447, i64 40
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !11 ; 2 uses
  %i.gz = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %.0444447, i64 112
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !11 ; 2 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %.0444447, i64 88
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !11 ; 2 uses
  %i.hf = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %.0444447, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !11 ; 2 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %.0444447, i64 64
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !11 ; 2 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %i.hk
  %i.hm = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.aq, i64 1
  %i.ho = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.as, i64 1
  %i.hq = fsub <2 x double> %i.hn, %i.hp
  %i.hr = fmul <2 x double> %i.hq, splat (double f0x3FEBB67AE8584CAA) ; 3 uses
  %shift = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop456 = fadd <2 x double> %i.ba, %shift ; 2 uses
  %i.hs = shufflevector <2 x double> %i.de, <2 x double> %i.ba, <2 x i32> <i32 0, i32 2>
  %i.ht = fsub <2 x double> %i.hs, %i.hr          ; 3 uses
  %i.hu = insertelement <2 x double> poison, double %i.du, i64 0
  %i.hv = insertelement <2 x double> %i.hu, double %i.bq, i64 1
  %i.hw = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.hx = insertelement <2 x double> %i.hw, double %i.bs, i64 1
  %i.hy = fsub <2 x double> %i.hv, %i.hx
  %i.hz = fmul <2 x double> %i.hy, splat (double f0x3FEBB67AE8584CAA) ; 3 uses
  %i.ia = shufflevector <2 x double> %i.ee, <2 x double> %i.ca, <2 x i32> <i32 0, i32 2>
  %i.ib = fsub <2 x double> %i.ia, %i.hz          ; 3 uses
  %i.ic = fsub <2 x double> %i.ht, %i.ib          ; 2 uses
  %i.id = fmul <2 x double> %i.ic, <double f0xBFE2CF2304755A5E, double f0x3FE2CF2304755A5E>
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.if = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.ie) ; 2 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %i.gy
  %i.ih = extractelement <2 x double> %i.if, i64 0 ; 2 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %i.he
  %i.ij = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %i.hb
  %i.ik = extractelement <2 x double> %i.if, i64 1 ; 2 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %i.hh
  %i.im = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %i.hk
  %foldExtExtBinop458 = fadd <2 x double> %i.de, %i.hr ; 2 uses
  %foldExtExtBinop460 = fadd <2 x double> %i.ee, %i.hz ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.0444447, i64 80
  %i.io = load i64, ptr %i.in, align 8, !tbaa !11 ; 2 uses
  %i.ip = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %.0444447, i64 56
  %i.ir = getelementptr inbounds nuw i8, ptr %.0444447, i64 104
  %i.is = getelementptr inbounds nuw i8, ptr %.0444447, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %.0444447, i64 32
  %shift462 = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop463 = fadd <2 x double> %i.ca, %shift462 ; 2 uses
  %foldExtExtBinop465 = fadd <2 x double> %foldExtExtBinop456, %foldExtExtBinop463 ; 2 uses
  %foldExtExtBinop467 = fadd <2 x double> %foldExtExtBinop458, %foldExtExtBinop460 ; 2 uses
  %foldExtExtBinop469 = fsub <2 x double> %foldExtExtBinop458, %foldExtExtBinop460 ; 2 uses
  %i.iu = extractelement <2 x double> %foldExtExtBinop469, i64 0
  %foldExtExtBinop471 = fsub <2 x double> %foldExtExtBinop456, %foldExtExtBinop463 ; 2 uses
  %i.iv = extractelement <2 x double> %foldExtExtBinop471, i64 0
  %i.iw = fmul double %i.iv, f0x3FE2CF2304755A5E
  %i.ix = fmul double %i.iu, f0xBFE2CF2304755A5E
  %foldExtExtBinop473 = fadd <2 x double> %foldExtExtBinop465, %foldExtExtBinop467 ; 2 uses
  %i.iy = shufflevector <2 x double> %foldExtExtBinop471, <2 x double> %foldExtExtBinop473, <2 x i32> <i32 0, i32 2>
  %i.iz = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.ja = load i64, ptr %i.iq, align 8, !tbaa !11 ; 2 uses
  %i.jb = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %i.ja
  %foldExtExtBinop475 = fsub <2 x double> %foldExtExtBinop467, %foldExtExtBinop465
  %i.jc = extractelement <2 x double> %foldExtExtBinop475, i64 0
  %i.jd = fmul double %i.jc, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.je = insertelement <2 x double> %i.bv, double %i.dq, i64 1
  %i.jf = insertelement <2 x double> %i.bt, double %i.dm, i64 1
  %i.jg = fsub <2 x double> %i.je, %i.jf
  %i.jh = fmul <2 x double> %i.jg, splat (double f0x3FEBB67AE8584CAA) ; 3 uses
  %foldExtExtBinop477 = fsub <2 x double> %i.ee, %i.jh ; 2 uses
  %i.ji = insertelement <2 x double> %i.av, double %i.cq, i64 1
  %i.jj = insertelement <2 x double> %i.at, double %i.cm, i64 1
  %i.jk = fsub <2 x double> %i.ji, %i.jj
  %i.jl = fmul <2 x double> %i.jk, splat (double f0x3FEBB67AE8584CAA) ; 3 uses
  %shift479 = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop480 = fsub <2 x double> %shift479, %i.jl ; 2 uses
  %i.jm = shufflevector <2 x double> %i.ca, <2 x double> %i.ee, <2 x i32> <i32 1, i32 3>
  %i.jn = fadd <2 x double> %i.jh, %i.jm          ; 3 uses
  %foldExtExtBinop482 = fsub <2 x double> %i.de, %i.jl ; 2 uses
  %i.jo = shufflevector <2 x double> %i.ba, <2 x double> %i.de, <2 x i32> <i32 1, i32 3>
  %i.jp = fadd <2 x double> %i.jl, %i.jo          ; 3 uses
  %shift484 = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop485 = fsub <2 x double> %shift484, %i.jh ; 2 uses
  %foldExtExtBinop485.a = fsub <2 x double> %foldExtExtBinop480, %foldExtExtBinop485 ; 2 uses
  %foldExtExtBinop503 = fsub <2 x double> %foldExtExtBinop482, %foldExtExtBinop477 ; 2 uses
  %i.jq = extractelement <2 x double> %foldExtExtBinop503, i64 1
  %9 = fmul double %i.jq, f0xBFE2CF2304755A5E
  %10 = shufflevector <2 x double> %foldExtExtBinop503, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop489 = fadd <2 x double> %i.jp, %i.jn
  %11 = extractelement <2 x double> %foldExtExtBinop489, i64 0 ; 2 uses
  %foldExtExtBinop491 = fadd <2 x double> %i.jp, %i.jn
  %12 = extractelement <2 x double> %foldExtExtBinop491, i64 1 ; 2 uses
  %13 = shufflevector <2 x double> %i.ht, <2 x double> %foldExtExtBinop482, <2 x i32> <i32 0, i32 3>
  %14 = shufflevector <2 x double> %i.ib, <2 x double> %foldExtExtBinop477, <2 x i32> <i32 0, i32 3>
  %15 = fadd <2 x double> %13, %14                ; 3 uses
  %16 = shufflevector <2 x double> %i.ht, <2 x double> %foldExtExtBinop480, <2 x i32> <i32 1, i32 2>
  %17 = shufflevector <2 x double> %i.ib, <2 x double> %foldExtExtBinop485, <2 x i32> <i32 1, i32 2>
  %18 = fadd <2 x double> %16, %17                ; 3 uses
  %foldExtExtBinop493 = fsub <2 x double> %15, %18
  %19 = extractelement <2 x double> %foldExtExtBinop493, i64 0
  %20 = fmul double %19, f0x3FE1E3779B97F4A8      ; 2 uses
  %21 = fadd <2 x double> %18, %15                ; 3 uses
  %22 = insertelement <2 x double> poison, double %i.n, i64 0
  %23 = insertelement <2 x double> %22, double %i.l, i64 1
  %24 = insertelement <2 x double> poison, double %i.p, i64 0
  %i.jr = insertelement <2 x double> %24, double %i.h, i64 1
  %25 = fsub <2 x double> %23, %i.jr
  %26 = fmul <2 x double> %25, splat (double f0x3FEBB67AE8584CAA) ; 3 uses
  %i.js = fadd <2 x double> %26, %i.aa
  %27 = extractelement <2 x double> %i.js, i64 1  ; 2 uses
  %28 = insertelement <2 x double> poison, double %27, i64 0
  %29 = fsub <2 x double> %i.aa, %26              ; 3 uses
  %i.jt = fadd <2 x double> %i.aa, %26            ; 2 uses
  %foldExtExtBinop491.a = fadd <2 x double> %29, %21 ; 2 uses
  %i.ju = extractelement <2 x double> %foldExtExtBinop491.a, i64 0
  store double %i.ju, ptr %i.gz, align 8, !tbaa !13
  %30 = insertelement <2 x double> %28, double %i.iw, i64 1
  %i.jv = shufflevector <2 x double> %i.iz, <2 x double> %i.jt, <2 x i32> <i32 0, i32 2>
  %31 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> <double f0x3FEE6F0E134454FF, double -2.500000e-01>, <2 x double> %i.jv) ; 2 uses
  %32 = extractelement <2 x double> %31, i64 0    ; 2 uses
  %33 = shufflevector <2 x double> %10, <2 x double> %21, <2 x i32> <i32 0, i32 3>
  %i.jw = fsub <2 x double> %15, %18
  %34 = extractelement <2 x double> %i.jw, i64 1
  %35 = fmul double %34, f0x3FE1E3779B97F4A8      ; 2 uses
  %36 = shufflevector <2 x double> %21, <2 x double> %foldExtExtBinop485.a, <2 x i32> <i32 0, i32 2>
  %37 = shufflevector <2 x double> %foldExtExtBinop485.a, <2 x double> %29, <2 x i32> <i32 0, i32 3>
  %i.jx = fmul <2 x double> %37, <double f0x3FE2CF2304755A5E, double 1.000000e+00>
  %38 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %33, <2 x double> <double f0x3FEE6F0E134454FF, double -2.500000e-01>, <2 x double> %i.jx) ; 2 uses
  %i.jy = extractelement <2 x double> %38, i64 0  ; 2 uses
  %39 = extractelement <2 x double> %38, i64 1    ; 2 uses
  %i.jz = fadd double %35, %39                    ; 2 uses
  %40 = fsub double %i.jz, %i.ih
  %41 = fadd double %i.ih, %i.jz
  %42 = fsub double %39, %35                      ; 2 uses
  %43 = fadd double %i.ik, %42
  %44 = fsub double %42, %i.ik
  %i.ka = fsub double %12, %11
  %45 = fmul double %i.ka, f0x3FE1E3779B97F4A8    ; 2 uses
  %i.kb = fadd double %11, %12                    ; 2 uses
  %46 = insertelement <2 x double> poison, double %i.kb, i64 0
  %47 = fadd double %27, %i.kb
  %48 = insertelement <2 x double> %29, double %9, i64 1
  %49 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %48) ; 2 uses
  %50 = extractelement <2 x double> %49, i64 0    ; 2 uses
  %51 = fadd double %20, %50                      ; 2 uses
  %52 = fsub double %50, %20                      ; 2 uses
  %i.kc = extractelement <2 x double> %49, i64 1  ; 2 uses
  %53 = fsub double %52, %i.kc
  %54 = fadd double %i.kc, %52
  %55 = fsub double %51, %i.jy
  store double %55, ptr %i.hc, align 8, !tbaa !13
  %56 = fadd double %i.jy, %51
  store double %56, ptr %i.hf, align 8, !tbaa !13
  store double %53, ptr %i.hi, align 8, !tbaa !13
  store double %54, ptr %i.hl, align 8, !tbaa !13
  %57 = extractelement <2 x double> %foldExtExtBinop491.a, i64 1
  store double %57, ptr %i.ig, align 8, !tbaa !13
  store double %40, ptr %i.ii, align 8, !tbaa !13
  store double %41, ptr %i.ij, align 8, !tbaa !13
  store double %43, ptr %i.il, align 8, !tbaa !13
  store double %44, ptr %i.im, align 8, !tbaa !13
  %58 = shufflevector <2 x double> %46, <2 x double> %foldExtExtBinop469, <2 x i32> <i32 0, i32 2>
  %59 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %58, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %30) ; 2 uses
  store double %47, ptr %i.ip, align 8, !tbaa !13
  %60 = extractelement <2 x double> %59, i64 0    ; 2 uses
  %61 = fsub double %60, %45                      ; 2 uses
  %62 = fadd double %32, %61
  store double %62, ptr %i.jb, align 8, !tbaa !13
  %63 = fsub double %61, %32
  %64 = load i64, ptr %i.ir, align 8, !tbaa !11   ; 2 uses
  %65 = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %64
  store double %63, ptr %65, align 8, !tbaa !13
  %66 = fadd double %45, %60                      ; 2 uses
  %i.kd = extractelement <2 x double> %59, i64 1  ; 2 uses
  %i.ke = fsub double %66, %i.kd
  %i.kf = load i64, ptr %i.is, align 8, !tbaa !11 ; 2 uses
  %i.kg = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %i.kf
  store double %i.ke, ptr %i.kg, align 8, !tbaa !13
  %i.kh = fadd double %i.kd, %66
  %i.ki = load i64, ptr %i.it, align 8, !tbaa !11 ; 2 uses
  %i.kj = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %i.ki
  store double %i.kh, ptr %i.kj, align 8, !tbaa !13
  %i.kk = fsub <2 x double> %i.jp, %i.jn          ; 2 uses
  %i.kl = fmul <2 x double> %i.kk, <double f0x3FE2CF2304755A5E, double f0xBFE2CF2304755A5E>
  %i.km = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kk, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.km) ; 2 uses
  %foldExtExtBinop501 = fadd <2 x double> %i.jt, %foldExtExtBinop473
  %67 = extractelement <2 x double> %foldExtExtBinop501, i64 0
  %i.ko = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %i.io
  store double %67, ptr %i.ko, align 8, !tbaa !13
  %i.kp = extractelement <2 x double> %31, i64 1  ; 2 uses
  %i.kq = fsub double %i.kp, %i.jd                ; 2 uses
  %i.kr = extractelement <2 x double> %i.kn, i64 0 ; 2 uses
  %i.ks = fsub double %i.kq, %i.kr
  %i.kt = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %i.ja
  store double %i.ks, ptr %i.kt, align 8, !tbaa !13
  %i.ku = fadd double %i.kr, %i.kq
  %i.kv = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %64
  store double %i.ku, ptr %i.kv, align 8, !tbaa !13
  %i.kw = fadd double %i.jd, %i.kp                ; 2 uses
  %i.kx = extractelement <2 x double> %i.kn, i64 1 ; 2 uses
  %i.ky = fsub double %i.kw, %i.kx
  %i.kz = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %i.ki
  store double %i.ky, ptr %i.kz, align 8, !tbaa !13
  %i.la = fadd double %i.kx, %i.kw
  %i.lb = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %i.kf
  store double %i.la, ptr %i.lb, align 8, !tbaa !13
  %i.lc = add nsw i64 %.0445446, -1
  %i.ld = getelementptr inbounds [8 x i8], ptr %.0452, i64 %7
  %i.le = getelementptr inbounds [8 x i8], ptr %.0440451, i64 %7
  %i.lf = getelementptr inbounds [8 x i8], ptr %.0441450, i64 %8
  %i.lg = getelementptr inbounds [8 x i8], ptr %.0442449, i64 %8
  %i.lh = getelementptr inbounds [8 x i8], ptr %.0443448, i64 %i.b
  %i.li = getelementptr inbounds [8 x i8], ptr %.0444447, i64 %i.b
  %i.lj = icmp samesign ugt i64 %.0445446, 1
  br i1 %i.lj, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !14}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
