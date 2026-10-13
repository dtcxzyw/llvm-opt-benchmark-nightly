Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cb_15?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 15, ptr @.str, %struct.opcnt { double 4.700000e+01, double 1.400000e+01, double 1.700000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cb_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [8 x i8] c"r2cb_15\00", align 1
@fftw_rdft_r2cb_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cb_15(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cb_15, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cb_15(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0213 = phi ptr [ %0, %.lr.ph ], [ %i.gh, %bb.b ] ; 9 uses
  %.0199212 = phi ptr [ %1, %.lr.ph ], [ %i.gi, %bb.b ] ; 8 uses
  %.0200211 = phi ptr [ %2, %.lr.ph ], [ %i.gj, %bb.b ] ; 9 uses
  %.0201210 = phi ptr [ %3, %.lr.ph ], [ %i.gk, %bb.b ] ; 8 uses
  %.0202209 = phi ptr [ %4, %.lr.ph ], [ %i.gl, %bb.b ] ; 8 uses
  %.0203208 = phi ptr [ %5, %.lr.ph ], [ %i.gm, %bb.b ] ; 8 uses
  %.0204207 = phi ptr [ %6, %.lr.ph ], [ %i.gn, %bb.b ] ; 8 uses
  %.0205206 = phi i64 [ %7, %.lr.ph ], [ %i.gg, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0204207, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %.0201210, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !13
  %i.g = load double, ptr %.0200211, align 8, !tbaa !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0203208, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds [8 x i8], ptr %.0200211, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.l = fsub double %i.g, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0203208, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11
  %i.o = getelementptr inbounds [8 x i8], ptr %.0200211, i64 %i.n
  %10 = load double, ptr %i.o, align 8, !tbaa !13 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0204207, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds [8 x i8], ptr %.0201210, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0203208, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr inbounds [8 x i8], ptr %.0200211, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !13 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0204207, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds [8 x i8], ptr %.0201210, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0203208, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr inbounds [8 x i8], ptr %.0200211, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0203208, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ah = getelementptr inbounds [8 x i8], ptr %.0200211, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !13 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0203208, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr inbounds [8 x i8], ptr %.0200211, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !13 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0203208, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0200211, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !13 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0204207, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr inbounds [8 x i8], ptr %.0201210, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !13 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0204207, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11
  %i.ax = getelementptr inbounds [8 x i8], ptr %.0201210, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0204207, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds [8 x i8], ptr %.0201210, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !13 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0204207, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11
  %i.bf = getelementptr inbounds [8 x i8], ptr %.0201210, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !13 ; 2 uses
  %11 = insertelement <2 x double> poison, double %i.k, i64 0
  %i.bh = insertelement <2 x double> poison, double %i.g, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.s, i64 1
  %i.bj = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %10, i64 1
  %i.bl = fadd double %i.bc, %i.bg                ; 2 uses
  %i.bm = fsub double %i.s, %i.bl
  %i.bn = insertelement <2 x double> %11, double %i.bl, i64 1
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> <double 2.000000e+00, double 5.000000e-01>, <2 x double> %i.bi) ; 3 uses
  %i.bp = fsub double %i.au, %i.ay                ; 2 uses
  %i.bq = fsub double %i.aa, %i.bp
  %i.br = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bs = extractelement <2 x double> %i.bo, i64 0
  %i.bt = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x double> %i.bu, <double f0xBFFE6F0E134454FF, double f0x3FF2CF2304755A5E>
  %i.bw = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> <double f0x3FF2CF2304755A5E, double f0x3FFE6F0E134454FF>, <2 x double> %i.bv) ; 2 uses
  %i.bz = extractelement <2 x double> %i.by, i64 0 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0202209, i64 48
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !11 ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %.0213, i64 %i.cb
  %i.cd = extractelement <2 x double> %i.by, i64 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0202209, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.0199212, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.0202209, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !11 ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %.0199212, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.0202209, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !11 ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %.0213, i64 %i.cl
  %i.cn = fadd double %i.am, %i.aq                ; 2 uses
  %i.co = fadd double %i.au, %i.ay
  %i.cp = fsub double %i.bc, %i.bg
  %i.cq = fadd double %i.ae, %i.ai                ; 2 uses
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cn, double -5.000000e-01, double %i.w) ; 2 uses
  %i.cs = fadd double %10, %i.cq                  ; 2 uses
  %i.ct = fadd double %i.w, %i.cn                 ; 2 uses
  %i.cu = fadd double %i.cs, %i.ct                ; 2 uses
  %i.cv = insertelement <2 x double> %i.br, double %i.cq, i64 1
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> <double 5.000000e-01, double -5.000000e-01>, <2 x double> %i.bk) ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 1 ; 2 uses
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cu, double 2.000000e+00, double %i.bs)
  store double %i.cy, ptr %.0213, align 8, !tbaa !13
  %i.cz = fsub double %i.cs, %i.ct
  %i.da = fmul double %i.cz, f0x3FF1E3779B97F4A8  ; 2 uses
  %i.db = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.dc = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.am, i64 1
  %i.de = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.aq, i64 1
  %i.dg = fsub <2 x double> %i.dd, %i.df
  %i.dh = fmul <2 x double> %i.dg, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.di = shufflevector <2 x double> %i.bo, <2 x double> %i.cw, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.dj = fsub <2 x double> %i.di, %i.dh          ; 2 uses
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = fmul <2 x double> %i.dk, <double f0xBFFE6F0E134454FF, double f0x3FF2CF2304755A5E>
  %i.dm = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> <double f0x3FF2CF2304755A5E, double f0x3FFE6F0E134454FF>, <2 x double> %i.dl) ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0202209, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !11 ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %.0199212, i64 %i.dp
  %i.dr = extractelement <2 x double> %i.dn, i64 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0202209, i64 40
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !11 ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.0199212, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.0202209, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !11
  %i.dx = getelementptr inbounds [8 x i8], ptr %.0213, i64 %i.dw
  %i.dy = extractelement <2 x double> %i.dn, i64 0 ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %.0213, i64 %i.ci
  %i.ea = getelementptr inbounds [8 x i8], ptr %.0213, i64 %i.cf
  %i.eb = fmul double %i.f, f0x3FFBB67AE8584CAA   ; 2 uses
  %i.ec = fsub double %i.l, %i.eb                 ; 2 uses
  %i.ed = fadd double %i.eb, %i.l                 ; 2 uses
  %i.ee = fmul double %i.co, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.ef = fmul double %i.cp, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.eg = fsub double %i.cr, %i.ee                ; 2 uses
  %i.eh = fadd double %i.cr, %i.ee                ; 2 uses
  %i.ei = fsub double %i.cx, %i.ef                ; 2 uses
  %i.ej = fadd double %i.cx, %i.ef                ; 2 uses
  %i.ek = fadd double %i.eg, %i.ei                ; 2 uses
  %i.el = insertelement <2 x double> %i.db, double %i.ek, i64 1
  %i.em = insertelement <2 x double> %i.bo, double %i.ed, i64 1
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> splat (double -5.000000e-01), <2 x double> %i.em) ; 2 uses
  %i.eo = extractelement <2 x double> %i.en, i64 0 ; 2 uses
  %i.ep = fsub double %i.eo, %i.da                ; 2 uses
  %i.eq = fadd double %i.da, %i.eo                ; 2 uses
  %i.er = fsub double %i.ep, %i.bz
  store double %i.er, ptr %i.cc, align 8, !tbaa !13
  %i.es = fadd double %i.eq, %i.cd
  store double %i.es, ptr %i.cg, align 8, !tbaa !13
  %i.et = fadd double %i.ep, %i.bz
  store double %i.et, ptr %i.cj, align 8, !tbaa !13
  %i.eu = fsub double %i.eq, %i.cd
  store double %i.eu, ptr %i.cm, align 8, !tbaa !13
  %i.ev = fsub double %i.ei, %i.eg
  %i.ew = fmul double %i.ev, f0x3FF1E3779B97F4A8  ; 2 uses
  %i.ex = fadd double %i.eh, %i.ej                ; 2 uses
  %i.ey = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.ez = insertelement <2 x double> %i.ey, double %i.ex, i64 1
  %i.fa = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.ec, i64 1
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> <double 2.000000e+00, double -5.000000e-01>, <2 x double> %i.fb) ; 2 uses
  %i.fd = extractelement <2 x double> %i.fc, i64 0
  store double %i.fd, ptr %i.dq, align 8, !tbaa !13
  %i.fe = extractelement <2 x double> %i.en, i64 1 ; 2 uses
  %i.ff = fadd double %i.ew, %i.fe                ; 2 uses
  %i.fg = fsub double %i.ff, %i.dr
  store double %i.fg, ptr %i.du, align 8, !tbaa !13
  %i.fh = fadd double %i.dr, %i.ff
  store double %i.fh, ptr %i.dx, align 8, !tbaa !13
  %i.fi = fsub double %i.fe, %i.ew                ; 2 uses
  %i.fj = fsub double %i.fi, %i.dy
  store double %i.fj, ptr %i.dz, align 8, !tbaa !13
  %i.fk = fadd double %i.dy, %i.fi
  store double %i.fk, ptr %i.ea, align 8, !tbaa !13
  %i.fl = fsub double %i.ej, %i.eh
  %i.fm = fmul double %i.fl, f0x3FF1E3779B97F4A8  ; 2 uses
  %i.fn = fadd <2 x double> %i.dh, %i.di          ; 2 uses
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fp = fmul <2 x double> %i.fo, <double f0xBFFE6F0E134454FF, double f0x3FF2CF2304755A5E>
  %i.fq = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> <double f0x3FF2CF2304755A5E, double f0x3FFE6F0E134454FF>, <2 x double> %i.fp) ; 2 uses
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.ex, double 2.000000e+00, double %i.ec)
  %i.ft = getelementptr inbounds [8 x i8], ptr %.0213, i64 %i.dt
  store double %i.fs, ptr %i.ft, align 8, !tbaa !13
  %i.fu = extractelement <2 x double> %i.fc, i64 1 ; 2 uses
  %i.fv = fadd double %i.fm, %i.fu                ; 2 uses
  %i.fw = extractelement <2 x double> %i.fr, i64 1 ; 2 uses
  %i.fx = fsub double %i.fv, %i.fw
  store double %i.fx, ptr %.0199212, align 8, !tbaa !13
  %i.fy = fadd double %i.fw, %i.fv
  %i.fz = getelementptr inbounds [8 x i8], ptr %.0213, i64 %i.dp
  store double %i.fy, ptr %i.fz, align 8, !tbaa !13
  %i.ga = fsub double %i.fu, %i.fm                ; 2 uses
  %i.gb = extractelement <2 x double> %i.fr, i64 0 ; 2 uses
  %i.gc = fsub double %i.ga, %i.gb
  %i.gd = getelementptr inbounds [8 x i8], ptr %.0199212, i64 %i.cl
  store double %i.gc, ptr %i.gd, align 8, !tbaa !13
  %i.ge = fadd double %i.gb, %i.ga
  %i.gf = getelementptr inbounds [8 x i8], ptr %.0199212, i64 %i.cb
  store double %i.ge, ptr %i.gf, align 8, !tbaa !13
  %i.gg = add nsw i64 %.0205206, -1
  %i.gh = getelementptr inbounds [8 x i8], ptr %.0213, i64 %9
  %i.gi = getelementptr inbounds [8 x i8], ptr %.0199212, i64 %9
  %i.gj = getelementptr inbounds [8 x i8], ptr %.0200211, i64 %8
  %i.gk = getelementptr inbounds [8 x i8], ptr %.0201210, i64 %8
  %i.gl = getelementptr inbounds [8 x i8], ptr %.0202209, i64 %i.b
  %i.gm = getelementptr inbounds [8 x i8], ptr %.0203208, i64 %i.b
  %i.gn = getelementptr inbounds [8 x i8], ptr %.0204207, i64 %i.b
  %i.go = icmp samesign ugt i64 %.0205206, 1
  br i1 %i.go, label %bb.b, label %._crit_edge, !llvm.loop !9

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
