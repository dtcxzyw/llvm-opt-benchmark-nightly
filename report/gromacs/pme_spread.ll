Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a
  %i.ja = add nsw i64 %wide.trip.count342.i, -1   ; 3 uses
  %min.iters.check240 = icmp ult i64 %i.ja, 8
  %n.vec242 = and i64 %i.ja, -8                   ; 3 uses
  %i.jb = or disjoint i64 %n.vec242, 1
  %broadcast.splatinsert245 = insertelement <8 x i64> poison, i64 %i.hw, i64 0
  %broadcast.splat246 = shufflevector <8 x i64> %broadcast.splatinsert245, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert247 = insertelement <8 x float> poison, float %i.hv, i64 0
  %i.jc = shufflevector <8 x float> %broadcast.splatinsert247, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n262 = icmp eq i64 %i.ja, %n.vec242
  %min.iters.check180 = icmp ult i32 %i.he, 9
  %min.iters.check182 = icmp ult i32 %i.he, 33
  %i.jd = and i64 %i.ip, 24
  %n.vec184 = and i64 %i.ip, -32                  ; 4 uses
  %i.je = or disjoint i64 %n.vec184, 1
  %cmp.n197 = icmp eq i64 %i.ip, %n.vec184
  %min.epilog.iters.check203 = icmp eq i64 %i.jd, 0
  %n.vec205 = and i64 %i.ip, -8                   ; 3 uses
  %i.jf = or disjoint i64 %n.vec205, 1
  %cmp.n212 = icmp eq i64 %i.ip, %n.vec205
  %i.jg = add nsw i64 %wide.trip.count342.i, -1   ; 3 uses
  %min.iters.check158 = icmp ult i64 %i.jg, 8
  %n.vec160 = and i64 %i.jg, -8                   ; 3 uses
  %i.jh = or disjoint i64 %n.vec160, 1
  %broadcast.splatinsert163 = insertelement <8 x i64> poison, i64 %i.hw, i64 0
  %broadcast.splat164 = shufflevector <8 x i64> %broadcast.splatinsert163, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert165 = insertelement <8 x float> poison, float %i.hv, i64 0
  %i.ji = shufflevector <8 x float> %broadcast.splatinsert165, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n177 = icmp eq i64 %i.jg, %n.vec160
  br label %.lr.ph272.split.i

.lr.ph272.split.us.i:                             ; preds = %.loopexit230.us.i, %.lr.ph272.split.us.preheader.i
  %indvars.iv313.i = phi i64 [ 0, %.lr.ph272.split.us.preheader.i ], [ %indvars.iv.next314.i, %.loopexit230.us.i ] ; 4 uses
  %i.jj = shl nuw nsw i64 %indvars.iv313.i, 4
  %i.jk = and i64 %i.jj, 17179869168              ; 3 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv313.i
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !105
  %.pre429.i = sext i32 %i.jm to i64              ; 2 uses
  br i1 %i.hm, label %.preheader229.us.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph272.split.us.i
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %.pre429.i
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !134
  %i.jp = fcmp une float %i.jo, 0.000000e+00
  br i1 %i.jp, label %.preheader229.us.i, label %.loopexit230.us.i

