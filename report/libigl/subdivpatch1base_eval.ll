Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/subdivpatch1base_eval?download=true
inline.NumInlined: 170
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZNK6embree18CatmullClarkPatchTINS_6Vec3faES1_E9subdivideERNS_7array_tIS2_Lm4EEE:bb.a
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 752
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i228
  %i.hw = phi i64 [ %i.ac, %.lr.ph ], [ %i.mt, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i228 ] ; 2 uses
  %.089.i181786 = phi i64 [ 0, %.lr.ph ], [ %i.mr, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i228 ] ; 2 uses
  %.sroa.0675.0785 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.mq, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i228 ]
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
  %i.il = load <4 x float>, ptr %i.ad, align 16, !noalias !1057
  %i.im = load <4 x float>, ptr %i.ik, align 16, !noalias !1057
  %i.in = fadd <4 x float> %i.il, %i.im
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.ij, i64 %.087.i223
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.ij, i64 %.085.i227
  %i.iq = load <4 x float>, ptr %i.io, align 16, !noalias !1058
  %i.ir = load <4 x float>, ptr %i.ip, align 16, !noalias !1058
  %i.is = fadd <4 x float> %i.iq, %i.ir
  %i.it = fadd <4 x float> %i.in, %i.is
  %i.iu = fmul <4 x float> %i.it, splat (float 2.500000e-01) ; 2 uses
  %i.iv = icmp samesign ult i64 %.086.i225, 32
  %.pre925 = load ptr, ptr %i.ag, align 64        ; 3 uses
  br i1 %i.iv, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i228, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.iw = icmp eq ptr %.pre925, %i.af
  br i1 %i.iw, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i228.loopexit, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i228, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i228.loopexit: ; preds = %bb.c
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
  br label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i228

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i228: ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i228.loopexit, %bb.c, %bb.b
  %i.mo = phi ptr [ %.pre, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i228.loopexit ], [ %.pre925, %bb.c ], [ %.pre925, %bb.b ]
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %i.mo, i64 %.086.i225
  store <4 x float> %i.iu, ptr %i.mp, align 16
  %i.mq = fadd <4 x float> %.sroa.0675.0785, %i.iu ; 3 uses
  %i.mr = add nuw nsw i64 %.089.i181786, 1        ; 2 uses
  %i.ms = load i32, ptr %i.i, align 4             ; 3 uses
  %i.mt = zext i32 %i.ms to i64                   ; 2 uses
  %i.mu = icmp samesign ult i64 %i.mr, %i.mt
  br i1 %i.mu, label %bb.b, label %._crit_edge, !llvm.loop !965

._crit_edge798.loopexit:                          ; preds = %bb.q
  %i.mv = uitofp i32 %i.ait to float
  br label %._crit_edge798

._crit_edge798:                                   ; preds = %._crit_edge.thread, %._crit_edge798.loopexit, %._crit_edge
  %.sroa.0675.1.lcssa = phi <4 x float> [ %i.mq, %._crit_edge ], [ %i.wt, %._crit_edge798.loopexit ], [ zeroinitializer, %._crit_edge.thread ]
  %.084.i182.lcssa = phi i64 [ 0, %._crit_edge ], [ %.1.i196, %._crit_edge798.loopexit ], [ 0, %._crit_edge.thread ] ; 2 uses
  %.lcssa783 = phi float [ 0.000000e+00, %._crit_edge ], [ %i.mv, %._crit_edge798.loopexit ], [ 0.000000e+00, %._crit_edge.thread ] ; 2 uses
  %i.mw = fdiv float 1.000000e+00, %.lcssa783
  %i.mx = fadd nnan float %.lcssa783, -2.000000e+00
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.mz = insertelement <4 x float> poison, float %i.mx, i64 0
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nb = load <4 x float>, ptr %i.my, align 16, !noalias !1059
  %i.nc = fmul <4 x float> %i.na, %i.nb
  %i.nd = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nf = fmul <4 x float> %.sroa.0675.1.lcssa, %i.ne
  %i.ng = fadd <4 x float> %i.nf, %i.nc
  %i.nh = fmul <4 x float> %i.ne, %i.ng           ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 8 uses
  store <4 x float> %i.nh, ptr %i.ni, align 16
  %i.nj = load float, ptr %i.p, align 4           ; 4 uses
  %i.nk = fcmp ogt float %i.nj, 0.000000e+00
  br i1 %i.nk, label %bb.r, label %bb.u, !prof !10

bb.d:                                             ; preds = %.lr.ph797, %bb.q
  %i.nl = phi i64 [ %i.bm, %.lr.ph797 ], [ %i.aiu, %bb.q ] ; 2 uses
  %.083.i183795 = phi i64 [ 0, %.lr.ph797 ], [ %i.ais, %bb.q ] ; 2 uses
  %.084.i182794 = phi i64 [ 0, %.lr.ph797 ], [ %.1.i196, %bb.q ] ; 5 uses
  %.sroa.0675.1793 = phi <4 x float> [ %i.mq, %.lr.ph797 ], [ %i.wt, %bb.q ]
  %i.nm = load i32, ptr %i.v, align 8
  %i.nn = zext i32 %i.nm to i64
  %i.no = add nuw nsw i64 %.083.i183795, %i.nn    ; 3 uses
  %.not.i190 = icmp samesign ult i64 %i.no, %i.nl
  %i.np = select i1 %.not.i190, i64 0, i64 %i.nl  ; 2 uses
  %spec.select113.i191 = sub nuw nsw i64 %i.no, %i.np ; 6 uses
  %i.nq = load ptr, ptr %i.bn, align 64
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %spec.select113.i191
  %i.ns = load float, ptr %i.nr, align 4          ; 5 uses
  %i.nt = fadd float %i.ns, -1.000000e+00         ; 2 uses
  %i.nu = fcmp olt float %i.nt, 0.000000e+00
  %i.nv = select i1 %i.nu, float 0.000000e+00, float %i.nt ; 2 uses
  %i.nw = icmp samesign ult i64 %spec.select113.i191, 16
  %.pre926 = load ptr, ptr %i.bp, align 64        ; 3 uses
  br i1 %i.nw, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.nx = icmp eq ptr %.pre926, %i.bo
  br i1 %i.nx, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192.thread, !prof !10

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192.thread: ; preds = %bb.e
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.pre926, i64 %spec.select113.i191
  store float %i.nv, ptr %i.ny, align 4
  br label %bb.g

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i192.loopexit: ; preds = %bb.e
  %i.nz = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20 ; 6 uses
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
  %i.ot = load <4 x float>, ptr %i.bq, align 16, !noalias !1060
  %i.ou = load <4 x float>, ptr %i.os, align 16, !noalias !1060
  %i.ov = fadd <4 x float> %i.ot, %i.ou           ; 3 uses
  %i.ow = icmp ult i64 %i.oq, 32
  %.pre928 = load ptr, ptr %i.bt, align 64        ; 3 uses
  br i1 %i.ow, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i193, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.ox = icmp eq ptr %.pre928, %i.bs
  br i1 %i.ox, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i193.loopexit, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i193, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i193.loopexit: ; preds = %bb.i
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
end_hunk_0
begin_hunk_1_@_ZNK6embree18CatmullClarkPatchTINS_6Vec3faES1_E9subdivideERNS_7array_tIS2_Lm4EEE:bb.a
  %i.zj = load ptr, ptr %i.bt, align 64
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 336
  %i.zl = load <4 x float>, ptr %i.fb, align 16
  store <4 x float> %i.zl, ptr %i.zk, align 16
  %i.zm = load ptr, ptr %i.bt, align 64
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 352
  %i.zo = load <4 x float>, ptr %i.fc, align 32
  store <4 x float> %i.zo, ptr %i.zn, align 16
  %i.zp = load ptr, ptr %i.bt, align 64
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 368
  %i.zr = load <4 x float>, ptr %i.fd, align 16
  store <4 x float> %i.zr, ptr %i.zq, align 16
  %i.zs = load ptr, ptr %i.bt, align 64
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 384
  %i.zu = load <4 x float>, ptr %i.fe, align 64
  store <4 x float> %i.zu, ptr %i.zt, align 16
  %i.zv = load ptr, ptr %i.bt, align 64
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 400
  %i.zx = load <4 x float>, ptr %i.ff, align 16
  store <4 x float> %i.zx, ptr %i.zw, align 16
  %i.zy = load ptr, ptr %i.bt, align 64
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 416
  %i.aaa = load <4 x float>, ptr %i.fg, align 32
  store <4 x float> %i.aaa, ptr %i.zz, align 16
  %i.aab = load ptr, ptr %i.bt, align 64
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 432
  %i.aad = load <4 x float>, ptr %i.fh, align 16
  store <4 x float> %i.aad, ptr %i.aac, align 16
  %i.aae = load ptr, ptr %i.bt, align 64
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 448
  %i.aag = load <4 x float>, ptr %i.fi, align 64
  store <4 x float> %i.aag, ptr %i.aaf, align 16
  %i.aah = load ptr, ptr %i.bt, align 64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 464
  %i.aaj = load <4 x float>, ptr %i.fj, align 16
  store <4 x float> %i.aaj, ptr %i.aai, align 16
  %i.aak = load ptr, ptr %i.bt, align 64
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 480
  %i.aam = load <4 x float>, ptr %i.fk, align 32
  store <4 x float> %i.aam, ptr %i.aal, align 16
  %i.aan = load ptr, ptr %i.bt, align 64
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 496
  %i.aap = load <4 x float>, ptr %i.fl, align 16
  store <4 x float> %i.aap, ptr %i.aao, align 16
  br label %.sink.split.sink.split

bb.m:                                             ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit128.i194
  %i.aaq = add nuw nsw i64 %.084.i182794, 1       ; 4 uses
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.084.i182794
  store i64 %spec.select113.i191, ptr %i.aar, align 8
  %i.aas = fmul <4 x float> %i.ov, splat (float 5.000000e-01) ; 2 uses
  %i.aat = icmp samesign ult i64 %i.op, 32        ; 2 uses
  br i1 %i.aat, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i201, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.aau = icmp eq ptr %i.wk, %i.bs
  br i1 %i.aau, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i201.loopexit, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i201, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i201.loopexit: ; preds = %bb.n
  %i.aav = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.aav, ptr %i.bt, align 64
  %i.aaw = load <4 x float>, ptr %i.bs, align 64
  store <4 x float> %i.aaw, ptr %i.aav, align 16
  %i.aax = load ptr, ptr %i.bt, align 64
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %i.aaz = load <4 x float>, ptr %i.fm, align 16
  store <4 x float> %i.aaz, ptr %i.aay, align 16
  %i.aba = load ptr, ptr %i.bt, align 64
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 32
  %i.abc = load <4 x float>, ptr %i.fn, align 32
  store <4 x float> %i.abc, ptr %i.abb, align 16
  %i.abd = load ptr, ptr %i.bt, align 64
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 48
  %i.abf = load <4 x float>, ptr %i.fo, align 16
  store <4 x float> %i.abf, ptr %i.abe, align 16
  %i.abg = load ptr, ptr %i.bt, align 64
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 64
  %i.abi = load <4 x float>, ptr %i.fp, align 64
  store <4 x float> %i.abi, ptr %i.abh, align 16
  %i.abj = load ptr, ptr %i.bt, align 64
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 80
  %i.abl = load <4 x float>, ptr %i.fq, align 16
  store <4 x float> %i.abl, ptr %i.abk, align 16
  %i.abm = load ptr, ptr %i.bt, align 64
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 96
  %i.abo = load <4 x float>, ptr %i.fr, align 32
  store <4 x float> %i.abo, ptr %i.abn, align 16
  %i.abp = load ptr, ptr %i.bt, align 64
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 112
  %i.abr = load <4 x float>, ptr %i.fs, align 16
  store <4 x float> %i.abr, ptr %i.abq, align 16
  %i.abs = load ptr, ptr %i.bt, align 64
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 128
  %i.abu = load <4 x float>, ptr %i.ft, align 64
  store <4 x float> %i.abu, ptr %i.abt, align 16
  %i.abv = load ptr, ptr %i.bt, align 64
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 144
  %i.abx = load <4 x float>, ptr %i.fu, align 16
  store <4 x float> %i.abx, ptr %i.abw, align 16
  %i.aby = load ptr, ptr %i.bt, align 64
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 160
  %i.aca = load <4 x float>, ptr %i.fv, align 32
  store <4 x float> %i.aca, ptr %i.abz, align 16
  %i.acb = load ptr, ptr %i.bt, align 64
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 176
  %i.acd = load <4 x float>, ptr %i.fw, align 16
  store <4 x float> %i.acd, ptr %i.acc, align 16
  %i.ace = load ptr, ptr %i.bt, align 64
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 192
  %i.acg = load <4 x float>, ptr %i.fx, align 64
  store <4 x float> %i.acg, ptr %i.acf, align 16
  %i.ach = load ptr, ptr %i.bt, align 64
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 208
  %i.acj = load <4 x float>, ptr %i.fy, align 16
  store <4 x float> %i.acj, ptr %i.aci, align 16
  %i.ack = load ptr, ptr %i.bt, align 64
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 224
  %i.acm = load <4 x float>, ptr %i.fz, align 32
  store <4 x float> %i.acm, ptr %i.acl, align 16
  %i.acn = load ptr, ptr %i.bt, align 64
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 240
  %i.acp = load <4 x float>, ptr %i.ga, align 16
  store <4 x float> %i.acp, ptr %i.aco, align 16
  %i.acq = load ptr, ptr %i.bt, align 64
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 256
  %i.acs = load <4 x float>, ptr %i.gb, align 64
  store <4 x float> %i.acs, ptr %i.acr, align 16
  %i.act = load ptr, ptr %i.bt, align 64
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 272
  %i.acv = load <4 x float>, ptr %i.gc, align 16
  store <4 x float> %i.acv, ptr %i.acu, align 16
  %i.acw = load ptr, ptr %i.bt, align 64
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 288
  %i.acy = load <4 x float>, ptr %i.gd, align 32
  store <4 x float> %i.acy, ptr %i.acx, align 16
  %i.acz = load ptr, ptr %i.bt, align 64
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 304
  %i.adb = load <4 x float>, ptr %i.ge, align 16
  store <4 x float> %i.adb, ptr %i.ada, align 16
  %i.adc = load ptr, ptr %i.bt, align 64
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 320
  %i.ade = load <4 x float>, ptr %i.gf, align 64
  store <4 x float> %i.ade, ptr %i.add, align 16
  %i.adf = load ptr, ptr %i.bt, align 64
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 336
  %i.adh = load <4 x float>, ptr %i.gg, align 16
  store <4 x float> %i.adh, ptr %i.adg, align 16
  %i.adi = load ptr, ptr %i.bt, align 64
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 352
  %i.adk = load <4 x float>, ptr %i.gh, align 32
  store <4 x float> %i.adk, ptr %i.adj, align 16
  %i.adl = load ptr, ptr %i.bt, align 64
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 368
  %i.adn = load <4 x float>, ptr %i.gi, align 16
  store <4 x float> %i.adn, ptr %i.adm, align 16
  %i.ado = load ptr, ptr %i.bt, align 64
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 384
  %i.adq = load <4 x float>, ptr %i.gj, align 64
  store <4 x float> %i.adq, ptr %i.adp, align 16
  %i.adr = load ptr, ptr %i.bt, align 64
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 400
  %i.adt = load <4 x float>, ptr %i.gk, align 16
  store <4 x float> %i.adt, ptr %i.ads, align 16
  %i.adu = load ptr, ptr %i.bt, align 64
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 416
  %i.adw = load <4 x float>, ptr %i.gl, align 32
  store <4 x float> %i.adw, ptr %i.adv, align 16
  %i.adx = load ptr, ptr %i.bt, align 64
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 432
  %i.adz = load <4 x float>, ptr %i.gm, align 16
  store <4 x float> %i.adz, ptr %i.ady, align 16
  %i.aea = load ptr, ptr %i.bt, align 64
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 448
  %i.aec = load <4 x float>, ptr %i.gn, align 64
  store <4 x float> %i.aec, ptr %i.aeb, align 16
  %i.aed = load ptr, ptr %i.bt, align 64
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 464
  %i.aef = load <4 x float>, ptr %i.go, align 16
  store <4 x float> %i.aef, ptr %i.aee, align 16
  %i.aeg = load ptr, ptr %i.bt, align 64
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 480
  %i.aei = load <4 x float>, ptr %i.gp, align 32
  store <4 x float> %i.aei, ptr %i.aeh, align 16
  %i.aej = load ptr, ptr %i.bt, align 64
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 496
  %i.ael = load <4 x float>, ptr %i.gq, align 16
  store <4 x float> %i.ael, ptr %i.aek, align 16
  %.pre931 = load ptr, ptr %i.bt, align 64
  br label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i201

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i201: ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i201.loopexit, %bb.n, %bb.m
  %i.aem = phi ptr [ %.pre931, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i201.loopexit ], [ %i.wk, %bb.n ], [ %i.wk, %bb.m ]
  %i.aen = getelementptr inbounds nuw [16 x i8], ptr %i.aem, i64 %i.op
  store <4 x float> %i.aas, ptr %i.aen, align 16
  %i.aeo = fcmp olt float %i.ns, 1.000000e+00
  br i1 %i.aeo, label %bb.o, label %bb.q, !prof !10

bb.o:                                             ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i201
  %i.aep = fadd <4 x float> %i.ov, %i.wp
  %i.aeq = fmul <4 x float> %i.aep, splat (float 2.500000e-01)
  %i.aer = fsub nnan float 1.000000e+00, %i.ns
  %i.aes = insertelement <4 x float> poison, float %i.ns, i64 0
  %i.aet = shufflevector <4 x float> %i.aes, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aeu = fmul <4 x float> %i.aet, %i.aas
  %i.aev = insertelement <4 x float> poison, float %i.aer, i64 0
  %i.aew = shufflevector <4 x float> %i.aev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aex = fmul <4 x float> %i.aew, %i.aeq
  %i.aey = fadd <4 x float> %i.aeu, %i.aex        ; 3 uses
  %.pre933 = load ptr, ptr %i.bt, align 64        ; 3 uses
  br i1 %i.aat, label %.sink.split, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.aez = icmp eq ptr %.pre933, %i.bs
  br i1 %i.aez, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i202.loopexit, label %.sink.split, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i202.loopexit: ; preds = %bb.p
  %i.afa = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.afa, ptr %i.bt, align 64
  %i.afb = load <4 x float>, ptr %i.bs, align 64
  store <4 x float> %i.afb, ptr %i.afa, align 16
  %i.afc = load ptr, ptr %i.bt, align 64
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 16
  %i.afe = load <4 x float>, ptr %i.gr, align 16
  store <4 x float> %i.afe, ptr %i.afd, align 16
  %i.aff = load ptr, ptr %i.bt, align 64
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 32
  %i.afh = load <4 x float>, ptr %i.gs, align 32
  store <4 x float> %i.afh, ptr %i.afg, align 16
  %i.afi = load ptr, ptr %i.bt, align 64
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 48
  %i.afk = load <4 x float>, ptr %i.gt, align 16
  store <4 x float> %i.afk, ptr %i.afj, align 16
  %i.afl = load ptr, ptr %i.bt, align 64
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 64
  %i.afn = load <4 x float>, ptr %i.gu, align 64
  store <4 x float> %i.afn, ptr %i.afm, align 16
  %i.afo = load ptr, ptr %i.bt, align 64
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 80
  %i.afq = load <4 x float>, ptr %i.gv, align 16
  store <4 x float> %i.afq, ptr %i.afp, align 16
  %i.afr = load ptr, ptr %i.bt, align 64
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 96
  %i.aft = load <4 x float>, ptr %i.gw, align 32
  store <4 x float> %i.aft, ptr %i.afs, align 16
  %i.afu = load ptr, ptr %i.bt, align 64
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 112
  %i.afw = load <4 x float>, ptr %i.gx, align 16
  store <4 x float> %i.afw, ptr %i.afv, align 16
  %i.afx = load ptr, ptr %i.bt, align 64
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 128
  %i.afz = load <4 x float>, ptr %i.gy, align 64
  store <4 x float> %i.afz, ptr %i.afy, align 16
  %i.aga = load ptr, ptr %i.bt, align 64
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 144
  %i.agc = load <4 x float>, ptr %i.gz, align 16
  store <4 x float> %i.agc, ptr %i.agb, align 16
  %i.agd = load ptr, ptr %i.bt, align 64
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 160
  %i.agf = load <4 x float>, ptr %i.ha, align 32
  store <4 x float> %i.agf, ptr %i.age, align 16
  %i.agg = load ptr, ptr %i.bt, align 64
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 176
  %i.agi = load <4 x float>, ptr %i.hb, align 16
  store <4 x float> %i.agi, ptr %i.agh, align 16
  %i.agj = load ptr, ptr %i.bt, align 64
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 192
  %i.agl = load <4 x float>, ptr %i.hc, align 64
  store <4 x float> %i.agl, ptr %i.agk, align 16
  %i.agm = load ptr, ptr %i.bt, align 64
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 208
  %i.ago = load <4 x float>, ptr %i.hd, align 16
  store <4 x float> %i.ago, ptr %i.agn, align 16
  %i.agp = load ptr, ptr %i.bt, align 64
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 224
  %i.agr = load <4 x float>, ptr %i.he, align 32
  store <4 x float> %i.agr, ptr %i.agq, align 16
  %i.ags = load ptr, ptr %i.bt, align 64
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 240
  %i.agu = load <4 x float>, ptr %i.hf, align 16
  store <4 x float> %i.agu, ptr %i.agt, align 16
  %i.agv = load ptr, ptr %i.bt, align 64
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 256
  %i.agx = load <4 x float>, ptr %i.hg, align 64
  store <4 x float> %i.agx, ptr %i.agw, align 16
  %i.agy = load ptr, ptr %i.bt, align 64
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 272
  %i.aha = load <4 x float>, ptr %i.hh, align 16
  store <4 x float> %i.aha, ptr %i.agz, align 16
  %i.ahb = load ptr, ptr %i.bt, align 64
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 288
  %i.ahd = load <4 x float>, ptr %i.hi, align 32
  store <4 x float> %i.ahd, ptr %i.ahc, align 16
  %i.ahe = load ptr, ptr %i.bt, align 64
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 304
  %i.ahg = load <4 x float>, ptr %i.hj, align 16
  store <4 x float> %i.ahg, ptr %i.ahf, align 16
  %i.ahh = load ptr, ptr %i.bt, align 64
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 320
  %i.ahj = load <4 x float>, ptr %i.hk, align 64
  store <4 x float> %i.ahj, ptr %i.ahi, align 16
  %i.ahk = load ptr, ptr %i.bt, align 64
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 336
  %i.ahm = load <4 x float>, ptr %i.hl, align 16
  store <4 x float> %i.ahm, ptr %i.ahl, align 16
  %i.ahn = load ptr, ptr %i.bt, align 64
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 352
  %i.ahp = load <4 x float>, ptr %i.hm, align 32
  store <4 x float> %i.ahp, ptr %i.aho, align 16
  %i.ahq = load ptr, ptr %i.bt, align 64
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 368
  %i.ahs = load <4 x float>, ptr %i.hn, align 16
  store <4 x float> %i.ahs, ptr %i.ahr, align 16
  %i.aht = load ptr, ptr %i.bt, align 64
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 384
  %i.ahv = load <4 x float>, ptr %i.ho, align 64
  store <4 x float> %i.ahv, ptr %i.ahu, align 16
  %i.ahw = load ptr, ptr %i.bt, align 64
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 400
  %i.ahy = load <4 x float>, ptr %i.hp, align 16
  store <4 x float> %i.ahy, ptr %i.ahx, align 16
  %i.ahz = load ptr, ptr %i.bt, align 64
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 416
  %i.aib = load <4 x float>, ptr %i.hq, align 32
  store <4 x float> %i.aib, ptr %i.aia, align 16
  %i.aic = load ptr, ptr %i.bt, align 64
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 432
  %i.aie = load <4 x float>, ptr %i.hr, align 16
  store <4 x float> %i.aie, ptr %i.aid, align 16
  %i.aif = load ptr, ptr %i.bt, align 64
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 448
  %i.aih = load <4 x float>, ptr %i.hs, align 64
  store <4 x float> %i.aih, ptr %i.aig, align 16
  %i.aii = load ptr, ptr %i.bt, align 64
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 464
  %i.aik = load <4 x float>, ptr %i.ht, align 16
  store <4 x float> %i.aik, ptr %i.aij, align 16
  %i.ail = load ptr, ptr %i.bt, align 64
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 480
  %i.ain = load <4 x float>, ptr %i.hu, align 32
  store <4 x float> %i.ain, ptr %i.aim, align 16
  %i.aio = load ptr, ptr %i.bt, align 64
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 496
  %i.aiq = load <4 x float>, ptr %i.hv, align 16
  store <4 x float> %i.aiq, ptr %i.aip, align 16
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit133.i195.loopexit, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i202.loopexit
  %.sink.ph = phi <4 x float> [ %i.aey, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i202.loopexit ], [ %i.ww, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit133.i195.loopexit ]
  %.1.i196.ph.ph = phi i64 [ %i.aaq, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i202.loopexit ], [ %.084.i182794, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit133.i195.loopexit ]
  %.pre932 = load ptr, ptr %i.bt, align 64
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.o, %bb.p, %bb.k, %bb.l
  %.sink1103 = phi ptr [ %i.wk, %bb.k ], [ %.pre933, %bb.p ], [ %i.wk, %bb.l ], [ %.pre933, %bb.o ], [ %.pre932, %.sink.split.sink.split ]
  %.sink = phi <4 x float> [ %i.ww, %bb.k ], [ %i.aey, %bb.p ], [ %i.ww, %bb.l ], [ %i.aey, %bb.o ], [ %.sink.ph, %.sink.split.sink.split ]
  %.1.i196.ph = phi i64 [ %.084.i182794, %bb.k ], [ %i.aaq, %bb.p ], [ %.084.i182794, %bb.l ], [ %i.aaq, %bb.o ], [ %.1.i196.ph.ph, %.sink.split.sink.split ]
  %i.air = getelementptr inbounds nuw [16 x i8], ptr %.sink1103, i64 %i.op
  store <4 x float> %.sink, ptr %i.air, align 16
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i201
  %.1.i196 = phi i64 [ %i.aaq, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i201 ], [ %.1.i196.ph, %.sink.split ] ; 2 uses
  %i.ais = add nuw nsw i64 %.083.i183795, 1       ; 2 uses
  %i.ait = load i32, ptr %i.i, align 4            ; 2 uses
  %i.aiu = zext i32 %i.ait to i64                 ; 2 uses
  %i.aiv = icmp samesign ult i64 %i.ais, %i.aiu
  br i1 %i.aiv, label %bb.d, label %._crit_edge798.loopexit, !llvm.loop !974

bb.r:                                             ; preds = %._crit_edge798
  %i.aiw = fcmp ult float %i.nj, 1.000000e+00
  br i1 %i.aiw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aix = load <4 x float>, ptr %i.my, align 16
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit233.sink.split

bb.t:                                             ; preds = %bb.r
  %i.aiy = fsub nnan float 1.000000e+00, %i.nj
  %i.aiz = insertelement <4 x float> poison, float %i.nj, i64 0
  %i.aja = shufflevector <4 x float> %i.aiz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajb = load <4 x float>, ptr %i.my, align 16, !noalias !1063
  %i.ajc = fmul <4 x float> %i.aja, %i.ajb
  %i.ajd = insertelement <4 x float> poison, float %i.aiy, i64 0
  %i.aje = shufflevector <4 x float> %i.ajd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajf = fmul <4 x float> %i.nh, %i.aje
  %i.ajg = fadd <4 x float> %i.ajf, %i.ajc
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit233.sink.split

bb.u:                                             ; preds = %._crit_edge798
  %i.ajh = icmp ult i64 %.084.i182.lcssa, 2
  br i1 %i.ajh, label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit233, label %bb.v, !prof !11

bb.v:                                             ; preds = %bb.u
  %i.aji = icmp eq i64 %.084.i182.lcssa, 2
  br i1 %i.aji, label %bb.w, label %bb.aa, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.ajj = load i64, ptr %2, align 8              ; 4 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ajl = load i64, ptr %i.ajk, align 8          ; 4 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.ajn = load ptr, ptr %i.ajm, align 64         ; 2 uses
  %.idx.i184 = shl i64 %i.ajj, 5
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %.idx.i184
  %i.ajp = load <4 x float>, ptr %i.my, align 16, !noalias !1064
  %i.ajq = fmul <4 x float> %i.ajp, splat (float 6.000000e+00)
  %i.ajr = load <4 x float>, ptr %i.ajo, align 16, !noalias !1065
  %i.ajs = fadd <4 x float> %i.ajr, %i.ajq
  %.idx108.i185 = shl i64 %i.ajl, 5
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %.idx108.i185
  %i.aju = load <4 x float>, ptr %i.ajt, align 16, !noalias !1066
  %i.ajv = fadd <4 x float> %i.ajs, %i.aju
  %i.ajw = fmul <4 x float> %i.ajv, splat (float 1.250000e-01) ; 2 uses
  store <4 x float> %i.ajw, ptr %i.ni, align 16
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ajy = load ptr, ptr %i.ajx, align 64         ; 2 uses
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.ajy, i64 %i.ajj
  %i.aka = load float, ptr %i.ajz, align 4        ; 3 uses
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.ajy, i64 %i.ajl
  %i.akc = load float, ptr %i.akb, align 4        ; 3 uses
  %i.akd = tail call float @llvm.fmuladd.f32(float %i.aka, float 3.000000e+00, float %i.akc)
  %i.ake = tail call float @llvm.fmuladd.f32(float %i.akd, float 2.500000e-01, float -1.000000e+00) ; 2 uses
  %i.akf = fcmp olt float %i.ake, 0.000000e+00
  %i.akg = select i1 %i.akf, float 0.000000e+00, float %i.ake
  %i.akh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.aki = add i64 %i.ajj, 1
  %i.akj = icmp ult i64 %i.aki, 17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %.pre934 = load ptr, ptr %.phi.trans.insert, align 64 ; 3 uses
  br i1 %i.akj, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i186, label %bb.x, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.akk = icmp eq ptr %.pre934, %i.akh
  br i1 %i.akk, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i186.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i186, !prof !10

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i186.loopexit: ; preds = %bb.x
  %i.akl = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20 ; 6 uses
  store ptr %i.akl, ptr %.phi.trans.insert, align 64
  %i.akm = load <4 x float>, ptr %i.akh, align 64
  store <4 x float> %i.akm, ptr %i.akl, align 4
  %i.akn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akl, i64 16
  %i.akp = load <4 x float>, ptr %i.akn, align 16
  store <4 x float> %i.akp, ptr %i.ako, align 4
  %i.akq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akl, i64 32
  %i.aks = load <4 x float>, ptr %i.akq, align 32
  store <4 x float> %i.aks, ptr %i.akr, align 4
  %i.akt = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akl, i64 48
  %i.akv = load <4 x float>, ptr %i.akt, align 16
  store <4 x float> %i.akv, ptr %i.aku, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i186

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i186: ; preds = %bb.w, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i186.loopexit, %bb.x
  %i.akw = phi ptr [ %.pre934, %bb.x ], [ %i.akl, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i186.loopexit ], [ %.pre934, %bb.w ]
  %i.akx = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.akw, i64 %i.ajj
  store float %i.akg, ptr %i.aky, align 4
  %i.akz = tail call float @llvm.fmuladd.f32(float %i.akc, float 3.000000e+00, float %i.aka)
  %i.ala = tail call float @llvm.fmuladd.f32(float %i.akz, float 2.500000e-01, float -1.000000e+00) ; 2 uses
  %i.alb = fcmp olt float %i.ala, 0.000000e+00
  %i.alc = select i1 %i.alb, float 0.000000e+00, float %i.ala
  %i.ald = add i64 %i.ajl, 1
  %i.ale = icmp ult i64 %i.ald, 17
  %.pre935 = load ptr, ptr %i.akx, align 64       ; 3 uses
  br i1 %i.ale, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i187, label %bb.y, !prof !11

bb.y:                                             ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i186
  %i.alf = icmp eq ptr %.pre935, %i.akh
  br i1 %i.alf, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i187.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i187, !prof !10

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i187.loopexit: ; preds = %bb.y
  %i.alg = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20 ; 6 uses
  store ptr %i.alg, ptr %i.akx, align 64
  %i.alh = load <4 x float>, ptr %i.akh, align 64
  store <4 x float> %i.alh, ptr %i.alg, align 4
  %i.ali = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alg, i64 16
  %i.alk = load <4 x float>, ptr %i.ali, align 16
  store <4 x float> %i.alk, ptr %i.alj, align 4
  %i.all = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alg, i64 32
  %i.aln = load <4 x float>, ptr %i.all, align 32
  store <4 x float> %i.aln, ptr %i.alm, align 4
  %i.alo = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alg, i64 48
  %i.alq = load <4 x float>, ptr %i.alo, align 16
  store <4 x float> %i.alq, ptr %i.alp, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i187

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i187: ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i187.loopexit, %bb.y, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i186
  %i.alr = phi ptr [ %i.alg, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i187.loopexit ], [ %.pre935, %bb.y ], [ %.pre935, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i186 ]
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.alr, i64 %i.ajl
  store float %i.alc, ptr %i.als, align 4
  %i.alt = fadd float %i.aka, %i.akc
  %i.alu = fmul float %i.alt, 5.000000e-01        ; 3 uses
  %i.alv = fcmp olt float %i.alu, 1.000000e+00
  br i1 %i.alv, label %bb.z, label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit233, !prof !10

