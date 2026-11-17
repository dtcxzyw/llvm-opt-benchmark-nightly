Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_subdiv_mesh?download=true
inline.NumInlined: 3044
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 157
begin_hunk_0_@_ZNK6embree25GeneralCatmullClarkPatchTINS_11vfloat_implILi4EEES2_E9subdivideERNS_7array_tINS_18CatmullClarkPatchTIS2_S2_EELm16EEERj:bb.a
  %.not.i165 = icmp ugt i64 %.076.i172, %i.ke
  br i1 %.not.i165, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.kf = load ptr, ptr %i.au, align 64
  %i.kg = load i32, ptr %i.av, align 4
  %i.kh = zext i32 %i.kg to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.sroa.0115.0.lcssa = phi <4 x float> [ %i.ka, %bb.c ], [ %i.oz, %bb.e ]
  %i.ki = add nsw i32 %i.kc, 2
  %i.kj = sitofp i32 %i.ki to float
  %i.kk = insertelement <4 x float> poison, float %i.kj, i64 0
  %i.kl = shufflevector <4 x float> %i.kk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.km = fdiv <4 x float> %.sroa.0115.0.lcssa, %i.kl ; 2 uses
  %i.kn = icmp samesign ult i64 %i.jz, 16
  %.pre251 = load ptr, ptr %i.ax, align 64        ; 3 uses
  br i1 %i.kn, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i, label %bb.d, !prof !66

bb.d:                                             ; preds = %._crit_edge
  %i.ko = icmp eq ptr %.pre251, %i.aw
  br i1 %i.ko, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i.loopexit, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i, !prof !53

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i.loopexit: ; preds = %bb.d
  %i.kp = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.kp, ptr %i.ax, align 64
  %i.kq = load <4 x float>, ptr %i.aw, align 64
  store <4 x float> %i.kq, ptr %i.kp, align 16
  %i.kr = load ptr, ptr %i.ax, align 64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load <4 x float>, ptr %i.ay, align 16
  store <4 x float> %i.kt, ptr %i.ks, align 16
  %i.ku = load ptr, ptr %i.ax, align 64
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.kw = load <4 x float>, ptr %i.az, align 32
  store <4 x float> %i.kw, ptr %i.kv, align 16
  %i.kx = load ptr, ptr %i.ax, align 64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  %i.kz = load <4 x float>, ptr %i.ba, align 16
  store <4 x float> %i.kz, ptr %i.ky, align 16
  %i.la = load ptr, ptr %i.ax, align 64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 64
  %i.lc = load <4 x float>, ptr %i.bb, align 64
  store <4 x float> %i.lc, ptr %i.lb, align 16
  %i.ld = load ptr, ptr %i.ax, align 64
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 80
  %i.lf = load <4 x float>, ptr %i.bc, align 16
  store <4 x float> %i.lf, ptr %i.le, align 16
  %i.lg = load ptr, ptr %i.ax, align 64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 96
  %i.li = load <4 x float>, ptr %i.bd, align 32
  store <4 x float> %i.li, ptr %i.lh, align 16
  %i.lj = load ptr, ptr %i.ax, align 64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 112
  %i.ll = load <4 x float>, ptr %i.be, align 16
  store <4 x float> %i.ll, ptr %i.lk, align 16
  %i.lm = load ptr, ptr %i.ax, align 64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 128
  %i.lo = load <4 x float>, ptr %i.bf, align 64
  store <4 x float> %i.lo, ptr %i.ln, align 16
  %i.lp = load ptr, ptr %i.ax, align 64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 144
  %i.lr = load <4 x float>, ptr %i.bg, align 16
  store <4 x float> %i.lr, ptr %i.lq, align 16
  %i.ls = load ptr, ptr %i.ax, align 64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 160
  %i.lu = load <4 x float>, ptr %i.bh, align 32
  store <4 x float> %i.lu, ptr %i.lt, align 16
  %i.lv = load ptr, ptr %i.ax, align 64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 176
  %i.lx = load <4 x float>, ptr %i.bi, align 16
  store <4 x float> %i.lx, ptr %i.lw, align 16
  %i.ly = load ptr, ptr %i.ax, align 64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 192
  %i.ma = load <4 x float>, ptr %i.bj, align 64
  store <4 x float> %i.ma, ptr %i.lz, align 16
  %i.mb = load ptr, ptr %i.ax, align 64
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 208
  %i.md = load <4 x float>, ptr %i.bk, align 16
  store <4 x float> %i.md, ptr %i.mc, align 16
  %i.me = load ptr, ptr %i.ax, align 64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 224
  %i.mg = load <4 x float>, ptr %i.bl, align 32
  store <4 x float> %i.mg, ptr %i.mf, align 16
  %i.mh = load ptr, ptr %i.ax, align 64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 240
  %i.mj = load <4 x float>, ptr %i.bm, align 16
  store <4 x float> %i.mj, ptr %i.mi, align 16
  %i.mk = load ptr, ptr %i.ax, align 64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 256
  %i.mm = load <4 x float>, ptr %i.bn, align 64
  store <4 x float> %i.mm, ptr %i.ml, align 16
  %i.mn = load ptr, ptr %i.ax, align 64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 272
  %i.mp = load <4 x float>, ptr %i.bo, align 16
  store <4 x float> %i.mp, ptr %i.mo, align 16
  %i.mq = load ptr, ptr %i.ax, align 64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 288
  %i.ms = load <4 x float>, ptr %i.bp, align 32
  store <4 x float> %i.ms, ptr %i.mr, align 16
  %i.mt = load ptr, ptr %i.ax, align 64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 304
  %i.mv = load <4 x float>, ptr %i.bq, align 16
  store <4 x float> %i.mv, ptr %i.mu, align 16
  %i.mw = load ptr, ptr %i.ax, align 64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 320
  %i.my = load <4 x float>, ptr %i.br, align 64
  store <4 x float> %i.my, ptr %i.mx, align 16
  %i.mz = load ptr, ptr %i.ax, align 64
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 336
  %i.nb = load <4 x float>, ptr %i.bs, align 16
  store <4 x float> %i.nb, ptr %i.na, align 16
  %i.nc = load ptr, ptr %i.ax, align 64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 352
  %i.ne = load <4 x float>, ptr %i.bt, align 32
  store <4 x float> %i.ne, ptr %i.nd, align 16
  %i.nf = load ptr, ptr %i.ax, align 64
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 368
  %i.nh = load <4 x float>, ptr %i.bu, align 16
  store <4 x float> %i.nh, ptr %i.ng, align 16
  %i.ni = load ptr, ptr %i.ax, align 64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 384
  %i.nk = load <4 x float>, ptr %i.bv, align 64
  store <4 x float> %i.nk, ptr %i.nj, align 16
  %i.nl = load ptr, ptr %i.ax, align 64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 400
  %i.nn = load <4 x float>, ptr %i.bw, align 16
  store <4 x float> %i.nn, ptr %i.nm, align 16
  %i.no = load ptr, ptr %i.ax, align 64
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 416
  %i.nq = load <4 x float>, ptr %i.bx, align 32
  store <4 x float> %i.nq, ptr %i.np, align 16
  %i.nr = load ptr, ptr %i.ax, align 64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 432
  %i.nt = load <4 x float>, ptr %i.by, align 16
  store <4 x float> %i.nt, ptr %i.ns, align 16
  %i.nu = load ptr, ptr %i.ax, align 64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 448
  %i.nw = load <4 x float>, ptr %i.bz, align 64
  store <4 x float> %i.nw, ptr %i.nv, align 16
  %i.nx = load ptr, ptr %i.ax, align 64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 464
  %i.nz = load <4 x float>, ptr %i.ca, align 16
  store <4 x float> %i.nz, ptr %i.ny, align 16
  %i.oa = load ptr, ptr %i.ax, align 64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 480
  %i.oc = load <4 x float>, ptr %i.cb, align 32
  store <4 x float> %i.oc, ptr %i.ob, align 16
  %i.od = load ptr, ptr %i.ax, align 64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 496
  %i.of = load <4 x float>, ptr %i.cc, align 16
  store <4 x float> %i.of, ptr %i.oe, align 16
  %.pre250 = load ptr, ptr %i.ax, align 64
  br label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i: ; preds = %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i.loopexit, %bb.d, %._crit_edge
  %i.og = phi ptr [ %.pre250, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i.loopexit ], [ %.pre251, %bb.d ], [ %.pre251, %._crit_edge ]
  %.idx = shl nuw nsw i64 %i.jz, 5
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %.idx
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store <4 x float> %i.km, ptr %i.oi, align 16
  %i.oj = fadd <4 x float> %.sroa.0117.0170, %i.km ; 3 uses
  %i.ok = load ptr, ptr %i.at, align 64           ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %i.jz
  %i.om = load i32, ptr %i.ol, align 4
  %i.on = sext i32 %i.om to i64
  %i.oo = add nsw i64 %.076.i172, %i.on
  %i.op = load i32, ptr %i.av, align 4
  %i.oq = zext i32 %i.op to i64
  %i.or = urem i64 %i.oo, %i.oq
  %i.os = add nuw nsw i64 %.077.i171, 1           ; 2 uses
  %i.ot = load i32, ptr %i.t, align 64            ; 3 uses
  %i.ou = zext i32 %i.ot to i64                   ; 2 uses
  %i.ov = icmp samesign ult i64 %i.os, %i.ou
  br i1 %i.ov, label %bb.c, label %._crit_edge175, !llvm.loop !1401

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.075.i167 = phi i64 [ %.076.i172, %.lr.ph ], [ %i.pa, %bb.e ] ; 2 uses
  %.sroa.0115.0166 = phi <4 x float> [ %i.ka, %.lr.ph ], [ %i.oz, %bb.e ]
  %i.ow = urem i64 %.075.i167, %i.kh
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %i.kf, i64 %i.ow
  %i.oy = load <4 x float>, ptr %i.ox, align 16, !noalias !1425
  %i.oz = fadd <4 x float> %.sroa.0115.0166, %i.oy ; 2 uses
  %i.pa = add i64 %.075.i167, 1                   ; 2 uses
  %.not.i = icmp ugt i64 %i.pa, %i.ke
  br i1 %.not.i, label %._crit_edge, label %bb.e, !llvm.loop !1404

._crit_edge191.loopexit:                          ; preds = %bb.s
  %i.pb = uitofp i32 %i.aph to float
  br label %._crit_edge191

._crit_edge191:                                   ; preds = %._crit_edge175.thread, %._crit_edge191.loopexit, %._crit_edge175
  %.sroa.0112.0.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge175 ], [ %.sroa.0112.1, %._crit_edge191.loopexit ], [ zeroinitializer, %._crit_edge175.thread ]
  %.sroa.0117.1.lcssa = phi <4 x float> [ %i.oj, %._crit_edge175 ], [ %i.aca, %._crit_edge191.loopexit ], [ zeroinitializer, %._crit_edge175.thread ]
  %.074.i.lcssa = phi i64 [ 0, %._crit_edge175 ], [ %.1.i, %._crit_edge191.loopexit ], [ 0, %._crit_edge175.thread ] ; 2 uses
  %.lcssa164 = phi float [ 0.000000e+00, %._crit_edge175 ], [ %i.pb, %._crit_edge191.loopexit ], [ 0.000000e+00, %._crit_edge175.thread ] ; 2 uses
  %i.pc = fdiv float 1.000000e+00, %.lcssa164
  %i.pd = insertelement <4 x float> poison, float %i.pc, i64 0
  %i.pe = shufflevector <4 x float> %i.pd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pf = fadd nnan ninf float %.lcssa164, -2.000000e+00
  %i.pg = insertelement <4 x float> poison, float %i.pf, i64 0
  %i.ph = shufflevector <4 x float> %i.pg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pi = load <4 x float>, ptr %i.j, align 64, !noalias !1426
  %i.pj = fmul <4 x float> %i.ph, %i.pi
  %i.pk = fmul <4 x float> %.sroa.0117.1.lcssa, %i.pe
  %i.pl = fadd <4 x float> %i.pk, %i.pj
  %i.pm = fmul <4 x float> %i.pe, %i.pl           ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.k, i64 208 ; 3 uses
  store <4 x float> %i.pm, ptr %i.pn, align 16
  %i.po = load float, ptr %i.ac, align 4          ; 3 uses
  %i.pp = fcmp ogt float %i.po, 0.000000e+00
  br i1 %i.pp, label %bb.t, label %bb.w, !prof !53

bb.f:                                             ; preds = %.lr.ph190, %bb.s
  %i.pq = phi i64 [ %i.cd, %.lr.ph190 ], [ %i.api, %bb.s ]
  %.0.i188 = phi i64 [ %i.cf, %.lr.ph190 ], [ %i.apf, %bb.s ] ; 4 uses
  %.073.i187 = phi i64 [ 0, %.lr.ph190 ], [ %i.apg, %bb.s ] ; 2 uses
  %.074.i186 = phi i64 [ 0, %.lr.ph190 ], [ %.1.i, %bb.s ] ; 5 uses
  %.sroa.0117.1185 = phi <4 x float> [ %i.oj, %.lr.ph190 ], [ %i.aca, %bb.s ]
  %.sroa.0112.0184 = phi <4 x float> [ zeroinitializer, %.lr.ph190 ], [ %.sroa.0112.1, %bb.s ] ; 4 uses
  %i.pr = load i32, ptr %i.ai, align 4
  %i.ps = zext i32 %i.pr to i64
  %i.pt = add nuw nsw i64 %.073.i187, %i.ps
  %i.pu = urem i64 %i.pt, %i.pq                   ; 10 uses
  %i.pv = load ptr, ptr %i.cg, align 64
  %i.pw = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %.0.i188
  %i.px = load <4 x float>, ptr %i.j, align 64, !noalias !1427
  %i.py = load <4 x float>, ptr %i.pw, align 16, !noalias !1427
  %i.pz = fadd <4 x float> %i.px, %i.py           ; 3 uses
  %i.qa = shl nuw nsw i64 %i.pu, 1                ; 5 uses
  %i.qb = icmp samesign ult i64 %i.pu, 16         ; 5 uses
  %.pre253 = load ptr, ptr %i.ci, align 64        ; 7 uses
  br i1 %i.qb, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit87.i, label %bb.g, !prof !66