.preheader229.us.i:                               ; preds = %bb.k, %.lr.ph272.split.us.i
  %i.jq = getelementptr inbounds [12 x i8], ptr %i.hg, i64 %.pre429.i ; 3 uses
  %i.jr = shl nuw nsw i64 %indvars.iv313.i, 2     ; 6 uses
  %i.js = load ptr, ptr %i.hb, align 8, !tbaa !328 ; 4 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jr
  %i.ju = or disjoint i64 %i.jr, 1                ; 3 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ju
  %i.jw = or disjoint i64 %i.jr, 2                ; 3 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jw
  %i.jy = or disjoint i64 %i.jr, 3                ; 3 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jy
  %i.ka = load ptr, ptr %i.ha, align 8, !tbaa !328
  %scevgep305.i = getelementptr nuw i8, ptr %i.ka, i64 %i.jk
  %i.kb = load float, ptr %i.jq, align 4, !tbaa !134 ; 9 uses
  %i.kc = fsub float 1.000000e+00, %i.kb          ; 4 uses
  %i.kd = fmul float %i.kb, 5.000000e-01
  %i.ke = fadd float %i.kb, 1.000000e+00          ; 2 uses
  %i.kf = fsub float 2.000000e+00, %i.kb          ; 2 uses
  %i.kg = fmul float %i.kc, 5.000000e-01
  %i.kh = fmul float %i.kb, %i.kf
  %i.ki = call float @llvm.fmuladd.f32(float %i.ke, float %i.kc, float %i.kh)
  %i.kj = fmul float %i.ki, 5.000000e-01          ; 4 uses
  %i.kk = fmul float %i.kc, %i.kg                 ; 4 uses
  %i.kl = fmul float %i.kb, %i.kd                 ; 4 uses
  %i.km = fneg float %i.kk
  store float %i.km, ptr %i.jt, align 4, !tbaa !134
  %i.kn = fsub float %i.kk, %i.kj
  store float %i.kn, ptr %i.jv, align 4, !tbaa !134
  %i.ko = fsub float %i.kj, %i.kl
  store float %i.ko, ptr %i.jx, align 4, !tbaa !134
  store float %i.kl, ptr %i.jz, align 4, !tbaa !134
  %i.kp = fmul float %i.kb, f0x3EAAAAAB
  %i.kq = fsub float 3.000000e+00, %i.kb
  %i.kr = fmul float %i.kq, %i.kl
  %i.ks = call float @llvm.fmuladd.f32(float %i.ke, float %i.kj, float %i.kr)
  %i.kt = fadd float %i.kb, 2.000000e+00
  %i.ku = fmul float %i.kf, %i.kj
  %i.kv = call float @llvm.fmuladd.f32(float %i.kt, float %i.kk, float %i.ku)
  %i.kw = fmul float %i.kc, f0x3EAAAAAB
  %i.kx = insertelement <4 x float> poison, float %i.kw, i64 0
  %i.ky = insertelement <4 x float> %i.kx, float %i.kv, i64 1
  %i.kz = insertelement <4 x float> %i.ky, float %i.ks, i64 2
  %i.la = insertelement <4 x float> %i.kz, float %i.kp, i64 3
  %i.lb = insertelement <4 x float> <float poison, float f0x3EAAAAAB, float f0x3EAAAAAB, float poison>, float %i.kk, i64 0
  %i.lc = insertelement <4 x float> %i.lb, float %i.kl, i64 3
  %i.ld = fmul <4 x float> %i.la, %i.lc
  store <4 x float> %i.ld, ptr %scevgep305.i, align 4, !tbaa !134
  %i.le = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.lf = load ptr, ptr %i.if, align 8, !tbaa !328 ; 4 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.jr
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.ju
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.jw
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.jy
  %i.lk = load ptr, ptr %i.ig, align 8, !tbaa !328
  %scevgep305.1.i = getelementptr nuw i8, ptr %i.lk, i64 %i.jk
  %i.ll = load float, ptr %i.le, align 4, !tbaa !134 ; 9 uses
  %i.lm = fsub float 1.000000e+00, %i.ll          ; 4 uses
  %i.ln = fmul float %i.ll, 5.000000e-01
  %i.lo = fadd float %i.ll, 1.000000e+00          ; 2 uses
  %i.lp = fsub float 2.000000e+00, %i.ll          ; 2 uses
  %i.lq = fmul float %i.lm, 5.000000e-01
  %i.lr = fmul float %i.ll, %i.lp
  %i.ls = call float @llvm.fmuladd.f32(float %i.lo, float %i.lm, float %i.lr)
  %i.lt = fmul float %i.ls, 5.000000e-01          ; 4 uses
  %i.lu = fmul float %i.lm, %i.lq                 ; 4 uses
  %i.lv = fmul float %i.ll, %i.ln                 ; 4 uses
  %i.lw = fneg float %i.lu
  store float %i.lw, ptr %i.lg, align 4, !tbaa !134
  %i.lx = fsub float %i.lu, %i.lt
  store float %i.lx, ptr %i.lh, align 4, !tbaa !134
  %i.ly = fsub float %i.lt, %i.lv
  store float %i.ly, ptr %i.li, align 4, !tbaa !134
  store float %i.lv, ptr %i.lj, align 4, !tbaa !134
  %i.lz = fmul float %i.ll, f0x3EAAAAAB
  %i.ma = fsub float 3.000000e+00, %i.ll
  %i.mb = fmul float %i.ma, %i.lv
  %i.mc = call float @llvm.fmuladd.f32(float %i.lo, float %i.lt, float %i.mb)
  %i.md = fadd float %i.ll, 2.000000e+00
  %i.me = fmul float %i.lp, %i.lt
  %i.mf = call float @llvm.fmuladd.f32(float %i.md, float %i.lu, float %i.me)
  %i.mg = fmul float %i.lm, f0x3EAAAAAB
  %i.mh = insertelement <4 x float> poison, float %i.mg, i64 0
  %i.mi = insertelement <4 x float> %i.mh, float %i.mf, i64 1
  %i.mj = insertelement <4 x float> %i.mi, float %i.mc, i64 2
  %i.mk = insertelement <4 x float> %i.mj, float %i.lz, i64 3
  %i.ml = insertelement <4 x float> <float poison, float f0x3EAAAAAB, float f0x3EAAAAAB, float poison>, float %i.lu, i64 0
  %i.mm = insertelement <4 x float> %i.ml, float %i.lv, i64 3
  %i.mn = fmul <4 x float> %i.mk, %i.mm
  store <4 x float> %i.mn, ptr %scevgep305.1.i, align 4, !tbaa !134
  %i.mo = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.mp = load ptr, ptr %i.ih, align 8, !tbaa !328 ; 4 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.jr
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.ju
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.jw
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.jy
  %i.mu = load ptr, ptr %i.ii, align 8, !tbaa !328
  %scevgep305.2.i = getelementptr nuw i8, ptr %i.mu, i64 %i.jk
  %i.mv = load float, ptr %i.mo, align 4, !tbaa !134 ; 9 uses
  %i.mw = fsub float 1.000000e+00, %i.mv          ; 4 uses
  %i.mx = fmul float %i.mv, 5.000000e-01
  %i.my = fadd float %i.mv, 1.000000e+00          ; 2 uses
  %i.mz = fsub float 2.000000e+00, %i.mv          ; 2 uses
  %i.na = fmul float %i.mw, 5.000000e-01
  %i.nb = fmul float %i.mv, %i.mz
  %i.nc = call float @llvm.fmuladd.f32(float %i.my, float %i.mw, float %i.nb)
  %i.nd = fmul float %i.nc, 5.000000e-01          ; 4 uses
  %i.ne = fmul float %i.mw, %i.na                 ; 4 uses
  %i.nf = fmul float %i.mv, %i.mx                 ; 4 uses
  %i.ng = fneg float %i.ne
  store float %i.ng, ptr %i.mq, align 4, !tbaa !134
  %i.nh = fsub float %i.ne, %i.nd
  store float %i.nh, ptr %i.mr, align 4, !tbaa !134
  %i.ni = fsub float %i.nd, %i.nf
  store float %i.ni, ptr %i.ms, align 4, !tbaa !134
  store float %i.nf, ptr %i.mt, align 4, !tbaa !134
  %i.nj = fmul float %i.mv, f0x3EAAAAAB
  %i.nk = fsub float 3.000000e+00, %i.mv
  %i.nl = fmul float %i.nk, %i.nf
  %i.nm = call float @llvm.fmuladd.f32(float %i.my, float %i.nd, float %i.nl)
  %i.nn = fadd float %i.mv, 2.000000e+00
  %i.no = fmul float %i.mz, %i.nd
  %i.np = call float @llvm.fmuladd.f32(float %i.nn, float %i.ne, float %i.no)
  %i.nq = fmul float %i.mw, f0x3EAAAAAB
  %i.nr = insertelement <4 x float> poison, float %i.nq, i64 0
  %i.ns = insertelement <4 x float> %i.nr, float %i.np, i64 1
  %i.nt = insertelement <4 x float> %i.ns, float %i.nm, i64 2
  %i.nu = insertelement <4 x float> %i.nt, float %i.nj, i64 3
  %i.nv = insertelement <4 x float> <float poison, float f0x3EAAAAAB, float f0x3EAAAAAB, float poison>, float %i.ne, i64 0
  %i.nw = insertelement <4 x float> %i.nv, float %i.nf, i64 3
  %i.nx = fmul <4 x float> %i.nu, %i.nw
  store <4 x float> %i.nx, ptr %scevgep305.2.i, align 4, !tbaa !134
  br label %.loopexit230.us.i

