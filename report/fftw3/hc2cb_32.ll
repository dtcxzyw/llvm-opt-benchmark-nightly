Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hc2cb_32?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hc2c_desc_s = type { i64, ptr, ptr, ptr, %struct.opcnt }
%struct.opcnt = type { double, double, double, double }
%struct.tw_instr = type { i8, i8, i16 }
%struct.hc2c_genus = type { ptr, i32, i64 }

@desc = internal constant %struct.hc2c_desc_s { i64 32, ptr @.str, ptr @twinstr, ptr @fftw_rdft_hc2cb_genus, %struct.opcnt { double 3.400000e+02, double 1.140000e+02, double 9.400000e+01, double 0.000000e+00 } }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [9 x i8] c"hc2cb_32\00", align 1
@twinstr = internal constant [2 x %struct.tw_instr] [%struct.tw_instr { i8 4, i8 1, i16 32 }, %struct.tw_instr { i8 3, i8 1, i16 0 }], align 2
@fftw_rdft_hc2cb_genus = external constant %struct.hc2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_hc2cb_32(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_khc2c_register(ptr noundef %0, ptr noundef nonnull @hc2cb_32, ptr noundef nonnull @desc, i32 noundef 0) #4
  ret void
}

declare void @fftw_khc2c_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @hc2cb_32(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp slt i64 %6, %7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul i64 %6, 496
  %i.b = getelementptr i8, ptr %4, i64 %.idx
  %i.c = getelementptr i8, ptr %i.b, i64 -496
  %i.d = sub i64 0, %8                            ; 2 uses
  %i.e = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01329 = phi ptr [ %0, %.lr.ph ], [ %i.ajr, %bb.b ] ; 18 uses
  %.013171328 = phi ptr [ %1, %.lr.ph ], [ %i.ajs, %bb.b ] ; 18 uses
  %.013181327 = phi ptr [ %2, %.lr.ph ], [ %i.ajt, %bb.b ] ; 18 uses
  %.013191326 = phi ptr [ %3, %.lr.ph ], [ %i.aju, %bb.b ] ; 18 uses
  %.013201325 = phi ptr [ %i.c, %.lr.ph ], [ %i.ajv, %bb.b ] ; 32 uses
  %.013211324 = phi ptr [ %5, %.lr.ph ], [ %i.ajw, %bb.b ] ; 16 uses
  %.013221323 = phi i64 [ %6, %.lr.ph ], [ %i.ajq, %bb.b ]
  %i.f = load double, ptr %.01329, align 8, !tbaa !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.013211324, i64 120
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11   ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.h ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !13 ; 2 uses
  %i.k = load double, ptr %.013171328, align 8, !tbaa !13 ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.h ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.013211324, i64 64
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 4 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.o ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !13 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013211324, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11   ; 4 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.s ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !13 ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.o ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !13 ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.s ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !13 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.013211324, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11  ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.aa ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013211324, i64 88
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !11 ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.ae ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !13 ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.aa ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !13 ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.ae ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !13 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013211324, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !11 ; 4 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.am ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !13 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.013211324, i64 96
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11 ; 4 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.aq ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !13 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.aq ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !13 ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.am ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !13 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.013211324, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11 ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.ay ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !13 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.013211324, i64 104
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11 ; 4 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.bc ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !13 ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.ay ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !13 ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.bc ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !13 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.013211324, i64 80
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !11 ; 4 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.bk ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !13 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.013211324, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !11 ; 4 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.bo ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !13 ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.bk ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !13 ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.bo ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !13 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.013211324, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !11 ; 4 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.bw ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !13 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.013211324, i64 112
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !11 ; 4 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.ca ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !13 ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.ca ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !13 ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.bw ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !13 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.013211324, i64 48
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !11 ; 4 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.ci ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !13 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.013211324, i64 72
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !11 ; 4 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.cm ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !13 ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.ci ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !13 ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.cm ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !13 ; 2 uses
  %i.ct = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.bm, i64 1
  %i.cv = insertelement <2 x double> poison, double %i.be, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.bq, i64 1
  %i.cx = fsub <2 x double> %i.cu, %i.cw          ; 4 uses
  %i.cy = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.bg, i64 1
  %i.da = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.bi, i64 1
  %i.dc = fadd <2 x double> %i.cz, %i.db          ; 4 uses
  %i.dd = fadd <2 x double> %i.dc, %i.cx          ; 2 uses
  %i.de = fsub <2 x double> %i.dc, %i.cx          ; 2 uses
  %i.df = shufflevector <2 x double> %i.dd, <2 x double> %i.de, <2 x i32> <i32 0, i32 3>
  %i.dg = shufflevector <2 x double> %i.de, <2 x double> %i.dd, <2 x i32> <i32 1, i32 2>
  %i.dh = fmul <2 x double> %i.dg, <double f0xBFED906BCF328D46, double f0x3FED906BCF328D46>
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> splat (double f0x3FD87DE2A6AEA963), <2 x double> %i.dh) ; 4 uses
  %i.dj = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.by, i64 1
  %i.dl = insertelement <2 x double> poison, double %i.co, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.cc, i64 1
  %i.dn = fsub <2 x double> %i.dk, %i.dm          ; 2 uses
  %i.do = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.cq, i64 1
  %i.dq = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.cs, i64 1
  %i.ds = fadd <2 x double> %i.dp, %i.dr          ; 2 uses
  %i.dt = fadd <2 x double> %i.dn, %i.ds          ; 2 uses
  %i.du = fmul <2 x double> %i.dt, <double f0xBFED906BCF328D46, double f0x3FED906BCF328D46>
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> splat (double f0x3FD87DE2A6AEA963), <2 x double> %i.dv) ; 3 uses
  %i.dx = fsub <2 x double> %i.dn, %i.ds          ; 2 uses
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = fmul <2 x double> %i.dy, <double f0xBFD87DE2A6AEA963, double f0x3FED906BCF328D46>
  %i.ea = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA963>, <2 x double> %i.dz) ; 3 uses
  %i.ec = fadd <2 x double> %i.cx, %i.dc          ; 2 uses
  %i.ed = fsub <2 x double> %i.cx, %i.dc          ; 2 uses
  %i.ee = shufflevector <2 x double> %i.ec, <2 x double> %i.ed, <2 x i32> <i32 1, i32 2>
  %i.ef = shufflevector <2 x double> %i.ed, <2 x double> %i.ec, <2 x i32> <i32 0, i32 3>
  %i.eg = fmul <2 x double> %i.ef, <double f0x3FD87DE2A6AEA963, double f0xBFD87DE2A6AEA963>
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> splat (double f0x3FED906BCF328D46), <2 x double> %i.eg) ; 3 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.bw ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !13 ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.ca ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !13 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.bw ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !13 ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.ca ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !13 ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.cm ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !13 ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.ci ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !13 ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.cm ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !13 ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.ci ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !13 ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.ay ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !13 ; 2 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.bc ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !13 ; 2 uses
  %i.fc = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.bc ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !13 ; 2 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.ay ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !13 ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.bo ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !13 ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.bk ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !13 ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.bo ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !13 ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.bk ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !13 ; 2 uses
  %i.fo = load double, ptr %.013181327, align 8, !tbaa !13 ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.h ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !13 ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.h ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !13 ; 2 uses
  %i.ft = load double, ptr %.013191326, align 8, !tbaa !13 ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.s ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !13 ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.o ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !13 ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.s ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !13 ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.o ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !13 ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.aa ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !13 ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.ae ; 2 uses
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !13 ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.ae ; 2 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !13 ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.aa ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !13 ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %.01329, i64 %i.am ; 2 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !13 ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.aq ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !13 ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %i.am ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !13 ; 2 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.aq ; 2 uses
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !13 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.013201325, i64 240
  %i.gt = getelementptr inbounds nuw i8, ptr %.013201325, i64 368
  %i.gu = getelementptr inbounds nuw i8, ptr %.013201325, i64 112
