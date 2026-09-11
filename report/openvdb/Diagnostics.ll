Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Diagnostics?download=true
inline.NumInlined: 29245
inline.NumDeleted: 11782
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 311
begin_hunk_0_@_ZNK7openvdb5v13_04math11WenoStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE10normSqGradERKf:bb.a
  %i.bh = fpext <2 x float> %i.bg to <2 x double>
  %i.bi = fneg <2 x double> %i.bh
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> splat (double 3.000000e+00), <2 x double> %i.bi)
  %i.bk = fpext <2 x float> %i.aa to <2 x double> ; 4 uses
  %i.bl = fadd <2 x double> %i.bj, %i.bk          ; 2 uses
  %i.bm = fmul <2 x double> %i.bl, %i.bl
  %i.bn = fmul <2 x double> %i.bm, splat (double 2.500000e-01)
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.bn)
  %i.bp = fadd <2 x double> %i.am, %i.bo          ; 2 uses
  %i.bq = fmul <2 x double> %i.bp, %i.bp
  %i.br = fdiv <2 x double> splat (double 3.000000e-01), %i.bq ; 2 uses
  %i.bs = fpext <2 x float> %i.m to <2 x double>
  %i.bt = fpext <2 x float> %i.q to <2 x double>  ; 4 uses
  %i.bu = fmul <2 x double> %i.bt, splat (double -7.000000e+00)
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bu)
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> splat (double 1.100000e+01), <2 x double> %i.bv)
  %i.bx = fneg <2 x double> %i.bt
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> splat (double 5.000000e+00), <2 x double> %i.bx)
  %i.bz = fpext <2 x float> %i.x to <2 x double>  ; 7 uses
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> splat (double 2.000000e+00), <2 x double> %i.by)
  %i.cb = fmul <2 x double> %i.ca, %i.bb
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.bw, <2 x double> %i.cb)
  %i.cd = fmul <2 x double> %i.bz, splat (double 5.000000e+00)
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> splat (double 2.000000e+00), <2 x double> %i.cd)
  %i.cf = fsub <2 x double> %i.ce, %i.bk
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.cf, <2 x double> %i.cc)
  %i.ch = fptrunc <2 x double> %i.cg to <2 x float>
  %i.ci = fpext <2 x float> %i.ch to <2 x double>
  %i.cj = fadd <2 x double> %i.ap, %i.bb
  %i.ck = fadd <2 x double> %i.cj, %i.br
  %i.cl = fmul <2 x double> %i.ck, splat (double 6.000000e+00)
  %i.cm = fdiv <2 x double> %i.ci, %i.cl          ; 3 uses
  %i.cn = fptrunc <2 x double> %i.cm to <2 x float>
  %i.co = shufflevector <8 x float> %i.j, <8 x float> poison, <2 x i32> <i32 5, i32 poison>
  %i.cp = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cq = shufflevector <2 x float> %i.co, <2 x float> %i.cp, <2 x i32> <i32 0, i32 3>
  %i.cr = fsub <2 x float> %i.cq, %i.z            ; 3 uses
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> splat (float -2.000000e+00), <2 x float> %i.cr)
  %i.ct = fadd <2 x float> %i.x, %i.cs            ; 2 uses
  %i.cu = fmul <2 x float> %i.ct, %i.ct
  %i.cv = fpext <2 x float> %i.cu to <2 x double>
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> splat (float -4.000000e+00), <2 x float> %i.cr)
  %i.cx = fpext <2 x float> %i.cw to <2 x double>
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> splat (double 3.000000e+00), <2 x double> %i.cx) ; 2 uses
  %i.cz = fmul <2 x double> %i.cy, %i.cy
  %i.da = fmul <2 x double> %i.cz, splat (double 2.500000e-01)
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.da)
  %i.dc = fadd <2 x double> %i.am, %i.db          ; 2 uses
  %i.dd = fmul <2 x double> %i.dc, %i.dc
  %i.de = fdiv <2 x double> splat (double 1.000000e-01), %i.dd ; 2 uses
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> splat (float -2.000000e+00), <2 x float> %i.aa)
  %i.dg = fadd <2 x float> %i.t, %i.df            ; 2 uses
  %i.dh = fmul <2 x float> %i.dg, %i.dg
  %i.di = fpext <2 x float> %i.dh to <2 x double>
  %i.dj = fsub <2 x float> %i.aa, %i.t            ; 2 uses
  %i.dk = fmul <2 x float> %i.dj, %i.dj
  %i.dl = fpext <2 x float> %i.dk to <2 x double>
  %i.dm = fmul <2 x double> %i.dl, splat (double 2.500000e-01)
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.dm)
  %i.do = fadd <2 x double> %i.am, %i.dn          ; 2 uses
  %i.dp = fmul <2 x double> %i.do, %i.do
  %i.dq = fdiv <2 x double> splat (double 6.000000e-01), %i.dp ; 2 uses
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> splat (float -2.000000e+00), <2 x float> %i.x)
  %i.ds = fadd <2 x float> %i.q, %i.dr            ; 2 uses
  %i.dt = fmul <2 x float> %i.ds, %i.ds
  %i.du = fpext <2 x float> %i.dt to <2 x double>
  %i.dv = fmul <2 x float> %i.t, splat (float 4.000000e+00)
  %i.dw = fpext <2 x float> %i.dv to <2 x double>
  %i.dx = fneg <2 x double> %i.dw
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> splat (double 3.000000e+00), <2 x double> %i.dx)
  %i.dz = fadd <2 x double> %i.dy, %i.bt          ; 2 uses
  %i.ea = fmul <2 x double> %i.dz, %i.dz
  %i.eb = fmul <2 x double> %i.ea, splat (double 2.500000e-01)
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.eb)
  %i.ed = fadd <2 x double> %i.am, %i.ec          ; 2 uses
  %i.ee = fmul <2 x double> %i.ed, %i.ed
  %i.ef = fdiv <2 x double> splat (double 3.000000e-01), %i.ee ; 2 uses
  %i.eg = fpext <2 x float> %i.cr to <2 x double>
  %i.eh = fmul <2 x double> %i.bk, splat (double -7.000000e+00)
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> splat (double 2.000000e+00), <2 x double> %i.eh)
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> splat (double 1.100000e+01), <2 x double> %i.ei)
  %i.ek = fneg <2 x double> %i.bk
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> splat (double 5.000000e+00), <2 x double> %i.ek)
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> splat (double 2.000000e+00), <2 x double> %i.el)
  %i.en = fmul <2 x double> %i.em, %i.dq
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.ej, <2 x double> %i.en)
  %i.ep = fmul <2 x double> %i.u, splat (double 5.000000e+00)
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> splat (double 2.000000e+00), <2 x double> %i.ep)
  %i.er = fsub <2 x double> %i.eq, %i.bt
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.er, <2 x double> %i.eo)
  %i.et = fptrunc <2 x double> %i.es to <2 x float>
  %i.eu = fpext <2 x float> %i.et to <2 x double>
  %i.ev = fadd <2 x double> %i.dq, %i.de
  %i.ew = fadd <2 x double> %i.ef, %i.ev
  %i.ex = fmul <2 x double> %i.ew, splat (double 6.000000e+00)
  %i.ey = fdiv <2 x double> %i.eu, %i.ex          ; 3 uses
  %i.ez = fptrunc <2 x double> %i.ey to <2 x float>
  %i.fa = fpext <2 x float> %i.cn to <2 x double> ; 2 uses
  %i.fb = fpext <2 x float> %i.ez to <2 x double> ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.fe = load <4 x float>, ptr %i.fc, align 4, !tbaa !312 ; 4 uses
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 3 uses
  %i.fg = insertelement <2 x float> %i.ff, float %i.d, i64 0
  %i.fh = insertelement <2 x float> %i.ff, float %i.d, i64 1
  %i.fi = fsub <2 x float> %i.fg, %i.fh           ; 5 uses
  %i.fj = load <2 x float>, ptr %i.fd, align 4, !tbaa !312 ; 2 uses
  %i.fk = shufflevector <2 x float> %i.ff, <2 x float> %i.fj, <2 x i32> <i32 0, i32 2>
  %i.fl = shufflevector <4 x float> %i.fe, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.fm = fsub <2 x float> %i.fk, %i.fl           ; 3 uses
  %i.fn = fpext <2 x float> %i.fm to <2 x double> ; 3 uses
  %i.fo = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.fp = fpext <2 x float> %i.fo to <2 x double> ; 6 uses
  %i.fq = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> %i.fe, <2 x i32> <i32 1, i32 5>
  %i.fs = shufflevector <4 x float> %i.fq, <4 x float> %i.fe, <2 x i32> <i32 0, i32 4>
  %i.ft = fsub <2 x float> %i.fr, %i.fs           ; 3 uses
  %i.fu = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> splat (float -2.000000e+00), <2 x float> %i.ft)
  %i.fw = fadd <2 x float> %i.fo, %i.fv           ; 2 uses
  %i.fx = fmul <2 x float> %i.fw, %i.fw
  %i.fy = fpext <2 x float> %i.fx to <2 x double>
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> splat (float -4.000000e+00), <2 x float> %i.ft)
  %i.ga = fpext <2 x float> %i.fz to <2 x double>
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ga) ; 2 uses
  %i.gc = fmul <2 x double> %i.gb, %i.gb
  %i.gd = fmul <2 x double> %i.gc, splat (double 2.500000e-01)
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.gd)
  %i.gf = fadd <2 x double> %i.am, %i.ge          ; 2 uses
  %i.gg = fmul <2 x double> %i.gf, %i.gf
  %i.gh = fdiv <2 x double> splat (double 1.000000e-01), %i.gg ; 2 uses
  %i.gi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> splat (float -2.000000e+00), <2 x float> %i.fu)
  %i.gj = fadd <2 x float> %i.gi, %i.fi           ; 2 uses
  %i.gk = fmul <2 x float> %i.gj, %i.gj
  %i.gl = fpext <2 x float> %i.gk to <2 x double>
  %i.gm = fsub <2 x float> %i.fu, %i.fi           ; 2 uses
  %i.gn = fmul <2 x float> %i.gm, %i.gm
  %i.go = fpext <2 x float> %i.gn to <2 x double>
  %i.gp = fmul <2 x double> %i.go, splat (double 2.500000e-01)
  %i.gq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.gp)
  %i.gr = fadd <2 x double> %i.am, %i.gq          ; 2 uses
  %i.gs = fmul <2 x double> %i.gr, %i.gr
  %i.gt = fdiv <2 x double> splat (double 6.000000e-01), %i.gs ; 2 uses
  %i.gu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> splat (float -2.000000e+00), <2 x float> %i.fo)
  %i.gv = fadd <2 x float> %i.gu, %i.fm           ; 2 uses
  %i.gw = fmul <2 x float> %i.gv, %i.gv
  %i.gx = fpext <2 x float> %i.gw to <2 x double>
  %i.gy = fmul <2 x float> %i.fi, splat (float 4.000000e+00)
  %i.gz = fpext <2 x float> %i.gy to <2 x double>
  %i.ha = fneg <2 x double> %i.gz
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ha)
  %i.hc = fadd <2 x double> %i.hb, %i.fn          ; 2 uses
  %i.hd = fmul <2 x double> %i.hc, %i.hc
  %i.he = fmul <2 x double> %i.hd, splat (double 2.500000e-01)
  %i.hf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.he)
  %i.hg = fadd <2 x double> %i.am, %i.hf          ; 2 uses
  %i.hh = fmul <2 x double> %i.hg, %i.hg
  %i.hi = fdiv <2 x double> splat (double 3.000000e-01), %i.hh ; 2 uses
  %i.hj = fpext <2 x float> %i.ft to <2 x double>
  %i.hk = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hl = fmul <2 x double> %i.hk, splat (double -7.000000e+00)
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> splat (double 2.000000e+00), <2 x double> %i.hl)
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> splat (double 1.100000e+01), <2 x double> %i.hm)
  %i.ho = fneg <2 x double> %i.hk
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> splat (double 5.000000e+00), <2 x double> %i.ho)
  %i.hq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> splat (double 2.000000e+00), <2 x double> %i.hp)
  %i.hs = fmul <2 x double> %i.hr, %i.gt
  %i.ht = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> %i.hn, <2 x double> %i.hs)
  %i.hu = fmul <2 x double> %i.hq, splat (double 5.000000e+00)
  %i.hv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> splat (double 2.000000e+00), <2 x double> %i.hu)
  %i.hw = fsub <2 x double> %i.hv, %i.fn
  %i.hx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.hw, <2 x double> %i.ht)
  %i.hy = fptrunc <2 x double> %i.hx to <2 x float>
  %i.hz = fpext <2 x float> %i.hy to <2 x double> ; 2 uses
  %i.ia = fadd <2 x double> %i.gt, %i.gh
  %i.ib = fadd <2 x double> %i.ia, %i.hi
  %i.ic = fmul <2 x double> %i.ib, splat (double 6.000000e+00) ; 2 uses
  %i.id = extractelement <2 x double> %i.ic, i64 1
  %i.ie = extractelement <2 x double> %i.hz, i64 1
  %i.if = fdiv double %i.ie, %i.id                ; 3 uses
  %i.ig = fptrunc double %i.if to float
  %i.ih = fpext float %i.ig to double             ; 2 uses
  %i.ii = extractelement <2 x double> %i.ic, i64 0
  %i.ij = extractelement <2 x double> %i.hz, i64 0
  %i.ik = fdiv double %i.ij, %i.ii                ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.im = load float, ptr %i.il, align 4, !tbaa !2093
  %i.in = load float, ptr %1, align 4, !tbaa !312
  %i.io = fcmp ogt float %i.d, %i.in
  br i1 %i.io, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ip = fcmp olt <2 x double> %i.cm, splat (double f0xB690000000000000)
  %i.iq = select <2 x i1> %i.ip, <2 x double> zeroinitializer, <2 x double> %i.fa ; 2 uses
  %i.ir = fmul <2 x double> %i.iq, %i.iq          ; 2 uses
  %i.is = fcmp ogt <2 x double> %i.ey, splat (double f0x3690000000000000)
  %i.it = select <2 x i1> %i.is, <2 x double> zeroinitializer, <2 x double> %i.fb ; 2 uses
  %i.iu = fmul <2 x double> %i.it, %i.it          ; 2 uses
  %i.iv = fcmp olt <2 x double> %i.ir, %i.iu
  %i.iw = select <2 x i1> %i.iv, <2 x double> %i.iu, <2 x double> %i.ir
  %2 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.iw)
  %i.ix = fcmp olt double %i.if, f0xB690000000000000
  %.sroa.speculated80.i = select i1 %i.ix, double 0.000000e+00, double %i.ih ; 2 uses
  %i.iy = fmul double %.sroa.speculated80.i, %.sroa.speculated80.i
  %i.iz = fcmp ogt double %i.ik, f0x3690000000000000
  br label %_ZN7openvdb5v13_04math16GodunovsNormSqrdIdEET_bS3_S3_S3_S3_S3_S3_.exit