.loopexit230.us.i:                                ; preds = %.preheader229.us.i, %bb.k
  %indvars.iv.next314.i = add nuw nsw i64 %indvars.iv313.i, 1 ; 2 uses
  %exitcond317.not.i = icmp eq i64 %indvars.iv.next314.i, %wide.trip.count316.i
  br i1 %exitcond317.not.i, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit, label %.lr.ph272.split.us.i, !llvm.loop !271

.lr.ph272.split.us274.i:                          ; preds = %.loopexit232.us.i, %.lr.ph272.split.us274.preheader.i
  %indvars.iv293.i = phi i64 [ 0, %.lr.ph272.split.us274.preheader.i ], [ %indvars.iv.next294.i, %.loopexit232.us.i ] ; 3 uses
  %i.ny = mul nuw nsw i64 %indvars.iv293.i, 20    ; 4 uses
  %i.nz = and i64 %i.ny, 17179869180              ; 3 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv293.i
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !105
  %.pre431.i = sext i32 %i.ob to i64              ; 2 uses
  br i1 %i.hm, label %.preheader231.us.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph272.split.us274.i
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %.pre431.i
  %i.od = load float, ptr %i.oc, align 4, !tbaa !134
  %i.oe = fcmp une float %i.od, 0.000000e+00
  br i1 %i.oe, label %.preheader231.us.i, label %.loopexit232.us.i

