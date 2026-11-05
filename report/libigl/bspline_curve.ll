Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bspline_curve?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6embree23PrecomputedBSplineBasisC2Ei:bb.a
.preheader:                                       ; preds = %bb.a, %.preheader
  %.02358 = phi i64 [ 1, %bb.a ], [ %i.ha, %.preheader ] ; 10 uses
  %i.s = uitofp nneg i64 %.02358 to float         ; 2 uses
  %i.t = getelementptr inbounds nuw [68 x i8], ptr %0, i64 %.02358 ; 5 uses
  %i.u = getelementptr inbounds nuw [68 x i8], ptr %i.b, i64 %.02358 ; 5 uses
  %i.v = getelementptr inbounds nuw [68 x i8], ptr %i.c, i64 %.02358 ; 5 uses
  %i.w = getelementptr inbounds nuw [68 x i8], ptr %i.d, i64 %.02358 ; 5 uses
  %i.x = getelementptr inbounds nuw [68 x i8], ptr %i.e, i64 %.02358 ; 5 uses
  %i.y = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %.02358 ; 5 uses
  %i.z = getelementptr inbounds nuw [68 x i8], ptr %i.g, i64 %.02358 ; 5 uses
  %i.aa = getelementptr inbounds nuw [68 x i8], ptr %i.h, i64 %.02358 ; 5 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ab = fdiv <4 x float> %i.l, %broadcast.splat ; 8 uses
  %i.ac = fsub <4 x float> splat (float 1.000000e+00), %i.ab ; 9 uses
  %i.ad = fmul <4 x float> %i.ac, %i.ac
  %i.ae = fmul <4 x float> %i.ac, %i.ad           ; 3 uses
  %i.af = fmul <4 x float> %i.ab, %i.ab           ; 2 uses
  %i.ag = fmul <4 x float> %i.ab, %i.af           ; 3 uses
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> splat (float 4.000000e+00), <4 x float> %i.ag)
  %i.ai = fmul <4 x float> %i.ab, %i.ac           ; 3 uses
  %i.aj = fmul <4 x float> %i.ac, %i.ai           ; 2 uses
  %i.ak = fmul <4 x float> %i.ab, %i.ai           ; 2 uses
  %i.al = fmul <4 x float> %i.ak, splat (float 6.000000e+00)
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> splat (float 1.200000e+01), <4 x float> %i.al)
  %i.an = fadd <4 x float> %i.ah, %i.am
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> splat (float 4.000000e+00), <4 x float> %i.ae)
  %i.ap = fmul <4 x float> %i.aj, splat (float 6.000000e+00)
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> splat (float 1.200000e+01), <4 x float> %i.ap)
  %i.ar = fadd <4 x float> %i.ao, %i.aq
  %i.as = fmul <4 x float> %i.ae, splat (float f0x3E2AAAAB)
  %i.at = fmul <4 x float> %i.an, splat (float f0x3E2AAAAB)
  %i.au = fmul <4 x float> %i.ar, splat (float f0x3E2AAAAB)
  %i.av = fmul <4 x float> %i.ag, splat (float f0x3E2AAAAB)
  store <4 x float> %i.as, ptr %i.t, align 4
  store <4 x float> %i.at, ptr %i.u, align 4
  store <4 x float> %i.au, ptr %i.v, align 4
  store <4 x float> %i.av, ptr %i.w, align 4
  %i.aw = fneg <4 x float> %i.ac
  %i.ax = fmul <4 x float> %i.ac, %i.aw
  %i.ay = fneg <4 x float> %i.ab
  %i.az = fmul <4 x float> %i.ai, splat (float 4.000000e+00) ; 2 uses
  %i.ba = fneg <4 x float> %i.az
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.ab, <4 x float> %i.ba)
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.ac, <4 x float> %i.az)
  %i.bd = fmul <4 x float> %i.ax, splat (float 5.000000e-01)
  %i.be = fmul <4 x float> %i.bb, splat (float 5.000000e-01)
  %i.bf = fmul <4 x float> %i.bc, splat (float 5.000000e-01)
  %i.bg = fmul <4 x float> %i.af, splat (float 5.000000e-01)
  store <4 x float> %i.bd, ptr %i.x, align 4
  store <4 x float> %i.be, ptr %i.y, align 4
  store <4 x float> %i.bf, ptr %i.z, align 4
  store <4 x float> %i.bg, ptr %i.aa, align 4
  %i.bh = fdiv <4 x float> %i.n, %broadcast.splat ; 8 uses
  %i.bi = fsub <4 x float> splat (float 1.000000e+00), %i.bh ; 9 uses
  %i.bj = fmul <4 x float> %i.bi, %i.bi
  %i.bk = fmul <4 x float> %i.bi, %i.bj           ; 3 uses
  %i.bl = fmul <4 x float> %i.bh, %i.bh           ; 2 uses
  %i.bm = fmul <4 x float> %i.bh, %i.bl           ; 3 uses
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> splat (float 4.000000e+00), <4 x float> %i.bm)
  %i.bo = fmul <4 x float> %i.bh, %i.bi           ; 3 uses
  %i.bp = fmul <4 x float> %i.bi, %i.bo           ; 2 uses
  %i.bq = fmul <4 x float> %i.bh, %i.bo           ; 2 uses
  %i.br = fmul <4 x float> %i.bq, splat (float 6.000000e+00)
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> splat (float 1.200000e+01), <4 x float> %i.br)
  %i.bt = fadd <4 x float> %i.bn, %i.bs
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> splat (float 4.000000e+00), <4 x float> %i.bk)
  %i.bv = fmul <4 x float> %i.bp, splat (float 6.000000e+00)
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> splat (float 1.200000e+01), <4 x float> %i.bv)
  %i.bx = fadd <4 x float> %i.bu, %i.bw
  %i.by = fmul <4 x float> %i.bk, splat (float f0x3E2AAAAB)
  %i.bz = fmul <4 x float> %i.bt, splat (float f0x3E2AAAAB)
  %i.ca = fmul <4 x float> %i.bx, splat (float f0x3E2AAAAB)
  %i.cb = fmul <4 x float> %i.bm, splat (float f0x3E2AAAAB)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x float> %i.by, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x float> %i.bz, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x float> %i.ca, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x float> %i.cb, ptr %i.cf, align 4
  %i.cg = fneg <4 x float> %i.bi
  %i.ch = fmul <4 x float> %i.bi, %i.cg
  %i.ci = fneg <4 x float> %i.bh
  %i.cj = fmul <4 x float> %i.bo, splat (float 4.000000e+00) ; 2 uses
  %i.ck = fneg <4 x float> %i.cj
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %i.bh, <4 x float> %i.ck)
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %i.bi, <4 x float> %i.cj)
  %i.cn = fmul <4 x float> %i.ch, splat (float 5.000000e-01)
  %i.co = fmul <4 x float> %i.cl, splat (float 5.000000e-01)
  %i.cp = fmul <4 x float> %i.cm, splat (float 5.000000e-01)
  %i.cq = fmul <4 x float> %i.bl, splat (float 5.000000e-01)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x float> %i.cn, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x float> %i.co, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x float> %i.cp, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x float> %i.cq, ptr %i.cu, align 4
  %i.cv = fdiv <4 x float> %i.p, %broadcast.splat ; 8 uses
  %i.cw = fsub <4 x float> splat (float 1.000000e+00), %i.cv ; 9 uses
  %i.cx = fmul <4 x float> %i.cw, %i.cw
  %i.cy = fmul <4 x float> %i.cw, %i.cx           ; 3 uses
  %i.cz = fmul <4 x float> %i.cv, %i.cv           ; 2 uses
  %i.da = fmul <4 x float> %i.cv, %i.cz           ; 3 uses
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> splat (float 4.000000e+00), <4 x float> %i.da)
  %i.dc = fmul <4 x float> %i.cv, %i.cw           ; 3 uses
  %i.dd = fmul <4 x float> %i.cw, %i.dc           ; 2 uses
  %i.de = fmul <4 x float> %i.cv, %i.dc           ; 2 uses
  %i.df = fmul <4 x float> %i.de, splat (float 6.000000e+00)
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> splat (float 1.200000e+01), <4 x float> %i.df)
  %i.dh = fadd <4 x float> %i.db, %i.dg
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> splat (float 4.000000e+00), <4 x float> %i.cy)
  %i.dj = fmul <4 x float> %i.dd, splat (float 6.000000e+00)
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> splat (float 1.200000e+01), <4 x float> %i.dj)
  %i.dl = fadd <4 x float> %i.di, %i.dk
  %i.dm = fmul <4 x float> %i.cy, splat (float f0x3E2AAAAB)
  %i.dn = fmul <4 x float> %i.dh, splat (float f0x3E2AAAAB)
  %i.do = fmul <4 x float> %i.dl, splat (float f0x3E2AAAAB)
  %i.dp = fmul <4 x float> %i.da, splat (float f0x3E2AAAAB)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store <4 x float> %i.dm, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store <4 x float> %i.dn, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store <4 x float> %i.do, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store <4 x float> %i.dp, ptr %i.dt, align 4
  %i.du = fneg <4 x float> %i.cw
  %i.dv = fmul <4 x float> %i.cw, %i.du
  %i.dw = fneg <4 x float> %i.cv
  %i.dx = fmul <4 x float> %i.dc, splat (float 4.000000e+00) ; 2 uses
  %i.dy = fneg <4 x float> %i.dx
  %i.dz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %i.cv, <4 x float> %i.dy)
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.cw, <4 x float> %i.dx)
  %i.eb = fmul <4 x float> %i.dv, splat (float 5.000000e-01)
  %i.ec = fmul <4 x float> %i.dz, splat (float 5.000000e-01)
  %i.ed = fmul <4 x float> %i.ea, splat (float 5.000000e-01)
  %i.ee = fmul <4 x float> %i.cz, splat (float 5.000000e-01)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store <4 x float> %i.eb, ptr %i.ef, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store <4 x float> %i.ec, ptr %i.eg, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store <4 x float> %i.ed, ptr %i.eh, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store <4 x float> %i.ee, ptr %i.ei, align 4
  %i.ej = fdiv <4 x float> %i.r, %broadcast.splat ; 8 uses
  %i.ek = fsub <4 x float> splat (float 1.000000e+00), %i.ej ; 9 uses
  %i.el = fmul <4 x float> %i.ek, %i.ek
  %i.em = fmul <4 x float> %i.ek, %i.el           ; 3 uses
  %i.en = fmul <4 x float> %i.ej, %i.ej           ; 2 uses
  %i.eo = fmul <4 x float> %i.ej, %i.en           ; 3 uses
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> splat (float 4.000000e+00), <4 x float> %i.eo)
  %i.eq = fmul <4 x float> %i.ej, %i.ek           ; 3 uses
  %i.er = fmul <4 x float> %i.ek, %i.eq           ; 2 uses
  %i.es = fmul <4 x float> %i.ej, %i.eq           ; 2 uses
  %i.et = fmul <4 x float> %i.es, splat (float 6.000000e+00)
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> splat (float 1.200000e+01), <4 x float> %i.et)
  %i.ev = fadd <4 x float> %i.ep, %i.eu
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> splat (float 4.000000e+00), <4 x float> %i.em)
  %i.ex = fmul <4 x float> %i.er, splat (float 6.000000e+00)
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> splat (float 1.200000e+01), <4 x float> %i.ex)
  %i.ez = fadd <4 x float> %i.ew, %i.ey
  %i.fa = fmul <4 x float> %i.em, splat (float f0x3E2AAAAB)
  %i.fb = fmul <4 x float> %i.ev, splat (float f0x3E2AAAAB)
  %i.fc = fmul <4 x float> %i.ez, splat (float f0x3E2AAAAB)
  %i.fd = fmul <4 x float> %i.eo, splat (float f0x3E2AAAAB)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store <4 x float> %i.fa, ptr %i.fe, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store <4 x float> %i.fb, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store <4 x float> %i.fc, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store <4 x float> %i.fd, ptr %i.fh, align 4
  %i.fi = fneg <4 x float> %i.ek
  %i.fj = fmul <4 x float> %i.ek, %i.fi
  %i.fk = fneg <4 x float> %i.ej
  %i.fl = fmul <4 x float> %i.eq, splat (float 4.000000e+00) ; 2 uses
  %i.fm = fneg <4 x float> %i.fl
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %i.ej, <4 x float> %i.fm)
  %i.fo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> %i.ek, <4 x float> %i.fl)
  %i.fp = fmul <4 x float> %i.fj, splat (float 5.000000e-01)
  %i.fq = fmul <4 x float> %i.fn, splat (float 5.000000e-01)
  %i.fr = fmul <4 x float> %i.fo, splat (float 5.000000e-01)
  %i.fs = fmul <4 x float> %i.en, splat (float 5.000000e-01)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store <4 x float> %i.fp, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store <4 x float> %i.fq, ptr %i.fu, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store <4 x float> %i.fr, ptr %i.fv, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store <4 x float> %i.fs, ptr %i.fw, align 4
  %i.fx = fdiv float %i.j, %i.s                   ; 4 uses
  %i.fy = fsub float 1.000000e+00, %i.fx          ; 5 uses
  %i.fz = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.ga = insertelement <4 x float> %i.fz, float %i.fx, i64 1 ; 3 uses
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gc = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %2 = fmul <4 x float> %i.gb, %i.gc              ; 3 uses
  %3 = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gd = fmul <4 x float> %3, %2                 ; 6 uses
  %4 = extractelement <4 x float> %i.gd, i64 3
  %5 = fmul float %4, 6.000000e+00
  %6 = extractelement <4 x float> %i.gd, i64 2
  %7 = fmul float %6, 6.000000e+00
  %8 = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %9 = insertelement <4 x float> %8, float %5, i64 2
  %10 = insertelement <4 x float> %9, float %7, i64 3
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> <float 4.000000e+00, float 4.000000e+00, float 1.200000e+01, float 1.200000e+01>, <4 x float> %10) ; 2 uses
  %11 = shufflevector <4 x float> %i.ge, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %12 = shufflevector <4 x float> %i.ge, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %13 = fadd <2 x float> %11, %12                 ; 2 uses
  %14 = extractelement <4 x float> %i.gd, i64 0
  %15 = fmul float %14, f0x3E2AAAAB
  %i.gf = extractelement <2 x float> %13, i64 0
  %16 = fmul float %i.gf, f0x3E2AAAAB
  %17 = extractelement <2 x float> %13, i64 1
  %18 = fmul float %17, f0x3E2AAAAB
  %i.gg = extractelement <4 x float> %i.gd, i64 1
  %19 = fmul float %i.gg, f0x3E2AAAAB
  %i.gh = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store float %15, ptr %i.gh, align 4
  %20 = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store float %16, ptr %20, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store float %18, ptr %i.gi, align 4
  %21 = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store float %19, ptr %21, align 4
  %i.gj = fneg float %i.fy
  %i.gk = fmul float %i.fy, %i.gj
  %i.gl = fneg float %i.fx
  %i.gm = extractelement <4 x float> %2, i64 2
  %i.gn = fmul float %i.gm, 4.000000e+00          ; 2 uses
  %i.go = fneg float %i.gn
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.fx, float %i.go)
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.fy, float %i.gn)
  %i.gr = fmul float %i.gk, 5.000000e-01
  %i.gs = fmul float %i.gp, 5.000000e-01
  %i.gt = fmul float %i.gq, 5.000000e-01
  %i.gu = extractelement <4 x float> %2, i64 1
  %i.gv = fmul float %i.gu, 5.000000e-01
  %i.gw = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store float %i.gr, ptr %i.gw, align 4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store float %i.gs, ptr %i.gx, align 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store float %i.gt, ptr %i.gy, align 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store float %i.gv, ptr %i.gz, align 4
  %i.ha = add nuw nsw i64 %.02358, 1              ; 2 uses
  %exitcond59.not = icmp eq i64 %i.ha, 17
  br i1 %exitcond59.not, label %bb.b, label %.preheader, !llvm.loop !0

