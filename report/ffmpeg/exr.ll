begin_hunk_0_@dwa_uncompress:bb.a
  %i.jz = fsub nsz <4 x float> %i.jq, %i.iz
  store <4 x float> %i.jz, ptr %i.il, align 4, !tbaa !194
  %i.ka = fsub nsz <4 x float> %i.jp, %i.iv
  store <4 x float> %i.ka, ptr %i.iu, align 4, !tbaa !194
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gl, i64 80 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.kc, align 4, !tbaa !194 ; 2 uses
  %i.kd = fmul nsz <4 x float> %wide.load.1, splat (float f0x3EEC835E)
  %i.ke = fmul nsz <4 x float> %wide.load.1, splat (float f0x3E43EF15)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gl, i64 208 ; 2 uses
  %wide.load554.1 = load <4 x float>, ptr %i.kf, align 4, !tbaa !194 ; 2 uses
  %i.kg = fmul nsz <4 x float> %wide.load554.1, splat (float f0x3EEC835E)
  %i.kh = fmul nsz <4 x float> %wide.load554.1, splat (float f0x3E43EF15)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gl, i64 48 ; 2 uses
  %wide.load555.1 = load <4 x float>, ptr %i.ki, align 4, !tbaa !194 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gl, i64 112 ; 2 uses
  %wide.load556.1 = load <4 x float>, ptr %i.kj, align 4, !tbaa !194 ; 4 uses
  %i.kk = fmul nsz <4 x float> %wide.load556.1, splat (float f0x3ED4DB31)
  %i.kl = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load555.1, <4 x float> splat (float f0x3EFB14BE), <4 x float> %i.kk)
  %i.km = getelementptr inbounds nuw i8, ptr %i.gl, i64 176 ; 2 uses
  %wide.load557.1 = load <4 x float>, ptr %i.km, align 4, !tbaa !194 ; 4 uses
  %i.kn = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load557.1, <4 x float> splat (float f0x3E8E39DA), <4 x float> %i.kl)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gl, i64 240 ; 2 uses
  %wide.load558.1 = load <4 x float>, ptr %i.ko, align 4, !tbaa !194 ; 4 uses
  %i.kp = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load558.1, <4 x float> splat (float f0x3DC7C5C4), <4 x float> %i.kn) ; 2 uses
  %i.kq = fmul nsz <4 x float> %wide.load556.1, splat (float f0xBDC7C5C4)
  %i.kr = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load555.1, <4 x float> splat (float f0x3ED4DB31), <4 x float> %i.kq)
  %i.ks = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load557.1, <4 x float> splat (float f0xBEFB14BE), <4 x float> %i.kr)
  %i.kt = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load558.1, <4 x float> splat (float f0xBE8E39DA), <4 x float> %i.ks) ; 2 uses
  %i.ku = fmul nsz <4 x float> %wide.load556.1, splat (float f0xBEFB14BE)
  %i.kv = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load555.1, <4 x float> splat (float f0x3E8E39DA), <4 x float> %i.ku)
  %i.kw = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load557.1, <4 x float> splat (float f0x3DC7C5C4), <4 x float> %i.kv)
  %i.kx = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load558.1, <4 x float> splat (float f0x3ED4DB31), <4 x float> %i.kw) ; 2 uses
  %i.ky = fmul nsz <4 x float> %wide.load556.1, splat (float f0xBE8E39DA)
  %i.kz = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load555.1, <4 x float> splat (float f0x3DC7C5C4), <4 x float> %i.ky)
  %i.la = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load557.1, <4 x float> splat (float f0x3ED4DB31), <4 x float> %i.kz)
  %i.lb = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load558.1, <4 x float> splat (float f0xBEFB14BE), <4 x float> %i.la) ; 2 uses
  %wide.load559.1 = load <4 x float>, ptr %i.kb, align 4, !tbaa !194 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gl, i64 144 ; 2 uses
  %wide.load560.1 = load <4 x float>, ptr %i.lc, align 4, !tbaa !194 ; 2 uses
  %i.ld = fadd nsz <4 x float> %wide.load559.1, %wide.load560.1
  %i.le = fmul nsz <4 x float> %i.ld, splat (float f0x3EB504F3) ; 2 uses
  %i.lf = fsub nsz <4 x float> %wide.load559.1, %wide.load560.1
  %i.lg = fmul nsz <4 x float> %i.lf, splat (float f0x3EB504F3) ; 2 uses
  %i.lh = fadd nsz <4 x float> %i.kd, %i.kh       ; 2 uses
  %i.li = fsub nsz <4 x float> %i.ke, %i.kg       ; 2 uses
  %i.lj = fadd nsz <4 x float> %i.lh, %i.le       ; 2 uses
  %i.lk = fadd nsz <4 x float> %i.li, %i.lg       ; 2 uses
  %i.ll = fsub nsz <4 x float> %i.lg, %i.li       ; 2 uses
  %i.lm = fsub nsz <4 x float> %i.le, %i.lh       ; 2 uses
  %i.ln = fadd nsz <4 x float> %i.kp, %i.lj
  store <4 x float> %i.ln, ptr %i.kb, align 4, !tbaa !194
  %i.lo = fadd nsz <4 x float> %i.kt, %i.lk
  store <4 x float> %i.lo, ptr %i.ki, align 4, !tbaa !194
  %i.lp = fadd nsz <4 x float> %i.kx, %i.ll
  store <4 x float> %i.lp, ptr %i.kc, align 4, !tbaa !194
  %i.lq = fadd nsz <4 x float> %i.lb, %i.lm
  store <4 x float> %i.lq, ptr %i.kj, align 4, !tbaa !194
  %i.lr = fsub nsz <4 x float> %i.lm, %i.lb
  store <4 x float> %i.lr, ptr %i.lc, align 4, !tbaa !194
  %i.ls = fsub nsz <4 x float> %i.ll, %i.kx
  store <4 x float> %i.ls, ptr %i.km, align 4, !tbaa !194
  %i.lt = fsub nsz <4 x float> %i.lk, %i.kt
  store <4 x float> %i.lt, ptr %i.kf, align 4, !tbaa !194
  %i.lu = fsub nsz <4 x float> %i.lj, %i.kp
  store <4 x float> %i.lu, ptr %i.ko, align 4, !tbaa !194
  br label %vector.body

