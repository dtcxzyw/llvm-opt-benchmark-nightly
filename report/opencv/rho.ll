Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rho?download=true
inline.NumInlined: 221
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv13RHO_HEST_REFC6refineEv:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !76
  %i.cl = load float, ptr %i.z, align 4, !tbaa !76
  %i.cm = fneg float %i.ck
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cl, float %i.ci)
  %i.co = load float, ptr %i.aa, align 4, !tbaa !76
  %i.cp = fdiv float %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store float %i.cp, ptr %i.cq, align 4, !tbaa !76
  %exitcond71.not.i.3 = icmp eq i64 %indvars.iv76.i, 4
  br i1 %exitcond71.not.i.3, label %.lr.ph59.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !76
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !76
  %i.cv = fneg float %i.cu
  %i.cw = load float, ptr %i.ac, align 4, !tbaa !76
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !76
  %i.cz = fneg float %i.cy
  %i.da = load float, ptr %i.ad, align 4, !tbaa !76
  %i.db = load float, ptr %i.ax, align 4, !tbaa !76
  %i.dc = fneg float %i.db
  %i.dd = load float, ptr %i.ab, align 4, !tbaa !76
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.dd, float %i.cs)
  %i.df = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.da, float %i.de)
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cw, float %i.df)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.di = load float, ptr %i.dh, align 4, !tbaa !76
  %i.dj = load float, ptr %i.ae, align 4, !tbaa !76
  %i.dk = fneg float %i.di
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dj, float %i.dg)
  %i.dm = load float, ptr %i.af, align 4, !tbaa !76
  %i.dn = fdiv float %i.dl, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store float %i.dn, ptr %i.do, align 4, !tbaa !76
  %exitcond71.not.i.4 = icmp eq i64 %indvars.iv76.i, 5
  br i1 %exitcond71.not.i.4, label %.lr.ph59.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !76
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !76
  %i.dt = fneg float %i.ds
  %i.du = load float, ptr %i.ah, align 4, !tbaa !76
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !76
  %i.dx = fneg float %i.dw
  %i.dy = load float, ptr %i.ai, align 4, !tbaa !76
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !76
  %i.eb = fneg float %i.ea
  %i.ec = load float, ptr %i.aj, align 4, !tbaa !76
  %i.ed = load float, ptr %i.ax, align 4, !tbaa !76
  %i.ee = fneg float %i.ed
  %i.ef = load float, ptr %i.ag, align 4, !tbaa !76
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.ef, float %i.dq)
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.eb, float %i.ec, float %i.eg)
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.dy, float %i.eh)
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.du, float %i.ei)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.el = load float, ptr %i.ek, align 4, !tbaa !76
  %i.em = load float, ptr %i.ak, align 4, !tbaa !76
  %i.en = fneg float %i.el
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.en, float %i.em, float %i.ej)
  %i.ep = load float, ptr %i.al, align 4, !tbaa !76
  %i.eq = fdiv float %i.eo, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  store float %i.eq, ptr %i.er, align 4, !tbaa !76
  %exitcond71.not.i.5 = icmp eq i64 %indvars.iv76.i, 6
  br i1 %exitcond71.not.i.5, label %.lr.ph59.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.es = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.et = load float, ptr %i.es, align 4, !tbaa !76
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !76
  %i.ew = fneg float %i.ev
  %i.ex = load float, ptr %i.an, align 4, !tbaa !76
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !76
  %i.fa = fneg float %i.ez
  %i.fb = load float, ptr %i.ao, align 4, !tbaa !76
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !76
  %i.fe = fneg float %i.fd
  %i.ff = load float, ptr %i.ap, align 4, !tbaa !76
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !76
  %i.fi = fneg float %i.fh
  %i.fj = load float, ptr %i.aq, align 4, !tbaa !76
  %i.fk = load float, ptr %i.ax, align 4, !tbaa !76
  %i.fl = fneg float %i.fk
  %i.fm = load float, ptr %i.am, align 4, !tbaa !76
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.fm, float %i.et)
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.fj, float %i.fn)
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.ff, float %i.fo)
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.fb, float %i.fp)
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.ex, float %i.fq)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !76
  %i.fu = load float, ptr %i.ar, align 4, !tbaa !76
  %i.fv = fneg float %i.ft
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fu, float %i.fr)
  %i.fx = load float, ptr %i.as, align 4, !tbaa !76
  %i.fy = fdiv float %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store float %i.fy, ptr %i.fz, align 4, !tbaa !76
  br label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph54.i
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv76.i
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !76
  %i.gc = fmul float %i.at, %i.gb                 ; 2 uses
  %xtraiter = and i64 %indvars.iv76.i, 3          ; 3 uses
  %i.gd = icmp samesign ult i64 %indvars.iv76.i, 4
  br i1 %i.gd, label %.epil.preheader, label %.lr.ph59.i.new

.lr.ph59.i.new:                                   ; preds = %.lr.ph59.i
  %unroll_iter = and i64 %indvars.iv76.i, 9223372036854775804
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph59.i.new
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph59.i.new ], [ %indvars.iv.next73.i.3, %bb.c ] ; 5 uses
  %.157.i = phi float [ %i.gc, %.lr.ph59.i.new ], [ %i.gw, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph59.i.new ], [ %niter.next.3, %bb.c ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv72.i
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !76 ; 2 uses
  %i.gg = fneg float %i.gf
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.gf, float %.157.i)
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv72.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !76 ; 2 uses
  %i.gl = fneg float %i.gk
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.gk, float %i.gh)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv72.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load float, ptr %i.go, align 4, !tbaa !76 ; 2 uses
  %i.gq = fneg float %i.gp
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.gp, float %i.gm)
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv72.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !76 ; 2 uses
  %i.gv = fneg float %i.gu
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.gv, float %i.gu, float %i.gr) ; 3 uses
  %indvars.iv.next73.i.3 = add nuw nsw i64 %indvars.iv72.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge60.i.loopexit.unr-lcssa, label %bb.c, !llvm.loop !110

