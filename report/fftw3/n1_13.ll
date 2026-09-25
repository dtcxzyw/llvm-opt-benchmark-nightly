Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/n1_13?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kdft_desc_s = type { i64, ptr, %struct.opcnt, ptr, i64, i64, i64, i64 }
%struct.opcnt = type { double, double, double, double }
%struct.kdft_genus = type { ptr, i64 }

@desc = internal constant %struct.kdft_desc_s { i64 13, ptr @.str, %struct.opcnt { double 1.380000e+02, double 3.000000e+01, double 3.800000e+01, double 0.000000e+00 }, ptr @fftw_dft_n_genus, i64 0, i64 0, i64 0, i64 0 }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [6 x i8] c"n1_13\00", align 1
@fftw_dft_n_genus = external constant %struct.kdft_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_n1_13(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kdft_register(ptr noundef %0, ptr noundef nonnull @n1_13, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kdft_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @n1_13(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp sgt i64 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0476 = phi ptr [ %0, %.lr.ph ], [ %i.mu, %bb.b ] ; 14 uses
  %.0464475 = phi ptr [ %1, %.lr.ph ], [ %i.mv, %bb.b ] ; 14 uses
  %.0465474 = phi ptr [ %2, %.lr.ph ], [ %i.mw, %bb.b ] ; 14 uses
  %.0466473 = phi ptr [ %3, %.lr.ph ], [ %i.mx, %bb.b ] ; 14 uses
  %.0467472 = phi ptr [ %4, %.lr.ph ], [ %i.my, %bb.b ] ; 13 uses
  %.0468471 = phi ptr [ %5, %.lr.ph ], [ %i.mz, %bb.b ] ; 13 uses
  %.0469470 = phi i64 [ %6, %.lr.ph ], [ %i.mt, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.0476, align 8, !tbaa !13 ; 2 uses
  %i.d = load double, ptr %.0464475, align 8, !tbaa !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0467472, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %.0476, i64 %i.f
  %i.h = load double, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0467472, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %.0476, i64 %i.j
  %i.l = load double, ptr %i.k, align 8, !tbaa !13 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0467472, i64 96
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %.0476, i64 %i.n
  %i.p = load double, ptr %i.o, align 8, !tbaa !13 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0467472, i64 80
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.0476, i64 %i.r
  %i.t = load double, ptr %i.s, align 8, !tbaa !13 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0467472, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11   ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.0476, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !13 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0467472, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11   ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0476, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0467472, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %.0476, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0467472, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %.0476, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !13 ; 2 uses
  %i.ak = insertelement <2 x double> poison, double %i.t, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.af, i64 1
  %i.am = insertelement <2 x double> poison, double %i.x, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.aj, i64 1
  %i.ao = fadd <2 x double> %i.al, %i.an          ; 3 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 0
  %i.aq = extractelement <2 x double> %i.ao, i64 1
  %i.ar = insertelement <2 x double> poison, double %i.p, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.ab, i64 1
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> splat (double -5.000000e-01), <2 x double> %i.as) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0467472, i64 88
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.0476, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0467472, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !11 ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.0476, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !13 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0467472, i64 56
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11 ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %.0476, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !13 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0467472, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0476, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %i.bk = extractelement <2 x double> %i.at, i64 0 ; 2 uses
  %i.bl = extractelement <2 x double> %i.at, i64 1 ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.0464475, i64 %i.f
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !13 ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %.0464475, i64 %i.j
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !13 ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %.0464475, i64 %i.n
  %i.br = load double, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %.0464475, i64 %i.r
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !13 ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %.0464475, i64 %i.v
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !13 ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %.0464475, i64 %i.z
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !13 ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %.0464475, i64 %i.ad
  %i.bz = load double, ptr %i.by, align 8, !tbaa !13 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %.0464475, i64 %i.ah
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !13 ; 2 uses
  %i.cc = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.bz, i64 1
  %i.ce = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.cb, i64 1
  %i.cg = fadd <2 x double> %i.cd, %i.cf          ; 3 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0
  %i.ci = insertelement <2 x double> poison, double %i.br, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.bx, i64 1
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> splat (double -5.000000e-01), <2 x double> %i.cj) ; 2 uses
  %i.cl = extractelement <2 x double> %i.cg, i64 1
  %i.cm = getelementptr inbounds [8 x i8], ptr %.0464475, i64 %i.av
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !13 ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.0464475, i64 %i.az
  %i.cp = load double, ptr %i.co, align 8, !tbaa !13 ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %.0464475, i64 %i.bd
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !13 ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %.0464475, i64 %i.bh
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !13 ; 2 uses
  %i.cu = extractelement <2 x double> %i.ck, i64 0 ; 2 uses
  %i.cv = extractelement <2 x double> %i.ck, i64 1 ; 2 uses
  %i.cw = fsub double %i.cv, %i.cu
  %9 = fsub double %i.bn, %i.bp                   ; 2 uses
  %10 = fadd double %i.bn, %i.bp                  ; 2 uses
  %i.cx = fsub double %i.cn, %i.cp                ; 2 uses
  %i.cy = fsub double %i.cr, %i.ct                ; 2 uses
  %i.cz = insertelement <2 x double> poison, double %10, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %9, i64 1
  %i.db = fsub double %i.cy, %i.cx                ; 2 uses
  %i.dc = fsub double %i.h, %i.l                  ; 2 uses
  %i.dd = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.de = fadd double %i.ax, %i.bb                ; 2 uses
  %i.df = fadd double %i.bf, %i.bj                ; 2 uses
  %i.dg = fsub double %i.de, %i.df
  %i.dh = fsub double %i.bl, %i.bk                ; 2 uses
  %i.di = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dj = fadd double %i.cu, %i.cv                ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0468471, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !11 ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %.0466473, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %.0468471, i64 96
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !11 ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %.0466473, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %.0468471, i64 40
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !11 ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %.0466473, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %.0468471, i64 64
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !11 ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %.0466473, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %.0468471, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !11 ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %.0466473, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %.0468471, i64 80
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !11 ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %.0466473, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %.0468471, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !11 ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %.0466473, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %.0468471, i64 72
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !11 ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %.0466473, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.0468471, i64 48
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !11 ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %.0466473, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %.0468471, i64 88
  %i.em = load i64, ptr %i.el, align 8, !tbaa !11 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %.0466473, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %.0468471, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %.0468471, i64 56
  %i.eq = fadd double %i.br, %i.ch                ; 2 uses
  %i.er = fadd double %i.bx, %i.cl                ; 2 uses
  %i.es = fadd double %i.eq, %i.er                ; 2 uses
  %11 = fadd double %i.cx, %i.cy                  ; 2 uses
  %i.et = fadd double %i.bk, %i.bl                ; 2 uses
  %12 = fsub double %i.er, %i.eq                  ; 2 uses
  %i.eu = fadd double %9, %11                     ; 2 uses
  %13 = fadd double %i.cn, %i.cp                  ; 2 uses
  %i.ev = fsub double %i.bz, %i.cb                ; 2 uses
  %i.ew = fadd double %i.cr, %i.ct                ; 2 uses
  %14 = fsub double %i.bt, %i.bv                  ; 2 uses
  %i.ex = fadd double %13, %i.ew                  ; 2 uses
  %i.ey = insertelement <2 x double> poison, double %i.ex, i64 0
  %15 = fadd double %10, %i.ex                    ; 2 uses
  %16 = fsub double %i.ew, %13
  %i.ez = fsub double %14, %i.ev
  %i.fa = insertelement <2 x double> poison, double %16, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.ez, i64 1
  %i.fc = fmul <2 x double> %i.fb, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.fd = fadd double %14, %i.ev                  ; 2 uses
  %17 = fsub double %i.db, %i.fd
  %18 = fadd double %i.fd, %i.db
  %i.fe = insertelement <2 x double> poison, double %18, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %17, i64 1 ; 2 uses
  %i.fg = fmul <2 x double> %i.ff, <double f0xBFC105974D8DEBB7, double f0xBFD01CF9B20F3131>
  %i.fh = insertelement <2 x double> %i.ey, double %11, i64 1
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> splat (double -5.000000e-01), <2 x double> %i.da) ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 0 ; 2 uses
  %i.fk = fsub double %i.es, %15
  %i.fl = fmul double %i.fk, f0x3FD33AC782EB914D  ; 2 uses
  %i.fm = fadd double %i.es, %15                  ; 2 uses
  %i.fn = insertelement <2 x double> %i.fi, double %i.cw, i64 0 ; 2 uses
  %i.fo = fsub <2 x double> %i.fn, %i.fc          ; 3 uses
  %i.fp = fadd <2 x double> %i.fc, %i.fn          ; 2 uses
  %i.fq = fadd double %i.d, %i.fm
  %19 = fadd double %i.dj, %i.fj
  %20 = fsub double %i.dj, %i.fj
  %i.fr = insertelement <2 x double> poison, double %20, i64 0
  %i.fs = insertelement <2 x double> %i.fr, double %19, i64 1 ; 2 uses
  %i.ft = fmul <2 x double> %i.fs, <double f0x3FD105974D8DEBB7, double f0x3FE01CF9B20F3131>
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> <double f0x3FD8CB01E1D7263E, double f0x3FBD2591300C3896>, <2 x double> %i.ft) ; 2 uses
  %i.fv = extractelement <2 x double> %i.fu, i64 0 ; 2 uses
  %i.fw = extractelement <2 x double> %i.fu, i64 1 ; 2 uses
  %i.fx = fadd double %i.fv, %i.fw                ; 2 uses
  %i.fy = fsub double %i.fw, %i.fv                ; 2 uses
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> <double f0x3FD08756968F6ED4, double f0x3FB36E60CAB2D064>, <2 x double> %i.fg) ; 3 uses
  %i.ga = extractelement <2 x double> %i.fz, i64 0
  %i.gb = fsub double %i.fl, %i.ga                ; 2 uses
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.fm, double f0xBFB5555555555555, double %i.d) ; 2 uses
  %i.gd = extractelement <2 x double> %i.fz, i64 1
  %i.ge = fsub double %i.gc, %i.gd                ; 2 uses
  %i.gf = fadd double %i.gb, %i.ge                ; 2 uses
  %i.gg = fsub double %i.ge, %i.gb                ; 2 uses
  %i.gh = fmul <2 x double> %i.fo, <double f0xBFD3371C1C9E25A7, double f0xBFC4150460CB959A>
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> <double f0x3FD0665CA247FDBA, double f0x3F87C14599EAC08D>, <2 x double> %i.gi) ; 2 uses
  %i.gk = extractelement <2 x double> %i.gj, i64 0 ; 2 uses
  %i.gl = extractelement <2 x double> %i.gj, i64 1 ; 2 uses
  %i.gm = fsub double %i.gl, %i.gk
  %i.gn = fmul double %i.gm, f0x3FFBB67AE8584CAA  ; 2 uses
  %i.go = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gp = insertelement <2 x double> %i.go, double %i.eu, i64 0
  %i.gq = fmul <2 x double> %i.gp, <double f0xBFE2678D87F60797, double f0x3FC4150460CB959A>
  %i.gr = insertelement <2 x double> %i.fo, double %12, i64 0
  %i.gs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> <double f0x3FC64A2C7675B5D5, double f0x3FD0665CA247FDBA>, <2 x double> %i.gq) ; 3 uses
  %i.gt = extractelement <2 x double> %i.gs, i64 1 ; 2 uses
  %i.gu = extractelement <2 x double> %i.gs, i64 0
  %i.gv = fadd double %i.h, %i.l                  ; 2 uses
  %21 = fsub double %i.ax, %i.bb                  ; 2 uses
  %22 = insertelement <2 x double> %i.dd, double %i.gv, i64 1
  %i.gw = fadd double %i.p, %i.ap                 ; 2 uses
  %i.gx = fsub double %i.t, %i.x                  ; 2 uses
  %i.gy = fadd double %i.ab, %i.aq                ; 2 uses
  %i.gz = fsub double %i.af, %i.aj                ; 2 uses
  %23 = fsub double %i.gy, %i.gw                  ; 2 uses
  %i.ha = fadd double %i.de, %i.df                ; 2 uses
  %i.hb = fsub double %i.bf, %i.bj                ; 2 uses
  %i.hc = fadd double %i.gv, %i.ha                ; 2 uses
  %i.hd = fsub double %21, %i.hb                  ; 2 uses
  %24 = fadd double %i.gw, %i.gy                  ; 2 uses
  %i.he = fadd double %i.gx, %i.gz                ; 2 uses
  %25 = fsub double %24, %i.hc
  %26 = fmul double %25, f0x3FD33AC782EB914D      ; 2 uses
  %i.hf = fadd double %24, %i.hc                  ; 2 uses
  %i.hg = fadd double %i.he, %i.hd
  %27 = fadd double %i.c, %i.hf
  store double %27, ptr %.0465474, align 8, !tbaa !13
  %28 = fadd double %21, %i.hb                    ; 2 uses
  %29 = insertelement <2 x double> poison, double %28, i64 0
  %30 = fadd double %i.dc, %28                    ; 2 uses
  %i.hh = fsub double %i.gz, %i.gx
  %31 = insertelement <2 x double> %i.di, double %i.hh, i64 1
  %32 = fmul <2 x double> %31, splat (double f0x3FEBB67AE8584CAA) ; 3 uses
  %33 = fsub double %i.he, %i.hd                  ; 2 uses
  %i.hi = insertelement <2 x double> %29, double %i.ha, i64 1
  %34 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> splat (double -5.000000e-01), <2 x double> %22) ; 3 uses
  %35 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hj = insertelement <2 x double> %35, double %i.dh, i64 1
  %36 = shufflevector <2 x double> %34, <2 x double> %32, <2 x i32> <i32 0, i32 2>
  %37 = fsub <2 x double> %i.hj, %36              ; 3 uses
  %38 = shufflevector <2 x double> %34, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %39 = insertelement <2 x double> %38, double %i.dh, i64 0
  %40 = fadd <2 x double> %32, %39                ; 3 uses
  %i.hk = extractelement <2 x double> %34, i64 1  ; 2 uses
  %i.hl = fsub double %i.et, %i.hk                ; 2 uses
  %i.hm = fadd double %i.et, %i.hk                ; 2 uses
  %i.hn = insertelement <2 x double> %40, double %30, i64 0
  %i.ho = fmul <2 x double> %i.hn, <double f0x3FC64A2C7675B5D5, double f0xBFC4150460CB959A>
  %i.hp = insertelement <2 x double> %37, double %23, i64 0
  %i.hq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> <double f0x3FE2678D87F60797, double f0x3FD0665CA247FDBA>, <2 x double> %i.ho) ; 4 uses
  %i.hr = insertelement <2 x double> %40, double %23, i64 1
  %i.hs = fmul <2 x double> %i.hr, <double f0x3FD3371C1C9E25A7, double f0xBFC64A2C7675B5D5>
  %i.ht = insertelement <2 x double> %37, double %30, i64 1
  %i.hu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> <double f0x3F87C14599EAC08D, double f0x3FE2678D87F60797>, <2 x double> %i.hs) ; 4 uses
  %i.hv = fmul <2 x double> %37, <double f0xBFD3371C1C9E25A7, double f0x3FC4150460CB959A>
  %i.hw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %40, <2 x double> <double f0x3F87C14599EAC08D, double f0x3FD0665CA247FDBA>, <2 x double> %i.hv) ; 4 uses
  %i.hx = shufflevector <2 x double> %i.hq, <2 x double> %i.hw, <2 x i32> <i32 1, i32 3>
  %i.hy = shufflevector <2 x double> %i.hu, <2 x double> %i.hw, <2 x i32> <i32 0, i32 2>
  %i.hz = fadd <2 x double> %i.hx, %i.hy          ; 2 uses
  %i.ia = extractelement <2 x double> %i.hz, i64 0
  %i.ib = fmul double %i.ia, f0x3FFBB67AE8584CAA  ; 2 uses
  %i.ic = extractelement <2 x double> %i.hz, i64 1
  %i.id = fmul double %i.ic, f0x3FFBB67AE8584CAA  ; 2 uses
  %i.ie = fmul double %i.hl, f0x3FD105974D8DEBB7
  %i.if = tail call double @llvm.fmuladd.f64(double %33, double f0x3FD8CB01E1D7263E, double %i.ie) ; 2 uses
  %i.ig = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.ih = insertelement <2 x double> %i.ig, double %i.eu, i64 1
  %i.ii = fmul <2 x double> %i.ih, <double f0xBFE01CF9B20F3131, double f0x3FC64A2C7675B5D5>
  %i.ij = insertelement <2 x double> poison, double %i.hg, i64 0 ; 2 uses
  %i.ik = insertelement <2 x double> %i.ij, double %12, i64 1
  %i.il = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> <double f0x3FBD2591300C3896, double f0x3FE2678D87F60797>, <2 x double> %i.ii) ; 3 uses
  %i.im = extractelement <2 x double> %i.il, i64 0 ; 2 uses
  %i.in = fadd double %i.if, %i.im                ; 2 uses
  %i.io = fsub double %i.if, %i.im                ; 2 uses
  store double %i.fq, ptr %.0466473, align 8, !tbaa !13
  %i.ip = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.iq = insertelement <2 x double> %i.ip, double %i.gc, i64 1
  %i.ir = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> splat (double 2.000000e+00), <2 x double> %i.iq) ; 2 uses
  %i.is = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.it = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iu = fadd <2 x double> %i.is, %i.it
  %i.iv = fsub <2 x double> %i.is, %i.it
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> %i.iu, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ix = shufflevector <2 x double> %i.hq, <2 x double> %i.hw, <2 x i32> <i32 1, i32 2>
  %i.iy = shufflevector <2 x double> %i.hu, <2 x double> %i.hw, <2 x i32> <i32 0, i32 3>
  %i.iz = fsub <2 x double> %i.ix, %i.iy          ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.hq, %i.iz
  %i.ja = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop478 = fsub <2 x double> %i.hu, %i.iz
  %i.jb = extractelement <2 x double> %foldExtExtBinop478, i64 1 ; 2 uses
  %i.jc = fneg <2 x double> %i.hq
  %i.jd = shufflevector <2 x double> %i.jc, <2 x double> %i.hu, <2 x i32> <i32 0, i32 3>
  %i.je = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> splat (double 2.000000e+00), <2 x double> %i.jd) ; 2 uses
  %i.jf = fsub <2 x double> %i.iw, %i.je          ; 2 uses
  %i.jg = extractelement <2 x double> %i.jf, i64 1
  %i.jh = fadd <2 x double> %i.je, %i.iw          ; 2 uses
  %i.ji = extractelement <2 x double> %i.jh, i64 1
  store double %i.ji, ptr %i.dm, align 8, !tbaa !13
  store double %i.jg, ptr %i.dp, align 8, !tbaa !13
  %i.jj = extractelement <2 x double> %i.jh, i64 0
  store double %i.jj, ptr %i.ds, align 8, !tbaa !13
  %i.jk = extractelement <2 x double> %i.jf, i64 0
  store double %i.jk, ptr %i.dv, align 8, !tbaa !13
  %i.jl = fsub double %i.gf, %i.jb                ; 2 uses
  %i.jm = fadd double %i.ib, %i.fy                ; 2 uses
  %i.jn = fsub double %i.jl, %i.jm
  store double %i.jn, ptr %i.dy, align 8, !tbaa !13
  %i.jo = fadd double %i.jm, %i.jl
  store double %i.jo, ptr %i.eb, align 8, !tbaa !13
  %i.jp = fsub double %i.fy, %i.ib                ; 2 uses
  %i.jq = fadd double %i.jb, %i.gf                ; 2 uses
  %i.jr = fadd double %i.jp, %i.jq
  store double %i.jr, ptr %i.ee, align 8, !tbaa !13
  %i.js = fsub double %i.jq, %i.jp
  store double %i.js, ptr %i.eh, align 8, !tbaa !13
  %i.jt = fadd double %i.id, %i.gg                ; 2 uses
  %i.ju = fadd double %i.ja, %i.fx                ; 2 uses
  %i.jv = fsub double %i.jt, %i.ju
  store double %i.jv, ptr %i.ek, align 8, !tbaa !13
  %i.jw = fadd double %i.ju, %i.jt
  store double %i.jw, ptr %i.en, align 8, !tbaa !13
  %i.jx = fsub double %i.fx, %i.ja                ; 2 uses
  %i.jy = fsub double %i.gg, %i.id                ; 2 uses
  %i.jz = fadd double %i.jx, %i.jy
  %i.ka = load i64, ptr %i.eo, align 8, !tbaa !11 ; 2 uses
  %i.kb = getelementptr inbounds [8 x i8], ptr %.0466473, i64 %i.ka
  store double %i.jz, ptr %i.kb, align 8, !tbaa !13
  %i.kc = fsub double %i.jy, %i.jx
  %i.kd = load i64, ptr %i.ep, align 8, !tbaa !11 ; 2 uses
  %i.ke = getelementptr inbounds [8 x i8], ptr %.0466473, i64 %i.kd
  store double %i.kc, ptr %i.ke, align 8, !tbaa !13
  %i.kf = extractelement <2 x double> %i.il, i64 1
  %i.kg = insertelement <2 x double> %i.fo, double %33, i64 1
  %i.kh = fmul <2 x double> %i.kg, <double f0x3F87C14599EAC08D, double f0xBFC105974D8DEBB7>
  %i.ki = insertelement <2 x double> %i.go, double %i.hl, i64 1
  %i.kj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> <double f0x3FD3371C1C9E25A7, double f0x3FD08756968F6ED4>, <2 x double> %i.kh) ; 3 uses
  %i.kk = extractelement <2 x double> %i.kj, i64 0 ; 2 uses
  %i.kl = fadd double %i.kk, %i.gt
  %i.km = fmul double %i.kl, f0x3FFBB67AE8584CAA  ; 2 uses
  %i.kn = extractelement <2 x double> %i.kj, i64 1
  %i.ko = fsub double %26, %i.kn                  ; 2 uses
  %i.kp = fmul double %i.hm, f0x3FB36E60CAB2D064
  %i.kq = insertelement <2 x double> %i.ij, double %i.hf, i64 1
  %i.kr = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.ks = insertelement <2 x double> %i.kr, double %i.c, i64 1
  %i.kt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> <double f0x3FD01CF9B20F3131, double f0xBFB5555555555555>, <2 x double> %i.ks) ; 4 uses
  %shift = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop480 = fsub <2 x double> %shift, %i.kt
  %i.ku = extractelement <2 x double> %foldExtExtBinop480, i64 0 ; 2 uses
  %i.kv = fsub double %i.ku, %i.ko                ; 2 uses
  %i.kw = shufflevector <2 x double> %i.kj, <2 x double> %i.kt, <2 x i32> <i32 1, i32 2>
  %i.kx = insertelement <2 x double> %i.kt, double %26, i64 0
  %i.ky = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kw, <2 x double> splat (double 2.000000e+00), <2 x double> %i.kx) ; 2 uses
  %i.kz = fadd double %i.ko, %i.ku                ; 2 uses
  %i.la = extractelement <2 x double> %i.ky, i64 0 ; 2 uses
  %i.lb = extractelement <2 x double> %i.ky, i64 1 ; 2 uses
  %i.lc = fadd double %i.la, %i.lb                ; 2 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %.0465474, i64 %i.do
  %i.le = getelementptr inbounds [8 x i8], ptr %.0465474, i64 %i.dl
  %i.lf = fsub double %i.in, %i.gn                ; 2 uses
  %i.lg = getelementptr inbounds [8 x i8], ptr %.0465474, i64 %i.ea
  %i.lh = getelementptr inbounds [8 x i8], ptr %.0465474, i64 %i.dx
  %i.li = fsub double %i.lb, %i.la                ; 2 uses
  %i.lj = fadd double %i.gl, %i.gk                ; 2 uses
  %41 = fsub double %i.gt, %i.kk                  ; 2 uses
  %42 = fadd double %i.kf, %i.lj                  ; 2 uses
  %i.lk = fsub double %i.gu, %41                  ; 2 uses
  %i.ll = insertelement <2 x double> poison, double %41, i64 0
  %i.lm = insertelement <2 x double> %i.ll, double %i.lj, i64 1
  %i.ln = fneg <2 x double> %i.il
  %i.lo = shufflevector <2 x double> %i.gs, <2 x double> %i.ln, <2 x i32> <i32 0, i32 3>
  %i.lp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> splat (double 2.000000e+00), <2 x double> %i.lo) ; 2 uses
  %i.lq = extractelement <2 x double> %i.lp, i64 0 ; 2 uses
  %i.lr = fsub double %i.lc, %i.lq
  store double %i.lr, ptr %i.ld, align 8, !tbaa !13
  %i.ls = fadd double %i.lc, %i.lq
  store double %i.ls, ptr %i.le, align 8, !tbaa !13
  %i.lt = fsub double %i.kz, %i.lk                ; 2 uses
  %i.lu = fsub double %i.lt, %i.lf
  store double %i.lu, ptr %i.lg, align 8, !tbaa !13
  %i.lv = fadd double %i.lt, %i.lf
  store double %i.lv, ptr %i.lh, align 8, !tbaa !13
  %i.lw = extractelement <2 x double> %i.lp, i64 1 ; 2 uses
  %i.lx = fsub double %i.li, %i.lw
  %i.ly = getelementptr inbounds [8 x i8], ptr %.0465474, i64 %i.dr
  store double %i.lx, ptr %i.ly, align 8, !tbaa !13
  %i.lz = fadd double %i.li, %i.lw
  %i.ma = getelementptr inbounds [8 x i8], ptr %.0465474, i64 %i.du
  store double %i.lz, ptr %i.ma, align 8, !tbaa !13
  %i.mb = fsub double %i.kv, %i.km                ; 2 uses
  %i.mc = fsub double %42, %i.io                  ; 2 uses
  %i.md = fsub double %i.mb, %i.mc
  %i.me = getelementptr inbounds [8 x i8], ptr %.0465474, i64 %i.em
  store double %i.md, ptr %i.me, align 8, !tbaa !13
  %i.mf = fadd double %i.mb, %i.mc
  %i.mg = getelementptr inbounds [8 x i8], ptr %.0465474, i64 %i.ej
  store double %i.mf, ptr %i.mg, align 8, !tbaa !13
  %i.mh = fadd double %i.kv, %i.km                ; 2 uses
  %i.mi = fadd double %i.io, %42                  ; 2 uses
  %i.mj = fsub double %i.mh, %i.mi
  %i.mk = getelementptr inbounds [8 x i8], ptr %.0465474, i64 %i.kd
  store double %i.mj, ptr %i.mk, align 8, !tbaa !13
  %i.ml = fadd double %i.mh, %i.mi
  %i.mm = getelementptr inbounds [8 x i8], ptr %.0465474, i64 %i.ka
  store double %i.ml, ptr %i.mm, align 8, !tbaa !13
  %i.mn = fadd double %i.kz, %i.lk                ; 2 uses
  %i.mo = fadd double %i.in, %i.gn                ; 2 uses
  %i.mp = fsub double %i.mn, %i.mo
  %i.mq = getelementptr inbounds [8 x i8], ptr %.0465474, i64 %i.ed
  store double %i.mp, ptr %i.mq, align 8, !tbaa !13
  %i.mr = fadd double %i.mn, %i.mo
  %i.ms = getelementptr inbounds [8 x i8], ptr %.0465474, i64 %i.eg
  store double %i.mr, ptr %i.ms, align 8, !tbaa !13
  %i.mt = add nsw i64 %.0469470, -1
  %i.mu = getelementptr inbounds [8 x i8], ptr %.0476, i64 %7
  %i.mv = getelementptr inbounds [8 x i8], ptr %.0464475, i64 %7
  %i.mw = getelementptr inbounds [8 x i8], ptr %.0465474, i64 %8
  %i.mx = getelementptr inbounds [8 x i8], ptr %.0466473, i64 %8
  %i.my = getelementptr inbounds [8 x i8], ptr %.0467472, i64 %i.b
  %i.mz = getelementptr inbounds [8 x i8], ptr %.0468471, i64 %i.b
  %i.na = icmp samesign ugt i64 %.0469470, 1
  br i1 %i.na, label %bb.b, label %._crit_edge, !llvm.loop !9

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