bb.c:                                             ; preds = %bb.a
  %i.ja = fcmp ogt <2 x double> %i.cm, splat (double f0x3690000000000000)
  %i.jb = fcmp olt <2 x double> %i.ey, splat (double f0xB690000000000000)
  %i.jc = select <2 x i1> %i.ja, <2 x double> zeroinitializer, <2 x double> %i.fa ; 2 uses
  %i.jd = fmul <2 x double> %i.jc, %i.jc          ; 2 uses
  %i.je = select <2 x i1> %i.jb, <2 x double> zeroinitializer, <2 x double> %i.fb ; 2 uses
  %i.jf = fmul <2 x double> %i.je, %i.je          ; 2 uses
  %i.jg = fcmp olt <2 x double> %i.jd, %i.jf
  %i.jh = select <2 x i1> %i.jg, <2 x double> %i.jf, <2 x double> %i.jd
  %3 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.jh)
  %i.ji = fcmp ogt double %i.if, f0x3690000000000000
  %.sroa.speculated62.i = select i1 %i.ji, double 0.000000e+00, double %i.ih ; 2 uses
  %i.jj = fmul double %.sroa.speculated62.i, %.sroa.speculated62.i
  %i.jk = fcmp olt double %i.ik, f0xB690000000000000
  br label %_ZN7openvdb5v13_04math16GodunovsNormSqrdIdEET_bS3_S3_S3_S3_S3_S3_.exit