vector.body:                                      ; preds = %vector.body552, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body552 ] ; 2 uses
  %i.lv = shl i64 %index, 5                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.gl, i64 %i.lv ; 9 uses
  %i.lw = getelementptr i8, ptr %i.gl, i64 %i.lv  ; 8 uses
  %next.gep548 = getelementptr i8, ptr %i.lw, i64 32
  %i.lx = getelementptr i8, ptr %i.gl, i64 %i.lv  ; 8 uses
  %next.gep549 = getelementptr i8, ptr %i.lx, i64 64
  %i.ly = getelementptr i8, ptr %i.gl, i64 %i.lv  ; 8 uses
  %next.gep550 = getelementptr i8, ptr %i.ly, i64 96
  %i.lz = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ma = getelementptr i8, ptr %i.lw, i64 40
  %i.mb = getelementptr i8, ptr %i.lx, i64 72
  %i.mc = getelementptr i8, ptr %i.ly, i64 104
  %i.md = load float, ptr %i.lz, align 4, !tbaa !194
  %i.me = load float, ptr %i.ma, align 4, !tbaa !194
  %i.mf = load float, ptr %i.mb, align 4, !tbaa !194
  %i.mg = load float, ptr %i.mc, align 4, !tbaa !194
  %i.mh = insertelement <4 x float> poison, float %i.md, i64 0
  %i.mi = insertelement <4 x float> %i.mh, float %i.me, i64 1
  %i.mj = insertelement <4 x float> %i.mi, float %i.mf, i64 2
  %i.mk = insertelement <4 x float> %i.mj, float %i.mg, i64 3 ; 2 uses
  %i.ml = fmul nsz <4 x float> %i.mk, splat (float f0x3EEC835E)
  %i.mm = fmul nsz <4 x float> %i.mk, splat (float f0x3E43EF15)
  %i.mn = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.mo = getelementptr i8, ptr %i.lw, i64 56
  %i.mp = getelementptr i8, ptr %i.lx, i64 88
  %i.mq = getelementptr i8, ptr %i.ly, i64 120
  %i.mr = load float, ptr %i.mn, align 4, !tbaa !194
  %i.ms = load float, ptr %i.mo, align 4, !tbaa !194
  %i.mt = load float, ptr %i.mp, align 4, !tbaa !194
  %i.mu = load float, ptr %i.mq, align 4, !tbaa !194
  %i.mv = insertelement <4 x float> poison, float %i.mr, i64 0
  %i.mw = insertelement <4 x float> %i.mv, float %i.ms, i64 1
  %i.mx = insertelement <4 x float> %i.mw, float %i.mt, i64 2
  %i.my = insertelement <4 x float> %i.mx, float %i.mu, i64 3 ; 2 uses
  %i.mz = fmul nsz <4 x float> %i.my, splat (float f0x3EEC835E)
  %i.na = fmul nsz <4 x float> %i.my, splat (float f0x3E43EF15)
  %i.nb = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.nc = getelementptr i8, ptr %i.lw, i64 36
  %i.nd = getelementptr i8, ptr %i.lx, i64 68
  %i.ne = getelementptr i8, ptr %i.ly, i64 100
  %i.nf = load float, ptr %i.nb, align 4, !tbaa !194
  %i.ng = load float, ptr %i.nc, align 4, !tbaa !194
  %i.nh = load float, ptr %i.nd, align 4, !tbaa !194
  %i.ni = load float, ptr %i.ne, align 4, !tbaa !194
  %i.nj = insertelement <4 x float> poison, float %i.nf, i64 0
  %i.nk = insertelement <4 x float> %i.nj, float %i.ng, i64 1
  %i.nl = insertelement <4 x float> %i.nk, float %i.nh, i64 2
  %i.nm = insertelement <4 x float> %i.nl, float %i.ni, i64 3 ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.no = getelementptr i8, ptr %i.lw, i64 44
  %i.np = getelementptr i8, ptr %i.lx, i64 76
  %i.nq = getelementptr i8, ptr %i.ly, i64 108
  %i.nr = load float, ptr %i.nn, align 4, !tbaa !194
  %i.ns = load float, ptr %i.no, align 4, !tbaa !194
  %i.nt = load float, ptr %i.np, align 4, !tbaa !194
  %i.nu = load float, ptr %i.nq, align 4, !tbaa !194
  %i.nv = insertelement <4 x float> poison, float %i.nr, i64 0
  %i.nw = insertelement <4 x float> %i.nv, float %i.ns, i64 1
  %i.nx = insertelement <4 x float> %i.nw, float %i.nt, i64 2
  %i.ny = insertelement <4 x float> %i.nx, float %i.nu, i64 3 ; 4 uses
  %i.nz = fmul nsz <4 x float> %i.ny, splat (float f0x3ED4DB31)
  %i.oa = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nm, <4 x float> splat (float f0x3EFB14BE), <4 x float> %i.nz)
  %i.ob = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.oc = getelementptr i8, ptr %i.lw, i64 52
  %i.od = getelementptr i8, ptr %i.lx, i64 84
  %i.oe = getelementptr i8, ptr %i.ly, i64 116
  %i.of = load float, ptr %i.ob, align 4, !tbaa !194
  %i.og = load float, ptr %i.oc, align 4, !tbaa !194
  %i.oh = load float, ptr %i.od, align 4, !tbaa !194
  %i.oi = load float, ptr %i.oe, align 4, !tbaa !194
  %i.oj = insertelement <4 x float> poison, float %i.of, i64 0
  %i.ok = insertelement <4 x float> %i.oj, float %i.og, i64 1
  %i.ol = insertelement <4 x float> %i.ok, float %i.oh, i64 2
  %i.om = insertelement <4 x float> %i.ol, float %i.oi, i64 3 ; 4 uses
  %i.on = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.om, <4 x float> splat (float f0x3E8E39DA), <4 x float> %i.oa)
  %i.oo = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %i.op = getelementptr i8, ptr %i.lw, i64 60
  %i.oq = getelementptr i8, ptr %i.lx, i64 92
  %i.or = getelementptr i8, ptr %i.ly, i64 124
  %i.os = load float, ptr %i.oo, align 4, !tbaa !194
  %i.ot = load float, ptr %i.op, align 4, !tbaa !194
  %i.ou = load float, ptr %i.oq, align 4, !tbaa !194
  %i.ov = load float, ptr %i.or, align 4, !tbaa !194
  %i.ow = insertelement <4 x float> poison, float %i.os, i64 0
  %i.ox = insertelement <4 x float> %i.ow, float %i.ot, i64 1
  %i.oy = insertelement <4 x float> %i.ox, float %i.ou, i64 2
  %i.oz = insertelement <4 x float> %i.oy, float %i.ov, i64 3 ; 4 uses
  %i.pa = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oz, <4 x float> splat (float f0x3DC7C5C4), <4 x float> %i.on) ; 2 uses
  %i.pb = fmul nsz <4 x float> %i.ny, splat (float f0xBDC7C5C4)
  %i.pc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nm, <4 x float> splat (float f0x3ED4DB31), <4 x float> %i.pb)
  %i.pd = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.om, <4 x float> splat (float f0xBEFB14BE), <4 x float> %i.pc)
  %i.pe = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oz, <4 x float> splat (float f0xBE8E39DA), <4 x float> %i.pd) ; 2 uses
  %i.pf = fmul nsz <4 x float> %i.ny, splat (float f0xBEFB14BE)
  %i.pg = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nm, <4 x float> splat (float f0x3E8E39DA), <4 x float> %i.pf)
  %i.ph = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.om, <4 x float> splat (float f0x3DC7C5C4), <4 x float> %i.pg)
  %i.pi = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oz, <4 x float> splat (float f0x3ED4DB31), <4 x float> %i.ph) ; 2 uses
  %i.pj = fmul nsz <4 x float> %i.ny, splat (float f0xBE8E39DA)
  %i.pk = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nm, <4 x float> splat (float f0x3DC7C5C4), <4 x float> %i.pj)
  %i.pl = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.om, <4 x float> splat (float f0x3ED4DB31), <4 x float> %i.pk)
  %i.pm = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oz, <4 x float> splat (float f0xBEFB14BE), <4 x float> %i.pl) ; 2 uses
  %i.pn = load float, ptr %next.gep, align 4, !tbaa !194
  %i.po = load float, ptr %next.gep548, align 4, !tbaa !194
  %i.pp = load float, ptr %next.gep549, align 4, !tbaa !194
  %i.pq = load float, ptr %next.gep550, align 4, !tbaa !194
  %i.pr = insertelement <4 x float> poison, float %i.pn, i64 0
  %i.ps = insertelement <4 x float> %i.pr, float %i.po, i64 1
  %i.pt = insertelement <4 x float> %i.ps, float %i.pp, i64 2
  %i.pu = insertelement <4 x float> %i.pt, float %i.pq, i64 3 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.pw = getelementptr i8, ptr %i.lw, i64 48
  %i.px = getelementptr i8, ptr %i.lx, i64 80
  %i.py = getelementptr i8, ptr %i.ly, i64 112
  %i.pz = load float, ptr %i.pv, align 4, !tbaa !194
  %i.qa = load float, ptr %i.pw, align 4, !tbaa !194
  %i.qb = load float, ptr %i.px, align 4, !tbaa !194
  %i.qc = load float, ptr %i.py, align 4, !tbaa !194
  %i.qd = insertelement <4 x float> poison, float %i.pz, i64 0
  %i.qe = insertelement <4 x float> %i.qd, float %i.qa, i64 1
  %i.qf = insertelement <4 x float> %i.qe, float %i.qb, i64 2
  %i.qg = insertelement <4 x float> %i.qf, float %i.qc, i64 3 ; 2 uses
  %i.qh = fadd nsz <4 x float> %i.pu, %i.qg
  %i.qi = fmul nsz <4 x float> %i.qh, splat (float f0x3EB504F3) ; 2 uses
  %i.qj = fsub nsz <4 x float> %i.pu, %i.qg
  %i.qk = fmul nsz <4 x float> %i.qj, splat (float f0x3EB504F3) ; 2 uses
  %i.ql = fadd nsz <4 x float> %i.ml, %i.na       ; 2 uses
  %i.qm = fsub nsz <4 x float> %i.mm, %i.mz       ; 2 uses
  %i.qn = fadd nsz <4 x float> %i.ql, %i.qi       ; 2 uses
  %i.qo = fadd nsz <4 x float> %i.qm, %i.qk       ; 2 uses
  %i.qp = fsub nsz <4 x float> %i.qk, %i.qm       ; 2 uses
  %i.qq = fsub nsz <4 x float> %i.qi, %i.ql       ; 2 uses
  %6 = fadd nsz <4 x float> %i.pa, %i.qn
  %7 = fadd nsz <4 x float> %i.pe, %i.qo
  %i.qr = shufflevector <4 x float> %6, <4 x float> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = fadd nsz <4 x float> %i.pi, %i.qp
  %9 = fadd nsz <4 x float> %i.pm, %i.qq
  %i.qs = shufflevector <4 x float> %8, <4 x float> %9, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qt = shufflevector <8 x float> %i.qr, <8 x float> %i.qs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %10 = fsub nsz <4 x float> %i.qq, %i.pm
  %11 = fsub nsz <4 x float> %i.qp, %i.pi
  %i.qu = shufflevector <4 x float> %10, <4 x float> %11, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = fsub nsz <4 x float> %i.qo, %i.pe
  %13 = fsub nsz <4 x float> %i.qn, %i.pa
  %i.qv = shufflevector <4 x float> %12, <4 x float> %13, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qw = shufflevector <8 x float> %i.qu, <8 x float> %i.qv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.qt, <16 x float> %i.qw, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !194
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qx = icmp eq i64 %index.next, 8
  br i1 %i.qx, label %dct_inverse.exit, label %vector.body, !llvm.loop !196