end_hunk_0
begin_hunk_1_@hc2cb_32:bb.a
  %i.ra = insertelement <2 x double> %i.qz, double %i.qq, i64 1
  %i.rb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qy, <2 x double> %i.ra, <2 x double> %i.qx) ; 2 uses
  %i.rc = extractelement <2 x double> %i.rb, i64 0
  store double %i.rc, ptr %i.cb, align 8, !tbaa !13
  %i.rd = extractelement <2 x double> %i.rb, i64 1
  store double %i.rd, ptr %i.ek, align 8, !tbaa !13
  %i.re = fsub double %i.nj, %i.kb                ; 2 uses
  %i.rf = fneg double %i.re
  %i.rg = load <2 x double>, ptr %i.kc, align 8, !tbaa !13 ; 2 uses
  %i.rh = insertelement <2 x double> poison, double %i.re, i64 0
  %i.ri = insertelement <2 x double> %i.rh, double %i.rf, i64 1
  %i.rj = fmul <2 x double> %i.rg, %i.ri
  %i.rk = shufflevector <2 x double> %i.rj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rl = fadd double %i.nj, %i.kb                ; 2 uses
  %i.rm = fneg double %i.rl
  %i.rn = insertelement <2 x double> poison, double %i.rl, i64 0
  %i.ro = insertelement <2 x double> %i.rn, double %i.rm, i64 1
  %i.rp = fadd <2 x double> %i.nk, %i.lj          ; 3 uses
  %i.rq = fneg <2 x double> %i.rp
  %i.rr = shufflevector <2 x double> %i.rq, <2 x double> %i.rp, <2 x i32> <i32 1, i32 2>
  %i.rs = fsub <2 x double> %i.nk, %i.lj          ; 3 uses
  %i.rt = fneg <2 x double> %i.rs
  %i.ru = shufflevector <2 x double> %i.rt, <2 x double> %i.rs, <2 x i32> <i32 1, i32 2>
  %i.rv = fsub double %i.mu, %i.ms
  %i.rw = fsub double %i.mv, %i.mt
  %i.rx = insertelement <2 x double> poison, double %i.rw, i64 0
  %i.ry = insertelement <2 x double> %i.rx, double %i.rv, i64 1
  %i.rz = fmul <2 x double> %i.ry, splat (double f0x3FE6A09E667F3BCD) ; 3 uses
  %foldExtExtBinop1352 = fsub <2 x double> %i.lx, %i.rz
  %i.sa = extractelement <2 x double> %foldExtExtBinop1352, i64 1 ; 2 uses
  %i.sb = fadd <2 x double> %i.lx, %i.rz          ; 2 uses
  %i.sc = shufflevector <2 x double> %i.jw, <2 x double> %i.ln, <2 x i32> <i32 0, i32 2>
  %i.sd = shufflevector <2 x double> %i.jw, <2 x double> %i.ln, <2 x i32> <i32 1, i32 3>
  %i.se = fsub <2 x double> %i.sc, %i.sd          ; 3 uses
  %i.sf = shufflevector <2 x double> %i.le, <2 x double> %i.lx, <2 x i32> <i32 0, i32 2>
  %i.sg = shufflevector <2 x double> %i.ni, <2 x double> %i.rz, <2 x i32> <i32 0, i32 2>
  %i.sh = fsub <2 x double> %i.sf, %i.sg          ; 3 uses
  %i.si = fsub <2 x double> %i.sh, %i.se          ; 2 uses
  %i.sj = shufflevector <2 x double> %i.si, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rg, <2 x double> %i.sj, <2 x double> %i.rk) ; 2 uses
  %i.sl = extractelement <2 x double> %i.sk, i64 0
  store double %i.sl, ptr %i.fa, align 8, !tbaa !13
  %i.sm = extractelement <2 x double> %i.sk, i64 1
  store double %i.sm, ptr %i.bd, align 8, !tbaa !13
  %i.sn = load <2 x double>, ptr %i.kd, align 8, !tbaa !13 ; 2 uses
  %i.so = shufflevector <2 x double> %i.sn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sp = shufflevector <2 x double> %i.sn, <2 x double> poison, <2 x i32> zeroinitializer
  %foldExtExtBinop1354 = fadd <2 x double> %i.sh, %i.se
  %i.sq = shufflevector <2 x double> %foldExtExtBinop1354, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sr = fmul <2 x double> %i.so, %i.rr
  %i.ss = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sp, <2 x double> %i.rp, <2 x double> %i.sr) ; 2 uses
  %i.st = extractelement <2 x double> %i.ss, i64 0
  store double %i.st, ptr %i.ei, align 8, !tbaa !13
  %i.su = extractelement <2 x double> %i.ss, i64 1
  store double %i.su, ptr %i.bx, align 8, !tbaa !13
  %i.sv = load <2 x double>, ptr %i.lf, align 8, !tbaa !13 ; 2 uses
  %i.sw = fmul <2 x double> %i.sv, %i.ro
  %i.sx = shufflevector <2 x double> %i.sw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.sy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sv, <2 x double> %i.sq, <2 x double> %i.sx) ; 2 uses
  %i.sz = extractelement <2 x double> %i.sy, i64 0
  store double %i.sz, ptr %i.fg, align 8, !tbaa !13
  %i.ta = extractelement <2 x double> %i.sy, i64 1
  store double %i.ta, ptr %i.bp, align 8, !tbaa !13
  %i.tb = load <2 x double>, ptr %i.lg, align 8, !tbaa !13 ; 2 uses
  %i.tc = shufflevector <2 x double> %i.tb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.td = fmul <2 x double> %i.tc, %i.ru
  %i.te = shufflevector <2 x double> %i.tb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.te, <2 x double> %i.rs, <2 x double> %i.td) ; 2 uses
  %i.tg = extractelement <2 x double> %i.tf, i64 0
  store double %i.tg, ptr %i.eq, align 8, !tbaa !13
  %i.th = extractelement <2 x double> %i.tf, i64 1
  store double %i.th, ptr %i.cn, align 8, !tbaa !13
  %i.ti = fsub double %i.sa, %i.ls                ; 2 uses
  %i.tj = fneg double %i.ti
  %i.tk = load <2 x double>, ptr %i.lt, align 8, !tbaa !13 ; 2 uses
  %i.tl = insertelement <2 x double> poison, double %i.ti, i64 0
  %i.tm = insertelement <2 x double> %i.tl, double %i.tj, i64 1
  %i.tn = fmul <2 x double> %i.tk, %i.tm
  %i.to = shufflevector <2 x double> %i.tn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.tp = shufflevector <2 x double> %i.si, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.tq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tk, <2 x double> %i.tp, <2 x double> %i.to) ; 2 uses
  %i.tr = extractelement <2 x double> %i.tq, i64 0
  store double %i.tr, ptr %i.fp, align 8, !tbaa !13
  %i.ts = extractelement <2 x double> %i.tq, i64 1
  store double %i.ts, ptr %i.i, align 8, !tbaa !13
  %i.tt = load <2 x double>, ptr %i.lu, align 8, !tbaa !13 ; 2 uses
  %i.tu = shufflevector <2 x double> %i.tt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.tv = shufflevector <2 x double> %i.tt, <2 x double> poison, <2 x i32> zeroinitializer
  %foldExtExtBinop1356 = fadd <2 x double> %i.sh, %i.se
  %i.tw = fadd double %i.sa, %i.ls                ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.013201325, i64 208
  %i.ty = fneg double %i.tw
  %i.tz = insertelement <2 x double> poison, double %i.tw, i64 0
  %i.ua = insertelement <2 x double> %i.tz, double %i.ty, i64 1
  %i.ub = shufflevector <2 x double> %foldExtExtBinop1356, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.uc = getelementptr inbounds nuw i8, ptr %.013201325, i64 336
  %i.ud = shufflevector <2 x double> %i.lr, <2 x double> %i.ln, <2 x i32> <i32 0, i32 3>
  %i.ue = shufflevector <2 x double> %i.lr, <2 x double> %i.ln, <2 x i32> <i32 1, i32 2>
  %i.uf = fadd <2 x double> %i.ud, %i.ue          ; 2 uses
  %i.ug = fadd <2 x double> %i.sb, %i.uf          ; 3 uses
  %i.uh = fneg <2 x double> %i.ug
  %i.ui = shufflevector <2 x double> %i.uh, <2 x double> %i.ug, <2 x i32> <i32 1, i32 2>
  %i.uj = fmul <2 x double> %i.tu, %i.ui
  %i.uk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tv, <2 x double> %i.ug, <2 x double> %i.uj) ; 2 uses
  %i.ul = extractelement <2 x double> %i.uk, i64 0
  store double %i.ul, ptr %i.gk, align 8, !tbaa !13
  %i.um = extractelement <2 x double> %i.uk, i64 1
  store double %i.um, ptr %i.an, align 8, !tbaa !13
  %i.un = load <2 x double>, ptr %i.tx, align 8, !tbaa !13 ; 2 uses
  %i.uo = fmul <2 x double> %i.un, %i.ua
  %i.up = shufflevector <2 x double> %i.uo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.uq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.un, <2 x double> %i.ub, <2 x double> %i.up) ; 2 uses
  %i.ur = extractelement <2 x double> %i.uq, i64 0
  store double %i.ur, ptr %i.fu, align 8, !tbaa !13
  %i.us = extractelement <2 x double> %i.uq, i64 1
  store double %i.us, ptr %i.t, align 8, !tbaa !13
  %i.ut = fsub <2 x double> %i.sb, %i.uf          ; 3 uses
  %i.uu = load <2 x double>, ptr %i.uc, align 8, !tbaa !13 ; 2 uses
  %i.uv = shufflevector <2 x double> %i.uu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.uw = fneg <2 x double> %i.ut
  %i.ux = shufflevector <2 x double> %i.uw, <2 x double> %i.ut, <2 x i32> <i32 1, i32 2>
  %i.uy = fmul <2 x double> %i.uv, %i.ux
  %i.uz = shufflevector <2 x double> %i.uu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.va = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uz, <2 x double> %i.ut, <2 x double> %i.uy) ; 2 uses
  %i.vb = extractelement <2 x double> %i.va, i64 0
  store double %i.vb, ptr %i.ge, align 8, !tbaa !13
  %i.vc = extractelement <2 x double> %i.va, i64 1
  store double %i.vc, ptr %i.af, align 8, !tbaa !13
  %i.vd = insertelement <2 x double> poison, double %i.er, i64 0
  %i.ve = insertelement <2 x double> %i.vd, double %i.fo, i64 1
  %i.vf = insertelement <2 x double> poison, double %i.et, i64 0
  %i.vg = insertelement <2 x double> %i.vf, double %i.fq, i64 1
  %i.vh = fsub <2 x double> %i.ve, %i.vg          ; 4 uses
  %i.vi = insertelement <2 x double> poison, double %i.en, i64 0
  %i.vj = insertelement <2 x double> %i.vi, double %i.fz, i64 1
  %i.vk = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.vl = insertelement <2 x double> %i.vk, double %i.gb, i64 1
  %i.vm = fadd <2 x double> %i.vj, %i.vl          ; 4 uses
  %i.vn = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.vo = insertelement <2 x double> %i.vn, double %i.gd, i64 1
  %i.vp = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.vq = insertelement <2 x double> %i.vp, double %i.gf, i64 1
  %i.vr = fsub <2 x double> %i.vo, %i.vq          ; 2 uses
  %i.vs = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.vt = insertelement <2 x double> %i.vs, double %i.gh, i64 1
  %i.vu = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.vv = insertelement <2 x double> %i.vu, double %i.gj, i64 1
  %i.vw = fadd <2 x double> %i.vt, %i.vv          ; 2 uses
  %i.vx = fsub <2 x double> %i.vr, %i.vw          ; 4 uses
  %i.vy = fadd <2 x double> %i.vr, %i.vw          ; 3 uses
  %i.vz = shufflevector <2 x double> %i.vx, <2 x double> %i.vy, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.wa = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.wb = insertelement <2 x double> %i.wa, double %i.gl, i64 1
  %i.wc = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.wd = insertelement <2 x double> %i.wc, double %i.gn, i64 1
  %i.we = fsub <2 x double> %i.wb, %i.wd          ; 2 uses
  %i.wf = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.wg = insertelement <2 x double> %i.wf, double %i.gp, i64 1
  %i.wh = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.wi = insertelement <2 x double> %i.wh, double %i.gr, i64 1
  %i.wj = fadd <2 x double> %i.wg, %i.wi          ; 2 uses
  %i.wk = fsub <2 x double> %i.we, %i.wj          ; 4 uses
  %i.wl = fadd <2 x double> %i.we, %i.wj          ; 3 uses
  %i.wm = shufflevector <2 x double> %i.wk, <2 x double> %i.wl, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.wn = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.wo = insertelement <2 x double> %i.wn, double %i.fs, i64 1
  %i.wp = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.wq = insertelement <2 x double> %i.wp, double %i.ft, i64 1
  %i.wr = fadd <2 x double> %i.wo, %i.wq          ; 3 uses
  %i.ws = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.wt = insertelement <2 x double> %i.ws, double %i.fv, i64 1
  %i.wu = insertelement <2 x double> poison, double %i.el, i64 0
  %i.wv = insertelement <2 x double> %i.wu, double %i.fx, i64 1
  %i.ww = fsub <2 x double> %i.wt, %i.wv          ; 3 uses
  %i.wx = shufflevector <2 x double> %i.vy, <2 x double> %i.vx, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.wy = shufflevector <2 x double> %i.wl, <2 x double> %i.wk, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.wz = fsub <2 x double> %i.ww, %i.wr          ; 2 uses
  %i.xa = fadd <2 x double> %i.wm, %i.vz
  %i.xb = fsub <2 x double> %i.wm, %i.vz
  %i.xc = shufflevector <2 x double> %i.xa, <2 x double> %i.xb, <2 x i32> <i32 0, i32 3>
  %i.xd = fmul <2 x double> %i.xc, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.xe = fadd <2 x double> %i.vh, %i.vm
  %i.xf = fsub <2 x double> %i.vh, %i.vm
  %i.xg = shufflevector <2 x double> %i.xe, <2 x double> %i.xf, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xh = fsub <2 x double> %i.wx, %i.wy
  %i.xi = fadd <2 x double> %i.wx, %i.wy
  %i.xj = shufflevector <2 x double> %i.xh, <2 x double> %i.xi, <2 x i32> <i32 0, i32 3>
  %i.xk = fmul <2 x double> %i.xj, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.xl = fadd <2 x double> %i.xg, %i.xk          ; 3 uses
  %i.xm = fadd <2 x double> %i.wz, %i.xd          ; 3 uses
  %i.xn = fmul <2 x double> %i.xl, <double f0x3FEF6297CFF75CB0, double f0xBFC8F8B83C69A60B>
  %i.xo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xm, <2 x double> <double f0x3FC8F8B83C69A60B, double f0x3FEF6297CFF75CB0>, <2 x double> %i.xn) ; 4 uses
  %shift1358 = shufflevector <2 x double> %i.xo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1359 = fadd <2 x double> %i.xo, %shift1358 ; 2 uses
  %i.xp = shufflevector <2 x double> %i.xl, <2 x double> %i.xm, <2 x i32> <i32 0, i32 3>
  %i.xq = fmul <2 x double> %i.xp, <double f0xBFC8F8B83C69A60B, double f0x3FC8F8B83C69A60B>
  %i.xr = shufflevector <2 x double> %i.xm, <2 x double> %i.xl, <2 x i32> <i32 0, i32 3>
  %i.xs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> splat (double f0x3FEF6297CFF75CB0), <2 x double> %i.xq) ; 4 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.013201325, i64 256
  %i.xu = load <2 x double>, ptr %i.xt, align 8, !tbaa !13 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.013201325, i64 128
  %i.xw = insertelement <2 x double> poison, double %i.q, i64 0
  %i.xx = insertelement <2 x double> %i.xw, double %i.f, i64 1
  %i.xy = insertelement <2 x double> poison, double %i.u, i64 0
  %i.xz = insertelement <2 x double> %i.xy, double %i.j, i64 1
  %i.ya = fsub <2 x double> %i.xx, %i.xz          ; 4 uses
  %i.yb = insertelement <2 x double> poison, double %i.k, i64 0
  %i.yc = insertelement <2 x double> %i.yb, double %i.w, i64 1
  %i.yd = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ye = insertelement <2 x double> %i.yd, double %i.y, i64 1
  %i.yf = fadd <2 x double> %i.yc, %i.ye          ; 4 uses
  %i.yg = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.yh = insertelement <2 x double> %i.yg, double %i.ao, i64 1
  %i.yi = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.yj = insertelement <2 x double> %i.yi, double %i.as, i64 1
  %i.yk = fsub <2 x double> %i.yh, %i.yj          ; 2 uses
  %i.yl = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ym = insertelement <2 x double> %i.yl, double %i.au, i64 1
  %i.yn = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.yo = insertelement <2 x double> %i.yn, double %i.aw, i64 1
  %i.yp = fadd <2 x double> %i.ym, %i.yo          ; 2 uses
  %i.yq = fsub <2 x double> %i.ya, %i.yf
  %i.yr = fadd <2 x double> %i.ya, %i.yf
  %i.ys = shufflevector <2 x double> %i.yr, <2 x double> %i.yq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yt = fsub <2 x double> %i.yk, %i.yp          ; 2 uses
  %i.yu = fadd <2 x double> %i.yk, %i.yp          ; 2 uses
  %i.yv = shufflevector <2 x double> %i.yt, <2 x double> %i.yu, <2 x i32> <i32 3, i32 0> ; 4 uses
  %i.yw = shufflevector <2 x double> %i.yu, <2 x double> %i.yt, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.yx = fadd <2 x double> %i.yw, %i.yv
  %i.yy = fsub <2 x double> %i.yw, %i.yv
  %i.yz = shufflevector <2 x double> %i.yy, <2 x double> %i.yx, <2 x i32> <i32 0, i32 3>
  %i.za = fmul <2 x double> %i.yz, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.zb = fadd <2 x double> %i.ys, %i.za          ; 3 uses
  %i.zc = fadd <2 x double> %i.eh, %i.eb          ; 3 uses
  %i.zd = shufflevector <2 x double> %i.xs, <2 x double> %i.xo, <2 x i32> <i32 0, i32 3>
  %i.ze = shufflevector <2 x double> %i.xs, <2 x double> %i.xo, <2 x i32> <i32 1, i32 2>
  %i.zf = fsub <2 x double> %i.zd, %i.ze          ; 2 uses
  %foldExtExtBinop1361 = fadd <2 x double> %i.zb, %i.zc ; 2 uses
  %i.zg = fsub <2 x double> %i.zb, %i.zc          ; 2 uses
  %foldExtExtBinop1363 = fsub <2 x double> %foldExtExtBinop1361, %foldExtExtBinop1359 ; 2 uses
  %i.zh = fneg <2 x double> %foldExtExtBinop1363
  %i.zi = shufflevector <2 x double> %i.xu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.zj = shufflevector <2 x double> %i.zh, <2 x double> %foldExtExtBinop1363, <2 x i32> <i32 0, i32 2>
  %i.zk = fmul <2 x double> %i.zi, %i.zj
  %i.zl = fadd <2 x double> %i.zg, %i.zf          ; 3 uses
  %i.zm = fneg <2 x double> %i.zl
  %i.zn = shufflevector <2 x double> %i.zl, <2 x double> %i.zm, <2 x i32> <i32 1, i32 2>
  %foldExtExtBinop1365 = fadd <2 x double> %foldExtExtBinop1361, %foldExtExtBinop1359 ; 2 uses
  %i.zo = fneg <2 x double> %foldExtExtBinop1365
  %i.zp = getelementptr inbounds nuw i8, ptr %.013201325, i64 384
  %i.zq = fsub <2 x double> %i.zg, %i.zf          ; 3 uses
  %i.zr = fneg <2 x double> %i.zq
  %i.zs = shufflevector <2 x double> %i.zq, <2 x double> %i.zr, <2 x i32> <i32 1, i32 2>
  %i.zt = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.zu = shufflevector <2 x double> %i.vx, <2 x double> %i.wk, <2 x i32> <i32 0, i32 3>
  %i.zv = shufflevector <2 x double> %i.wk, <2 x double> %i.vx, <2 x i32> <i32 0, i32 3>
  %i.zw = fsub <2 x double> %i.zu, %i.zv
  %i.zx = fmul <2 x double> %i.zw, splat (double f0x3FE6A09E667F3BCD) ; 4 uses
  %i.zy = shufflevector <2 x double> %i.vm, <2 x double> %i.wr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.zz = shufflevector <2 x double> %i.vh, <2 x double> %i.ww, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.aaa = fsub <2 x double> %i.zy, %i.zz         ; 2 uses
  %i.aab = fadd <2 x double> %i.zy, %i.zz         ; 2 uses
  %i.aac = shufflevector <2 x double> %i.aaa, <2 x double> %i.aab, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.aad = shufflevector <2 x double> %i.ww, <2 x double> %i.vh, <2 x i32> <i32 0, i32 3>
  %i.aae = shufflevector <2 x double> %i.wr, <2 x double> %i.vm, <2 x i32> <i32 0, i32 3>
  %i.aaf = fadd <2 x double> %i.aad, %i.aae       ; 3 uses
  %i.aag = fadd <2 x double> %i.wl, %i.vy
  %i.aah = fmul <2 x double> %i.aag, splat (double f0x3FE6A09E667F3BCD) ; 3 uses
  %i.aai = fsub <2 x double> %i.aac, %i.zx
  %i.aaj = fadd <2 x double> %i.aac, %i.zx
  %i.aak = shufflevector <2 x double> %i.aai, <2 x double> %i.aaj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.aal = fadd <2 x double> %i.aaf, %i.aah       ; 2 uses
  %i.aam = fmul <2 x double> %i.aal, splat (double f0x3FEF6297CFF75CB0)
  %i.aan = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aak, <2 x double> splat (double f0x3FC8F8B83C69A60B), <2 x double> %i.aam) ; 2 uses
  %i.aao = extractelement <2 x double> %i.aan, i64 0 ; 2 uses
  %i.aap = extractelement <2 x double> %i.aan, i64 1 ; 2 uses
  %i.aaq = fsub double %i.aao, %i.aap             ; 2 uses
  %i.aar = fmul <2 x double> %i.aak, splat (double f0xBFEF6297CFF75CB0)
  %i.aas = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aal, <2 x double> splat (double f0x3FC8F8B83C69A60B), <2 x double> %i.aar) ; 2 uses
  %i.aat = extractelement <2 x double> %i.aas, i64 0 ; 2 uses
  %i.aau = extractelement <2 x double> %i.aas, i64 1 ; 2 uses
  %i.aav = fadd double %i.aat, %i.aau             ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.013201325, i64 352
  %i.aax = getelementptr inbounds nuw i8, ptr %.013201325, i64 480
  %i.aay = getelementptr inbounds nuw i8, ptr %.013201325, i64 96
  %i.aaz = getelementptr inbounds nuw i8, ptr %.013201325, i64 224
  %shift1367 = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1368 = fsub <2 x double> %i.di, %shift1367
  %i.aba = extractelement <2 x double> %foldExtExtBinop1368, i64 0 ; 2 uses
  %shift1370 = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1371 = fadd <2 x double> %shift1370, %i.dw ; 2 uses
  %i.abb = fsub double %i.aat, %i.aau             ; 2 uses
  %i.abc = fadd double %i.aao, %i.aap             ; 2 uses
  %i.abd = fsub <2 x double> %i.xg, %i.xk         ; 3 uses
  %i.abe = fsub <2 x double> %i.wz, %i.xd         ; 3 uses
  %i.abf = fmul <2 x double> %i.abd, <double f0x3FE1C73B39AE68C8, double f0xBFEA9B66290EA1A3>
  %i.abg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abe, <2 x double> <double f0x3FEA9B66290EA1A3, double f0x3FE1C73B39AE68C8>, <2 x double> %i.abf) ; 4 uses
  %shift1373 = shufflevector <2 x double> %i.abg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1374 = fadd <2 x double> %i.abg, %shift1373 ; 2 uses
  %i.abh = shufflevector <2 x double> %i.abd, <2 x double> %i.abe, <2 x i32> <i32 0, i32 3>
  %i.abi = fmul <2 x double> %i.abh, <double f0xBFEA9B66290EA1A3, double f0x3FEA9B66290EA1A3>
  %i.abj = shufflevector <2 x double> %i.abe, <2 x double> %i.abd, <2 x i32> <i32 0, i32 3>
  %i.abk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abj, <2 x double> splat (double f0x3FE1C73B39AE68C8), <2 x double> %i.abi) ; 4 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %.013201325, i64 320
  %i.abm = getelementptr inbounds nuw i8, ptr %.013201325, i64 192
  %i.abn = fsub <2 x double> %i.ys, %i.za         ; 3 uses
  %i.abo = shufflevector <2 x double> %i.eh, <2 x double> %i.eb, <2 x i32> <i32 1, i32 2>
  %i.abp = shufflevector <2 x double> %i.eb, <2 x double> %i.eh, <2 x i32> <i32 1, i32 2>
  %i.abq = fsub <2 x double> %i.abo, %i.abp       ; 3 uses
  %i.abr = shufflevector <2 x double> %i.abk, <2 x double> %i.abg, <2 x i32> <i32 0, i32 3>
  %i.abs = shufflevector <2 x double> %i.abk, <2 x double> %i.abg, <2 x i32> <i32 1, i32 2>
  %i.abt = fsub <2 x double> %i.abr, %i.abs       ; 2 uses
  %foldExtExtBinop1376 = fadd <2 x double> %i.abn, %i.abq ; 2 uses
  %i.abu = fsub <2 x double> %i.abn, %i.abq       ; 2 uses
  %i.abv = shufflevector <2 x double> %i.xs, <2 x double> %i.abk, <2 x i32> <i32 0, i32 2>
  %i.abw = shufflevector <2 x double> %i.xs, <2 x double> %i.abk, <2 x i32> <i32 1, i32 3>
  %i.abx = fadd <2 x double> %i.abv, %i.abw       ; 3 uses
  %i.aby = shufflevector <2 x double> %i.zb, <2 x double> %i.abn, <2 x i32> <i32 1, i32 3>
  %i.abz = shufflevector <2 x double> %i.zc, <2 x double> %i.abq, <2 x i32> <i32 1, i32 3>
  %i.aca = fadd <2 x double> %i.aby, %i.abz       ; 3 uses
  %i.acb = fsub <2 x double> %i.aca, %i.abx       ; 2 uses
  %i.acc = shufflevector <2 x double> %i.acb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xu, <2 x double> %i.acc, <2 x double> %i.zk) ; 2 uses
  %i.ace = extractelement <2 x double> %i.acd, i64 0
  store double %i.ace, ptr %i.v, align 8, !tbaa !13
  %i.acf = extractelement <2 x double> %i.acd, i64 1
  store double %i.acf, ptr %i.ga, align 8, !tbaa !13
  %9 = load <2 x double>, ptr %i.xv, align 8, !tbaa !13 ; 2 uses
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.acg = fmul <2 x double> %10, %i.zn
  %i.ach = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ach, <2 x double> %i.zl, <2 x double> %i.acg) ; 2 uses
  %i.acj = extractelement <2 x double> %i.aci, i64 1
  store double %i.acj, ptr %i.ah, align 8, !tbaa !13
  %i.ack = extractelement <2 x double> %i.aci, i64 0
  store double %i.ack, ptr %i.gi, align 8, !tbaa !13
  %foldExtExtBinop1378 = fadd <2 x double> %i.aca, %i.abx
  %i.acl = load <2 x double>, ptr %.013201325, align 8, !tbaa !13 ; 2 uses
  %i.acm = shufflevector <2 x double> %i.acl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.acn = shufflevector <2 x double> %i.zo, <2 x double> %foldExtExtBinop1365, <2 x i32> <i32 0, i32 2>
  %i.aco = fmul <2 x double> %i.acm, %i.acn
  %i.acp = shufflevector <2 x double> %foldExtExtBinop1378, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acl, <2 x double> %i.acp, <2 x double> %i.aco) ; 2 uses
  %i.acr = extractelement <2 x double> %i.acq, i64 0
  store double %i.acr, ptr %.013171328, align 8, !tbaa !13
  %i.acs = extractelement <2 x double> %i.acq, i64 1
  store double %i.acs, ptr %.013191326, align 8, !tbaa !13
  %11 = load <2 x double>, ptr %i.zp, align 8, !tbaa !13 ; 2 uses
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.act = fmul <2 x double> %12, %i.zs
  %i.acu = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acu, <2 x double> %i.zq, <2 x double> %i.act) ; 2 uses
  %i.acw = extractelement <2 x double> %i.acv, i64 1
  store double %i.acw, ptr %i.at, align 8, !tbaa !13
  %i.acx = extractelement <2 x double> %i.acv, i64 0
  store double %i.acx, ptr %i.gq, align 8, !tbaa !13
  %i.acy = load <2 x double>, ptr %i.aaw, align 8, !tbaa !13 ; 2 uses
  %foldExtExtBinop1380 = fsub <2 x double> %foldExtExtBinop1376, %foldExtExtBinop1374 ; 2 uses
  %i.acz = fneg <2 x double> %foldExtExtBinop1380
  %i.ada = shufflevector <2 x double> %i.acb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.adb = fadd <2 x double> %i.abu, %i.abt       ; 3 uses
  %i.adc = fneg <2 x double> %i.adb
  %i.add = shufflevector <2 x double> %i.adb, <2 x double> %i.adc, <2 x i32> <i32 1, i32 2>
  %foldExtExtBinop1382 = fadd <2 x double> %i.aca, %i.abx
  %foldExtExtBinop1384 = fadd <2 x double> %foldExtExtBinop1376, %foldExtExtBinop1374 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.013201325, i64 64
  %i.adf = fneg <2 x double> %foldExtExtBinop1384
  %i.adg = shufflevector <2 x double> %foldExtExtBinop1382, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.adh = getelementptr inbounds nuw i8, ptr %.013201325, i64 448
  %i.adi = fsub <2 x double> %i.abu, %i.abt       ; 3 uses
  %i.adj = fneg <2 x double> %i.adi
  %i.adk = shufflevector <2 x double> %i.adi, <2 x double> %i.adj, <2 x i32> <i32 1, i32 2>
  %i.adl = shufflevector <2 x double> %i.aaf, <2 x double> %i.zx, <2 x i32> <i32 0, i32 3>
  %i.adm = shufflevector <2 x double> %i.aah, <2 x double> %i.aab, <2 x i32> <i32 0, i32 3>
  %i.adn = fsub <2 x double> %i.adl, %i.adm       ; 3 uses
  %i.ado = shufflevector <2 x double> %i.aaa, <2 x double> %i.aaf, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.adp = shufflevector <2 x double> %i.zx, <2 x double> %i.aah, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.adq = fadd <2 x double> %i.ado, %i.adp       ; 2 uses
  %i.adr = fsub <2 x double> %i.ado, %i.adp       ; 2 uses
  %i.ads = shufflevector <2 x double> %i.adq, <2 x double> %i.adr, <2 x i32> <i32 0, i32 3>
  %i.adt = fmul <2 x double> %i.ads, <double f0xBFE1C73B39AE68C8, double f0x3FEA9B66290EA1A3>
  %i.adu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adn, <2 x double> <double f0x3FEA9B66290EA1A3, double f0x3FE1C73B39AE68C8>, <2 x double> %i.adt) ; 4 uses
  %shift1386 = shufflevector <2 x double> %i.adu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1387 = fsub <2 x double> %i.adu, %shift1386
  %i.adv = extractelement <2 x double> %foldExtExtBinop1387, i64 0 ; 2 uses
  %i.adw = shufflevector <2 x double> %i.adr, <2 x double> %i.adn, <2 x i32> <i32 1, i32 2>
  %i.adx = fmul <2 x double> %i.adw, <double f0xBFE1C73B39AE68C8, double f0x3FE1C73B39AE68C8>
  %i.ady = shufflevector <2 x double> %i.adn, <2 x double> %i.adq, <2 x i32> <i32 1, i32 2>
  %i.adz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ady, <2 x double> splat (double f0x3FEA9B66290EA1A3), <2 x double> %i.adx) ; 4 uses
  %shift1389 = shufflevector <2 x double> %i.adz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1390 = fsub <2 x double> %i.adz, %shift1389 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %.013201325, i64 416
  %i.aeb = getelementptr inbounds nuw i8, ptr %.013201325, i64 32
  %i.aec = fadd <2 x double> %i.yf, %i.ya
  %i.aed = fsub <2 x double> %i.yf, %i.ya
  %i.aee = shufflevector <2 x double> %i.aec, <2 x double> %i.aed, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.aef = fadd <2 x double> %i.yv, %i.yw
  %i.aeg = fsub <2 x double> %i.yv, %i.yw
  %i.aeh = shufflevector <2 x double> %i.aef, <2 x double> %i.aeg, <2 x i32> <i32 0, i32 3>
  %i.aei = fmul <2 x double> %i.aeh, splat (double f0x3FE6A09E667F3BCD) ; 4 uses
  %foldExtExtBinop1392 = fsub <2 x double> %i.aee, %i.aei
  %i.aej = extractelement <2 x double> %foldExtExtBinop1392, i64 1 ; 2 uses
  %foldExtExtBinop1394 = fadd <2 x double> %i.aee, %i.aei ; 2 uses
  %foldExtExtBinop1396 = fsub <2 x double> %foldExtExtBinop1394, %foldExtExtBinop1371
  %i.aek = extractelement <2 x double> %foldExtExtBinop1396, i64 0 ; 2 uses
  %i.ael = fadd double %i.aej, %i.aba             ; 2 uses
  %i.aem = fsub double %i.aej, %i.aba             ; 2 uses
  %foldExtExtBinop1398 = fadd <2 x double> %foldExtExtBinop1394, %foldExtExtBinop1371
  %i.aen = extractelement <2 x double> %foldExtExtBinop1398, i64 0 ; 2 uses
  %i.aeo = fsub double %i.aek, %i.aav
  %i.aep = fsub double %i.ael, %i.aaq             ; 2 uses
  %i.aeq = fneg double %i.aep
  %i.aer = insertelement <2 x double> poison, double %i.aep, i64 0
  %i.aes = insertelement <2 x double> %i.aer, double %i.aeq, i64 1
  %i.aet = fmul <2 x double> %i.acy, %i.aes
  %i.aeu = shufflevector <2 x double> %i.aet, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aev = insertelement <2 x double> poison, double %i.aeo, i64 0
  %i.aew = shufflevector <2 x double> %i.aev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acy, <2 x double> %i.aew, <2 x double> %i.aeu) ; 2 uses
  %i.aey = extractelement <2 x double> %i.aex, i64 0
  store double %i.aey, ptr %i.gg, align 8, !tbaa !13
  %i.aez = extractelement <2 x double> %i.aex, i64 1
  store double %i.aez, ptr %i.aj, align 8, !tbaa !13
  %i.afa = fsub double %i.aem, %i.abb             ; 2 uses
  %i.afb = fadd double %i.aen, %i.abc             ; 2 uses
  %i.afc = load <2 x double>, ptr %i.aax, align 8, !tbaa !13 ; 2 uses
  %i.afd = fneg double %i.afa
  %i.afe = shufflevector <2 x double> %i.afc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aff = insertelement <2 x double> poison, double %i.afd, i64 0
  %i.afg = insertelement <2 x double> %i.aff, double %i.afb, i64 1
  %i.afh = fmul <2 x double> %i.afe, %i.afg
  %i.afi = shufflevector <2 x double> %i.afc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afj = insertelement <2 x double> poison, double %i.afb, i64 0
  %i.afk = insertelement <2 x double> %i.afj, double %i.afa, i64 1
  %i.afl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afi, <2 x double> %i.afk, <2 x double> %i.afh) ; 2 uses
  %i.afm = extractelement <2 x double> %i.afl, i64 0
  store double %i.afm, ptr %i.fr, align 8, !tbaa !13
  %i.afn = extractelement <2 x double> %i.afl, i64 1
  store double %i.afn, ptr %i.l, align 8, !tbaa !13
  %i.afo = fadd double %i.aek, %i.aav
  %i.afp = fadd double %i.ael, %i.aaq             ; 2 uses
  %i.afq = fneg double %i.afp
  %i.afr = load <2 x double>, ptr %i.aay, align 8, !tbaa !13 ; 2 uses
  %i.afs = insertelement <2 x double> poison, double %i.afp, i64 0
  %i.aft = insertelement <2 x double> %i.afs, double %i.afq, i64 1
  %i.afu = fmul <2 x double> %i.afr, %i.aft
  %i.afv = shufflevector <2 x double> %i.afu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.afw = insertelement <2 x double> poison, double %i.afo, i64 0
  %i.afx = shufflevector <2 x double> %i.afw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afr, <2 x double> %i.afx, <2 x double> %i.afv) ; 2 uses
  %i.afz = extractelement <2 x double> %i.afy, i64 0
  store double %i.afz, ptr %i.go, align 8, !tbaa !13
  %i.aga = extractelement <2 x double> %i.afy, i64 1
  store double %i.aga, ptr %i.av, align 8, !tbaa !13
  %i.agb = fadd double %i.aem, %i.abb             ; 2 uses
  %i.agc = fsub double %i.aen, %i.abc             ; 2 uses
  %i.agd = load <2 x double>, ptr %i.aaz, align 8, !tbaa !13 ; 2 uses
  %i.age = fneg double %i.agb
  %i.agf = shufflevector <2 x double> %i.agd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.agg = insertelement <2 x double> poison, double %i.age, i64 0
  %i.agh = insertelement <2 x double> %i.agg, double %i.agc, i64 1
  %i.agi = fmul <2 x double> %i.agf, %i.agh
  %i.agj = shufflevector <2 x double> %i.agd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agk = insertelement <2 x double> poison, double %i.agc, i64 0
  %i.agl = insertelement <2 x double> %i.agk, double %i.agb, i64 1
  %i.agm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agj, <2 x double> %i.agl, <2 x double> %i.agi) ; 2 uses
  %i.agn = extractelement <2 x double> %i.agm, i64 0
  store double %i.agn, ptr %i.fy, align 8, !tbaa !13
  %i.ago = extractelement <2 x double> %i.agm, i64 1
  store double %i.ago, ptr %i.x, align 8, !tbaa !13
  %i.agp = load <2 x double>, ptr %i.abl, align 8, !tbaa !13 ; 2 uses
  %i.agq = shufflevector <2 x double> %i.agp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.agr = shufflevector <2 x double> %i.acz, <2 x double> %foldExtExtBinop1380, <2 x i32> <i32 0, i32 2>
  %i.ags = fmul <2 x double> %i.agq, %i.agr
  %i.agt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agp, <2 x double> %i.ada, <2 x double> %i.ags) ; 2 uses
  %i.agu = extractelement <2 x double> %i.agt, i64 0
  store double %i.agu, ptr %i.br, align 8, !tbaa !13
  %i.agv = extractelement <2 x double> %i.agt, i64 1
  store double %i.agv, ptr %i.fm, align 8, !tbaa !13
  %13 = load <2 x double>, ptr %i.abm, align 8, !tbaa !13 ; 2 uses
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.agw = fmul <2 x double> %14, %i.add
  %i.agx = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agx, <2 x double> %i.adb, <2 x double> %i.agw) ; 2 uses
  %i.agz = extractelement <2 x double> %i.agy, i64 1
  store double %i.agz, ptr %i.cp, align 8, !tbaa !13
  %i.aha = extractelement <2 x double> %i.agy, i64 0
  store double %i.aha, ptr %i.ew, align 8, !tbaa !13
  %i.ahb = load <2 x double>, ptr %i.ade, align 8, !tbaa !13 ; 2 uses
  %i.ahc = shufflevector <2 x double> %i.ahb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ahd = shufflevector <2 x double> %i.adf, <2 x double> %foldExtExtBinop1384, <2 x i32> <i32 0, i32 2>
  %i.ahe = fmul <2 x double> %i.ahc, %i.ahd
  %i.ahf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahb, <2 x double> %i.adg, <2 x double> %i.ahe) ; 2 uses
  %i.ahg = extractelement <2 x double> %i.ahf, i64 0
  store double %i.ahg, ptr %i.bf, align 8, !tbaa !13
  %i.ahh = extractelement <2 x double> %i.ahf, i64 1
  store double %i.ahh, ptr %i.fe, align 8, !tbaa !13
  %15 = load <2 x double>, ptr %i.adh, align 8, !tbaa !13 ; 2 uses
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ahi = fmul <2 x double> %16, %i.adk
  %i.ahj = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahj, <2 x double> %i.adi, <2 x double> %i.ahi) ; 2 uses
  %i.ahl = extractelement <2 x double> %i.ahk, i64 1
  store double %i.ahl, ptr %i.cd, align 8, !tbaa !13
  %i.ahm = extractelement <2 x double> %i.ahk, i64 0
  store double %i.ahm, ptr %i.eo, align 8, !tbaa !13
  %i.ahn = fsub <2 x double> %i.aee, %i.aei
  %i.aho = fadd <2 x double> %i.aee, %i.aei
  %i.ahp = shufflevector <2 x double> %i.ahn, <2 x double> %i.aho, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ahq = fadd <2 x double> %i.di, %i.zt
  %i.ahr = fsub <2 x double> %i.di, %i.zt
  %i.ahs = shufflevector <2 x double> %i.ahq, <2 x double> %i.ahr, <2 x i32> <i32 0, i32 3> ; 3 uses
  %foldExtExtBinop1400 = fsub <2 x double> %i.ahp, %i.ahs ; 2 uses
  %i.aht = shufflevector <2 x double> %i.adu, <2 x double> %i.adz, <2 x i32> <i32 0, i32 3>
  %i.ahu = shufflevector <2 x double> %i.adu, <2 x double> %i.adz, <2 x i32> <i32 1, i32 2>
  %i.ahv = fadd <2 x double> %i.aht, %i.ahu       ; 2 uses
  %foldExtExtBinop1402 = fsub <2 x double> %i.ahp, %i.ahs
  %i.ahw = extractelement <2 x double> %foldExtExtBinop1402, i64 1 ; 2 uses
  %i.ahx = fadd <2 x double> %i.ahp, %i.ahs       ; 2 uses
  %foldExtExtBinop1404 = fsub <2 x double> %foldExtExtBinop1400, %foldExtExtBinop1390
  %i.ahy = fsub double %i.ahw, %i.adv             ; 2 uses
  %i.ahz = fneg double %i.ahy
  %i.aia = load <2 x double>, ptr %i.aea, align 8, !tbaa !13 ; 2 uses
  %i.aib = insertelement <2 x double> poison, double %i.ahy, i64 0
  %i.aic = insertelement <2 x double> %i.aib, double %i.ahz, i64 1
  %i.aid = fmul <2 x double> %i.aia, %i.aic
  %i.aie = shufflevector <2 x double> %i.aid, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aif = shufflevector <2 x double> %foldExtExtBinop1404, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aia, <2 x double> %i.aif, <2 x double> %i.aie) ; 2 uses
  %i.aih = extractelement <2 x double> %i.aig, i64 0
  store double %i.aih, ptr %i.fc, align 8, !tbaa !13
  %i.aii = extractelement <2 x double> %i.aig, i64 1
  store double %i.aii, ptr %i.bh, align 8, !tbaa !13
  %i.aij = fadd <2 x double> %i.ahx, %i.ahv       ; 3 uses
  %i.aik = load <2 x double>, ptr %i.aeb, align 8, !tbaa !13 ; 2 uses
  %i.ail = shufflevector <2 x double> %i.aik, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aim = fneg <2 x double> %i.aij
  %i.ain = shufflevector <2 x double> %i.aim, <2 x double> %i.aij, <2 x i32> <i32 1, i32 2>
  %i.aio = fmul <2 x double> %i.ail, %i.ain
  %i.aip = shufflevector <2 x double> %i.aik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aiq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aip, <2 x double> %i.aij, <2 x double> %i.aio) ; 2 uses
  %i.air = extractelement <2 x double> %i.aiq, i64 0
  store double %i.air, ptr %i.em, align 8, !tbaa !13
  %i.ais = extractelement <2 x double> %i.aiq, i64 1
  store double %i.ais, ptr %i.cf, align 8, !tbaa !13
  %foldExtExtBinop1406 = fadd <2 x double> %foldExtExtBinop1400, %foldExtExtBinop1390
  %i.ait = fadd double %i.ahw, %i.adv             ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %.013201325, i64 160
  %i.aiv = fneg double %i.ait
  %i.aiw = load <2 x double>, ptr %i.aiu, align 8, !tbaa !13 ; 2 uses
  %i.aix = insertelement <2 x double> poison, double %i.ait, i64 0
  %i.aiy = insertelement <2 x double> %i.aix, double %i.aiv, i64 1
  %i.aiz = fmul <2 x double> %i.aiw, %i.aiy
  %i.aja = shufflevector <2 x double> %i.aiz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ajb = shufflevector <2 x double> %foldExtExtBinop1406, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aiw, <2 x double> %i.ajb, <2 x double> %i.aja) ; 2 uses
  %i.ajd = extractelement <2 x double> %i.ajc, i64 0
  store double %i.ajd, ptr %i.fk, align 8, !tbaa !13
  %i.aje = extractelement <2 x double> %i.ajc, i64 1
  store double %i.aje, ptr %i.bt, align 8, !tbaa !13
  %i.ajf = getelementptr inbounds nuw i8, ptr %.013201325, i64 288
  %i.ajg = fsub <2 x double> %i.ahx, %i.ahv       ; 3 uses
  %i.ajh = load <2 x double>, ptr %i.ajf, align 8, !tbaa !13 ; 2 uses
  %i.aji = shufflevector <2 x double> %i.ajh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ajj = fneg <2 x double> %i.ajg
  %i.ajk = shufflevector <2 x double> %i.ajj, <2 x double> %i.ajg, <2 x i32> <i32 1, i32 2>
  %i.ajl = fmul <2 x double> %i.aji, %i.ajk
  %i.ajm = shufflevector <2 x double> %i.ajh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajm, <2 x double> %i.ajg, <2 x double> %i.ajl) ; 2 uses
  %i.ajo = extractelement <2 x double> %i.ajn, i64 0
  store double %i.ajo, ptr %i.eu, align 8, !tbaa !13
  %i.ajp = extractelement <2 x double> %i.ajn, i64 1
  store double %i.ajp, ptr %i.cr, align 8, !tbaa !13
  %i.ajq = add nsw i64 %.013221323, 1             ; 2 uses
  %i.ajr = getelementptr inbounds [8 x i8], ptr %.01329, i64 %8
  %i.ajs = getelementptr inbounds [8 x i8], ptr %.013171328, i64 %8
  %i.ajt = getelementptr inbounds [8 x i8], ptr %.013181327, i64 %i.d
  %i.aju = getelementptr inbounds [8 x i8], ptr %.013191326, i64 %i.d
  %i.ajv = getelementptr inbounds nuw i8, ptr %.013201325, i64 496
  %i.ajw = getelementptr inbounds [8 x i8], ptr %.013211324, i64 %i.e
  %exitcond.not = icmp eq i64 %i.ajq, %7
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9

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
end_hunk_1