.preheader231.us.i:                               ; preds = %bb.l, %.lr.ph272.split.us274.i
  %i.of = getelementptr inbounds [12 x i8], ptr %i.hg, i64 %.pre431.i ; 3 uses
  %9 = load float, ptr %i.of, align 4, !tbaa !134 ; 12 uses
  %10 = fmul float %9, 5.000000e-01
  %i.og = load ptr, ptr %i.hb, align 8, !tbaa !328
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.ny ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %11 = fmul float %9, 2.500000e-01
  %i.om = load ptr, ptr %i.ha, align 8, !tbaa !328
  %scevgep.i = getelementptr nuw i8, ptr %i.om, i64 %i.nz ; 2 uses
  %i.on = fsub float 1.000000e+00, %9             ; 5 uses
  %i.oo = fmul float %9, %10                      ; 2 uses
  %i.op = fadd float %9, 1.000000e+00             ; 3 uses
  %i.oq = fsub float 2.000000e+00, %9             ; 3 uses
  %i.or = fmul float %9, %i.oq
  %i.os = call float @llvm.fmuladd.f32(float %i.op, float %i.on, float %i.or)
  %i.ot = fmul float %i.os, 5.000000e-01          ; 2 uses
  %i.ou = fmul float %i.on, 5.000000e-01
  %i.ov = fmul float %i.on, %i.ou                 ; 2 uses
  %i.ow = fmul float %9, f0x3EAAAAAB
  %i.ox = fmul float %i.ow, %i.oo                 ; 4 uses
  %i.oy = fadd float %9, 2.000000e+00             ; 2 uses
  %i.oz = fmul float %i.oq, %i.ot
  %i.pa = call float @llvm.fmuladd.f32(float %i.oy, float %i.ov, float %i.oz)
  %i.pb = fmul float %i.pa, f0x3EAAAAAB           ; 4 uses
  %i.pc = fsub float 3.000000e+00, %9             ; 2 uses
  %i.pd = fmul float %i.pc, %i.oo
  %i.pe = call float @llvm.fmuladd.f32(float %i.op, float %i.ot, float %i.pd)
  %i.pf = fmul float %i.pe, f0x3EAAAAAB           ; 4 uses
  %i.pg = fmul float %i.on, f0x3EAAAAAB
  %i.ph = fmul float %i.pg, %i.ov                 ; 4 uses
  %i.pi = fneg float %i.ph
  store float %i.pi, ptr %i.oh, align 4, !tbaa !134
  %i.pj = fsub float %i.ph, %i.pb
  store float %i.pj, ptr %i.oi, align 4, !tbaa !134
  %i.pk = fsub float %i.pb, %i.pf
  store float %i.pk, ptr %i.oj, align 4, !tbaa !134
  %i.pl = fsub float %i.pf, %i.ox
  store float %i.pl, ptr %i.ok, align 4, !tbaa !134
  store float %i.ox, ptr %i.ol, align 4, !tbaa !134
  %i.pm = fmul float %11, %i.ox
  %i.pn = fsub float 4.000000e+00, %9
  %i.po = fmul float %i.pn, %i.ox
  %i.pp = call float @llvm.fmuladd.f32(float %i.op, float %i.pf, float %i.po)
  %i.pq = fmul float %i.pc, %i.pf
  %i.pr = call float @llvm.fmuladd.f32(float %i.oy, float %i.pb, float %i.pq)
  %i.ps = fadd float %9, 3.000000e+00
  %i.pt = fmul float %i.oq, %i.pb
  %i.pu = call float @llvm.fmuladd.f32(float %i.ps, float %i.ph, float %i.pt)
  %i.pv = fmul float %i.on, 2.500000e-01
  %i.pw = insertelement <4 x float> poison, float %i.pv, i64 0
  %i.px = insertelement <4 x float> %i.pw, float %i.pu, i64 1
  %i.py = insertelement <4 x float> %i.px, float %i.pr, i64 2
  %i.pz = insertelement <4 x float> %i.py, float %i.pp, i64 3
  %i.qa = insertelement <4 x float> <float poison, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>, float %i.ph, i64 0
  %i.qb = fmul <4 x float> %i.pz, %i.qa
  store <4 x float> %i.qb, ptr %scevgep.i, align 4, !tbaa !134
  %.sroa.42.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 16
  store float %i.pm, ptr %.sroa.42.0.scevgep.sroa_idx.i, align 4, !tbaa !134
  %i.qc = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %12 = load float, ptr %i.qc, align 4, !tbaa !134 ; 12 uses
  %13 = fmul float %12, 5.000000e-01
  %i.qd = load ptr, ptr %i.ib, align 8, !tbaa !328
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.ny ; 5 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 12
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %14 = fmul float %12, 2.500000e-01
  %i.qj = load ptr, ptr %i.ic, align 8, !tbaa !328
  %scevgep.i.1 = getelementptr nuw i8, ptr %i.qj, i64 %i.nz ; 2 uses
  %i.qk = fsub float 1.000000e+00, %12            ; 5 uses
  %i.ql = fmul float %12, %13                     ; 2 uses
  %i.qm = fadd float %12, 1.000000e+00            ; 3 uses
  %i.qn = fsub float 2.000000e+00, %12            ; 3 uses
  %i.qo = fmul float %12, %i.qn
  %i.qp = call float @llvm.fmuladd.f32(float %i.qm, float %i.qk, float %i.qo)
  %i.qq = fmul float %i.qp, 5.000000e-01          ; 2 uses
  %i.qr = fmul float %i.qk, 5.000000e-01
  %i.qs = fmul float %i.qk, %i.qr                 ; 2 uses
  %i.qt = fmul float %12, f0x3EAAAAAB
  %i.qu = fmul float %i.qt, %i.ql                 ; 4 uses
  %i.qv = fadd float %12, 2.000000e+00            ; 2 uses
  %i.qw = fmul float %i.qn, %i.qq
  %i.qx = call float @llvm.fmuladd.f32(float %i.qv, float %i.qs, float %i.qw)
  %i.qy = fmul float %i.qx, f0x3EAAAAAB           ; 4 uses
  %i.qz = fsub float 3.000000e+00, %12            ; 2 uses
  %i.ra = fmul float %i.qz, %i.ql
  %i.rb = call float @llvm.fmuladd.f32(float %i.qm, float %i.qq, float %i.ra)
  %i.rc = fmul float %i.rb, f0x3EAAAAAB           ; 4 uses
  %i.rd = fmul float %i.qk, f0x3EAAAAAB
  %i.re = fmul float %i.rd, %i.qs                 ; 4 uses
  %i.rf = fneg float %i.re
  store float %i.rf, ptr %i.qe, align 4, !tbaa !134
  %i.rg = fsub float %i.re, %i.qy
  store float %i.rg, ptr %i.qf, align 4, !tbaa !134
  %i.rh = fsub float %i.qy, %i.rc
  store float %i.rh, ptr %i.qg, align 4, !tbaa !134
  %i.ri = fsub float %i.rc, %i.qu
  store float %i.ri, ptr %i.qh, align 4, !tbaa !134
  store float %i.qu, ptr %i.qi, align 4, !tbaa !134
  %i.rj = fmul float %14, %i.qu
  %i.rk = fsub float 4.000000e+00, %12
  %i.rl = fmul float %i.rk, %i.qu
  %i.rm = call float @llvm.fmuladd.f32(float %i.qm, float %i.rc, float %i.rl)
  %i.rn = fmul float %i.qz, %i.rc
  %i.ro = call float @llvm.fmuladd.f32(float %i.qv, float %i.qy, float %i.rn)
  %i.rp = fadd float %12, 3.000000e+00
  %i.rq = fmul float %i.qn, %i.qy
  %i.rr = call float @llvm.fmuladd.f32(float %i.rp, float %i.re, float %i.rq)
  %i.rs = fmul float %i.qk, 2.500000e-01
  %i.rt = insertelement <4 x float> poison, float %i.rs, i64 0
  %i.ru = insertelement <4 x float> %i.rt, float %i.rr, i64 1
  %i.rv = insertelement <4 x float> %i.ru, float %i.ro, i64 2
  %i.rw = insertelement <4 x float> %i.rv, float %i.rm, i64 3
  %i.rx = insertelement <4 x float> <float poison, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>, float %i.re, i64 0
  %i.ry = fmul <4 x float> %i.rw, %i.rx
  store <4 x float> %i.ry, ptr %scevgep.i.1, align 4, !tbaa !134
  %.sroa.42.0.scevgep.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %scevgep.i.1, i64 16
  store float %i.rj, ptr %.sroa.42.0.scevgep.sroa_idx.i.1, align 4, !tbaa !134
  %i.rz = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %15 = load float, ptr %i.rz, align 4, !tbaa !134 ; 12 uses
  %16 = fmul float %15, 5.000000e-01
  %i.sa = load ptr, ptr %i.id, align 8, !tbaa !328
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.ny ; 5 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 4
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 12
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %17 = fmul float %15, 2.500000e-01
  %i.sg = load ptr, ptr %i.ie, align 8, !tbaa !328
  %scevgep.i.2 = getelementptr nuw i8, ptr %i.sg, i64 %i.nz ; 2 uses
  %i.sh = fsub float 1.000000e+00, %15            ; 5 uses
  %i.si = fmul float %15, %16                     ; 2 uses
  %i.sj = fadd float %15, 1.000000e+00            ; 3 uses
  %i.sk = fsub float 2.000000e+00, %15            ; 3 uses
  %i.sl = fmul float %15, %i.sk
  %i.sm = call float @llvm.fmuladd.f32(float %i.sj, float %i.sh, float %i.sl)
  %i.sn = fmul float %i.sm, 5.000000e-01          ; 2 uses
  %i.so = fmul float %i.sh, 5.000000e-01
  %i.sp = fmul float %i.sh, %i.so                 ; 2 uses
  %i.sq = fmul float %15, f0x3EAAAAAB
  %i.sr = fmul float %i.sq, %i.si                 ; 4 uses
  %i.ss = fadd float %15, 2.000000e+00            ; 2 uses
  %i.st = fmul float %i.sk, %i.sn
  %i.su = call float @llvm.fmuladd.f32(float %i.ss, float %i.sp, float %i.st)
  %i.sv = fmul float %i.su, f0x3EAAAAAB           ; 4 uses
  %i.sw = fsub float 3.000000e+00, %15            ; 2 uses
  %i.sx = fmul float %i.sw, %i.si
  %i.sy = call float @llvm.fmuladd.f32(float %i.sj, float %i.sn, float %i.sx)
  %i.sz = fmul float %i.sy, f0x3EAAAAAB           ; 4 uses
  %i.ta = fmul float %i.sh, f0x3EAAAAAB
  %i.tb = fmul float %i.ta, %i.sp                 ; 4 uses
  %i.tc = fneg float %i.tb
  store float %i.tc, ptr %i.sb, align 4, !tbaa !134
  %i.td = fsub float %i.tb, %i.sv
  store float %i.td, ptr %i.sc, align 4, !tbaa !134
  %i.te = fsub float %i.sv, %i.sz
  store float %i.te, ptr %i.sd, align 4, !tbaa !134
  %i.tf = fsub float %i.sz, %i.sr
  store float %i.tf, ptr %i.se, align 4, !tbaa !134
  store float %i.sr, ptr %i.sf, align 4, !tbaa !134
  %i.tg = fmul float %17, %i.sr
  %i.th = fsub float 4.000000e+00, %15
  %i.ti = fmul float %i.th, %i.sr
  %i.tj = call float @llvm.fmuladd.f32(float %i.sj, float %i.sz, float %i.ti)
  %i.tk = fmul float %i.sw, %i.sz
  %i.tl = call float @llvm.fmuladd.f32(float %i.ss, float %i.sv, float %i.tk)
  %i.tm = fadd float %15, 3.000000e+00
  %i.tn = fmul float %i.sk, %i.sv
  %i.to = call float @llvm.fmuladd.f32(float %i.tm, float %i.tb, float %i.tn)
  %i.tp = fmul float %i.sh, 2.500000e-01
  %i.tq = insertelement <4 x float> poison, float %i.tp, i64 0
  %i.tr = insertelement <4 x float> %i.tq, float %i.to, i64 1
  %i.ts = insertelement <4 x float> %i.tr, float %i.tl, i64 2
  %i.tt = insertelement <4 x float> %i.ts, float %i.tj, i64 3
  %i.tu = insertelement <4 x float> <float poison, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>, float %i.tb, i64 0
  %i.tv = fmul <4 x float> %i.tt, %i.tu
  store <4 x float> %i.tv, ptr %scevgep.i.2, align 4, !tbaa !134
  %.sroa.42.0.scevgep.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %scevgep.i.2, i64 16
  store float %i.tg, ptr %.sroa.42.0.scevgep.sroa_idx.i.2, align 4, !tbaa !134
  br label %.loopexit232.us.i