bb.g:                                             ; preds = %bb.f
  %i.qc = icmp eq ptr %.pre253, %i.ch
  br i1 %i.qc, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit87.i.loopexit, label %bb.j, !prof !53

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit87.i.loopexit: ; preds = %bb.g
  %i.qd = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.qd, ptr %i.ci, align 64
  %i.qe = load <4 x float>, ptr %i.ch, align 64
  store <4 x float> %i.qe, ptr %i.qd, align 16
  %i.qf = load ptr, ptr %i.ci, align 64
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.qh = load <4 x float>, ptr %i.cn, align 16
  store <4 x float> %i.qh, ptr %i.qg, align 16
  %i.qi = load ptr, ptr %i.ci, align 64
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  %i.qk = load <4 x float>, ptr %i.co, align 32
  store <4 x float> %i.qk, ptr %i.qj, align 16
  %i.ql = load ptr, ptr %i.ci, align 64
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 48
  %i.qn = load <4 x float>, ptr %i.cp, align 16
  store <4 x float> %i.qn, ptr %i.qm, align 16
  %i.qo = load ptr, ptr %i.ci, align 64
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 64
  %i.qq = load <4 x float>, ptr %i.cq, align 64
  store <4 x float> %i.qq, ptr %i.qp, align 16
  %i.qr = load ptr, ptr %i.ci, align 64
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 80
  %i.qt = load <4 x float>, ptr %i.cr, align 16
  store <4 x float> %i.qt, ptr %i.qs, align 16
  %i.qu = load ptr, ptr %i.ci, align 64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 96
  %i.qw = load <4 x float>, ptr %i.cs, align 32
  store <4 x float> %i.qw, ptr %i.qv, align 16
  %i.qx = load ptr, ptr %i.ci, align 64
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 112
  %i.qz = load <4 x float>, ptr %i.ct, align 16
  store <4 x float> %i.qz, ptr %i.qy, align 16
  %i.ra = load ptr, ptr %i.ci, align 64
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 128
  %i.rc = load <4 x float>, ptr %i.cu, align 64
  store <4 x float> %i.rc, ptr %i.rb, align 16
  %i.rd = load ptr, ptr %i.ci, align 64
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 144
  %i.rf = load <4 x float>, ptr %i.cv, align 16
  store <4 x float> %i.rf, ptr %i.re, align 16
  %i.rg = load ptr, ptr %i.ci, align 64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 160
  %i.ri = load <4 x float>, ptr %i.cw, align 32
  store <4 x float> %i.ri, ptr %i.rh, align 16
  %i.rj = load ptr, ptr %i.ci, align 64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 176
  %i.rl = load <4 x float>, ptr %i.cx, align 16
  store <4 x float> %i.rl, ptr %i.rk, align 16
  %i.rm = load ptr, ptr %i.ci, align 64
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 192
  %i.ro = load <4 x float>, ptr %i.cy, align 64
  store <4 x float> %i.ro, ptr %i.rn, align 16
  %i.rp = load ptr, ptr %i.ci, align 64
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 208
  %i.rr = load <4 x float>, ptr %i.cz, align 16
  store <4 x float> %i.rr, ptr %i.rq, align 16
  %i.rs = load ptr, ptr %i.ci, align 64
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 224
  %i.ru = load <4 x float>, ptr %i.da, align 32
  store <4 x float> %i.ru, ptr %i.rt, align 16
  %i.rv = load ptr, ptr %i.ci, align 64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 240
  %i.rx = load <4 x float>, ptr %i.db, align 16
  store <4 x float> %i.rx, ptr %i.rw, align 16
  %i.ry = load ptr, ptr %i.ci, align 64
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 256
  %i.sa = load <4 x float>, ptr %i.dc, align 64
  store <4 x float> %i.sa, ptr %i.rz, align 16
  %i.sb = load ptr, ptr %i.ci, align 64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 272
  %i.sd = load <4 x float>, ptr %i.dd, align 16
  store <4 x float> %i.sd, ptr %i.sc, align 16
  %i.se = load ptr, ptr %i.ci, align 64
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 288
  %i.sg = load <4 x float>, ptr %i.de, align 32
  store <4 x float> %i.sg, ptr %i.sf, align 16
  %i.sh = load ptr, ptr %i.ci, align 64
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 304
  %i.sj = load <4 x float>, ptr %i.df, align 16
  store <4 x float> %i.sj, ptr %i.si, align 16
  %i.sk = load ptr, ptr %i.ci, align 64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 320
  %i.sm = load <4 x float>, ptr %i.dg, align 64
  store <4 x float> %i.sm, ptr %i.sl, align 16
  %i.sn = load ptr, ptr %i.ci, align 64
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 336
  %i.sp = load <4 x float>, ptr %i.dh, align 16
  store <4 x float> %i.sp, ptr %i.so, align 16
  %i.sq = load ptr, ptr %i.ci, align 64
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 352
  %i.ss = load <4 x float>, ptr %i.di, align 32
  store <4 x float> %i.ss, ptr %i.sr, align 16
  %i.st = load ptr, ptr %i.ci, align 64
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 368
  %i.sv = load <4 x float>, ptr %i.dj, align 16
  store <4 x float> %i.sv, ptr %i.su, align 16
  %i.sw = load ptr, ptr %i.ci, align 64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 384
  %i.sy = load <4 x float>, ptr %i.dk, align 64
  store <4 x float> %i.sy, ptr %i.sx, align 16
  %i.sz = load ptr, ptr %i.ci, align 64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 400
  %i.tb = load <4 x float>, ptr %i.dl, align 16
  store <4 x float> %i.tb, ptr %i.ta, align 16
  %i.tc = load ptr, ptr %i.ci, align 64
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 416
  %i.te = load <4 x float>, ptr %i.dm, align 32
  store <4 x float> %i.te, ptr %i.td, align 16
  %i.tf = load ptr, ptr %i.ci, align 64
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 432
  %i.th = load <4 x float>, ptr %i.dn, align 16
  store <4 x float> %i.th, ptr %i.tg, align 16
  %i.ti = load ptr, ptr %i.ci, align 64
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 448
  %i.tk = load <4 x float>, ptr %i.do, align 64
  store <4 x float> %i.tk, ptr %i.tj, align 16
  %i.tl = load ptr, ptr %i.ci, align 64
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 464
  %i.tn = load <4 x float>, ptr %i.dp, align 16
  store <4 x float> %i.tn, ptr %i.tm, align 16
  %i.to = load ptr, ptr %i.ci, align 64
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 480
  %i.tq = load <4 x float>, ptr %i.dq, align 32
  store <4 x float> %i.tq, ptr %i.tp, align 16
  %i.tr = load ptr, ptr %i.ci, align 64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 496
  %i.tt = load <4 x float>, ptr %i.dr, align 16
  store <4 x float> %i.tt, ptr %i.ts, align 16
  %.pre252 = load ptr, ptr %i.ci, align 64
  br label %bb.j

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit87.i: ; preds = %bb.f
  %i.tu = getelementptr inbounds nuw [16 x i8], ptr %.pre253, i64 %i.qa
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.tw = load <4 x float>, ptr %i.tv, align 16   ; 2 uses
  %i.tx = icmp eq i64 %i.pu, 0
  br i1 %i.tx, label %bb.h, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit92.i

bb.h:                                             ; preds = %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit87.i
  %i.ty = load i32, ptr %i.x, align 8             ; 2 uses
  %i.tz = add i32 %i.ty, -1
  %i.ua = icmp ult i32 %i.ty, 33
  br i1 %i.ua, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EEixEj.exit.i, label %bb.i, !prof !66

bb.i:                                             ; preds = %bb.h
  %i.ub = icmp eq ptr %.pre253, %i.ch
  br i1 %i.ub, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EEixEj.exit.i.loopexit, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EEixEj.exit.i, !prof !53

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EEixEj.exit.i.loopexit: ; preds = %bb.i
  %i.uc = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.uc, ptr %i.ci, align 64
  %i.ud = load <4 x float>, ptr %i.ch, align 64
  store <4 x float> %i.ud, ptr %i.uc, align 16
  %i.ue = load ptr, ptr %i.ci, align 64
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.ug = load <4 x float>, ptr %i.ex, align 16
  store <4 x float> %i.ug, ptr %i.uf, align 16
  %i.uh = load ptr, ptr %i.ci, align 64
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 32
  %i.uj = load <4 x float>, ptr %i.ey, align 32
  store <4 x float> %i.uj, ptr %i.ui, align 16
end_hunk_0
begin_hunk_1_@_ZNK6embree18CatmullClarkPatchTINS_11vfloat_implILi4EEES2_E9subdivideERNS_7array_tIS3_Lm4EEE:bb.a
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i228
  %i.hw = phi i64 [ %i.ac, %.lr.ph ], [ %i.mt, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i228 ] ; 2 uses
  %.089.i181786 = phi i64 [ 0, %.lr.ph ], [ %i.mr, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i228 ] ; 2 uses
  %.sroa.0664.0785 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.mq, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i228 ]
  %i.hx = load i32, ptr %i.v, align 8
  %i.hy = zext i32 %i.hx to i64
  %i.hz = add nuw nsw i64 %.089.i181786, %i.hy    ; 2 uses
  %.not109.i220 = icmp samesign ult i64 %i.hz, %i.hw
  %i.ia = select i1 %.not109.i220, i64 0, i64 %i.hw
  %spec.select.i221 = sub nuw nsw i64 %i.hz, %i.ia
  %i.ib = shl nuw nsw i64 %spec.select.i221, 1    ; 4 uses
  %i.ic = load i32, ptr %i.l, align 8
  %i.id = zext i32 %i.ic to i64                   ; 6 uses
  %.not110.i222 = icmp samesign ult i64 %i.ib, %i.id
  %i.ie = select i1 %.not110.i222, i64 0, i64 %i.id
  %.087.i223 = sub nuw nsw i64 %i.ib, %i.ie
  %i.if = or disjoint i64 %i.ib, 1                ; 2 uses
  %.not111.i224 = icmp samesign ult i64 %i.if, %i.id
  %i.ig = select i1 %.not111.i224, i64 0, i64 %i.id
  %.086.i225 = sub nuw nsw i64 %i.if, %i.ig       ; 3 uses
  %i.ih = add nuw nsw i64 %i.ib, 2                ; 2 uses
  %.not112.i226 = icmp samesign ult i64 %i.ih, %i.id
  %i.ii = select i1 %.not112.i226, i64 0, i64 %i.id
  %.085.i227 = sub nuw nsw i64 %i.ih, %i.ii
  %i.ij = load ptr, ptr %i.ae, align 64           ; 3 uses
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.ij, i64 %.086.i225
  %i.il = load <4 x float>, ptr %i.ad, align 16, !noalias !1536
  %i.im = load <4 x float>, ptr %i.ik, align 16, !noalias !1536
  %i.in = fadd <4 x float> %i.il, %i.im
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.ij, i64 %.087.i223
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.ij, i64 %.085.i227
  %i.iq = load <4 x float>, ptr %i.io, align 16, !noalias !1537
  %i.ir = load <4 x float>, ptr %i.ip, align 16, !noalias !1537
  %i.is = fadd <4 x float> %i.iq, %i.ir
  %i.it = fadd <4 x float> %i.in, %i.is
  %i.iu = fmul <4 x float> %i.it, splat (float 2.500000e-01) ; 2 uses
  %i.iv = icmp samesign ult i64 %.086.i225, 32
  %.pre925 = load ptr, ptr %i.ag, align 64        ; 3 uses
  br i1 %i.iv, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i228, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.iw = icmp eq ptr %.pre925, %i.af
  br i1 %i.iw, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i228.loopexit, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i228, !prof !53

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i228.loopexit: ; preds = %bb.c
  %i.ix = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.ix, ptr %i.ag, align 64
  %i.iy = load <4 x float>, ptr %i.af, align 64
  store <4 x float> %i.iy, ptr %i.ix, align 16
  %i.iz = load ptr, ptr %i.ag, align 64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load <4 x float>, ptr %i.ah, align 16
  store <4 x float> %i.jb, ptr %i.ja, align 16
  %i.jc = load ptr, ptr %i.ag, align 64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.je = load <4 x float>, ptr %i.ai, align 32
  store <4 x float> %i.je, ptr %i.jd, align 16
  %i.jf = load ptr, ptr %i.ag, align 64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.jh = load <4 x float>, ptr %i.aj, align 16
  store <4 x float> %i.jh, ptr %i.jg, align 16
  %i.ji = load ptr, ptr %i.ag, align 64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 64
  %i.jk = load <4 x float>, ptr %i.ak, align 64
  store <4 x float> %i.jk, ptr %i.jj, align 16
  %i.jl = load ptr, ptr %i.ag, align 64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 80
  %i.jn = load <4 x float>, ptr %i.al, align 16
  store <4 x float> %i.jn, ptr %i.jm, align 16
  %i.jo = load ptr, ptr %i.ag, align 64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 96
  %i.jq = load <4 x float>, ptr %i.am, align 32
  store <4 x float> %i.jq, ptr %i.jp, align 16
  %i.jr = load ptr, ptr %i.ag, align 64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 112
  %i.jt = load <4 x float>, ptr %i.an, align 16
  store <4 x float> %i.jt, ptr %i.js, align 16
  %i.ju = load ptr, ptr %i.ag, align 64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 128
  %i.jw = load <4 x float>, ptr %i.ao, align 64
  store <4 x float> %i.jw, ptr %i.jv, align 16
  %i.jx = load ptr, ptr %i.ag, align 64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 144
  %i.jz = load <4 x float>, ptr %i.ap, align 16
  store <4 x float> %i.jz, ptr %i.jy, align 16
  %i.ka = load ptr, ptr %i.ag, align 64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 160
  %i.kc = load <4 x float>, ptr %i.aq, align 32
  store <4 x float> %i.kc, ptr %i.kb, align 16
  %i.kd = load ptr, ptr %i.ag, align 64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 176
  %i.kf = load <4 x float>, ptr %i.ar, align 16
  store <4 x float> %i.kf, ptr %i.ke, align 16
  %i.kg = load ptr, ptr %i.ag, align 64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 192
  %i.ki = load <4 x float>, ptr %i.as, align 64
  store <4 x float> %i.ki, ptr %i.kh, align 16
  %i.kj = load ptr, ptr %i.ag, align 64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 208
  %i.kl = load <4 x float>, ptr %i.at, align 16
  store <4 x float> %i.kl, ptr %i.kk, align 16
  %i.km = load ptr, ptr %i.ag, align 64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 224
  %i.ko = load <4 x float>, ptr %i.au, align 32
  store <4 x float> %i.ko, ptr %i.kn, align 16
  %i.kp = load ptr, ptr %i.ag, align 64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 240
  %i.kr = load <4 x float>, ptr %i.av, align 16
  store <4 x float> %i.kr, ptr %i.kq, align 16
  %i.ks = load ptr, ptr %i.ag, align 64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 256
  %i.ku = load <4 x float>, ptr %i.aw, align 64
  store <4 x float> %i.ku, ptr %i.kt, align 16
  %i.kv = load ptr, ptr %i.ag, align 64
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 272
  %i.kx = load <4 x float>, ptr %i.ax, align 16
  store <4 x float> %i.kx, ptr %i.kw, align 16
  %i.ky = load ptr, ptr %i.ag, align 64
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 288
  %i.la = load <4 x float>, ptr %i.ay, align 32
  store <4 x float> %i.la, ptr %i.kz, align 16
  %i.lb = load ptr, ptr %i.ag, align 64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 304
  %i.ld = load <4 x float>, ptr %i.az, align 16
  store <4 x float> %i.ld, ptr %i.lc, align 16
  %i.le = load ptr, ptr %i.ag, align 64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 320
  %i.lg = load <4 x float>, ptr %i.ba, align 64
  store <4 x float> %i.lg, ptr %i.lf, align 16
  %i.lh = load ptr, ptr %i.ag, align 64
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 336
  %i.lj = load <4 x float>, ptr %i.bb, align 16
  store <4 x float> %i.lj, ptr %i.li, align 16
  %i.lk = load ptr, ptr %i.ag, align 64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 352
  %i.lm = load <4 x float>, ptr %i.bc, align 32
  store <4 x float> %i.lm, ptr %i.ll, align 16
  %i.ln = load ptr, ptr %i.ag, align 64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 368
  %i.lp = load <4 x float>, ptr %i.bd, align 16
  store <4 x float> %i.lp, ptr %i.lo, align 16
  %i.lq = load ptr, ptr %i.ag, align 64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 384
  %i.ls = load <4 x float>, ptr %i.be, align 64
  store <4 x float> %i.ls, ptr %i.lr, align 16
  %i.lt = load ptr, ptr %i.ag, align 64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 400
  %i.lv = load <4 x float>, ptr %i.bf, align 16
  store <4 x float> %i.lv, ptr %i.lu, align 16
  %i.lw = load ptr, ptr %i.ag, align 64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 416
  %i.ly = load <4 x float>, ptr %i.bg, align 32
  store <4 x float> %i.ly, ptr %i.lx, align 16
  %i.lz = load ptr, ptr %i.ag, align 64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 432
  %i.mb = load <4 x float>, ptr %i.bh, align 16
  store <4 x float> %i.mb, ptr %i.ma, align 16
  %i.mc = load ptr, ptr %i.ag, align 64
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 448
  %i.me = load <4 x float>, ptr %i.bi, align 64
  store <4 x float> %i.me, ptr %i.md, align 16
  %i.mf = load ptr, ptr %i.ag, align 64
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 464
  %i.mh = load <4 x float>, ptr %i.bj, align 16
  store <4 x float> %i.mh, ptr %i.mg, align 16
  %i.mi = load ptr, ptr %i.ag, align 64
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 480
  %i.mk = load <4 x float>, ptr %i.bk, align 32
  store <4 x float> %i.mk, ptr %i.mj, align 16
  %i.ml = load ptr, ptr %i.ag, align 64
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 496
  %i.mn = load <4 x float>, ptr %i.bl, align 16
  store <4 x float> %i.mn, ptr %i.mm, align 16
  %.pre = load ptr, ptr %i.ag, align 64
  br label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i228

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i228: ; preds = %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i228.loopexit, %bb.c, %bb.b
  %i.mo = phi ptr [ %.pre, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i228.loopexit ], [ %.pre925, %bb.c ], [ %.pre925, %bb.b ]
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %i.mo, i64 %.086.i225
  store <4 x float> %i.iu, ptr %i.mp, align 16
  %i.mq = fadd <4 x float> %.sroa.0664.0785, %i.iu ; 3 uses
  %i.mr = add nuw nsw i64 %.089.i181786, 1        ; 2 uses
  %i.ms = load i32, ptr %i.i, align 4             ; 3 uses
  %i.mt = zext i32 %i.ms to i64                   ; 2 uses
  %i.mu = icmp samesign ult i64 %i.mr, %i.mt
  br i1 %i.mu, label %bb.b, label %._crit_edge, !llvm.loop !1444

