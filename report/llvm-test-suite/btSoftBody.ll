Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBody?download=true
inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody11applyForcesEv:bb.a
  %i.fy = fmul float %i.fw, %i.fx                 ; 2 uses
  %i.fz = extractelement <2 x float> %i.fu, i64 1 ; 3 uses
  %i.ga = fmul float %i.fw, %i.fz                 ; 2 uses
  %i.gb = fmul float %i.fw, %i.fv                 ; 2 uses
  %i.gc = fmul float %i.ga, %i.ga
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.fy, float %i.gc)
  %i.ge = tail call noundef float @llvm.fmuladd.f32(float %i.gb, float %i.gb, float %i.gd)
  %i.gf = fcmp ogt float %i.ge, %i.dz
  br i1 %i.gf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cq, i64 64 ; 2 uses
  %i.gh = load <2 x float>, ptr %i.gg, align 8, !tbaa !159
  %i.gi = fadd <2 x float> %i.fu, %i.gh
  store <2 x float> %i.gi, ptr %i.gg, align 8, !tbaa !159
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cq, i64 72 ; 2 uses
  %i.gk = load float, ptr %i.gj, align 8, !tbaa !159
  %i.gl = fadd float %i.fv, %i.gk
  store float %i.gl, ptr %i.gj, align 8, !tbaa !159
  br label %_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit.us

bb.r:                                             ; preds = %bb.p
  %i.gm = fmul float %i.fz, %i.fz
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.fx, float %i.gm)
  %i.go = tail call noundef float @llvm.fmuladd.f32(float %i.fv, float %i.fv, float %i.gn)
  %sqrt.i.i.i.us = tail call noundef float @llvm.sqrt.f32(float %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cq, i64 64 ; 2 uses
  %i.gq = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.gr = insertelement <2 x float> %i.gq, float %sqrt.i.i.i.us, i64 1
  %i.gs = fdiv <2 x float> splat (float 1.000000e+00), %i.gr ; 4 uses
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gu = fmul <2 x float> %i.fu, %i.gt           ; 3 uses
  %i.gv = extractelement <2 x float> %i.gs, i64 1
  %i.gw = fmul float %i.fv, %i.gv                 ; 2 uses
  %foldExtExtBinop390 = fmul <2 x float> %i.dt, %i.gu
  %i.gx = extractelement <2 x float> %foldExtExtBinop390, i64 1
  %i.gy = extractelement <2 x float> %i.gu, i64 0
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.gy, float %i.gx)
  %i.ha = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.gw, float %i.gz) ; 2 uses
  %i.hb = insertelement <2 x float> poison, float %i.ha, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hd = fmul <2 x float> %i.gu, %i.hc
  %i.he = fmul float %i.gw, %i.ha
  %i.hf = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = fmul <2 x float> %i.hf, %i.hd
  %i.hh = extractelement <2 x float> %i.gs, i64 0
  %i.hi = fmul float %i.hh, %i.he
  %i.hj = load <2 x float>, ptr %i.gp, align 8, !tbaa !159
  %i.hk = fsub <2 x float> %i.hj, %i.hg
  store <2 x float> %i.hk, ptr %i.gp, align 8, !tbaa !159
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cq, i64 72 ; 2 uses
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !159
  %i.hn = fsub float %i.hm, %i.hi
  store float %i.hn, ptr %i.hl, align 8, !tbaa !159
  br label %_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit.us