.loopexit232.us.i:                                ; preds = %.preheader231.us.i, %bb.l
  %indvars.iv.next294.i = add nuw nsw i64 %indvars.iv293.i, 1 ; 2 uses
  %exitcond296.not.i = icmp eq i64 %indvars.iv.next294.i, %wide.trip.count.i37
  br i1 %exitcond296.not.i, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit, label %.lr.ph272.split.us274.i, !llvm.loop !271

.lr.ph272.split.i:                                ; preds = %.loopexit.i, %.lr.ph272.split.preheader.i
  %indvars.iv352.i = phi i64 [ 0, %.lr.ph272.split.preheader.i ], [ %indvars.iv.next353.i, %.loopexit.i ] ; 6 uses
  %i.tw = trunc i64 %indvars.iv352.i to i32
  %i.tx = mul i32 %i.he, %i.tw
  %i.ty = zext i32 %i.tx to i64
  %i.tz = shl nuw nsw i64 %i.ty, 2                ; 2 uses
  %i.ua = trunc i64 %indvars.iv352.i to i32
  %i.ub = mul i32 %i.he, %i.ua
  %i.uc = zext i32 %i.ub to i64
  %i.ud = shl nuw nsw i64 %i.uc, 2                ; 2 uses
  %i.ue = trunc nuw nsw i64 %indvars.iv352.i to i32
  %i.uf = mul i32 %i.he, %i.ue
  %i.ug = zext i32 %i.uf to i64
  %i.uh = shl nuw nsw i64 %i.ug, 2                ; 3 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv352.i
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !105
  %.pre427.i = sext i32 %i.uj to i64              ; 2 uses
  br i1 %i.hm, label %.preheader.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph272.split.i
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %.pre427.i
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !134
  %i.um = fcmp une float %i.ul, 0.000000e+00
  br i1 %i.um, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.m, %.lr.ph272.split.i
  %i.un = getelementptr inbounds [12 x i8], ptr %i.hg, i64 %.pre427.i ; 5 uses
  %i.uo = mul nsw i64 %indvars.iv352.i, %i.hw     ; 6 uses
  %i.up = and i64 %i.uo, 4294967295               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.uq = load float, ptr %i.un, align 4, !tbaa !134 ; 11 uses
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !134
  store float %i.uq, ptr %i.p, align 4, !tbaa !134
  %i.ur = fsub float 1.000000e+00, %i.uq          ; 5 uses
  store float %i.ur, ptr %i.d, align 16, !tbaa !134
  br i1 %i.hr, label %.lr.ph251.preheader.i.preheader, label %._crit_edge256.i

