Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NVPTXISelLowering?download=true
inline.NumInlined: 7800
inline.NumDeleted: 2653
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN4llvm19NVPTXTargetLoweringC2ERKNS_18NVPTXTargetMachineERKNS_14NVPTXSubtargetE:bb.a
  %i.ka = and i16 %i.jz, -241
  %i.kb = or disjoint i16 %i.ka, 32
  store i16 %i.kb, ptr %i.jy, align 8, !tbaa !188
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 430708
  store i8 2, ptr %i.kc, align 4, !tbaa !92
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 155898 ; 2 uses
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !188
  %i.kf = and i16 %i.ke, -241
  %i.kg = or disjoint i16 %i.kf, 32
  store i16 %i.kg, ptr %i.kd, align 2, !tbaa !188
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 430709
  store i8 2, ptr %i.kh, align 1, !tbaa !92
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 155900 ; 2 uses
  %i.kj = load i16, ptr %i.ki, align 4, !tbaa !188
  %i.kk = and i16 %i.kj, -241
  %i.kl = or disjoint i16 %i.kk, 32
  store i16 %i.kl, ptr %i.ki, align 4, !tbaa !188
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 430710
  store i8 2, ptr %i.km, align 2, !tbaa !92
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 155902 ; 2 uses
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !188
  %i.kp = and i16 %i.ko, -241
  %i.kq = or disjoint i16 %i.kp, 32
  store i16 %i.kq, ptr %i.kn, align 2, !tbaa !188
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 430711
  store i8 2, ptr %i.kr, align 1, !tbaa !92
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 155904 ; 2 uses
  %i.kt = load i16, ptr %i.ks, align 8, !tbaa !188
  %i.ku = and i16 %i.kt, -241
  %i.kv = or disjoint i16 %i.ku, 32
  store i16 %i.kv, ptr %i.ks, align 8, !tbaa !188
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 430712
  store i8 2, ptr %i.kw, align 8, !tbaa !92
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 155906 ; 2 uses
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !188
  %i.kz = and i16 %i.ky, -241
  %i.la = or disjoint i16 %i.kz, 32
  store i16 %i.la, ptr %i.kx, align 2, !tbaa !188
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 430713
  store i8 2, ptr %i.lb, align 1, !tbaa !92
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 155908 ; 2 uses
  %i.ld = load i16, ptr %i.lc, align 4, !tbaa !188
  %i.le = and i16 %i.ld, -241
  %i.lf = or disjoint i16 %i.le, 32
  store i16 %i.lf, ptr %i.lc, align 4, !tbaa !188
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 430714
  store i8 2, ptr %i.lg, align 2, !tbaa !92
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 156424 ; 2 uses
  %i.li = load i16, ptr %i.lh, align 8, !tbaa !188
  %i.lj = and i16 %i.li, -241
  %i.lk = or disjoint i16 %i.lj, 32
  store i16 %i.lk, ptr %i.lh, align 8, !tbaa !188
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 430972
  store i8 2, ptr %i.ll, align 4, !tbaa !92
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 156426 ; 2 uses
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !188
  %i.lo = and i16 %i.ln, -241
  %i.lp = or disjoint i16 %i.lo, 32
  store i16 %i.lp, ptr %i.lm, align 2, !tbaa !188
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 430973
  store i8 2, ptr %i.lq, align 1, !tbaa !92
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 156428 ; 2 uses
  %i.ls = load i16, ptr %i.lr, align 4, !tbaa !188
  %i.lt = and i16 %i.ls, -241
  %i.lu = or disjoint i16 %i.lt, 32
  store i16 %i.lu, ptr %i.lr, align 4, !tbaa !188
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 430974
  store i8 2, ptr %i.lv, align 2, !tbaa !92
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 156430 ; 2 uses
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !188
  %i.ly = and i16 %i.lx, -241
  %i.lz = or disjoint i16 %i.ly, 32
  store i16 %i.lz, ptr %i.lw, align 2, !tbaa !188
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 430975
  store i8 2, ptr %i.ma, align 1, !tbaa !92
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 156432 ; 2 uses
  %i.mc = load i16, ptr %i.mb, align 8, !tbaa !188
  %i.md = and i16 %i.mc, -241
  %i.me = or disjoint i16 %i.md, 32
  store i16 %i.me, ptr %i.mb, align 8, !tbaa !188
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 430976
  store i8 2, ptr %i.mf, align 8, !tbaa !92
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 156434 ; 2 uses
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !188
  %i.mi = and i16 %i.mh, -241
  %i.mj = or disjoint i16 %i.mi, 32
  store i16 %i.mj, ptr %i.mg, align 2, !tbaa !188
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 430977
  store i8 2, ptr %i.mk, align 1, !tbaa !92
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 156436 ; 2 uses
  %i.mm = load i16, ptr %i.ml, align 4, !tbaa !188
  %i.mn = and i16 %i.mm, -241
  %i.mo = or disjoint i16 %i.mn, 32
  store i16 %i.mo, ptr %i.ml, align 4, !tbaa !188
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 430978
  store i8 2, ptr %i.mp, align 2, !tbaa !92
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 156952 ; 2 uses
  %i.mr = load i16, ptr %i.mq, align 8, !tbaa !188
  %i.ms = and i16 %i.mr, -241
  %i.mt = or disjoint i16 %i.ms, 32
  store i16 %i.mt, ptr %i.mq, align 8, !tbaa !188
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 431236
  store i8 2, ptr %i.mu, align 4, !tbaa !92
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 156954 ; 2 uses
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !188
  %i.mx = and i16 %i.mw, -241
  %i.my = or disjoint i16 %i.mx, 32
  store i16 %i.my, ptr %i.mv, align 2, !tbaa !188
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 431237
  store i8 2, ptr %i.mz, align 1, !tbaa !92
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 156956 ; 2 uses
  %i.nb = load i16, ptr %i.na, align 4, !tbaa !188
  %i.nc = and i16 %i.nb, -241
  %i.nd = or disjoint i16 %i.nc, 32
  store i16 %i.nd, ptr %i.na, align 4, !tbaa !188
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 431238
  store i8 2, ptr %i.ne, align 2, !tbaa !92
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 156958 ; 2 uses
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !188
  %i.nh = and i16 %i.ng, -241
  %i.ni = or disjoint i16 %i.nh, 32
  store i16 %i.ni, ptr %i.nf, align 2, !tbaa !188
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 431239
  store i8 2, ptr %i.nj, align 1, !tbaa !92
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 156960 ; 2 uses
  %i.nl = load i16, ptr %i.nk, align 8, !tbaa !188
  %i.nm = and i16 %i.nl, -241
  %i.nn = or disjoint i16 %i.nm, 32
  store i16 %i.nn, ptr %i.nk, align 8, !tbaa !188
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 431240
  store i8 2, ptr %i.no, align 8, !tbaa !92
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 156962 ; 2 uses
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !188
  %i.nr = and i16 %i.nq, -241
  %i.ns = or disjoint i16 %i.nr, 32
  store i16 %i.ns, ptr %i.np, align 2, !tbaa !188
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 431241
  store i8 2, ptr %i.nt, align 1, !tbaa !92
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 156964 ; 2 uses
  %i.nv = load i16, ptr %i.nu, align 4, !tbaa !188
  %i.nw = and i16 %i.nv, -241
  %i.nx = or disjoint i16 %i.nw, 32
  store i16 %i.nx, ptr %i.nu, align 4, !tbaa !188
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 431242
  store i8 2, ptr %i.ny, align 2, !tbaa !92
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 157480 ; 2 uses
  %i.oa = load i16, ptr %i.nz, align 8, !tbaa !188
  %i.ob = and i16 %i.oa, -241
  %i.oc = or disjoint i16 %i.ob, 32
  store i16 %i.oc, ptr %i.nz, align 8, !tbaa !188
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 431500
  store i8 2, ptr %i.od, align 4, !tbaa !92
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 157482 ; 2 uses
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !188
  %i.og = and i16 %i.of, -241
  %i.oh = or disjoint i16 %i.og, 32
  store i16 %i.oh, ptr %i.oe, align 2, !tbaa !188
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 431501
  store i8 2, ptr %i.oi, align 1, !tbaa !92
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 157484 ; 2 uses
  %i.ok = load i16, ptr %i.oj, align 4, !tbaa !188
  %i.ol = and i16 %i.ok, -241
  %i.om = or disjoint i16 %i.ol, 32
  store i16 %i.om, ptr %i.oj, align 4, !tbaa !188
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 431502
  store i8 2, ptr %i.on, align 2, !tbaa !92
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 157486 ; 2 uses
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !188
  %i.oq = and i16 %i.op, -241
  %i.or = or disjoint i16 %i.oq, 32
  store i16 %i.or, ptr %i.oo, align 2, !tbaa !188
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 431503
  store i8 2, ptr %i.os, align 1, !tbaa !92
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 157488 ; 2 uses
  %i.ou = load i16, ptr %i.ot, align 8, !tbaa !188
  %i.ov = and i16 %i.ou, -241
  %i.ow = or disjoint i16 %i.ov, 32
  store i16 %i.ow, ptr %i.ot, align 8, !tbaa !188
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 431504
  store i8 2, ptr %i.ox, align 8, !tbaa !92
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 157490 ; 2 uses
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !188
  %i.pa = and i16 %i.oz, -241
  %i.pb = or disjoint i16 %i.pa, 32
  store i16 %i.pb, ptr %i.oy, align 2, !tbaa !188
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 431505
  store i8 2, ptr %i.pc, align 1, !tbaa !92
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 157492 ; 2 uses
  %i.pe = load i16, ptr %i.pd, align 4, !tbaa !188
  %i.pf = and i16 %i.pe, -241
  %i.pg = or disjoint i16 %i.pf, 32
  store i16 %i.pg, ptr %i.pd, align 4, !tbaa !188
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 431506
  store i8 2, ptr %i.ph, align 2, !tbaa !92
  br label %iter.check