._crit_edge798.loopexit:                          ; preds = %bb.q
  %i.mv = uitofp i32 %i.aiq to float
  br label %._crit_edge798

._crit_edge798:                                   ; preds = %._crit_edge.thread, %._crit_edge798.loopexit, %._crit_edge
  %.sroa.0664.1.lcssa = phi <4 x float> [ %i.mq, %._crit_edge ], [ %i.wt, %._crit_edge798.loopexit ], [ zeroinitializer, %._crit_edge.thread ]
  %.084.i182.lcssa = phi i64 [ 0, %._crit_edge ], [ %.1.i196, %._crit_edge798.loopexit ], [ 0, %._crit_edge.thread ] ; 2 uses
  %.lcssa783 = phi float [ 0.000000e+00, %._crit_edge ], [ %i.mv, %._crit_edge798.loopexit ], [ 0.000000e+00, %._crit_edge.thread ] ; 2 uses
  %i.mw = fdiv float 1.000000e+00, %.lcssa783
  %i.mx = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mz = fadd nnan ninf float %.lcssa783, -2.000000e+00
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.nb = insertelement <4 x float> poison, float %i.mz, i64 0
  %i.nc = shufflevector <4 x float> %i.nb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nd = load <4 x float>, ptr %i.na, align 16, !noalias !1538
  %i.ne = fmul <4 x float> %i.nc, %i.nd
  %i.nf = fmul <4 x float> %.sroa.0664.1.lcssa, %i.my
  %i.ng = fadd <4 x float> %i.nf, %i.ne
  %i.nh = fmul <4 x float> %i.my, %i.ng           ; 5 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 8 uses
  store <4 x float> %i.nh, ptr %i.ni, align 16
  %i.nj = load float, ptr %i.p, align 4           ; 3 uses
  %i.nk = fcmp ogt float %i.nj, 0.000000e+00
  br i1 %i.nk, label %bb.r, label %bb.u, !prof !53

bb.d:                                             ; preds = %.lr.ph797, %bb.q
  %i.nl = phi i64 [ %i.bm, %.lr.ph797 ], [ %i.air, %bb.q ] ; 2 uses
  %.083.i183795 = phi i64 [ 0, %.lr.ph797 ], [ %i.aip, %bb.q ] ; 2 uses
  %.084.i182794 = phi i64 [ 0, %.lr.ph797 ], [ %.1.i196, %bb.q ] ; 5 uses
  %.sroa.0664.1793 = phi <4 x float> [ %i.mq, %.lr.ph797 ], [ %i.wt, %bb.q ]
  %i.nm = load i32, ptr %i.v, align 8
  %i.nn = zext i32 %i.nm to i64
  %i.no = add nuw nsw i64 %.083.i183795, %i.nn    ; 3 uses
  %.not.i190 = icmp samesign ult i64 %i.no, %i.nl
  %i.np = select i1 %.not.i190, i64 0, i64 %i.nl  ; 2 uses
  %spec.select113.i191 = sub nuw nsw i64 %i.no, %i.np ; 6 uses
  %i.nq = load ptr, ptr %i.bn, align 64
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %spec.select113.i191
  %i.ns = load float, ptr %i.nr, align 4          ; 4 uses
  %i.nt = fadd float %i.ns, -1.000000e+00         ; 2 uses
  %i.nu = fcmp olt float %i.nt, 0.000000e+00
  %i.nv = select i1 %i.nu, float 0.000000e+00, float %i.nt ; 2 uses
  %i.nw = icmp samesign ult i64 %spec.select113.i191, 16
  %.pre926 = load ptr, ptr %i.bp, align 64        ; 3 uses
  br i1 %i.nw, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192, label %bb.e, !prof !66

bb.e:                                             ; preds = %bb.d
  %i.nx = icmp eq ptr %.pre926, %i.bo
  br i1 %i.nx, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192.thread, !prof !53

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192.thread: ; preds = %bb.e
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.pre926, i64 %spec.select113.i191
  store float %i.nv, ptr %i.ny, align 4
  br label %bb.g

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192.loopexit: ; preds = %bb.e
  %i.nz = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #29 ; 6 uses
  store ptr %i.nz, ptr %i.bp, align 64
  %i.oa = load <4 x float>, ptr %i.bo, align 64
  store <4 x float> %i.oa, ptr %i.nz, align 4
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oc = load <4 x float>, ptr %i.bu, align 16
  store <4 x float> %i.oc, ptr %i.ob, align 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.oe = load <4 x float>, ptr %i.bv, align 32
  store <4 x float> %i.oe, ptr %i.od, align 4
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 48
  %i.og = load <4 x float>, ptr %i.bw, align 16
  store <4 x float> %i.og, ptr %i.of, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192: ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192.loopexit, %bb.d
  %i.oh = phi ptr [ %i.nz, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192.loopexit ], [ %.pre926, %bb.d ]
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %spec.select113.i191
  store float %i.nv, ptr %i.oi, align 4
  %i.oj = icmp eq i64 %i.no, %i.np
  br i1 %i.oj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192
  %i.ok = load i32, ptr %i.l, align 8
  %i.ol = add i32 %i.ok, -1
  %i.om = zext i32 %i.ol to i64
  br label %bb.h

bb.g:                                             ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192.thread, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192
  %i.on = shl nuw nsw i64 %spec.select113.i191, 1 ; 2 uses
  %i.oo = add nsw i64 %i.on, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.op = phi i64 [ 0, %bb.f ], [ %i.on, %bb.g ]  ; 8 uses
  %i.oq = phi i64 [ %i.om, %bb.f ], [ %i.oo, %bb.g ] ; 2 uses
  %i.or = load ptr, ptr %i.br, align 64
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %i.or, i64 %i.op
  %i.ot = load <4 x float>, ptr %i.bq, align 16, !noalias !1539
  %i.ou = load <4 x float>, ptr %i.os, align 16, !noalias !1539
  %i.ov = fadd <4 x float> %i.ot, %i.ou           ; 3 uses
  %i.ow = icmp ult i64 %i.oq, 32
  %.pre928 = load ptr, ptr %i.bt, align 64        ; 3 uses
  br i1 %i.ow, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i193, label %bb.i, !prof !66

bb.i:                                             ; preds = %bb.h
  %i.ox = icmp eq ptr %.pre928, %i.bs
  br i1 %i.ox, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i193.loopexit, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i193, !prof !53

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i193.loopexit: ; preds = %bb.i
  %i.oy = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.oy, ptr %i.bt, align 64
  %i.oz = load <4 x float>, ptr %i.bs, align 64
  store <4 x float> %i.oz, ptr %i.oy, align 16
  %i.pa = load ptr, ptr %i.bt, align 64
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pc = load <4 x float>, ptr %i.bx, align 16
  store <4 x float> %i.pc, ptr %i.pb, align 16
  %i.pd = load ptr, ptr %i.bt, align 64
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 32
  %i.pf = load <4 x float>, ptr %i.by, align 32
  store <4 x float> %i.pf, ptr %i.pe, align 16
  %i.pg = load ptr, ptr %i.bt, align 64
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 48
  %i.pi = load <4 x float>, ptr %i.bz, align 16
  store <4 x float> %i.pi, ptr %i.ph, align 16
  %i.pj = load ptr, ptr %i.bt, align 64
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 64
  %i.pl = load <4 x float>, ptr %i.ca, align 64
  store <4 x float> %i.pl, ptr %i.pk, align 16
  %i.pm = load ptr, ptr %i.bt, align 64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 80
  %i.po = load <4 x float>, ptr %i.cb, align 16
  store <4 x float> %i.po, ptr %i.pn, align 16
  %i.pp = load ptr, ptr %i.bt, align 64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 96
  %i.pr = load <4 x float>, ptr %i.cc, align 32
  store <4 x float> %i.pr, ptr %i.pq, align 16
  %i.ps = load ptr, ptr %i.bt, align 64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 112
  %i.pu = load <4 x float>, ptr %i.cd, align 16
  store <4 x float> %i.pu, ptr %i.pt, align 16
  %i.pv = load ptr, ptr %i.bt, align 64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 128
  %i.px = load <4 x float>, ptr %i.ce, align 64
  store <4 x float> %i.px, ptr %i.pw, align 16
  %i.py = load ptr, ptr %i.bt, align 64
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 144
  %i.qa = load <4 x float>, ptr %i.cf, align 16
  store <4 x float> %i.qa, ptr %i.pz, align 16
  %i.qb = load ptr, ptr %i.bt, align 64
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 160
  %i.qd = load <4 x float>, ptr %i.cg, align 32
  store <4 x float> %i.qd, ptr %i.qc, align 16
  %i.qe = load ptr, ptr %i.bt, align 64
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 176
  %i.qg = load <4 x float>, ptr %i.ch, align 16
  store <4 x float> %i.qg, ptr %i.qf, align 16
  %i.qh = load ptr, ptr %i.bt, align 64
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 192
  %i.qj = load <4 x float>, ptr %i.ci, align 64
  store <4 x float> %i.qj, ptr %i.qi, align 16
  %i.qk = load ptr, ptr %i.bt, align 64
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 208
  %i.qm = load <4 x float>, ptr %i.cj, align 16
  store <4 x float> %i.qm, ptr %i.ql, align 16
  %i.qn = load ptr, ptr %i.bt, align 64
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 224
  %i.qp = load <4 x float>, ptr %i.ck, align 32
  store <4 x float> %i.qp, ptr %i.qo, align 16
  %i.qq = load ptr, ptr %i.bt, align 64
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 240
  %i.qs = load <4 x float>, ptr %i.cl, align 16
  store <4 x float> %i.qs, ptr %i.qr, align 16
  %i.qt = load ptr, ptr %i.bt, align 64
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 256
  %i.qv = load <4 x float>, ptr %i.cm, align 64
  store <4 x float> %i.qv, ptr %i.qu, align 16
  %i.qw = load ptr, ptr %i.bt, align 64
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 272
  %i.qy = load <4 x float>, ptr %i.cn, align 16
  store <4 x float> %i.qy, ptr %i.qx, align 16
  %i.qz = load ptr, ptr %i.bt, align 64
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 288
  %i.rb = load <4 x float>, ptr %i.co, align 32
  store <4 x float> %i.rb, ptr %i.ra, align 16
  %i.rc = load ptr, ptr %i.bt, align 64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 304
  %i.re = load <4 x float>, ptr %i.cp, align 16
  store <4 x float> %i.re, ptr %i.rd, align 16
  %i.rf = load ptr, ptr %i.bt, align 64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 320
  %i.rh = load <4 x float>, ptr %i.cq, align 64
  store <4 x float> %i.rh, ptr %i.rg, align 16
  %i.ri = load ptr, ptr %i.bt, align 64
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 336
  %i.rk = load <4 x float>, ptr %i.cr, align 16
  store <4 x float> %i.rk, ptr %i.rj, align 16
  %i.rl = load ptr, ptr %i.bt, align 64
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 352
  %i.rn = load <4 x float>, ptr %i.cs, align 32
  store <4 x float> %i.rn, ptr %i.rm, align 16
  %i.ro = load ptr, ptr %i.bt, align 64
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 368
  %i.rq = load <4 x float>, ptr %i.ct, align 16
  store <4 x float> %i.rq, ptr %i.rp, align 16
  %i.rr = load ptr, ptr %i.bt, align 64
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 384
  %i.rt = load <4 x float>, ptr %i.cu, align 64
  store <4 x float> %i.rt, ptr %i.rs, align 16
  %i.ru = load ptr, ptr %i.bt, align 64
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 400
  %i.rw = load <4 x float>, ptr %i.cv, align 16
  store <4 x float> %i.rw, ptr %i.rv, align 16
  %i.rx = load ptr, ptr %i.bt, align 64
end_hunk_1
begin_hunk_2_@_ZNK6embree18CatmullClarkPatchTINS_11vfloat_implILi4EEES2_E9subdivideERNS_7array_tIS3_Lm4EEE:bb.a
  br label %bb.ad

bb.ab:                                            ; preds = %.lr.ph807, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i175
  %i.auv = phi i64 [ %i.anb, %.lr.ph807 ], [ %i.azs, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i175 ] ; 2 uses
  %.089.i128806 = phi i64 [ 0, %.lr.ph807 ], [ %i.azq, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i175 ] ; 2 uses
  %.sroa.0613.0805 = phi <4 x float> [ zeroinitializer, %.lr.ph807 ], [ %i.azp, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i175 ]
  %i.auw = load i32, ptr %i.amu, align 8
  %i.aux = zext i32 %i.auw to i64
  %i.auy = add nuw nsw i64 %.089.i128806, %i.aux  ; 2 uses
  %.not109.i167 = icmp samesign ult i64 %i.auy, %i.auv
  %i.auz = select i1 %.not109.i167, i64 0, i64 %i.auv
  %spec.select.i168 = sub nuw nsw i64 %i.auy, %i.auz
  %i.ava = shl nuw nsw i64 %spec.select.i168, 1   ; 4 uses
  %i.avb = load i32, ptr %i.amk, align 8
  %i.avc = zext i32 %i.avb to i64                 ; 6 uses
  %.not110.i169 = icmp samesign ult i64 %i.ava, %i.avc
  %i.avd = select i1 %.not110.i169, i64 0, i64 %i.avc
  %.087.i170 = sub nuw nsw i64 %i.ava, %i.avd
  %i.ave = or disjoint i64 %i.ava, 1              ; 2 uses
  %.not111.i171 = icmp samesign ult i64 %i.ave, %i.avc
  %i.avf = select i1 %.not111.i171, i64 0, i64 %i.avc
  %.086.i172 = sub nuw nsw i64 %i.ave, %i.avf     ; 3 uses
  %i.avg = add nuw nsw i64 %i.ava, 2              ; 2 uses
  %.not112.i173 = icmp samesign ult i64 %i.avg, %i.avc
  %i.avh = select i1 %.not112.i173, i64 0, i64 %i.avc
  %.085.i174 = sub nuw nsw i64 %i.avg, %i.avh
  %i.avi = load ptr, ptr %i.and, align 64         ; 3 uses
  %i.avj = getelementptr inbounds nuw [16 x i8], ptr %i.avi, i64 %.086.i172
  %i.avk = load <4 x float>, ptr %i.anc, align 16, !noalias !1546
  %i.avl = load <4 x float>, ptr %i.avj, align 16, !noalias !1546
  %i.avm = fadd <4 x float> %i.avk, %i.avl
  %i.avn = getelementptr inbounds nuw [16 x i8], ptr %i.avi, i64 %.087.i170
  %i.avo = getelementptr inbounds nuw [16 x i8], ptr %i.avi, i64 %.085.i174
  %i.avp = load <4 x float>, ptr %i.avn, align 16, !noalias !1547
  %i.avq = load <4 x float>, ptr %i.avo, align 16, !noalias !1547
  %i.avr = fadd <4 x float> %i.avp, %i.avq
  %i.avs = fadd <4 x float> %i.avm, %i.avr
  %i.avt = fmul <4 x float> %i.avs, splat (float 2.500000e-01) ; 2 uses
  %i.avu = icmp samesign ult i64 %.086.i172, 32
  %.pre937 = load ptr, ptr %i.anf, align 64       ; 3 uses
  br i1 %i.avu, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i175, label %bb.ac, !prof !66