bb.z:                                             ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i187
  %i.alw = fsub nnan float 1.000000e+00, %i.alu
  %i.alx = insertelement <4 x float> poison, float %i.alu, i64 0
  %i.aly = shufflevector <4 x float> %i.alx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alz = fmul <4 x float> %i.ajw, %i.aly
  %i.ama = insertelement <4 x float> poison, float %i.alw, i64 0
  %i.amb = shufflevector <4 x float> %i.ama, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amc = fmul <4 x float> %i.nh, %i.amb
  %i.amd = fadd <4 x float> %i.alz, %i.amc
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit233.sink.split

bb.aa:                                            ; preds = %bb.v
  %i.ame = load <4 x float>, ptr %i.my, align 16
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit233.sink.split

_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit233.sink.split: ; preds = %bb.aa, %bb.t, %bb.s, %bb.z
  %.sink1104 = phi <4 x float> [ %i.amd, %bb.z ], [ %i.aix, %bb.s ], [ %i.ajg, %bb.t ], [ %i.ame, %bb.aa ]
  store <4 x float> %.sink1104, ptr %i.ni, align 16
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit233

_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit233: ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit233.sink.split, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i187, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.amf = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %1, i64 3328 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 7 uses
  %i.amj = load float, ptr %i.ami, align 4
  %i.amk = fmul float %i.amj, 5.000000e-01
  %i.aml = getelementptr inbounds nuw i8, ptr %1, i64 4356 ; 4 uses
  store float %i.amk, ptr %i.aml, align 4
  %i.amm = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.amn = load float, ptr %i.amm, align 64
  %i.amo = fmul float %i.amn, 5.000000e-01
  %i.amp = getelementptr inbounds nuw i8, ptr %1, i64 4352
  store float %i.amo, ptr %i.amp, align 64
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 836 ; 5 uses
  %i.amr = load i32, ptr %i.amq, align 4
  %i.ams = getelementptr inbounds nuw i8, ptr %1, i64 4164
  store i32 %i.amr, ptr %i.ams, align 4
  %i.amt = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 4 uses
  %i.amu = load i32, ptr %i.amt, align 8
  %i.amv = getelementptr inbounds nuw i8, ptr %1, i64 4168 ; 3 uses
  store i32 %i.amu, ptr %i.amv, align 8
  %i.amw = load i32, ptr %i.amf, align 64
  store i32 %i.amw, ptr %i.amh, align 64
  %i.amx = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 2 uses
  %i.amy = load float, ptr %i.amx, align 4
  %i.amz = fadd float %i.amy, -1.000000e+00       ; 2 uses
  %i.ana = fcmp ogt float %i.amz, 0.000000e+00
  %i.anb = select i1 %i.ana, float %i.amz, float 0.000000e+00
  %i.anc = getelementptr inbounds nuw i8, ptr %1, i64 4172
  store float %i.anb, ptr %i.anc, align 4
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 3 uses
  %i.ane = load i32, ptr %i.and, align 8
  %i.anf = getelementptr inbounds nuw i8, ptr %1, i64 4360
  store i32 %i.ane, ptr %i.anf, align 8
  %i.ang = getelementptr inbounds nuw i8, ptr %0, i64 1036
  %i.anh = load i32, ptr %i.ang, align 4
  %i.ani = getelementptr inbounds nuw i8, ptr %1, i64 4364 ; 5 uses
  store i32 %i.anh, ptr %i.ani, align 4
  %i.anj = load i32, ptr %i.amq, align 4          ; 2 uses
  %.not883 = icmp eq i32 %i.anj, 0
  br i1 %.not883, label %._crit_edge808.thread, label %.lr.ph807

._crit_edge808.thread:                            ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit233
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  br label %._crit_edge821

.lr.ph807:                                        ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit233
  %i.ank = zext i32 %i.anj to i64
  %i.anl = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.anm = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.ann = getelementptr inbounds nuw i8, ptr %1, i64 4416 ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %1, i64 4928 ; 34 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %1, i64 4432
  %i.anq = getelementptr inbounds nuw i8, ptr %1, i64 4448
  %i.anr = getelementptr inbounds nuw i8, ptr %1, i64 4464
  %i.ans = getelementptr inbounds nuw i8, ptr %1, i64 4480
end_hunk_1
begin_hunk_2_@_ZNK6embree18CatmullClarkPatchTINS_6Vec3faES1_E9subdivideERNS_7array_tIS2_Lm4EEE:bb.a
  %i.avc = getelementptr inbounds nuw i8, ptr %1, i64 4896
  %i.avd = getelementptr inbounds nuw i8, ptr %1, i64 4912
  br label %bb.ad

bb.ab:                                            ; preds = %.lr.ph807, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i175
  %i.ave = phi i64 [ %i.ank, %.lr.ph807 ], [ %i.bab, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i175 ] ; 2 uses
  %.089.i128806 = phi i64 [ 0, %.lr.ph807 ], [ %i.azz, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i175 ] ; 2 uses
  %.sroa.0618.0805 = phi <4 x float> [ zeroinitializer, %.lr.ph807 ], [ %i.azy, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i175 ]
  %i.avf = load i32, ptr %i.and, align 8
  %i.avg = zext i32 %i.avf to i64
  %i.avh = add nuw nsw i64 %.089.i128806, %i.avg  ; 2 uses
  %.not109.i167 = icmp samesign ult i64 %i.avh, %i.ave
  %i.avi = select i1 %.not109.i167, i64 0, i64 %i.ave
  %spec.select.i168 = sub nuw nsw i64 %i.avh, %i.avi
  %i.avj = shl nuw nsw i64 %spec.select.i168, 1   ; 4 uses
  %i.avk = load i32, ptr %i.amt, align 8
  %i.avl = zext i32 %i.avk to i64                 ; 6 uses
  %.not110.i169 = icmp samesign ult i64 %i.avj, %i.avl
  %i.avm = select i1 %.not110.i169, i64 0, i64 %i.avl
  %.087.i170 = sub nuw nsw i64 %i.avj, %i.avm
  %i.avn = or disjoint i64 %i.avj, 1              ; 2 uses
  %.not111.i171 = icmp samesign ult i64 %i.avn, %i.avl
  %i.avo = select i1 %.not111.i171, i64 0, i64 %i.avl
  %.086.i172 = sub nuw nsw i64 %i.avn, %i.avo     ; 3 uses
  %i.avp = add nuw nsw i64 %i.avj, 2              ; 2 uses
  %.not112.i173 = icmp samesign ult i64 %i.avp, %i.avl
  %i.avq = select i1 %.not112.i173, i64 0, i64 %i.avl
  %.085.i174 = sub nuw nsw i64 %i.avp, %i.avq
  %i.avr = load ptr, ptr %i.anm, align 64         ; 3 uses
  %i.avs = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %.086.i172
  %i.avt = load <4 x float>, ptr %i.anl, align 16, !noalias !1067
  %i.avu = load <4 x float>, ptr %i.avs, align 16, !noalias !1067
  %i.avv = fadd <4 x float> %i.avt, %i.avu
  %i.avw = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %.087.i170
  %i.avx = getelementptr inbounds nuw [16 x i8], ptr %i.avr, i64 %.085.i174
  %i.avy = load <4 x float>, ptr %i.avw, align 16, !noalias !1068
  %i.avz = load <4 x float>, ptr %i.avx, align 16, !noalias !1068
  %i.awa = fadd <4 x float> %i.avy, %i.avz
  %i.awb = fadd <4 x float> %i.avv, %i.awa
  %i.awc = fmul <4 x float> %i.awb, splat (float 2.500000e-01) ; 2 uses
  %i.awd = icmp samesign ult i64 %.086.i172, 32
  %.pre937 = load ptr, ptr %i.ano, align 64       ; 3 uses
  br i1 %i.awd, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i175, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.awe = icmp eq ptr %.pre937, %i.ann
  br i1 %i.awe, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i175.loopexit, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i175, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i175.loopexit: ; preds = %bb.ac
  %i.awf = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.awf, ptr %i.ano, align 64
  %i.awg = load <4 x float>, ptr %i.ann, align 64
  store <4 x float> %i.awg, ptr %i.awf, align 16
  %i.awh = load ptr, ptr %i.ano, align 64
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 16
  %i.awj = load <4 x float>, ptr %i.anp, align 16
  store <4 x float> %i.awj, ptr %i.awi, align 16
  %i.awk = load ptr, ptr %i.ano, align 64
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 32
  %i.awm = load <4 x float>, ptr %i.anq, align 32
  store <4 x float> %i.awm, ptr %i.awl, align 16
  %i.awn = load ptr, ptr %i.ano, align 64
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 48
  %i.awp = load <4 x float>, ptr %i.anr, align 16
  store <4 x float> %i.awp, ptr %i.awo, align 16
  %i.awq = load ptr, ptr %i.ano, align 64
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 64
  %i.aws = load <4 x float>, ptr %i.ans, align 64
  store <4 x float> %i.aws, ptr %i.awr, align 16
  %i.awt = load ptr, ptr %i.ano, align 64
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 80
  %i.awv = load <4 x float>, ptr %i.ant, align 16
  store <4 x float> %i.awv, ptr %i.awu, align 16
  %i.aww = load ptr, ptr %i.ano, align 64
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 96
  %i.awy = load <4 x float>, ptr %i.anu, align 32
  store <4 x float> %i.awy, ptr %i.awx, align 16
  %i.awz = load ptr, ptr %i.ano, align 64
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 112
  %i.axb = load <4 x float>, ptr %i.anv, align 16
  store <4 x float> %i.axb, ptr %i.axa, align 16
  %i.axc = load ptr, ptr %i.ano, align 64
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 128
  %i.axe = load <4 x float>, ptr %i.anw, align 64
  store <4 x float> %i.axe, ptr %i.axd, align 16
  %i.axf = load ptr, ptr %i.ano, align 64
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 144
  %i.axh = load <4 x float>, ptr %i.anx, align 16
  store <4 x float> %i.axh, ptr %i.axg, align 16
  %i.axi = load ptr, ptr %i.ano, align 64
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 160
  %i.axk = load <4 x float>, ptr %i.any, align 32
  store <4 x float> %i.axk, ptr %i.axj, align 16
  %i.axl = load ptr, ptr %i.ano, align 64
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 176
  %i.axn = load <4 x float>, ptr %i.anz, align 16
  store <4 x float> %i.axn, ptr %i.axm, align 16
  %i.axo = load ptr, ptr %i.ano, align 64
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 192
  %i.axq = load <4 x float>, ptr %i.aoa, align 64
  store <4 x float> %i.axq, ptr %i.axp, align 16
  %i.axr = load ptr, ptr %i.ano, align 64
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 208
  %i.axt = load <4 x float>, ptr %i.aob, align 16
  store <4 x float> %i.axt, ptr %i.axs, align 16
  %i.axu = load ptr, ptr %i.ano, align 64
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 224
  %i.axw = load <4 x float>, ptr %i.aoc, align 32
  store <4 x float> %i.axw, ptr %i.axv, align 16
  %i.axx = load ptr, ptr %i.ano, align 64
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 240
  %i.axz = load <4 x float>, ptr %i.aod, align 16
  store <4 x float> %i.axz, ptr %i.axy, align 16
  %i.aya = load ptr, ptr %i.ano, align 64
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 256
  %i.ayc = load <4 x float>, ptr %i.aoe, align 64
  store <4 x float> %i.ayc, ptr %i.ayb, align 16
  %i.ayd = load ptr, ptr %i.ano, align 64
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 272
  %i.ayf = load <4 x float>, ptr %i.aof, align 16
  store <4 x float> %i.ayf, ptr %i.aye, align 16
  %i.ayg = load ptr, ptr %i.ano, align 64
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 288
  %i.ayi = load <4 x float>, ptr %i.aog, align 32
  store <4 x float> %i.ayi, ptr %i.ayh, align 16
  %i.ayj = load ptr, ptr %i.ano, align 64
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 304
  %i.ayl = load <4 x float>, ptr %i.aoh, align 16
  store <4 x float> %i.ayl, ptr %i.ayk, align 16
  %i.aym = load ptr, ptr %i.ano, align 64
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 320
  %i.ayo = load <4 x float>, ptr %i.aoi, align 64
  store <4 x float> %i.ayo, ptr %i.ayn, align 16
  %i.ayp = load ptr, ptr %i.ano, align 64
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 336
  %i.ayr = load <4 x float>, ptr %i.aoj, align 16
  store <4 x float> %i.ayr, ptr %i.ayq, align 16
  %i.ays = load ptr, ptr %i.ano, align 64
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 352
  %i.ayu = load <4 x float>, ptr %i.aok, align 32
  store <4 x float> %i.ayu, ptr %i.ayt, align 16
  %i.ayv = load ptr, ptr %i.ano, align 64
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 368
  %i.ayx = load <4 x float>, ptr %i.aol, align 16
  store <4 x float> %i.ayx, ptr %i.ayw, align 16
  %i.ayy = load ptr, ptr %i.ano, align 64
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 384
  %i.aza = load <4 x float>, ptr %i.aom, align 64
  store <4 x float> %i.aza, ptr %i.ayz, align 16
  %i.azb = load ptr, ptr %i.ano, align 64
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 400
  %i.azd = load <4 x float>, ptr %i.aon, align 16
  store <4 x float> %i.azd, ptr %i.azc, align 16
  %i.aze = load ptr, ptr %i.ano, align 64
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 416
  %i.azg = load <4 x float>, ptr %i.aoo, align 32
  store <4 x float> %i.azg, ptr %i.azf, align 16
  %i.azh = load ptr, ptr %i.ano, align 64
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 432
  %i.azj = load <4 x float>, ptr %i.aop, align 16
  store <4 x float> %i.azj, ptr %i.azi, align 16
  %i.azk = load ptr, ptr %i.ano, align 64
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 448
  %i.azm = load <4 x float>, ptr %i.aoq, align 64
  store <4 x float> %i.azm, ptr %i.azl, align 16
  %i.azn = load ptr, ptr %i.ano, align 64
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 464
  %i.azp = load <4 x float>, ptr %i.aor, align 16
  store <4 x float> %i.azp, ptr %i.azo, align 16
  %i.azq = load ptr, ptr %i.ano, align 64
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 480
  %i.azs = load <4 x float>, ptr %i.aos, align 32
  store <4 x float> %i.azs, ptr %i.azr, align 16
  %i.azt = load ptr, ptr %i.ano, align 64
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 496
  %i.azv = load <4 x float>, ptr %i.aot, align 16
  store <4 x float> %i.azv, ptr %i.azu, align 16
  %.pre936 = load ptr, ptr %i.ano, align 64
  br label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i175

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i175: ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i175.loopexit, %bb.ac, %bb.ab
  %i.azw = phi ptr [ %.pre936, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i175.loopexit ], [ %.pre937, %bb.ac ], [ %.pre937, %bb.ab ]
  %i.azx = getelementptr inbounds nuw [16 x i8], ptr %i.azw, i64 %.086.i172
  store <4 x float> %i.awc, ptr %i.azx, align 16
  %i.azy = fadd <4 x float> %.sroa.0618.0805, %i.awc ; 3 uses
  %i.azz = add nuw nsw i64 %.089.i128806, 1       ; 2 uses
  %i.baa = load i32, ptr %i.amq, align 4          ; 3 uses
  %i.bab = zext i32 %i.baa to i64                 ; 2 uses
  %i.bac = icmp samesign ult i64 %i.azz, %i.bab
  br i1 %i.bac, label %bb.ab, label %._crit_edge808, !llvm.loop !965

._crit_edge821.loopexit:                          ; preds = %bb.aq
  %i.bad = uitofp i32 %i.bwb to float
  br label %._crit_edge821

._crit_edge821:                                   ; preds = %._crit_edge808.thread, %._crit_edge821.loopexit, %._crit_edge808
  %.sroa.0618.1.lcssa = phi <4 x float> [ %i.azy, %._crit_edge808 ], [ %i.bkb, %._crit_edge821.loopexit ], [ zeroinitializer, %._crit_edge808.thread ]
  %.084.i129.lcssa = phi i64 [ 0, %._crit_edge808 ], [ %.1.i143, %._crit_edge821.loopexit ], [ 0, %._crit_edge808.thread ] ; 2 uses
  %.lcssa782 = phi float [ 0.000000e+00, %._crit_edge808 ], [ %i.bad, %._crit_edge821.loopexit ], [ 0.000000e+00, %._crit_edge808.thread ] ; 2 uses
  %i.bae = fdiv float 1.000000e+00, %.lcssa782
  %i.baf = fadd nnan float %.lcssa782, -2.000000e+00
  %i.bag = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 6 uses
  %i.bah = insertelement <4 x float> poison, float %i.baf, i64 0
  %i.bai = shufflevector <4 x float> %i.bah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.baj = load <4 x float>, ptr %i.bag, align 16, !noalias !1069
  %i.bak = fmul <4 x float> %i.bai, %i.baj
  %i.bal = insertelement <4 x float> poison, float %i.bae, i64 0
  %i.bam = shufflevector <4 x float> %i.bal, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ban = fmul <4 x float> %.sroa.0618.1.lcssa, %i.bam
  %i.bao = fadd <4 x float> %i.ban, %i.bak
  %i.bap = fmul <4 x float> %i.bam, %i.bao        ; 3 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %1, i64 4368 ; 8 uses
  store <4 x float> %i.bap, ptr %i.baq, align 16
  %i.bar = load float, ptr %i.amx, align 4        ; 4 uses
  %i.bas = fcmp ogt float %i.bar, 0.000000e+00
  br i1 %i.bas, label %bb.ar, label %bb.au, !prof !10

bb.ad:                                            ; preds = %.lr.ph820, %bb.aq
  %i.bat = phi i64 [ %i.aou, %.lr.ph820 ], [ %i.bwc, %bb.aq ] ; 2 uses
  %.083.i130818 = phi i64 [ 0, %.lr.ph820 ], [ %i.bwa, %bb.aq ] ; 2 uses
  %.084.i129817 = phi i64 [ 0, %.lr.ph820 ], [ %.1.i143, %bb.aq ] ; 5 uses
  %.sroa.0618.1816 = phi <4 x float> [ %i.azy, %.lr.ph820 ], [ %i.bkb, %bb.aq ]
  %i.bau = load i32, ptr %i.and, align 8
  %i.bav = zext i32 %i.bau to i64
  %i.baw = add nuw nsw i64 %.083.i130818, %i.bav  ; 3 uses
  %.not.i137 = icmp samesign ult i64 %i.baw, %i.bat
  %i.bax = select i1 %.not.i137, i64 0, i64 %i.bat ; 2 uses
  %spec.select113.i138 = sub nuw nsw i64 %i.baw, %i.bax ; 6 uses
  %i.bay = load ptr, ptr %i.aov, align 64
  %i.baz = getelementptr inbounds nuw [4 x i8], ptr %i.bay, i64 %spec.select113.i138
  %i.bba = load float, ptr %i.baz, align 4        ; 5 uses
  %i.bbb = fadd float %i.bba, -1.000000e+00       ; 2 uses
  %i.bbc = fcmp olt float %i.bbb, 0.000000e+00
  %i.bbd = select i1 %i.bbc, float 0.000000e+00, float %i.bbb ; 2 uses
  %i.bbe = icmp samesign ult i64 %spec.select113.i138, 16
  %.pre938 = load ptr, ptr %i.aox, align 64       ; 3 uses
  br i1 %i.bbe, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139, label %bb.ae, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.bbf = icmp eq ptr %.pre938, %i.aow
  br i1 %i.bbf, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139.thread, !prof !10

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139.thread: ; preds = %bb.ae
  %i.bbg = getelementptr inbounds nuw [4 x i8], ptr %.pre938, i64 %spec.select113.i138
  store float %i.bbd, ptr %i.bbg, align 4
  br label %bb.ag

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139.loopexit: ; preds = %bb.ae
  %i.bbh = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20 ; 6 uses
  store ptr %i.bbh, ptr %i.aox, align 64
  %i.bbi = load <4 x float>, ptr %i.aow, align 64
  store <4 x float> %i.bbi, ptr %i.bbh, align 4
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbh, i64 16
  %i.bbk = load <4 x float>, ptr %i.apc, align 16
  store <4 x float> %i.bbk, ptr %i.bbj, align 4
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbh, i64 32
  %i.bbm = load <4 x float>, ptr %i.apd, align 32
  store <4 x float> %i.bbm, ptr %i.bbl, align 4
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbh, i64 48
  %i.bbo = load <4 x float>, ptr %i.ape, align 16
  store <4 x float> %i.bbo, ptr %i.bbn, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139: ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139.loopexit, %bb.ad
  %i.bbp = phi ptr [ %i.bbh, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139.loopexit ], [ %.pre938, %bb.ad ]
  %i.bbq = getelementptr inbounds nuw [4 x i8], ptr %i.bbp, i64 %spec.select113.i138
  store float %i.bbd, ptr %i.bbq, align 4
  %i.bbr = icmp eq i64 %i.baw, %i.bax
  br i1 %i.bbr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139
  %i.bbs = load i32, ptr %i.amt, align 8
  %i.bbt = add i32 %i.bbs, -1
  %i.bbu = zext i32 %i.bbt to i64
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139.thread, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i139
  %i.bbv = shl nuw nsw i64 %spec.select113.i138, 1 ; 2 uses
  %i.bbw = add nsw i64 %i.bbv, -1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bbx = phi i64 [ 0, %bb.af ], [ %i.bbv, %bb.ag ] ; 8 uses
  %i.bby = phi i64 [ %i.bbu, %bb.af ], [ %i.bbw, %bb.ag ] ; 2 uses
  %i.bbz = load ptr, ptr %i.aoz, align 64
  %i.bca = getelementptr inbounds nuw [16 x i8], ptr %i.bbz, i64 %i.bbx
  %i.bcb = load <4 x float>, ptr %i.aoy, align 16, !noalias !1070
  %i.bcc = load <4 x float>, ptr %i.bca, align 16, !noalias !1070
  %i.bcd = fadd <4 x float> %i.bcb, %i.bcc        ; 3 uses
  %i.bce = icmp ult i64 %i.bby, 32
  %.pre940 = load ptr, ptr %i.apb, align 64       ; 3 uses
  br i1 %i.bce, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i140, label %bb.ai, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.bcf = icmp eq ptr %.pre940, %i.apa
  br i1 %i.bcf, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i140.loopexit, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i140, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i140.loopexit: ; preds = %bb.ai
  %i.bcg = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.bcg, ptr %i.apb, align 64
  %i.bch = load <4 x float>, ptr %i.apa, align 64
  store <4 x float> %i.bch, ptr %i.bcg, align 16
  %i.bci = load ptr, ptr %i.apb, align 64
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bci, i64 16
  %i.bck = load <4 x float>, ptr %i.apf, align 16
  store <4 x float> %i.bck, ptr %i.bcj, align 16
  %i.bcl = load ptr, ptr %i.apb, align 64
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcl, i64 32
  %i.bcn = load <4 x float>, ptr %i.apg, align 32
  store <4 x float> %i.bcn, ptr %i.bcm, align 16
  %i.bco = load ptr, ptr %i.apb, align 64
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 48
  %i.bcq = load <4 x float>, ptr %i.aph, align 16
  store <4 x float> %i.bcq, ptr %i.bcp, align 16
  %i.bcr = load ptr, ptr %i.apb, align 64
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 64
  %i.bct = load <4 x float>, ptr %i.api, align 64
  store <4 x float> %i.bct, ptr %i.bcs, align 16
  %i.bcu = load ptr, ptr %i.apb, align 64
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 80
  %i.bcw = load <4 x float>, ptr %i.apj, align 16
  store <4 x float> %i.bcw, ptr %i.bcv, align 16
  %i.bcx = load ptr, ptr %i.apb, align 64
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcx, i64 96
  %i.bcz = load <4 x float>, ptr %i.apk, align 32
  store <4 x float> %i.bcz, ptr %i.bcy, align 16
  %i.bda = load ptr, ptr %i.apb, align 64
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bda, i64 112
  %i.bdc = load <4 x float>, ptr %i.apl, align 16
  store <4 x float> %i.bdc, ptr %i.bdb, align 16
  %i.bdd = load ptr, ptr %i.apb, align 64
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 128
  %i.bdf = load <4 x float>, ptr %i.apm, align 64
  store <4 x float> %i.bdf, ptr %i.bde, align 16
  %i.bdg = load ptr, ptr %i.apb, align 64
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 144
  %i.bdi = load <4 x float>, ptr %i.apn, align 16
  store <4 x float> %i.bdi, ptr %i.bdh, align 16
  %i.bdj = load ptr, ptr %i.apb, align 64
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdj, i64 160
  %i.bdl = load <4 x float>, ptr %i.apo, align 32
  store <4 x float> %i.bdl, ptr %i.bdk, align 16
  %i.bdm = load ptr, ptr %i.apb, align 64
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 176
  %i.bdo = load <4 x float>, ptr %i.app, align 16
  store <4 x float> %i.bdo, ptr %i.bdn, align 16
  %i.bdp = load ptr, ptr %i.apb, align 64
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 192
  %i.bdr = load <4 x float>, ptr %i.apq, align 64
  store <4 x float> %i.bdr, ptr %i.bdq, align 16
  %i.bds = load ptr, ptr %i.apb, align 64
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 208
  %i.bdu = load <4 x float>, ptr %i.apr, align 16
  store <4 x float> %i.bdu, ptr %i.bdt, align 16
  %i.bdv = load ptr, ptr %i.apb, align 64
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 224
  %i.bdx = load <4 x float>, ptr %i.aps, align 32
  store <4 x float> %i.bdx, ptr %i.bdw, align 16
  %i.bdy = load ptr, ptr %i.apb, align 64
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 240
  %i.bea = load <4 x float>, ptr %i.apt, align 16
  store <4 x float> %i.bea, ptr %i.bdz, align 16
  %i.beb = load ptr, ptr %i.apb, align 64
  %i.bec = getelementptr inbounds nuw i8, ptr %i.beb, i64 256
  %i.bed = load <4 x float>, ptr %i.apu, align 64
  store <4 x float> %i.bed, ptr %i.bec, align 16
  %i.bee = load ptr, ptr %i.apb, align 64
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 272
  %i.beg = load <4 x float>, ptr %i.apv, align 16
  store <4 x float> %i.beg, ptr %i.bef, align 16
  %i.beh = load ptr, ptr %i.apb, align 64
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 288
  %i.bej = load <4 x float>, ptr %i.apw, align 32
  store <4 x float> %i.bej, ptr %i.bei, align 16
  %i.bek = load ptr, ptr %i.apb, align 64
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 304
  %i.bem = load <4 x float>, ptr %i.apx, align 16
  store <4 x float> %i.bem, ptr %i.bel, align 16
  %i.ben = load ptr, ptr %i.apb, align 64
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 320
  %i.bep = load <4 x float>, ptr %i.apy, align 64
  store <4 x float> %i.bep, ptr %i.beo, align 16
  %i.beq = load ptr, ptr %i.apb, align 64
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 336
  %i.bes = load <4 x float>, ptr %i.apz, align 16
  store <4 x float> %i.bes, ptr %i.ber, align 16
  %i.bet = load ptr, ptr %i.apb, align 64
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 352
  %i.bev = load <4 x float>, ptr %i.aqa, align 32
  store <4 x float> %i.bev, ptr %i.beu, align 16
  %i.bew = load ptr, ptr %i.apb, align 64
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bew, i64 368
  %i.bey = load <4 x float>, ptr %i.aqb, align 16
  store <4 x float> %i.bey, ptr %i.bex, align 16
  %i.bez = load ptr, ptr %i.apb, align 64
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 384
  %i.bfb = load <4 x float>, ptr %i.aqc, align 64
  store <4 x float> %i.bfb, ptr %i.bfa, align 16
  %i.bfc = load ptr, ptr %i.apb, align 64
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 400
  %i.bfe = load <4 x float>, ptr %i.aqd, align 16
end_hunk_2
begin_hunk_3_@_ZNK6embree18CatmullClarkPatchTINS_6Vec3faES1_E9subdivideERNS_7array_tIS2_Lm4EEE:bb.a
  %i.bmr = load ptr, ptr %i.apb, align 64
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 336
  %i.bmt = load <4 x float>, ptr %i.asj, align 16
  store <4 x float> %i.bmt, ptr %i.bms, align 16
  %i.bmu = load ptr, ptr %i.apb, align 64
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmu, i64 352
  %i.bmw = load <4 x float>, ptr %i.ask, align 32
  store <4 x float> %i.bmw, ptr %i.bmv, align 16
  %i.bmx = load ptr, ptr %i.apb, align 64
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmx, i64 368
  %i.bmz = load <4 x float>, ptr %i.asl, align 16
  store <4 x float> %i.bmz, ptr %i.bmy, align 16
  %i.bna = load ptr, ptr %i.apb, align 64
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 384
  %i.bnc = load <4 x float>, ptr %i.asm, align 64
  store <4 x float> %i.bnc, ptr %i.bnb, align 16
  %i.bnd = load ptr, ptr %i.apb, align 64
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 400
  %i.bnf = load <4 x float>, ptr %i.asn, align 16
  store <4 x float> %i.bnf, ptr %i.bne, align 16
  %i.bng = load ptr, ptr %i.apb, align 64
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 416
  %i.bni = load <4 x float>, ptr %i.aso, align 32
  store <4 x float> %i.bni, ptr %i.bnh, align 16
  %i.bnj = load ptr, ptr %i.apb, align 64
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 432
  %i.bnl = load <4 x float>, ptr %i.asp, align 16
  store <4 x float> %i.bnl, ptr %i.bnk, align 16
  %i.bnm = load ptr, ptr %i.apb, align 64
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 448
  %i.bno = load <4 x float>, ptr %i.asq, align 64
  store <4 x float> %i.bno, ptr %i.bnn, align 16
  %i.bnp = load ptr, ptr %i.apb, align 64
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 464
  %i.bnr = load <4 x float>, ptr %i.asr, align 16
  store <4 x float> %i.bnr, ptr %i.bnq, align 16
  %i.bns = load ptr, ptr %i.apb, align 64
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 480
  %i.bnu = load <4 x float>, ptr %i.ass, align 32
  store <4 x float> %i.bnu, ptr %i.bnt, align 16
  %i.bnv = load ptr, ptr %i.apb, align 64
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 496
  %i.bnx = load <4 x float>, ptr %i.ast, align 16
  store <4 x float> %i.bnx, ptr %i.bnw, align 16
  br label %.sink.split1105.sink.split

bb.am:                                            ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit128.i141
  %i.bny = add nuw nsw i64 %.084.i129817, 1       ; 4 uses
  %i.bnz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.084.i129817
  store i64 %spec.select113.i138, ptr %i.bnz, align 8
  %i.boa = fmul <4 x float> %i.bcd, splat (float 5.000000e-01) ; 2 uses
  %i.bob = icmp samesign ult i64 %i.bbx, 32       ; 2 uses
  br i1 %i.bob, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i148, label %bb.an, !prof !11

