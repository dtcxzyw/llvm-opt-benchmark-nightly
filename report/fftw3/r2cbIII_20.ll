Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cbIII_20?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 20, ptr @.str, %struct.opcnt { double 8.200000e+01, double 3.200000e+01, double 1.200000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cbIII_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [11 x i8] c"r2cbIII_20\00", align 1
@fftw_rdft_r2cbIII_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cbIII_20(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cbIII_20, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cbIII_20(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0291 = phi ptr [ %0, %.lr.ph ], [ %i.jj, %bb.b ] ; 11 uses
  %.0277290 = phi ptr [ %1, %.lr.ph ], [ %i.jk, %bb.b ] ; 11 uses
  %.0278289 = phi ptr [ %2, %.lr.ph ], [ %i.jl, %bb.b ] ; 11 uses
  %.0279288 = phi ptr [ %3, %.lr.ph ], [ %i.jm, %bb.b ] ; 11 uses
  %.0280287 = phi ptr [ %4, %.lr.ph ], [ %i.jn, %bb.b ] ; 10 uses
  %.0281286 = phi ptr [ %5, %.lr.ph ], [ %i.jo, %bb.b ] ; 10 uses
  %.0282285 = phi ptr [ %6, %.lr.ph ], [ %i.jp, %bb.b ] ; 10 uses
  %.0283284 = phi i64 [ %7, %.lr.ph ], [ %i.ji, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0281286, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %.0278289, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0281286, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds [8 x i8], ptr %.0278289, i64 %i.h
  %i.j = load double, ptr %i.i, align 8, !tbaa !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0281286, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds [8 x i8], ptr %.0278289, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !13 ; 2 uses
  %i.o = fadd double %i.j, %i.n                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0281286, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds [8 x i8], ptr %.0278289, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0281286, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr inbounds [8 x i8], ptr %.0278289, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !13 ; 2 uses
  %i.x = fadd double %i.s, %i.w                   ; 2 uses
  %i.y = fsub double %i.x, %i.o
  %i.z = fmul double %i.y, f0x3FE1E3779B97F4A8    ; 2 uses
  %i.aa = fsub double %i.j, %i.n
  %i.ab = fsub double %i.s, %i.w
  %i.ac = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x double> %i.ad, <double f0xBFEE6F0E134454FF, double f0x3FE2CF2304755A5E>
  %i.af = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> <double f0x3FE2CF2304755A5E, double f0x3FEE6F0E134454FF>, <2 x double> %i.ae) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0282285, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds [8 x i8], ptr %.0279288, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0282285, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %i.ao = getelementptr inbounds [8 x i8], ptr %.0279288, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0282285, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.as = getelementptr inbounds [8 x i8], ptr %.0279288, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !13 ; 2 uses
  %i.au = fsub double %i.ap, %i.at                ; 2 uses
  %i.av = fadd double %i.ap, %i.at                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0282285, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !11
  %i.ay = getelementptr inbounds [8 x i8], ptr %.0279288, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0282285, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !11
  %i.bc = getelementptr inbounds [8 x i8], ptr %.0279288, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !13 ; 2 uses
  %i.be = fsub double %i.az, %i.bd                ; 2 uses
  %i.bf = fmul double %i.au, f0x3FE2CF2304755A5E
  %i.bg = insertelement <2 x double> poison, double %i.o, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.az, i64 1
  %i.bi = insertelement <2 x double> poison, double %i.x, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bd, i64 1
  %i.bk = fadd <2 x double> %i.bh, %i.bj          ; 3 uses
  %i.bl = insertelement <2 x double> poison, double %i.f, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bf, i64 1
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %i.bm) ; 2 uses
  %i.bo = fadd double %i.av, %i.be
  %i.bp = fmul double %i.bo, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.bq = fmul double %i.au, f0xBFEE6F0E134454FF
  %i.br = fsub double %i.be, %i.av                ; 2 uses
  %i.bs = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bt = insertelement <2 x double> %i.bs, double %i.br, i64 1
  %i.bu = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.al, i64 1
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> <double f0x3FE2CF2304755A5E, double -2.500000e-01>, <2 x double> %i.bv) ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0281286, i64 56
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !11
  %i.bz = getelementptr inbounds [8 x i8], ptr %.0278289, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !13 ; 2 uses
  %i.cb = load double, ptr %.0278289, align 8, !tbaa !13 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0281286, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !11
  %i.ce = getelementptr inbounds [8 x i8], ptr %.0278289, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !13 ; 2 uses
  %i.cg = fadd double %i.cb, %i.cf                ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0281286, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !11
  %i.cj = getelementptr inbounds [8 x i8], ptr %.0278289, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !13 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0281286, i64 64
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !11
  %i.cn = getelementptr inbounds [8 x i8], ptr %.0278289, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !13 ; 2 uses
  %i.cp = fadd double %i.ck, %i.co                ; 2 uses
  %i.cq = fsub double %i.cp, %i.cg
  %i.cr = fmul double %i.cq, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.cs = fsub double %i.cb, %i.cf
  %i.ct = fsub double %i.ck, %i.co
  %i.cu = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x double> %i.cv, <double f0xBFEE6F0E134454FF, double f0x3FE2CF2304755A5E>
  %i.cx = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> <double f0x3FE2CF2304755A5E, double f0x3FEE6F0E134454FF>, <2 x double> %i.cw) ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0282285, i64 56
  %i.db = load i64, ptr %i.da, align 8, !tbaa !11
  %i.dc = getelementptr inbounds [8 x i8], ptr %.0279288, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !13 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0282285, i64 32
  %i.df = load i64, ptr %i.de, align 8, !tbaa !11
  %i.dg = getelementptr inbounds [8 x i8], ptr %.0279288, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !13 ; 2 uses
  %i.di = load double, ptr %.0279288, align 8, !tbaa !13 ; 2 uses
  %i.dj = fadd double %i.dh, %i.di                ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0282285, i64 24
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !11
  %i.dm = getelementptr inbounds [8 x i8], ptr %.0279288, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !13 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0282285, i64 64
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !11
  %i.dq = getelementptr inbounds [8 x i8], ptr %.0279288, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !13 ; 2 uses
  %i.ds = fsub double %i.dr, %i.dn                ; 2 uses
  %i.dt = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %i.dn, i64 1
  %i.dv = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.dr, i64 1
  %i.dx = fadd <2 x double> %i.du, %i.dw          ; 3 uses
  %i.dy = fsub double %i.ds, %i.dj
  %i.dz = fmul double %i.dy, f0x3FE1E3779B97F4A8  ; 2 uses
  %10 = fadd double %i.dj, %i.ds                  ; 2 uses
  %i.ea = fsub double %i.dh, %i.di                ; 2 uses
  %i.eb = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ec = insertelement <2 x double> %i.eb, double %i.ea, i64 1
  %i.ed = fmul <2 x double> %i.ec, <double f0xBFE2CF2304755A5E, double f0x3FE2CF2304755A5E> ; 2 uses
  %i.ee = insertelement <2 x double> %i.ed, double %i.ca, i64 0
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %i.ee) ; 2 uses
  %i.eg = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %10, i64 1
  %i.ei = insertelement <2 x double> %i.ed, double %i.dd, i64 1
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> <double f0x3FEE6F0E134454FF, double 2.500000e-01>, <2 x double> %i.ei) ; 2 uses
  %i.ek = extractelement <2 x double> %i.bk, i64 0
  %i.el = fadd double %i.f, %i.ek                 ; 2 uses
  %i.em = extractelement <2 x double> %i.dx, i64 0
  %i.en = fadd double %i.ca, %i.em                ; 2 uses
  %i.eo = fsub double %i.el, %i.en                ; 2 uses
  %i.ep = fadd double %i.al, %i.br                ; 2 uses
  %i.eq = fsub double %i.dd, %10                  ; 2 uses
  %i.er = fadd double %i.ep, %i.eq                ; 2 uses
  %i.es = fadd double %i.el, %i.en
  %i.et = fmul double %i.es, 2.000000e+00
  store double %i.et, ptr %.0291, align 8, !tbaa !13
  %i.eu = fsub double %i.eq, %i.ep
  %i.ev = fmul double %i.eu, 2.000000e+00
  %i.ew = getelementptr inbounds nuw i8, ptr %.0280287, i64 40
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !11 ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %.0291, i64 %i.ex
  store double %i.ev, ptr %i.ey, align 8, !tbaa !13
  %i.ez = fsub double %i.er, %i.eo
  %i.fa = fmul double %i.ez, f0x3FF6A09E667F3BCD
  %i.fb = getelementptr inbounds nuw i8, ptr %.0280287, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !11 ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %.0277290, i64 %i.fc
  store double %i.fa, ptr %i.fd, align 8, !tbaa !13
  %i.fe = fadd double %i.eo, %i.er
  %i.ff = fmul double %i.fe, f0x3FF6A09E667F3BCD
  %i.fg = getelementptr inbounds nuw i8, ptr %.0280287, i64 56
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !11 ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %.0277290, i64 %i.fh
  store double %i.ff, ptr %i.fi, align 8, !tbaa !13
  %i.fj = extractelement <2 x double> %i.bn, i64 0 ; 2 uses
  %i.fk = fsub double %i.fj, %i.z                 ; 2 uses
  %i.fl = extractelement <2 x double> %i.bw, i64 0 ; 2 uses
  %i.fm = fadd double %i.fk, %i.fl                ; 2 uses
  %i.fn = fsub double %i.fk, %i.fl                ; 2 uses
  %i.fo = extractelement <2 x double> %i.bw, i64 1 ; 2 uses
  %i.fp = fsub double %i.fo, %i.bp                ; 2 uses
  %i.fq = extractelement <2 x double> %i.ah, i64 0 ; 2 uses
  %i.fr = fadd double %i.fq, %i.fp                ; 2 uses
  %i.fs = fsub double %i.fp, %i.fq                ; 2 uses
  %i.ft = extractelement <2 x double> %i.ef, i64 0 ; 2 uses
  %i.fu = fsub double %i.ft, %i.cr                ; 2 uses
  %i.fv = extractelement <2 x double> %i.ej, i64 0 ; 2 uses
  %i.fw = fadd double %i.fu, %i.fv                ; 2 uses
  %i.fx = fsub double %i.fv, %i.fu                ; 2 uses
  %i.fy = extractelement <2 x double> %i.ej, i64 1 ; 2 uses
  %i.fz = fadd double %i.dz, %i.fy                ; 2 uses
  %i.ga = extractelement <2 x double> %i.cz, i64 0 ; 2 uses
  %i.gb = fsub double %i.fz, %i.ga                ; 2 uses
  %i.gc = fadd double %i.ga, %i.fz                ; 2 uses
  %i.gd = fadd double %i.fm, %i.fw
  %i.ge = fmul double %i.gd, 2.000000e+00
  %i.gf = getelementptr inbounds nuw i8, ptr %.0280287, i64 32
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !11 ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %.0291, i64 %i.gg
  store double %i.ge, ptr %i.gh, align 8, !tbaa !13
  %i.gi = fsub double %i.fx, %i.fn
  %i.gj = fmul double %i.gi, 2.000000e+00
  %i.gk = getelementptr inbounds nuw i8, ptr %.0280287, i64 48
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !11 ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %.0291, i64 %i.gl
  store double %i.gj, ptr %i.gm, align 8, !tbaa !13
  %i.gn = fsub double %i.gc, %i.fs
  %i.go = fmul double %i.gn, 2.000000e+00
  %i.gp = getelementptr inbounds nuw i8, ptr %.0280287, i64 72
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !11 ; 2 uses
  %i.gr = getelementptr inbounds [8 x i8], ptr %.0291, i64 %i.gq
  store double %i.go, ptr %i.gr, align 8, !tbaa !13
  %i.gs = fsub double %i.gb, %i.fr
  %i.gt = fmul double %i.gs, 2.000000e+00
  %i.gu = getelementptr inbounds nuw i8, ptr %.0280287, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !11 ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %.0291, i64 %i.gv
  store double %i.gt, ptr %i.gw, align 8, !tbaa !13
  %i.gx = fsub double %i.fw, %i.fm                ; 2 uses
  %i.gy = fadd double %i.fs, %i.gc                ; 2 uses
  %i.gz = fsub double %i.gx, %i.gy
  %i.ha = fmul double %i.gz, f0x3FF6A09E667F3BCD
  %i.hb = getelementptr inbounds [8 x i8], ptr %.0277290, i64 %i.gv
  store double %i.ha, ptr %i.hb, align 8, !tbaa !13
  %i.hc = fadd double %i.gx, %i.gy
  %i.hd = fmul double %i.hc, f0x3FF6A09E667F3BCD
  %i.he = getelementptr inbounds [8 x i8], ptr %.0277290, i64 %i.gl
  store double %i.hd, ptr %i.he, align 8, !tbaa !13
  %i.hf = fadd double %i.fn, %i.fx                ; 2 uses
  %i.hg = fadd double %i.fr, %i.gb                ; 2 uses
  %i.hh = fsub double %i.hf, %i.hg
  %i.hi = fmul double %i.hh, f0x3FF6A09E667F3BCD
  %i.hj = getelementptr inbounds nuw i8, ptr %.0280287, i64 64
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !11 ; 2 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %.0277290, i64 %i.hk
  store double %i.hi, ptr %i.hl, align 8, !tbaa !13
  %i.hm = fadd double %i.hf, %i.hg
  %i.hn = fmul double %i.hm, f0x3FF6A09E667F3BCD
  %i.ho = getelementptr inbounds nuw i8, ptr %.0280287, i64 24
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !11 ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %.0277290, i64 %i.hp
  store double %i.hn, ptr %i.hq, align 8, !tbaa !13
  %i.hr = fadd double %i.z, %i.fj                 ; 2 uses
  %i.hs = extractelement <2 x double> %i.bn, i64 1 ; 2 uses
  %i.ht = fsub double %i.hr, %i.hs                ; 2 uses
  %i.hu = fadd double %i.hr, %i.hs                ; 2 uses
  %i.hv = fadd double %i.bp, %i.fo                ; 2 uses
  %i.hw = extractelement <2 x double> %i.ah, i64 1 ; 2 uses
  %i.hx = fadd double %i.hw, %i.hv                ; 2 uses
  %i.hy = fsub double %i.hv, %i.hw                ; 2 uses
  %i.hz = fadd double %i.cr, %i.ft                ; 2 uses
  %i.ia = extractelement <2 x double> %i.ef, i64 1 ; 2 uses
  %i.ib = fadd double %i.hz, %i.ia                ; 2 uses
  %i.ic = fsub double %i.ia, %i.hz                ; 2 uses
  %i.id = fsub double %i.dz, %i.fy                ; 2 uses
  %i.ie = extractelement <2 x double> %i.cz, i64 1 ; 2 uses
  %i.if = fadd double %i.ie, %i.id                ; 2 uses
  %i.ig = fsub double %i.id, %i.ie                ; 2 uses
  %i.ih = fadd double %i.ht, %i.ib
  %i.ii = fmul double %i.ih, 2.000000e+00
  %i.ij = getelementptr inbounds [8 x i8], ptr %.0291, i64 %i.hk
  store double %i.ii, ptr %i.ij, align 8, !tbaa !13
  %i.ik = fsub double %i.ic, %i.hu
  %i.il = fmul double %i.ik, 2.000000e+00
  %i.im = getelementptr inbounds [8 x i8], ptr %.0291, i64 %i.fc
  store double %i.il, ptr %i.im, align 8, !tbaa !13
  %i.in = fadd double %i.hy, %i.ig
  %i.io = fmul double %i.in, 2.000000e+00
  %i.ip = getelementptr inbounds [8 x i8], ptr %.0291, i64 %i.fh
  store double %i.io, ptr %i.ip, align 8, !tbaa !13
  %i.iq = fadd double %i.hx, %i.if
  %i.ir = fmul double %i.iq, 2.000000e+00
  %i.is = getelementptr inbounds [8 x i8], ptr %.0291, i64 %i.hp
  store double %i.ir, ptr %i.is, align 8, !tbaa !13
  %i.it = fadd double %i.hu, %i.ic                ; 2 uses
  %i.iu = fsub double %i.ig, %i.hy                ; 2 uses
  %i.iv = fadd double %i.it, %i.iu
  %i.iw = fmul double %i.iv, f0x3FF6A09E667F3BCD
  %i.ix = getelementptr inbounds [8 x i8], ptr %.0277290, i64 %i.gg
  store double %i.iw, ptr %i.ix, align 8, !tbaa !13
  %i.iy = fsub double %i.iu, %i.it
  %i.iz = fmul double %i.iy, f0x3FF6A09E667F3BCD
  %i.ja = getelementptr inbounds [8 x i8], ptr %.0277290, i64 %i.gq
  store double %i.iz, ptr %i.ja, align 8, !tbaa !13
  %i.jb = fsub double %i.ht, %i.ib                ; 2 uses
  %i.jc = fsub double %i.if, %i.hx                ; 2 uses
  %i.jd = fadd double %i.jb, %i.jc
  %i.je = fmul double %i.jd, f0x3FF6A09E667F3BCD
  store double %i.je, ptr %.0277290, align 8, !tbaa !13
  %i.jf = fsub double %i.jc, %i.jb
  %i.jg = fmul double %i.jf, f0x3FF6A09E667F3BCD
  %i.jh = getelementptr inbounds [8 x i8], ptr %.0277290, i64 %i.ex
  store double %i.jg, ptr %i.jh, align 8, !tbaa !13
  %i.ji = add nsw i64 %.0283284, -1
  %i.jj = getelementptr inbounds [8 x i8], ptr %.0291, i64 %9
  %i.jk = getelementptr inbounds [8 x i8], ptr %.0277290, i64 %9
  %i.jl = getelementptr inbounds [8 x i8], ptr %.0278289, i64 %8
  %i.jm = getelementptr inbounds [8 x i8], ptr %.0279288, i64 %8
  %i.jn = getelementptr inbounds [8 x i8], ptr %.0280287, i64 %i.b
  %i.jo = getelementptr inbounds [8 x i8], ptr %.0281286, i64 %i.b
  %i.jp = getelementptr inbounds [8 x i8], ptr %.0282285, i64 %i.b
  %i.jq = icmp samesign ugt i64 %.0283284, 1
  br i1 %i.jq, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

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