bb.ac:                                            ; preds = %bb.ab
  %i.avv = icmp eq ptr %.pre937, %i.ane
  br i1 %i.avv, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i175.loopexit, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i175, !prof !53

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i175.loopexit: ; preds = %bb.ac
  %i.avw = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.avw, ptr %i.anf, align 64
  %i.avx = load <4 x float>, ptr %i.ane, align 64
  store <4 x float> %i.avx, ptr %i.avw, align 16
  %i.avy = load ptr, ptr %i.anf, align 64
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 16
  %i.awa = load <4 x float>, ptr %i.ang, align 16
  store <4 x float> %i.awa, ptr %i.avz, align 16
  %i.awb = load ptr, ptr %i.anf, align 64
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awb, i64 32
  %i.awd = load <4 x float>, ptr %i.anh, align 32
  store <4 x float> %i.awd, ptr %i.awc, align 16
  %i.awe = load ptr, ptr %i.anf, align 64
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 48
  %i.awg = load <4 x float>, ptr %i.ani, align 16
  store <4 x float> %i.awg, ptr %i.awf, align 16
  %i.awh = load ptr, ptr %i.anf, align 64
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 64
  %i.awj = load <4 x float>, ptr %i.anj, align 64
  store <4 x float> %i.awj, ptr %i.awi, align 16
  %i.awk = load ptr, ptr %i.anf, align 64
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 80
  %i.awm = load <4 x float>, ptr %i.ank, align 16
  store <4 x float> %i.awm, ptr %i.awl, align 16
  %i.awn = load ptr, ptr %i.anf, align 64
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 96
  %i.awp = load <4 x float>, ptr %i.anl, align 32
  store <4 x float> %i.awp, ptr %i.awo, align 16
  %i.awq = load ptr, ptr %i.anf, align 64
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 112
  %i.aws = load <4 x float>, ptr %i.anm, align 16
  store <4 x float> %i.aws, ptr %i.awr, align 16
  %i.awt = load ptr, ptr %i.anf, align 64
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 128
  %i.awv = load <4 x float>, ptr %i.ann, align 64
  store <4 x float> %i.awv, ptr %i.awu, align 16
  %i.aww = load ptr, ptr %i.anf, align 64
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 144
  %i.awy = load <4 x float>, ptr %i.ano, align 16
  store <4 x float> %i.awy, ptr %i.awx, align 16
  %i.awz = load ptr, ptr %i.anf, align 64
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 160
  %i.axb = load <4 x float>, ptr %i.anp, align 32
  store <4 x float> %i.axb, ptr %i.axa, align 16
  %i.axc = load ptr, ptr %i.anf, align 64
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 176
  %i.axe = load <4 x float>, ptr %i.anq, align 16
  store <4 x float> %i.axe, ptr %i.axd, align 16
  %i.axf = load ptr, ptr %i.anf, align 64
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 192
  %i.axh = load <4 x float>, ptr %i.anr, align 64
  store <4 x float> %i.axh, ptr %i.axg, align 16
  %i.axi = load ptr, ptr %i.anf, align 64
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 208
  %i.axk = load <4 x float>, ptr %i.ans, align 16
  store <4 x float> %i.axk, ptr %i.axj, align 16
  %i.axl = load ptr, ptr %i.anf, align 64
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 224
  %i.axn = load <4 x float>, ptr %i.ant, align 32
  store <4 x float> %i.axn, ptr %i.axm, align 16
  %i.axo = load ptr, ptr %i.anf, align 64
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 240
  %i.axq = load <4 x float>, ptr %i.anu, align 16
  store <4 x float> %i.axq, ptr %i.axp, align 16
  %i.axr = load ptr, ptr %i.anf, align 64
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 256
  %i.axt = load <4 x float>, ptr %i.anv, align 64
  store <4 x float> %i.axt, ptr %i.axs, align 16
  %i.axu = load ptr, ptr %i.anf, align 64
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 272
  %i.axw = load <4 x float>, ptr %i.anw, align 16
  store <4 x float> %i.axw, ptr %i.axv, align 16
  %i.axx = load ptr, ptr %i.anf, align 64
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 288
  %i.axz = load <4 x float>, ptr %i.anx, align 32
  store <4 x float> %i.axz, ptr %i.axy, align 16
  %i.aya = load ptr, ptr %i.anf, align 64
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 304
  %i.ayc = load <4 x float>, ptr %i.any, align 16
  store <4 x float> %i.ayc, ptr %i.ayb, align 16
  %i.ayd = load ptr, ptr %i.anf, align 64
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 320
  %i.ayf = load <4 x float>, ptr %i.anz, align 64
  store <4 x float> %i.ayf, ptr %i.aye, align 16
  %i.ayg = load ptr, ptr %i.anf, align 64
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 336
  %i.ayi = load <4 x float>, ptr %i.aoa, align 16
  store <4 x float> %i.ayi, ptr %i.ayh, align 16
  %i.ayj = load ptr, ptr %i.anf, align 64
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 352
  %i.ayl = load <4 x float>, ptr %i.aob, align 32
  store <4 x float> %i.ayl, ptr %i.ayk, align 16
  %i.aym = load ptr, ptr %i.anf, align 64
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 368
  %i.ayo = load <4 x float>, ptr %i.aoc, align 16
  store <4 x float> %i.ayo, ptr %i.ayn, align 16
  %i.ayp = load ptr, ptr %i.anf, align 64
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 384
  %i.ayr = load <4 x float>, ptr %i.aod, align 64
  store <4 x float> %i.ayr, ptr %i.ayq, align 16
  %i.ays = load ptr, ptr %i.anf, align 64
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 400
  %i.ayu = load <4 x float>, ptr %i.aoe, align 16
  store <4 x float> %i.ayu, ptr %i.ayt, align 16
  %i.ayv = load ptr, ptr %i.anf, align 64
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 416
  %i.ayx = load <4 x float>, ptr %i.aof, align 32
  store <4 x float> %i.ayx, ptr %i.ayw, align 16
  %i.ayy = load ptr, ptr %i.anf, align 64
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 432
  %i.aza = load <4 x float>, ptr %i.aog, align 16
  store <4 x float> %i.aza, ptr %i.ayz, align 16
  %i.azb = load ptr, ptr %i.anf, align 64
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 448
  %i.azd = load <4 x float>, ptr %i.aoh, align 64
  store <4 x float> %i.azd, ptr %i.azc, align 16
  %i.aze = load ptr, ptr %i.anf, align 64
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 464
  %i.azg = load <4 x float>, ptr %i.aoi, align 16
  store <4 x float> %i.azg, ptr %i.azf, align 16
  %i.azh = load ptr, ptr %i.anf, align 64
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 480
  %i.azj = load <4 x float>, ptr %i.aoj, align 32
  store <4 x float> %i.azj, ptr %i.azi, align 16
  %i.azk = load ptr, ptr %i.anf, align 64
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 496
  %i.azm = load <4 x float>, ptr %i.aok, align 16
  store <4 x float> %i.azm, ptr %i.azl, align 16
  %.pre936 = load ptr, ptr %i.anf, align 64
  br label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i175

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i175: ; preds = %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i175.loopexit, %bb.ac, %bb.ab
  %i.azn = phi ptr [ %.pre936, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i175.loopexit ], [ %.pre937, %bb.ac ], [ %.pre937, %bb.ab ]
  %i.azo = getelementptr inbounds nuw [16 x i8], ptr %i.azn, i64 %.086.i172
  store <4 x float> %i.avt, ptr %i.azo, align 16
  %i.azp = fadd <4 x float> %.sroa.0613.0805, %i.avt ; 3 uses
  %i.azq = add nuw nsw i64 %.089.i128806, 1       ; 2 uses
  %i.azr = load i32, ptr %i.amh, align 4          ; 3 uses
  %i.azs = zext i32 %i.azr to i64                 ; 2 uses
  %i.azt = icmp samesign ult i64 %i.azq, %i.azs
  br i1 %i.azt, label %bb.ab, label %._crit_edge808, !llvm.loop !1444

._crit_edge821.loopexit:                          ; preds = %bb.aq
  %i.azu = uitofp i32 %i.bvp to float
  br label %._crit_edge821

._crit_edge821:                                   ; preds = %._crit_edge808.thread, %._crit_edge821.loopexit, %._crit_edge808
  %.sroa.0613.1.lcssa = phi <4 x float> [ %i.azp, %._crit_edge808 ], [ %i.bjs, %._crit_edge821.loopexit ], [ zeroinitializer, %._crit_edge808.thread ]
  %.084.i129.lcssa = phi i64 [ 0, %._crit_edge808 ], [ %.1.i143, %._crit_edge821.loopexit ], [ 0, %._crit_edge808.thread ] ; 2 uses
  %.lcssa782 = phi float [ 0.000000e+00, %._crit_edge808 ], [ %i.azu, %._crit_edge821.loopexit ], [ 0.000000e+00, %._crit_edge808.thread ] ; 2 uses
  %i.azv = fdiv float 1.000000e+00, %.lcssa782
  %i.azw = insertelement <4 x float> poison, float %i.azv, i64 0
  %i.azx = shufflevector <4 x float> %i.azw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.azy = fadd nnan ninf float %.lcssa782, -2.000000e+00
  %i.azz = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 6 uses
  %i.baa = insertelement <4 x float> poison, float %i.azy, i64 0
  %i.bab = shufflevector <4 x float> %i.baa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bac = load <4 x float>, ptr %i.azz, align 16, !noalias !1548
  %i.bad = fmul <4 x float> %i.bab, %i.bac
  %i.bae = fmul <4 x float> %.sroa.0613.1.lcssa, %i.azx
  %i.baf = fadd <4 x float> %i.bae, %i.bad
  %i.bag = fmul <4 x float> %i.azx, %i.baf        ; 5 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %1, i64 4368 ; 8 uses
  store <4 x float> %i.bag, ptr %i.bah, align 16
  %i.bai = load float, ptr %i.amo, align 4        ; 3 uses
  %i.baj = fcmp ogt float %i.bai, 0.000000e+00
  br i1 %i.baj, label %bb.ar, label %bb.au, !prof !53

bb.ad:                                            ; preds = %.lr.ph820, %bb.aq
  %i.bak = phi i64 [ %i.aol, %.lr.ph820 ], [ %i.bvq, %bb.aq ] ; 2 uses
  %.083.i130818 = phi i64 [ 0, %.lr.ph820 ], [ %i.bvo, %bb.aq ] ; 2 uses
  %.084.i129817 = phi i64 [ 0, %.lr.ph820 ], [ %.1.i143, %bb.aq ] ; 5 uses
  %.sroa.0613.1816 = phi <4 x float> [ %i.azp, %.lr.ph820 ], [ %i.bjs, %bb.aq ]
  %i.bal = load i32, ptr %i.amu, align 8
  %i.bam = zext i32 %i.bal to i64
  %i.ban = add nuw nsw i64 %.083.i130818, %i.bam  ; 3 uses
  %.not.i137 = icmp samesign ult i64 %i.ban, %i.bak
  %i.bao = select i1 %.not.i137, i64 0, i64 %i.bak ; 2 uses
  %spec.select113.i138 = sub nuw nsw i64 %i.ban, %i.bao ; 6 uses
  %i.bap = load ptr, ptr %i.aom, align 64
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %i.bap, i64 %spec.select113.i138
  %i.bar = load float, ptr %i.baq, align 4        ; 4 uses
  %i.bas = fadd float %i.bar, -1.000000e+00       ; 2 uses
  %i.bat = fcmp olt float %i.bas, 0.000000e+00
  %i.bau = select i1 %i.bat, float 0.000000e+00, float %i.bas ; 2 uses
  %i.bav = icmp samesign ult i64 %spec.select113.i138, 16
  %.pre938 = load ptr, ptr %i.aoo, align 64       ; 3 uses
  br i1 %i.bav, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139, label %bb.ae, !prof !66

bb.ae:                                            ; preds = %bb.ad
  %i.baw = icmp eq ptr %.pre938, %i.aon
  br i1 %i.baw, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139.thread, !prof !53

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139.thread: ; preds = %bb.ae
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %.pre938, i64 %spec.select113.i138
  store float %i.bau, ptr %i.bax, align 4
  br label %bb.ag

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139.loopexit: ; preds = %bb.ae
  %i.bay = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #29 ; 6 uses
  store ptr %i.bay, ptr %i.aoo, align 64
  %i.baz = load <4 x float>, ptr %i.aon, align 64
  store <4 x float> %i.baz, ptr %i.bay, align 4
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bay, i64 16
  %i.bbb = load <4 x float>, ptr %i.aot, align 16
  store <4 x float> %i.bbb, ptr %i.bba, align 4
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bay, i64 32
  %i.bbd = load <4 x float>, ptr %i.aou, align 32
  store <4 x float> %i.bbd, ptr %i.bbc, align 4
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bay, i64 48
  %i.bbf = load <4 x float>, ptr %i.aov, align 16
  store <4 x float> %i.bbf, ptr %i.bbe, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139: ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139.loopexit, %bb.ad
  %i.bbg = phi ptr [ %i.bay, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139.loopexit ], [ %.pre938, %bb.ad ]
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %i.bbg, i64 %spec.select113.i138
  store float %i.bau, ptr %i.bbh, align 4
  %i.bbi = icmp eq i64 %i.ban, %i.bao
  br i1 %i.bbi, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139
  %i.bbj = load i32, ptr %i.amk, align 8
  %i.bbk = add i32 %i.bbj, -1
  %i.bbl = zext i32 %i.bbk to i64
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139.thread, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139
  %i.bbm = shl nuw nsw i64 %spec.select113.i138, 1 ; 2 uses
  %i.bbn = add nsw i64 %i.bbm, -1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bbo = phi i64 [ 0, %bb.af ], [ %i.bbm, %bb.ag ] ; 8 uses
  %i.bbp = phi i64 [ %i.bbl, %bb.af ], [ %i.bbn, %bb.ag ] ; 2 uses
  %i.bbq = load ptr, ptr %i.aoq, align 64
  %i.bbr = getelementptr inbounds nuw [16 x i8], ptr %i.bbq, i64 %i.bbo
  %i.bbs = load <4 x float>, ptr %i.aop, align 16, !noalias !1549
  %i.bbt = load <4 x float>, ptr %i.bbr, align 16, !noalias !1549
  %i.bbu = fadd <4 x float> %i.bbs, %i.bbt        ; 3 uses
  %i.bbv = icmp ult i64 %i.bbp, 32
  %.pre940 = load ptr, ptr %i.aos, align 64       ; 3 uses
  br i1 %i.bbv, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i140, label %bb.ai, !prof !66

