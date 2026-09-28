Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3Solver?download=true
inline.NumInlined: 615
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z14setConstraint4RK9b3Vector3S1_S1_fRK11b3Matrix3x3S1_S1_S1_fS4_P14b3Contact4DatafffP20b3ContactConstraint4:bb.a
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.co = shufflevector <4 x float> %i.aw, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 6, i32 6>
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.co, <4 x float> %i.cj) ; 4 uses
  %i.cq = extractelement <4 x float> %i.cp, i64 0
  %i.cr = extractelement <4 x float> %i.cp, i64 1
  %i.cs = fneg float %i.cr                        ; 5 uses
  %i.ct = extractelement <4 x float> %i.cp, i64 2
  %i.cu = load float, ptr %i.u, align 8, !tbaa !20
  %i.cv = extractelement <4 x float> %i.cp, i64 3
  %i.cw = load float, ptr %i.v, align 16, !tbaa !20
  %i.cx = load float, ptr %i.w, align 4, !tbaa !20
  %i.cy = fmul float %i.bx, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.by, float %i.cy)
  %i.da = load float, ptr %i.x, align 8, !tbaa !20
  %i.db = tail call noundef float @llvm.fmuladd.f32(float %i.da, float %i.ca, float %i.cz)
  %i.dc = load float, ptr %i.y, align 8, !tbaa !20
  %i.dd = load float, ptr %i.aa, align 8, !tbaa !20
  %i.de = fneg float %i.cq                        ; 3 uses
  %i.df = tail call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.ca, float %i.ct)
  %i.dg = tail call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.ca, float %i.cv)
  %i.dh = load <4 x float>, ptr %9, align 16      ; 2 uses
  %i.di = load <4 x float>, ptr %i.z, align 16    ; 2 uses
  %i.dj = load <4 x float>, ptr %i.ab, align 16   ; 2 uses
  %i.dk = shufflevector <4 x float> %i.br, <4 x float> %i.dh, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dn = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.do = insertelement <4 x float> %i.dn, float %i.de, i64 1
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dq = fmul <4 x float> %i.dm, %i.dp
  %i.dr = insertelement <4 x float> poison, float %i.df, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> %i.dh, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dv = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.dw = shufflevector <4 x float> %i.br, <4 x float> %i.dv, <4 x i32> <i32 2, i32 4, i32 4, i32 4>
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %i.dw, <4 x float> %i.dq) ; 4 uses
  %i.dy = extractelement <4 x float> %i.dx, i64 0
  %i.dz = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.ca, float %i.dy)
  %i.ea = extractelement <4 x float> %i.dx, i64 1
  %i.eb = tail call noundef float @llvm.fmuladd.f32(float %i.dc, float %i.cs, float %i.ea)
  %i.ec = extractelement <4 x float> %i.dx, i64 2
  %i.ed = tail call noundef float @llvm.fmuladd.f32(float %i.dd, float %i.cs, float %i.ec)
  %i.ee = load float, ptr %i.ad, align 8, !tbaa !20
  %i.ef = extractelement <4 x float> %i.dx, i64 3
  %i.eg = tail call noundef float @llvm.fmuladd.f32(float %i.ee, float %i.cs, float %i.ef)
  %i.eh = fmul float %i.ed, %i.de
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eb, float %i.bt, float %i.eh)
  %i.ej = tail call noundef float @llvm.fmuladd.f32(float %i.eg, float %i.cs, float %i.ei)
  %i.ek = fadd float %3, %i.dz
  %i.el = fadd float %8, %i.ek
  %i.em = fadd float %i.el, %i.ej
  %i.en = fdiv float -1.000000e+00, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store float %i.en, ptr %i.eo, align 4, !tbaa !24
  %i.ep = load float, ptr %1, align 16, !tbaa !20
  %i.eq = load float, ptr %i.ae, align 4, !tbaa !20
  %i.er = fmul float %.sroa.0189.4.vec.extract, %i.eq
  %i.es = tail call float @llvm.fmuladd.f32(float %.sroa.0189.0.vec.extract, float %i.ep, float %i.er)
  %i.et = load float, ptr %i.af, align 8, !tbaa !20
  %i.eu = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.et, float %i.es)
  %i.ev = load float, ptr %2, align 16, !tbaa !20
  %i.ew = load float, ptr %i.ag, align 4, !tbaa !20
  %i.ex = fmul float %i.bx, %i.ew
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.by, float %i.ev, float %i.ex)
  %i.ez = load float, ptr %i.ah, align 8, !tbaa !20
  %i.fa = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.ez, float %i.ey)
  %i.fb = fadd float %i.eu, %i.fa
  %i.fc = load float, ptr %6, align 16, !tbaa !20
  %i.fd = load float, ptr %i.ai, align 4, !tbaa !20
  %i.fe = fmul float %i.fd, %i.bv
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.fc, float %i.fe)
  %i.fg = load float, ptr %i.aj, align 8, !tbaa !20
  %i.fh = tail call noundef float @llvm.fmuladd.f32(float %i.bw, float %i.fg, float %i.ff)
  %i.fi = fadd float %i.fb, %i.fh
  %i.fj = load float, ptr %7, align 16, !tbaa !20
  %i.fk = load float, ptr %i.ak, align 4, !tbaa !20
  %i.fl = fmul float %i.fk, %i.de
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.fj, float %i.fl)
  %i.fn = load float, ptr %i.al, align 8, !tbaa !20
  %i.fo = tail call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.fn, float %i.fm)
  %i.fp = fadd float %i.fi, %i.fo
  %i.fq = fmul float %i.fp, 0.000000e+00          ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  store float %i.fq, ptr %i.fr, align 4, !tbaa !24
  %i.fs = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !20
  %i.fu = fadd float %12, %i.ft
  %i.fv = fmul float %13, %i.fu
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.f, float %i.fq)
  store float %i.fw, ptr %i.fr, align 4, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.fx = phi i64 [ 128, %bb.d ], [ 96, %bb.c ]
  %i.fy = getelementptr inbounds nuw i8, ptr %14, i64 %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.fz, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !183

