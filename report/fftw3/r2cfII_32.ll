Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cfII_32?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 32, ptr @.str, %struct.opcnt { double 1.380000e+02, double 4.600000e+01, double 3.600000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cfII_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [10 x i8] c"r2cfII_32\00", align 1
@fftw_rdft_r2cfII_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cfII_32(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cfII_32, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cfII_32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0499 = phi ptr [ %0, %.lr.ph ], [ %i.nt, %bb.b ] ; 17 uses
  %.0485498 = phi ptr [ %1, %.lr.ph ], [ %i.nu, %bb.b ] ; 17 uses
  %.0486497 = phi ptr [ %2, %.lr.ph ], [ %i.nv, %bb.b ] ; 17 uses
  %.0487496 = phi ptr [ %3, %.lr.ph ], [ %i.nw, %bb.b ] ; 17 uses
  %.0488495 = phi ptr [ %4, %.lr.ph ], [ %i.nx, %bb.b ] ; 16 uses
  %.0489494 = phi ptr [ %5, %.lr.ph ], [ %i.ny, %bb.b ] ; 16 uses
  %.0490493 = phi ptr [ %6, %.lr.ph ], [ %i.nz, %bb.b ] ; 16 uses
  %.0491492 = phi i64 [ %7, %.lr.ph ], [ %i.ns, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.0499, align 8, !tbaa !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0488495, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0488495, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0488495, i64 96
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0488495, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.0488495, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11   ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !13
  %i.x = insertelement <2 x double> poison, double %i.w, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x double> %i.y, <double f0xBFD87DE2A6AEA963, double f0x3FED906BCF328D46>
  %i.aa = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA963>, <2 x double> %i.z) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0488495, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.0488495, i64 112
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !13
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x double> %i.am, <double f0xBFED906BCF328D46, double f0x3FD87DE2A6AEA963>
  %i.ao = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> <double f0x3FD87DE2A6AEA963, double f0x3FED906BCF328D46>, <2 x double> %i.an) ; 3 uses
  %foldExtExtBinop501.a = fsub <2 x double> %i.aq, %i.ac
  %i.ar = extractelement <2 x double> %foldExtExtBinop501.a, i64 0 ; 2 uses
  %foldExtExtBinop501 = fsub <2 x double> %i.ac, %i.aq
  %i.as = extractelement <2 x double> %foldExtExtBinop501, i64 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0488495, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11 ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !13 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0488495, i64 72
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11 ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !13 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0488495, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11 ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !13 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0488495, i64 104
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !11 ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !13 ; 2 uses
  %i.bj = fsub double %i.be, %i.bi
  %i.bk = fadd double %i.be, %i.bi
  %i.bl = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bk, i64 1
  %i.bn = fmul <2 x double> %i.bm, splat (double f0x3FE6A09E667F3BCD) ; 3 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 0
  %i.bp = fadd double %i.aw, %i.bo
  %i.bq = extractelement <2 x double> %i.bn, i64 1
  %i.br = fadd double %i.ba, %i.bq
  %i.bs = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x double> %i.bt, <double f0xBFC8F8B83C69A60B, double f0x3FEF6297CFF75CB0>
  %i.bv = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> <double f0x3FEF6297CFF75CB0, double f0x3FC8F8B83C69A60B>, <2 x double> %i.bu) ; 3 uses
  %i.by = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.ba, i64 1
  %i.ca = fsub <2 x double> %i.bz, %i.bn          ; 2 uses
  %i.cb = fmul <2 x double> %i.ca, <double f0xBFE1C73B39AE68C8, double f0x3FE1C73B39AE68C8>
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> splat (double f0x3FEA9B66290EA1A3), <2 x double> %i.cc) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0488495, i64 120
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !13 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0488495, i64 56
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !11 ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !13 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0488495, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !11 ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !13 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0488495, i64 88
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !11 ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %.0499, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !13 ; 2 uses
  %i.cu = fsub double %i.cp, %i.ct
  %i.cv = fmul double %i.cu, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.cw = fadd double %i.cp, %i.ct
  %i.cx = fmul double %i.cw, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.cy = fsub double %i.cv, %i.ch
  %i.cz = fadd double %i.cl, %i.cx
  %i.da = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x double> %i.db, <double f0x3FC8F8B83C69A60B, double f0xBFEF6297CFF75CB0>
  %i.dd = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> <double f0x3FEF6297CFF75CB0, double f0x3FC8F8B83C69A60B>, <2 x double> %i.dc) ; 3 uses
  %i.dg = fsub double %i.cl, %i.cx
  %i.dh = fadd double %i.ch, %i.cv
  %i.di = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.dg, i64 1 ; 2 uses
  %i.dk = fmul <2 x double> %i.dj, <double f0xBFE1C73B39AE68C8, double f0x3FE1C73B39AE68C8>
  %i.dl = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> splat (double f0x3FEA9B66290EA1A3), <2 x double> %i.dk) ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.cf
  %i.do = load double, ptr %i.dn, align 8, !tbaa !13
  %i.dp = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.cj
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !13
  %i.dr = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.cn
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !13
  %i.dt = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.cr
  %i.du = load double, ptr %i.dt, align 8, !tbaa !13
  %i.dv = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.au
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !13
  %i.dx = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.ay
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !13
  %i.dz = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.ea, <double f0xBFD87DE2A6AEA963, double f0x3FED906BCF328D46>
  %i.ec = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA963>, <2 x double> %i.eb) ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.bc
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !13
  %i.eh = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.bg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !13
  %i.ej = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x double> %i.ek, <double f0xBFED906BCF328D46, double f0x3FD87DE2A6AEA963>
  %i.em = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> <double f0x3FD87DE2A6AEA963, double f0x3FED906BCF328D46>, <2 x double> %i.el) ; 2 uses
  %i.ep = load double, ptr %.0485498, align 8, !tbaa !13
  %i.eq = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.e
  %i.er = load double, ptr %i.eq, align 8, !tbaa !13
  %i.es = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.i
  %i.et = load double, ptr %i.es, align 8, !tbaa !13
  %i.eu = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.m
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !13
  %i.ew = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.q
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !13
  %i.ey = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.u
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !13
  %i.fa = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x double> %i.fb, <double f0xBFD87DE2A6AEA963, double f0x3FED906BCF328D46>
  %i.fd = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA963>, <2 x double> %i.fc) ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.ae
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !13
  %i.fi = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %i.ai
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !13
  %i.fk = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x double> %i.fl, <double f0xBFED906BCF328D46, double f0x3FD87DE2A6AEA963>
  %i.fn = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> <double f0x3FD87DE2A6AEA963, double f0x3FED906BCF328D46>, <2 x double> %i.fm) ; 2 uses
  %i.fq = extractelement <2 x double> %i.bx, i64 1 ; 2 uses
  %i.fr = extractelement <2 x double> %i.df, i64 1 ; 2 uses
  %i.fs = insertelement <2 x double> poison, double %i.et, i64 0
  %i.ft = insertelement <2 x double> %i.fs, double %i.ds, i64 1 ; 2 uses
  %i.fu = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.du, i64 1 ; 2 uses
  %i.fw = fadd <2 x double> %i.ft, %i.fv
  %i.fx = fmul <2 x double> %i.fw, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.fy = insertelement <2 x double> poison, double %i.er, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.dq, i64 1 ; 2 uses
  %i.ga = fadd <2 x double> %i.fz, %i.fx          ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0489494, i64 64
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !11
  %i.gd = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %.0490493, i64 64
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !11
  %i.gg = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %.0489494, i64 56
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !11
  %i.gj = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %.0490493, i64 56
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !11
  %i.gm = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %.0489494, i64 120
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !11
  %i.gp = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %.0490493, i64 120
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !11
  %i.gs = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %i.gr
  %i.gt = extractelement <2 x double> %i.cd, i64 0 ; 2 uses
  %i.gu = extractelement <2 x double> %i.dm, i64 1 ; 2 uses
  %i.gv = fsub double %i.gt, %i.gu                ; 2 uses
  %i.gw = extractelement <2 x double> %i.cd, i64 1 ; 2 uses
  %i.gx = extractelement <2 x double> %i.dm, i64 0 ; 2 uses
  %i.gy = fadd double %i.gw, %i.gx                ; 2 uses
  %i.gz = fsub <2 x double> %i.ft, %i.fv
  %i.ha = shufflevector <2 x double> %i.ff, <2 x double> %i.ee, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hb = shufflevector <2 x double> %i.fp, <2 x double> %i.eo, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hc = fsub <2 x double> %i.ha, %i.hb          ; 4 uses
  %i.hd = fmul <2 x double> %i.gz, splat (double f0x3FE6A09E667F3BCD) ; 4 uses
  %i.he = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.hf = insertelement <2 x double> %i.he, double %i.do, i64 1 ; 4 uses
  %i.hg = fsub <2 x double> %i.hf, %i.hd
  %i.hh = fadd <2 x double> %i.hf, %i.hd
  %i.hi = shufflevector <2 x double> %i.hg, <2 x double> %i.hh, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.hj = shufflevector <2 x double> %i.fp, <2 x double> %i.eo, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.hk = shufflevector <2 x double> %i.ff, <2 x double> %i.ee, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.hl = fsub <2 x double> %i.hj, %i.hk          ; 2 uses
  %i.hm = fsub <2 x double> %i.fz, %i.fx          ; 2 uses
  %i.hn = fadd <2 x double> %i.hm, %i.hl          ; 3 uses
  %i.ho = fadd <2 x double> %i.hc, %i.hi          ; 2 uses
  %i.hp = fsub <2 x double> %i.hc, %i.hi          ; 2 uses
  %i.hq = shufflevector <2 x double> %i.ho, <2 x double> %i.hp, <2 x i32> <i32 0, i32 3>
  %i.hr = fmul <2 x double> %i.hn, <double f0x3FD294062ED59F06, double f0xBFD294062ED59F06>
  %i.hs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> splat (double f0x3FEE9F4156C62DDA), <2 x double> %i.hr) ; 2 uses
  %i.ht = extractelement <2 x double> %i.hs, i64 0 ; 2 uses
  %i.hu = extractelement <2 x double> %i.hs, i64 1 ; 2 uses
  %i.hv = fadd double %i.hu, %i.ht                ; 2 uses
  %i.hw = fsub double %i.hu, %i.ht                ; 2 uses
  %i.hx = shufflevector <2 x double> %i.hn, <2 x double> %i.ho, <2 x i32> <i32 1, i32 2>
  %i.hy = fmul <2 x double> %i.hx, <double f0x3FEE9F4156C62DDA, double f0xBFD294062ED59F06>
  %i.hz = shufflevector <2 x double> %i.hp, <2 x double> %i.hn, <2 x i32> <i32 1, i32 2>
  %i.ia = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> <double f0x3FD294062ED59F06, double f0x3FEE9F4156C62DDA>, <2 x double> %i.hy) ; 2 uses
  %i.ib = extractelement <2 x double> %i.ia, i64 0 ; 2 uses
  %i.ic = extractelement <2 x double> %i.ia, i64 1 ; 2 uses
  %i.id = fsub double %i.ib, %i.ic                ; 2 uses
  %i.ie = fadd double %i.ib, %i.ic                ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0489494, i64 112
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !11
  %i.ih = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.ig
  %10 = getelementptr inbounds nuw i8, ptr %.0490493, i64 112
  %11 = load i64, ptr %10, align 8, !tbaa !11
  %12 = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %11
  %i.ii = getelementptr inbounds nuw i8, ptr %.0489494, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !11
  %i.ik = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.ij
  %13 = getelementptr inbounds nuw i8, ptr %.0490493, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %.0489494, i64 72
  %i.il = getelementptr inbounds nuw i8, ptr %.0490493, i64 72
  %15 = getelementptr inbounds nuw i8, ptr %.0489494, i64 48
  %16 = getelementptr inbounds nuw i8, ptr %.0490493, i64 48
  %i.im = fadd double %i.fq, %i.fr                ; 2 uses
  %foldExtExtBinop503 = fsub <2 x double> %i.df, %i.bx
  %17 = extractelement <2 x double> %foldExtExtBinop503, i64 0 ; 2 uses
  %18 = fadd <2 x double> %i.ha, %i.hb            ; 2 uses
  %19 = fadd <2 x double> %i.ga, %18              ; 2 uses
  %20 = fsub <2 x double> %i.ga, %18              ; 3 uses
  %21 = fmul <2 x double> %19, <double f0x3FEFD88DA3D12526, double f0xBFEFD88DA3D12526>
  %22 = fadd <2 x double> %i.hk, %i.hj            ; 2 uses
  %23 = fmul <2 x double> %19, <double f0xBFB917A6BC29B42C, double f0x3FB917A6BC29B42C>
  %24 = fadd <2 x double> %i.hd, %i.hf
  %25 = fsub <2 x double> %i.hd, %i.hf
  %26 = shufflevector <2 x double> %24, <2 x double> %25, <2 x i32> <i32 0, i32 3> ; 2 uses
  %27 = fsub <2 x double> %26, %22                ; 3 uses
  %28 = fadd <2 x double> %26, %22                ; 2 uses
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> splat (double f0x3FB917A6BC29B42C), <2 x double> %21) ; 2 uses
  %30 = extractelement <2 x double> %29, i64 0    ; 2 uses
  %31 = extractelement <2 x double> %29, i64 1    ; 2 uses
  %i.in = fadd double %31, %30                    ; 2 uses
  %32 = fsub double %31, %30                      ; 2 uses
  %33 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> splat (double f0x3FEFD88DA3D12526), <2 x double> %23) ; 2 uses
  %34 = extractelement <2 x double> %33, i64 0    ; 2 uses
  %35 = extractelement <2 x double> %33, i64 1    ; 2 uses
  %i.io = fsub double %i.k, %i.o
  %i.ip = fadd double %i.k, %i.o
  %36 = insertelement <2 x double> poison, double %i.io, i64 0
  %37 = insertelement <2 x double> %36, double %i.ip, i64 1
  %38 = fmul <2 x double> %37, splat (double f0x3FE6A09E667F3BCD) ; 3 uses
  %i.iq = extractelement <2 x double> %38, i64 1
  %i.ir = fsub double %i.g, %i.iq                 ; 2 uses
  %39 = extractelement <2 x double> %38, i64 0
  %i.is = fsub double %i.c, %39                   ; 2 uses
  %40 = insertelement <2 x double> poison, double %i.c, i64 0
  %41 = insertelement <2 x double> %40, double %i.g, i64 1
  %42 = fadd <2 x double> %41, %38                ; 3 uses
  %43 = fadd <2 x double> %i.ac, %i.aq            ; 3 uses
  %i.it = fadd <2 x double> %i.bx, %i.df          ; 2 uses
  %i.iu = fadd <2 x double> %42, %43              ; 3 uses
  %i.iv = fsub <2 x double> %i.iu, %i.it
  %44 = extractelement <2 x double> %i.iv, i64 0  ; 2 uses
  %45 = fsub double %i.fr, %i.fq                  ; 2 uses
  %46 = extractelement <2 x double> %i.iu, i64 1
  %47 = fsub double %45, %46                      ; 2 uses
  %48 = insertelement <2 x double> %i.it, double %45, i64 1
  %i.iw = fadd <2 x double> %i.iu, %48            ; 3 uses
  %49 = fadd double %i.is, %i.as                  ; 2 uses
  %50 = fadd double %49, %i.gv                    ; 2 uses
  %51 = fsub double %49, %i.gv                    ; 2 uses
  %52 = fadd double %i.ir, %i.ar                  ; 2 uses
  %53 = fsub double %i.gy, %52                    ; 2 uses
  %54 = fadd double %52, %i.gy                    ; 2 uses
  %55 = fsub double %50, %i.hv
  %56 = fsub double %i.ie, %54
  %57 = fadd double %50, %i.hv
  %58 = fadd double %54, %i.ie
  %59 = fsub double %51, %i.id
  %60 = fsub double %i.hw, %53
  %61 = fadd double %51, %i.id
  %62 = fadd double %53, %i.hw
  %foldExtExtBinop513 = fsub <2 x double> %42, %43
  %i.ix = extractelement <2 x double> %foldExtExtBinop513, i64 0 ; 2 uses
  %i.iy = fadd double %i.ix, %i.im                ; 2 uses
  %i.iz = fsub double %i.ix, %i.im                ; 2 uses
  %foldExtExtBinop515 = fsub <2 x double> %42, %43
  %i.ja = extractelement <2 x double> %foldExtExtBinop515, i64 1 ; 2 uses
  %63 = fsub double %17, %i.ja                    ; 2 uses
  %64 = fadd double %i.ja, %17                    ; 2 uses
  %i.jb = fadd double %35, %34                    ; 2 uses
  %i.jc = fsub double %35, %34                    ; 2 uses
  %i.jd = fsub double %44, %i.in
  store double %i.jd, ptr %i.gd, align 8, !tbaa !13
  %65 = extractelement <2 x double> %i.iw, i64 1
  %i.je = fsub double %i.jc, %65
  store double %i.je, ptr %i.gg, align 8, !tbaa !13
  %i.jf = fadd double %44, %i.in
  store double %i.jf, ptr %i.gj, align 8, !tbaa !13
  %66 = insertelement <2 x double> poison, double %i.jb, i64 0
  %67 = insertelement <2 x double> %66, double %i.jc, i64 1
  %68 = fadd <2 x double> %i.iw, %67              ; 2 uses
  %69 = extractelement <2 x double> %68, i64 1
  store double %69, ptr %i.gm, align 8, !tbaa !13
  %70 = extractelement <2 x double> %i.iw, i64 0
  %i.jg = fsub double %70, %i.jb
  store double %i.jg, ptr %i.gp, align 8, !tbaa !13
  %i.jh = fsub double %32, %47
  store double %i.jh, ptr %i.gs, align 8, !tbaa !13
  %71 = extractelement <2 x double> %68, i64 0
  store double %71, ptr %.0486497, align 8, !tbaa !13
  %i.ji = fadd double %47, %32
  store double %i.ji, ptr %.0487496, align 8, !tbaa !13
  store double %55, ptr %i.ih, align 8, !tbaa !13
  store double %56, ptr %12, align 8, !tbaa !13
  store double %57, ptr %i.ik, align 8, !tbaa !13
  %i.jj = load i64, ptr %13, align 8, !tbaa !11
  %i.jk = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %i.jj
  store double %58, ptr %i.jk, align 8, !tbaa !13
  %i.jl = load i64, ptr %14, align 8, !tbaa !11
  %i.jm = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.jl
  store double %59, ptr %i.jm, align 8, !tbaa !13
  %i.jn = load i64, ptr %i.il, align 8, !tbaa !11
  %i.jo = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %i.jn
  store double %60, ptr %i.jo, align 8, !tbaa !13
  %i.jp = load i64, ptr %15, align 8, !tbaa !11
  %i.jq = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.jp
  store double %61, ptr %i.jq, align 8, !tbaa !13
  %i.jr = load i64, ptr %16, align 8, !tbaa !11
  %i.js = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %i.jr
  store double %62, ptr %i.js, align 8, !tbaa !13
  %i.jt = fmul <2 x double> %20, <double f0x3FE44CF325091DD6, double f0xBFE44CF325091DD6>
  %i.ju = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %27, <2 x double> splat (double f0x3FE8BC806B151741), <2 x double> %i.jt) ; 2 uses
  %i.jv = extractelement <2 x double> %i.ju, i64 0 ; 2 uses
  %i.jw = extractelement <2 x double> %i.ju, i64 1 ; 2 uses
  %i.jx = fadd double %i.jw, %i.jv                ; 2 uses
  %i.jy = fsub double %i.jw, %i.jv                ; 2 uses
  %i.jz = shufflevector <2 x double> %20, <2 x double> %27, <2 x i32> <i32 1, i32 2>
  %i.ka = fmul <2 x double> %i.jz, <double f0x3FE8BC806B151741, double f0xBFE44CF325091DD6>
  %i.kb = shufflevector <2 x double> %27, <2 x double> %20, <2 x i32> <i32 1, i32 2>
  %i.kc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> <double f0x3FE44CF325091DD6, double f0x3FE8BC806B151741>, <2 x double> %i.ka) ; 2 uses
  %i.kd = extractelement <2 x double> %i.kc, i64 0 ; 2 uses
  %i.ke = extractelement <2 x double> %i.kc, i64 1 ; 2 uses
  %i.kf = fsub double %i.kd, %i.ke                ; 2 uses
  %i.kg = fadd double %i.kd, %i.ke                ; 2 uses
  %i.kh = fsub double %i.iy, %i.jx
  %i.ki = getelementptr inbounds nuw i8, ptr %.0489494, i64 96
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !11
  %i.kk = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.kj
  store double %i.kh, ptr %i.kk, align 8, !tbaa !13
  %i.kl = fsub double %i.kg, %64
  %i.km = getelementptr inbounds nuw i8, ptr %.0490493, i64 96
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !11
  %i.ko = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %i.kn
  store double %i.kl, ptr %i.ko, align 8, !tbaa !13
  %i.kp = fadd double %i.iy, %i.jx
  %i.kq = getelementptr inbounds nuw i8, ptr %.0489494, i64 24
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !11
  %i.ks = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.kr
  store double %i.kp, ptr %i.ks, align 8, !tbaa !13
  %i.kt = fadd double %64, %i.kg
  %i.ku = getelementptr inbounds nuw i8, ptr %.0490493, i64 24
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !11
  %i.kw = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %i.kv
  store double %i.kt, ptr %i.kw, align 8, !tbaa !13
  %i.kx = fsub double %i.iz, %i.kf
  %i.ky = getelementptr inbounds nuw i8, ptr %.0489494, i64 88
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !11
  %i.la = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.kz
  store double %i.kx, ptr %i.la, align 8, !tbaa !13
  %i.lb = fsub double %i.jy, %63
  %i.lc = getelementptr inbounds nuw i8, ptr %.0490493, i64 88
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !11
  %i.le = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %i.ld
  store double %i.lb, ptr %i.le, align 8, !tbaa !13
  %i.lf = fadd double %i.iz, %i.kf
  %i.lg = getelementptr inbounds nuw i8, ptr %.0489494, i64 32
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !11
  %i.li = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.lh
  store double %i.lf, ptr %i.li, align 8, !tbaa !13
  %i.lj = fadd double %63, %i.jy
  %i.lk = getelementptr inbounds nuw i8, ptr %.0490493, i64 32
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !11
  %i.lm = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %i.ll
  store double %i.lj, ptr %i.lm, align 8, !tbaa !13
  %i.ln = fsub double %i.is, %i.as                ; 2 uses
  %i.lo = fsub double %i.gx, %i.gw                ; 2 uses
  %i.lp = fadd double %i.ln, %i.lo                ; 2 uses
  %i.lq = fsub double %i.ln, %i.lo                ; 2 uses
  %i.lr = fsub double %i.ar, %i.ir                ; 2 uses
  %i.ls = fadd double %i.gt, %i.gu                ; 2 uses
  %i.lt = fsub double %i.lr, %i.ls                ; 2 uses
  %i.lu = fadd double %i.lr, %i.ls                ; 2 uses
  %i.lv = fsub <2 x double> %i.hl, %i.hm          ; 2 uses
  %i.lw = fsub <2 x double> %i.hi, %i.hc
  %i.lx = fadd <2 x double> %i.hi, %i.hc
  %i.ly = shufflevector <2 x double> %i.lw, <2 x double> %i.lx, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.lz = fmul <2 x double> %i.lv, splat (double f0x3FDE2B5D3806F63B)
  %i.ma = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> splat (double f0x3FEC38B2F180BDB1), <2 x double> %i.lz) ; 2 uses
  %i.mb = extractelement <2 x double> %i.ma, i64 0 ; 2 uses
  %i.mc = extractelement <2 x double> %i.ma, i64 1 ; 2 uses
  %i.md = fsub double %i.mb, %i.mc                ; 2 uses
  %i.me = fadd double %i.mc, %i.mb                ; 2 uses
  %i.mf = fmul <2 x double> %i.ly, splat (double f0xBFDE2B5D3806F63B)
  %i.mg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> splat (double f0x3FEC38B2F180BDB1), <2 x double> %i.mf) ; 2 uses
  %i.mh = extractelement <2 x double> %i.mg, i64 0 ; 2 uses
  %i.mi = extractelement <2 x double> %i.mg, i64 1 ; 2 uses
  %i.mj = fsub double %i.mi, %i.mh                ; 2 uses
  %i.mk = fadd double %i.mi, %i.mh                ; 2 uses
  %i.ml = fsub double %i.lp, %i.md
  %i.mm = getelementptr inbounds nuw i8, ptr %.0489494, i64 104
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !11
  %i.mo = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.mn
  store double %i.ml, ptr %i.mo, align 8, !tbaa !13
  %i.mp = fsub double %i.mk, %i.lt
  %i.mq = getelementptr inbounds nuw i8, ptr %.0490493, i64 104
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !11
  %i.ms = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %i.mr
  store double %i.mp, ptr %i.ms, align 8, !tbaa !13
  %i.mt = fadd double %i.lp, %i.md
  %i.mu = getelementptr inbounds nuw i8, ptr %.0489494, i64 16
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !11
  %i.mw = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.mv
  store double %i.mt, ptr %i.mw, align 8, !tbaa !13
  %i.mx = fadd double %i.lt, %i.mk
  %i.my = getelementptr inbounds nuw i8, ptr %.0490493, i64 16
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !11
  %i.na = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %i.mz
  store double %i.mx, ptr %i.na, align 8, !tbaa !13
  %i.nb = fsub double %i.lq, %i.mj
  %i.nc = getelementptr inbounds nuw i8, ptr %.0489494, i64 80
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !11
  %i.ne = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.nd
  store double %i.nb, ptr %i.ne, align 8, !tbaa !13
  %i.nf = fsub double %i.lu, %i.me
  %i.ng = getelementptr inbounds nuw i8, ptr %.0490493, i64 80
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !11
  %i.ni = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %i.nh
  store double %i.nf, ptr %i.ni, align 8, !tbaa !13
  %i.nj = fadd double %i.lq, %i.mj
  %i.nk = getelementptr inbounds nuw i8, ptr %.0489494, i64 40
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !11
  %i.nm = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %i.nl
  store double %i.nj, ptr %i.nm, align 8, !tbaa !13
  %i.nn = fadd double %i.lu, %i.me
  %i.no = fneg double %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %.0490493, i64 40
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !11
  %i.nr = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %i.nq
  store double %i.no, ptr %i.nr, align 8, !tbaa !13
  %i.ns = add nsw i64 %.0491492, -1
  %i.nt = getelementptr inbounds [8 x i8], ptr %.0499, i64 %8
  %i.nu = getelementptr inbounds [8 x i8], ptr %.0485498, i64 %8
  %i.nv = getelementptr inbounds [8 x i8], ptr %.0486497, i64 %9
  %i.nw = getelementptr inbounds [8 x i8], ptr %.0487496, i64 %9
  %i.nx = getelementptr inbounds [8 x i8], ptr %.0488495, i64 %i.b
  %i.ny = getelementptr inbounds [8 x i8], ptr %.0489494, i64 %i.b
  %i.nz = getelementptr inbounds [8 x i8], ptr %.0490493, i64 %i.b
  %i.oa = icmp samesign ugt i64 %.0491492, 1
  br i1 %i.oa, label %bb.b, label %._crit_edge, !llvm.loop !9

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