bb.ai:                                            ; preds = %bb.ah
  %i.bbw = icmp eq ptr %.pre940, %i.aor
  br i1 %i.bbw, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i140.loopexit, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i140, !prof !53

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i140.loopexit: ; preds = %bb.ai
  %i.bbx = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.bbx, ptr %i.aos, align 64
  %i.bby = load <4 x float>, ptr %i.aor, align 64
  store <4 x float> %i.bby, ptr %i.bbx, align 16
  %i.bbz = load ptr, ptr %i.aos, align 64
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 16
  %i.bcb = load <4 x float>, ptr %i.aow, align 16
  store <4 x float> %i.bcb, ptr %i.bca, align 16
  %i.bcc = load ptr, ptr %i.aos, align 64
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 32
  %i.bce = load <4 x float>, ptr %i.aox, align 32
  store <4 x float> %i.bce, ptr %i.bcd, align 16
  %i.bcf = load ptr, ptr %i.aos, align 64
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 48
  %i.bch = load <4 x float>, ptr %i.aoy, align 16
  store <4 x float> %i.bch, ptr %i.bcg, align 16
  %i.bci = load ptr, ptr %i.aos, align 64
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bci, i64 64
  %i.bck = load <4 x float>, ptr %i.aoz, align 64
  store <4 x float> %i.bck, ptr %i.bcj, align 16
  %i.bcl = load ptr, ptr %i.aos, align 64
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcl, i64 80
  %i.bcn = load <4 x float>, ptr %i.apa, align 16
  store <4 x float> %i.bcn, ptr %i.bcm, align 16
  %i.bco = load ptr, ptr %i.aos, align 64
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 96
  %i.bcq = load <4 x float>, ptr %i.apb, align 32
  store <4 x float> %i.bcq, ptr %i.bcp, align 16
  %i.bcr = load ptr, ptr %i.aos, align 64
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 112
  %i.bct = load <4 x float>, ptr %i.apc, align 16
  store <4 x float> %i.bct, ptr %i.bcs, align 16
  %i.bcu = load ptr, ptr %i.aos, align 64
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 128
  %i.bcw = load <4 x float>, ptr %i.apd, align 64
  store <4 x float> %i.bcw, ptr %i.bcv, align 16
  %i.bcx = load ptr, ptr %i.aos, align 64
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcx, i64 144
  %i.bcz = load <4 x float>, ptr %i.ape, align 16
  store <4 x float> %i.bcz, ptr %i.bcy, align 16
  %i.bda = load ptr, ptr %i.aos, align 64
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bda, i64 160
  %i.bdc = load <4 x float>, ptr %i.apf, align 32
  store <4 x float> %i.bdc, ptr %i.bdb, align 16
  %i.bdd = load ptr, ptr %i.aos, align 64
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 176
  %i.bdf = load <4 x float>, ptr %i.apg, align 16
  store <4 x float> %i.bdf, ptr %i.bde, align 16
  %i.bdg = load ptr, ptr %i.aos, align 64
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 192
  %i.bdi = load <4 x float>, ptr %i.aph, align 64
  store <4 x float> %i.bdi, ptr %i.bdh, align 16
  %i.bdj = load ptr, ptr %i.aos, align 64
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdj, i64 208
  %i.bdl = load <4 x float>, ptr %i.api, align 16
  store <4 x float> %i.bdl, ptr %i.bdk, align 16
  %i.bdm = load ptr, ptr %i.aos, align 64
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 224
  %i.bdo = load <4 x float>, ptr %i.apj, align 32
  store <4 x float> %i.bdo, ptr %i.bdn, align 16
  %i.bdp = load ptr, ptr %i.aos, align 64
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 240
  %i.bdr = load <4 x float>, ptr %i.apk, align 16
  store <4 x float> %i.bdr, ptr %i.bdq, align 16
  %i.bds = load ptr, ptr %i.aos, align 64
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 256
  %i.bdu = load <4 x float>, ptr %i.apl, align 64
  store <4 x float> %i.bdu, ptr %i.bdt, align 16
  %i.bdv = load ptr, ptr %i.aos, align 64
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 272
  %i.bdx = load <4 x float>, ptr %i.apm, align 16
  store <4 x float> %i.bdx, ptr %i.bdw, align 16
  %i.bdy = load ptr, ptr %i.aos, align 64
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 288
  %i.bea = load <4 x float>, ptr %i.apn, align 32
  store <4 x float> %i.bea, ptr %i.bdz, align 16
  %i.beb = load ptr, ptr %i.aos, align 64
  %i.bec = getelementptr inbounds nuw i8, ptr %i.beb, i64 304
  %i.bed = load <4 x float>, ptr %i.apo, align 16
  store <4 x float> %i.bed, ptr %i.bec, align 16
  %i.bee = load ptr, ptr %i.aos, align 64
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 320
  %i.beg = load <4 x float>, ptr %i.app, align 64
  store <4 x float> %i.beg, ptr %i.bef, align 16
  %i.beh = load ptr, ptr %i.aos, align 64
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 336
  %i.bej = load <4 x float>, ptr %i.apq, align 16
  store <4 x float> %i.bej, ptr %i.bei, align 16
  %i.bek = load ptr, ptr %i.aos, align 64
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 352
  %i.bem = load <4 x float>, ptr %i.apr, align 32
  store <4 x float> %i.bem, ptr %i.bel, align 16
  %i.ben = load ptr, ptr %i.aos, align 64
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 368
  %i.bep = load <4 x float>, ptr %i.aps, align 16
  store <4 x float> %i.bep, ptr %i.beo, align 16
  %i.beq = load ptr, ptr %i.aos, align 64
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 384
  %i.bes = load <4 x float>, ptr %i.apt, align 64
  store <4 x float> %i.bes, ptr %i.ber, align 16
  %i.bet = load ptr, ptr %i.aos, align 64
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 400
  %i.bev = load <4 x float>, ptr %i.apu, align 16
  store <4 x float> %i.bev, ptr %i.beu, align 16
  %i.bew = load ptr, ptr %i.aos, align 64
end_hunk_2
begin_hunk_3_@_ZNK6embree18CatmullClarkPatchTINS_11vfloat_implILi4EEES2_E9subdivideERNS_7array_tIS3_Lm4EEE:bb.a
  br label %bb.bd

bb.bb:                                            ; preds = %.lr.ph830, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i122
  %i.chu = phi i64 [ %i.caa, %.lr.ph830 ], [ %i.cmr, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i122 ] ; 2 uses
  %.089.i75829 = phi i64 [ 0, %.lr.ph830 ], [ %i.cmp, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i122 ] ; 2 uses
  %.sroa.0562.0828 = phi <4 x float> [ zeroinitializer, %.lr.ph830 ], [ %i.cmo, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i122 ]
  %i.chv = load i32, ptr %i.bzt, align 8
  %i.chw = zext i32 %i.chv to i64
  %i.chx = add nuw nsw i64 %.089.i75829, %i.chw   ; 2 uses
  %.not109.i114 = icmp samesign ult i64 %i.chx, %i.chu
  %i.chy = select i1 %.not109.i114, i64 0, i64 %i.chu
  %spec.select.i115 = sub nuw nsw i64 %i.chx, %i.chy
  %i.chz = shl nuw nsw i64 %spec.select.i115, 1   ; 4 uses
  %i.cia = load i32, ptr %i.bzj, align 8
  %i.cib = zext i32 %i.cia to i64                 ; 6 uses
  %.not110.i116 = icmp samesign ult i64 %i.chz, %i.cib
  %i.cic = select i1 %.not110.i116, i64 0, i64 %i.cib
  %.087.i117 = sub nuw nsw i64 %i.chz, %i.cic
  %i.cid = or disjoint i64 %i.chz, 1              ; 2 uses
  %.not111.i118 = icmp samesign ult i64 %i.cid, %i.cib
  %i.cie = select i1 %.not111.i118, i64 0, i64 %i.cib
  %.086.i119 = sub nuw nsw i64 %i.cid, %i.cie     ; 3 uses
  %i.cif = add nuw nsw i64 %i.chz, 2              ; 2 uses
  %.not112.i120 = icmp samesign ult i64 %i.cif, %i.cib
  %i.cig = select i1 %.not112.i120, i64 0, i64 %i.cib
  %.085.i121 = sub nuw nsw i64 %i.cif, %i.cig
  %i.cih = load ptr, ptr %i.cac, align 64         ; 3 uses
  %i.cii = getelementptr inbounds nuw [16 x i8], ptr %i.cih, i64 %.086.i119
  %i.cij = load <4 x float>, ptr %i.cab, align 16, !noalias !1556
  %i.cik = load <4 x float>, ptr %i.cii, align 16, !noalias !1556
  %i.cil = fadd <4 x float> %i.cij, %i.cik
  %i.cim = getelementptr inbounds nuw [16 x i8], ptr %i.cih, i64 %.087.i117
  %i.cin = getelementptr inbounds nuw [16 x i8], ptr %i.cih, i64 %.085.i121
  %i.cio = load <4 x float>, ptr %i.cim, align 16, !noalias !1557
  %i.cip = load <4 x float>, ptr %i.cin, align 16, !noalias !1557
  %i.ciq = fadd <4 x float> %i.cio, %i.cip
  %i.cir = fadd <4 x float> %i.cil, %i.ciq
  %i.cis = fmul <4 x float> %i.cir, splat (float 2.500000e-01) ; 2 uses
  %i.cit = icmp samesign ult i64 %.086.i119, 32
  %.pre950 = load ptr, ptr %i.cae, align 64       ; 3 uses
  br i1 %i.cit, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i122, label %bb.bc, !prof !66

bb.bc:                                            ; preds = %bb.bb
  %i.ciu = icmp eq ptr %.pre950, %i.cad
  br i1 %i.ciu, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i122.loopexit, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i122, !prof !53

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i122.loopexit: ; preds = %bb.bc
  %i.civ = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.civ, ptr %i.cae, align 64
  %i.ciw = load <4 x float>, ptr %i.cad, align 64
  store <4 x float> %i.ciw, ptr %i.civ, align 16
  %i.cix = load ptr, ptr %i.cae, align 64
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.cix, i64 16
  %i.ciz = load <4 x float>, ptr %i.caf, align 16
  store <4 x float> %i.ciz, ptr %i.ciy, align 16
  %i.cja = load ptr, ptr %i.cae, align 64
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.cja, i64 32
  %i.cjc = load <4 x float>, ptr %i.cag, align 32
  store <4 x float> %i.cjc, ptr %i.cjb, align 16
  %i.cjd = load ptr, ptr %i.cae, align 64
  %i.cje = getelementptr inbounds nuw i8, ptr %i.cjd, i64 48
  %i.cjf = load <4 x float>, ptr %i.cah, align 16
  store <4 x float> %i.cjf, ptr %i.cje, align 16
  %i.cjg = load ptr, ptr %i.cae, align 64
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cjg, i64 64
  %i.cji = load <4 x float>, ptr %i.cai, align 64
  store <4 x float> %i.cji, ptr %i.cjh, align 16
  %i.cjj = load ptr, ptr %i.cae, align 64
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cjj, i64 80
  %i.cjl = load <4 x float>, ptr %i.caj, align 16
  store <4 x float> %i.cjl, ptr %i.cjk, align 16
  %i.cjm = load ptr, ptr %i.cae, align 64
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cjm, i64 96
  %i.cjo = load <4 x float>, ptr %i.cak, align 32
  store <4 x float> %i.cjo, ptr %i.cjn, align 16
  %i.cjp = load ptr, ptr %i.cae, align 64
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cjp, i64 112
  %i.cjr = load <4 x float>, ptr %i.cal, align 16
  store <4 x float> %i.cjr, ptr %i.cjq, align 16
  %i.cjs = load ptr, ptr %i.cae, align 64
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cjs, i64 128
  %i.cju = load <4 x float>, ptr %i.cam, align 64
  store <4 x float> %i.cju, ptr %i.cjt, align 16
  %i.cjv = load ptr, ptr %i.cae, align 64
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cjv, i64 144
  %i.cjx = load <4 x float>, ptr %i.can, align 16
  store <4 x float> %i.cjx, ptr %i.cjw, align 16
  %i.cjy = load ptr, ptr %i.cae, align 64
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cjy, i64 160
  %i.cka = load <4 x float>, ptr %i.cao, align 32
  store <4 x float> %i.cka, ptr %i.cjz, align 16
  %i.ckb = load ptr, ptr %i.cae, align 64
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.ckb, i64 176
  %i.ckd = load <4 x float>, ptr %i.cap, align 16
  store <4 x float> %i.ckd, ptr %i.ckc, align 16
  %i.cke = load ptr, ptr %i.cae, align 64
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cke, i64 192
  %i.ckg = load <4 x float>, ptr %i.caq, align 64
  store <4 x float> %i.ckg, ptr %i.ckf, align 16
  %i.ckh = load ptr, ptr %i.cae, align 64
  %i.cki = getelementptr inbounds nuw i8, ptr %i.ckh, i64 208
  %i.ckj = load <4 x float>, ptr %i.car, align 16
  store <4 x float> %i.ckj, ptr %i.cki, align 16
  %i.ckk = load ptr, ptr %i.cae, align 64
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.ckk, i64 224
  %i.ckm = load <4 x float>, ptr %i.cas, align 32
  store <4 x float> %i.ckm, ptr %i.ckl, align 16
  %i.ckn = load ptr, ptr %i.cae, align 64
  %i.cko = getelementptr inbounds nuw i8, ptr %i.ckn, i64 240
  %i.ckp = load <4 x float>, ptr %i.cat, align 16
  store <4 x float> %i.ckp, ptr %i.cko, align 16
  %i.ckq = load ptr, ptr %i.cae, align 64
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ckq, i64 256
  %i.cks = load <4 x float>, ptr %i.cau, align 64
  store <4 x float> %i.cks, ptr %i.ckr, align 16
  %i.ckt = load ptr, ptr %i.cae, align 64
  %i.cku = getelementptr inbounds nuw i8, ptr %i.ckt, i64 272
  %i.ckv = load <4 x float>, ptr %i.cav, align 16
  store <4 x float> %i.ckv, ptr %i.cku, align 16
  %i.ckw = load ptr, ptr %i.cae, align 64
  %i.ckx = getelementptr inbounds nuw i8, ptr %i.ckw, i64 288
  %i.cky = load <4 x float>, ptr %i.caw, align 32
  store <4 x float> %i.cky, ptr %i.ckx, align 16
  %i.ckz = load ptr, ptr %i.cae, align 64
  %i.cla = getelementptr inbounds nuw i8, ptr %i.ckz, i64 304
  %i.clb = load <4 x float>, ptr %i.cax, align 16
  store <4 x float> %i.clb, ptr %i.cla, align 16
  %i.clc = load ptr, ptr %i.cae, align 64
  %i.cld = getelementptr inbounds nuw i8, ptr %i.clc, i64 320
  %i.cle = load <4 x float>, ptr %i.cay, align 64
  store <4 x float> %i.cle, ptr %i.cld, align 16
  %i.clf = load ptr, ptr %i.cae, align 64
  %i.clg = getelementptr inbounds nuw i8, ptr %i.clf, i64 336
  %i.clh = load <4 x float>, ptr %i.caz, align 16
  store <4 x float> %i.clh, ptr %i.clg, align 16
  %i.cli = load ptr, ptr %i.cae, align 64
  %i.clj = getelementptr inbounds nuw i8, ptr %i.cli, i64 352
  %i.clk = load <4 x float>, ptr %i.cba, align 32
  store <4 x float> %i.clk, ptr %i.clj, align 16
  %i.cll = load ptr, ptr %i.cae, align 64
  %i.clm = getelementptr inbounds nuw i8, ptr %i.cll, i64 368
  %i.cln = load <4 x float>, ptr %i.cbb, align 16
  store <4 x float> %i.cln, ptr %i.clm, align 16
  %i.clo = load ptr, ptr %i.cae, align 64
  %i.clp = getelementptr inbounds nuw i8, ptr %i.clo, i64 384
  %i.clq = load <4 x float>, ptr %i.cbc, align 64
  store <4 x float> %i.clq, ptr %i.clp, align 16
  %i.clr = load ptr, ptr %i.cae, align 64
  %i.cls = getelementptr inbounds nuw i8, ptr %i.clr, i64 400
  %i.clt = load <4 x float>, ptr %i.cbd, align 16
  store <4 x float> %i.clt, ptr %i.cls, align 16
  %i.clu = load ptr, ptr %i.cae, align 64
  %i.clv = getelementptr inbounds nuw i8, ptr %i.clu, i64 416
  %i.clw = load <4 x float>, ptr %i.cbe, align 32
  store <4 x float> %i.clw, ptr %i.clv, align 16
  %i.clx = load ptr, ptr %i.cae, align 64
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clx, i64 432
  %i.clz = load <4 x float>, ptr %i.cbf, align 16
  store <4 x float> %i.clz, ptr %i.cly, align 16
  %i.cma = load ptr, ptr %i.cae, align 64
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cma, i64 448
  %i.cmc = load <4 x float>, ptr %i.cbg, align 64
  store <4 x float> %i.cmc, ptr %i.cmb, align 16
  %i.cmd = load ptr, ptr %i.cae, align 64
  %i.cme = getelementptr inbounds nuw i8, ptr %i.cmd, i64 464
  %i.cmf = load <4 x float>, ptr %i.cbh, align 16
  store <4 x float> %i.cmf, ptr %i.cme, align 16
  %i.cmg = load ptr, ptr %i.cae, align 64
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.cmg, i64 480
  %i.cmi = load <4 x float>, ptr %i.cbi, align 32
  store <4 x float> %i.cmi, ptr %i.cmh, align 16
  %i.cmj = load ptr, ptr %i.cae, align 64
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.cmj, i64 496
  %i.cml = load <4 x float>, ptr %i.cbj, align 16
  store <4 x float> %i.cml, ptr %i.cmk, align 16
  %.pre949 = load ptr, ptr %i.cae, align 64
  br label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i122

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i122: ; preds = %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i122.loopexit, %bb.bc, %bb.bb
  %i.cmm = phi ptr [ %.pre949, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i122.loopexit ], [ %.pre950, %bb.bc ], [ %.pre950, %bb.bb ]
  %i.cmn = getelementptr inbounds nuw [16 x i8], ptr %i.cmm, i64 %.086.i119
  store <4 x float> %i.cis, ptr %i.cmn, align 16
  %i.cmo = fadd <4 x float> %.sroa.0562.0828, %i.cis ; 3 uses
  %i.cmp = add nuw nsw i64 %.089.i75829, 1        ; 2 uses
  %i.cmq = load i32, ptr %i.bzg, align 4          ; 3 uses
  %i.cmr = zext i32 %i.cmq to i64                 ; 2 uses
  %i.cms = icmp samesign ult i64 %i.cmp, %i.cmr
  br i1 %i.cms, label %bb.bb, label %._crit_edge831, !llvm.loop !1444

