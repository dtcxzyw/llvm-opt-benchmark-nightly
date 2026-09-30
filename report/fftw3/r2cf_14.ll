Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cf_14?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 14, ptr @.str, %struct.opcnt { double 3.800000e+01, double 1.200000e+01, double 2.400000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cf_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [8 x i8] c"r2cf_14\00", align 1
@fftw_rdft_r2cf_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cf_14(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cf_14, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cf_14(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0182 = phi ptr [ %0, %.lr.ph ], [ %i.ga, %bb.b ] ; 8 uses
  %.0168181 = phi ptr [ %1, %.lr.ph ], [ %i.gb, %bb.b ] ; 8 uses
  %.0169180 = phi ptr [ %2, %.lr.ph ], [ %i.gc, %bb.b ] ; 9 uses
  %.0170179 = phi ptr [ %3, %.lr.ph ], [ %i.gd, %bb.b ] ; 7 uses
  %.0171178 = phi ptr [ %4, %.lr.ph ], [ %i.ge, %bb.b ] ; 7 uses
  %.0172177 = phi ptr [ %5, %.lr.ph ], [ %i.gf, %bb.b ] ; 8 uses
  %.0173176 = phi ptr [ %6, %.lr.ph ], [ %i.gg, %bb.b ] ; 7 uses
  %.0174175 = phi i64 [ %7, %.lr.ph ], [ %i.fz, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.0182, align 8, !tbaa !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0171178, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.0168181, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0171178, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %.0182, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0171178, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.0168181, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0171178, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.0182, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.0168181, i64 %i.i
  %i.u = load double, ptr %i.t, align 8, !tbaa !13 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0171178, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11   ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.0182, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !13 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0171178, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11  ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.0168181, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.0182, i64 %i.e
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.0168181, i64 %i.q
  %i.ag = load double, ptr %i.af, align 8, !tbaa !13 ; 2 uses
  %i.ah = fsub double %i.ae, %i.ag                ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %.0182, i64 %i.m
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !13 ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %.0168181, i64 %i.w
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %.0182, i64 %i.aa
  %i.an = load double, ptr %i.am, align 8, !tbaa !13 ; 2 uses
  %i.ao = load double, ptr %.0168181, align 8, !tbaa !13 ; 2 uses
  %i.ap = fsub double %i.an, %i.ao                ; 2 uses
  %i.aq = fsub double %i.ap, %i.ah                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0173176, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr inbounds [8 x i8], ptr %.0170179, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.0173176, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11
  %i.aw = getelementptr inbounds [8 x i8], ptr %.0170179, i64 %i.av
  %i.ax = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.y, i64 1
  %i.az = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ac, i64 1
  %i.bb = fsub <2 x double> %i.ay, %i.ba          ; 3 uses
  %i.bc = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.s, i64 1
  %i.be = insertelement <2 x double> poison, double %i.al, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.u, i64 1
  %i.bg = fsub <2 x double> %i.bd, %i.bf          ; 3 uses
  %i.bh = fsub <2 x double> %i.bg, %i.bb          ; 4 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0
  %i.bj = fmul double %i.bi, f0x3FEF329C0558E969
  %i.bk = extractelement <2 x double> %i.bh, i64 1 ; 2 uses
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double f0x3FE904C37505DE4B, double %i.bj)
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.aq, double f0x3FDBC4C04D71ABC1, double %i.bl)
  store double %i.bm, ptr %i.at, align 8, !tbaa !13
  %i.bn = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x double> %i.bo, <double f0x3FE904C37505DE4B, double f0x3FEF329C0558E969>
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> splat (double f0x3FDBC4C04D71ABC1), <2 x double> %i.bp) ; 2 uses
  %i.br = extractelement <2 x double> %i.bq, i64 0
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bk, double f0xBFEF329C0558E969, double %i.br)
  store double %i.bs, ptr %i.aw, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.0173176, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !11
  %i.bv = getelementptr inbounds [8 x i8], ptr %.0170179, i64 %i.bu
  %i.bw = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bx = getelementptr inbounds nuw i8, ptr %.0172177, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !11
  %i.bz = getelementptr inbounds [8 x i8], ptr %.0169180, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.0172177, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !11
  %i.cc = getelementptr inbounds [8 x i8], ptr %.0169180, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.0172177, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !11
  %i.cf = getelementptr inbounds [8 x i8], ptr %.0169180, i64 %i.ce
  %i.cg = fsub double %i.c, %i.g                  ; 4 uses
  %foldExtExtBinop = fadd <2 x double> %i.bb, %i.bg ; 4 uses
  %i.ch = extractelement <2 x double> %foldExtExtBinop, i64 0
  %foldExtExtBinop184 = fadd <2 x double> %i.bg, %i.bb ; 2 uses
  %i.ci = extractelement <2 x double> %foldExtExtBinop184, i64 1 ; 3 uses
  %i.cj = fadd double %i.ah, %i.ap                ; 4 uses
  %i.ck = shufflevector <2 x double> %i.bh, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.cl = insertelement <2 x double> %i.bw, double %i.cg, i64 1
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> <double f0xBFE904C37505DE4B, double f0x3FE3F3A0E28BEDD1>, <2 x double> %i.cl) ; 2 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 0
  store double %i.cn, ptr %i.bv, align 8, !tbaa !13
  %i.co = fmul double %i.ci, f0x3FECD4BCA9CB5C71
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cj, double f0x3FCC7B90E3024582, double %i.co)
  %10 = fadd double %i.cg, %i.ci
  %11 = fadd double %10, %i.ch
  %12 = fadd double %11, %i.cj
  %13 = insertelement <2 x double> poison, double %i.cg, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %15 = fmul <2 x double> %14, <double 1.000000e+00, double f0x3FCC7B90E3024582>
  %16 = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cq = insertelement <2 x double> %16, double %i.cj, i64 1
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> <double f0x3FE3F3A0E28BEDD1, double f0x3FECD4BCA9CB5C71>, <2 x double> %15) ; 2 uses
  %18 = shufflevector <2 x double> %i.cm, <2 x double> %17, <2 x i32> <i32 1, i32 2>
  %i.cr = insertelement <2 x double> %17, double %i.cp, i64 0
  %19 = fsub <2 x double> %18, %i.cr              ; 2 uses
  %20 = extractelement <2 x double> %19, i64 0
  store double %20, ptr %i.bz, align 8, !tbaa !13
  store double %12, ptr %i.cc, align 8, !tbaa !13
  %i.cs = extractelement <2 x double> %19, i64 1
  store double %i.cs, ptr %i.cf, align 8, !tbaa !13
  %i.ct = insertelement <2 x double> %foldExtExtBinop184, double %i.cg, i64 0
  %i.cu = fmul <2 x double> %i.ct, <double 1.000000e+00, double f0x3FCC7B90E3024582>
  %i.cv = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> <double f0x3FE3F3A0E28BEDD1, double f0x3FECD4BCA9CB5C71>, <2 x double> %i.cu) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0172177, i64 40
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !11
  %i.da = getelementptr inbounds [8 x i8], ptr %.0169180, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %.0173176, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !11
  %i.dd = getelementptr inbounds [8 x i8], ptr %.0170179, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.0173176, i64 48
  %i.df = load i64, ptr %i.de, align 8, !tbaa !11
  %i.dg = getelementptr inbounds [8 x i8], ptr %.0170179, i64 %i.df
  %i.dh = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %i.k, i64 1
  %i.dj = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.o, i64 1
  %i.dl = fadd <2 x double> %i.di, %i.dk          ; 3 uses
  %i.dm = insertelement <2 x double> poison, double %i.an, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.aj, i64 1
  %i.do = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.al, i64 1
  %i.dq = fadd <2 x double> %i.dn, %i.dp          ; 3 uses
  %i.dr = fsub <2 x double> %i.dl, %i.dq          ; 4 uses
  %i.ds = extractelement <2 x double> %i.dr, i64 1
  %i.dt = fmul double %i.ds, f0x3FDBC4C04D71ABC1
  %i.du = extractelement <2 x double> %i.dr, i64 0
  %i.dv = fmul <2 x double> %i.dr, <double f0x3FDBC4C04D71ABC1, double f0xBFE904C37505DE4B>
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> splat (double f0x3FEF329C0558E969), <2 x double> %i.dw) ; 2 uses
  %i.dy = extractelement <2 x double> %i.dx, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.0173176, i64 32
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !11
  %i.eb = getelementptr inbounds [8 x i8], ptr %.0170179, i64 %i.ea
  %foldExtExtBinop188.a = fadd <2 x double> %i.dl, %i.dq ; 2 uses
  %i.ec = extractelement <2 x double> %foldExtExtBinop188.a, i64 0 ; 2 uses
  %i.ed = fadd double %i.s, %i.u                  ; 2 uses
  %i.ee = fadd double %i.y, %i.ac                 ; 2 uses
  %i.ef = fsub double %i.ed, %i.ee                ; 3 uses
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ef, double f0x3FEF329C0558E969, double %i.dt)
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.du, double f0x3FE904C37505DE4B, double %i.eg)
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.ef, double f0xBFE904C37505DE4B, double %i.dy)
  %i.ej = fadd double %i.ed, %i.ee                ; 4 uses
  %i.ek = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.ej, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %.0172177, i64 48
  %i.en = load i64, ptr %i.em, align 8, !tbaa !11
  %i.eo = getelementptr inbounds [8 x i8], ptr %.0169180, i64 %i.en
  %i.ep = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.eq = insertelement <2 x double> %i.ep, double %i.c, i64 1
  %i.er = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.es = insertelement <2 x double> %i.er, double %i.g, i64 1
  %i.et = fadd <2 x double> %i.eq, %i.es          ; 6 uses
  %i.eu = shufflevector <2 x double> %i.dx, <2 x double> %i.et, <2 x i32> <i32 0, i32 3>
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> <double f0xBFDBC4C04D71ABC1, double f0x3FE3F3A0E28BEDD1>, <2 x double> %i.eu) ; 2 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 0
  %i.ex = fmul <2 x double> %i.et, <double f0x3FCC7B90E3024582, double 1.000000e+00>
  %i.ey = shufflevector <2 x double> %foldExtExtBinop188.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> <double f0x3FECD4BCA9CB5C71, double f0x3FE3F3A0E28BEDD1>, <2 x double> %i.ex) ; 2 uses
  %i.fa = shufflevector <2 x double> %i.cx, <2 x double> %i.ev, <2 x i32> <i32 0, i32 3>
  %i.fb = shufflevector <2 x double> %i.cx, <2 x double> %i.ez, <2 x i32> <i32 1, i32 2>
  %i.fc = fsub <2 x double> %i.fa, %i.fb          ; 2 uses
  %i.fd = extractelement <2 x double> %i.fc, i64 0
  store double %i.fd, ptr %i.da, align 8, !tbaa !13
  store double %i.eh, ptr %i.dd, align 8, !tbaa !13
  store double %i.ei, ptr %i.dg, align 8, !tbaa !13
  store double %i.ew, ptr %i.eb, align 8, !tbaa !13
  %i.fe = extractelement <2 x double> %i.fc, i64 1
  store double %i.fe, ptr %i.eo, align 8, !tbaa !13
  %i.ff = fmul double %i.ej, f0x3FCC7B90E3024582
  %i.fg = extractelement <2 x double> %i.et, i64 0
  %i.fh = getelementptr inbounds nuw i8, ptr %.0172177, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !11
  %i.fj = getelementptr inbounds [8 x i8], ptr %.0169180, i64 %i.fi
  %i.fk = extractelement <2 x double> %i.et, i64 1
  %i.fl = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = insertelement <2 x double> %i.et, double %i.ff, i64 0
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> <double f0x3FECD4BCA9CB5C71, double f0x3FE3F3A0E28BEDD1>, <2 x double> %i.fm) ; 2 uses
  %shift190 = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop191 = fsub <2 x double> %shift190, %i.fn
  %i.fo = extractelement <2 x double> %foldExtExtBinop191, i64 0
  store double %i.fo, ptr %i.fj, align 8, !tbaa !13
  %i.fp = fmul double %i.ej, f0x3FECD4BCA9CB5C71
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.ec, double f0x3FCC7B90E3024582, double %i.fp)
  %i.fr = extractelement <2 x double> %i.fn, i64 1
  %i.fs = fsub double %i.fr, %i.fq
  %i.ft = getelementptr inbounds nuw i8, ptr %.0172177, i64 32
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !11
  %i.fv = getelementptr inbounds [8 x i8], ptr %.0169180, i64 %i.fu
  store double %i.fs, ptr %i.fv, align 8, !tbaa !13
  %i.fw = fadd double %i.fk, %i.ej
  %i.fx = fadd double %i.fw, %i.fg
  %i.fy = fadd double %i.fx, %i.ec
  store double %i.fy, ptr %.0169180, align 8, !tbaa !13
  %i.fz = add nsw i64 %.0174175, -1
  %i.ga = getelementptr inbounds [8 x i8], ptr %.0182, i64 %8
  %i.gb = getelementptr inbounds [8 x i8], ptr %.0168181, i64 %8
  %i.gc = getelementptr inbounds [8 x i8], ptr %.0169180, i64 %9
  %i.gd = getelementptr inbounds [8 x i8], ptr %.0170179, i64 %9
  %i.ge = getelementptr inbounds [8 x i8], ptr %.0171178, i64 %i.b
  %i.gf = getelementptr inbounds [8 x i8], ptr %.0172177, i64 %i.b
  %i.gg = getelementptr inbounds [8 x i8], ptr %.0173176, i64 %i.b
  %i.gh = icmp samesign ugt i64 %.0174175, 1
  br i1 %i.gh, label %bb.b, label %._crit_edge, !llvm.loop !9

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
