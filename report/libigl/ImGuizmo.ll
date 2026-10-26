Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN8ImGuizmo8matrix_t7InverseERKS0_b:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !16 ; 2 uses
  %i.m = fmul float %i.j, %i.l
  %i.n = load float, ptr %i.f, align 4, !tbaa !16 ; 2 uses
  %i.o = fmul float %i.m, %i.n
  %i.p = tail call float @llvm.fmuladd.f32(float %i.e, float %i.h, float %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !16 ; 2 uses
  %i.s = load float, ptr %i.b, align 4, !tbaa !16 ; 2 uses
  %i.t = fmul float %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !16 ; 2 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %i.t, float %i.v, float %i.p)
  %i.x = fneg float %i.d
  %i.y = fmul float %i.r, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.n, float %i.w)
  %i.aa = fneg float %i.s
  %i.ab = fmul float %i.j, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.h, float %i.z)
  %i.ad = fneg float %i.l
  %i.ae = fmul float %i.a, %i.ad
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.v, float %i.ac) ; 2 uses
  %i.ag = fdiv float 1.000000e+00, %i.af          ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !16
  %i.ar = fneg float %i.aq
  %i.as = fmul float %i.ao, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.am, float %i.as)
  %i.au = fmul float %i.ag, %i.at                 ; 2 uses
  store float %i.au, ptr %0, align 4, !tbaa !16
  %i.av = load float, ptr %i.ap, align 4, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !16
  %i.ay = load float, ptr %i.al, align 4, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !16
  %i.bb = fneg float %i.ba
  %i.bc = fmul float %i.ay, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.av, float %i.ax, float %i.bc)
  %i.be = fmul float %i.ag, %i.bd                 ; 2 uses
  store float %i.be, ptr %i.i, align 4, !tbaa !16
  %i.bf = load float, ptr %i.az, align 4, !tbaa !16
  %i.bg = load float, ptr %i.an, align 4, !tbaa !16
  %i.bh = load float, ptr %i.aw, align 4, !tbaa !16
  %i.bi = load float, ptr %i.ai, align 4, !tbaa !16
  %i.bj = fneg float %i.bi
  %i.bk = fmul float %i.bh, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bg, float %i.bk)
  %i.bm = fmul float %i.ag, %i.bl                 ; 2 uses
  store float %i.bm, ptr %i.q, align 4, !tbaa !16
  %i.bn = load float, ptr %i.an, align 4, !tbaa !16
  %i.bo = load float, ptr %i.ak, align 4, !tbaa !16
  %i.bp = load float, ptr %i.ah, align 4, !tbaa !16
  %i.bq = load float, ptr %i.al, align 4, !tbaa !16
  %i.br = fneg float %i.bq
  %i.bs = fmul float %i.bp, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bo, float %i.bs)
  %i.bu = fmul float %i.ag, %i.bt                 ; 2 uses
  store float %i.bu, ptr %i.b, align 4, !tbaa !16
  %i.bv = load float, ptr %i.al, align 4, !tbaa !16
  %i.bw = load float, ptr %1, align 4, !tbaa !16
  %i.bx = load float, ptr %i.ak, align 4, !tbaa !16
  %i.by = load float, ptr %i.aw, align 4, !tbaa !16
  %i.bz = fneg float %i.by
  %i.ca = fmul float %i.bx, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bw, float %i.ca)
  %i.cc = fmul float %i.ag, %i.cb                 ; 2 uses
  store float %i.cc, ptr %i.c, align 4, !tbaa !16
  %i.cd = load float, ptr %i.aw, align 4, !tbaa !16
  %i.ce = load float, ptr %i.ah, align 4, !tbaa !16
  %i.cf = load float, ptr %1, align 4, !tbaa !16
  %i.cg = load float, ptr %i.an, align 4, !tbaa !16
  %i.ch = fneg float %i.cg
  %i.ci = fmul float %i.cf, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.ce, float %i.ci)
  %i.ck = fmul float %i.ag, %i.cj                 ; 2 uses
  store float %i.ck, ptr %i.k, align 4, !tbaa !16
  %i.cl = load float, ptr %i.ah, align 4, !tbaa !16
  %i.cm = load float, ptr %i.ap, align 4, !tbaa !16
  %i.cn = load float, ptr %i.ai, align 4, !tbaa !16
  %i.co = load float, ptr %i.ak, align 4, !tbaa !16
  %i.cp = fneg float %i.co
  %i.cq = fmul float %i.cn, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cm, float %i.cq)
  %i.cs = fmul float %i.ag, %i.cr                 ; 2 uses
  store float %i.cs, ptr %i.f, align 4, !tbaa !16
  %i.ct = load float, ptr %i.ak, align 4, !tbaa !16
  %i.cu = load float, ptr %i.az, align 4, !tbaa !16
  %i.cv = load float, ptr %i.ap, align 4, !tbaa !16
  %i.cw = load float, ptr %1, align 4, !tbaa !16
  %i.cx = fneg float %i.cw
  %i.cy = fmul float %i.cv, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.cu, float %i.cy)
  %i.da = fmul float %i.ag, %i.cz                 ; 2 uses
  store float %i.da, ptr %i.u, align 4, !tbaa !16
  %i.db = load float, ptr %1, align 4, !tbaa !16
  %i.dc = load float, ptr %i.ai, align 4, !tbaa !16
  %i.dd = load float, ptr %i.az, align 4, !tbaa !16
  %i.de = load float, ptr %i.ah, align 4, !tbaa !16
  %i.df = fneg float %i.de
  %i.dg = fmul float %i.dd, %i.df
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.db, float %i.dc, float %i.dg)
  %i.di = fmul float %i.ag, %i.dh                 ; 2 uses
  store float %i.di, ptr %i.g, align 4, !tbaa !16
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !16
  %i.dn = fmul float %i.bu, %i.dm
  %i.do = tail call float @llvm.fmuladd.f32(float %i.au, float %i.dk, float %i.dn)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !16
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.dq, float %i.do)
  %i.ds = fneg float %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ds, ptr %i.dt, align 4, !tbaa !16
  %i.du = load float, ptr %i.dj, align 4, !tbaa !16
  %i.dv = load float, ptr %i.dl, align 4, !tbaa !16
  %i.dw = fmul float %i.cc, %i.dv
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.be, float %i.du, float %i.dw)
  %i.dy = load float, ptr %i.dp, align 4, !tbaa !16
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.da, float %i.dy, float %i.dx)
  %i.ea = fneg float %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.ea, ptr %i.eb, align 4, !tbaa !16
  %i.ec = load float, ptr %i.dj, align 4, !tbaa !16
  %i.ed = load float, ptr %i.dl, align 4, !tbaa !16
  %i.ee = fmul float %i.ck, %i.ed
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.ec, float %i.ee)
  %i.eg = load float, ptr %i.dp, align 4, !tbaa !16
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.di, float %i.eg, float %i.ef)
  %i.ei = fneg float %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.ei, ptr %i.ej, align 4, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.et = load <2 x float>, ptr %i.ek, align 4, !tbaa !16 ; 6 uses
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ev = load <2 x float>, ptr %i.em, align 4, !tbaa !16 ; 10 uses
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ex = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ey = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ez = load <2 x float>, ptr %i.eo, align 4, !tbaa !16 ; 9 uses
  %i.fa = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fb = fmul <2 x float> %i.ez, %i.fa           ; 6 uses
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fe = fmul <2 x float> %i.fd, %i.et           ; 6 uses
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fg = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fh = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fj = fmul <2 x float> %i.ev, %i.eu           ; 4 uses
  %i.fk = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fl = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = load <2 x float>, ptr %i.eq, align 4, !tbaa !16 ; 7 uses
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fo = fmul <2 x float> %i.fn, %i.ev           ; 6 uses
  %i.fp = fmul <2 x float> %i.fm, %i.eu           ; 4 uses
  %i.fq = fmul <2 x float> %i.fn, %i.ez           ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ft = shufflevector <2 x float> %i.fo, <2 x float> %i.fp, <4 x i32> <i32 0, i32 3, i32 2, i32 poison>
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> %i.fi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fv = shufflevector <2 x float> %i.fq, <2 x float> %i.fo, <4 x i32> <i32 1, i32 3, i32 0, i32 poison>
  %i.fw = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fx = shufflevector <4 x float> %i.fv, <4 x float> %i.fw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fy = shufflevector <2 x float> %i.fb, <2 x float> %i.fj, <4 x i32> <i32 0, i32 2, i32 poison, i32 3>
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> %i.fh, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ga = shufflevector <2 x float> %i.fo, <2 x float> %i.fp, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> %i.fg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gc = shufflevector <2 x float> %i.fq, <2 x float> %i.fo, <4 x i32> <i32 0, i32 2, i32 1, i32 poison>
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ge = shufflevector <2 x float> %i.fb, <2 x float> %i.fj, <4 x i32> <i32 1, i32 3, i32 poison, i32 2>
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gi = load <2 x float>, ptr %1, align 4, !tbaa !16 ; 6 uses
  %i.gj = load <2 x float>, ptr %i.el, align 4, !tbaa !16 ; 6 uses
  %i.gk = load <2 x float>, ptr %i.en, align 4, !tbaa !16 ; 7 uses
  %i.gl = load <2 x float>, ptr %i.ep, align 4, !tbaa !16 ; 6 uses
  %i.gm = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.gn = fmul <2 x float> %i.fo, %i.gm
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gp = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.gq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.gp, <2 x float> %i.go)
  %i.gr = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.gr, <2 x float> %i.gq) ; 2 uses
  %shift = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.gs, %shift
  %i.gt = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  store float %i.gt, ptr %0, align 4, !tbaa !16
  %i.gu = fmul <2 x float> %i.fp, %i.gm
  %i.gv = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.gw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.gv, <2 x float> %i.gu)
  %i.gx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.gr, <2 x float> %i.gw) ; 2 uses
  %shift167 = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop168 = fsub <2 x float> %shift167, %i.gx ; 2 uses
  %i.gy = extractelement <2 x float> %foldExtExtBinop168, i64 0
  store float %i.gy, ptr %i.er, align 4, !tbaa !16
  %i.gz = fmul <2 x float> %i.fp, %i.gp
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.gv, <2 x float> %i.gz)
  %i.hb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.gr, <2 x float> %i.ha) ; 2 uses
  %shift170 = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop171 = fsub <2 x float> %i.hb, %shift170
  %i.hc = extractelement <2 x float> %foldExtExtBinop171, i64 0 ; 2 uses
  store float %i.hc, ptr %i.es, align 4, !tbaa !16
  %i.hd = fmul <2 x float> %i.fe, %i.gp
  %i.he = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.gv, <2 x float> %i.hd)
  %i.hf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.gm, <2 x float> %i.he) ; 2 uses
  %shift173 = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop174 = fsub <2 x float> %i.hf, %shift173
  %i.hg = extractelement <2 x float> %foldExtExtBinop174, i64 0 ; 2 uses
  store float %i.hg, ptr %i.fr, align 4, !tbaa !16
  %i.hh = shufflevector <2 x float> %i.gk, <2 x float> %i.gj, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  %i.hi = fmul <4 x float> %i.fu, %i.hh
  %i.hj = shufflevector <2 x float> %i.gj, <2 x float> %i.gi, <4 x i32> <i32 0, i32 2, i32 2, i32 2> ; 2 uses
  %i.hk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fx, <4 x float> %i.hj, <4 x float> %i.hi)
  %i.hl = shufflevector <2 x float> %i.gl, <2 x float> %i.gk, <4 x i32> <i32 0, i32 0, i32 0, i32 2> ; 2 uses
  %i.hm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.hl, <4 x float> %i.hk)
  %i.hn = fmul <4 x float> %i.gb, %i.hh
  %i.ho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.hj, <4 x float> %i.hn)
  %i.hp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> %i.hl, <4 x float> %i.ho)
  %i.hq = fsub <4 x float> %i.hm, %i.hp
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.hr, ptr %i.fs, align 4, !tbaa !16
  %i.hs = shufflevector <2 x float> %i.gk, <2 x float> %i.gj, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.ht = shufflevector <2 x float> %i.gl, <2 x float> %i.gk, <4 x i32> <i32 1, i32 0, i32 1, i32 2> ; 2 uses
  %i.hu = fmul <4 x float> %i.hs, %i.ht           ; 7 uses
  %i.hv = shufflevector <2 x float> %i.gi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hw = shufflevector <4 x float> %i.hs, <4 x float> %i.hv, <4 x i32> <i32 3, i32 4, i32 5, i32 1> ; 3 uses
  %3 = shufflevector <2 x float> %i.gl, <2 x float> %i.gi, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.hx = fmul <4 x float> %i.hw, %3              ; 6 uses
  %4 = shufflevector <2 x float> %i.gl, <2 x float> %i.gi, <4 x i32> <i32 1, i32 3, i32 2, i32 3>
  %i.hy = shufflevector <4 x float> %i.hs, <4 x float> %i.ht, <4 x i32> <i32 2, i32 5, i32 4, i32 0>
  %i.hz = fmul <4 x float> %4, %i.hy
  %i.ia = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 2>
  %i.ib = shufflevector <2 x float> %i.gj, <2 x float> %i.gk, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.ic = fmul <4 x float> %i.ia, %i.ib           ; 7 uses
  %i.id = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ie = fmul <4 x float> %i.hs, %i.id
  %i.if = shufflevector <2 x float> %i.ez, <2 x float> %i.ev, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.ig = fmul <4 x float> %i.if, %i.hx
  %i.ih = shufflevector <2 x float> %i.ev, <2 x float> %i.et, <4 x i32> <i32 1, i32 3, i32 3, i32 3> ; 2 uses
  %i.ii = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hu, <4 x float> %i.ih, <4 x float> %i.ig)
  %i.ij = shufflevector <2 x float> %i.fm, <2 x float> %i.ez, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.ik = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ic, <4 x float> %i.ij, <4 x float> %i.ii)
  %i.il = fmul <4 x float> %i.if, %i.hz
  %i.im = shufflevector <4 x float> %i.hu, <4 x float> %i.hx, <4 x i32> <i32 1, i32 0, i32 4, i32 poison>
  %i.in = shufflevector <4 x float> %i.im, <4 x float> %i.ic, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.io = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.in, <4 x float> %i.ih, <4 x float> %i.il)
  %i.ip = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %i.ij, <4 x float> %i.io)
  %i.iq = fsub <4 x float> %i.ik, %i.ip
  %foldExtExtBinop176 = fmul <2 x float> %foldExtExtBinop168, %i.gj
  %i.ir = extractelement <2 x float> %foldExtExtBinop176, i64 0
  %i.is = extractelement <2 x float> %i.gi, i64 0
  %i.it = tail call float @llvm.fmuladd.f32(float %i.is, float %i.gt, float %i.ir)
  %i.iu = extractelement <2 x float> %i.gk, i64 0
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.hc, float %i.it)
  %i.iw = extractelement <2 x float> %i.gl, i64 0
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.iw, float %i.hg, float %i.iv) ; 2 uses
  %i.iy = fdiv float 1.000000e+00, %i.ix
  %i.iz = load <4 x float>, ptr %0, align 4, !tbaa !16
  %i.ja = insertelement <4 x float> poison, float %i.iy, i64 0
  %i.jb = shufflevector <4 x float> %i.ja, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.jc = fmul <4 x float> %i.jb, %i.iz
  store <4 x float> %i.jc, ptr %0, align 4, !tbaa !16
  %i.jd = load <4 x float>, ptr %i.fs, align 4, !tbaa !16
  %i.je = fmul <4 x float> %i.jb, %i.jd
  store <4 x float> %i.je, ptr %i.fs, align 4, !tbaa !16
  %i.jf = fmul <4 x float> %i.jb, %i.iq
  store <4 x float> %i.jf, ptr %i.gg, align 4, !tbaa !16
  %i.jg = shufflevector <2 x float> %i.fm, <2 x float> %i.et, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.jh = shufflevector <4 x float> %i.hu, <4 x float> %i.ic, <4 x i32> <i32 3, i32 0, i32 7, i32 4>
  %i.ji = fmul <4 x float> %i.jg, %i.jh
  %i.jj = shufflevector <4 x float> %i.hu, <4 x float> %i.hx, <4 x i32> <i32 2, i32 7, i32 5, i32 poison>
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> %i.ic, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.jl = shufflevector <2 x float> %i.ez, <2 x float> %i.fm, <4 x i32> <i32 0, i32 2, i32 poison, i32 0>
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> %i.ey, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.jn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jk, <4 x float> %i.jm, <4 x float> %i.ji)
  %i.jo = shufflevector <4 x float> %i.hu, <4 x float> %i.hx, <4 x i32> <i32 1, i32 6, i32 4, i32 poison>
  %i.jp = shufflevector <4 x float> %i.jo, <4 x float> %i.ic, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.jq = shufflevector <2 x float> %i.ev, <2 x float> %i.ez, <4 x i32> <i32 0, i32 2, i32 poison, i32 0>
  %i.jr = shufflevector <2 x float> %i.et, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.js = shufflevector <4 x float> %i.jq, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.jt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jp, <4 x float> %i.js, <4 x float> %i.jn)
  %i.ju = shufflevector <2 x float> %i.ev, <2 x float> %i.fm, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.jv = shufflevector <4 x float> %i.ju, <4 x float> %i.js, <4 x i32> <i32 0, i32 1, i32 6, i32 5>
  %i.jw = shufflevector <4 x float> %i.hu, <4 x float> %i.ic, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.jx = fmul <4 x float> %i.jv, %i.jw
  %i.jy = shufflevector <4 x float> %i.ic, <4 x float> %i.hx, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.jz = shufflevector <2 x float> %i.fm, <2 x float> %i.ez, <4 x i32> <i32 0, i32 2, i32 0, i32 poison>
  %i.ka = shufflevector <4 x float> %i.jz, <4 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.kb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jy, <4 x float> %i.ka, <4 x float> %i.jx)
  %i.kc = shufflevector <4 x float> %i.hx, <4 x float> %i.hu, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.kd = shufflevector <2 x float> %i.ez, <2 x float> %i.et, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.kf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kc, <4 x float> %i.ke, <4 x float> %i.kb)
  %i.kg = fsub <4 x float> %i.jt, %i.kf
  %i.kh = fmul <4 x float> %i.jb, %i.kg
  store <4 x float> %i.kh, ptr %i.gh, align 4, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0161 = phi float [ %i.af, %bb.b ], [ %i.ix, %bb.c ]
  ret float %.0161
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !12   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !10 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.c, %i.c
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = extractelement <2 x float> %i.c, i64 1   ; 2 uses
  %i.g = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.e) ; 2 uses
  %i.h = fcmp olt float %i.g, f0x34000000
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = tail call float @sqrtf(float noundef %i.g) #20
  %i.m = tail call float @sinf(float noundef %2) #20 ; 3 uses
  %i.n = tail call float @cosf(float noundef %2) #20 ; 3 uses
  %i.o = fdiv float 1.000000e+00, %i.l            ; 2 uses
  %i.p = fmul float %i.a, %i.o                    ; 5 uses
  %i.q = insertelement <2 x float> poison, float %i.o, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.c, %i.r              ; 4 uses
  %i.t = fsub float 1.000000e+00, %i.n            ; 5 uses
  %i.u = fmul float %i.p, %i.p
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.t, float %i.n)
  %i.w = fmul <2 x float> %i.s, %i.s
  %i.x = insertelement <2 x float> poison, float %i.t, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = insertelement <2 x float> poison, float %i.n, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.y, <2 x float> %i.aa)
  %i.ac = extractelement <2 x float> %i.s, i64 0  ; 3 uses
  %i.ad = fmul float %i.p, %i.ac
  %i.ae = fmul float %i.ad, %i.t                  ; 2 uses
  %i.af = extractelement <2 x float> %i.s, i64 1  ; 3 uses
  %i.ag = fmul float %i.ac, %i.af
  %i.ah = fmul float %i.ag, %i.t                  ; 2 uses
  %i.ai = fmul float %i.af, %i.p
  %i.aj = fmul float %i.ai, %i.t                  ; 2 uses
  %i.ak = fmul float %i.m, %i.p                   ; 2 uses
  %i.al = fmul float %i.m, %i.ac                  ; 2 uses
  %i.am = fmul float %i.m, %i.af                  ; 2 uses
  %i.an = fadd float %i.am, %i.ae
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.an, ptr %i.ao, align 4, !tbaa !16
  %i.ap = fsub float %i.aj, %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ap, ptr %i.aq, align 4, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.ar, align 4, !tbaa !16
  %i.as = fsub float %i.ae, %i.am
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.as, ptr %i.at, align 4, !tbaa !16
  %i.au = fadd float %i.ak, %i.ah
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.au, ptr %i.av, align 4, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.aw, align 4, !tbaa !16
  %i.ax = fadd float %i.al, %i.aj
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ax, ptr %i.ay, align 4, !tbaa !16
  %i.az = fsub float %i.ah, %i.ak
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.az, ptr %i.ba, align 4, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink60 = phi float [ 1.000000e+00, %bb.b ], [ %i.v, %bb.c ]
  %i.bc = phi <2 x float> [ splat (float 1.000000e+00), %bb.b ], [ %i.ab, %bb.c ] ; 2 uses
  store float %.sink60, ptr %0, align 4, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.be = extractelement <2 x float> %i.bc, i64 0
  store float %i.be, ptr %i.bd, align 4, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = extractelement <2 x float> %i.bc, i64 1
  store float %i.bg, ptr %i.bf, align 4, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.bh, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN8ImGuizmo7SetRectEffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #10 {
bb.a:
  store float %0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !54
  store float %1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 968), align 8, !tbaa !55
  store float %2, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !25
  store float %3, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 976), align 8, !tbaa !26
  %i.a = fadd float %0, %2                        ; 2 uses
  store float %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 980), align 4, !tbaa !27
  %i.b = fadd float %1, %i.a
  store float %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 984), align 8, !tbaa !28
  %i.c = fdiv float %2, %3
  store float %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 988), align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN8ImGuizmo15SetOrthographicEb(i1 noundef zeroext %0) local_unnamed_addr #10 {
bb.a:
  %i.a = zext i1 %0 to i8
  store i8 %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 992), align 8, !tbaa !30
end_hunk_0