_ZN7openvdb5v13_04math16GodunovsNormSqrdIdEET_bS3_S3_S3_S3_S3_S3_.exit: ; preds = %bb.b, %bb.c
  %.sink113.i = phi i1 [ %i.jk, %bb.c ], [ %i.iz, %bb.b ]
  %.sink110.i = phi double [ %i.jj, %bb.c ], [ %i.iy, %bb.b ] ; 2 uses
  %.sink.i = phi double [ %3, %bb.c ], [ %2, %bb.b ]
  %i.jl = fptrunc double %i.ik to float
  %i.jm = fpext float %i.jl to double
  %i.jn = fpext float %i.im to double
  %.sroa.speculated59.i = select i1 %.sink113.i, double 0.000000e+00, double %i.jm ; 2 uses
  %i.jo = fmul double %.sroa.speculated59.i, %.sroa.speculated59.i ; 2 uses
  %i.jp = fcmp olt double %.sink110.i, %i.jo
  %.sroa.speculated.i = select i1 %i.jp, double %i.jo, double %.sink110.i
  %i.jq = fadd double %.sink.i, %.sroa.speculated.i
  %i.jr = fmul double %i.jq, %i.jn
  %i.js = fptrunc double %i.jr to float
  ret float %i.js
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math11WenoStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %7 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %8 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %9 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %10 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %11 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %12 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %13 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %14 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %15 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %16 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %17 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %18 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %19 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.b = load i32, ptr %1, align 4, !tbaa !254
  %i.c = add nsw i32 %i.b, -3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 12 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !254
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i = zext i32 %i.e to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %2, align 8
  %.sroa.268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.g, ptr %.sroa.268.0..sroa_idx, align 8
  %i.h = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.i = load float, ptr %i.h, align 4, !tbaa !312
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 18 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !765
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store float %i.i, ptr %i.l, align 4, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.m = load i32, ptr %1, align 4, !tbaa !254
  %i.n = add nsw i32 %i.m, -2
  %i.o = load i32, ptr %i.d, align 4, !tbaa !254
  %i.p = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i87 = zext i32 %i.o to i64
  %.sroa.2.0.insert.shift.i88 = shl nuw i64 %.sroa.2.0.insert.ext.i87, 32
  %.sroa.0.0.insert.ext.i89 = zext i32 %i.n to i64
  %.sroa.0.0.insert.insert.i90 = or disjoint i64 %.sroa.2.0.insert.shift.i88, %.sroa.0.0.insert.ext.i89
  store i64 %.sroa.0.0.insert.insert.i90, ptr %3, align 8
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.p, ptr %.sroa.264.0..sroa_idx, align 8
  %i.q = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %i.r = load float, ptr %i.q, align 4, !tbaa !312
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !765
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store float %i.r, ptr %i.t, align 4, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.u = load i32, ptr %1, align 4, !tbaa !254
  %i.v = add nsw i32 %i.u, -1
  %i.w = load i32, ptr %i.d, align 4, !tbaa !254
  %i.x = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i93 = zext i32 %i.w to i64
  %.sroa.2.0.insert.shift.i94 = shl nuw i64 %.sroa.2.0.insert.ext.i93, 32
  %.sroa.0.0.insert.ext.i95 = zext i32 %i.v to i64
  %.sroa.0.0.insert.insert.i96 = or disjoint i64 %.sroa.2.0.insert.shift.i94, %.sroa.0.0.insert.ext.i95
  store i64 %.sroa.0.0.insert.insert.i96, ptr %4, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.x, ptr %.sroa.260.0..sroa_idx, align 8
  %i.y = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.z = load float, ptr %i.y, align 4, !tbaa !312
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !765
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store float %i.z, ptr %i.ab, align 4, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ac = load i32, ptr %1, align 4, !tbaa !254
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = load i32, ptr %i.d, align 4, !tbaa !254
  %i.af = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i99 = zext i32 %i.ae to i64
  %.sroa.2.0.insert.shift.i100 = shl nuw i64 %.sroa.2.0.insert.ext.i99, 32
  %.sroa.0.0.insert.ext.i101 = zext i32 %i.ad to i64
  %.sroa.0.0.insert.insert.i102 = or disjoint i64 %.sroa.2.0.insert.shift.i100, %.sroa.0.0.insert.ext.i101
  store i64 %.sroa.0.0.insert.insert.i102, ptr %5, align 8
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.af, ptr %.sroa.256.0..sroa_idx, align 8
  %i.ag = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %5)
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !312
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !765
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store float %i.ah, ptr %i.aj, align 4, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ak = load i32, ptr %1, align 4, !tbaa !254
  %i.al = add nsw i32 %i.ak, 2
  %i.am = load i32, ptr %i.d, align 4, !tbaa !254
  %i.an = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i105 = zext i32 %i.am to i64
  %.sroa.2.0.insert.shift.i106 = shl nuw i64 %.sroa.2.0.insert.ext.i105, 32
  %.sroa.0.0.insert.ext.i107 = zext i32 %i.al to i64
  %.sroa.0.0.insert.insert.i108 = or disjoint i64 %.sroa.2.0.insert.shift.i106, %.sroa.0.0.insert.ext.i107
  store i64 %.sroa.0.0.insert.insert.i108, ptr %6, align 8
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.an, ptr %.sroa.252.0..sroa_idx, align 8
  %i.ao = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %6)
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !312
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !765
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  store float %i.ap, ptr %i.ar, align 4, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.as = load i32, ptr %1, align 4, !tbaa !254
  %i.at = add nsw i32 %i.as, 3
  %i.au = load i32, ptr %i.d, align 4, !tbaa !254
  %i.av = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i111 = zext i32 %i.au to i64
  %.sroa.2.0.insert.shift.i112 = shl nuw i64 %.sroa.2.0.insert.ext.i111, 32
  %.sroa.0.0.insert.ext.i113 = zext i32 %i.at to i64
  %.sroa.0.0.insert.insert.i114 = or disjoint i64 %.sroa.2.0.insert.shift.i112, %.sroa.0.0.insert.ext.i113
  store i64 %.sroa.0.0.insert.insert.i114, ptr %7, align 8
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.av, ptr %.sroa.248.0..sroa_idx, align 8
  %i.aw = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %7)
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !312
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !765
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store float %i.ax, ptr %i.az, align 4, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ba = load i32, ptr %1, align 4, !tbaa !254
  %i.bb = load i32, ptr %i.d, align 4, !tbaa !254
  %i.bc = add nsw i32 %i.bb, -3
  %i.bd = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i117 = zext i32 %i.bc to i64
  %.sroa.2.0.insert.shift.i118 = shl nuw i64 %.sroa.2.0.insert.ext.i117, 32
  %.sroa.0.0.insert.ext.i119 = zext i32 %i.ba to i64
  %.sroa.0.0.insert.insert.i120 = or disjoint i64 %.sroa.2.0.insert.shift.i118, %.sroa.0.0.insert.ext.i119
  store i64 %.sroa.0.0.insert.insert.i120, ptr %8, align 8
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.bd, ptr %.sroa.244.0..sroa_idx, align 8
  %i.be = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %8)
  %i.bf = load float, ptr %i.be, align 4, !tbaa !312
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !765
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  store float %i.bf, ptr %i.bh, align 4, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.bi = load i32, ptr %1, align 4, !tbaa !254
  %i.bj = load i32, ptr %i.d, align 4, !tbaa !254
  %i.bk = add nsw i32 %i.bj, -2
  %i.bl = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i123 = zext i32 %i.bk to i64
  %.sroa.2.0.insert.shift.i124 = shl nuw i64 %.sroa.2.0.insert.ext.i123, 32
  %.sroa.0.0.insert.ext.i125 = zext i32 %i.bi to i64
  %.sroa.0.0.insert.insert.i126 = or disjoint i64 %.sroa.2.0.insert.shift.i124, %.sroa.0.0.insert.ext.i125
  store i64 %.sroa.0.0.insert.insert.i126, ptr %9, align 8
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.bl, ptr %.sroa.240.0..sroa_idx, align 8
  %i.bm = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %9)
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !312
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !765
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store float %i.bn, ptr %i.bp, align 4, !tbaa !312
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.bq = load i32, ptr %1, align 4, !tbaa !254
  %i.br = load i32, ptr %i.d, align 4, !tbaa !254
  %i.bs = add nsw i32 %i.br, -1
  %i.bt = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i129 = zext i32 %i.bs to i64
  %.sroa.2.0.insert.shift.i130 = shl nuw i64 %.sroa.2.0.insert.ext.i129, 32
  %.sroa.0.0.insert.ext.i131 = zext i32 %i.bq to i64
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_04math11WenoStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE10normSqGradERKd:bb.a
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> splat (double 5.000000e+00), <2 x double> %i.bk)
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bl)
  %i.bn = fmul <2 x double> %i.bm, %i.au
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.bj, <2 x double> %i.bn)
  %i.bp = fmul <2 x double> %i.v, splat (double 5.000000e+00)
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bp)
  %i.br = fsub <2 x double> %i.bq, %i.x
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.br, <2 x double> %i.bo)
  %i.bt = fadd <2 x double> %i.ak, %i.au
  %i.bu = fadd <2 x double> %i.bt, %i.bg
  %i.bv = fmul <2 x double> %i.bu, splat (double 6.000000e+00)
  %i.bw = shufflevector <8 x double> %i.j, <8 x double> %i.o, <2 x i32> <i32 5, i32 11>
  %i.bx = fsub <2 x double> %i.bw, %i.w           ; 3 uses
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> splat (double -2.000000e+00), <2 x double> %i.bx)
  %i.bz = fadd <2 x double> %i.v, %i.by           ; 2 uses
  %i.ca = fmul <2 x double> %i.bz, %i.bz
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> splat (double -4.000000e+00), <2 x double> %i.bx)
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double 3.000000e+00), <2 x double> %i.cb) ; 2 uses
  %i.cd = fmul <2 x double> %i.cc, %i.cc
  %i.ce = fmul <2 x double> %i.cd, splat (double 2.500000e-01)
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.ce)
  %i.cg = fadd <2 x double> %i.ah, %i.cf          ; 2 uses
  %i.ch = fmul <2 x double> %i.cg, %i.cg
  %i.ci = fdiv <2 x double> splat (double 1.000000e-01), %i.ch ; 2 uses
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double -2.000000e+00), <2 x double> %i.x)
  %i.ck = fadd <2 x double> %i.t, %i.cj           ; 2 uses
  %i.cl = fmul <2 x double> %i.ck, %i.ck
  %i.cm = fsub <2 x double> %i.x, %i.t            ; 2 uses
  %i.cn = fmul <2 x double> %i.cm, %i.cm
  %i.co = fmul <2 x double> %i.cn, splat (double 2.500000e-01)
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.co)
  %i.cq = fadd <2 x double> %i.ah, %i.cp          ; 2 uses
  %i.cr = fmul <2 x double> %i.cq, %i.cq
  %i.cs = fdiv <2 x double> splat (double 6.000000e-01), %i.cr ; 2 uses
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> splat (double -2.000000e+00), <2 x double> %i.v)
  %i.cu = fadd <2 x double> %i.q, %i.ct           ; 2 uses
  %i.cv = fmul <2 x double> %i.cu, %i.cu
  %i.cw = fmul <2 x double> %i.t, splat (double -4.000000e+00)
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double 3.000000e+00), <2 x double> %i.cw)
  %i.cy = fadd <2 x double> %i.q, %i.cx           ; 2 uses
  %i.cz = fmul <2 x double> %i.cy, %i.cy
  %i.da = fmul <2 x double> %i.cz, splat (double 2.500000e-01)
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.da)
  %i.dc = fadd <2 x double> %i.ah, %i.db          ; 2 uses
  %i.dd = fmul <2 x double> %i.dc, %i.dc
  %i.de = fdiv <2 x double> splat (double 3.000000e-01), %i.dd ; 2 uses
  %i.df = fmul <2 x double> %i.x, splat (double -7.000000e+00)
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> splat (double 2.000000e+00), <2 x double> %i.df)
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double 1.100000e+01), <2 x double> %i.dg)
  %i.di = fneg <2 x double> %i.x
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double 5.000000e+00), <2 x double> %i.di)
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> splat (double 2.000000e+00), <2 x double> %i.dj)
  %i.dl = fmul <2 x double> %i.dk, %i.cs
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.dh, <2 x double> %i.dl)
  %i.dn = fmul <2 x double> %i.t, splat (double 5.000000e+00)
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> splat (double 2.000000e+00), <2 x double> %i.dn)
  %i.dp = fsub <2 x double> %i.do, %i.q
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.dp, <2 x double> %i.dm)
  %i.dr = fadd <2 x double> %i.cs, %i.ci
  %i.ds = fadd <2 x double> %i.de, %i.dr
  %i.dt = fmul <2 x double> %i.ds, splat (double 6.000000e+00)
  %i.du = fdiv <2 x double> %i.bs, %i.bv          ; 4 uses
  %i.dv = fdiv <2 x double> %i.dq, %i.dt          ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ea = load <2 x double>, ptr %i.dx, align 8, !tbaa !323
  %i.eb = load <2 x double>, ptr %i.dw, align 8, !tbaa !323 ; 3 uses
  %i.ec = fsub <2 x double> %i.eb, %i.ea          ; 3 uses
  %i.ed = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ee = insertelement <2 x double> %i.ed, double %i.d, i64 1 ; 2 uses
  %i.ef = fsub <2 x double> %i.ee, %i.eb          ; 6 uses
  %i.eg = extractelement <2 x double> %i.ef, i64 0 ; 3 uses
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ec)
  %i.ei = load <2 x double>, ptr %i.dy, align 8, !tbaa !323 ; 2 uses
  %i.ej = shufflevector <2 x double> %i.r, <2 x double> %i.ei, <2 x i32> <i32 0, i32 2>
  %i.ek = fsub <2 x double> %i.ej, %i.ee          ; 12 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0 ; 6 uses
  %i.em = fadd <2 x double> %i.ek, %i.eh          ; 2 uses
  %i.en = fmul <2 x double> %i.em, %i.em
  %i.eo = extractelement <2 x double> %i.ek, i64 1 ; 7 uses
  %i.ep = fsub double %i.eg, %i.eo
  %i.eq = shufflevector <2 x double> %i.ef, <2 x double> %i.ek, <2 x i32> <i32 0, i32 3>
  %i.er = shufflevector <2 x double> %i.ec, <2 x double> %i.ek, <2 x i32> <i32 0, i32 2>
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> <double -4.000000e+00, double -2.000000e+00>, <2 x double> %i.er) ; 2 uses
  %i.et = extractelement <2 x double> %i.es, i64 0
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.el, double 3.000000e+00, double %i.et)
  %i.ev = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.ep, i64 1 ; 2 uses
  %i.ex = fmul <2 x double> %i.ew, %i.ew
  %i.ey = fmul <2 x double> %i.ex, splat (double 2.500000e-01)
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.ey)
  %i.fa = fadd <2 x double> %i.ah, %i.ez          ; 2 uses
  %i.fb = fmul <2 x double> %i.fa, %i.fa
  %i.fc = fdiv <2 x double> <double 1.000000e-01, double 6.000000e-01>, %i.fb ; 2 uses
  %i.fd = load <2 x double>, ptr %i.dz, align 8, !tbaa !323
  %i.fe = fsub <2 x double> %i.fd, %i.ei          ; 10 uses
  %i.ff = extractelement <2 x double> %i.fe, i64 0 ; 2 uses
  %shift = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.fe ; 2 uses
  %i.fg = fmul double %i.eo, -4.000000e+00
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.el, double 3.000000e+00, double %i.fg)
  %i.fi = fadd double %i.ff, %i.fh                ; 2 uses
  %foldExtExtBinop99 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %i.fj = fmul double %i.fi, %i.fi
  %i.fk = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fl = insertelement <2 x double> %i.fk, double %i.fj, i64 0
  %i.fm = fmul <2 x double> %i.fl, <double 2.500000e-01, double -7.000000e+00>
  %i.fn = shufflevector <2 x double> %foldExtExtBinop99, <2 x double> %i.ec, <2 x i32> <i32 0, i32 2>
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> <double f0x3FF1555555555555, double 2.000000e+00>, <2 x double> %i.fm) ; 2 uses
  %i.fp = extractelement <2 x double> %i.fo, i64 0
  %i.fq = fadd double %i.h, %i.fp                 ; 2 uses
  %i.fr = fmul double %i.fq, %i.fq
  %i.fs = fdiv double 3.000000e-01, %i.fr         ; 2 uses
  %i.ft = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fu = fneg <2 x double> %i.ef
  %i.fv = shufflevector <2 x double> %i.fo, <2 x double> %i.fu, <2 x i32> <i32 1, i32 2>
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> <double 1.100000e+01, double 5.000000e+00>, <2 x double> %i.fv) ; 2 uses
  %i.fx = extractelement <2 x double> %i.fw, i64 1
  %i.fy = tail call double @llvm.fmuladd.f64(double %i.eo, double 2.000000e+00, double %i.fx)
  %i.fz = extractelement <2 x double> %i.fc, i64 1 ; 2 uses
  %i.ga = fmul double %i.fy, %i.fz
  %i.gb = extractelement <2 x double> %i.fc, i64 0 ; 2 uses
  %i.gc = extractelement <2 x double> %i.fw, i64 0
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.gc, double %i.ga)
  %i.ge = fmul double %i.eo, 5.000000e+00
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.el, double 2.000000e+00, double %i.ge)
  %i.gg = fsub double %i.gf, %i.ff
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.fs, double %i.gg, double %i.gd)
  %i.gi = fadd double %i.gb, %i.fz
  %i.gj = fadd double %i.gi, %i.fs
  %i.gk = fmul double %i.gj, 6.000000e+00
  %i.gl = fdiv double %i.gh, %i.gk                ; 4 uses
  %i.gm = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gn = shufflevector <2 x double> %i.ek, <2 x double> %i.fe, <2 x i32> <i32 1, i32 2>
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> splat (double -2.000000e+00), <2 x double> %i.fe)
  %i.gp = fadd <2 x double> %i.ek, %i.go          ; 2 uses
  %i.gq = fmul <2 x double> %i.gp, %i.gp
  %foldExtExtBinop101 = fsub <2 x double> %i.fe, %i.ek
  %i.gr = shufflevector <2 x double> %i.fe, <2 x double> %i.ek, <2 x i32> <i32 0, i32 2>
  %i.gs = shufflevector <2 x double> %i.fe, <2 x double> %i.ek, <2 x i32> <i32 1, i32 3>
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> <double -4.000000e+00, double -2.000000e+00>, <2 x double> %i.gs) ; 2 uses
  %i.gu = extractelement <2 x double> %i.gt, i64 0
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.eo, double 3.000000e+00, double %i.gu)
  %i.gw = insertelement <2 x double> %foldExtExtBinop101, double %i.gv, i64 1 ; 2 uses
  %i.gx = fmul <2 x double> %i.gw, %i.gw
  %i.gy = fmul <2 x double> %i.gx, splat (double 2.500000e-01)
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.gy)
  %i.ha = fadd <2 x double> %i.ah, %i.gz          ; 2 uses
  %i.hb = fmul <2 x double> %i.ha, %i.ha
  %i.hc = fdiv <2 x double> <double 6.000000e-01, double 1.000000e-01>, %i.hb ; 2 uses
  %shift103 = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop104 = fadd <2 x double> %i.ef, %shift103 ; 2 uses
  %foldExtExtBinop106 = fmul <2 x double> %foldExtExtBinop104, %foldExtExtBinop104
  %i.hd = fmul double %i.el, -4.000000e+00
  %i.he = tail call double @llvm.fmuladd.f64(double %i.eo, double 3.000000e+00, double %i.hd)
  %i.hf = fadd double %i.eg, %i.he                ; 2 uses
  %i.hg = fmul double %i.hf, %i.hf
  %i.hh = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hi = insertelement <2 x double> %i.hh, double %i.hg, i64 0
  %i.hj = fmul <2 x double> %i.hi, <double 2.500000e-01, double -7.000000e+00>
  %i.hk = shufflevector <2 x double> %foldExtExtBinop106, <2 x double> %i.fe, <2 x i32> <i32 0, i32 3>
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> <double f0x3FF1555555555555, double 2.000000e+00>, <2 x double> %i.hj) ; 2 uses
  %i.hm = extractelement <2 x double> %i.hl, i64 0
  %i.hn = fadd double %i.h, %i.hm                 ; 2 uses
  %i.ho = fmul double %i.hn, %i.hn
  %i.hp = fdiv double 3.000000e-01, %i.ho         ; 2 uses
  %i.hq = fneg <2 x double> %i.fe
  %i.hr = shufflevector <2 x double> %i.hl, <2 x double> %i.hq, <2 x i32> <i32 1, i32 2>
  %i.hs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> <double 1.100000e+01, double 5.000000e+00>, <2 x double> %i.hr) ; 2 uses
  %i.ht = extractelement <2 x double> %i.hs, i64 1
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.el, double 2.000000e+00, double %i.ht)
  %i.hv = extractelement <2 x double> %i.hc, i64 0 ; 2 uses
  %i.hw = fmul double %i.hu, %i.hv
  %i.hx = extractelement <2 x double> %i.hc, i64 1 ; 2 uses
  %i.hy = extractelement <2 x double> %i.hs, i64 0
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.hy, double %i.hw)
  %i.ia = fmul double %i.el, 5.000000e+00
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.eo, double 2.000000e+00, double %i.ia)
  %i.ic = fsub double %i.ib, %i.eg
  %i.id = tail call double @llvm.fmuladd.f64(double %i.hp, double %i.ic, double %i.hz)
  %i.ie = fadd double %i.hv, %i.hx
  %i.if = fadd double %i.hp, %i.ie
  %i.ig = fmul double %i.if, 6.000000e+00
  %i.ih = fdiv double %i.id, %i.ig                ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !5340
  %i.ik = load double, ptr %1, align 8, !tbaa !323
  %i.il = fcmp ogt double %i.d, %i.ik
  br i1 %i.il, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.im = fcmp olt <2 x double> %i.du, zeroinitializer
  %i.in = select <2 x i1> %i.im, <2 x double> zeroinitializer, <2 x double> %i.du ; 2 uses
  %i.io = fmul <2 x double> %i.in, %i.in          ; 2 uses
  %i.ip = fcmp ogt <2 x double> %i.dv, zeroinitializer
  %i.iq = select <2 x i1> %i.ip, <2 x double> zeroinitializer, <2 x double> %i.dv ; 2 uses
  %i.ir = fmul <2 x double> %i.iq, %i.iq          ; 2 uses
  %i.is = fcmp olt <2 x double> %i.io, %i.ir
  %i.it = select <2 x i1> %i.is, <2 x double> %i.ir, <2 x double> %i.io
  %2 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.it)
  %i.iu = fcmp olt double %i.gl, 0.000000e+00
  %.sroa.speculated80.i = select i1 %i.iu, double 0.000000e+00, double %i.gl ; 2 uses
  %i.iv = fmul double %.sroa.speculated80.i, %.sroa.speculated80.i
  %i.iw = fcmp ogt double %i.ih, 0.000000e+00
  br label %_ZN7openvdb5v13_04math16GodunovsNormSqrdIdEET_bS3_S3_S3_S3_S3_S3_.exit

