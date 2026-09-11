Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CCameraSceneNode?download=true
inline.NumInlined: 900
inline.NumDeleted: 216
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4core8CMatrix4IfE20setbyproduct_nocheckERKS1_S3_:bb.a
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.gl, float %i.gp)
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !13
  %i.gt = load float, ptr %i.et, align 4, !tbaa !13
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.gt, float %i.gq)
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 4 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !13
  %i.gx = load float, ptr %i.ey, align 4, !tbaa !13
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.gx, float %i.gu)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.gy, ptr %i.gz, align 4, !tbaa !13
  %i.ha = load float, ptr %1, align 4, !tbaa !13
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !13
  %i.hd = load float, ptr %i.el, align 4, !tbaa !13
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !13
  %i.hg = fmul float %i.hd, %i.hf
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.hc, float %i.hg)
  %i.hi = load float, ptr %i.er, align 4, !tbaa !13
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !13
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.hi, float %i.hk, float %i.hh)
  %i.hm = load float, ptr %i.ew, align 4, !tbaa !13
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 4 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !13
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.ho, float %i.hl)
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.hp, ptr %i.hq, align 4, !tbaa !13
  %i.hr = load float, ptr %i.fb, align 4, !tbaa !13
  %i.hs = load float, ptr %i.hb, align 4, !tbaa !13
  %i.ht = load float, ptr %i.fe, align 4, !tbaa !13
  %i.hu = load float, ptr %i.he, align 4, !tbaa !13
  %i.hv = fmul float %i.ht, %i.hu
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.hs, float %i.hv)
  %i.hx = load float, ptr %i.fj, align 4, !tbaa !13
  %i.hy = load float, ptr %i.hj, align 4, !tbaa !13
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.hy, float %i.hw)
  %i.ia = load float, ptr %i.fn, align 4, !tbaa !13
  %i.ib = load float, ptr %i.hn, align 4, !tbaa !13
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ia, float %i.ib, float %i.hz)
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ic, ptr %i.id, align 4, !tbaa !13
  %i.ie = load float, ptr %i.fs, align 4, !tbaa !13
  %i.if = load float, ptr %i.hb, align 4, !tbaa !13
  %i.ig = load float, ptr %i.fv, align 4, !tbaa !13
  %i.ih = load float, ptr %i.he, align 4, !tbaa !13
  %i.ii = fmul float %i.ig, %i.ih
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ie, float %i.if, float %i.ii)
  %i.ik = load float, ptr %i.ga, align 4, !tbaa !13
  %i.il = load float, ptr %i.hj, align 4, !tbaa !13
  %i.im = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.il, float %i.ij)
  %i.in = load float, ptr %i.ge, align 4, !tbaa !13
  %i.io = load float, ptr %i.hn, align 4, !tbaa !13
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.in, float %i.io, float %i.im)
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ip, ptr %i.iq, align 4, !tbaa !13
  %i.ir = load float, ptr %i.gj, align 4, !tbaa !13
  %i.is = load float, ptr %i.hb, align 4, !tbaa !13
  %i.it = load float, ptr %i.gm, align 4, !tbaa !13
  %i.iu = load float, ptr %i.he, align 4, !tbaa !13
  %i.iv = fmul float %i.it, %i.iu
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.ir, float %i.is, float %i.iv)
  %i.ix = load float, ptr %i.gr, align 4, !tbaa !13
  %i.iy = load float, ptr %i.hj, align 4, !tbaa !13
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.ix, float %i.iy, float %i.iw)
  %i.ja = load float, ptr %i.gv, align 4, !tbaa !13
  %i.jb = load float, ptr %i.hn, align 4, !tbaa !13
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.ja, float %i.jb, float %i.iz)
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.jc, ptr %i.jd, align 4, !tbaa !13
  %i.je = load float, ptr %1, align 4, !tbaa !13
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !13
  %i.jh = load float, ptr %i.el, align 4, !tbaa !13
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !13
  %i.jk = fmul float %i.jh, %i.jj
  %i.jl = tail call float @llvm.fmuladd.f32(float %i.je, float %i.jg, float %i.jk)
  %i.jm = load float, ptr %i.er, align 4, !tbaa !13
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !13
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.jm, float %i.jo, float %i.jl)
  %i.jq = load float, ptr %i.ew, align 4, !tbaa !13
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !13
  %i.jt = tail call float @llvm.fmuladd.f32(float %i.jq, float %i.js, float %i.jp)
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.jt, ptr %i.ju, align 4, !tbaa !13
  %i.jv = load float, ptr %i.fb, align 4, !tbaa !13
  %i.jw = load float, ptr %i.jf, align 4, !tbaa !13
  %i.jx = load float, ptr %i.fe, align 4, !tbaa !13
  %i.jy = load float, ptr %i.ji, align 4, !tbaa !13
  %i.jz = fmul float %i.jx, %i.jy
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.jw, float %i.jz)
  %i.kb = load float, ptr %i.fj, align 4, !tbaa !13
  %i.kc = load float, ptr %i.jn, align 4, !tbaa !13
  %i.kd = tail call float @llvm.fmuladd.f32(float %i.kb, float %i.kc, float %i.ka)
  %i.ke = load float, ptr %i.fn, align 4, !tbaa !13
  %i.kf = load float, ptr %i.jr, align 4, !tbaa !13
  %i.kg = tail call float @llvm.fmuladd.f32(float %i.ke, float %i.kf, float %i.kd)
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.kg, ptr %i.kh, align 4, !tbaa !13
  %i.ki = load float, ptr %i.fs, align 4, !tbaa !13
  %i.kj = load float, ptr %i.jf, align 4, !tbaa !13
  %i.kk = load float, ptr %i.fv, align 4, !tbaa !13
  %i.kl = load float, ptr %i.ji, align 4, !tbaa !13
  %i.km = fmul float %i.kk, %i.kl
  %i.kn = tail call float @llvm.fmuladd.f32(float %i.ki, float %i.kj, float %i.km)
  %i.ko = load float, ptr %i.ga, align 4, !tbaa !13
  %i.kp = load float, ptr %i.jn, align 4, !tbaa !13
  %i.kq = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.kp, float %i.kn)
  %i.kr = load float, ptr %i.ge, align 4, !tbaa !13
  %i.ks = load float, ptr %i.jr, align 4, !tbaa !13
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.kr, float %i.ks, float %i.kq)
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.kt, ptr %i.ku, align 4, !tbaa !13
  %i.kv = load float, ptr %i.gj, align 4, !tbaa !13
  %i.kw = load float, ptr %i.jf, align 4, !tbaa !13
  %i.kx = load float, ptr %i.gm, align 4, !tbaa !13
  %i.ky = load float, ptr %i.ji, align 4, !tbaa !13
  %i.kz = fmul float %i.kx, %i.ky
  %i.la = tail call float @llvm.fmuladd.f32(float %i.kv, float %i.kw, float %i.kz)
  %i.lb = load float, ptr %i.gr, align 4, !tbaa !13
  %i.lc = load float, ptr %i.jn, align 4, !tbaa !13
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.lb, float %i.lc, float %i.la)
  %i.le = load float, ptr %i.gv, align 4, !tbaa !13
  %i.lf = load float, ptr %i.jr, align 4, !tbaa !13
  %i.lg = tail call float @llvm.fmuladd.f32(float %i.le, float %i.lf, float %i.ld)
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.lg, ptr %i.lh, align 4, !tbaa !13
  %i.li = load float, ptr %1, align 4, !tbaa !13
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !13
  %i.ll = load float, ptr %i.el, align 4, !tbaa !13
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 4 uses
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !13
  %i.lo = fmul float %i.ll, %i.ln
  %i.lp = tail call float @llvm.fmuladd.f32(float %i.li, float %i.lk, float %i.lo)
  %i.lq = load float, ptr %i.er, align 4, !tbaa !13
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !13
  %i.lt = tail call float @llvm.fmuladd.f32(float %i.lq, float %i.ls, float %i.lp)
  %i.lu = load float, ptr %i.ew, align 4, !tbaa !13
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !13
  %i.lx = tail call float @llvm.fmuladd.f32(float %i.lu, float %i.lw, float %i.lt)
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.lx, ptr %i.ly, align 4, !tbaa !13
  %i.lz = load float, ptr %i.fb, align 4, !tbaa !13
  %i.ma = load float, ptr %i.lj, align 4, !tbaa !13
  %i.mb = load float, ptr %i.fe, align 4, !tbaa !13
  %i.mc = load float, ptr %i.lm, align 4, !tbaa !13
  %i.md = fmul float %i.mb, %i.mc
  %i.me = tail call float @llvm.fmuladd.f32(float %i.lz, float %i.ma, float %i.md)
  %i.mf = load float, ptr %i.fj, align 4, !tbaa !13
  %i.mg = load float, ptr %i.lr, align 4, !tbaa !13
  %i.mh = tail call float @llvm.fmuladd.f32(float %i.mf, float %i.mg, float %i.me)
  %i.mi = load float, ptr %i.fn, align 4, !tbaa !13
  %i.mj = load float, ptr %i.lv, align 4, !tbaa !13
  %i.mk = tail call float @llvm.fmuladd.f32(float %i.mi, float %i.mj, float %i.mh)
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.mk, ptr %i.ml, align 4, !tbaa !13
  %i.mm = load float, ptr %i.fs, align 4, !tbaa !13
  %i.mn = load float, ptr %i.lj, align 4, !tbaa !13
  %i.mo = load float, ptr %i.fv, align 4, !tbaa !13
  %i.mp = load float, ptr %i.lm, align 4, !tbaa !13
  %i.mq = fmul float %i.mo, %i.mp
  %i.mr = tail call float @llvm.fmuladd.f32(float %i.mm, float %i.mn, float %i.mq)
  %i.ms = load float, ptr %i.ga, align 4, !tbaa !13
  %i.mt = load float, ptr %i.lr, align 4, !tbaa !13
  %i.mu = tail call float @llvm.fmuladd.f32(float %i.ms, float %i.mt, float %i.mr)
  %i.mv = load float, ptr %i.ge, align 4, !tbaa !13
  %i.mw = load float, ptr %i.lv, align 4, !tbaa !13
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.mv, float %i.mw, float %i.mu)
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.mx, ptr %i.my, align 4, !tbaa !13
  %i.mz = load float, ptr %i.gj, align 4, !tbaa !13
  %i.na = load float, ptr %i.lj, align 4, !tbaa !13
  %i.nb = load float, ptr %i.gm, align 4, !tbaa !13
  %i.nc = load float, ptr %i.lm, align 4, !tbaa !13
  %i.nd = fmul float %i.nb, %i.nc
  %i.ne = tail call float @llvm.fmuladd.f32(float %i.mz, float %i.na, float %i.nd)
  %i.nf = load float, ptr %i.gr, align 4, !tbaa !13
  %i.ng = load float, ptr %i.lr, align 4, !tbaa !13
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.nf, float %i.ng, float %i.ne)
  %i.ni = load float, ptr %i.gv, align 4, !tbaa !13
  %i.nj = load float, ptr %i.lv, align 4, !tbaa !13
  %i.nk = tail call float @llvm.fmuladd.f32(float %i.ni, float %i.nj, float %i.nh)
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.nk, ptr %i.nl, align 4, !tbaa !13
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5scene12SViewFrustum7setFromERKN4core8CMatrix4IfEEb(ptr noundef nonnull align 4 dereferenceable(280) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, i1 noundef zeroext %2) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 6 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !13
  %i.c = load float, ptr %1, align 4, !tbaa !13
  %i.d = fadd float %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.d, ptr %i.f, align 4, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !13
  %i.k = fadd float %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.k, ptr %i.l, align 4, !tbaa !96
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 6 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !13
  %i.q = fadd float %i.n, %i.p                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.q, ptr %i.r, align 4, !tbaa !97
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 6 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !13
  %i.w = fadd float %i.t, %i.v                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.w, ptr %i.x, align 4, !tbaa !49
  %i.y = load float, ptr %i.a, align 4, !tbaa !13
  %i.z = load float, ptr %1, align 4, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ad = fsub float %i.y, %i.z                   ; 3 uses
  store float %i.ad, ptr %i.aa, align 4, !tbaa !95
  %i.ae = load float, ptr %i.g, align 4, !tbaa !13
  %i.af = load float, ptr %i.i, align 4, !tbaa !13
  %i.ag = fsub float %i.ae, %i.af                 ; 3 uses
  store float %i.ag, ptr %i.ab, align 4, !tbaa !96
  %i.ah = load float, ptr %i.m, align 4, !tbaa !13
  %i.ai = load float, ptr %i.o, align 4, !tbaa !13
  %i.aj = fsub float %i.ah, %i.ai                 ; 3 uses
  store float %i.aj, ptr %i.ac, align 4, !tbaa !97
  %i.ak = load float, ptr %i.s, align 4, !tbaa !13
  %i.al = load float, ptr %i.u, align 4, !tbaa !13
  %i.am = fsub float %i.ak, %i.al                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %i.am, ptr %i.an, align 4, !tbaa !49
  %i.ao = load float, ptr %i.a, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bb = fsub float %i.ao, %i.aq                 ; 3 uses
  store float %i.bb, ptr %i.ar, align 4, !tbaa !95
  %i.bc = load float, ptr %i.g, align 4, !tbaa !13
  %i.bd = load float, ptr %i.as, align 4, !tbaa !13
  %i.be = fsub float %i.bc, %i.bd                 ; 3 uses
  store float %i.be, ptr %i.at, align 4, !tbaa !96
  %i.bf = load float, ptr %i.m, align 4, !tbaa !13
  %i.bg = load float, ptr %i.au, align 4, !tbaa !13
  %i.bh = fsub float %i.bf, %i.bg                 ; 3 uses
  store float %i.bh, ptr %i.av, align 4, !tbaa !97
  %i.bi = load float, ptr %i.s, align 4, !tbaa !13
  %i.bj = load float, ptr %i.aw, align 4, !tbaa !13
  %i.bk = fsub float %i.bi, %i.bj
  store float %i.bk, ptr %i.ax, align 4, !tbaa !49
  %i.bl = load float, ptr %i.a, align 4, !tbaa !13
  %i.bm = load float, ptr %i.ap, align 4, !tbaa !13
  %i.bn = fadd float %i.bl, %i.bm                 ; 3 uses
  store float %i.bn, ptr %i.ay, align 4, !tbaa !95
  %i.bo = load float, ptr %i.g, align 4, !tbaa !13
  %i.bp = load float, ptr %i.as, align 4, !tbaa !13
  %i.bq = fadd float %i.bo, %i.bp                 ; 3 uses
  store float %i.bq, ptr %i.az, align 4, !tbaa !96
  %i.br = load float, ptr %i.m, align 4, !tbaa !13
  %i.bs = load float, ptr %i.au, align 4, !tbaa !13
  %i.bt = fadd float %i.br, %i.bs                 ; 3 uses
  store float %i.bt, ptr %i.ba, align 4, !tbaa !97
  %i.bu = load float, ptr %i.s, align 4, !tbaa !13
  %i.bv = load float, ptr %i.aw, align 4, !tbaa !13
  %i.bw = fadd float %i.bu, %i.bv                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.bw, ptr %i.bx, align 4, !tbaa !49
  %i.by = load float, ptr %i.a, align 4, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.cg = fsub float %i.by, %i.ca                 ; 3 uses
  store float %i.cg, ptr %i.e, align 4, !tbaa !95
  %i.ch = load float, ptr %i.g, align 4, !tbaa !13
  %i.ci = load float, ptr %i.cb, align 4, !tbaa !13
  %i.cj = fsub float %i.ch, %i.ci                 ; 3 uses
  store float %i.cj, ptr %i.cc, align 4, !tbaa !96
  %i.ck = load float, ptr %i.m, align 4, !tbaa !13
  %i.cl = load float, ptr %i.cd, align 4, !tbaa !13
  %i.cm = fsub float %i.ck, %i.cl                 ; 3 uses
  store float %i.cm, ptr %i.ce, align 4, !tbaa !97
  %i.cn = load float, ptr %i.s, align 4, !tbaa !13
  %i.co = load float, ptr %i.cf, align 4, !tbaa !13
  %i.cp = fsub float %i.cn, %i.co                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cp, ptr %i.cq, align 4, !tbaa !49
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cr = load float, ptr %i.bz, align 4, !tbaa !13 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.cr, ptr %i.cs, align 4, !tbaa !95
  %i.ct = load float, ptr %i.cb, align 4, !tbaa !13 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ct, ptr %i.cu, align 4, !tbaa !96
  %i.cv = load float, ptr %i.cd, align 4, !tbaa !13 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cv, ptr %i.cw, align 4, !tbaa !97
  %i.cx = load float, ptr %i.cf, align 4, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %3 = load float, ptr %i.a, align 4, !tbaa !13
  %4 = load float, ptr %i.bz, align 4, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 36
  %5 = fadd float %3, %4                          ; 2 uses
  store float %5, ptr %i.cy, align 4, !tbaa !95
  %6 = load float, ptr %i.g, align 4, !tbaa !13
  %7 = load float, ptr %i.cb, align 4, !tbaa !13
  %8 = fadd float %6, %7                          ; 2 uses
  store float %8, ptr %i.cz, align 4, !tbaa !96
  %9 = load float, ptr %i.m, align 4, !tbaa !13
  %10 = load float, ptr %i.cd, align 4, !tbaa !13
  %11 = fadd float %9, %10                        ; 2 uses
  store float %11, ptr %i.da, align 4, !tbaa !97
  %12 = load float, ptr %i.s, align 4, !tbaa !13
  %13 = load float, ptr %i.cf, align 4, !tbaa !13
  %14 = fadd float %12, %13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.db = phi float [ %i.cv, %bb.b ], [ %11, %bb.c ] ; 2 uses
  %i.dc = phi float [ %i.ct, %bb.b ], [ %8, %bb.c ] ; 2 uses
  %i.dd = phi float [ %i.cr, %bb.b ], [ %5, %bb.c ] ; 2 uses
  %.sink = phi float [ %i.cx, %bb.b ], [ %14, %bb.c ]
  %i.de = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.df = insertelement <4 x float> %i.de, float %i.cj, i64 1
  %i.dg = insertelement <4 x float> %i.df, float %i.cm, i64 2
  %i.dh = insertelement <4 x float> %i.dg, float %i.cp, i64 3
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dj = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %i.dc, i64 1
  %i.dl = insertelement <4 x float> %i.dk, float %i.db, i64 2
  %i.dm = insertelement <4 x float> %i.dl, float %.sink, i64 3
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dp = load <2 x float>, ptr %i.dn, align 4, !tbaa !13
  %i.dq = load float, ptr %i.do, align 4, !tbaa !83
  %i.dr = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.ds = insertelement <4 x float> %i.dr, float %i.q, i64 2
  %i.dt = insertelement <4 x float> %i.ds, float %i.w, i64 3
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dv = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.dw = insertelement <4 x float> %i.dv, float %i.dc, i64 1
  %i.dx = insertelement <4 x float> %i.dw, float %i.dq, i64 2
  %i.dy = insertelement <4 x float> %i.dx, float %i.ag, i64 3 ; 2 uses
  %i.dz = fmul <4 x float> %i.dy, %i.dy
  %i.ea = insertelement <4 x float> %i.dr, float %i.cg, i64 0
  %i.eb = insertelement <4 x float> %i.ea, float %i.dd, i64 1
  %i.ec = insertelement <4 x float> %i.eb, float %i.ad, i64 3 ; 2 uses
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> %i.ec, <4 x float> %i.dz)
  %i.ee = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.ef = insertelement <4 x float> %i.ee, float %i.db, i64 1
  %i.eg = insertelement <4 x float> %i.ef, float %i.q, i64 2
  %i.eh = insertelement <4 x float> %i.eg, float %i.aj, i64 3 ; 2 uses
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.eh, <4 x float> %i.ed)
  %i.ej = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ei)
  %i.ek = fdiv <4 x float> splat (float -1.000000e+00), %i.ej ; 4 uses
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = fmul <4 x float> %i.dh, %i.el
  store <4 x float> %i.em, ptr %i.e, align 4, !tbaa !13
  %i.en = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eo = fmul <4 x float> %i.dm, %i.en
  store <4 x float> %i.eo, ptr %i.di, align 4, !tbaa !13
  %i.ep = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.eq = fmul <4 x float> %i.dt, %i.ep
  store <4 x float> %i.eq, ptr %i.dn, align 4, !tbaa !13
  %i.er = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.ag, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.aj, i64 2
  %i.eu = insertelement <4 x float> %i.et, float %i.am, i64 3
  %i.ev = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ew = fmul <4 x float> %i.eu, %i.ev
  store <4 x float> %i.ew, ptr %i.du, align 4, !tbaa !13
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ey = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.ez = insertelement <2 x float> %i.ey, float %i.be, i64 1 ; 2 uses
  %i.fa = fmul <2 x float> %i.ez, %i.ez
  %i.fb = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.fc = insertelement <4 x float> %i.fb, float %i.bq, i64 1
  %i.fd = insertelement <4 x float> %i.fc, float %i.bt, i64 2
  %i.fe = insertelement <4 x float> %i.fd, float %i.bw, i64 3
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fg = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.bb, i64 1 ; 2 uses
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.fh, <2 x float> %i.fa)
  %i.fj = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.fk = insertelement <2 x float> %i.fj, float %i.bh, i64 1 ; 2 uses
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.fk, <2 x float> %i.fi)
  %i.fm = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.fl)
  %i.fn = fdiv <2 x float> splat (float -1.000000e+00), %i.fm ; 2 uses
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fp = fmul <4 x float> %i.fe, %i.fo
  store <4 x float> %i.fp, ptr %i.ex, align 4, !tbaa !13
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !49
  %i.fs = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.ft = insertelement <4 x float> %i.fs, float %i.be, i64 1
  %i.fu = insertelement <4 x float> %i.ft, float %i.bh, i64 2
  %i.fv = insertelement <4 x float> %i.fu, float %i.fr, i64 3
  %i.fw = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fx = fmul <4 x float> %i.fv, %i.fw
  store <4 x float> %i.fx, ptr %i.ff, align 4, !tbaa !13
  tail call void @_ZN5scene12SViewFrustum22recalculateBoundingBoxEv(ptr noundef nonnull align 4 dereferenceable(280) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5scene16CCameraSceneNode21bindTargetAndRotationEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(646) initializes((645, 646)) %0, i1 noundef zeroext %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 645
  store i8 %i.a, ptr %i.b, align 1, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5scene16CCameraSceneNode27getTargetAndRotationBindingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(646) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 645
  %i.b = load i8, ptr %i.a, align 1, !tbaa !51, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5scene16CCameraSceneNode5cloneEPNS_10ISceneNodeEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(646) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %.0 = select i1 %.not, ptr %i.b, ptr %1         ; 2 uses
  %.not27 = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.024 = select i1 %.not27, ptr %i.d, ptr %2     ; 4 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(664) ptr @_Znwm(i64 noundef 664) #29 ; 24 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  invoke void @_ZN5scene16CCameraSceneNodeC1EPNS_10ISceneNodeEPNS_13ISceneManagerEiRKN4core8vector3dIfEES9_(ptr noundef nonnull align 8 dereferenceable(646) %i.e, ptr noundef %.0, ptr noundef %.024, i32 noundef %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.i)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !tbaa.struct !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(12) %i.h, i64 12, i1 false), !tbaa.struct !18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull align 8 dereferenceable(12) %i.q, i64 12, i1 false), !tbaa.struct !18
  %i.s = load i32, ptr %i.f, align 8, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store i32 %i.s, ptr %i.t, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 212
  %i.w = load <2 x i16>, ptr %i.u, align 4, !tbaa !100
  store <2 x i16> %i.w, ptr %i.v, align 4, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = load i8, ptr %i.x, align 8, !tbaa !69, !range !72, !noundef !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  store i8 %i.y, ptr %i.z, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !70, !range !72, !noundef !73
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 217
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !70
  %.not.i = icmp eq ptr %.024, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !66
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.ad, %bb.c ], [ %.024, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store ptr %.sink.i, ptr %i.ae, align 8, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.017.021.i = load ptr, ptr %i.af, align 8, !tbaa !62 ; 2 uses
  %.not2022.i = icmp eq ptr %.sroa.017.021.i, %i.af
  br i1 %.not2022.i, label %_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.017.023.i = phi ptr [ %.sroa.017.0.i, %.lr.ph.i ], [ %.sroa.017.021.i, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.017.023.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !84 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 272
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(218) %i.ah, ptr noundef nonnull align 8 dereferenceable(218) %i.e, ptr noundef %.024), !inline_history !98 ; 0 uses
  %.sroa.017.0.i = load ptr, ptr %.sroa.017.023.i, align 8, !tbaa !62 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.017.0.i, %i.af
  br i1 %.not20.i, label %_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit, label %.lr.ph.i, !llvm.loop !99

_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit: ; preds = %.lr.ph.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.an = load i8, ptr %i.am, align 8, !tbaa !59, !range !72, !noundef !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  store i8 %i.an, ptr %i.ao, align 8, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ap, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false), !tbaa.struct !18
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr noundef nonnull align 8 dereferenceable(12) %i.aq, i64 12, i1 false), !tbaa.struct !18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 284
  %i.au = load <4 x float>, ptr %i.as, align 4, !tbaa !13
  store <4 x float> %i.au, ptr %i.at, align 4, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 300
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(280) %i.aw, ptr noundef nonnull align 4 dereferenceable(280) %i.av, i64 280, i1 false), !tbaa.struct !101
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 580
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ay, ptr noundef nonnull align 4 dereferenceable(64) %i.ax, i64 64, i1 false), !tbaa.struct !81
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !50, !range !72, !noundef !73
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 644
end_hunk_0
begin_hunk_1_@_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_:bb.a

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !117
  %i.s = load ptr, ptr %0, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store i8 1, ptr %i.b, align 8, !tbaa !60
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !60
  br i1 %i.d, label %bb.h, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !78
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #28
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit, %bb.b
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #21

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #21

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !88     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !13
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !87
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #30
  unreachable

