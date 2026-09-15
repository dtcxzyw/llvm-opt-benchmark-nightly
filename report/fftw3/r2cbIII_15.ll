Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cbIII_15?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 15, ptr @.str, %struct.opcnt { double 4.900000e+01, double 1.100000e+01, double 1.500000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cbIII_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [11 x i8] c"r2cbIII_15\00", align 1
@fftw_rdft_r2cbIII_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cbIII_15(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cbIII_15, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cbIII_15(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0211 = phi ptr [ %0, %.lr.ph ], [ %i.gb, %bb.b ] ; 9 uses
  %.0197210 = phi ptr [ %1, %.lr.ph ], [ %i.gc, %bb.b ] ; 8 uses
  %.0198209 = phi ptr [ %2, %.lr.ph ], [ %i.gd, %bb.b ] ; 9 uses
  %.0199208 = phi ptr [ %3, %.lr.ph ], [ %i.ge, %bb.b ] ; 8 uses
  %.0200207 = phi ptr [ %4, %.lr.ph ], [ %i.gf, %bb.b ] ; 8 uses
  %.0201206 = phi ptr [ %5, %.lr.ph ], [ %i.gg, %bb.b ] ; 8 uses
  %.0202205 = phi ptr [ %6, %.lr.ph ], [ %i.gh, %bb.b ] ; 7 uses
  %.0203204 = phi i64 [ %7, %.lr.ph ], [ %i.ga, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0202205, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %.0199208, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0202205, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds [8 x i8], ptr %.0199208, i64 %i.h
  %i.j = load double, ptr %i.i, align 8, !tbaa !13 ; 2 uses
  %i.k = insertelement <2 x double> poison, double %i.f, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.j, i64 1
  %i.m = fmul <2 x double> %i.l, <double f0xBFF2CF2304755A5E, double f0x3FF2CF2304755A5E>
  %i.n = insertelement <2 x double> poison, double %i.j, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.f, i64 1
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> splat (double f0x3FFE6F0E134454FF), <2 x double> %i.m) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0201206, i64 56
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds [8 x i8], ptr %.0198209, i64 %i.r
  %i.t = load double, ptr %i.s, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.0201206, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11
  %i.w = getelementptr inbounds [8 x i8], ptr %.0198209, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !13 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0201206, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0198209, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %i.ac = fadd double %i.x, %i.ab
  %i.ad = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> <double 2.000000e+00, double -5.000000e-01>, <2 x double> %i.ag) ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0201206, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds [8 x i8], ptr %.0198209, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.0201206, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %i.ao = getelementptr inbounds [8 x i8], ptr %.0198209, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0201206, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.as = getelementptr inbounds [8 x i8], ptr %.0198209, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !13 ; 2 uses
  %i.au = fadd double %i.ap, %i.at                ; 2 uses
  %i.av = load double, ptr %.0198209, align 8, !tbaa !13 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0201206, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !11
  %i.ay = getelementptr inbounds [8 x i8], ptr %.0198209, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.ba = fadd double %i.av, %i.az                ; 2 uses
  %10 = insertelement <2 x double> poison, double %i.av, i64 0
  %11 = insertelement <2 x double> %10, double %i.ap, i64 1
  %12 = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bb = insertelement <2 x double> %12, double %i.at, i64 1
  %13 = fsub <2 x double> %11, %i.bb              ; 2 uses
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %15 = fmul <2 x double> %14, <double f0xBFFA5B4064AE062C, double f0x3FF04A07E1338541>
  %i.bc = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> <double f0x3FF04A07E1338541, double f0x3FFA5B4064AE062C>, <2 x double> %15) ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0202205, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11
  %i.bg = getelementptr inbounds [8 x i8], ptr %.0199208, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !13 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0202205, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0199208, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0202205, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = getelementptr inbounds [8 x i8], ptr %.0199208, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !13 ; 2 uses
  %i.bq = fadd double %i.bl, %i.bp                ; 2 uses
  %i.br = load double, ptr %.0199208, align 8, !tbaa !13 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0202205, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11
  %i.bu = getelementptr inbounds [8 x i8], ptr %.0199208, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !13 ; 2 uses
  %i.bw = fsub double %i.br, %i.bv                ; 2 uses
  %i.bx = insertelement <2 x double> poison, double %i.au, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.br, i64 1
  %i.bz = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bv, i64 1
  %i.cb = fadd <2 x double> %i.by, %i.ca          ; 3 uses
  %i.cc = insertelement <2 x double> poison, double %i.al, i64 0 ; 2 uses
  %i.cd = fsub double %i.bw, %i.bq
  %i.ce = fmul double %i.cd, f0x3FEEFBDEB14F4EDA  ; 2 uses
  %i.cf = fadd double %i.bq, %i.bw                ; 2 uses
  %i.cg = fsub double %i.bl, %i.bp                ; 2 uses
  %i.ch = fmul double %i.cg, f0x3FE2CF2304755A5E
  %i.ci = insertelement <2 x double> %i.cc, double %i.ch, i64 1
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %i.ci) ; 3 uses
  %i.ck = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cl = insertelement <2 x double> %i.ck, double %i.bh, i64 1
  %i.cm = fmul <2 x double> %i.cl, <double f0xBFE2CF2304755A5E, double f0x3FFBB67AE8584CAA>
  %i.cn = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.cf, i64 1
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> <double f0x3FEE6F0E134454FF, double f0x3FDBB67AE8584CAA>, <2 x double> %i.cm) ; 3 uses
  %i.cq = fsub double %i.bh, %i.cf
  %i.cr = fmul double %i.cq, f0x3FFBB67AE8584CAA  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0200207, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !11 ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %.0211, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.0200207, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !11 ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0197210, i64 %i.cw
  %i.cy = extractelement <2 x double> %i.cp, i64 1 ; 2 uses
  %i.cz = fadd double %i.ce, %i.cy                ; 2 uses
  %i.da = extractelement <2 x double> %i.bd, i64 0 ; 2 uses
  %i.db = fsub double %i.da, %i.cz                ; 2 uses
  %i.dc = fadd double %i.da, %i.cz                ; 2 uses
  %i.dd = shufflevector <2 x double> %i.cb, <2 x double> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.de = getelementptr inbounds nuw i8, ptr %.0200207, i64 48
  %i.df = load i64, ptr %i.de, align 8, !tbaa !11 ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %.0211, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %.0200207, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !11 ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %.0197210, i64 %i.di
  %i.dk = getelementptr inbounds [8 x i8], ptr %.0211, i64 %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %.0200207, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !11 ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %.0197210, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %.0200207, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !11 ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %.0211, i64 %i.dp
  %i.dr = getelementptr inbounds [8 x i8], ptr %.0197210, i64 %i.df
  %i.ds = fsub double %i.ce, %i.cy
  %i.dt = getelementptr inbounds [8 x i8], ptr %.0197210, i64 %i.dp
  %i.du = getelementptr inbounds [8 x i8], ptr %.0211, i64 %i.dm
  %i.dv = getelementptr inbounds [8 x i8], ptr %.0197210, i64 %i.ct
  %i.dw = getelementptr inbounds [8 x i8], ptr %.0211, i64 %i.cw
  %i.dx = insertelement <2 x double> poison, double %i.x, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %i.ba, i64 1
  %i.dz = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.au, i64 1
  %i.eb = fsub <2 x double> %i.dy, %i.ea
  %i.ec = fmul <2 x double> %i.eb, <double f0x3FF1E3779B97F4A8, double f0x3FE1E3779B97F4A8> ; 3 uses
  %shift = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.ec ; 2 uses
  %foldExtExtBinop213 = fsub <2 x double> %foldExtExtBinop, %i.p ; 2 uses
  %foldExtExtBinop215 = fadd <2 x double> %i.p, %foldExtExtBinop ; 2 uses
  %i.ed = extractelement <2 x double> %foldExtExtBinop215, i64 0
  %i.ee = shufflevector <2 x double> %i.ah, <2 x double> %foldExtExtBinop213, <2 x i32> <i32 0, i32 2>
  %i.ef = fneg double %i.ed
  %i.eg = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ei = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ej = fadd <2 x double> %i.eh, %i.ei
  %i.ek = fsub <2 x double> %i.eh, %i.ei
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> %i.ej, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.em = shufflevector <2 x double> %i.ah, <2 x double> %i.cj, <2 x i32> <i32 1, i32 2>
  %i.en = fadd <2 x double> %i.ec, %i.em          ; 2 uses
  %shift217 = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop218 = fsub <2 x double> %i.cj, %shift217 ; 2 uses
  %i.eo = shufflevector <2 x double> %i.cc, <2 x double> %foldExtExtBinop218, <2 x i32> <i32 0, i32 2>
  %i.ep = fadd <2 x double> %i.eo, %i.dd          ; 3 uses
  %foldExtExtBinop220 = fsub <2 x double> %i.ep, %i.ah
  %i.eq = extractelement <2 x double> %foldExtExtBinop220, i64 0 ; 2 uses
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> splat (double 2.000000e+00), <2 x double> %i.ee) ; 2 uses
  %i.es = extractelement <2 x double> %i.er, i64 0
  store double %i.es, ptr %.0211, align 8, !tbaa !13
  %i.et = fsub double %i.cr, %i.eq
  store double %i.et, ptr %i.cu, align 8, !tbaa !13
  %i.eu = fadd double %i.eq, %i.cr
  store double %i.eu, ptr %i.cx, align 8, !tbaa !13
  %i.ev = extractelement <2 x double> %i.er, i64 1
  store double %i.ev, ptr %i.dg, align 8, !tbaa !13
  %i.ew = shufflevector <2 x double> %i.p, <2 x double> %i.cj, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ex = fadd <2 x double> %i.ew, %i.en          ; 3 uses
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop222 = fsub <2 x double> %i.cp, %foldExtExtBinop218 ; 2 uses
  %i.ez = shufflevector <2 x double> %foldExtExtBinop222, <2 x double> %i.ex, <2 x i32> <i32 0, i32 3>
  %i.fa = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.fb = fsub <2 x double> %i.en, %i.ew          ; 3 uses
  %i.fc = shufflevector <2 x double> %i.fa, <2 x double> %i.fb, <2 x i32> <i32 0, i32 2>
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> splat (double 2.000000e+00), <2 x double> %i.fc) ; 2 uses
  %i.fe = extractelement <2 x double> %i.fd, i64 0
  store double %i.fe, ptr %i.dj, align 8, !tbaa !13
  %shift224 = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop225 = fsub <2 x double> %foldExtExtBinop213, %shift224
  %i.ff = extractelement <2 x double> %foldExtExtBinop225, i64 0 ; 2 uses
  %i.fg = fadd double %i.ff, %i.db
  store double %i.fg, ptr %i.dk, align 8, !tbaa !13
  %i.fh = fsub double %i.db, %i.ff
  store double %i.fh, ptr %i.dn, align 8, !tbaa !13
  %foldExtExtBinop227 = fadd <2 x double> %foldExtExtBinop215, %foldExtExtBinop222
  %i.fi = extractelement <2 x double> %foldExtExtBinop227, i64 0 ; 2 uses
  %i.fj = fsub double %i.fi, %i.dc
  store double %i.fj, ptr %i.dq, align 8, !tbaa !13
  %i.fk = fadd double %i.fi, %i.dc
  %i.fl = fneg double %i.fk
  store double %i.fl, ptr %i.dr, align 8, !tbaa !13
  %i.fm = extractelement <2 x double> %i.fd, i64 1
  %i.fn = fneg double %i.fm
  store double %i.fn, ptr %i.dt, align 8, !tbaa !13
  %i.fo = extractelement <2 x double> %i.fb, i64 1
  %i.fp = extractelement <2 x double> %i.ex, i64 0
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fo, double 2.000000e+00, double %i.fp)
  store double %i.fq, ptr %i.du, align 8, !tbaa !13
  %i.fr = fsub <2 x double> %i.fb, %i.ey          ; 3 uses
  %foldExtExtBinop229 = fsub <2 x double> %i.fr, %i.el
  %i.fs = extractelement <2 x double> %foldExtExtBinop229, i64 1
  store double %i.fs, ptr %i.dv, align 8, !tbaa !13
  %i.ft = fadd <2 x double> %i.fr, %i.el          ; 2 uses
  %i.fu = extractelement <2 x double> %i.ft, i64 1
  store double %i.fu, ptr %.0197210, align 8, !tbaa !13
  %foldExtExtBinop231 = fsub <2 x double> %i.fr, %i.el
  %i.fv = extractelement <2 x double> %foldExtExtBinop231, i64 0
  store double %i.fv, ptr %i.dw, align 8, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %.0200207, i64 56
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !11
  %i.fy = getelementptr inbounds [8 x i8], ptr %.0211, i64 %i.fx
  %i.fz = extractelement <2 x double> %i.ft, i64 0
  store double %i.fz, ptr %i.fy, align 8, !tbaa !13
  %i.ga = add nsw i64 %.0203204, -1
  %i.gb = getelementptr inbounds [8 x i8], ptr %.0211, i64 %9
  %i.gc = getelementptr inbounds [8 x i8], ptr %.0197210, i64 %9
  %i.gd = getelementptr inbounds [8 x i8], ptr %.0198209, i64 %8
  %i.ge = getelementptr inbounds [8 x i8], ptr %.0199208, i64 %8
  %i.gf = getelementptr inbounds [8 x i8], ptr %.0200207, i64 %i.b
  %i.gg = getelementptr inbounds [8 x i8], ptr %.0201206, i64 %i.b
  %i.gh = getelementptr inbounds [8 x i8], ptr %.0202205, i64 %i.b
  %i.gi = icmp samesign ugt i64 %.0203204, 1
  br i1 %i.gi, label %bb.b, label %._crit_edge, !llvm.loop !9

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
