Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/n1_14?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kdft_desc_s = type { i64, ptr, %struct.opcnt, ptr, i64, i64, i64, i64 }
%struct.opcnt = type { double, double, double, double }
%struct.kdft_genus = type { ptr, i64 }

@desc = internal constant %struct.kdft_desc_s { i64 14, ptr @.str, %struct.opcnt { double 1.000000e+02, double 2.400000e+01, double 4.800000e+01, double 0.000000e+00 }, ptr @fftw_dft_n_genus, i64 0, i64 0, i64 0, i64 0 }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [6 x i8] c"n1_14\00", align 1
@fftw_dft_n_genus = external constant %struct.kdft_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_n1_14(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kdft_register(ptr noundef %0, ptr noundef nonnull @n1_14, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kdft_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @n1_14(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp sgt i64 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0384 = phi ptr [ %0, %.lr.ph ], [ %i.ie, %bb.b ] ; 15 uses
  %.0372383 = phi ptr [ %1, %.lr.ph ], [ %i.if, %bb.b ] ; 15 uses
  %.0373382 = phi ptr [ %2, %.lr.ph ], [ %i.ig, %bb.b ] ; 15 uses
  %.0374381 = phi ptr [ %3, %.lr.ph ], [ %i.ih, %bb.b ] ; 15 uses
  %.0375380 = phi ptr [ %4, %.lr.ph ], [ %i.ii, %bb.b ] ; 14 uses
  %.0376379 = phi ptr [ %5, %.lr.ph ], [ %i.ij, %bb.b ] ; 14 uses
  %.0377378 = phi i64 [ %6, %.lr.ph ], [ %i.id, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.0384, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %.0375380, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.0384, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !13
  %i.h = load double, ptr %.0372383, align 8, !tbaa !13 ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %.0372383, i64 %i.e
  %i.j = load double, ptr %i.i, align 8, !tbaa !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0375380, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11   ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %.0384, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.0375380, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11   ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %.0384, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.0375380, i64 96
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11   ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %.0384, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.0375380, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11   ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.0384, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !13
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0372383, i64 %i.l
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.0372383, i64 %i.p
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !13 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %.0372383, i64 %i.t
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %.0372383, i64 %i.x
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !13 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0375380, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %.0384, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.0375380, i64 88
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.0384, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.0375380, i64 80
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !11 ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.0384, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.0375380, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.0384, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13
  %i.ay = getelementptr inbounds [8 x i8], ptr %.0372383, i64 %i.aj
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.0372383, i64 %i.an
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !13 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.0372383, i64 %i.ar
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !13 ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %.0372383, i64 %i.av
  %i.bf = load double, ptr %i.be, align 8, !tbaa !13 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0375380, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0384, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0375380, i64 104
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.0384, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !13 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0375380, i64 64
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11 ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %.0384, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0375380, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11 ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %.0384, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !13 ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %.0372383, i64 %i.bh
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !13 ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %.0372383, i64 %i.bl
  %i.bz = load double, ptr %i.by, align 8, !tbaa !13 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %.0372383, i64 %i.bp
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !13 ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %.0372383, i64 %i.bt
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !13 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0376379, i64 56
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.0373382, i64 %i.cf
  %i.ch = getelementptr inbounds [8 x i8], ptr %.0374381, i64 %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %.0376379, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !11 ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %.0373382, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.0376379, i64 72
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !11 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %.0373382, i64 %i.cm
  %i.co = getelementptr inbounds [8 x i8], ptr %.0374381, i64 %i.cj
  %i.cp = insertelement <2 x double> poison, double %i.n, i64 0 ; 2 uses
  %i.cq = insertelement <2 x double> %i.cp, double %i.ab, i64 1
  %i.cr = insertelement <2 x double> poison, double %i.r, i64 0 ; 2 uses
  %i.cs = insertelement <2 x double> %i.cr, double %i.ad, i64 1
  %i.ct = fsub <2 x double> %i.cq, %i.cs          ; 3 uses
  %i.cu = insertelement <2 x double> poison, double %i.v, i64 0 ; 2 uses
  %i.cv = insertelement <2 x double> %i.cu, double %i.af, i64 1
  %i.cw = insertelement <2 x double> poison, double %i.z, i64 0 ; 2 uses
  %i.cx = insertelement <2 x double> %i.cw, double %i.ah, i64 1
  %i.cy = fsub <2 x double> %i.cv, %i.cx          ; 3 uses
  %i.cz = fadd <2 x double> %i.ct, %i.cy          ; 5 uses
  %i.da = insertelement <2 x double> poison, double %i.al, i64 0 ; 2 uses
  %i.db = insertelement <2 x double> %i.da, double %i.az, i64 1
  %i.dc = insertelement <2 x double> poison, double %i.ap, i64 0 ; 2 uses
  %i.dd = insertelement <2 x double> %i.dc, double %i.bb, i64 1
  %i.de = fsub <2 x double> %i.db, %i.dd          ; 3 uses
  %i.df = insertelement <2 x double> poison, double %i.at, i64 0 ; 2 uses
  %i.dg = insertelement <2 x double> %i.df, double %i.bd, i64 1
  %i.dh = insertelement <2 x double> poison, double %i.ax, i64 0 ; 2 uses
  %i.di = insertelement <2 x double> %i.dh, double %i.bf, i64 1
  %i.dj = fsub <2 x double> %i.dg, %i.di          ; 3 uses
  %i.dk = fadd <2 x double> %i.de, %i.dj          ; 5 uses
  %i.dl = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.bx, i64 1
  %i.dn = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.bz, i64 1
  %i.dp = fsub <2 x double> %i.dm, %i.do          ; 3 uses
  %i.dq = insertelement <2 x double> poison, double %i.br, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.cb, i64 1
  %i.ds = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.cd, i64 1
  %i.du = fsub <2 x double> %i.dr, %i.dt          ; 3 uses
  %i.dv = fadd <2 x double> %i.dp, %i.du          ; 5 uses
  %i.dw = fmul <2 x double> %i.cz, splat (double f0x3FCC7B90E3024582)
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> splat (double f0x3FECD4BCA9CB5C71), <2 x double> %i.dw)
  %i.dy = getelementptr inbounds [8 x i8], ptr %.0374381, i64 %i.cm
  %i.dz = getelementptr inbounds nuw i8, ptr %.0376379, i64 104
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !11 ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %.0373382, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %.0376379, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !11 ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %.0373382, i64 %i.ed
  %i.ef = insertelement <2 x double> poison, double %i.c, i64 0 ; 2 uses
  %i.eg = insertelement <2 x double> %i.ef, double %i.h, i64 1
  %i.eh = insertelement <2 x double> poison, double %i.g, i64 0 ; 2 uses
  %i.ei = insertelement <2 x double> %i.eh, double %i.j, i64 1
  %i.ej = fsub <2 x double> %i.eg, %i.ei          ; 5 uses
  %i.ek = shufflevector <2 x double> %i.ct, <2 x double> %i.cy, <2 x i32> <i32 1, i32 2>
  %i.el = shufflevector <2 x double> %i.cy, <2 x double> %i.ct, <2 x i32> <i32 1, i32 2>
  %i.em = fsub <2 x double> %i.ek, %i.el          ; 3 uses
  %i.en = shufflevector <2 x double> %i.de, <2 x double> %i.dj, <2 x i32> <i32 1, i32 2>
  %i.eo = shufflevector <2 x double> %i.dj, <2 x double> %i.de, <2 x i32> <i32 1, i32 2>
  %i.ep = fsub <2 x double> %i.en, %i.eo          ; 3 uses
  %i.eq = shufflevector <2 x double> %i.dp, <2 x double> %i.du, <2 x i32> <i32 1, i32 2>
  %i.er = shufflevector <2 x double> %i.du, <2 x double> %i.dp, <2 x i32> <i32 1, i32 2>
  %i.es = fsub <2 x double> %i.eq, %i.er          ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.ej, %i.cz
  %foldExtExtBinop386 = fadd <2 x double> %foldExtExtBinop, %i.dk
  %foldExtExtBinop388 = fadd <2 x double> %foldExtExtBinop386, %i.dv
  %i.et = extractelement <2 x double> %foldExtExtBinop388, i64 0
  store double %i.et, ptr %i.cg, align 8, !tbaa !13
  %foldExtExtBinop390 = fadd <2 x double> %i.ej, %i.cz
  %foldExtExtBinop392 = fadd <2 x double> %foldExtExtBinop390, %i.dk
  %foldExtExtBinop394 = fadd <2 x double> %foldExtExtBinop392, %i.dv
  %i.eu = extractelement <2 x double> %foldExtExtBinop394, i64 1
  store double %i.eu, ptr %i.ch, align 8, !tbaa !13
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> splat (double f0x3FE3F3A0E28BEDD1), <2 x double> %i.ej)
  %i.ew = fsub <2 x double> %i.ev, %i.dx          ; 2 uses
  %i.ex = fmul <2 x double> %i.es, splat (double f0xBFE904C37505DE4B)
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> splat (double f0x3FEF329C0558E969), <2 x double> %i.ex)
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> splat (double f0xBFDBC4C04D71ABC1), <2 x double> %i.ey) ; 2 uses
  %i.fa = fsub <2 x double> %i.ew, %i.ez          ; 2 uses
  %i.fb = fadd <2 x double> %i.ew, %i.ez          ; 2 uses
  %i.fc = fmul <2 x double> %i.ep, splat (double f0x3FEF329C0558E969)
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> splat (double f0x3FE904C37505DE4B), <2 x double> %i.fc)
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> splat (double f0x3FDBC4C04D71ABC1), <2 x double> %i.fd) ; 2 uses
  %i.ff = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> splat (double f0x3FE3F3A0E28BEDD1), <2 x double> %i.ej)
  %i.fg = fmul <2 x double> %i.dk, splat (double f0x3FCC7B90E3024582)
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> splat (double f0x3FECD4BCA9CB5C71), <2 x double> %i.fg)
  %i.fi = fsub <2 x double> %i.ff, %i.fh          ; 2 uses
  %i.fj = fadd <2 x double> %i.fi, %i.fe          ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %.0374381, i64 %i.ed
  %i.fl = fsub <2 x double> %i.fi, %i.fe          ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %.0374381, i64 %i.ea
  %i.fn = getelementptr inbounds nuw i8, ptr %.0376379, i64 88
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !11 ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %.0373382, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %.0376379, i64 24
  %i.fr = fmul <2 x double> %i.es, splat (double f0x3FEF329C0558E969)
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> splat (double f0x3FDBC4C04D71ABC1), <2 x double> %i.fr)
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> splat (double f0xBFE904C37505DE4B), <2 x double> %i.fs) ; 2 uses
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> splat (double f0x3FE3F3A0E28BEDD1), <2 x double> %i.ej)
  %i.fv = fmul <2 x double> %i.cz, splat (double f0x3FECD4BCA9CB5C71)
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> splat (double f0x3FCC7B90E3024582), <2 x double> %i.fv)
  %i.fx = fsub <2 x double> %i.fu, %i.fw          ; 2 uses
  %i.fy = fadd <2 x double> %i.fx, %i.ft          ; 2 uses
  %i.fz = fsub <2 x double> %i.fx, %i.ft          ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %.0374381, i64 %i.fo
  %i.gb = load i64, ptr %i.fq, align 8, !tbaa !11 ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %.0373382, i64 %i.gb
  %i.gd = getelementptr inbounds [8 x i8], ptr %.0374381, i64 %i.gb
  %i.ge = getelementptr inbounds nuw i8, ptr %.0376379, i64 48
  %i.gf = getelementptr inbounds nuw i8, ptr %.0376379, i64 64
  %i.gg = fadd double %i.bx, %i.bz                ; 2 uses
  %i.gh = fadd double %i.cb, %i.cd                ; 2 uses
  %i.gi = fsub double %i.gh, %i.gg                ; 3 uses
  %i.gj = insertelement <2 x double> %i.cp, double %i.bj, i64 1
  %9 = insertelement <2 x double> %i.cr, double %i.bn, i64 1
  %10 = fadd <2 x double> %i.gj, %9               ; 3 uses
  %11 = insertelement <2 x double> %i.cu, double %i.br, i64 1
  %12 = insertelement <2 x double> %i.cw, double %i.bv, i64 1
  %13 = fadd <2 x double> %11, %12                ; 3 uses
  %14 = fadd <2 x double> %10, %13                ; 7 uses
  %i.gk = extractelement <2 x double> %14, i64 0
  %i.gl = extractelement <2 x double> %14, i64 1
  %15 = fadd double %i.h, %i.j                    ; 4 uses
  %foldExtExtBinop396 = fsub <2 x double> %13, %10 ; 3 uses
  %16 = fadd double %i.gg, %i.gh                  ; 4 uses
  %i.gm = insertelement <2 x double> poison, double %16, i64 0
  %foldExtExtBinop398 = fsub <2 x double> %10, %13
  %17 = extractelement <2 x double> %foldExtExtBinop398, i64 1 ; 3 uses
  %18 = fmul double %17, f0xBFDBC4C04D71ABC1
  %i.gn = insertelement <2 x double> poison, double %18, i64 0
  %19 = insertelement <2 x double> %i.gn, double %15, i64 1
  %i.go = insertelement <2 x double> poison, double %17, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %16, i64 1
  %20 = getelementptr inbounds nuw i8, ptr %.0376379, i64 32
  %21 = getelementptr inbounds nuw i8, ptr %.0376379, i64 80
  %22 = shufflevector <2 x double> %14, <2 x double> %foldExtExtBinop396, <2 x i32> <i32 1, i32 2>
  %23 = tail call double @llvm.fmuladd.f64(double %16, double f0x3FE3F3A0E28BEDD1, double %15)
  %24 = getelementptr inbounds nuw i8, ptr %.0376379, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %.0376379, i64 96
  %26 = fadd double %i.ab, %i.ad                  ; 2 uses
  %27 = fadd double %i.af, %i.ah                  ; 2 uses
  %28 = fsub double %26, %27                      ; 3 uses
  %29 = fadd double %26, %27                      ; 4 uses
  %30 = fadd double %15, %29
  %i.gq = insertelement <2 x double> %foldExtExtBinop396, double %29, i64 1
  %i.gr = insertelement <2 x double> %i.gm, double %28, i64 1
  %i.gs = extractelement <2 x double> %i.fb, i64 0
  %31 = extractelement <2 x double> %i.fb, i64 1
  %i.gt = extractelement <2 x double> %i.fj, i64 0
  %32 = extractelement <2 x double> %i.fj, i64 1
  %33 = extractelement <2 x double> %i.fy, i64 0
  %i.gu = extractelement <2 x double> %i.fy, i64 1
  %34 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> <double f0x3FE904C37505DE4B, double f0x3FE3F3A0E28BEDD1>, <2 x double> %19) ; 2 uses
  %35 = insertelement <2 x double> %i.da, double %i.bd, i64 1
  %36 = insertelement <2 x double> %i.dc, double %i.bf, i64 1
  %37 = fadd <2 x double> %35, %36                ; 3 uses
  %i.gv = shufflevector <2 x double> %i.ef, <2 x double> %37, <2 x i32> <i32 0, i32 2>
  %38 = insertelement <2 x double> %i.df, double %i.az, i64 1
  %39 = insertelement <2 x double> %i.dh, double %i.bb, i64 1
  %40 = fadd <2 x double> %38, %39                ; 3 uses
  %41 = shufflevector <2 x double> %i.eh, <2 x double> %40, <2 x i32> <i32 0, i32 2>
  %42 = fadd <2 x double> %i.gv, %41              ; 5 uses
  %i.gw = extractelement <2 x double> %42, i64 0
  %foldExtExtBinop400 = fadd <2 x double> %42, %14
  %i.gx = extractelement <2 x double> %foldExtExtBinop400, i64 0
  %43 = extractelement <2 x double> %42, i64 1    ; 3 uses
  %44 = fadd double %i.gx, %43
  %i.gy = fadd double %44, %i.gl
  store double %i.gy, ptr %.0373382, align 8, !tbaa !13
  %i.gz = fmul <2 x double> %42, <double 1.000000e+00, double f0x3FCC7B90E3024582>
  %i.ha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> <double f0x3FE3F3A0E28BEDD1, double f0x3FECD4BCA9CB5C71>, <2 x double> %i.gz) ; 2 uses
  %45 = fsub <2 x double> %37, %40                ; 5 uses
  %i.hb = extractelement <2 x double> %45, i64 0
  %46 = fmul double %i.hb, f0x3FE904C37505DE4B
  %47 = insertelement <2 x double> poison, double %46, i64 0
  %i.hc = insertelement <2 x double> %47, double %15, i64 1
  %48 = tail call double @llvm.fmuladd.f64(double %43, double f0x3FE3F3A0E28BEDD1, double %i.gw)
  %49 = shufflevector <2 x double> %14, <2 x double> %45, <2 x i32> <i32 0, i32 2>
  %50 = fmul <2 x double> %49, <double f0x3FECD4BCA9CB5C71, double f0x3FDBC4C04D71ABC1>
  %51 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %22, <2 x double> <double f0x3FCC7B90E3024582, double f0x3FEF329C0558E969>, <2 x double> %50) ; 2 uses
  %i.hd = extractelement <2 x double> %51, i64 0
  %52 = fsub double %48, %i.hd                    ; 2 uses
  %i.he = extractelement <2 x double> %51, i64 1
  %53 = tail call double @llvm.fmuladd.f64(double %17, double f0x3FE904C37505DE4B, double %i.he) ; 2 uses
  %foldExtExtBinop402 = fadd <2 x double> %40, %37 ; 3 uses
  %i.hf = extractelement <2 x double> %foldExtExtBinop402, i64 1
  %i.hg = fadd double %30, %i.hf
  %54 = shufflevector <2 x double> %foldExtExtBinop402, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %55 = insertelement <2 x double> %54, double %i.gi, i64 1
  %56 = fmul <2 x double> %55, <double f0x3FCC7B90E3024582, double f0xBFDBC4C04D71ABC1>
  %57 = shufflevector <2 x double> %foldExtExtBinop396, <2 x double> %foldExtExtBinop402, <2 x i32> <i32 0, i32 3>
  %i.hh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> <double f0x3FDBC4C04D71ABC1, double f0x3FE3F3A0E28BEDD1>, <2 x double> %i.hc) ; 2 uses
  %58 = fadd double %i.hg, %16
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> <double f0x3FECD4BCA9CB5C71, double f0x3FE904C37505DE4B>, <2 x double> %56) ; 2 uses
  store double %58, ptr %.0374381, align 8, !tbaa !13
  %i.hj = extractelement <2 x double> %i.fa, i64 0
  store double %i.hj, ptr %i.ck, align 8, !tbaa !13
  store double %i.gs, ptr %i.cn, align 8, !tbaa !13
  %i.hk = extractelement <2 x double> %i.fa, i64 1
  store double %i.hk, ptr %i.co, align 8, !tbaa !13
  store double %31, ptr %i.dy, align 8, !tbaa !13
  %i.hl = extractelement <2 x double> %i.fl, i64 0
  store double %i.hl, ptr %i.eb, align 8, !tbaa !13
  store double %i.gt, ptr %i.ee, align 8, !tbaa !13
  store double %32, ptr %i.fk, align 8, !tbaa !13
  %i.hm = extractelement <2 x double> %i.fl, i64 1
  store double %i.hm, ptr %i.fm, align 8, !tbaa !13
  %i.hn = extractelement <2 x double> %i.fz, i64 0
  store double %i.hn, ptr %i.fp, align 8, !tbaa !13
  store double %33, ptr %i.gc, align 8, !tbaa !13
  store double %i.gu, ptr %i.gd, align 8, !tbaa !13
  %i.ho = extractelement <2 x double> %i.fz, i64 1
  store double %i.ho, ptr %i.ga, align 8, !tbaa !13
  %59 = shufflevector <2 x double> %34, <2 x double> %i.hi, <2 x i32> <i32 0, i32 3>
  %60 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %45, <2 x double> splat (double f0xBFEF329C0558E969), <2 x double> %59) ; 2 uses
  %61 = shufflevector <2 x double> %34, <2 x double> %i.ha, <2 x i32> <i32 1, i32 2>
  %62 = shufflevector <2 x double> %i.hi, <2 x double> %i.ha, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop400.a = fsub <2 x double> %61, %62 ; 2 uses
  %63 = load i64, ptr %i.ge, align 8, !tbaa !11   ; 2 uses
  %64 = getelementptr inbounds [8 x i8], ptr %.0374381, i64 %63
  %i.hp = load i64, ptr %i.gf, align 8, !tbaa !11 ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %.0374381, i64 %i.hp
  %65 = fadd <2 x double> %60, %foldExtExtBinop400.a ; 2 uses
  %66 = extractelement <2 x double> %65, i64 0
  %67 = fsub <2 x double> %foldExtExtBinop400.a, %60 ; 2 uses
  %68 = extractelement <2 x double> %67, i64 0
  store double %68, ptr %64, align 8, !tbaa !13
  store double %66, ptr %i.hq, align 8, !tbaa !13
  %i.hr = getelementptr inbounds [8 x i8], ptr %.0373382, i64 %63
  %69 = extractelement <2 x double> %67, i64 1
  store double %69, ptr %i.hr, align 8, !tbaa !13
  %70 = getelementptr inbounds [8 x i8], ptr %.0373382, i64 %i.hp
  %71 = extractelement <2 x double> %65, i64 1
  store double %71, ptr %70, align 8, !tbaa !13
  %i.hs = load i64, ptr %20, align 8, !tbaa !11   ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %.0374381, i64 %i.hs
  %i.hu = load i64, ptr %21, align 8, !tbaa !11   ; 2 uses
  %i.hv = getelementptr inbounds [8 x i8], ptr %.0374381, i64 %i.hu
  %72 = insertelement <2 x double> %45, double %29, i64 0
  %73 = fmul <2 x double> %72, <double f0x3FECD4BCA9CB5C71, double f0x3FE904C37505DE4B> ; 2 uses
  %74 = shufflevector <2 x double> %i.hh, <2 x double> %73, <2 x i32> <i32 0, i32 2>
  %75 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> <double f0xBFEF329C0558E969, double f0x3FCC7B90E3024582>, <2 x double> %74) ; 2 uses
  %i.hw = fsub <2 x double> %i.hh, %75
  %76 = extractelement <2 x double> %i.hw, i64 1  ; 2 uses
  %i.hx = extractelement <2 x double> %75, i64 0  ; 2 uses
  %77 = fsub double %76, %i.hx
  store double %77, ptr %i.ht, align 8, !tbaa !13
  %78 = fadd double %i.hx, %76
  store double %78, ptr %i.hv, align 8, !tbaa !13
  %79 = extractelement <2 x double> %73, i64 1
  %80 = tail call double @llvm.fmuladd.f64(double %28, double f0x3FDBC4C04D71ABC1, double %79)
  %81 = tail call double @llvm.fmuladd.f64(double %i.gi, double f0xBFEF329C0558E969, double %80) ; 2 uses
  %82 = getelementptr inbounds [8 x i8], ptr %.0373382, i64 %i.hs
  %i.hy = getelementptr inbounds [8 x i8], ptr %.0373382, i64 %i.hu
  %83 = fsub double %52, %81
  store double %83, ptr %82, align 8, !tbaa !13
  %84 = fadd double %52, %81
  store double %84, ptr %i.hy, align 8, !tbaa !13
  %85 = insertelement <2 x double> %45, double %29, i64 0
  %86 = fmul <2 x double> %85, <double f0x3FCC7B90E3024582, double f0x3FDBC4C04D71ABC1>
  %87 = insertelement <2 x double> %54, double %28, i64 1
  %i.hz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %87, <2 x double> <double f0x3FECD4BCA9CB5C71, double f0x3FEF329C0558E969>, <2 x double> %86) ; 2 uses
  %88 = extractelement <2 x double> %i.hz, i64 0
  %89 = fsub double %23, %88                      ; 2 uses
  %90 = fadd double %53, %89
  %91 = load i64, ptr %24, align 8, !tbaa !11     ; 2 uses
  %92 = getelementptr inbounds [8 x i8], ptr %.0374381, i64 %91
  store double %90, ptr %92, align 8, !tbaa !13
  %93 = fsub double %89, %53
  %i.ia = load i64, ptr %25, align 8, !tbaa !11   ; 2 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %.0374381, i64 %i.ia
  store double %93, ptr %i.ib, align 8, !tbaa !13
  %94 = insertelement <2 x double> %14, double %i.gi, i64 0
  %95 = shufflevector <2 x double> %i.hz, <2 x double> %42, <2 x i32> <i32 1, i32 2>
  %96 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %94, <2 x double> <double f0x3FE904C37505DE4B, double f0x3FE3F3A0E28BEDD1>, <2 x double> %95) ; 2 uses
  %97 = fmul double %i.gk, f0x3FCC7B90E3024582
  %98 = tail call double @llvm.fmuladd.f64(double %43, double f0x3FECD4BCA9CB5C71, double %97)
  %i.ic = extractelement <2 x double> %96, i64 1
  %99 = fsub double %i.ic, %98                    ; 2 uses
  %100 = extractelement <2 x double> %96, i64 0   ; 2 uses
  %101 = fsub double %99, %100
  %102 = getelementptr inbounds [8 x i8], ptr %.0373382, i64 %i.ia
  store double %101, ptr %102, align 8, !tbaa !13
  %103 = fadd double %99, %100
  %104 = getelementptr inbounds [8 x i8], ptr %.0373382, i64 %91
  store double %103, ptr %104, align 8, !tbaa !13
  %i.id = add nsw i64 %.0377378, -1
  %i.ie = getelementptr inbounds [8 x i8], ptr %.0384, i64 %7
  %i.if = getelementptr inbounds [8 x i8], ptr %.0372383, i64 %7
  %i.ig = getelementptr inbounds [8 x i8], ptr %.0373382, i64 %8
  %i.ih = getelementptr inbounds [8 x i8], ptr %.0374381, i64 %8
  %i.ii = getelementptr inbounds [8 x i8], ptr %.0375380, i64 %i.b
  %i.ij = getelementptr inbounds [8 x i8], ptr %.0376379, i64 %i.b
  %i.ik = icmp samesign ugt i64 %.0377378, 1
  br i1 %i.ik, label %bb.b, label %._crit_edge, !llvm.loop !9

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
