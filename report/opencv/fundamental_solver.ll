Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fundamental_solver?download=true
inline.NumInlined: 1018
inline.NumDeleted: 484
loop-unroll.NumCompletelyUnrolled: 116
loop-unroll.NumUnrolled: 116
begin_hunk_0_@_ZNK2cv4usac32FundamentalMinimalSolver7ptsImpl8estimateERKSt6vectorIiSaIiEERS2_INS_3MatESaIS7_EE:bb.a
  %i.bo = shl nsw i32 %i.bn, 2
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bp ; 3 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !65
  %i.bt = getelementptr i8, ptr %i.bq, i64 12
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !65 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.bw = load <2 x float>, ptr %i.bq, align 4, !tbaa !65 ; 3 uses
  %i.bx = insertelement <2 x float> poison, float %i.bs, i64 0 ; 2 uses
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.bw, %i.by
  %i.ca = fpext <2 x float> %i.bz to <2 x double>
  store <2 x double> %i.ca, ptr %i.bl, align 8, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.ce = fpext <2 x float> %i.bw to <2 x double>
  store <2 x double> %i.ce, ptr %i.cc, align 8, !tbaa !67
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store double 1.000000e+00, ptr %i.cd, align 8, !tbaa !67
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !52
  %i.ci = shl nsw i32 %i.ch, 2
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.cj ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !65
  %i.cn = getelementptr i8, ptr %i.ck, i64 12
  %i.co = load float, ptr %i.cn, align 4, !tbaa !65 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.cq = load <2 x float>, ptr %i.ck, align 4, !tbaa !65 ; 3 uses
  %i.cr = insertelement <2 x float> poison, float %i.cm, i64 0 ; 2 uses
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.cq, %i.cs
  %i.cu = fpext <2 x float> %i.ct to <2 x double>
  store <2 x double> %i.cu, ptr %i.cf, align 8, !tbaa !67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.cw = shufflevector <2 x float> %i.bw, <2 x float> %i.cq, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cx = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.cy = insertelement <4 x float> %i.cx, float %i.co, i64 1
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.da = fmul <4 x float> %i.cw, %i.cz           ; 4 uses
  %i.db = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> %i.da, <2 x i32> <i32 0, i32 4>
  %i.dd = fpext <2 x float> %i.dc to <2 x double>
  store <2 x double> %i.dd, ptr %i.bv, align 8, !tbaa !67
  %i.de = shufflevector <4 x float> %i.da, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.df = insertelement <2 x float> %i.de, float %i.bu, i64 1
  %i.dg = fpext <2 x float> %i.df to <2 x double>
  store <2 x double> %i.dg, ptr %i.cb, align 8, !tbaa !67
  %i.dh = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> %i.da, <2 x i32> <i32 0, i32 5>
  %i.dj = fpext <2 x float> %i.di to <2 x double>
  store <2 x double> %i.dj, ptr %i.cp, align 8, !tbaa !67
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.dl = shufflevector <4 x float> %i.da, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.dm = insertelement <2 x float> %i.dl, float %i.co, i64 1
  %i.dn = fpext <2 x float> %i.dm to <2 x double>
  store <2 x double> %i.dn, ptr %i.cv, align 8, !tbaa !67
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.dp = fpext <2 x float> %i.cq to <2 x double>
  store <2 x double> %i.dp, ptr %i.dk, align 8, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store double 1.000000e+00, ptr %i.do, align 8, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !52
  %i.dt = shl nsw i32 %i.ds, 2
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.du ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !65
  %i.dy = getelementptr i8, ptr %i.dv, i64 12
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !65 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.eb = load <2 x float>, ptr %i.dv, align 4, !tbaa !65 ; 3 uses
  %i.ec = insertelement <2 x float> poison, float %i.dx, i64 0 ; 2 uses
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x float> %i.eb, %i.ed
  %i.ef = fpext <2 x float> %i.ee to <2 x double>
  store <2 x double> %i.ef, ptr %i.dq, align 8, !tbaa !67
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.ej = fpext <2 x float> %i.eb to <2 x double>
  store <2 x double> %i.ej, ptr %i.eh, align 8, !tbaa !67
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store double 1.000000e+00, ptr %i.ei, align 8, !tbaa !67
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.em = load i32, ptr %i.el, align 4, !tbaa !52
  %i.en = shl nsw i32 %i.em, 2
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.eo ; 3 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  %i.er = load float, ptr %i.eq, align 4, !tbaa !65
  %i.es = getelementptr i8, ptr %i.ep, i64 12
  %i.et = load float, ptr %i.es, align 4, !tbaa !65 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.ev = load <2 x float>, ptr %i.ep, align 4, !tbaa !65 ; 3 uses
  %i.ew = insertelement <2 x float> poison, float %i.er, i64 0 ; 2 uses
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x float> %i.ev, %i.ex
  %i.ez = fpext <2 x float> %i.ey to <2 x double>
  store <2 x double> %i.ez, ptr %i.ek, align 8, !tbaa !67
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.fb = shufflevector <2 x float> %i.eb, <2 x float> %i.ev, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.fc = insertelement <4 x float> poison, float %i.dz, i64 0
  %i.fd = insertelement <4 x float> %i.fc, float %i.et, i64 1
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ff = fmul <4 x float> %i.fb, %i.fe           ; 4 uses
  %i.fg = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> %i.ff, <2 x i32> <i32 0, i32 4>
  %i.fi = fpext <2 x float> %i.fh to <2 x double>
  store <2 x double> %i.fi, ptr %i.ea, align 8, !tbaa !67
  %i.fj = shufflevector <4 x float> %i.ff, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.fk = insertelement <2 x float> %i.fj, float %i.dz, i64 1
  %i.fl = fpext <2 x float> %i.fk to <2 x double>
  store <2 x double> %i.fl, ptr %i.eg, align 8, !tbaa !67
  %i.fm = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> %i.ff, <2 x i32> <i32 0, i32 5>
  %i.fo = fpext <2 x float> %i.fn to <2 x double>
  store <2 x double> %i.fo, ptr %i.eu, align 8, !tbaa !67
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.fq = shufflevector <4 x float> %i.ff, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.fr = insertelement <2 x float> %i.fq, float %i.et, i64 1
  %i.fs = fpext <2 x float> %i.fr to <2 x double>
  store <2 x double> %i.fs, ptr %i.fa, align 8, !tbaa !67
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.fu = fpext <2 x float> %i.ev to <2 x double>
  store <2 x double> %i.fu, ptr %i.fp, align 8, !tbaa !67
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  store double 1.000000e+00, ptr %i.ft, align 8, !tbaa !67
  %i.fw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !52
  %i.fy = shl nsw i32 %i.fx, 2
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.fz ; 3 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 8
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !65
  %i.gd = getelementptr i8, ptr %i.ga, i64 12
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !65 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.gg = load <2 x float>, ptr %i.ga, align 4, !tbaa !65 ; 3 uses
  %i.gh = insertelement <2 x float> poison, float %i.gc, i64 0 ; 2 uses
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = fmul <2 x float> %i.gg, %i.gi
  %i.gk = fpext <2 x float> %i.gj to <2 x double>
  store <2 x double> %i.gk, ptr %i.fv, align 8, !tbaa !67
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.gm = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = fmul <2 x float> %i.gg, %i.gn           ; 2 uses
  %i.gp = shufflevector <2 x float> %i.gh, <2 x float> %i.go, <2 x i32> <i32 0, i32 2>
  %i.gq = fpext <2 x float> %i.gp to <2 x double>
  store <2 x double> %i.gq, ptr %i.gf, align 8, !tbaa !67
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.gs = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gt = insertelement <2 x float> %i.gs, float %i.ge, i64 1
  %i.gu = fpext <2 x float> %i.gt to <2 x double>
  store <2 x double> %i.gu, ptr %i.gl, align 8, !tbaa !67
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.gw = fpext <2 x float> %i.gg to <2 x double>
  store <2 x double> %i.gw, ptr %i.gr, align 8, !tbaa !67
  store double 1.000000e+00, ptr %i.gv, align 8, !tbaa !67
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !28, !range !68, !noundef !69
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ha = invoke noundef zeroext i1 @_ZN2cv4usac4Math24eliminateUpperTriangularERSt6vectorIdSaIdEEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 7, i32 noundef 9)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %.pre294 = load ptr, ptr %3, align 8, !tbaa !57 ; 32 uses
  br i1 %i.ha, label %.critedge, label %.loopexit166