bb.an:                                            ; preds = %bb.am
  %i.boc = icmp eq ptr %i.bjs, %i.apa
  br i1 %i.boc, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i148.loopexit, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i148, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i148.loopexit: ; preds = %bb.an
  %i.bod = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.bod, ptr %i.apb, align 64
  %i.boe = load <4 x float>, ptr %i.apa, align 64
  store <4 x float> %i.boe, ptr %i.bod, align 16
  %i.bof = load ptr, ptr %i.apb, align 64
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 16
  %i.boh = load <4 x float>, ptr %i.asu, align 16
  store <4 x float> %i.boh, ptr %i.bog, align 16
  %i.boi = load ptr, ptr %i.apb, align 64
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 32
  %i.bok = load <4 x float>, ptr %i.asv, align 32
  store <4 x float> %i.bok, ptr %i.boj, align 16
  %i.bol = load ptr, ptr %i.apb, align 64
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bol, i64 48
  %i.bon = load <4 x float>, ptr %i.asw, align 16
  store <4 x float> %i.bon, ptr %i.bom, align 16
  %i.boo = load ptr, ptr %i.apb, align 64
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boo, i64 64
  %i.boq = load <4 x float>, ptr %i.asx, align 64
  store <4 x float> %i.boq, ptr %i.bop, align 16
  %i.bor = load ptr, ptr %i.apb, align 64
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 80
  %i.bot = load <4 x float>, ptr %i.asy, align 16
  store <4 x float> %i.bot, ptr %i.bos, align 16
  %i.bou = load ptr, ptr %i.apb, align 64
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bou, i64 96
  %i.bow = load <4 x float>, ptr %i.asz, align 32
  store <4 x float> %i.bow, ptr %i.bov, align 16
  %i.box = load ptr, ptr %i.apb, align 64
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 112
  %i.boz = load <4 x float>, ptr %i.ata, align 16
  store <4 x float> %i.boz, ptr %i.boy, align 16
  %i.bpa = load ptr, ptr %i.apb, align 64
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bpa, i64 128
  %i.bpc = load <4 x float>, ptr %i.atb, align 64
  store <4 x float> %i.bpc, ptr %i.bpb, align 16
  %i.bpd = load ptr, ptr %i.apb, align 64
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpd, i64 144
  %i.bpf = load <4 x float>, ptr %i.atc, align 16
  store <4 x float> %i.bpf, ptr %i.bpe, align 16
  %i.bpg = load ptr, ptr %i.apb, align 64
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpg, i64 160
  %i.bpi = load <4 x float>, ptr %i.atd, align 32
  store <4 x float> %i.bpi, ptr %i.bph, align 16
  %i.bpj = load ptr, ptr %i.apb, align 64
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bpj, i64 176
  %i.bpl = load <4 x float>, ptr %i.ate, align 16
  store <4 x float> %i.bpl, ptr %i.bpk, align 16
  %i.bpm = load ptr, ptr %i.apb, align 64
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 192
  %i.bpo = load <4 x float>, ptr %i.atf, align 64
  store <4 x float> %i.bpo, ptr %i.bpn, align 16
  %i.bpp = load ptr, ptr %i.apb, align 64
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 208
  %i.bpr = load <4 x float>, ptr %i.atg, align 16
  store <4 x float> %i.bpr, ptr %i.bpq, align 16
  %i.bps = load ptr, ptr %i.apb, align 64
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bps, i64 224
  %i.bpu = load <4 x float>, ptr %i.ath, align 32
  store <4 x float> %i.bpu, ptr %i.bpt, align 16
  %i.bpv = load ptr, ptr %i.apb, align 64
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpv, i64 240
  %i.bpx = load <4 x float>, ptr %i.ati, align 16
  store <4 x float> %i.bpx, ptr %i.bpw, align 16
  %i.bpy = load ptr, ptr %i.apb, align 64
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpy, i64 256
  %i.bqa = load <4 x float>, ptr %i.atj, align 64
  store <4 x float> %i.bqa, ptr %i.bpz, align 16
  %i.bqb = load ptr, ptr %i.apb, align 64
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bqb, i64 272
  %i.bqd = load <4 x float>, ptr %i.atk, align 16
  store <4 x float> %i.bqd, ptr %i.bqc, align 16
  %i.bqe = load ptr, ptr %i.apb, align 64
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 288
  %i.bqg = load <4 x float>, ptr %i.atl, align 32
  store <4 x float> %i.bqg, ptr %i.bqf, align 16
  %i.bqh = load ptr, ptr %i.apb, align 64
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqh, i64 304
  %i.bqj = load <4 x float>, ptr %i.atm, align 16
  store <4 x float> %i.bqj, ptr %i.bqi, align 16
  %i.bqk = load ptr, ptr %i.apb, align 64
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqk, i64 320
  %i.bqm = load <4 x float>, ptr %i.atn, align 64
  store <4 x float> %i.bqm, ptr %i.bql, align 16
  %i.bqn = load ptr, ptr %i.apb, align 64
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqn, i64 336
  %i.bqp = load <4 x float>, ptr %i.ato, align 16
  store <4 x float> %i.bqp, ptr %i.bqo, align 16
  %i.bqq = load ptr, ptr %i.apb, align 64
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqq, i64 352
  %i.bqs = load <4 x float>, ptr %i.atp, align 32
  store <4 x float> %i.bqs, ptr %i.bqr, align 16
  %i.bqt = load ptr, ptr %i.apb, align 64
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 368
  %i.bqv = load <4 x float>, ptr %i.atq, align 16
  store <4 x float> %i.bqv, ptr %i.bqu, align 16
  %i.bqw = load ptr, ptr %i.apb, align 64
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bqw, i64 384
  %i.bqy = load <4 x float>, ptr %i.atr, align 64
  store <4 x float> %i.bqy, ptr %i.bqx, align 16
  %i.bqz = load ptr, ptr %i.apb, align 64
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 400
  %i.brb = load <4 x float>, ptr %i.ats, align 16
  store <4 x float> %i.brb, ptr %i.bra, align 16
  %i.brc = load ptr, ptr %i.apb, align 64
  %i.brd = getelementptr inbounds nuw i8, ptr %i.brc, i64 416
  %i.bre = load <4 x float>, ptr %i.att, align 32
  store <4 x float> %i.bre, ptr %i.brd, align 16
  %i.brf = load ptr, ptr %i.apb, align 64
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 432
  %i.brh = load <4 x float>, ptr %i.atu, align 16
  store <4 x float> %i.brh, ptr %i.brg, align 16
  %i.bri = load ptr, ptr %i.apb, align 64
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bri, i64 448
  %i.brk = load <4 x float>, ptr %i.atv, align 64
  store <4 x float> %i.brk, ptr %i.brj, align 16
  %i.brl = load ptr, ptr %i.apb, align 64
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brl, i64 464
  %i.brn = load <4 x float>, ptr %i.atw, align 16
  store <4 x float> %i.brn, ptr %i.brm, align 16
  %i.bro = load ptr, ptr %i.apb, align 64
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 480
  %i.brq = load <4 x float>, ptr %i.atx, align 32
  store <4 x float> %i.brq, ptr %i.brp, align 16
  %i.brr = load ptr, ptr %i.apb, align 64
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brr, i64 496
  %i.brt = load <4 x float>, ptr %i.aty, align 16
  store <4 x float> %i.brt, ptr %i.brs, align 16
  %.pre943 = load ptr, ptr %i.apb, align 64
  br label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i148

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i148: ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i148.loopexit, %bb.an, %bb.am
  %i.bru = phi ptr [ %.pre943, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i148.loopexit ], [ %i.bjs, %bb.an ], [ %i.bjs, %bb.am ]
  %i.brv = getelementptr inbounds nuw [16 x i8], ptr %i.bru, i64 %i.bbx
  store <4 x float> %i.boa, ptr %i.brv, align 16
  %i.brw = fcmp olt float %i.bba, 1.000000e+00
  br i1 %i.brw, label %bb.ao, label %bb.aq, !prof !10

bb.ao:                                            ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i148
  %i.brx = fadd <4 x float> %i.bcd, %i.bjx
  %i.bry = fmul <4 x float> %i.brx, splat (float 2.500000e-01)
  %i.brz = fsub nnan float 1.000000e+00, %i.bba
  %i.bsa = insertelement <4 x float> poison, float %i.bba, i64 0
  %i.bsb = shufflevector <4 x float> %i.bsa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bsc = fmul <4 x float> %i.bsb, %i.boa
  %i.bsd = insertelement <4 x float> poison, float %i.brz, i64 0
  %i.bse = shufflevector <4 x float> %i.bsd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bsf = fmul <4 x float> %i.bse, %i.bry
  %i.bsg = fadd <4 x float> %i.bsc, %i.bsf        ; 3 uses
  %.pre945 = load ptr, ptr %i.apb, align 64       ; 3 uses
  br i1 %i.bob, label %.sink.split1105, label %bb.ap, !prof !11

bb.ap:                                            ; preds = %bb.ao
  %i.bsh = icmp eq ptr %.pre945, %i.apa
  br i1 %i.bsh, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i149.loopexit, label %.sink.split1105, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i149.loopexit: ; preds = %bb.ap
  %i.bsi = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.bsi, ptr %i.apb, align 64
  %i.bsj = load <4 x float>, ptr %i.apa, align 64
  store <4 x float> %i.bsj, ptr %i.bsi, align 16
  %i.bsk = load ptr, ptr %i.apb, align 64
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsk, i64 16
  %i.bsm = load <4 x float>, ptr %i.atz, align 16
  store <4 x float> %i.bsm, ptr %i.bsl, align 16
  %i.bsn = load ptr, ptr %i.apb, align 64
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsn, i64 32
  %i.bsp = load <4 x float>, ptr %i.aua, align 32
  store <4 x float> %i.bsp, ptr %i.bso, align 16
  %i.bsq = load ptr, ptr %i.apb, align 64
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 48
  %i.bss = load <4 x float>, ptr %i.aub, align 16
  store <4 x float> %i.bss, ptr %i.bsr, align 16
  %i.bst = load ptr, ptr %i.apb, align 64
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bst, i64 64
  %i.bsv = load <4 x float>, ptr %i.auc, align 64
  store <4 x float> %i.bsv, ptr %i.bsu, align 16
  %i.bsw = load ptr, ptr %i.apb, align 64
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 80
  %i.bsy = load <4 x float>, ptr %i.aud, align 16
  store <4 x float> %i.bsy, ptr %i.bsx, align 16
  %i.bsz = load ptr, ptr %i.apb, align 64
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsz, i64 96
  %i.btb = load <4 x float>, ptr %i.aue, align 32
  store <4 x float> %i.btb, ptr %i.bta, align 16
  %i.btc = load ptr, ptr %i.apb, align 64
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btc, i64 112
  %i.bte = load <4 x float>, ptr %i.auf, align 16
  store <4 x float> %i.bte, ptr %i.btd, align 16
  %i.btf = load ptr, ptr %i.apb, align 64
  %i.btg = getelementptr inbounds nuw i8, ptr %i.btf, i64 128
  %i.bth = load <4 x float>, ptr %i.aug, align 64
  store <4 x float> %i.bth, ptr %i.btg, align 16
  %i.bti = load ptr, ptr %i.apb, align 64
  %i.btj = getelementptr inbounds nuw i8, ptr %i.bti, i64 144
  %i.btk = load <4 x float>, ptr %i.auh, align 16
  store <4 x float> %i.btk, ptr %i.btj, align 16
  %i.btl = load ptr, ptr %i.apb, align 64
  %i.btm = getelementptr inbounds nuw i8, ptr %i.btl, i64 160
  %i.btn = load <4 x float>, ptr %i.aui, align 32
  store <4 x float> %i.btn, ptr %i.btm, align 16
  %i.bto = load ptr, ptr %i.apb, align 64
  %i.btp = getelementptr inbounds nuw i8, ptr %i.bto, i64 176
  %i.btq = load <4 x float>, ptr %i.auj, align 16
  store <4 x float> %i.btq, ptr %i.btp, align 16
  %i.btr = load ptr, ptr %i.apb, align 64
  %i.bts = getelementptr inbounds nuw i8, ptr %i.btr, i64 192
  %i.btt = load <4 x float>, ptr %i.auk, align 64
  store <4 x float> %i.btt, ptr %i.bts, align 16
  %i.btu = load ptr, ptr %i.apb, align 64
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btu, i64 208
  %i.btw = load <4 x float>, ptr %i.aul, align 16
  store <4 x float> %i.btw, ptr %i.btv, align 16
  %i.btx = load ptr, ptr %i.apb, align 64
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btx, i64 224
  %i.btz = load <4 x float>, ptr %i.aum, align 32
  store <4 x float> %i.btz, ptr %i.bty, align 16
  %i.bua = load ptr, ptr %i.apb, align 64
  %i.bub = getelementptr inbounds nuw i8, ptr %i.bua, i64 240
  %i.buc = load <4 x float>, ptr %i.aun, align 16
  store <4 x float> %i.buc, ptr %i.bub, align 16
  %i.bud = load ptr, ptr %i.apb, align 64
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bud, i64 256
  %i.buf = load <4 x float>, ptr %i.auo, align 64
  store <4 x float> %i.buf, ptr %i.bue, align 16
  %i.bug = load ptr, ptr %i.apb, align 64
  %i.buh = getelementptr inbounds nuw i8, ptr %i.bug, i64 272
  %i.bui = load <4 x float>, ptr %i.aup, align 16
  store <4 x float> %i.bui, ptr %i.buh, align 16
  %i.buj = load ptr, ptr %i.apb, align 64
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buj, i64 288
  %i.bul = load <4 x float>, ptr %i.auq, align 32
  store <4 x float> %i.bul, ptr %i.buk, align 16
  %i.bum = load ptr, ptr %i.apb, align 64
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bum, i64 304
  %i.buo = load <4 x float>, ptr %i.aur, align 16
  store <4 x float> %i.buo, ptr %i.bun, align 16
  %i.bup = load ptr, ptr %i.apb, align 64
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bup, i64 320
  %i.bur = load <4 x float>, ptr %i.aus, align 64
  store <4 x float> %i.bur, ptr %i.buq, align 16
  %i.bus = load ptr, ptr %i.apb, align 64
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 336
  %i.buu = load <4 x float>, ptr %i.aut, align 16
  store <4 x float> %i.buu, ptr %i.but, align 16
  %i.buv = load ptr, ptr %i.apb, align 64
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 352
  %i.bux = load <4 x float>, ptr %i.auu, align 32
  store <4 x float> %i.bux, ptr %i.buw, align 16
  %i.buy = load ptr, ptr %i.apb, align 64
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buy, i64 368
  %i.bva = load <4 x float>, ptr %i.auv, align 16
  store <4 x float> %i.bva, ptr %i.buz, align 16
  %i.bvb = load ptr, ptr %i.apb, align 64
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bvb, i64 384
  %i.bvd = load <4 x float>, ptr %i.auw, align 64
  store <4 x float> %i.bvd, ptr %i.bvc, align 16
  %i.bve = load ptr, ptr %i.apb, align 64
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bve, i64 400
  %i.bvg = load <4 x float>, ptr %i.aux, align 16
  store <4 x float> %i.bvg, ptr %i.bvf, align 16
  %i.bvh = load ptr, ptr %i.apb, align 64
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bvh, i64 416
  %i.bvj = load <4 x float>, ptr %i.auy, align 32
  store <4 x float> %i.bvj, ptr %i.bvi, align 16
  %i.bvk = load ptr, ptr %i.apb, align 64
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvk, i64 432
  %i.bvm = load <4 x float>, ptr %i.auz, align 16
  store <4 x float> %i.bvm, ptr %i.bvl, align 16
  %i.bvn = load ptr, ptr %i.apb, align 64
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bvn, i64 448
  %i.bvp = load <4 x float>, ptr %i.ava, align 64
  store <4 x float> %i.bvp, ptr %i.bvo, align 16
  %i.bvq = load ptr, ptr %i.apb, align 64
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvq, i64 464
  %i.bvs = load <4 x float>, ptr %i.avb, align 16
  store <4 x float> %i.bvs, ptr %i.bvr, align 16
  %i.bvt = load ptr, ptr %i.apb, align 64
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvt, i64 480
  %i.bvv = load <4 x float>, ptr %i.avc, align 32
  store <4 x float> %i.bvv, ptr %i.bvu, align 16
  %i.bvw = load ptr, ptr %i.apb, align 64
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bvw, i64 496
  %i.bvy = load <4 x float>, ptr %i.avd, align 16
  store <4 x float> %i.bvy, ptr %i.bvx, align 16
  br label %.sink.split1105.sink.split

.sink.split1105.sink.split:                       ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit133.i142.loopexit, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i149.loopexit
  %.sink1106.ph = phi <4 x float> [ %i.bsg, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i149.loopexit ], [ %i.bke, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit133.i142.loopexit ]
  %.1.i143.ph.ph = phi i64 [ %i.bny, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i149.loopexit ], [ %.084.i129817, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit133.i142.loopexit ]
  %.pre944 = load ptr, ptr %i.apb, align 64
  br label %.sink.split1105

.sink.split1105:                                  ; preds = %.sink.split1105.sink.split, %bb.ao, %bb.ap, %bb.ak, %bb.al
  %.sink1108 = phi ptr [ %i.bjs, %bb.ak ], [ %.pre945, %bb.ap ], [ %i.bjs, %bb.al ], [ %.pre945, %bb.ao ], [ %.pre944, %.sink.split1105.sink.split ]
  %.sink1106 = phi <4 x float> [ %i.bke, %bb.ak ], [ %i.bsg, %bb.ap ], [ %i.bke, %bb.al ], [ %i.bsg, %bb.ao ], [ %.sink1106.ph, %.sink.split1105.sink.split ]
  %.1.i143.ph = phi i64 [ %.084.i129817, %bb.ak ], [ %i.bny, %bb.ap ], [ %.084.i129817, %bb.al ], [ %i.bny, %bb.ao ], [ %.1.i143.ph.ph, %.sink.split1105.sink.split ]
  %i.bvz = getelementptr inbounds nuw [16 x i8], ptr %.sink1108, i64 %i.bbx
  store <4 x float> %.sink1106, ptr %i.bvz, align 16
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split1105, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i148
  %.1.i143 = phi i64 [ %i.bny, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i148 ], [ %.1.i143.ph, %.sink.split1105 ] ; 2 uses
  %i.bwa = add nuw nsw i64 %.083.i130818, 1       ; 2 uses
  %i.bwb = load i32, ptr %i.amq, align 4          ; 2 uses
  %i.bwc = zext i32 %i.bwb to i64                 ; 2 uses
  %i.bwd = icmp samesign ult i64 %i.bwa, %i.bwc
  br i1 %i.bwd, label %bb.ad, label %._crit_edge821.loopexit, !llvm.loop !974

bb.ar:                                            ; preds = %._crit_edge821
  %i.bwe = fcmp ult float %i.bar, 1.000000e+00
  br i1 %i.bwe, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bwf = load <4 x float>, ptr %i.bag, align 16
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit180.sink.split

bb.at:                                            ; preds = %bb.ar
  %i.bwg = fsub nnan float 1.000000e+00, %i.bar
  %i.bwh = insertelement <4 x float> poison, float %i.bar, i64 0
  %i.bwi = shufflevector <4 x float> %i.bwh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bwj = load <4 x float>, ptr %i.bag, align 16, !noalias !1073
  %i.bwk = fmul <4 x float> %i.bwi, %i.bwj
  %i.bwl = insertelement <4 x float> poison, float %i.bwg, i64 0
  %i.bwm = shufflevector <4 x float> %i.bwl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bwn = fmul <4 x float> %i.bap, %i.bwm
  %i.bwo = fadd <4 x float> %i.bwn, %i.bwk
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit180.sink.split

bb.au:                                            ; preds = %._crit_edge821
  %i.bwp = icmp ult i64 %.084.i129.lcssa, 2
  br i1 %i.bwp, label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit180, label %bb.av, !prof !11

bb.av:                                            ; preds = %bb.au
  %i.bwq = icmp eq i64 %.084.i129.lcssa, 2
  br i1 %i.bwq, label %bb.aw, label %bb.ba, !prof !11

bb.aw:                                            ; preds = %bb.av
  %i.bwr = load i64, ptr %3, align 8              ; 4 uses
  %i.bws = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bwt = load i64, ptr %i.bws, align 8          ; 4 uses
  %i.bwu = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.bwv = load ptr, ptr %i.bwu, align 64         ; 2 uses
  %.idx.i131 = shl i64 %i.bwr, 5
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwv, i64 %.idx.i131
  %i.bwx = load <4 x float>, ptr %i.bag, align 16, !noalias !1074
  %i.bwy = fmul <4 x float> %i.bwx, splat (float 6.000000e+00)
  %i.bwz = load <4 x float>, ptr %i.bww, align 16, !noalias !1075
  %i.bxa = fadd <4 x float> %i.bwz, %i.bwy
  %.idx108.i132 = shl i64 %i.bwt, 5
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bwv, i64 %.idx108.i132
  %i.bxc = load <4 x float>, ptr %i.bxb, align 16, !noalias !1076
  %i.bxd = fadd <4 x float> %i.bxa, %i.bxc
  %i.bxe = fmul <4 x float> %i.bxd, splat (float 1.250000e-01) ; 2 uses
  store <4 x float> %i.bxe, ptr %i.baq, align 16
  %i.bxf = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.bxg = load ptr, ptr %i.bxf, align 64         ; 2 uses
  %i.bxh = getelementptr inbounds nuw [4 x i8], ptr %i.bxg, i64 %i.bwr
  %i.bxi = load float, ptr %i.bxh, align 4        ; 3 uses
  %i.bxj = getelementptr inbounds nuw [4 x i8], ptr %i.bxg, i64 %i.bwt
  %i.bxk = load float, ptr %i.bxj, align 4        ; 3 uses
  %i.bxl = tail call float @llvm.fmuladd.f32(float %i.bxi, float 3.000000e+00, float %i.bxk)
  %i.bxm = tail call float @llvm.fmuladd.f32(float %i.bxl, float 2.500000e-01, float -1.000000e+00) ; 2 uses
  %i.bxn = fcmp olt float %i.bxm, 0.000000e+00
  %i.bxo = select i1 %i.bxn, float 0.000000e+00, float %i.bxm
  %i.bxp = getelementptr inbounds nuw i8, ptr %1, i64 4224 ; 4 uses
  %i.bxq = add i64 %i.bwr, 1
  %i.bxr = icmp ult i64 %i.bxq, 17
  %.phi.trans.insert946 = getelementptr inbounds nuw i8, ptr %1, i64 4288 ; 2 uses
  %.pre947 = load ptr, ptr %.phi.trans.insert946, align 64 ; 3 uses
  br i1 %i.bxr, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i133, label %bb.ax, !prof !11

bb.ax:                                            ; preds = %bb.aw
  %i.bxs = icmp eq ptr %.pre947, %i.bxp
  br i1 %i.bxs, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i133.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i133, !prof !10

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i133.loopexit: ; preds = %bb.ax
  %i.bxt = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20 ; 6 uses
  store ptr %i.bxt, ptr %.phi.trans.insert946, align 64
  %i.bxu = load <4 x float>, ptr %i.bxp, align 64
  store <4 x float> %i.bxu, ptr %i.bxt, align 4
  %i.bxv = getelementptr inbounds nuw i8, ptr %1, i64 4240
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxt, i64 16
  %i.bxx = load <4 x float>, ptr %i.bxv, align 16
  store <4 x float> %i.bxx, ptr %i.bxw, align 4
  %i.bxy = getelementptr inbounds nuw i8, ptr %1, i64 4256
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxt, i64 32
  %i.bya = load <4 x float>, ptr %i.bxy, align 32
  store <4 x float> %i.bya, ptr %i.bxz, align 4
  %i.byb = getelementptr inbounds nuw i8, ptr %1, i64 4272
  %i.byc = getelementptr inbounds nuw i8, ptr %i.bxt, i64 48
  %i.byd = load <4 x float>, ptr %i.byb, align 16
  store <4 x float> %i.byd, ptr %i.byc, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i133

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i133: ; preds = %bb.aw, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i133.loopexit, %bb.ax
  %i.bye = phi ptr [ %.pre947, %bb.ax ], [ %i.bxt, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i133.loopexit ], [ %.pre947, %bb.aw ]
  %i.byf = getelementptr inbounds nuw i8, ptr %1, i64 4288 ; 2 uses
  %i.byg = getelementptr inbounds nuw [4 x i8], ptr %i.bye, i64 %i.bwr
  store float %i.bxo, ptr %i.byg, align 4
  %i.byh = tail call float @llvm.fmuladd.f32(float %i.bxk, float 3.000000e+00, float %i.bxi)
  %i.byi = tail call float @llvm.fmuladd.f32(float %i.byh, float 2.500000e-01, float -1.000000e+00) ; 2 uses
  %i.byj = fcmp olt float %i.byi, 0.000000e+00
  %i.byk = select i1 %i.byj, float 0.000000e+00, float %i.byi
  %i.byl = add i64 %i.bwt, 1
  %i.bym = icmp ult i64 %i.byl, 17
  %.pre948 = load ptr, ptr %i.byf, align 64       ; 3 uses
  br i1 %i.bym, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i134, label %bb.ay, !prof !11

bb.ay:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i133
  %i.byn = icmp eq ptr %.pre948, %i.bxp
  br i1 %i.byn, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i134.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i134, !prof !10

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i134.loopexit: ; preds = %bb.ay
  %i.byo = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20 ; 6 uses
  store ptr %i.byo, ptr %i.byf, align 64
  %i.byp = load <4 x float>, ptr %i.bxp, align 64
  store <4 x float> %i.byp, ptr %i.byo, align 4
  %i.byq = getelementptr inbounds nuw i8, ptr %1, i64 4240
  %i.byr = getelementptr inbounds nuw i8, ptr %i.byo, i64 16
  %i.bys = load <4 x float>, ptr %i.byq, align 16
  store <4 x float> %i.bys, ptr %i.byr, align 4
  %i.byt = getelementptr inbounds nuw i8, ptr %1, i64 4256
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byo, i64 32
  %i.byv = load <4 x float>, ptr %i.byt, align 32
  store <4 x float> %i.byv, ptr %i.byu, align 4
  %i.byw = getelementptr inbounds nuw i8, ptr %1, i64 4272
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byo, i64 48
  %i.byy = load <4 x float>, ptr %i.byw, align 16
  store <4 x float> %i.byy, ptr %i.byx, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i134

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i134: ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i134.loopexit, %bb.ay, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i133
  %i.byz = phi ptr [ %i.byo, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i134.loopexit ], [ %.pre948, %bb.ay ], [ %.pre948, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i133 ]
  %i.bza = getelementptr inbounds nuw [4 x i8], ptr %i.byz, i64 %i.bwt
  store float %i.byk, ptr %i.bza, align 4
  %i.bzb = fadd float %i.bxi, %i.bxk
  %i.bzc = fmul float %i.bzb, 5.000000e-01        ; 3 uses
  %i.bzd = fcmp olt float %i.bzc, 1.000000e+00
  br i1 %i.bzd, label %bb.az, label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit180, !prof !10

bb.az:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i134
  %i.bze = fsub nnan float 1.000000e+00, %i.bzc
  %i.bzf = insertelement <4 x float> poison, float %i.bzc, i64 0
  %i.bzg = shufflevector <4 x float> %i.bzf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bzh = fmul <4 x float> %i.bxe, %i.bzg
  %i.bzi = insertelement <4 x float> poison, float %i.bze, i64 0
  %i.bzj = shufflevector <4 x float> %i.bzi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bzk = fmul <4 x float> %i.bap, %i.bzj
  %i.bzl = fadd <4 x float> %i.bzh, %i.bzk
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit180.sink.split

bb.ba:                                            ; preds = %bb.av
  %i.bzm = load <4 x float>, ptr %i.bag, align 16
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit180.sink.split

_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit180.sink.split: ; preds = %bb.ba, %bb.at, %bb.as, %bb.az
  %.sink1109 = phi <4 x float> [ %i.bzl, %bb.az ], [ %i.bwf, %bb.as ], [ %i.bwo, %bb.at ], [ %i.bzm, %bb.ba ]
  store <4 x float> %.sink1109, ptr %i.baq, align 16
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit180

_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit180: ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit180.sink.split, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i134, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.bzn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.bzo = getelementptr inbounds nuw i8, ptr %1, i64 6656
  %i.bzp = getelementptr inbounds nuw i8, ptr %1, i64 8320 ; 2 uses
  %i.bzq = getelementptr inbounds nuw i8, ptr %0, i64 1860 ; 7 uses
  %i.bzr = load float, ptr %i.bzq, align 4
  %i.bzs = fmul float %i.bzr, 5.000000e-01
  %i.bzt = getelementptr inbounds nuw i8, ptr %1, i64 8516 ; 4 uses
  store float %i.bzs, ptr %i.bzt, align 4
  %i.bzu = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.bzv = load float, ptr %i.bzu, align 64
  %i.bzw = fmul float %i.bzv, 5.000000e-01
  %i.bzx = getelementptr inbounds nuw i8, ptr %1, i64 8512
  store float %i.bzw, ptr %i.bzx, align 64
  %i.bzy = getelementptr inbounds nuw i8, ptr %0, i64 1668 ; 5 uses
  %i.bzz = load i32, ptr %i.bzy, align 4
  %i.caa = getelementptr inbounds nuw i8, ptr %1, i64 8324
  store i32 %i.bzz, ptr %i.caa, align 4
  %i.cab = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 4 uses
  %i.cac = load i32, ptr %i.cab, align 8
  %i.cad = getelementptr inbounds nuw i8, ptr %1, i64 8328 ; 3 uses
  store i32 %i.cac, ptr %i.cad, align 8
  %i.cae = load i32, ptr %i.bzn, align 64
  store i32 %i.cae, ptr %i.bzp, align 64
  %i.caf = getelementptr inbounds nuw i8, ptr %0, i64 1676 ; 2 uses
  %i.cag = load float, ptr %i.caf, align 4
  %i.cah = fadd float %i.cag, -1.000000e+00       ; 2 uses
  %i.cai = fcmp ogt float %i.cah, 0.000000e+00
  %i.caj = select i1 %i.cai, float %i.cah, float 0.000000e+00
  %i.cak = getelementptr inbounds nuw i8, ptr %1, i64 8332
  store float %i.caj, ptr %i.cak, align 4
  %i.cal = getelementptr inbounds nuw i8, ptr %0, i64 1864 ; 3 uses
  %i.cam = load i32, ptr %i.cal, align 8
  %i.can = getelementptr inbounds nuw i8, ptr %1, i64 8520
  store i32 %i.cam, ptr %i.can, align 8
  %i.cao = getelementptr inbounds nuw i8, ptr %0, i64 1868
  %i.cap = load i32, ptr %i.cao, align 4
  %i.caq = getelementptr inbounds nuw i8, ptr %1, i64 8524 ; 5 uses
  store i32 %i.cap, ptr %i.caq, align 4
  %i.car = load i32, ptr %i.bzy, align 4          ; 2 uses
  %.not885 = icmp eq i32 %i.car, 0
  br i1 %.not885, label %._crit_edge831.thread, label %.lr.ph830

._crit_edge831.thread:                            ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit180
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  br label %._crit_edge844

.lr.ph830:                                        ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit180
  %i.cas = zext i32 %i.car to i64
  %i.cat = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.cau = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.cav = getelementptr inbounds nuw i8, ptr %1, i64 8576 ; 2 uses
  %i.caw = getelementptr inbounds nuw i8, ptr %1, i64 9088 ; 34 uses
  %i.cax = getelementptr inbounds nuw i8, ptr %1, i64 8592
  %i.cay = getelementptr inbounds nuw i8, ptr %1, i64 8608
  %i.caz = getelementptr inbounds nuw i8, ptr %1, i64 8624
  %i.cba = getelementptr inbounds nuw i8, ptr %1, i64 8640
end_hunk_3
begin_hunk_4_@_ZNK6embree18CatmullClarkPatchTINS_6Vec3faES1_E9subdivideERNS_7array_tIS2_Lm4EEE:bb.a
  %i.cik = getelementptr inbounds nuw i8, ptr %1, i64 9056
  %i.cil = getelementptr inbounds nuw i8, ptr %1, i64 9072
  br label %bb.bd

bb.bb:                                            ; preds = %.lr.ph830, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i122
  %i.cim = phi i64 [ %i.cas, %.lr.ph830 ], [ %i.cnj, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i122 ] ; 2 uses
  %.089.i75829 = phi i64 [ 0, %.lr.ph830 ], [ %i.cnh, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i122 ] ; 2 uses
  %.sroa.0561.0828 = phi <4 x float> [ zeroinitializer, %.lr.ph830 ], [ %i.cng, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i122 ]
  %i.cin = load i32, ptr %i.cal, align 8
  %i.cio = zext i32 %i.cin to i64
  %i.cip = add nuw nsw i64 %.089.i75829, %i.cio   ; 2 uses
  %.not109.i114 = icmp samesign ult i64 %i.cip, %i.cim
  %i.ciq = select i1 %.not109.i114, i64 0, i64 %i.cim
  %spec.select.i115 = sub nuw nsw i64 %i.cip, %i.ciq
  %i.cir = shl nuw nsw i64 %spec.select.i115, 1   ; 4 uses
  %i.cis = load i32, ptr %i.cab, align 8
  %i.cit = zext i32 %i.cis to i64                 ; 6 uses
  %.not110.i116 = icmp samesign ult i64 %i.cir, %i.cit
  %i.ciu = select i1 %.not110.i116, i64 0, i64 %i.cit
  %.087.i117 = sub nuw nsw i64 %i.cir, %i.ciu
  %i.civ = or disjoint i64 %i.cir, 1              ; 2 uses
  %.not111.i118 = icmp samesign ult i64 %i.civ, %i.cit
  %i.ciw = select i1 %.not111.i118, i64 0, i64 %i.cit
  %.086.i119 = sub nuw nsw i64 %i.civ, %i.ciw     ; 3 uses
  %i.cix = add nuw nsw i64 %i.cir, 2              ; 2 uses
  %.not112.i120 = icmp samesign ult i64 %i.cix, %i.cit
  %i.ciy = select i1 %.not112.i120, i64 0, i64 %i.cit
  %.085.i121 = sub nuw nsw i64 %i.cix, %i.ciy
  %i.ciz = load ptr, ptr %i.cau, align 64         ; 3 uses
  %i.cja = getelementptr inbounds nuw [16 x i8], ptr %i.ciz, i64 %.086.i119
  %i.cjb = load <4 x float>, ptr %i.cat, align 16, !noalias !1077
  %i.cjc = load <4 x float>, ptr %i.cja, align 16, !noalias !1077
  %i.cjd = fadd <4 x float> %i.cjb, %i.cjc
  %i.cje = getelementptr inbounds nuw [16 x i8], ptr %i.ciz, i64 %.087.i117
  %i.cjf = getelementptr inbounds nuw [16 x i8], ptr %i.ciz, i64 %.085.i121
  %i.cjg = load <4 x float>, ptr %i.cje, align 16, !noalias !1078
  %i.cjh = load <4 x float>, ptr %i.cjf, align 16, !noalias !1078
  %i.cji = fadd <4 x float> %i.cjg, %i.cjh
  %i.cjj = fadd <4 x float> %i.cjd, %i.cji
  %i.cjk = fmul <4 x float> %i.cjj, splat (float 2.500000e-01) ; 2 uses
  %i.cjl = icmp samesign ult i64 %.086.i119, 32
  %.pre950 = load ptr, ptr %i.caw, align 64       ; 3 uses
  br i1 %i.cjl, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i122, label %bb.bc, !prof !11