._crit_edge844.loopexit:                          ; preds = %bb.bq
  %i.cmt = uitofp i32 %i.dio to float
  br label %._crit_edge844

._crit_edge844:                                   ; preds = %._crit_edge831.thread, %._crit_edge844.loopexit, %._crit_edge831
  %.sroa.0562.1.lcssa = phi <4 x float> [ %i.cmo, %._crit_edge831 ], [ %i.cwr, %._crit_edge844.loopexit ], [ zeroinitializer, %._crit_edge831.thread ]
  %.084.i76.lcssa = phi i64 [ 0, %._crit_edge831 ], [ %.1.i90, %._crit_edge844.loopexit ], [ 0, %._crit_edge831.thread ] ; 2 uses
  %.lcssa781 = phi float [ 0.000000e+00, %._crit_edge831 ], [ %i.cmt, %._crit_edge844.loopexit ], [ 0.000000e+00, %._crit_edge831.thread ] ; 2 uses
  %i.cmu = fdiv float 1.000000e+00, %.lcssa781
  %i.cmv = insertelement <4 x float> poison, float %i.cmu, i64 0
  %i.cmw = shufflevector <4 x float> %i.cmv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cmx = fadd nnan ninf float %.lcssa781, -2.000000e+00
  %i.cmy = getelementptr inbounds nuw i8, ptr %0, i64 1872 ; 6 uses
  %i.cmz = insertelement <4 x float> poison, float %i.cmx, i64 0
  %i.cna = shufflevector <4 x float> %i.cmz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnb = load <4 x float>, ptr %i.cmy, align 16, !noalias !1558
  %i.cnc = fmul <4 x float> %i.cna, %i.cnb
  %i.cnd = fmul <4 x float> %.sroa.0562.1.lcssa, %i.cmw
  %i.cne = fadd <4 x float> %i.cnd, %i.cnc
  %i.cnf = fmul <4 x float> %i.cmw, %i.cne        ; 5 uses
  %i.cng = getelementptr inbounds nuw i8, ptr %1, i64 8528 ; 8 uses
  store <4 x float> %i.cnf, ptr %i.cng, align 16
  %i.cnh = load float, ptr %i.bzn, align 4        ; 3 uses
  %i.cni = fcmp ogt float %i.cnh, 0.000000e+00
  br i1 %i.cni, label %bb.br, label %bb.bu, !prof !53

bb.bd:                                            ; preds = %.lr.ph843, %bb.bq
  %i.cnj = phi i64 [ %i.cbk, %.lr.ph843 ], [ %i.dip, %bb.bq ] ; 2 uses
  %.083.i77841 = phi i64 [ 0, %.lr.ph843 ], [ %i.din, %bb.bq ] ; 2 uses
  %.084.i76840 = phi i64 [ 0, %.lr.ph843 ], [ %.1.i90, %bb.bq ] ; 5 uses
  %.sroa.0562.1839 = phi <4 x float> [ %i.cmo, %.lr.ph843 ], [ %i.cwr, %bb.bq ]
  %i.cnk = load i32, ptr %i.bzt, align 8
  %i.cnl = zext i32 %i.cnk to i64
  %i.cnm = add nuw nsw i64 %.083.i77841, %i.cnl   ; 3 uses
  %.not.i84 = icmp samesign ult i64 %i.cnm, %i.cnj
  %i.cnn = select i1 %.not.i84, i64 0, i64 %i.cnj ; 2 uses
  %spec.select113.i85 = sub nuw nsw i64 %i.cnm, %i.cnn ; 6 uses
  %i.cno = load ptr, ptr %i.cbl, align 64
  %i.cnp = getelementptr inbounds nuw [4 x i8], ptr %i.cno, i64 %spec.select113.i85
  %i.cnq = load float, ptr %i.cnp, align 4        ; 4 uses
  %i.cnr = fadd float %i.cnq, -1.000000e+00       ; 2 uses
  %i.cns = fcmp olt float %i.cnr, 0.000000e+00
  %i.cnt = select i1 %i.cns, float 0.000000e+00, float %i.cnr ; 2 uses
  %i.cnu = icmp samesign ult i64 %spec.select113.i85, 16
  %.pre951 = load ptr, ptr %i.cbn, align 64       ; 3 uses
  br i1 %i.cnu, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86, label %bb.be, !prof !66

bb.be:                                            ; preds = %bb.bd
  %i.cnv = icmp eq ptr %.pre951, %i.cbm
  br i1 %i.cnv, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86.thread, !prof !53

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86.thread: ; preds = %bb.be
  %i.cnw = getelementptr inbounds nuw [4 x i8], ptr %.pre951, i64 %spec.select113.i85
  store float %i.cnt, ptr %i.cnw, align 4
  br label %bb.bg

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86.loopexit: ; preds = %bb.be
  %i.cnx = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #29 ; 6 uses
  store ptr %i.cnx, ptr %i.cbn, align 64
  %i.cny = load <4 x float>, ptr %i.cbm, align 64
  store <4 x float> %i.cny, ptr %i.cnx, align 4
  %i.cnz = getelementptr inbounds nuw i8, ptr %i.cnx, i64 16
  %i.coa = load <4 x float>, ptr %i.cbs, align 16
  store <4 x float> %i.coa, ptr %i.cnz, align 4
  %i.cob = getelementptr inbounds nuw i8, ptr %i.cnx, i64 32
  %i.coc = load <4 x float>, ptr %i.cbt, align 32
  store <4 x float> %i.coc, ptr %i.cob, align 4
  %i.cod = getelementptr inbounds nuw i8, ptr %i.cnx, i64 48
  %i.coe = load <4 x float>, ptr %i.cbu, align 16
  store <4 x float> %i.coe, ptr %i.cod, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86: ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86.loopexit, %bb.bd
  %i.cof = phi ptr [ %i.cnx, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86.loopexit ], [ %.pre951, %bb.bd ]
  %i.cog = getelementptr inbounds nuw [4 x i8], ptr %i.cof, i64 %spec.select113.i85
  store float %i.cnt, ptr %i.cog, align 4
  %i.coh = icmp eq i64 %i.cnm, %i.cnn
  br i1 %i.coh, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86
  %i.coi = load i32, ptr %i.bzj, align 8
  %i.coj = add i32 %i.coi, -1
  %i.cok = zext i32 %i.coj to i64
  br label %bb.bh

bb.bg:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86.thread, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86
  %i.col = shl nuw nsw i64 %spec.select113.i85, 1 ; 2 uses
  %i.com = add nsw i64 %i.col, -1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.con = phi i64 [ 0, %bb.bf ], [ %i.col, %bb.bg ] ; 8 uses
  %i.coo = phi i64 [ %i.cok, %bb.bf ], [ %i.com, %bb.bg ] ; 2 uses
  %i.cop = load ptr, ptr %i.cbp, align 64
  %i.coq = getelementptr inbounds nuw [16 x i8], ptr %i.cop, i64 %i.con
  %i.cor = load <4 x float>, ptr %i.cbo, align 16, !noalias !1559
  %i.cos = load <4 x float>, ptr %i.coq, align 16, !noalias !1559
  %i.cot = fadd <4 x float> %i.cor, %i.cos        ; 3 uses
  %i.cou = icmp ult i64 %i.coo, 32
  %.pre953 = load ptr, ptr %i.cbr, align 64       ; 3 uses
  br i1 %i.cou, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i87, label %bb.bi, !prof !66

bb.bi:                                            ; preds = %bb.bh
  %i.cov = icmp eq ptr %.pre953, %i.cbq
  br i1 %i.cov, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i87.loopexit, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i87, !prof !53

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i87.loopexit: ; preds = %bb.bi
  %i.cow = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.cow, ptr %i.cbr, align 64
  %i.cox = load <4 x float>, ptr %i.cbq, align 64
  store <4 x float> %i.cox, ptr %i.cow, align 16
  %i.coy = load ptr, ptr %i.cbr, align 64
  %i.coz = getelementptr inbounds nuw i8, ptr %i.coy, i64 16
  %i.cpa = load <4 x float>, ptr %i.cbv, align 16
  store <4 x float> %i.cpa, ptr %i.coz, align 16
  %i.cpb = load ptr, ptr %i.cbr, align 64
  %i.cpc = getelementptr inbounds nuw i8, ptr %i.cpb, i64 32
  %i.cpd = load <4 x float>, ptr %i.cbw, align 32
  store <4 x float> %i.cpd, ptr %i.cpc, align 16
  %i.cpe = load ptr, ptr %i.cbr, align 64
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.cpe, i64 48
  %i.cpg = load <4 x float>, ptr %i.cbx, align 16
  store <4 x float> %i.cpg, ptr %i.cpf, align 16
  %i.cph = load ptr, ptr %i.cbr, align 64
  %i.cpi = getelementptr inbounds nuw i8, ptr %i.cph, i64 64
  %i.cpj = load <4 x float>, ptr %i.cby, align 64
  store <4 x float> %i.cpj, ptr %i.cpi, align 16
  %i.cpk = load ptr, ptr %i.cbr, align 64
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.cpk, i64 80
  %i.cpm = load <4 x float>, ptr %i.cbz, align 16
  store <4 x float> %i.cpm, ptr %i.cpl, align 16
  %i.cpn = load ptr, ptr %i.cbr, align 64
  %i.cpo = getelementptr inbounds nuw i8, ptr %i.cpn, i64 96
  %i.cpp = load <4 x float>, ptr %i.cca, align 32
  store <4 x float> %i.cpp, ptr %i.cpo, align 16
  %i.cpq = load ptr, ptr %i.cbr, align 64
  %i.cpr = getelementptr inbounds nuw i8, ptr %i.cpq, i64 112
  %i.cps = load <4 x float>, ptr %i.ccb, align 16
  store <4 x float> %i.cps, ptr %i.cpr, align 16
  %i.cpt = load ptr, ptr %i.cbr, align 64
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cpt, i64 128
  %i.cpv = load <4 x float>, ptr %i.ccc, align 64
  store <4 x float> %i.cpv, ptr %i.cpu, align 16
  %i.cpw = load ptr, ptr %i.cbr, align 64
  %i.cpx = getelementptr inbounds nuw i8, ptr %i.cpw, i64 144
  %i.cpy = load <4 x float>, ptr %i.ccd, align 16
  store <4 x float> %i.cpy, ptr %i.cpx, align 16
  %i.cpz = load ptr, ptr %i.cbr, align 64
  %i.cqa = getelementptr inbounds nuw i8, ptr %i.cpz, i64 160
  %i.cqb = load <4 x float>, ptr %i.cce, align 32
  store <4 x float> %i.cqb, ptr %i.cqa, align 16
  %i.cqc = load ptr, ptr %i.cbr, align 64
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.cqc, i64 176
  %i.cqe = load <4 x float>, ptr %i.ccf, align 16
  store <4 x float> %i.cqe, ptr %i.cqd, align 16
  %i.cqf = load ptr, ptr %i.cbr, align 64
  %i.cqg = getelementptr inbounds nuw i8, ptr %i.cqf, i64 192
  %i.cqh = load <4 x float>, ptr %i.ccg, align 64
  store <4 x float> %i.cqh, ptr %i.cqg, align 16
  %i.cqi = load ptr, ptr %i.cbr, align 64
  %i.cqj = getelementptr inbounds nuw i8, ptr %i.cqi, i64 208
  %i.cqk = load <4 x float>, ptr %i.cch, align 16
  store <4 x float> %i.cqk, ptr %i.cqj, align 16
  %i.cql = load ptr, ptr %i.cbr, align 64
  %i.cqm = getelementptr inbounds nuw i8, ptr %i.cql, i64 224
  %i.cqn = load <4 x float>, ptr %i.cci, align 32
  store <4 x float> %i.cqn, ptr %i.cqm, align 16
  %i.cqo = load ptr, ptr %i.cbr, align 64
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqo, i64 240
  %i.cqq = load <4 x float>, ptr %i.ccj, align 16
  store <4 x float> %i.cqq, ptr %i.cqp, align 16
  %i.cqr = load ptr, ptr %i.cbr, align 64
  %i.cqs = getelementptr inbounds nuw i8, ptr %i.cqr, i64 256
  %i.cqt = load <4 x float>, ptr %i.cck, align 64
  store <4 x float> %i.cqt, ptr %i.cqs, align 16
  %i.cqu = load ptr, ptr %i.cbr, align 64
  %i.cqv = getelementptr inbounds nuw i8, ptr %i.cqu, i64 272
  %i.cqw = load <4 x float>, ptr %i.ccl, align 16
  store <4 x float> %i.cqw, ptr %i.cqv, align 16
  %i.cqx = load ptr, ptr %i.cbr, align 64
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cqx, i64 288
  %i.cqz = load <4 x float>, ptr %i.ccm, align 32
  store <4 x float> %i.cqz, ptr %i.cqy, align 16
  %i.cra = load ptr, ptr %i.cbr, align 64
  %i.crb = getelementptr inbounds nuw i8, ptr %i.cra, i64 304
  %i.crc = load <4 x float>, ptr %i.ccn, align 16
  store <4 x float> %i.crc, ptr %i.crb, align 16
  %i.crd = load ptr, ptr %i.cbr, align 64
  %i.cre = getelementptr inbounds nuw i8, ptr %i.crd, i64 320
  %i.crf = load <4 x float>, ptr %i.cco, align 64
  store <4 x float> %i.crf, ptr %i.cre, align 16
  %i.crg = load ptr, ptr %i.cbr, align 64
  %i.crh = getelementptr inbounds nuw i8, ptr %i.crg, i64 336
  %i.cri = load <4 x float>, ptr %i.ccp, align 16
  store <4 x float> %i.cri, ptr %i.crh, align 16
  %i.crj = load ptr, ptr %i.cbr, align 64
  %i.crk = getelementptr inbounds nuw i8, ptr %i.crj, i64 352
  %i.crl = load <4 x float>, ptr %i.ccq, align 32
  store <4 x float> %i.crl, ptr %i.crk, align 16
  %i.crm = load ptr, ptr %i.cbr, align 64
  %i.crn = getelementptr inbounds nuw i8, ptr %i.crm, i64 368
  %i.cro = load <4 x float>, ptr %i.ccr, align 16
  store <4 x float> %i.cro, ptr %i.crn, align 16
  %i.crp = load ptr, ptr %i.cbr, align 64
  %i.crq = getelementptr inbounds nuw i8, ptr %i.crp, i64 384
  %i.crr = load <4 x float>, ptr %i.ccs, align 64
  store <4 x float> %i.crr, ptr %i.crq, align 16
  %i.crs = load ptr, ptr %i.cbr, align 64
  %i.crt = getelementptr inbounds nuw i8, ptr %i.crs, i64 400
  %i.cru = load <4 x float>, ptr %i.cct, align 16
  store <4 x float> %i.cru, ptr %i.crt, align 16
  %i.crv = load ptr, ptr %i.cbr, align 64
