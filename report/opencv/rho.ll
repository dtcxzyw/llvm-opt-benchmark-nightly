Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rho?download=true
inline.NumInlined: 221
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv13RHO_HEST_REFC6refineEv:bb.a
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
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !76 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.r, i64 212 ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !76 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.r, i64 240 ; 2 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !76
  %i.io = getelementptr inbounds nuw i8, ptr %i.r, i64 244 ; 2 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !76
  %i.iq = getelementptr inbounds nuw i8, ptr %i.r, i64 132 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.r, i64 136 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.r, i64 164 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.r, i64 168 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.r, i64 172
  %i.iv = getelementptr inbounds nuw i8, ptr %i.r, i64 196
  %i.iw = getelementptr inbounds nuw i8, ptr %i.r, i64 200 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.r, i64 204
  %i.iy = getelementptr inbounds nuw i8, ptr %i.r, i64 228
  %i.iz = getelementptr inbounds nuw i8, ptr %i.r, i64 232 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.r, i64 236
  %i.jb = load ptr, ptr %i.n, align 8, !tbaa !116 ; 6 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 20
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jh = load ptr, ptr %i.b, align 8, !tbaa !79  ; 3 uses
  %i.ji = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.jj = insertelement <2 x float> %i.ji, float %i.hm, i64 1
  %i.jk = fdiv <2 x float> splat (float 1.000000e+00), %i.jj ; 8 uses
  %i.jl = extractelement <2 x float> %i.jk, i64 0 ; 6 uses
  store float %i.jl, ptr %i.r, align 4, !tbaa !76
  %i.jm = extractelement <2 x float> %i.jk, i64 1 ; 3 uses
  store float %i.jm, ptr %i.hl, align 4, !tbaa !76
  %i.jn = load float, ptr %i.ho, align 4, !tbaa !76
  %i.jo = load float, ptr %i.hq, align 4, !tbaa !76
  %i.jp = insertelement <2 x float> poison, float %i.jn, i64 0
  %i.jq = insertelement <2 x float> %i.jp, float %i.jo, i64 1
  %i.jr = fdiv <2 x float> splat (float 1.000000e+00), %i.jq ; 7 uses
  %i.js = extractelement <2 x float> %i.jr, i64 0 ; 2 uses
  store float %i.js, ptr %i.ho, align 4, !tbaa !76
  %i.jt = extractelement <2 x float> %i.jr, i64 1 ; 7 uses
  store float %i.jt, ptr %i.hq, align 4, !tbaa !76
  %i.ju = fneg float %i.js                        ; 5 uses
  %i.jv = load float, ptr %i.ib, align 4, !tbaa !76
  %i.jw = insertelement <2 x float> %i.jr, float %i.ju, i64 0
  %i.jx = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.jy = insertelement <2 x float> %i.jx, float %i.ju, i64 1 ; 2 uses
  %i.jz = load <2 x float>, ptr %i.it, align 4, !tbaa !76 ; 3 uses
  %i.ka = load <2 x float>, ptr %i.iw, align 4, !tbaa !76 ; 2 uses
  %i.kb = load <2 x float>, ptr %i.iz, align 4, !tbaa !76
  %i.kc = load <2 x float>, ptr %i.ir, align 4, !tbaa !76 ; 5 uses
  %i.kd = insertelement <2 x float> %i.kc, float %i.jv, i64 0
  %i.ke = fmul <2 x float> %i.jw, %i.kd           ; 3 uses
  %i.kf = fmul <2 x float> %i.ke, %i.jy           ; 7 uses
  %i.kg = extractelement <2 x float> %i.kf, i64 0 ; 3 uses
  store float %i.kg, ptr %i.ib, align 4, !tbaa !76
  %i.kh = extractelement <2 x float> %i.kc, i64 0
  %i.ki = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.kj = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.kk = insertelement <2 x float> %i.kj, float %i.hz, i64 1
  %i.kl = fdiv <2 x float> splat (float 1.000000e+00), %i.kk ; 10 uses
  %i.km = extractelement <2 x float> %i.kl, i64 1 ; 3 uses
  %i.kn = extractelement <2 x float> %i.kl, i64 0 ; 4 uses
  store float %i.km, ptr %i.hy, align 4, !tbaa !76
  %i.ko = fmul float %i.km, %i.ip
  %i.kp = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  store float %i.kn, ptr %i.hv, align 4, !tbaa !76
  %i.kq = fmul float %i.kn, %i.ij
  %i.kr = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.kt = insertelement <2 x float> %i.ks, float %i.ht, i64 1
  %i.ku = fdiv <2 x float> splat (float 1.000000e+00), %i.kt ; 7 uses
  %i.kv = extractelement <2 x float> %i.ku, i64 1 ; 4 uses
  %i.kw = extractelement <2 x float> %i.ku, i64 0 ; 3 uses
  store float %i.kw, ptr %i.hi, align 4, !tbaa !76
  store float %i.kv, ptr %i.hs, align 4, !tbaa !76
  %1 = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %2 = fmul <2 x float> %1, %i.jz
  %3 = fneg <2 x float> %i.kl
  %4 = shufflevector <2 x float> %i.kl, <2 x float> %3, <2 x i32> <i32 0, i32 3>
  %5 = insertelement <2 x float> poison, float %i.il, i64 0
  %6 = insertelement <2 x float> %5, float %i.if, i64 1
  %7 = fmul <2 x float> %4, %6                    ; 2 uses
  %8 = fneg float %i.kv                           ; 3 uses
  %9 = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %10 = insertelement <2 x float> %9, float %8, i64 0
  %11 = fmul <2 x float> %7, %10                  ; 7 uses
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %13 = extractelement <2 x float> %11, i64 1     ; 3 uses
  store float %13, ptr %i.ie, align 4, !tbaa !76
  %i.kx = load float, ptr %i.hk, align 4, !tbaa !76 ; 2 uses
  %i.ky = load float, ptr %i.ig, align 4, !tbaa !76 ; 2 uses
  %i.kz = load float, ptr %i.hn, align 4, !tbaa !76
  %14 = load float, ptr %i.ih, align 4, !tbaa !76
  %i.la = fmul float %i.jm, %i.kx
  %i.lb = shufflevector <2 x float> %i.jr, <2 x float> %i.kl, <4 x i32> <i32 poison, i32 0, i32 0, i32 3>
  %i.lc = insertelement <4 x float> poison, float %i.la, i64 0
  %i.ld = insertelement <4 x float> %i.lc, float %i.kx, i64 1
  %i.le = insertelement <4 x float> %i.ld, float %i.ky, i64 2
  %i.lf = insertelement <4 x float> %i.le, float %i.ij, i64 3
  %i.lg = shufflevector <2 x float> %i.jk, <2 x float> %i.kf, <4 x i32> <i32 0, i32 2, i32 2, i32 poison>
  %15 = shufflevector <4 x float> %i.lg, <4 x float> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %i.il, float %i.ko) ; 2 uses
  %17 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %18 = fmul float %i.id, %8
  %19 = fmul float %i.jt, %18                     ; 8 uses
  store float %19, ptr %i.ic, align 4, !tbaa !76
  %i.lh = insertelement <2 x float> poison, float %19, i64 0
  %i.li = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.li, <2 x float> %i.kc, <2 x float> %2) ; 3 uses
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %22 = extractelement <2 x float> %20, i64 0     ; 2 uses
  %23 = extractelement <2 x float> %20, i64 1     ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.kf, %21
  %i.lj = fmul float %23, %i.ju                   ; 3 uses
  store float %i.lj, ptr %i.iu, align 4, !tbaa !76
  %24 = extractelement <2 x float> %7, i64 0
  %25 = fmul float %19, %24
  %26 = tail call float @llvm.fmuladd.f32(float %i.kq, float %i.jt, float %25)
  %27 = extractelement <2 x float> %11, i64 0     ; 4 uses
  store float %27, ptr %i.ik, align 4, !tbaa !76
  %28 = fmul float %19, %16
  %29 = fmul float %16, %8                        ; 6 uses
  store float %29, ptr %i.io, align 4, !tbaa !76
  %30 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %foldExtExtBinop.a = fmul <2 x float> %30, %i.jz
  %31 = insertelement <2 x float> poison, float %29, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = fmul <2 x float> %32, %i.jz
  %i.lk = load <2 x float>, ptr %i.hp, align 4, !tbaa !76 ; 3 uses
  %i.ll = load float, ptr %i.iq, align 4, !tbaa !76 ; 3 uses
  %i.lm = load float, ptr %i.hr, align 4, !tbaa !76 ; 3 uses
  %i.ln = load float, ptr %i.is, align 4, !tbaa !76 ; 3 uses
  %i.lo = load <2 x float>, ptr %i.hu, align 4, !tbaa !76 ; 3 uses
  %i.lp = load <2 x float>, ptr %i.hx, align 4, !tbaa !76
  %34 = fneg float %i.kw                          ; 3 uses
  %i.lq = fmul float %i.ia, %34
  %35 = fmul float %i.kv, %i.lm
  %i.lr = fmul float %i.kv, %i.ln
  %i.ls = fmul float %i.jm, %i.ky                 ; 2 uses
  %i.lt = fmul float %i.jl, %i.lq                 ; 8 uses
  %i.lu = insertelement <4 x float> %i.lb, float %i.lt, i64 0
  %i.lv = insertelement <4 x float> poison, float %i.ls, i64 0
  %i.lw = insertelement <4 x float> %i.lv, float %i.kz, i64 1
  %i.lx = insertelement <4 x float> %i.lw, float %14, i64 2
  %i.ly = insertelement <4 x float> %i.lx, float %i.in, i64 3
  %i.lz = fmul <4 x float> %i.lu, %i.ly
  %i.ma = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lf, <4 x float> %15, <4 x float> %i.lz) ; 5 uses
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> %i.ke, <2 x i32> <i32 0, i32 3>
  %i.md = shufflevector <4 x float> %i.ma, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  store float %i.lt, ptr %i.hh, align 4, !tbaa !76
  %i.me = extractelement <4 x float> %i.ma, i64 0
  %i.mf = fneg float %i.me                        ; 5 uses
  store float %i.mf, ptr %i.hk, align 4, !tbaa !76
  %i.mg = fmul float %i.ls, %34                   ; 6 uses
  store float %i.mg, ptr %i.ig, align 4, !tbaa !76
  %i.mh = insertelement <2 x float> %i.ki, float %i.lt, i64 0
  %i.mi = fmul <2 x float> %i.mh, %i.mc
  %i.mj = extractelement <4 x float> %i.ma, i64 2
  %i.mk = fmul float %i.mj, %34                   ; 6 uses
  %36 = insertelement <2 x float> %i.jk, float %i.mk, i64 0
  %37 = extractelement <2 x float> %i.lk, i64 0   ; 3 uses
  %i.ml = tail call float @llvm.fmuladd.f32(float %19, float %37, float %35)
  %i.mm = tail call float @llvm.fmuladd.f32(float %19, float %i.ll, float %i.lr) ; 2 uses
  %i.mn = fmul float %i.lt, %i.mm
  %i.mo = tail call float @llvm.fmuladd.f32(float %i.ml, float %i.jl, float %i.mn)
  %38 = tail call float @llvm.fmuladd.f32(float %22, float %i.mf, float %i.mo)
  %i.mp = fmul float %i.mg, %22
  %39 = tail call float @llvm.fmuladd.f32(float %i.mm, float %i.kw, float %i.mp)
  %i.mq = insertelement <2 x float> poison, float %39, i64 0
  %i.mr = shufflevector <2 x float> %i.mq, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.ms = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %36, <2 x float> %i.mr)
  %i.mt = fneg <2 x float> %i.ms                  ; 5 uses
  %i.mu = extractelement <2 x float> %i.mt, i64 1
  store float %i.mu, ptr %i.it, align 4, !tbaa !76
  %i.mv = fneg float %26                          ; 6 uses
  store float %i.mv, ptr %i.ii, align 4, !tbaa !76
  %i.mw = fmul float %27, %i.lm
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.mv, float %37, float %i.mw)
  %i.my = extractelement <2 x float> %i.lo, i64 0
  %i.mz = tail call float @llvm.fmuladd.f32(float %i.kn, float %i.my, float %i.mx)
  %i.na = fmul float %27, %i.ln
  %i.nb = extractelement <4 x float> %i.ma, i64 3
  %i.nc = tail call float @llvm.fmuladd.f32(float %i.nb, float %i.jt, float %28)
  %i.nd = fneg float %i.nc                        ; 5 uses
  %i.ne = fmul float %29, %i.lm
  %i.nf = tail call float @llvm.fmuladd.f32(float %i.nd, float %37, float %i.ne)
  %i.ng = fmul float %29, %i.ln
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.nd, float %i.ll, float %i.ng)
  %40 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 poison>
  %i.ni = insertelement <4 x float> %40, float 0.000000e+00, i64 3
  %41 = insertelement <4 x float> %i.ni, float %i.mv, i64 0
  %i.nj = shufflevector <2 x float> %i.lk, <2 x float> %i.lo, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.nk = insertelement <4 x float> %i.nj, float -0.000000e+00, i64 3
  %i.nl = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.na, i64 0
  %i.nm = insertelement <4 x float> %i.nl, float %i.nf, i64 1
  %i.nn = insertelement <4 x float> %i.nm, float %i.nh, i64 2
  %i.no = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %41, <4 x float> %i.nk, <4 x float> %i.nn)
  %i.np = shufflevector <2 x float> %i.lo, <2 x float> %i.lp, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.nq = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.nr = shufflevector <4 x float> %i.np, <4 x float> %i.nq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ns = shufflevector <2 x float> %i.kl, <2 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.nt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nr, <4 x float> %i.ns, <4 x float> %i.no) ; 3 uses
  %i.nu = extractelement <4 x float> %i.nt, i64 0
  %i.nv = fmul float %i.lt, %i.nu
  %i.nw = tail call float @llvm.fmuladd.f32(float %i.mz, float %i.jl, float %i.nv)
  store float %i.mk, ptr %i.ih, align 4, !tbaa !76
  store float %i.nd, ptr %i.im, align 4, !tbaa !76
  %i.nx = insertelement <2 x float> poison, float %i.mv, i64 0
  %i.ny = shufflevector <2 x float> %i.nx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ny, <2 x float> %i.kc, <2 x float> %foldExtExtBinop.a)
  %i.oa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> %i.ka, <2 x float> %i.nz) ; 4 uses
  %i.ob = insertelement <2 x float> poison, float %i.nd, i64 0 ; 2 uses
  %i.oc = shufflevector <2 x float> %i.ob, <2 x float> poison, <2 x i32> zeroinitializer
  %i.od = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oc, <2 x float> %i.kc, <2 x float> %33)
  %i.oe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %i.ka, <2 x float> %i.od)
  %i.of = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %i.kb, <2 x float> %i.oe) ; 4 uses
  %i.og = extractelement <2 x float> %i.oa, i64 0
  %i.oh = tail call float @llvm.fmuladd.f32(float %i.og, float %i.mf, float %i.nw)
  %i.oi = extractelement <2 x float> %i.oa, i64 1 ; 3 uses
  %i.oj = fmul float %i.kg, %i.oi
  %i.ok = insertelement <2 x float> %i.jx, float %i.mk, i64 1 ; 2 uses
  %i.ol = insertelement <4 x float> poison, float %i.oj, i64 0
  %i.om = extractelement <2 x float> %i.of, i64 0
  %i.on = fmul float %i.jt, %i.ll                 ; 2 uses
  %i.oo = insertelement <4 x float> poison, float %i.mg, i64 0
  %i.op = insertelement <4 x float> %i.oo, float %i.lt, i64 1
  %i.oq = shufflevector <4 x float> %i.op, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.or = shufflevector <2 x float> %i.oa, <2 x float> %i.of, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.os = shufflevector <4 x float> %i.or, <4 x float> %i.nt, <4 x i32> <i32 0, i32 6, i32 2, i32 poison>
  %i.ot = insertelement <4 x float> %i.os, float %i.on, i64 3
  %i.ou = fmul <4 x float> %i.oq, %i.ot
  %i.ov = shufflevector <2 x float> %i.ku, <2 x float> %i.jk, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.ow = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nt, <4 x float> %i.ov, <4 x float> %i.ou) ; 4 uses
  %i.ox = shufflevector <4 x float> %i.ow, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.oy = shufflevector <4 x float> %i.ol, <4 x float> %i.ow, <2 x i32> <i32 0, i32 4>
  %i.oz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oa, <2 x float> %i.ok, <2 x float> %i.oy)
  %i.pa = extractelement <4 x float> %i.ow, i64 1
  %i.pb = tail call float @llvm.fmuladd.f32(float %i.om, float %i.mf, float %i.pa)
  %i.pc = extractelement <2 x float> %i.of, i64 1 ; 3 uses
  %i.pd = fmul float %i.kg, %i.pc
  %i.pe = insertelement <2 x float> %i.ox, float %i.pd, i64 0
  %i.pf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.of, <2 x float> %i.ok, <2 x float> %i.pe)
  %i.pg = fmul float %i.jt, %i.kh                 ; 3 uses
  %i.ph = insertelement <2 x float> %i.md, float %i.pg, i64 1
  %i.pi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ph, <2 x float> %i.jk, <2 x float> %i.mi)
  %i.pj = fneg <2 x float> %i.pi                  ; 6 uses
  %i.pk = extractelement <2 x float> %i.pj, i64 0 ; 4 uses
  store float %i.pk, ptr %i.hn, align 4, !tbaa !76
  %i.pl = fmul float %i.mg, %i.pg
  %i.pm = insertelement <2 x float> poison, float %i.pg, i64 0
  %i.pn = insertelement <2 x float> %i.pm, float %i.on, i64 1
  %i.po = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.pp = shufflevector <2 x float> %i.po, <2 x float> %i.ku, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.pq = shufflevector <4 x float> %i.ow, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.pr = insertelement <2 x float> %i.pq, float %i.pl, i64 1
  %i.ps = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pn, <2 x float> %i.pp, <2 x float> %i.pr)
  %i.pt = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pu = insertelement <2 x float> %i.pj, float %i.mk, i64 1
  %i.pv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pt, <2 x float> %i.pu, <2 x float> %i.ps)
  %i.pw = fneg <2 x float> %i.pv                  ; 4 uses
  %i.px = extractelement <2 x float> %i.pw, i64 0
  store float %i.px, ptr %i.hp, align 4, !tbaa !76
  %i.py = shufflevector <2 x float> %i.pj, <2 x float> %i.kf, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.py, ptr %i.ir, align 4, !tbaa !76
  %i.pz = tail call float @llvm.fmuladd.f32(float %23, float %i.pk, float %38)
  %i.qa = fneg float %i.pz                        ; 3 uses
  store float %i.qa, ptr %i.hr, align 4, !tbaa !76
  %i.qb = tail call float @llvm.fmuladd.f32(float %i.oi, float %i.pk, float %i.oh)
  %i.qc = tail call float @llvm.fmuladd.f32(float %i.pc, float %i.pk, float %i.pb)
  %i.qd = extractelement <2 x float> %i.pw, i64 1 ; 2 uses
  store float %i.qd, ptr %i.iq, align 4, !tbaa !76
  %i.qe = extractelement <2 x float> %i.mt, i64 0
  store float %i.qe, ptr %i.is, align 4, !tbaa !76
  %i.qf = fneg float %i.qb                        ; 3 uses
  store float %i.qf, ptr %i.hu, align 4, !tbaa !76
  %i.qg = fneg <2 x float> %i.oz                  ; 4 uses
  %i.qh = extractelement <2 x float> %i.qg, i64 1 ; 2 uses
  store float %i.qh, ptr %i.iv, align 4, !tbaa !76
  %i.qi = extractelement <2 x float> %i.qg, i64 0
  store float %i.qi, ptr %i.iw, align 4, !tbaa !76
  %i.qj = fmul float %i.oi, %i.ju                 ; 3 uses
  store float %i.qj, ptr %i.ix, align 4, !tbaa !76
  %i.qk = fneg float %i.qc                        ; 3 uses
  store float %i.qk, ptr %i.hx, align 4, !tbaa !76
  %i.ql = fneg <2 x float> %i.pf                  ; 4 uses
  %i.qm = extractelement <2 x float> %i.ql, i64 1 ; 2 uses
  store float %i.qm, ptr %i.iy, align 4, !tbaa !76
  %i.qn = extractelement <2 x float> %i.ql, i64 0
  store float %i.qn, ptr %i.iz, align 4, !tbaa !76
  %i.qo = fmul float %i.pc, %i.ju                 ; 3 uses
  store float %i.qo, ptr %i.ja, align 4, !tbaa !76
  %i.qp = load float, ptr %i.jb, align 4, !tbaa !76 ; 5 uses
  %i.qq = fmul float %i.jl, %i.qp
  %i.qr = load float, ptr %i.jc, align 4, !tbaa !76 ; 6 uses
  %i.qs = fmul float %i.mg, %i.qr
  %i.qt = insertelement <2 x float> poison, float %i.qp, i64 0
  %i.qu = insertelement <2 x float> %i.qt, float %i.qr, i64 1 ; 3 uses
  %i.qv = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.qs, i64 0
  %i.qw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qu, <2 x float> %i.pp, <2 x float> %i.qv)
  %i.qx = load <2 x float>, ptr %i.jd, align 4, !tbaa !76 ; 5 uses
  %i.qy = insertelement <2 x float> %i.jy, float %i.lt, i64 1
  %i.qz = insertelement <2 x float> %i.qx, float %i.qp, i64 1 ; 3 uses
  %i.ra = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qy, <2 x float> %i.qz, <2 x float> %i.qw) ; 4 uses
  %i.rb = fmul float %i.qr, %i.qd
  %i.rc = insertelement <2 x float> %i.pw, float %i.mk, i64 1
  %i.rd = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.rb, i64 0
  %i.re = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qu, <2 x float> %i.rc, <2 x float> %i.rd)
  %i.rf = shufflevector <2 x float> %i.re, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rg = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pj, <2 x float> %i.rg, <2 x float> %i.rf)
  %i.ri = load <2 x float>, ptr %i.je, align 4, !tbaa !76 ; 6 uses
  %i.rj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kf, <2 x float> %i.qx, <2 x float> %i.rh)
  %i.rk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.ri, <2 x float> %i.rj) ; 4 uses
  %i.rl = shufflevector <2 x float> %i.rk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.rm = fmul float %i.qr, %i.qh
  %i.rn = fmul float %i.qr, %i.qm
  %i.ro = tail call float @llvm.fmuladd.f32(float %i.qk, float %i.qp, float %i.rn)
  %i.rp = shufflevector <2 x float> %i.qu, <2 x float> %i.qx, <3 x i32> <i32 0, i32 1, i32 2>
  %i.rq = insertelement <3 x float> poison, float %i.qf, i64 0
  %i.rr = shufflevector <2 x float> %i.mt, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.rs = shufflevector <3 x float> %i.rq, <3 x float> %i.rr, <3 x i32> <i32 0, i32 3, i32 poison>
  %i.rt = shufflevector <2 x float> %i.ql, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ru = shufflevector <3 x float> %i.rs, <3 x float> %i.rt, <3 x i32> <i32 0, i32 1, i32 3>
  %i.rv = insertelement <3 x float> <float poison, float -0.000000e+00, float poison>, float %i.rm, i64 0
  %i.rw = insertelement <3 x float> %i.rv, float %i.ro, i64 2
  %i.rx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.rp, <3 x float> %i.ru, <3 x float> %i.rw)
  %i.ry = shufflevector <2 x float> %i.qg, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.rz = insertelement <3 x float> %i.ry, float %i.qa, i64 1
  %i.sa = insertelement <3 x float> %i.rz, float %i.qo, i64 2
  %i.sb = shufflevector <2 x float> %i.qz, <2 x float> %i.ri, <3 x i32> <i32 0, i32 1, i32 2>
  %i.sc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sa, <3 x float> %i.sb, <3 x float> %i.rx)
  %i.sd = shufflevector <3 x float> %i.sc, <3 x float> poison, <3 x i32> <i32 1, i32 0, i32 2>
  %i.se = shufflevector <2 x float> %i.mt, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %i.sf = insertelement <3 x float> %i.se, float %i.qj, i64 1
  %i.sg = insertelement <3 x float> %i.sf, float %i.nd, i64 2
  %i.sh = shufflevector <2 x float> %i.qx, <2 x float> %i.ri, <3 x i32> <i32 0, i32 2, i32 3>
  %i.si = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sg, <3 x float> %i.sh, <3 x float> %i.sd)
  %i.sj = load <3 x float>, ptr %i.jf, align 4, !tbaa !76 ; 5 uses
  %i.sk = load float, ptr %i.jg, align 4, !tbaa !76
  %i.sl = insertelement <3 x float> poison, float %i.lj, i64 0
  %i.sm = insertelement <3 x float> %i.sl, float %i.mv, i64 1
  %i.sn = insertelement <3 x float> %i.sm, float %29, i64 2
  %i.so = shufflevector <2 x float> %i.ri, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.sp = shufflevector <3 x float> %i.so, <3 x float> %i.sj, <3 x i32> <i32 0, i32 1, i32 3>
  %i.sq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sn, <3 x float> %i.sp, <3 x float> %i.si)
  %i.sr = insertelement <3 x float> poison, float %19, i64 0
  %42 = shufflevector <2 x float> %11, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %43 = shufflevector <3 x float> %i.sr, <3 x float> %42, <3 x i32> <i32 0, i32 3, i32 4>
  %i.ss = shufflevector <3 x float> %i.so, <3 x float> %i.sj, <3 x i32> <i32 1, i32 3, i32 4>
  %i.st = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %43, <3 x float> %i.ss, <3 x float> %i.sq)
  %i.su = shufflevector <2 x float> %i.ku, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %i.sv = shufflevector <2 x float> %i.kl, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.sw = shufflevector <3 x float> %i.su, <3 x float> %i.sv, <3 x i32> <i32 0, i32 3, i32 4>
  %i.sx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.sw, <3 x float> %i.sj, <3 x float> %i.st) ; 8 uses
  %i.sy = extractelement <2 x float> %i.ra, i64 1
  %i.sz = fmul float %i.lt, %i.sy
  %i.ta = tail call float @llvm.fmuladd.f32(float %i.jl, float %i.qq, float %i.sz)
  %i.tb = insertelement <2 x float> %i.ki, float %i.mg, i64 0
  %i.tc = shufflevector <2 x float> %i.ra, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.td = shufflevector <2 x float> %i.pp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.te = shufflevector <4 x float> %i.td, <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.tf = shufflevector <4 x float> %i.tc, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.tg = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.ta, i64 0
  %i.th = shufflevector <2 x float> %i.tb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ti = shufflevector <2 x float> %i.ra, <2 x float> %i.rk, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.tj = fmul <4 x float> %i.th, %i.ti
  %i.tk = shufflevector <4 x float> %i.tg, <4 x float> %i.tj, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.tl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.te, <4 x float> %i.tf, <4 x float> %i.tk)
  %i.tm = extractelement <2 x float> %i.rk, i64 1
  %i.tn = shufflevector <2 x float> %i.pj, <2 x float> %i.jk, <4 x i32> <i32 0, i32 poison, i32 3, i32 poison>
  %i.to = shufflevector <2 x float> %i.kf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.tp = shufflevector <4 x float> %i.tn, <4 x float> %i.to, <4 x i32> <i32 0, i32 poison, i32 2, i32 5>
  %i.tq = insertelement <4 x float> %i.tp, float %i.mk, i64 1
  %i.tr = shufflevector <2 x float> %i.rk, <2 x float> %i.ra, <4 x i32> <i32 0, i32 0, i32 2, i32 1>
  %i.ts = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tq, <4 x float> %i.tr, <4 x float> %i.tl)
  %i.tt = shufflevector <2 x float> %i.pw, <2 x float> %i.pj, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.tu = shufflevector <2 x float> %i.jr, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.tv = shufflevector <4 x float> %i.tt, <4 x float> %i.tu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.tw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tv, <4 x float> %i.rl, <4 x float> %i.ts)
  %i.tx = insertelement <4 x float> poison, float %i.qa, i64 0
  %i.ty = shufflevector <2 x float> %i.mt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tz = shufflevector <4 x float> %i.tx, <4 x float> %i.ty, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ua = insertelement <4 x float> %i.tz, float %i.lj, i64 3
  %i.ub = shufflevector <3 x float> %i.sx, <3 x float> poison, <4 x i32> zeroinitializer
  %i.uc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ua, <4 x float> %i.ub, <4 x float> %i.tw)
  %i.ud = insertelement <4 x float> poison, float %i.qf, i64 0
  %i.ue = shufflevector <2 x float> %i.qg, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.uf = shufflevector <4 x float> %i.ud, <4 x float> %i.ue, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ug = insertelement <4 x float> %i.uf, float %i.qj, i64 3
  %i.uh = shufflevector <3 x float> %i.sx, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ui = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ug, <4 x float> %i.uh, <4 x float> %i.uc)
  %i.uj = insertelement <4 x float> poison, float %i.qk, i64 0
  %i.uk = shufflevector <2 x float> %i.ql, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ul = shufflevector <4 x float> %i.uj, <4 x float> %i.uk, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.um = insertelement <4 x float> %i.ul, float %i.qo, i64 3
  %i.un = shufflevector <3 x float> %i.sx, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.uo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.um, <4 x float> %i.un, <4 x float> %i.ui) ; 5 uses
  %i.up = extractelement <3 x float> %i.sx, i64 0
  %i.uq = fmul float %19, %i.up
  %i.ur = extractelement <3 x float> %i.sx, i64 1 ; 2 uses
  %i.us = extractelement <3 x float> %i.sx, i64 2 ; 2 uses
  %i.ut = fmul float %27, %i.ur
  %i.uu = fmul float %13, %i.us
  %i.uv = tail call float @llvm.fmuladd.f32(float %i.kn, float %i.ur, float %i.uu) ; 4 uses
  %i.uw = load <4 x float>, ptr %i.jh, align 4, !tbaa !76
  %i.ux = fsub <4 x float> %i.uw, %i.uo           ; 5 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.jh, i64 16 ; 2 uses
  %i.uz = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.tm, float %i.uq)
  %i.va = insertelement <2 x float> %i.ku, float %i.mv, i64 0
  %i.vb = shufflevector <3 x float> %i.sx, <3 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vc = insertelement <2 x float> poison, float %i.uz, i64 0
  %i.vd = insertelement <2 x float> %i.vc, float %i.ut, i64 1
  %i.ve = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.va, <2 x float> %i.vb, <2 x float> %i.vd)
  %i.vf = insertelement <2 x float> %i.ob, float %29, i64 1
  %i.vg = shufflevector <3 x float> %i.sx, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.vh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vf, <2 x float> %i.vg, <2 x float> %i.ve) ; 3 uses
  %i.vi = fmul float %i.km, %i.us                 ; 4 uses
  %i.vj = load <4 x float>, ptr %i.uy, align 4, !tbaa !76
  %i.vk = insertelement <4 x float> poison, float %i.uv, i64 2
  %i.vl = insertelement <4 x float> %i.vk, float %i.vi, i64 3
  %i.vm = shufflevector <2 x float> %i.vh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vn = shufflevector <4 x float> %i.vm, <4 x float> %i.vl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.vo = fsub <4 x float> %i.vj, %i.vn           ; 5 uses
  %i.vp = load ptr, ptr %i.d, align 8, !tbaa !61  ; 2 uses
  %i.vq = load ptr, ptr %i.f, align 8, !tbaa !62  ; 2 uses
  %i.vr = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.vs = load i32, ptr %i.j, align 8, !tbaa !63  ; 2 uses
  %.not197.i = icmp eq i32 %i.vs, 0
  br i1 %.not197.i, label %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN2cvL16sacChol8x8DampedEPA8_KffPA8_f.exit
  %wide.trip.count203.i = zext i32 %i.vs to i64
  %i.vt = extractelement <4 x float> %i.ux, i64 0
  %i.vu = extractelement <4 x float> %i.ux, i64 1
  %i.vv = extractelement <4 x float> %i.ux, i64 2
  %i.vw = extractelement <4 x float> %i.ux, i64 3
  %i.vx = extractelement <4 x float> %i.vo, i64 0
  %i.vy = extractelement <4 x float> %i.vo, i64 1
  %i.vz = extractelement <4 x float> %i.vo, i64 2
  %i.wa = extractelement <4 x float> %i.vo, i64 3
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.h, %.lr.ph.i14
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i17, %bb.h ], [ 0, %.lr.ph.i14 ] ; 3 uses
  %.0196.i = phi float [ %.1.i, %bb.h ], [ 0.000000e+00, %.lr.ph.i14 ] ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vr, i64 %indvars.iv.i15
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !58
  %.not.i16 = icmp eq i8 %i.wc, 0
  br i1 %.not.i16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.wd = trunc nuw i64 %indvars.iv.i15 to i32
  %i.we = shl i32 %i.wd, 1                        ; 2 uses
  %i.wf = zext i32 %i.we to i64                   ; 2 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %i.wf
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !76 ; 3 uses
  %i.wi = or disjoint i32 %i.we, 1
  %i.wj = zext i32 %i.wi to i64                   ; 2 uses
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %i.wj
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !76 ; 3 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %i.wf
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !76
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %i.wj
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !76
  %i.wq = fmul float %i.wa, %i.wl
  %i.wr = tail call float @llvm.fmuladd.f32(float %i.vz, float %i.wh, float %i.wq)
  %i.ws = fadd float %i.wr, 1.000000e+00          ; 2 uses
  %i.wt = tail call noundef float @llvm.fabs.f32(float %i.ws)
  %i.wu = fcmp ogt float %i.wt, f0x34000000
  %i.wv = fdiv float 1.000000e+00, %i.ws
  %i.ww = select i1 %i.wu, float %i.wv, float 0.000000e+00 ; 2 uses
  %i.wx = fmul float %i.vu, %i.wl
  %i.wy = tail call float @llvm.fmuladd.f32(float %i.vt, float %i.wh, float %i.wx)
  %i.wz = fadd float %i.vv, %i.wy
  %i.xa = fmul float %i.wz, %i.ww
  %i.xb = fmul float %i.vx, %i.wl
  %i.xc = tail call float @llvm.fmuladd.f32(float %i.vw, float %i.wh, float %i.xb)
  %i.xd = fadd float %i.vy, %i.xc
  %i.xe = fmul float %i.xd, %i.ww
  %i.xf = fsub float %i.xa, %i.wn                 ; 2 uses
  %i.xg = fsub float %i.xe, %i.wp                 ; 2 uses
  %i.xh = fmul float %i.xg, %i.xg
  %i.xi = tail call float @llvm.fmuladd.f32(float %i.xf, float %i.xf, float %i.xh)
  %i.xj = fadd float %.0196.i, %i.xi
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.i
  %.1.i = phi float [ %.0196.i, %.lr.ph.split.i ], [ %i.xj, %bb.g ] ; 2 uses
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i18 = icmp eq i64 %indvars.iv.next.i17, %wide.trip.count203.i
  br i1 %exitcond.not.i18, label %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit, label %.lr.ph.split.i, !llvm.loop !1