iter.check:                                       ; preds = %.preheader1421.preheader, %iter.check
  %.sroa.01277.01428.1 = phi i64 [ %i.qu, %iter.check ], [ 105, %.preheader1421.preheader ] ; 2 uses
  %i.pi = and i64 %.sroa.01277.01428.1, 65535     ; 2 uses
  %i.pj = getelementptr inbounds nuw [528 x i8], ptr %i.fv, i64 %i.pi ; 9 uses
  %i.pk = getelementptr inbounds nuw [264 x i8], ptr %i.fw, i64 %i.pi ; 6 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 210 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 226 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.pl, align 2, !tbaa !188
  %wide.load1790 = load <8 x i16>, ptr %i.pm, align 2, !tbaa !188
  %i.pn = and <8 x i16> %wide.load, splat (i16 -241)
  %i.po = and <8 x i16> %wide.load1790, splat (i16 -241)
  %i.pp = or disjoint <8 x i16> %i.pn, splat (i16 32)
  %i.pq = or disjoint <8 x i16> %i.po, splat (i16 32)
  store <8 x i16> %i.pp, ptr %i.pl, align 2, !tbaa !188
  store <8 x i16> %i.pq, ptr %i.pm, align 2, !tbaa !188
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pk, i64 105
  store <16 x i8> splat (i8 2), ptr %i.pr, align 1, !tbaa !92
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pj, i64 242 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pj, i64 258 ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %i.ps, align 2, !tbaa !188
  %wide.load1790.1 = load <8 x i16>, ptr %i.pt, align 2, !tbaa !188
  %i.pu = and <8 x i16> %wide.load.1, splat (i16 -241)
  %i.pv = and <8 x i16> %wide.load1790.1, splat (i16 -241)
  %i.pw = or disjoint <8 x i16> %i.pu, splat (i16 32)
  %i.px = or disjoint <8 x i16> %i.pv, splat (i16 32)
  store <8 x i16> %i.pw, ptr %i.ps, align 2, !tbaa !188
  store <8 x i16> %i.px, ptr %i.pt, align 2, !tbaa !188
  %i.py = getelementptr inbounds nuw i8, ptr %i.pk, i64 121
  store <16 x i8> splat (i8 2), ptr %i.py, align 1, !tbaa !92
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pj, i64 274 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pj, i64 290 ; 2 uses
  %wide.load.2 = load <8 x i16>, ptr %i.pz, align 2, !tbaa !188
  %wide.load1790.2 = load <8 x i16>, ptr %i.qa, align 2, !tbaa !188
  %i.qb = and <8 x i16> %wide.load.2, splat (i16 -241)
  %i.qc = and <8 x i16> %wide.load1790.2, splat (i16 -241)
  %i.qd = or disjoint <8 x i16> %i.qb, splat (i16 32)
  %i.qe = or disjoint <8 x i16> %i.qc, splat (i16 32)
  store <8 x i16> %i.qd, ptr %i.pz, align 2, !tbaa !188
  store <8 x i16> %i.qe, ptr %i.qa, align 2, !tbaa !188
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pk, i64 137
  store <16 x i8> splat (i8 2), ptr %i.qf, align 1, !tbaa !92
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pj, i64 306 ; 2 uses
  %wide.load1792 = load <8 x i16>, ptr %i.qg, align 2, !tbaa !188
  %i.qh = and <8 x i16> %wide.load1792, splat (i16 -241)
  %i.qi = or disjoint <8 x i16> %i.qh, splat (i16 32)
  store <8 x i16> %i.qi, ptr %i.qg, align 2, !tbaa !188
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pk, i64 153
  store <8 x i8> splat (i8 2), ptr %i.qj, align 1, !tbaa !92
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pj, i64 322 ; 2 uses
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !188
  %i.qm = and i16 %i.ql, -241
  %i.qn = or disjoint i16 %i.qm, 32
  store i16 %i.qn, ptr %i.qk, align 2, !tbaa !188
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pk, i64 161
  store i8 2, ptr %i.qo, align 1, !tbaa !92
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pj, i64 324 ; 2 uses
  %i.qq = load i16, ptr %i.qp, align 4, !tbaa !188
  %i.qr = and i16 %i.qq, -241
  %i.qs = or disjoint i16 %i.qr, 32
  store i16 %i.qs, ptr %i.qp, align 4, !tbaa !188
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pk, i64 162
  store i8 2, ptr %i.qt, align 2, !tbaa !92
  %i.qu = add i64 %.sroa.01277.01428.1, 1         ; 2 uses
  %.not1402.1 = icmp eq i64 %i.qu, 163
  br i1 %.not1402.1, label %.preheader, label %iter.check