dct_inverse.exit:                                 ; preds = %vector.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.ah, label %bb.ai, !llvm.loop !197

bb.an:                                            ; preds = %bb.ah
  br i1 %i.fz, label %.preheader431.lr.ph, label %.loopexit

.preheader431.lr.ph:                              ; preds = %bb.an
  %i.qy = load i32, ptr %i.n, align 8, !tbaa !54  ; 2 uses
  %i.qz = icmp sgt i64 %i.gh, 0
  %i.ra = mul nsw i32 %i.qy, %i.fc
  %i.rb = sext i32 %i.ra to i64                   ; 3 uses
  br i1 %i.qz, label %.preheader431.preheader, label %.loopexit

.preheader431.preheader:                          ; preds = %.preheader431.lr.ph
  %i.rc = load ptr, ptr %4, align 8, !tbaa !134
  %i.rd = sext i32 %i.qy to i64
  %i.re = mul nsw i64 %i.fy, %i.rd
  %i.rf = getelementptr inbounds [2 x i8], ptr %i.rc, i64 %i.re ; 3 uses
  %i.rg = select i1 %i.gg, i32 %i.fc, i32 0
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %i.rf, i64 %i.rh
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %i.ri, i64 %indvars.iv485
  %i.rk = zext i1 %i.gg to i32
  %i.rl = shl nuw i32 %i.fc, %i.rk
  %i.rm = sext i32 %i.rl to i64
  %i.rn = getelementptr inbounds [2 x i8], ptr %i.rf, i64 %i.rm
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.rn, i64 %indvars.iv485
  %i.rp = select i1 %i.gg, i32 3, i32 2
  %i.rq = mul nuw nsw i32 %i.rp, %i.fc
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.rf, i64 %i.rr
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %indvars.iv485
  %i.ru = sext i32 %spec.select to i64
  br label %.preheader431

