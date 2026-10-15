Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cf_25?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 25, ptr @.str, %struct.opcnt { double 1.170000e+02, double 5.700000e+01, double 8.300000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cf_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [8 x i8] c"r2cf_25\00", align 1
@fftw_rdft_r2cf_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cf_25(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cf_25, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cf_25(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0485 = phi ptr [ %0, %.lr.ph ], [ %i.qw, %bb.b ] ; 14 uses
  %.0471484 = phi ptr [ %1, %.lr.ph ], [ %i.qx, %bb.b ] ; 13 uses
  %.0472483 = phi ptr [ %2, %.lr.ph ], [ %i.qy, %bb.b ] ; 14 uses
  %.0473482 = phi ptr [ %3, %.lr.ph ], [ %i.qz, %bb.b ] ; 13 uses
  %.0474481 = phi ptr [ %4, %.lr.ph ], [ %i.ra, %bb.b ] ; 13 uses
  %.0475480 = phi ptr [ %5, %.lr.ph ], [ %i.rb, %bb.b ] ; 13 uses
  %.0476479 = phi ptr [ %6, %.lr.ph ], [ %i.rc, %bb.b ] ; 13 uses
  %.0477478 = phi i64 [ %7, %.lr.ph ], [ %i.qv, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.0485, align 8, !tbaa !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0474481, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.0485, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0474481, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %.0471484, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0474481, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.0471484, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0474481, i64 80
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.0485, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0474481, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11   ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %.0471484, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !13 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0474481, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11   ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.0485, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0474481, i64 88
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.0471484, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0474481, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.0471484, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !13 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0474481, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %.0485, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !13 ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.aa, i64 1
  %i.ap = insertelement <2 x double> poison, double %i.am, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ae, i64 1
  %i.ar = fsub <2 x double> %i.ao, %i.aq          ; 2 uses
  %i.as = fmul <2 x double> %i.ar, <double f0x3FD2CF2304755A5E, double f0xBFD2CF2304755A5E>
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> splat (double f0x3FDE6F0E134454FF), <2 x double> %i.at) ; 6 uses
  %i.av = load double, ptr %.0471484, align 8, !tbaa !13 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0474481, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !11 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %.0485, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.0471484, i64 %i.q
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !13 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.0471484, i64 %i.e
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !13 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0474481, i64 64
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %.0485, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !13 ; 2 uses
  %i.bi = fsub double %i.az, %i.bb                ; 2 uses
  %i.bj = insertelement <2 x double> poison, double %i.w, i64 0
  %i.bk = fmul double %i.bi, f0xBFD2CF2304755A5E
  %i.bl = fsub double %i.bd, %i.bh                ; 2 uses
  %i.bm = fmul double %i.bl, f0x3FD2CF2304755A5E
  %i.bn = insertelement <2 x double> %i.bj, double %i.bm, i64 1
  %i.bo = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bp = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.av, i64 1
  %i.br = getelementptr inbounds [8 x i8], ptr %.0485, i64 %i.m
  %i.bs = load double, ptr %i.br, align 8, !tbaa !13
  %i.bt = getelementptr inbounds [8 x i8], ptr %.0471484, i64 %i.y
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !13 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0474481, i64 96
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !11
  %i.bx = getelementptr inbounds [8 x i8], ptr %.0485, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !13 ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %.0485, i64 %i.i
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !13
  %i.cb = getelementptr inbounds [8 x i8], ptr %.0471484, i64 %i.ak
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !13
  %i.cd = insertelement <2 x double> poison, double %i.ca, i64 0 ; 2 uses
  %i.ce = insertelement <2 x double> %i.cd, double %i.bu, i64 1
  %i.cf = insertelement <2 x double> poison, double %i.cc, i64 0 ; 2 uses
  %i.cg = insertelement <2 x double> %i.cf, double %i.by, i64 1
  %i.ch = fsub <2 x double> %i.ce, %i.cg          ; 2 uses
  %i.ci = fmul <2 x double> %i.ch, <double f0x3FD2CF2304755A5E, double f0xBFD2CF2304755A5E>
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> splat (double f0x3FDE6F0E134454FF), <2 x double> %i.cj) ; 6 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %.0485, i64 %i.u
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !13 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %.0471484, i64 %i.ax
  %i.co = load double, ptr %i.cn, align 8, !tbaa !13 ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %.0485, i64 %i.ac
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !13 ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %.0485, i64 %i.ag
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !13 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %.0471484, i64 %i.bf
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !13 ; 2 uses
  %i.cv = fsub double %i.co, %i.cq                ; 2 uses
  %i.cw = insertelement <2 x double> poison, double %i.bs, i64 0 ; 2 uses
  %i.cx = fmul double %i.cv, f0xBFD2CF2304755A5E
  %i.cy = fsub double %i.cs, %i.cu                ; 2 uses
  %i.cz = fmul double %i.cy, f0x3FD2CF2304755A5E
  %i.da = insertelement <2 x double> %i.cw, double %i.cz, i64 1
  %i.db = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.cm, i64 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.0476479, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !11
  %i.df = getelementptr inbounds [8 x i8], ptr %.0473482, i64 %i.de
  %i.dg = insertelement <2 x double> poison, double %i.az, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.aa, i64 1
  %i.di = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.ae, i64 1
  %i.dk = fadd <2 x double> %i.dh, %i.dj          ; 3 uses
  %i.dl = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.ai, i64 1
  %i.dn = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.am, i64 1
  %i.dp = fadd <2 x double> %i.dm, %i.do          ; 3 uses
  %i.dq = fadd <2 x double> %i.dk, %i.dp          ; 3 uses
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ds = insertelement <2 x double> %i.dr, double %i.bi, i64 1
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> <double -2.500000e-01, double f0x3FDE6F0E134454FF>, <2 x double> %i.bn) ; 5 uses
  %i.du = insertelement <2 x double> poison, double %i.av, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.w, i64 1
  %i.dw = fadd <2 x double> %i.dv, %i.dq          ; 2 uses
  %i.dx = shufflevector <2 x double> %i.bo, <2 x double> %i.dq, <2 x i32> <i32 0, i32 2>
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> <double f0x3FDE6F0E134454FF, double -2.500000e-01>, <2 x double> %i.bq) ; 6 uses
  %i.dz = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.co, i64 1
  %i.eb = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.cq, i64 1
  %i.ed = fadd <2 x double> %i.ea, %i.ec          ; 2 uses
  %i.ee = insertelement <2 x double> %i.cd, double %i.cs, i64 1
  %i.ef = insertelement <2 x double> %i.cf, double %i.cu, i64 1
  %i.eg = fadd <2 x double> %i.ee, %i.ef          ; 2 uses
  %i.eh = fadd <2 x double> %i.ed, %i.eg          ; 3 uses
  %i.ei = insertelement <2 x double> %i.eh, double %i.cv, i64 1
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> <double -2.500000e-01, double f0x3FDE6F0E134454FF>, <2 x double> %i.da) ; 4 uses
  %i.ek = insertelement <2 x double> %i.cw, double %i.cm, i64 1
  %i.el = fadd <2 x double> %i.ek, %i.eh          ; 2 uses
  %i.em = insertelement <2 x double> %i.eh, double %i.cy, i64 0
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> <double f0x3FDE6F0E134454FF, double -2.500000e-01>, <2 x double> %i.dc) ; 6 uses
  %i.eo = fsub <2 x double> %i.el, %i.dw          ; 2 uses
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eq = fmul <2 x double> %i.ep, <double f0xBFE2CF2304755A5E, double f0x3FEE6F0E134454FF>
  %i.er = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> <double f0x3FEE6F0E134454FF, double f0x3FE2CF2304755A5E>, <2 x double> %i.eq) ; 2 uses
  %i.et = extractelement <2 x double> %i.es, i64 0
  store double %i.et, ptr %i.df, align 8, !tbaa !13
  %i.eu = getelementptr inbounds nuw i8, ptr %.0476479, i64 80
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !11
  %i.ew = getelementptr inbounds [8 x i8], ptr %.0473482, i64 %i.ev
  %i.ex = extractelement <2 x double> %i.es, i64 1
  store double %i.ex, ptr %i.ew, align 8, !tbaa !13
  %foldExtExtBinop.a = fadd <2 x double> %i.dw, %i.el ; 2 uses
  %i.ey = extractelement <2 x double> %foldExtExtBinop.a, i64 0 ; 2 uses
  %i.ez = extractelement <2 x double> %foldExtExtBinop.a, i64 1 ; 2 uses
  %i.fa = fsub double %i.ey, %i.ez
  %i.fb = fmul double %i.fa, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0475480, i64 40
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !11
  %i.fe = getelementptr inbounds [8 x i8], ptr %.0472483, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %.0475480, i64 80
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !11
  %i.fh = getelementptr inbounds [8 x i8], ptr %.0472483, i64 %i.fg
  %foldExtExtBinop489.a = fsub <2 x double> %i.dk, %i.dp
  %i.fi = extractelement <2 x double> %foldExtExtBinop489.a, i64 0
  %i.fj = fmul double %i.fi, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.fk = insertelement <2 x double> %i.dy, double %i.c, i64 0
  %i.fl = fadd double %i.ey, %i.ez                ; 2 uses
  %i.fm = insertelement <2 x double> %i.dt, double %i.fl, i64 0
  %i.fn = fsub <2 x double> %i.ed, %i.eg
  %i.fo = fmul <2 x double> %i.fn, splat (double f0x3FE1E3779B97F4A8) ; 3 uses
  %i.fp = shufflevector <2 x double> %i.ej, <2 x double> %i.en, <2 x i32> <i32 0, i32 3>
  %i.fq = fadd <2 x double> %i.fo, %i.fp          ; 5 uses
  %foldExtExtBinop491 = fsub <2 x double> %i.en, %i.fo ; 4 uses
  %i.fr = fmul <2 x double> %i.fq, <double f0x3FE465C6FEB501BC, double f0x3FECF457DCDC158C>
  %i.fs = shufflevector <2 x double> %i.ck, <2 x double> %i.ej, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> <double f0x3FF8A80B635B6BEA, double f0x3FEB3FF7C925819C>, <2 x double> %i.fr) ; 3 uses
  %i.fu = extractelement <2 x double> %i.ft, i64 1 ; 2 uses
  %i.fv = shufflevector <2 x double> %i.au, <2 x double> %i.dt, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fw = shufflevector <2 x double> %i.ck, <2 x double> %i.fq, <2 x i32> <i32 1, i32 3>
  %i.fx = fmul <2 x double> %i.fw, <double f0xBFF465C6FEB501BC, double f0xBFDB3FF7C925819C>
  %i.fy = shufflevector <2 x double> %i.fq, <2 x double> %i.ej, <2 x i32> <i32 0, i32 3>
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> <double f0x3FE8A80B635B6BEA, double f0x3FFCF457DCDC158C>, <2 x double> %i.fx) ; 3 uses
  %i.ga = extractelement <2 x double> %i.fz, i64 1 ; 2 uses
  %i.gb = fmul <2 x double> %i.fq, <double f0x3FEB04BBFF642E86, double f0x3FDED50D5CBFA951>
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> <double f0x3FF1257E3C182B51, double f0x3FFC0AB44E81C059>, <2 x double> %i.gb) ; 3 uses
  %i.gd = fmul <2 x double> %i.fs, <double f0xBFFB04BBFF642E86, double f0xBFEED50D5CBFA951>
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> <double f0x3FE1257E3C182B51, double f0x3FEC0AB44E81C059>, <2 x double> %i.gd) ; 2 uses
  %i.gf = extractelement <2 x double> %i.ge, i64 0 ; 2 uses
  %i.gg = extractelement <2 x double> %i.ge, i64 1 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0475480, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !11
  %i.gj = getelementptr inbounds [8 x i8], ptr %.0472483, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %.0476479, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !11
  %i.gm = getelementptr inbounds [8 x i8], ptr %.0473482, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %.0475480, i64 32
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !11
  %i.gp = getelementptr inbounds [8 x i8], ptr %.0472483, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %.0476479, i64 32
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !11
  %i.gs = getelementptr inbounds [8 x i8], ptr %.0473482, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %.0476479, i64 72
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !11
  %i.gv = getelementptr inbounds [8 x i8], ptr %.0473482, i64 %i.gu
  %i.gw = shufflevector <2 x double> %i.ft, <2 x double> %i.fz, <2 x i32> <i32 0, i32 2>
  %i.gx = getelementptr inbounds nuw i8, ptr %.0475480, i64 72
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !11
  %i.gz = getelementptr inbounds [8 x i8], ptr %.0472483, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %.0476479, i64 88
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !11
  %i.hc = getelementptr inbounds [8 x i8], ptr %.0473482, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %.0476479, i64 48
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !11
  %i.hf = getelementptr inbounds [8 x i8], ptr %.0473482, i64 %i.he
  %i.hg = fadd double %i.g, %i.k                  ; 2 uses
  %i.hh = fadd double %i.o, %i.s                  ; 2 uses
  %i.hi = fadd double %i.hg, %i.hh                ; 2 uses
  %i.hj = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.fj, i64 1
  %i.hl = fadd <2 x double> %i.fk, %i.hk          ; 4 uses
  %i.hm = extractelement <2 x double> %i.hl, i64 0
  %i.hn = fadd double %i.hm, %i.fl
  store double %i.hn, ptr %.0472483, align 8, !tbaa !13
  %i.ho = fmul <2 x double> %i.hl, <double 1.000000e+00, double f0x3FE1257E3C182B51>
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> <double -2.500000e-01, double f0x3FFB04BBFF642E86>, <2 x double> %i.ho) ; 3 uses
  %i.hq = extractelement <2 x double> %i.hp, i64 0 ; 2 uses
  %i.hr = fadd double %i.fb, %i.hq
  store double %i.hr, ptr %i.fe, align 8, !tbaa !13
  %i.hs = fsub double %i.hq, %i.fb
  store double %i.hs, ptr %i.fh, align 8, !tbaa !13
  %i.ht = shufflevector <2 x double> %i.au, <2 x double> %i.hl, <2 x i32> <i32 1, i32 3>
  %i.hu = getelementptr inbounds nuw i8, ptr %.0475480, i64 88
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !11
  %i.hw = getelementptr inbounds [8 x i8], ptr %.0472483, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %.0475480, i64 48
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !11
  %i.hz = getelementptr inbounds [8 x i8], ptr %.0472483, i64 %i.hy
  %i.ia = fsub double %i.g, %i.k                  ; 2 uses
  %i.ib = fmul double %i.ia, f0x3FE2CF2304755A5E
  %i.ic = fsub double %i.o, %i.s                  ; 2 uses
  %i.id = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.ie = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.if = insertelement <2 x double> %i.ie, double %i.c, i64 1
  %i.ig = insertelement <2 x double> %i.id, double %i.hi, i64 1
  %i.ih = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> <double f0x3FEE6F0E134454FF, double -2.500000e-01>, <2 x double> %i.if) ; 5 uses
  %i.ii = extractelement <2 x double> %i.ih, i64 0 ; 2 uses
  %i.ij = shufflevector <2 x double> %i.au, <2 x double> %i.ih, <2 x i32> <i32 1, i32 2>
  %i.ik = fmul <2 x double> %i.ij, <double f0xBFF5E7CF55112014, double 1.000000e+00>
  %i.il = fneg double %i.ii
  %i.im = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.in = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.io = insertelement <2 x double> %i.in, double %i.ic, i64 0
  %i.ip = shufflevector <2 x double> %i.dy, <2 x double> %foldExtExtBinop491, <2 x i32> <i32 0, i32 3>
  %i.iq = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ir = shufflevector <2 x double> %foldExtExtBinop491, <2 x double> %i.dy, <2 x i32> <i32 1, i32 2>
  %i.is = fmul <2 x double> %i.ir, <double f0x3FEFEFD5BFE443FE, double f0xBFF5E7CF55112014>
  %i.it = shufflevector <2 x double> %i.ej, <2 x double> %i.dy, <2 x i32> <i32 0, i32 3>
  %i.iu = insertelement <2 x double> %i.fo, double %i.fj, i64 1
  %i.iv = fsub <2 x double> %i.it, %i.iu          ; 7 uses
  %i.iw = shufflevector <2 x double> %i.im, <2 x double> %i.iv, <2 x i32> <i32 0, i32 2>
  %i.ix = fmul <2 x double> %i.iw, <double f0x3FEE6F0E134454FF, double f0xBFC00AEB5DA15BE0>
  %i.iy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> <double f0xBFE2CF2304755A5E, double f0x3FFFBF675480D903>, <2 x double> %i.ix) ; 6 uses
  %i.iz = shufflevector <2 x double> %i.iv, <2 x double> %i.en, <2 x i32> <i32 1, i32 2>
  %i.ja = fmul <2 x double> %i.iz, <double f0x3FE5E7CF55112014, double f0xBFFFEFD5BFE443FE>
  %i.jb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> <double f0x3FF753B603D2B816, double f0x3FB0130A1BE09379>, <2 x double> %i.ja) ; 4 uses
  %i.jc = shufflevector <2 x double> %i.en, <2 x double> %i.iv, <2 x i32> <i32 0, i32 3>
  %i.jd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> <double f0x3FC0130A1BE09379, double f0x3FE753B603D2B816>, <2 x double> %i.is) ; 4 uses
  %i.je = fmul <2 x double> %i.iv, <double f0x3FEFBF675480D903, double f0xBFDED50D5CBFA951>
  %i.jf = shufflevector <2 x double> %i.ck, <2 x double> %i.dy, <2 x i32> <i32 0, i32 2>
  %i.jg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> <double f0x3FD00AEB5DA15BE0, double f0x3FFC0AB44E81C059>, <2 x double> %i.je) ; 4 uses
  %shift = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop493 = fsub <2 x double> %shift, %i.jg ; 2 uses
  %i.jh = extractelement <2 x double> %foldExtExtBinop493, i64 0
  %i.ji = shufflevector <2 x double> %i.iv, <2 x double> %foldExtExtBinop491, <2 x i32> <i32 0, i32 3>
  %i.jj = fmul <2 x double> %i.ji, <double f0x3FECF457DCDC158C, double f0xBFEB04BBFF642E86>
  %i.jk = shufflevector <2 x double> %i.ck, <2 x double> %i.en, <2 x i32> <i32 0, i32 2>
  %i.jl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> <double f0x3FEB3FF7C925819C, double f0x3FF1257E3C182B51>, <2 x double> %i.jj) ; 3 uses
  %shift495 = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop496 = fsub <2 x double> %shift495, %i.jl
  %i.jm = extractelement <2 x double> %foldExtExtBinop496, i64 0 ; 2 uses
  %i.jn = extractelement <2 x double> %i.jl, i64 1 ; 2 uses
  %i.jo = shufflevector <2 x double> %i.hp, <2 x double> %i.jg, <2 x i32> <i32 1, i32 3>
  %i.jp = shufflevector <2 x double> %i.ft, <2 x double> %i.jl, <2 x i32> <i32 0, i32 2>
  %i.jq = fadd <2 x double> %i.jo, %i.jp          ; 2 uses
  %i.jr = shufflevector <2 x double> %i.au, <2 x double> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.js = shufflevector <2 x double> %i.iv, <2 x double> %foldExtExtBinop491, <2 x i32> <i32 1, i32 3>
  %i.jt = fmul <2 x double> %i.js, <double f0x3FEC0AB44E81C059, double f0x3FE1257E3C182B51>
  %i.ju = shufflevector <2 x double> %i.dy, <2 x double> %i.en, <2 x i32> <i32 0, i32 2>
  %i.jv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> <double f0x3FEED50D5CBFA951, double f0x3FFB04BBFF642E86>, <2 x double> %i.jt) ; 4 uses
  %i.jw = extractelement <2 x double> %i.iy, i64 0
  %i.jx = getelementptr inbounds nuw i8, ptr %.0476479, i64 16
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !11
  %i.jz = getelementptr inbounds [8 x i8], ptr %.0473482, i64 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %.0475480, i64 16
  %i.kb = getelementptr inbounds nuw i8, ptr %.0476479, i64 24
  %i.kc = getelementptr inbounds nuw i8, ptr %.0475480, i64 24
  %i.kd = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ke = insertelement <2 x double> %i.kd, double %i.hh, i64 1
  %i.kf = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.kg = insertelement <2 x double> %i.kf, double %i.hg, i64 1
  %i.kh = fsub <2 x double> %i.ke, %i.kg
  %i.ki = fmul <2 x double> %i.kh, splat (double f0x3FE1E3779B97F4A8) ; 3 uses
  %foldExtExtBinop498 = fadd <2 x double> %i.ki, %i.dt ; 3 uses
  %i.kj = shufflevector <2 x double> %foldExtExtBinop498, <2 x double> %i.dt, <2 x i32> <i32 0, i32 3>
  %i.kk = fmul <2 x double> %i.kj, <double f0x3FE5E7CF55112014, double f0xBFDFD511FA1C0796>
  %i.kl = shufflevector <2 x double> %foldExtExtBinop498, <2 x double> %i.hl, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.km = fmul <2 x double> %i.kl, <double f0x3FC00AEB5DA15BE0, double f0xBFEB04BBFF642E86>
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> <double f0x3FFFBF675480D903, double f0x3FF1257E3C182B51>, <2 x double> %i.km) ; 3 uses
  %i.ko = extractelement <2 x double> %i.kn, i64 0 ; 2 uses
  %i.kp = fadd double %i.ko, %i.fu                ; 2 uses
  %shift500 = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop501.a = fadd <2 x double> %shift500, %i.fz ; 2 uses
  %i.kq = fmul <2 x double> %i.kl, <double f0xBFEFBF675480D903, double f0x3FCFD511FA1C0796>
  %i.kr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> <double f0x3FD00AEB5DA15BE0, double f0x3FFEFEA21D101EE0>, <2 x double> %i.kq) ; 3 uses
  %i.ks = extractelement <2 x double> %i.kr, i64 0 ; 2 uses
  %i.kt = fadd double %i.ks, %i.ga                ; 2 uses
  %i.ku = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> <double f0x3FF753B603D2B816, double f0x3FEEFEA21D101EE0>, <2 x double> %i.kk) ; 3 uses
  %10 = shufflevector <2 x double> %i.kr, <2 x double> %i.ku, <2 x i32> <i32 1, i32 2>
  %foldExtExtBinop507.a = fadd <2 x double> %10, %i.gc ; 2 uses
  %i.kv = extractelement <2 x double> %i.ku, i64 1 ; 2 uses
  %i.kw = fadd double %i.kv, %i.gf                ; 2 uses
  %i.kx = shufflevector <2 x double> %foldExtExtBinop498, <2 x double> %foldExtExtBinop501.a, <2 x i32> <i32 0, i32 2>
  %i.ky = fsub double %i.gf, %i.kv
  %i.kz = fsub double %i.ks, %i.ga
  %i.la = fmul double %i.kp, f0x3FE9E3779B97F4A8
  %i.lb = tail call double @llvm.fmuladd.f64(double %i.kz, double f0x3FE2CF2304755A5E, double %i.la)
  %i.lc = shufflevector <2 x double> %i.hp, <2 x double> %i.kn, <2 x i32> <i32 1, i32 3>
  %i.ld = fsub <2 x double> %i.lc, %i.gw          ; 2 uses
  %i.le = extractelement <2 x double> %i.ld, i64 0
  %i.lf = fsub double %i.ko, %i.fu
  %i.lg = fmul double %i.lf, f0x3FE2CF2304755A5E
  %11 = extractelement <2 x double> %foldExtExtBinop507.a, i64 0 ; 2 uses
  %i.lh = extractelement <2 x double> %foldExtExtBinop507.a, i64 1 ; 2 uses
  %12 = fsub double %i.lh, %11
  %13 = fmul double %12, f0x3FE1E3779B97F4A8      ; 2 uses
  %14 = fadd double %11, %i.lh                    ; 2 uses
  %i.li = insertelement <2 x double> poison, double %i.ky, i64 0
  %i.lj = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lk = shufflevector <2 x double> %i.gc, <2 x double> %i.ku, <2 x i32> <i32 0, i32 2>
  %i.ll = shufflevector <2 x double> %i.kr, <2 x double> %i.gc, <2 x i32> <i32 1, i32 3>
  %i.lm = fsub <2 x double> %i.lk, %i.ll          ; 3 uses
  %i.ln = extractelement <2 x double> %i.lm, i64 0
  %i.lo = extractelement <2 x double> %i.lm, i64 1
  %i.lp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kx, <2 x double> <double f0x3FE753B603D2B816, double f0x3FD3C6EF372FE950>, <2 x double> %i.ik) ; 2 uses
  %i.lq = extractelement <2 x double> %i.lp, i64 0 ; 2 uses
  %i.lr = fadd double %i.lq, %i.gg                ; 2 uses
  %i.ls = fadd double %i.kw, %i.lr                ; 2 uses
  %foldExtExtBinop513.a = fadd <2 x double> %i.ih, %foldExtExtBinop501.a
  %i.lt = extractelement <2 x double> %foldExtExtBinop513.a, i64 0
  %i.lu = fsub double %i.lt, %i.kp
  %i.lv = extractelement <2 x double> %i.lp, i64 1
  %i.lw = fadd double %i.lv, %i.lb
  %i.lx = extractelement <2 x double> %i.jq, i64 0
  %i.ly = tail call double @llvm.fmuladd.f64(double %i.lx, double f0xBFEE6F0E134454FF, double %i.lw)
  %foldExtExtBinop515 = fadd <2 x double> %i.ki, %i.ih ; 2 uses
  %i.lz = extractelement <2 x double> %foldExtExtBinop515, i64 1 ; 3 uses
  %i.ma = fadd double %i.lz, %i.le
  %i.mb = fadd double %i.lz, %i.ls
  store double %i.mb, ptr %i.gj, align 8, !tbaa !13
  %i.mc = fadd double %i.ma, %i.kt
  %i.md = insertelement <2 x double> poison, double %i.lz, i64 0
  %i.me = insertelement <2 x double> %i.md, double %i.lg, i64 1
  %i.mf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ld, <2 x double> <double f0x3FD3C6EF372FE950, double f0x3FEE6F0E134454FF>, <2 x double> %i.me) ; 2 uses
  %shift517 = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop518.a = fadd <2 x double> %i.mf, %shift517
  %i.mg = extractelement <2 x double> %foldExtExtBinop518.a, i64 0
  %i.mh = tail call double @llvm.fmuladd.f64(double %i.kt, double f0xBFE9E3779B97F4A8, double %i.mg)
  %i.mi = fsub double %i.gg, %i.lq                ; 2 uses
  %15 = fadd double %i.ii, %14
  %i.mj = fneg double %15
  store double %i.mj, ptr %i.gm, align 8, !tbaa !13
  store double %i.mc, ptr %i.gp, align 8, !tbaa !13
  store double %i.lu, ptr %i.gs, align 8, !tbaa !13
  store double %i.ly, ptr %i.gv, align 8, !tbaa !13
  store double %i.mh, ptr %i.gz, align 8, !tbaa !13
  %i.mk = tail call double @llvm.fmuladd.f64(double %14, double 2.500000e-01, double %i.il) ; 2 uses
  %i.ml = fmul double %i.mi, f0x3FEE6F0E134454FF
  %i.mm = insertelement <2 x double> poison, double %i.ml, i64 0
  %i.mn = insertelement <2 x double> %i.mm, double %i.mk, i64 1
  %i.mo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lj, <2 x double> <double f0x3FE2CF2304755A5E, double f0x3FEE6F0E134454FF>, <2 x double> %i.mn) ; 2 uses
  %i.mp = extractelement <2 x double> %i.mo, i64 0
  %i.mq = fadd double %i.mp, %i.mk
  %i.mr = fsub double %i.mq, %13
  store double %i.mr, ptr %i.hc, align 8, !tbaa !13
  %i.ms = insertelement <2 x double> poison, double %i.mi, i64 0
  %i.mt = insertelement <2 x double> %i.ms, double %i.ls, i64 1
  %i.mu = insertelement <2 x double> %foldExtExtBinop515, double %13, i64 0
  %i.mv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mt, <2 x double> <double f0xBFE2CF2304755A5E, double -2.500000e-01>, <2 x double> %i.mu) ; 3 uses
  %i.mw = fsub double %i.kw, %i.lr
  %i.mx = extractelement <2 x double> %i.mv, i64 1
  %i.my = fmul double %i.mw, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.ln, double f0x3FE2CF2304755A5E, double %i.mx)
  %i.na = tail call double @llvm.fmuladd.f64(double %i.lo, double f0x3FEE6F0E134454FF, double %i.my)
  %i.nb = fsub double %i.mz, %i.na
  %i.nc = insertelement <2 x double> %i.mv, double %i.my, i64 0
  %i.nd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> <double f0x3FEE6F0E134454FF, double f0x3FE2CF2304755A5E>, <2 x double> %i.nc) ; 2 uses
  %i.ne = shufflevector <2 x double> %i.mo, <2 x double> %i.nd, <2 x i32> <i32 1, i32 2>
  %i.nf = shufflevector <2 x double> %i.mv, <2 x double> %i.nd, <2 x i32> <i32 0, i32 3>
  %i.ng = fadd <2 x double> %i.ne, %i.nf          ; 2 uses
  %i.nh = extractelement <2 x double> %i.ng, i64 0
  store double %i.nh, ptr %i.hf, align 8, !tbaa !13
  store double %i.nb, ptr %i.hw, align 8, !tbaa !13
  %i.ni = extractelement <2 x double> %i.ng, i64 1
  store double %i.ni, ptr %i.hz, align 8, !tbaa !13
  %i.nj = shufflevector <2 x double> %i.dt, <2 x double> %i.ih, <2 x i32> <i32 0, i32 3>
  %i.nk = fsub <2 x double> %i.nj, %i.ki          ; 5 uses
  %i.nl = shufflevector <2 x double> %i.nk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nm = fmul <2 x double> %i.nl, <double f0x3FE465C6FEB501BC, double f0xBFE8A80B635B6BEA>
  %i.nn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iq, <2 x double> <double f0x3FF8A80B635B6BEA, double f0x3FF465C6FEB501BC>, <2 x double> %i.nm) ; 4 uses
  %shift522 = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop523 = fsub <2 x double> %shift522, %i.nn
  %i.no = extractelement <2 x double> %foldExtExtBinop523, i64 0 ; 2 uses
  %i.np = shufflevector <2 x double> %i.nk, <2 x double> %i.iv, <2 x i32> <i32 0, i32 2>
  %i.nq = fmul <2 x double> %i.np, <double f0xBFEFEFD5BFE443FE, double f0xBFDB3FF7C925819C>
  %i.nr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> <double f0x3FC0130A1BE09379, double f0x3FFCF457DCDC158C>, <2 x double> %i.nq) ; 3 uses
  %i.ns = extractelement <2 x double> %i.nr, i64 0 ; 2 uses
  %i.nt = fadd double %i.ns, %i.jn                ; 2 uses
  %i.nu = fsub double %i.jn, %i.ns                ; 2 uses
  %16 = fmul <2 x double> %i.nk, <double f0x3FB0130A1BE09379, double 1.000000e+00>
  %17 = shufflevector <2 x double> %i.au, <2 x double> %foldExtExtBinop493, <2 x i32> <i32 0, i32 2>
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double f0x3FFFEFD5BFE443FE, double f0x3FD3C6EF372FE950>, <2 x double> %16) ; 3 uses
  %i.nv = shufflevector <2 x double> %i.jv, <2 x double> %18, <2 x i32> <i32 0, i32 2>
  %19 = shufflevector <2 x double> %i.nr, <2 x double> %i.jv, <2 x i32> <i32 1, i32 3>
  %20 = fadd <2 x double> %i.nv, %19              ; 2 uses
  %21 = extractelement <2 x double> %20, i64 0    ; 2 uses
  %22 = extractelement <2 x double> %20, i64 1    ; 2 uses
  %23 = fadd double %21, %22                      ; 2 uses
  %i.nw = extractelement <2 x double> %i.nk, i64 1 ; 2 uses
  %i.nx = fadd double %i.nw, %23
  %i.ny = load i64, ptr %i.ka, align 8, !tbaa !11
  %i.nz = getelementptr inbounds [8 x i8], ptr %.0472483, i64 %i.ny
  %i.oa = load i64, ptr %i.kb, align 8, !tbaa !11
  %i.ob = getelementptr inbounds [8 x i8], ptr %.0473482, i64 %i.oa
  %i.oc = fadd double %i.nw, %i.jh
  %i.od = fadd double %i.oc, %i.no
  %i.oe = load i64, ptr %i.kc, align 8, !tbaa !11
  %i.of = getelementptr inbounds [8 x i8], ptr %.0472483, i64 %i.oe
  %shift533 = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop534 = fadd <2 x double> %shift533, %i.jd
  %i.og = extractelement <2 x double> %foldExtExtBinop534, i64 0
  %i.oh = fmul double %i.og, f0x3FE2CF2304755A5E
  %i.oi = tail call double @llvm.fmuladd.f64(double %i.no, double f0x3FE9E3779B97F4A8, double %i.oh)
  %i.oj = extractelement <2 x double> %18, i64 1
  %i.ok = fsub double %i.oj, %i.oi
  %i.ol = getelementptr inbounds nuw i8, ptr %.0475480, i64 64
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !11
  %i.on = getelementptr inbounds [8 x i8], ptr %.0472483, i64 %i.om
  %i.oo = shufflevector <2 x double> %i.iy, <2 x double> %i.nn, <2 x i32> <i32 1, i32 3>
  %i.op = shufflevector <2 x double> %i.jb, <2 x double> %i.jd, <2 x i32> <i32 0, i32 2>
  %i.oq = fsub <2 x double> %i.oo, %i.op          ; 3 uses
  %i.or = shufflevector <2 x double> %i.jb, <2 x double> %i.oq, <2 x i32> <i32 0, i32 2>
  %i.os = shufflevector <2 x double> %i.iy, <2 x double> %i.oq, <2 x i32> <i32 1, i32 3>
  %i.ot = fadd <2 x double> %i.or, %i.os          ; 2 uses
  %i.ou = extractelement <2 x double> %i.ot, i64 0
  %i.ov = tail call double @llvm.fmuladd.f64(double %i.ou, double f0xBFEE6F0E134454FF, double %i.ok)
  %shift536 = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop537 = fsub <2 x double> %shift536, %i.iy
  %i.ow = extractelement <2 x double> %foldExtExtBinop537, i64 0
  %i.ox = shufflevector <2 x double> %i.nn, <2 x double> %i.jd, <2 x i32> <i32 0, i32 3>
  %i.oy = shufflevector <2 x double> %i.jb, <2 x double> %i.jg, <2 x i32> <i32 1, i32 2>
  %i.oz = fadd <2 x double> %i.ox, %i.oy
  %i.pa = fmul <2 x double> %i.oz, <double f0xBFE2CF2304755A5E, double f0x3FEE6F0E134454FF>
  %i.pb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oq, <2 x double> <double f0x3FD3C6EF372FE950, double f0x3FE9E3779B97F4A8>, <2 x double> %i.pa) ; 2 uses
  %shift539 = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop540 = fsub <2 x double> %i.pb, %shift539
  %foldExtExtBinop542 = fsub <2 x double> %foldExtExtBinop540, %i.iy
  %i.pc = extractelement <2 x double> %foldExtExtBinop542, i64 0
  %i.pd = getelementptr inbounds nuw i8, ptr %.0476479, i64 64
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !11
  %i.pf = getelementptr inbounds [8 x i8], ptr %.0473482, i64 %i.pe
  %i.pg = fsub double %i.jm, %i.nt
  %i.ph = fmul double %i.pg, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.pi = fadd double %i.jm, %i.nt                ; 2 uses
  %i.pj = fadd double %i.jw, %i.pi
  store double %i.pj, ptr %i.jz, align 8, !tbaa !13
  store double %i.nx, ptr %i.nz, align 8, !tbaa !13
  store double %i.ow, ptr %i.ob, align 8, !tbaa !13
  store double %i.od, ptr %i.of, align 8, !tbaa !13
  store double %i.ov, ptr %i.on, align 8, !tbaa !13
  store double %i.pc, ptr %i.pf, align 8, !tbaa !13
  %i.pk = insertelement <2 x double> %i.iy, double %i.ph, i64 1
  %i.pl = getelementptr inbounds nuw i8, ptr %.0476479, i64 56
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !11
  %i.pn = getelementptr inbounds [8 x i8], ptr %.0473482, i64 %i.pm
  %i.po = shufflevector <2 x double> %i.jv, <2 x double> %i.nr, <2 x i32> <i32 1, i32 3>
  %i.pp = shufflevector <2 x double> %18, <2 x double> %i.jv, <2 x i32> <i32 0, i32 2>
  %i.pq = fsub <2 x double> %i.po, %i.pp          ; 3 uses
  %i.pr = insertelement <2 x double> %i.pq, double %i.pi, i64 0
  %i.ps = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pr, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %i.pk) ; 2 uses
  %i.pt = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pq, <2 x double> <double f0xBFE2CF2304755A5E, double f0x3FE2CF2304755A5E>, <2 x double> %i.pt) ; 2 uses
  %shift544 = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop545 = fadd <2 x double> %shift544, %i.pu
  %i.pv = extractelement <2 x double> %foldExtExtBinop545, i64 0
  store double %i.pv, ptr %i.pn, align 8, !tbaa !13
  %i.pw = fneg double %i.ph
  %i.px = getelementptr inbounds nuw i8, ptr %.0476479, i64 96
  %i.py = load i64, ptr %i.px, align 8, !tbaa !11
  %i.pz = getelementptr inbounds [8 x i8], ptr %.0473482, i64 %i.py
  %24 = fsub double %21, %22
  %i.qa = fmul double %24, f0x3FE1E3779B97F4A8    ; 2 uses
  %25 = insertelement <2 x double> %i.pq, double %23, i64 1
  %i.qb = insertelement <2 x double> %i.nk, double %i.pw, i64 0
  %i.qc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> <double f0x3FEE6F0E134454FF, double -2.500000e-01>, <2 x double> %i.qb) ; 3 uses
  %shift549 = shufflevector <2 x double> %i.pu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop550 = fadd <2 x double> %shift549, %i.qc
  %i.qd = extractelement <2 x double> %foldExtExtBinop550, i64 0
  store double %i.qd, ptr %i.pz, align 8, !tbaa !13
  %i.qe = fmul double %i.nu, f0x3FE2CF2304755A5E
  %i.qf = extractelement <2 x double> %i.qc, i64 1
  %i.qg = getelementptr inbounds nuw i8, ptr %.0475480, i64 56
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !11
  %i.qi = getelementptr inbounds [8 x i8], ptr %.0472483, i64 %i.qh
  %i.qj = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qk = insertelement <2 x double> %i.qc, double %i.qe, i64 0
  %i.ql = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qj, <2 x double> <double f0x3FEE6F0E134454FF, double f0x3FE2CF2304755A5E>, <2 x double> %i.qk) ; 2 uses
  %i.qm = extractelement <2 x double> %i.ql, i64 0
  %i.qn = fadd double %i.qm, %i.qa
  %i.qo = fadd double %i.qf, %i.qn
  store double %i.qo, ptr %i.qi, align 8, !tbaa !13
  %i.qp = tail call double @llvm.fmuladd.f64(double %i.nu, double f0x3FEE6F0E134454FF, double %i.qa)
  %i.qq = extractelement <2 x double> %i.ql, i64 1
  %i.qr = fsub double %i.qq, %i.qp
  %i.qs = getelementptr inbounds nuw i8, ptr %.0475480, i64 96
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !11
  %i.qu = getelementptr inbounds [8 x i8], ptr %.0472483, i64 %i.qt
  store double %i.qr, ptr %i.qu, align 8, !tbaa !13
  %i.qv = add nsw i64 %.0477478, -1
  %i.qw = getelementptr inbounds [8 x i8], ptr %.0485, i64 %8
  %i.qx = getelementptr inbounds [8 x i8], ptr %.0471484, i64 %8
  %i.qy = getelementptr inbounds [8 x i8], ptr %.0472483, i64 %9
  %i.qz = getelementptr inbounds [8 x i8], ptr %.0473482, i64 %9
  %i.ra = getelementptr inbounds [8 x i8], ptr %.0474481, i64 %i.b
  %i.rb = getelementptr inbounds [8 x i8], ptr %.0475480, i64 %i.b
  %i.rc = getelementptr inbounds [8 x i8], ptr %.0476479, i64 %i.b
  %i.rd = icmp samesign ugt i64 %.0477478, 1
  br i1 %i.rd, label %bb.b, label %._crit_edge, !llvm.loop !9

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