bb.c:                                             ; preds = %bb.a
  %i.ix = fcmp ogt <2 x double> %i.du, zeroinitializer
  %i.iy = fcmp olt <2 x double> %i.dv, zeroinitializer
  %i.iz = select <2 x i1> %i.ix, <2 x double> zeroinitializer, <2 x double> %i.du ; 2 uses
  %i.ja = fmul <2 x double> %i.iz, %i.iz          ; 2 uses
  %i.jb = select <2 x i1> %i.iy, <2 x double> zeroinitializer, <2 x double> %i.dv ; 2 uses
  %i.jc = fmul <2 x double> %i.jb, %i.jb          ; 2 uses
  %i.jd = fcmp olt <2 x double> %i.ja, %i.jc
  %i.je = select <2 x i1> %i.jd, <2 x double> %i.jc, <2 x double> %i.ja
  %3 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.je)
  %i.jf = fcmp ogt double %i.gl, 0.000000e+00
  %.sroa.speculated62.i = select i1 %i.jf, double 0.000000e+00, double %i.gl ; 2 uses
  %i.jg = fmul double %.sroa.speculated62.i, %.sroa.speculated62.i
  %i.jh = fcmp olt double %i.ih, 0.000000e+00
  br label %_ZN7openvdb5v13_04math16GodunovsNormSqrdIdEET_bS3_S3_S3_S3_S3_S3_.exit