bb.d:                                             ; preds = %bb.b
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.critedge.1:                                      ; preds = %.critedge
  %i.hc = extractelement <2 x double> %i.oe, i64 0
  %i.hd = getelementptr inbounds nuw i8, ptr %.pre294, i64 352
  %i.he = getelementptr inbounds nuw i8, ptr %.pre294, i64 344
  %i.hf = getelementptr inbounds nuw i8, ptr %.pre294, i64 328
  %i.hg = getelementptr inbounds nuw i8, ptr %.pre294, i64 336
  %i.hh = load double, ptr %i.hd, align 8, !tbaa !67 ; 2 uses
  %i.hi = fneg double %i.hh
  %i.hj = load double, ptr %i.he, align 8, !tbaa !67
  %i.hk = load double, ptr %i.hf, align 8, !tbaa !67
  %i.hl = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.hj, i64 1
  %i.hn = fneg <2 x double> %i.hm                 ; 3 uses
  %i.ho = load double, ptr %i.hg, align 8, !tbaa !67 ; 2 uses
  %i.hp = fneg double %i.ho
  %i.hq = extractelement <2 x double> %i.hn, i64 0
  %i.hr = call double @llvm.fmuladd.f64(double %i.hq, double %i.ox, double 0.000000e+00)
  %i.hs = call double @llvm.fmuladd.f64(double %i.hp, double %i.hc, double %i.hr)
  %i.ht = insertelement <2 x double> %31, double 0.000000e+00, i64 1 ; 4 uses
  %i.hu = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.hs, i64 1
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.ht, <2 x double> %i.hu)
  %i.hw = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hx = insertelement <2 x double> %i.hw, double %i.hh, i64 1
  %i.hy = fsub <2 x double> %i.hv, %i.hx          ; 2 uses
  %i.hz = extractelement <2 x double> %i.hy, i64 0
  %i.ia = extractelement <2 x double> %i.hn, i64 1
  %i.ib = call double @llvm.fmuladd.f64(double %i.ia, double %i.of, double %i.hz)
  %i.ic = call double @llvm.fmuladd.f64(double %i.hi, double 0.000000e+00, double %i.ib)
  %i.id = getelementptr inbounds nuw i8, ptr %.pre294, i64 320
  %i.ie = load double, ptr %i.id, align 8, !tbaa !67 ; 2 uses
  %i.if = extractelement <2 x double> %i.hy, i64 1
  %i.ig = fdiv double %i.if, %i.ie                ; 5 uses
  %i.ih = fdiv double %i.ic, %i.ie
  %13 = insertelement <2 x double> poison, double %i.ih, i64 0
  %.fr = freeze <2 x double> %13                  ; 2 uses
  %14 = shufflevector <2 x double> %.fr, <2 x double> %31, <2 x i32> <i32 0, i32 2> ; 2 uses
  %15 = extractelement <2 x double> %.fr, i64 0
  %or.cond.1 = fcmp uno double %i.ig, %15
  br i1 %or.cond.1, label %.loopexit166.thread, label %.critedge.2

.critedge.2:                                      ; preds = %.critedge.1
  %i.ii = getelementptr inbounds nuw i8, ptr %.pre294, i64 280
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !67 ; 2 uses
  %i.ik = fneg double %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %.pre294, i64 248
  %i.im = load <4 x double>, ptr %i.il, align 8, !tbaa !67 ; 3 uses
  %i.in = fneg <4 x double> %i.im                 ; 3 uses
  %i.io = shufflevector <4 x double> %i.in, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ip = fneg <4 x double> %i.im                 ; 2 uses
  %i.iq = shufflevector <4 x double> %i.ip, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.ir = extractelement <4 x double> %i.ip, i64 0
  %i.is = call double @llvm.fmuladd.f64(double %i.ir, double %i.ig, double 0.000000e+00)
  %i.it = extractelement <4 x double> %i.in, i64 1
  %i.iu = call double @llvm.fmuladd.f64(double %i.it, double %i.ox, double %i.is)
  %16 = shufflevector <2 x double> %14, <2 x double> %i.oe, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.iv = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.iu, i64 1
  %i.iw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iq, <2 x double> %16, <2 x double> %i.iv)
  %i.ix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> %i.ht, <2 x double> %i.iw)
  %i.iy = shufflevector <4 x double> %i.im, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.iz = insertelement <2 x double> %i.iy, double %i.ij, i64 1
  %i.ja = fsub <2 x double> %i.ix, %i.iz          ; 2 uses
  %i.jb = extractelement <2 x double> %i.ja, i64 0
  %i.jc = extractelement <4 x double> %i.in, i64 3
  %i.jd = call double @llvm.fmuladd.f64(double %i.jc, double %i.of, double %i.jb)
  %i.je = call double @llvm.fmuladd.f64(double %i.ik, double 0.000000e+00, double %i.jd)
  %i.jf = getelementptr inbounds nuw i8, ptr %.pre294, i64 240
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !67 ; 2 uses
  %i.jh = extractelement <2 x double> %i.ja, i64 1
  %i.ji = fdiv double %i.jh, %i.jg                ; 5 uses
  %i.jj = fdiv double %i.je, %i.jg
  %17 = insertelement <2 x double> poison, double %i.jj, i64 0
  %18 = insertelement <2 x double> %17, double %i.ox, i64 1
  %19 = freeze <2 x double> %18                   ; 4 uses
  %20 = extractelement <2 x double> %19, i64 0
  %or.cond.2 = fcmp uno double %i.ji, %20
  br i1 %or.cond.2, label %.loopexit166.thread, label %.critedge.3