.lr.ph251.preheader.i.preheader:                  ; preds = %.preheader.i
  %broadcast.splatinsert413 = insertelement <8 x float> poison, float %i.uq, i64 0
  %broadcast.splat414 = shufflevector <8 x float> %broadcast.splatinsert413, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph251.preheader.i

._crit_edge256.i:                                 ; preds = %._crit_edge252.i, %.preheader.i
  %i.us = phi float [ %i.ur, %.preheader.i ], [ %i.xg, %._crit_edge252.i ]
  %i.ut = fneg float %i.us
  %i.uu = load ptr, ptr %i.hb, align 8, !tbaa !328 ; 4 uses
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.uu, i64 %i.uo
  store float %i.ut, ptr %i.uv, align 4, !tbaa !134
  br i1 %i.hs, label %iter.check389, label %._crit_edge264.i

iter.check389:                                    ; preds = %._crit_edge256.i
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.up ; 11 uses
  br i1 %min.iters.check369, label %.lr.ph259.i.preheader, label %vector.memcheck360

vector.memcheck360:                               ; preds = %iter.check389
  %scevgep361 = getelementptr i8, ptr %i.uu, i64 4
  %scevgep362 = getelementptr i8, ptr %scevgep361, i64 %i.tz
  %scevgep363 = getelementptr i8, ptr %i.uu, i64 %i.iq
  %scevgep364 = getelementptr i8, ptr %scevgep363, i64 %i.tz
  %bound0365 = icmp ult ptr %scevgep362, %scevgep269
  %bound1366 = icmp ult ptr %i.d, %scevgep364
  %found.conflict367 = and i1 %bound0365, %bound1366
  br i1 %found.conflict367, label %.lr.ph259.i.preheader, label %vector.main.loop.iter.check370