_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit.us: ; preds = %bb.r, %bb.q, %bb.o, %bb.j, %_ZL14EvaluateMediumPK19btSoftBodyWorldInfoRK9btVector3RN10btSoftBody7sMediumE.exit.us
  br i1 %i.n, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit.us
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  %i.hp = getelementptr inbounds nuw i8, ptr %i.cq, i64 100
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !241
  %i.hr = fmul float %.095, %i.hq                 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cq, i64 88
  %i.ht = load float, ptr %i.hs, align 8, !tbaa !159
  %i.hu = fmul float %i.hr, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cq, i64 64 ; 2 uses
  %i.hw = load <2 x float>, ptr %i.ho, align 8, !tbaa !159
  %i.hx = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x float> %i.hw, %i.hy
  %i.ia = load <2 x float>, ptr %i.hv, align 8, !tbaa !159
  %i.ib = fadd <2 x float> %i.hz, %i.ia
  store <2 x float> %i.ib, ptr %i.hv, align 8, !tbaa !159
  %i.ic = getelementptr inbounds nuw i8, ptr %i.cq, i64 72 ; 2 uses
  %i.id = load float, ptr %i.ic, align 8, !tbaa !159
  %i.ie = fadd float %i.hu, %i.id
  store float %i.ie, ptr %i.ic, align 8, !tbaa !159
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit.us
  br i1 %i.o, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.if = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  %i.ig = getelementptr inbounds nuw i8, ptr %i.cq, i64 100
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !241
  %i.ii = fmul float %.094, %i.ih                 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.cq, i64 88
  %i.ik = load float, ptr %i.ij, align 8, !tbaa !159
  %i.il = fmul float %i.ii, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.cq, i64 64 ; 2 uses
  %i.in = load <2 x float>, ptr %i.if, align 8, !tbaa !159
  %i.io = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iq = fmul <2 x float> %i.in, %i.ip
  %i.ir = load <2 x float>, ptr %i.im, align 8, !tbaa !159
  %i.is = fadd <2 x float> %i.iq, %i.ir
  store <2 x float> %i.is, ptr %i.im, align 8, !tbaa !159
  %i.it = getelementptr inbounds nuw i8, ptr %i.cq, i64 72 ; 2 uses
  %i.iu = load float, ptr %i.it, align 8, !tbaa !159
  %i.iv = fadd float %i.il, %i.iu
  store float %i.iv, ptr %i.it, align 8, !tbaa !159
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph.split.us
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %wide.trip.count362
  br i1 %exitcond363.not, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ 0, %.lr.ph ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [120 x i8], ptr %i.co, i64 %indvars.iv ; 11 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 96
  %i.iy = load float, ptr %i.ix, align 8, !tbaa !197
  %i.iz = fcmp ogt float %i.iy, 0.000000e+00
  br i1 %i.iz, label %_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit, label %bb.z

_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit: ; preds = %.lr.ph.split
  br i1 %i.n, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 80
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 100
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !241
  %i.jd = fmul float %.095, %i.jc                 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.iw, i64 88
  %i.jf = load float, ptr %i.je, align 8, !tbaa !159
  %i.jg = fmul float %i.jd, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iw, i64 64 ; 2 uses
  %i.ji = load <2 x float>, ptr %i.ja, align 8, !tbaa !159
  %i.jj = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x float> %i.ji, %i.jk
  %i.jm = load <2 x float>, ptr %i.jh, align 8, !tbaa !159
  %i.jn = fadd <2 x float> %i.jl, %i.jm
  store <2 x float> %i.jn, ptr %i.jh, align 8, !tbaa !159
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iw, i64 72 ; 2 uses
  %i.jp = load float, ptr %i.jo, align 8, !tbaa !159
  %i.jq = fadd float %i.jg, %i.jp
  store float %i.jq, ptr %i.jo, align 8, !tbaa !159
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit
  br i1 %i.o, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iw, i64 80
  %i.js = getelementptr inbounds nuw i8, ptr %i.iw, i64 100
  %i.jt = load float, ptr %i.js, align 4, !tbaa !241
  %i.ju = fmul float %.094, %i.jt                 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.iw, i64 88
  %i.jw = load float, ptr %i.jv, align 8, !tbaa !159
  %i.jx = fmul float %i.ju, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.iw, i64 64 ; 2 uses
  %i.jz = load <2 x float>, ptr %i.jr, align 8, !tbaa !159
  %i.ka = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x float> %i.jz, %i.kb
  %i.kd = load <2 x float>, ptr %i.jy, align 8, !tbaa !159
  %i.ke = fadd <2 x float> %i.kc, %i.kd
  store <2 x float> %i.ke, ptr %i.jy, align 8, !tbaa !159
  %i.kf = getelementptr inbounds nuw i8, ptr %i.iw, i64 72 ; 2 uses
  %i.kg = load float, ptr %i.kf, align 8, !tbaa !159
  %i.kh = fadd float %i.jx, %i.kg
  store float %i.kh, ptr %i.kf, align 8, !tbaa !159
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count362
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.z, %bb.v, %._crit_edge373
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !118 ; 2 uses
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %.lr.ph355, label %._crit_edge356.split

.lr.ph355:                                        ; preds = %._crit_edge
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !117
  br i1 %i.u, label %.lr.ph355.split, label %._crit_edge356.split