.critedge.3:                                      ; preds = %.critedge.2
  %i.jk = getelementptr inbounds nuw i8, ptr %.pre294, i64 208
  %i.jl = getelementptr inbounds nuw i8, ptr %.pre294, i64 200
  %i.jm = getelementptr inbounds nuw i8, ptr %.pre294, i64 168
  %i.jn = load <2 x double>, ptr %i.jl, align 8, !tbaa !67
  %i.jo = load double, ptr %i.jk, align 8, !tbaa !67
  %i.jp = fneg double %i.jo
  %i.jq = load <4 x double>, ptr %i.jm, align 8, !tbaa !67 ; 4 uses
  %i.jr = shufflevector <2 x double> %i.jn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.js = shufflevector <4 x double> %i.jq, <4 x double> %i.jr, <2 x i32> <i32 2, i32 4>
  %i.jt = fneg <2 x double> %i.js                 ; 2 uses
  %i.ju = fneg <4 x double> %i.jq                 ; 2 uses
  %i.jv = shufflevector <4 x double> %i.ju, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.jw = fneg <4 x double> %i.jq                 ; 2 uses
  %i.jx = shufflevector <4 x double> %i.jw, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.jy = extractelement <4 x double> %i.ju, i64 0
  %i.jz = call double @llvm.fmuladd.f64(double %i.jy, double %i.ji, double 0.000000e+00)
  %i.ka = extractelement <4 x double> %i.jw, i64 1
  %i.kb = call double @llvm.fmuladd.f64(double %i.ka, double %i.ig, double %i.jz)
  %i.kc = insertelement <2 x double> %19, double %i.ox, i64 1 ; 2 uses
  %i.kd = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.kb, i64 1
  %i.ke = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> %i.kc, <2 x double> %i.kd)
  %i.kf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> %16, <2 x double> %i.ke)
  %i.kg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.ht, <2 x double> %i.kf)
  %i.kh = shufflevector <4 x double> %i.jq, <4 x double> %i.jr, <2 x i32> <i32 3, i32 5>
  %i.ki = fsub <2 x double> %i.kg, %i.kh          ; 2 uses
  %i.kj = extractelement <2 x double> %i.ki, i64 0
  %i.kk = extractelement <2 x double> %i.jt, i64 1
  %i.kl = call double @llvm.fmuladd.f64(double %i.kk, double %i.of, double %i.kj)
  %i.km = call double @llvm.fmuladd.f64(double %i.jp, double 0.000000e+00, double %i.kl)
  %i.kn = getelementptr inbounds nuw i8, ptr %.pre294, i64 160
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !67 ; 2 uses
  %i.kp = extractelement <2 x double> %i.ki, i64 1
  %i.kq = fdiv double %i.kp, %i.ko                ; 4 uses
  %i.kr = fdiv double %i.km, %i.ko
  %21 = insertelement <2 x double> poison, double %i.kr, i64 0
  %.fr310 = freeze <2 x double> %21               ; 2 uses
  %22 = shufflevector <2 x double> %.fr310, <2 x double> %19, <2 x i32> <i32 0, i32 2> ; 2 uses
  %23 = extractelement <2 x double> %.fr310, i64 0
  %or.cond.3 = fcmp uno double %i.kq, %23
  br i1 %or.cond.3, label %.loopexit166.thread, label %.critedge.4

.critedge.4:                                      ; preds = %.critedge.3
  %i.ks = getelementptr inbounds nuw i8, ptr %.pre294, i64 136
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !67 ; 2 uses
  %i.ku = fneg double %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %.pre294, i64 88
  %i.kw = getelementptr inbounds nuw i8, ptr %.pre294, i64 120
  %i.kx = load <4 x double>, ptr %i.kv, align 8, !tbaa !67 ; 4 uses
  %i.ky = load <2 x double>, ptr %i.kw, align 8, !tbaa !67 ; 2 uses
  %i.kz = shufflevector <2 x double> %i.ky, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.la = shufflevector <4 x double> %i.kx, <4 x double> %i.kz, <2 x i32> <i32 3, i32 5>
  %i.lb = fneg <2 x double> %i.la                 ; 2 uses
  %i.lc = fneg <4 x double> %i.kx                 ; 2 uses
  %i.ld = shufflevector <4 x double> %i.lc, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.le = fneg <4 x double> %i.kx                 ; 2 uses
  %i.lf = shufflevector <4 x double> %i.le, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.lg = shufflevector <4 x double> %i.kx, <4 x double> %i.kz, <2 x i32> <i32 2, i32 4>
  %i.lh = fneg <2 x double> %i.lg
  %i.li = extractelement <4 x double> %i.le, i64 0
  %i.lj = call double @llvm.fmuladd.f64(double %i.li, double %i.kq, double 0.000000e+00)
  %i.lk = extractelement <4 x double> %i.lc, i64 1
  %i.ll = call double @llvm.fmuladd.f64(double %i.lk, double %i.ji, double %i.lj)
  %i.lm = insertelement <2 x double> %22, double %i.ig, i64 1 ; 2 uses
  %i.ln = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ll, i64 1
  %i.lo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %i.lm, <2 x double> %i.ln)
  %i.lp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ld, <2 x double> %i.kc, <2 x double> %i.lo)
  %i.lq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %16, <2 x double> %i.lp)
  %i.lr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lb, <2 x double> %i.ht, <2 x double> %i.lq)
  %i.ls = insertelement <2 x double> %i.ky, double %i.kt, i64 1
  %i.lt = fsub <2 x double> %i.lr, %i.ls          ; 2 uses
  %i.lu = extractelement <2 x double> %i.lt, i64 0
  %i.lv = extractelement <2 x double> %i.lb, i64 1
  %i.lw = call double @llvm.fmuladd.f64(double %i.lv, double %i.of, double %i.lu)
  %i.lx = call double @llvm.fmuladd.f64(double %i.ku, double 0.000000e+00, double %i.lw)
  %i.ly = getelementptr inbounds nuw i8, ptr %.pre294, i64 80
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !67 ; 2 uses
  %i.ma = extractelement <2 x double> %i.lt, i64 1
  %i.mb = fdiv double %i.ma, %i.lz                ; 3 uses
  %i.mc = fdiv double %i.lx, %i.lz
  %24 = insertelement <2 x double> poison, double %i.mc, i64 0
  %25 = insertelement <2 x double> %24, double %i.ji, i64 1
  %26 = freeze <2 x double> %25                   ; 3 uses
  %27 = extractelement <2 x double> %26, i64 0
  %or.cond.4 = fcmp uno double %i.mb, %27
  br i1 %or.cond.4, label %.loopexit166.thread, label %.critedge.5