bb.bc:                                            ; preds = %bb.bb
  %i.cjm = icmp eq ptr %.pre950, %i.cav
  br i1 %i.cjm, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i122.loopexit, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i122, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i122.loopexit: ; preds = %bb.bc
  %i.cjn = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.cjn, ptr %i.caw, align 64
  %i.cjo = load <4 x float>, ptr %i.cav, align 64
  store <4 x float> %i.cjo, ptr %i.cjn, align 16
  %i.cjp = load ptr, ptr %i.caw, align 64
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cjp, i64 16
  %i.cjr = load <4 x float>, ptr %i.cax, align 16
  store <4 x float> %i.cjr, ptr %i.cjq, align 16
  %i.cjs = load ptr, ptr %i.caw, align 64
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cjs, i64 32
  %i.cju = load <4 x float>, ptr %i.cay, align 32
  store <4 x float> %i.cju, ptr %i.cjt, align 16
  %i.cjv = load ptr, ptr %i.caw, align 64
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cjv, i64 48
  %i.cjx = load <4 x float>, ptr %i.caz, align 16
  store <4 x float> %i.cjx, ptr %i.cjw, align 16
  %i.cjy = load ptr, ptr %i.caw, align 64
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cjy, i64 64
  %i.cka = load <4 x float>, ptr %i.cba, align 64
  store <4 x float> %i.cka, ptr %i.cjz, align 16
  %i.ckb = load ptr, ptr %i.caw, align 64
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.ckb, i64 80
  %i.ckd = load <4 x float>, ptr %i.cbb, align 16
  store <4 x float> %i.ckd, ptr %i.ckc, align 16
  %i.cke = load ptr, ptr %i.caw, align 64
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cke, i64 96
  %i.ckg = load <4 x float>, ptr %i.cbc, align 32
  store <4 x float> %i.ckg, ptr %i.ckf, align 16
  %i.ckh = load ptr, ptr %i.caw, align 64
  %i.cki = getelementptr inbounds nuw i8, ptr %i.ckh, i64 112
  %i.ckj = load <4 x float>, ptr %i.cbd, align 16
  store <4 x float> %i.ckj, ptr %i.cki, align 16
  %i.ckk = load ptr, ptr %i.caw, align 64
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.ckk, i64 128
  %i.ckm = load <4 x float>, ptr %i.cbe, align 64
  store <4 x float> %i.ckm, ptr %i.ckl, align 16
  %i.ckn = load ptr, ptr %i.caw, align 64
  %i.cko = getelementptr inbounds nuw i8, ptr %i.ckn, i64 144
  %i.ckp = load <4 x float>, ptr %i.cbf, align 16
  store <4 x float> %i.ckp, ptr %i.cko, align 16
  %i.ckq = load ptr, ptr %i.caw, align 64
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ckq, i64 160
  %i.cks = load <4 x float>, ptr %i.cbg, align 32
  store <4 x float> %i.cks, ptr %i.ckr, align 16
  %i.ckt = load ptr, ptr %i.caw, align 64
  %i.cku = getelementptr inbounds nuw i8, ptr %i.ckt, i64 176
  %i.ckv = load <4 x float>, ptr %i.cbh, align 16
  store <4 x float> %i.ckv, ptr %i.cku, align 16
  %i.ckw = load ptr, ptr %i.caw, align 64
  %i.ckx = getelementptr inbounds nuw i8, ptr %i.ckw, i64 192
  %i.cky = load <4 x float>, ptr %i.cbi, align 64
  store <4 x float> %i.cky, ptr %i.ckx, align 16
  %i.ckz = load ptr, ptr %i.caw, align 64
  %i.cla = getelementptr inbounds nuw i8, ptr %i.ckz, i64 208
  %i.clb = load <4 x float>, ptr %i.cbj, align 16
  store <4 x float> %i.clb, ptr %i.cla, align 16
  %i.clc = load ptr, ptr %i.caw, align 64
  %i.cld = getelementptr inbounds nuw i8, ptr %i.clc, i64 224
  %i.cle = load <4 x float>, ptr %i.cbk, align 32
  store <4 x float> %i.cle, ptr %i.cld, align 16
  %i.clf = load ptr, ptr %i.caw, align 64
  %i.clg = getelementptr inbounds nuw i8, ptr %i.clf, i64 240
  %i.clh = load <4 x float>, ptr %i.cbl, align 16
  store <4 x float> %i.clh, ptr %i.clg, align 16
  %i.cli = load ptr, ptr %i.caw, align 64
  %i.clj = getelementptr inbounds nuw i8, ptr %i.cli, i64 256
  %i.clk = load <4 x float>, ptr %i.cbm, align 64
  store <4 x float> %i.clk, ptr %i.clj, align 16
  %i.cll = load ptr, ptr %i.caw, align 64
  %i.clm = getelementptr inbounds nuw i8, ptr %i.cll, i64 272
  %i.cln = load <4 x float>, ptr %i.cbn, align 16
  store <4 x float> %i.cln, ptr %i.clm, align 16
  %i.clo = load ptr, ptr %i.caw, align 64
  %i.clp = getelementptr inbounds nuw i8, ptr %i.clo, i64 288
  %i.clq = load <4 x float>, ptr %i.cbo, align 32
  store <4 x float> %i.clq, ptr %i.clp, align 16
  %i.clr = load ptr, ptr %i.caw, align 64
  %i.cls = getelementptr inbounds nuw i8, ptr %i.clr, i64 304
  %i.clt = load <4 x float>, ptr %i.cbp, align 16
  store <4 x float> %i.clt, ptr %i.cls, align 16
  %i.clu = load ptr, ptr %i.caw, align 64
  %i.clv = getelementptr inbounds nuw i8, ptr %i.clu, i64 320
  %i.clw = load <4 x float>, ptr %i.cbq, align 64
  store <4 x float> %i.clw, ptr %i.clv, align 16
  %i.clx = load ptr, ptr %i.caw, align 64
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clx, i64 336
  %i.clz = load <4 x float>, ptr %i.cbr, align 16
  store <4 x float> %i.clz, ptr %i.cly, align 16
  %i.cma = load ptr, ptr %i.caw, align 64
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cma, i64 352
  %i.cmc = load <4 x float>, ptr %i.cbs, align 32
  store <4 x float> %i.cmc, ptr %i.cmb, align 16
  %i.cmd = load ptr, ptr %i.caw, align 64
  %i.cme = getelementptr inbounds nuw i8, ptr %i.cmd, i64 368
  %i.cmf = load <4 x float>, ptr %i.cbt, align 16
  store <4 x float> %i.cmf, ptr %i.cme, align 16
  %i.cmg = load ptr, ptr %i.caw, align 64
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.cmg, i64 384
  %i.cmi = load <4 x float>, ptr %i.cbu, align 64
  store <4 x float> %i.cmi, ptr %i.cmh, align 16
  %i.cmj = load ptr, ptr %i.caw, align 64
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.cmj, i64 400
  %i.cml = load <4 x float>, ptr %i.cbv, align 16
  store <4 x float> %i.cml, ptr %i.cmk, align 16
  %i.cmm = load ptr, ptr %i.caw, align 64
  %i.cmn = getelementptr inbounds nuw i8, ptr %i.cmm, i64 416
  %i.cmo = load <4 x float>, ptr %i.cbw, align 32
  store <4 x float> %i.cmo, ptr %i.cmn, align 16
  %i.cmp = load ptr, ptr %i.caw, align 64
  %i.cmq = getelementptr inbounds nuw i8, ptr %i.cmp, i64 432
  %i.cmr = load <4 x float>, ptr %i.cbx, align 16
  store <4 x float> %i.cmr, ptr %i.cmq, align 16
  %i.cms = load ptr, ptr %i.caw, align 64
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.cms, i64 448
  %i.cmu = load <4 x float>, ptr %i.cby, align 64
  store <4 x float> %i.cmu, ptr %i.cmt, align 16
  %i.cmv = load ptr, ptr %i.caw, align 64
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cmv, i64 464
  %i.cmx = load <4 x float>, ptr %i.cbz, align 16
  store <4 x float> %i.cmx, ptr %i.cmw, align 16
  %i.cmy = load ptr, ptr %i.caw, align 64
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmy, i64 480
  %i.cna = load <4 x float>, ptr %i.cca, align 32
  store <4 x float> %i.cna, ptr %i.cmz, align 16
  %i.cnb = load ptr, ptr %i.caw, align 64
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cnb, i64 496
  %i.cnd = load <4 x float>, ptr %i.ccb, align 16
  store <4 x float> %i.cnd, ptr %i.cnc, align 16
  %.pre949 = load ptr, ptr %i.caw, align 64
  br label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i122

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i122: ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i122.loopexit, %bb.bc, %bb.bb
  %i.cne = phi ptr [ %.pre949, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i122.loopexit ], [ %.pre950, %bb.bc ], [ %.pre950, %bb.bb ]
  %i.cnf = getelementptr inbounds nuw [16 x i8], ptr %i.cne, i64 %.086.i119
  store <4 x float> %i.cjk, ptr %i.cnf, align 16
  %i.cng = fadd <4 x float> %.sroa.0561.0828, %i.cjk ; 3 uses
  %i.cnh = add nuw nsw i64 %.089.i75829, 1        ; 2 uses
  %i.cni = load i32, ptr %i.bzy, align 4          ; 3 uses
  %i.cnj = zext i32 %i.cni to i64                 ; 2 uses
  %i.cnk = icmp samesign ult i64 %i.cnh, %i.cnj
  br i1 %i.cnk, label %bb.bb, label %._crit_edge831, !llvm.loop !965

._crit_edge844.loopexit:                          ; preds = %bb.bq
  %i.cnl = uitofp i32 %i.djj to float
  br label %._crit_edge844

._crit_edge844:                                   ; preds = %._crit_edge831.thread, %._crit_edge844.loopexit, %._crit_edge831
  %.sroa.0561.1.lcssa = phi <4 x float> [ %i.cng, %._crit_edge831 ], [ %i.cxj, %._crit_edge844.loopexit ], [ zeroinitializer, %._crit_edge831.thread ]
  %.084.i76.lcssa = phi i64 [ 0, %._crit_edge831 ], [ %.1.i90, %._crit_edge844.loopexit ], [ 0, %._crit_edge831.thread ] ; 2 uses
  %.lcssa781 = phi float [ 0.000000e+00, %._crit_edge831 ], [ %i.cnl, %._crit_edge844.loopexit ], [ 0.000000e+00, %._crit_edge831.thread ] ; 2 uses
  %i.cnm = fdiv float 1.000000e+00, %.lcssa781
  %i.cnn = fadd nnan float %.lcssa781, -2.000000e+00
  %i.cno = getelementptr inbounds nuw i8, ptr %0, i64 1872 ; 6 uses
  %i.cnp = insertelement <4 x float> poison, float %i.cnn, i64 0
  %i.cnq = shufflevector <4 x float> %i.cnp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnr = load <4 x float>, ptr %i.cno, align 16, !noalias !1079
  %i.cns = fmul <4 x float> %i.cnq, %i.cnr
  %i.cnt = insertelement <4 x float> poison, float %i.cnm, i64 0
  %i.cnu = shufflevector <4 x float> %i.cnt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cnv = fmul <4 x float> %.sroa.0561.1.lcssa, %i.cnu
  %i.cnw = fadd <4 x float> %i.cnv, %i.cns
  %i.cnx = fmul <4 x float> %i.cnu, %i.cnw        ; 3 uses
  %i.cny = getelementptr inbounds nuw i8, ptr %1, i64 8528 ; 8 uses
  store <4 x float> %i.cnx, ptr %i.cny, align 16
  %i.cnz = load float, ptr %i.caf, align 4        ; 4 uses
  %i.coa = fcmp ogt float %i.cnz, 0.000000e+00
  br i1 %i.coa, label %bb.br, label %bb.bu, !prof !10

bb.bd:                                            ; preds = %.lr.ph843, %bb.bq
  %i.cob = phi i64 [ %i.ccc, %.lr.ph843 ], [ %i.djk, %bb.bq ] ; 2 uses
  %.083.i77841 = phi i64 [ 0, %.lr.ph843 ], [ %i.dji, %bb.bq ] ; 2 uses
  %.084.i76840 = phi i64 [ 0, %.lr.ph843 ], [ %.1.i90, %bb.bq ] ; 5 uses
  %.sroa.0561.1839 = phi <4 x float> [ %i.cng, %.lr.ph843 ], [ %i.cxj, %bb.bq ]
  %i.coc = load i32, ptr %i.cal, align 8
  %i.cod = zext i32 %i.coc to i64
  %i.coe = add nuw nsw i64 %.083.i77841, %i.cod   ; 3 uses
  %.not.i84 = icmp samesign ult i64 %i.coe, %i.cob
  %i.cof = select i1 %.not.i84, i64 0, i64 %i.cob ; 2 uses
  %spec.select113.i85 = sub nuw nsw i64 %i.coe, %i.cof ; 6 uses
  %i.cog = load ptr, ptr %i.ccd, align 64
  %i.coh = getelementptr inbounds nuw [4 x i8], ptr %i.cog, i64 %spec.select113.i85
  %i.coi = load float, ptr %i.coh, align 4        ; 5 uses
  %i.coj = fadd float %i.coi, -1.000000e+00       ; 2 uses
  %i.cok = fcmp olt float %i.coj, 0.000000e+00
  %i.col = select i1 %i.cok, float 0.000000e+00, float %i.coj ; 2 uses
  %i.com = icmp samesign ult i64 %spec.select113.i85, 16
  %.pre951 = load ptr, ptr %i.ccf, align 64       ; 3 uses
  br i1 %i.com, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86, label %bb.be, !prof !11

bb.be:                                            ; preds = %bb.bd
  %i.con = icmp eq ptr %.pre951, %i.cce
  br i1 %i.con, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86.thread, !prof !10

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86.thread: ; preds = %bb.be
  %i.coo = getelementptr inbounds nuw [4 x i8], ptr %.pre951, i64 %spec.select113.i85
  store float %i.col, ptr %i.coo, align 4
  br label %bb.bg

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86.loopexit: ; preds = %bb.be
  %i.cop = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20 ; 6 uses
  store ptr %i.cop, ptr %i.ccf, align 64
  %i.coq = load <4 x float>, ptr %i.cce, align 64
  store <4 x float> %i.coq, ptr %i.cop, align 4
  %i.cor = getelementptr inbounds nuw i8, ptr %i.cop, i64 16
  %i.cos = load <4 x float>, ptr %i.cck, align 16
  store <4 x float> %i.cos, ptr %i.cor, align 4
  %i.cot = getelementptr inbounds nuw i8, ptr %i.cop, i64 32
  %i.cou = load <4 x float>, ptr %i.ccl, align 32
  store <4 x float> %i.cou, ptr %i.cot, align 4
  %i.cov = getelementptr inbounds nuw i8, ptr %i.cop, i64 48
  %i.cow = load <4 x float>, ptr %i.ccm, align 16
  store <4 x float> %i.cow, ptr %i.cov, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86: ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86.loopexit, %bb.bd
  %i.cox = phi ptr [ %i.cop, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86.loopexit ], [ %.pre951, %bb.bd ]
  %i.coy = getelementptr inbounds nuw [4 x i8], ptr %i.cox, i64 %spec.select113.i85
  store float %i.col, ptr %i.coy, align 4
  %i.coz = icmp eq i64 %i.coe, %i.cof
  br i1 %i.coz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86
  %i.cpa = load i32, ptr %i.cab, align 8
  %i.cpb = add i32 %i.cpa, -1
  %i.cpc = zext i32 %i.cpb to i64
  br label %bb.bh

bb.bg:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86.thread, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i86
  %i.cpd = shl nuw nsw i64 %spec.select113.i85, 1 ; 2 uses
  %i.cpe = add nsw i64 %i.cpd, -1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.cpf = phi i64 [ 0, %bb.bf ], [ %i.cpd, %bb.bg ] ; 8 uses
  %i.cpg = phi i64 [ %i.cpc, %bb.bf ], [ %i.cpe, %bb.bg ] ; 2 uses
  %i.cph = load ptr, ptr %i.cch, align 64
  %i.cpi = getelementptr inbounds nuw [16 x i8], ptr %i.cph, i64 %i.cpf
  %i.cpj = load <4 x float>, ptr %i.ccg, align 16, !noalias !1080
  %i.cpk = load <4 x float>, ptr %i.cpi, align 16, !noalias !1080
  %i.cpl = fadd <4 x float> %i.cpj, %i.cpk        ; 3 uses
  %i.cpm = icmp ult i64 %i.cpg, 32
  %.pre953 = load ptr, ptr %i.ccj, align 64       ; 3 uses
  br i1 %i.cpm, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i87, label %bb.bi, !prof !11

bb.bi:                                            ; preds = %bb.bh
  %i.cpn = icmp eq ptr %.pre953, %i.cci
  br i1 %i.cpn, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i87.loopexit, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i87, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i87.loopexit: ; preds = %bb.bi
  %i.cpo = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.cpo, ptr %i.ccj, align 64
  %i.cpp = load <4 x float>, ptr %i.cci, align 64
  store <4 x float> %i.cpp, ptr %i.cpo, align 16
  %i.cpq = load ptr, ptr %i.ccj, align 64
  %i.cpr = getelementptr inbounds nuw i8, ptr %i.cpq, i64 16
  %i.cps = load <4 x float>, ptr %i.ccn, align 16
  store <4 x float> %i.cps, ptr %i.cpr, align 16
  %i.cpt = load ptr, ptr %i.ccj, align 64
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cpt, i64 32
  %i.cpv = load <4 x float>, ptr %i.cco, align 32
  store <4 x float> %i.cpv, ptr %i.cpu, align 16
  %i.cpw = load ptr, ptr %i.ccj, align 64
  %i.cpx = getelementptr inbounds nuw i8, ptr %i.cpw, i64 48
  %i.cpy = load <4 x float>, ptr %i.ccp, align 16
  store <4 x float> %i.cpy, ptr %i.cpx, align 16
  %i.cpz = load ptr, ptr %i.ccj, align 64
  %i.cqa = getelementptr inbounds nuw i8, ptr %i.cpz, i64 64
  %i.cqb = load <4 x float>, ptr %i.ccq, align 64
  store <4 x float> %i.cqb, ptr %i.cqa, align 16
  %i.cqc = load ptr, ptr %i.ccj, align 64
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.cqc, i64 80
  %i.cqe = load <4 x float>, ptr %i.ccr, align 16
  store <4 x float> %i.cqe, ptr %i.cqd, align 16
  %i.cqf = load ptr, ptr %i.ccj, align 64
  %i.cqg = getelementptr inbounds nuw i8, ptr %i.cqf, i64 96
  %i.cqh = load <4 x float>, ptr %i.ccs, align 32
  store <4 x float> %i.cqh, ptr %i.cqg, align 16
  %i.cqi = load ptr, ptr %i.ccj, align 64
  %i.cqj = getelementptr inbounds nuw i8, ptr %i.cqi, i64 112
  %i.cqk = load <4 x float>, ptr %i.cct, align 16
  store <4 x float> %i.cqk, ptr %i.cqj, align 16
  %i.cql = load ptr, ptr %i.ccj, align 64
  %i.cqm = getelementptr inbounds nuw i8, ptr %i.cql, i64 128
  %i.cqn = load <4 x float>, ptr %i.ccu, align 64
  store <4 x float> %i.cqn, ptr %i.cqm, align 16
  %i.cqo = load ptr, ptr %i.ccj, align 64
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqo, i64 144
  %i.cqq = load <4 x float>, ptr %i.ccv, align 16
  store <4 x float> %i.cqq, ptr %i.cqp, align 16
  %i.cqr = load ptr, ptr %i.ccj, align 64
  %i.cqs = getelementptr inbounds nuw i8, ptr %i.cqr, i64 160
  %i.cqt = load <4 x float>, ptr %i.ccw, align 32
  store <4 x float> %i.cqt, ptr %i.cqs, align 16
  %i.cqu = load ptr, ptr %i.ccj, align 64
  %i.cqv = getelementptr inbounds nuw i8, ptr %i.cqu, i64 176
  %i.cqw = load <4 x float>, ptr %i.ccx, align 16
  store <4 x float> %i.cqw, ptr %i.cqv, align 16
  %i.cqx = load ptr, ptr %i.ccj, align 64
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cqx, i64 192
  %i.cqz = load <4 x float>, ptr %i.ccy, align 64
  store <4 x float> %i.cqz, ptr %i.cqy, align 16
  %i.cra = load ptr, ptr %i.ccj, align 64
  %i.crb = getelementptr inbounds nuw i8, ptr %i.cra, i64 208
  %i.crc = load <4 x float>, ptr %i.ccz, align 16
  store <4 x float> %i.crc, ptr %i.crb, align 16
  %i.crd = load ptr, ptr %i.ccj, align 64
  %i.cre = getelementptr inbounds nuw i8, ptr %i.crd, i64 224
  %i.crf = load <4 x float>, ptr %i.cda, align 32
  store <4 x float> %i.crf, ptr %i.cre, align 16
  %i.crg = load ptr, ptr %i.ccj, align 64
  %i.crh = getelementptr inbounds nuw i8, ptr %i.crg, i64 240
  %i.cri = load <4 x float>, ptr %i.cdb, align 16
  store <4 x float> %i.cri, ptr %i.crh, align 16
  %i.crj = load ptr, ptr %i.ccj, align 64
  %i.crk = getelementptr inbounds nuw i8, ptr %i.crj, i64 256
  %i.crl = load <4 x float>, ptr %i.cdc, align 64
  store <4 x float> %i.crl, ptr %i.crk, align 16
  %i.crm = load ptr, ptr %i.ccj, align 64
  %i.crn = getelementptr inbounds nuw i8, ptr %i.crm, i64 272
  %i.cro = load <4 x float>, ptr %i.cdd, align 16
  store <4 x float> %i.cro, ptr %i.crn, align 16
  %i.crp = load ptr, ptr %i.ccj, align 64
  %i.crq = getelementptr inbounds nuw i8, ptr %i.crp, i64 288
  %i.crr = load <4 x float>, ptr %i.cde, align 32
  store <4 x float> %i.crr, ptr %i.crq, align 16
  %i.crs = load ptr, ptr %i.ccj, align 64
  %i.crt = getelementptr inbounds nuw i8, ptr %i.crs, i64 304
  %i.cru = load <4 x float>, ptr %i.cdf, align 16
  store <4 x float> %i.cru, ptr %i.crt, align 16
  %i.crv = load ptr, ptr %i.ccj, align 64
  %i.crw = getelementptr inbounds nuw i8, ptr %i.crv, i64 320
  %i.crx = load <4 x float>, ptr %i.cdg, align 64
  store <4 x float> %i.crx, ptr %i.crw, align 16
  %i.cry = load ptr, ptr %i.ccj, align 64
  %i.crz = getelementptr inbounds nuw i8, ptr %i.cry, i64 336
  %i.csa = load <4 x float>, ptr %i.cdh, align 16
  store <4 x float> %i.csa, ptr %i.crz, align 16
  %i.csb = load ptr, ptr %i.ccj, align 64
  %i.csc = getelementptr inbounds nuw i8, ptr %i.csb, i64 352
  %i.csd = load <4 x float>, ptr %i.cdi, align 32
  store <4 x float> %i.csd, ptr %i.csc, align 16
  %i.cse = load ptr, ptr %i.ccj, align 64
  %i.csf = getelementptr inbounds nuw i8, ptr %i.cse, i64 368
  %i.csg = load <4 x float>, ptr %i.cdj, align 16
  store <4 x float> %i.csg, ptr %i.csf, align 16
  %i.csh = load ptr, ptr %i.ccj, align 64
  %i.csi = getelementptr inbounds nuw i8, ptr %i.csh, i64 384
  %i.csj = load <4 x float>, ptr %i.cdk, align 64
  store <4 x float> %i.csj, ptr %i.csi, align 16
  %i.csk = load ptr, ptr %i.ccj, align 64
  %i.csl = getelementptr inbounds nuw i8, ptr %i.csk, i64 400
  %i.csm = load <4 x float>, ptr %i.cdl, align 16
end_hunk_4
begin_hunk_5_@_ZNK6embree18CatmullClarkPatchTINS_6Vec3faES1_E9subdivideERNS_7array_tIS2_Lm4EEE:bb.a
  %i.czz = load ptr, ptr %i.ccj, align 64
  %i.daa = getelementptr inbounds nuw i8, ptr %i.czz, i64 336
  %i.dab = load <4 x float>, ptr %i.cfr, align 16
  store <4 x float> %i.dab, ptr %i.daa, align 16
  %i.dac = load ptr, ptr %i.ccj, align 64
  %i.dad = getelementptr inbounds nuw i8, ptr %i.dac, i64 352
  %i.dae = load <4 x float>, ptr %i.cfs, align 32
  store <4 x float> %i.dae, ptr %i.dad, align 16
  %i.daf = load ptr, ptr %i.ccj, align 64
  %i.dag = getelementptr inbounds nuw i8, ptr %i.daf, i64 368
  %i.dah = load <4 x float>, ptr %i.cft, align 16
  store <4 x float> %i.dah, ptr %i.dag, align 16
  %i.dai = load ptr, ptr %i.ccj, align 64
  %i.daj = getelementptr inbounds nuw i8, ptr %i.dai, i64 384
  %i.dak = load <4 x float>, ptr %i.cfu, align 64
  store <4 x float> %i.dak, ptr %i.daj, align 16
  %i.dal = load ptr, ptr %i.ccj, align 64
  %i.dam = getelementptr inbounds nuw i8, ptr %i.dal, i64 400
  %i.dan = load <4 x float>, ptr %i.cfv, align 16
  store <4 x float> %i.dan, ptr %i.dam, align 16
  %i.dao = load ptr, ptr %i.ccj, align 64
  %i.dap = getelementptr inbounds nuw i8, ptr %i.dao, i64 416
  %i.daq = load <4 x float>, ptr %i.cfw, align 32
  store <4 x float> %i.daq, ptr %i.dap, align 16
  %i.dar = load ptr, ptr %i.ccj, align 64
  %i.das = getelementptr inbounds nuw i8, ptr %i.dar, i64 432
  %i.dat = load <4 x float>, ptr %i.cfx, align 16
  store <4 x float> %i.dat, ptr %i.das, align 16
  %i.dau = load ptr, ptr %i.ccj, align 64
  %i.dav = getelementptr inbounds nuw i8, ptr %i.dau, i64 448
  %i.daw = load <4 x float>, ptr %i.cfy, align 64
  store <4 x float> %i.daw, ptr %i.dav, align 16
  %i.dax = load ptr, ptr %i.ccj, align 64
  %i.day = getelementptr inbounds nuw i8, ptr %i.dax, i64 464
  %i.daz = load <4 x float>, ptr %i.cfz, align 16
  store <4 x float> %i.daz, ptr %i.day, align 16
  %i.dba = load ptr, ptr %i.ccj, align 64
  %i.dbb = getelementptr inbounds nuw i8, ptr %i.dba, i64 480
  %i.dbc = load <4 x float>, ptr %i.cga, align 32
  store <4 x float> %i.dbc, ptr %i.dbb, align 16
  %i.dbd = load ptr, ptr %i.ccj, align 64
  %i.dbe = getelementptr inbounds nuw i8, ptr %i.dbd, i64 496
  %i.dbf = load <4 x float>, ptr %i.cgb, align 16
  store <4 x float> %i.dbf, ptr %i.dbe, align 16
  br label %.sink.split1110.sink.split

bb.bm:                                            ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit128.i88
  %i.dbg = add nuw nsw i64 %.084.i76840, 1        ; 4 uses
  %i.dbh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.084.i76840
  store i64 %spec.select113.i85, ptr %i.dbh, align 8
  %i.dbi = fmul <4 x float> %i.cpl, splat (float 5.000000e-01) ; 2 uses
  %i.dbj = icmp samesign ult i64 %i.cpf, 32       ; 2 uses
  br i1 %i.dbj, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i95, label %bb.bn, !prof !11

bb.bn:                                            ; preds = %bb.bm
  %i.dbk = icmp eq ptr %i.cxa, %i.cci
  br i1 %i.dbk, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i95.loopexit, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i95, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i95.loopexit: ; preds = %bb.bn
  %i.dbl = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.dbl, ptr %i.ccj, align 64
  %i.dbm = load <4 x float>, ptr %i.cci, align 64
  store <4 x float> %i.dbm, ptr %i.dbl, align 16
  %i.dbn = load ptr, ptr %i.ccj, align 64
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.dbn, i64 16
  %i.dbp = load <4 x float>, ptr %i.cgc, align 16
  store <4 x float> %i.dbp, ptr %i.dbo, align 16
  %i.dbq = load ptr, ptr %i.ccj, align 64
  %i.dbr = getelementptr inbounds nuw i8, ptr %i.dbq, i64 32
  %i.dbs = load <4 x float>, ptr %i.cgd, align 32
  store <4 x float> %i.dbs, ptr %i.dbr, align 16
  %i.dbt = load ptr, ptr %i.ccj, align 64
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.dbt, i64 48
  %i.dbv = load <4 x float>, ptr %i.cge, align 16
  store <4 x float> %i.dbv, ptr %i.dbu, align 16
  %i.dbw = load ptr, ptr %i.ccj, align 64
  %i.dbx = getelementptr inbounds nuw i8, ptr %i.dbw, i64 64
  %i.dby = load <4 x float>, ptr %i.cgf, align 64
  store <4 x float> %i.dby, ptr %i.dbx, align 16
  %i.dbz = load ptr, ptr %i.ccj, align 64
  %i.dca = getelementptr inbounds nuw i8, ptr %i.dbz, i64 80
  %i.dcb = load <4 x float>, ptr %i.cgg, align 16
  store <4 x float> %i.dcb, ptr %i.dca, align 16
  %i.dcc = load ptr, ptr %i.ccj, align 64
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.dcc, i64 96
  %i.dce = load <4 x float>, ptr %i.cgh, align 32
  store <4 x float> %i.dce, ptr %i.dcd, align 16
  %i.dcf = load ptr, ptr %i.ccj, align 64
  %i.dcg = getelementptr inbounds nuw i8, ptr %i.dcf, i64 112
  %i.dch = load <4 x float>, ptr %i.cgi, align 16
  store <4 x float> %i.dch, ptr %i.dcg, align 16
  %i.dci = load ptr, ptr %i.ccj, align 64
  %i.dcj = getelementptr inbounds nuw i8, ptr %i.dci, i64 128
  %i.dck = load <4 x float>, ptr %i.cgj, align 64
  store <4 x float> %i.dck, ptr %i.dcj, align 16
  %i.dcl = load ptr, ptr %i.ccj, align 64
  %i.dcm = getelementptr inbounds nuw i8, ptr %i.dcl, i64 144
  %i.dcn = load <4 x float>, ptr %i.cgk, align 16
  store <4 x float> %i.dcn, ptr %i.dcm, align 16
  %i.dco = load ptr, ptr %i.ccj, align 64
  %i.dcp = getelementptr inbounds nuw i8, ptr %i.dco, i64 160
  %i.dcq = load <4 x float>, ptr %i.cgl, align 32
  store <4 x float> %i.dcq, ptr %i.dcp, align 16
  %i.dcr = load ptr, ptr %i.ccj, align 64
  %i.dcs = getelementptr inbounds nuw i8, ptr %i.dcr, i64 176
  %i.dct = load <4 x float>, ptr %i.cgm, align 16
  store <4 x float> %i.dct, ptr %i.dcs, align 16
  %i.dcu = load ptr, ptr %i.ccj, align 64
  %i.dcv = getelementptr inbounds nuw i8, ptr %i.dcu, i64 192
  %i.dcw = load <4 x float>, ptr %i.cgn, align 64
  store <4 x float> %i.dcw, ptr %i.dcv, align 16
  %i.dcx = load ptr, ptr %i.ccj, align 64
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.dcx, i64 208
  %i.dcz = load <4 x float>, ptr %i.cgo, align 16
  store <4 x float> %i.dcz, ptr %i.dcy, align 16
  %i.dda = load ptr, ptr %i.ccj, align 64
  %i.ddb = getelementptr inbounds nuw i8, ptr %i.dda, i64 224
  %i.ddc = load <4 x float>, ptr %i.cgp, align 32
  store <4 x float> %i.ddc, ptr %i.ddb, align 16
  %i.ddd = load ptr, ptr %i.ccj, align 64
  %i.dde = getelementptr inbounds nuw i8, ptr %i.ddd, i64 240
  %i.ddf = load <4 x float>, ptr %i.cgq, align 16
  store <4 x float> %i.ddf, ptr %i.dde, align 16
  %i.ddg = load ptr, ptr %i.ccj, align 64
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.ddg, i64 256
  %i.ddi = load <4 x float>, ptr %i.cgr, align 64
  store <4 x float> %i.ddi, ptr %i.ddh, align 16
  %i.ddj = load ptr, ptr %i.ccj, align 64
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.ddj, i64 272
  %i.ddl = load <4 x float>, ptr %i.cgs, align 16
  store <4 x float> %i.ddl, ptr %i.ddk, align 16
  %i.ddm = load ptr, ptr %i.ccj, align 64
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.ddm, i64 288
  %i.ddo = load <4 x float>, ptr %i.cgt, align 32
  store <4 x float> %i.ddo, ptr %i.ddn, align 16
  %i.ddp = load ptr, ptr %i.ccj, align 64
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.ddp, i64 304
  %i.ddr = load <4 x float>, ptr %i.cgu, align 16
  store <4 x float> %i.ddr, ptr %i.ddq, align 16
  %i.dds = load ptr, ptr %i.ccj, align 64
  %i.ddt = getelementptr inbounds nuw i8, ptr %i.dds, i64 320
  %i.ddu = load <4 x float>, ptr %i.cgv, align 64
  store <4 x float> %i.ddu, ptr %i.ddt, align 16
  %i.ddv = load ptr, ptr %i.ccj, align 64
  %i.ddw = getelementptr inbounds nuw i8, ptr %i.ddv, i64 336
  %i.ddx = load <4 x float>, ptr %i.cgw, align 16
  store <4 x float> %i.ddx, ptr %i.ddw, align 16
  %i.ddy = load ptr, ptr %i.ccj, align 64
  %i.ddz = getelementptr inbounds nuw i8, ptr %i.ddy, i64 352
  %i.dea = load <4 x float>, ptr %i.cgx, align 32
  store <4 x float> %i.dea, ptr %i.ddz, align 16
  %i.deb = load ptr, ptr %i.ccj, align 64
  %i.dec = getelementptr inbounds nuw i8, ptr %i.deb, i64 368
  %i.ded = load <4 x float>, ptr %i.cgy, align 16
  store <4 x float> %i.ded, ptr %i.dec, align 16
  %i.dee = load ptr, ptr %i.ccj, align 64
  %i.def = getelementptr inbounds nuw i8, ptr %i.dee, i64 384
  %i.deg = load <4 x float>, ptr %i.cgz, align 64
  store <4 x float> %i.deg, ptr %i.def, align 16
  %i.deh = load ptr, ptr %i.ccj, align 64
  %i.dei = getelementptr inbounds nuw i8, ptr %i.deh, i64 400
  %i.dej = load <4 x float>, ptr %i.cha, align 16
  store <4 x float> %i.dej, ptr %i.dei, align 16
  %i.dek = load ptr, ptr %i.ccj, align 64
  %i.del = getelementptr inbounds nuw i8, ptr %i.dek, i64 416
  %i.dem = load <4 x float>, ptr %i.chb, align 32
  store <4 x float> %i.dem, ptr %i.del, align 16
  %i.den = load ptr, ptr %i.ccj, align 64
  %i.deo = getelementptr inbounds nuw i8, ptr %i.den, i64 432
  %i.dep = load <4 x float>, ptr %i.chc, align 16
  store <4 x float> %i.dep, ptr %i.deo, align 16
  %i.deq = load ptr, ptr %i.ccj, align 64
  %i.der = getelementptr inbounds nuw i8, ptr %i.deq, i64 448
  %i.des = load <4 x float>, ptr %i.chd, align 64
  store <4 x float> %i.des, ptr %i.der, align 16
  %i.det = load ptr, ptr %i.ccj, align 64
  %i.deu = getelementptr inbounds nuw i8, ptr %i.det, i64 464
  %i.dev = load <4 x float>, ptr %i.che, align 16
  store <4 x float> %i.dev, ptr %i.deu, align 16
  %i.dew = load ptr, ptr %i.ccj, align 64
  %i.dex = getelementptr inbounds nuw i8, ptr %i.dew, i64 480
  %i.dey = load <4 x float>, ptr %i.chf, align 32
  store <4 x float> %i.dey, ptr %i.dex, align 16
  %i.dez = load ptr, ptr %i.ccj, align 64
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.dez, i64 496
  %i.dfb = load <4 x float>, ptr %i.chg, align 16
  store <4 x float> %i.dfb, ptr %i.dfa, align 16
  %.pre956 = load ptr, ptr %i.ccj, align 64
  br label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i95

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i95: ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i95.loopexit, %bb.bn, %bb.bm
  %i.dfc = phi ptr [ %.pre956, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i95.loopexit ], [ %i.cxa, %bb.bn ], [ %i.cxa, %bb.bm ]
  %i.dfd = getelementptr inbounds nuw [16 x i8], ptr %i.dfc, i64 %i.cpf
  store <4 x float> %i.dbi, ptr %i.dfd, align 16
  %i.dfe = fcmp olt float %i.coi, 1.000000e+00
  br i1 %i.dfe, label %bb.bo, label %bb.bq, !prof !10