.lr.ph355.split:                                  ; preds = %.lr.ph355
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !103 ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 12
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 20
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %wide.trip.count371 = zext nneg i32 %i.kj to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph355.split, %.loopexit
  %indvars.iv368 = phi i64 [ 0, %.lr.ph355.split ], [ %indvars.iv.next369, %.loopexit ] ; 2 uses
  %i.ku = getelementptr inbounds nuw [72 x i8], ptr %i.km, i64 %indvars.iv368 ; 6 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !209 ; 11 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 48
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !209 ; 11 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 48 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 52
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 52
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kw, i64 56
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 56 ; 2 uses
  %i.lf = load float, ptr %i.le, align 4, !tbaa !159
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !209 ; 11 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 48 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 52
  %i.lk = load <2 x float>, ptr %i.kx, align 4, !tbaa !159 ; 3 uses
  %i.ll = load <2 x float>, ptr %i.lb, align 4, !tbaa !159 ; 3 uses
  %i.lm = load float, ptr %i.ld, align 4, !tbaa !159 ; 2 uses
  %i.ln = fadd float %i.lm, %i.lf
  %i.lo = load <2 x float>, ptr %i.la, align 4, !tbaa !159
  %i.lp = fadd <2 x float> %i.lk, %i.lo
  %i.lq = load <2 x float>, ptr %i.li, align 4, !tbaa !159
  %i.lr = fadd <2 x float> %i.lp, %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lh, i64 56 ; 2 uses
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !159
  %i.lu = fadd float %i.ln, %i.lt
  %i.lv = fmul <2 x float> %i.lr, splat (float f0x3EAAAAAB) ; 6 uses
  %i.lw = fmul float %i.lu, f0x3EAAAAAB           ; 5 uses
  %i.lx = load float, ptr %i.ko, align 8, !tbaa !556 ; 2 uses
  %i.ly = load float, ptr %i.kp, align 4, !tbaa !557 ; 2 uses
  %i.lz = fcmp ogt float %i.ly, 0.000000e+00
  br i1 %i.lz, label %bb.ab, label %_ZL14EvaluateMediumPK19btSoftBodyWorldInfoRK9btVector3RN10btSoftBody7sMediumE.exit173

bb.ab:                                            ; preds = %bb.aa
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !159
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.md = load float, ptr %i.mc, align 4, !tbaa !159
  %i.me = fadd float %i.mb, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !159
  %i.mh = fadd float %i.me, %i.mg
  %i.mi = fmul float %i.mh, f0x3EAAAAAB
  %i.mj = getelementptr inbounds nuw i8, ptr %i.kw, i64 20
  %1 = load float, ptr %i.mj, align 4, !tbaa !159
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kz, i64 20
  %2 = load float, ptr %i.mk, align 4, !tbaa !159
  %3 = fadd float %1, %2
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lh, i64 20
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !159
  %4 = fadd float %3, %i.mm
  %5 = fmul float %4, f0x3EAAAAAB
  %6 = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.mn = load float, ptr %6, align 4, !tbaa !159
  %7 = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %8 = load float, ptr %7, align 4, !tbaa !159
  %9 = fadd float %i.mn, %8
  %10 = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %11 = load float, ptr %10, align 4, !tbaa !159
  %12 = fadd float %9, %11
  %13 = fmul float %12, f0x3EAAAAAB
  %14 = load float, ptr %i.kq, align 4, !tbaa !159
  %15 = load float, ptr %i.kr, align 8, !tbaa !159
  %16 = fmul float %5, %15
  %i.mo = tail call float @llvm.fmuladd.f32(float %13, float %14, float %16)
  %i.mp = load float, ptr %i.ks, align 4, !tbaa !159
  %i.mq = tail call noundef float @llvm.fmuladd.f32(float %i.mi, float %i.mp, float %i.mo)
  %i.mr = load float, ptr %i.kt, align 8, !tbaa !558
  %i.ms = fadd float %i.mr, %i.mq
  %i.mt = fcmp olt float %i.ms, 0.000000e+00
  br i1 %i.mt, label %bb.ac, label %_ZL14EvaluateMediumPK19btSoftBodyWorldInfoRK9btVector3RN10btSoftBody7sMediumE.exit173

bb.ac:                                            ; preds = %bb.ab
  br label %_ZL14EvaluateMediumPK19btSoftBodyWorldInfoRK9btVector3RN10btSoftBody7sMediumE.exit173