bb.b:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_bspline_curve.cpp() #2 section ".text.startup" {
bb.a:
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %bb.a
  %.02358.i.i = phi i64 [ 1, %bb.a ], [ %i.gi, %.preheader.i.i ] ; 10 uses
  %i.a = uitofp nneg i64 %.02358.i.i to float     ; 2 uses
  %i.b = getelementptr inbounds nuw [68 x i8], ptr @_ZN6embree14bspline_basis0E, i64 %.02358.i.i ; 5 uses
  %i.c = getelementptr inbounds nuw [68 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree14bspline_basis0E, i64 1156), i64 %.02358.i.i ; 5 uses
  %i.d = getelementptr inbounds nuw [68 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree14bspline_basis0E, i64 2312), i64 %.02358.i.i ; 5 uses
  %i.e = getelementptr inbounds nuw [68 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree14bspline_basis0E, i64 3468), i64 %.02358.i.i ; 5 uses
  %i.f = getelementptr inbounds nuw [68 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree14bspline_basis0E, i64 4624), i64 %.02358.i.i ; 5 uses
  %i.g = getelementptr inbounds nuw [68 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree14bspline_basis0E, i64 5780), i64 %.02358.i.i ; 5 uses
  %i.h = getelementptr inbounds nuw [68 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree14bspline_basis0E, i64 6936), i64 %.02358.i.i ; 5 uses
  %i.i = getelementptr inbounds nuw [68 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree14bspline_basis0E, i64 8092), i64 %.02358.i.i ; 5 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.j = fdiv <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00>, %broadcast.splat ; 8 uses
  %i.k = fsub <4 x float> splat (float 1.000000e+00), %i.j ; 9 uses
  %i.l = fmul <4 x float> %i.k, %i.k
  %i.m = fmul <4 x float> %i.k, %i.l              ; 3 uses
  %i.n = fmul <4 x float> %i.j, %i.j              ; 2 uses
  %i.o = fmul <4 x float> %i.j, %i.n              ; 3 uses
  %i.p = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> splat (float 4.000000e+00), <4 x float> %i.o)
  %i.q = fmul <4 x float> %i.j, %i.k              ; 3 uses
  %i.r = fmul <4 x float> %i.k, %i.q              ; 2 uses
  %i.s = fmul <4 x float> %i.j, %i.q              ; 2 uses
  %i.t = fmul <4 x float> %i.s, splat (float 6.000000e+00)
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> splat (float 1.200000e+01), <4 x float> %i.t)
  %i.v = fadd <4 x float> %i.p, %i.u
  %i.w = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> splat (float 4.000000e+00), <4 x float> %i.m)
  %i.x = fmul <4 x float> %i.r, splat (float 6.000000e+00)
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> splat (float 1.200000e+01), <4 x float> %i.x)
  %i.z = fadd <4 x float> %i.w, %i.y
  %i.aa = fmul <4 x float> %i.m, splat (float f0x3E2AAAAB)
  %i.ab = fmul <4 x float> %i.v, splat (float f0x3E2AAAAB)
  %i.ac = fmul <4 x float> %i.z, splat (float f0x3E2AAAAB)
  %i.ad = fmul <4 x float> %i.o, splat (float f0x3E2AAAAB)
  store <4 x float> %i.aa, ptr %i.b, align 4
  store <4 x float> %i.ab, ptr %i.c, align 4
  store <4 x float> %i.ac, ptr %i.d, align 4
  store <4 x float> %i.ad, ptr %i.e, align 4
  %i.ae = fneg <4 x float> %i.k
  %i.af = fmul <4 x float> %i.k, %i.ae
  %i.ag = fneg <4 x float> %i.j
  %i.ah = fmul <4 x float> %i.q, splat (float 4.000000e+00) ; 2 uses
  %i.ai = fneg <4 x float> %i.ah
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.j, <4 x float> %i.ai)
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.k, <4 x float> %i.ah)
  %i.al = fmul <4 x float> %i.af, splat (float 5.000000e-01)
  %i.am = fmul <4 x float> %i.aj, splat (float 5.000000e-01)
  %i.an = fmul <4 x float> %i.ak, splat (float 5.000000e-01)
  %i.ao = fmul <4 x float> %i.n, splat (float 5.000000e-01)
  store <4 x float> %i.al, ptr %i.f, align 4
  store <4 x float> %i.am, ptr %i.g, align 4
  store <4 x float> %i.an, ptr %i.h, align 4
  store <4 x float> %i.ao, ptr %i.i, align 4
  %i.ap = fdiv <4 x float> <float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>, %broadcast.splat ; 8 uses
  %i.aq = fsub <4 x float> splat (float 1.000000e+00), %i.ap ; 9 uses
  %i.ar = fmul <4 x float> %i.aq, %i.aq
  %i.as = fmul <4 x float> %i.aq, %i.ar           ; 3 uses
  %i.at = fmul <4 x float> %i.ap, %i.ap           ; 2 uses
  %i.au = fmul <4 x float> %i.ap, %i.at           ; 3 uses
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> splat (float 4.000000e+00), <4 x float> %i.au)
  %i.aw = fmul <4 x float> %i.ap, %i.aq           ; 3 uses
  %i.ax = fmul <4 x float> %i.aq, %i.aw           ; 2 uses
  %i.ay = fmul <4 x float> %i.ap, %i.aw           ; 2 uses
  %i.az = fmul <4 x float> %i.ay, splat (float 6.000000e+00)
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> splat (float 1.200000e+01), <4 x float> %i.az)
  %i.bb = fadd <4 x float> %i.av, %i.ba
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> splat (float 4.000000e+00), <4 x float> %i.as)
  %i.bd = fmul <4 x float> %i.ax, splat (float 6.000000e+00)
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> splat (float 1.200000e+01), <4 x float> %i.bd)
  %i.bf = fadd <4 x float> %i.bc, %i.be
  %i.bg = fmul <4 x float> %i.as, splat (float f0x3E2AAAAB)
  %i.bh = fmul <4 x float> %i.bb, splat (float f0x3E2AAAAB)
  %i.bi = fmul <4 x float> %i.bf, splat (float f0x3E2AAAAB)
  %i.bj = fmul <4 x float> %i.au, splat (float f0x3E2AAAAB)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x float> %i.bg, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x float> %i.bh, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x float> %i.bi, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <4 x float> %i.bj, ptr %i.bn, align 4
  %i.bo = fneg <4 x float> %i.aq
  %i.bp = fmul <4 x float> %i.aq, %i.bo
  %i.bq = fneg <4 x float> %i.ap
  %i.br = fmul <4 x float> %i.aw, splat (float 4.000000e+00) ; 2 uses
  %i.bs = fneg <4 x float> %i.br
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.ap, <4 x float> %i.bs)
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.aq, <4 x float> %i.br)
  %i.bv = fmul <4 x float> %i.bp, splat (float 5.000000e-01)
  %i.bw = fmul <4 x float> %i.bt, splat (float 5.000000e-01)
  %i.bx = fmul <4 x float> %i.bu, splat (float 5.000000e-01)
  %i.by = fmul nnan <4 x float> %i.at, splat (float 5.000000e-01)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x float> %i.bv, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x float> %i.bw, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x float> %i.bx, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x float> %i.by, ptr %i.cc, align 4
  %i.cd = fdiv <4 x float> <float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01>, %broadcast.splat ; 8 uses
  %i.ce = fsub <4 x float> splat (float 1.000000e+00), %i.cd ; 9 uses
  %i.cf = fmul <4 x float> %i.ce, %i.ce
  %i.cg = fmul <4 x float> %i.ce, %i.cf           ; 3 uses
  %i.ch = fmul <4 x float> %i.cd, %i.cd           ; 2 uses
  %i.ci = fmul <4 x float> %i.cd, %i.ch           ; 3 uses
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> splat (float 4.000000e+00), <4 x float> %i.ci)
  %i.ck = fmul <4 x float> %i.cd, %i.ce           ; 3 uses
  %i.cl = fmul <4 x float> %i.ce, %i.ck           ; 2 uses
  %i.cm = fmul <4 x float> %i.cd, %i.ck           ; 2 uses
  %i.cn = fmul <4 x float> %i.cm, splat (float 6.000000e+00)
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> splat (float 1.200000e+01), <4 x float> %i.cn)
  %i.cp = fadd <4 x float> %i.cj, %i.co
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> splat (float 4.000000e+00), <4 x float> %i.cg)
  %i.cr = fmul <4 x float> %i.cl, splat (float 6.000000e+00)
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> splat (float 1.200000e+01), <4 x float> %i.cr)
  %i.ct = fadd <4 x float> %i.cq, %i.cs
  %i.cu = fmul <4 x float> %i.cg, splat (float f0x3E2AAAAB)
  %i.cv = fmul <4 x float> %i.cp, splat (float f0x3E2AAAAB)
  %i.cw = fmul <4 x float> %i.ct, splat (float f0x3E2AAAAB)
  %i.cx = fmul <4 x float> %i.ci, splat (float f0x3E2AAAAB)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x float> %i.cu, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <4 x float> %i.cv, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store <4 x float> %i.cw, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store <4 x float> %i.cx, ptr %i.db, align 4
  %i.dc = fneg <4 x float> %i.ce
  %i.dd = fmul <4 x float> %i.ce, %i.dc
  %i.de = fneg <4 x float> %i.cd
  %i.df = fmul <4 x float> %i.ck, splat (float 4.000000e+00) ; 2 uses
  %i.dg = fneg <4 x float> %i.df
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.cd, <4 x float> %i.dg)
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.ce, <4 x float> %i.df)
  %i.dj = fmul <4 x float> %i.dd, splat (float 5.000000e-01)
  %i.dk = fmul <4 x float> %i.dh, splat (float 5.000000e-01)
  %i.dl = fmul <4 x float> %i.di, splat (float 5.000000e-01)
  %i.dm = fmul nnan <4 x float> %i.ch, splat (float 5.000000e-01)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store <4 x float> %i.dj, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store <4 x float> %i.dk, ptr %i.do, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store <4 x float> %i.dl, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store <4 x float> %i.dm, ptr %i.dq, align 4
  %i.dr = fdiv <4 x float> <float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01>, %broadcast.splat ; 8 uses
  %i.ds = fsub <4 x float> splat (float 1.000000e+00), %i.dr ; 9 uses
  %i.dt = fmul <4 x float> %i.ds, %i.ds
  %i.du = fmul <4 x float> %i.ds, %i.dt           ; 3 uses
  %i.dv = fmul <4 x float> %i.dr, %i.dr           ; 2 uses
  %i.dw = fmul <4 x float> %i.dr, %i.dv           ; 3 uses
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> splat (float 4.000000e+00), <4 x float> %i.dw)
  %i.dy = fmul <4 x float> %i.dr, %i.ds           ; 3 uses
  %i.dz = fmul <4 x float> %i.ds, %i.dy           ; 2 uses
  %i.ea = fmul <4 x float> %i.dr, %i.dy           ; 2 uses
  %i.eb = fmul <4 x float> %i.ea, splat (float 6.000000e+00)
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> splat (float 1.200000e+01), <4 x float> %i.eb)
  %i.ed = fadd <4 x float> %i.dx, %i.ec
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> splat (float 4.000000e+00), <4 x float> %i.du)
  %i.ef = fmul <4 x float> %i.dz, splat (float 6.000000e+00)
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> splat (float 1.200000e+01), <4 x float> %i.ef)
  %i.eh = fadd <4 x float> %i.ee, %i.eg
  %i.ei = fmul <4 x float> %i.du, splat (float f0x3E2AAAAB)
  %i.ej = fmul <4 x float> %i.ed, splat (float f0x3E2AAAAB)
  %i.ek = fmul <4 x float> %i.eh, splat (float f0x3E2AAAAB)
  %i.el = fmul <4 x float> %i.dw, splat (float f0x3E2AAAAB)
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <4 x float> %i.ei, ptr %i.em, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <4 x float> %i.ej, ptr %i.en, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <4 x float> %i.ek, ptr %i.eo, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store <4 x float> %i.el, ptr %i.ep, align 4
  %i.eq = fneg <4 x float> %i.ds
  %i.er = fmul <4 x float> %i.ds, %i.eq
  %i.es = fneg <4 x float> %i.dr
  %i.et = fmul <4 x float> %i.dy, splat (float 4.000000e+00) ; 2 uses
  %i.eu = fneg <4 x float> %i.et
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.dr, <4 x float> %i.eu)
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.ds, <4 x float> %i.et)
  %i.ex = fmul <4 x float> %i.er, splat (float 5.000000e-01)
  %i.ey = fmul <4 x float> %i.ev, splat (float 5.000000e-01)
  %i.ez = fmul <4 x float> %i.ew, splat (float 5.000000e-01)
  %i.fa = fmul nnan <4 x float> %i.dv, splat (float 5.000000e-01)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store <4 x float> %i.ex, ptr %i.fb, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store <4 x float> %i.ey, ptr %i.fc, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store <4 x float> %i.ez, ptr %i.fd, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <4 x float> %i.fa, ptr %i.fe, align 4
  %i.ff = fdiv float 1.600000e+01, %i.a           ; 4 uses
  %i.fg = fsub float 1.000000e+00, %i.ff          ; 5 uses
  %i.fh = insertelement <4 x float> poison, float %i.fg, i64 0
  %i.fi = insertelement <4 x float> %i.fh, float %i.ff, i64 1 ; 3 uses
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fk = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %0 = fmul <4 x float> %i.fj, %i.fk              ; 3 uses
  %1 = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fl = fmul <4 x float> %1, %0                 ; 6 uses
  %2 = extractelement <4 x float> %i.fl, i64 3
  %3 = fmul float %2, 6.000000e+00
  %4 = extractelement <4 x float> %i.fl, i64 2
  %5 = fmul float %4, 6.000000e+00
  %6 = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %7 = insertelement <4 x float> %6, float %3, i64 2
  %8 = insertelement <4 x float> %7, float %5, i64 3
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> <float 4.000000e+00, float 4.000000e+00, float 1.200000e+01, float 1.200000e+01>, <4 x float> %8) ; 2 uses
  %9 = shufflevector <4 x float> %i.fm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %10 = shufflevector <4 x float> %i.fm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %11 = fadd <2 x float> %9, %10                  ; 2 uses
  %12 = extractelement <4 x float> %i.fl, i64 0
  %13 = fmul float %12, f0x3E2AAAAB
  %i.fn = extractelement <2 x float> %11, i64 0
  %14 = fmul float %i.fn, f0x3E2AAAAB
  %15 = extractelement <2 x float> %11, i64 1
  %16 = fmul float %15, f0x3E2AAAAB
  %i.fo = extractelement <4 x float> %i.fl, i64 1
  %17 = fmul float %i.fo, f0x3E2AAAAB
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store float %13, ptr %i.fp, align 4
  %18 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store float %14, ptr %18, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store float %16, ptr %i.fq, align 4
  %19 = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store float %17, ptr %19, align 4
  %i.fr = fneg float %i.fg
  %i.fs = fmul float %i.fg, %i.fr
  %i.ft = fneg float %i.ff
  %i.fu = extractelement <4 x float> %0, i64 2
  %i.fv = fmul float %i.fu, 4.000000e+00          ; 2 uses
  %i.fw = fneg float %i.fv
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.ff, float %i.fw)
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.fv)
  %i.fz = fmul float %i.fs, 5.000000e-01
  %i.ga = fmul float %i.fx, 5.000000e-01
  %i.gb = fmul float %i.fy, 5.000000e-01
  %i.gc = extractelement <4 x float> %0, i64 1
  %i.gd = fmul float %i.gc, 5.000000e-01
  %i.ge = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store float %i.fz, ptr %i.ge, align 4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store float %i.ga, ptr %i.gf, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store float %i.gb, ptr %i.gg, align 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store float %i.gd, ptr %i.gh, align 4
  %i.gi = add nuw nsw i64 %.02358.i.i, 1          ; 2 uses
  %exitcond59.not.i.i = icmp eq i64 %i.gi, 17
  br i1 %exitcond59.not.i.i, label %.preheader.i.i1, label %.preheader.i.i, !llvm.loop !0