_ZN7openvdb5v13_04math16GodunovsNormSqrdIdEET_bS3_S3_S3_S3_S3_S3_.exit: ; preds = %bb.b, %bb.c
  %.sink113.i = phi i1 [ %i.jh, %bb.c ], [ %i.iw, %bb.b ]
  %.sink110.i = phi double [ %i.jg, %bb.c ], [ %i.iv, %bb.b ] ; 2 uses
  %.sink.i = phi double [ %3, %bb.c ], [ %2, %bb.b ]
  %.sroa.speculated59.i = select i1 %.sink113.i, double 0.000000e+00, double %i.ih ; 2 uses
  %i.ji = fmul double %.sroa.speculated59.i, %.sroa.speculated59.i ; 2 uses
  %i.jj = fcmp olt double %.sink110.i, %i.ji
  %.sroa.speculated.i = select i1 %i.jj, double %i.ji, double %.sink110.i
  %i.jk = fadd double %.sink.i, %.sroa.speculated.i
  %i.jl = fmul double %i.ij, %i.jk
  ret double %i.jl
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math11WenoStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %7 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %8 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %9 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %10 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %11 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %12 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %13 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %14 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %15 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %16 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %17 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %18 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %19 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.b = load i32, ptr %1, align 4, !tbaa !254
  %i.c = add nsw i32 %i.b, -3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 12 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !254
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i = zext i32 %i.e to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %2, align 8
  %.sroa.268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.g, ptr %.sroa.268.0..sroa_idx, align 8
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.i = load double, ptr %i.h, align 8, !tbaa !323
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 18 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !863
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store double %i.i, ptr %i.l, align 8, !tbaa !323
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.m = load i32, ptr %1, align 4, !tbaa !254
  %i.n = add nsw i32 %i.m, -2
  %i.o = load i32, ptr %i.d, align 4, !tbaa !254
  %i.p = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i87 = zext i32 %i.o to i64
  %.sroa.2.0.insert.shift.i88 = shl nuw i64 %.sroa.2.0.insert.ext.i87, 32
  %.sroa.0.0.insert.ext.i89 = zext i32 %i.n to i64
  %.sroa.0.0.insert.insert.i90 = or disjoint i64 %.sroa.2.0.insert.shift.i88, %.sroa.0.0.insert.ext.i89
  store i64 %.sroa.0.0.insert.insert.i90, ptr %3, align 8
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.p, ptr %.sroa.264.0..sroa_idx, align 8
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %i.r = load double, ptr %i.q, align 8, !tbaa !323
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !863
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store double %i.r, ptr %i.t, align 8, !tbaa !323
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.u = load i32, ptr %1, align 4, !tbaa !254
  %i.v = add nsw i32 %i.u, -1
  %i.w = load i32, ptr %i.d, align 4, !tbaa !254
  %i.x = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i93 = zext i32 %i.w to i64
  %.sroa.2.0.insert.shift.i94 = shl nuw i64 %.sroa.2.0.insert.ext.i93, 32
  %.sroa.0.0.insert.ext.i95 = zext i32 %i.v to i64
  %.sroa.0.0.insert.insert.i96 = or disjoint i64 %.sroa.2.0.insert.shift.i94, %.sroa.0.0.insert.ext.i95
  store i64 %.sroa.0.0.insert.insert.i96, ptr %4, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.x, ptr %.sroa.260.0..sroa_idx, align 8
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.z = load double, ptr %i.y, align 8, !tbaa !323
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !863
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store double %i.z, ptr %i.ab, align 8, !tbaa !323
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ac = load i32, ptr %1, align 4, !tbaa !254
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = load i32, ptr %i.d, align 4, !tbaa !254
  %i.af = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i99 = zext i32 %i.ae to i64
  %.sroa.2.0.insert.shift.i100 = shl nuw i64 %.sroa.2.0.insert.ext.i99, 32
  %.sroa.0.0.insert.ext.i101 = zext i32 %i.ad to i64
  %.sroa.0.0.insert.insert.i102 = or disjoint i64 %.sroa.2.0.insert.shift.i100, %.sroa.0.0.insert.ext.i101
  store i64 %.sroa.0.0.insert.insert.i102, ptr %5, align 8
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.af, ptr %.sroa.256.0..sroa_idx, align 8
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %5)
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !323
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !863
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store double %i.ah, ptr %i.aj, align 8, !tbaa !323
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ak = load i32, ptr %1, align 4, !tbaa !254
  %i.al = add nsw i32 %i.ak, 2
  %i.am = load i32, ptr %i.d, align 4, !tbaa !254
  %i.an = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i105 = zext i32 %i.am to i64
  %.sroa.2.0.insert.shift.i106 = shl nuw i64 %.sroa.2.0.insert.ext.i105, 32
  %.sroa.0.0.insert.ext.i107 = zext i32 %i.al to i64
  %.sroa.0.0.insert.insert.i108 = or disjoint i64 %.sroa.2.0.insert.shift.i106, %.sroa.0.0.insert.ext.i107
  store i64 %.sroa.0.0.insert.insert.i108, ptr %6, align 8
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.an, ptr %.sroa.252.0..sroa_idx, align 8
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %6)
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !323
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !863
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store double %i.ap, ptr %i.ar, align 8, !tbaa !323
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.as = load i32, ptr %1, align 4, !tbaa !254
  %i.at = add nsw i32 %i.as, 3
  %i.au = load i32, ptr %i.d, align 4, !tbaa !254
  %i.av = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i111 = zext i32 %i.au to i64
  %.sroa.2.0.insert.shift.i112 = shl nuw i64 %.sroa.2.0.insert.ext.i111, 32
  %.sroa.0.0.insert.ext.i113 = zext i32 %i.at to i64
  %.sroa.0.0.insert.insert.i114 = or disjoint i64 %.sroa.2.0.insert.shift.i112, %.sroa.0.0.insert.ext.i113
  store i64 %.sroa.0.0.insert.insert.i114, ptr %7, align 8
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.av, ptr %.sroa.248.0..sroa_idx, align 8
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %7)
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !323
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !863
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  store double %i.ax, ptr %i.az, align 8, !tbaa !323
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ba = load i32, ptr %1, align 4, !tbaa !254
  %i.bb = load i32, ptr %i.d, align 4, !tbaa !254
  %i.bc = add nsw i32 %i.bb, -3
  %i.bd = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i117 = zext i32 %i.bc to i64
  %.sroa.2.0.insert.shift.i118 = shl nuw i64 %.sroa.2.0.insert.ext.i117, 32
  %.sroa.0.0.insert.ext.i119 = zext i32 %i.ba to i64
  %.sroa.0.0.insert.insert.i120 = or disjoint i64 %.sroa.2.0.insert.shift.i118, %.sroa.0.0.insert.ext.i119
  store i64 %.sroa.0.0.insert.insert.i120, ptr %8, align 8
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.bd, ptr %.sroa.244.0..sroa_idx, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %8)
  %i.bf = load double, ptr %i.be, align 8, !tbaa !323
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !863
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store double %i.bf, ptr %i.bh, align 8, !tbaa !323
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.bi = load i32, ptr %1, align 4, !tbaa !254
  %i.bj = load i32, ptr %i.d, align 4, !tbaa !254
  %i.bk = add nsw i32 %i.bj, -2
  %i.bl = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i123 = zext i32 %i.bk to i64
  %.sroa.2.0.insert.shift.i124 = shl nuw i64 %.sroa.2.0.insert.ext.i123, 32
  %.sroa.0.0.insert.ext.i125 = zext i32 %i.bi to i64
  %.sroa.0.0.insert.insert.i126 = or disjoint i64 %.sroa.2.0.insert.shift.i124, %.sroa.0.0.insert.ext.i125
  store i64 %.sroa.0.0.insert.insert.i126, ptr %9, align 8
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.bl, ptr %.sroa.240.0..sroa_idx, align 8
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %9)
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !323
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !863
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store double %i.bn, ptr %i.bp, align 8, !tbaa !323
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.bq = load i32, ptr %1, align 4, !tbaa !254
  %i.br = load i32, ptr %i.d, align 4, !tbaa !254
  %i.bs = add nsw i32 %i.br, -1
  %i.bt = load i32, ptr %i.f, align 4, !tbaa !254
  %.sroa.2.0.insert.ext.i129 = zext i32 %i.bs to i64
  %.sroa.2.0.insert.shift.i130 = shl nuw i64 %.sroa.2.0.insert.ext.i129, 32
  %.sroa.0.0.insert.ext.i131 = zext i32 %i.bq to i64
  %.sroa.0.0.insert.insert.i132 = or disjoint i64 %.sroa.2.0.insert.shift.i130, %.sroa.0.0.insert.ext.i131
  store i64 %.sroa.0.0.insert.insert.i132, ptr %10, align 8
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.bt, ptr %.sroa.236.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util15OffMaskIteratorINS3_8NodeMaskILj5EEEEEKNS1_12InternalNodeINS8_INS1_8LeafNodeINS0_4math4Vec3IiEELj3EEELj4EEELj5EEEE6parentEv:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.37, ptr noundef nonnull align 8 dereferenceable(32) %1) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !256
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #27
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !301    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.s = load i64, ptr %i.b, align 8, !tbaa !281
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.p