.critedge.5:                                      ; preds = %.critedge.4
  %i.md = getelementptr inbounds nuw i8, ptr %.pre294, i64 64
  %i.me = getelementptr inbounds nuw i8, ptr %.pre294, i64 40
  %i.mf = getelementptr inbounds nuw i8, ptr %.pre294, i64 8
  %i.mg = load <4 x double>, ptr %i.me, align 8, !tbaa !67 ; 4 uses
  %i.mh = load double, ptr %i.md, align 8, !tbaa !67
  %i.mi = fneg double %i.mh
  %i.mj = fneg <4 x double> %i.mg                 ; 2 uses
  %i.mk = shufflevector <4 x double> %i.mj, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.ml = load <4 x double>, ptr %i.mf, align 8, !tbaa !67 ; 4 uses
  %i.mm = shufflevector <4 x double> %i.ml, <4 x double> %i.mg, <2 x i32> <i32 2, i32 4>
  %i.mn = fneg <2 x double> %i.mm
  %i.mo = fneg <4 x double> %i.ml                 ; 2 uses
  %i.mp = shufflevector <4 x double> %i.mo, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.mq = fneg <4 x double> %i.ml                 ; 2 uses
  %i.mr = shufflevector <4 x double> %i.mq, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.ms = shufflevector <4 x double> %i.ml, <4 x double> %i.mg, <2 x i32> <i32 3, i32 5>
  %i.mt = fneg <2 x double> %i.ms
  %i.mu = extractelement <4 x double> %i.mq, i64 0
  %i.mv = call double @llvm.fmuladd.f64(double %i.mu, double %i.mb, double 0.000000e+00)
  %i.mw = extractelement <4 x double> %i.mo, i64 1
  %i.mx = call double @llvm.fmuladd.f64(double %i.mw, double %i.kq, double %i.mv)
  %i.my = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.mx, i64 1
  %i.mz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mr, <2 x double> %26, <2 x double> %i.my)
  %i.na = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mp, <2 x double> %i.lm, <2 x double> %i.mz)
  %i.nb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %19, <2 x double> %i.na)
  %i.nc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mt, <2 x double> %16, <2 x double> %i.nb)
  %i.nd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mk, <2 x double> %31, <2 x double> %i.nc)
  %i.ne = shufflevector <4 x double> %i.mg, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.nf = fsub <2 x double> %i.nd, %i.ne          ; 2 uses
  %i.ng = extractelement <2 x double> %i.nf, i64 0
  %i.nh = extractelement <4 x double> %i.mj, i64 2
  %i.ni = call double @llvm.fmuladd.f64(double %i.nh, double %i.of, double %i.ng)
  %i.nj = call double @llvm.fmuladd.f64(double %i.mi, double 0.000000e+00, double %i.ni)
  %i.nk = load double, ptr %.pre294, align 8, !tbaa !67 ; 2 uses
  %i.nl = extractelement <2 x double> %i.nf, i64 1
  %i.nm = fdiv double %i.nl, %i.nk                ; 2 uses
  %i.nn = fdiv double %i.nj, %i.nk
  %i.no = insertelement <2 x double> poison, double %i.nn, i64 0
  %.fr311 = freeze <2 x double> %i.no             ; 2 uses
  %28 = shufflevector <2 x double> %.fr311, <2 x double> %26, <2 x i32> <i32 0, i32 2>
  %29 = extractelement <2 x double> %.fr311, i64 0
  %or.cond.5 = fcmp uno double %i.nm, %29
  %i.np = insertelement <2 x double> poison, double %i.nm, i64 0
  %i.nq = insertelement <2 x double> %i.np, double %i.mb, i64 1
  %i.nr = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.ns = insertelement <2 x double> %i.nr, double %i.ji, i64 1
  %i.nt = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.nu = insertelement <2 x double> %i.nt, double %i.ox, i64 1
  %i.nv = insertelement <2 x double> %i.oe, double 0.000000e+00, i64 1
  %i.nw = insertelement <2 x double> %i.oe, double 1.000000e+00, i64 0
  br i1 %or.cond.5, label %.loopexit166.thread, label %.critedge154