end_hunk_3
begin_hunk_4_@_ZNK6embree18CatmullClarkPatchTINS_11vfloat_implILi4EEES2_E9subdivideERNS_7array_tIS3_Lm4EEE:bb.a
  br label %bb.cd

bb.cb:                                            ; preds = %.lr.ph853, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i
  %i.dut = phi i64 [ %i.dmz, %.lr.ph853 ], [ %i.dzq, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i ] ; 2 uses
  %.089.i852 = phi i64 [ 0, %.lr.ph853 ], [ %i.dzo, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i ] ; 2 uses
  %.sroa.0511.0851 = phi <4 x float> [ zeroinitializer, %.lr.ph853 ], [ %i.dzn, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i ]
  %i.duu = load i32, ptr %i.dms, align 8
  %i.duv = zext i32 %i.duu to i64
  %i.duw = add nuw nsw i64 %.089.i852, %i.duv     ; 2 uses
  %.not109.i = icmp samesign ult i64 %i.duw, %i.dut
  %i.dux = select i1 %.not109.i, i64 0, i64 %i.dut
  %spec.select.i = sub nuw nsw i64 %i.duw, %i.dux
  %i.duy = shl nuw nsw i64 %spec.select.i, 1      ; 4 uses
  %i.duz = load i32, ptr %i.dmi, align 8
  %i.dva = zext i32 %i.duz to i64                 ; 6 uses
  %.not110.i = icmp samesign ult i64 %i.duy, %i.dva
  %i.dvb = select i1 %.not110.i, i64 0, i64 %i.dva
  %.087.i = sub nuw nsw i64 %i.duy, %i.dvb
  %i.dvc = or disjoint i64 %i.duy, 1              ; 2 uses
  %.not111.i = icmp samesign ult i64 %i.dvc, %i.dva
  %i.dvd = select i1 %.not111.i, i64 0, i64 %i.dva
  %.086.i = sub nuw nsw i64 %i.dvc, %i.dvd        ; 3 uses
  %i.dve = add nuw nsw i64 %i.duy, 2              ; 2 uses
  %.not112.i = icmp samesign ult i64 %i.dve, %i.dva
  %i.dvf = select i1 %.not112.i, i64 0, i64 %i.dva
  %.085.i = sub nuw nsw i64 %i.dve, %i.dvf
  %i.dvg = load ptr, ptr %i.dnb, align 64         ; 3 uses
  %i.dvh = getelementptr inbounds nuw [16 x i8], ptr %i.dvg, i64 %.086.i
  %i.dvi = load <4 x float>, ptr %i.dna, align 16, !noalias !1566
  %i.dvj = load <4 x float>, ptr %i.dvh, align 16, !noalias !1566
  %i.dvk = fadd <4 x float> %i.dvi, %i.dvj
  %i.dvl = getelementptr inbounds nuw [16 x i8], ptr %i.dvg, i64 %.087.i
  %i.dvm = getelementptr inbounds nuw [16 x i8], ptr %i.dvg, i64 %.085.i
  %i.dvn = load <4 x float>, ptr %i.dvl, align 16, !noalias !1567
  %i.dvo = load <4 x float>, ptr %i.dvm, align 16, !noalias !1567
  %i.dvp = fadd <4 x float> %i.dvn, %i.dvo
  %i.dvq = fadd <4 x float> %i.dvk, %i.dvp
  %i.dvr = fmul <4 x float> %i.dvq, splat (float 2.500000e-01) ; 2 uses
  %i.dvs = icmp samesign ult i64 %.086.i, 32
  %.pre963 = load ptr, ptr %i.dnd, align 64       ; 3 uses
  br i1 %i.dvs, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i, label %bb.cc, !prof !66

bb.cc:                                            ; preds = %bb.cb
  %i.dvt = icmp eq ptr %.pre963, %i.dnc
  br i1 %i.dvt, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i.loopexit, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i, !prof !53

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i.loopexit: ; preds = %bb.cc
  %i.dvu = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.dvu, ptr %i.dnd, align 64
  %i.dvv = load <4 x float>, ptr %i.dnc, align 64
  store <4 x float> %i.dvv, ptr %i.dvu, align 16
  %i.dvw = load ptr, ptr %i.dnd, align 64
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dvw, i64 16
  %i.dvy = load <4 x float>, ptr %i.dne, align 16
  store <4 x float> %i.dvy, ptr %i.dvx, align 16
  %i.dvz = load ptr, ptr %i.dnd, align 64
  %i.dwa = getelementptr inbounds nuw i8, ptr %i.dvz, i64 32
  %i.dwb = load <4 x float>, ptr %i.dnf, align 32
  store <4 x float> %i.dwb, ptr %i.dwa, align 16
  %i.dwc = load ptr, ptr %i.dnd, align 64
  %i.dwd = getelementptr inbounds nuw i8, ptr %i.dwc, i64 48
  %i.dwe = load <4 x float>, ptr %i.dng, align 16
  store <4 x float> %i.dwe, ptr %i.dwd, align 16
  %i.dwf = load ptr, ptr %i.dnd, align 64
  %i.dwg = getelementptr inbounds nuw i8, ptr %i.dwf, i64 64
  %i.dwh = load <4 x float>, ptr %i.dnh, align 64
  store <4 x float> %i.dwh, ptr %i.dwg, align 16
  %i.dwi = load ptr, ptr %i.dnd, align 64
  %i.dwj = getelementptr inbounds nuw i8, ptr %i.dwi, i64 80
  %i.dwk = load <4 x float>, ptr %i.dni, align 16
  store <4 x float> %i.dwk, ptr %i.dwj, align 16
  %i.dwl = load ptr, ptr %i.dnd, align 64
  %i.dwm = getelementptr inbounds nuw i8, ptr %i.dwl, i64 96
  %i.dwn = load <4 x float>, ptr %i.dnj, align 32
  store <4 x float> %i.dwn, ptr %i.dwm, align 16
  %i.dwo = load ptr, ptr %i.dnd, align 64
  %i.dwp = getelementptr inbounds nuw i8, ptr %i.dwo, i64 112
  %i.dwq = load <4 x float>, ptr %i.dnk, align 16
  store <4 x float> %i.dwq, ptr %i.dwp, align 16
  %i.dwr = load ptr, ptr %i.dnd, align 64
  %i.dws = getelementptr inbounds nuw i8, ptr %i.dwr, i64 128
  %i.dwt = load <4 x float>, ptr %i.dnl, align 64
  store <4 x float> %i.dwt, ptr %i.dws, align 16
  %i.dwu = load ptr, ptr %i.dnd, align 64
  %i.dwv = getelementptr inbounds nuw i8, ptr %i.dwu, i64 144
  %i.dww = load <4 x float>, ptr %i.dnm, align 16
  store <4 x float> %i.dww, ptr %i.dwv, align 16
  %i.dwx = load ptr, ptr %i.dnd, align 64
  %i.dwy = getelementptr inbounds nuw i8, ptr %i.dwx, i64 160
  %i.dwz = load <4 x float>, ptr %i.dnn, align 32
  store <4 x float> %i.dwz, ptr %i.dwy, align 16
  %i.dxa = load ptr, ptr %i.dnd, align 64
  %i.dxb = getelementptr inbounds nuw i8, ptr %i.dxa, i64 176
  %i.dxc = load <4 x float>, ptr %i.dno, align 16
  store <4 x float> %i.dxc, ptr %i.dxb, align 16
  %i.dxd = load ptr, ptr %i.dnd, align 64
  %i.dxe = getelementptr inbounds nuw i8, ptr %i.dxd, i64 192
  %i.dxf = load <4 x float>, ptr %i.dnp, align 64
  store <4 x float> %i.dxf, ptr %i.dxe, align 16
  %i.dxg = load ptr, ptr %i.dnd, align 64
  %i.dxh = getelementptr inbounds nuw i8, ptr %i.dxg, i64 208
  %i.dxi = load <4 x float>, ptr %i.dnq, align 16
  store <4 x float> %i.dxi, ptr %i.dxh, align 16
  %i.dxj = load ptr, ptr %i.dnd, align 64
  %i.dxk = getelementptr inbounds nuw i8, ptr %i.dxj, i64 224
  %i.dxl = load <4 x float>, ptr %i.dnr, align 32
  store <4 x float> %i.dxl, ptr %i.dxk, align 16
  %i.dxm = load ptr, ptr %i.dnd, align 64
  %i.dxn = getelementptr inbounds nuw i8, ptr %i.dxm, i64 240
  %i.dxo = load <4 x float>, ptr %i.dns, align 16
  store <4 x float> %i.dxo, ptr %i.dxn, align 16
  %i.dxp = load ptr, ptr %i.dnd, align 64
  %i.dxq = getelementptr inbounds nuw i8, ptr %i.dxp, i64 256
  %i.dxr = load <4 x float>, ptr %i.dnt, align 64
  store <4 x float> %i.dxr, ptr %i.dxq, align 16
  %i.dxs = load ptr, ptr %i.dnd, align 64
  %i.dxt = getelementptr inbounds nuw i8, ptr %i.dxs, i64 272
  %i.dxu = load <4 x float>, ptr %i.dnu, align 16
  store <4 x float> %i.dxu, ptr %i.dxt, align 16
  %i.dxv = load ptr, ptr %i.dnd, align 64
  %i.dxw = getelementptr inbounds nuw i8, ptr %i.dxv, i64 288
  %i.dxx = load <4 x float>, ptr %i.dnv, align 32
  store <4 x float> %i.dxx, ptr %i.dxw, align 16
  %i.dxy = load ptr, ptr %i.dnd, align 64
  %i.dxz = getelementptr inbounds nuw i8, ptr %i.dxy, i64 304
  %i.dya = load <4 x float>, ptr %i.dnw, align 16
  store <4 x float> %i.dya, ptr %i.dxz, align 16
  %i.dyb = load ptr, ptr %i.dnd, align 64
  %i.dyc = getelementptr inbounds nuw i8, ptr %i.dyb, i64 320
  %i.dyd = load <4 x float>, ptr %i.dnx, align 64
  store <4 x float> %i.dyd, ptr %i.dyc, align 16
  %i.dye = load ptr, ptr %i.dnd, align 64
  %i.dyf = getelementptr inbounds nuw i8, ptr %i.dye, i64 336
  %i.dyg = load <4 x float>, ptr %i.dny, align 16
  store <4 x float> %i.dyg, ptr %i.dyf, align 16
  %i.dyh = load ptr, ptr %i.dnd, align 64
  %i.dyi = getelementptr inbounds nuw i8, ptr %i.dyh, i64 352
  %i.dyj = load <4 x float>, ptr %i.dnz, align 32
  store <4 x float> %i.dyj, ptr %i.dyi, align 16
  %i.dyk = load ptr, ptr %i.dnd, align 64
  %i.dyl = getelementptr inbounds nuw i8, ptr %i.dyk, i64 368
  %i.dym = load <4 x float>, ptr %i.doa, align 16
  store <4 x float> %i.dym, ptr %i.dyl, align 16
  %i.dyn = load ptr, ptr %i.dnd, align 64
  %i.dyo = getelementptr inbounds nuw i8, ptr %i.dyn, i64 384
  %i.dyp = load <4 x float>, ptr %i.dob, align 64
  store <4 x float> %i.dyp, ptr %i.dyo, align 16
  %i.dyq = load ptr, ptr %i.dnd, align 64
  %i.dyr = getelementptr inbounds nuw i8, ptr %i.dyq, i64 400
  %i.dys = load <4 x float>, ptr %i.doc, align 16
  store <4 x float> %i.dys, ptr %i.dyr, align 16
  %i.dyt = load ptr, ptr %i.dnd, align 64
  %i.dyu = getelementptr inbounds nuw i8, ptr %i.dyt, i64 416
  %i.dyv = load <4 x float>, ptr %i.dod, align 32
  store <4 x float> %i.dyv, ptr %i.dyu, align 16
  %i.dyw = load ptr, ptr %i.dnd, align 64
  %i.dyx = getelementptr inbounds nuw i8, ptr %i.dyw, i64 432
  %i.dyy = load <4 x float>, ptr %i.doe, align 16
  store <4 x float> %i.dyy, ptr %i.dyx, align 16
  %i.dyz = load ptr, ptr %i.dnd, align 64
  %i.dza = getelementptr inbounds nuw i8, ptr %i.dyz, i64 448
  %i.dzb = load <4 x float>, ptr %i.dof, align 64
  store <4 x float> %i.dzb, ptr %i.dza, align 16
  %i.dzc = load ptr, ptr %i.dnd, align 64
  %i.dzd = getelementptr inbounds nuw i8, ptr %i.dzc, i64 464
  %i.dze = load <4 x float>, ptr %i.dog, align 16
  store <4 x float> %i.dze, ptr %i.dzd, align 16
  %i.dzf = load ptr, ptr %i.dnd, align 64
  %i.dzg = getelementptr inbounds nuw i8, ptr %i.dzf, i64 480
  %i.dzh = load <4 x float>, ptr %i.doh, align 32
  store <4 x float> %i.dzh, ptr %i.dzg, align 16
  %i.dzi = load ptr, ptr %i.dnd, align 64
  %i.dzj = getelementptr inbounds nuw i8, ptr %i.dzi, i64 496
  %i.dzk = load <4 x float>, ptr %i.doi, align 16
  store <4 x float> %i.dzk, ptr %i.dzj, align 16
  %.pre962 = load ptr, ptr %i.dnd, align 64
  br label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i: ; preds = %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i.loopexit, %bb.cc, %bb.cb
  %i.dzl = phi ptr [ %.pre962, %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit.i.loopexit ], [ %.pre963, %bb.cc ], [ %.pre963, %bb.cb ]
  %i.dzm = getelementptr inbounds nuw [16 x i8], ptr %i.dzl, i64 %.086.i
  store <4 x float> %i.dvr, ptr %i.dzm, align 16
  %i.dzn = fadd <4 x float> %.sroa.0511.0851, %i.dvr ; 3 uses
  %i.dzo = add nuw nsw i64 %.089.i852, 1          ; 2 uses
  %i.dzp = load i32, ptr %i.dmf, align 4          ; 3 uses
  %i.dzq = zext i32 %i.dzp to i64                 ; 2 uses
  %i.dzr = icmp samesign ult i64 %i.dzo, %i.dzq
  br i1 %i.dzr, label %bb.cb, label %._crit_edge854, !llvm.loop !1444