.preheader:                                       ; preds = %iter.check, %._crit_edge1433.split
  %.sroa.01259.01436 = phi i64 [ %i.vb, %._crit_edge1433.split ], [ 2, %iter.check ] ; 2 uses
  %i.qv = and i64 %.sroa.01259.01436, 65535       ; 3 uses
  %.not.i512 = icmp eq i64 %i.qv, 0
  %i.qw = getelementptr inbounds nuw [528 x i8], ptr %i.fv, i64 %i.qv ; 10 uses
  br i1 %.not.i512, label %._crit_edge1433.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.preheader
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.qv
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !90
  %.not1406 = icmp eq ptr %i.qy, null
  br i1 %.not1406, label %._crit_edge1433.split, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

.preheader.1:                                     ; preds = %._crit_edge1433.split, %._crit_edge1433.split.1
  %.sroa.01259.01436.1 = phi i64 [ %i.ss, %._crit_edge1433.split.1 ], [ 19, %._crit_edge1433.split ] ; 2 uses
  %i.qz = and i64 %.sroa.01259.01436.1, 65535     ; 3 uses
  %.not.i512.1 = icmp eq i64 %i.qz, 0
  %i.ra = getelementptr inbounds nuw [528 x i8], ptr %i.fv, i64 %i.qz ; 13 uses
  br i1 %.not.i512.1, label %._crit_edge1433.split.1, label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %.preheader.1
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.qz
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !90
  %.not1406.1 = icmp eq ptr %i.rc, null
  br i1 %.not1406.1, label %._crit_edge1433.split.1, label %vector.body1797