bb.bo:                                            ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i95
  %i.dff = fadd <4 x float> %i.cpl, %i.cxf
  %i.dfg = fmul <4 x float> %i.dff, splat (float 2.500000e-01)
  %i.dfh = fsub nnan float 1.000000e+00, %i.coi
  %i.dfi = insertelement <4 x float> poison, float %i.coi, i64 0
  %i.dfj = shufflevector <4 x float> %i.dfi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dfk = fmul <4 x float> %i.dfj, %i.dbi
  %i.dfl = insertelement <4 x float> poison, float %i.dfh, i64 0
  %i.dfm = shufflevector <4 x float> %i.dfl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dfn = fmul <4 x float> %i.dfm, %i.dfg
  %i.dfo = fadd <4 x float> %i.dfk, %i.dfn        ; 3 uses
  %.pre958 = load ptr, ptr %i.ccj, align 64       ; 3 uses
  br i1 %i.dbj, label %.sink.split1110, label %bb.bp, !prof !11

bb.bp:                                            ; preds = %bb.bo
  %i.dfp = icmp eq ptr %.pre958, %i.cci
  br i1 %i.dfp, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i96.loopexit, label %.sink.split1110, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i96.loopexit: ; preds = %bb.bp
  %i.dfq = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.dfq, ptr %i.ccj, align 64
  %i.dfr = load <4 x float>, ptr %i.cci, align 64
  store <4 x float> %i.dfr, ptr %i.dfq, align 16
  %i.dfs = load ptr, ptr %i.ccj, align 64
  %i.dft = getelementptr inbounds nuw i8, ptr %i.dfs, i64 16
  %i.dfu = load <4 x float>, ptr %i.chh, align 16
  store <4 x float> %i.dfu, ptr %i.dft, align 16
  %i.dfv = load ptr, ptr %i.ccj, align 64
  %i.dfw = getelementptr inbounds nuw i8, ptr %i.dfv, i64 32
  %i.dfx = load <4 x float>, ptr %i.chi, align 32
  store <4 x float> %i.dfx, ptr %i.dfw, align 16
  %i.dfy = load ptr, ptr %i.ccj, align 64
  %i.dfz = getelementptr inbounds nuw i8, ptr %i.dfy, i64 48
  %i.dga = load <4 x float>, ptr %i.chj, align 16
  store <4 x float> %i.dga, ptr %i.dfz, align 16
  %i.dgb = load ptr, ptr %i.ccj, align 64
  %i.dgc = getelementptr inbounds nuw i8, ptr %i.dgb, i64 64
  %i.dgd = load <4 x float>, ptr %i.chk, align 64
  store <4 x float> %i.dgd, ptr %i.dgc, align 16
  %i.dge = load ptr, ptr %i.ccj, align 64
  %i.dgf = getelementptr inbounds nuw i8, ptr %i.dge, i64 80
  %i.dgg = load <4 x float>, ptr %i.chl, align 16
  store <4 x float> %i.dgg, ptr %i.dgf, align 16
  %i.dgh = load ptr, ptr %i.ccj, align 64
  %i.dgi = getelementptr inbounds nuw i8, ptr %i.dgh, i64 96
  %i.dgj = load <4 x float>, ptr %i.chm, align 32
  store <4 x float> %i.dgj, ptr %i.dgi, align 16
  %i.dgk = load ptr, ptr %i.ccj, align 64
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.dgk, i64 112
  %i.dgm = load <4 x float>, ptr %i.chn, align 16
  store <4 x float> %i.dgm, ptr %i.dgl, align 16
  %i.dgn = load ptr, ptr %i.ccj, align 64
  %i.dgo = getelementptr inbounds nuw i8, ptr %i.dgn, i64 128
  %i.dgp = load <4 x float>, ptr %i.cho, align 64
  store <4 x float> %i.dgp, ptr %i.dgo, align 16
  %i.dgq = load ptr, ptr %i.ccj, align 64
  %i.dgr = getelementptr inbounds nuw i8, ptr %i.dgq, i64 144
  %i.dgs = load <4 x float>, ptr %i.chp, align 16
  store <4 x float> %i.dgs, ptr %i.dgr, align 16
  %i.dgt = load ptr, ptr %i.ccj, align 64
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.dgt, i64 160
  %i.dgv = load <4 x float>, ptr %i.chq, align 32
  store <4 x float> %i.dgv, ptr %i.dgu, align 16
  %i.dgw = load ptr, ptr %i.ccj, align 64
  %i.dgx = getelementptr inbounds nuw i8, ptr %i.dgw, i64 176
  %i.dgy = load <4 x float>, ptr %i.chr, align 16
  store <4 x float> %i.dgy, ptr %i.dgx, align 16
  %i.dgz = load ptr, ptr %i.ccj, align 64
  %i.dha = getelementptr inbounds nuw i8, ptr %i.dgz, i64 192
  %i.dhb = load <4 x float>, ptr %i.chs, align 64
  store <4 x float> %i.dhb, ptr %i.dha, align 16
  %i.dhc = load ptr, ptr %i.ccj, align 64
  %i.dhd = getelementptr inbounds nuw i8, ptr %i.dhc, i64 208
  %i.dhe = load <4 x float>, ptr %i.cht, align 16
  store <4 x float> %i.dhe, ptr %i.dhd, align 16
  %i.dhf = load ptr, ptr %i.ccj, align 64
  %i.dhg = getelementptr inbounds nuw i8, ptr %i.dhf, i64 224
  %i.dhh = load <4 x float>, ptr %i.chu, align 32
  store <4 x float> %i.dhh, ptr %i.dhg, align 16
  %i.dhi = load ptr, ptr %i.ccj, align 64
  %i.dhj = getelementptr inbounds nuw i8, ptr %i.dhi, i64 240
  %i.dhk = load <4 x float>, ptr %i.chv, align 16
  store <4 x float> %i.dhk, ptr %i.dhj, align 16
  %i.dhl = load ptr, ptr %i.ccj, align 64
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.dhl, i64 256
  %i.dhn = load <4 x float>, ptr %i.chw, align 64
  store <4 x float> %i.dhn, ptr %i.dhm, align 16
  %i.dho = load ptr, ptr %i.ccj, align 64
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dho, i64 272
  %i.dhq = load <4 x float>, ptr %i.chx, align 16
  store <4 x float> %i.dhq, ptr %i.dhp, align 16
  %i.dhr = load ptr, ptr %i.ccj, align 64
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.dhr, i64 288
  %i.dht = load <4 x float>, ptr %i.chy, align 32
  store <4 x float> %i.dht, ptr %i.dhs, align 16
  %i.dhu = load ptr, ptr %i.ccj, align 64
  %i.dhv = getelementptr inbounds nuw i8, ptr %i.dhu, i64 304
  %i.dhw = load <4 x float>, ptr %i.chz, align 16
  store <4 x float> %i.dhw, ptr %i.dhv, align 16
  %i.dhx = load ptr, ptr %i.ccj, align 64
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.dhx, i64 320
  %i.dhz = load <4 x float>, ptr %i.cia, align 64
  store <4 x float> %i.dhz, ptr %i.dhy, align 16
  %i.dia = load ptr, ptr %i.ccj, align 64
  %i.dib = getelementptr inbounds nuw i8, ptr %i.dia, i64 336
  %i.dic = load <4 x float>, ptr %i.cib, align 16
  store <4 x float> %i.dic, ptr %i.dib, align 16
  %i.did = load ptr, ptr %i.ccj, align 64
  %i.die = getelementptr inbounds nuw i8, ptr %i.did, i64 352
  %i.dif = load <4 x float>, ptr %i.cic, align 32
  store <4 x float> %i.dif, ptr %i.die, align 16
  %i.dig = load ptr, ptr %i.ccj, align 64
  %i.dih = getelementptr inbounds nuw i8, ptr %i.dig, i64 368
  %i.dii = load <4 x float>, ptr %i.cid, align 16
  store <4 x float> %i.dii, ptr %i.dih, align 16
  %i.dij = load ptr, ptr %i.ccj, align 64
  %i.dik = getelementptr inbounds nuw i8, ptr %i.dij, i64 384
  %i.dil = load <4 x float>, ptr %i.cie, align 64
  store <4 x float> %i.dil, ptr %i.dik, align 16
  %i.dim = load ptr, ptr %i.ccj, align 64
  %i.din = getelementptr inbounds nuw i8, ptr %i.dim, i64 400
  %i.dio = load <4 x float>, ptr %i.cif, align 16
  store <4 x float> %i.dio, ptr %i.din, align 16
  %i.dip = load ptr, ptr %i.ccj, align 64
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dip, i64 416
  %i.dir = load <4 x float>, ptr %i.cig, align 32
  store <4 x float> %i.dir, ptr %i.diq, align 16
  %i.dis = load ptr, ptr %i.ccj, align 64
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dis, i64 432
  %i.diu = load <4 x float>, ptr %i.cih, align 16
  store <4 x float> %i.diu, ptr %i.dit, align 16
  %i.div = load ptr, ptr %i.ccj, align 64
  %i.diw = getelementptr inbounds nuw i8, ptr %i.div, i64 448
  %i.dix = load <4 x float>, ptr %i.cii, align 64
  store <4 x float> %i.dix, ptr %i.diw, align 16
  %i.diy = load ptr, ptr %i.ccj, align 64
  %i.diz = getelementptr inbounds nuw i8, ptr %i.diy, i64 464
  %i.dja = load <4 x float>, ptr %i.cij, align 16
  store <4 x float> %i.dja, ptr %i.diz, align 16
  %i.djb = load ptr, ptr %i.ccj, align 64
  %i.djc = getelementptr inbounds nuw i8, ptr %i.djb, i64 480
  %i.djd = load <4 x float>, ptr %i.cik, align 32
  store <4 x float> %i.djd, ptr %i.djc, align 16
  %i.dje = load ptr, ptr %i.ccj, align 64
  %i.djf = getelementptr inbounds nuw i8, ptr %i.dje, i64 496
  %i.djg = load <4 x float>, ptr %i.cil, align 16
  store <4 x float> %i.djg, ptr %i.djf, align 16
  br label %.sink.split1110.sink.split

.sink.split1110.sink.split:                       ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit133.i89.loopexit, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i96.loopexit
  %.sink1111.ph = phi <4 x float> [ %i.dfo, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i96.loopexit ], [ %i.cxm, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit133.i89.loopexit ]
  %.1.i90.ph.ph = phi i64 [ %i.dbg, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i96.loopexit ], [ %.084.i76840, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit133.i89.loopexit ]
  %.pre957 = load ptr, ptr %i.ccj, align 64
  br label %.sink.split1110

.sink.split1110:                                  ; preds = %.sink.split1110.sink.split, %bb.bo, %bb.bp, %bb.bk, %bb.bl
  %.sink1113 = phi ptr [ %i.cxa, %bb.bk ], [ %.pre958, %bb.bp ], [ %i.cxa, %bb.bl ], [ %.pre958, %bb.bo ], [ %.pre957, %.sink.split1110.sink.split ]
  %.sink1111 = phi <4 x float> [ %i.cxm, %bb.bk ], [ %i.dfo, %bb.bp ], [ %i.cxm, %bb.bl ], [ %i.dfo, %bb.bo ], [ %.sink1111.ph, %.sink.split1110.sink.split ]
  %.1.i90.ph = phi i64 [ %.084.i76840, %bb.bk ], [ %i.dbg, %bb.bp ], [ %.084.i76840, %bb.bl ], [ %i.dbg, %bb.bo ], [ %.1.i90.ph.ph, %.sink.split1110.sink.split ]
  %i.djh = getelementptr inbounds nuw [16 x i8], ptr %.sink1113, i64 %i.cpf
  store <4 x float> %.sink1111, ptr %i.djh, align 16
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split1110, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i95
  %.1.i90 = phi i64 [ %i.dbg, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i95 ], [ %.1.i90.ph, %.sink.split1110 ] ; 2 uses
  %i.dji = add nuw nsw i64 %.083.i77841, 1        ; 2 uses
  %i.djj = load i32, ptr %i.bzy, align 4          ; 2 uses
  %i.djk = zext i32 %i.djj to i64                 ; 2 uses
  %i.djl = icmp samesign ult i64 %i.dji, %i.djk
  br i1 %i.djl, label %bb.bd, label %._crit_edge844.loopexit, !llvm.loop !974

bb.br:                                            ; preds = %._crit_edge844
  %i.djm = fcmp ult float %i.cnz, 1.000000e+00
  br i1 %i.djm, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.djn = load <4 x float>, ptr %i.cno, align 16
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit127.sink.split

bb.bt:                                            ; preds = %bb.br
  %i.djo = fsub nnan float 1.000000e+00, %i.cnz
  %i.djp = insertelement <4 x float> poison, float %i.cnz, i64 0
  %i.djq = shufflevector <4 x float> %i.djp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.djr = load <4 x float>, ptr %i.cno, align 16, !noalias !1083
  %i.djs = fmul <4 x float> %i.djq, %i.djr
  %i.djt = insertelement <4 x float> poison, float %i.djo, i64 0
  %i.dju = shufflevector <4 x float> %i.djt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.djv = fmul <4 x float> %i.cnx, %i.dju
  %i.djw = fadd <4 x float> %i.djv, %i.djs
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit127.sink.split

bb.bu:                                            ; preds = %._crit_edge844
  %i.djx = icmp ult i64 %.084.i76.lcssa, 2
  br i1 %i.djx, label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit127, label %bb.bv, !prof !11

bb.bv:                                            ; preds = %bb.bu
  %i.djy = icmp eq i64 %.084.i76.lcssa, 2
  br i1 %i.djy, label %bb.bw, label %bb.ca, !prof !11

bb.bw:                                            ; preds = %bb.bv
  %i.djz = load i64, ptr %4, align 8              ; 4 uses
  %i.dka = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dkb = load i64, ptr %i.dka, align 8          ; 4 uses
  %i.dkc = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.dkd = load ptr, ptr %i.dkc, align 64         ; 2 uses
  %.idx.i78 = shl i64 %i.djz, 5
  %i.dke = getelementptr inbounds nuw i8, ptr %i.dkd, i64 %.idx.i78
  %i.dkf = load <4 x float>, ptr %i.cno, align 16, !noalias !1084
  %i.dkg = fmul <4 x float> %i.dkf, splat (float 6.000000e+00)
  %i.dkh = load <4 x float>, ptr %i.dke, align 16, !noalias !1085
  %i.dki = fadd <4 x float> %i.dkh, %i.dkg
  %.idx108.i79 = shl i64 %i.dkb, 5
  %i.dkj = getelementptr inbounds nuw i8, ptr %i.dkd, i64 %.idx108.i79
  %i.dkk = load <4 x float>, ptr %i.dkj, align 16, !noalias !1086
  %i.dkl = fadd <4 x float> %i.dki, %i.dkk
  %i.dkm = fmul <4 x float> %i.dkl, splat (float 1.250000e-01) ; 2 uses
  store <4 x float> %i.dkm, ptr %i.cny, align 16
  %i.dkn = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.dko = load ptr, ptr %i.dkn, align 64         ; 2 uses
  %i.dkp = getelementptr inbounds nuw [4 x i8], ptr %i.dko, i64 %i.djz
  %i.dkq = load float, ptr %i.dkp, align 4        ; 3 uses
  %i.dkr = getelementptr inbounds nuw [4 x i8], ptr %i.dko, i64 %i.dkb
  %i.dks = load float, ptr %i.dkr, align 4        ; 3 uses
  %i.dkt = tail call float @llvm.fmuladd.f32(float %i.dkq, float 3.000000e+00, float %i.dks)
  %i.dku = tail call float @llvm.fmuladd.f32(float %i.dkt, float 2.500000e-01, float -1.000000e+00) ; 2 uses
  %i.dkv = fcmp olt float %i.dku, 0.000000e+00
  %i.dkw = select i1 %i.dkv, float 0.000000e+00, float %i.dku
  %i.dkx = getelementptr inbounds nuw i8, ptr %1, i64 8384 ; 4 uses
  %i.dky = add i64 %i.djz, 1
  %i.dkz = icmp ult i64 %i.dky, 17
  %.phi.trans.insert959 = getelementptr inbounds nuw i8, ptr %1, i64 8448 ; 2 uses
  %.pre960 = load ptr, ptr %.phi.trans.insert959, align 64 ; 3 uses
  br i1 %i.dkz, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i80, label %bb.bx, !prof !11

bb.bx:                                            ; preds = %bb.bw
  %i.dla = icmp eq ptr %.pre960, %i.dkx
  br i1 %i.dla, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i80.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i80, !prof !10

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i80.loopexit: ; preds = %bb.bx
  %i.dlb = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20 ; 6 uses
  store ptr %i.dlb, ptr %.phi.trans.insert959, align 64
  %i.dlc = load <4 x float>, ptr %i.dkx, align 64
  store <4 x float> %i.dlc, ptr %i.dlb, align 4
  %i.dld = getelementptr inbounds nuw i8, ptr %1, i64 8400
  %i.dle = getelementptr inbounds nuw i8, ptr %i.dlb, i64 16
  %i.dlf = load <4 x float>, ptr %i.dld, align 16
  store <4 x float> %i.dlf, ptr %i.dle, align 4
  %i.dlg = getelementptr inbounds nuw i8, ptr %1, i64 8416
  %i.dlh = getelementptr inbounds nuw i8, ptr %i.dlb, i64 32
  %i.dli = load <4 x float>, ptr %i.dlg, align 32
  store <4 x float> %i.dli, ptr %i.dlh, align 4
  %i.dlj = getelementptr inbounds nuw i8, ptr %1, i64 8432
  %i.dlk = getelementptr inbounds nuw i8, ptr %i.dlb, i64 48
  %i.dll = load <4 x float>, ptr %i.dlj, align 16
  store <4 x float> %i.dll, ptr %i.dlk, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i80

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i80: ; preds = %bb.bw, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i80.loopexit, %bb.bx
  %i.dlm = phi ptr [ %.pre960, %bb.bx ], [ %i.dlb, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i80.loopexit ], [ %.pre960, %bb.bw ]
  %i.dln = getelementptr inbounds nuw i8, ptr %1, i64 8448 ; 2 uses
  %i.dlo = getelementptr inbounds nuw [4 x i8], ptr %i.dlm, i64 %i.djz
  store float %i.dkw, ptr %i.dlo, align 4
  %i.dlp = tail call float @llvm.fmuladd.f32(float %i.dks, float 3.000000e+00, float %i.dkq)
  %i.dlq = tail call float @llvm.fmuladd.f32(float %i.dlp, float 2.500000e-01, float -1.000000e+00) ; 2 uses
  %i.dlr = fcmp olt float %i.dlq, 0.000000e+00
  %i.dls = select i1 %i.dlr, float 0.000000e+00, float %i.dlq
  %i.dlt = add i64 %i.dkb, 1
  %i.dlu = icmp ult i64 %i.dlt, 17
  %.pre961 = load ptr, ptr %i.dln, align 64       ; 3 uses
  br i1 %i.dlu, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i81, label %bb.by, !prof !11

bb.by:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i80
  %i.dlv = icmp eq ptr %.pre961, %i.dkx
  br i1 %i.dlv, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i81.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i81, !prof !10

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i81.loopexit: ; preds = %bb.by
  %i.dlw = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20 ; 6 uses
  store ptr %i.dlw, ptr %i.dln, align 64
  %i.dlx = load <4 x float>, ptr %i.dkx, align 64
  store <4 x float> %i.dlx, ptr %i.dlw, align 4
  %i.dly = getelementptr inbounds nuw i8, ptr %1, i64 8400
  %i.dlz = getelementptr inbounds nuw i8, ptr %i.dlw, i64 16
  %i.dma = load <4 x float>, ptr %i.dly, align 16
  store <4 x float> %i.dma, ptr %i.dlz, align 4
  %i.dmb = getelementptr inbounds nuw i8, ptr %1, i64 8416
  %i.dmc = getelementptr inbounds nuw i8, ptr %i.dlw, i64 32
  %i.dmd = load <4 x float>, ptr %i.dmb, align 32
  store <4 x float> %i.dmd, ptr %i.dmc, align 4
  %i.dme = getelementptr inbounds nuw i8, ptr %1, i64 8432
  %i.dmf = getelementptr inbounds nuw i8, ptr %i.dlw, i64 48
  %i.dmg = load <4 x float>, ptr %i.dme, align 16
  store <4 x float> %i.dmg, ptr %i.dmf, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i81

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i81: ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i81.loopexit, %bb.by, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i80
  %i.dmh = phi ptr [ %i.dlw, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i81.loopexit ], [ %.pre961, %bb.by ], [ %.pre961, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i80 ]
  %i.dmi = getelementptr inbounds nuw [4 x i8], ptr %i.dmh, i64 %i.dkb
  store float %i.dls, ptr %i.dmi, align 4
  %i.dmj = fadd float %i.dkq, %i.dks
  %i.dmk = fmul float %i.dmj, 5.000000e-01        ; 3 uses
  %i.dml = fcmp olt float %i.dmk, 1.000000e+00
  br i1 %i.dml, label %bb.bz, label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit127, !prof !10

bb.bz:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i81
  %i.dmm = fsub nnan float 1.000000e+00, %i.dmk
  %i.dmn = insertelement <4 x float> poison, float %i.dmk, i64 0
  %i.dmo = shufflevector <4 x float> %i.dmn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dmp = fmul <4 x float> %i.dkm, %i.dmo
  %i.dmq = insertelement <4 x float> poison, float %i.dmm, i64 0
  %i.dmr = shufflevector <4 x float> %i.dmq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dms = fmul <4 x float> %i.cnx, %i.dmr
  %i.dmt = fadd <4 x float> %i.dmp, %i.dms
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit127.sink.split

bb.ca:                                            ; preds = %bb.bv
  %i.dmu = load <4 x float>, ptr %i.cno, align 16
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit127.sink.split

_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit127.sink.split: ; preds = %bb.ca, %bb.bt, %bb.bs, %bb.bz
  %.sink1114 = phi <4 x float> [ %i.dmt, %bb.bz ], [ %i.djn, %bb.bs ], [ %i.djw, %bb.bt ], [ %i.dmu, %bb.ca ]
  store <4 x float> %.sink1114, ptr %i.cny, align 16
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit127

_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit127: ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit127.sink.split, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i81, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.dmv = getelementptr inbounds nuw i8, ptr %0, i64 2496 ; 2 uses
  %i.dmw = getelementptr inbounds nuw i8, ptr %1, i64 9984 ; 2 uses
  %i.dmx = getelementptr inbounds nuw i8, ptr %1, i64 12480 ; 2 uses
  %i.dmy = getelementptr inbounds nuw i8, ptr %0, i64 2692 ; 7 uses
  %i.dmz = load float, ptr %i.dmy, align 4
  %i.dna = fmul float %i.dmz, 5.000000e-01
  %i.dnb = getelementptr inbounds nuw i8, ptr %1, i64 12676 ; 4 uses
  store float %i.dna, ptr %i.dnb, align 4
  %i.dnc = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.dnd = load float, ptr %i.dnc, align 64
  %i.dne = fmul float %i.dnd, 5.000000e-01
  %i.dnf = getelementptr inbounds nuw i8, ptr %1, i64 12672
  store float %i.dne, ptr %i.dnf, align 64
  %i.dng = getelementptr inbounds nuw i8, ptr %0, i64 2500 ; 5 uses
  %i.dnh = load i32, ptr %i.dng, align 4
  %i.dni = getelementptr inbounds nuw i8, ptr %1, i64 12484
  store i32 %i.dnh, ptr %i.dni, align 4
  %i.dnj = getelementptr inbounds nuw i8, ptr %0, i64 2504 ; 4 uses
  %i.dnk = load i32, ptr %i.dnj, align 8
  %i.dnl = getelementptr inbounds nuw i8, ptr %1, i64 12488 ; 3 uses
  store i32 %i.dnk, ptr %i.dnl, align 8
  %i.dnm = load i32, ptr %i.dmv, align 64
  store i32 %i.dnm, ptr %i.dmx, align 64
  %i.dnn = getelementptr inbounds nuw i8, ptr %0, i64 2508 ; 2 uses
  %i.dno = load float, ptr %i.dnn, align 4
  %i.dnp = fadd float %i.dno, -1.000000e+00       ; 2 uses
  %i.dnq = fcmp ogt float %i.dnp, 0.000000e+00
  %i.dnr = select i1 %i.dnq, float %i.dnp, float 0.000000e+00
  %i.dns = getelementptr inbounds nuw i8, ptr %1, i64 12492
  store float %i.dnr, ptr %i.dns, align 4
  %i.dnt = getelementptr inbounds nuw i8, ptr %0, i64 2696 ; 3 uses
  %i.dnu = load i32, ptr %i.dnt, align 8
  %i.dnv = getelementptr inbounds nuw i8, ptr %1, i64 12680
  store i32 %i.dnu, ptr %i.dnv, align 8
  %i.dnw = getelementptr inbounds nuw i8, ptr %0, i64 2700
  %i.dnx = load i32, ptr %i.dnw, align 4
  %i.dny = getelementptr inbounds nuw i8, ptr %1, i64 12684 ; 5 uses
  store i32 %i.dnx, ptr %i.dny, align 4
  %i.dnz = load i32, ptr %i.dng, align 4          ; 2 uses
  %.not887 = icmp eq i32 %i.dnz, 0
  br i1 %.not887, label %._crit_edge854.thread, label %.lr.ph853

._crit_edge854.thread:                            ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit127
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  br label %._crit_edge867

.lr.ph853:                                        ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit127
  %i.doa = zext i32 %i.dnz to i64
  %i.dob = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.doc = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %i.dod = getelementptr inbounds nuw i8, ptr %1, i64 12736 ; 2 uses
  %i.doe = getelementptr inbounds nuw i8, ptr %1, i64 13248 ; 34 uses
  %i.dof = getelementptr inbounds nuw i8, ptr %1, i64 12752
  %i.dog = getelementptr inbounds nuw i8, ptr %1, i64 12768
  %i.doh = getelementptr inbounds nuw i8, ptr %1, i64 12784
  %i.doi = getelementptr inbounds nuw i8, ptr %1, i64 12800
end_hunk_5
begin_hunk_6_@_ZNK6embree18CatmullClarkPatchTINS_6Vec3faES1_E9subdivideERNS_7array_tIS2_Lm4EEE:bb.a
  %i.dvs = getelementptr inbounds nuw i8, ptr %1, i64 13216
  %i.dvt = getelementptr inbounds nuw i8, ptr %1, i64 13232
  br label %bb.cd

bb.cb:                                            ; preds = %.lr.ph853, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i
  %i.dvu = phi i64 [ %i.doa, %.lr.ph853 ], [ %i.ear, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i ] ; 2 uses
  %.089.i852 = phi i64 [ 0, %.lr.ph853 ], [ %i.eap, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i ] ; 2 uses
  %.sroa.0504.0851 = phi <4 x float> [ zeroinitializer, %.lr.ph853 ], [ %i.eao, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i ]
  %i.dvv = load i32, ptr %i.dnt, align 8
  %i.dvw = zext i32 %i.dvv to i64
  %i.dvx = add nuw nsw i64 %.089.i852, %i.dvw     ; 2 uses
  %.not109.i = icmp samesign ult i64 %i.dvx, %i.dvu
  %i.dvy = select i1 %.not109.i, i64 0, i64 %i.dvu
  %spec.select.i = sub nuw nsw i64 %i.dvx, %i.dvy
  %i.dvz = shl nuw nsw i64 %spec.select.i, 1      ; 4 uses
  %i.dwa = load i32, ptr %i.dnj, align 8
  %i.dwb = zext i32 %i.dwa to i64                 ; 6 uses
  %.not110.i = icmp samesign ult i64 %i.dvz, %i.dwb
  %i.dwc = select i1 %.not110.i, i64 0, i64 %i.dwb
  %.087.i = sub nuw nsw i64 %i.dvz, %i.dwc
  %i.dwd = or disjoint i64 %i.dvz, 1              ; 2 uses
  %.not111.i = icmp samesign ult i64 %i.dwd, %i.dwb
  %i.dwe = select i1 %.not111.i, i64 0, i64 %i.dwb
  %.086.i = sub nuw nsw i64 %i.dwd, %i.dwe        ; 3 uses
  %i.dwf = add nuw nsw i64 %i.dvz, 2              ; 2 uses
  %.not112.i = icmp samesign ult i64 %i.dwf, %i.dwb
  %i.dwg = select i1 %.not112.i, i64 0, i64 %i.dwb
  %.085.i = sub nuw nsw i64 %i.dwf, %i.dwg
  %i.dwh = load ptr, ptr %i.doc, align 64         ; 3 uses
  %i.dwi = getelementptr inbounds nuw [16 x i8], ptr %i.dwh, i64 %.086.i
  %i.dwj = load <4 x float>, ptr %i.dob, align 16, !noalias !1087
  %i.dwk = load <4 x float>, ptr %i.dwi, align 16, !noalias !1087
  %i.dwl = fadd <4 x float> %i.dwj, %i.dwk
  %i.dwm = getelementptr inbounds nuw [16 x i8], ptr %i.dwh, i64 %.087.i
  %i.dwn = getelementptr inbounds nuw [16 x i8], ptr %i.dwh, i64 %.085.i
  %i.dwo = load <4 x float>, ptr %i.dwm, align 16, !noalias !1088
  %i.dwp = load <4 x float>, ptr %i.dwn, align 16, !noalias !1088
  %i.dwq = fadd <4 x float> %i.dwo, %i.dwp
  %i.dwr = fadd <4 x float> %i.dwl, %i.dwq
  %i.dws = fmul <4 x float> %i.dwr, splat (float 2.500000e-01) ; 2 uses
  %i.dwt = icmp samesign ult i64 %.086.i, 32
  %.pre963 = load ptr, ptr %i.doe, align 64       ; 3 uses
  br i1 %i.dwt, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i, label %bb.cc, !prof !11