.preheader.i.i1:                                  ; preds = %.preheader.i.i, %.preheader.i.i1
  %.02358.i.i2 = phi i64 [ %i.nr, %.preheader.i.i1 ], [ 1, %.preheader.i.i ] ; 10 uses
  %i.gj = uitofp nneg i64 %.02358.i.i2 to float   ; 2 uses
  %i.gk = getelementptr inbounds nuw [68 x i8], ptr @_ZN6embree14bspline_basis1E, i64 %.02358.i.i2 ; 5 uses
  %i.gl = getelementptr inbounds nuw [68 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree14bspline_basis1E, i64 1156), i64 %.02358.i.i2 ; 5 uses
  %i.gm = getelementptr inbounds nuw [68 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree14bspline_basis1E, i64 2312), i64 %.02358.i.i2 ; 5 uses
  %i.gn = getelementptr inbounds nuw [68 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree14bspline_basis1E, i64 3468), i64 %.02358.i.i2 ; 5 uses
  %i.go = getelementptr inbounds nuw [68 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree14bspline_basis1E, i64 4624), i64 %.02358.i.i2 ; 5 uses
  %i.gp = getelementptr inbounds nuw [68 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree14bspline_basis1E, i64 5780), i64 %.02358.i.i2 ; 5 uses
  %i.gq = getelementptr inbounds nuw [68 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree14bspline_basis1E, i64 6936), i64 %.02358.i.i2 ; 5 uses
  %i.gr = getelementptr inbounds nuw [68 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree14bspline_basis1E, i64 8092), i64 %.02358.i.i2 ; 5 uses
  %broadcast.splatinsert9 = insertelement <4 x float> poison, float %i.gj, i64 0
  %broadcast.splat10 = shufflevector <4 x float> %broadcast.splatinsert9, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.gs = fdiv <4 x float> <float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>, %broadcast.splat10 ; 8 uses
  %i.gt = fsub <4 x float> splat (float 1.000000e+00), %i.gs ; 9 uses
  %i.gu = fmul <4 x float> %i.gt, %i.gt
  %i.gv = fmul <4 x float> %i.gt, %i.gu           ; 3 uses
  %i.gw = fmul <4 x float> %i.gs, %i.gs           ; 2 uses
  %i.gx = fmul <4 x float> %i.gs, %i.gw           ; 3 uses
  %i.gy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gv, <4 x float> splat (float 4.000000e+00), <4 x float> %i.gx)
  %i.gz = fmul <4 x float> %i.gs, %i.gt           ; 3 uses
  %i.ha = fmul <4 x float> %i.gt, %i.gz           ; 2 uses
  %i.hb = fmul <4 x float> %i.gs, %i.gz           ; 2 uses
  %i.hc = fmul <4 x float> %i.hb, splat (float 6.000000e+00)
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ha, <4 x float> splat (float 1.200000e+01), <4 x float> %i.hc)
  %i.he = fadd <4 x float> %i.gy, %i.hd
  %i.hf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> splat (float 4.000000e+00), <4 x float> %i.gv)
  %i.hg = fmul <4 x float> %i.ha, splat (float 6.000000e+00)
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hb, <4 x float> splat (float 1.200000e+01), <4 x float> %i.hg)
  %i.hi = fadd <4 x float> %i.hf, %i.hh
  %i.hj = fmul <4 x float> %i.gv, splat (float f0x3E2AAAAB)
  %i.hk = fmul <4 x float> %i.he, splat (float f0x3E2AAAAB)
  %i.hl = fmul <4 x float> %i.hi, splat (float f0x3E2AAAAB)
  %i.hm = fmul <4 x float> %i.gx, splat (float f0x3E2AAAAB)
  store <4 x float> %i.hj, ptr %i.gk, align 4
  store <4 x float> %i.hk, ptr %i.gl, align 4
  store <4 x float> %i.hl, ptr %i.gm, align 4
  store <4 x float> %i.hm, ptr %i.gn, align 4
  %i.hn = fneg <4 x float> %i.gt
  %i.ho = fmul <4 x float> %i.gt, %i.hn
  %i.hp = fneg <4 x float> %i.gs
  %i.hq = fmul <4 x float> %i.gz, splat (float 4.000000e+00) ; 2 uses
  %i.hr = fneg <4 x float> %i.hq
  %i.hs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hp, <4 x float> %i.gs, <4 x float> %i.hr)
  %i.ht = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gt, <4 x float> %i.gt, <4 x float> %i.hq)
  %i.hu = fmul <4 x float> %i.ho, splat (float 5.000000e-01)
  %i.hv = fmul <4 x float> %i.hs, splat (float 5.000000e-01)
  %i.hw = fmul <4 x float> %i.ht, splat (float 5.000000e-01)
  %i.hx = fmul nnan <4 x float> %i.gw, splat (float 5.000000e-01)
  store <4 x float> %i.hu, ptr %i.go, align 4
  store <4 x float> %i.hv, ptr %i.gp, align 4
  store <4 x float> %i.hw, ptr %i.gq, align 4
  store <4 x float> %i.hx, ptr %i.gr, align 4
  %i.hy = fdiv <4 x float> <float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00>, %broadcast.splat10 ; 8 uses
  %i.hz = fsub <4 x float> splat (float 1.000000e+00), %i.hy ; 9 uses
  %i.ia = fmul <4 x float> %i.hz, %i.hz
  %i.ib = fmul <4 x float> %i.hz, %i.ia           ; 3 uses
  %i.ic = fmul <4 x float> %i.hy, %i.hy           ; 2 uses
  %i.id = fmul <4 x float> %i.hy, %i.ic           ; 3 uses
  %i.ie = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ib, <4 x float> splat (float 4.000000e+00), <4 x float> %i.id)
  %i.if = fmul <4 x float> %i.hy, %i.hz           ; 3 uses
  %i.ig = fmul <4 x float> %i.hz, %i.if           ; 2 uses
  %i.ih = fmul <4 x float> %i.hy, %i.if           ; 2 uses
  %i.ii = fmul <4 x float> %i.ih, splat (float 6.000000e+00)
  %i.ij = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ig, <4 x float> splat (float 1.200000e+01), <4 x float> %i.ii)
  %i.ik = fadd <4 x float> %i.ie, %i.ij
  %i.il = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.id, <4 x float> splat (float 4.000000e+00), <4 x float> %i.ib)
  %i.im = fmul <4 x float> %i.ig, splat (float 6.000000e+00)
  %i.in = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ih, <4 x float> splat (float 1.200000e+01), <4 x float> %i.im)
  %i.io = fadd <4 x float> %i.il, %i.in
  %i.ip = fmul <4 x float> %i.ib, splat (float f0x3E2AAAAB)
  %i.iq = fmul <4 x float> %i.ik, splat (float f0x3E2AAAAB)
  %i.ir = fmul <4 x float> %i.io, splat (float f0x3E2AAAAB)
  %i.is = fmul <4 x float> %i.id, splat (float f0x3E2AAAAB)
  %i.it = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store <4 x float> %i.ip, ptr %i.it, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store <4 x float> %i.iq, ptr %i.iu, align 4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <4 x float> %i.ir, ptr %i.iv, align 4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store <4 x float> %i.is, ptr %i.iw, align 4
  %i.ix = fneg <4 x float> %i.hz
  %i.iy = fmul <4 x float> %i.hz, %i.ix
  %i.iz = fneg <4 x float> %i.hy
  %i.ja = fmul <4 x float> %i.if, splat (float 4.000000e+00) ; 2 uses
  %i.jb = fneg <4 x float> %i.ja
  %i.jc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iz, <4 x float> %i.hy, <4 x float> %i.jb)
  %i.jd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hz, <4 x float> %i.hz, <4 x float> %i.ja)
  %i.je = fmul <4 x float> %i.iy, splat (float 5.000000e-01)
  %i.jf = fmul <4 x float> %i.jc, splat (float 5.000000e-01)
  %i.jg = fmul <4 x float> %i.jd, splat (float 5.000000e-01)
  %i.jh = fmul nnan <4 x float> %i.ic, splat (float 5.000000e-01)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store <4 x float> %i.je, ptr %i.ji, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <4 x float> %i.jf, ptr %i.jj, align 4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <4 x float> %i.jg, ptr %i.jk, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store <4 x float> %i.jh, ptr %i.jl, align 4
  %i.jm = fdiv <4 x float> <float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01>, %broadcast.splat10 ; 8 uses
  %i.jn = fsub <4 x float> splat (float 1.000000e+00), %i.jm ; 9 uses
  %i.jo = fmul <4 x float> %i.jn, %i.jn
  %i.jp = fmul <4 x float> %i.jn, %i.jo           ; 3 uses
  %i.jq = fmul <4 x float> %i.jm, %i.jm           ; 2 uses
  %i.jr = fmul <4 x float> %i.jm, %i.jq           ; 3 uses
  %i.js = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jp, <4 x float> splat (float 4.000000e+00), <4 x float> %i.jr)
  %i.jt = fmul <4 x float> %i.jm, %i.jn           ; 3 uses
  %i.ju = fmul <4 x float> %i.jn, %i.jt           ; 2 uses
  %i.jv = fmul <4 x float> %i.jm, %i.jt           ; 2 uses
  %i.jw = fmul <4 x float> %i.jv, splat (float 6.000000e+00)
  %i.jx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ju, <4 x float> splat (float 1.200000e+01), <4 x float> %i.jw)
  %i.jy = fadd <4 x float> %i.js, %i.jx
  %i.jz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jr, <4 x float> splat (float 4.000000e+00), <4 x float> %i.jp)
  %i.ka = fmul <4 x float> %i.ju, splat (float 6.000000e+00)
  %i.kb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jv, <4 x float> splat (float 1.200000e+01), <4 x float> %i.ka)
  %i.kc = fadd <4 x float> %i.jz, %i.kb
  %i.kd = fmul <4 x float> %i.jp, splat (float f0x3E2AAAAB)
  %i.ke = fmul <4 x float> %i.jy, splat (float f0x3E2AAAAB)
  %i.kf = fmul <4 x float> %i.kc, splat (float f0x3E2AAAAB)
  %i.kg = fmul <4 x float> %i.jr, splat (float f0x3E2AAAAB)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  store <4 x float> %i.kd, ptr %i.kh, align 4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  store <4 x float> %i.ke, ptr %i.ki, align 4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  store <4 x float> %i.kf, ptr %i.kj, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store <4 x float> %i.kg, ptr %i.kk, align 4
  %i.kl = fneg <4 x float> %i.jn
  %i.km = fmul <4 x float> %i.jn, %i.kl
  %i.kn = fneg <4 x float> %i.jm
  %i.ko = fmul <4 x float> %i.jt, splat (float 4.000000e+00) ; 2 uses
  %i.kp = fneg <4 x float> %i.ko
  %i.kq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kn, <4 x float> %i.jm, <4 x float> %i.kp)
  %i.kr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.jn, <4 x float> %i.ko)
  %i.ks = fmul <4 x float> %i.km, splat (float 5.000000e-01)
  %i.kt = fmul <4 x float> %i.kq, splat (float 5.000000e-01)
  %i.ku = fmul <4 x float> %i.kr, splat (float 5.000000e-01)
  %i.kv = fmul nnan <4 x float> %i.jq, splat (float 5.000000e-01)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  store <4 x float> %i.ks, ptr %i.kw, align 4
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  store <4 x float> %i.kt, ptr %i.kx, align 4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  store <4 x float> %i.ku, ptr %i.ky, align 4
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  store <4 x float> %i.kv, ptr %i.kz, align 4
  %i.la = fdiv <4 x float> <float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01>, %broadcast.splat10 ; 8 uses
  %i.lb = fsub <4 x float> splat (float 1.000000e+00), %i.la ; 9 uses
  %i.lc = fmul <4 x float> %i.lb, %i.lb
  %i.ld = fmul <4 x float> %i.lb, %i.lc           ; 3 uses
  %i.le = fmul <4 x float> %i.la, %i.la           ; 2 uses
  %i.lf = fmul <4 x float> %i.la, %i.le           ; 3 uses
  %i.lg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ld, <4 x float> splat (float 4.000000e+00), <4 x float> %i.lf)
  %i.lh = fmul <4 x float> %i.la, %i.lb           ; 3 uses
  %i.li = fmul <4 x float> %i.lb, %i.lh           ; 2 uses
  %i.lj = fmul <4 x float> %i.la, %i.lh           ; 2 uses
  %i.lk = fmul <4 x float> %i.lj, splat (float 6.000000e+00)
  %i.ll = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.li, <4 x float> splat (float 1.200000e+01), <4 x float> %i.lk)
  %i.lm = fadd <4 x float> %i.lg, %i.ll
  %i.ln = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lf, <4 x float> splat (float 4.000000e+00), <4 x float> %i.ld)
  %i.lo = fmul <4 x float> %i.li, splat (float 6.000000e+00)
  %i.lp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lj, <4 x float> splat (float 1.200000e+01), <4 x float> %i.lo)
  %i.lq = fadd <4 x float> %i.ln, %i.lp
  %i.lr = fmul <4 x float> %i.ld, splat (float f0x3E2AAAAB)
  %i.ls = fmul <4 x float> %i.lm, splat (float f0x3E2AAAAB)
  %i.lt = fmul <4 x float> %i.lq, splat (float f0x3E2AAAAB)
  %i.lu = fmul <4 x float> %i.lf, splat (float f0x3E2AAAAB)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  store <4 x float> %i.lr, ptr %i.lv, align 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  store <4 x float> %i.ls, ptr %i.lw, align 4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  store <4 x float> %i.lt, ptr %i.lx, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  store <4 x float> %i.lu, ptr %i.ly, align 4
  %i.lz = fneg <4 x float> %i.lb
  %i.ma = fmul <4 x float> %i.lb, %i.lz
  %i.mb = fneg <4 x float> %i.la
  %i.mc = fmul <4 x float> %i.lh, splat (float 4.000000e+00) ; 2 uses
  %i.md = fneg <4 x float> %i.mc
  %i.me = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mb, <4 x float> %i.la, <4 x float> %i.md)
  %i.mf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lb, <4 x float> %i.lb, <4 x float> %i.mc)
  %i.mg = fmul <4 x float> %i.ma, splat (float 5.000000e-01)
  %i.mh = fmul <4 x float> %i.me, splat (float 5.000000e-01)
  %i.mi = fmul <4 x float> %i.mf, splat (float 5.000000e-01)
  %i.mj = fmul nnan <4 x float> %i.le, splat (float 5.000000e-01)
  %i.mk = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  store <4 x float> %i.mg, ptr %i.mk, align 4
  %i.ml = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  store <4 x float> %i.mh, ptr %i.ml, align 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  store <4 x float> %i.mi, ptr %i.mm, align 4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  store <4 x float> %i.mj, ptr %i.mn, align 4
  %i.mo = fdiv float 1.700000e+01, %i.gj          ; 4 uses
  %i.mp = fsub float 1.000000e+00, %i.mo          ; 5 uses
  %i.mq = insertelement <4 x float> poison, float %i.mp, i64 0
  %i.mr = insertelement <4 x float> %i.mq, float %i.mo, i64 1 ; 3 uses
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.mt = shufflevector <4 x float> %i.mr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %20 = fmul <4 x float> %i.ms, %i.mt             ; 3 uses
  %21 = shufflevector <4 x float> %i.mr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mu = fmul <4 x float> %21, %20               ; 6 uses
  %22 = extractelement <4 x float> %i.mu, i64 3
  %23 = fmul float %22, 6.000000e+00
  %24 = extractelement <4 x float> %i.mu, i64 2
  %25 = fmul float %24, 6.000000e+00
  %26 = shufflevector <4 x float> %i.mu, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %27 = insertelement <4 x float> %26, float %23, i64 2
  %28 = insertelement <4 x float> %27, float %25, i64 3
  %i.mv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mu, <4 x float> <float 4.000000e+00, float 4.000000e+00, float 1.200000e+01, float 1.200000e+01>, <4 x float> %28) ; 2 uses
  %29 = shufflevector <4 x float> %i.mv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %30 = shufflevector <4 x float> %i.mv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %31 = fadd <2 x float> %29, %30                 ; 2 uses
  %32 = extractelement <4 x float> %i.mu, i64 0
  %33 = fmul float %32, f0x3E2AAAAB
  %i.mw = extractelement <2 x float> %31, i64 0
  %34 = fmul float %i.mw, f0x3E2AAAAB
  %35 = extractelement <2 x float> %31, i64 1
  %36 = fmul float %35, f0x3E2AAAAB
  %i.mx = extractelement <4 x float> %i.mu, i64 1
  %37 = fmul float %i.mx, f0x3E2AAAAB
  %i.my = getelementptr inbounds nuw i8, ptr %i.gk, i64 64
  store float %33, ptr %i.my, align 4
  %38 = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  store float %34, ptr %38, align 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.gm, i64 64
  store float %36, ptr %i.mz, align 4
  %39 = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  store float %37, ptr %39, align 4
  %i.na = fneg float %i.mp
  %i.nb = fmul float %i.mp, %i.na
  %i.nc = fneg float %i.mo
  %i.nd = extractelement <4 x float> %20, i64 2
  %i.ne = fmul float %i.nd, 4.000000e+00          ; 2 uses
  %i.nf = fneg float %i.ne
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.nc, float %i.mo, float %i.nf)
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.mp, float %i.mp, float %i.ne)
  %i.ni = fmul float %i.nb, 5.000000e-01
  %i.nj = fmul float %i.ng, 5.000000e-01
  %i.nk = fmul float %i.nh, 5.000000e-01
  %i.nl = extractelement <4 x float> %20, i64 1
  %i.nm = fmul float %i.nl, 5.000000e-01
  %i.nn = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  store float %i.ni, ptr %i.nn, align 4
  %i.no = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  store float %i.nj, ptr %i.no, align 4
  %i.np = getelementptr inbounds nuw i8, ptr %i.gq, i64 64
  store float %i.nk, ptr %i.np, align 4
  %i.nq = getelementptr inbounds nuw i8, ptr %i.gr, i64 64
  store float %i.nm, ptr %i.nq, align 4
  %i.nr = add nuw nsw i64 %.02358.i.i2, 1         ; 2 uses
  %exitcond59.not.i.i5 = icmp eq i64 %i.nr, 17
  br i1 %exitcond59.not.i.i5, label %__cxx_global_var_init.1.exit, label %.preheader.i.i1, !llvm.loop !0

__cxx_global_var_init.1.exit:                     ; preds = %.preheader.i.i1
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{!0, !4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"llvm.loop.mustprogress"}
end_hunk_0
