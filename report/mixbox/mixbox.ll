Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mixbox/original/mixbox?download=true
inline.NumInlined: 22
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mixbox_lerp:bb.a
  %i.ip = insertelement <2 x i8> %i.io, i8 %i.dx, i64 1
  %i.iq = uitofp <2 x i8> %i.ip to <2 x float>
  %i.ir = insertelement <2 x i8> poison, i8 %i.ay, i64 0
  %i.is = insertelement <2 x i8> %i.ir, i8 %i.ee, i64 1
  %i.it = uitofp <2 x i8> %i.is to <2 x float>
  %i.iu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.ik, <2 x float> zeroinitializer)
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.in, <2 x float> %i.iu)
  %i.iw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.iq, <2 x float> %i.iv)
  %i.ix = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hz, <2 x float> %i.it, <2 x float> %i.iw)
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.eh, float %i.hy)
  %i.iz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.gg, <2 x float> %i.ix)
  %i.ja = extractelement <2 x float> %i.hp, i64 1
  %i.jb = tail call float @llvm.fmuladd.f32(float %i.ja, float %i.eq, float %i.iy)
  %i.jc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.gk, <2 x float> %i.iz)
  %i.jd = extractelement <2 x float> %i.hr, i64 1
  %i.je = tail call float @llvm.fmuladd.f32(float %i.jd, float %i.ev, float %i.jb)
  %i.jf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.gm, <2 x float> %i.jc)
  %i.jg = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.fc, float %i.je)
  %i.jh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.gr, <2 x float> %i.jf)
  %i.ji = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.fh, float %i.jg)
  %i.jj = fmul <2 x float> %i.jh, <float 1.000000e+00, float f0x3B808081> ; 3 uses
  %i.jk = fmul float %i.ji, f0x3B808081           ; 11 uses
  %i.jl = insertelement <2 x float> <float f0x3B808081, float poison>, float %i.jk, i64 1 ; 2 uses
  %i.jm = fmul <2 x float> %i.jj, %i.jl           ; 4 uses
  %i.jn = fadd <2 x float> %i.jj, %i.jl
  %i.jo = shufflevector <2 x float> %i.jm, <2 x float> %i.jn, <2 x i32> <i32 0, i32 3> ; 7 uses
  %i.jp = extractelement <2 x float> %i.jm, i64 0 ; 4 uses
  %i.jq = fmul float %i.ig, %i.jp
  %i.jr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.gv, <2 x float> zeroinitializer)
  %i.js = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.gy, <2 x float> %i.jr)
  %i.jt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.hb, <2 x float> %i.js)
  %i.ju = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.jv = insertelement <2 x float> %i.ju, float %i.ek, i64 1
  %i.jw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hz, <2 x float> %i.jv, <2 x float> %i.jt)
  %i.jx = load i8, ptr %i.er, align 1, !tbaa !9
  %i.jy = insertelement <2 x i8> poison, i8 %i.ba, i64 0
  %i.jz = insertelement <2 x i8> %i.jy, i8 %i.jx, i64 1
  %i.ka = uitofp <2 x i8> %i.jz to <2 x float>
  %i.kb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.ka, <2 x float> %i.jw)
  %i.kc = insertelement <2 x i8> poison, i8 %i.bg, i64 0
  %i.kd = insertelement <2 x i8> %i.kc, i8 %i.ex, i64 1
  %i.ke = uitofp <2 x i8> %i.kd to <2 x float>
  %i.kf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.ke, <2 x float> %i.kb)
  %i.kg = load i8, ptr %i.fd, align 1, !tbaa !9
  %i.kh = insertelement <2 x i8> poison, i8 %i.bm, i64 0
  %i.ki = insertelement <2 x i8> %i.kh, i8 %i.kg, i64 1
  %i.kj = uitofp <2 x i8> %i.ki to <2 x float>
  %i.kk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.kj, <2 x float> %i.kf)
  %i.kl = uitofp i8 %i.fj to float
  %i.km = uitofp i8 %i.bs to float
  %i.kn = insertelement <2 x float> poison, float %i.km, i64 0
  %i.ko = insertelement <2 x float> %i.kn, float %i.kl, i64 1
  %i.kp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.ko, <2 x float> %i.kk)
  %i.kq = fmul <2 x float> %i.kp, splat (float f0x3B808081) ; 7 uses
  %i.kr = extractelement <2 x float> %i.kq, i64 0 ; 4 uses
  %i.ks = fadd float %i.kr, %i.ig
  %i.kt = fadd float %i.ks, %i.jp
  %i.ku = fsub float 1.000000e+00, %i.kt          ; 9 uses
  %i.kv = fmul float %i.kr, %i.ig                 ; 2 uses
  %i.kw = fmul float %i.ku, %i.ku                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.jo, %i.jo ; 2 uses
  %i.kx = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ky = fmul float %i.ig, %i.ig                 ; 3 uses
  %i.kz = fmul float %i.ky, %i.ku                 ; 2 uses
  %i.la = fmul float %i.ig, %i.kx                 ; 2 uses
  %i.lb = fmul float %i.ky, %i.jp                 ; 2 uses
  %i.lc = fmul float %i.kr, %i.kw                 ; 2 uses
  %foldExtExtBinop42 = fmul <2 x float> %i.kq, %i.kq ; 3 uses
  %i.ld = extractelement <2 x float> %foldExtExtBinop42, i64 0 ; 2 uses
  %i.le = fmul float %i.ld, %i.ku                 ; 2 uses
  %i.lf = fmul <2 x float> %i.kq, %i.jo
  %i.lg = fadd <2 x float> %i.kq, %i.jo
  %i.lh = shufflevector <2 x float> %i.lf, <2 x float> %i.lg, <2 x i32> <i32 0, i32 3> ; 3 uses
  %foldExtExtBinop44 = fmul <2 x float> %i.jo, %i.lh ; 2 uses
  %i.li = extractelement <2 x float> %foldExtExtBinop44, i64 0
  %foldExtExtBinop46 = fmul <2 x float> %foldExtExtBinop42, %i.jo ; 2 uses
  %i.lj = extractelement <2 x float> %foldExtExtBinop46, i64 0
  %i.lk = fmul float %i.ig, %i.kv                 ; 2 uses
  %i.ll = fmul float %i.ld, %i.ig                 ; 2 uses
  %i.lm = fmul float %i.ku, %i.kw                 ; 2 uses
  %foldExtExtBinop48 = fmul <2 x float> %i.jo, %foldExtExtBinop ; 2 uses
  %i.ln = extractelement <2 x float> %foldExtExtBinop48, i64 0
  %i.lo = fmul float %i.ig, %i.ky                 ; 2 uses
  %foldExtExtBinop50 = fmul <2 x float> %i.kq, %foldExtExtBinop42 ; 2 uses
  %i.lp = extractelement <2 x float> %foldExtExtBinop50, i64 0
  %i.lq = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ku, i64 0 ; 3 uses
  %i.lr = fmul <2 x float> %i.lq, %i.lh           ; 2 uses
  %i.ls = fsub <2 x float> %i.lq, %i.lh           ; 2 uses
  %i.lt = shufflevector <2 x float> %i.lr, <2 x float> %i.ls, <2 x i32> <i32 0, i32 3>
  %i.lu = tail call float @llvm.fmuladd.f32(float %i.lp, float f0x3D9E0B95, float 0.000000e+00)
  %i.lv = tail call float @llvm.fmuladd.f32(float %i.lo, float 9.591230e-01, float %i.lu)
  %i.lw = tail call float @llvm.fmuladd.f32(float %i.ln, float f0x3F3F30C2, float %i.lv)
  %i.lx = tail call float @llvm.fmuladd.f32(float %i.lm, float f0x3F7EC435, float %i.lw)
  %i.ly = tail call float @llvm.fmuladd.f32(float %i.ll, float f0x3D456469, float %i.lx)
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.lk, float f0xBF2E74C9, float %i.ly)
  %i.ma = tail call float @llvm.fmuladd.f32(float %i.lj, float f0x3E8A8A03, float %i.lz)
  %i.mb = tail call float @llvm.fmuladd.f32(float %i.li, float f0x3F4E0630, float %i.ma)
  %i.mc = tail call float @llvm.fmuladd.f32(float %i.le, float f0xBEB35BD6, float %i.mb)
  %i.md = tail call float @llvm.fmuladd.f32(float %i.lc, float f0x3F86905C, float %i.mc)
  %i.me = tail call float @llvm.fmuladd.f32(float %i.lb, float f0x404DD41D, float %i.md)
  %i.mf = tail call float @llvm.fmuladd.f32(float %i.la, float f0x40327DE4, float %i.me)
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.kz, float f0x40416251, float %i.mf)
  %i.mh = extractelement <2 x float> %i.jj, i64 1 ; 7 uses
  %i.mi = fmul float %i.mh, %i.mh                 ; 4 uses
  %i.mj = fmul float %i.jk, %i.jk                 ; 3 uses
  %i.mk = extractelement <2 x float> %i.kq, i64 1 ; 11 uses
  %i.ml = fmul float %i.mk, %i.mk                 ; 3 uses
  %i.mm = extractelement <2 x float> %i.ls, i64 1 ; 9 uses
  %i.mn = fmul float %i.mm, %i.mm                 ; 4 uses
  %i.mo = fmul float %i.mh, %i.jk                 ; 3 uses
  %i.mp = fmul float %i.mh, %i.mk                 ; 2 uses
  %i.mq = fmul float %i.jk, %i.mk
  %i.mr = fmul float %i.mh, %i.mi                 ; 2 uses
  %i.ms = tail call float @llvm.fmuladd.f32(float %i.mr, float f0x3D9E0B95, float 0.000000e+00)
  %i.mt = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.mu = shufflevector <2 x float> %i.mt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mu, <2 x float> <float f0x3E7E4A33, float f0x3CE79607>, <2 x float> zeroinitializer)
  %i.mw = fmul float %i.jk, %i.mj                 ; 2 uses
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.mw, float 9.591230e-01, float %i.ms)
  %i.my = fmul float %i.mk, %i.ml                 ; 2 uses
  %i.mz = tail call float @llvm.fmuladd.f32(float %i.my, float f0x3F3F30C2, float %i.mx)
  %i.na = fmul float %i.mm, %i.mn                 ; 2 uses
  %i.nb = tail call float @llvm.fmuladd.f32(float %i.na, float f0x3F7EC435, float %i.mz)
  %i.nc = fmul float %i.mi, %i.jk                 ; 2 uses
  %i.nd = tail call float @llvm.fmuladd.f32(float %i.nc, float f0x3D456469, float %i.nb)
  %i.ne = fmul float %i.jk, %i.mo                 ; 2 uses
  %i.nf = tail call float @llvm.fmuladd.f32(float %i.ne, float f0xBF2E74C9, float %i.nd)
  %i.ng = fmul float %i.mi, %i.mk                 ; 2 uses
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.ng, float f0x3E8A8A03, float %i.nf)
  %i.ni = fmul float %i.mk, %i.mp                 ; 2 uses
  %i.nj = tail call float @llvm.fmuladd.f32(float %i.ni, float f0x3F4E0630, float %i.nh)
  %i.nk = fmul float %i.mi, %i.mm                 ; 2 uses
  %i.nl = tail call float @llvm.fmuladd.f32(float %i.nk, float f0xBEB35BD6, float %i.nj)
  %i.nm = fmul float %i.mh, %i.mn                 ; 2 uses
  %i.nn = tail call float @llvm.fmuladd.f32(float %i.nm, float f0x3F86905C, float %i.nl)
  %i.no = fmul float %i.mj, %i.mk                 ; 2 uses
  %i.np = tail call float @llvm.fmuladd.f32(float %i.no, float f0x404DD41D, float %i.nn)
  %i.nq = fmul float %i.jk, %i.ml                 ; 2 uses
  %i.nr = tail call float @llvm.fmuladd.f32(float %i.nq, float f0x40327DE4, float %i.np)
  %i.ns = fmul float %i.mj, %i.mm                 ; 2 uses
  %i.nt = tail call float @llvm.fmuladd.f32(float %i.ns, float f0x40416251, float %i.nr)
  %i.nu = fmul float %i.jk, %i.mn                 ; 2 uses
  %i.nv = tail call float @llvm.fmuladd.f32(float %i.nu, float f0x403CE13B, float %i.nt)
  %i.nw = fmul float %6, %i.mh
  %i.nx = fmul float %6, %i.jk
  %i.ny = fmul float %6, %i.mk
  %i.nz = insertelement <2 x float> <float f0x4082AA5A, float poison>, float %6, i64 1
  %i.oa = insertelement <2 x float> poison, float %i.g, i64 0
  %.scalar = fmul float %i.jq, %i.ku
  %i.ob = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.oc = shufflevector <2 x float> %i.ob, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.od = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.kv, i64 0 ; 2 uses
  %i.oe = fmul <2 x float> %i.od, %i.lq           ; 2 uses
  %i.of = shufflevector <2 x float> %i.oe, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.og = shufflevector <2 x float> %i.od, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.oh = shufflevector <2 x float> %i.jm, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.oi = fmul <4 x float> %i.og, %i.oh           ; 2 uses
  %i.oj = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.kw, i64 0 ; 2 uses
  %i.ok = shufflevector <2 x float> %i.jm, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.ol = shufflevector <2 x float> %i.oj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.om = fmul <4 x float> %i.ok, %i.ol           ; 2 uses
  %.scalar52 = fmul float %i.kx, %i.ku            ; 2 uses
  %i.on = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar52, i64 0
  %i.oo = shufflevector <2 x float> %i.on, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.op = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ig, i64 0
  %i.oq = shufflevector <2 x float> %i.op, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.or = shufflevector <2 x float> %i.oj, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.os = fmul <4 x float> %i.oq, %i.or           ; 2 uses
  %i.ot = shufflevector <2 x float> %foldExtExtBinop50, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ou = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ot, <2 x float> <float f0x3E7E4A33, float f0x3CE79607>, <2 x float> zeroinitializer)
  %i.ov = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.ow = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ox = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ow, <2 x float> <float f0x3D11E497, float f0x3F4D74EB>, <2 x float> %i.ou)
  %i.oy = shufflevector <2 x float> %foldExtExtBinop48, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oy, <2 x float> <float 0.000000e+00, float f0x3D476AD3>, <2 x float> %i.ox)
  %i.pa = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.pb = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pb, <2 x float> <float 9.970480e-01, float f0x3F7FF1AE>, <2 x float> %i.oz)
  %i.pd = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.pe = shufflevector <2 x float> %i.pd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pe, <2 x float> <float f0x3EA67A8E, float f0x3F55694A>, <2 x float> %i.pc)
  %i.pg = insertelement <2 x float> poison, float %i.lk, i64 0
  %i.ph = shufflevector <2 x float> %i.pg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ph, <2 x float> <float f0x3F88EF83, float f0x3FBB049B>, <2 x float> %i.pf)
  %i.pj = shufflevector <2 x float> %foldExtExtBinop46, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pj, <2 x float> <float f0x3FFE6181, float f0xBE1CED3A>, <2 x float> %i.pi)
  %i.pl = shufflevector <2 x float> %foldExtExtBinop44, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pl, <2 x float> <float 1.842450e-01, float f0x3F2BC289>, <2 x float> %i.pk)
  %i.pn = insertelement <2 x float> poison, float %i.le, i64 0
  %i.po = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.po, <2 x float> <float 3.688650e+00, float f0x3FB07499>, <2 x float> %i.pm)
  %i.pq = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.pr = shufflevector <2 x float> %i.pq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ps = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pr, <2 x float> <float f0x40351CEE, float f0x3FFD3419>, <2 x float> %i.pp)
  %i.pt = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.pu = shufflevector <2 x float> %i.pt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pu, <2 x float> <float f0x3F84550C, float f0x3F500D42>, <2 x float> %i.ps)
  %i.pw = insertelement <2 x float> poison, float %i.la, i64 0
  %i.px = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.py = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.px, <2 x float> <float f0xBD37CCB3, float f0x3ED4D0CC>, <2 x float> %i.pv)
  %i.pz = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.kz, i64 0
  %10 = shufflevector <4 x float> %i.pz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %11 = shufflevector <2 x float> %i.py, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %12 = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x float> %11, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %13 = shufflevector <4 x float> %11, <4 x float> %12, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> <float f0x3EA7C333, float f0x4023707E, float 0.000000e+00, float f0x3EA7C333>, <4 x float> %13)
  %i.qb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.os, <4 x float> <float f0x3F96801B, float f0x4033F7FD, float 0.000000e+00, float f0x3F96801B>, <4 x float> %i.qa)
  %i.qc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oo, <4 x float> <float f0x3FE89875, float f0x3F4CA0EA, float 0.000000e+00, float f0x3FE89875>, <4 x float> %i.qb)
  %i.qd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.om, <4 x float> <float f0x3FE73C97, float f0x3F9CEB4B, float 0.000000e+00, float f0x3FE73C97>, <4 x float> %i.qc)
  %i.qe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oi, <4 x float> <float f0xBE98C2A3, float f0x400337A7, float 0.000000e+00, float f0xBE98C2A3>, <4 x float> %i.qd)
  %i.qf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.of, <4 x float> <float f0x3F203166, float f0x40E118D7, float 0.000000e+00, float f0x3F203166>, <4 x float> %i.qe)
  %14 = shufflevector <2 x float> %i.lr, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 0>
  %15 = insertelement <4 x float> %14, float -0.000000e+00, i64 2
  %i.qg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %15, <4 x float> <float f0x400998DE, float f0xBFB3B903, float 0.000000e+00, float f0x400998DE>, <4 x float> %i.qf)
  %i.qh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oc, <4 x float> <float f0x3FF42585, float f0x40238DA6, float 0.000000e+00, float f0x3FF42585>, <4 x float> %i.qg)
  %i.qi = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qj = shufflevector <4 x float> %i.qi, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.qk = fsub <4 x float> %i.qj, %i.qh
  %i.ql = extractelement <4 x float> %i.os, i64 0
  %i.qm = tail call float @llvm.fmuladd.f32(float %i.ql, float f0x403CE13B, float %i.mg)
  %i.qn = tail call float @llvm.fmuladd.f32(float %.scalar52, float f0x4034E9CF, float %i.qm)
  %i.qo = extractelement <4 x float> %i.om, i64 0
  %i.qp = tail call float @llvm.fmuladd.f32(float %i.qo, float f0x403FCD64, float %i.qn)
  %i.qq = extractelement <4 x float> %i.oi, i64 0
  %i.qr = tail call float @llvm.fmuladd.f32(float %i.qq, float f0x3FEFDD4D, float %i.qp)
  %i.qs = extractelement <2 x float> %i.oe, i64 0
  %i.qt = tail call float @llvm.fmuladd.f32(float %i.qs, float f0x40243AE9, float %i.qr)
  %i.qu = insertelement <2 x float> poison, float %i.mw, i64 0
  %i.qv = shufflevector <2 x float> %i.qu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qv, <2 x float> <float f0x3D11E497, float f0x3F4D74EB>, <2 x float> %i.mv)
  %i.qx = insertelement <2 x float> poison, float %i.my, i64 0
  %i.qy = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qy, <2 x float> <float 0.000000e+00, float f0x3D476AD3>, <2 x float> %i.qw)
  %i.ra = insertelement <2 x float> poison, float %i.na, i64 0
  %i.rb = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rb, <2 x float> <float 9.970480e-01, float f0x3F7FF1AE>, <2 x float> %i.qz)
  %i.rd = insertelement <2 x float> poison, float %i.nc, i64 0
  %i.re = shufflevector <2 x float> %i.rd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.re, <2 x float> <float f0x3EA67A8E, float f0x3F55694A>, <2 x float> %i.rc)
  %i.rg = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.rh = shufflevector <2 x float> %i.rg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ri = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rh, <2 x float> <float f0x3F88EF83, float f0x3FBB049B>, <2 x float> %i.rf)
  %i.rj = insertelement <2 x float> poison, float %i.ng, i64 0
  %i.rk = shufflevector <2 x float> %i.rj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rk, <2 x float> <float f0x3FFE6181, float f0xBE1CED3A>, <2 x float> %i.ri)
  %i.rm = insertelement <2 x float> poison, float %i.ni, i64 0
  %i.rn = shufflevector <2 x float> %i.rm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ro = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rn, <2 x float> <float 1.842450e-01, float f0x3F2BC289>, <2 x float> %i.rl)
  %i.rp = insertelement <2 x float> poison, float %i.nk, i64 0
  %i.rq = shufflevector <2 x float> %i.rp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rq, <2 x float> <float 3.688650e+00, float f0x3FB07499>, <2 x float> %i.ro)
  %i.rs = insertelement <2 x float> poison, float %i.nm, i64 0
  %i.rt = shufflevector <2 x float> %i.rs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ru = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rt, <2 x float> <float f0x40351CEE, float f0x3FFD3419>, <2 x float> %i.rr)
  %i.rv = insertelement <2 x float> poison, float %i.no, i64 0
  %i.rw = shufflevector <2 x float> %i.rv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rw, <2 x float> <float f0x3F84550C, float f0x3F500D42>, <2 x float> %i.ru)
  %i.ry = insertelement <2 x float> poison, float %i.nq, i64 0
  %i.rz = shufflevector <2 x float> %i.ry, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rz, <2 x float> <float f0xBD37CCB3, float f0x3ED4D0CC>, <2 x float> %i.rx)
  %i.sb = insertelement <2 x float> poison, float %i.ns, i64 0
  %i.sc = shufflevector <2 x float> %i.sb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sc, <2 x float> <float f0x3EA7C333, float f0x4023707E>, <2 x float> %i.sa)
  %i.se = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.nu, i64 0
  %16 = shufflevector <4 x float> %i.se, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %17 = shufflevector <2 x float> %i.sd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %18 = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x float> %17, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %19 = shufflevector <4 x float> %17, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> <float f0x3F96801B, float f0x4033F7FD, float 0.000000e+00, float f0x3F96801B>, <4 x float> %19)
  %i.sg = fmul float %i.ml, %i.mm                 ; 2 uses
  %i.sh = tail call float @llvm.fmuladd.f32(float %i.sg, float f0x4034E9CF, float %i.nv)
  %i.si = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.sg, i64 0
  %i.sj = shufflevector <4 x float> %i.si, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.sk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sj, <4 x float> <float f0x3FE89875, float f0x3F4CA0EA, float 0.000000e+00, float f0x3FE89875>, <4 x float> %i.sf)
  %i.sl = fmul float %i.mk, %i.mn                 ; 2 uses
  %i.sm = tail call float @llvm.fmuladd.f32(float %i.sl, float f0x403FCD64, float %i.sh)
  %i.sn = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.sl, i64 0
  %i.so = shufflevector <4 x float> %i.sn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.sp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.so, <4 x float> <float f0x3FE73C97, float f0x3F9CEB4B, float 0.000000e+00, float f0x3FE73C97>, <4 x float> %i.sk)
  %i.sq = fmul float %i.mo, %i.mk                 ; 2 uses
  %i.sr = tail call float @llvm.fmuladd.f32(float %i.sq, float f0x3FEFDD4D, float %i.sm)
  %i.ss = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.sq, i64 0
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.su = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.st, <4 x float> <float f0xBE98C2A3, float f0x400337A7, float 0.000000e+00, float f0xBE98C2A3>, <4 x float> %i.sp)
  %i.sv = fmul float %i.mo, %i.mm                 ; 2 uses
  %i.sw = tail call float @llvm.fmuladd.f32(float %i.sv, float f0x40243AE9, float %i.sr)
  %i.sx = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.sv, i64 0
  %i.sy = shufflevector <4 x float> %i.sx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.sz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sy, <4 x float> <float f0x3F203166, float f0x40E118D7, float 0.000000e+00, float f0x3F203166>, <4 x float> %i.su)
  %i.ta = fmul float %i.mp, %i.mm                 ; 2 uses
  %i.tb = tail call float @llvm.fmuladd.f32(float %i.ta, float f0x4082AA5A, float %i.sw)
  %i.tc = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ta, i64 0
  %i.td = shufflevector <4 x float> %i.tc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.te = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.td, <4 x float> <float f0x400998DE, float f0xBFB3B903, float 0.000000e+00, float f0x400998DE>, <4 x float> %i.sz)
  %i.tf = fmul float %i.mq, %i.mm                 ; 2 uses
  %i.tg = tail call float @llvm.fmuladd.f32(float %i.tf, float f0x40C00672, float %i.tb)
  %i.th = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.tf, i64 0
  %i.ti = shufflevector <4 x float> %i.th, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.tj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ti, <4 x float> <float f0x3FF42585, float f0x40238DA6, float 0.000000e+00, float f0x3FF42585>, <4 x float> %i.te)
  %i.tk = fsub float %i.ch, %i.tg
  %i.tl = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.tm = insertelement <4 x float> %i.tl, float 1.000000e+00, i64 2
  %i.tn = fsub <4 x float> %i.tm, %i.tj
  %20 = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %6, i64 0 ; 2 uses
  %21 = fsub <4 x float> <float 1.000000e+00, float 0.000000e+00, float poison, float poison>, %20 ; 4 uses
  %i.to = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %22 = extractelement <4 x float> %21, i64 0     ; 3 uses
  %i.tp = tail call float @llvm.fmuladd.f32(float %22, float %i.kr, float %i.nw) ; 6 uses
  %i.tq = tail call float @llvm.fmuladd.f32(float %22, float %i.ig, float %i.nx) ; 9 uses
  %i.tr = tail call float @llvm.fmuladd.f32(float %22, float %i.jp, float %i.ny) ; 10 uses
  %i.ts = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.qt, i64 0
  %i.tt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lt, <2 x float> %i.nz, <2 x float> %i.ts)
  %i.tu = insertelement <2 x float> %i.ob, float %i.ku, i64 1
  %23 = shufflevector <4 x float> %21, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %24 = shufflevector <4 x float> <float f0x40C00672, float poison, float poison, float poison>, <4 x float> %21, <2 x i32> <i32 0, i32 4>
  %i.tv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tu, <2 x float> %24, <2 x float> %i.tt) ; 3 uses
  %i.tw = fmul float %6, %i.tk
  %i.tx = fmul float %i.tp, %i.tp                 ; 4 uses
  %i.ty = fmul float %i.tq, %i.tq                 ; 3 uses
  %i.tz = fmul float %i.tr, %i.tr                 ; 3 uses
  %i.ua = extractelement <2 x float> %i.tv, i64 1 ; 8 uses
  %i.ub = fmul float %i.ua, %i.ua                 ; 4 uses
  %i.uc = fmul float %i.tp, %i.tq                 ; 3 uses
  %i.ud = fmul float %i.tp, %i.tr                 ; 2 uses
  %i.ue = fmul float %i.tq, %i.tr
  %i.uf = fmul float %i.tp, %i.tx                 ; 2 uses
  %i.ug = tail call float @llvm.fmuladd.f32(float %i.uf, float f0x3D9E0B95, float 0.000000e+00)
  %i.uh = fmul float %i.tq, %i.ty                 ; 2 uses
  %i.ui = tail call float @llvm.fmuladd.f32(float %i.uh, float 9.591230e-01, float %i.ug)
  %i.uj = fmul float %i.tr, %i.tz                 ; 2 uses
  %i.uk = tail call float @llvm.fmuladd.f32(float %i.uj, float f0x3F3F30C2, float %i.ui)
  %i.ul = fmul float %i.ua, %i.ub                 ; 2 uses
  %i.um = tail call float @llvm.fmuladd.f32(float %i.ul, float f0x3F7EC435, float %i.uk)
  %i.un = fmul float %i.tx, %i.tq                 ; 2 uses
  %i.uo = tail call float @llvm.fmuladd.f32(float %i.un, float f0x3D456469, float %i.um)
  %i.up = fmul float %i.tq, %i.uc                 ; 2 uses
  %i.uq = tail call float @llvm.fmuladd.f32(float %i.up, float f0xBF2E74C9, float %i.uo)
  %i.ur = fmul float %i.tx, %i.tr                 ; 2 uses
  %i.us = tail call float @llvm.fmuladd.f32(float %i.ur, float f0x3E8A8A03, float %i.uq)
  %i.ut = fmul float %i.tr, %i.ud                 ; 2 uses
  %i.uu = tail call float @llvm.fmuladd.f32(float %i.ut, float f0x3F4E0630, float %i.us)
  %i.uv = fmul float %i.tx, %i.ua                 ; 2 uses
  %i.uw = tail call float @llvm.fmuladd.f32(float %i.uv, float f0xBEB35BD6, float %i.uu)
  %i.ux = fmul float %i.tp, %i.ub                 ; 2 uses
  %i.uy = tail call float @llvm.fmuladd.f32(float %i.ux, float f0x3F86905C, float %i.uw)
  %i.uz = fmul float %i.ty, %i.tr                 ; 2 uses
  %i.va = tail call float @llvm.fmuladd.f32(float %i.uz, float f0x404DD41D, float %i.uy)
  %i.vb = fmul float %i.tq, %i.tz                 ; 2 uses
  %i.vc = tail call float @llvm.fmuladd.f32(float %i.vb, float f0x40327DE4, float %i.va)
  %i.vd = fmul float %i.ty, %i.ua                 ; 2 uses
  %i.ve = tail call float @llvm.fmuladd.f32(float %i.vd, float f0x40416251, float %i.vc)
  %i.vf = fmul float %i.tq, %i.ub                 ; 2 uses
  %i.vg = tail call float @llvm.fmuladd.f32(float %i.vf, float f0x403CE13B, float %i.ve)
  %i.vh = fmul float %i.tz, %i.ua                 ; 2 uses
  %i.vi = tail call float @llvm.fmuladd.f32(float %i.vh, float f0x4034E9CF, float %i.vg)
  %i.vj = fmul float %i.tr, %i.ub                 ; 2 uses
  %i.vk = tail call float @llvm.fmuladd.f32(float %i.vj, float f0x403FCD64, float %i.vi)
  %i.vl = fmul float %i.uc, %i.tr                 ; 2 uses
  %i.vm = tail call float @llvm.fmuladd.f32(float %i.vl, float f0x3FEFDD4D, float %i.vk)
  %i.vn = fmul float %i.uc, %i.ua                 ; 2 uses
  %i.vo = tail call float @llvm.fmuladd.f32(float %i.vn, float f0x40243AE9, float %i.vm)
  %i.vp = fmul float %i.ud, %i.ua                 ; 2 uses
  %i.vq = tail call float @llvm.fmuladd.f32(float %i.vp, float f0x4082AA5A, float %i.vo)
  %i.vr = insertelement <2 x float> %i.oa, float %i.ue, i64 1 ; 2 uses
  %i.vs = fsub <2 x float> %i.vr, %i.tv
  %i.vt = fmul <2 x float> %i.vr, %i.tv           ; 2 uses
  %i.vu = shufflevector <2 x float> %i.vs, <2 x float> %i.vt, <2 x i32> <i32 0, i32 3>
  %25 = insertelement <2 x float> %23, float f0x40C00672, i64 1
  %i.vv = insertelement <2 x float> poison, float %i.tw, i64 0
  %i.vw = insertelement <2 x float> %i.vv, float %i.vq, i64 1
  %i.vx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vu, <2 x float> %25, <2 x float> %i.vw) ; 2 uses
  %26 = shufflevector <2 x float> %i.vx, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %27 = shufflevector <4 x float> %26, <4 x float> %20, <4 x i32> <i32 4, i32 4, i32 2, i32 4>
  %i.vy = fmul <4 x float> %27, %i.tn
  %i.vz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.to, <4 x float> %i.qk, <4 x float> %i.vy)
  %i.wa = insertelement <2 x float> poison, float %i.uf, i64 0
  %i.wb = shufflevector <2 x float> %i.wa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wb, <2 x float> <float f0x3E7E4A33, float f0x3CE79607>, <2 x float> zeroinitializer)
  %i.wd = insertelement <2 x float> poison, float %i.uh, i64 0
  %i.we = shufflevector <2 x float> %i.wd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.we, <2 x float> <float f0x3D11E497, float f0x3F4D74EB>, <2 x float> %i.wc)
  %i.wg = insertelement <2 x float> poison, float %i.uj, i64 0
  %i.wh = shufflevector <2 x float> %i.wg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wh, <2 x float> <float 0.000000e+00, float f0x3D476AD3>, <2 x float> %i.wf)
  %i.wj = insertelement <2 x float> poison, float %i.ul, i64 0
  %i.wk = shufflevector <2 x float> %i.wj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wk, <2 x float> <float 9.970480e-01, float f0x3F7FF1AE>, <2 x float> %i.wi)
  %i.wm = insertelement <2 x float> poison, float %i.un, i64 0
  %i.wn = shufflevector <2 x float> %i.wm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wn, <2 x float> <float f0x3EA67A8E, float f0x3F55694A>, <2 x float> %i.wl)
  %i.wp = insertelement <2 x float> poison, float %i.up, i64 0
  %i.wq = shufflevector <2 x float> %i.wp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wq, <2 x float> <float f0x3F88EF83, float f0x3FBB049B>, <2 x float> %i.wo)
  %i.ws = insertelement <2 x float> poison, float %i.ur, i64 0
  %i.wt = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wt, <2 x float> <float f0x3FFE6181, float f0xBE1CED3A>, <2 x float> %i.wr)
  %i.wv = insertelement <2 x float> poison, float %i.ut, i64 0
  %i.ww = shufflevector <2 x float> %i.wv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ww, <2 x float> <float 1.842450e-01, float f0x3F2BC289>, <2 x float> %i.wu)
  %i.wy = insertelement <2 x float> poison, float %i.uv, i64 0
  %i.wz = shufflevector <2 x float> %i.wy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wz, <2 x float> <float 3.688650e+00, float f0x3FB07499>, <2 x float> %i.wx)
  %i.xb = insertelement <2 x float> poison, float %i.ux, i64 0
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xc, <2 x float> <float f0x40351CEE, float f0x3FFD3419>, <2 x float> %i.xa)
  %i.xe = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.uz, i64 0
  %28 = shufflevector <4 x float> %i.xe, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.xf = shufflevector <2 x float> %i.xd, <2 x float> %i.vx, <4 x i32> <i32 0, i32 1, i32 3, i32 0>
  %i.xg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %28, <4 x float> <float f0x3F84550C, float f0x3F500D42, float 0.000000e+00, float f0x3F84550C>, <4 x float> %i.xf)
  %i.xh = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.vb, i64 0
  %i.xi = shufflevector <4 x float> %i.xh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.xj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xi, <4 x float> <float f0xBD37CCB3, float f0x3ED4D0CC, float 0.000000e+00, float f0xBD37CCB3>, <4 x float> %i.xg)
  %i.xk = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.vd, i64 0
  %i.xl = shufflevector <4 x float> %i.xk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.xm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xl, <4 x float> <float f0x3EA7C333, float f0x4023707E, float 0.000000e+00, float f0x3EA7C333>, <4 x float> %i.xj)
  %i.xn = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.vf, i64 0
  %i.xo = shufflevector <4 x float> %i.xn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.xp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xo, <4 x float> <float f0x3F96801B, float f0x4033F7FD, float 0.000000e+00, float f0x3F96801B>, <4 x float> %i.xm)
  %i.xq = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.vh, i64 0
  %i.xr = shufflevector <4 x float> %i.xq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.xs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xr, <4 x float> <float f0x3FE89875, float f0x3F4CA0EA, float 0.000000e+00, float f0x3FE89875>, <4 x float> %i.xp)
  %i.xt = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.vj, i64 0
  %i.xu = shufflevector <4 x float> %i.xt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.xv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xu, <4 x float> <float f0x3FE73C97, float f0x3F9CEB4B, float 0.000000e+00, float f0x3FE73C97>, <4 x float> %i.xs)
  %i.xw = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.vl, i64 0
  %i.xx = shufflevector <4 x float> %i.xw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.xy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xx, <4 x float> <float f0xBE98C2A3, float f0x400337A7, float 0.000000e+00, float f0xBE98C2A3>, <4 x float> %i.xv)
  %i.xz = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.vn, i64 0
  %i.ya = shufflevector <4 x float> %i.xz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.yb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ya, <4 x float> <float f0x3F203166, float f0x40E118D7, float 0.000000e+00, float f0x3F203166>, <4 x float> %i.xy)
  %i.yc = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.vp, i64 0
  %i.yd = shufflevector <4 x float> %i.yc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ye = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yd, <4 x float> <float f0x400998DE, float f0xBFB3B903, float 0.000000e+00, float f0x400998DE>, <4 x float> %i.yb)
  %29 = shufflevector <2 x float> %i.vt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 1>
  %30 = insertelement <4 x float> %29, float -0.000000e+00, i64 2
  %i.yf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %30, <4 x float> <float f0x3FF42585, float f0x40238DA6, float 0.000000e+00, float f0x3FF42585>, <4 x float> %i.ye)
  %i.yg = fadd <4 x float> %i.vz, %i.yf           ; 5 uses
  %i.yh = extractelement <4 x float> %i.yg, i64 2 ; 2 uses
  %i.yi = fcmp ogt float %i.yh, 1.000000e+00
  %i.yj = select i1 %i.yi, float 1.000000e+00, float %i.yh
  %i.yk = extractelement <4 x float> %i.yg, i64 1
  %i.yl = fcmp ogt float %i.yk, 1.000000e+00
  %i.ym = fcmp olt <4 x float> %i.yg, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.yn = fcmp ogt <4 x float> %i.yg, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.yo = tail call float @llvm.fmuladd.f32(float %i.yj, float 2.550000e+02, float 5.000000e-01)
  %i.yp = extractelement <4 x i1> %i.ym, i64 2
  %i.yq = fptosi float %i.yo to i32
  %i.yr = trunc i32 %i.yq to i8
  %i.ys = select i1 %i.yp, i8 0, i8 %i.yr
  store i8 %i.ys, ptr %7, align 1, !tbaa !9
  %i.yt = shufflevector <4 x i1> %i.yn, <4 x i1> poison, <2 x i32> <i32 3, i32 poison>
  %i.yu = insertelement <2 x i1> %i.yt, i1 %i.yl, i64 1
  %i.yv = shufflevector <4 x float> %i.yg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.yw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yv, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %i.yx = shufflevector <4 x i1> %i.ym, <4 x i1> poison, <2 x i32> <i32 0, i32 1>
  %i.yy = fptosi <2 x float> %i.yw to <2 x i32>
  %i.yz = trunc <2 x i32> %i.yy to <2 x i8>
  %i.za = select <2 x i1> %i.yu, <2 x i8> splat (i8 -1), <2 x i8> %i.yz
  %i.zb = select <2 x i1> %i.yx, <2 x i8> zeroinitializer, <2 x i8> %i.za ; 2 uses
  %i.zc = extractelement <2 x i8> %i.zb, i64 1
  store i8 %i.zc, ptr %8, align 1, !tbaa !9
  %i.zd = extractelement <2 x i8> %i.zb, i64 0
  store i8 %i.zd, ptr %9, align 1, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @mixbox_lerp_float(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %i.b = fcmp ogt float %0, 1.000000e+00
  %i.c = select i1 %i.b, float 1.000000e+00, float %0
  %i.d = select i1 %i.a, float 0.000000e+00, float %i.c ; 2 uses
  %i.e = insertelement <2 x float> poison, float %2, i64 0
  %i.f = insertelement <2 x float> %i.e, float %1, i64 1 ; 3 uses
  %i.g = fcmp olt <2 x float> %i.f, zeroinitializer
  %i.h = fcmp ogt <2 x float> %i.f, splat (float 1.000000e+00)
  %i.i = select <2 x i1> %i.h, <2 x float> splat (float 1.000000e+00), <2 x float> %i.f
  %i.j = select <2 x i1> %i.g, <2 x float> zeroinitializer, <2 x float> %i.i ; 2 uses
  %i.k = fmul float %i.d, 6.300000e+01            ; 2 uses
  %i.l = fmul <2 x float> %i.j, splat (float 6.300000e+01) ; 3 uses
  %i.m = fptosi float %i.k to i32                 ; 2 uses
  %i.n = fptosi <2 x float> %i.l to <2 x i32>     ; 3 uses
  %i.o = load atomic i8, ptr @_ZGVZL10mixbox_lutvE12decompressed acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.b, label %_ZL10mixbox_lutv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.q = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL10mixbox_lutvE12decompressed) #12
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZL10mixbox_lutv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZZL10mixbox_lutvEN13mixbox_init_tC2Ev()
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 799107, ptr nonnull @_ZZL10mixbox_lutvE12decompressed) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL10mixbox_lutvE12decompressed) #12
  br label %_ZL10mixbox_lutv.exit