_ZL14EvaluateMediumPK19btSoftBodyWorldInfoRK9btVector3RN10btSoftBody7sMediumE.exit173: ; preds = %bb.aa, %bb.ab, %bb.ac
  %.sroa.13.1 = phi float [ %i.ly, %bb.ac ], [ %i.lx, %bb.ab ], [ %i.lx, %bb.aa ]
  %foldExtExtBinop399 = fmul <2 x float> %i.lv, %i.lv
  %i.mu = extractelement <2 x float> %foldExtExtBinop399, i64 1
  %i.mv = extractelement <2 x float> %i.lv, i64 0 ; 4 uses
  %i.mw = tail call float @llvm.fmuladd.f32(float %i.mv, float %i.mv, float %i.mu)
  %i.mx = tail call noundef float @llvm.fmuladd.f32(float %i.lw, float %i.lw, float %i.mw) ; 3 uses
  %i.my = fcmp ogt float %i.mx, f0x34000000
  br i1 %i.my, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %_ZL14EvaluateMediumPK19btSoftBodyWorldInfoRK9btVector3RN10btSoftBody7sMediumE.exit173
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  %i.na = load <2 x float>, ptr %i.mz, align 8    ; 4 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ku, i64 48
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 8 ; 3 uses
  %i.nb = load i32, ptr %i.c, align 8, !tbaa !157
  %cond = icmp eq i32 %i.nb, 3
  br i1 %cond, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %foldExtExtBinop392 = fmul <2 x float> %i.lv, %i.na
  %i.nc = extractelement <2 x float> %foldExtExtBinop392, i64 1
  %i.nd = extractelement <2 x float> %i.na, i64 0
  %i.ne = tail call float @llvm.fmuladd.f32(float %i.nd, float %i.mv, float %i.nc)
  %i.nf = tail call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.copyload, float %i.lw, float %i.ne)
  %i.ng = fcmp olt float %i.nf, 0.000000e+00
  %i.nh = select i1 %i.ng, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.ni = insertelement <2 x float> poison, float %i.nh, i64 0
  %i.nj = shufflevector <2 x float> %i.ni, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nk = fmul <2 x float> %i.na, %i.nj
  %i.nl = fmul float %.sroa.14.0.copyload, %i.nh
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.sroa.14.0 = phi float [ %i.nl, %bb.ae ], [ %.sroa.14.0.copyload, %bb.ad ] ; 2 uses
  %i.nm = phi <2 x float> [ %i.nk, %bb.ae ], [ %i.na, %bb.ad ] ; 3 uses
  %foldExtExtBinop394 = fmul <2 x float> %i.lv, %i.nm
  %i.nn = extractelement <2 x float> %foldExtExtBinop394, i64 1
  %i.no = extractelement <2 x float> %i.nm, i64 0
  %i.np = tail call float @llvm.fmuladd.f32(float %i.mv, float %i.no, float %i.nn)
  %i.nq = tail call noundef float @llvm.fmuladd.f32(float %i.lw, float %.sroa.14.0, float %i.np) ; 2 uses
  %i.nr = fcmp ogt float %i.nq, 0.000000e+00
  br i1 %i.nr, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ku, i64 56
  %i.nt = load float, ptr %i.ns, align 8, !tbaa !220
  %i.nu = fmul float %i.nq, %i.nt
  %i.nv = fmul float %i.mx, %i.nu
  %i.nw = fneg float %.sroa.13.1
  %i.nx = fmul float %i.nv, %i.nw                 ; 2 uses
  %sqrt.i.i184 = tail call noundef float @llvm.sqrt.f32(float %i.mx)
  %i.ny = fmul float %i.j, %i.nx                  ; 2 uses
  %i.nz = insertelement <2 x float> poison, float %i.ny, i64 0
  %i.oa = shufflevector <2 x float> %i.nz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ob = fmul <2 x float> %i.nm, %i.oa
  %i.oc = fmul float %.sroa.14.0, %i.ny
  %i.od = fadd <2 x float> %i.ob, zeroinitializer
  %i.oe = fadd float %i.oc, 0.000000e+00
  %i.of = fdiv float 1.000000e+00, %sqrt.i.i184   ; 2 uses
  %i.og = insertelement <2 x float> poison, float %i.of, i64 0
  %i.oh = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oi = fmul <2 x float> %i.lv, %i.oh
  %i.oj = fmul float %i.lw, %i.of
  %i.ok = fmul float %i.l, %i.nx                  ; 2 uses
  %i.ol = insertelement <2 x float> poison, float %i.ok, i64 0
  %i.om = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> zeroinitializer
  %i.on = fmul <2 x float> %i.oi, %i.om
  %i.oo = fmul float %i.oj, %i.ok
  %i.op = fadd <2 x float> %i.on, %i.od
  %i.oq = fadd float %i.oo, %i.oe
  %i.or = fmul <2 x float> %i.op, splat (float f0x3EAAAAAB) ; 6 uses
  %i.os = fmul float %i.oq, f0x3EAAAAAB           ; 9 uses
  %i.ot = extractelement <2 x float> %i.or, i64 1 ; 5 uses
  %i.ou = fmul float %i.ot, %i.ot
  %i.ov = extractelement <2 x float> %i.or, i64 0 ; 5 uses
  %i.ow = tail call float @llvm.fmuladd.f32(float %i.ov, float %i.ov, float %i.ou)
  %i.ox = tail call float @llvm.fmuladd.f32(float %i.os, float %i.os, float %i.ow)
  %sqrt.i.i.i195 = tail call float @llvm.sqrt.f32(float %i.ox)
  %i.oy = fdiv float 1.000000e+00, %sqrt.i.i.i195 ; 2 uses
  %i.oz = insertelement <2 x float> poison, float %i.oy, i64 0
  %i.pa = shufflevector <2 x float> %i.oz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pb = fmul <2 x float> %i.or, %i.pa           ; 9 uses
  %i.pc = fmul float %i.os, %i.oy                 ; 6 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.kw, i64 96
  %i.pe = load float, ptr %i.pd, align 8, !tbaa !197
  %i.pf = fmul float %i.b, %i.pe                  ; 4 uses
  %i.pg = fmul float %i.ov, %i.pf
  %i.ph = fmul float %i.ot, %i.pf
  %i.pi = fmul float %i.os, %i.pf
  %i.pj = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pk = insertelement <2 x float> %i.pj, float %i.ph, i64 0 ; 2 uses
  %i.pl = fmul <2 x float> %i.pk, %i.pk
  %i.pm = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pn = insertelement <2 x float> %i.pm, float %i.pg, i64 0 ; 2 uses
  %i.po = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pn, <2 x float> %i.pn, <2 x float> %i.pl)
  %i.pp = insertelement <2 x float> %i.ll, float %i.pi, i64 0 ; 2 uses
  %i.pq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pp, <2 x float> %i.pp, <2 x float> %i.po) ; 2 uses
  %i.pr = extractelement <2 x float> %i.pq, i64 0
  %i.ps = extractelement <2 x float> %i.pq, i64 1
  %i.pt = fcmp ogt float %i.pr, %i.ps
  br i1 %i.pt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %shift396 = shufflevector <2 x float> %i.pb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop397 = fmul <2 x float> %shift396, %i.ll
  %i.pu = extractelement <2 x float> %foldExtExtBinop397, i64 0
  %i.pv = extractelement <2 x float> %i.pb, i64 0
  %i.pw = extractelement <2 x float> %i.lk, i64 0
  %i.px = tail call float @llvm.fmuladd.f32(float %i.pw, float %i.pv, float %i.pu)
  %i.py = tail call noundef float @llvm.fmuladd.f32(float %i.lm, float %i.pc, float %i.px) ; 2 uses
  %i.pz = fmul float %i.pc, %i.py
  %i.qa = fdiv float 1.000000e+00, %i.pf          ; 2 uses
  %i.qb = fmul float %i.qa, %i.pz
  %i.qc = getelementptr inbounds nuw i8, ptr %i.kw, i64 64 ; 2 uses
  %i.qd = insertelement <2 x float> poison, float %i.py, i64 0
  %i.qe = shufflevector <2 x float> %i.qd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qf = fmul <2 x float> %i.pb, %i.qe
  %i.qg = insertelement <2 x float> poison, float %i.qa, i64 0
  %i.qh = shufflevector <2 x float> %i.qg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qi = fmul <2 x float> %i.qh, %i.qf
  %i.qj = load <2 x float>, ptr %i.qc, align 8, !tbaa !159
  %i.qk = fsub <2 x float> %i.qj, %i.qi
  store <2 x float> %i.qk, ptr %i.qc, align 8, !tbaa !159
  %i.ql = getelementptr inbounds nuw i8, ptr %i.kw, i64 72 ; 2 uses
  %i.qm = load float, ptr %i.ql, align 8, !tbaa !159
  %i.qn = fsub float %i.qm, %i.qb
  store float %i.qn, ptr %i.ql, align 8, !tbaa !159
  br label %_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit196