vector.main.loop.iter.check370:                   ; preds = %vector.memcheck360
  br i1 %min.iters.check371, label %vec.epilog.ph393, label %vector.body374

vector.body374:                                   ; preds = %vector.main.loop.iter.check370, %vector.body374
  %index375 = phi i64 [ %index.next384, %vector.body374 ], [ 0, %vector.main.loop.iter.check370 ] ; 2 uses
  %i.uw = or disjoint i64 %index375, 1            ; 2 uses
  %i.ux = getelementptr [4 x i8], ptr %i.d, i64 %i.uw ; 8 uses
  %i.uy = getelementptr i8, ptr %i.ux, i64 -4
  %i.uz = getelementptr i8, ptr %i.ux, i64 28
  %i.va = getelementptr i8, ptr %i.ux, i64 60
  %i.vb = getelementptr i8, ptr %i.ux, i64 92
  %wide.load376 = load <8 x float>, ptr %i.uy, align 16, !tbaa !134, !alias.scope !329
  %wide.load377 = load <8 x float>, ptr %i.uz, align 16, !tbaa !134, !alias.scope !329
  %wide.load378 = load <8 x float>, ptr %i.va, align 16, !tbaa !134, !alias.scope !329
  %wide.load379 = load <8 x float>, ptr %i.vb, align 16, !tbaa !134, !alias.scope !329
  %i.vc = getelementptr i8, ptr %i.ux, i64 32
  %i.vd = getelementptr i8, ptr %i.ux, i64 64
  %i.ve = getelementptr i8, ptr %i.ux, i64 96
  %wide.load380 = load <8 x float>, ptr %i.ux, align 4, !tbaa !134, !alias.scope !329
  %wide.load381 = load <8 x float>, ptr %i.vc, align 4, !tbaa !134, !alias.scope !329
  %wide.load382 = load <8 x float>, ptr %i.vd, align 4, !tbaa !134, !alias.scope !329
  %wide.load383 = load <8 x float>, ptr %i.ve, align 4, !tbaa !134, !alias.scope !329
  %i.vf = fsub <8 x float> %wide.load376, %wide.load380
  %i.vg = fsub <8 x float> %wide.load377, %wide.load381
  %i.vh = fsub <8 x float> %wide.load378, %wide.load382
  %i.vi = fsub <8 x float> %wide.load379, %wide.load383
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.uw ; 4 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 32
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 96
  store <8 x float> %i.vf, ptr %i.vj, align 4, !tbaa !134, !alias.scope !330, !noalias !329
  store <8 x float> %i.vg, ptr %i.vk, align 4, !tbaa !134, !alias.scope !330, !noalias !329
  store <8 x float> %i.vh, ptr %i.vl, align 4, !tbaa !134, !alias.scope !330, !noalias !329
  store <8 x float> %i.vi, ptr %i.vm, align 4, !tbaa !134, !alias.scope !330, !noalias !329
  %index.next384 = add nuw i64 %index375, 32      ; 2 uses
  %i.vn = icmp eq i64 %index.next384, %n.vec373
  br i1 %i.vn, label %middle.block385, label %vector.body374, !llvm.loop !275

middle.block385:                                  ; preds = %vector.body374
  br i1 %cmp.n386, label %._crit_edge260.i, label %vec.epilog.iter.check391

vec.epilog.iter.check391:                         ; preds = %middle.block385
  br i1 %min.epilog.iters.check392, label %.lr.ph259.i.preheader, label %vec.epilog.ph393, !prof !192

vec.epilog.ph393:                                 ; preds = %vector.main.loop.iter.check370, %vec.epilog.iter.check391
  %vec.epilog.resume.val387 = phi i64 [ %n.vec373, %vec.epilog.iter.check391 ], [ 0, %vector.main.loop.iter.check370 ]
  br label %vec.epilog.vector.body395

