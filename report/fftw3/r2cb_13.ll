Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cb_13?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 13, ptr @.str, %struct.opcnt { double 5.600000e+01, double 1.500000e+01, double 2.000000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cb_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [8 x i8] c"r2cb_13\00", align 1
@fftw_rdft_r2cb_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cb_13(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cb_13, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cb_13(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0228 = phi ptr [ %0, %.lr.ph ], [ %i.gm, %bb.b ] ; 8 uses
  %.0214227 = phi ptr [ %1, %.lr.ph ], [ %i.gn, %bb.b ] ; 7 uses
  %.0215226 = phi ptr [ %2, %.lr.ph ], [ %i.go, %bb.b ] ; 8 uses
  %.0216225 = phi ptr [ %3, %.lr.ph ], [ %i.gp, %bb.b ] ; 7 uses
  %.0217224 = phi ptr [ %4, %.lr.ph ], [ %i.gq, %bb.b ] ; 7 uses
  %.0218223 = phi ptr [ %5, %.lr.ph ], [ %i.gr, %bb.b ] ; 7 uses
  %.0219222 = phi ptr [ %6, %.lr.ph ], [ %i.gs, %bb.b ] ; 7 uses
  %.0220221 = phi i64 [ %7, %.lr.ph ], [ %i.gl, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0219222, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %.0216225, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0219222, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds [8 x i8], ptr %.0216225, i64 %i.h
  %i.j = load double, ptr %i.i, align 8, !tbaa !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0219222, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds [8 x i8], ptr %.0216225, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !13 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0219222, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %i.q = getelementptr inbounds [8 x i8], ptr %.0216225, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !13 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0219222, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds [8 x i8], ptr %.0216225, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !13 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0219222, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = getelementptr inbounds [8 x i8], ptr %.0216225, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !13 ; 2 uses
  %i.aa = insertelement <2 x double> poison, double %i.f, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.r, i64 1
  %i.ac = fsub double %i.j, %i.n                  ; 2 uses
  %i.ad = fneg double %i.ac
  %i.ae = fadd double %i.v, %i.z                  ; 2 uses
  %i.af = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ae, i64 1
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> <double 2.000000e+00, double -2.000000e+00>, <2 x double> %i.ag) ; 4 uses
  %i.ai = fadd double %i.f, %i.ac
  %i.aj = fadd double %i.r, %i.ae
  %i.ak = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x double> %i.al, <double f0xBFD64A2C7675B5D5, double f0x3FF2678D87F60797>
  %i.an = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> <double f0x3FF2678D87F60797, double f0x3FD64A2C7675B5D5>, <2 x double> %i.am) ; 2 uses
  %i.aq = fadd double %i.j, %i.n
  %i.ar = fsub double %i.v, %i.z
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.aq, i64 1
  %i.au = fmul <2 x double> %i.at, splat (double f0x3FFBB67AE8584CAA) ; 4 uses
  %foldExtExtBinop = fadd <2 x double> %i.ah, %i.au
  %foldExtExtBinop230 = fsub <2 x double> %i.ah, %i.au
  %i.av = shufflevector <2 x double> %foldExtExtBinop230, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aw = fmul <2 x double> %i.av, <double f0x3FD3371C1C9E25A7, double f0xBF87C14599EAC08D>
  %i.ax = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> <double f0x3F87C14599EAC08D, double f0x3FD3371C1C9E25A7>, <2 x double> %i.aw) ; 3 uses
  %i.az = fsub <2 x double> %i.ah, %i.au          ; 2 uses
  %i.ba = fadd <2 x double> %i.ah, %i.au          ; 2 uses
  %i.bb = shufflevector <2 x double> %i.az, <2 x double> %i.ba, <2 x i32> <i32 0, i32 3>
  %i.bc = shufflevector <2 x double> %i.ba, <2 x double> %i.az, <2 x i32> <i32 1, i32 2>
  %i.bd = fmul <2 x double> %i.bc, <double f0x3FD0665CA247FDBA, double f0xBFD0665CA247FDBA>
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> splat (double f0x3FC4150460CB959A), <2 x double> %i.bd) ; 3 uses
  %i.bf = load double, ptr %.0215226, align 8, !tbaa !13 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0218223, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0215226, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0218223, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr inbounds [8 x i8], ptr %.0215226, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !13 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0218223, i64 48
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  %i.bq = getelementptr inbounds [8 x i8], ptr %.0215226, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0218223, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11
  %i.bu = getelementptr inbounds [8 x i8], ptr %.0215226, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !13 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0218223, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !11
  %i.by = getelementptr inbounds [8 x i8], ptr %.0215226, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !13 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0218223, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !11
  %i.cc = getelementptr inbounds [8 x i8], ptr %.0215226, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !13 ; 2 uses
  %i.ce = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.bz, i64 1
  %i.cg = insertelement <2 x double> poison, double %i.br, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.cd, i64 1
  %i.ci = fadd <2 x double> %i.cf, %i.ch          ; 3 uses
  %10 = extractelement <2 x double> %i.ci, i64 0
  %11 = extractelement <2 x double> %i.ci, i64 1
  %i.cj = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.bv, i64 1
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> splat (double -5.000000e-01), <2 x double> %i.ck) ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0 ; 2 uses
  %i.cn = extractelement <2 x double> %i.cl, i64 1 ; 2 uses
  %12 = fadd double %i.bj, %10                    ; 2 uses
  %13 = fadd double %i.bv, %11                    ; 2 uses
  %i.co = fsub double %13, %12
  %i.cp = fmul double %i.co, f0x3FE33AC782EB914D  ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.cr = fadd double %12, %13                    ; 2 uses
  %i.cs = insertelement <2 x double> poison, double %i.cr, i64 0
  %foldExtExtBinop232 = fadd <2 x double> %i.ay, %i.be
  %i.ct = extractelement <2 x double> %foldExtExtBinop232, i64 0
  %i.cu = fmul double %i.ct, f0x3FFBB67AE8584CAA  ; 2 uses
  %i.cv = extractelement <2 x double> %i.ay, i64 1 ; 2 uses
  %i.cw = extractelement <2 x double> %i.be, i64 1 ; 2 uses
  %i.cx = fsub double %i.cv, %i.cw
  %i.cy = fmul double %i.cx, f0x3FFBB67AE8584CAA  ; 2 uses
  %i.cz = fadd double %i.cv, %i.cw                ; 2 uses
  %i.da = extractelement <2 x double> %i.ap, i64 0 ; 2 uses
  %i.db = fsub double %i.da, %i.cz                ; 2 uses
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cz, double 2.000000e+00, double %i.da) ; 2 uses
  %foldExtExtBinop234 = fsub <2 x double> %i.ay, %i.be
  %i.dd = extractelement <2 x double> %foldExtExtBinop234, i64 0 ; 2 uses
  %i.de = extractelement <2 x double> %i.ap, i64 1 ; 2 uses
  %i.df = fneg double %i.de
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.dd, double 2.000000e+00, double %i.df) ; 2 uses
  %i.dh = fadd double %i.de, %i.dd                ; 2 uses
  %i.di = fadd double %i.cm, %i.cn                ; 2 uses
  %i.dj = fmul double %i.di, f0x3FC36E60CAB2D064
  %i.dk = fsub double %i.bn, %i.br                ; 2 uses
  %i.dl = fsub double %i.bz, %i.cd                ; 2 uses
  %i.dm = fadd double %i.dk, %i.dl                ; 2 uses
  %i.dn = insertelement <2 x double> %i.cq, double %i.dj, i64 1
  %i.do = fsub double %i.dl, %i.dk                ; 2 uses
  %i.dp = fmul double %i.do, f0xBFD105974D8DEBB7
  %i.dq = insertelement <2 x double> %i.cs, double %i.dm, i64 1
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> <double f0xBFC5555555555555, double f0x3FE01CF9B20F3131>, <2 x double> %i.dn) ; 4 uses
  %i.ds = fsub double %i.cn, %i.cm
  %i.dt = insertelement <2 x double> poison, double %i.ds, i64 0 ; 2 uses
  %i.du = insertelement <2 x double> %i.dt, double %i.cr, i64 1
  %i.dv = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.bf, i64 1
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> <double f0x3FE08756968F6ED4, double 2.000000e+00>, <2 x double> %i.dw) ; 3 uses
  %i.dy = extractelement <2 x double> %i.dx, i64 1
  store double %i.dy, ptr %.0228, align 8, !tbaa !13
  %i.dz = insertelement <2 x double> %i.dt, double %i.di, i64 1
  %i.ea = fmul <2 x double> %i.dz, <double f0x3FE105974D8DEBB7, double f0xBFF01CF9B20F3131>
  %i.eb = insertelement <2 x double> poison, double %i.do, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.dm, i64 1
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> <double f0x3FE8CB01E1D7263E, double f0x3FCD2591300C3896>, <2 x double> %i.ea) ; 2 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 0 ; 2 uses
  %i.ef = extractelement <2 x double> %i.ed, i64 1 ; 2 uses
  %i.eg = fsub double %i.ee, %i.ef                ; 2 uses
  %i.eh = fadd double %i.ee, %i.ef                ; 2 uses
  %shift = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop236 = fsub <2 x double> %i.dr, %shift
  %i.ei = extractelement <2 x double> %foldExtExtBinop236, i64 0 ; 2 uses
  %i.ej = extractelement <2 x double> %i.dx, i64 0
  %i.ek = fsub double %i.cp, %i.ej                ; 2 uses
  %i.el = fsub double %i.ei, %i.ek                ; 2 uses
  %i.em = fadd double %i.ek, %i.ei                ; 2 uses
  %i.en = shufflevector <2 x double> %i.dr, <2 x double> %i.dx, <2 x i32> <i32 1, i32 2>
  %i.eo = insertelement <2 x double> %i.dr, double %i.cp, i64 1
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> splat (double 2.000000e+00), <2 x double> %i.eo) ; 2 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 0 ; 2 uses
  %i.er = extractelement <2 x double> %i.ep, i64 1 ; 2 uses
  %i.es = fsub double %i.eq, %i.er                ; 2 uses
  %i.et = fadd double %i.er, %i.eq                ; 2 uses
  %i.eu = fsub double %i.es, %i.dc
  %i.ev = getelementptr inbounds nuw i8, ptr %.0217224, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !11 ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %.0214227, i64 %i.ew
  store double %i.eu, ptr %i.ex, align 8, !tbaa !13
  %i.ey = fsub double %i.et, %i.dg
  %i.ez = getelementptr inbounds nuw i8, ptr %.0217224, i64 48
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !11
  %i.fb = getelementptr inbounds [8 x i8], ptr %.0228, i64 %i.fa
  store double %i.ey, ptr %i.fb, align 8, !tbaa !13
  %i.fc = fadd double %i.dg, %i.et
  store double %i.fc, ptr %.0214227, align 8, !tbaa !13
  %i.fd = fadd double %i.dc, %i.es
  %i.fe = getelementptr inbounds nuw i8, ptr %.0217224, i64 32
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !11 ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %.0228, i64 %i.ff
  store double %i.fd, ptr %i.fg, align 8, !tbaa !13
  %i.fh = fsub double %i.el, %i.cu                ; 2 uses
  %i.fi = fsub double %i.eg, %i.db                ; 2 uses
  %i.fj = fsub double %i.fh, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %.0217224, i64 24
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !11 ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %.0214227, i64 %i.fl
  store double %i.fj, ptr %i.fm, align 8, !tbaa !13
  %i.fn = fadd double %i.fi, %i.fh
  %i.fo = getelementptr inbounds nuw i8, ptr %.0217224, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !11 ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %.0228, i64 %i.fp
  store double %i.fn, ptr %i.fq, align 8, !tbaa !13
  %i.fr = fsub double %i.em, %i.dh                ; 2 uses
  %i.fs = fadd double %i.cy, %i.eh                ; 2 uses
  %i.ft = fsub double %i.fr, %i.fs
  %i.fu = getelementptr inbounds [8 x i8], ptr %.0214227, i64 %i.fp
  store double %i.ft, ptr %i.fu, align 8, !tbaa !13
  %i.fv = fadd double %i.fs, %i.fr
  %i.fw = getelementptr inbounds [8 x i8], ptr %.0214227, i64 %i.ff
  store double %i.fv, ptr %i.fw, align 8, !tbaa !13
  %i.fx = fsub double %i.eh, %i.cy                ; 2 uses
  %i.fy = fadd double %i.dh, %i.em                ; 2 uses
  %i.fz = fadd double %i.fx, %i.fy
  %i.ga = getelementptr inbounds [8 x i8], ptr %.0228, i64 %i.ew
  store double %i.fz, ptr %i.ga, align 8, !tbaa !13
  %i.gb = fsub double %i.fy, %i.fx
  %i.gc = getelementptr inbounds nuw i8, ptr %.0217224, i64 40
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !11 ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %.0228, i64 %i.gd
  store double %i.gb, ptr %i.ge, align 8, !tbaa !13
  %i.gf = fadd double %i.cu, %i.el                ; 2 uses
  %i.gg = fadd double %i.db, %i.eg                ; 2 uses
  %i.gh = fsub double %i.gf, %i.gg
  %i.gi = getelementptr inbounds [8 x i8], ptr %.0228, i64 %i.fl
  store double %i.gh, ptr %i.gi, align 8, !tbaa !13
  %i.gj = fadd double %i.gg, %i.gf
  %i.gk = getelementptr inbounds [8 x i8], ptr %.0214227, i64 %i.gd
  store double %i.gj, ptr %i.gk, align 8, !tbaa !13
  %i.gl = add nsw i64 %.0220221, -1
  %i.gm = getelementptr inbounds [8 x i8], ptr %.0228, i64 %9
  %i.gn = getelementptr inbounds [8 x i8], ptr %.0214227, i64 %9
  %i.go = getelementptr inbounds [8 x i8], ptr %.0215226, i64 %8
  %i.gp = getelementptr inbounds [8 x i8], ptr %.0216225, i64 %8
  %i.gq = getelementptr inbounds [8 x i8], ptr %.0217224, i64 %i.b
  %i.gr = getelementptr inbounds [8 x i8], ptr %.0218223, i64 %i.b
  %i.gs = getelementptr inbounds [8 x i8], ptr %.0219222, i64 %i.b
  %i.gt = icmp samesign ugt i64 %.0220221, 1
  br i1 %i.gt, label %bb.b, label %._crit_edge, !llvm.loop !9

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
