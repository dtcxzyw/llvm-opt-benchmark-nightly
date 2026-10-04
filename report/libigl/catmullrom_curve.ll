Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/catmullrom_curve?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6embree26PrecomputedCatmullRomBasisC2Ei:bb.a
  %i.ab = fdiv <4 x float> %i.l, %broadcast.splat ; 13 uses
  %i.ac = fsub <4 x float> splat (float 1.000000e+00), %i.ab ; 10 uses
  %i.ad = fneg <4 x float> %i.ab
  %i.ae = fmul <4 x float> %i.ac, %i.ad
  %i.af = fmul <4 x float> %i.ac, %i.ae
  %i.ag = fmul <4 x float> %i.ab, %i.ab           ; 2 uses
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float -5.000000e+00)) ; 2 uses
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.ah, <4 x float> splat (float 2.000000e+00))
  %i.aj = fmul <4 x float> %i.ac, %i.ac
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float -5.000000e+00))
  %i.al = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.ak, <4 x float> splat (float 2.000000e+00))
  %i.am = fneg <4 x float> %i.ac                  ; 3 uses
  %i.an = fmul <4 x float> %i.ab, %i.am
  %i.ao = fmul <4 x float> %i.ab, %i.an
  %i.ap = fmul <4 x float> %i.af, splat (float 5.000000e-01)
  %i.aq = fmul <4 x float> %i.ai, splat (float 5.000000e-01)
  %i.ar = fmul <4 x float> %i.al, splat (float 5.000000e-01)
  %i.as = fmul <4 x float> %i.ao, splat (float 5.000000e-01)
  store <4 x float> %i.ap, ptr %i.t, align 4
  store <4 x float> %i.aq, ptr %i.u, align 4
  store <4 x float> %i.ar, ptr %i.v, align 4
  store <4 x float> %i.as, ptr %i.w, align 4
  %i.at = fmul <4 x float> %i.ac, splat (float 2.000000e+00) ; 2 uses
  %i.au = fmul <4 x float> %i.ab, %i.at
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.ac, <4 x float> %i.au)
  %i.aw = fmul <4 x float> %i.ab, splat (float 2.000000e+00)
  %i.ax = fmul <4 x float> %i.ab, splat (float 3.000000e+00)
  %i.ay = fmul <4 x float> %i.ab, %i.ax
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.ah, <4 x float> %i.ay)
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float 2.000000e+00))
  %i.bb = fmul <4 x float> %i.ac, splat (float 3.000000e+00)
  %i.bc = fmul <4 x float> %i.bb, %i.am
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.ba, <4 x float> %i.bc)
  %i.be = fmul <4 x float> %i.ac, splat (float -2.000000e+00)
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.ab, <4 x float> %i.ag)
  %i.bg = fmul <4 x float> %i.av, splat (float 5.000000e-01)
  %i.bh = fmul <4 x float> %i.az, splat (float 5.000000e-01)
  %i.bi = fmul <4 x float> %i.bd, splat (float 5.000000e-01)
  %i.bj = fmul <4 x float> %i.bf, splat (float 5.000000e-01)
  store <4 x float> %i.bg, ptr %i.x, align 4
  store <4 x float> %i.bh, ptr %i.y, align 4
  store <4 x float> %i.bi, ptr %i.z, align 4
  store <4 x float> %i.bj, ptr %i.aa, align 4
  %i.bk = fdiv <4 x float> %i.n, %broadcast.splat ; 13 uses
  %i.bl = fsub <4 x float> splat (float 1.000000e+00), %i.bk ; 10 uses
  %i.bm = fneg <4 x float> %i.bk
  %i.bn = fmul <4 x float> %i.bl, %i.bm
  %i.bo = fmul <4 x float> %i.bl, %i.bn
  %i.bp = fmul <4 x float> %i.bk, %i.bk           ; 2 uses
  %i.bq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float -5.000000e+00)) ; 2 uses
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.bq, <4 x float> splat (float 2.000000e+00))
  %i.bs = fmul <4 x float> %i.bl, %i.bl
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float -5.000000e+00))
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.bt, <4 x float> splat (float 2.000000e+00))
  %i.bv = fneg <4 x float> %i.bl                  ; 3 uses
  %i.bw = fmul <4 x float> %i.bk, %i.bv
  %i.bx = fmul <4 x float> %i.bk, %i.bw
  %i.by = fmul <4 x float> %i.bo, splat (float 5.000000e-01)
  %i.bz = fmul <4 x float> %i.br, splat (float 5.000000e-01)
  %i.ca = fmul <4 x float> %i.bu, splat (float 5.000000e-01)
  %i.cb = fmul <4 x float> %i.bx, splat (float 5.000000e-01)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x float> %i.by, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x float> %i.bz, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x float> %i.ca, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x float> %i.cb, ptr %i.cf, align 4
  %i.cg = fmul <4 x float> %i.bl, splat (float 2.000000e+00) ; 2 uses
  %i.ch = fmul <4 x float> %i.bk, %i.cg
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.bl, <4 x float> %i.ch)
  %i.cj = fmul <4 x float> %i.bk, splat (float 2.000000e+00)
  %i.ck = fmul <4 x float> %i.bk, splat (float 3.000000e+00)
  %i.cl = fmul <4 x float> %i.bk, %i.ck
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.bq, <4 x float> %i.cl)
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float 2.000000e+00))
  %i.co = fmul <4 x float> %i.bl, splat (float 3.000000e+00)
  %i.cp = fmul <4 x float> %i.co, %i.bv
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.cn, <4 x float> %i.cp)
  %i.cr = fmul <4 x float> %i.bl, splat (float -2.000000e+00)
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.bk, <4 x float> %i.bp)
  %i.ct = fmul <4 x float> %i.ci, splat (float 5.000000e-01)
  %i.cu = fmul <4 x float> %i.cm, splat (float 5.000000e-01)
  %i.cv = fmul <4 x float> %i.cq, splat (float 5.000000e-01)
  %i.cw = fmul <4 x float> %i.cs, splat (float 5.000000e-01)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x float> %i.ct, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x float> %i.cu, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x float> %i.cv, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x float> %i.cw, ptr %i.da, align 4
  %i.db = fdiv <4 x float> %i.p, %broadcast.splat ; 13 uses
  %i.dc = fsub <4 x float> splat (float 1.000000e+00), %i.db ; 10 uses
  %i.dd = fneg <4 x float> %i.db
  %i.de = fmul <4 x float> %i.dc, %i.dd
  %i.df = fmul <4 x float> %i.dc, %i.de
  %i.dg = fmul <4 x float> %i.db, %i.db           ; 2 uses
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float -5.000000e+00)) ; 2 uses
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.dh, <4 x float> splat (float 2.000000e+00))
  %i.dj = fmul <4 x float> %i.dc, %i.dc
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float -5.000000e+00))
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %i.dk, <4 x float> splat (float 2.000000e+00))
  %i.dm = fneg <4 x float> %i.dc                  ; 3 uses
  %i.dn = fmul <4 x float> %i.db, %i.dm
  %i.do = fmul <4 x float> %i.db, %i.dn
  %i.dp = fmul <4 x float> %i.df, splat (float 5.000000e-01)
  %i.dq = fmul <4 x float> %i.di, splat (float 5.000000e-01)
  %i.dr = fmul <4 x float> %i.dl, splat (float 5.000000e-01)
  %i.ds = fmul <4 x float> %i.do, splat (float 5.000000e-01)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store <4 x float> %i.dp, ptr %i.dt, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store <4 x float> %i.dq, ptr %i.du, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store <4 x float> %i.dr, ptr %i.dv, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store <4 x float> %i.ds, ptr %i.dw, align 4
  %i.dx = fmul <4 x float> %i.dc, splat (float 2.000000e+00) ; 2 uses
  %i.dy = fmul <4 x float> %i.db, %i.dx
  %i.dz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.dc, <4 x float> %i.dy)
  %i.ea = fmul <4 x float> %i.db, splat (float 2.000000e+00)
  %i.eb = fmul <4 x float> %i.db, splat (float 3.000000e+00)
  %i.ec = fmul <4 x float> %i.db, %i.eb
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> %i.dh, <4 x float> %i.ec)
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float 2.000000e+00))
  %i.ef = fmul <4 x float> %i.dc, splat (float 3.000000e+00)
  %i.eg = fmul <4 x float> %i.ef, %i.dm
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.ee, <4 x float> %i.eg)
  %i.ei = fmul <4 x float> %i.dc, splat (float -2.000000e+00)
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ei, <4 x float> %i.db, <4 x float> %i.dg)
  %i.ek = fmul <4 x float> %i.dz, splat (float 5.000000e-01)
  %i.el = fmul <4 x float> %i.ed, splat (float 5.000000e-01)
  %i.em = fmul <4 x float> %i.eh, splat (float 5.000000e-01)
  %i.en = fmul <4 x float> %i.ej, splat (float 5.000000e-01)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store <4 x float> %i.ek, ptr %i.eo, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store <4 x float> %i.el, ptr %i.ep, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store <4 x float> %i.em, ptr %i.eq, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store <4 x float> %i.en, ptr %i.er, align 4
  %i.es = fdiv <4 x float> %i.r, %broadcast.splat ; 13 uses
  %i.et = fsub <4 x float> splat (float 1.000000e+00), %i.es ; 10 uses
  %i.eu = fneg <4 x float> %i.es
  %i.ev = fmul <4 x float> %i.et, %i.eu
  %i.ew = fmul <4 x float> %i.et, %i.ev
  %i.ex = fmul <4 x float> %i.es, %i.es           ; 2 uses
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float -5.000000e+00)) ; 2 uses
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.ey, <4 x float> splat (float 2.000000e+00))
  %i.fa = fmul <4 x float> %i.et, %i.et
  %i.fb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float -5.000000e+00))
  %i.fc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.fb, <4 x float> splat (float 2.000000e+00))
  %i.fd = fneg <4 x float> %i.et                  ; 3 uses
  %i.fe = fmul <4 x float> %i.es, %i.fd
  %i.ff = fmul <4 x float> %i.es, %i.fe
  %i.fg = fmul <4 x float> %i.ew, splat (float 5.000000e-01)
  %i.fh = fmul <4 x float> %i.ez, splat (float 5.000000e-01)
  %i.fi = fmul <4 x float> %i.fc, splat (float 5.000000e-01)
  %i.fj = fmul <4 x float> %i.ff, splat (float 5.000000e-01)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store <4 x float> %i.fg, ptr %i.fk, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store <4 x float> %i.fh, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store <4 x float> %i.fi, ptr %i.fm, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store <4 x float> %i.fj, ptr %i.fn, align 4
  %i.fo = fmul <4 x float> %i.et, splat (float 2.000000e+00) ; 2 uses
  %i.fp = fmul <4 x float> %i.es, %i.fo
  %i.fq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.et, <4 x float> %i.fp)
  %i.fr = fmul <4 x float> %i.es, splat (float 2.000000e+00)
  %i.fs = fmul <4 x float> %i.es, splat (float 3.000000e+00)
  %i.ft = fmul <4 x float> %i.es, %i.fs
  %i.fu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> %i.ey, <4 x float> %i.ft)
  %i.fv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float 2.000000e+00))
  %i.fw = fmul <4 x float> %i.et, splat (float 3.000000e+00)
  %i.fx = fmul <4 x float> %i.fw, %i.fd
  %i.fy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fo, <4 x float> %i.fv, <4 x float> %i.fx)
  %i.fz = fmul <4 x float> %i.et, splat (float -2.000000e+00)
  %i.ga = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.es, <4 x float> %i.ex)
  %i.gb = fmul <4 x float> %i.fq, splat (float 5.000000e-01)
  %i.gc = fmul <4 x float> %i.fu, splat (float 5.000000e-01)
  %i.gd = fmul <4 x float> %i.fy, splat (float 5.000000e-01)
  %i.ge = fmul <4 x float> %i.ga, splat (float 5.000000e-01)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store <4 x float> %i.gb, ptr %i.gf, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store <4 x float> %i.gc, ptr %i.gg, align 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store <4 x float> %i.gd, ptr %i.gh, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store <4 x float> %i.ge, ptr %i.gi, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.gn = fdiv float %i.j, %i.s                   ; 12 uses
  %i.go = fsub float 1.000000e+00, %i.gn          ; 9 uses
  %i.gp = fneg float %i.gn
  %2 = fmul float %i.go, %i.gp
  %i.gq = fmul float %i.go, %2
  %i.gr = fmul float %i.gn, %i.gn                 ; 2 uses
  %i.gs = fneg float %i.go                        ; 3 uses
  %3 = fmul float %i.go, 2.000000e+00             ; 2 uses
  %4 = fmul float %i.gn, %3
  %i.gt = insertelement <4 x float> <float 3.000000e+00, float 3.000000e+00, float 3.000000e+00, float poison>, float %i.gs, i64 3
  %5 = insertelement <4 x float> poison, float %i.gn, i64 0
  %6 = insertelement <4 x float> %5, float %i.go, i64 1
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %8 = insertelement <4 x float> <float -5.000000e+00, float -5.000000e+00, float 2.000000e+00, float poison>, float %4, i64 3
  %9 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gt, <4 x float> %7, <4 x float> %8) ; 4 uses
  %10 = extractelement <4 x float> %9, i64 0      ; 2 uses
  %11 = tail call float @llvm.fmuladd.f32(float %i.gr, float %10, float 2.000000e+00)
  %i.gu = fmul float %i.go, %i.go
  %12 = extractelement <4 x float> %9, i64 1
  %13 = tail call float @llvm.fmuladd.f32(float %i.gu, float %12, float 2.000000e+00)
  %i.gv = fmul float %i.gn, %i.gs
  %14 = fmul float %i.gn, %i.gv
  %15 = fmul float %i.gq, 5.000000e-01
  %16 = fmul float %11, 5.000000e-01
  %i.gw = fmul float %13, 5.000000e-01
  %17 = fmul float %14, 5.000000e-01
  store float %15, ptr %i.gj, align 4
  store float %16, ptr %i.gk, align 4
  store float %i.gw, ptr %i.gl, align 4
  store float %17, ptr %i.gm, align 4
  %18 = fmul float %i.gn, 2.000000e+00
  %19 = fmul float %i.gn, 3.000000e+00
  %i.gx = fmul float %i.gn, %19
  %20 = tail call float @llvm.fmuladd.f32(float %18, float %10, float %i.gx)
  %21 = fmul float %i.go, 3.000000e+00
  %22 = fmul float %21, %i.gs
  %23 = extractelement <4 x float> %9, i64 2
  %24 = tail call float @llvm.fmuladd.f32(float %3, float %23, float %22)
  %25 = fmul float %i.go, -2.000000e+00
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %i.gn, float %i.gr)
  %i.gy = extractelement <4 x float> %9, i64 3
  %27 = fmul float %i.gy, 5.000000e-01
  %28 = fmul float %20, 5.000000e-01
  %i.gz = fmul float %24, 5.000000e-01
  %i.ha = fmul float %26, 5.000000e-01
  %i.hb = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store float %27, ptr %i.hb, align 4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store float %28, ptr %i.hc, align 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store float %i.gz, ptr %i.hd, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store float %i.ha, ptr %i.he, align 4
  %i.hf = add nuw nsw i64 %.02358, 1              ; 2 uses
  %exitcond59.not = icmp eq i64 %i.hf, 17
  br i1 %exitcond59.not, label %bb.b, label %.preheader, !llvm.loop !3

bb.b:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_catmullrom_curve.cpp() #2 section ".text.startup" {
bb.a:
  tail call void @_ZN6embree26PrecomputedCatmullRomBasisC2Ei(ptr noundef nonnull align 4 dereferenceable(9248) @_ZN6embree17catmullrom_basis0E, i32 noundef 0)
  tail call void @_ZN6embree26PrecomputedCatmullRomBasisC2Ei(ptr noundef nonnull align 4 dereferenceable(9248) @_ZN6embree17catmullrom_basis1E, i32 noundef 1)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
end_hunk_0