bb.cc:                                            ; preds = %bb.cb
  %i.dwu = icmp eq ptr %.pre963, %i.dod
  br i1 %i.dwu, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i.loopexit, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i.loopexit: ; preds = %bb.cc
  %i.dwv = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.dwv, ptr %i.doe, align 64
  %i.dww = load <4 x float>, ptr %i.dod, align 64
  store <4 x float> %i.dww, ptr %i.dwv, align 16
  %i.dwx = load ptr, ptr %i.doe, align 64
  %i.dwy = getelementptr inbounds nuw i8, ptr %i.dwx, i64 16
  %i.dwz = load <4 x float>, ptr %i.dof, align 16
  store <4 x float> %i.dwz, ptr %i.dwy, align 16
  %i.dxa = load ptr, ptr %i.doe, align 64
  %i.dxb = getelementptr inbounds nuw i8, ptr %i.dxa, i64 32
  %i.dxc = load <4 x float>, ptr %i.dog, align 32
  store <4 x float> %i.dxc, ptr %i.dxb, align 16
  %i.dxd = load ptr, ptr %i.doe, align 64
  %i.dxe = getelementptr inbounds nuw i8, ptr %i.dxd, i64 48
  %i.dxf = load <4 x float>, ptr %i.doh, align 16
  store <4 x float> %i.dxf, ptr %i.dxe, align 16
  %i.dxg = load ptr, ptr %i.doe, align 64
  %i.dxh = getelementptr inbounds nuw i8, ptr %i.dxg, i64 64
  %i.dxi = load <4 x float>, ptr %i.doi, align 64
  store <4 x float> %i.dxi, ptr %i.dxh, align 16
  %i.dxj = load ptr, ptr %i.doe, align 64
  %i.dxk = getelementptr inbounds nuw i8, ptr %i.dxj, i64 80
  %i.dxl = load <4 x float>, ptr %i.doj, align 16
  store <4 x float> %i.dxl, ptr %i.dxk, align 16
  %i.dxm = load ptr, ptr %i.doe, align 64
  %i.dxn = getelementptr inbounds nuw i8, ptr %i.dxm, i64 96
  %i.dxo = load <4 x float>, ptr %i.dok, align 32
  store <4 x float> %i.dxo, ptr %i.dxn, align 16
  %i.dxp = load ptr, ptr %i.doe, align 64
  %i.dxq = getelementptr inbounds nuw i8, ptr %i.dxp, i64 112
  %i.dxr = load <4 x float>, ptr %i.dol, align 16
  store <4 x float> %i.dxr, ptr %i.dxq, align 16
  %i.dxs = load ptr, ptr %i.doe, align 64
  %i.dxt = getelementptr inbounds nuw i8, ptr %i.dxs, i64 128
  %i.dxu = load <4 x float>, ptr %i.dom, align 64
  store <4 x float> %i.dxu, ptr %i.dxt, align 16
  %i.dxv = load ptr, ptr %i.doe, align 64
  %i.dxw = getelementptr inbounds nuw i8, ptr %i.dxv, i64 144
  %i.dxx = load <4 x float>, ptr %i.don, align 16
  store <4 x float> %i.dxx, ptr %i.dxw, align 16
  %i.dxy = load ptr, ptr %i.doe, align 64
  %i.dxz = getelementptr inbounds nuw i8, ptr %i.dxy, i64 160
  %i.dya = load <4 x float>, ptr %i.doo, align 32
  store <4 x float> %i.dya, ptr %i.dxz, align 16
  %i.dyb = load ptr, ptr %i.doe, align 64
  %i.dyc = getelementptr inbounds nuw i8, ptr %i.dyb, i64 176
  %i.dyd = load <4 x float>, ptr %i.dop, align 16
  store <4 x float> %i.dyd, ptr %i.dyc, align 16
  %i.dye = load ptr, ptr %i.doe, align 64
  %i.dyf = getelementptr inbounds nuw i8, ptr %i.dye, i64 192
  %i.dyg = load <4 x float>, ptr %i.doq, align 64
  store <4 x float> %i.dyg, ptr %i.dyf, align 16
  %i.dyh = load ptr, ptr %i.doe, align 64
  %i.dyi = getelementptr inbounds nuw i8, ptr %i.dyh, i64 208
  %i.dyj = load <4 x float>, ptr %i.dor, align 16
  store <4 x float> %i.dyj, ptr %i.dyi, align 16
  %i.dyk = load ptr, ptr %i.doe, align 64
  %i.dyl = getelementptr inbounds nuw i8, ptr %i.dyk, i64 224
  %i.dym = load <4 x float>, ptr %i.dos, align 32
  store <4 x float> %i.dym, ptr %i.dyl, align 16
  %i.dyn = load ptr, ptr %i.doe, align 64
  %i.dyo = getelementptr inbounds nuw i8, ptr %i.dyn, i64 240
  %i.dyp = load <4 x float>, ptr %i.dot, align 16
  store <4 x float> %i.dyp, ptr %i.dyo, align 16
  %i.dyq = load ptr, ptr %i.doe, align 64
  %i.dyr = getelementptr inbounds nuw i8, ptr %i.dyq, i64 256
  %i.dys = load <4 x float>, ptr %i.dou, align 64
  store <4 x float> %i.dys, ptr %i.dyr, align 16
  %i.dyt = load ptr, ptr %i.doe, align 64
  %i.dyu = getelementptr inbounds nuw i8, ptr %i.dyt, i64 272
  %i.dyv = load <4 x float>, ptr %i.dov, align 16
  store <4 x float> %i.dyv, ptr %i.dyu, align 16
  %i.dyw = load ptr, ptr %i.doe, align 64
  %i.dyx = getelementptr inbounds nuw i8, ptr %i.dyw, i64 288
  %i.dyy = load <4 x float>, ptr %i.dow, align 32
  store <4 x float> %i.dyy, ptr %i.dyx, align 16
  %i.dyz = load ptr, ptr %i.doe, align 64
  %i.dza = getelementptr inbounds nuw i8, ptr %i.dyz, i64 304
  %i.dzb = load <4 x float>, ptr %i.dox, align 16
  store <4 x float> %i.dzb, ptr %i.dza, align 16
  %i.dzc = load ptr, ptr %i.doe, align 64
  %i.dzd = getelementptr inbounds nuw i8, ptr %i.dzc, i64 320
  %i.dze = load <4 x float>, ptr %i.doy, align 64
  store <4 x float> %i.dze, ptr %i.dzd, align 16
  %i.dzf = load ptr, ptr %i.doe, align 64
  %i.dzg = getelementptr inbounds nuw i8, ptr %i.dzf, i64 336
  %i.dzh = load <4 x float>, ptr %i.doz, align 16
  store <4 x float> %i.dzh, ptr %i.dzg, align 16
  %i.dzi = load ptr, ptr %i.doe, align 64
  %i.dzj = getelementptr inbounds nuw i8, ptr %i.dzi, i64 352
  %i.dzk = load <4 x float>, ptr %i.dpa, align 32
  store <4 x float> %i.dzk, ptr %i.dzj, align 16
  %i.dzl = load ptr, ptr %i.doe, align 64
  %i.dzm = getelementptr inbounds nuw i8, ptr %i.dzl, i64 368
  %i.dzn = load <4 x float>, ptr %i.dpb, align 16
  store <4 x float> %i.dzn, ptr %i.dzm, align 16
  %i.dzo = load ptr, ptr %i.doe, align 64
  %i.dzp = getelementptr inbounds nuw i8, ptr %i.dzo, i64 384
  %i.dzq = load <4 x float>, ptr %i.dpc, align 64
  store <4 x float> %i.dzq, ptr %i.dzp, align 16
  %i.dzr = load ptr, ptr %i.doe, align 64
  %i.dzs = getelementptr inbounds nuw i8, ptr %i.dzr, i64 400
  %i.dzt = load <4 x float>, ptr %i.dpd, align 16
  store <4 x float> %i.dzt, ptr %i.dzs, align 16
  %i.dzu = load ptr, ptr %i.doe, align 64
  %i.dzv = getelementptr inbounds nuw i8, ptr %i.dzu, i64 416
  %i.dzw = load <4 x float>, ptr %i.dpe, align 32
  store <4 x float> %i.dzw, ptr %i.dzv, align 16
  %i.dzx = load ptr, ptr %i.doe, align 64
  %i.dzy = getelementptr inbounds nuw i8, ptr %i.dzx, i64 432
  %i.dzz = load <4 x float>, ptr %i.dpf, align 16
  store <4 x float> %i.dzz, ptr %i.dzy, align 16
  %i.eaa = load ptr, ptr %i.doe, align 64
  %i.eab = getelementptr inbounds nuw i8, ptr %i.eaa, i64 448
  %i.eac = load <4 x float>, ptr %i.dpg, align 64
  store <4 x float> %i.eac, ptr %i.eab, align 16
  %i.ead = load ptr, ptr %i.doe, align 64
  %i.eae = getelementptr inbounds nuw i8, ptr %i.ead, i64 464
  %i.eaf = load <4 x float>, ptr %i.dph, align 16
  store <4 x float> %i.eaf, ptr %i.eae, align 16
  %i.eag = load ptr, ptr %i.doe, align 64
  %i.eah = getelementptr inbounds nuw i8, ptr %i.eag, i64 480
  %i.eai = load <4 x float>, ptr %i.dpi, align 32
  store <4 x float> %i.eai, ptr %i.eah, align 16
  %i.eaj = load ptr, ptr %i.doe, align 64
  %i.eak = getelementptr inbounds nuw i8, ptr %i.eaj, i64 496
  %i.eal = load <4 x float>, ptr %i.dpj, align 16
  store <4 x float> %i.eal, ptr %i.eak, align 16
  %.pre962 = load ptr, ptr %i.doe, align 64
  br label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i: ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i.loopexit, %bb.cc, %bb.cb
  %i.eam = phi ptr [ %.pre962, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i.loopexit ], [ %.pre963, %bb.cc ], [ %.pre963, %bb.cb ]
  %i.ean = getelementptr inbounds nuw [16 x i8], ptr %i.eam, i64 %.086.i
  store <4 x float> %i.dws, ptr %i.ean, align 16
  %i.eao = fadd <4 x float> %.sroa.0504.0851, %i.dws ; 3 uses
  %i.eap = add nuw nsw i64 %.089.i852, 1          ; 2 uses
  %i.eaq = load i32, ptr %i.dng, align 4          ; 3 uses
  %i.ear = zext i32 %i.eaq to i64                 ; 2 uses
  %i.eas = icmp samesign ult i64 %i.eap, %i.ear
  br i1 %i.eas, label %bb.cb, label %._crit_edge854, !llvm.loop !965

._crit_edge867.loopexit:                          ; preds = %bb.cq
  %i.eat = uitofp i32 %i.ewr to float
  br label %._crit_edge867

._crit_edge867:                                   ; preds = %._crit_edge854.thread, %._crit_edge867.loopexit, %._crit_edge854
  %.sroa.0504.1.lcssa = phi <4 x float> [ %i.eao, %._crit_edge854 ], [ %i.ekr, %._crit_edge867.loopexit ], [ zeroinitializer, %._crit_edge854.thread ]
  %.084.i.lcssa = phi i64 [ 0, %._crit_edge854 ], [ %.1.i, %._crit_edge867.loopexit ], [ 0, %._crit_edge854.thread ] ; 2 uses
  %.lcssa = phi float [ 0.000000e+00, %._crit_edge854 ], [ %i.eat, %._crit_edge867.loopexit ], [ 0.000000e+00, %._crit_edge854.thread ] ; 2 uses
  %i.eau = fdiv float 1.000000e+00, %.lcssa
  %i.eav = fadd nnan float %.lcssa, -2.000000e+00
  %i.eaw = getelementptr inbounds nuw i8, ptr %0, i64 2704 ; 6 uses
  %i.eax = insertelement <4 x float> poison, float %i.eav, i64 0
  %i.eay = shufflevector <4 x float> %i.eax, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eaz = load <4 x float>, ptr %i.eaw, align 16, !noalias !1089
  %i.eba = fmul <4 x float> %i.eay, %i.eaz
  %i.ebb = insertelement <4 x float> poison, float %i.eau, i64 0
  %i.ebc = shufflevector <4 x float> %i.ebb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ebd = fmul <4 x float> %.sroa.0504.1.lcssa, %i.ebc
  %i.ebe = fadd <4 x float> %i.ebd, %i.eba
  %i.ebf = fmul <4 x float> %i.ebc, %i.ebe        ; 3 uses
  %i.ebg = getelementptr inbounds nuw i8, ptr %1, i64 12688 ; 8 uses
  store <4 x float> %i.ebf, ptr %i.ebg, align 16
  %i.ebh = load float, ptr %i.dnn, align 4        ; 4 uses
  %i.ebi = fcmp ogt float %i.ebh, 0.000000e+00
  br i1 %i.ebi, label %bb.cr, label %bb.cu, !prof !10

bb.cd:                                            ; preds = %.lr.ph866, %bb.cq
  %i.ebj = phi i64 [ %i.dpk, %.lr.ph866 ], [ %i.ews, %bb.cq ] ; 2 uses
  %.083.i864 = phi i64 [ 0, %.lr.ph866 ], [ %i.ewq, %bb.cq ] ; 2 uses
  %.084.i863 = phi i64 [ 0, %.lr.ph866 ], [ %.1.i, %bb.cq ] ; 5 uses
  %.sroa.0504.1862 = phi <4 x float> [ %i.eao, %.lr.ph866 ], [ %i.ekr, %bb.cq ]
  %i.ebk = load i32, ptr %i.dnt, align 8
  %i.ebl = zext i32 %i.ebk to i64
  %i.ebm = add nuw nsw i64 %.083.i864, %i.ebl     ; 3 uses
  %.not.i = icmp samesign ult i64 %i.ebm, %i.ebj
  %i.ebn = select i1 %.not.i, i64 0, i64 %i.ebj   ; 2 uses
  %spec.select113.i = sub nuw nsw i64 %i.ebm, %i.ebn ; 6 uses
  %i.ebo = load ptr, ptr %i.dpl, align 64
  %i.ebp = getelementptr inbounds nuw [4 x i8], ptr %i.ebo, i64 %spec.select113.i
  %i.ebq = load float, ptr %i.ebp, align 4        ; 5 uses
  %i.ebr = fadd float %i.ebq, -1.000000e+00       ; 2 uses
  %i.ebs = fcmp olt float %i.ebr, 0.000000e+00
  %i.ebt = select i1 %i.ebs, float 0.000000e+00, float %i.ebr ; 2 uses
  %i.ebu = icmp samesign ult i64 %spec.select113.i, 16
  %.pre964 = load ptr, ptr %i.dpn, align 64       ; 3 uses
  br i1 %i.ebu, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i, label %bb.ce, !prof !11

bb.ce:                                            ; preds = %bb.cd
  %i.ebv = icmp eq ptr %.pre964, %i.dpm
  br i1 %i.ebv, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i.thread, !prof !10

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i.thread: ; preds = %bb.ce
  %i.ebw = getelementptr inbounds nuw [4 x i8], ptr %.pre964, i64 %spec.select113.i
  store float %i.ebt, ptr %i.ebw, align 4
  br label %bb.cg

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i.loopexit: ; preds = %bb.ce
  %i.ebx = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20 ; 6 uses
  store ptr %i.ebx, ptr %i.dpn, align 64
  %i.eby = load <4 x float>, ptr %i.dpm, align 64
  store <4 x float> %i.eby, ptr %i.ebx, align 4
  %i.ebz = getelementptr inbounds nuw i8, ptr %i.ebx, i64 16
  %i.eca = load <4 x float>, ptr %i.dps, align 16
  store <4 x float> %i.eca, ptr %i.ebz, align 4
  %i.ecb = getelementptr inbounds nuw i8, ptr %i.ebx, i64 32
  %i.ecc = load <4 x float>, ptr %i.dpt, align 32
  store <4 x float> %i.ecc, ptr %i.ecb, align 4
  %i.ecd = getelementptr inbounds nuw i8, ptr %i.ebx, i64 48
  %i.ece = load <4 x float>, ptr %i.dpu, align 16
  store <4 x float> %i.ece, ptr %i.ecd, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i: ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i.loopexit, %bb.cd
  %i.ecf = phi ptr [ %i.ebx, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i.loopexit ], [ %.pre964, %bb.cd ]
  %i.ecg = getelementptr inbounds nuw [4 x i8], ptr %i.ecf, i64 %spec.select113.i
  store float %i.ebt, ptr %i.ecg, align 4
  %i.ech = icmp eq i64 %i.ebm, %i.ebn
  br i1 %i.ech, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i
  %i.eci = load i32, ptr %i.dnj, align 8
  %i.ecj = add i32 %i.eci, -1
  %i.eck = zext i32 %i.ecj to i64
  br label %bb.ch

bb.cg:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i.thread, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit.i
  %i.ecl = shl nuw nsw i64 %spec.select113.i, 1   ; 2 uses
  %i.ecm = add nsw i64 %i.ecl, -1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ecn = phi i64 [ 0, %bb.cf ], [ %i.ecl, %bb.cg ] ; 8 uses
  %i.eco = phi i64 [ %i.eck, %bb.cf ], [ %i.ecm, %bb.cg ] ; 2 uses
  %i.ecp = load ptr, ptr %i.dpp, align 64
  %i.ecq = getelementptr inbounds nuw [16 x i8], ptr %i.ecp, i64 %i.ecn
  %i.ecr = load <4 x float>, ptr %i.dpo, align 16, !noalias !1090
  %i.ecs = load <4 x float>, ptr %i.ecq, align 16, !noalias !1090
  %i.ect = fadd <4 x float> %i.ecr, %i.ecs        ; 3 uses
  %i.ecu = icmp ult i64 %i.eco, 32
  %.pre966 = load ptr, ptr %i.dpr, align 64       ; 3 uses
  br i1 %i.ecu, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i, label %bb.ci, !prof !11

bb.ci:                                            ; preds = %bb.ch
  %i.ecv = icmp eq ptr %.pre966, %i.dpq
  br i1 %i.ecv, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i.loopexit, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit123.i.loopexit: ; preds = %bb.ci
  %i.ecw = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.ecw, ptr %i.dpr, align 64
  %i.ecx = load <4 x float>, ptr %i.dpq, align 64
  store <4 x float> %i.ecx, ptr %i.ecw, align 16
  %i.ecy = load ptr, ptr %i.dpr, align 64
  %i.ecz = getelementptr inbounds nuw i8, ptr %i.ecy, i64 16
  %i.eda = load <4 x float>, ptr %i.dpv, align 16
  store <4 x float> %i.eda, ptr %i.ecz, align 16
  %i.edb = load ptr, ptr %i.dpr, align 64
  %i.edc = getelementptr inbounds nuw i8, ptr %i.edb, i64 32
  %i.edd = load <4 x float>, ptr %i.dpw, align 32
  store <4 x float> %i.edd, ptr %i.edc, align 16
  %i.ede = load ptr, ptr %i.dpr, align 64
  %i.edf = getelementptr inbounds nuw i8, ptr %i.ede, i64 48
  %i.edg = load <4 x float>, ptr %i.dpx, align 16
  store <4 x float> %i.edg, ptr %i.edf, align 16
  %i.edh = load ptr, ptr %i.dpr, align 64
  %i.edi = getelementptr inbounds nuw i8, ptr %i.edh, i64 64
  %i.edj = load <4 x float>, ptr %i.dpy, align 64
  store <4 x float> %i.edj, ptr %i.edi, align 16
  %i.edk = load ptr, ptr %i.dpr, align 64
  %i.edl = getelementptr inbounds nuw i8, ptr %i.edk, i64 80
  %i.edm = load <4 x float>, ptr %i.dpz, align 16
  store <4 x float> %i.edm, ptr %i.edl, align 16
  %i.edn = load ptr, ptr %i.dpr, align 64
  %i.edo = getelementptr inbounds nuw i8, ptr %i.edn, i64 96
  %i.edp = load <4 x float>, ptr %i.dqa, align 32
  store <4 x float> %i.edp, ptr %i.edo, align 16
  %i.edq = load ptr, ptr %i.dpr, align 64
  %i.edr = getelementptr inbounds nuw i8, ptr %i.edq, i64 112
  %i.eds = load <4 x float>, ptr %i.dqb, align 16
  store <4 x float> %i.eds, ptr %i.edr, align 16
  %i.edt = load ptr, ptr %i.dpr, align 64
  %i.edu = getelementptr inbounds nuw i8, ptr %i.edt, i64 128
  %i.edv = load <4 x float>, ptr %i.dqc, align 64
  store <4 x float> %i.edv, ptr %i.edu, align 16
  %i.edw = load ptr, ptr %i.dpr, align 64
  %i.edx = getelementptr inbounds nuw i8, ptr %i.edw, i64 144
  %i.edy = load <4 x float>, ptr %i.dqd, align 16
  store <4 x float> %i.edy, ptr %i.edx, align 16
  %i.edz = load ptr, ptr %i.dpr, align 64
  %i.eea = getelementptr inbounds nuw i8, ptr %i.edz, i64 160
  %i.eeb = load <4 x float>, ptr %i.dqe, align 32
  store <4 x float> %i.eeb, ptr %i.eea, align 16
  %i.eec = load ptr, ptr %i.dpr, align 64
  %i.eed = getelementptr inbounds nuw i8, ptr %i.eec, i64 176
  %i.eee = load <4 x float>, ptr %i.dqf, align 16
  store <4 x float> %i.eee, ptr %i.eed, align 16
  %i.eef = load ptr, ptr %i.dpr, align 64
  %i.eeg = getelementptr inbounds nuw i8, ptr %i.eef, i64 192
  %i.eeh = load <4 x float>, ptr %i.dqg, align 64
  store <4 x float> %i.eeh, ptr %i.eeg, align 16
  %i.eei = load ptr, ptr %i.dpr, align 64
  %i.eej = getelementptr inbounds nuw i8, ptr %i.eei, i64 208
  %i.eek = load <4 x float>, ptr %i.dqh, align 16
  store <4 x float> %i.eek, ptr %i.eej, align 16
  %i.eel = load ptr, ptr %i.dpr, align 64
  %i.eem = getelementptr inbounds nuw i8, ptr %i.eel, i64 224
  %i.een = load <4 x float>, ptr %i.dqi, align 32
  store <4 x float> %i.een, ptr %i.eem, align 16
  %i.eeo = load ptr, ptr %i.dpr, align 64
  %i.eep = getelementptr inbounds nuw i8, ptr %i.eeo, i64 240
  %i.eeq = load <4 x float>, ptr %i.dqj, align 16
  store <4 x float> %i.eeq, ptr %i.eep, align 16
  %i.eer = load ptr, ptr %i.dpr, align 64
  %i.ees = getelementptr inbounds nuw i8, ptr %i.eer, i64 256
  %i.eet = load <4 x float>, ptr %i.dqk, align 64
  store <4 x float> %i.eet, ptr %i.ees, align 16
  %i.eeu = load ptr, ptr %i.dpr, align 64
  %i.eev = getelementptr inbounds nuw i8, ptr %i.eeu, i64 272
  %i.eew = load <4 x float>, ptr %i.dql, align 16
  store <4 x float> %i.eew, ptr %i.eev, align 16
  %i.eex = load ptr, ptr %i.dpr, align 64
  %i.eey = getelementptr inbounds nuw i8, ptr %i.eex, i64 288
  %i.eez = load <4 x float>, ptr %i.dqm, align 32
  store <4 x float> %i.eez, ptr %i.eey, align 16
  %i.efa = load ptr, ptr %i.dpr, align 64
  %i.efb = getelementptr inbounds nuw i8, ptr %i.efa, i64 304
  %i.efc = load <4 x float>, ptr %i.dqn, align 16
  store <4 x float> %i.efc, ptr %i.efb, align 16
  %i.efd = load ptr, ptr %i.dpr, align 64
  %i.efe = getelementptr inbounds nuw i8, ptr %i.efd, i64 320
  %i.eff = load <4 x float>, ptr %i.dqo, align 64
  store <4 x float> %i.eff, ptr %i.efe, align 16
  %i.efg = load ptr, ptr %i.dpr, align 64
  %i.efh = getelementptr inbounds nuw i8, ptr %i.efg, i64 336
  %i.efi = load <4 x float>, ptr %i.dqp, align 16
  store <4 x float> %i.efi, ptr %i.efh, align 16
  %i.efj = load ptr, ptr %i.dpr, align 64
  %i.efk = getelementptr inbounds nuw i8, ptr %i.efj, i64 352
  %i.efl = load <4 x float>, ptr %i.dqq, align 32
  store <4 x float> %i.efl, ptr %i.efk, align 16
  %i.efm = load ptr, ptr %i.dpr, align 64
  %i.efn = getelementptr inbounds nuw i8, ptr %i.efm, i64 368
  %i.efo = load <4 x float>, ptr %i.dqr, align 16
  store <4 x float> %i.efo, ptr %i.efn, align 16
  %i.efp = load ptr, ptr %i.dpr, align 64
  %i.efq = getelementptr inbounds nuw i8, ptr %i.efp, i64 384
  %i.efr = load <4 x float>, ptr %i.dqs, align 64
  store <4 x float> %i.efr, ptr %i.efq, align 16
  %i.efs = load ptr, ptr %i.dpr, align 64
  %i.eft = getelementptr inbounds nuw i8, ptr %i.efs, i64 400
  %i.efu = load <4 x float>, ptr %i.dqt, align 16
end_hunk_6
begin_hunk_7_@_ZNK6embree18CatmullClarkPatchTINS_6Vec3faES1_E9subdivideERNS_7array_tIS2_Lm4EEE:bb.a
  %i.enh = load ptr, ptr %i.dpr, align 64
  %i.eni = getelementptr inbounds nuw i8, ptr %i.enh, i64 336
  %i.enj = load <4 x float>, ptr %i.dsz, align 16
  store <4 x float> %i.enj, ptr %i.eni, align 16
  %i.enk = load ptr, ptr %i.dpr, align 64
  %i.enl = getelementptr inbounds nuw i8, ptr %i.enk, i64 352
  %i.enm = load <4 x float>, ptr %i.dta, align 32
  store <4 x float> %i.enm, ptr %i.enl, align 16
  %i.enn = load ptr, ptr %i.dpr, align 64
  %i.eno = getelementptr inbounds nuw i8, ptr %i.enn, i64 368
  %i.enp = load <4 x float>, ptr %i.dtb, align 16
  store <4 x float> %i.enp, ptr %i.eno, align 16
  %i.enq = load ptr, ptr %i.dpr, align 64
  %i.enr = getelementptr inbounds nuw i8, ptr %i.enq, i64 384
  %i.ens = load <4 x float>, ptr %i.dtc, align 64
  store <4 x float> %i.ens, ptr %i.enr, align 16
  %i.ent = load ptr, ptr %i.dpr, align 64
  %i.enu = getelementptr inbounds nuw i8, ptr %i.ent, i64 400
  %i.env = load <4 x float>, ptr %i.dtd, align 16
  store <4 x float> %i.env, ptr %i.enu, align 16
  %i.enw = load ptr, ptr %i.dpr, align 64
  %i.enx = getelementptr inbounds nuw i8, ptr %i.enw, i64 416
  %i.eny = load <4 x float>, ptr %i.dte, align 32
  store <4 x float> %i.eny, ptr %i.enx, align 16
  %i.enz = load ptr, ptr %i.dpr, align 64
  %i.eoa = getelementptr inbounds nuw i8, ptr %i.enz, i64 432
  %i.eob = load <4 x float>, ptr %i.dtf, align 16
  store <4 x float> %i.eob, ptr %i.eoa, align 16
  %i.eoc = load ptr, ptr %i.dpr, align 64
  %i.eod = getelementptr inbounds nuw i8, ptr %i.eoc, i64 448
  %i.eoe = load <4 x float>, ptr %i.dtg, align 64
  store <4 x float> %i.eoe, ptr %i.eod, align 16
  %i.eof = load ptr, ptr %i.dpr, align 64
  %i.eog = getelementptr inbounds nuw i8, ptr %i.eof, i64 464
  %i.eoh = load <4 x float>, ptr %i.dth, align 16
  store <4 x float> %i.eoh, ptr %i.eog, align 16
  %i.eoi = load ptr, ptr %i.dpr, align 64
  %i.eoj = getelementptr inbounds nuw i8, ptr %i.eoi, i64 480
  %i.eok = load <4 x float>, ptr %i.dti, align 32
  store <4 x float> %i.eok, ptr %i.eoj, align 16
  %i.eol = load ptr, ptr %i.dpr, align 64
  %i.eom = getelementptr inbounds nuw i8, ptr %i.eol, i64 496
  %i.eon = load <4 x float>, ptr %i.dtj, align 16
  store <4 x float> %i.eon, ptr %i.eom, align 16
  br label %.sink.split1115.sink.split

bb.cm:                                            ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit128.i
  %i.eoo = add nuw nsw i64 %.084.i863, 1          ; 4 uses
  %i.eop = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.084.i863
  store i64 %spec.select113.i, ptr %i.eop, align 8
  %i.eoq = fmul <4 x float> %i.ect, splat (float 5.000000e-01) ; 2 uses
  %i.eor = icmp samesign ult i64 %i.ecn, 32       ; 2 uses
  br i1 %i.eor, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i, label %bb.cn, !prof !11