vec.epilog.vector.body395:                        ; preds = %vec.epilog.vector.body395, %vec.epilog.ph393
  %index396 = phi i64 [ %vec.epilog.resume.val387, %vec.epilog.ph393 ], [ %index.next399, %vec.epilog.vector.body395 ] ; 2 uses
  %i.vo = or disjoint i64 %index396, 1            ; 2 uses
  %i.vp = getelementptr [4 x i8], ptr %i.d, i64 %i.vo ; 2 uses
  %i.vq = getelementptr i8, ptr %i.vp, i64 -4
  %wide.load397 = load <8 x float>, ptr %i.vq, align 16, !tbaa !134, !alias.scope !329
  %wide.load398 = load <8 x float>, ptr %i.vp, align 4, !tbaa !134, !alias.scope !329
  %i.vr = fsub <8 x float> %wide.load397, %wide.load398
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.vo
  store <8 x float> %i.vr, ptr %i.vs, align 4, !tbaa !134, !alias.scope !330, !noalias !329
  %index.next399 = add nuw i64 %index396, 8       ; 2 uses
  %i.vt = icmp eq i64 %index.next399, %n.vec394
  br i1 %i.vt, label %vec.epilog.middle.block400, label %vec.epilog.vector.body395, !llvm.loop !276

vec.epilog.middle.block400:                       ; preds = %vec.epilog.vector.body395
  br i1 %cmp.n401, label %._crit_edge260.i, label %.lr.ph259.i.preheader

.lr.ph259.i.preheader:                            ; preds = %iter.check389, %vector.memcheck360, %vec.epilog.iter.check391, %vec.epilog.middle.block400
  %indvars.iv334.i.ph = phi i64 [ 1, %iter.check389 ], [ 1, %vector.memcheck360 ], [ %i.is, %vec.epilog.iter.check391 ], [ %i.it, %vec.epilog.middle.block400 ] ; 4 uses
  %i.vu = sub nsw i64 %i.ij, %indvars.iv334.i.ph
  %xtraiter512 = and i64 %i.vu, 7                 ; 2 uses
  %lcmp.mod513.not = icmp eq i64 %xtraiter512, 0
  br i1 %lcmp.mod513.not, label %.lr.ph259.i.prol.loopexit, label %.lr.ph259.i.prol

.lr.ph259.i.prol:                                 ; preds = %.lr.ph259.i.preheader, %.lr.ph259.i.prol
  %indvars.iv334.i.prol = phi i64 [ %indvars.iv.next335.i.prol, %.lr.ph259.i.prol ], [ %indvars.iv334.i.ph, %.lr.ph259.i.preheader ] ; 3 uses
  %prol.iter514 = phi i64 [ %prol.iter514.next, %.lr.ph259.i.prol ], [ 0, %.lr.ph259.i.preheader ]
  %i.vv = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.i.prol ; 2 uses
  %i.vw = getelementptr i8, ptr %i.vv, i64 -4
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !134
  %i.vy = load float, ptr %i.vv, align 4, !tbaa !134
  %i.vz = fsub float %i.vx, %i.vy
  %gep.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv334.i.prol
  store float %i.vz, ptr %gep.i.prol, align 4, !tbaa !134
  %indvars.iv.next335.i.prol = add nuw nsw i64 %indvars.iv334.i.prol, 1 ; 2 uses
  %prol.iter514.next = add i64 %prol.iter514, 1   ; 2 uses
  %prol.iter514.cmp.not = icmp eq i64 %prol.iter514.next, %xtraiter512
  br i1 %prol.iter514.cmp.not, label %.lr.ph259.i.prol.loopexit, label %.lr.ph259.i.prol, !llvm.loop !277

.lr.ph259.i.prol.loopexit:                        ; preds = %.lr.ph259.i.prol, %.lr.ph259.i.preheader
  %indvars.iv334.i.unr = phi i64 [ %indvars.iv334.i.ph, %.lr.ph259.i.preheader ], [ %indvars.iv.next335.i.prol, %.lr.ph259.i.prol ]
  %i.wa = sub nsw i64 %indvars.iv334.i.ph, %i.ij
  %i.wb = icmp ugt i64 %i.wa, -8
  br i1 %i.wb, label %._crit_edge260.i, label %.lr.ph259.i

.lr.ph251.preheader.i:                            ; preds = %.lr.ph251.preheader.i.preheader, %._crit_edge252.i
  %indvar403 = phi i64 [ %indvar.next404, %._crit_edge252.i ], [ 0, %.lr.ph251.preheader.i.preheader ] ; 2 uses
  %indvars.iv327.i = phi i64 [ %indvars.iv.next328.i, %._crit_edge252.i ], [ 3, %.lr.ph251.preheader.i.preheader ] ; 5 uses
  %indvars.iv325.i = phi i64 [ %indvars.iv.next326.i, %._crit_edge252.i ], [ 2, %.lr.ph251.preheader.i.preheader ] ; 2 uses
  %i.wc = add i64 %indvar403, 1                   ; 3 uses
  %i.wd = add nsw i64 %indvars.iv327.i, -1        ; 2 uses
  %i.we = trunc nuw nsw i64 %i.wd to i32
  %i.wf = sitofp i32 %i.we to double
  %i.wg = fdiv double 1.000000e+00, %i.wf
  %i.wh = fptrunc double %i.wg to float           ; 4 uses
  %i.wi = fmul float %i.uq, %i.wh
  %i.wj = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv327.i
  %i.wk = getelementptr i8, ptr %i.wj, i64 -8
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !134
  %i.wm = fmul float %i.wl, %i.wi
  %i.wn = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.wd
  store float %i.wm, ptr %i.wn, align 4, !tbaa !134
end_hunk_0