.critedge:                                        ; preds = %bb.c
  %i.nx = getelementptr inbounds nuw i8, ptr %.pre294, i64 496
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !67
  %i.nz = getelementptr inbounds nuw i8, ptr %.pre294, i64 480
  %i.oa = load <2 x double>, ptr %i.nz, align 8, !tbaa !67 ; 2 uses
  %i.ob = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.oc = insertelement <2 x double> %i.ob, double %i.ny, i64 0
  %i.od = fneg <2 x double> %i.oc
  %i.oe = fdiv <2 x double> %i.od, %i.oa          ; 6 uses
  %i.of = extractelement <2 x double> %i.oe, i64 1 ; 5 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.pre294, i64 424
  %i.oh = load double, ptr %i.og, align 8, !tbaa !67 ; 2 uses
  %i.oi = fneg double %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %.pre294, i64 408
  %i.ok = load <2 x double>, ptr %i.oj, align 8, !tbaa !67 ; 2 uses
  %i.ol = extractelement <2 x double> %i.ok, i64 0
  %i.om = fsub double 0.000000e+00, %i.ol
  %i.on = fneg <2 x double> %i.ok                 ; 2 uses
  %i.oo = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.om, i64 1
  %i.op = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.on, <2 x double> %i.oe, <2 x double> %i.oo)
  %i.oq = shufflevector <2 x double> %i.on, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.or = insertelement <2 x double> %i.oq, double %i.oi, i64 1
  %i.os = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.or, <2 x double> zeroinitializer, <2 x double> %i.op) ; 2 uses
  %i.ot = extractelement <2 x double> %i.os, i64 0
  %i.ou = fsub double %i.ot, %i.oh
  %i.ov = getelementptr inbounds nuw i8, ptr %.pre294, i64 400
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !67 ; 2 uses
  %i.ox = fdiv double %i.ou, %i.ow                ; 6 uses
  %i.oy = extractelement <2 x double> %i.os, i64 1
  %i.oz = fdiv double %i.oy, %i.ow
  %30 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.oz, i64 0
  %31 = freeze <2 x double> %30                   ; 4 uses
  %32 = extractelement <2 x double> %31, i64 0
  %or.cond = fcmp uno double %i.ox, %32
  br i1 %or.cond, label %.loopexit166.thread, label %.critedge.1

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.pa = load ptr, ptr %3, align 8, !tbaa !57    ; 32 uses
  %i.pb = load <2 x double>, ptr %i.pa, align 8, !tbaa !67
  store <2 x double> %i.pb, ptr %7, align 16, !tbaa !67
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.pe = load <2 x double>, ptr %i.pc, align 8, !tbaa !67
  store <2 x double> %i.pe, ptr %i.pd, align 16, !tbaa !67
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %i.pg = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ph = load <2 x double>, ptr %i.pf, align 8, !tbaa !67
  store <2 x double> %i.ph, ptr %i.pg, align 16, !tbaa !67
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pa, i64 48
  %i.pj = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.pk = load <2 x double>, ptr %i.pi, align 8, !tbaa !67
  store <2 x double> %i.pk, ptr %i.pj, align 16, !tbaa !67
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pa, i64 64
  %i.pm = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.pn = load <2 x double>, ptr %i.pl, align 8, !tbaa !67
  store <2 x double> %i.pn, ptr %i.pm, align 16, !tbaa !67
  %i.po = getelementptr inbounds nuw i8, ptr %i.pa, i64 80
  %i.pp = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.pq = load <2 x double>, ptr %i.po, align 8, !tbaa !67
  store <2 x double> %i.pq, ptr %i.pp, align 16, !tbaa !67
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pa, i64 96
  %i.ps = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.pt = load <2 x double>, ptr %i.pr, align 8, !tbaa !67
  store <2 x double> %i.pt, ptr %i.ps, align 16, !tbaa !67
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pa, i64 112
  %i.pv = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.pw = load <2 x double>, ptr %i.pu, align 8, !tbaa !67
  store <2 x double> %i.pw, ptr %i.pv, align 16, !tbaa !67
  %i.px = getelementptr inbounds nuw i8, ptr %i.pa, i64 128
  %i.py = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.pz = load <2 x double>, ptr %i.px, align 8, !tbaa !67
  store <2 x double> %i.pz, ptr %i.py, align 16, !tbaa !67
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pa, i64 144
  %i.qb = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.qc = load <2 x double>, ptr %i.qa, align 8, !tbaa !67
  store <2 x double> %i.qc, ptr %i.qb, align 16, !tbaa !67
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pa, i64 160
  %i.qe = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.qf = load <2 x double>, ptr %i.qd, align 8, !tbaa !67
  store <2 x double> %i.qf, ptr %i.qe, align 16, !tbaa !67
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pa, i64 176
  %i.qh = getelementptr inbounds nuw i8, ptr %7, i64 176
  %i.qi = load <2 x double>, ptr %i.qg, align 8, !tbaa !67
  store <2 x double> %i.qi, ptr %i.qh, align 16, !tbaa !67
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pa, i64 192
  %i.qk = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.ql = load <2 x double>, ptr %i.qj, align 8, !tbaa !67
  store <2 x double> %i.ql, ptr %i.qk, align 16, !tbaa !67
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pa, i64 208
  %i.qn = getelementptr inbounds nuw i8, ptr %7, i64 208
  %i.qo = load <2 x double>, ptr %i.qm, align 8, !tbaa !67
  store <2 x double> %i.qo, ptr %i.qn, align 16, !tbaa !67
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pa, i64 224
  %i.qq = getelementptr inbounds nuw i8, ptr %7, i64 224
  %i.qr = load <2 x double>, ptr %i.qp, align 8, !tbaa !67
  store <2 x double> %i.qr, ptr %i.qq, align 16, !tbaa !67
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pa, i64 240
  %i.qt = getelementptr inbounds nuw i8, ptr %7, i64 240
  %i.qu = load <2 x double>, ptr %i.qs, align 8, !tbaa !67
  store <2 x double> %i.qu, ptr %i.qt, align 16, !tbaa !67
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pa, i64 256
  %i.qw = getelementptr inbounds nuw i8, ptr %7, i64 256
  %i.qx = load <2 x double>, ptr %i.qv, align 8, !tbaa !67
  store <2 x double> %i.qx, ptr %i.qw, align 16, !tbaa !67
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pa, i64 272
  %i.qz = getelementptr inbounds nuw i8, ptr %7, i64 272
  %i.ra = load <2 x double>, ptr %i.qy, align 8, !tbaa !67
  store <2 x double> %i.ra, ptr %i.qz, align 16, !tbaa !67
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pa, i64 288
  %i.rc = getelementptr inbounds nuw i8, ptr %7, i64 288
  %i.rd = load <2 x double>, ptr %i.rb, align 8, !tbaa !67
  store <2 x double> %i.rd, ptr %i.rc, align 16, !tbaa !67
  %i.re = getelementptr inbounds nuw i8, ptr %i.pa, i64 304
  %i.rf = getelementptr inbounds nuw i8, ptr %7, i64 304
  %i.rg = load <2 x double>, ptr %i.re, align 8, !tbaa !67
  store <2 x double> %i.rg, ptr %i.rf, align 16, !tbaa !67
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pa, i64 320
  %i.ri = getelementptr inbounds nuw i8, ptr %7, i64 320
  %i.rj = load <2 x double>, ptr %i.rh, align 8, !tbaa !67
  store <2 x double> %i.rj, ptr %i.ri, align 16, !tbaa !67
  %i.rk = getelementptr inbounds nuw i8, ptr %i.pa, i64 336
  %i.rl = getelementptr inbounds nuw i8, ptr %7, i64 336
  %i.rm = load <2 x double>, ptr %i.rk, align 8, !tbaa !67
  store <2 x double> %i.rm, ptr %i.rl, align 16, !tbaa !67
  %i.rn = getelementptr inbounds nuw i8, ptr %i.pa, i64 352
  %i.ro = getelementptr inbounds nuw i8, ptr %7, i64 352
  %i.rp = load <2 x double>, ptr %i.rn, align 8, !tbaa !67
  store <2 x double> %i.rp, ptr %i.ro, align 16, !tbaa !67
  %i.rq = getelementptr inbounds nuw i8, ptr %i.pa, i64 368
  %i.rr = getelementptr inbounds nuw i8, ptr %7, i64 368
  %i.rs = load <2 x double>, ptr %i.rq, align 8, !tbaa !67
  store <2 x double> %i.rs, ptr %i.rr, align 16, !tbaa !67
  %i.rt = getelementptr inbounds nuw i8, ptr %i.pa, i64 384
  %i.ru = getelementptr inbounds nuw i8, ptr %7, i64 384
  %i.rv = load <2 x double>, ptr %i.rt, align 8, !tbaa !67
  store <2 x double> %i.rv, ptr %i.ru, align 16, !tbaa !67
  %i.rw = getelementptr inbounds nuw i8, ptr %i.pa, i64 400
  %i.rx = getelementptr inbounds nuw i8, ptr %7, i64 400
  %i.ry = load <2 x double>, ptr %i.rw, align 8, !tbaa !67
  store <2 x double> %i.ry, ptr %i.rx, align 16, !tbaa !67
  %i.rz = getelementptr inbounds nuw i8, ptr %i.pa, i64 416
  %i.sa = getelementptr inbounds nuw i8, ptr %7, i64 416
  %i.sb = load <2 x double>, ptr %i.rz, align 8, !tbaa !67
  store <2 x double> %i.sb, ptr %i.sa, align 16, !tbaa !67
  %i.sc = getelementptr inbounds nuw i8, ptr %i.pa, i64 432
  %i.sd = getelementptr inbounds nuw i8, ptr %7, i64 432
  %i.se = load <2 x double>, ptr %i.sc, align 8, !tbaa !67
  store <2 x double> %i.se, ptr %i.sd, align 16, !tbaa !67
  %i.sf = getelementptr inbounds nuw i8, ptr %i.pa, i64 448
  %i.sg = getelementptr inbounds nuw i8, ptr %7, i64 448
  %i.sh = load <2 x double>, ptr %i.sf, align 8, !tbaa !67
  store <2 x double> %i.sh, ptr %i.sg, align 16, !tbaa !67
  %i.si = getelementptr inbounds nuw i8, ptr %i.pa, i64 464
  %i.sj = getelementptr inbounds nuw i8, ptr %7, i64 464
  %i.sk = load <2 x double>, ptr %i.si, align 8, !tbaa !67
  store <2 x double> %i.sk, ptr %i.sj, align 16, !tbaa !67
  %i.sl = getelementptr inbounds nuw i8, ptr %i.pa, i64 480
  %i.sm = getelementptr inbounds nuw i8, ptr %7, i64 480
  %i.sn = load <2 x double>, ptr %i.sl, align 8, !tbaa !67
  store <2 x double> %i.sn, ptr %i.sm, align 16, !tbaa !67
  %i.so = getelementptr inbounds nuw i8, ptr %i.pa, i64 496
  %i.sp = load double, ptr %i.so, align 8, !tbaa !67
  %i.sq = getelementptr inbounds nuw i8, ptr %7, i64 496
  store double %i.sp, ptr %i.sq, align 16, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.sr = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 -1056833530, ptr %8, align 8, !tbaa !72
  %i.ss = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.ss, align 8, !tbaa !73
  store i64 30064771081, ptr %i.sr, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.st = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.su = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.su, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !72
  store ptr %6, ptr %i.st, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.sv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.sw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.sw, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !72
  store ptr %4, ptr %i.sv, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.sx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.sy = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.sy, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !72
  store ptr %5, ptr %i.sx, align 8, !tbaa !73
  invoke void @_ZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayES6_S6_i(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.sz = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !60 ; 10 uses
  %scevgep = getelementptr nuw i8, ptr %i.ta, i64 576
  %.sroa.15.0.scevgep.sroa_idx = getelementptr nuw i8, ptr %i.ta, i64 592
  %.sroa.30.0.scevgep.sroa_idx = getelementptr nuw i8, ptr %i.ta, i64 608
  %.sroa.49.0.scevgep.sroa_idx = getelementptr nuw i8, ptr %i.ta, i64 624
  %.sroa.71.0.scevgep.sroa_idx = getelementptr nuw i8, ptr %i.ta, i64 640
  %.sroa.71.0.copyload = load double, ptr %.sroa.71.0.scevgep.sroa_idx, align 8, !tbaa !67
  %scevgep182 = getelementptr nuw i8, ptr %i.ta, i64 504
  %i.tb = load <2 x double>, ptr %scevgep, align 8, !tbaa !67
  %i.tc = load <2 x double>, ptr %scevgep182, align 8, !tbaa !67
  %.sroa.13.0.scevgep182.sroa_idx = getelementptr nuw i8, ptr %i.ta, i64 520
  %i.td = load <2 x double>, ptr %.sroa.15.0.scevgep.sroa_idx, align 8, !tbaa !67
  %i.te = load <2 x double>, ptr %.sroa.13.0.scevgep182.sroa_idx, align 8, !tbaa !67
  %.sroa.26.0.scevgep182.sroa_idx = getelementptr nuw i8, ptr %i.ta, i64 536
  %i.tf = load <2 x double>, ptr %.sroa.30.0.scevgep.sroa_idx, align 8, !tbaa !67
  %i.tg = load <2 x double>, ptr %.sroa.26.0.scevgep182.sroa_idx, align 8, !tbaa !67
  %.sroa.43.0.scevgep182.sroa_idx = getelementptr nuw i8, ptr %i.ta, i64 552
  %i.th = load <2 x double>, ptr %.sroa.49.0.scevgep.sroa_idx, align 8, !tbaa !67
  %i.ti = load <2 x double>, ptr %.sroa.43.0.scevgep182.sroa_idx, align 8, !tbaa !67
  %.sroa.63.0.scevgep182.sroa_idx = getelementptr nuw i8, ptr %i.ta, i64 568
  %.sroa.63.0.copyload = load double, ptr %.sroa.63.0.scevgep182.sroa_idx, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.critedge154

bb.g:                                             ; preds = %bb.e
  %i.tj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.p

.critedge154:                                     ; preds = %.critedge.5, %bb.f
  %.sroa.71.0 = phi double [ %.sroa.71.0.copyload, %bb.f ], [ 1.000000e+00, %.critedge.5 ]
  %.sroa.63.0 = phi double [ %.sroa.63.0.copyload, %bb.f ], [ 0.000000e+00, %.critedge.5 ] ; 6 uses
  %i.tk = phi <2 x double> [ %i.tb, %bb.f ], [ %i.nq, %.critedge.5 ]
  %i.tl = phi <2 x double> [ %i.tc, %bb.f ], [ %28, %.critedge.5 ] ; 8 uses
  %i.tm = phi <2 x double> [ %i.td, %bb.f ], [ %i.ns, %.critedge.5 ]
  %i.tn = phi <2 x double> [ %i.te, %bb.f ], [ %22, %.critedge.5 ] ; 8 uses
  %i.to = phi <2 x double> [ %i.tf, %bb.f ], [ %i.nu, %.critedge.5 ]
  %i.tp = phi <2 x double> [ %i.tg, %bb.f ], [ %14, %.critedge.5 ] ; 7 uses
  %i.tq = phi <2 x double> [ %i.th, %bb.f ], [ %i.nv, %.critedge.5 ]
  %i.tr = phi <2 x double> [ %i.ti, %bb.f ], [ %i.nw, %.critedge.5 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.ts = fsub <2 x double> %i.tk, %i.tl          ; 8 uses
  %i.tt = fsub <2 x double> %i.tm, %i.tn          ; 7 uses
  %i.tu = fsub <2 x double> %i.to, %i.tp          ; 7 uses
  %i.tv = fsub <2 x double> %i.tq, %i.tr          ; 5 uses
  %i.tw = extractelement <2 x double> %i.tr, i64 1
  %i.tx = extractelement <2 x double> %i.tp, i64 1 ; 3 uses
  %i.ty = extractelement <2 x double> %i.tp, i64 0 ; 3 uses
  %i.tz = extractelement <2 x double> %i.tr, i64 0
  %i.ua = extractelement <2 x double> %i.tn, i64 1
  %i.ub = fneg <2 x double> %i.tr                 ; 5 uses
  %i.uc = shufflevector <2 x double> %i.tp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ud = fmul <2 x double> %i.uc, %i.ub
  %i.ue = shufflevector <2 x double> %i.tn, <2 x double> %i.tp, <2 x i32> <i32 1, i32 2>
  %i.uf = insertelement <2 x double> poison, double %.sroa.63.0, i64 0
  %i.ug = shufflevector <2 x double> %i.uf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ue, <2 x double> %i.ug, <2 x double> %i.ud) ; 3 uses
  %i.ui = extractelement <2 x double> %i.ub, i64 0
  %i.uj = extractelement <2 x double> %i.uh, i64 0
  %i.uk = extractelement <2 x double> %i.tl, i64 1 ; 4 uses
  %i.ul = extractelement <2 x double> %i.tl, i64 0 ; 4 uses
  %i.um = fneg double %i.uj                       ; 2 uses
  %i.un = shufflevector <2 x double> %i.tp, <2 x double> %i.tl, <2 x i32> <i32 0, i32 3>
  %i.uo = insertelement <2 x double> %i.ub, double %i.um, i64 1
  %i.up = fmul <2 x double> %i.un, %i.uo
  %i.uq = shufflevector <2 x double> %i.tn, <2 x double> %i.tl, <2 x i32> <i32 1, i32 2>
  %i.ur = shufflevector <2 x double> %i.tr, <2 x double> %i.uh, <2 x i32> <i32 1, i32 3>
  %i.us = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uq, <2 x double> %i.ur, <2 x double> %i.up) ; 3 uses
  %i.ut = extractelement <2 x double> %i.tn, i64 0 ; 4 uses
  %i.uu = extractelement <2 x double> %i.us, i64 0
  %i.uv = extractelement <2 x double> %i.ts, i64 1
  %i.uw = fmul double %i.uv, %i.um
  %i.ux = shufflevector <2 x double> %i.tn, <2 x double> %i.ts, <2 x i32> <i32 0, i32 2>
  %i.uy = shufflevector <2 x double> %i.us, <2 x double> %i.uh, <2 x i32> <i32 0, i32 3>
  %i.uz = shufflevector <2 x double> %i.us, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.va = insertelement <2 x double> %i.uz, double %i.uw, i64 1
  %i.vb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ux, <2 x double> %i.uy, <2 x double> %i.va) ; 2 uses
  %i.vc = extractelement <2 x double> %i.tt, i64 0 ; 2 uses
  %i.vd = extractelement <2 x double> %i.vb, i64 1
  %i.ve = call double @llvm.fmuladd.f64(double %i.vc, double %i.uu, double %i.vd)
  %i.vf = extractelement <2 x double> %i.ub, i64 1 ; 2 uses
  %i.vg = fmul double %i.ut, %i.vf
  %i.vh = call double @llvm.fmuladd.f64(double %i.uk, double %.sroa.63.0, double %i.vg)
  %foldExtExtBinop = fmul <2 x double> %i.tn, %i.ub
  %i.vi = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.vj = call double @llvm.fmuladd.f64(double %i.ul, double %.sroa.63.0, double %i.vi)
  %i.vk = fmul double %i.uk, %i.ui
  %i.vl = call double @llvm.fmuladd.f64(double %i.ul, double %i.tw, double %i.vk)
  %i.vm = extractelement <2 x double> %i.tu, i64 1 ; 2 uses
  %i.vn = fneg double %i.vm
  %i.vo = fneg double %i.ty
  %i.vp = fmul double %i.ut, %i.vo
  %i.vq = call double @llvm.fmuladd.f64(double %i.uk, double %i.tx, double %i.vp)
  %i.vr = extractelement <2 x double> %i.tv, i64 0 ; 2 uses
  %i.vs = fneg double %i.ua                       ; 3 uses
  %i.vt = fmul double %i.ut, %i.vs
  %i.vu = call double @llvm.fmuladd.f64(double %i.ul, double %i.tx, double %i.vt)
  %i.vv = extractelement <2 x double> %i.tv, i64 1
  %i.vw = fmul double %i.uk, %i.vs
  %i.vx = call double @llvm.fmuladd.f64(double %i.ul, double %i.ty, double %i.vw)
  %i.vy = fneg double %i.vr
  %i.vz = insertelement <2 x double> poison, double %i.vy, i64 0
  %i.wa = shufflevector <2 x double> %i.vz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wb = fmul <2 x double> %i.tu, %i.wa
  %i.wc = shufflevector <2 x double> %i.tt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wd = shufflevector <2 x double> %i.tv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.we = fsub double %.sroa.71.0, %.sroa.63.0    ; 6 uses
  %i.wf = fneg double %i.vv                       ; 3 uses
  %i.wg = fmul double %i.vm, %i.wf
  %i.wh = insertelement <2 x double> %i.wd, double %i.we, i64 1
  %i.wi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wc, <2 x double> %i.wh, <2 x double> %i.wb) ; 2 uses
  %i.wj = extractelement <2 x double> %i.wi, i64 1
  %i.wk = extractelement <2 x double> %i.wi, i64 0 ; 2 uses
  %i.wl = shufflevector <2 x double> %i.tl, <2 x double> %i.tt, <2 x i32> <i32 1, i32 2>
  %i.wm = shufflevector <2 x double> %i.tl, <2 x double> %i.ts, <2 x i32> <i32 0, i32 3>
  %i.wn = shufflevector <2 x double> %i.tt, <2 x double> %i.ts, <2 x i32> <i32 0, i32 3>
  %i.wo = fmul <2 x double> %i.wn, %i.wa
  %i.wp = shufflevector <2 x double> %i.ts, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wq = insertelement <2 x double> %i.tv, double %i.we, i64 0
  %i.wr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wp, <2 x double> %i.wq, <2 x double> %i.wo) ; 2 uses
  %i.ws = extractelement <2 x double> %i.wr, i64 0
  %i.wt = fneg double %i.tx
  %i.wu = extractelement <2 x double> %i.wr, i64 1
  %i.wv = shufflevector <2 x double> %i.tt, <2 x double> %i.tu, <2 x i32> <i32 1, i32 2>
  %i.ww = fneg <2 x double> %i.wv                 ; 3 uses
  %i.wx = extractelement <2 x double> %i.ww, i64 0
  %i.wy = call double @llvm.fmuladd.f64(double %i.wx, double %i.vh, double %i.ve)
  %i.wz = shufflevector <2 x double> %i.tt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xa = fmul <2 x double> %i.wz, %i.ww
  %i.xb = shufflevector <2 x double> %i.tu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.xc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ts, <2 x double> %i.xb, <2 x double> %i.xa) ; 2 uses
  %i.xd = extractelement <2 x double> %i.xc, i64 1
  %i.xe = extractelement <2 x double> %i.xc, i64 0
  %i.xf = extractelement <2 x double> %i.tu, i64 0 ; 2 uses
  %i.xg = call double @llvm.fmuladd.f64(double %i.xf, double %i.we, double %i.wg) ; 2 uses
  %i.xh = fneg double %i.wj                       ; 2 uses
  %i.xi = insertelement <2 x double> poison, double %i.xh, i64 0
  %i.xj = insertelement <2 x double> %i.xi, double %i.wf, i64 1
  %i.xk = fmul <2 x double> %i.wl, %i.xj
  %i.xl = insertelement <2 x double> poison, double %i.xg, i64 0
  %i.xm = insertelement <2 x double> %i.xl, double %i.we, i64 1
  %i.xn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wm, <2 x double> %i.xm, <2 x double> %i.xk) ; 2 uses
  %i.xo = extractelement <2 x double> %i.xn, i64 0
  %i.xp = call double @llvm.fmuladd.f64(double %i.ut, double %i.wk, double %i.xo)
  %i.xq = extractelement <2 x double> %i.xn, i64 1
  %i.xr = call double @llvm.fmuladd.f64(double %i.vs, double %i.xq, double %i.xp)
  %i.xs = call double @llvm.fmuladd.f64(double %i.ty, double %i.ws, double %i.xr)
  %i.xt = call double @llvm.fmuladd.f64(double %i.wt, double %i.wu, double %i.xs)
  %i.xu = call double @llvm.fmuladd.f64(double %i.xf, double %i.vj, double %i.wy)
  %i.xv = call double @llvm.fmuladd.f64(double %i.vn, double %i.vl, double %i.xu)
  %i.xw = call double @llvm.fmuladd.f64(double %i.vr, double %i.vq, double %i.xv)
  %i.xx = call double @llvm.fmuladd.f64(double %i.wf, double %i.vu, double %i.xw)
  %i.xy = call double @llvm.fmuladd.f64(double %i.we, double %i.vx, double %i.xx)
  %i.xz = call double @llvm.fmuladd.f64(double %i.tz, double %i.xd, double %i.xt)
  %i.ya = call double @llvm.fmuladd.f64(double %i.vf, double %i.xe, double %i.xz)
  %i.yb = shufflevector <2 x double> %i.ts, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.yc = insertelement <2 x double> %i.ww, double %i.xh, i64 1
  %i.yd = fmul <2 x double> %i.yb, %i.yc
  %i.ye = insertelement <2 x double> %i.tu, double %i.xg, i64 1
  %i.yf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wp, <2 x double> %i.ye, <2 x double> %i.yd) ; 2 uses
  %i.yg = extractelement <2 x double> %i.yf, i64 0
  %i.yh = call double @llvm.fmuladd.f64(double %.sroa.63.0, double %i.yg, double %i.ya)
  %i.yi = extractelement <2 x double> %i.yf, i64 1
  %i.yj = call double @llvm.fmuladd.f64(double %i.vc, double %i.wk, double %i.yi)
  %i.yk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.yl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ym = extractelement <2 x double> %i.vb, i64 0
  %i.yn = invoke noundef i32 @_ZN2cv10solve_deg3EddddRdS0_S0_(double noundef %i.yj, double noundef %i.yh, double noundef %i.xy, double noundef %i.ym, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.yk, ptr noundef nonnull align 8 dereferenceable(8) %i.yl)
          to label %bb.h unwind label %bb.j       ; 3 uses