._crit_edge60.i.loopexit.unr-lcssa:               ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge60.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge60.i.loopexit.unr-lcssa, %.lr.ph59.i
  %indvars.iv72.i.epil.init = phi i64 [ 0, %.lr.ph59.i ], [ %indvars.iv.next73.i.3, %._crit_edge60.i.loopexit.unr-lcssa ]
  %.157.i.epil.init = phi float [ %i.gc, %.lr.ph59.i ], [ %i.gw, %._crit_edge60.i.loopexit.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod53)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv72.i.epil = phi i64 [ %indvars.iv72.i.epil.init, %.epil.preheader ], [ %indvars.iv.next73.i.epil, %bb.d ] ; 2 uses
  %.157.i.epil = phi float [ %.157.i.epil.init, %.epil.preheader ], [ %i.ha, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv72.i.epil
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !76 ; 2 uses
  %i.gz = fneg float %i.gy
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.gy, float %.157.i.epil) ; 2 uses
  %indvars.iv.next73.i.epil = add nuw nsw i64 %indvars.iv72.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge60.i, label %bb.d, !llvm.loop !111

._crit_edge60.i:                                  ; preds = %._crit_edge60.i.loopexit.unr-lcssa, %bb.d, %._crit_edge55.thread.i
  %.1.lcssa.i = phi float [ %i.aw, %._crit_edge55.thread.i ], [ %i.gw, %._crit_edge60.i.loopexit.unr-lcssa ], [ %i.ha, %bb.d ] ; 2 uses
  %i.hb = fcmp olt float %.1.lcssa.i, 0.000000e+00
  br i1 %i.hb, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge60.i
  %i.hc = tail call float @sqrtf(float noundef %.1.lcssa.i) #20
  %i.hd = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv76.i
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv76.i
  store float %i.hc, ptr %i.he, align 4, !tbaa !76
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next77.i, 8
  br i1 %exitcond79.not.i, label %_ZN2cvL16sacChol8x8DampedEPA8_KffPA8_f.exit, label %.preheader.i, !llvm.loop !112

bb.f:                                             ; preds = %._crit_edge60.i
  %i.hf = fmul float %.1, 2.000000e+00
  br label %bb.b, !llvm.loop !113