._crit_edge867.loopexit:                          ; preds = %bb.cq
  %i.dzs = uitofp i32 %i.evn to float
  br label %._crit_edge867

._crit_edge867:                                   ; preds = %._crit_edge854.thread, %._crit_edge867.loopexit, %._crit_edge854
  %.sroa.0511.1.lcssa = phi <4 x float> [ %i.dzn, %._crit_edge854 ], [ %i.ejq, %._crit_edge867.loopexit ], [ zeroinitializer, %._crit_edge854.thread ]
  %.084.i.lcssa = phi i64 [ 0, %._crit_edge854 ], [ %.1.i, %._crit_edge867.loopexit ], [ 0, %._crit_edge854.thread ] ; 2 uses
  %.lcssa = phi float [ 0.000000e+00, %._crit_edge854 ], [ %i.dzs, %._crit_edge867.loopexit ], [ 0.000000e+00, %._crit_edge854.thread ] ; 2 uses
  %i.dzt = fdiv float 1.000000e+00, %.lcssa
  %i.dzu = insertelement <4 x float> poison, float %i.dzt, i64 0
  %i.dzv = shufflevector <4 x float> %i.dzu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dzw = fadd nnan ninf float %.lcssa, -2.000000e+00
  %i.dzx = getelementptr inbounds nuw i8, ptr %0, i64 2704 ; 6 uses
  %i.dzy = insertelement <4 x float> poison, float %i.dzw, i64 0
  %i.dzz = shufflevector <4 x float> %i.dzy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eaa = load <4 x float>, ptr %i.dzx, align 16, !noalias !1568
  %i.eab = fmul <4 x float> %i.dzz, %i.eaa
  %i.eac = fmul <4 x float> %.sroa.0511.1.lcssa, %i.dzv
  %i.ead = fadd <4 x float> %i.eac, %i.eab
  %i.eae = fmul <4 x float> %i.dzv, %i.ead        ; 5 uses
  %i.eaf = getelementptr inbounds nuw i8, ptr %1, i64 12688 ; 8 uses
  store <4 x float> %i.eae, ptr %i.eaf, align 16
  %i.eag = load float, ptr %i.dmm, align 4        ; 3 uses
  %i.eah = fcmp ogt float %i.eag, 0.000000e+00
  br i1 %i.eah, label %bb.cr, label %bb.cu, !prof !53

bb.cd:                                            ; preds = %.lr.ph866, %bb.cq
  %i.eai = phi i64 [ %i.doj, %.lr.ph866 ], [ %i.evo, %bb.cq ] ; 2 uses
  %.083.i864 = phi i64 [ 0, %.lr.ph866 ], [ %i.evm, %bb.cq ] ; 2 uses
  %.084.i863 = phi i64 [ 0, %.lr.ph866 ], [ %.1.i, %bb.cq ] ; 5 uses
  %.sroa.0511.1862 = phi <4 x float> [ %i.dzn, %.lr.ph866 ], [ %i.ejq, %bb.cq ]
  %i.eaj = load i32, ptr %i.dms, align 8
  %i.eak = zext i32 %i.eaj to i64
  %i.eal = add nuw nsw i64 %.083.i864, %i.eak     ; 3 uses
  %.not.i = icmp samesign ult i64 %i.eal, %i.eai
  %i.eam = select i1 %.not.i, i64 0, i64 %i.eai   ; 2 uses
  %spec.select113.i = sub nuw nsw i64 %i.eal, %i.eam ; 6 uses
  %i.ean = load ptr, ptr %i.dok, align 64
  %i.eao = getelementptr inbounds nuw [4 x i8], ptr %i.ean, i64 %spec.select113.i
  %i.eap = load float, ptr %i.eao, align 4        ; 4 uses
  %i.eaq = fadd float %i.eap, -1.000000e+00       ; 2 uses
  %i.ear = fcmp olt float %i.eaq, 0.000000e+00
  %i.eas = select i1 %i.ear, float 0.000000e+00, float %i.eaq ; 2 uses
  %i.eat = icmp samesign ult i64 %spec.select113.i, 16
  %.pre964 = load ptr, ptr %i.dom, align 64       ; 3 uses
  br i1 %i.eat, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i, label %bb.ce, !prof !66

bb.ce:                                            ; preds = %bb.cd
  %i.eau = icmp eq ptr %.pre964, %i.dol
  br i1 %i.eau, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i.thread, !prof !53

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i.thread: ; preds = %bb.ce
  %i.eav = getelementptr inbounds nuw [4 x i8], ptr %.pre964, i64 %spec.select113.i
  store float %i.eas, ptr %i.eav, align 4
  br label %bb.cg

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i.loopexit: ; preds = %bb.ce
  %i.eaw = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #29 ; 6 uses
  store ptr %i.eaw, ptr %i.dom, align 64
  %i.eax = load <4 x float>, ptr %i.dol, align 64
  store <4 x float> %i.eax, ptr %i.eaw, align 4
  %i.eay = getelementptr inbounds nuw i8, ptr %i.eaw, i64 16
  %i.eaz = load <4 x float>, ptr %i.dor, align 16
  store <4 x float> %i.eaz, ptr %i.eay, align 4
  %i.eba = getelementptr inbounds nuw i8, ptr %i.eaw, i64 32
  %i.ebb = load <4 x float>, ptr %i.dos, align 32
  store <4 x float> %i.ebb, ptr %i.eba, align 4
  %i.ebc = getelementptr inbounds nuw i8, ptr %i.eaw, i64 48
  %i.ebd = load <4 x float>, ptr %i.dot, align 16
  store <4 x float> %i.ebd, ptr %i.ebc, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i: ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i.loopexit, %bb.cd
  %i.ebe = phi ptr [ %i.eaw, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i.loopexit ], [ %.pre964, %bb.cd ]
  %i.ebf = getelementptr inbounds nuw [4 x i8], ptr %i.ebe, i64 %spec.select113.i
  store float %i.eas, ptr %i.ebf, align 4
  %i.ebg = icmp eq i64 %i.eal, %i.eam
  br i1 %i.ebg, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i
  %i.ebh = load i32, ptr %i.dmi, align 8
  %i.ebi = add i32 %i.ebh, -1
  %i.ebj = zext i32 %i.ebi to i64
  br label %bb.ch

bb.cg:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i.thread, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i
  %i.ebk = shl nuw nsw i64 %spec.select113.i, 1   ; 2 uses
  %i.ebl = add nsw i64 %i.ebk, -1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ebm = phi i64 [ 0, %bb.cf ], [ %i.ebk, %bb.cg ] ; 8 uses
  %i.ebn = phi i64 [ %i.ebj, %bb.cf ], [ %i.ebl, %bb.cg ] ; 2 uses
  %i.ebo = load ptr, ptr %i.doo, align 64
  %i.ebp = getelementptr inbounds nuw [16 x i8], ptr %i.ebo, i64 %i.ebm
  %i.ebq = load <4 x float>, ptr %i.don, align 16, !noalias !1569
  %i.ebr = load <4 x float>, ptr %i.ebp, align 16, !noalias !1569
  %i.ebs = fadd <4 x float> %i.ebq, %i.ebr        ; 3 uses
  %i.ebt = icmp ult i64 %i.ebn, 32
  %.pre966 = load ptr, ptr %i.doq, align 64       ; 3 uses
  br i1 %i.ebt, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i, label %bb.ci, !prof !66

bb.ci:                                            ; preds = %bb.ch
  %i.ebu = icmp eq ptr %.pre966, %i.dop
  br i1 %i.ebu, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i.loopexit, label %_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i, !prof !53

_ZN6embree17DynamicStackArrayINS_11vfloat_implILi4EEELm32ELm128EE6resizeEm.exit118.i.loopexit: ; preds = %bb.ci
  %i.ebv = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.ebv, ptr %i.doq, align 64
  %i.ebw = load <4 x float>, ptr %i.dop, align 64
  store <4 x float> %i.ebw, ptr %i.ebv, align 16
  %i.ebx = load ptr, ptr %i.doq, align 64
  %i.eby = getelementptr inbounds nuw i8, ptr %i.ebx, i64 16
  %i.ebz = load <4 x float>, ptr %i.dou, align 16
  store <4 x float> %i.ebz, ptr %i.eby, align 16
  %i.eca = load ptr, ptr %i.doq, align 64
  %i.ecb = getelementptr inbounds nuw i8, ptr %i.eca, i64 32
  %i.ecc = load <4 x float>, ptr %i.dov, align 32
  store <4 x float> %i.ecc, ptr %i.ecb, align 16
  %i.ecd = load ptr, ptr %i.doq, align 64
  %i.ece = getelementptr inbounds nuw i8, ptr %i.ecd, i64 48
  %i.ecf = load <4 x float>, ptr %i.dow, align 16
  store <4 x float> %i.ecf, ptr %i.ece, align 16
  %i.ecg = load ptr, ptr %i.doq, align 64
  %i.ech = getelementptr inbounds nuw i8, ptr %i.ecg, i64 64
  %i.eci = load <4 x float>, ptr %i.dox, align 64
  store <4 x float> %i.eci, ptr %i.ech, align 16
  %i.ecj = load ptr, ptr %i.doq, align 64
  %i.eck = getelementptr inbounds nuw i8, ptr %i.ecj, i64 80
  %i.ecl = load <4 x float>, ptr %i.doy, align 16
  store <4 x float> %i.ecl, ptr %i.eck, align 16
  %i.ecm = load ptr, ptr %i.doq, align 64
  %i.ecn = getelementptr inbounds nuw i8, ptr %i.ecm, i64 96
  %i.eco = load <4 x float>, ptr %i.doz, align 32
  store <4 x float> %i.eco, ptr %i.ecn, align 16
  %i.ecp = load ptr, ptr %i.doq, align 64
  %i.ecq = getelementptr inbounds nuw i8, ptr %i.ecp, i64 112
  %i.ecr = load <4 x float>, ptr %i.dpa, align 16
  store <4 x float> %i.ecr, ptr %i.ecq, align 16
  %i.ecs = load ptr, ptr %i.doq, align 64
  %i.ect = getelementptr inbounds nuw i8, ptr %i.ecs, i64 128
  %i.ecu = load <4 x float>, ptr %i.dpb, align 64
  store <4 x float> %i.ecu, ptr %i.ect, align 16
  %i.ecv = load ptr, ptr %i.doq, align 64
  %i.ecw = getelementptr inbounds nuw i8, ptr %i.ecv, i64 144
  %i.ecx = load <4 x float>, ptr %i.dpc, align 16
  store <4 x float> %i.ecx, ptr %i.ecw, align 16
  %i.ecy = load ptr, ptr %i.doq, align 64
  %i.ecz = getelementptr inbounds nuw i8, ptr %i.ecy, i64 160
  %i.eda = load <4 x float>, ptr %i.dpd, align 32
  store <4 x float> %i.eda, ptr %i.ecz, align 16
  %i.edb = load ptr, ptr %i.doq, align 64
  %i.edc = getelementptr inbounds nuw i8, ptr %i.edb, i64 176
  %i.edd = load <4 x float>, ptr %i.dpe, align 16
  store <4 x float> %i.edd, ptr %i.edc, align 16
  %i.ede = load ptr, ptr %i.doq, align 64
  %i.edf = getelementptr inbounds nuw i8, ptr %i.ede, i64 192
  %i.edg = load <4 x float>, ptr %i.dpf, align 64
  store <4 x float> %i.edg, ptr %i.edf, align 16
  %i.edh = load ptr, ptr %i.doq, align 64
  %i.edi = getelementptr inbounds nuw i8, ptr %i.edh, i64 208
  %i.edj = load <4 x float>, ptr %i.dpg, align 16
  store <4 x float> %i.edj, ptr %i.edi, align 16
  %i.edk = load ptr, ptr %i.doq, align 64
  %i.edl = getelementptr inbounds nuw i8, ptr %i.edk, i64 224
  %i.edm = load <4 x float>, ptr %i.dph, align 32
  store <4 x float> %i.edm, ptr %i.edl, align 16
  %i.edn = load ptr, ptr %i.doq, align 64
  %i.edo = getelementptr inbounds nuw i8, ptr %i.edn, i64 240
  %i.edp = load <4 x float>, ptr %i.dpi, align 16
  store <4 x float> %i.edp, ptr %i.edo, align 16
  %i.edq = load ptr, ptr %i.doq, align 64
  %i.edr = getelementptr inbounds nuw i8, ptr %i.edq, i64 256
  %i.eds = load <4 x float>, ptr %i.dpj, align 64
  store <4 x float> %i.eds, ptr %i.edr, align 16
  %i.edt = load ptr, ptr %i.doq, align 64
  %i.edu = getelementptr inbounds nuw i8, ptr %i.edt, i64 272
  %i.edv = load <4 x float>, ptr %i.dpk, align 16
  store <4 x float> %i.edv, ptr %i.edu, align 16
  %i.edw = load ptr, ptr %i.doq, align 64
  %i.edx = getelementptr inbounds nuw i8, ptr %i.edw, i64 288
  %i.edy = load <4 x float>, ptr %i.dpl, align 32
  store <4 x float> %i.edy, ptr %i.edx, align 16
  %i.edz = load ptr, ptr %i.doq, align 64
  %i.eea = getelementptr inbounds nuw i8, ptr %i.edz, i64 304
  %i.eeb = load <4 x float>, ptr %i.dpm, align 16
  store <4 x float> %i.eeb, ptr %i.eea, align 16
  %i.eec = load ptr, ptr %i.doq, align 64
  %i.eed = getelementptr inbounds nuw i8, ptr %i.eec, i64 320
  %i.eee = load <4 x float>, ptr %i.dpn, align 64
  store <4 x float> %i.eee, ptr %i.eed, align 16
  %i.eef = load ptr, ptr %i.doq, align 64
  %i.eeg = getelementptr inbounds nuw i8, ptr %i.eef, i64 336
  %i.eeh = load <4 x float>, ptr %i.dpo, align 16
  store <4 x float> %i.eeh, ptr %i.eeg, align 16
  %i.eei = load ptr, ptr %i.doq, align 64
  %i.eej = getelementptr inbounds nuw i8, ptr %i.eei, i64 352
  %i.eek = load <4 x float>, ptr %i.dpp, align 32
  store <4 x float> %i.eek, ptr %i.eej, align 16
  %i.eel = load ptr, ptr %i.doq, align 64
  %i.eem = getelementptr inbounds nuw i8, ptr %i.eel, i64 368
  %i.een = load <4 x float>, ptr %i.dpq, align 16
  store <4 x float> %i.een, ptr %i.eem, align 16
  %i.eeo = load ptr, ptr %i.doq, align 64
  %i.eep = getelementptr inbounds nuw i8, ptr %i.eeo, i64 384
  %i.eeq = load <4 x float>, ptr %i.dpr, align 64
  store <4 x float> %i.eeq, ptr %i.eep, align 16
  %i.eer = load ptr, ptr %i.doq, align 64
  %i.ees = getelementptr inbounds nuw i8, ptr %i.eer, i64 400
  %i.eet = load <4 x float>, ptr %i.dps, align 16
  store <4 x float> %i.eet, ptr %i.ees, align 16
  %i.eeu = load ptr, ptr %i.doq, align 64
end_hunk_4