bb.l:                                             ; preds = %bb.a
  ret ptr %i.a

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_05tools20diagnostics_internal18InactiveTileValuesINS5_4tree4TreeINS9_8RootNodeINS9_12InternalNodeINSC_INS9_8LeafNodeINS5_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEEEEEvPNS1_4nodeERKNS1_14execution_dataE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 4
  %i.c = add i32 %i.b, -1
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.020 = phi ptr [ %i.e, %bb.h ], [ %0, %bb.a ]  ; 11 uses
  %i.e = load ptr, ptr %.020, align 8, !tbaa !1261 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %1, align 8, !tbaa !1274   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.020, i64 96 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !2866, !range !448, !noundef !481
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_05tools20diagnostics_internal18InactiveTileValuesINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE4joinEPNS1_18task_group_contextE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.k = load atomic i8, ptr %i.j monotonic, align 1
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %bb.d, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !281
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.f, %bb.c ]
  %i.o = tail call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i)
  br i1 %i.o, label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_05tools20diagnostics_internal18InactiveTileValuesINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE4joinEPNS1_18task_group_contextE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.020, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !6404, !nonnull !481, !align !1416
  %i.r = getelementptr inbounds nuw i8, ptr %.020, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !333
  %i.t = getelementptr inbounds nuw i8, ptr %.020, i64 40
  tail call void @_ZNSt8_Rb_treeIN7openvdb5v13_04math4Vec3IiEES4_St9_IdentityIS4_EKNS1_5tools20diagnostics_internal3cmpMUlT_T0_E_ESaIS4_EE22_M_insert_range_uniqueISt23_Rb_tree_const_iteratorIS4_EEENSt9enable_ifIXsr17__same_value_typeISA_EE5valueEvE4typeESA_SA_(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr %i.s, ptr nonnull %i.t)
  br label %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_05tools20diagnostics_internal18InactiveTileValuesINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE4joinEPNS1_18task_group_contextE.exit