.preheader431:                                    ; preds = %.preheader431.preheader, %._crit_edge443
  %indvars.iv482 = phi i64 [ 0, %.preheader431.preheader ], [ %indvars.iv.next483, %._crit_edge443 ] ; 2 uses
  %.0333447 = phi ptr [ %i.rj, %.preheader431.preheader ], [ %i.rw, %._crit_edge443 ] ; 2 uses
  %.0339446 = phi ptr [ %i.ro, %.preheader431.preheader ], [ %i.rx, %._crit_edge443 ] ; 2 uses
  %.0342444 = phi ptr [ %i.rt, %.preheader431.preheader ], [ %i.ry, %._crit_edge443 ] ; 2 uses
  %i.rv = shl nuw nsw i64 %indvars.iv482, 3
  br label %bb.ao

._crit_edge443:                                   ; preds = %to_linear.exit384
  %i.rw = getelementptr inbounds [2 x i8], ptr %.0333447, i64 %i.rb
  %i.rx = getelementptr inbounds [2 x i8], ptr %.0339446, i64 %i.rb
  %i.ry = getelementptr inbounds [2 x i8], ptr %.0342444, i64 %i.rb
  %indvars.iv.next483 = add nuw nsw i64 %indvars.iv482, 1 ; 2 uses
  %i.rz = icmp slt i64 %indvars.iv.next483, %i.ga
  br i1 %i.rz, label %.preheader431, label %.loopexit, !llvm.loop !198