bb.f:                                             ; preds = %.preheader
  %i.ga = fdiv nnan float 1.000000e+00, %i.an
  %i.gb = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gd = fmul <4 x float> %i.gc, %i.of           ; 5 uses
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gf = shufflevector <4 x float> %i.gd, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> %i.oi, <2 x i32> <i32 0, i32 3>
  %i.gh = load float, ptr %i.p, align 8, !tbaa !20 ; 6 uses
  %i.gi = tail call noundef float @llvm.fabs.f32(float %i.gh)
  %i.gj = fcmp ogt float %i.gi, f0x3F3504F3
  br i1 %i.gj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gk = load float, ptr %i.o, align 4, !tbaa !20 ; 3 uses
  %i.gl = fmul nnan float %i.gh, %i.gh
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gl) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.gm)
  %i.gn = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.go = fneg float %i.gh
  %i.gp = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.gn, i64 0 ; 2 uses
  %i.gq = insertelement <4 x float> %i.gp, float %i.gk, i64 1
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gs = shufflevector <4 x float> %i.gp, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 poison, i32 0, i32 6, i32 0>
  %i.gt = insertelement <4 x float> %i.gs, float %i.go, i64 0
  %i.gu = fmul <4 x float> %i.gr, %i.gt           ; 3 uses
  %i.gv = extractelement <4 x float> %i.gu, i64 0 ; 2 uses
  %i.gw = fmul float %i.gm, %i.gn
  %i.gx = load float, ptr %i.h, align 16, !tbaa !20 ; 2 uses
  %i.gy = fneg float %i.gx
  %i.gz = extractelement <4 x float> %i.gu, i64 1
  %i.ha = fmul float %i.gz, %i.gy
  %i.hb = fmul float %i.gv, %i.gx
  br label %_Z13b3PlaneSpace1RK9b3Vector3PS_S2_.exit