_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit: ; preds = %bb.h, %_ZN2cvL16sacChol8x8DampedEPA8_KffPA8_f.exit
  %.0.lcssa.i20 = phi float [ 0.000000e+00, %_ZN2cvL16sacChol8x8DampedEPA8_KffPA8_f.exit ], [ %.1.i, %bb.h ] ; 2 uses
  %i.xk = load float, ptr %i.a, align 4, !tbaa !76
  %i.xl = extractelement <4 x float> %i.uo, i64 0 ; 3 uses
  %i.xm = tail call float @llvm.fmuladd.f32(float %i.xl, float %i.xl, float 0.000000e+00)
  %i.xn = extractelement <4 x float> %i.uo, i64 1 ; 3 uses
  %i.xo = tail call float @llvm.fmuladd.f32(float %i.xn, float %i.xn, float %i.xm)
  %i.xp = extractelement <4 x float> %i.uo, i64 2 ; 3 uses
  %i.xq = tail call float @llvm.fmuladd.f32(float %i.xp, float %i.xp, float %i.xo)
  %i.xr = extractelement <4 x float> %i.uo, i64 3 ; 3 uses
  %i.xs = tail call float @llvm.fmuladd.f32(float %i.xr, float %i.xr, float %i.xq)
  %i.xt = extractelement <2 x float> %i.vh, i64 0 ; 3 uses
  %i.xu = tail call float @llvm.fmuladd.f32(float %i.xt, float %i.xt, float %i.xs)
  %i.xv = extractelement <2 x float> %i.vh, i64 1 ; 3 uses
  %i.xw = tail call float @llvm.fmuladd.f32(float %i.xv, float %i.xv, float %i.xu)
  %i.xx = tail call float @llvm.fmuladd.f32(float %i.uv, float %i.uv, float %i.xw)
  %i.xy = tail call float @llvm.fmuladd.f32(float %i.vi, float %i.vi, float %i.xx)
  %i.xz = fmul float %.1, %i.xy
  %i.ya = tail call float @llvm.fmuladd.f32(float %i.xl, float %i.qp, float %i.xz)
  %i.yb = tail call float @llvm.fmuladd.f32(float %i.xn, float %i.qr, float %i.ya)
  %i.yc = extractelement <2 x float> %i.qx, i64 0
  %i.yd = tail call float @llvm.fmuladd.f32(float %i.xp, float %i.yc, float %i.yb)
  %i.ye = extractelement <2 x float> %i.ri, i64 0
  %i.yf = tail call float @llvm.fmuladd.f32(float %i.xr, float %i.ye, float %i.yd)
  %i.yg = extractelement <2 x float> %i.ri, i64 1
  %i.yh = tail call float @llvm.fmuladd.f32(float %i.xt, float %i.yg, float %i.yf)
  %i.yi = extractelement <3 x float> %i.sj, i64 0
  %i.yj = tail call float @llvm.fmuladd.f32(float %i.xv, float %i.yi, float %i.yh)
  %i.yk = tail call float @llvm.fmuladd.f32(float %i.uv, float %i.sk, float %i.yj)
  %i.yl = extractelement <3 x float> %i.sj, i64 2
  %i.ym = tail call float @llvm.fmuladd.f32(float %i.vi, float %i.yl, float %i.yk)
  %i.yn = fsub float %i.xk, %.0.lcssa.i20         ; 2 uses
  %i.yo = fmul float %i.ym, 5.000000e-01          ; 2 uses
  %i.yp = tail call noundef float @llvm.fabs.f32(float %i.yo)
  %i.yq = fcmp olt float %i.yp, f0x34000000
  %i.yr = fdiv float %i.yn, %i.yo
  %i.ys = select i1 %i.yq, float %i.yn, float %i.yr ; 3 uses
  %i.yt = fcmp olt float %i.ys, 2.500000e-01
  br i1 %i.yt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit
  %i.yu = fmul float %.1, 8.000000e+00            ; 2 uses
  %i.yv = fcmp ogt float %i.yu, f0x4FFA0000
  br i1 %i.yv, label %bb.o, label %bb.l

bb.j:                                             ; preds = %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit
  %i.yw = fcmp ogt float %i.ys, 7.500000e-01
  br i1 %i.yw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.yx = fmul float %.1, 5.000000e-01
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.2 = phi float [ %i.yu, %bb.i ], [ %i.yx, %bb.k ], [ %.1, %bb.j ]
  %i.yy = fcmp ogt float %i.ys, 0.000000e+00
  br i1 %i.yy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float %.0.lcssa.i20, ptr %i.a, align 4, !tbaa !76
  store <4 x float> %i.ux, ptr %i.jh, align 4
  store <4 x float> %i.vo, ptr %i.uy, align 4
  %i.yz = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.za = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.zb = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.zc = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.zd = load i32, ptr %i.j, align 8, !tbaa !63
  %i.ze = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.zf = load ptr, ptr %i.n, align 8, !tbaa !116
  call fastcc void @_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_(ptr noundef %i.yz, ptr noundef %i.za, ptr noundef %i.zb, ptr noundef %i.zc, i32 noundef %i.zd, ptr noundef %i.ze, ptr noundef %i.zf, ptr noundef %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.zg = add nuw nsw i32 %.01138, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.zg, 100
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
end_hunk_0