bb.h:                                             ; preds = %.critedge154
  %i.yo = icmp slt i32 %i.yn, 1
  br i1 %i.yo, label %.loopexit, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %bb.h
  %i.yp = zext nneg i32 %i.yn to i64              ; 4 uses
  %i.yq = mul nuw nsw i64 %i.yp, 208
  %i.yr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yq) #17
          to label %.lr.ph.i.i.i.i.i unwind label %bb.j ; 3 uses

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.yt, %.lr.ph.i.i.i.i.i ], [ %i.yr, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ys, %.lr.ph.i.i.i.i.i ], [ %i.yp, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ]
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #18
  %i.ys = add nsw i64 %.057.i.i.i.i.i, -1         ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ys, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !166

_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit:     ; preds = %.lr.ph.i.i.i.i.i
  %i.yu = getelementptr inbounds nuw [208 x i8], ptr %i.yr, i64 %i.yp
  %i.yv = load ptr, ptr %2, align 8, !tbaa !77    ; 5 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !78 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !79
  store ptr %i.yr, ptr %2, align 8, !tbaa !77
  store ptr %i.yt, ptr %i.yw, align 8, !tbaa !78
  store ptr %i.yu, ptr %i.yy, align 8, !tbaa !79
  %.not4.i.i.i.i.i = icmp eq ptr %i.yv, %i.yx
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i155