bb.ao:                                            ; preds = %.preheader431, %to_linear.exit384
  %indvars.iv479 = phi i64 [ 0, %.preheader431 ], [ %indvars.iv.next480, %to_linear.exit384 ] ; 5 uses
  %i.sa = add nuw nsw i64 %indvars.iv479, %i.rv   ; 3 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.sa
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !194 ; 3 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.sa
  %i.se = load float, ptr %i.sd, align 4, !tbaa !194 ; 2 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.sa
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !194 ; 2 uses
  %i.sh = call nsz float @llvm.fmuladd.f32(float %i.sg, float 1.574700e+00, float %i.sc) ; 2 uses
  %i.si = call nsz float @llvm.fmuladd.f32(float %i.se, float -1.873000e-01, float %i.sc)
  %i.sj = call nsz float @llvm.fmuladd.f32(float %i.sg, float -4.682000e-01, float %i.si) ; 2 uses
  %i.sk = call nsz float @llvm.fmuladd.f32(float %i.se, float 1.855600e+00, float %i.sc) ; 2 uses
  %i.sl = call nsz float @llvm.fabs.f32(float %i.sk) ; 3 uses
  %i.sm = fcmp nsz ugt float %i.sl, 1.000000e+00
  br i1 %i.sm, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.sn = call nsz float @llvm.pow.f32(float %i.sl, float 2.200000e+00)
  br label %to_linear.exit