bb.ai:                                            ; preds = %bb.ag
  %i.qo = getelementptr inbounds nuw i8, ptr %i.kw, i64 64 ; 2 uses
  %i.qp = load <2 x float>, ptr %i.qo, align 8, !tbaa !159
  %i.qq = fadd <2 x float> %i.or, %i.qp
  store <2 x float> %i.qq, ptr %i.qo, align 8, !tbaa !159
  %i.qr = getelementptr inbounds nuw i8, ptr %i.kw, i64 72 ; 2 uses
  %i.qs = load float, ptr %i.qr, align 8, !tbaa !159
  %i.qt = fadd float %i.os, %i.qs
  store float %i.qt, ptr %i.qr, align 8, !tbaa !159
  br label %_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit196

_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit196: ; preds = %bb.ai, %bb.ah
  %i.qu = getelementptr inbounds nuw i8, ptr %i.kz, i64 96
  %i.qv = load float, ptr %i.qu, align 8, !tbaa !197
  %i.qw = fmul float %i.b, %i.qv                  ; 4 uses
  %i.qx = fmul float %i.ov, %i.qw
  %i.qy = fmul float %i.ot, %i.qw
  %i.qz = fmul float %i.os, %i.qw
  %i.ra = load float, ptr %i.le, align 8, !tbaa !159 ; 2 uses
  %i.rb = load <2 x float>, ptr %i.la, align 8, !tbaa !159 ; 3 uses
  %i.rc = insertelement <2 x float> %i.rb, float %i.qy, i64 0 ; 2 uses
  %i.rd = fmul <2 x float> %i.rc, %i.rc
  %i.re = shufflevector <2 x float> %i.rb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.rf = insertelement <2 x float> %i.re, float %i.qx, i64 0 ; 2 uses
  %i.rg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rf, <2 x float> %i.rf, <2 x float> %i.rd)
  %i.rh = insertelement <2 x float> poison, float %i.qz, i64 0
  %i.ri = insertelement <2 x float> %i.rh, float %i.ra, i64 1 ; 2 uses
  %i.rj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ri, <2 x float> %i.ri, <2 x float> %i.rg) ; 2 uses
  %i.rk = extractelement <2 x float> %i.rj, i64 0
  %i.rl = extractelement <2 x float> %i.rj, i64 1
  %i.rm = fcmp ogt float %i.rk, %i.rl
  br i1 %i.rm, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit196
  %i.rn = getelementptr inbounds nuw i8, ptr %i.kz, i64 64 ; 2 uses
  %i.ro = load <2 x float>, ptr %i.rn, align 8, !tbaa !159
  %i.rp = fadd <2 x float> %i.or, %i.ro
  store <2 x float> %i.rp, ptr %i.rn, align 8, !tbaa !159
  %i.rq = getelementptr inbounds nuw i8, ptr %i.kz, i64 72 ; 2 uses
  %i.rr = load float, ptr %i.rq, align 8, !tbaa !159
  %i.rs = fadd float %i.os, %i.rr
  store float %i.rs, ptr %i.rq, align 8, !tbaa !159
  br label %_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit196.1

