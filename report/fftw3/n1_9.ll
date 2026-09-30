Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/n1_9?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kdft_desc_s = type { i64, ptr, %struct.opcnt, ptr, i64, i64, i64, i64 }
%struct.opcnt = type { double, double, double, double }
%struct.kdft_genus = type { ptr, i64 }

@desc = internal constant %struct.kdft_desc_s { i64 9, ptr @.str, %struct.opcnt { double 6.000000e+01, double 2.000000e+01, double 2.000000e+01, double 0.000000e+00 }, ptr @fftw_dft_n_genus, i64 0, i64 0, i64 0, i64 0 }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [5 x i8] c"n1_9\00", align 1
@fftw_dft_n_genus = external constant %struct.kdft_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_n1_9(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kdft_register(ptr noundef %0, ptr noundef nonnull @n1_9, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kdft_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @n1_9(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp sgt i64 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0252 = phi ptr [ %0, %.lr.ph ], [ %i.gt, %bb.b ] ; 10 uses
  %.0240251 = phi ptr [ %1, %.lr.ph ], [ %i.gu, %bb.b ] ; 10 uses
  %.0241250 = phi ptr [ %2, %.lr.ph ], [ %i.gv, %bb.b ] ; 10 uses
  %.0242249 = phi ptr [ %3, %.lr.ph ], [ %i.gw, %bb.b ] ; 10 uses
  %.0243248 = phi ptr [ %4, %.lr.ph ], [ %i.gx, %bb.b ] ; 9 uses
  %.0244247 = phi ptr [ %5, %.lr.ph ], [ %i.gy, %bb.b ] ; 9 uses
  %.0245246 = phi i64 [ %6, %.lr.ph ], [ %i.gs, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.0252, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %.0243248, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.0252, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0243248, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %.0252, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.l = load double, ptr %.0240251, align 8, !tbaa !13
  %i.m = getelementptr inbounds [8 x i8], ptr %.0240251, i64 %i.e
  %i.n = load double, ptr %i.m, align 8, !tbaa !13 ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %.0240251, i64 %i.i
  %i.p = load double, ptr %i.o, align 8, !tbaa !13 ; 2 uses
  %i.q = insertelement <2 x double> poison, double %i.g, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.n, i64 1
  %i.s = insertelement <2 x double> poison, double %i.k, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.p, i64 1
  %i.u = fadd <2 x double> %i.r, %i.t             ; 2 uses
  %i.v = insertelement <2 x double> poison, double %i.c, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.l, i64 1 ; 2 uses
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> splat (double -5.000000e-01), <2 x double> %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0243248, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11   ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0252, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !13
  %i.ac = getelementptr inbounds [8 x i8], ptr %.0240251, i64 %i.z
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.0243248, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %.0252, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.0243248, i64 56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %.0252, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13
  %i.am = getelementptr inbounds [8 x i8], ptr %.0240251, i64 %i.af
  %i.an = load double, ptr %i.am, align 8, !tbaa !13 ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.0240251, i64 %i.aj
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %i.aq = insertelement <2 x double> poison, double %i.ah, i64 0 ; 2 uses
  %i.ar = insertelement <2 x double> %i.aq, double %i.an, i64 1
  %i.as = insertelement <2 x double> poison, double %i.al, i64 0 ; 2 uses
  %i.at = insertelement <2 x double> %i.as, double %i.ap, i64 1
  %i.au = fadd <2 x double> %i.ar, %i.at          ; 2 uses
  %i.av = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %i.ad, i64 1 ; 2 uses
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> splat (double -5.000000e-01), <2 x double> %i.aw) ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0243248, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !11 ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.0252, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !13
  %i.bc = getelementptr inbounds [8 x i8], ptr %.0240251, i64 %i.az
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.0243248, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %.0252, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !13 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0243248, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11 ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0252, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.0240251, i64 %i.bf
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !13 ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %.0240251, i64 %i.bj
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !13 ; 2 uses
  %i.bq = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bn, i64 1
  %i.bs = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.bp, i64 1
  %i.bu = fadd <2 x double> %i.br, %i.bt          ; 2 uses
  %i.bv = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bd, i64 1 ; 2 uses
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> splat (double -5.000000e-01), <2 x double> %i.bw) ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0244247, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %.0241250, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.0244247, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !11 ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %.0241250, i64 %i.cc
  %i.ce = fadd <2 x double> %i.w, %i.u            ; 3 uses
  %i.cf = fadd <2 x double> %i.aw, %i.au          ; 3 uses
  %i.cg = fadd <2 x double> %i.bw, %i.bu          ; 3 uses
  %foldExtExtBinop = fsub <2 x double> %i.cf, %i.cg
  %i.ch = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ci = fmul double %i.ch, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.cj = fadd <2 x double> %i.cf, %i.cg          ; 3 uses
  %foldExtExtBinop254 = fadd <2 x double> %i.ce, %i.cj
  %i.ck = extractelement <2 x double> %foldExtExtBinop254, i64 0
  store double %i.ck, ptr %.0241250, align 8, !tbaa !13
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> splat (double -5.000000e-01), <2 x double> %i.ce) ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0 ; 2 uses
  %i.cn = fadd double %i.cm, %i.ci
  store double %i.cn, ptr %i.ca, align 8, !tbaa !13
  %i.co = fsub double %i.cm, %i.ci
  store double %i.co, ptr %i.cd, align 8, !tbaa !13
  %foldExtExtBinop256 = fsub <2 x double> %i.cg, %i.cf
  %i.cp = extractelement <2 x double> %foldExtExtBinop256, i64 0
  %i.cq = fmul double %i.cp, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.cr = extractelement <2 x double> %i.cl, i64 1 ; 2 uses
  %9 = fadd double %i.cq, %i.cr
  %10 = getelementptr inbounds [8 x i8], ptr %.0242249, i64 %i.bz
  store double %9, ptr %10, align 8, !tbaa !13
  %foldExtExtBinop258 = fadd <2 x double> %i.ce, %i.cj
  %i.cs = extractelement <2 x double> %foldExtExtBinop258, i64 1
  store double %i.cs, ptr %.0242249, align 8, !tbaa !13
  %i.ct = fsub double %i.cr, %i.cq
  %i.cu = getelementptr inbounds [8 x i8], ptr %.0242249, i64 %i.cc
  store double %i.ct, ptr %i.cu, align 8, !tbaa !13
  %i.cv = insertelement <2 x double> poison, double %i.an, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.bn, i64 1
  %i.cx = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.bp, i64 1
  %i.cz = fsub <2 x double> %i.cw, %i.cy
  %i.da = fmul <2 x double> %i.cz, splat (double f0x3FEBB67AE8584CAA) ; 3 uses
  %i.db = insertelement <2 x double> %i.as, double %i.bl, i64 1
  %i.dc = insertelement <2 x double> %i.aq, double %i.bh, i64 1
  %i.dd = fsub <2 x double> %i.db, %i.dc
  %i.de = fmul <2 x double> %i.dd, splat (double f0x3FEBB67AE8584CAA) ; 3 uses
  %i.df = shufflevector <2 x double> %i.ax, <2 x double> %i.bx, <2 x i32> <i32 0, i32 2>
  %i.dg = fadd <2 x double> %i.df, %i.da          ; 2 uses
  %i.dh = shufflevector <2 x double> %i.ax, <2 x double> %i.bx, <2 x i32> <i32 1, i32 3>
  %i.di = fadd <2 x double> %i.de, %i.dh          ; 2 uses
  %i.dj = fmul <2 x double> %i.di, <double f0x3FE491B7523C161D, double f0x3FEF838B8C811C17>
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> <double f0x3FE8836FA2CF5039, double f0x3FC63A1A7E0B738A>, <2 x double> %i.dj) ; 4 uses
  %i.dl = fmul <2 x double> %i.dg, <double f0xBFE491B7523C161D, double f0xBFEF838B8C811C17>
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> <double f0x3FE8836FA2CF5039, double f0x3FC63A1A7E0B738A>, <2 x double> %i.dl) ; 4 uses
  %i.dn = shufflevector <2 x double> %i.dk, <2 x double> %i.dm, <2 x i32> <i32 1, i32 2>
  %i.do = shufflevector <2 x double> %i.dk, <2 x double> %i.dm, <2 x i32> <i32 0, i32 3>
  %i.dp = fsub <2 x double> %i.dn, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %.0244247, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !11 ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %.0241250, i64 %i.dr
  %i.dt = getelementptr inbounds [8 x i8], ptr %.0242249, i64 %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %.0244247, i64 56
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !11 ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %.0241250, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %.0244247, i64 32
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !11 ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %.0241250, i64 %i.dy
  %i.ea = insertelement <2 x double> poison, double %i.n, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %i.k, i64 1
  %i.ec = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ed = insertelement <2 x double> %i.ec, double %i.g, i64 1
  %i.ee = fsub <2 x double> %i.eb, %i.ed
  %i.ef = fmul <2 x double> %i.ee, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.eg = fadd <2 x double> %i.x, %i.ef           ; 2 uses
  %i.eh = shufflevector <2 x double> %i.dk, <2 x double> %i.dm, <2 x i32> <i32 0, i32 2>
  %i.ei = shufflevector <2 x double> %i.dk, <2 x double> %i.dm, <2 x i32> <i32 1, i32 3>
  %i.ej = fadd <2 x double> %i.eh, %i.ei          ; 2 uses
  %i.ek = fadd <2 x double> %i.eg, %i.ej          ; 2 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0
  store double %i.el, ptr %i.ds, align 8, !tbaa !13
  %i.em = extractelement <2 x double> %i.ek, i64 1
  store double %i.em, ptr %i.dt, align 8, !tbaa !13
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> splat (double -5.000000e-01), <2 x double> %i.eg) ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %.0242249, i64 %i.dy
  %i.ep = fmul <2 x double> %i.dp, splat (double f0x3FEBB67AE8584CAA)
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.er = fsub <2 x double> %i.en, %i.eq          ; 2 uses
  %i.es = extractelement <2 x double> %i.er, i64 0
  store double %i.es, ptr %i.dw, align 8, !tbaa !13
  %i.et = fadd <2 x double> %i.eq, %i.en          ; 2 uses
  %i.eu = extractelement <2 x double> %i.et, i64 0
  store double %i.eu, ptr %i.dz, align 8, !tbaa !13
  %i.ev = extractelement <2 x double> %i.et, i64 1
  store double %i.ev, ptr %i.eo, align 8, !tbaa !13
  %i.ew = getelementptr inbounds [8 x i8], ptr %.0242249, i64 %i.dv
  %i.ex = extractelement <2 x double> %i.er, i64 1
  store double %i.ex, ptr %i.ew, align 8, !tbaa !13
  %i.ey = shufflevector <2 x double> %i.ax, <2 x double> %i.bx, <2 x i32> <i32 1, i32 2>
  %i.ez = shufflevector <2 x double> %i.de, <2 x double> %i.da, <2 x i32> <i32 0, i32 3>
  %i.fa = fsub <2 x double> %i.ey, %i.ez          ; 2 uses
  %i.fb = shufflevector <2 x double> %i.ax, <2 x double> %i.bx, <2 x i32> <i32 0, i32 3>
  %i.fc = shufflevector <2 x double> %i.da, <2 x double> %i.de, <2 x i32> <i32 0, i32 3>
  %i.fd = fsub <2 x double> %i.fb, %i.fc          ; 2 uses
  %i.fe = fmul <2 x double> %i.fa, <double f0x3FEF838B8C811C17, double f0xBFEE11F642522D1C>
  %i.ff = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> <double f0x3FC63A1A7E0B738A, double f0x3FD5E3A8748A0BF5>, <2 x double> %i.fe) ; 2 uses
  %i.fg = extractelement <2 x double> %i.ff, i64 0 ; 2 uses
  %i.fh = extractelement <2 x double> %i.ff, i64 1 ; 2 uses
  %i.fi = fsub double %i.fh, %i.fg
  %i.fj = fmul double %i.fi, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.fk = fmul <2 x double> %i.fd, <double f0xBFEF838B8C811C17, double f0x3FEE11F642522D1C>
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> <double f0x3FC63A1A7E0B738A, double f0x3FD5E3A8748A0BF5>, <2 x double> %i.fk) ; 2 uses
  %i.fm = extractelement <2 x double> %i.fl, i64 0 ; 2 uses
  %i.fn = extractelement <2 x double> %i.fl, i64 1 ; 2 uses
  %i.fo = fadd double %i.fm, %i.fn
  %i.fp = fmul double %i.fo, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0244247, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !11 ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %.0241250, i64 %i.fr
  %i.ft = getelementptr inbounds [8 x i8], ptr %.0242249, i64 %i.fr
  %i.fu = getelementptr inbounds nuw i8, ptr %.0244247, i64 40
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !11 ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %.0242249, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %.0244247, i64 64
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !11 ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %.0242249, i64 %i.fy
  %i.ga = fsub <2 x double> %i.x, %i.ef           ; 3 uses
  %i.gb = fadd double %i.fg, %i.fh                ; 2 uses
  %i.gc = fsub double %i.fm, %i.fn                ; 2 uses
  %i.gd = extractelement <2 x double> %i.ga, i64 0
  %i.ge = fadd double %i.gd, %i.gb
  store double %i.ge, ptr %i.fs, align 8, !tbaa !13
  %i.gf = extractelement <2 x double> %i.ga, i64 1
  %i.gg = fadd double %i.gf, %i.gc
  store double %i.gg, ptr %i.ft, align 8, !tbaa !13
  %i.gh = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.gc, i64 1
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> splat (double -5.000000e-01), <2 x double> %i.ga) ; 2 uses
  %i.gk = extractelement <2 x double> %i.gj, i64 1 ; 2 uses
  %i.gl = fadd double %i.fj, %i.gk
  store double %i.gl, ptr %i.fw, align 8, !tbaa !13
  %i.gm = fsub double %i.gk, %i.fj
  store double %i.gm, ptr %i.fz, align 8, !tbaa !13
  %i.gn = extractelement <2 x double> %i.gj, i64 0 ; 2 uses
  %i.go = fsub double %i.gn, %i.fp
  %i.gp = getelementptr inbounds [8 x i8], ptr %.0241250, i64 %i.fy
  store double %i.go, ptr %i.gp, align 8, !tbaa !13
  %i.gq = fadd double %i.gn, %i.fp
  %i.gr = getelementptr inbounds [8 x i8], ptr %.0241250, i64 %i.fv
  store double %i.gq, ptr %i.gr, align 8, !tbaa !13
  %i.gs = add nsw i64 %.0245246, -1
  %i.gt = getelementptr inbounds [8 x i8], ptr %.0252, i64 %7
  %i.gu = getelementptr inbounds [8 x i8], ptr %.0240251, i64 %7
  %i.gv = getelementptr inbounds [8 x i8], ptr %.0241250, i64 %8
  %i.gw = getelementptr inbounds [8 x i8], ptr %.0242249, i64 %8
  %i.gx = getelementptr inbounds [8 x i8], ptr %.0243248, i64 %i.b
  %i.gy = getelementptr inbounds [8 x i8], ptr %.0244247, i64 %i.b
  %i.gz = icmp samesign ugt i64 %.0245246, 1
  br i1 %i.gz, label %bb.b, label %._crit_edge, !llvm.loop !9

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