_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !13
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !tbaa.struct !18, !alias.scope !124
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !122

_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #28
  br label %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !123
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.a, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.03.06 = load ptr, ptr %i.b, align 8, !tbaa !62 ; 2 uses
  %.not7 = icmp eq ptr %.sroa.03.06, %i.b
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.08 = phi ptr [ %.sroa.03.0, %.lr.ph ], [ %.sroa.03.06, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %i.d, ptr noundef %1)
  %.sroa.03.0 = load ptr, ptr %.sroa.03.08, align 8, !tbaa !62 ; 2 uses
  %.not = icmp eq ptr %.sroa.03.0, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !125

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #24

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { noreturn }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !71}
!1 = distinct !{!1, !71}
!2 = distinct !{null}
!3 = distinct !{ptr @_ZN5scene16CCameraSceneNodeD1Ev, ptr @_ZN5scene10ISceneNode9removeAllEv, null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTSN4core8vector3dIfEE", !12, i64 0, !12, i64 4, !12, i64 8}
!15 = !{!14, !12, i64 8}
!16 = !{!"vtable pointer", !7, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13}
!19 = !{!"bool", !8, i64 0}
!20 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !8, i64 0, !19, i64 32}
!21 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !20, i64 0}
!22 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !21, i64 0}
!23 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !22, i64 0}
!24 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !23, i64 0}
!25 = !{!"_ZTSN4core8CMatrix4IfEE", !8, i64 0}
!26 = !{!"any pointer", !8, i64 0}
!27 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !26, i64 0}
!28 = !{!"_ZTSNSt8__detail15_List_node_baseE", !27, i64 0, !27, i64 8}
!29 = !{!"long", !8, i64 0}
!30 = !{!"_ZTSNSt8__detail17_List_node_headerE", !28, i64 0, !29, i64 16}
!31 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EE10_List_implE", !30, i64 0}
!32 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EEE", !31, i64 0}
!33 = !{!"_ZTSNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EEE", !32, i64 0}
!34 = !{!"_ZTSSt22_Optional_payload_baseISt14_List_iteratorIPN5scene10ISceneNodeEEE", !8, i64 0, !19, i64 8}
!35 = !{!"_ZTSSt17_Optional_payloadISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1ELb1EE", !34, i64 0}
!36 = !{!"_ZTSSt14_Optional_baseISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1EE", !35, i64 0}
!37 = !{!"_ZTSSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEE", !36, i64 0}
!38 = !{!"p1 _ZTSN5scene10ISceneNodeE", !26, i64 0}
!39 = !{!"p1 _ZTSN5scene13ISceneManagerE", !26, i64 0}
!40 = !{!"short", !8, i64 0}
!41 = !{!"_ZTSN5scene10ISceneNodeE", !24, i64 8, !25, i64 48, !14, i64 112, !14, i64 124, !14, i64 136, !33, i64 152, !37, i64 176, !38, i64 192, !39, i64 200, !9, i64 208, !40, i64 212, !40, i64 214, !19, i64 216, !19, i64 217}
!42 = !{!"_ZTS14IEventReceiver"}
!43 = !{!"_ZTSN5scene16ICameraSceneNodeE", !41, i64 0, !42, i64 224, !19, i64 232}
!44 = !{!"_ZTSN4core8aabbox3dIfEE", !14, i64 0, !14, i64 12}
!45 = !{!"_ZTSN5scene12SViewFrustumE", !14, i64 0, !8, i64 12, !44, i64 108, !8, i64 132, !12, i64 260, !12, i64 264, !14, i64 268}
!46 = !{!"_ZTSN5scene16CCameraSceneNodeE", !43, i64 0, !44, i64 236, !14, i64 260, !14, i64 272, !12, i64 284, !12, i64 288, !12, i64 292, !12, i64 296, !45, i64 300, !25, i64 580, !19, i64 644, !19, i64 645}
!47 = !{!46, !12, i64 296}
!48 = !{!"_ZTSN4core7plane3dIfEE", !14, i64 0, !12, i64 12}
!49 = !{!48, !12, i64 12}
!50 = !{!46, !19, i64 644}
!51 = !{!46, !19, i64 645}
!52 = !{!"_ZTSN4core11dimension2dIjEE", !9, i64 0, !9, i64 4}
!53 = !{!52, !9, i64 4}
!54 = !{!52, !9, i64 0}
!55 = !{!46, !12, i64 288}
!56 = !{!46, !12, i64 292}
!57 = !{!45, !12, i64 264}
!58 = !{!46, !12, i64 284}
!59 = !{!43, !19, i64 232}
!60 = !{!20, !19, i64 32}
!61 = !{!28, !27, i64 8}
!62 = !{!28, !27, i64 0}
!63 = !{!30, !29, i64 16}
!64 = !{!34, !19, i64 8}
!65 = !{!41, !38, i64 192}
!66 = !{!41, !39, i64 200}
!67 = !{!41, !9, i64 208}
!68 = !{!41, !40, i64 214}
!69 = !{!41, !19, i64 216}
!70 = !{!41, !19, i64 217}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{i8 0, i8 2}
!73 = !{}
!74 = !{!"p1 omnipotent char", !26, i64 0}
!75 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !74, i64 0}
!76 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !75, i64 0, !29, i64 8, !8, i64 16}
!77 = !{!76, !74, i64 0}
!78 = !{!8, !8, i64 0}
!79 = !{!"_ZTS17IReferenceCounted", !9, i64 8}
!80 = !{!79, !9, i64 8}
!81 = !{i64 0, i64 64, !78}
!82 = !{!14, !12, i64 0}
!83 = !{!14, !12, i64 4}
!84 = !{!38, !38, i64 0}
!85 = !{!"p1 _ZTSN4core8vector3dIfEE", !26, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!86, !85, i64 8}
!88 = !{!86, !85, i64 0}
!89 = !{!32, !29, i64 16}
!90 = !{!27, !27, i64 0}
!91 = !{ptr @_ZN5scene16CCameraSceneNodeD1Ev}
!92 = !{!41, !40, i64 212}
!93 = !{ptr @_ZN5scene10ISceneNode19OnRegisterSceneNodeEv}
!94 = !{!"branch_weights", i32 1, i32 1048575}
!95 = !{!48, !12, i64 0}
!96 = !{!48, !12, i64 4}
!97 = !{!48, !12, i64 8}
!98 = distinct !{null}
!99 = distinct !{!99, !71}
!100 = !{!40, !40, i64 0}
!101 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13, i64 12, i64 96, !78, i64 108, i64 4, !13, i64 112, i64 4, !13, i64 116, i64 4, !13, i64 120, i64 4, !13, i64 124, i64 4, !13, i64 128, i64 4, !13, i64 132, i64 128, !78, i64 260, i64 4, !13, i64 264, i64 4, !13, i64 268, i64 4, !13, i64 272, i64 4, !13, i64 276, i64 4, !13}
!102 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13, i64 12, i64 4, !13, i64 16, i64 4, !13, i64 20, i64 4, !13}
!103 = distinct !{!103, !71}
!104 = !{!85, !85, i64 0}
!105 = distinct !{!105, !"_ZNK4core8CMatrix4IfEmlERKS1_"}
!106 = distinct !{!106, !105, !"_ZNK4core8CMatrix4IfEmlERKS1_: argument 0"}
!107 = !{!106}
!108 = distinct !{ptr @_ZN5scene10ISceneNode9removeAllEv, null}
!109 = !{!44, !12, i64 12}
!110 = !{!44, !12, i64 16}
!111 = !{!44, !12, i64 20}
!112 = !{!44, !12, i64 0}
!113 = !{!44, !12, i64 4}
!114 = !{!44, !12, i64 8}
!115 = !{!45, !12, i64 260}
!116 = !{!75, !74, i64 0}
!117 = !{!76, !29, i64 8}
!118 = !{!29, !29, i64 0}
!119 = distinct !{!119, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!120 = distinct !{!120, !119, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!121 = distinct !{!121, !119, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!122 = distinct !{!122, !71}
!123 = !{!86, !85, i64 16}
!124 = !{!121, !120}
!125 = distinct !{!125, !71}
end_hunk_1