_ZN2cvL16sacChol8x8DampedEPA8_KffPA8_f.exit:      ; preds = %bb.e
  %i.hg = load float, ptr %i.r, align 4, !tbaa !76
  %i.hh = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.r, i64 36 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !76
  %i.hk = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 2 uses
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !76
  %i.hn = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.r, i64 108 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.r, i64 128 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.r, i64 144 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.r, i64 160 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.r, i64 180 ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !76
  %i.hu = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.r, i64 216 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !76
  %i.hx = getelementptr inbounds nuw i8, ptr %i.r, i64 224 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.r, i64 252 ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !76
  %i.ia = load float, ptr %i.hh, align 4, !tbaa !76
  %i.ib = getelementptr inbounds nuw i8, ptr %i.r, i64 104 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.r, i64 176 ; 2 uses
  %i.id = load float, ptr %i.ic, align 4, !tbaa !76
  %i.ie = getelementptr inbounds nuw i8, ptr %i.r, i64 248 ; 2 uses
  %i.if = load float, ptr %i.ie, align 4, !tbaa !76
  %i.ig = getelementptr inbounds nuw i8, ptr %i.r, i64 68 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.r, i64 100 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.r, i64 208 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.r, i64 212 ; 2 uses
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !76 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.r, i64 240 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.r, i64 244 ; 2 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !76
  %i.io = getelementptr inbounds nuw i8, ptr %i.r, i64 132 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.r, i64 136 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.r, i64 164 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.r, i64 168 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.r, i64 172
  %i.it = getelementptr inbounds nuw i8, ptr %i.r, i64 196
  %i.iu = getelementptr inbounds nuw i8, ptr %i.r, i64 200 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.r, i64 204
  %i.iw = getelementptr inbounds nuw i8, ptr %i.r, i64 228
  %i.ix = getelementptr inbounds nuw i8, ptr %i.r, i64 232 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.r, i64 236
  %i.iz = load ptr, ptr %i.n, align 8, !tbaa !116 ; 6 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 20
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jf = load ptr, ptr %i.b, align 8, !tbaa !79  ; 3 uses
  %i.jg = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.jh = insertelement <2 x float> %i.jg, float %i.hm, i64 1
  %i.ji = fdiv <2 x float> splat (float 1.000000e+00), %i.jh ; 8 uses
  %i.jj = extractelement <2 x float> %i.ji, i64 0 ; 6 uses
  store float %i.jj, ptr %i.r, align 4, !tbaa !76
  %i.jk = extractelement <2 x float> %i.ji, i64 1 ; 3 uses
  store float %i.jk, ptr %i.hl, align 4, !tbaa !76
  %i.jl = load float, ptr %i.ho, align 4, !tbaa !76
  %i.jm = load float, ptr %i.hq, align 4, !tbaa !76
  %i.jn = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.jo = insertelement <2 x float> %i.jn, float %i.jm, i64 1
  %i.jp = fdiv <2 x float> splat (float 1.000000e+00), %i.jo ; 7 uses
  %i.jq = extractelement <2 x float> %i.jp, i64 0 ; 2 uses
  store float %i.jq, ptr %i.ho, align 4, !tbaa !76
  %i.jr = extractelement <2 x float> %i.jp, i64 1 ; 7 uses
  store float %i.jr, ptr %i.hq, align 4, !tbaa !76
  %i.js = fneg float %i.jq                        ; 5 uses
  %i.jt = load float, ptr %i.ib, align 4, !tbaa !76
  %i.ju = insertelement <2 x float> %i.jp, float %i.js, i64 0
  %i.jv = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.jw = insertelement <2 x float> %i.jv, float %i.js, i64 1 ; 2 uses
  %i.jx = load <2 x float>, ptr %i.ir, align 4, !tbaa !76 ; 3 uses
  %i.jy = load <2 x float>, ptr %i.iu, align 4, !tbaa !76 ; 2 uses
  %i.jz = load <2 x float>, ptr %i.ix, align 4, !tbaa !76
  %i.ka = load <2 x float>, ptr %i.ip, align 4, !tbaa !76 ; 5 uses
  %i.kb = insertelement <2 x float> %i.ka, float %i.jt, i64 0
  %i.kc = fmul <2 x float> %i.ju, %i.kb           ; 3 uses
  %i.kd = fmul <2 x float> %i.kc, %i.jw           ; 7 uses
  %i.ke = extractelement <2 x float> %i.kd, i64 0 ; 3 uses
  store float %i.ke, ptr %i.ib, align 4, !tbaa !76
  %i.kf = extractelement <2 x float> %i.ka, i64 0
  %i.kg = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %1 = insertelement <2 x float> poison, float %i.hw, i64 0
  %2 = insertelement <2 x float> %1, float %i.hz, i64 1
  %3 = fdiv <2 x float> splat (float 1.000000e+00), %2 ; 10 uses
  %4 = extractelement <2 x float> %3, i64 1       ; 3 uses
  %i.kh = extractelement <2 x float> %3, i64 0    ; 4 uses
  store float %4, ptr %i.hy, align 4, !tbaa !76
  %5 = fmul float %4, %i.in
  %6 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  store float %i.kh, ptr %i.hv, align 4, !tbaa !76
  %7 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = insertelement <2 x float> poison, float %i.hj, i64 0
  %9 = insertelement <2 x float> %8, float %i.ht, i64 1
  %10 = fdiv <2 x float> splat (float 1.000000e+00), %9 ; 7 uses
  %11 = extractelement <2 x float> %10, i64 1     ; 4 uses
  %12 = extractelement <2 x float> %10, i64 0     ; 3 uses
  store float %12, ptr %i.hi, align 4, !tbaa !76
  store float %11, ptr %i.hs, align 4, !tbaa !76
  %13 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ki = fmul <2 x float> %13, %i.jx
  %14 = fneg <2 x float> %3
  %15 = shufflevector <2 x float> %3, <2 x float> %14, <2 x i32> <i32 0, i32 3>
  %16 = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.kj = insertelement <2 x float> %16, float %i.if, i64 1
  %17 = fmul <2 x float> %15, %i.kj               ; 2 uses
  %18 = fneg float %11                            ; 3 uses
  %19 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kk = insertelement <2 x float> %19, float %18, i64 0
  %i.kl = fmul <2 x float> %17, %i.kk             ; 7 uses
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.kn = extractelement <2 x float> %i.kl, i64 1 ; 3 uses
  store float %i.kn, ptr %i.ie, align 4, !tbaa !76
  %i.ko = load float, ptr %i.hk, align 4, !tbaa !76 ; 2 uses
  %i.kp = load float, ptr %i.ig, align 4, !tbaa !76 ; 2 uses
  %i.kq = load float, ptr %i.hn, align 4, !tbaa !76
  %i.kr = load float, ptr %i.ih, align 4, !tbaa !76
  %i.ks = load float, ptr %i.ii, align 4, !tbaa !76 ; 2 uses
  %i.kt = load float, ptr %i.il, align 4, !tbaa !76
  %i.ku = fmul float %i.jk, %i.ko
  %20 = shufflevector <2 x float> %i.jp, <2 x float> %3, <4 x i32> <i32 poison, i32 0, i32 0, i32 3>
  %i.kv = insertelement <4 x float> poison, float %i.ku, i64 0
  %i.kw = insertelement <4 x float> %i.kv, float %i.ko, i64 1
  %i.kx = insertelement <4 x float> %i.kw, float %i.kp, i64 2
  %i.ky = insertelement <4 x float> %i.kx, float %i.ks, i64 3
  %i.kz = shufflevector <2 x float> %i.ji, <2 x float> %i.kd, <4 x i32> <i32 0, i32 2, i32 2, i32 poison>
  %i.la = shufflevector <4 x float> %i.kz, <4 x float> %i.km, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.lb = fmul float %i.kh, %i.ks
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.kn, float %i.ik, float %5) ; 2 uses
  %i.ld = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.le = fmul float %i.id, %18
  %i.lf = fmul float %i.jr, %i.le                 ; 8 uses
  store float %i.lf, ptr %i.ic, align 4, !tbaa !76
  %i.lg = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %i.ka, <2 x float> %i.ki) ; 3 uses
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lk = extractelement <2 x float> %i.li, i64 0 ; 2 uses
  %i.ll = extractelement <2 x float> %i.li, i64 1 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.kd, %i.lj
  %i.lm = fmul float %i.ll, %i.js                 ; 3 uses
  store float %i.lm, ptr %i.is, align 4, !tbaa !76
  %21 = extractelement <2 x float> %17, i64 0
  %i.ln = fmul float %i.lf, %21
  %i.lo = tail call float @llvm.fmuladd.f32(float %i.lb, float %i.jr, float %i.ln)
  %i.lp = extractelement <2 x float> %i.kl, i64 0 ; 4 uses
  store float %i.lp, ptr %i.ij, align 4, !tbaa !76
  %i.lq = fmul float %i.lf, %i.lc
  %i.lr = fmul float %i.lc, %18                   ; 6 uses
  store float %i.lr, ptr %i.im, align 4, !tbaa !76
  %i.ls = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lt = fmul <2 x float> %i.ls, %i.jx
  %i.lu = insertelement <2 x float> poison, float %i.lr, i64 0
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lw = fmul <2 x float> %i.lv, %i.jx
  %22 = load <2 x float>, ptr %i.hp, align 4, !tbaa !76 ; 3 uses
  %23 = load float, ptr %i.io, align 4, !tbaa !76 ; 3 uses
  %i.lx = load float, ptr %i.hr, align 4, !tbaa !76 ; 3 uses
  %24 = load float, ptr %i.iq, align 4, !tbaa !76 ; 3 uses
  %i.ly = load <2 x float>, ptr %i.hu, align 4, !tbaa !76 ; 3 uses
  %25 = load <2 x float>, ptr %i.hx, align 4, !tbaa !76
  %26 = fneg float %12                            ; 3 uses
  %i.lz = fmul float %i.ia, %26
  %27 = fmul float %11, %i.lx
  %28 = fmul float %11, %24
  %29 = fmul float %i.jk, %i.kp                   ; 2 uses
  %30 = fmul float %i.jj, %i.lz                   ; 8 uses
  %i.ma = insertelement <4 x float> %20, float %30, i64 0
  %31 = insertelement <4 x float> poison, float %29, i64 0
  %32 = insertelement <4 x float> %31, float %i.kq, i64 1
  %33 = insertelement <4 x float> %32, float %i.kr, i64 2
  %34 = insertelement <4 x float> %33, float %i.kt, i64 3
  %35 = fmul <4 x float> %i.ma, %34
  %36 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ky, <4 x float> %i.la, <4 x float> %35) ; 5 uses
  %i.mb = shufflevector <4 x float> %36, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> %i.kc, <2 x i32> <i32 0, i32 3>
  %i.md = shufflevector <4 x float> %36, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  store float %30, ptr %i.hh, align 4, !tbaa !76
  %i.me = extractelement <4 x float> %36, i64 0
  %i.mf = fneg float %i.me                        ; 5 uses
  store float %i.mf, ptr %i.hk, align 4, !tbaa !76
  %37 = fmul float %29, %26                       ; 6 uses
  store float %37, ptr %i.ig, align 4, !tbaa !76
  %38 = insertelement <2 x float> %i.kg, float %30, i64 0
  %39 = fmul <2 x float> %38, %i.mc
  %i.mg = extractelement <4 x float> %36, i64 2
  %i.mh = fmul float %i.mg, %26                   ; 6 uses
  %40 = insertelement <2 x float> %i.ji, float %i.mh, i64 0
  %41 = extractelement <2 x float> %22, i64 0     ; 3 uses
  %i.mi = tail call float @llvm.fmuladd.f32(float %i.lf, float %41, float %27)
  %i.mj = tail call float @llvm.fmuladd.f32(float %i.lf, float %23, float %28) ; 2 uses
  %i.mk = fmul float %30, %i.mj
  %i.ml = tail call float @llvm.fmuladd.f32(float %i.mi, float %i.jj, float %i.mk)
  %i.mm = tail call float @llvm.fmuladd.f32(float %i.lk, float %i.mf, float %i.ml)
  %42 = fmul float %37, %i.lk
  %i.mn = tail call float @llvm.fmuladd.f32(float %i.mj, float %12, float %42)
  %i.mo = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.mq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> %40, <2 x float> %i.mp)
  %i.mr = fneg <2 x float> %i.mq                  ; 5 uses
  %i.ms = extractelement <2 x float> %i.mr, i64 1
  store float %i.ms, ptr %i.ir, align 4, !tbaa !76
  %43 = fneg float %i.lo                          ; 6 uses
  store float %43, ptr %i.ii, align 4, !tbaa !76
  %44 = fmul float %i.lp, %i.lx
  %45 = tail call float @llvm.fmuladd.f32(float %43, float %41, float %44)
  %i.mt = extractelement <2 x float> %i.ly, i64 0
  %i.mu = tail call float @llvm.fmuladd.f32(float %i.kh, float %i.mt, float %45)
  %46 = fmul float %i.lp, %24
  %47 = extractelement <4 x float> %36, i64 3
  %i.mv = tail call float @llvm.fmuladd.f32(float %47, float %i.jr, float %i.lq)
  %48 = fneg float %i.mv                          ; 5 uses
  %49 = fmul float %i.lr, %i.lx
  %i.mw = tail call float @llvm.fmuladd.f32(float %48, float %41, float %49)
  %50 = fmul float %i.lr, %24
  %i.mx = tail call float @llvm.fmuladd.f32(float %48, float %23, float %50)
  %i.my = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 poison>
  %i.mz = insertelement <4 x float> %i.my, float 0.000000e+00, i64 3
  %i.na = insertelement <4 x float> %i.mz, float %43, i64 0
  %i.nb = shufflevector <2 x float> %22, <2 x float> %i.ly, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.nc = insertelement <4 x float> %i.nb, float -0.000000e+00, i64 3
  %51 = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %46, i64 0
  %i.nd = insertelement <4 x float> %51, float %i.mw, i64 1
  %i.ne = insertelement <4 x float> %i.nd, float %i.mx, i64 2
  %i.nf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.na, <4 x float> %i.nc, <4 x float> %i.ne)
  %i.ng = shufflevector <2 x float> %i.ly, <2 x float> %25, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.nh = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ni = shufflevector <4 x float> %i.ng, <4 x float> %i.nh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %52 = shufflevector <2 x float> %3, <2 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.nj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ni, <4 x float> %52, <4 x float> %i.nf) ; 3 uses
  %i.nk = extractelement <4 x float> %i.nj, i64 0
  %i.nl = fmul float %30, %i.nk
  %i.nm = tail call float @llvm.fmuladd.f32(float %i.mu, float %i.jj, float %i.nl)
  store float %i.mh, ptr %i.ih, align 4, !tbaa !76
  store float %48, ptr %i.il, align 4, !tbaa !76
  %i.nn = insertelement <2 x float> poison, float %43, i64 0
  %i.no = shufflevector <2 x float> %i.nn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.np = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.no, <2 x float> %i.ka, <2 x float> %i.lt)
  %i.nq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %i.jy, <2 x float> %i.np) ; 4 uses
  %i.nr = insertelement <2 x float> poison, float %48, i64 0 ; 2 uses
  %i.ns = shufflevector <2 x float> %i.nr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ns, <2 x float> %i.ka, <2 x float> %i.lw)
  %i.nu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ld, <2 x float> %i.jy, <2 x float> %i.nt)
  %i.nv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %i.jz, <2 x float> %i.nu) ; 4 uses
  %i.nw = extractelement <2 x float> %i.nq, i64 0
  %i.nx = tail call float @llvm.fmuladd.f32(float %i.nw, float %i.mf, float %i.nm)
  %i.ny = extractelement <2 x float> %i.nq, i64 1 ; 3 uses
  %i.nz = fmul float %i.ke, %i.ny
  %i.oa = insertelement <2 x float> %i.jv, float %i.mh, i64 1 ; 2 uses
  %i.ob = insertelement <4 x float> poison, float %i.nz, i64 0
  %i.oc = extractelement <2 x float> %i.nv, i64 0
  %i.od = fmul float %i.jr, %23                   ; 2 uses
  %i.oe = insertelement <4 x float> poison, float %37, i64 0
  %i.of = insertelement <4 x float> %i.oe, float %30, i64 1
  %i.og = shufflevector <4 x float> %i.of, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.oh = shufflevector <2 x float> %i.nq, <2 x float> %i.nv, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.oi = shufflevector <4 x float> %i.oh, <4 x float> %i.nj, <4 x i32> <i32 0, i32 6, i32 2, i32 poison>
  %i.oj = insertelement <4 x float> %i.oi, float %i.od, i64 3
  %i.ok = fmul <4 x float> %i.og, %i.oj
  %53 = shufflevector <2 x float> %10, <2 x float> %i.ji, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.ol = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nj, <4 x float> %53, <4 x float> %i.ok) ; 4 uses
  %i.om = shufflevector <4 x float> %i.ol, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.on = shufflevector <4 x float> %i.ob, <4 x float> %i.ol, <2 x i32> <i32 0, i32 4>
  %i.oo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> %i.oa, <2 x float> %i.on)
  %i.op = extractelement <4 x float> %i.ol, i64 1
  %i.oq = tail call float @llvm.fmuladd.f32(float %i.oc, float %i.mf, float %i.op)
  %i.or = extractelement <2 x float> %i.nv, i64 1 ; 3 uses
  %i.os = fmul float %i.ke, %i.or
  %i.ot = insertelement <2 x float> %i.om, float %i.os, i64 0
  %i.ou = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nv, <2 x float> %i.oa, <2 x float> %i.ot)
  %i.ov = fmul float %i.jr, %i.kf                 ; 3 uses
  %i.ow = insertelement <2 x float> %i.md, float %i.ov, i64 1
  %i.ox = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ow, <2 x float> %i.ji, <2 x float> %39)
  %i.oy = fneg <2 x float> %i.ox                  ; 6 uses
  %i.oz = extractelement <2 x float> %i.oy, i64 0 ; 4 uses
  store float %i.oz, ptr %i.hn, align 4, !tbaa !76
  %i.pa = fmul float %37, %i.ov
  %i.pb = insertelement <2 x float> poison, float %i.ov, i64 0
  %i.pc = insertelement <2 x float> %i.pb, float %i.od, i64 1
  %i.pd = insertelement <2 x float> poison, float %i.mf, i64 0
  %54 = shufflevector <2 x float> %i.pd, <2 x float> %10, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.pe = shufflevector <4 x float> %i.ol, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.pf = insertelement <2 x float> %i.pe, float %i.pa, i64 1
  %i.pg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pc, <2 x float> %54, <2 x float> %i.pf)
  %i.ph = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pi = insertelement <2 x float> %i.oy, float %i.mh, i64 1
  %i.pj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ph, <2 x float> %i.pi, <2 x float> %i.pg)
  %i.pk = fneg <2 x float> %i.pj                  ; 4 uses
  %i.pl = extractelement <2 x float> %i.pk, i64 0
  store float %i.pl, ptr %i.hp, align 4, !tbaa !76
  %i.pm = shufflevector <2 x float> %i.oy, <2 x float> %i.kd, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.pm, ptr %i.ip, align 4, !tbaa !76
  %i.pn = tail call float @llvm.fmuladd.f32(float %i.ll, float %i.oz, float %i.mm)
  %i.po = fneg float %i.pn                        ; 3 uses
  store float %i.po, ptr %i.hr, align 4, !tbaa !76
  %i.pp = tail call float @llvm.fmuladd.f32(float %i.ny, float %i.oz, float %i.nx)
  %i.pq = tail call float @llvm.fmuladd.f32(float %i.or, float %i.oz, float %i.oq)
  %i.pr = extractelement <2 x float> %i.pk, i64 1 ; 2 uses
  store float %i.pr, ptr %i.io, align 4, !tbaa !76
  %i.ps = extractelement <2 x float> %i.mr, i64 0
  store float %i.ps, ptr %i.iq, align 4, !tbaa !76
  %i.pt = fneg float %i.pp                        ; 3 uses
  store float %i.pt, ptr %i.hu, align 4, !tbaa !76
  %i.pu = fneg <2 x float> %i.oo                  ; 4 uses
  %i.pv = extractelement <2 x float> %i.pu, i64 1 ; 2 uses
  store float %i.pv, ptr %i.it, align 4, !tbaa !76
  %i.pw = extractelement <2 x float> %i.pu, i64 0
  store float %i.pw, ptr %i.iu, align 4, !tbaa !76
  %i.px = fmul float %i.ny, %i.js                 ; 3 uses
  store float %i.px, ptr %i.iv, align 4, !tbaa !76
  %i.py = fneg float %i.pq                        ; 3 uses
  store float %i.py, ptr %i.hx, align 4, !tbaa !76
  %i.pz = fneg <2 x float> %i.ou                  ; 4 uses
  %i.qa = extractelement <2 x float> %i.pz, i64 1 ; 2 uses
  store float %i.qa, ptr %i.iw, align 4, !tbaa !76
  %i.qb = extractelement <2 x float> %i.pz, i64 0
  store float %i.qb, ptr %i.ix, align 4, !tbaa !76
  %i.qc = fmul float %i.or, %i.js                 ; 3 uses
  store float %i.qc, ptr %i.iy, align 4, !tbaa !76
  %i.qd = load float, ptr %i.iz, align 4, !tbaa !76 ; 5 uses
  %i.qe = fmul float %i.jj, %i.qd
  %i.qf = load float, ptr %i.ja, align 4, !tbaa !76 ; 6 uses
  %i.qg = fmul float %37, %i.qf
  %i.qh = insertelement <2 x float> poison, float %i.qd, i64 0
  %i.qi = insertelement <2 x float> %i.qh, float %i.qf, i64 1 ; 3 uses
  %i.qj = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.qg, i64 0
  %i.qk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qi, <2 x float> %54, <2 x float> %i.qj)
  %i.ql = load <2 x float>, ptr %i.jb, align 4, !tbaa !76 ; 5 uses
  %i.qm = insertelement <2 x float> %i.jw, float %30, i64 1
  %i.qn = insertelement <2 x float> %i.ql, float %i.qd, i64 1 ; 3 uses
  %i.qo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qm, <2 x float> %i.qn, <2 x float> %i.qk) ; 4 uses
  %i.qp = fmul float %i.qf, %i.pr
  %i.qq = insertelement <2 x float> %i.pk, float %i.mh, i64 1
  %i.qr = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.qp, i64 0
  %i.qs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qi, <2 x float> %i.qq, <2 x float> %i.qr)
  %i.qt = shufflevector <2 x float> %i.qs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qu = shufflevector <2 x float> %i.qn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oy, <2 x float> %i.qu, <2 x float> %i.qt)
  %i.qw = load <2 x float>, ptr %i.jc, align 4, !tbaa !76 ; 6 uses
  %i.qx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> %i.ql, <2 x float> %i.qv)
  %i.qy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %i.qw, <2 x float> %i.qx) ; 4 uses
  %i.qz = shufflevector <2 x float> %i.qy, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.ra = fmul float %i.qf, %i.pv
  %i.rb = fmul float %i.qf, %i.qa
  %i.rc = tail call float @llvm.fmuladd.f32(float %i.py, float %i.qd, float %i.rb)
  %i.rd = shufflevector <2 x float> %i.qi, <2 x float> %i.ql, <3 x i32> <i32 0, i32 1, i32 2>
  %i.re = insertelement <3 x float> poison, float %i.pt, i64 0
  %i.rf = shufflevector <2 x float> %i.mr, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.rg = shufflevector <3 x float> %i.re, <3 x float> %i.rf, <3 x i32> <i32 0, i32 3, i32 poison>
  %i.rh = shufflevector <2 x float> %i.pz, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ri = shufflevector <3 x float> %i.rg, <3 x float> %i.rh, <3 x i32> <i32 0, i32 1, i32 3>
  %i.rj = insertelement <3 x float> <float poison, float -0.000000e+00, float poison>, float %i.ra, i64 0
  %i.rk = insertelement <3 x float> %i.rj, float %i.rc, i64 2
  %i.rl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.rd, <3 x float> %i.ri, <3 x float> %i.rk)
  %i.rm = shufflevector <2 x float> %i.pu, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.rn = insertelement <3 x float> %i.rm, float %i.po, i64 1
  %i.ro = insertelement <3 x float> %i.rn, float %i.qc, i64 2
  %i.rp = shufflevector <2 x float> %i.qn, <2 x float> %i.qw, <3 x i32> <i32 0, i32 1, i32 2>
  %i.rq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ro, <3 x float> %i.rp, <3 x float> %i.rl)
  %i.rr = shufflevector <3 x float> %i.rq, <3 x float> poison, <3 x i32> <i32 1, i32 0, i32 2>
  %i.rs = shufflevector <2 x float> %i.mr, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %i.rt = insertelement <3 x float> %i.rs, float %i.px, i64 1
  %i.ru = insertelement <3 x float> %i.rt, float %48, i64 2
  %i.rv = shufflevector <2 x float> %i.ql, <2 x float> %i.qw, <3 x i32> <i32 0, i32 2, i32 3>
  %i.rw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ru, <3 x float> %i.rv, <3 x float> %i.rr)
  %i.rx = load <3 x float>, ptr %i.jd, align 4, !tbaa !76 ; 5 uses
  %i.ry = load float, ptr %i.je, align 4, !tbaa !76
  %i.rz = insertelement <3 x float> poison, float %i.lm, i64 0
  %i.sa = insertelement <3 x float> %i.rz, float %43, i64 1
  %i.sb = insertelement <3 x float> %i.sa, float %i.lr, i64 2
  %i.sc = shufflevector <2 x float> %i.qw, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.sd = shufflevector <3 x float> %i.sc, <3 x float> %i.rx, <3 x i32> <i32 0, i32 1, i32 3>
  %i.se = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sb, <3 x float> %i.sd, <3 x float> %i.rw)
  %i.sf = insertelement <3 x float> poison, float %i.lf, i64 0
  %i.sg = shufflevector <2 x float> %i.kl, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.sh = shufflevector <3 x float> %i.sf, <3 x float> %i.sg, <3 x i32> <i32 0, i32 3, i32 4>
  %i.si = shufflevector <3 x float> %i.sc, <3 x float> %i.rx, <3 x i32> <i32 1, i32 3, i32 4>
  %i.sj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sh, <3 x float> %i.si, <3 x float> %i.se)
  %55 = shufflevector <2 x float> %10, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %56 = shufflevector <2 x float> %3, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %57 = shufflevector <3 x float> %55, <3 x float> %56, <3 x i32> <i32 0, i32 3, i32 4>
  %i.sk = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %57, <3 x float> %i.rx, <3 x float> %i.sj) ; 8 uses
  %i.sl = extractelement <2 x float> %i.qo, i64 1
  %i.sm = fmul float %30, %i.sl
  %i.sn = tail call float @llvm.fmuladd.f32(float %i.jj, float %i.qe, float %i.sm)
  %i.so = insertelement <2 x float> %i.kg, float %37, i64 0
  %i.sp = shufflevector <2 x float> %i.qo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sq = shufflevector <2 x float> %54, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sr = shufflevector <4 x float> %i.sq, <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ss = shufflevector <4 x float> %i.sp, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.st = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.sn, i64 0
  %i.su = shufflevector <2 x float> %i.so, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sv = shufflevector <2 x float> %i.qo, <2 x float> %i.qy, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.sw = fmul <4 x float> %i.su, %i.sv
  %i.sx = shufflevector <4 x float> %i.st, <4 x float> %i.sw, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.sy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sr, <4 x float> %i.ss, <4 x float> %i.sx)
  %i.sz = extractelement <2 x float> %i.qy, i64 1
  %i.ta = shufflevector <2 x float> %i.oy, <2 x float> %i.ji, <4 x i32> <i32 0, i32 poison, i32 3, i32 poison>
  %i.tb = shufflevector <2 x float> %i.kd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.tc = shufflevector <4 x float> %i.ta, <4 x float> %i.tb, <4 x i32> <i32 0, i32 poison, i32 2, i32 5>
  %i.td = insertelement <4 x float> %i.tc, float %i.mh, i64 1
  %i.te = shufflevector <2 x float> %i.qy, <2 x float> %i.qo, <4 x i32> <i32 0, i32 0, i32 2, i32 1>
  %i.tf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.td, <4 x float> %i.te, <4 x float> %i.sy)
  %i.tg = shufflevector <2 x float> %i.pk, <2 x float> %i.oy, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.th = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ti = shufflevector <4 x float> %i.tg, <4 x float> %i.th, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.tj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ti, <4 x float> %i.qz, <4 x float> %i.tf)
  %i.tk = insertelement <4 x float> poison, float %i.po, i64 0
  %i.tl = shufflevector <2 x float> %i.mr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tm = shufflevector <4 x float> %i.tk, <4 x float> %i.tl, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.tn = insertelement <4 x float> %i.tm, float %i.lm, i64 3
  %i.to = shufflevector <3 x float> %i.sk, <3 x float> poison, <4 x i32> zeroinitializer
  %i.tp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tn, <4 x float> %i.to, <4 x float> %i.tj)
  %i.tq = insertelement <4 x float> poison, float %i.pt, i64 0
  %i.tr = shufflevector <2 x float> %i.pu, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ts = shufflevector <4 x float> %i.tq, <4 x float> %i.tr, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.tt = insertelement <4 x float> %i.ts, float %i.px, i64 3
  %i.tu = shufflevector <3 x float> %i.sk, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.tv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tt, <4 x float> %i.tu, <4 x float> %i.tp)
  %i.tw = insertelement <4 x float> poison, float %i.py, i64 0
  %i.tx = shufflevector <2 x float> %i.pz, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ty = shufflevector <4 x float> %i.tw, <4 x float> %i.tx, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.tz = insertelement <4 x float> %i.ty, float %i.qc, i64 3
  %i.ua = shufflevector <3 x float> %i.sk, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ub = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tz, <4 x float> %i.ua, <4 x float> %i.tv) ; 5 uses
  %i.uc = extractelement <3 x float> %i.sk, i64 0
  %i.ud = fmul float %i.lf, %i.uc
  %i.ue = extractelement <3 x float> %i.sk, i64 1 ; 2 uses
  %i.uf = extractelement <3 x float> %i.sk, i64 2 ; 2 uses
  %i.ug = fmul float %i.kn, %i.uf
  %i.uh = tail call float @llvm.fmuladd.f32(float %i.kh, float %i.ue, float %i.ug) ; 4 uses
  %i.ui = load <4 x float>, ptr %i.jf, align 4, !tbaa !76
  %i.uj = fsub <4 x float> %i.ui, %i.ub           ; 5 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %i.ul = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.sz, float %i.ud)
  %i.um = fmul float %i.lp, %i.ue
  %58 = insertelement <2 x float> %10, float %43, i64 0
  %i.un = shufflevector <3 x float> %i.sk, <3 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.uo = insertelement <2 x float> poison, float %i.ul, i64 0
  %i.up = insertelement <2 x float> %i.uo, float %i.um, i64 1
  %i.uq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %58, <2 x float> %i.un, <2 x float> %i.up)
  %i.ur = insertelement <2 x float> %i.nr, float %i.lr, i64 1
  %i.us = shufflevector <3 x float> %i.sk, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ut = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ur, <2 x float> %i.us, <2 x float> %i.uq) ; 3 uses
  %i.uu = fmul float %4, %i.uf                    ; 4 uses
  %i.uv = load <4 x float>, ptr %i.uk, align 4, !tbaa !76
  %i.uw = insertelement <4 x float> poison, float %i.uh, i64 2
  %i.ux = insertelement <4 x float> %i.uw, float %i.uu, i64 3
  %i.uy = shufflevector <2 x float> %i.ut, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.uz = shufflevector <4 x float> %i.uy, <4 x float> %i.ux, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.va = fsub <4 x float> %i.uv, %i.uz           ; 5 uses
  %i.vb = load ptr, ptr %i.d, align 8, !tbaa !61  ; 2 uses
  %i.vc = load ptr, ptr %i.f, align 8, !tbaa !62  ; 2 uses
  %i.vd = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.ve = load i32, ptr %i.j, align 8, !tbaa !63  ; 2 uses
  %.not197.i = icmp eq i32 %i.ve, 0
  br i1 %.not197.i, label %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN2cvL16sacChol8x8DampedEPA8_KffPA8_f.exit
  %wide.trip.count203.i = zext i32 %i.ve to i64
  %i.vf = extractelement <4 x float> %i.uj, i64 0
  %i.vg = extractelement <4 x float> %i.uj, i64 1
  %i.vh = extractelement <4 x float> %i.uj, i64 2
  %i.vi = extractelement <4 x float> %i.uj, i64 3
  %i.vj = extractelement <4 x float> %i.va, i64 0
  %i.vk = extractelement <4 x float> %i.va, i64 1
  %i.vl = extractelement <4 x float> %i.va, i64 2
  %i.vm = extractelement <4 x float> %i.va, i64 3
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.h, %.lr.ph.i14
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i17, %bb.h ], [ 0, %.lr.ph.i14 ] ; 3 uses
  %.0196.i = phi float [ %.1.i, %bb.h ], [ 0.000000e+00, %.lr.ph.i14 ] ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vd, i64 %indvars.iv.i15
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !58
  %.not.i16 = icmp eq i8 %i.vo, 0
  br i1 %.not.i16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.vp = trunc nuw i64 %indvars.iv.i15 to i32
  %i.vq = shl i32 %i.vp, 1                        ; 2 uses
  %i.vr = zext i32 %i.vq to i64                   ; 2 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.vr
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !76 ; 3 uses
  %i.vu = or disjoint i32 %i.vq, 1
  %i.vv = zext i32 %i.vu to i64                   ; 2 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.vv
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !76 ; 3 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %i.vr
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !76
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %i.vv
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !76
  %i.wc = fmul float %i.vm, %i.vx
  %i.wd = tail call float @llvm.fmuladd.f32(float %i.vl, float %i.vt, float %i.wc)
  %i.we = fadd float %i.wd, 1.000000e+00          ; 2 uses
  %i.wf = tail call noundef float @llvm.fabs.f32(float %i.we)
  %i.wg = fcmp ogt float %i.wf, f0x34000000
  %i.wh = fdiv float 1.000000e+00, %i.we
  %i.wi = select i1 %i.wg, float %i.wh, float 0.000000e+00 ; 2 uses
  %i.wj = fmul float %i.vg, %i.vx
  %i.wk = tail call float @llvm.fmuladd.f32(float %i.vf, float %i.vt, float %i.wj)
  %i.wl = fadd float %i.vh, %i.wk
  %i.wm = fmul float %i.wl, %i.wi
  %i.wn = fmul float %i.vj, %i.vx
  %i.wo = tail call float @llvm.fmuladd.f32(float %i.vi, float %i.vt, float %i.wn)
  %i.wp = fadd float %i.vk, %i.wo
  %i.wq = fmul float %i.wp, %i.wi
  %i.wr = fsub float %i.wm, %i.vz                 ; 2 uses
  %i.ws = fsub float %i.wq, %i.wb                 ; 2 uses
  %i.wt = fmul float %i.ws, %i.ws
  %i.wu = tail call float @llvm.fmuladd.f32(float %i.wr, float %i.wr, float %i.wt)
  %i.wv = fadd float %.0196.i, %i.wu
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.i
  %.1.i = phi float [ %.0196.i, %.lr.ph.split.i ], [ %i.wv, %bb.g ] ; 2 uses
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i18 = icmp eq i64 %indvars.iv.next.i17, %wide.trip.count203.i
  br i1 %exitcond.not.i18, label %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit, label %.lr.ph.split.i, !llvm.loop !1