bb.h:                                             ; preds = %bb.f
  %i.hc = load float, ptr %i.h, align 16, !tbaa !20 ; 3 uses
  %i.hd = load float, ptr %i.o, align 4, !tbaa !20 ; 3 uses
  %i.he = fmul float %i.hd, %i.hd
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.hc, float %i.hc, float %i.he) ; 2 uses
  %sqrt43.i = tail call float @llvm.sqrt.f32(float %i.hf)
  %i.hg = fdiv float 1.000000e+00, %sqrt43.i      ; 3 uses
  %i.hh = fneg float %i.hd
  %i.hi = fmul float %i.hg, %i.hh                 ; 3 uses
  %i.hj = fmul float %i.hc, %i.hg                 ; 3 uses
  %i.hk = fneg float %i.gh
  %i.hl = fmul float %i.hj, %i.hk
  %i.hm = fmul float %i.gh, %i.hi
  %i.hn = fmul float %i.hf, %i.hg
  %i.ho = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.hj, i64 0
  %i.hp = insertelement <4 x float> %i.ho, float %i.hi, i64 2
  br label %_Z13b3PlaneSpace1RK9b3Vector3PS_S2_.exit

_Z13b3PlaneSpace1RK9b3Vector3PS_S2_.exit:         ; preds = %bb.g, %bb.h
  %.sroa.14.0 = phi float [ %i.ha, %bb.g ], [ %i.hm, %bb.h ] ; 2 uses
  %.sroa.11227.0 = phi float [ %i.gw, %bb.g ], [ %i.hl, %bb.h ] ; 2 uses
  %.sroa.5.0 = phi float [ %i.gv, %bb.g ], [ %i.hj, %bb.h ]
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.hi, %bb.h ]
  %.sink.i = phi float [ %i.hb, %bb.g ], [ %i.hn, %bb.h ] ; 2 uses
  %i.hq = phi <4 x float> [ %i.gu, %bb.g ], [ %i.hp, %bb.h ] ; 2 uses
  %i.hr = load float, ptr %i.n, align 8, !tbaa !20
  %i.hs = load float, ptr %5, align 16, !tbaa !20
  %i.ht = extractelement <4 x float> %i.gd, i64 0
  %i.hu = fsub float %i.ht, %i.hs                 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %14, i64 152
  %i.hw = fneg <4 x float> %i.hq                  ; 3 uses
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hy = load <2 x float>, ptr %0, align 16, !tbaa !20
  %i.hz = load <2 x float>, ptr %i.m, align 4, !tbaa !20 ; 2 uses
  %i.ia = shufflevector <2 x float> %i.hy, <2 x float> %i.hz, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.ib = insertelement <4 x float> %i.ia, float %i.hr, i64 2 ; 2 uses
  %i.ic = fsub <4 x float> %i.gd, %i.ib           ; 4 uses
  %i.id = shufflevector <2 x float> %i.hz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ie = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.if = shufflevector <4 x float> %i.ib, <4 x float> %i.id, <4 x i32> <i32 2, i32 0, i32 1, i32 5>
  %i.ig = fsub <4 x float> %i.ie, %i.if           ; 2 uses
  %i.ih = fmul <4 x float> %i.ig, %i.hx
  %i.ii = shufflevector <4 x float> %i.ih, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.ij = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ic, <4 x float> %i.hq, <4 x float> %i.ii) ; 6 uses
  %i.ik = extractelement <4 x float> %i.hw, i64 1
  %i.il = fmul float %i.hu, %i.ik
  %i.im = extractelement <4 x float> %i.ig, i64 3 ; 3 uses
  %i.in = tail call float @llvm.fmuladd.f32(float %i.im, float %.sroa.0.0, float %i.il)
  %i.io = extractelement <4 x float> %i.ic, i64 3 ; 3 uses
  %i.ip = extractelement <4 x float> %i.hw, i64 2
  %i.iq = fmul float %i.io, %i.ip
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.hu, float %.sroa.5.0, float %i.iq)
  %i.is = extractelement <4 x float> %i.ij, i64 3
  %i.it = fneg float %i.is                        ; 2 uses
  %i.iu = fneg float %i.ir                        ; 4 uses
  %i.iv = extractelement <4 x float> %i.ij, i64 2 ; 3 uses
  %i.iw = extractelement <4 x float> %i.ij, i64 1 ; 3 uses
  %i.ix = load float, ptr %i.r, align 8, !tbaa !20
  %i.iy = extractelement <4 x float> %i.ij, i64 0 ; 4 uses
  %i.iz = load float, ptr %i.s, align 16, !tbaa !20
  %i.ja = load float, ptr %i.t, align 4, !tbaa !20
  %i.jb = fmul float %i.iv, %i.ja
  %i.jc = load float, ptr %i.u, align 8, !tbaa !20
  %i.jd = load float, ptr %i.v, align 16, !tbaa !20
  %i.je = load float, ptr %i.w, align 4, !tbaa !20
  %i.jf = fmul float %i.iv, %i.je
  %i.jg = tail call float @llvm.fmuladd.f32(float %i.jd, float %i.iw, float %i.jf)
  %i.jh = load float, ptr %i.x, align 8, !tbaa !20
  %i.ji = tail call noundef float @llvm.fmuladd.f32(float %i.jh, float %i.iy, float %i.jg)
  %i.jj = load float, ptr %i.y, align 8, !tbaa !20
  %i.jk = load float, ptr %i.aa, align 8, !tbaa !20
  %i.jl = load float, ptr %4, align 16, !tbaa !20
  %i.jm = load float, ptr %i.q, align 4, !tbaa !20
  %i.jn = fmul float %i.iv, %i.jm
  %15 = tail call float @llvm.fmuladd.f32(float %i.jl, float %i.iw, float %i.jn)
  %i.jo = tail call noundef float @llvm.fmuladd.f32(float %i.ix, float %i.iy, float %15)
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.iw, float %i.jb)
  %i.jq = tail call noundef float @llvm.fmuladd.f32(float %i.jc, float %i.iy, float %i.jp)
  %i.jr = load <4 x float>, ptr %9, align 16      ; 2 uses
  %i.js = load <4 x float>, ptr %i.z, align 16    ; 2 uses
  %i.jt = load <4 x float>, ptr %i.ab, align 16   ; 2 uses
  %i.ju = shufflevector <4 x float> %i.ij, <4 x float> %i.jr, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.jv = shufflevector <4 x float> %i.ju, <4 x float> %i.js, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> %i.jt, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.jx = insertelement <4 x float> poison, float %i.jq, i64 0
  %i.jy = insertelement <4 x float> poison, float %i.jo, i64 0
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> %i.jr, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ka = shufflevector <4 x float> %i.jz, <4 x float> %i.js, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.kb = shufflevector <4 x float> %i.ka, <4 x float> %i.jt, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.kc = insertelement <4 x float> poison, float %i.it, i64 0
  %i.kd = shufflevector <4 x float> %i.ij, <4 x float> %i.kc, <4 x i32> <i32 1, i32 4, i32 4, i32 4>
  %i.ke = load float, ptr %i.ad, align 8, !tbaa !20
  store float 0.000000e+00, ptr %i.hv, align 8, !tbaa !24
  %i.kf = insertelement <4 x float> poison, float %.sroa.11227.0, i64 0
  %i.kg = insertelement <4 x float> %i.kf, float %.sroa.14.0, i64 1
  %i.kh = insertelement <4 x float> %i.kg, float %.sink.i, i64 2 ; 2 uses
  %i.ki = insertelement <4 x float> %i.kh, float %i.in, i64 3
  %i.kj = fneg <4 x float> %i.ki                  ; 5 uses
  %i.kk = shufflevector <4 x float> %i.jx, <4 x float> %i.kj, <4 x i32> <i32 0, i32 7, i32 7, i32 7>
  %i.kl = fmul <4 x float> %i.jw, %i.kk
  %i.km = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kb, <4 x float> %i.kd, <4 x float> %i.kl) ; 4 uses
  %i.kn = extractelement <4 x float> %i.km, i64 0
  %i.ko = tail call noundef float @llvm.fmuladd.f32(float %i.ji, float %i.iy, float %i.kn)
  %i.kp = extractelement <4 x float> %i.km, i64 1
  %i.kq = tail call noundef float @llvm.fmuladd.f32(float %i.jj, float %i.iu, float %i.kp)
  %i.kr = extractelement <4 x float> %i.km, i64 2
  %i.ks = tail call noundef float @llvm.fmuladd.f32(float %i.jk, float %i.iu, float %i.kr)
  %i.kt = extractelement <4 x float> %i.km, i64 3
  %i.ku = tail call noundef float @llvm.fmuladd.f32(float %i.ke, float %i.iu, float %i.kt)
  %i.kv = shufflevector <4 x float> %i.ic, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.kw = insertelement <4 x float> %i.kv, float %i.ks, i64 3
  %i.kx = fmul <4 x float> %i.kw, %i.kj
  %i.ky = insertelement <4 x float> %i.ic, float %i.kq, i64 3
  %i.kz = shufflevector <4 x float> %i.kh, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.la = insertelement <4 x float> %i.kz, float %i.it, i64 3
  %i.lb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ky, <4 x float> %i.la, <4 x float> %i.kx) ; 6 uses
  %i.lc = extractelement <4 x float> %i.lb, i64 3
  %i.ld = tail call noundef float @llvm.fmuladd.f32(float %i.ku, float %i.iu, float %i.lc)
  %i.le = fadd float %3, %i.ko
  %i.lf = fadd float %8, %i.le
  %i.lg = fadd float %i.lf, %i.ld
  %i.lh = fdiv float -1.000000e+00, %i.lg
  store float %i.lh, ptr %i.g, align 16, !tbaa !24
  %i.li = extractelement <4 x float> %i.kj, i64 1
  %i.lj = fmul float %i.im, %i.li
  %i.lk = tail call float @llvm.fmuladd.f32(float %i.io, float %.sink.i, float %i.lj)
  %i.ll = extractelement <4 x float> %i.kj, i64 2
  %i.lm = fmul float %i.hu, %i.ll
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.im, float %.sroa.11227.0, float %i.lm)
  %i.lo = extractelement <4 x float> %i.kj, i64 0
  %i.lp = fmul float %i.io, %i.lo
  %i.lq = tail call float @llvm.fmuladd.f32(float %i.hu, float %.sroa.14.0, float %i.lp)
  %i.lr = fneg float %i.lk                        ; 3 uses
  %i.ls = fneg float %i.ln                        ; 3 uses
  %i.lt = fneg float %i.lq                        ; 4 uses
  %i.lu = extractelement <4 x float> %i.lb, i64 2 ; 2 uses
  %i.lv = extractelement <4 x float> %i.lb, i64 1 ; 2 uses
  %i.lw = load float, ptr %i.r, align 8, !tbaa !20
  %i.lx = extractelement <4 x float> %i.lb, i64 0 ; 4 uses
  %i.ly = load float, ptr %i.s, align 16, !tbaa !20
  %i.lz = load float, ptr %i.t, align 4, !tbaa !20
  %i.ma = fmul float %i.lu, %i.lz
  %i.mb = tail call float @llvm.fmuladd.f32(float %i.ly, float %i.lv, float %i.ma)
  %i.mc = load float, ptr %i.u, align 8, !tbaa !20
  %i.md = tail call noundef float @llvm.fmuladd.f32(float %i.mc, float %i.lx, float %i.mb)
  %i.me = load float, ptr %i.x, align 8, !tbaa !20
  %i.mf = load float, ptr %i.y, align 8, !tbaa !20
  %i.mg = load float, ptr %4, align 16, !tbaa !20
  %i.mh = load float, ptr %i.q, align 4, !tbaa !20
  %i.mi = fmul float %i.lu, %i.mh
  %i.mj = tail call float @llvm.fmuladd.f32(float %i.mg, float %i.lv, float %i.mi)
  %i.mk = tail call noundef float @llvm.fmuladd.f32(float %i.lw, float %i.lx, float %i.mj)
  %i.ml = load <4 x float>, ptr %i.v, align 16
  %i.mm = load float, ptr %i.w, align 4, !tbaa !20
  %i.mn = load <4 x float>, ptr %9, align 16      ; 2 uses
  %i.mo = load <4 x float>, ptr %i.z, align 16    ; 2 uses
  %i.mp = shufflevector <4 x float> %i.lb, <4 x float> %i.mn, <4 x i32> <i32 2, i32 2, i32 5, i32 poison>
  %i.mq = shufflevector <4 x float> %i.mp, <4 x float> %i.mo, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.mr = insertelement <4 x float> poison, float %i.mm, i64 0
  %i.ms = insertelement <4 x float> %i.mr, float %i.md, i64 1
  %i.mt = insertelement <4 x float> %i.ms, float %i.ls, i64 2
  %i.mu = shufflevector <4 x float> %i.mt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.mv = fmul <4 x float> %i.mq, %i.mu
  %i.mw = insertelement <4 x float> %i.ml, float %i.mk, i64 1
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> %i.mn, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> %i.mo, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mz = insertelement <4 x float> poison, float %i.lr, i64 0
  %i.na = shufflevector <4 x float> %i.lb, <4 x float> %i.mz, <4 x i32> <i32 1, i32 1, i32 4, i32 4>
  %i.nb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.my, <4 x float> %i.na, <4 x float> %i.mv) ; 4 uses
  %i.nc = extractelement <4 x float> %i.nb, i64 0
  %i.nd = tail call noundef float @llvm.fmuladd.f32(float %i.me, float %i.lx, float %i.nc)
  %i.ne = extractelement <4 x float> %i.nb, i64 1
  %i.nf = tail call noundef float @llvm.fmuladd.f32(float %i.nd, float %i.lx, float %i.ne)
  %i.ng = extractelement <4 x float> %i.nb, i64 2
  %i.nh = tail call noundef float @llvm.fmuladd.f32(float %i.mf, float %i.lt, float %i.ng)
  %i.ni = load float, ptr %i.aa, align 8, !tbaa !20
  %i.nj = extractelement <4 x float> %i.nb, i64 3
  %i.nk = tail call noundef float @llvm.fmuladd.f32(float %i.ni, float %i.lt, float %i.nj)
  %i.nl = load float, ptr %i.ab, align 16, !tbaa !20
  %i.nm = load float, ptr %i.ac, align 4, !tbaa !20
  %i.nn = fmul float %i.nm, %i.ls
  %i.no = tail call float @llvm.fmuladd.f32(float %i.nl, float %i.lr, float %i.nn)
  %i.np = load float, ptr %i.ad, align 8, !tbaa !20
  %i.nq = tail call noundef float @llvm.fmuladd.f32(float %i.np, float %i.lt, float %i.no)
  %i.nr = fmul float %i.nk, %i.ls
  %i.ns = tail call float @llvm.fmuladd.f32(float %i.nh, float %i.lr, float %i.nr)
  %i.nt = tail call noundef float @llvm.fmuladd.f32(float %i.nq, float %i.lt, float %i.ns)
  %i.nu = fadd float %3, %i.nf
  %i.nv = fadd float %8, %i.nu
  %i.nw = fadd float %i.nv, %i.nt
  %i.nx = fdiv float -1.000000e+00, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %14, i64 148
  store float %i.nx, ptr %i.ny, align 4, !tbaa !24
  %i.nz = getelementptr inbounds nuw i8, ptr %14, i64 156
  store float 0.000000e+00, ptr %i.nz, align 4, !tbaa !24
  %i.oa = getelementptr inbounds nuw i8, ptr %14, i64 80
  store <2 x float> %i.ge, ptr %i.oa, align 16
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 88
  store <2 x float> %i.gg, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !20
  %.pre = load float, ptr %i.j, align 4, !tbaa !20
  br label %bb.i

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %.preheader ], [ 0, %bb.b ] ; 2 uses
  %.sroa.16.0209 = phi <2 x float> [ %i.oi, %.preheader ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.0141.0208 = phi <2 x float> [ %i.og, %.preheader ], [ zeroinitializer, %bb.b ]
  %i.ob = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %indvars.iv217
  %i.oc = load <3 x float>, ptr %i.ob, align 16, !tbaa !20
  %i.od = shufflevector <3 x float> %i.oc, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.oe = shufflevector <2 x float> %.sroa.0141.0208, <2 x float> %.sroa.16.0209, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.of = fadd <4 x float> %i.oe, %i.od           ; 3 uses
  %i.og = shufflevector <4 x float> %i.of, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.oh = shufflevector <4 x float> %i.of, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.oi = shufflevector <2 x float> %i.oh, <2 x float> %.sroa.16.0209, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.oj = trunc nuw nsw i64 %indvars.iv.next218 to i32
  %i.ok = uitofp nneg i32 %i.oj to float
  %i.ol = fcmp ogt float %i.an, %i.ok
  br i1 %i.ol, label %.preheader, label %bb.f, !llvm.loop !184

bb.i:                                             ; preds = %_Z13b3PlaneSpace1RK9b3Vector3PS_S2_.exit, %bb.b
  %i.om = phi float [ %.pre, %_Z13b3PlaneSpace1RK9b3Vector3PS_S2_.exit ], [ %i.an, %bb.b ]
  %i.on = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.oo = fcmp ogt float %i.om, 0.000000e+00
  br i1 %i.oo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.on, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !22
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.on, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.op = load float, ptr %i.j, align 4, !tbaa !20
  %i.oq = fcmp ogt float %i.op, 1.000000e+00
  br i1 %i.oq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.or = getelementptr inbounds nuw i8, ptr %14, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.or, i8 0, i64 16, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.os = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ot = getelementptr inbounds nuw i8, ptr %14, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ot, ptr noundef nonnull align 16 dereferenceable(16) %i.os, i64 16, i1 false), !tbaa.struct !22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ou = load float, ptr %i.j, align 4, !tbaa !20
  %i.ov = fcmp ogt float %i.ou, 2.000000e+00
  br i1 %i.ov, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ow = getelementptr inbounds nuw i8, ptr %14, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ow, i8 0, i64 16, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ox = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.oy = getelementptr inbounds nuw i8, ptr %14, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.oy, ptr noundef nonnull align 16 dereferenceable(16) %i.ox, i64 16, i1 false), !tbaa.struct !22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.oz = load float, ptr %i.j, align 4, !tbaa !20
  %i.pa = fcmp ogt float %i.oz, 3.000000e+00
  br i1 %i.pa, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.pb = getelementptr inbounds nuw i8, ptr %14, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pb, i8 0, i64 16, i1 false)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.pc = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.pd = getelementptr inbounds nuw i8, ptr %14, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pd, ptr noundef nonnull align 16 dereferenceable(16) %i.pc, i64 16, i1 false), !tbaa.struct !22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  ret void
}

end_hunk_0