_ZL10mixbox_lutv.exit:                            ; preds = %bb.a, %bb.b, %bb.c
  %i.s = shl nsw <2 x i32> %i.n, <i32 12, i32 6>  ; 2 uses
  %i.t = extractelement <2 x i32> %i.s, i64 1
  %i.u = add nsw i32 %i.t, %i.m
  %i.v = extractelement <2 x i32> %i.s, i64 0
  %i.w = add nsw i32 %i.u, %i.v
  %i.x = and i32 %i.w, 262143
  %i.y = mul nuw nsw i32 %i.x, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZZL10mixbox_lutvE12decompressed, i64 %i.z ; 24 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 193
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 194
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 195
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 196
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 197
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 384
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 385
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 386
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 387
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 388
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 389
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 12480
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 12481
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 12482
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 12483
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 12484
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 12485
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 12672
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 12673
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 12674
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 12675
  %i.br = load <2 x i8>, ptr %i.bp, align 1, !tbaa !9
  %i.bs = load i8, ptr %i.bq, align 1, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 12676
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aa, i64 12677
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.bx = load atomic i8, ptr @_ZGVZL10mixbox_lutvE12decompressed acquire, align 8
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.d, label %_ZL10mixbox_lutv.exit16, !prof !8

bb.d:                                             ; preds = %_ZL10mixbox_lutv.exit
  %i.bz = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL10mixbox_lutvE12decompressed) #12
  %.not.i15 = icmp eq i32 %i.bz, 0
  br i1 %.not.i15, label %_ZL10mixbox_lutv.exit16, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZZL10mixbox_lutvEN13mixbox_init_tC2Ev()
  %i.ca = tail call ptr @llvm.invariant.start.p0(i64 799107, ptr nonnull @_ZZL10mixbox_lutvE12decompressed) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL10mixbox_lutvE12decompressed) #12
  br label %_ZL10mixbox_lutv.exit16