_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit: ; preds = %bb.h, %_ZN2cvL16sacChol8x8DampedEPA8_KffPA8_f.exit
  %.0.lcssa.i20 = phi float [ 0.000000e+00, %_ZN2cvL16sacChol8x8DampedEPA8_KffPA8_f.exit ], [ %.1.i, %bb.h ] ; 2 uses
  %i.ww = load float, ptr %i.a, align 4, !tbaa !76
  %i.wx = extractelement <4 x float> %i.ub, i64 0 ; 3 uses
  %i.wy = tail call float @llvm.fmuladd.f32(float %i.wx, float %i.wx, float 0.000000e+00)
  %i.wz = extractelement <4 x float> %i.ub, i64 1 ; 3 uses
  %i.xa = tail call float @llvm.fmuladd.f32(float %i.wz, float %i.wz, float %i.wy)
  %i.xb = extractelement <4 x float> %i.ub, i64 2 ; 3 uses
  %i.xc = tail call float @llvm.fmuladd.f32(float %i.xb, float %i.xb, float %i.xa)
  %i.xd = extractelement <4 x float> %i.ub, i64 3 ; 3 uses
  %i.xe = tail call float @llvm.fmuladd.f32(float %i.xd, float %i.xd, float %i.xc)
  %i.xf = extractelement <2 x float> %i.ut, i64 0 ; 3 uses
  %i.xg = tail call float @llvm.fmuladd.f32(float %i.xf, float %i.xf, float %i.xe)
  %i.xh = extractelement <2 x float> %i.ut, i64 1 ; 3 uses
  %i.xi = tail call float @llvm.fmuladd.f32(float %i.xh, float %i.xh, float %i.xg)
  %i.xj = tail call float @llvm.fmuladd.f32(float %i.uh, float %i.uh, float %i.xi)
  %i.xk = tail call float @llvm.fmuladd.f32(float %i.uu, float %i.uu, float %i.xj)
  %i.xl = fmul float %.1, %i.xk
  %i.xm = tail call float @llvm.fmuladd.f32(float %i.wx, float %i.qd, float %i.xl)
  %i.xn = tail call float @llvm.fmuladd.f32(float %i.wz, float %i.qf, float %i.xm)
  %i.xo = extractelement <2 x float> %i.ql, i64 0
  %i.xp = tail call float @llvm.fmuladd.f32(float %i.xb, float %i.xo, float %i.xn)
  %i.xq = extractelement <2 x float> %i.qw, i64 0
  %i.xr = tail call float @llvm.fmuladd.f32(float %i.xd, float %i.xq, float %i.xp)
  %i.xs = extractelement <2 x float> %i.qw, i64 1
  %i.xt = tail call float @llvm.fmuladd.f32(float %i.xf, float %i.xs, float %i.xr)
  %i.xu = extractelement <3 x float> %i.rx, i64 0
  %i.xv = tail call float @llvm.fmuladd.f32(float %i.xh, float %i.xu, float %i.xt)
  %i.xw = tail call float @llvm.fmuladd.f32(float %i.uh, float %i.ry, float %i.xv)
  %i.xx = extractelement <3 x float> %i.rx, i64 2
  %i.xy = tail call float @llvm.fmuladd.f32(float %i.uu, float %i.xx, float %i.xw)
  %i.xz = fsub float %i.ww, %.0.lcssa.i20         ; 2 uses
  %i.ya = fmul float %i.xy, 5.000000e-01          ; 2 uses
  %i.yb = tail call noundef float @llvm.fabs.f32(float %i.ya)
  %i.yc = fcmp olt float %i.yb, f0x34000000
  %i.yd = fdiv float %i.xz, %i.ya
  %i.ye = select i1 %i.yc, float %i.xz, float %i.yd ; 3 uses
  %i.yf = fcmp olt float %i.ye, 2.500000e-01
  br i1 %i.yf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit
  %i.yg = fmul float %.1, 8.000000e+00            ; 2 uses
  %i.yh = fcmp ogt float %i.yg, f0x4FFA0000
  br i1 %i.yh, label %bb.o, label %bb.l