vector.body1797:                                  ; preds = %.lr.ph.split.1
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 38 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 54 ; 2 uses
  %wide.load1799 = load <8 x i16>, ptr %i.rd, align 2, !tbaa !188
  %wide.load1800 = load <8 x i16>, ptr %i.re, align 2, !tbaa !188
  %i.rf = and <8 x i16> %wide.load1799, splat (i16 -241)
  %i.rg = and <8 x i16> %wide.load1800, splat (i16 -241)
  %i.rh = or disjoint <8 x i16> %i.rf, splat (i16 64)
  %i.ri = or disjoint <8 x i16> %i.rg, splat (i16 64)
  store <8 x i16> %i.rh, ptr %i.rd, align 2, !tbaa !188
  store <8 x i16> %i.ri, ptr %i.re, align 2, !tbaa !188
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ra, i64 70 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ra, i64 86 ; 2 uses
  %wide.load1799.1 = load <8 x i16>, ptr %i.rj, align 2, !tbaa !188
  %wide.load1800.1 = load <8 x i16>, ptr %i.rk, align 2, !tbaa !188
  %i.rl = and <8 x i16> %wide.load1799.1, splat (i16 -241)
  %i.rm = and <8 x i16> %wide.load1800.1, splat (i16 -241)
  %i.rn = or disjoint <8 x i16> %i.rl, splat (i16 64)
  %i.ro = or disjoint <8 x i16> %i.rm, splat (i16 64)
  store <8 x i16> %i.rn, ptr %i.rj, align 2, !tbaa !188
  store <8 x i16> %i.ro, ptr %i.rk, align 2, !tbaa !188
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ra, i64 102 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ra, i64 118 ; 2 uses
  %wide.load1799.2 = load <8 x i16>, ptr %i.rp, align 2, !tbaa !188
  %wide.load1800.2 = load <8 x i16>, ptr %i.rq, align 2, !tbaa !188
  %i.rr = and <8 x i16> %wide.load1799.2, splat (i16 -241)
  %i.rs = and <8 x i16> %wide.load1800.2, splat (i16 -241)
  %i.rt = or disjoint <8 x i16> %i.rr, splat (i16 64)
  %i.ru = or disjoint <8 x i16> %i.rs, splat (i16 64)
  store <8 x i16> %i.rt, ptr %i.rp, align 2, !tbaa !188
  store <8 x i16> %i.ru, ptr %i.rq, align 2, !tbaa !188
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ra, i64 134 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ra, i64 150 ; 2 uses
  %wide.load1799.3 = load <8 x i16>, ptr %i.rv, align 2, !tbaa !188
  %wide.load1800.3 = load <8 x i16>, ptr %i.rw, align 2, !tbaa !188
  %i.rx = and <8 x i16> %wide.load1799.3, splat (i16 -241)
  %i.ry = and <8 x i16> %wide.load1800.3, splat (i16 -241)
  %i.rz = or disjoint <8 x i16> %i.rx, splat (i16 64)
  %i.sa = or disjoint <8 x i16> %i.ry, splat (i16 64)
  store <8 x i16> %i.rz, ptr %i.rv, align 2, !tbaa !188
  store <8 x i16> %i.sa, ptr %i.rw, align 2, !tbaa !188
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ra, i64 166 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ra, i64 182 ; 2 uses
  %wide.load1799.4 = load <8 x i16>, ptr %i.sb, align 2, !tbaa !188
  %wide.load1800.4 = load <8 x i16>, ptr %i.sc, align 2, !tbaa !188
  %i.sd = and <8 x i16> %wide.load1799.4, splat (i16 -241)
  %i.se = and <8 x i16> %wide.load1800.4, splat (i16 -241)
  %i.sf = or disjoint <8 x i16> %i.sd, splat (i16 64)
  %i.sg = or disjoint <8 x i16> %i.se, splat (i16 64)
  store <8 x i16> %i.sf, ptr %i.sb, align 2, !tbaa !188
  store <8 x i16> %i.sg, ptr %i.sc, align 2, !tbaa !188
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ra, i64 198 ; 2 uses
  %wide.load1810 = load <4 x i16>, ptr %i.sh, align 2, !tbaa !188
  %i.si = and <4 x i16> %wide.load1810, splat (i16 -241)
  %i.sj = or disjoint <4 x i16> %i.si, splat (i16 64)
  store <4 x i16> %i.sj, ptr %i.sh, align 2, !tbaa !188
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ra, i64 206 ; 2 uses
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !188
  %i.sm = and i16 %i.sl, -241
  %i.sn = or disjoint i16 %i.sm, 64
  store i16 %i.sn, ptr %i.sk, align 2, !tbaa !188
  %i.so = getelementptr inbounds nuw i8, ptr %i.ra, i64 208 ; 2 uses
  %i.sp = load i16, ptr %i.so, align 8, !tbaa !188
  %i.sq = and i16 %i.sp, -241
  %i.sr = or disjoint i16 %i.sq, 64
  store i16 %i.sr, ptr %i.so, align 8, !tbaa !188
  br label %._crit_edge1433.split.1

