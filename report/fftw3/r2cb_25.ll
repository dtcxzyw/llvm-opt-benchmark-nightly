Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cb_25?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 25, ptr @.str, %struct.opcnt { double 1.000000e+02, double 4.600000e+01, double 5.200000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cb_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [8 x i8] c"r2cb_25\00", align 1
@fftw_rdft_r2cb_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cb_25(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cb_25, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cb_25(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0428 = phi ptr [ %0, %.lr.ph ], [ %i.mn, %bb.b ] ; 14 uses
  %.0414427 = phi ptr [ %1, %.lr.ph ], [ %i.mo, %bb.b ] ; 13 uses
  %.0415426 = phi ptr [ %2, %.lr.ph ], [ %i.mp, %bb.b ] ; 14 uses
  %.0416425 = phi ptr [ %3, %.lr.ph ], [ %i.mq, %bb.b ] ; 13 uses
  %.0417424 = phi ptr [ %4, %.lr.ph ], [ %i.mr, %bb.b ] ; 13 uses
  %.0418423 = phi ptr [ %5, %.lr.ph ], [ %i.ms, %bb.b ] ; 13 uses
  %.0419422 = phi ptr [ %6, %.lr.ph ], [ %i.mt, %bb.b ] ; 13 uses
  %.0420421 = phi i64 [ %7, %.lr.ph ], [ %i.mm, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0419422, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %.0416425, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %.0419422, i64 80
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds [8 x i8], ptr %.0416425, i64 %i.h
  %i.j = load double, ptr %i.i, align 8, !tbaa !13
  %i.k = insertelement <2 x double> poison, double %i.j, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x double> %i.l, <double f0x3FF2CF2304755A5E, double f0xBFFE6F0E134454FF>
  %i.n = insertelement <2 x double> poison, double %i.f, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> <double f0x3FFE6F0E134454FF, double f0x3FF2CF2304755A5E>, <2 x double> %i.m) ; 2 uses
  %i.q = load double, ptr %.0415426, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.0418423, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11
  %i.t = getelementptr inbounds [8 x i8], ptr %.0415426, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !13 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0418423, i64 80
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11
  %i.x = getelementptr inbounds [8 x i8], ptr %.0415426, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !13 ; 2 uses
  %i.z = fadd double %i.u, %i.y
  %i.aa = fsub double %i.u, %i.y
  %i.ab = fmul double %i.aa, f0x3FF1E3779B97F4A8  ; 2 uses
  %i.ac = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = insertelement <2 x double> poison, double %i.q, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> <double 2.000000e+00, double -5.000000e-01>, <2 x double> %i.af) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 1 ; 2 uses
  %i.ai = fadd double %i.ab, %i.ah                ; 2 uses
  %i.aj = fsub double %i.ah, %i.ab                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0418423, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !11
  %i.am = getelementptr inbounds [8 x i8], ptr %.0415426, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !13 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0419422, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11
  %i.aq = getelementptr inbounds [8 x i8], ptr %.0416425, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.0418423, i64 48
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11
  %i.au = getelementptr inbounds [8 x i8], ptr %.0415426, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.0418423, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !11
  %i.ay = getelementptr inbounds [8 x i8], ptr %.0415426, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.0418423, i64 88
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !11
  %i.bc = getelementptr inbounds [8 x i8], ptr %.0415426, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !13 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0418423, i64 72
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11
  %i.bg = getelementptr inbounds [8 x i8], ptr %.0415426, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !13 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0419422, i64 48
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0416425, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0419422, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = getelementptr inbounds [8 x i8], ptr %.0416425, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !13 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0419422, i64 88
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !11
  %i.bs = getelementptr inbounds [8 x i8], ptr %.0416425, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !13 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0419422, i64 72
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11
  %i.bw = getelementptr inbounds [8 x i8], ptr %.0416425, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !13 ; 2 uses
  %i.by = fadd double %i.bt, %i.bx                ; 2 uses
  %i.bz = insertelement <2 x double> poison, double %i.av, i64 0 ; 2 uses
  %i.ca = insertelement <2 x double> %i.bz, double %i.bd, i64 1
  %i.cb = insertelement <2 x double> poison, double %i.az, i64 0 ; 2 uses
  %i.cc = insertelement <2 x double> %i.cb, double %i.bh, i64 1
  %i.cd = fsub <2 x double> %i.ca, %i.cc          ; 2 uses
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cf = fmul <2 x double> %i.ce, <double f0x3FE2CF2304755A5E, double f0xBFEE6F0E134454FF>
  %i.cg = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> <double f0x3FEE6F0E134454FF, double f0x3FE2CF2304755A5E>, <2 x double> %i.cf) ; 2 uses
  %i.ci = fmul double %i.by, f0x3FE2CF2304755A5E
  %i.cj = insertelement <2 x double> poison, double %i.ar, i64 0 ; 2 uses
  %i.ck = insertelement <2 x double> %i.cj, double %i.ci, i64 1
  %i.cl = fmul double %i.by, f0xBFEE6F0E134454FF
  %i.cm = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.an, i64 1
  %i.co = getelementptr inbounds nuw i8, ptr %.0418423, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !11
  %i.cq = getelementptr inbounds [8 x i8], ptr %.0415426, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !13 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0419422, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !11
  %i.cu = getelementptr inbounds [8 x i8], ptr %.0416425, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !13 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0418423, i64 56
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !11
  %i.cy = getelementptr inbounds [8 x i8], ptr %.0415426, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !13 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0418423, i64 24
  %i.db = load i64, ptr %i.da, align 8, !tbaa !11
  %i.dc = getelementptr inbounds [8 x i8], ptr %.0415426, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !13 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0418423, i64 96
  %i.df = load i64, ptr %i.de, align 8, !tbaa !11
  %i.dg = getelementptr inbounds [8 x i8], ptr %.0415426, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !13 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0418423, i64 64
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !11
  %i.dk = getelementptr inbounds [8 x i8], ptr %.0415426, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !13 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0419422, i64 56
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !11
  %i.do = getelementptr inbounds [8 x i8], ptr %.0416425, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !13 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0419422, i64 24
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !11
  %i.ds = getelementptr inbounds [8 x i8], ptr %.0416425, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !13 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0419422, i64 96
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !11
  %i.dw = getelementptr inbounds [8 x i8], ptr %.0416425, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !13 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0419422, i64 64
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !11
  %i.ea = getelementptr inbounds [8 x i8], ptr %.0416425, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !13 ; 2 uses
  %i.ec = fadd double %i.dx, %i.eb                ; 2 uses
  %i.ed = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %i.dh, i64 1
  %i.ef = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.dl, i64 1
  %i.eh = fsub <2 x double> %i.ee, %i.eg          ; 2 uses
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ej = fmul <2 x double> %i.ei, <double f0x3FE2CF2304755A5E, double f0xBFEE6F0E134454FF>
  %i.ek = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> <double f0x3FEE6F0E134454FF, double f0x3FE2CF2304755A5E>, <2 x double> %i.ej) ; 2 uses
  %i.em = fmul double %i.ec, f0x3FE2CF2304755A5E
  %i.en = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.eo = insertelement <2 x double> %i.en, double %i.em, i64 1
  %i.ep = fmul double %i.ec, f0xBFEE6F0E134454FF
  %i.eq = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.cr, i64 1
  %i.es = extractelement <2 x double> %i.ag, i64 0 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0417424, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !11 ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %.0414427, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %.0417424, i64 80
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !11 ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %.0428, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %.0417424, i64 40
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !11 ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %.0428, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %.0417424, i64 56
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !11 ; 2 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %.0414427, i64 %i.fd
  %i.ff = insertelement <2 x double> %i.bz, double %i.cz, i64 1
  %i.fg = insertelement <2 x double> %i.cb, double %i.dd, i64 1
  %i.fh = fadd <2 x double> %i.ff, %i.fg          ; 3 uses
  %i.fi = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.fj = insertelement <2 x double> %i.fi, double %i.dh, i64 1
  %i.fk = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.dl, i64 1
  %i.fm = fadd <2 x double> %i.fj, %i.fl          ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.fh, %i.fm ; 2 uses
  %i.fn = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fo = fadd double %i.an, %i.fn                ; 2 uses
  %i.fp = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.dp, i64 1
  %i.fr = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.fs = insertelement <2 x double> %i.fr, double %i.dt, i64 1
  %i.ft = fsub <2 x double> %i.fq, %i.fs          ; 3 uses
  %i.fu = insertelement <2 x double> %i.ft, double %i.bl, i64 1
  %i.fv = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.dx, i64 1
  %i.fx = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.fy = insertelement <2 x double> %i.fx, double %i.eb, i64 1
  %i.fz = fsub <2 x double> %i.fw, %i.fy          ; 3 uses
  %i.ga = insertelement <2 x double> %i.fz, double %i.bp, i64 1
  %i.gb = fadd <2 x double> %i.fu, %i.ga          ; 3 uses
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %i.ck) ; 2 uses
  %i.gd = fsub <2 x double> %i.ft, %i.fz
  %i.ge = fmul <2 x double> %i.gd, splat (double f0x3FE1E3779B97F4A8) ; 2 uses
  %i.gf = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gg = insertelement <2 x double> %i.gf, double %i.dp, i64 1
  %i.gh = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gi = insertelement <2 x double> %i.gh, double %i.dt, i64 1
  %i.gj = fadd <2 x double> %i.gg, %i.gi          ; 3 uses
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %i.eo) ; 2 uses
  %i.gl = shufflevector <2 x double> %i.gc, <2 x double> %i.gk, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gm = fsub <2 x double> %i.gl, %i.ge          ; 2 uses
  %i.gn = shufflevector <2 x double> %i.gb, <2 x double> %foldExtExtBinop, <2 x i32> <i32 1, i32 2>
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> <double f0x3FE2CF2304755A5E, double -2.500000e-01>, <2 x double> %i.cn) ; 2 uses
  %i.gp = fsub <2 x double> %i.fh, %i.fm
  %i.gq = fmul <2 x double> %i.gp, splat (double f0x3FE1E3779B97F4A8) ; 2 uses
  %foldExtExtBinop430 = fadd <2 x double> %i.fh, %i.fm ; 2 uses
  %i.gr = extractelement <2 x double> %foldExtExtBinop430, i64 1
  %i.gs = shufflevector <2 x double> %i.gj, <2 x double> %foldExtExtBinop430, <2 x i32> <i32 1, i32 3>
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> <double f0x3FE2CF2304755A5E, double -2.500000e-01>, <2 x double> %i.er) ; 2 uses
  %i.gu = shufflevector <2 x double> %i.go, <2 x double> %i.gt, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gv = fsub <2 x double> %i.gu, %i.gq          ; 2 uses
  %i.gw = fadd double %i.cr, %i.gr                ; 2 uses
  %i.gx = shufflevector <2 x double> %i.ch, <2 x double> %i.el, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gy = fsub <2 x double> %i.gm, %i.gx          ; 2 uses
  %i.gz = shufflevector <2 x double> %i.go, <2 x double> %i.gt, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ha = fadd <2 x double> %i.gv, %i.gz          ; 2 uses
  %10 = fsub double %i.fo, %i.gw
  %11 = fmul double %10, f0x3FF1E3779B97F4A8      ; 2 uses
  %12 = fadd double %i.fo, %i.gw                  ; 2 uses
  %13 = tail call double @llvm.fmuladd.f64(double %12, double -5.000000e-01, double %i.es) ; 2 uses
  %14 = tail call double @llvm.fmuladd.f64(double %12, double 2.000000e+00, double %i.es)
  store double %14, ptr %.0428, align 8, !tbaa !13
  %15 = insertelement <2 x double> %i.cj, double %i.cv, i64 1
  %16 = shufflevector <2 x double> %i.gb, <2 x double> %i.gj, <2 x i32> <i32 0, i32 2>
  %17 = fadd <2 x double> %15, %16                ; 2 uses
  %i.hb = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hc = fmul <2 x double> %i.hb, <double f0x3FF2CF2304755A5E, double f0xBFFE6F0E134454FF>
  %i.hd = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %i.he = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> <double f0x3FFE6F0E134454FF, double f0x3FF2CF2304755A5E>, <2 x double> %i.hc) ; 3 uses
  %18 = fsub double %13, %11                      ; 2 uses
  %i.hf = fadd double %11, %13                    ; 2 uses
  %19 = insertelement <2 x double> poison, double %i.hf, i64 0
  %20 = insertelement <2 x double> %19, double %18, i64 1
  %21 = fsub <2 x double> %20, %i.he              ; 2 uses
  %22 = extractelement <2 x double> %21, i64 0
  store double %22, ptr %i.ev, align 8, !tbaa !13
  %23 = extractelement <2 x double> %i.he, i64 0
  %24 = fadd double %i.hf, %23
  store double %24, ptr %i.ey, align 8, !tbaa !13
  %25 = extractelement <2 x double> %21, i64 1
  store double %25, ptr %i.fb, align 8, !tbaa !13
  %26 = extractelement <2 x double> %i.he, i64 1
  %27 = fadd double %18, %26
  store double %27, ptr %i.fe, align 8, !tbaa !13
  %28 = fmul <2 x double> %i.gy, <double f0x3FE753B603D2B816, double f0x3FB0130A1BE09379>
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> <double f0x3FE5E7CF55112014, double f0x3FEFEFD5BFE443FE>, <2 x double> %28) ; 2 uses
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %31 = fmul <2 x double> %30, <double f0xBFFE6F0E134454FF, double f0x3FF2CF2304755A5E>
  %32 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> <double f0x3FF2CF2304755A5E, double f0x3FFE6F0E134454FF>, <2 x double> %31) ; 2 uses
  %33 = extractelement <2 x double> %i.p, i64 1   ; 2 uses
  %i.hh = fmul <2 x double> %i.gy, <double f0xBFE5E7CF55112014, double f0xBFEFEFD5BFE443FE>
  %34 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> <double f0x3FE753B603D2B816, double f0x3FB0130A1BE09379>, <2 x double> %i.hh) ; 2 uses
  %i.hi = extractelement <2 x double> %34, i64 0  ; 2 uses
  %35 = extractelement <2 x double> %34, i64 1    ; 2 uses
  %36 = fsub double %i.hi, %35
  %37 = fmul double %36, f0x3FF1E3779B97F4A8      ; 2 uses
  %38 = fadd double %33, %i.aj
  %39 = fadd double %i.hi, %35
  %40 = insertelement <2 x double> poison, double %39, i64 0
  %41 = shufflevector <2 x double> %40, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = insertelement <2 x double> poison, double %38, i64 0
  %42 = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer
  %43 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %41, <2 x double> <double -5.000000e-01, double 2.000000e+00>, <2 x double> %42) ; 2 uses
  %44 = getelementptr inbounds nuw i8, ptr %.0417424, i64 8
  %45 = load i64, ptr %44, align 8, !tbaa !11     ; 2 uses
  %46 = getelementptr inbounds [8 x i8], ptr %.0414427, i64 %45
  %i.hk = extractelement <2 x double> %43, i64 1
  store double %i.hk, ptr %46, align 8, !tbaa !13
  %47 = extractelement <2 x double> %43, i64 0    ; 2 uses
  %48 = fadd double %37, %47                      ; 2 uses
  %i.hl = extractelement <2 x double> %i.hg, i64 1 ; 2 uses
  %49 = fsub double %48, %i.hl
  %i.hm = getelementptr inbounds nuw i8, ptr %.0417424, i64 32
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !11 ; 2 uses
  %i.ho = getelementptr inbounds [8 x i8], ptr %.0428, i64 %i.hn
  store double %49, ptr %i.ho, align 8, !tbaa !13
  %50 = fadd double %i.hl, %48
  %51 = getelementptr inbounds nuw i8, ptr %.0417424, i64 88
  %52 = load i64, ptr %51, align 8, !tbaa !11     ; 2 uses
  %53 = getelementptr inbounds [8 x i8], ptr %.0414427, i64 %52
  store double %50, ptr %53, align 8, !tbaa !13
  %54 = fsub double %47, %37                      ; 2 uses
  %i.hp = extractelement <2 x double> %i.hg, i64 0 ; 2 uses
  %i.hq = fsub double %54, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %.0417424, i64 48
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !11 ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %.0414427, i64 %i.hs
  store double %i.hq, ptr %i.ht, align 8, !tbaa !13
  %i.hu = fadd double %i.hp, %54
  %i.hv = getelementptr inbounds nuw i8, ptr %.0417424, i64 72
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !11 ; 2 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %.0428, i64 %i.hw
  store double %i.hu, ptr %i.hx, align 8, !tbaa !13
  %i.hy = fadd <2 x double> %i.ge, %i.gl          ; 2 uses
  %i.hz = fadd <2 x double> %i.gq, %i.gu          ; 2 uses
  %i.ia = shufflevector <2 x double> %i.ch, <2 x double> %i.el, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ib = fadd <2 x double> %i.ia, %i.hy          ; 2 uses
  %i.ic = shufflevector <2 x double> %i.gc, <2 x double> %i.gk, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.id = fsub <2 x double> %i.hz, %i.ic          ; 2 uses
  %i.ie = fmul <2 x double> %i.ib, <double f0x3FEEFEA21D101EE0, double f0x3FEC0AB44E81C059>
  %i.if = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> <double f0x3FCFD511FA1C0796, double f0x3FDED50D5CBFA951>, <2 x double> %i.ie) ; 2 uses
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ih = fmul <2 x double> %i.ig, <double f0xBFFE6F0E134454FF, double f0x3FF2CF2304755A5E>
  %i.ii = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> <double f0x3FF2CF2304755A5E, double f0x3FFE6F0E134454FF>, <2 x double> %i.ih) ; 2 uses
  %i.ik = extractelement <2 x double> %i.p, i64 0 ; 2 uses
  %i.il = fmul <2 x double> %i.ib, <double f0xBFCFD511FA1C0796, double f0xBFDED50D5CBFA951>
  %i.im = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> <double f0x3FEEFEA21D101EE0, double f0x3FEC0AB44E81C059>, <2 x double> %i.il) ; 2 uses
  %i.in = extractelement <2 x double> %i.im, i64 0 ; 2 uses
  %i.io = extractelement <2 x double> %i.im, i64 1 ; 2 uses
  %i.ip = fsub double %i.in, %i.io
  %i.iq = fmul double %i.ip, f0x3FF1E3779B97F4A8  ; 2 uses
  %i.ir = fsub double %i.ai, %i.ik
  %i.is = fadd double %i.in, %i.io
  %i.it = insertelement <2 x double> poison, double %i.is, i64 0
  %i.iu = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iv = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iu, <2 x double> <double -5.000000e-01, double 2.000000e+00>, <2 x double> %i.iw) ; 2 uses
  %i.iy = extractelement <2 x double> %i.ix, i64 1
  store double %i.iy, ptr %.0414427, align 8, !tbaa !13
  %i.iz = extractelement <2 x double> %i.ix, i64 0 ; 2 uses
  %i.ja = fadd double %i.iq, %i.iz                ; 2 uses
  %i.jb = extractelement <2 x double> %i.ij, i64 1 ; 2 uses
  %i.jc = fsub double %i.ja, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %.0417424, i64 24
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !11 ; 2 uses
  %i.jf = getelementptr inbounds [8 x i8], ptr %.0428, i64 %i.je
  store double %i.jc, ptr %i.jf, align 8, !tbaa !13
  %i.jg = fadd double %i.jb, %i.ja
  %i.jh = getelementptr inbounds [8 x i8], ptr %.0414427, i64 %i.ex
  store double %i.jg, ptr %i.jh, align 8, !tbaa !13
  %i.ji = fsub double %i.iz, %i.iq                ; 2 uses
  %i.jj = extractelement <2 x double> %i.ij, i64 0 ; 2 uses
  %i.jk = fsub double %i.ji, %i.jj
  %i.jl = getelementptr inbounds [8 x i8], ptr %.0414427, i64 %i.fa
  store double %i.jk, ptr %i.jl, align 8, !tbaa !13
  %i.jm = fadd double %i.jj, %i.ji
  %i.jn = getelementptr inbounds nuw i8, ptr %.0417424, i64 64
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !11 ; 2 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %.0428, i64 %i.jo
  store double %i.jm, ptr %i.jp, align 8, !tbaa !13
  %i.jq = fsub <2 x double> %i.hy, %i.ia          ; 2 uses
  %i.jr = fadd <2 x double> %i.hz, %i.ic          ; 2 uses
  %i.js = fmul <2 x double> %i.jq, <double f0x3FE1257E3C182B51, double f0xBFDB3FF7C925819C>
  %i.jt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> <double f0x3FEB04BBFF642E86, double f0x3FECF457DCDC158C>, <2 x double> %i.js) ; 2 uses
  %i.ju = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jv = fmul <2 x double> %i.ju, <double f0xBFFE6F0E134454FF, double f0x3FF2CF2304755A5E>
  %i.jw = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> <double f0x3FF2CF2304755A5E, double f0x3FFE6F0E134454FF>, <2 x double> %i.jv) ; 2 uses
  %i.jy = fmul <2 x double> %i.jq, <double f0xBFEB04BBFF642E86, double f0x3FECF457DCDC158C>
  %i.jz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> <double f0x3FE1257E3C182B51, double f0x3FDB3FF7C925819C>, <2 x double> %i.jy) ; 2 uses
  %i.ka = extractelement <2 x double> %i.jz, i64 0 ; 2 uses
  %i.kb = extractelement <2 x double> %i.jz, i64 1 ; 2 uses
  %i.kc = fadd double %i.ka, %i.kb
  %i.kd = fmul double %i.kc, f0x3FF1E3779B97F4A8  ; 2 uses
  %i.ke = fadd double %i.ik, %i.ai
  %i.kf = fsub double %i.ka, %i.kb
  %i.kg = insertelement <2 x double> poison, double %i.kf, i64 0
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ki = insertelement <2 x double> poison, double %i.ke, i64 0
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kh, <2 x double> <double -5.000000e-01, double 2.000000e+00>, <2 x double> %i.kj) ; 2 uses
  %i.kl = getelementptr inbounds [8 x i8], ptr %.0428, i64 %i.eu
  %i.km = extractelement <2 x double> %i.kk, i64 1
  store double %i.km, ptr %i.kl, align 8, !tbaa !13
  %i.kn = extractelement <2 x double> %i.kk, i64 0 ; 2 uses
  %i.ko = fadd double %i.kn, %i.kd                ; 2 uses
  %i.kp = extractelement <2 x double> %i.jx, i64 1 ; 2 uses
  %i.kq = fsub double %i.ko, %i.kp
  %i.kr = getelementptr inbounds [8 x i8], ptr %.0414427, i64 %i.hn
  store double %i.kq, ptr %i.kr, align 8, !tbaa !13
  %i.ks = fadd double %i.kp, %i.ko
  %i.kt = getelementptr inbounds nuw i8, ptr %.0417424, i64 96
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !11
  %i.kv = getelementptr inbounds [8 x i8], ptr %.0428, i64 %i.ku
  store double %i.ks, ptr %i.kv, align 8, !tbaa !13
  %i.kw = fsub double %i.kn, %i.kd                ; 2 uses
  %i.kx = extractelement <2 x double> %i.jx, i64 0 ; 2 uses
  %i.ky = fsub double %i.kw, %i.kx
  %i.kz = getelementptr inbounds [8 x i8], ptr %.0428, i64 %i.fd
  store double %i.ky, ptr %i.kz, align 8, !tbaa !13
  %i.la = fadd double %i.kx, %i.kw
  %i.lb = getelementptr inbounds [8 x i8], ptr %.0414427, i64 %i.hw
  store double %i.la, ptr %i.lb, align 8, !tbaa !13
  %i.lc = fadd <2 x double> %i.gx, %i.gm          ; 2 uses
  %i.ld = fsub <2 x double> %i.gv, %i.gz          ; 2 uses
  %i.le = fmul <2 x double> %i.lc, <double f0x3FEC0AB44E81C059, double f0x3FE1257E3C182B51>
  %i.lf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ld, <2 x double> <double f0x3FDED50D5CBFA951, double f0x3FEB04BBFF642E86>, <2 x double> %i.le) ; 2 uses
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lh = fmul <2 x double> %i.lg, <double f0xBFFE6F0E134454FF, double f0x3FF2CF2304755A5E>
  %i.li = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> <double f0x3FF2CF2304755A5E, double f0x3FFE6F0E134454FF>, <2 x double> %i.lh) ; 2 uses
  %i.lk = fmul <2 x double> %i.lc, <double f0xBFDED50D5CBFA951, double f0xBFEB04BBFF642E86>
  %i.ll = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ld, <2 x double> <double f0x3FEC0AB44E81C059, double f0x3FE1257E3C182B51>, <2 x double> %i.lk) ; 2 uses
  %i.lm = extractelement <2 x double> %i.ll, i64 0 ; 2 uses
  %i.ln = extractelement <2 x double> %i.ll, i64 1 ; 2 uses
  %i.lo = fsub double %i.lm, %i.ln
  %i.lp = fmul double %i.lo, f0x3FF1E3779B97F4A8  ; 2 uses
  %i.lq = fsub double %i.aj, %33
  %i.lr = fadd double %i.lm, %i.ln
  %i.ls = insertelement <2 x double> poison, double %i.lr, i64 0
  %i.lt = shufflevector <2 x double> %i.ls, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lu = insertelement <2 x double> poison, double %i.lq, i64 0
  %i.lv = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> <double -5.000000e-01, double 2.000000e+00>, <2 x double> %i.lv) ; 2 uses
  %i.lx = getelementptr inbounds [8 x i8], ptr %.0428, i64 %45
  %i.ly = extractelement <2 x double> %i.lw, i64 1
  store double %i.ly, ptr %i.lx, align 8, !tbaa !13
  %i.lz = extractelement <2 x double> %i.lw, i64 0 ; 2 uses
  %i.ma = fadd double %i.lp, %i.lz                ; 2 uses
  %i.mb = extractelement <2 x double> %i.lj, i64 1 ; 2 uses
  %i.mc = fsub double %i.ma, %i.mb
  %i.md = getelementptr inbounds [8 x i8], ptr %.0414427, i64 %i.je
  store double %i.mc, ptr %i.md, align 8, !tbaa !13
  %i.me = fadd double %i.mb, %i.ma
  %i.mf = getelementptr inbounds [8 x i8], ptr %.0428, i64 %52
  store double %i.me, ptr %i.mf, align 8, !tbaa !13
  %i.mg = fsub double %i.lz, %i.lp                ; 2 uses
  %i.mh = extractelement <2 x double> %i.lj, i64 0 ; 2 uses
  %i.mi = fsub double %i.mg, %i.mh
  %i.mj = getelementptr inbounds [8 x i8], ptr %.0428, i64 %i.hs
  store double %i.mi, ptr %i.mj, align 8, !tbaa !13
  %i.mk = fadd double %i.mh, %i.mg
  %i.ml = getelementptr inbounds [8 x i8], ptr %.0414427, i64 %i.jo
  store double %i.mk, ptr %i.ml, align 8, !tbaa !13
  %i.mm = add nsw i64 %.0420421, -1
  %i.mn = getelementptr inbounds [8 x i8], ptr %.0428, i64 %9
  %i.mo = getelementptr inbounds [8 x i8], ptr %.0414427, i64 %9
  %i.mp = getelementptr inbounds [8 x i8], ptr %.0415426, i64 %8
  %i.mq = getelementptr inbounds [8 x i8], ptr %.0416425, i64 %8
  %i.mr = getelementptr inbounds [8 x i8], ptr %.0417424, i64 %i.b
  %i.ms = getelementptr inbounds [8 x i8], ptr %.0418423, i64 %i.b
  %i.mt = getelementptr inbounds [8 x i8], ptr %.0419422, i64 %i.b
  %i.mu = icmp samesign ugt i64 %.0420421, 1
  br i1 %i.mu, label %bb.b, label %._crit_edge, !llvm.loop !9

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