_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_05tools20diagnostics_internal18InactiveTileValuesINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE4joinEPNS1_18task_group_contextE.exit: ; preds = %bb.b, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.020, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1257
  %i.w = load i8, ptr %i.g, align 8, !tbaa !2866, !range !448, !noundef !481
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_05tools20diagnostics_internal18InactiveTileValuesINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE4joinEPNS1_18task_group_contextE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.020, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.020, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !332
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math4Vec3IiEES4_St9_IdentityIS4_EKNS1_5tools20diagnostics_internal3cmpMUlT_T0_E_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef %i.aa)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #29
  unreachable

bb.h:                                             ; preds = %bb.f, %_ZN3tbb6detail2d119reduction_tree_nodeIN7openvdb5v13_05tools20diagnostics_internal18InactiveTileValuesINS4_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeINS4_4math4Vec3IiEELj3EEELj4EEELj5EEEEEEEEEE4joinEPNS1_18task_group_contextE.exit
  %i.ad = inttoptr i64 %i.v to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, ptr noundef nonnull %.020, i64 noundef 104, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = atomicrmw sub ptr %i.ae, i32 1 seq_cst, align 4
  %i.ag = add i32 %i.af, -1
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.020, i64 24
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 seq_cst, align 8
  %.not.i.i = icmp eq i64 %i.aj, 1
  br i1 %.not.i.i, label %bb.j, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.020, i64 16
  %i.al = ptrtoint ptr %i.ak to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.al)
  br label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

