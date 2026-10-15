Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cbIII_16?download=true
begin_hunk_0_@r2cbIII_16:bb.a
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0219 = phi ptr [ %0, %.lr.ph ], [ %i.gl, %bb.b ] ; 9 uses
  %.0205218 = phi ptr [ %1, %.lr.ph ], [ %i.gm, %bb.b ] ; 9 uses
  %.0206217 = phi ptr [ %2, %.lr.ph ], [ %i.gn, %bb.b ] ; 9 uses
  %.0207216 = phi ptr [ %3, %.lr.ph ], [ %i.go, %bb.b ] ; 9 uses
  %.0208215 = phi ptr [ %4, %.lr.ph ], [ %i.gp, %bb.b ] ; 8 uses
  %.0209214 = phi ptr [ %5, %.lr.ph ], [ %i.gq, %bb.b ] ; 8 uses
  %.0210213 = phi ptr [ %6, %.lr.ph ], [ %i.gr, %bb.b ] ; 8 uses
  %.0211212 = phi i64 [ %7, %.lr.ph ], [ %i.gk, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.0206217, align 8, !tbaa !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0209214, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.h = fadd double %i.c, %i.g                   ; 2 uses
  %i.i = load double, ptr %.0207216, align 8, !tbaa !13 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0210213, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %i.l = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %i.k
  %i.m = load double, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  %i.n = fsub double %i.m, %i.i                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0209214, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %i.q = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !13 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0209214, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !13 ; 2 uses
  %i.w = fadd double %i.r, %i.v                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0210213, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0210213, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.af = fsub double %i.aa, %i.ae                ; 2 uses
  %i.ag = fadd double %i.h, %i.w                  ; 2 uses
  %i.ah = fadd double %i.n, %i.af                 ; 2 uses
  %i.ai = fsub double %i.n, %i.af                 ; 2 uses
  %i.aj = fsub double %i.h, %i.w                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0209214, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !11
  %i.am = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !13 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0209214, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11
  %i.aq = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !13 ; 2 uses
  %i.as = fadd double %i.an, %i.ar                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0210213, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11
  %i.av = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !13 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0210213, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11
  %i.az = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !13 ; 2 uses
  %i.bb = fsub double %i.aw, %i.ba                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0209214, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11
  %i.be = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !13 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0209214, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %i.bk = fadd double %i.bf, %i.bj                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0210213, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !11
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !13 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0210213, i64 48
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !11
  %i.br = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !13 ; 2 uses
  %i.bt = fsub double %i.bs, %i.bo                ; 2 uses
  %i.bu = fadd double %i.as, %i.bk                ; 2 uses
  %i.bv = fsub double %i.as, %i.bk                ; 2 uses
  %i.bw = fadd double %i.bb, %i.bt                ; 2 uses
  %i.bx = fsub double %i.bt, %i.bb                ; 2 uses
  %i.by = fadd double %i.ag, %i.bu
  %i.bz = fmul double %i.by, 2.000000e+00
  store double %i.bz, ptr %.0219, align 8, !tbaa !13
  %i.ca = fsub double %i.ai, %i.bw
  %i.cb = fmul double %i.ca, 2.000000e+00
  %i.cc = getelementptr inbounds nuw i8, ptr %.0208215, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.0219, i64 %i.cd
  store double %i.cb, ptr %i.ce, align 8, !tbaa !13
  %i.cf = fadd double %i.aj, %i.bx                ; 2 uses
  %i.cg = fsub double %i.ah, %i.bv                ; 2 uses
  %i.ch = fmul double %i.cg, f0x3FE87DE2A6AEA963
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.cf, double f0x3FFD906BCF328D46, double %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %.0208215, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %.0219, i64 %i.ck
  store double %i.ci, ptr %i.cl, align 8, !tbaa !13
  %i.cm = fmul double %i.cf, f0xBFE87DE2A6AEA963
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cg, double f0x3FFD906BCF328D46, double %i.cm)
  %i.co = getelementptr inbounds nuw i8, ptr %.0208215, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !11 ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %.0219, i64 %i.cp
  store double %i.cn, ptr %i.cq, align 8, !tbaa !13
  %i.cr = fsub double %i.ag, %i.bu                ; 2 uses
  %i.cs = fadd double %i.ai, %i.bw                ; 2 uses
  %i.ct = fadd double %i.cr, %i.cs
  %i.cu = fmul double %i.ct, f0x3FF6A09E667F3BCD
  %i.cv = getelementptr inbounds nuw i8, ptr %.0208215, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !11 ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0219, i64 %i.cw
  store double %i.cu, ptr %i.cx, align 8, !tbaa !13
  %i.cy = fsub double %i.cs, %i.cr
  %i.cz = fmul double %i.cy, f0x3FF6A09E667F3BCD
  %i.da = getelementptr inbounds nuw i8, ptr %.0208215, i64 48
  %i.db = load i64, ptr %i.da, align 8, !tbaa !11 ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %.0219, i64 %i.db
  store double %i.cz, ptr %i.dc, align 8, !tbaa !13
  %i.dd = fsub double %i.aj, %i.bx                ; 2 uses
  %i.de = fadd double %i.ah, %i.bv                ; 2 uses
  %i.df = fmul double %i.de, f0x3FFD906BCF328D46
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.dd, double f0x3FE87DE2A6AEA963, double %i.df)
  %i.dh = getelementptr inbounds nuw i8, ptr %.0208215, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !11 ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %.0219, i64 %i.di
  store double %i.dg, ptr %i.dj, align 8, !tbaa !13
  %i.dk = fmul double %i.dd, f0xBFFD906BCF328D46
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.de, double f0x3FE87DE2A6AEA963, double %i.dk)
  %i.dm = getelementptr inbounds nuw i8, ptr %.0208215, i64 56
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !11 ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %.0219, i64 %i.dn
  store double %i.dl, ptr %i.do, align 8, !tbaa !13
  %i.dp = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %i.ck
  %i.dq = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %i.dn
  %i.dr = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %i.cp
  %i.ds = insertelement <2 x double> poison, double %i.r, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.c, i64 1
  %i.du = insertelement <2 x double> poison, double %i.v, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.g, i64 1
  %i.dw = fsub <2 x double> %i.dt, %i.dv          ; 2 uses
  %i.dx = insertelement <2 x double> poison, double %i.i, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %i.aa, i64 1
  %i.dz = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.ae, i64 1
  %i.eb = fadd <2 x double> %i.dy, %i.ea          ; 2 uses
  %i.ec = fsub <2 x double> %i.dw, %i.eb          ; 2 uses
  %i.ed = fadd <2 x double> %i.dw, %i.eb          ; 2 uses
  %i.ee = shufflevector <2 x double> %i.ec, <2 x double> %i.ed, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ef = insertelement <2 x double> poison, double %i.an, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.bf, i64 1
  %i.eh = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.bj, i64 1
  %i.ej = fsub <2 x double> %i.eg, %i.ei          ; 2 uses
  %i.ek = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.bo, i64 1
  %i.em = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.bs, i64 1
  %i.eo = fadd <2 x double> %i.el, %i.en          ; 2 uses
  %i.ep = fsub <2 x double> %i.ej, %i.eo          ; 2 uses
  %i.eq = fadd <2 x double> %i.ej, %i.eo          ; 2 uses
  %i.er = shufflevector <2 x double> %i.ep, <2 x double> %i.eq, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.es = shufflevector <2 x double> %i.ep, <2 x double> %i.eq, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.et = fsub <2 x double> %i.er, %i.es
  %i.eu = fadd <2 x double> %i.er, %i.es
  %i.ev = shufflevector <2 x double> %i.et, <2 x double> %i.eu, <2 x i32> <i32 0, i32 3>
  %i.ew = fmul <2 x double> %i.ev, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.ex = fsub <2 x double> %i.ee, %i.ew          ; 4 uses
  %i.ey = fadd <2 x double> %i.ee, %i.ew          ; 4 uses
  %i.ez = shufflevector <2 x double> %i.ex, <2 x double> %i.ey, <2 x i32> <i32 0, i32 3>
  %i.fa = extractelement <2 x double> %i.ex, i64 0
  %i.fb = fmul double %i.fa, f0x3FF1C73B39AE68C8
  %i.fc = extractelement <2 x double> %i.ex, i64 1
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double f0x3FFA9B66290EA1A3, double %i.fb)
  store double %i.fd, ptr %i.dp, align 8, !tbaa !13
  %i.fe = extractelement <2 x double> %i.ey, i64 1
  %i.ff = fmul double %i.fe, f0xBFFF6297CFF75CB0
  %i.fg = extractelement <2 x double> %i.ey, i64 0
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fg, double f0x3FD8F8B83C69A60B, double %i.ff)
  store double %i.fh, ptr %i.dq, align 8, !tbaa !13
  %i.fi = shufflevector <2 x double> %i.ex, <2 x double> %i.ey, <2 x i32> <i32 1, i32 2>
  %i.fj = fmul <2 x double> %i.fi, <double f0xBFF1C73B39AE68C8, double f0x3FFF6297CFF75CB0>
  %i.fk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> <double f0x3FFA9B66290EA1A3, double f0x3FD8F8B83C69A60B>, <2 x double> %i.fj) ; 2 uses
  %i.fl = extractelement <2 x double> %i.fk, i64 0
  store double %i.fl, ptr %i.dr, align 8, !tbaa !13
  %i.fm = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %i.di
  %i.fn = extractelement <2 x double> %i.fk, i64 1
  store double %i.fn, ptr %i.fm, align 8, !tbaa !13
  %i.fo = shufflevector <2 x double> %i.ec, <2 x double> %i.ed, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.fp = fadd <2 x double> %i.es, %i.er
  %i.fq = fsub <2 x double> %i.es, %i.er
  %i.fr = shufflevector <2 x double> %i.fp, <2 x double> %i.fq, <2 x i32> <i32 0, i32 3>
  %i.fs = fmul <2 x double> %i.fr, splat (double f0x3FE6A09E667F3BCD) ; 4 uses
  %10 = fadd <2 x double> %i.fo, %i.fs            ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.fo, %i.fs ; 2 uses
  %11 = shufflevector <2 x double> %10, <2 x double> %foldExtExtBinop, <2 x i32> <i32 1, i32 2>
  %i.ft = fadd <2 x double> %i.fs, %i.fo          ; 2 uses
  %i.fu = fsub <2 x double> %i.fs, %i.fo          ; 2 uses
  %i.fv = shufflevector <2 x double> %i.ft, <2 x double> %i.fu, <2 x i32> <i32 0, i32 3>
  %i.fw = fmul <2 x double> %11, <double f0xBFD8F8B83C69A60B, double f0xBFFA9B66290EA1A3>
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> <double f0x3FFF6297CFF75CB0, double f0x3FF1C73B39AE68C8>, <2 x double> %i.fw) ; 2 uses
  %i.fy = extractelement <2 x double> %i.fx, i64 0
  store double %i.fy, ptr %.0205218, align 8, !tbaa !13
  %i.fz = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %i.db
  %i.ga = extractelement <2 x double> %i.fx, i64 1
  store double %i.ga, ptr %i.fz, align 8, !tbaa !13
  %i.gb = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %i.cd
  %i.gc = shufflevector <2 x double> %10, <2 x double> %i.fu, <2 x i32> <i32 1, i32 3>
  %i.gd = fmul <2 x double> %i.gc, <double f0x3FFF6297CFF75CB0, double f0x3FFA9B66290EA1A3>
  %i.ge = shufflevector <2 x double> %i.ft, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> <double f0x3FD8F8B83C69A60B, double f0x3FF1C73B39AE68C8>, <2 x double> %i.gd) ; 2 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 0
  %i.gh = fneg double %i.gg
  store double %i.gh, ptr %i.gb, align 8, !tbaa !13
  %i.gi = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %i.cw
  %i.gj = extractelement <2 x double> %i.gf, i64 1
  store double %i.gj, ptr %i.gi, align 8, !tbaa !13
  %i.gk = add nsw i64 %.0211212, -1
  %i.gl = getelementptr inbounds [8 x i8], ptr %.0219, i64 %9
  %i.gm = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %9
  %i.gn = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %8
  %i.go = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %8
  %i.gp = getelementptr inbounds [8 x i8], ptr %.0208215, i64 %i.b
  %i.gq = getelementptr inbounds [8 x i8], ptr %.0209214, i64 %i.b
  %i.gr = getelementptr inbounds [8 x i8], ptr %.0210213, i64 %i.b
  %i.gs = icmp samesign ugt i64 %.0211212, 1
  br i1 %i.gs, label %bb.b, label %._crit_edge, !llvm.loop !9

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