.lr.ph.i.i.i.i.i155:                              ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit, %.lr.ph.i.i.i.i.i155
  %.05.i.i.i.i.i = phi ptr [ %i.za, %.lr.ph.i.i.i.i.i155 ], [ %i.yv, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i) #18
  %i.za = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i156 = icmp eq ptr %i.za, %i.yx
  br i1 %.not.i.i.i.i.i156, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i155, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i155, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.yv, null
  br i1 %.not.i.i1.i.i.i, label %.lr.ph178.preheader, label %bb.i

.lr.ph178.preheader:                              ; preds = %bb.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i
  br label %.lr.ph178

bb.i:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.zb = ptrtoint ptr %i.yz to i64
  %i.zc = ptrtoint ptr %i.yv to i64
  %i.zd = sub i64 %i.zb, %i.zc
  call void @_ZdlPvm(ptr noundef nonnull %i.yv, i64 noundef %i.zd) #19
  br label %.lr.ph178.preheader

bb.j:                                             ; preds = %.critedge154, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  %i.ze = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %.lr.ph178.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef 3, i32 noundef 3, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEC2Eii.exit unwind label %bb.l

_ZN2cv4Mat_IdEC2Eii.exit:                         ; preds = %.lr.ph178
  %i.zf = load ptr, ptr %2, align 8, !tbaa !77
  %i.zg = getelementptr inbounds nuw [208 x i8], ptr %i.zf, i64 %indvars.iv
end_hunk_0
