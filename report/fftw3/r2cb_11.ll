Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cb_11?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 11, ptr @.str, %struct.opcnt { double 1.900000e+01, double 1.000000e+01, double 4.100000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cb_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [8 x i8] c"r2cb_11\00", align 1
@fftw_rdft_r2cb_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cb_11(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cb_11, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cb_11(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0149 = phi ptr [ %0, %.lr.ph ], [ %i.fe, %bb.b ] ; 7 uses
  %.0135148 = phi ptr [ %1, %.lr.ph ], [ %i.ff, %bb.b ] ; 6 uses
  %.0136147 = phi ptr [ %2, %.lr.ph ], [ %i.fg, %bb.b ] ; 7 uses
  %.0137146 = phi ptr [ %3, %.lr.ph ], [ %i.fh, %bb.b ] ; 6 uses
  %.0138145 = phi ptr [ %4, %.lr.ph ], [ %i.fi, %bb.b ] ; 6 uses
  %.0139144 = phi ptr [ %5, %.lr.ph ], [ %i.fj, %bb.b ] ; 6 uses
  %.0140143 = phi ptr [ %6, %.lr.ph ], [ %i.fk, %bb.b ] ; 6 uses
  %.0141142 = phi i64 [ %7, %.lr.ph ], [ %i.fd, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0140143, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %.0137146, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !13 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0140143, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds [8 x i8], ptr %.0137146, i64 %i.h
  %i.j = load double, ptr %i.i, align 8, !tbaa !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0140143, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds [8 x i8], ptr %.0137146, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !13 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0140143, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %i.q = getelementptr inbounds [8 x i8], ptr %.0137146, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !13 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0140143, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds [8 x i8], ptr %.0137146, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !13 ; 4 uses
  %i.w = insertelement <2 x double> poison, double %i.n, i64 0 ; 2 uses
  %i.x = insertelement <2 x double> %i.w, double %i.v, i64 1
  %i.y = fmul <2 x double> %i.x, <double f0x3FFD1BB48EEE2C13, double f0x3FF82F19BB3A28A1>
  %i.z = insertelement <2 x double> poison, double %i.f, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.r, i64 1 ; 2 uses
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> <double f0x3FF14CEDF8BB580B, double f0x3FFFAC9E043842EF>, <2 x double> %i.y) ; 2 uses
  %i.ac = fmul double %i.r, f0x3FFD1BB48EEE2C13
  %i.ad = insertelement <2 x double> poison, double %i.j, i64 0 ; 3 uses
  %i.ae = insertelement <2 x double> %i.ad, double %i.f, i64 1
  %i.af = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ag = fsub <2 x double> %i.ab, %i.af
  %i.ah = insertelement <2 x double> %i.ag, double %i.ac, i64 1
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> <double f0xBFE207E7FD768DBF, double f0x3FFFAC9E043842EF>, <2 x double> %i.ah) ; 3 uses
  %i.aj = fmul double %i.v, f0x3FF14CEDF8BB580B
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.n, double f0x3FE207E7FD768DBF, double %i.aj)
  %i.al = extractelement <2 x double> %i.ai, i64 1
  %i.am = fsub double %i.al, %i.ak
  %i.an = tail call double @llvm.fmuladd.f64(double %i.j, double f0xBFF82F19BB3A28A1, double %i.am) ; 2 uses
  %i.ao = insertelement <2 x double> poison, double %i.v, i64 0 ; 2 uses
  %i.ap = insertelement <2 x double> %i.ao, double %i.n, i64 1
  %i.aq = fmul <2 x double> %i.ap, <double f0x3FFD1BB48EEE2C13, double f0x3FF14CEDF8BB580B>
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> <double f0x3FE207E7FD768DBF, double f0x3FF82F19BB3A28A1>, <2 x double> %i.aq) ; 2 uses
  %i.as = fmul double %i.f, f0x3FFD1BB48EEE2C13
  %i.at = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.av = fsub <2 x double> %i.ar, %i.au
  %i.aw = insertelement <2 x double> %i.av, double %i.as, i64 1
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> <double f0xBFFFAC9E043842EF, double f0x3FF14CEDF8BB580B>, <2 x double> %i.aw) ; 3 uses
  %i.ay = fmul double %i.n, f0x3FF82F19BB3A28A1
  %i.az = tail call double @llvm.fmuladd.f64(double %i.v, double f0x3FFFAC9E043842EF, double %i.ay)
  %10 = extractelement <2 x double> %i.ax, i64 1
  %11 = fadd double %10, %i.az
  %12 = tail call double @llvm.fmuladd.f64(double %i.r, double f0x3FE207E7FD768DBF, double %11) ; 2 uses
  %i.ba = insertelement <2 x double> %i.w, double %i.f, i64 1
  %13 = fmul <2 x double> %i.ba, <double f0x3FFFAC9E043842EF, double f0xBFF82F19BB3A28A1>
  %14 = insertelement <2 x double> %i.ao, double %i.r, i64 1
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> <double f0x3FE207E7FD768DBF, double f0x3FF14CEDF8BB580B>, <2 x double> %13) ; 2 uses
  %i.bb = load double, ptr %.0136147, align 8, !tbaa !13 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0139144, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11
  %i.be = getelementptr inbounds [8 x i8], ptr %.0136147, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !13 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0139144, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0136147, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !13 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0139144, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr inbounds [8 x i8], ptr %.0136147, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !13 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0139144, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  %i.bq = getelementptr inbounds [8 x i8], ptr %.0136147, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !13 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0139144, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11
  %i.bu = getelementptr inbounds [8 x i8], ptr %.0136147, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !13 ; 5 uses
  %i.bw = insertelement <2 x double> %i.ad, double %i.bv, i64 1
  %i.bx = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %16 = fadd <2 x double> %i.bx, %15
  %i.by = insertelement <2 x double> %16, double %i.bb, i64 1
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> <double f0xBFFD1BB48EEE2C13, double f0x3FFAEB8C8764F0BA>, <2 x double> %i.by) ; 3 uses
  %i.ca = insertelement <2 x double> poison, double %i.bj, i64 0 ; 2 uses
  %i.cb = insertelement <2 x double> %i.ca, double %i.bf, i64 1 ; 2 uses
  %i.cc = fmul <2 x double> %i.cb, <double f0xBFD2375F640F44DB, double f0x3FFEB42A9BCD5057>
  %i.cd = insertelement <2 x double> poison, double %i.bn, i64 0 ; 3 uses
  %i.ce = insertelement <2 x double> %i.cd, double %i.br, i64 1
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> <double f0x3FEA9628D9C712B6, double f0x3FF4F49E7F775887>, <2 x double> %i.cc) ; 2 uses
  %i.cg = fmul double %i.bn, f0xBFFEB42A9BCD5057
  %i.ch = insertelement <2 x double> poison, double %i.br, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.bj, i64 1
  %i.cj = insertelement <2 x double> poison, double %i.bb, i64 0 ; 2 uses
  %i.ck = insertelement <2 x double> %i.cj, double %i.cg, i64 1
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> <double f0x3FFAEB8C8764F0BA, double f0x3FEA9628D9C712B6>, <2 x double> %i.ck) ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cf, <2 x double> %i.cl, <2 x i32> <i32 0, i32 3>
  %i.cn = shufflevector <2 x double> %i.bz, <2 x double> %i.cl, <2 x i32> <i32 1, i32 2>
  %i.co = fadd <2 x double> %i.cm, %i.cn          ; 2 uses
  %shift157.a = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop158.a = fsub <2 x double> %i.co, %shift157.a ; 2 uses
  %i.cp = fmul double %i.bf, f0x3FF4F49E7F775887
  %i.cq = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.br, i64 1
  %i.cs = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.bb, i64 1
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> <double f0x3FD2375F640F44DB, double f0x3FEA9628D9C712B6>, <2 x double> %i.ct) ; 2 uses
  %shift160.a = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop161.a = fsub <2 x double> %shift160.a, %i.cu
  %i.cv = extractelement <2 x double> %foldExtExtBinop161.a, i64 0 ; 2 uses
  %i.cw = fmul <2 x double> %i.cb, <double f0xBFF4F49E7F775887, double f0x3FD2375F640F44DB>
  %i.cx = insertelement <2 x double> %i.cd, double %i.bv, i64 1 ; 2 uses
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> <double f0x3FFAEB8C8764F0BA, double f0x3FFEB42A9BCD5057>, <2 x double> %i.cw) ; 2 uses
  %shift163.a = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop164.a = fadd <2 x double> %i.cy, %shift163.a
  %shift166 = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop167 = fsub <2 x double> %foldExtExtBinop164.a, %shift166 ; 2 uses
  %i.cz = fmul double %i.bj, f0xBFFEB42A9BCD5057
  %i.da = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.bv, i64 1
  %i.dc = insertelement <2 x double> %i.cj, double %i.cz, i64 1
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> <double f0x3FFAEB8C8764F0BA, double f0x3FEA9628D9C712B6>, <2 x double> %i.dc) ; 2 uses
  %i.de = fmul double %i.br, f0x3FD2375F640F44DB
  %i.df = insertelement <2 x double> %i.cd, double %i.bf, i64 1
  %i.dg = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.bb, i64 1
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> <double f0x3FF4F49E7F775887, double f0x3FEA9628D9C712B6>, <2 x double> %i.dh) ; 2 uses
  %i.dj = fmul <2 x double> %i.cx, <double f0xBFD2375F640F44DB, double f0x3FF4F49E7F775887>
  %i.dk = insertelement <2 x double> %i.ca, double %i.br, i64 1
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> <double f0x3FFAEB8C8764F0BA, double f0x3FFEB42A9BCD5057>, <2 x double> %i.dj) ; 2 uses
  %foldExtExtBinop169 = fsub <2 x double> %foldExtExtBinop158.a, %i.ai
  %i.dm = extractelement <2 x double> %foldExtExtBinop169, i64 0
  %i.dn = getelementptr inbounds nuw i8, ptr %.0138145, i64 24
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !11 ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %.0149, i64 %i.do
  store double %i.dm, ptr %i.dp, align 8, !tbaa !13
  %foldExtExtBinop171 = fsub <2 x double> %foldExtExtBinop167, %i.ax
  %i.dq = extractelement <2 x double> %foldExtExtBinop171, i64 0
  %i.dr = getelementptr inbounds nuw i8, ptr %.0138145, i64 32
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !11 ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %.0149, i64 %i.ds
  store double %i.dq, ptr %i.dt, align 8, !tbaa !13
  %i.du = fadd double %i.an, %i.cv
  %i.dv = getelementptr inbounds nuw i8, ptr %.0138145, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !11 ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %.0149, i64 %i.dw
  store double %i.du, ptr %i.dx, align 8, !tbaa !13
  %foldExtExtBinop173 = fadd <2 x double> %i.ai, %foldExtExtBinop158.a
  %i.dy = extractelement <2 x double> %foldExtExtBinop173, i64 0
  %i.dz = getelementptr inbounds [8 x i8], ptr %.0135148, i64 %i.dw
  store double %i.dy, ptr %i.dz, align 8, !tbaa !13
  %i.ea = fsub double %i.cv, %i.an
  %i.eb = getelementptr inbounds [8 x i8], ptr %.0135148, i64 %i.do
  store double %i.ea, ptr %i.eb, align 8, !tbaa !13
  %i.ec = getelementptr inbounds nuw i8, ptr %.0138145, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !11 ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %.0149, i64 %i.ed
  %foldExtExtBinop175.a = fadd <2 x double> %i.ax, %foldExtExtBinop167
  %i.ef = extractelement <2 x double> %foldExtExtBinop175.a, i64 0
  %i.eg = getelementptr inbounds [8 x i8], ptr %.0135148, i64 %i.ed
  %i.eh = getelementptr inbounds nuw i8, ptr %.0138145, i64 40
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !11
  %i.ej = getelementptr inbounds [8 x i8], ptr %.0149, i64 %i.ei
  %i.ek = shufflevector <2 x double> %i.dd, <2 x double> %i.di, <2 x i32> <i32 0, i32 3>
  %i.el = shufflevector <2 x double> %i.dd, <2 x double> %i.dl, <2 x i32> <i32 1, i32 2>
  %i.em = fadd <2 x double> %i.ek, %i.el
  %i.en = shufflevector <2 x double> %i.di, <2 x double> %i.dl, <2 x i32> <i32 0, i32 3>
  %i.eo = fsub <2 x double> %i.em, %i.en          ; 3 uses
  %shift177 = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop178 = fadd <2 x double> %i.bz, %shift177
  %i.ep = extractelement <2 x double> %foldExtExtBinop178, i64 0
  store double %i.ep, ptr %i.ee, align 8, !tbaa !13
  store double %i.ef, ptr %i.eg, align 8, !tbaa !13
  %i.eq = extractelement <2 x double> %i.eo, i64 0
  %i.er = fadd double %12, %i.eq
  store double %i.er, ptr %i.ej, align 8, !tbaa !13
  %i.es = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.et = insertelement <2 x double> %i.es, double %12, i64 0
  %i.eu = fsub <2 x double> %i.eo, %i.et          ; 2 uses
  %i.ev = extractelement <2 x double> %i.eu, i64 0
  store double %i.ev, ptr %.0135148, align 8, !tbaa !13
  %i.ew = getelementptr inbounds [8 x i8], ptr %.0135148, i64 %i.ds
  %i.ex = extractelement <2 x double> %i.eu, i64 1
  store double %i.ex, ptr %i.ew, align 8, !tbaa !13
  %i.ey = fadd double %i.bf, %i.bv
  %i.ez = fadd double %i.br, %i.ey
  %i.fa = fadd double %i.bn, %i.ez
  %i.fb = fadd double %i.bj, %i.fa
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.fb, double 2.000000e+00, double %i.bb)
  store double %i.fc, ptr %.0149, align 8, !tbaa !13
  %i.fd = add nsw i64 %.0141142, -1
  %i.fe = getelementptr inbounds [8 x i8], ptr %.0149, i64 %9
  %i.ff = getelementptr inbounds [8 x i8], ptr %.0135148, i64 %9
  %i.fg = getelementptr inbounds [8 x i8], ptr %.0136147, i64 %8
  %i.fh = getelementptr inbounds [8 x i8], ptr %.0137146, i64 %8
  %i.fi = getelementptr inbounds [8 x i8], ptr %.0138145, i64 %i.b
  %i.fj = getelementptr inbounds [8 x i8], ptr %.0139144, i64 %i.b
  %i.fk = getelementptr inbounds [8 x i8], ptr %.0140143, i64 %i.b
  %i.fl = icmp samesign ugt i64 %.0141142, 1
  br i1 %i.fl, label %bb.b, label %._crit_edge, !llvm.loop !9

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