bb.j:                                             ; preds = %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit
  %i.yi = fcmp ogt float %i.ye, 7.500000e-01
  br i1 %i.yi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.yj = fmul float %.1, 5.000000e-01
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.2 = phi float [ %i.yg, %bb.i ], [ %i.yj, %bb.k ], [ %.1, %bb.j ]
  %i.yk = fcmp ogt float %i.ye, 0.000000e+00
  br i1 %i.yk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float %.0.lcssa.i20, ptr %i.a, align 4, !tbaa !76
  store <4 x float> %i.uj, ptr %i.jf, align 4
  store <4 x float> %i.va, ptr %i.uk, align 4
  %i.yl = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.ym = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.yn = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.yo = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.yp = load i32, ptr %i.j, align 8, !tbaa !63
  %i.yq = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.yr = load ptr, ptr %i.n, align 8, !tbaa !116
  call fastcc void @_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_(ptr noundef %i.yl, ptr noundef %i.ym, ptr noundef %i.yn, ptr noundef %i.yo, i32 noundef %i.yp, ptr noundef %i.yq, ptr noundef %i.yr, ptr noundef %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ys = add nuw nsw i32 %.01138, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ys, 100
  br i1 %exitcond.not, label %bb.o, label %.preheader, !llvm.loop !114

bb.o:                                             ; preds = %bb.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv13RHO_HEST_REFC10initializeEv(ptr noundef nonnull align 8 dereferenceable(452) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZN2cv5utils10BufferArea8allocateIjEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 4, i16 noundef zeroext 4)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 16, i16 noundef zeroext 4)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 36, i16 noundef zeroext 4)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 36, i16 noundef zeroext 4)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 64, i16 noundef zeroext 4)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 64, i16 noundef zeroext 4)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 8, i16 noundef zeroext 4)
  tail call void @_ZN2cv5utils10BufferArea6commitEv(ptr noundef nonnull align 8 dereferenceable(41) %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %i.j, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 0, ptr %i.k, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr null, ptr %i.l, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.m, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 0, ptr %i.n, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248
  store double 0.000000e+00, ptr %i.o, align 8, !tbaa !91
  %i.p = load ptr, ptr %0, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef -1)
  store i32 1, ptr %i.a, align 8, !tbaa !42
  ret i32 1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv13RHO_HEST_REFC8finalizeEv(ptr noundef nonnull align 8 dereferenceable(452) %0) unnamed_addr #8 comdat align 2 {
end_hunk_0