_ZN3tbb6detail2d112wait_context7releaseEj.exit:   ; preds = %bb.h, %bb.a, %bb.j, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #10

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind }
attributes #22 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { builtin allocsize(0) }

!llvm.module.flags = !{!246, !247}
!llvm.ident = !{!248}
!llvm.errno.tbaa = !{!253}

!0 = distinct !{null, null, null, null}
!1 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04GridINS1_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{!3, !447}
!4 = distinct !{!4, !447}
!5 = distinct !{!5, !447}
!6 = distinct !{!6, !447}
!7 = distinct !{!7, !447}
!8 = distinct !{!8, !447}
!9 = distinct !{!9, !447}
!10 = distinct !{!10, !447}
!11 = distinct !{!11, !447}
!12 = distinct !{!12, !447}
!13 = distinct !{!13, !447}
!14 = distinct !{!14, !447}
!15 = distinct !{!15, !447}
!16 = distinct !{!16, !447}
!17 = distinct !{!17, !447}
!18 = distinct !{!18, !447}
!19 = distinct !{!19, !447}
!20 = distinct !{!20, !447}
!21 = distinct !{!21, !447}
!22 = distinct !{!22, !447}
!23 = distinct !{!23, !447}
!24 = distinct !{!24, !447}
!25 = distinct !{!25, !447}
!26 = distinct !{!26, !447}
!27 = distinct !{null, null}
!28 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!29 = distinct !{null, null, null, null}
!30 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!31 = distinct !{null, null, null, null}
!32 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!33 = distinct !{null, null, null, null}
!34 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!35 = distinct !{null, null, null, null}
!36 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!37 = distinct !{null, null, null, null}
!38 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!39 = distinct !{null, null, null, null}
!40 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!41 = distinct !{null, null, null, null}
!42 = distinct !{null, null, null, null}
!43 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!44 = distinct !{ptr @_ZNSt12__shared_ptrIKN7openvdb5v13_04math9TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!45 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04math7MapBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!46 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_04tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIbLj3EEELj4EEELj5EEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!47 = distinct !{!47, !447}
!48 = distinct !{!48, !447}
!49 = distinct !{!49, !447}
!50 = distinct !{!50, !447}
!51 = distinct !{!51, !447}
!52 = distinct !{!52, !447}
!53 = distinct !{!53, !447}
!54 = distinct !{!54, !447}
!55 = distinct !{!55, !447}
!56 = distinct !{!56, !447}
!57 = distinct !{!57, !447}
!58 = distinct !{!58, !447}
!59 = distinct !{null}
!60 = distinct !{!60, !447}
!61 = distinct !{null}
!62 = distinct !{!62, !447}
!63 = distinct !{!63, !447}
!64 = distinct !{!64, !447}
!65 = distinct !{!65, !447}
!66 = distinct !{!66, !447}
!67 = distinct !{!67, !447}
!68 = distinct !{null}
!69 = distinct !{!69, !447}
!70 = distinct !{null}
!71 = distinct !{!71, !447}
!72 = distinct !{!72, !447}
!73 = distinct !{!73, !447}
!74 = distinct !{!74, !447}
!75 = distinct !{null}
!76 = distinct !{null}
!77 = distinct !{null}
!78 = distinct !{null}
!79 = distinct !{!79, !447}
!80 = distinct !{!80, !447}
!81 = distinct !{null}
!82 = distinct !{!82, !447}
!83 = distinct !{!83, !447}
!84 = distinct !{!84, !447}
!85 = distinct !{!85, !447}
!86 = distinct !{!86, !447}
!87 = distinct !{null}
!88 = distinct !{!88, !447}
!89 = distinct !{null}
!90 = distinct !{null}
!91 = distinct !{!91, !447}
!92 = distinct !{!92, !447}
!93 = distinct !{null}
!94 = distinct !{!94, !447}
!95 = distinct !{null}
!96 = distinct !{null}
!97 = distinct !{null}
!98 = distinct !{!98, !447}
!99 = distinct !{!99, !447}
!100 = distinct !{!100, !447}
!101 = distinct !{!101, !447}
!102 = distinct !{!102, !447}
!103 = distinct !{!103, !447}
!104 = distinct !{!104, !447}
!105 = distinct !{null}
!106 = distinct !{null}
!107 = distinct !{null}
!108 = distinct !{null}
!109 = distinct !{null}
!110 = distinct !{null}
!111 = distinct !{null}
!112 = distinct !{!112, !447}
!113 = distinct !{!113, !447}
!114 = distinct !{null}
!115 = distinct !{null}
!116 = distinct !{null}
!117 = distinct !{null}
!118 = distinct !{null}
!119 = distinct !{null}
!120 = distinct !{null}
!121 = distinct !{null}
!122 = distinct !{null}
!123 = distinct !{null}
!124 = distinct !{null}
!125 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!126 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!127 = distinct !{!127, !447}
!128 = distinct !{!128, !447}
!129 = distinct !{!129, !447}
!130 = distinct !{!130, !447}
!131 = distinct !{!131, !447}
!132 = distinct !{!132, !447}
!133 = distinct !{!133, !447}
!134 = distinct !{!134, !447}
!135 = distinct !{null}
!136 = distinct !{null}
!137 = distinct !{null}
!138 = distinct !{null}
!139 = distinct !{null}
!140 = distinct !{null}
!141 = distinct !{null}
!142 = distinct !{null}
!143 = distinct !{null, null, null, null}
!144 = distinct !{null, null, null}
!145 = distinct !{null, null}
!146 = distinct !{null, null}
!147 = distinct !{!147, !447}
!148 = distinct !{!148, !447}
!149 = distinct !{!149, !447}
!150 = distinct !{ptr @_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!151 = distinct !{!151, !447}
!152 = distinct !{null}
!153 = distinct !{null}
!154 = distinct !{ptr @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv, null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!155 = distinct !{ptr @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv, null, null, null, null}
!156 = distinct !{null}
!157 = distinct !{null}
!158 = distinct !{!158, !447}
!159 = distinct !{!159, !447}
!160 = distinct !{!160, !447}
!161 = distinct !{!161, !447}
!162 = distinct !{!162, !447}
end_hunk_2