bb.cn:                                            ; preds = %bb.cm
  %i.eos = icmp eq ptr %i.eki, %i.dpq
  br i1 %i.eos, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i.loopexit, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i.loopexit: ; preds = %bb.cn
  %i.eot = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.eot, ptr %i.dpr, align 64
  %i.eou = load <4 x float>, ptr %i.dpq, align 64
  store <4 x float> %i.eou, ptr %i.eot, align 16
  %i.eov = load ptr, ptr %i.dpr, align 64
  %i.eow = getelementptr inbounds nuw i8, ptr %i.eov, i64 16
  %i.eox = load <4 x float>, ptr %i.dtk, align 16
  store <4 x float> %i.eox, ptr %i.eow, align 16
  %i.eoy = load ptr, ptr %i.dpr, align 64
  %i.eoz = getelementptr inbounds nuw i8, ptr %i.eoy, i64 32
  %i.epa = load <4 x float>, ptr %i.dtl, align 32
  store <4 x float> %i.epa, ptr %i.eoz, align 16
  %i.epb = load ptr, ptr %i.dpr, align 64
  %i.epc = getelementptr inbounds nuw i8, ptr %i.epb, i64 48
  %i.epd = load <4 x float>, ptr %i.dtm, align 16
  store <4 x float> %i.epd, ptr %i.epc, align 16
  %i.epe = load ptr, ptr %i.dpr, align 64
  %i.epf = getelementptr inbounds nuw i8, ptr %i.epe, i64 64
  %i.epg = load <4 x float>, ptr %i.dtn, align 64
  store <4 x float> %i.epg, ptr %i.epf, align 16
  %i.eph = load ptr, ptr %i.dpr, align 64
  %i.epi = getelementptr inbounds nuw i8, ptr %i.eph, i64 80
  %i.epj = load <4 x float>, ptr %i.dto, align 16
  store <4 x float> %i.epj, ptr %i.epi, align 16
  %i.epk = load ptr, ptr %i.dpr, align 64
  %i.epl = getelementptr inbounds nuw i8, ptr %i.epk, i64 96
  %i.epm = load <4 x float>, ptr %i.dtp, align 32
  store <4 x float> %i.epm, ptr %i.epl, align 16
  %i.epn = load ptr, ptr %i.dpr, align 64
  %i.epo = getelementptr inbounds nuw i8, ptr %i.epn, i64 112
  %i.epp = load <4 x float>, ptr %i.dtq, align 16
  store <4 x float> %i.epp, ptr %i.epo, align 16
  %i.epq = load ptr, ptr %i.dpr, align 64
  %i.epr = getelementptr inbounds nuw i8, ptr %i.epq, i64 128
  %i.eps = load <4 x float>, ptr %i.dtr, align 64
  store <4 x float> %i.eps, ptr %i.epr, align 16
  %i.ept = load ptr, ptr %i.dpr, align 64
  %i.epu = getelementptr inbounds nuw i8, ptr %i.ept, i64 144
  %i.epv = load <4 x float>, ptr %i.dts, align 16
  store <4 x float> %i.epv, ptr %i.epu, align 16
  %i.epw = load ptr, ptr %i.dpr, align 64
  %i.epx = getelementptr inbounds nuw i8, ptr %i.epw, i64 160
  %i.epy = load <4 x float>, ptr %i.dtt, align 32
  store <4 x float> %i.epy, ptr %i.epx, align 16
  %i.epz = load ptr, ptr %i.dpr, align 64
  %i.eqa = getelementptr inbounds nuw i8, ptr %i.epz, i64 176
  %i.eqb = load <4 x float>, ptr %i.dtu, align 16
  store <4 x float> %i.eqb, ptr %i.eqa, align 16
  %i.eqc = load ptr, ptr %i.dpr, align 64
  %i.eqd = getelementptr inbounds nuw i8, ptr %i.eqc, i64 192
  %i.eqe = load <4 x float>, ptr %i.dtv, align 64
  store <4 x float> %i.eqe, ptr %i.eqd, align 16
  %i.eqf = load ptr, ptr %i.dpr, align 64
  %i.eqg = getelementptr inbounds nuw i8, ptr %i.eqf, i64 208
  %i.eqh = load <4 x float>, ptr %i.dtw, align 16
  store <4 x float> %i.eqh, ptr %i.eqg, align 16
  %i.eqi = load ptr, ptr %i.dpr, align 64
  %i.eqj = getelementptr inbounds nuw i8, ptr %i.eqi, i64 224
  %i.eqk = load <4 x float>, ptr %i.dtx, align 32
  store <4 x float> %i.eqk, ptr %i.eqj, align 16
  %i.eql = load ptr, ptr %i.dpr, align 64
  %i.eqm = getelementptr inbounds nuw i8, ptr %i.eql, i64 240
  %i.eqn = load <4 x float>, ptr %i.dty, align 16
  store <4 x float> %i.eqn, ptr %i.eqm, align 16
  %i.eqo = load ptr, ptr %i.dpr, align 64
  %i.eqp = getelementptr inbounds nuw i8, ptr %i.eqo, i64 256
  %i.eqq = load <4 x float>, ptr %i.dtz, align 64
  store <4 x float> %i.eqq, ptr %i.eqp, align 16
  %i.eqr = load ptr, ptr %i.dpr, align 64
  %i.eqs = getelementptr inbounds nuw i8, ptr %i.eqr, i64 272
  %i.eqt = load <4 x float>, ptr %i.dua, align 16
  store <4 x float> %i.eqt, ptr %i.eqs, align 16
  %i.equ = load ptr, ptr %i.dpr, align 64
  %i.eqv = getelementptr inbounds nuw i8, ptr %i.equ, i64 288
  %i.eqw = load <4 x float>, ptr %i.dub, align 32
  store <4 x float> %i.eqw, ptr %i.eqv, align 16
  %i.eqx = load ptr, ptr %i.dpr, align 64
  %i.eqy = getelementptr inbounds nuw i8, ptr %i.eqx, i64 304
  %i.eqz = load <4 x float>, ptr %i.duc, align 16
  store <4 x float> %i.eqz, ptr %i.eqy, align 16
  %i.era = load ptr, ptr %i.dpr, align 64
  %i.erb = getelementptr inbounds nuw i8, ptr %i.era, i64 320
  %i.erc = load <4 x float>, ptr %i.dud, align 64
  store <4 x float> %i.erc, ptr %i.erb, align 16
  %i.erd = load ptr, ptr %i.dpr, align 64
  %i.ere = getelementptr inbounds nuw i8, ptr %i.erd, i64 336
  %i.erf = load <4 x float>, ptr %i.due, align 16
  store <4 x float> %i.erf, ptr %i.ere, align 16
  %i.erg = load ptr, ptr %i.dpr, align 64
  %i.erh = getelementptr inbounds nuw i8, ptr %i.erg, i64 352
  %i.eri = load <4 x float>, ptr %i.duf, align 32
  store <4 x float> %i.eri, ptr %i.erh, align 16
  %i.erj = load ptr, ptr %i.dpr, align 64
  %i.erk = getelementptr inbounds nuw i8, ptr %i.erj, i64 368
  %i.erl = load <4 x float>, ptr %i.dug, align 16
  store <4 x float> %i.erl, ptr %i.erk, align 16
  %i.erm = load ptr, ptr %i.dpr, align 64
  %i.ern = getelementptr inbounds nuw i8, ptr %i.erm, i64 384
  %i.ero = load <4 x float>, ptr %i.duh, align 64
  store <4 x float> %i.ero, ptr %i.ern, align 16
  %i.erp = load ptr, ptr %i.dpr, align 64
  %i.erq = getelementptr inbounds nuw i8, ptr %i.erp, i64 400
  %i.err = load <4 x float>, ptr %i.dui, align 16
  store <4 x float> %i.err, ptr %i.erq, align 16
  %i.ers = load ptr, ptr %i.dpr, align 64
  %i.ert = getelementptr inbounds nuw i8, ptr %i.ers, i64 416
  %i.eru = load <4 x float>, ptr %i.duj, align 32
  store <4 x float> %i.eru, ptr %i.ert, align 16
  %i.erv = load ptr, ptr %i.dpr, align 64
  %i.erw = getelementptr inbounds nuw i8, ptr %i.erv, i64 432
  %i.erx = load <4 x float>, ptr %i.duk, align 16
  store <4 x float> %i.erx, ptr %i.erw, align 16
  %i.ery = load ptr, ptr %i.dpr, align 64
  %i.erz = getelementptr inbounds nuw i8, ptr %i.ery, i64 448
  %i.esa = load <4 x float>, ptr %i.dul, align 64
  store <4 x float> %i.esa, ptr %i.erz, align 16
  %i.esb = load ptr, ptr %i.dpr, align 64
  %i.esc = getelementptr inbounds nuw i8, ptr %i.esb, i64 464
  %i.esd = load <4 x float>, ptr %i.dum, align 16
  store <4 x float> %i.esd, ptr %i.esc, align 16
  %i.ese = load ptr, ptr %i.dpr, align 64
  %i.esf = getelementptr inbounds nuw i8, ptr %i.ese, i64 480
  %i.esg = load <4 x float>, ptr %i.dun, align 32
  store <4 x float> %i.esg, ptr %i.esf, align 16
  %i.esh = load ptr, ptr %i.dpr, align 64
  %i.esi = getelementptr inbounds nuw i8, ptr %i.esh, i64 496
  %i.esj = load <4 x float>, ptr %i.duo, align 16
  store <4 x float> %i.esj, ptr %i.esi, align 16
  %.pre969 = load ptr, ptr %i.dpr, align 64
  br label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i: ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i.loopexit, %bb.cn, %bb.cm
  %i.esk = phi ptr [ %.pre969, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i.loopexit ], [ %i.eki, %bb.cn ], [ %i.eki, %bb.cm ]
  %i.esl = getelementptr inbounds nuw [16 x i8], ptr %i.esk, i64 %i.ecn
  store <4 x float> %i.eoq, ptr %i.esl, align 16
  %i.esm = fcmp olt float %i.ebq, 1.000000e+00
  br i1 %i.esm, label %bb.co, label %bb.cq, !prof !10

bb.co:                                            ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i
  %i.esn = fadd <4 x float> %i.ect, %i.ekn
  %i.eso = fmul <4 x float> %i.esn, splat (float 2.500000e-01)
  %i.esp = fsub nnan float 1.000000e+00, %i.ebq
  %i.esq = insertelement <4 x float> poison, float %i.ebq, i64 0
  %i.esr = shufflevector <4 x float> %i.esq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ess = fmul <4 x float> %i.esr, %i.eoq
  %i.est = insertelement <4 x float> poison, float %i.esp, i64 0
  %i.esu = shufflevector <4 x float> %i.est, <4 x float> poison, <4 x i32> zeroinitializer
  %i.esv = fmul <4 x float> %i.esu, %i.eso
  %i.esw = fadd <4 x float> %i.ess, %i.esv        ; 3 uses
  %.pre971 = load ptr, ptr %i.dpr, align 64       ; 3 uses
  br i1 %i.eor, label %.sink.split1115, label %bb.cp, !prof !11

bb.cp:                                            ; preds = %bb.co
  %i.esx = icmp eq ptr %.pre971, %i.dpq
  br i1 %i.esx, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i.loopexit, label %.sink.split1115, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i.loopexit: ; preds = %bb.cp
  %i.esy = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.esy, ptr %i.dpr, align 64
  %i.esz = load <4 x float>, ptr %i.dpq, align 64
  store <4 x float> %i.esz, ptr %i.esy, align 16
  %i.eta = load ptr, ptr %i.dpr, align 64
  %i.etb = getelementptr inbounds nuw i8, ptr %i.eta, i64 16
  %i.etc = load <4 x float>, ptr %i.dup, align 16
  store <4 x float> %i.etc, ptr %i.etb, align 16
  %i.etd = load ptr, ptr %i.dpr, align 64
  %i.ete = getelementptr inbounds nuw i8, ptr %i.etd, i64 32
  %i.etf = load <4 x float>, ptr %i.duq, align 32
  store <4 x float> %i.etf, ptr %i.ete, align 16
  %i.etg = load ptr, ptr %i.dpr, align 64
  %i.eth = getelementptr inbounds nuw i8, ptr %i.etg, i64 48
  %i.eti = load <4 x float>, ptr %i.dur, align 16
  store <4 x float> %i.eti, ptr %i.eth, align 16
  %i.etj = load ptr, ptr %i.dpr, align 64
  %i.etk = getelementptr inbounds nuw i8, ptr %i.etj, i64 64
  %i.etl = load <4 x float>, ptr %i.dus, align 64
  store <4 x float> %i.etl, ptr %i.etk, align 16
  %i.etm = load ptr, ptr %i.dpr, align 64
  %i.etn = getelementptr inbounds nuw i8, ptr %i.etm, i64 80
  %i.eto = load <4 x float>, ptr %i.dut, align 16
  store <4 x float> %i.eto, ptr %i.etn, align 16
  %i.etp = load ptr, ptr %i.dpr, align 64
  %i.etq = getelementptr inbounds nuw i8, ptr %i.etp, i64 96
  %i.etr = load <4 x float>, ptr %i.duu, align 32
  store <4 x float> %i.etr, ptr %i.etq, align 16
  %i.ets = load ptr, ptr %i.dpr, align 64
  %i.ett = getelementptr inbounds nuw i8, ptr %i.ets, i64 112
  %i.etu = load <4 x float>, ptr %i.duv, align 16
  store <4 x float> %i.etu, ptr %i.ett, align 16
  %i.etv = load ptr, ptr %i.dpr, align 64
  %i.etw = getelementptr inbounds nuw i8, ptr %i.etv, i64 128
  %i.etx = load <4 x float>, ptr %i.duw, align 64
  store <4 x float> %i.etx, ptr %i.etw, align 16
  %i.ety = load ptr, ptr %i.dpr, align 64
  %i.etz = getelementptr inbounds nuw i8, ptr %i.ety, i64 144
  %i.eua = load <4 x float>, ptr %i.dux, align 16
  store <4 x float> %i.eua, ptr %i.etz, align 16
  %i.eub = load ptr, ptr %i.dpr, align 64
  %i.euc = getelementptr inbounds nuw i8, ptr %i.eub, i64 160
  %i.eud = load <4 x float>, ptr %i.duy, align 32
  store <4 x float> %i.eud, ptr %i.euc, align 16
  %i.eue = load ptr, ptr %i.dpr, align 64
  %i.euf = getelementptr inbounds nuw i8, ptr %i.eue, i64 176
  %i.eug = load <4 x float>, ptr %i.duz, align 16
  store <4 x float> %i.eug, ptr %i.euf, align 16
  %i.euh = load ptr, ptr %i.dpr, align 64
  %i.eui = getelementptr inbounds nuw i8, ptr %i.euh, i64 192
  %i.euj = load <4 x float>, ptr %i.dva, align 64
  store <4 x float> %i.euj, ptr %i.eui, align 16
  %i.euk = load ptr, ptr %i.dpr, align 64
  %i.eul = getelementptr inbounds nuw i8, ptr %i.euk, i64 208
  %i.eum = load <4 x float>, ptr %i.dvb, align 16
  store <4 x float> %i.eum, ptr %i.eul, align 16
  %i.eun = load ptr, ptr %i.dpr, align 64
  %i.euo = getelementptr inbounds nuw i8, ptr %i.eun, i64 224
  %i.eup = load <4 x float>, ptr %i.dvc, align 32
  store <4 x float> %i.eup, ptr %i.euo, align 16
  %i.euq = load ptr, ptr %i.dpr, align 64
  %i.eur = getelementptr inbounds nuw i8, ptr %i.euq, i64 240
  %i.eus = load <4 x float>, ptr %i.dvd, align 16
  store <4 x float> %i.eus, ptr %i.eur, align 16
  %i.eut = load ptr, ptr %i.dpr, align 64
  %i.euu = getelementptr inbounds nuw i8, ptr %i.eut, i64 256
  %i.euv = load <4 x float>, ptr %i.dve, align 64
  store <4 x float> %i.euv, ptr %i.euu, align 16
  %i.euw = load ptr, ptr %i.dpr, align 64
  %i.eux = getelementptr inbounds nuw i8, ptr %i.euw, i64 272
  %i.euy = load <4 x float>, ptr %i.dvf, align 16
  store <4 x float> %i.euy, ptr %i.eux, align 16
  %i.euz = load ptr, ptr %i.dpr, align 64
  %i.eva = getelementptr inbounds nuw i8, ptr %i.euz, i64 288
  %i.evb = load <4 x float>, ptr %i.dvg, align 32
  store <4 x float> %i.evb, ptr %i.eva, align 16
  %i.evc = load ptr, ptr %i.dpr, align 64
  %i.evd = getelementptr inbounds nuw i8, ptr %i.evc, i64 304
  %i.eve = load <4 x float>, ptr %i.dvh, align 16
  store <4 x float> %i.eve, ptr %i.evd, align 16
  %i.evf = load ptr, ptr %i.dpr, align 64
  %i.evg = getelementptr inbounds nuw i8, ptr %i.evf, i64 320
  %i.evh = load <4 x float>, ptr %i.dvi, align 64
  store <4 x float> %i.evh, ptr %i.evg, align 16
  %i.evi = load ptr, ptr %i.dpr, align 64
  %i.evj = getelementptr inbounds nuw i8, ptr %i.evi, i64 336
  %i.evk = load <4 x float>, ptr %i.dvj, align 16
  store <4 x float> %i.evk, ptr %i.evj, align 16
  %i.evl = load ptr, ptr %i.dpr, align 64
  %i.evm = getelementptr inbounds nuw i8, ptr %i.evl, i64 352
  %i.evn = load <4 x float>, ptr %i.dvk, align 32
  store <4 x float> %i.evn, ptr %i.evm, align 16
  %i.evo = load ptr, ptr %i.dpr, align 64
  %i.evp = getelementptr inbounds nuw i8, ptr %i.evo, i64 368
  %i.evq = load <4 x float>, ptr %i.dvl, align 16
  store <4 x float> %i.evq, ptr %i.evp, align 16
  %i.evr = load ptr, ptr %i.dpr, align 64
  %i.evs = getelementptr inbounds nuw i8, ptr %i.evr, i64 384
  %i.evt = load <4 x float>, ptr %i.dvm, align 64
  store <4 x float> %i.evt, ptr %i.evs, align 16
  %i.evu = load ptr, ptr %i.dpr, align 64
  %i.evv = getelementptr inbounds nuw i8, ptr %i.evu, i64 400
  %i.evw = load <4 x float>, ptr %i.dvn, align 16
  store <4 x float> %i.evw, ptr %i.evv, align 16
  %i.evx = load ptr, ptr %i.dpr, align 64
  %i.evy = getelementptr inbounds nuw i8, ptr %i.evx, i64 416
  %i.evz = load <4 x float>, ptr %i.dvo, align 32
  store <4 x float> %i.evz, ptr %i.evy, align 16
  %i.ewa = load ptr, ptr %i.dpr, align 64
  %i.ewb = getelementptr inbounds nuw i8, ptr %i.ewa, i64 432
  %i.ewc = load <4 x float>, ptr %i.dvp, align 16
  store <4 x float> %i.ewc, ptr %i.ewb, align 16
  %i.ewd = load ptr, ptr %i.dpr, align 64
  %i.ewe = getelementptr inbounds nuw i8, ptr %i.ewd, i64 448
  %i.ewf = load <4 x float>, ptr %i.dvq, align 64
  store <4 x float> %i.ewf, ptr %i.ewe, align 16
  %i.ewg = load ptr, ptr %i.dpr, align 64
  %i.ewh = getelementptr inbounds nuw i8, ptr %i.ewg, i64 464
  %i.ewi = load <4 x float>, ptr %i.dvr, align 16
  store <4 x float> %i.ewi, ptr %i.ewh, align 16
  %i.ewj = load ptr, ptr %i.dpr, align 64
  %i.ewk = getelementptr inbounds nuw i8, ptr %i.ewj, i64 480
  %i.ewl = load <4 x float>, ptr %i.dvs, align 32
  store <4 x float> %i.ewl, ptr %i.ewk, align 16
  %i.ewm = load ptr, ptr %i.dpr, align 64
  %i.ewn = getelementptr inbounds nuw i8, ptr %i.ewm, i64 496
  %i.ewo = load <4 x float>, ptr %i.dvt, align 16
  store <4 x float> %i.ewo, ptr %i.ewn, align 16
  br label %.sink.split1115.sink.split

.sink.split1115.sink.split:                       ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit133.i.loopexit, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i.loopexit
  %.sink1116.ph = phi <4 x float> [ %i.esw, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i.loopexit ], [ %i.eku, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit133.i.loopexit ]
  %.1.i.ph.ph = phi i64 [ %i.eoo, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit143.i.loopexit ], [ %.084.i863, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit133.i.loopexit ]
  %.pre970 = load ptr, ptr %i.dpr, align 64
  br label %.sink.split1115

.sink.split1115:                                  ; preds = %.sink.split1115.sink.split, %bb.co, %bb.cp, %bb.ck, %bb.cl
  %.sink1118 = phi ptr [ %i.eki, %bb.ck ], [ %.pre971, %bb.cp ], [ %i.eki, %bb.cl ], [ %.pre971, %bb.co ], [ %.pre970, %.sink.split1115.sink.split ]
  %.sink1116 = phi <4 x float> [ %i.eku, %bb.ck ], [ %i.esw, %bb.cp ], [ %i.eku, %bb.cl ], [ %i.esw, %bb.co ], [ %.sink1116.ph, %.sink.split1115.sink.split ]
  %.1.i.ph = phi i64 [ %.084.i863, %bb.ck ], [ %i.eoo, %bb.cp ], [ %.084.i863, %bb.cl ], [ %i.eoo, %bb.co ], [ %.1.i.ph.ph, %.sink.split1115.sink.split ]
  %i.ewp = getelementptr inbounds nuw [16 x i8], ptr %.sink1118, i64 %i.ecn
  store <4 x float> %.sink1116, ptr %i.ewp, align 16
  br label %bb.cq

bb.cq:                                            ; preds = %.sink.split1115, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i
  %.1.i = phi i64 [ %i.eoo, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit138.i ], [ %.1.i.ph, %.sink.split1115 ] ; 2 uses
  %i.ewq = add nuw nsw i64 %.083.i864, 1          ; 2 uses
  %i.ewr = load i32, ptr %i.dng, align 4          ; 2 uses
  %i.ews = zext i32 %i.ewr to i64                 ; 2 uses
  %i.ewt = icmp samesign ult i64 %i.ewq, %i.ews
  br i1 %i.ewt, label %bb.cd, label %._crit_edge867.loopexit, !llvm.loop !974

bb.cr:                                            ; preds = %._crit_edge867
  %i.ewu = fcmp ult float %i.ebh, 1.000000e+00
  br i1 %i.ewu, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ewv = load <4 x float>, ptr %i.eaw, align 16
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit.sink.split

bb.ct:                                            ; preds = %bb.cr
  %i.eww = fsub nnan float 1.000000e+00, %i.ebh
  %i.ewx = insertelement <4 x float> poison, float %i.ebh, i64 0
  %i.ewy = shufflevector <4 x float> %i.ewx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ewz = load <4 x float>, ptr %i.eaw, align 16, !noalias !1093
  %i.exa = fmul <4 x float> %i.ewy, %i.ewz
  %i.exb = insertelement <4 x float> poison, float %i.eww, i64 0
  %i.exc = shufflevector <4 x float> %i.exb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.exd = fmul <4 x float> %i.ebf, %i.exc
  %i.exe = fadd <4 x float> %i.exd, %i.exa
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit.sink.split

bb.cu:                                            ; preds = %._crit_edge867
  %i.exf = icmp ult i64 %.084.i.lcssa, 2
  br i1 %i.exf, label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit, label %bb.cv, !prof !11

bb.cv:                                            ; preds = %bb.cu
  %i.exg = icmp eq i64 %.084.i.lcssa, 2
  br i1 %i.exg, label %bb.cw, label %bb.da, !prof !11

bb.cw:                                            ; preds = %bb.cv
  %i.exh = load i64, ptr %5, align 8              ; 4 uses
  %i.exi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.exj = load i64, ptr %i.exi, align 8          ; 4 uses
  %i.exk = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %i.exl = load ptr, ptr %i.exk, align 64         ; 2 uses
  %.idx.i = shl i64 %i.exh, 5
  %i.exm = getelementptr inbounds nuw i8, ptr %i.exl, i64 %.idx.i
  %i.exn = load <4 x float>, ptr %i.eaw, align 16, !noalias !1094
  %i.exo = fmul <4 x float> %i.exn, splat (float 6.000000e+00)
  %i.exp = load <4 x float>, ptr %i.exm, align 16, !noalias !1095
  %i.exq = fadd <4 x float> %i.exp, %i.exo
  %.idx108.i = shl i64 %i.exj, 5
  %i.exr = getelementptr inbounds nuw i8, ptr %i.exl, i64 %.idx108.i
  %i.exs = load <4 x float>, ptr %i.exr, align 16, !noalias !1096
  %i.ext = fadd <4 x float> %i.exq, %i.exs
  %i.exu = fmul <4 x float> %i.ext, splat (float 1.250000e-01) ; 2 uses
  store <4 x float> %i.exu, ptr %i.ebg, align 16
  %i.exv = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.exw = load ptr, ptr %i.exv, align 64         ; 2 uses
  %i.exx = getelementptr inbounds nuw [4 x i8], ptr %i.exw, i64 %i.exh
  %i.exy = load float, ptr %i.exx, align 4        ; 3 uses
  %i.exz = getelementptr inbounds nuw [4 x i8], ptr %i.exw, i64 %i.exj
  %i.eya = load float, ptr %i.exz, align 4        ; 3 uses
  %i.eyb = tail call float @llvm.fmuladd.f32(float %i.exy, float 3.000000e+00, float %i.eya)
  %i.eyc = tail call float @llvm.fmuladd.f32(float %i.eyb, float 2.500000e-01, float -1.000000e+00) ; 2 uses
  %i.eyd = fcmp olt float %i.eyc, 0.000000e+00
  %i.eye = select i1 %i.eyd, float 0.000000e+00, float %i.eyc
  %i.eyf = getelementptr inbounds nuw i8, ptr %1, i64 12544 ; 4 uses
  %i.eyg = add i64 %i.exh, 1
  %i.eyh = icmp ult i64 %i.eyg, 17
  %.phi.trans.insert972 = getelementptr inbounds nuw i8, ptr %1, i64 12608 ; 2 uses
  %.pre973 = load ptr, ptr %.phi.trans.insert972, align 64 ; 3 uses
  br i1 %i.eyh, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i, label %bb.cx, !prof !11

bb.cx:                                            ; preds = %bb.cw
  %i.eyi = icmp eq ptr %.pre973, %i.eyf
  br i1 %i.eyi, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i, !prof !10

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i.loopexit: ; preds = %bb.cx
  %i.eyj = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20 ; 6 uses
  store ptr %i.eyj, ptr %.phi.trans.insert972, align 64
  %i.eyk = load <4 x float>, ptr %i.eyf, align 64
  store <4 x float> %i.eyk, ptr %i.eyj, align 4
  %i.eyl = getelementptr inbounds nuw i8, ptr %1, i64 12560
  %i.eym = getelementptr inbounds nuw i8, ptr %i.eyj, i64 16
  %i.eyn = load <4 x float>, ptr %i.eyl, align 16
  store <4 x float> %i.eyn, ptr %i.eym, align 4
  %i.eyo = getelementptr inbounds nuw i8, ptr %1, i64 12576
  %i.eyp = getelementptr inbounds nuw i8, ptr %i.eyj, i64 32
  %i.eyq = load <4 x float>, ptr %i.eyo, align 32
  store <4 x float> %i.eyq, ptr %i.eyp, align 4
  %i.eyr = getelementptr inbounds nuw i8, ptr %1, i64 12592
  %i.eys = getelementptr inbounds nuw i8, ptr %i.eyj, i64 48
  %i.eyt = load <4 x float>, ptr %i.eyr, align 16
  store <4 x float> %i.eyt, ptr %i.eys, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i: ; preds = %bb.cw, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i.loopexit, %bb.cx
  %i.eyu = phi ptr [ %.pre973, %bb.cx ], [ %i.eyj, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i.loopexit ], [ %.pre973, %bb.cw ]
  %i.eyv = getelementptr inbounds nuw i8, ptr %1, i64 12608 ; 2 uses
  %i.eyw = getelementptr inbounds nuw [4 x i8], ptr %i.eyu, i64 %i.exh
  store float %i.eye, ptr %i.eyw, align 4
  %i.eyx = tail call float @llvm.fmuladd.f32(float %i.eya, float 3.000000e+00, float %i.exy)
  %i.eyy = tail call float @llvm.fmuladd.f32(float %i.eyx, float 2.500000e-01, float -1.000000e+00) ; 2 uses
  %i.eyz = fcmp olt float %i.eyy, 0.000000e+00
  %i.eza = select i1 %i.eyz, float 0.000000e+00, float %i.eyy
  %i.ezb = add i64 %i.exj, 1
  %i.ezc = icmp ult i64 %i.ezb, 17
  %.pre974 = load ptr, ptr %i.eyv, align 64       ; 3 uses
  br i1 %i.ezc, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i, label %bb.cy, !prof !11

bb.cy:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i
  %i.ezd = icmp eq ptr %.pre974, %i.eyf
  br i1 %i.ezd, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i, !prof !10

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i.loopexit: ; preds = %bb.cy
  %i.eze = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20 ; 6 uses
  store ptr %i.eze, ptr %i.eyv, align 64
  %i.ezf = load <4 x float>, ptr %i.eyf, align 64
  store <4 x float> %i.ezf, ptr %i.eze, align 4
  %i.ezg = getelementptr inbounds nuw i8, ptr %1, i64 12560
  %i.ezh = getelementptr inbounds nuw i8, ptr %i.eze, i64 16
  %i.ezi = load <4 x float>, ptr %i.ezg, align 16
  store <4 x float> %i.ezi, ptr %i.ezh, align 4
  %i.ezj = getelementptr inbounds nuw i8, ptr %1, i64 12576
  %i.ezk = getelementptr inbounds nuw i8, ptr %i.eze, i64 32
  %i.ezl = load <4 x float>, ptr %i.ezj, align 32
  store <4 x float> %i.ezl, ptr %i.ezk, align 4
  %i.ezm = getelementptr inbounds nuw i8, ptr %1, i64 12592
  %i.ezn = getelementptr inbounds nuw i8, ptr %i.eze, i64 48
  %i.ezo = load <4 x float>, ptr %i.ezm, align 16
  store <4 x float> %i.ezo, ptr %i.ezn, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i: ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i.loopexit, %bb.cy, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i
  %i.ezp = phi ptr [ %i.eze, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i.loopexit ], [ %.pre974, %bb.cy ], [ %.pre974, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit115.i ]
  %i.ezq = getelementptr inbounds nuw [4 x i8], ptr %i.ezp, i64 %i.exj
  store float %i.eza, ptr %i.ezq, align 4
  %i.ezr = fadd float %i.exy, %i.eya
  %i.ezs = fmul float %i.ezr, 5.000000e-01        ; 3 uses
  %i.ezt = fcmp olt float %i.ezs, 1.000000e+00
  br i1 %i.ezt, label %bb.cz, label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit, !prof !10

bb.cz:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i
  %i.ezu = fsub nnan float 1.000000e+00, %i.ezs
  %i.ezv = insertelement <4 x float> poison, float %i.ezs, i64 0
  %i.ezw = shufflevector <4 x float> %i.ezv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ezx = fmul <4 x float> %i.exu, %i.ezw
  %i.ezy = insertelement <4 x float> poison, float %i.ezu, i64 0
  %i.ezz = shufflevector <4 x float> %i.ezy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.faa = fmul <4 x float> %i.ebf, %i.ezz
  %i.fab = fadd <4 x float> %i.ezx, %i.faa
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit.sink.split

bb.da:                                            ; preds = %bb.cv
  %i.fac = load <4 x float>, ptr %i.eaw, align 16
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit.sink.split

_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit.sink.split: ; preds = %bb.da, %bb.ct, %bb.cs, %bb.cz
  %.sink1119 = phi <4 x float> [ %i.fab, %bb.cz ], [ %i.ewv, %bb.cs ], [ %i.exe, %bb.ct ], [ %i.fac, %bb.da ]
  store <4 x float> %.sink1119, ptr %i.ebg, align 16
  br label %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit

_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit: ; preds = %_ZNK6embree18CatmullClark1RingTINS_6Vec3faES1_E9subdivideERS2_.exit.sink.split, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit117.i, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.fad = load float, ptr %i.a, align 4
  %i.fae = fmul float %i.fad, 5.000000e-01        ; 5 uses
  store float %i.fae, ptr %i.d, align 4
  %i.faf = load float, ptr %i.ami, align 4
  %i.fag = load float, ptr %i.dmy, align 4
  %i.fah = fadd float %i.faf, %i.fag
  %i.fai = fmul float %i.fah, 2.500000e-01
  %i.faj = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 2 uses
  %i.fak = getelementptr inbounds nuw i8, ptr %1, i64 1028
  store float %i.fai, ptr %i.fak, align 4
  %i.fal = load float, ptr %i.a, align 4
  %i.fam = load float, ptr %i.bzq, align 4
  %i.fan = fadd float %i.fal, %i.fam
  %i.fao = fmul float %i.fan, 2.500000e-01
  %i.fap = getelementptr inbounds nuw i8, ptr %1, i64 1664
  %i.faq = getelementptr inbounds nuw i8, ptr %1, i64 1860
  store float %i.fao, ptr %i.faq, align 4
  %i.far = load float, ptr %i.dmy, align 4
  %i.fas = fmul float %i.far, 5.000000e-01
  %i.fat = getelementptr inbounds nuw i8, ptr %1, i64 2496 ; 2 uses
  %i.fau = getelementptr inbounds nuw i8, ptr %1, i64 2692
  store float %i.fas, ptr %i.fau, align 4
  %i.fav = load float, ptr %i.a, align 4
  %i.faw = fmul float %i.fav, 5.000000e-01
  %i.fax = getelementptr inbounds nuw i8, ptr %1, i64 3524
  store float %i.faw, ptr %i.fax, align 4
  %i.fay = load float, ptr %i.ami, align 4
  %i.faz = fmul float %i.fay, 5.000000e-01
  store float %i.faz, ptr %i.aml, align 4
  %i.fba = load float, ptr %i.a, align 4
  %i.fbb = load float, ptr %i.bzq, align 4
  %i.fbc = fadd float %i.fba, %i.fbb
  %i.fbd = fmul float %i.fbc, 2.500000e-01
  %i.fbe = getelementptr inbounds nuw i8, ptr %1, i64 4992 ; 2 uses
  %i.fbf = getelementptr inbounds nuw i8, ptr %1, i64 5188
  store float %i.fbd, ptr %i.fbf, align 4
  %i.fbg = load float, ptr %i.ami, align 4
  %i.fbh = load float, ptr %i.dmy, align 4
  %i.fbi = fadd float %i.fbg, %i.fbh
  %i.fbj = fmul float %i.fbi, 2.500000e-01
  %i.fbk = getelementptr inbounds nuw i8, ptr %1, i64 5824
  %i.fbl = getelementptr inbounds nuw i8, ptr %1, i64 6020
  store float %i.fbj, ptr %i.fbl, align 4
  %i.fbm = load float, ptr %i.a, align 4
  %i.fbn = load float, ptr %i.bzq, align 4
  %i.fbo = fadd float %i.fbm, %i.fbn
  %i.fbp = fmul float %i.fbo, 2.500000e-01
  %i.fbq = getelementptr inbounds nuw i8, ptr %1, i64 6852
  store float %i.fbp, ptr %i.fbq, align 4
  %i.fbr = load float, ptr %i.ami, align 4
  %i.fbs = fmul float %i.fbr, 5.000000e-01
  %i.fbt = getelementptr inbounds nuw i8, ptr %1, i64 7488 ; 2 uses
  %i.fbu = getelementptr inbounds nuw i8, ptr %1, i64 7684
  store float %i.fbs, ptr %i.fbu, align 4
  %i.fbv = load float, ptr %i.bzq, align 4
  %i.fbw = fmul float %i.fbv, 5.000000e-01
end_hunk_7
begin_hunk_8_@_ZNK6embree25GeneralCatmullClarkPatchTINS_6Vec3faES1_E9subdivideERNS_7array_tINS_18CatmullClarkPatchTIS1_S1_EELm16EEERj:bb.a
  %i.kd = sext i32 %i.kc to i64
  %i.ke = add nsw i64 %.076.i171, %i.kd           ; 2 uses
  %.not.i164 = icmp ugt i64 %.076.i171, %i.ke
  br i1 %.not.i164, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.kf = load ptr, ptr %i.au, align 64
  %i.kg = load i32, ptr %i.av, align 4
  %i.kh = zext i32 %i.kg to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.sroa.0109.0.lcssa = phi <4 x float> [ %i.ka, %bb.c ], [ %i.oz, %bb.e ]
  %i.ki = add nsw i32 %i.kc, 2
  %i.kj = sitofp i32 %i.ki to float
  %i.kk = insertelement <4 x float> poison, float %i.kj, i64 0
  %i.kl = shufflevector <4 x float> %i.kk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.km = fdiv <4 x float> %.sroa.0109.0.lcssa, %i.kl ; 2 uses
  %i.kn = icmp samesign ult i64 %i.jz, 16
  %.pre250 = load ptr, ptr %i.ax, align 64        ; 3 uses
  br i1 %i.kn, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i, label %bb.d, !prof !11

