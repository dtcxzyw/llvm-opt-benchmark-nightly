Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cfII_15?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 15, ptr @.str, %struct.opcnt { double 5.400000e+01, double 1.500000e+01, double 1.800000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cfII_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [10 x i8] c"r2cfII_15\00", align 1
@fftw_rdft_r2cfII_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cfII_15(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cfII_15, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cfII_15(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0214 = phi ptr [ %0, %.lr.ph ], [ %i.gu, %bb.b ] ; 9 uses
  %.0200213 = phi ptr [ %1, %.lr.ph ], [ %i.gv, %bb.b ] ; 8 uses
  %.0201212 = phi ptr [ %2, %.lr.ph ], [ %i.gw, %bb.b ] ; 9 uses
  %.0202211 = phi ptr [ %3, %.lr.ph ], [ %i.gx, %bb.b ] ; 8 uses
  %.0203210 = phi ptr [ %4, %.lr.ph ], [ %i.gy, %bb.b ] ; 8 uses
  %.0204209 = phi ptr [ %5, %.lr.ph ], [ %i.gz, %bb.b ] ; 8 uses
  %.0205208 = phi ptr [ %6, %.lr.ph ], [ %i.ha, %bb.b ] ; 7 uses
  %.0206207 = phi i64 [ %7, %.lr.ph ], [ %i.gt, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0203210, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.0214, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !13 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0203210, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %.0214, i64 %i.h
  %i.j = load double, ptr %i.i, align 8, !tbaa !13 ; 4 uses
  %i.k = load double, ptr %.0200213, align 8, !tbaa !13 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0203210, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.0200213, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0203210, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.0200213, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.t = fadd double %i.o, %i.s                   ; 2 uses
  %i.u = fsub double %i.o, %i.s
  %i.v = fadd double %i.j, %i.k
  %i.w = insertelement <2 x double> poison, double %i.u, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.v, i64 1 ; 2 uses
  %i.y = fmul <2 x double> %i.x, <double f0x3FE2CF2304755A5E, double f0xBFE2CF2304755A5E>
  %i.z = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.y) ; 2 uses
  %i.ab = fsub double %i.k, %i.t
  %i.ac = fmul double %i.ab, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.ad = fadd double %i.k, %i.t                  ; 2 uses
  %i.ae = fmul double %i.ad, 2.500000e-01         ; 2 uses
  %i.af = load double, ptr %.0214, align 8, !tbaa !13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0203210, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %.0200213, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !13 ; 3 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %.0214, i64 %i.q
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0203210, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.0200213, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13 ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %.0214, i64 %i.m
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !13 ; 3 uses
  %i.as = fadd double %i.aj, %i.ap
  %i.at = fadd double %i.al, %i.ar
  %10 = insertelement <2 x double> poison, double %i.aj, i64 0
  %11 = insertelement <2 x double> %10, double %i.al, i64 1
  %12 = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.au = insertelement <2 x double> %12, double %i.ap, i64 1
  %13 = fadd <2 x double> %11, %i.au              ; 2 uses
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %15 = fmul <2 x double> %14, <double f0x3FE2CF2304755A5E, double f0xBFEE6F0E134454FF>
  %i.av = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> <double f0x3FEE6F0E134454FF, double f0x3FE2CF2304755A5E>, <2 x double> %15) ; 3 uses
  %i.ax = fadd double %i.aj, %i.al
  %i.ay = fadd double %i.ap, %i.ar
  %i.az = fsub double %i.ax, %i.ay
  %i.ba = fmul double %i.az, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %.0200213, i64 %i.h
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !13 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0203210, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11
  %i.bf = getelementptr inbounds [8 x i8], ptr %.0214, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !13 ; 3 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.0200213, i64 %i.d
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !13 ; 4 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %.0214, i64 %i.an
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !13 ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.0214, i64 %i.ah
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !13 ; 2 uses
  %i.bn = fadd double %i.bk, %i.bm                ; 2 uses
  %i.bo = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bk, i64 1
  %i.bq = insertelement <2 x double> poison, double %i.at, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bm, i64 1
  %i.bs = fsub <2 x double> %i.bp, %i.br          ; 3 uses
  %i.bt = insertelement <2 x double> poison, double %i.af, i64 0
  %i.bu = fsub double %i.bg, %i.bn
  %i.bv = fadd double %i.bg, %i.bi                ; 2 uses
  %i.bw = fmul double %i.bv, f0xBFEE6F0E134454FF
  %i.bx = insertelement <2 x double> %i.bt, double %i.bw, i64 1
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> <double 2.500000e-01, double f0x3FE2CF2304755A5E>, <2 x double> %i.bx) ; 2 uses
  %i.bz = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bu, i64 1
  %i.cb = fmul <2 x double> %i.ca, <double f0x3FE2CF2304755A5E, double f0x3FE1E3779B97F4A8> ; 2 uses
  %i.cc = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cd = insertelement <2 x double> %i.cc, double %i.bi, i64 1
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> <double f0x3FEE6F0E134454FF, double f0xBFD3C6EF372FE950>, <2 x double> %i.cb) ; 2 uses
  %i.cf = fneg double %i.bc
  %i.cg = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.cf, i64 1
  %i.ci = extractelement <2 x double> %i.bs, i64 0
  %i.cj = fsub double %i.af, %i.ci                ; 2 uses
  %i.ck = fadd double %i.f, %i.j
  %i.cl = fsub double %i.ck, %i.ad                ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0205208, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !11
  %i.co = getelementptr inbounds [8 x i8], ptr %.0202211, i64 %i.cn
  %i.cp = fadd double %i.bg, %i.bn                ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %i.cp, i64 0 ; 2 uses
  %i.cr = insertelement <2 x double> %i.cq, double %i.bi, i64 1
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> <double 2.500000e-01, double f0x3FE9E3779B97F4A8>, <2 x double> %i.ch) ; 2 uses
  %shift = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.cs
  %i.ct = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.cu = fsub double %i.cp, %i.bi
  %i.cv = fsub double %i.cu, %i.bc                ; 2 uses
  %i.cw = fadd double %i.cl, %i.cv                ; 2 uses
  %i.cx = insertelement <2 x double> %i.cq, double %i.cw, i64 1
  %i.cy = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cz = insertelement <2 x double> %i.cy, double %i.cj, i64 1
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> <double 2.500000e-01, double -5.000000e-01>, <2 x double> %i.cz) ; 2 uses
  %shift216 = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop217 = fsub <2 x double> %shift216, %i.da
  %i.db = extractelement <2 x double> %foldExtExtBinop217, i64 0 ; 2 uses
  %i.dc = fsub double %i.cl, %i.cv
  %i.dd = fmul double %i.dc, f0x3FEBB67AE8584CAA
  store double %i.dd, ptr %i.co, align 8, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.0204209, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !11
  %i.dg = getelementptr inbounds [8 x i8], ptr %.0201212, i64 %i.df
  %i.dh = extractelement <2 x double> %i.da, i64 1
  store double %i.dh, ptr %i.dg, align 8, !tbaa !13
  %i.di = fadd double %i.cj, %i.cw
  %i.dj = getelementptr inbounds nuw i8, ptr %.0204209, i64 56
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !11
  %i.dl = getelementptr inbounds [8 x i8], ptr %.0201212, i64 %i.dk
  store double %i.di, ptr %i.dl, align 8, !tbaa !13
  %i.dm = extractelement <2 x double> %i.by, i64 0 ; 2 uses
  %i.dn = fadd double %i.ba, %i.dm                ; 2 uses
  %i.do = extractelement <2 x double> %i.aa, i64 1 ; 2 uses
  %i.dp = extractelement <2 x double> %i.ce, i64 0 ; 2 uses
  %i.dq = fadd double %i.do, %i.dp
  %i.dr = fmul double %i.dq, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.ds = fsub double %i.do, %i.dp                ; 2 uses
  %i.dt = extractelement <2 x double> %i.aw, i64 1 ; 2 uses
  %i.du = fneg double %i.dt
  %i.dv = fadd double %i.f, %i.ac
  %i.dw = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.dx = insertelement <2 x double> %i.dw, double %i.j, i64 1
  %i.dy = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.ae, i64 1
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> <double 5.000000e-01, double f0xBFE9E3779B97F4A8>, <2 x double> %i.dz) ; 2 uses
  %i.eb = extractelement <2 x double> %i.ea, i64 1
  %i.ec = fadd double %i.dv, %i.eb                ; 2 uses
  %i.ed = fsub double %i.db, %i.ec
  %i.ee = fmul double %i.ed, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0204209, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !11
  %i.eh = getelementptr inbounds [8 x i8], ptr %.0201212, i64 %i.eg
  %i.ei = fadd double %i.dt, %i.ds
  %i.ej = getelementptr inbounds nuw i8, ptr %.0205208, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !11
  %i.el = getelementptr inbounds [8 x i8], ptr %.0202211, i64 %i.ek
  %i.em = extractelement <2 x double> %i.ea, i64 0 ; 2 uses
  %i.en = fsub double %i.ee, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %.0205208, i64 48
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !11
  %i.eq = getelementptr inbounds [8 x i8], ptr %.0202211, i64 %i.ep
  %i.er = fadd double %i.em, %i.ee
  %i.es = getelementptr inbounds nuw i8, ptr %.0205208, i64 24
  %i.et = load i64, ptr %i.es, align 8, !tbaa !11
  %i.eu = getelementptr inbounds [8 x i8], ptr %.0202211, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %.0204209, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !11
  %i.ex = getelementptr inbounds [8 x i8], ptr %.0201212, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %.0204209, i64 48
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !11
  %i.fa = getelementptr inbounds [8 x i8], ptr %.0201212, i64 %i.ez
  %i.fb = extractelement <2 x double> %i.aa, i64 0 ; 2 uses
  %i.fc = extractelement <2 x double> %i.by, i64 1 ; 2 uses
  %i.fd = fadd double %i.fb, %i.fc
  %i.fe = fmul double %i.fd, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.ff = fsub double %i.dm, %i.ba                ; 2 uses
  %i.fg = extractelement <2 x double> %i.aw, i64 0
  %i.fh = fsub double %i.fc, %i.fb                ; 2 uses
  %i.fi = fadd double %i.ec, %i.db                ; 2 uses
  %i.fj = fadd double %i.dn, %i.fi
  store double %i.fj, ptr %i.eh, align 8, !tbaa !13
  store double %i.ei, ptr %i.el, align 8, !tbaa !13
  store double %i.en, ptr %i.eq, align 8, !tbaa !13
  store double %i.er, ptr %i.eu, align 8, !tbaa !13
  %i.fk = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fh, i64 1
  %i.fm = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.fn = fneg <2 x double> %i.aw
  %i.fo = shufflevector <2 x double> %i.fm, <2 x double> %i.fn, <2 x i32> <i32 0, i32 2>
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> <double -5.000000e-01, double 5.000000e-01>, <2 x double> %i.fo) ; 2 uses
  %i.fq = extractelement <2 x double> %i.fp, i64 0 ; 2 uses
  %i.fr = fsub double %i.fq, %i.dr
  store double %i.fr, ptr %i.ex, align 8, !tbaa !13
  %i.fs = fadd double %i.dr, %i.fq
  store double %i.fs, ptr %i.fa, align 8, !tbaa !13
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.j, double f0x3FD3C6EF372FE950, double %i.f)
  %i.fu = fadd double %i.ft, %i.ae
  %i.fv = fsub double %i.fu, %i.ac                ; 2 uses
  %i.fw = fadd double %i.fv, %i.ct                ; 2 uses
  %i.fx = fsub double %i.ct, %i.fv
  %i.fy = fmul double %i.fx, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.fz = fadd double %i.fg, %i.fh
  %i.ga = getelementptr inbounds nuw i8, ptr %.0205208, i64 32
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !11
  %i.gc = getelementptr inbounds [8 x i8], ptr %.0202211, i64 %i.gb
  store double %i.fz, ptr %i.gc, align 8, !tbaa !13
  %i.gd = fadd double %i.ff, %i.fw
  %i.ge = getelementptr inbounds nuw i8, ptr %.0204209, i64 32
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !11
  %i.gg = getelementptr inbounds [8 x i8], ptr %.0201212, i64 %i.gf
  store double %i.gd, ptr %i.gg, align 8, !tbaa !13
  %i.gh = extractelement <2 x double> %i.fp, i64 1 ; 2 uses
  %i.gi = fsub double %i.gh, %i.fy
  %i.gj = getelementptr inbounds nuw i8, ptr %.0205208, i64 40
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !11
  %i.gl = getelementptr inbounds [8 x i8], ptr %.0202211, i64 %i.gk
  store double %i.gi, ptr %i.gl, align 8, !tbaa !13
  %i.gm = fadd double %i.gh, %i.fy
  store double %i.gm, ptr %.0202211, align 8, !tbaa !13
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.fw, double -5.000000e-01, double %i.ff) ; 2 uses
  %i.go = fadd double %i.fe, %i.gn
  store double %i.go, ptr %.0201212, align 8, !tbaa !13
  %i.gp = fsub double %i.gn, %i.fe
  %i.gq = getelementptr inbounds nuw i8, ptr %.0204209, i64 40
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !11
  %i.gs = getelementptr inbounds [8 x i8], ptr %.0201212, i64 %i.gr
  store double %i.gp, ptr %i.gs, align 8, !tbaa !13
  %i.gt = add nsw i64 %.0206207, -1
  %i.gu = getelementptr inbounds [8 x i8], ptr %.0214, i64 %8
  %i.gv = getelementptr inbounds [8 x i8], ptr %.0200213, i64 %8
  %i.gw = getelementptr inbounds [8 x i8], ptr %.0201212, i64 %9
  %i.gx = getelementptr inbounds [8 x i8], ptr %.0202211, i64 %9
  %i.gy = getelementptr inbounds [8 x i8], ptr %.0203210, i64 %i.b
  %i.gz = getelementptr inbounds [8 x i8], ptr %.0204209, i64 %i.b
  %i.ha = getelementptr inbounds [8 x i8], ptr %.0205208, i64 %i.b
  %i.hb = icmp samesign ugt i64 %.0206207, 1
  br i1 %i.hb, label %bb.b, label %._crit_edge, !llvm.loop !9

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
end_hunk_0