._crit_edge1433.split.1:                          ; preds = %vector.body1797, %.lr.ph.split.1, %.preheader.1
  %i.ss = add i64 %.sroa.01259.01436.1, 1         ; 2 uses
  %.not1404.1 = icmp eq i64 %i.ss, 105
  br i1 %.not1404.1, label %._crit_edge1437.1, label %.preheader.1

._crit_edge1437.1:                                ; preds = %._crit_edge1433.split.1
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 7574
  store i8 4, ptr %i.st, align 2, !tbaa !92
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 7575
  store i8 4, ptr %i.su, align 1, !tbaa !92
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 149012 ; 2 uses
  %.promoted.i538 = load i16, ptr %i.sv, align 4, !tbaa !188
  %i.sw = and i16 %.promoted.i538, 15
  %i.sx = or disjoint i16 %i.sw, 4368
  store i16 %i.sx, ptr %i.sv, align 4, !tbaa !188
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 427266
  store i8 2, ptr %i.sy, align 2, !tbaa !92
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 149540 ; 2 uses
  %.promoted.i538.1 = load i16, ptr %i.sz, align 4, !tbaa !188
  %i.ta = and i16 %.promoted.i538.1, 15
  %i.tb = or disjoint i16 %i.ta, 4368
  store i16 %i.tb, ptr %i.sz, align 4, !tbaa !188
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 427530
  store i8 2, ptr %i.tc, align 2, !tbaa !92
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 150068 ; 2 uses
  %.promoted.i538.2 = load i16, ptr %i.td, align 4, !tbaa !188
  %i.te = and i16 %.promoted.i538.2, 15
  %i.tf = or disjoint i16 %i.te, 4368
  store i16 %i.tf, ptr %i.td, align 4, !tbaa !188
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 427794
  store i8 2, ptr %i.tg, align 2, !tbaa !92
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 150596 ; 2 uses
  %.promoted.i538.3 = load i16, ptr %i.th, align 4, !tbaa !188
  %i.ti = and i16 %.promoted.i538.3, 15
  %i.tj = or disjoint i16 %i.ti, 4368
  store i16 %i.tj, ptr %i.th, align 4, !tbaa !188
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 428058
  store i8 2, ptr %i.tk, align 2, !tbaa !92
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 151124 ; 2 uses
  %.promoted.i538.4 = load i16, ptr %i.tl, align 4, !tbaa !188
  %i.tm = and i16 %.promoted.i538.4, 15
  %i.tn = or disjoint i16 %i.tm, 4368
  store i16 %i.tn, ptr %i.tl, align 4, !tbaa !188
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 428322
  store i8 2, ptr %i.to, align 2, !tbaa !92
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 151652 ; 2 uses
  %.promoted.i538.5 = load i16, ptr %i.tp, align 4, !tbaa !188
  %i.tq = and i16 %.promoted.i538.5, 15
  %i.tr = or disjoint i16 %i.tq, 4368
  store i16 %i.tr, ptr %i.tp, align 4, !tbaa !188
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 428586
  store i8 2, ptr %i.ts, align 2, !tbaa !92
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 152180 ; 2 uses
  %.promoted.i538.6 = load i16, ptr %i.tt, align 4, !tbaa !188
  %i.tu = and i16 %.promoted.i538.6, 15
  %i.tv = or disjoint i16 %i.tu, 4368
  store i16 %i.tv, ptr %i.tt, align 4, !tbaa !188
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 428850
  store i8 2, ptr %i.tw, align 2, !tbaa !92
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 152708 ; 2 uses
  %.promoted.i538.7 = load i16, ptr %i.tx, align 4, !tbaa !188
  %i.ty = and i16 %.promoted.i538.7, 15
  %i.tz = or disjoint i16 %i.ty, 4368
  store i16 %i.tz, ptr %i.tx, align 4, !tbaa !188
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 429114
  store i8 2, ptr %i.ua, align 2, !tbaa !92
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 153236 ; 2 uses
  %.promoted.i538.8 = load i16, ptr %i.ub, align 4, !tbaa !188
  %i.uc = and i16 %.promoted.i538.8, 15
  %i.ud = or disjoint i16 %i.uc, 4368
  store i16 %i.ud, ptr %i.ub, align 4, !tbaa !188
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 429378
  store i8 2, ptr %i.ue, align 2, !tbaa !92
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 153764 ; 2 uses
  %.promoted.i538.9 = load i16, ptr %i.uf, align 4, !tbaa !188
  %i.ug = and i16 %.promoted.i538.9, 15
  %i.uh = or disjoint i16 %i.ug, 4368
  store i16 %i.uh, ptr %i.uf, align 4, !tbaa !188
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 429642
  store i8 2, ptr %i.ui, align 2, !tbaa !92
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 177602 ; 2 uses
end_hunk_0
