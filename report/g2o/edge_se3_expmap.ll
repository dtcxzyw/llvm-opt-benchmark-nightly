Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_expmap?download=true
inline.NumInlined: 4597
inline.NumDeleted: 2529
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN3g2o13EdgeSE3Expmap14linearizeOplusEv:._crit_edge.i.i
  %bc.i = bitcast <2 x i64> %i.l to <2 x double>  ; 6 uses
  %bc7.i = bitcast <2 x i64> %i.o to <2 x double> ; 7 uses
  %i.t = xor <2 x i64> %.sroa.0169.0.copyload, splat (i64 -9223372036854775808) ; 5 uses
  %i.u = xor <2 x i64> %.sroa.4170.0.copyload, <i64 -9223372036854775808, i64 0> ; 5 uses
  %i.v = load <2 x double>, ptr %i.p, align 16, !tbaa !49, !noalias !222
  %i.w = load <2 x double>, ptr %i.j, align 16, !tbaa !49, !noalias !223 ; 4 uses
  %i.x = load <2 x double>, ptr %i.m, align 16, !tbaa !49, !noalias !223 ; 4 uses
  %i.y = bitcast <2 x i64> %i.t to <2 x double>
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0129.sroa.0.8.vec.extract288 = extractelement <2 x i64> %i.t, i64 1
  %i.aa = bitcast i64 %.sroa.0129.sroa.0.8.vec.extract288 to <1 x double>
  %i.ab = shufflevector <1 x double> %i.aa, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = bitcast <2 x i64> %i.u to <2 x double>
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0129.sroa.9.24.vec.extract293 = extractelement <2 x i64> %i.u, i64 1
  %i.ae = bitcast i64 %.sroa.0129.sroa.9.24.vec.extract293 to <1 x double>
  %i.af = shufflevector <1 x double> %i.ae, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ag = fmul <2 x double> %i.w, %i.af
  %i.ah = fmul <2 x double> %i.x, %i.ab
  %i.ai = fadd <2 x double> %i.ah, %i.ag
  %i.aj = fmul <2 x double> %i.w, %i.ad
  %i.ak = fmul <2 x double> %i.x, %i.z
  %i.al = fsub <2 x double> %i.aj, %i.ak
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.an = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.ai, <2 x double> %i.am) ; 2 uses
  %i.ao = fmul <2 x double> %i.x, %i.af
  %i.ap = fmul <2 x double> %i.w, %i.ab
  %i.aq = fsub <2 x double> %i.ao, %i.ap
  %i.ar = fmul <2 x double> %i.x, %i.ad
  %i.as = fmul <2 x double> %i.w, %i.z
  %i.at = fadd <2 x double> %i.as, %i.ar
  %i.au = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.av = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.au, <2 x double> %i.at) ; 2 uses
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ax = extractelement <2 x double> %i.av, i64 0
  %i.ay = fcmp olt double %i.ax, 0.000000e+00     ; 2 uses
  %i.az = fneg <2 x double> %i.an
  %i.ba = fneg <2 x double> %i.aw
  %i.bb = select i1 %i.ay, <2 x double> %i.ba, <2 x double> %i.aw ; 4 uses
  %i.bc = select i1 %i.ay, <2 x double> %i.az, <2 x double> %i.an ; 4 uses
  %i.bd = fmul <2 x double> %i.bc, %i.bc
  %i.be = fmul <2 x double> %i.bb, %i.bb
  %i.bf = fadd <2 x double> %i.be, %i.bd          ; 2 uses
  %shift = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bf, %shift
  %i.bg = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bh = fcmp ogt double %i.bg, 0.000000e+00     ; 2 uses
  %.scalar.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.bg)
  %i.bi = insertelement <2 x double> poison, double %.scalar.i.i.i.i, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = fdiv <2 x double> %i.bc, %i.bj
  %i.bl = fdiv <2 x double> %i.bb, %i.bj
  %.sroa.0129.sroa.9.1.in = select i1 %i.bh, <2 x double> %i.bl, <2 x double> %i.bb ; 2 uses
  %.sroa.0129.sroa.0.1.in = select i1 %i.bh, <2 x double> %i.bk, <2 x double> %i.bc ; 2 uses
  %i.bm = xor <2 x i64> %.sroa.0172.0.copyload, splat (i64 -9223372036854775808) ; 5 uses
  %i.bn = xor <2 x i64> %.sroa.4173.0.copyload, <i64 -9223372036854775808, i64 0> ; 5 uses
  %i.bo = bitcast <2 x i64> %i.bm to <2 x double>
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.091.sroa.0.8.vec.extract278 = extractelement <2 x i64> %i.bm, i64 1
  %i.bq = bitcast i64 %.sroa.091.sroa.0.8.vec.extract278 to <1 x double>
  %i.br = shufflevector <1 x double> %i.bq, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = bitcast <2 x i64> %i.bn to <2 x double>
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.091.sroa.9.24.vec.extract283 = extractelement <2 x i64> %i.bn, i64 1
  %i.bu = bitcast i64 %.sroa.091.sroa.9.24.vec.extract283 to <1 x double>
  %i.bv = shufflevector <1 x double> %i.bu, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bw = fmul <2 x double> %i.bv, %bc.i
  %i.bx = fmul <2 x double> %i.br, %bc7.i
  %i.by = fadd <2 x double> %i.bx, %i.bw
  %i.bz = fmul <2 x double> %i.bt, %bc.i
  %i.ca = fmul <2 x double> %i.bp, %bc7.i
  %i.cb = fsub <2 x double> %i.bz, %i.ca
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cd = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.by, <2 x double> %i.cc) ; 2 uses
  %i.ce = fmul <2 x double> %i.bv, %bc7.i
  %i.cf = fmul <2 x double> %i.br, %bc.i
  %i.cg = fsub <2 x double> %i.ce, %i.cf
  %i.ch = fmul <2 x double> %i.bt, %bc7.i
  %i.ci = fmul <2 x double> %i.bp, %bc.i
  %i.cj = fadd <2 x double> %i.ci, %i.ch
  %i.ck = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = tail call noundef <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %i.ck, <2 x double> %i.cj) ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cn = extractelement <2 x double> %i.cl, i64 0
  %i.co = fcmp olt double %i.cn, 0.000000e+00     ; 2 uses
  %i.cp = fneg <2 x double> %i.cd
  %i.cq = fneg <2 x double> %i.cm
  %i.cr = select i1 %i.co, <2 x double> %i.cq, <2 x double> %i.cm ; 4 uses
  %i.cs = select i1 %i.co, <2 x double> %i.cp, <2 x double> %i.cd ; 4 uses
  %i.ct = fmul <2 x double> %i.cs, %i.cs
  %i.cu = fmul <2 x double> %i.cr, %i.cr
  %i.cv = fadd <2 x double> %i.cu, %i.ct          ; 2 uses
  %shift263 = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop264 = fadd <2 x double> %i.cv, %shift263
  %i.cw = extractelement <2 x double> %foldExtExtBinop264, i64 0 ; 2 uses
  %i.cx = fcmp ogt double %i.cw, 0.000000e+00     ; 2 uses
  %.scalar.i.i.i.i47 = tail call double @llvm.sqrt.f64(double %i.cw)
  %i.cy = insertelement <2 x double> poison, double %.scalar.i.i.i.i47, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.da = fdiv <2 x double> %i.cs, %i.cz
  %i.db = fdiv <2 x double> %i.cr, %i.cz
  %.sroa.091.sroa.9.1.in = select i1 %i.cx, <2 x double> %i.db, <2 x double> %i.cr ; 2 uses
  %.sroa.091.sroa.0.1.in = select i1 %i.cx, <2 x double> %i.da, <2 x double> %i.cs ; 2 uses
  %bc7.i27 = bitcast <2 x i64> %i.bn to <2 x double> ; 2 uses
  %i.dc = shufflevector <2 x double> %bc7.i27, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %bc.i26 = bitcast <2 x i64> %i.bm to <2 x double> ; 4 uses
  %i.dd = extractelement <2 x double> %bc.i26, i64 1 ; 2 uses
  %i.de = fneg double %.sroa.7175.32.copyload
  %i.df = extractelement <2 x double> %bc7.i27, i64 0 ; 4 uses
  %i.dg = fneg <2 x double> %.sroa.5174.32.copyload ; 4 uses
  %.sroa.0.8.vec.extract.i.i.i28 = extractelement <2 x double> %i.dg, i64 1
  %i.dh = fneg double %.sroa.0.8.vec.extract.i.i.i28
  %i.di = fmul double %i.df, %i.dh
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.de, double %i.di)
  %.sroa.027.0.vec.insert.i.i.i.i31 = insertelement <2 x double> poison, double %i.dj, i64 0
  %.sroa.0.0.vec.extract.i.i.i29 = extractelement <2 x double> %i.dg, i64 0
  %i.dk = extractelement <2 x double> %bc.i26, i64 0 ; 2 uses
  %i.dl = fmul double %.sroa.7175.32.copyload, %i.dk
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.df, double %.sroa.0.0.vec.extract.i.i.i29, double %i.dl)
  %.sroa.027.8.vec.insert.i.i.i.i32 = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i31, double %i.dm, i64 1 ; 2 uses
  %i.dn = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i32, %.sroa.027.8.vec.insert.i.i.i.i32 ; 5 uses
  %i.do = fmul <2 x double> %i.dc, %i.dn
  %i.dp = fsub <2 x double> %i.do, %.sroa.5174.32.copyload
  %i.dq = shufflevector <2 x i64> %i.bm, <2 x i64> %i.bn, <2 x i32> <i32 1, i32 2>
  %i.dr = bitcast <2 x i64> %i.dq to <2 x double> ; 2 uses
  %i.ds = shufflevector <2 x double> %bc.i26, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dt = shufflevector <2 x double> %bc7.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.du = extractelement <2 x double> %bc.i, i64 1 ; 4 uses
  %i.dv = fneg double %i.s                        ; 2 uses
  %i.dw = extractelement <2 x double> %bc7.i, i64 0 ; 4 uses
  %i.dx = fneg <2 x double> %i.q                  ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.dx, i64 1 ; 2 uses
  %i.dy = fneg double %.sroa.0.8.vec.extract.i.i.i
  %i.dz = fmul double %i.dw, %i.dy
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.du, double %i.dv, double %i.dz)
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ea, i64 0
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x double> %i.dx, i64 0 ; 2 uses
  %i.eb = extractelement <2 x double> %bc.i, i64 0 ; 4 uses
  %i.ec = fmul double %i.s, %i.eb
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.dw, double %.sroa.0.0.vec.extract.i.i.i, double %i.ec)
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.ed, i64 1 ; 2 uses
  %i.ee = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %i.ef = fmul <2 x double> %i.dt, %i.ee
  %i.eg = fsub <2 x double> %i.ef, %i.q
  %i.eh = fneg double %.sroa.0.0.vec.extract.i.i.i
  %i.ei = fmul double %i.du, %i.eh
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.eb, double %.sroa.0.8.vec.extract.i.i.i, double %i.ei) ; 2 uses
  %i.ek = fadd double %i.ej, %i.ej                ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.ee, i64 1 ; 2 uses
  %i.el = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %i.em = fmul double %i.dw, %i.el
  %i.en = tail call double @llvm.fmuladd.f64(double %i.du, double %i.ek, double %i.em)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.en, i64 0
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.ee, i64 0 ; 2 uses
  %i.eo = fneg double %i.ek
  %i.ep = fmul double %i.eb, %i.eo
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.dw, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.ep)
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.eq, i64 1
  %i.er = fadd <2 x double> %i.eg, %.sroa.0.8.vec.insert.i.i.i.i ; 5 uses
  %i.es = shufflevector <2 x double> %i.dg, <2 x double> %i.er, <2 x i32> <i32 1, i32 3>
  %i.et = shufflevector <2 x double> %bc.i26, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.eu = shufflevector <2 x double> %i.dg, <2 x double> %i.er, <2 x i32> <i32 0, i32 2>
  %i.ev = fneg <2 x double> %i.eu
  %i.ew = fmul <2 x double> %i.et, %i.ev
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.es, <2 x double> %i.ew) ; 2 uses
  %i.ey = fadd <2 x double> %i.ex, %i.ex          ; 5 uses
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.fa = shufflevector <2 x i64> %i.bn, <2 x i64> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.fb = bitcast <2 x i64> %i.fa to <2 x double> ; 2 uses
  %i.fc = shufflevector <2 x double> %i.dn, <2 x double> %i.ey, <2 x i32> <i32 1, i32 2>
  %i.fd = fneg <2 x double> %i.fc
  %i.fe = fmul <2 x double> %i.fb, %i.fd
  %i.ff = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.ez, <2 x double> %i.fe)
  %i.fg = fadd <2 x double> %i.dp, %i.ff
  %i.fh = extractelement <2 x double> %bc7.i, i64 1
  %i.fi = fmul double %i.fh, %i.ek
  %i.fj = fsub double %i.fi, %i.s
  %i.fk = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.fl = fmul double %i.du, %i.fk
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.eb, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.fl)
  %i.fn = fadd double %i.fj, %i.fm                ; 3 uses
  %.sroa.6165.40.vec.extract = extractelement <2 x double> %i.er, i64 1
  %i.fo = fneg double %.sroa.6165.40.vec.extract
  %i.fp = fmul double %i.df, %i.fo
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.fn, double %i.fp)
  %.sroa.027.0.vec.insert.i.i.i.i39 = insertelement <2 x double> poison, double %i.fq, i64 0
  %.sroa.6165.32.vec.extract = extractelement <2 x double> %i.er, i64 0
  %i.fr = fneg double %i.fn
  %i.fs = fmul double %i.dk, %i.fr
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.df, double %.sroa.6165.32.vec.extract, double %i.fs)
  %.sroa.027.8.vec.insert.i.i.i.i40 = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i39, double %i.ft, i64 1 ; 2 uses
  %i.fu = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i40, %.sroa.027.8.vec.insert.i.i.i.i40 ; 5 uses
  %i.fv = fmul <2 x double> %i.dc, %i.fu
  %i.fw = fadd <2 x double> %i.er, %i.fv
  %i.fx = shufflevector <2 x double> %i.ey, <2 x double> %i.fu, <2 x i32> <i32 1, i32 2>
  %i.fy = shufflevector <2 x double> %i.fu, <2 x double> %i.ey, <2 x i32> <i32 1, i32 3>
  %i.fz = fneg <2 x double> %i.fy
  %i.ga = fmul <2 x double> %i.fb, %i.fz
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.fx, <2 x double> %i.ga)
  %i.gc = fadd <2 x double> %i.fw, %i.gb
  %i.gd = fadd <2 x double> %i.fg, %i.gc          ; 5 uses
  %bc7.i7 = bitcast <2 x i64> %i.u to <2 x double> ; 2 uses
  %i.ge = shufflevector <2 x double> %bc7.i7, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %bc.i6 = bitcast <2 x i64> %i.t to <2 x double> ; 4 uses
  %i.gf = extractelement <2 x double> %bc.i6, i64 1 ; 2 uses
  %i.gg = fneg double %.sroa.7171.32.copyload
  %i.gh = extractelement <2 x double> %bc7.i7, i64 0 ; 4 uses
  %i.gi = fneg <2 x double> %.sroa.5.32.copyload  ; 4 uses
  %.sroa.0.8.vec.extract.i.i.i8 = extractelement <2 x double> %i.gi, i64 1
  %i.gj = fneg double %.sroa.0.8.vec.extract.i.i.i8
  %i.gk = fmul double %i.gh, %i.gj
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.gg, double %i.gk)
  %.sroa.027.0.vec.insert.i.i.i.i11 = insertelement <2 x double> poison, double %i.gl, i64 0
  %.sroa.0.0.vec.extract.i.i.i9 = extractelement <2 x double> %i.gi, i64 0
  %i.gm = extractelement <2 x double> %bc.i6, i64 0 ; 2 uses
  %i.gn = fmul double %.sroa.7171.32.copyload, %i.gm
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gh, double %.sroa.0.0.vec.extract.i.i.i9, double %i.gn)
  %.sroa.027.8.vec.insert.i.i.i.i12 = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i11, double %i.go, i64 1 ; 2 uses
  %i.gp = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i12, %.sroa.027.8.vec.insert.i.i.i.i12 ; 5 uses
  %i.gq = fmul <2 x double> %i.ge, %i.gp
  %i.gr = fsub <2 x double> %i.gq, %.sroa.5.32.copyload
  %i.gs = shufflevector <2 x i64> %i.t, <2 x i64> %i.u, <2 x i32> <i32 1, i32 2>
  %i.gt = bitcast <2 x i64> %i.gs to <2 x double> ; 2 uses
  %i.gu = shufflevector <2 x double> %bc.i6, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gv = shufflevector <2 x double> %i.gi, <2 x double> %i.q, <2 x i32> <i32 1, i32 3>
  %i.gw = shufflevector <2 x double> %bc.i6, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gx = shufflevector <2 x double> %i.gi, <2 x double> %i.q, <2 x i32> <i32 0, i32 2>
  %i.gy = fneg <2 x double> %i.gx
  %i.gz = fmul <2 x double> %i.gw, %i.gy
  %i.ha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.gv, <2 x double> %i.gz) ; 2 uses
  %i.hb = fadd <2 x double> %i.ha, %i.ha          ; 5 uses
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> %i.gp, <2 x i32> <i32 0, i32 2>
  %i.hd = shufflevector <2 x i64> %i.u, <2 x i64> %i.t, <2 x i32> <i32 0, i32 2>
  %i.he = bitcast <2 x i64> %i.hd to <2 x double> ; 2 uses
  %i.hf = shufflevector <2 x double> %i.gp, <2 x double> %i.hb, <2 x i32> <i32 1, i32 2>
  %i.hg = fneg <2 x double> %i.hf
  %i.hh = fmul <2 x double> %i.he, %i.hg
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.hc, <2 x double> %i.hh)
  %i.hj = fadd <2 x double> %i.gr, %i.hi
  %i.hk = extractelement <2 x double> %i.q, i64 1
  %i.hl = fneg double %i.hk
  %i.hm = fmul double %i.gh, %i.hl
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.s, double %i.hm)
  %.sroa.027.0.vec.insert.i.i.i.i19 = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.ho = extractelement <2 x double> %i.q, i64 0
  %i.hp = fmul double %i.gm, %i.dv
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.ho, double %i.hp)
  %.sroa.027.8.vec.insert.i.i.i.i20 = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i19, double %i.hq, i64 1 ; 2 uses
  %i.hr = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i20, %.sroa.027.8.vec.insert.i.i.i.i20 ; 5 uses
  %i.hs = fmul <2 x double> %i.ge, %i.hr
  %i.ht = fadd <2 x double> %i.v, %i.hs
  %i.hu = shufflevector <2 x double> %i.hb, <2 x double> %i.hr, <2 x i32> <i32 1, i32 2>
  %i.hv = shufflevector <2 x double> %i.hr, <2 x double> %i.hb, <2 x i32> <i32 1, i32 3>
  %i.hw = fneg <2 x double> %i.hv
  %i.hx = fmul <2 x double> %i.he, %i.hw
  %i.hy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.hu, <2 x double> %i.hx)
  %i.hz = fadd <2 x double> %i.ht, %i.hy
  %i.ia = fadd <2 x double> %i.hj, %i.hz          ; 2 uses
  %i.ib = shufflevector <2 x double> %i.dn, <2 x double> %i.fu, <2 x i32> <i32 0, i32 2>
  %i.ic = fneg <2 x double> %i.ib
  %i.id = fmul <2 x double> %i.dc, %i.ey          ; 2 uses
  %i.ie = insertelement <2 x double> poison, double %.sroa.7175.32.copyload, i64 0
  %i.if = insertelement <2 x double> %i.ie, double %i.fn, i64 1 ; 2 uses
  %i.ig = fsub <2 x double> %i.id, %i.if
  %i.ih = fadd <2 x double> %i.id, %i.if
  %i.ii = shufflevector <2 x double> %i.ig, <2 x double> %i.ih, <2 x i32> <i32 0, i32 3>
  %i.ij = fmul <2 x double> %i.et, %i.ic
  %i.ik = shufflevector <2 x double> %i.dn, <2 x double> %i.fu, <2 x i32> <i32 1, i32 3>
  %i.il = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.ik, <2 x double> %i.ij)
  %i.im = fadd <2 x double> %i.ii, %i.il          ; 2 uses
  %shift266 = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop267 = fadd <2 x double> %i.im, %shift266 ; 2 uses
  %i.in = shufflevector <2 x double> %i.gp, <2 x double> %i.hr, <2 x i32> <i32 0, i32 2>
  %i.io = fneg <2 x double> %i.in
  %i.ip = fmul <2 x double> %i.ge, %i.hb          ; 2 uses
  %i.iq = insertelement <2 x double> poison, double %.sroa.7171.32.copyload, i64 0
  %i.ir = insertelement <2 x double> %i.iq, double %i.s, i64 1 ; 2 uses
  %i.is = fsub <2 x double> %i.ip, %i.ir
  %i.it = fadd <2 x double> %i.ip, %i.ir
  %i.iu = shufflevector <2 x double> %i.is, <2 x double> %i.it, <2 x i32> <i32 0, i32 3>
  %i.iv = fmul <2 x double> %i.gw, %i.io
  %i.iw = shufflevector <2 x double> %i.gp, <2 x double> %i.hr, <2 x i32> <i32 1, i32 3>
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.iw, <2 x double> %i.iv)
  %i.iy = fadd <2 x double> %i.iu, %i.ix          ; 2 uses
  %shift269 = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop270 = fadd <2 x double> %i.iy, %shift269 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0118.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  %i.iz = extractelement <2 x double> %.sroa.0129.sroa.0.1.in, i64 0 ; 4 uses
  %i.ja = fmul double %i.iz, 2.000000e+00         ; 2 uses
  %i.jb = extractelement <2 x double> %.sroa.0129.sroa.0.1.in, i64 1 ; 3 uses
  %i.jc = fmul double %i.jb, 2.000000e+00         ; 3 uses
  %i.jd = extractelement <2 x double> %.sroa.0129.sroa.9.1.in, i64 0 ; 2 uses
  %i.je = fmul double %i.jd, 2.000000e+00         ; 4 uses
  %i.jf = extractelement <2 x double> %.sroa.0129.sroa.9.1.in, i64 1 ; 3 uses
  %i.jg = fmul double %i.ja, %i.jf                ; 2 uses
  %i.jh = fmul double %i.jc, %i.jf                ; 2 uses
  %i.ji = fmul double %i.je, %i.jf                ; 2 uses
  %i.jj = fmul double %i.iz, %i.ja                ; 2 uses
  %i.jk = fmul double %i.iz, %i.jc                ; 2 uses
  %i.jl = fmul double %i.iz, %i.je                ; 2 uses
  %i.jm = fmul double %i.jb, %i.jc                ; 2 uses
  %i.jn = fmul double %i.jb, %i.je                ; 2 uses
  %i.jo = fmul double %i.jd, %i.je                ; 2 uses
  %i.jp = fadd double %i.jm, %i.jo
  %i.jq = fsub double 1.000000e+00, %i.jp
  store double %i.jq, ptr %.sroa.0118.i, align 16, !tbaa !10, !alias.scope !224, !noalias !225
  %i.jr = fsub double %i.jk, %i.ji
  %.sroa.0118.i.24.i.24.i.24..sroa_idx297 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 24
  store double %i.jr, ptr %.sroa.0118.i.24.i.24.i.24..sroa_idx297, align 8, !tbaa !10, !alias.scope !224, !noalias !225
  %i.js = fadd double %i.jl, %i.jh                ; 3 uses
  store double %i.js, ptr %.sroa.19.i, align 16, !tbaa !10, !alias.scope !224, !noalias !225
  %i.jt = fadd double %i.jk, %i.ji
  %.sroa.0118.i.8.i.8.i.8..sroa_idx295 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 8
  store double %i.jt, ptr %.sroa.0118.i.8.i.8.i.8..sroa_idx295, align 8, !tbaa !10, !alias.scope !224, !noalias !225
  %i.ju = fadd double %i.jj, %i.jo
  %i.jv = fsub double 1.000000e+00, %i.ju         ; 3 uses
  %.sroa.0118.i.32.i.32.i.32..sroa_idx298 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 32
  store double %i.jv, ptr %.sroa.0118.i.32.i.32.i.32..sroa_idx298, align 16, !tbaa !10, !alias.scope !224, !noalias !225
  %i.jw = fsub double %i.jn, %i.jg                ; 3 uses
  %.sroa.19.i.8.i.8.i.8..sroa_idx294 = getelementptr inbounds nuw i8, ptr %.sroa.19.i, i64 8
  store double %i.jw, ptr %.sroa.19.i.8.i.8.i.8..sroa_idx294, align 8, !tbaa !10, !alias.scope !224, !noalias !225
  %i.jx = fsub double %i.jl, %i.jh                ; 2 uses
  %.sroa.0118.i.16.i.16.i.16..sroa_idx296 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 16
  store double %i.jx, ptr %.sroa.0118.i.16.i.16.i.16..sroa_idx296, align 16, !tbaa !10, !alias.scope !224, !noalias !225
  %i.jy = fadd double %i.jn, %i.jg                ; 3 uses
  %.sroa.0118.i.40.i.40.i.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 40
  store double %i.jy, ptr %.sroa.0118.i.40.i.40.i.40..sroa_idx, align 8, !tbaa !10, !alias.scope !224, !noalias !225
  %i.jz = fadd double %i.jj, %i.jm
  %i.ka = fsub double 1.000000e+00, %i.jz         ; 3 uses
  %.sroa.19.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19.i, i64 16
  store double %i.ka, ptr %.sroa.19.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !10, !alias.scope !224, !noalias !225
  %.sroa.0118.i.0..sroa.0118.i.0..sroa.0118.i.0..sroa.0118.0..sroa.0118.0.119.i = load <2 x double>, ptr %.sroa.0118.i, align 16, !noalias !225 ; 4 uses
  %.sroa.482.16.vec.insert = insertelement <2 x double> poison, double %i.jx, i64 0
  %.sroa.0118.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 24
  %.sroa.0118.i.24..sroa.0118.i.24..sroa.0118.i.24..sroa.0118.24..sroa.0118.24..i = load <2 x double>, ptr %.sroa.0118.i.24.i.24.i.24..sroa_idx, align 8, !noalias !225 ; 2 uses
  %.sroa.12.64.vec.insert = insertelement <2 x double> poison, double %i.jy, i64 0 ; 2 uses
  %.sroa.19.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.48..i = load <2 x double>, ptr %.sroa.19.i, align 16, !noalias !225 ; 2 uses
  %.sroa.20.112.vec.insert = insertelement <2 x double> poison, double %i.ka, i64 0 ; 2 uses
  %i.kb = extractelement <2 x double> %.sroa.0118.i.0..sroa.0118.i.0..sroa.0118.i.0..sroa.0118.0..sroa.0118.0.119.i, i64 0
  %.sroa.0118.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 8
  %.sroa.0118.i.8..sroa.0118.i.8..sroa.0118.i.8..sroa.0118.8..sroa.0118.8.121.i = load <2 x double>, ptr %.sroa.0118.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !49, !noalias !225 ; 3 uses
  %.sroa.0118.i.32.i.32.i.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 32
  %.sroa.0118.i.32..sroa.0118.i.32..sroa.0118.i.32..sroa.0118.32..sroa.0118.32..i = load <2 x double>, ptr %.sroa.0118.i.32.i.32.i.32..sroa_idx, align 16, !tbaa !49, !noalias !225
  %.sroa.19.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19.i, i64 8
  %.sroa.19.i.8..sroa.19.i.8..sroa.19.i.8..sroa.19.8..sroa.19.56..i = load <2 x double>, ptr %.sroa.19.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !49, !noalias !225
  %i.kc = fneg <2 x double> %foldExtExtBinop270
  %.sroa.6.24.vec.insert.i272 = insertelement <2 x double> %i.kc, double 0.000000e+00, i64 1 ; 3 uses
  %.sroa.0129.sroa.16.40.vec.extract = extractelement <2 x double> %i.ia, i64 1 ; 4 uses
  %.sroa.9.48.vec.insert.i = insertelement <2 x double> poison, double %.sroa.0129.sroa.16.40.vec.extract, i64 0
  %.sroa.0129.sroa.16.32.vec.extract = extractelement <2 x double> %i.ia, i64 0 ; 4 uses
  %i.kd = fneg double %.sroa.0129.sroa.16.32.vec.extract
  %.sroa.9.56.vec.insert.i = insertelement <2 x double> %.sroa.9.48.vec.insert.i, double %i.kd, i64 1 ; 3 uses
  %.sroa.0.8.vec.insert.i = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %foldExtExtBinop270, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ke = shufflevector <2 x double> %.sroa.0118.i.0..sroa.0118.i.0..sroa.0118.i.0..sroa.0118.0..sroa.0118.0.119.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x double> %.sroa.0.8.vec.insert.i, %i.ke
  %i.kg = shufflevector <2 x double> %.sroa.0118.i.8..sroa.0118.i.8..sroa.0118.i.8..sroa.0118.8..sroa.0118.8.121.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kh = fmul <2 x double> %.sroa.6.24.vec.insert.i272, %i.kg
  %i.ki = fadd <2 x double> %i.kf, %i.kh
  %.sroa.0118.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i, i64 16
  %.sroa.0118.i.16..sroa.0118.i.16..sroa.0118.i.16..sroa.0118.16..sroa.0118.16..i = load <2 x double>, ptr %.sroa.0118.i.16.i.16.i.16..sroa_idx, align 16, !noalias !225 ; 4 uses
  %i.kj = shufflevector <2 x double> %.sroa.0118.i.16..sroa.0118.i.16..sroa.0118.i.16..sroa.0118.16..sroa.0118.16..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = fmul <2 x double> %.sroa.9.56.vec.insert.i, %i.kj
  %i.kl = fadd <2 x double> %i.ki, %i.kk          ; 2 uses
  %i.km = extractelement <2 x double> %.sroa.0118.i.8..sroa.0118.i.8..sroa.0118.i.8..sroa.0118.8..sroa.0118.8.121.i, i64 0
  %i.kn = fmul double %i.km, %.sroa.0129.sroa.16.32.vec.extract
  %i.ko = extractelement <2 x double> %.sroa.0118.i.16..sroa.0118.i.16..sroa.0118.i.16..sroa.0118.16..sroa.0118.16..i, i64 0
  %i.kp = fmul double %i.ko, 0.000000e+00
  %i.kq = fadd double %i.kn, %i.kp
  %i.kr = fmul double %i.kb, %.sroa.0129.sroa.16.40.vec.extract
  %i.ks = fsub double %i.kq, %i.kr
  %i.kt = extractelement <2 x double> %.sroa.0118.i.16..sroa.0118.i.16..sroa.0118.i.16..sroa.0118.16..sroa.0118.16..i, i64 1
  %i.ku = shufflevector <2 x double> %.sroa.0118.i.16..sroa.0118.i.16..sroa.0118.i.16..sroa.0118.16..sroa.0118.16..i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kv = fmul <2 x double> %.sroa.0.8.vec.insert.i, %i.ku
  %i.kw = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.kx = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ky = fmul <2 x double> %.sroa.6.24.vec.insert.i272, %i.kx
  %i.kz = fadd <2 x double> %i.ky, %i.kv
  %i.la = shufflevector <2 x double> %.sroa.12.64.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lb = fmul <2 x double> %i.la, %.sroa.9.56.vec.insert.i
  %i.lc = fadd <2 x double> %i.lb, %i.kz          ; 2 uses
  %i.ld = fmul double %i.jv, %.sroa.0129.sroa.16.32.vec.extract
  %i.le = fmul double %i.jy, 0.000000e+00
  %i.lf = fadd double %i.le, %i.ld
  %i.lg = fmul double %.sroa.0129.sroa.16.40.vec.extract, %i.kt
  %i.lh = fsub double %i.lf, %i.lg
  %i.li = insertelement <2 x double> poison, double %i.js, i64 0
  %i.lj = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lk = fmul <2 x double> %.sroa.0.8.vec.insert.i, %i.lj
  %i.ll = insertelement <2 x double> poison, double %i.jw, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = fmul <2 x double> %.sroa.6.24.vec.insert.i272, %i.lm
  %i.lo = fadd <2 x double> %i.lk, %i.ln
  %i.lp = shufflevector <2 x double> %.sroa.20.112.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lq = fmul <2 x double> %i.lp, %.sroa.9.56.vec.insert.i
  %i.lr = fadd <2 x double> %i.lo, %i.lq          ; 2 uses
  %i.ls = fmul double %i.jw, %.sroa.0129.sroa.16.32.vec.extract
  %i.lt = fmul double %i.ka, 0.000000e+00
  %i.lu = fadd double %i.lt, %i.ls
  %i.lv = fmul double %i.js, %.sroa.0129.sroa.16.40.vec.extract
  %i.lw = fsub double %i.lu, %i.lv
  %.sroa.482.24.vec.insert = shufflevector <2 x double> %.sroa.482.16.vec.insert, <2 x double> %i.kl, <2 x i32> <i32 0, i32 2>
  %.sroa.7.32.vec.insert = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.7.40.vec.insert = insertelement <2 x double> %.sroa.7.32.vec.insert, double %i.ks, i64 1
  %.sroa.12.72.vec.insert = shufflevector <2 x double> %.sroa.12.64.vec.insert, <2 x double> %i.lc, <2 x i32> <i32 0, i32 2>
  %.sroa.15.80.vec.insert = shufflevector <2 x double> %i.lc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.15.88.vec.insert = insertelement <2 x double> %.sroa.15.80.vec.insert, double %i.lh, i64 1
  %.sroa.20.120.vec.insert = shufflevector <2 x double> %.sroa.20.112.vec.insert, <2 x double> %i.lr, <2 x i32> <i32 0, i32 2>
  %.sroa.23.128.vec.insert = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.23.136.vec.insert = insertelement <2 x double> %.sroa.23.128.vec.insert, double %i.lw, i64 1
  %.sroa.28.144.vec.insert = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %.sroa.0118.i.0..sroa.0118.i.0..sroa.0118.i.0..sroa.0118.0..sroa.0118.0.119.i, <2 x i32> <i32 0, i32 2>
  %.sroa.34.192.vec.insert = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %.sroa.0118.i.24..sroa.0118.i.24..sroa.0118.i.24..sroa.0118.24..sroa.0118.24..i, <2 x i32> <i32 0, i32 2>
  %.sroa.40.240.vec.insert = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %.sroa.19.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.48..i, <2 x i32> <i32 0, i32 2>
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0118.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !254, !nonnull !73, !align !74
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !75 ; 18 uses
  store <2 x double> %.sroa.0118.i.0..sroa.0118.i.0..sroa.0118.i.0..sroa.0118.0..sroa.0118.0.119.i, ptr %i.lz, align 16, !tbaa !49
  %i.ma = getelementptr i8, ptr %i.lz, i64 16
  store <2 x double> %.sroa.482.24.vec.insert, ptr %i.ma, align 16, !tbaa !49
  %i.mb = getelementptr i8, ptr %i.lz, i64 32
  store <2 x double> %.sroa.7.40.vec.insert, ptr %i.mb, align 16, !tbaa !49
  %i.mc = getelementptr i8, ptr %i.lz, i64 48
  store <2 x double> %.sroa.0118.i.24..sroa.0118.i.24..sroa.0118.i.24..sroa.0118.24..sroa.0118.24..i, ptr %i.mc, align 16, !tbaa !49
  %i.md = getelementptr i8, ptr %i.lz, i64 64
  store <2 x double> %.sroa.12.72.vec.insert, ptr %i.md, align 16, !tbaa !49
  %i.me = getelementptr i8, ptr %i.lz, i64 80
  store <2 x double> %.sroa.15.88.vec.insert, ptr %i.me, align 16, !tbaa !49
  %i.mf = getelementptr i8, ptr %i.lz, i64 96
  store <2 x double> %.sroa.19.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.48..i, ptr %i.mf, align 16, !tbaa !49
  %i.mg = getelementptr i8, ptr %i.lz, i64 112
  store <2 x double> %.sroa.20.120.vec.insert, ptr %i.mg, align 16, !tbaa !49
  %i.mh = getelementptr i8, ptr %i.lz, i64 128
  store <2 x double> %.sroa.23.136.vec.insert, ptr %i.mh, align 16, !tbaa !49
  %i.mi = getelementptr i8, ptr %i.lz, i64 144
  store <2 x double> zeroinitializer, ptr %i.mi, align 16, !tbaa !49
  %i.mj = getelementptr i8, ptr %i.lz, i64 160
  store <2 x double> %.sroa.28.144.vec.insert, ptr %i.mj, align 16, !tbaa !49
  %i.mk = getelementptr i8, ptr %i.lz, i64 176
  store <2 x double> %.sroa.0118.i.8..sroa.0118.i.8..sroa.0118.i.8..sroa.0118.8..sroa.0118.8.121.i, ptr %i.mk, align 16, !tbaa !49
  %i.ml = getelementptr i8, ptr %i.lz, i64 192
  store <2 x double> zeroinitializer, ptr %i.ml, align 16, !tbaa !49
  %i.mm = getelementptr i8, ptr %i.lz, i64 208
  store <2 x double> %.sroa.34.192.vec.insert, ptr %i.mm, align 16, !tbaa !49
  %i.mn = getelementptr i8, ptr %i.lz, i64 224
  store <2 x double> %.sroa.0118.i.32..sroa.0118.i.32..sroa.0118.i.32..sroa.0118.32..sroa.0118.32..i, ptr %i.mn, align 16, !tbaa !49
  %i.mo = getelementptr i8, ptr %i.lz, i64 240
  store <2 x double> zeroinitializer, ptr %i.mo, align 16, !tbaa !49
  %i.mp = getelementptr i8, ptr %i.lz, i64 256
  store <2 x double> %.sroa.40.240.vec.insert, ptr %i.mp, align 16, !tbaa !49
  %i.mq = getelementptr i8, ptr %i.lz, i64 272
  store <2 x double> %.sroa.19.i.8..sroa.19.i.8..sroa.19.i.8..sroa.19.8..sroa.19.56..i, ptr %i.mq, align 16, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0118.i49)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i50)
  %i.mr = extractelement <2 x double> %.sroa.091.sroa.0.1.in, i64 0 ; 4 uses
  %i.ms = fmul double %i.mr, 2.000000e+00         ; 2 uses
  %i.mt = extractelement <2 x double> %.sroa.091.sroa.0.1.in, i64 1 ; 3 uses
  %i.mu = fmul double %i.mt, 2.000000e+00         ; 3 uses
  %i.mv = extractelement <2 x double> %.sroa.091.sroa.9.1.in, i64 0 ; 2 uses
  %i.mw = fmul double %i.mv, 2.000000e+00         ; 4 uses
  %i.mx = extractelement <2 x double> %.sroa.091.sroa.9.1.in, i64 1 ; 3 uses
  %i.my = fmul double %i.ms, %i.mx                ; 2 uses
  %i.mz = fmul double %i.mu, %i.mx                ; 2 uses
  %i.na = fmul double %i.mw, %i.mx                ; 2 uses
  %i.nb = fmul double %i.mr, %i.ms                ; 2 uses
  %i.nc = fmul double %i.mr, %i.mu                ; 2 uses
  %i.nd = fmul double %i.mr, %i.mw                ; 2 uses
  %i.ne = fmul double %i.mt, %i.mu                ; 2 uses
  %i.nf = fmul double %i.mt, %i.mw                ; 2 uses
  %i.ng = fmul double %i.mv, %i.mw                ; 2 uses
  %i.nh = fadd double %i.ne, %i.ng
  %i.ni = fsub double 1.000000e+00, %i.nh
  store double %i.ni, ptr %.sroa.0118.i49, align 16, !tbaa !10, !alias.scope !255, !noalias !256
  %i.nj = fsub double %i.nc, %i.na
  %.sroa.0118.i49.24.i49.24.i49.24..sroa_idx302 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 24
  store double %i.nj, ptr %.sroa.0118.i49.24.i49.24.i49.24..sroa_idx302, align 8, !tbaa !10, !alias.scope !255, !noalias !256
  %i.nk = fadd double %i.nd, %i.mz                ; 3 uses
  store double %i.nk, ptr %.sroa.19.i50, align 16, !tbaa !10, !alias.scope !255, !noalias !256
  %i.nl = fadd double %i.nc, %i.na
  %.sroa.0118.i49.8.i49.8.i49.8..sroa_idx300 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 8
  store double %i.nl, ptr %.sroa.0118.i49.8.i49.8.i49.8..sroa_idx300, align 8, !tbaa !10, !alias.scope !255, !noalias !256
  %i.nm = fadd double %i.nb, %i.ng
  %i.nn = fsub double 1.000000e+00, %i.nm         ; 3 uses
  %.sroa.0118.i49.32.i49.32.i49.32..sroa_idx303 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 32
  store double %i.nn, ptr %.sroa.0118.i49.32.i49.32.i49.32..sroa_idx303, align 16, !tbaa !10, !alias.scope !255, !noalias !256
  %i.no = fsub double %i.nf, %i.my                ; 3 uses
  %.sroa.19.i50.8.i50.8.i50.8..sroa_idx299 = getelementptr inbounds nuw i8, ptr %.sroa.19.i50, i64 8
  store double %i.no, ptr %.sroa.19.i50.8.i50.8.i50.8..sroa_idx299, align 8, !tbaa !10, !alias.scope !255, !noalias !256
  %i.np = fsub double %i.nd, %i.mz                ; 2 uses
  %.sroa.0118.i49.16.i49.16.i49.16..sroa_idx301 = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 16
  store double %i.np, ptr %.sroa.0118.i49.16.i49.16.i49.16..sroa_idx301, align 16, !tbaa !10, !alias.scope !255, !noalias !256
  %i.nq = fadd double %i.nf, %i.my                ; 3 uses
  %.sroa.0118.i49.40.i49.40.i49.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 40
  store double %i.nq, ptr %.sroa.0118.i49.40.i49.40.i49.40..sroa_idx, align 8, !tbaa !10, !alias.scope !255, !noalias !256
  %i.nr = fadd double %i.nb, %i.ne
  %i.ns = fsub double 1.000000e+00, %i.nr         ; 3 uses
  %.sroa.19.i50.16.i50.16.i50.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19.i50, i64 16
  store double %i.ns, ptr %.sroa.19.i50.16.i50.16.i50.16..sroa_idx, align 16, !tbaa !10, !alias.scope !255, !noalias !256
  %.sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.0..sroa.0118.0.119.i58 = load <2 x double>, ptr %.sroa.0118.i49, align 16, !noalias !256 ; 4 uses
  %i.nt = insertelement <2 x double> poison, double %i.np, i64 0
  %.sroa.0118.i49.24.i49.24.i49.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 24
  %.sroa.0118.i49.24..sroa.0118.i49.24..sroa.0118.i49.24..sroa.0118.24..sroa.0118.24..i59 = load <2 x double>, ptr %.sroa.0118.i49.24.i49.24.i49.24..sroa_idx, align 8, !noalias !256 ; 2 uses
  %i.nu = insertelement <2 x double> poison, double %i.nq, i64 0 ; 2 uses
  %.sroa.19.i50.0..sroa.19.i50.0..sroa.19.i50.0..sroa.19.0..sroa.19.48..i60 = load <2 x double>, ptr %.sroa.19.i50, align 16, !noalias !256 ; 2 uses
  %i.nv = insertelement <2 x double> poison, double %i.ns, i64 0 ; 2 uses
  %i.nw = bitcast <2 x double> %.sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.0..sroa.0118.0.119.i58 to <2 x i64>
  %.sroa.28.168.vec.insert207 = shufflevector <2 x i64> %i.nw, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %.sroa.0118.i49.8.i49.8.i49.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 8
  %.sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.8..sroa.0118.8.121.i61 = load <2 x double>, ptr %.sroa.0118.i49.8.i49.8.i49.8..sroa_idx, align 8, !tbaa !49, !noalias !256 ; 3 uses
  %bc222 = bitcast <2 x double> %.sroa.0118.i49.24..sroa.0118.i49.24..sroa.0118.i49.24..sroa.0118.24..sroa.0118.24..i59 to <2 x i64>
  %.sroa.0118.i49.32.i49.32.i49.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 32
  %.sroa.0118.i49.32..sroa.0118.i49.32..sroa.0118.i49.32..sroa.0118.32..sroa.0118.32..i62223 = load <2 x i64>, ptr %.sroa.0118.i49.32.i49.32.i49.32..sroa_idx, align 16, !tbaa !49, !noalias !256
  %bc224 = bitcast <2 x double> %.sroa.19.i50.0..sroa.19.i50.0..sroa.19.i50.0..sroa.19.0..sroa.19.48..i60 to <2 x i64>
  %.sroa.19.i50.8.i50.8.i50.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19.i50, i64 8
  %.sroa.19.i50.8..sroa.19.i50.8..sroa.19.i50.8..sroa.19.8..sroa.19.56..i63225 = load <2 x i64>, ptr %.sroa.19.i50.8.i50.8.i50.8..sroa_idx, align 8, !tbaa !49, !noalias !256
  %i.nx = fneg <2 x double> %foldExtExtBinop267
  %.sroa.9.56.vec.insert.i66.a = insertelement <2 x double> %i.nx, double 0.000000e+00, i64 1 ; 3 uses
  %.sroa.0.8.vec.insert.i67 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %foldExtExtBinop267, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ny = shufflevector <2 x double> %.sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.0..sroa.0118.0.119.i58, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nz = fmul <2 x double> %.sroa.0.8.vec.insert.i67, %i.ny
  %i.oa = shufflevector <2 x double> %.sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.8..sroa.0118.8.121.i61, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ob = fmul <2 x double> %.sroa.9.56.vec.insert.i66.a, %i.oa
  %i.oc = fadd <2 x double> %i.nz, %i.ob
  %.sroa.0118.i49.16.i49.16.i49.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0118.i49, i64 16
  %.sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.16..sroa.0118.16..i68 = load <2 x double>, ptr %.sroa.0118.i49.16.i49.16.i49.16..sroa_idx, align 16, !noalias !256 ; 4 uses
  %i.od = shufflevector <2 x double> %.sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.16..sroa.0118.16..i68, <2 x double> poison, <2 x i32> zeroinitializer
  %1 = shufflevector <2 x double> %.sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.16..sroa.0118.16..i68, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %2 = fmul <2 x double> %.sroa.0.8.vec.insert.i67, %1
  %3 = insertelement <2 x double> poison, double %i.nn, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = fmul <2 x double> %.sroa.9.56.vec.insert.i66.a, %4
  %6 = fadd <2 x double> %5, %2
  %7 = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = insertelement <2 x double> poison, double %i.nk, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oe = fmul <2 x double> %.sroa.0.8.vec.insert.i67, %9
  %i.of = insertelement <2 x double> poison, double %i.no, i64 0
  %i.og = shufflevector <2 x double> %i.of, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oh = fmul <2 x double> %.sroa.9.56.vec.insert.i66.a, %i.og
  %i.oi = fadd <2 x double> %i.oe, %i.oh
  %i.oj = shufflevector <2 x double> %i.nv, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = fmul double %i.ns, 0.000000e+00
  %.sroa.091.sroa.16.40.vec.extract = extractelement <2 x double> %i.gd, i64 1
  %.sroa.091.sroa.16.32.vec.extract = extractelement <2 x double> %i.gd, i64 0 ; 2 uses
  %.sroa.9.48.vec.insert.i65 = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %11 = fneg double %.sroa.091.sroa.16.32.vec.extract
  %.sroa.9.56.vec.insert.i66 = insertelement <2 x double> %.sroa.9.48.vec.insert.i65, double %11, i64 1 ; 3 uses
  %12 = fmul <2 x double> %.sroa.9.56.vec.insert.i66, %i.od
  %13 = fadd <2 x double> %i.oc, %12              ; 2 uses
  %14 = fmul <2 x double> %7, %.sroa.9.56.vec.insert.i66
  %15 = fadd <2 x double> %14, %6                 ; 2 uses
  %i.ok = insertelement <2 x double> %.sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.8..sroa.0118.8.121.i61, double %i.nn, i64 1
  %i.ol = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.om = fmul <2 x double> %i.ok, %i.ol
  %16 = insertelement <2 x double> %.sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.16..sroa.0118.16..i68, double %i.nq, i64 1
  %i.on = fmul <2 x double> %16, zeroinitializer
  %i.oo = fadd <2 x double> %i.on, %i.om
  %17 = shufflevector <2 x double> %.sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.0..sroa.0118.0.119.i58, <2 x double> %.sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.i49.16..sroa.0118.16..sroa.0118.16..i68, <2 x i32> <i32 0, i32 3>
  %18 = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %19 = fmul <2 x double> %17, %18
  %20 = fsub <2 x double> %i.oo, %19              ; 2 uses
  %21 = fmul <2 x double> %i.oj, %.sroa.9.56.vec.insert.i66
  %22 = fadd <2 x double> %i.oi, %21              ; 2 uses
  %23 = fmul double %i.no, %.sroa.091.sroa.16.32.vec.extract
  %24 = fadd double %10, %23
  %25 = fmul double %i.nk, %.sroa.091.sroa.16.40.vec.extract
  %26 = fsub double %24, %25
  %.sroa.12.72.vec.insert195.uncasted.a = shufflevector <2 x double> %i.nt, <2 x double> %13, <2 x i32> <i32 0, i32 2>
  %27 = shufflevector <2 x double> %13, <2 x double> %20, <2 x i32> <i32 1, i32 2>
  %.sroa.12.72.vec.insert195.uncasted = shufflevector <2 x double> %i.nu, <2 x double> %15, <2 x i32> <i32 0, i32 2>
  %28 = shufflevector <2 x double> %15, <2 x double> %20, <2 x i32> <i32 1, i32 3>
  %.sroa.20.120.vec.insert202.uncasted = shufflevector <2 x double> %i.nv, <2 x double> %22, <2 x i32> <i32 0, i32 2>
  %bc231 = bitcast <2 x double> %22 to <2 x i64>
  %.sroa.23.128.vec.insert204 = shufflevector <2 x i64> %bc231, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.op = bitcast double %26 to i64
  %.sroa.23.136.vec.insert205 = insertelement <2 x i64> %.sroa.23.128.vec.insert204, i64 %i.op, i64 1
  %.sroa.28.144.vec.insert206 = insertelement <2 x i64> %.sroa.28.168.vec.insert207, i64 0, i64 0
  %.sroa.34.192.vec.insert209 = shufflevector <2 x i64> <i64 0, i64 poison>, <2 x i64> %bc222, <2 x i32> <i32 0, i32 2>
  %.sroa.40.240.vec.insert212 = shufflevector <2 x i64> <i64 0, i64 poison>, <2 x i64> %bc224, <2 x i32> <i32 0, i32 2>
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0118.i49)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i50)
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.or = load ptr, ptr %i.oq, align 16, !tbaa !257, !nonnull !73, !align !74
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !75 ; 18 uses
  %i.ot = fneg <2 x double> %.sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.i49.0..sroa.0118.0..sroa.0118.0.119.i58
  store <2 x double> %i.ot, ptr %i.os, align 16, !tbaa !49
  %i.ou = getelementptr i8, ptr %i.os, i64 16
  %i.ov = fneg <2 x double> %.sroa.12.72.vec.insert195.uncasted.a
  store <2 x double> %i.ov, ptr %i.ou, align 16, !tbaa !49
  %i.ow = getelementptr i8, ptr %i.os, i64 32
  %29 = fneg <2 x double> %27
  store <2 x double> %29, ptr %i.ow, align 16, !tbaa !49
  %i.ox = getelementptr i8, ptr %i.os, i64 48
  %i.oy = fneg <2 x double> %.sroa.0118.i49.24..sroa.0118.i49.24..sroa.0118.i49.24..sroa.0118.24..sroa.0118.24..i59
  store <2 x double> %i.oy, ptr %i.ox, align 16, !tbaa !49
  %i.oz = getelementptr i8, ptr %i.os, i64 64
  %i.pa = fneg <2 x double> %.sroa.12.72.vec.insert195.uncasted
  store <2 x double> %i.pa, ptr %i.oz, align 16, !tbaa !49
  %i.pb = getelementptr i8, ptr %i.os, i64 80
  %30 = fneg <2 x double> %28
  store <2 x double> %30, ptr %i.pb, align 16, !tbaa !49
  %i.pc = getelementptr i8, ptr %i.os, i64 96
  %i.pd = fneg <2 x double> %.sroa.19.i50.0..sroa.19.i50.0..sroa.19.i50.0..sroa.19.0..sroa.19.48..i60
  store <2 x double> %i.pd, ptr %i.pc, align 16, !tbaa !49
  %i.pe = getelementptr i8, ptr %i.os, i64 112
  %i.pf = fneg <2 x double> %.sroa.20.120.vec.insert202.uncasted
  store <2 x double> %i.pf, ptr %i.pe, align 16, !tbaa !49
  %i.pg = getelementptr i8, ptr %i.os, i64 128
  %i.ph = xor <2 x i64> %.sroa.23.136.vec.insert205, splat (i64 -9223372036854775808)
  store <2 x i64> %i.ph, ptr %i.pg, align 16, !tbaa !49
  %i.pi = getelementptr i8, ptr %i.os, i64 144
  store <2 x i64> splat (i64 -9223372036854775808), ptr %i.pi, align 16, !tbaa !49
  %i.pj = getelementptr i8, ptr %i.os, i64 160
  %i.pk = xor <2 x i64> %.sroa.28.144.vec.insert206, splat (i64 -9223372036854775808)
  store <2 x i64> %i.pk, ptr %i.pj, align 16, !tbaa !49
  %i.pl = getelementptr i8, ptr %i.os, i64 176
  %i.pm = fneg <2 x double> %.sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.i49.8..sroa.0118.8..sroa.0118.8.121.i61
  store <2 x double> %i.pm, ptr %i.pl, align 16, !tbaa !49
  %i.pn = getelementptr i8, ptr %i.os, i64 192
  store <2 x i64> splat (i64 -9223372036854775808), ptr %i.pn, align 16, !tbaa !49
  %i.po = getelementptr i8, ptr %i.os, i64 208
  %i.pp = xor <2 x i64> %.sroa.34.192.vec.insert209, splat (i64 -9223372036854775808)
  store <2 x i64> %i.pp, ptr %i.po, align 16, !tbaa !49
  %i.pq = getelementptr i8, ptr %i.os, i64 224
  %i.pr = xor <2 x i64> %.sroa.0118.i49.32..sroa.0118.i49.32..sroa.0118.i49.32..sroa.0118.32..sroa.0118.32..i62223, splat (i64 -9223372036854775808)
  store <2 x i64> %i.pr, ptr %i.pq, align 16, !tbaa !49
  %i.ps = getelementptr i8, ptr %i.os, i64 240
  store <2 x i64> splat (i64 -9223372036854775808), ptr %i.ps, align 16, !tbaa !49
  %i.pt = getelementptr i8, ptr %i.os, i64 256
  %i.pu = xor <2 x i64> %.sroa.40.240.vec.insert212, splat (i64 -9223372036854775808)
  store <2 x i64> %i.pu, ptr %i.pt, align 16, !tbaa !49
  %i.pv = getelementptr i8, ptr %i.os, i64 272
  %i.pw = xor <2 x i64> %.sroa.19.i50.8..sroa.19.i50.8..sroa.19.i50.8..sroa.19.8..sroa.19.56..i63225, splat (i64 -9223372036854775808)
  store <2 x i64> %i.pw, ptr %i.pv, align 16, !tbaa !49
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o13EdgeSE3ExpmapD0Ev(ptr noundef nonnull align 16 dereferenceable(664) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(664) dereferenceable(664) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 672) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_15VertexSE3ExpmapES2_EE6resizeEm(ptr noundef nonnull align 16 dereferenceable(648) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_15VertexSE3ExpmapES2_EE16allVerticesFixedEv(ptr noundef nonnull align 16 dereferenceable(648) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !91, !range !92, !noundef !73
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_15VertexSE3ExpmapES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !91, !range !92, !noundef !73
  %i.k = trunc nuw i8 %i.j to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_15VertexSE3ExpmapES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_15VertexSE3ExpmapES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o13EdgeSE3Expmap18setMeasurementDataEPKd(ptr noundef nonnull align 16 dereferenceable(664) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.g2o::SE3Quat", align 16     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load <2 x double>, ptr %1, align 8, !tbaa !10
  store <2 x double> %i.b, ptr %i.a, align 16, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double %i.d, ptr %i.e, align 16, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load <2 x double>, ptr %i.f, align 8, !tbaa !10
  store <2 x double> %i.g, ptr %2, align 16, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load double, ptr %i.j, align 8, !tbaa !10
  %i.l = load <2 x double>, ptr %i.h, align 8, !tbaa !10
  store <2 x double> %i.l, ptr %i.i, align 16, !tbaa !10
  %i.m = fcmp olt double %i.k, 0.000000e+00
  %.pre.i.i = load <2 x double>, ptr %2, align 16, !tbaa !49 ; 2 uses
  br i1 %i.m, label %bb.b, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %.pre1.i.i = load <2 x double>, ptr %i.i, align 16, !tbaa !49
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = fneg <2 x double> %.pre.i.i              ; 2 uses
  store <2 x double> %i.n, ptr %2, align 16, !tbaa !49
  %i.o = load <2 x double>, ptr %i.i, align 16, !tbaa !49
  %i.p = fneg <2 x double> %i.o                   ; 2 uses
  store <2 x double> %i.p, ptr %i.i, align 16, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  %i.q = phi <2 x double> [ %i.p, %bb.b ], [ %.pre1.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.r = phi <2 x double> [ %i.n, %bb.b ], [ %.pre.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.s = fmul <2 x double> %i.r, %i.r
  %i.t = fmul <2 x double> %i.q, %i.q
  %i.u = fadd <2 x double> %i.t, %i.s             ; 2 uses
  %shift = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.u, %shift
  %i.v = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.w = fcmp ogt double %i.v, 0.000000e+00
  br i1 %i.w, label %bb.d, label %_ZN3g2o7SE3QuatC2IN5Eigen3MapIKNS2_6MatrixIdLi7ELi1ELi0ELi7ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEEERKNS2_10MatrixBaseIT_EE.exit

bb.d:                                             ; preds = %bb.c
  %.scalar.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.v)
  %i.x = insertelement <2 x double> poison, double %.scalar.i.i.i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fdiv <2 x double> %i.r, %i.y
  store <2 x double> %i.z, ptr %2, align 16, !tbaa !49
  %i.aa = fdiv <2 x double> %i.q, %i.y
  store <2 x double> %i.aa, ptr %i.i, align 16, !tbaa !49
  br label %_ZN3g2o7SE3QuatC2IN5Eigen3MapIKNS2_6MatrixIdLi7ELi1ELi0ELi7ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEEERKNS2_10MatrixBaseIT_EE.exit

_ZN3g2o7SE3QuatC2IN5Eigen3MapIKNS2_6MatrixIdLi7ELi1ELi0ELi7ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEEERKNS2_10MatrixBaseIT_EE.exit: ; preds = %bb.c, %bb.d
  %i.ab = load ptr, ptr %0, align 16, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 16 dereferenceable(576) %0, ptr noundef nonnull align 16 dereferenceable(56) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o13EdgeSE3Expmap18getMeasurementDataEPd(ptr noundef nonnull align 16 dereferenceable(664) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load <2 x double>, ptr %i.b, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load <2 x double>, ptr %i.d, align 16
  %i.f = load double, ptr %i.a, align 16, !tbaa !10, !noalias !260
  %.sroa.5.24.vec.insert = insertelement <2 x double> %i.e, double %i.f, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load <2 x double>, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load double, ptr %i.i, align 8, !tbaa !10, !noalias !260
  store <2 x double> %i.c, ptr %1, align 1, !tbaa !49
  %i.k = getelementptr i8, ptr %1, i64 16
  store <2 x double> %.sroa.5.24.vec.insert, ptr %i.k, align 1, !tbaa !49
  %i.l = getelementptr i8, ptr %1, i64 32
  store <2 x double> %i.h, ptr %i.l, align 1, !tbaa !49
  %i.m = getelementptr i8, ptr %1, i64 48
  store double %i.j, ptr %i.m, align 8, !tbaa !10
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o13EdgeSE3Expmap20measurementDimensionEv(ptr noundef nonnull align 16 dereferenceable(664) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 7
}

declare noundef zeroext i1 @_ZN3g2o16OptimizableGraph4Edge23setMeasurementFromStateEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi6ENS_7SE3QuatEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(576) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi6ENS_7SE3QuatEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(576) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi6ENS_7SE3QuatEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(576) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  ret ptr %i.a
end_hunk_0