_ZL10mixbox_lutv.exit16:                          ; preds = %_ZL10mixbox_lutv.exit, %bb.d, %bb.e
  %i.cb = insertelement <2 x float> poison, float %5, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %4, i64 1 ; 3 uses
  %i.cd = fcmp olt <2 x float> %i.cc, zeroinitializer
  %i.ce = fcmp ogt <2 x float> %i.cc, splat (float 1.000000e+00)
  %i.cf = fcmp olt float %3, 0.000000e+00
  %i.cg = fcmp ogt float %3, 1.000000e+00
  %i.ch = select i1 %i.cg, float 1.000000e+00, float %3
  %i.ci = select i1 %i.cf, float 0.000000e+00, float %i.ch ; 2 uses
  %i.cj = fmul float %i.ci, 6.300000e+01          ; 2 uses
  %i.ck = fptosi float %i.cj to i32               ; 2 uses
  %i.cl = uitofp i8 %i.bu to float
  %i.cm = uitofp i8 %i.bo to float
  %i.cn = uitofp i8 %i.bi to float
  %i.co = uitofp i8 %i.bc to float
  %i.cp = uitofp i8 %i.aw to float
  %i.cq = uitofp i8 %i.aq to float
  %i.cr = uitofp i8 %i.ak to float
  %i.cs = uitofp i8 %i.ae to float
  %i.ct = uitofp i8 %i.be to float
  %i.cu = uitofp i8 %i.au to float
  %i.cv = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.cw = insertelement <2 x i32> %i.cv, i32 %i.ck, i64 1
  %i.cx = sitofp <2 x i32> %i.cw to <2 x float>
  %i.cy = insertelement <2 x float> poison, float %i.k, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.cj, i64 1
  %i.da = fsub <2 x float> %i.cz, %i.cx           ; 3 uses
  %i.db = shufflevector <2 x i32> %i.n, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.dc = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dd = fsub <2 x float> splat (float 1.000000e+00), %i.da ; 2 uses
  %i.de = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.df = insertelement <2 x i8> poison, i8 %i.bk, i64 0
  %i.dg = insertelement <2 x i8> poison, i8 %i.bw, i64 0
  %i.dh = insertelement <2 x i8> poison, i8 %i.ac, i64 0
  %i.di = insertelement <2 x i8> poison, i8 %i.ai, i64 0
  %i.dj = insertelement <2 x i8> poison, i8 %i.ao, i64 0
  %i.dk = insertelement <2 x i8> poison, i8 %i.ag, i64 0
  %i.dl = insertelement <2 x i8> poison, i8 %i.am, i64 0
  %i.dm = insertelement <2 x i8> poison, i8 %i.as, i64 0
  %i.dn = insertelement <2 x i8> poison, i8 %i.ay, i64 0
  %i.do = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.dp = insertelement <2 x i8> poison, i8 %i.ba, i64 0
  %i.dq = insertelement <2 x i8> poison, i8 %i.bg, i64 0
  %i.dr = insertelement <2 x i8> poison, i8 %i.bm, i64 0
  %i.ds = uitofp i8 %i.bs to float
  %i.dt = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.du = select <2 x i1> %i.ce, <2 x float> splat (float 1.000000e+00), <2 x float> %i.cc
  %i.dv = select <2 x i1> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.du ; 3 uses
  %i.dw = extractelement <2 x float> %i.dv, i64 0
  %i.dx = fmul float %i.dw, 6.300000e+01          ; 2 uses
  %i.dy = fptosi float %i.dx to i32               ; 2 uses
  %i.dz = extractelement <2 x float> %i.dv, i64 1
  %i.ea = fmul float %i.dz, 6.300000e+01          ; 2 uses
  %i.eb = fptosi float %i.ea to i32               ; 2 uses
  %i.ec = shl nsw i32 %i.eb, 6
  %i.ed = add nsw i32 %i.ec, %i.ck
