Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cf_32?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 32, ptr @.str, %struct.opcnt { double 1.400000e+02, double 2.600000e+01, double 1.600000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cf_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [8 x i8] c"r2cf_32\00", align 1
@fftw_rdft_r2cf_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cf_32(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cf_32, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cf_32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0464 = phi ptr [ %0, %.lr.ph ], [ %i.ny, %bb.b ] ; 17 uses
  %.0450463 = phi ptr [ %1, %.lr.ph ], [ %i.nz, %bb.b ] ; 17 uses
  %.0451462 = phi ptr [ %2, %.lr.ph ], [ %i.oa, %bb.b ] ; 18 uses
  %.0452461 = phi ptr [ %3, %.lr.ph ], [ %i.ob, %bb.b ] ; 16 uses
  %.0453460 = phi ptr [ %4, %.lr.ph ], [ %i.oc, %bb.b ] ; 16 uses
  %.0454459 = phi ptr [ %5, %.lr.ph ], [ %i.od, %bb.b ] ; 17 uses
  %.0455458 = phi ptr [ %6, %.lr.ph ], [ %i.oe, %bb.b ] ; 16 uses
  %.0456457 = phi i64 [ %7, %.lr.ph ], [ %i.nx, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.0464, align 8, !tbaa !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0453460, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.h = fadd double %i.c, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0453460, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.j
  %i.l = load double, ptr %i.k, align 8, !tbaa !13 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0453460, i64 96
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.n
  %i.p = load double, ptr %i.o, align 8, !tbaa !13 ; 2 uses
  %i.q = fadd double %i.l, %i.p                   ; 2 uses
  %i.r = fadd double %i.h, %i.q                   ; 2 uses
  %i.s = fsub double %i.h, %i.q                   ; 2 uses
  %i.t = fsub double %i.c, %i.g                   ; 2 uses
  %i.u = fsub double %i.l, %i.p                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0453460, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11   ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !13 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0453460, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11  ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.ad = fadd double %i.y, %i.ac                 ; 2 uses
  %i.ae = fsub double %i.y, %i.ac                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0453460, i64 112
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !13 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0453460, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !13 ; 2 uses
  %i.an = fadd double %i.ai, %i.am                ; 2 uses
  %i.ao = fsub double %i.ai, %i.am                ; 2 uses
  %i.ap = fadd double %i.ad, %i.an                ; 2 uses
  %i.aq = fsub double %i.an, %i.ad                ; 2 uses
  %i.ar = fadd double %i.ae, %i.ao
  %i.as = fmul double %i.ar, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.at = fsub double %i.ao, %i.ae
  %i.au = fmul double %i.at, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0453460, i64 120
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11 ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0453460, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11 ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !13 ; 2 uses
  %i.bd = fadd double %i.ay, %i.bc                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0453460, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !13 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0453460, i64 88
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11 ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %i.bm = fadd double %i.bh, %i.bl                ; 2 uses
  %i.bn = fadd double %i.bd, %i.bm                ; 2 uses
  %i.bo = fsub double %i.bd, %i.bm                ; 2 uses
  %10 = fsub double %i.bh, %i.bl
  %11 = fsub double %i.ay, %i.bc
  %i.bp = insertelement <2 x double> poison, double %10, i64 0
  %12 = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %12, <double f0x3FD87DE2A6AEA963, double f0xBFED906BCF328D46>
  %14 = insertelement <2 x double> poison, double %11, i64 0
  %i.bq = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA963>, <2 x double> %13) ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0453460, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11 ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !13 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0453460, i64 72
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !11 ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !13 ; 2 uses
  %i.ca = fadd double %i.bv, %i.bz                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0453460, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !11 ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !13 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0453460, i64 104
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !11 ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !13 ; 2 uses
  %i.cj = fadd double %i.ce, %i.ci                ; 2 uses
  %i.ck = fadd double %i.ca, %i.cj                ; 2 uses
  %i.cl = fsub double %i.ca, %i.cj                ; 2 uses
  %15 = fsub double %i.ce, %i.ci
  %16 = fsub double %i.bv, %i.bz
  %i.cm = insertelement <2 x double> poison, double %15, i64 0
  %17 = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = fmul <2 x double> %17, <double f0xBFD87DE2A6AEA963, double f0x3FED906BCF328D46>
  %19 = insertelement <2 x double> poison, double %16, i64 0
  %i.cn = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA963>, <2 x double> %18) ; 3 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.aw
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !13 ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.ba
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !13 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.bf
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !13 ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.bj
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !13 ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.bt
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !13 ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.bx
  %i.da = load double, ptr %i.cz, align 8, !tbaa !13 ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.cg
  %i.dc = load double, ptr %i.db, align 8, !tbaa !13 ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.cc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !13 ; 2 uses
  %i.df = load double, ptr %.0450463, align 8, !tbaa !13
  %i.dg = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.e
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !13
  %i.di = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.j
  %i.dj = load double, ptr %i.di, align 8, !tbaa !13
  %i.dk = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.n
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !13
  %i.dm = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.w
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !13
  %i.do = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.aa
  %i.dp = load double, ptr %i.do, align 8, !tbaa !13
  %i.dq = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.ag
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !13
  %i.ds = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.ak
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !13
  %i.du = fadd double %i.r, %i.ap                 ; 2 uses
  %i.dv = fadd double %i.bn, %i.ck                ; 2 uses
  %i.dw = fadd double %i.du, %i.dv                ; 2 uses
  %i.dx = fsub double %i.du, %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %.0454459, i64 64
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !11
  %i.ea = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.dz
  store double %i.dx, ptr %i.ea, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw i8, ptr %.0455458, i64 64
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !11
  %i.ed = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %.0454459, i64 128
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !11
  %i.eg = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.ef
  %i.eh = fsub double %i.r, %i.ap                 ; 2 uses
  %i.ei = fsub double %i.bn, %i.ck                ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0454459, i64 96
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !11
  %i.el = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %.0455458, i64 96
  %i.en = load i64, ptr %i.em, align 8, !tbaa !11
  %i.eo = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %.0454459, i64 32
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !11
  %i.er = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %.0455458, i64 32
  %i.et = load i64, ptr %i.es, align 8, !tbaa !11
  %i.eu = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.et
  %i.ev = fadd double %i.bo, %i.cl
  %i.ew = fmul double %i.ev, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.ex = fadd double %i.s, %i.ew                 ; 2 uses
  %i.ey = fsub double %i.s, %i.ew                 ; 2 uses
  %i.ez = fsub double %i.bo, %i.cl
  %i.fa = fmul double %i.ez, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.fb = fsub double %i.fa, %i.aq                ; 2 uses
  %i.fc = fadd double %i.aq, %i.fa                ; 2 uses
  %i.fd = insertelement <2 x double> poison, double %i.df, i64 0 ; 2 uses
  %i.fe = insertelement <2 x double> %i.fd, double %i.cq, i64 1
  %i.ff = insertelement <2 x double> poison, double %i.dh, i64 0 ; 2 uses
  %i.fg = insertelement <2 x double> %i.ff, double %i.cs, i64 1
  %i.fh = fadd <2 x double> %i.fe, %i.fg          ; 3 uses
  %i.fi = insertelement <2 x double> poison, double %i.dj, i64 0 ; 2 uses
  %i.fj = insertelement <2 x double> %i.fi, double %i.cu, i64 1
  %i.fk = insertelement <2 x double> poison, double %i.dl, i64 0 ; 2 uses
  %i.fl = insertelement <2 x double> %i.fk, double %i.cw, i64 1
  %i.fm = fadd <2 x double> %i.fj, %i.fl          ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.fh, %i.fm
  %i.fn = extractelement <2 x double> %foldExtExtBinop, i64 1 ; 2 uses
  %i.fo = insertelement <2 x double> poison, double %i.dn, i64 0 ; 2 uses
  %i.fp = insertelement <2 x double> %i.fo, double %i.cy, i64 1
  %i.fq = insertelement <2 x double> poison, double %i.dp, i64 0 ; 2 uses
  %i.fr = insertelement <2 x double> %i.fq, double %i.da, i64 1
  %i.fs = fadd <2 x double> %i.fp, %i.fr          ; 3 uses
  %i.ft = insertelement <2 x double> poison, double %i.dr, i64 0 ; 2 uses
  %i.fu = insertelement <2 x double> %i.ft, double %i.dc, i64 1
  %i.fv = insertelement <2 x double> poison, double %i.dt, i64 0 ; 2 uses
  %i.fw = insertelement <2 x double> %i.fv, double %i.de, i64 1
  %i.fx = fadd <2 x double> %i.fu, %i.fw          ; 3 uses
  %foldExtExtBinop466 = fadd <2 x double> %i.fs, %i.fx
  %i.fy = extractelement <2 x double> %foldExtExtBinop466, i64 1 ; 2 uses
  %foldExtExtBinop468 = fadd <2 x double> %i.fh, %i.fm ; 2 uses
  %foldExtExtBinop470 = fadd <2 x double> %i.fs, %i.fx ; 2 uses
  %i.fz = fsub <2 x double> %i.fx, %i.fs          ; 3 uses
  %i.ga = fsub <2 x double> %i.fh, %i.fm          ; 3 uses
  %foldExtExtBinop472 = fadd <2 x double> %foldExtExtBinop468, %foldExtExtBinop470
  %i.gb = extractelement <2 x double> %foldExtExtBinop472, i64 0 ; 2 uses
  %i.gc = fadd double %i.fn, %i.fy                ; 2 uses
  %i.gd = fadd double %i.gc, %i.gb                ; 2 uses
  %i.ge = fsub double %i.gc, %i.gb
  store double %i.ge, ptr %i.ed, align 8, !tbaa !13
  %i.gf = fsub double %i.dw, %i.gd
  store double %i.gf, ptr %i.eg, align 8, !tbaa !13
  %i.gg = fadd double %i.dw, %i.gd
  store double %i.gg, ptr %.0451462, align 8, !tbaa !13
  %foldExtExtBinop474 = fsub <2 x double> %foldExtExtBinop468, %foldExtExtBinop470
  %i.gh = extractelement <2 x double> %foldExtExtBinop474, i64 0 ; 2 uses
  %i.gi = fsub double %i.fn, %i.fy                ; 2 uses
  %i.gj = fadd double %i.gi, %i.gh
  %i.gk = fmul double %i.gj, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.gl = fsub double %i.gi, %i.gh
  %i.gm = fmul double %i.gl, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.gn = fsub double %i.eh, %i.gk
  store double %i.gn, ptr %i.el, align 8, !tbaa !13
  %i.go = fsub double %i.gm, %i.ei
  store double %i.go, ptr %i.eo, align 8, !tbaa !13
  %i.gp = fadd double %i.eh, %i.gk
  store double %i.gp, ptr %i.er, align 8, !tbaa !13
  %i.gq = fadd double %i.ei, %i.gm
  store double %i.gq, ptr %i.eu, align 8, !tbaa !13
  %i.gr = fmul <2 x double> %i.fz, <double f0x3FD87DE2A6AEA963, double f0xBFD87DE2A6AEA963>
  %i.gs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> splat (double f0x3FED906BCF328D46), <2 x double> %i.gr) ; 2 uses
  %i.gt = extractelement <2 x double> %i.gs, i64 0 ; 2 uses
  %i.gu = extractelement <2 x double> %i.gs, i64 1 ; 2 uses
  %i.gv = fadd double %i.gu, %i.gt                ; 2 uses
  %i.gw = fsub double %i.gu, %i.gt                ; 2 uses
  %i.gx = shufflevector <2 x double> %i.ga, <2 x double> %i.fz, <2 x i32> <i32 0, i32 3>
  %i.gy = fmul <2 x double> %i.gx, <double f0xBFD87DE2A6AEA963, double f0x3FED906BCF328D46>
  %i.gz = shufflevector <2 x double> %i.fz, <2 x double> %i.ga, <2 x i32> <i32 0, i32 3>
  %i.ha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA963>, <2 x double> %i.gy) ; 2 uses
  %i.hb = extractelement <2 x double> %i.ha, i64 0 ; 2 uses
  %i.hc = extractelement <2 x double> %i.ha, i64 1 ; 2 uses
  %i.hd = fadd double %i.hc, %i.hb                ; 2 uses
  %i.he = fsub double %i.hc, %i.hb                ; 2 uses
  %i.hf = fsub double %i.ex, %i.gv
  %i.hg = getelementptr inbounds nuw i8, ptr %.0454459, i64 112
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !11
  %i.hi = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.hh
  store double %i.hf, ptr %i.hi, align 8, !tbaa !13
  %i.hj = fsub double %i.hd, %i.fc
  %i.hk = getelementptr inbounds nuw i8, ptr %.0455458, i64 112
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !11
  %i.hm = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.hl
  store double %i.hj, ptr %i.hm, align 8, !tbaa !13
  %i.hn = fadd double %i.ex, %i.gv
  %i.ho = getelementptr inbounds nuw i8, ptr %.0454459, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !11
  %i.hq = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.hp
  store double %i.hn, ptr %i.hq, align 8, !tbaa !13
  %i.hr = fadd double %i.fc, %i.hd
  %i.hs = getelementptr inbounds nuw i8, ptr %.0455458, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !11
  %i.hu = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.ht
  store double %i.hr, ptr %i.hu, align 8, !tbaa !13
  %i.hv = fadd double %i.fb, %i.gw
  %i.hw = getelementptr inbounds nuw i8, ptr %.0455458, i64 48
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !11
  %i.hy = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.hx
  store double %i.hv, ptr %i.hy, align 8, !tbaa !13
  %i.hz = fadd double %i.ey, %i.he
  %i.ia = getelementptr inbounds nuw i8, ptr %.0454459, i64 48
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !11
  %i.ic = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.ib
  store double %i.hz, ptr %i.ic, align 8, !tbaa !13
  %i.id = fsub double %i.gw, %i.fb
  %i.ie = getelementptr inbounds nuw i8, ptr %.0455458, i64 80
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !11
  %i.ig = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.if
  store double %i.id, ptr %i.ig, align 8, !tbaa !13
  %i.ih = fsub double %i.ey, %i.he
  %i.ii = getelementptr inbounds nuw i8, ptr %.0454459, i64 80
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !11
  %i.ik = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.ij
  store double %i.ih, ptr %i.ik, align 8, !tbaa !13
  %i.il = fadd double %i.t, %i.as                 ; 2 uses
  %foldExtExtBinop476 = fadd <2 x double> %i.br, %i.co
  %i.im = extractelement <2 x double> %foldExtExtBinop476, i64 0 ; 2 uses
  %i.in = fadd double %i.il, %i.im                ; 2 uses
  %i.io = fsub double %i.il, %i.im                ; 2 uses
  %i.ip = insertelement <2 x double> %i.fd, double %i.cu, i64 1
  %i.iq = insertelement <2 x double> %i.ff, double %i.cw, i64 1
  %i.ir = fsub <2 x double> %i.ip, %i.iq          ; 4 uses
  %i.is = insertelement <2 x double> %i.fo, double %i.dc, i64 1
  %i.it = insertelement <2 x double> %i.fq, double %i.de, i64 1
  %i.iu = fsub <2 x double> %i.is, %i.it          ; 4 uses
  %i.iv = insertelement <2 x double> %i.ft, double %i.cy, i64 1
  %i.iw = insertelement <2 x double> %i.fv, double %i.da, i64 1
  %i.ix = fsub <2 x double> %i.iv, %i.iw          ; 4 uses
  %i.iy = fadd <2 x double> %i.iu, %i.ix
  %i.iz = fsub <2 x double> %i.iu, %i.ix
  %i.ja = shufflevector <2 x double> %i.iy, <2 x double> %i.iz, <2 x i32> <i32 0, i32 3>
  %i.jb = fmul <2 x double> %i.ja, splat (double f0x3FE6A09E667F3BCD) ; 4 uses
  %i.jc = insertelement <2 x double> %i.fi, double %i.cq, i64 1
  %i.jd = insertelement <2 x double> %i.fk, double %i.cs, i64 1
  %i.je = fsub <2 x double> %i.jc, %i.jd          ; 4 uses
  %i.jf = fsub <2 x double> %i.ix, %i.iu
  %i.jg = fadd <2 x double> %i.ix, %i.iu
  %i.jh = shufflevector <2 x double> %i.jf, <2 x double> %i.jg, <2 x i32> <i32 0, i32 3>
  %i.ji = fmul <2 x double> %i.jh, splat (double f0x3FE6A09E667F3BCD) ; 4 uses
  %i.jj = fsub <2 x double> %i.ji, %i.je          ; 2 uses
end_hunk_0