bb.d:                                             ; preds = %._crit_edge
  %i.ko = icmp eq ptr %.pre250, %i.aw
  br i1 %i.ko, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i.loopexit, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i.loopexit: ; preds = %bb.d
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
  %.pre249 = load ptr, ptr %i.ax, align 64
  br label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i: ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i.loopexit, %bb.d, %._crit_edge
  %i.og = phi ptr [ %.pre249, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit.i.loopexit ], [ %.pre250, %bb.d ], [ %.pre250, %._crit_edge ]
  %.idx = shl nuw nsw i64 %i.jz, 5
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %.idx
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store <4 x float> %i.km, ptr %i.oi, align 16
  %i.oj = fadd <4 x float> %.sroa.0111.0169, %i.km ; 3 uses
  %i.ok = load ptr, ptr %i.at, align 64           ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %i.jz
  %i.om = load i32, ptr %i.ol, align 4
  %i.on = sext i32 %i.om to i64
  %i.oo = add nsw i64 %.076.i171, %i.on
  %i.op = load i32, ptr %i.av, align 4
  %i.oq = zext i32 %i.op to i64
  %i.or = urem i64 %i.oo, %i.oq
  %i.os = add nuw nsw i64 %.077.i170, 1           ; 2 uses
  %i.ot = load i32, ptr %i.t, align 64            ; 3 uses
  %i.ou = zext i32 %i.ot to i64                   ; 2 uses
  %i.ov = icmp samesign ult i64 %i.os, %i.ou
  br i1 %i.ov, label %bb.c, label %._crit_edge174, !llvm.loop !1502

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.075.i166 = phi i64 [ %.076.i171, %.lr.ph ], [ %i.pa, %bb.e ] ; 2 uses
  %.sroa.0109.0165 = phi <4 x float> [ %i.ka, %.lr.ph ], [ %i.oz, %bb.e ]
  %i.ow = urem i64 %.075.i166, %i.kh
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %i.kf, i64 %i.ow
  %i.oy = load <4 x float>, ptr %i.ox, align 16, !noalias !1528
  %i.oz = fadd <4 x float> %.sroa.0109.0165, %i.oy ; 2 uses
  %i.pa = add i64 %.075.i166, 1                   ; 2 uses
  %.not.i = icmp ugt i64 %i.pa, %i.ke
  br i1 %.not.i, label %._crit_edge, label %bb.e, !llvm.loop !1505

._crit_edge190.loopexit:                          ; preds = %bb.s
  %i.pb = uitofp i32 %i.apk to float
  br label %._crit_edge190

._crit_edge190:                                   ; preds = %._crit_edge174.thread, %._crit_edge190.loopexit, %._crit_edge174
  %.sroa.0106.0.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge174 ], [ %.sroa.0106.1, %._crit_edge190.loopexit ], [ zeroinitializer, %._crit_edge174.thread ]
  %.sroa.0111.1.lcssa = phi <4 x float> [ %i.oj, %._crit_edge174 ], [ %i.aca, %._crit_edge190.loopexit ], [ zeroinitializer, %._crit_edge174.thread ]
  %.074.i.lcssa = phi i64 [ 0, %._crit_edge174 ], [ %.1.i, %._crit_edge190.loopexit ], [ 0, %._crit_edge174.thread ] ; 2 uses
  %.lcssa163 = phi float [ 0.000000e+00, %._crit_edge174 ], [ %i.pb, %._crit_edge190.loopexit ], [ 0.000000e+00, %._crit_edge174.thread ] ; 2 uses
  %i.pc = fdiv float 1.000000e+00, %.lcssa163
  %i.pd = fadd nnan float %.lcssa163, -2.000000e+00
  %i.pe = insertelement <4 x float> poison, float %i.pd, i64 0
  %i.pf = shufflevector <4 x float> %i.pe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pg = load <4 x float>, ptr %i.j, align 64, !noalias !1529
  %i.ph = fmul <4 x float> %i.pf, %i.pg
  %i.pi = insertelement <4 x float> poison, float %i.pc, i64 0
  %i.pj = shufflevector <4 x float> %i.pi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pk = fmul <4 x float> %.sroa.0111.1.lcssa, %i.pj
  %i.pl = fadd <4 x float> %i.pk, %i.ph
  %i.pm = fmul <4 x float> %i.pj, %i.pl           ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.k, i64 208 ; 3 uses
  store <4 x float> %i.pm, ptr %i.pn, align 16
  %i.po = load float, ptr %i.ac, align 4          ; 4 uses
  %i.pp = fcmp ogt float %i.po, 0.000000e+00
  br i1 %i.pp, label %bb.t, label %bb.w, !prof !10

bb.f:                                             ; preds = %.lr.ph189, %bb.s
  %i.pq = phi i64 [ %i.cd, %.lr.ph189 ], [ %i.apl, %bb.s ]
  %.0.i187 = phi i64 [ %i.cf, %.lr.ph189 ], [ %i.api, %bb.s ] ; 4 uses
  %.073.i186 = phi i64 [ 0, %.lr.ph189 ], [ %i.apj, %bb.s ] ; 2 uses
  %.074.i185 = phi i64 [ 0, %.lr.ph189 ], [ %.1.i, %bb.s ] ; 5 uses
  %.sroa.0111.1184 = phi <4 x float> [ %i.oj, %.lr.ph189 ], [ %i.aca, %bb.s ]
  %.sroa.0106.0183 = phi <4 x float> [ zeroinitializer, %.lr.ph189 ], [ %.sroa.0106.1, %bb.s ] ; 4 uses
  %i.pr = load i32, ptr %i.ai, align 4
  %i.ps = zext i32 %i.pr to i64
  %i.pt = add nuw nsw i64 %.073.i186, %i.ps
  %i.pu = urem i64 %i.pt, %i.pq                   ; 10 uses
  %i.pv = load ptr, ptr %i.cg, align 64
  %i.pw = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %.0.i187
  %i.px = load <4 x float>, ptr %i.j, align 64, !noalias !1530
  %i.py = load <4 x float>, ptr %i.pw, align 16, !noalias !1530
  %i.pz = fadd <4 x float> %i.px, %i.py           ; 3 uses
  %i.qa = shl nuw nsw i64 %i.pu, 1                ; 5 uses
  %i.qb = icmp samesign ult i64 %i.pu, 16         ; 5 uses
  %.pre252 = load ptr, ptr %i.ci, align 64        ; 7 uses
  br i1 %i.qb, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit92.i, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.qc = icmp eq ptr %.pre252, %i.ch
  br i1 %i.qc, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit92.i.loopexit, label %bb.j, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit92.i.loopexit: ; preds = %bb.g
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
  %.pre251 = load ptr, ptr %i.ci, align 64
  br label %bb.j

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit92.i: ; preds = %bb.f
  %i.tu = getelementptr inbounds nuw [16 x i8], ptr %.pre252, i64 %i.qa
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.tw = load <4 x float>, ptr %i.tv, align 16   ; 2 uses
  %i.tx = icmp eq i64 %i.pu, 0
  br i1 %i.tx, label %bb.h, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit97.i

bb.h:                                             ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit92.i
  %i.ty = load i32, ptr %i.x, align 8             ; 2 uses
  %i.tz = add i32 %i.ty, -1
  %i.ua = icmp ult i32 %i.ty, 33
  br i1 %i.ua, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EEixEj.exit.i, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.ub = icmp eq ptr %.pre252, %i.ch
  br i1 %i.ub, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EEixEj.exit.i.loopexit, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EEixEj.exit.i, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EEixEj.exit.i.loopexit: ; preds = %bb.i
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
end_hunk_8
begin_hunk_9_@_ZNK6embree25GeneralCatmullClarkPatchTINS_6Vec3faES1_E9subdivideERNS_7array_tINS_18CatmullClarkPatchTIS1_S1_EELm16EEERj:bb.a
  %i.aks = getelementptr inbounds nuw [16 x i8], ptr %i.akr, i64 %i.qa
  store <4 x float> %i.agy, ptr %i.aks, align 16
  %i.akt = load ptr, ptr %i.cj, align 64
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %i.pu
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 4
  %i.akw = load float, ptr %i.akv, align 4        ; 3 uses
  %i.akx = fcmp olt float %i.akw, 1.000000e+00
  br i1 %i.akx, label %bb.q, label %bb.s, !prof !10

bb.q:                                             ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit107.i
  %i.aky = fadd <4 x float> %i.pz, %.sroa.098.0
  %i.akz = fmul <4 x float> %i.aky, splat (float 2.500000e-01)
  %i.ala = fsub nnan float 1.000000e+00, %i.akw
  %i.alb = insertelement <4 x float> poison, float %i.akw, i64 0
  %i.alc = shufflevector <4 x float> %i.alb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ald = fmul <4 x float> %i.agy, %i.alc
  %i.ale = insertelement <4 x float> poison, float %i.ala, i64 0
  %i.alf = shufflevector <4 x float> %i.ale, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alg = fmul <4 x float> %i.akz, %i.alf
  %i.alh = fadd <4 x float> %i.ald, %i.alg        ; 3 uses
  %.pre261 = load ptr, ptr %i.ci, align 64        ; 3 uses
  br i1 %i.qb, label %.sink.split, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.ali = icmp eq ptr %.pre261, %i.ch
  br i1 %i.ali, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit112.i.loopexit, label %.sink.split, !prof !10

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit112.i.loopexit: ; preds = %bb.r
  %i.alj = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 2048, i64 noundef 16) ; 2 uses
  store ptr %i.alj, ptr %i.ci, align 64
  %i.alk = load <4 x float>, ptr %i.ch, align 64
  store <4 x float> %i.alk, ptr %i.alj, align 16
  %i.all = load ptr, ptr %i.ci, align 64
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 16
  %i.aln = load <4 x float>, ptr %i.ip, align 16
  store <4 x float> %i.aln, ptr %i.alm, align 16
  %i.alo = load ptr, ptr %i.ci, align 64
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 32
  %i.alq = load <4 x float>, ptr %i.iq, align 32
  store <4 x float> %i.alq, ptr %i.alp, align 16
  %i.alr = load ptr, ptr %i.ci, align 64
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 48
  %i.alt = load <4 x float>, ptr %i.ir, align 16
  store <4 x float> %i.alt, ptr %i.als, align 16
  %i.alu = load ptr, ptr %i.ci, align 64
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 64
  %i.alw = load <4 x float>, ptr %i.is, align 64
  store <4 x float> %i.alw, ptr %i.alv, align 16
  %i.alx = load ptr, ptr %i.ci, align 64
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 80
  %i.alz = load <4 x float>, ptr %i.it, align 16
  store <4 x float> %i.alz, ptr %i.aly, align 16
  %i.ama = load ptr, ptr %i.ci, align 64
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 96
  %i.amc = load <4 x float>, ptr %i.iu, align 32
  store <4 x float> %i.amc, ptr %i.amb, align 16
  %i.amd = load ptr, ptr %i.ci, align 64
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 112
  %i.amf = load <4 x float>, ptr %i.iv, align 16
  store <4 x float> %i.amf, ptr %i.ame, align 16
  %i.amg = load ptr, ptr %i.ci, align 64
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 128
  %i.ami = load <4 x float>, ptr %i.iw, align 64
  store <4 x float> %i.ami, ptr %i.amh, align 16
  %i.amj = load ptr, ptr %i.ci, align 64
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 144
  %i.aml = load <4 x float>, ptr %i.ix, align 16
  store <4 x float> %i.aml, ptr %i.amk, align 16
  %i.amm = load ptr, ptr %i.ci, align 64
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 160
  %i.amo = load <4 x float>, ptr %i.iy, align 32
  store <4 x float> %i.amo, ptr %i.amn, align 16
  %i.amp = load ptr, ptr %i.ci, align 64
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 176
  %i.amr = load <4 x float>, ptr %i.iz, align 16
  store <4 x float> %i.amr, ptr %i.amq, align 16
  %i.ams = load ptr, ptr %i.ci, align 64
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 192
  %i.amu = load <4 x float>, ptr %i.ja, align 64
  store <4 x float> %i.amu, ptr %i.amt, align 16
  %i.amv = load ptr, ptr %i.ci, align 64
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 208
  %i.amx = load <4 x float>, ptr %i.jb, align 16
  store <4 x float> %i.amx, ptr %i.amw, align 16
  %i.amy = load ptr, ptr %i.ci, align 64
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 224
  %i.ana = load <4 x float>, ptr %i.jc, align 32
  store <4 x float> %i.ana, ptr %i.amz, align 16
  %i.anb = load ptr, ptr %i.ci, align 64
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 240
  %i.and = load <4 x float>, ptr %i.jd, align 16
  store <4 x float> %i.and, ptr %i.anc, align 16
  %i.ane = load ptr, ptr %i.ci, align 64
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 256
  %i.ang = load <4 x float>, ptr %i.je, align 64
  store <4 x float> %i.ang, ptr %i.anf, align 16
  %i.anh = load ptr, ptr %i.ci, align 64
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 272
  %i.anj = load <4 x float>, ptr %i.jf, align 16
  store <4 x float> %i.anj, ptr %i.ani, align 16
  %i.ank = load ptr, ptr %i.ci, align 64
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 288
  %i.anm = load <4 x float>, ptr %i.jg, align 32
  store <4 x float> %i.anm, ptr %i.anl, align 16
  %i.ann = load ptr, ptr %i.ci, align 64
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 304
  %i.anp = load <4 x float>, ptr %i.jh, align 16
  store <4 x float> %i.anp, ptr %i.ano, align 16
  %i.anq = load ptr, ptr %i.ci, align 64
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 320
  %i.ans = load <4 x float>, ptr %i.ji, align 64
  store <4 x float> %i.ans, ptr %i.anr, align 16
  %i.ant = load ptr, ptr %i.ci, align 64
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 336
  %i.anv = load <4 x float>, ptr %i.jj, align 16
  store <4 x float> %i.anv, ptr %i.anu, align 16
  %i.anw = load ptr, ptr %i.ci, align 64
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 352
  %i.any = load <4 x float>, ptr %i.jk, align 32
  store <4 x float> %i.any, ptr %i.anx, align 16
  %i.anz = load ptr, ptr %i.ci, align 64
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 368
  %i.aob = load <4 x float>, ptr %i.jl, align 16
  store <4 x float> %i.aob, ptr %i.aoa, align 16
  %i.aoc = load ptr, ptr %i.ci, align 64
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 384
  %i.aoe = load <4 x float>, ptr %i.jm, align 64
  store <4 x float> %i.aoe, ptr %i.aod, align 16
  %i.aof = load ptr, ptr %i.ci, align 64
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 400
  %i.aoh = load <4 x float>, ptr %i.jn, align 16
  store <4 x float> %i.aoh, ptr %i.aog, align 16
  %i.aoi = load ptr, ptr %i.ci, align 64
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 416
  %i.aok = load <4 x float>, ptr %i.jo, align 32
  store <4 x float> %i.aok, ptr %i.aoj, align 16
  %i.aol = load ptr, ptr %i.ci, align 64
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 432
  %i.aon = load <4 x float>, ptr %i.jp, align 16
  store <4 x float> %i.aon, ptr %i.aom, align 16
  %i.aoo = load ptr, ptr %i.ci, align 64
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 448
  %i.aoq = load <4 x float>, ptr %i.jq, align 64
  store <4 x float> %i.aoq, ptr %i.aop, align 16
  %i.aor = load ptr, ptr %i.ci, align 64
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 464
  %i.aot = load <4 x float>, ptr %i.jr, align 16
  store <4 x float> %i.aot, ptr %i.aos, align 16
  %i.aou = load ptr, ptr %i.ci, align 64
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 480
  %i.aow = load <4 x float>, ptr %i.js, align 32
  store <4 x float> %i.aow, ptr %i.aov, align 16
  %i.aox = load ptr, ptr %i.ci, align 64
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 496
  %i.aoz = load <4 x float>, ptr %i.jt, align 16
  store <4 x float> %i.aoz, ptr %i.aoy, align 16
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit102.i.loopexit, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit112.i.loopexit
  %.sink.ph = phi <4 x float> [ %i.alh, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit112.i.loopexit ], [ %i.acz, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit102.i.loopexit ]
  %.sroa.0106.1.ph.ph = phi <4 x float> [ %i.agv, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit112.i.loopexit ], [ %.sroa.0106.0183, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit102.i.loopexit ]
  %.1.i.ph.ph = phi i64 [ %i.agw, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit112.i.loopexit ], [ %.074.i185, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit102.i.loopexit ]
  %.pre260 = load ptr, ptr %i.ci, align 64
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.q, %bb.r, %bb.m, %bb.n
  %.sink315 = phi ptr [ %.pre257, %bb.m ], [ %.pre261, %bb.r ], [ %.pre257, %bb.n ], [ %.pre261, %bb.q ], [ %.pre260, %.sink.split.sink.split ]
  %.sink = phi <4 x float> [ %i.acz, %bb.m ], [ %i.alh, %bb.r ], [ %i.acz, %bb.n ], [ %i.alh, %bb.q ], [ %.sink.ph, %.sink.split.sink.split ]
  %.sroa.0106.1.ph = phi <4 x float> [ %.sroa.0106.0183, %bb.m ], [ %i.agv, %bb.r ], [ %.sroa.0106.0183, %bb.n ], [ %i.agv, %bb.q ], [ %.sroa.0106.1.ph.ph, %.sink.split.sink.split ]
  %.1.i.ph = phi i64 [ %.074.i185, %bb.m ], [ %i.agw, %bb.r ], [ %.074.i185, %bb.n ], [ %i.agw, %bb.q ], [ %.1.i.ph.ph, %.sink.split.sink.split ]
  %i.apa = getelementptr inbounds nuw [16 x i8], ptr %.sink315, i64 %i.qa
  store <4 x float> %.sink, ptr %i.apa, align 16
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit107.i
  %.sroa.0106.1 = phi <4 x float> [ %i.agv, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit107.i ], [ %.sroa.0106.1.ph, %.sink.split ] ; 2 uses
  %.1.i = phi i64 [ %i.agw, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EE6resizeEm.exit107.i ], [ %.1.i.ph, %.sink.split ] ; 2 uses
  %i.apb = load ptr, ptr %i.cj, align 64
  %i.apc = getelementptr inbounds nuw [8 x i8], ptr %i.apb, i64 %i.pu
  %i.apd = load i32, ptr %i.apc, align 4
  %i.ape = sext i32 %i.apd to i64
  %i.apf = add nsw i64 %.0.i187, %i.ape
  %i.apg = load i32, ptr %i.cm, align 4
  %i.aph = zext i32 %i.apg to i64
  %i.api = urem i64 %i.apf, %i.aph
  %i.apj = add nuw nsw i64 %.073.i186, 1          ; 2 uses
  %i.apk = load i32, ptr %i.t, align 64           ; 2 uses
  %i.apl = zext i32 %i.apk to i64                 ; 2 uses
  %i.apm = icmp samesign ult i64 %i.apj, %i.apl
  br i1 %i.apm, label %bb.f, label %._crit_edge190.loopexit, !llvm.loop !1514

bb.t:                                             ; preds = %._crit_edge190
  %i.apn = fcmp ult float %i.po, 1.000000e+00
  br i1 %i.apn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.apo = load <4 x float>, ptr %i.j, align 64
  br label %_ZNK6embree25GeneralCatmullClark1RingTINS_6Vec3faES1_E9subdivideERNS_18CatmullClark1RingTIS1_S1_EE.exit.sink.split

bb.v:                                             ; preds = %bb.t
  %i.app = fsub nnan float 1.000000e+00, %i.po
  %i.apq = insertelement <4 x float> poison, float %i.po, i64 0
  %i.apr = shufflevector <4 x float> %i.apq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aps = fmul <4 x float> %i.pm, %i.apr
  %i.apt = insertelement <4 x float> poison, float %i.app, i64 0
  %i.apu = shufflevector <4 x float> %i.apt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apv = load <4 x float>, ptr %i.j, align 64, !noalias !1534
  %i.apw = fmul <4 x float> %i.apu, %i.apv
  %i.apx = fadd <4 x float> %i.aps, %i.apw
  br label %_ZNK6embree25GeneralCatmullClark1RingTINS_6Vec3faES1_E9subdivideERNS_18CatmullClark1RingTIS1_S1_EE.exit.sink.split

bb.w:                                             ; preds = %._crit_edge190
  %i.apy = icmp ult i64 %.074.i.lcssa, 2
  br i1 %i.apy, label %_ZNK6embree25GeneralCatmullClark1RingTINS_6Vec3faES1_E9subdivideERNS_18CatmullClark1RingTIS1_S1_EE.exit, label %bb.x, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.apz = icmp eq i64 %.074.i.lcssa, 2
  %i.aqa = load <4 x float>, ptr %i.j, align 64   ; 2 uses
  br i1 %i.apz, label %bb.y, label %_ZNK6embree25GeneralCatmullClark1RingTINS_6Vec3faES1_E9subdivideERNS_18CatmullClark1RingTIS1_S1_EE.exit.sink.split, !prof !11

bb.y:                                             ; preds = %bb.x
  %i.aqb = fmul <4 x float> %i.aqa, splat (float 6.000000e+00)
  %i.aqc = fadd <4 x float> %.sroa.0106.0.lcssa, %i.aqb
  %i.aqd = fmul <4 x float> %i.aqc, splat (float 1.250000e-01) ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.j, i64 768
  %i.aqf = load ptr, ptr %i.aqe, align 64         ; 2 uses
  %i.aqg = load i64, ptr %3, align 8              ; 3 uses
  %i.aqh = getelementptr inbounds nuw [8 x i8], ptr %i.aqf, i64 %i.aqg
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 4
  %i.aqj = load float, ptr %i.aqi, align 4        ; 3 uses
  %i.aqk = load i64, ptr %i.d, align 8            ; 3 uses
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %i.aqf, i64 %i.aqk
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 4
  %i.aqn = load float, ptr %i.aqm, align 4        ; 3 uses
  store <4 x float> %i.aqd, ptr %i.pn, align 16
  %i.aqo = tail call float @llvm.fmuladd.f32(float %i.aqj, float 3.000000e+00, float %i.aqn)
  %i.aqp = tail call float @llvm.fmuladd.f32(float %i.aqo, float 2.500000e-01, float -1.000000e+00) ; 2 uses
  %i.aqq = fcmp olt float %i.aqp, 0.000000e+00
  %i.aqr = select i1 %i.aqq, float 0.000000e+00, float %i.aqp
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 4 uses
  %i.aqt = add i64 %i.aqg, 1
  %i.aqu = icmp ult i64 %i.aqt, 17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %.pre262 = load ptr, ptr %.phi.trans.insert, align 64 ; 3 uses
  br i1 %i.aqu, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit84.i, label %bb.z, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.aqv = icmp eq ptr %.pre262, %i.aqs
  br i1 %i.aqv, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit84.i.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit84.i, !prof !10

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit84.i.loopexit: ; preds = %bb.z
  %i.aqw = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20 ; 6 uses
  store ptr %i.aqw, ptr %.phi.trans.insert, align 64
  %i.aqx = load <4 x float>, ptr %i.aqs, align 64
  store <4 x float> %i.aqx, ptr %i.aqw, align 4
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqw, i64 16
  %i.ara = load <4 x float>, ptr %i.aqy, align 16
  store <4 x float> %i.ara, ptr %i.aqz, align 4
  %i.arb = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqw, i64 32
  %i.ard = load <4 x float>, ptr %i.arb, align 32
  store <4 x float> %i.ard, ptr %i.arc, align 4
  %i.are = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqw, i64 48
  %i.arg = load <4 x float>, ptr %i.are, align 16
  store <4 x float> %i.arg, ptr %i.arf, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit84.i

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit84.i: ; preds = %bb.y, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit84.i.loopexit, %bb.z
  %i.arh = phi ptr [ %.pre262, %bb.z ], [ %i.aqw, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit84.i.loopexit ], [ %.pre262, %bb.y ]
  %i.ari = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %i.arh, i64 %i.aqg
  store float %i.aqr, ptr %i.arj, align 4
  %i.ark = tail call float @llvm.fmuladd.f32(float %i.aqn, float 3.000000e+00, float %i.aqj)
  %i.arl = tail call float @llvm.fmuladd.f32(float %i.ark, float 2.500000e-01, float -1.000000e+00) ; 2 uses
  %i.arm = fcmp olt float %i.arl, 0.000000e+00
  %i.arn = select i1 %i.arm, float 0.000000e+00, float %i.arl
  %i.aro = add i64 %i.aqk, 1
  %i.arp = icmp ult i64 %i.aro, 17
  %.pre263 = load ptr, ptr %i.ari, align 64       ; 3 uses
  br i1 %i.arp, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit86.i, label %bb.aa, !prof !11

bb.aa:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit84.i
  %i.arq = icmp eq ptr %.pre263, %i.aqs
  br i1 %i.arq, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit86.i.loopexit, label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit86.i, !prof !10

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit86.i.loopexit: ; preds = %bb.aa
  %i.arr = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20 ; 6 uses
  store ptr %i.arr, ptr %i.ari, align 64
  %i.ars = load <4 x float>, ptr %i.aqs, align 64
  store <4 x float> %i.ars, ptr %i.arr, align 4
  %i.art = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arr, i64 16
  %i.arv = load <4 x float>, ptr %i.art, align 16
  store <4 x float> %i.arv, ptr %i.aru, align 4
  %i.arw = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arr, i64 32
  %i.ary = load <4 x float>, ptr %i.arw, align 32
  store <4 x float> %i.ary, ptr %i.arx, align 4
  %i.arz = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arr, i64 48
  %i.asb = load <4 x float>, ptr %i.arz, align 16
  store <4 x float> %i.asb, ptr %i.asa, align 4
  br label %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit86.i

_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit86.i: ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit86.i.loopexit, %bb.aa, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit84.i
  %i.asc = phi ptr [ %i.arr, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit86.i.loopexit ], [ %.pre263, %bb.aa ], [ %.pre263, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit84.i ]
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %i.aqk
  store float %i.arn, ptr %i.asd, align 4
  %i.ase = fadd float %i.aqj, %i.aqn
  %i.asf = fmul float %i.ase, 5.000000e-01        ; 3 uses
  %i.asg = fcmp olt float %i.asf, 1.000000e+00
  br i1 %i.asg, label %bb.ab, label %_ZNK6embree25GeneralCatmullClark1RingTINS_6Vec3faES1_E9subdivideERNS_18CatmullClark1RingTIS1_S1_EE.exit, !prof !10

bb.ab:                                            ; preds = %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit86.i
  %i.ash = fsub nnan float 1.000000e+00, %i.asf
  %i.asi = insertelement <4 x float> poison, float %i.asf, i64 0
  %i.asj = shufflevector <4 x float> %i.asi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ask = fmul <4 x float> %i.pm, %i.asj
  %i.asl = insertelement <4 x float> poison, float %i.ash, i64 0
  %i.asm = shufflevector <4 x float> %i.asl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asn = fmul <4 x float> %i.aqd, %i.asm
  %i.aso = fadd <4 x float> %i.ask, %i.asn
  br label %_ZNK6embree25GeneralCatmullClark1RingTINS_6Vec3faES1_E9subdivideERNS_18CatmullClark1RingTIS1_S1_EE.exit.sink.split

_ZNK6embree25GeneralCatmullClark1RingTINS_6Vec3faES1_E9subdivideERNS_18CatmullClark1RingTIS1_S1_EE.exit.sink.split: ; preds = %bb.x, %bb.v, %bb.u, %bb.ab
  %.sink316 = phi <4 x float> [ %i.aso, %bb.ab ], [ %i.apo, %bb.u ], [ %i.apx, %bb.v ], [ %i.aqa, %bb.x ]
  store <4 x float> %.sink316, ptr %i.pn, align 16
  br label %_ZNK6embree25GeneralCatmullClark1RingTINS_6Vec3faES1_E9subdivideERNS_18CatmullClark1RingTIS1_S1_EE.exit

_ZNK6embree25GeneralCatmullClark1RingTINS_6Vec3faES1_E9subdivideERNS_18CatmullClark1RingTIS1_S1_EE.exit: ; preds = %_ZNK6embree25GeneralCatmullClark1RingTINS_6Vec3faES1_E9subdivideERNS_18CatmullClark1RingTIS1_S1_EE.exit.sink.split, %_ZN6embree17DynamicStackArrayIfLm16ELm64EE6resizeEm.exit86.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.asp = load ptr, ptr %i.c, align 64
  %i.asq = getelementptr inbounds nuw [896 x i8], ptr %i.asp, i64 %indvars.iv
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 852
  %i.ass = load float, ptr %i.asr, align 4
  %i.ast = fmul float %i.ass, 5.000000e-01
  store float %i.ast, ptr %i.o, align 4
  %i.asu = load ptr, ptr %i.c, align 64
  %i.asv = getelementptr inbounds nuw [896 x i8], ptr %i.asu, i64 %indvars.iv
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 852
  %i.asx = load float, ptr %i.asw, align 4
  %i.asy = fmul float %i.asx, 5.000000e-01
  %i.asz = select i1 %i.h, i64 0, i64 %indvars.iv.next
  %i.ata = getelementptr inbounds nuw [3328 x i8], ptr %1, i64 %i.asz
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 2692
  store float %i.asy, ptr %i.atb, align 4
  %i.atc = load i32, ptr %i.a, align 64           ; 4 uses
  %i.atd = zext i32 %i.atc to i64
  %i.ate = icmp samesign ult i64 %indvars.iv.next, %i.atd
  br i1 %i.ate, label %bb.b, label %._crit_edge200, !llvm.loop !1521

._crit_edge206:                                   ; preds = %_ZN6embree25GeneralCatmullClarkPatchTINS_6Vec3faES1_E12init_regularERKNS_18CatmullClark1RingTIS1_S1_EES6_RS4_S7_.exit
  %i.atf = uitofp i32 %i.bcw to float
  %i.atg = insertelement <4 x float> poison, float %i.atf, i64 0
  %i.ath = shufflevector <4 x float> %i.atg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ati = fdiv <4 x float> %i.bck, %i.ath
  %.not224 = icmp eq i32 %i.bcw, 0
  br i1 %.not224, label %._crit_edge219, label %.lr.ph218

bb.ac:                                            ; preds = %.lr.ph205, %_ZN6embree25GeneralCatmullClarkPatchTINS_6Vec3faES1_E12init_regularERKNS_18CatmullClark1RingTIS1_S1_EES6_RS4_S7_.exit
  %i.atj = phi ptr [ %.pre264, %.lr.ph205 ], [ %i.bch, %_ZN6embree25GeneralCatmullClarkPatchTINS_6Vec3faES1_E12init_regularERKNS_18CatmullClark1RingTIS1_S1_EES6_RS4_S7_.exit ] ; 2 uses
  %indvars.iv234 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next235, %_ZN6embree25GeneralCatmullClarkPatchTINS_6Vec3faES1_E12init_regularERKNS_18CatmullClark1RingTIS1_S1_EES6_RS4_S7_.exit ] ; 7 uses
  %i.atk = phi i32 [ %i.atc, %.lr.ph205 ], [ %i.bcw, %_ZN6embree25GeneralCatmullClarkPatchTINS_6Vec3faES1_E12init_regularERKNS_18CatmullClark1RingTIS1_S1_EES6_RS4_S7_.exit ] ; 3 uses
  %.060202 = phi float [ 2.000000e+00, %.lr.ph205 ], [ %i.bcg, %_ZN6embree25GeneralCatmullClarkPatchTINS_6Vec3faES1_E12init_regularERKNS_18CatmullClark1RingTIS1_S1_EES6_RS4_S7_.exit ] ; 2 uses
  %.sroa.076.0201 = phi <4 x float> [ zeroinitializer, %.lr.ph205 ], [ %i.bck, %_ZN6embree25GeneralCatmullClarkPatchTINS_6Vec3faES1_E12init_regularERKNS_18CatmullClark1RingTIS1_S1_EES6_RS4_S7_.exit ]
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 4 uses
  %i.atl = zext i32 %i.atk to i64
  %i.atm = icmp eq i64 %indvars.iv.next235, %i.atl
  %i.atn = trunc nuw i64 %indvars.iv234 to i32    ; 2 uses
  %i.ato = add i32 %i.atn, -1
  %i.atp = add i32 %i.ato, %i.atk
  %i.atq = urem i32 %i.atp, %i.atk
  %i.atr = getelementptr inbounds nuw [896 x i8], ptr %i.atj, i64 %indvars.iv234 ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 840
  %i.att = load i32, ptr %i.ats, align 8
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atr, i64 832
  %i.atv = load i32, ptr %i.atu, align 64
  %i.atw = add nsw i32 %i.atv, -1
  %.not = icmp eq i32 %i.att, %i.atw
  %.pre268 = select i1 %i.atm, i64 0, i64 %indvars.iv.next235 ; 5 uses
  br i1 %.not, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.atx = getelementptr inbounds nuw [896 x i8], ptr %i.atj, i64 %.pre268
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 832
  %i.atz = load i32, ptr %i.aty, align 64
  %i.aua = icmp ugt i32 %i.atz, 2
  br i1 %i.aua, label %bb.ae, label %.critedge, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.aub = getelementptr inbounds nuw [3328 x i8], ptr %1, i64 %indvars.iv234 ; 16 uses
  %i.auc = getelementptr inbounds nuw [3328 x i8], ptr %1, i64 %.pre268 ; 14 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aub, i64 832
  %i.aue = getelementptr inbounds nuw i8, ptr %i.auc, i64 2496
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aub, i64 196
  %i.aug = load float, ptr %i.auf, align 4        ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aub, i64 1024
  store float %i.aug, ptr %i.auh, align 64
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auc, i64 2688
end_hunk_9