end_hunk_0
begin_hunk_1_@_ZL9fill_bitsP4zbuf:bb.a

bb.b:                                             ; preds = %_ZL5zget8P4zbuf.exit, %bb.a
  %i.h = phi i32 [ %i.bj, %_ZL5zget8P4zbuf.exit ], [ %.promoted12, %bb.a ] ; 4 uses
  %i.i = phi i32 [ %i.bi, %_ZL5zget8P4zbuf.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.highbits = lshr i32 %i.i, %i.h
  %.not = icmp eq i32 %.highbits, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.g, align 8, !tbaa !23
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.k = and i32 %i.j, 3                          ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !18   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9     ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.t = add nsw i32 %i.s, 1                      ; 2 uses
  store i32 %i.t, ptr %i.e, align 8, !tbaa !17
  %i.u = icmp sgt i32 %i.s, 39
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !23
  br label %_ZL5zget8P4zbuf.exit

bb.h:                                             ; preds = %bb.f
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [8 x i8], ptr @_ZL21mixbox_lut_compressed, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !12
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %.pre = load i8, ptr %i.x, align 1, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.y = phi i8 [ %.pre, %bb.h ], [ %i.q, %bb.e ] ; 2 uses
  %i.z = phi i32 [ 0, %bb.h ], [ %i.n, %bb.e ]    ; 2 uses
  %i.aa = phi ptr [ %i.x, %bb.h ], [ %i.m, %bb.e ]
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %i.ad = icmp sgt i8 %i.y, 91
  %.v.i11 = select i1 %i.ad, i8 -36, i8 -35
  %i.ae = add i8 %.v.i11, %i.y
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr i8, ptr %i.ac, i64 1
  %i.ah = load <4 x i8>, ptr %i.ag, align 1, !tbaa !9 ; 2 uses
  %i.ai = icmp sgt <4 x i8> %i.ah, splat (i8 91)
  %i.aj = select <4 x i1> %i.ai, <4 x i8> splat (i8 -36), <4 x i8> splat (i8 -35)
  %i.ak = add <4 x i8> %i.aj, %i.ah               ; 4 uses
  %i.al = extractelement <4 x i8> %i.ak, i64 0
  %i.am = zext i8 %i.al to i32
  %i.an = extractelement <4 x i8> %i.ak, i64 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = extractelement <4 x i8> %i.ak, i64 2
  %i.aq = zext i8 %i.ap to i32
  %i.ar = extractelement <4 x i8> %i.ak, i64 3
  %i.as = zext i8 %i.ar to i32
  %i.at = mul nuw nsw i32 %i.as, 85
  %i.au = add nuw nsw i32 %i.at, %i.aq
  %i.av = mul nuw nsw i32 %i.au, 85
  %i.aw = add nuw nsw i32 %i.av, %i.ao
  %i.ax = mul nuw nsw i32 %i.aw, 85
  %i.ay = add nuw nsw i32 %i.ax, %i.am
  %i.az = mul nuw nsw i32 %i.ay, 85
  %i.ba = add nuw nsw i32 %i.az, %i.af
  store i32 %i.ba, ptr %i.f, align 4
  %i.bb = add nsw i32 %i.z, 5
  store i32 %i.bb, ptr %i.d, align 4, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.bc = zext nneg i32 %i.k to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9
  %i.bf = add nsw i32 %i.j, 1
  store i32 %i.bf, ptr %i.c, align 8, !tbaa !19
  %i.bg = zext i8 %i.be to i32
  br label %_ZL5zget8P4zbuf.exit

_ZL5zget8P4zbuf.exit:                             ; preds = %bb.g, %bb.j
  %.0.i = phi i32 [ 0, %bb.g ], [ %i.bg, %bb.j ]
  %i.bh = shl i32 %.0.i, %i.h
  %i.bi = or i32 %i.bh, %i.i                      ; 2 uses
  store i32 %i.bi, ptr %i.a, align 4, !tbaa !25
  %i.bj = add nsw i32 %i.h, 8                     ; 2 uses
  store i32 %i.bj, ptr %i.b, align 8, !tbaa !24
  %i.bk = icmp slt i32 %i.h, 17
  br i1 %i.bk, label %bb.b, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %_ZL5zget8P4zbuf.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL14zbuild_huffmanP8zhuffmanPKhi(ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #8 {
.preheader74.preheader:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false), !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1024) %0, i8 0, i64 1024, i1 false), !tbaa !30
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader74.preheader
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !46

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !32
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !47

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader74.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge, %bb.b
  %indvars.iv91 = phi i64 [ 1, %._crit_edge ], [ %indvars.iv.next92, %bb.b ] ; 8 uses
  %.06480 = phi i32 [ 0, %._crit_edge ], [ %i.bd, %bb.b ] ; 2 uses
  %.06579 = phi i32 [ 0, %._crit_edge ], [ %i.bc, %bb.b ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv91
  store i32 %.06579, ptr %i.ao, align 4, !tbaa !32
  %i.ap = trunc i32 %.06579 to i16
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv91
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !30
  %i.ar = trunc i32 %.06480 to i16
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv91
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !30
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv91
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32 ; 3 uses
  %i.av = add nsw i32 %i.au, %.06579              ; 3 uses
  %.not70 = icmp ne i32 %i.au, 0
  %i.aw = trunc nuw nsw i64 %indvars.iv91 to i32
  %i.ax = shl nuw nsw i32 1, %i.aw
  %.not71.not = icmp sgt i32 %i.av, %i.ax
  %or.cond = select i1 %.not70, i1 %.not71.not, i1 false
  br i1 %or.cond, label %.loopexit72, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ay = trunc i64 %indvars.iv91 to i32
  %i.az = sub i32 16, %i.ay
  %i.ba = shl i32 %i.av, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv91
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !32
  %i.bc = shl i32 %i.av, 1
  %i.bd = add nsw i32 %i.au, %.06480
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, 16
  br i1 %exitcond94.not, label %bb.c, label %bb.a, !llvm.loop !48

bb.c:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.be, align 4, !tbaa !32
  br i1 %i.c, label %.lr.ph86, label %.loopexit72

.lr.ph86:                                         ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count101 = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph86, %bb.g
  %indvars.iv98 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next99, %bb.g ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv98
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9   ; 5 uses
  %i.bj = zext i8 %i.bi to i32                    ; 3 uses
  %.not = icmp eq i8 %i.bi, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = zext i8 %i.bi to i64                    ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32 ; 3 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.bk
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.bp = zext i16 %i.bo to i32
  %i.bq = sub i32 %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bk
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !30
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add nsw i32 %i.bq, %i.bt
  %i.bv = shl nuw nsw i32 %i.bj, 9
  %i.bw = trunc nuw nsw i64 %indvars.iv98 to i32
  %i.bx = or i32 %i.bv, %i.bw
  %i.by = trunc i32 %i.bx to i16
  %i.bz = sext i32 %i.bu to i64                   ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bf, i64 %i.bz
  store i8 %i.bi, ptr %i.ca, align 1, !tbaa !9
  %i.cb = trunc i64 %indvars.iv98 to i16
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.bz
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !30
  %i.cd = icmp ult i8 %i.bi, 10
  br i1 %i.cd, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.e
  %trunc.i = trunc i32 %i.bm to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.ce = zext i16 %rev.i to i32
  %i.cf = sub nuw nsw i32 16, %i.bj
  %i.cg = lshr i32 %i.ce, %i.cf
  %i.ch = shl nuw nsw i32 1, %i.bj
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = zext nneg i32 %i.ch to i64
  br label %bb.f

bb.f:                                             ; preds = %iter.check, %bb.f
  %indvars.iv95 = phi i64 [ %i.ci, %iter.check ], [ %indvars.iv.next96, %bb.f ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv95
  store i16 %i.by, ptr %i.ck, align 2, !tbaa !30
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, %i.cj ; 2 uses
  %i.cl = icmp samesign ult i64 %indvars.iv.next96, 512
  br i1 %i.cl, label %bb.f, label %.loopexit, !llvm.loop !49

.loopexit:                                        ; preds = %bb.f, %bb.e
  %i.cm = add nsw i32 %i.bm, 1
  store i32 %i.cm, ptr %i.bl, align 4, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.d
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.loopexit72, label %bb.d, !llvm.loop !50

.loopexit72:                                      ; preds = %bb.a, %bb.g, %bb.c
  %.067 = phi i32 [ 1, %bb.c ], [ 1, %bb.g ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.067
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTS4zbuf", !14, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !5, i64 24, !5, i64 28, !14, i64 32, !14, i64 40, !14, i64 48, !5, i64 56, !16, i64 60, !16, i64 2080}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"_ZTS8zhuffman", !6, i64 0, !6, i64 1024, !6, i64 1056, !6, i64 1124, !6, i64 1156, !6, i64 1444}
!17 = !{!13, !5, i64 8}
!18 = !{!13, !5, i64 12}
!19 = !{!13, !5, i64 16}
!20 = !{!13, !14, i64 40}
!21 = !{!13, !14, i64 32}
!22 = !{!13, !14, i64 48}
!23 = !{!13, !5, i64 56}
!24 = !{!13, !5, i64 24}
!25 = !{!13, !5, i64 28}
!26 = !{!14, !14, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{!31, !31, i64 0}
!31 = !{!"short", !6, i64 0}
!32 = !{!5, !5, i64 0}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = distinct !{!35, !28, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", i32 4, i32 28}
!39 = distinct !{!39, !28, !36, !37}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !28, !36}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !28}
!46 = distinct !{!46, !28}
!47 = distinct !{!47, !41}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28, !36}
!50 = distinct !{!50, !28}
end_hunk_1