bb.aq:                                            ; preds = %bb.ao
  %i.so = fadd nsz float %i.sl, -1.000000e+00
  %i.sp = call nsz float @llvm.pow.f32(float f0x41106675, float %i.so)
  br label %to_linear.exit

to_linear.exit:                                   ; preds = %bb.ap, %bb.aq
  %.sink13.i = phi float [ %i.sp, %bb.aq ], [ %i.sn, %bb.ap ] ; 2 uses
  %i.sq = fcmp nsz ogt float %i.sk, 0.000000e+00
  %i.sr = fneg nsz float %.sink13.i
  %i.ss = select nsz i1 %i.sq, float %.sink13.i, float %i.sr
  %i.st = bitcast float %i.ss to i32              ; 2 uses
  %i.su = lshr i32 %i.st, 23
  %i.sv = zext nneg i32 %i.su to i64              ; 2 uses
  %i.sw = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.sv
  %i.sx = load i16, ptr %i.sw, align 2, !tbaa !149
  %i.sy = and i32 %i.st, 8388607
  %i.sz = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.sv
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !60
  %i.tb = zext nneg i8 %i.ta to i32
  %i.tc = lshr i32 %i.sy, %i.tb
  %i.td = trunc i32 %i.tc to i16
  %i.te = add i16 %i.sx, %i.td
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %.0333447, i64 %indvars.iv479
  store i16 %i.te, ptr %i.tf, align 2, !tbaa !149
  %i.tg = call nsz float @llvm.fabs.f32(float %i.sj) ; 3 uses
  %i.th = fcmp nsz ugt float %i.tg, 1.000000e+00
  br i1 %i.th, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %to_linear.exit
  %i.ti = call nsz float @llvm.pow.f32(float %i.tg, float 2.200000e+00)
  br label %to_linear.exit382

bb.as:                                            ; preds = %to_linear.exit
  %i.tj = fadd nsz float %i.tg, -1.000000e+00
  %i.tk = call nsz float @llvm.pow.f32(float f0x41106675, float %i.tj)
  br label %to_linear.exit382