bb.ak:                                            ; preds = %_ZL17ApplyClampedForceRN10btSoftBody4NodeERK9btVector3f.exit196
  %i.rt = load float, ptr %i.lc, align 4, !tbaa !159
  %i.ru = extractelement <2 x float> %i.pb, i64 1
  %i.rv = fmul float %i.ru, %i.rt
  %i.rw = extractelement <2 x float> %i.pb, i64 0
  %i.rx = extractelement <2 x float> %i.rb, i64 0
  %i.ry = tail call float @llvm.fmuladd.f32(float %i.rx, float %i.rw, float %i.rv)
  %i.rz = tail call noundef float @llvm.fmuladd.f32(float %i.ra, float %i.pc, float %i.ry) ; 2 uses
  %i.sa = fmul float %i.pc, %i.rz
  %i.sb = fdiv float 1.000000e+00, %i.qw          ; 2 uses
  %i.sc = fmul float %i.sb, %i.sa
  %i.sd = getelementptr inbounds nuw i8, ptr %i.kz, i64 64 ; 2 uses
  %i.se = insertelement <2 x float> poison, float %i.rz, i64 0
  %i.sf = shufflevector <2 x float> %i.se, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sg = fmul <2 x float> %i.pb, %i.sf
  %i.sh = insertelement <2 x float> poison, float %i.sb, i64 0
end_hunk_0