to_linear.exit382:                                ; preds = %bb.ar, %bb.as
  %.sink13.i381 = phi float [ %i.tk, %bb.as ], [ %i.ti, %bb.ar ] ; 2 uses
  %i.tl = fcmp nsz ogt float %i.sj, 0.000000e+00
  %i.tm = fneg nsz float %.sink13.i381
  %i.tn = select nsz i1 %i.tl, float %.sink13.i381, float %i.tm
  %i.to = bitcast float %i.tn to i32              ; 2 uses
  %i.tp = lshr i32 %i.to, 23
  %i.tq = zext nneg i32 %i.tp to i64              ; 2 uses
  %i.tr = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.tq
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !149
  %i.tt = and i32 %i.to, 8388607
  %i.tu = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.tq
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !60
  %i.tw = zext nneg i8 %i.tv to i32
  %i.tx = lshr i32 %i.tt, %i.tw
  %i.ty = trunc i32 %i.tx to i16
  %i.tz = add i16 %i.ts, %i.ty
  %i.ua = getelementptr inbounds nuw [2 x i8], ptr %.0339446, i64 %indvars.iv479
  store i16 %i.tz, ptr %i.ua, align 2, !tbaa !149
  %i.ub = call nsz float @llvm.fabs.f32(float %i.sh) ; 3 uses
  %i.uc = fcmp nsz ugt float %i.ub, 1.000000e+00
  br i1 %i.uc, label %bb.au, label %bb.at

bb.at:                                            ; preds = %to_linear.exit382
  %i.ud = call nsz float @llvm.pow.f32(float %i.ub, float 2.200000e+00)
  br label %to_linear.exit384

bb.au:                                            ; preds = %to_linear.exit382
  %i.ue = fadd nsz float %i.ub, -1.000000e+00
  %i.uf = call nsz float @llvm.pow.f32(float f0x41106675, float %i.ue)
  br label %to_linear.exit384

to_linear.exit384:                                ; preds = %bb.at, %bb.au
  %.sink13.i383 = phi float [ %i.uf, %bb.au ], [ %i.ud, %bb.at ] ; 2 uses
  %i.ug = fcmp nsz ogt float %i.sh, 0.000000e+00
  %i.uh = fneg nsz float %.sink13.i383
  %i.ui = select nsz i1 %i.ug, float %.sink13.i383, float %i.uh
  %i.uj = bitcast float %i.ui to i32              ; 2 uses
  %i.uk = lshr i32 %i.uj, 23
  %i.ul = zext nneg i32 %i.uk to i64              ; 2 uses
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.ul
  %i.un = load i16, ptr %i.um, align 2, !tbaa !149
  %i.uo = and i32 %i.uj, 8388607
  %i.up = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ul
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !60
  %i.ur = zext nneg i8 %i.uq to i32
  %i.us = lshr i32 %i.uo, %i.ur
  %i.ut = trunc i32 %i.us to i16
  %i.uu = add i16 %i.un, %i.ut
  %i.uv = getelementptr inbounds nuw [2 x i8], ptr %.0342444, i64 %indvars.iv479
  store i16 %i.uu, ptr %i.uv, align 2, !tbaa !149
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %i.uw = icmp slt i64 %indvars.iv.next480, %i.ru
  br i1 %i.uw, label %bb.ao, label %._crit_edge443, !llvm.loop !199

bb.av:                                            ; preds = %bb.ah
  br i1 %i.fz, label %.preheader432.lr.ph, label %.loopexit

.preheader432.lr.ph:                              ; preds = %bb.av
  %i.ux = load i32, ptr %i.n, align 8, !tbaa !54  ; 2 uses
  %i.uy = icmp sgt i64 %i.gh, 0
  %i.uz = mul nsw i32 %i.ux, %i.fc
  %i.va = sext i32 %i.uz to i64                   ; 3 uses
  br i1 %i.uy, label %.preheader432.preheader, label %.loopexit

.preheader432.preheader:                          ; preds = %.preheader432.lr.ph
  %i.vb = load ptr, ptr %4, align 8, !tbaa !134
  %i.vc = sext i32 %i.ux to i64
  %i.vd = mul nsw i64 %i.fy, %i.vc
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.vb, i64 %i.vd ; 3 uses
  %i.vf = select i1 %i.gg, i32 %i.fc, i32 0
  %i.vg = zext nneg i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.vg
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %indvars.iv485
  %i.vj = zext i1 %i.gg to i32
  %i.vk = shl nuw i32 %i.fc, %i.vj
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.ve, i64 %i.vl
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %indvars.iv485
  %i.vo = select i1 %i.gg, i32 3, i32 2
  %i.vp = mul nuw nsw i32 %i.vo, %i.fc
  %i.vq = zext nneg i32 %i.vp to i64
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.vq
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %indvars.iv485
end_hunk_0
