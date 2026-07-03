inline.NumInlined: 100
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@scalar_ntt:bb.a
  %i.mn = zext <8 x i16> %i.mm to <8 x i32>
  %i.mo = mul nuw <8 x i32> %i.mn, %i.lg          ; 2 uses
  %i.mp = zext <8 x i32> %i.mo to <8 x i64>
  %i.mq = mul nuw nsw <8 x i64> %i.mp, splat (i64 5039)
  %i.mr = lshr <8 x i64> %i.mq, splat (i64 24)
  %i.ms = trunc nuw nsw <8 x i64> %i.mr to <8 x i32>
  %i.mt = mul <8 x i32> %i.ms, splat (i32 62207)
  %i.mu = add <8 x i32> %i.mt, %i.mo
  %i.mv = trunc <8 x i32> %i.mu to <8 x i16>      ; 2 uses
  %i.mw = add <8 x i16> %i.mv, splat (i16 -3329)  ; 2 uses
  %i.mx = icmp slt <8 x i16> %i.mw, zeroinitializer
  %i.my = select <8 x i1> %i.mx, <8 x i16> %i.mv, <8 x i16> zeroinitializer
  %i.mz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mw, <8 x i16> zeroinitializer)
  %i.na = or <8 x i16> %i.my, %i.mz               ; 2 uses
  %i.nb = sub <8 x i16> %i.lw, %i.na              ; 3 uses
  %i.nc = add <8 x i16> %i.nb, splat (i16 3329)
  %i.nd = icmp slt <8 x i16> %i.nb, zeroinitializer
  %i.ne = select <8 x i1> %i.nd, <8 x i16> %i.nc, <8 x i16> zeroinitializer
  %i.nf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nb, <8 x i16> zeroinitializer)
  %i.ng = or <8 x i16> %i.ne, %i.nf               ; 8 uses
  %i.nh = extractelement <8 x i16> %i.ng, i64 4
  store i16 %i.nh, ptr %i.lb, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ni = extractelement <8 x i16> %i.ng, i64 5
  store i16 %i.ni, ptr %i.lc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.nj = extractelement <8 x i16> %i.ng, i64 6
  store i16 %i.nj, ptr %i.ld, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.nk = extractelement <8 x i16> %i.ng, i64 7
  store i16 %i.nk, ptr %i.le, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.nl = add <8 x i16> %i.na, %i.lw              ; 2 uses
  %i.nm = add <8 x i16> %i.nl, splat (i16 -3329)  ; 2 uses
  %i.nn = icmp slt <8 x i16> %i.nm, zeroinitializer
  %i.no = select <8 x i1> %i.nn, <8 x i16> %i.nl, <8 x i16> zeroinitializer
  %i.np = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nm, <8 x i16> zeroinitializer)
  %i.nq = or <8 x i16> %i.no, %i.np               ; 8 uses
  %i.nr = extractelement <8 x i16> %i.nq, i64 4
  store i16 %i.nr, ptr %i.kq, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ns = extractelement <8 x i16> %i.nq, i64 5
  store i16 %i.ns, ptr %i.ks, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.nt = extractelement <8 x i16> %i.nq, i64 6
  store i16 %i.nt, ptr %i.ku, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.nu = extractelement <8 x i16> %i.nq, i64 7
  store i16 %i.nu, ptr %i.kw, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ki, i64 2
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kj, i64 34
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kl, i64 66
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kn, i64 98
  %i.nz = getelementptr inbounds nuw i8, ptr %i.kp, i64 130 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.kr, i64 162 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.kt, i64 194 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kv, i64 226 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ki, i64 18
  %i.oe = getelementptr inbounds nuw i8, ptr %i.kj, i64 50
  %i.of = getelementptr inbounds nuw i8, ptr %i.kl, i64 82
  %i.og = getelementptr inbounds nuw i8, ptr %i.kn, i64 114
  %i.oh = getelementptr inbounds nuw i8, ptr %i.kp, i64 146 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.kr, i64 178 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.kt, i64 210 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.kv, i64 242 ; 2 uses
  %i.ol = load i16, ptr %i.nv, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.om = load i16, ptr %i.nw, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.on = load i16, ptr %i.nx, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.oo = load i16, ptr %i.ny, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.op = load i16, ptr %i.nz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.oq = load i16, ptr %i.oa, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.or = load i16, ptr %i.ob, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.os = load i16, ptr %i.oc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ot = insertelement <8 x i16> poison, i16 %i.ol, i64 0
  %i.ou = insertelement <8 x i16> %i.ot, i16 %i.om, i64 1
  %i.ov = insertelement <8 x i16> %i.ou, i16 %i.on, i64 2
  %i.ow = insertelement <8 x i16> %i.ov, i16 %i.oo, i64 3
  %i.ox = insertelement <8 x i16> %i.ow, i16 %i.op, i64 4
  %i.oy = insertelement <8 x i16> %i.ox, i16 %i.oq, i64 5
  %i.oz = insertelement <8 x i16> %i.oy, i16 %i.or, i64 6
  %i.pa = insertelement <8 x i16> %i.oz, i16 %i.os, i64 7 ; 2 uses
  %i.pb = load i16, ptr %i.od, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.pc = load i16, ptr %i.oe, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.pd = load i16, ptr %i.of, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.pe = load i16, ptr %i.og, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.pf = load i16, ptr %i.oh, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.pg = load i16, ptr %i.oi, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ph = load i16, ptr %i.oj, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.pi = load i16, ptr %i.ok, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.pj = insertelement <8 x i16> poison, i16 %i.pb, i64 0
  %i.pk = insertelement <8 x i16> %i.pj, i16 %i.pc, i64 1
  %i.pl = insertelement <8 x i16> %i.pk, i16 %i.pd, i64 2
  %i.pm = insertelement <8 x i16> %i.pl, i16 %i.pe, i64 3
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 4
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pg, i64 5
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.ph, i64 6
  %i.pq = insertelement <8 x i16> %i.pp, i16 %i.pi, i64 7
  %i.pr = zext <8 x i16> %i.pq to <8 x i32>
  %i.ps = mul nuw <8 x i32> %i.pr, %i.lg          ; 2 uses
  %i.pt = zext <8 x i32> %i.ps to <8 x i64>
  %i.pu = mul nuw nsw <8 x i64> %i.pt, splat (i64 5039)
  %i.pv = lshr <8 x i64> %i.pu, splat (i64 24)
  %i.pw = trunc nuw nsw <8 x i64> %i.pv to <8 x i32>
  %i.px = mul <8 x i32> %i.pw, splat (i32 62207)
  %i.py = add <8 x i32> %i.px, %i.ps
  %i.pz = trunc <8 x i32> %i.py to <8 x i16>      ; 2 uses
  %i.qa = add <8 x i16> %i.pz, splat (i16 -3329)  ; 2 uses
  %i.qb = icmp slt <8 x i16> %i.qa, zeroinitializer
  %i.qc = select <8 x i1> %i.qb, <8 x i16> %i.pz, <8 x i16> zeroinitializer
  %i.qd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qa, <8 x i16> zeroinitializer)
  %i.qe = or <8 x i16> %i.qc, %i.qd               ; 2 uses
  %i.qf = sub <8 x i16> %i.pa, %i.qe              ; 3 uses
  %i.qg = add <8 x i16> %i.qf, splat (i16 3329)
  %i.qh = icmp slt <8 x i16> %i.qf, zeroinitializer
  %i.qi = select <8 x i1> %i.qh, <8 x i16> %i.qg, <8 x i16> zeroinitializer
  %i.qj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qf, <8 x i16> zeroinitializer)
  %i.qk = or <8 x i16> %i.qi, %i.qj               ; 8 uses
  %i.ql = extractelement <8 x i16> %i.qk, i64 4
  store i16 %i.ql, ptr %i.oh, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.qm = extractelement <8 x i16> %i.qk, i64 5
  store i16 %i.qm, ptr %i.oi, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.qn = extractelement <8 x i16> %i.qk, i64 6
  store i16 %i.qn, ptr %i.oj, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.qo = extractelement <8 x i16> %i.qk, i64 7
  store i16 %i.qo, ptr %i.ok, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.qp = add <8 x i16> %i.qe, %i.pa              ; 2 uses
  %i.qq = add <8 x i16> %i.qp, splat (i16 -3329)  ; 2 uses
  %i.qr = icmp slt <8 x i16> %i.qq, zeroinitializer
  %i.qs = select <8 x i1> %i.qr, <8 x i16> %i.qp, <8 x i16> zeroinitializer
  %i.qt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qq, <8 x i16> zeroinitializer)
  %i.qu = or <8 x i16> %i.qs, %i.qt               ; 8 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.kj, i64 36
  %i.qx = getelementptr inbounds nuw i8, ptr %i.kl, i64 68
  %i.qy = getelementptr inbounds nuw i8, ptr %i.kn, i64 100
  %i.qz = getelementptr inbounds nuw i8, ptr %i.kp, i64 132 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.kr, i64 164 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.kt, i64 196 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.kv, i64 228 ; 2 uses
  %i.rd = extractelement <8 x i16> %i.qu, i64 4
  store i16 %i.rd, ptr %i.nz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.re = extractelement <8 x i16> %i.qu, i64 5
  store i16 %i.re, ptr %i.oa, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.rf = extractelement <8 x i16> %i.qu, i64 6
  store i16 %i.rf, ptr %i.ob, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.rg = extractelement <8 x i16> %i.qu, i64 7
  store i16 %i.rg, ptr %i.oc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ki, i64 20
  %i.ri = getelementptr inbounds nuw i8, ptr %i.kj, i64 52
  %i.rj = getelementptr inbounds nuw i8, ptr %i.kl, i64 84
  %i.rk = getelementptr inbounds nuw i8, ptr %i.kn, i64 116
  %i.rl = getelementptr inbounds nuw i8, ptr %i.kp, i64 148 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.kr, i64 180 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.kt, i64 212 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.kv, i64 244 ; 2 uses
  %i.rp = load i16, ptr %i.qv, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.rq = load i16, ptr %i.qw, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.rr = load i16, ptr %i.qx, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.rs = load i16, ptr %i.qy, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.rt = load i16, ptr %i.qz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ru = load i16, ptr %i.ra, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.rv = load i16, ptr %i.rb, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.rw = load i16, ptr %i.rc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.rx = insertelement <8 x i16> poison, i16 %i.rp, i64 0
  %i.ry = insertelement <8 x i16> %i.rx, i16 %i.rq, i64 1
  %i.rz = insertelement <8 x i16> %i.ry, i16 %i.rr, i64 2
  %i.sa = insertelement <8 x i16> %i.rz, i16 %i.rs, i64 3
  %i.sb = insertelement <8 x i16> %i.sa, i16 %i.rt, i64 4
  %i.sc = insertelement <8 x i16> %i.sb, i16 %i.ru, i64 5
  %i.sd = insertelement <8 x i16> %i.sc, i16 %i.rv, i64 6
  %i.se = insertelement <8 x i16> %i.sd, i16 %i.rw, i64 7 ; 2 uses
  %i.sf = load i16, ptr %i.rh, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.sg = load i16, ptr %i.ri, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.sh = load i16, ptr %i.rj, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.si = load i16, ptr %i.rk, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.sj = load i16, ptr %i.rl, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.sk = load i16, ptr %i.rm, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.sl = load i16, ptr %i.rn, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.sm = load i16, ptr %i.ro, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.sn = insertelement <8 x i16> poison, i16 %i.sf, i64 0
  %i.so = insertelement <8 x i16> %i.sn, i16 %i.sg, i64 1
  %i.sp = insertelement <8 x i16> %i.so, i16 %i.sh, i64 2
  %i.sq = insertelement <8 x i16> %i.sp, i16 %i.si, i64 3
  %i.sr = insertelement <8 x i16> %i.sq, i16 %i.sj, i64 4
  %i.ss = insertelement <8 x i16> %i.sr, i16 %i.sk, i64 5
  %i.st = insertelement <8 x i16> %i.ss, i16 %i.sl, i64 6
  %i.su = insertelement <8 x i16> %i.st, i16 %i.sm, i64 7
  %i.sv = zext <8 x i16> %i.su to <8 x i32>
  %i.sw = mul nuw <8 x i32> %i.sv, %i.lg          ; 2 uses
  %i.sx = zext <8 x i32> %i.sw to <8 x i64>
  %i.sy = mul nuw nsw <8 x i64> %i.sx, splat (i64 5039)
  %i.sz = lshr <8 x i64> %i.sy, splat (i64 24)
  %i.ta = trunc nuw nsw <8 x i64> %i.sz to <8 x i32>
  %i.tb = mul <8 x i32> %i.ta, splat (i32 62207)
  %i.tc = add <8 x i32> %i.tb, %i.sw
  %i.td = trunc <8 x i32> %i.tc to <8 x i16>      ; 2 uses
  %i.te = add <8 x i16> %i.td, splat (i16 -3329)  ; 2 uses
  %i.tf = icmp slt <8 x i16> %i.te, zeroinitializer
  %i.tg = select <8 x i1> %i.tf, <8 x i16> %i.td, <8 x i16> zeroinitializer
  %i.th = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.te, <8 x i16> zeroinitializer)
  %i.ti = or <8 x i16> %i.tg, %i.th               ; 2 uses
  %i.tj = sub <8 x i16> %i.se, %i.ti              ; 3 uses
  %i.tk = add <8 x i16> %i.tj, splat (i16 3329)
  %i.tl = icmp slt <8 x i16> %i.tj, zeroinitializer
  %i.tm = select <8 x i1> %i.tl, <8 x i16> %i.tk, <8 x i16> zeroinitializer
  %i.tn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tj, <8 x i16> zeroinitializer)
  %i.to = or <8 x i16> %i.tm, %i.tn               ; 8 uses
  %1 = extractelement <8 x i16> %i.to, i64 2
  %i.tp = extractelement <8 x i16> %i.to, i64 4
  store i16 %i.tp, ptr %i.rl, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.tq = extractelement <8 x i16> %i.to, i64 5
  store i16 %i.tq, ptr %i.rm, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.tr = extractelement <8 x i16> %i.to, i64 6
  store i16 %i.tr, ptr %i.rn, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ts = extractelement <8 x i16> %i.to, i64 7
  store i16 %i.ts, ptr %i.ro, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.tt = add <8 x i16> %i.ti, %i.se              ; 2 uses
  %i.tu = add <8 x i16> %i.tt, splat (i16 -3329)  ; 2 uses
  %i.tv = icmp slt <8 x i16> %i.tu, zeroinitializer
  %i.tw = select <8 x i1> %i.tv, <8 x i16> %i.tt, <8 x i16> zeroinitializer
  %i.tx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tu, <8 x i16> zeroinitializer)
  %i.ty = or <8 x i16> %i.tw, %i.tx               ; 8 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ki, i64 6
  %i.ua = getelementptr inbounds nuw i8, ptr %i.kj, i64 38
  %i.ub = getelementptr inbounds nuw i8, ptr %i.kl, i64 70
  %i.uc = getelementptr inbounds nuw i8, ptr %i.kn, i64 102
  %i.ud = getelementptr inbounds nuw i8, ptr %i.kp, i64 134 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.kr, i64 166 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.kt, i64 198 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.kv, i64 230 ; 2 uses
  %2 = extractelement <8 x i16> %i.ty, i64 2
  %i.uh = extractelement <8 x i16> %i.ty, i64 4
  store i16 %i.uh, ptr %i.qz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ui = extractelement <8 x i16> %i.ty, i64 5
  store i16 %i.ui, ptr %i.ra, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.uj = extractelement <8 x i16> %i.ty, i64 6
  store i16 %i.uj, ptr %i.rb, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.uk = extractelement <8 x i16> %i.ty, i64 7
  store i16 %i.uk, ptr %i.rc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ki, i64 22
  %i.um = getelementptr inbounds nuw i8, ptr %i.kj, i64 54
  %i.un = getelementptr inbounds nuw i8, ptr %i.kl, i64 86
  %i.uo = getelementptr inbounds nuw i8, ptr %i.kn, i64 118
  %i.up = getelementptr inbounds nuw i8, ptr %i.kp, i64 150 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.kr, i64 182 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.kt, i64 214 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.kv, i64 246 ; 2 uses
  %i.ut = load i16, ptr %i.tz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.uu = load i16, ptr %i.ua, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.uv = load i16, ptr %i.ub, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.uw = load i16, ptr %i.uc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ux = load i16, ptr %i.ud, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.uy = load i16, ptr %i.ue, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.uz = load i16, ptr %i.uf, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.va = load i16, ptr %i.ug, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.vb = insertelement <8 x i16> poison, i16 %i.ut, i64 0
  %i.vc = insertelement <8 x i16> %i.vb, i16 %i.uu, i64 1
  %i.vd = insertelement <8 x i16> %i.vc, i16 %i.uv, i64 2
  %i.ve = insertelement <8 x i16> %i.vd, i16 %i.uw, i64 3
  %i.vf = insertelement <8 x i16> %i.ve, i16 %i.ux, i64 4
  %i.vg = insertelement <8 x i16> %i.vf, i16 %i.uy, i64 5
  %i.vh = insertelement <8 x i16> %i.vg, i16 %i.uz, i64 6
  %i.vi = insertelement <8 x i16> %i.vh, i16 %i.va, i64 7 ; 2 uses
  %i.vj = load i16, ptr %i.ul, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.vk = load i16, ptr %i.um, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.vl = load i16, ptr %i.un, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.vm = load i16, ptr %i.uo, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.vn = load i16, ptr %i.up, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.vo = load i16, ptr %i.uq, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.vp = load i16, ptr %i.ur, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.vq = load i16, ptr %i.us, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.vr = insertelement <8 x i16> poison, i16 %i.vj, i64 0
  %i.vs = insertelement <8 x i16> %i.vr, i16 %i.vk, i64 1
  %i.vt = insertelement <8 x i16> %i.vs, i16 %i.vl, i64 2
  %i.vu = insertelement <8 x i16> %i.vt, i16 %i.vm, i64 3
  %i.vv = insertelement <8 x i16> %i.vu, i16 %i.vn, i64 4
  %i.vw = insertelement <8 x i16> %i.vv, i16 %i.vo, i64 5
  %i.vx = insertelement <8 x i16> %i.vw, i16 %i.vp, i64 6
  %i.vy = insertelement <8 x i16> %i.vx, i16 %i.vq, i64 7
  %i.vz = zext <8 x i16> %i.vy to <8 x i32>
  %i.wa = mul nuw <8 x i32> %i.vz, %i.lg          ; 2 uses
  %i.wb = zext <8 x i32> %i.wa to <8 x i64>
  %i.wc = mul nuw nsw <8 x i64> %i.wb, splat (i64 5039)
  %i.wd = lshr <8 x i64> %i.wc, splat (i64 24)
  %i.we = trunc nuw nsw <8 x i64> %i.wd to <8 x i32>
  %i.wf = mul <8 x i32> %i.we, splat (i32 62207)
  %i.wg = add <8 x i32> %i.wf, %i.wa
  %i.wh = trunc <8 x i32> %i.wg to <8 x i16>      ; 2 uses
  %i.wi = add <8 x i16> %i.wh, splat (i16 -3329)  ; 2 uses
  %i.wj = icmp slt <8 x i16> %i.wi, zeroinitializer
  %i.wk = select <8 x i1> %i.wj, <8 x i16> %i.wh, <8 x i16> zeroinitializer
  %i.wl = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wi, <8 x i16> zeroinitializer)
  %i.wm = or <8 x i16> %i.wk, %i.wl               ; 2 uses
  %i.wn = sub <8 x i16> %i.vi, %i.wm              ; 3 uses
  %i.wo = add <8 x i16> %i.wn, splat (i16 3329)
  %i.wp = icmp slt <8 x i16> %i.wn, zeroinitializer
  %i.wq = select <8 x i1> %i.wp, <8 x i16> %i.wo, <8 x i16> zeroinitializer
  %i.wr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wn, <8 x i16> zeroinitializer)
  %i.ws = or <8 x i16> %i.wq, %i.wr               ; 8 uses
  %i.wt = shufflevector <8 x i16> %i.ng, <8 x i16> %i.qk, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.wu = shufflevector <8 x i16> %i.to, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.wv = shufflevector <4 x i16> %i.wt, <4 x i16> %i.wu, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ww = shufflevector <8 x i16> %i.ws, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.wx = shufflevector <4 x i16> %i.wv, <4 x i16> %i.ww, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.wx, ptr %i.kx, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.wy = shufflevector <8 x i16> %i.ng, <8 x i16> %i.qk, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.wz = shufflevector <8 x i16> %i.to, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.xa = shufflevector <4 x i16> %i.wy, <4 x i16> %i.wz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.xb = shufflevector <8 x i16> %i.ws, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.xc = shufflevector <4 x i16> %i.xa, <4 x i16> %i.xb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.xc, ptr %i.ky, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.xd = shufflevector <8 x i16> %i.ng, <8 x i16> %i.qk, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %3 = insertelement <4 x i16> %i.xd, i16 %1, i64 2
  %i.xe = shufflevector <8 x i16> %i.ws, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.xf = shufflevector <4 x i16> %3, <4 x i16> %i.xe, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.xf, ptr %i.kz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.xg = shufflevector <8 x i16> %i.ng, <8 x i16> %i.qk, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.xh = shufflevector <8 x i16> %i.to, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.xi = shufflevector <4 x i16> %i.xg, <4 x i16> %i.xh, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.xj = shufflevector <8 x i16> %i.ws, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.xk = shufflevector <4 x i16> %i.xi, <4 x i16> %i.xj, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.xk, ptr %i.la, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.xl = extractelement <8 x i16> %i.ws, i64 4
  store i16 %i.xl, ptr %i.up, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.xm = extractelement <8 x i16> %i.ws, i64 5
  store i16 %i.xm, ptr %i.uq, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.xn = extractelement <8 x i16> %i.ws, i64 6
  store i16 %i.xn, ptr %i.ur, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.xo = extractelement <8 x i16> %i.ws, i64 7
  store i16 %i.xo, ptr %i.us, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.xp = add <8 x i16> %i.wm, %i.vi              ; 2 uses
  %i.xq = add <8 x i16> %i.xp, splat (i16 -3329)  ; 2 uses
  %i.xr = icmp slt <8 x i16> %i.xq, zeroinitializer
  %i.xs = select <8 x i1> %i.xr, <8 x i16> %i.xp, <8 x i16> zeroinitializer
  %i.xt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xq, <8 x i16> zeroinitializer)
  %i.xu = or <8 x i16> %i.xs, %i.xt               ; 8 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.kj, i64 40 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.kl, i64 72 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.kn, i64 104 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.kp, i64 136 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.kr, i64 168 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.kt, i64 200 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.kv, i64 232 ; 2 uses
  %i.yd = shufflevector <8 x i16> %i.nq, <8 x i16> %i.qu, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.ye = shufflevector <8 x i16> %i.ty, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.yf = shufflevector <4 x i16> %i.yd, <4 x i16> %i.ye, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.yg = shufflevector <8 x i16> %i.xu, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.yh = shufflevector <4 x i16> %i.yf, <4 x i16> %i.yg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.yh, ptr %i.ki, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.yi = shufflevector <8 x i16> %i.nq, <8 x i16> %i.qu, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.yj = shufflevector <8 x i16> %i.ty, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.yk = shufflevector <4 x i16> %i.yi, <4 x i16> %i.yj, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.yl = shufflevector <8 x i16> %i.xu, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ym = shufflevector <4 x i16> %i.yk, <4 x i16> %i.yl, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.ym, ptr %i.kk, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.yn = shufflevector <8 x i16> %i.nq, <8 x i16> %i.qu, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %4 = insertelement <4 x i16> %i.yn, i16 %2, i64 2
  %i.yo = shufflevector <8 x i16> %i.xu, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.yp = shufflevector <4 x i16> %4, <4 x i16> %i.yo, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.yp, ptr %i.km, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.yq = shufflevector <8 x i16> %i.nq, <8 x i16> %i.qu, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.yr = shufflevector <8 x i16> %i.ty, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.ys = shufflevector <4 x i16> %i.yq, <4 x i16> %i.yr, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.yt = shufflevector <8 x i16> %i.xu, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.yu = shufflevector <4 x i16> %i.ys, <4 x i16> %i.yt, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.yu, ptr %i.ko, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.yv = extractelement <8 x i16> %i.xu, i64 4
  store i16 %i.yv, ptr %i.ud, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.yw = extractelement <8 x i16> %i.xu, i64 5
  store i16 %i.yw, ptr %i.ue, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.yx = extractelement <8 x i16> %i.xu, i64 6
  store i16 %i.yx, ptr %i.uf, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.yy = extractelement <8 x i16> %i.xu, i64 7
  store i16 %i.yy, ptr %i.ug, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ki, i64 24 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.kj, i64 56 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.kl, i64 88 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.kn, i64 120 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.kp, i64 152 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.kr, i64 184 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.kt, i64 216 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.kv, i64 248 ; 2 uses
  %i.zh = load i16, ptr %i.xv, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.zi = load i16, ptr %i.xw, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.zj = load i16, ptr %i.xx, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.zk = load i16, ptr %i.xy, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.zl = load i16, ptr %i.xz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.zm = load i16, ptr %i.ya, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.zn = load i16, ptr %i.yb, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.zo = load i16, ptr %i.yc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.zp = insertelement <8 x i16> poison, i16 %i.zh, i64 0
  %i.zq = insertelement <8 x i16> %i.zp, i16 %i.zi, i64 1
  %i.zr = insertelement <8 x i16> %i.zq, i16 %i.zj, i64 2
  %i.zs = insertelement <8 x i16> %i.zr, i16 %i.zk, i64 3
  %i.zt = insertelement <8 x i16> %i.zs, i16 %i.zl, i64 4
  %i.zu = insertelement <8 x i16> %i.zt, i16 %i.zm, i64 5
  %i.zv = insertelement <8 x i16> %i.zu, i16 %i.zn, i64 6
  %i.zw = insertelement <8 x i16> %i.zv, i16 %i.zo, i64 7 ; 2 uses
  %i.zx = load i16, ptr %i.yz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.zy = load i16, ptr %i.za, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.zz = load i16, ptr %i.zb, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aaa = load i16, ptr %i.zc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aab = load i16, ptr %i.zd, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aac = load i16, ptr %i.ze, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aad = load i16, ptr %i.zf, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aae = load i16, ptr %i.zg, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aaf = insertelement <8 x i16> poison, i16 %i.zx, i64 0
  %i.aag = insertelement <8 x i16> %i.aaf, i16 %i.zy, i64 1
  %i.aah = insertelement <8 x i16> %i.aag, i16 %i.zz, i64 2
  %i.aai = insertelement <8 x i16> %i.aah, i16 %i.aaa, i64 3
  %i.aaj = insertelement <8 x i16> %i.aai, i16 %i.aab, i64 4
  %i.aak = insertelement <8 x i16> %i.aaj, i16 %i.aac, i64 5
  %i.aal = insertelement <8 x i16> %i.aak, i16 %i.aad, i64 6
  %i.aam = insertelement <8 x i16> %i.aal, i16 %i.aae, i64 7
  %i.aan = zext <8 x i16> %i.aam to <8 x i32>
  %i.aao = mul nuw <8 x i32> %i.aan, %i.lg        ; 2 uses
  %i.aap = zext <8 x i32> %i.aao to <8 x i64>
  %i.aaq = mul nuw nsw <8 x i64> %i.aap, splat (i64 5039)
  %i.aar = lshr <8 x i64> %i.aaq, splat (i64 24)
  %i.aas = trunc nuw nsw <8 x i64> %i.aar to <8 x i32>
  %i.aat = mul <8 x i32> %i.aas, splat (i32 62207)
  %i.aau = add <8 x i32> %i.aat, %i.aao
  %i.aav = trunc <8 x i32> %i.aau to <8 x i16>    ; 2 uses
  %i.aaw = add <8 x i16> %i.aav, splat (i16 -3329) ; 2 uses
  %i.aax = icmp slt <8 x i16> %i.aaw, zeroinitializer
  %i.aay = select <8 x i1> %i.aax, <8 x i16> %i.aav, <8 x i16> zeroinitializer
  %i.aaz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aaw, <8 x i16> zeroinitializer)
  %i.aba = or <8 x i16> %i.aay, %i.aaz            ; 2 uses
  %i.abb = sub <8 x i16> %i.zw, %i.aba            ; 3 uses
  %i.abc = add <8 x i16> %i.abb, splat (i16 3329)
  %i.abd = icmp slt <8 x i16> %i.abb, zeroinitializer
  %i.abe = select <8 x i1> %i.abd, <8 x i16> %i.abc, <8 x i16> zeroinitializer
  %i.abf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abb, <8 x i16> zeroinitializer)
  %i.abg = or <8 x i16> %i.abe, %i.abf            ; 8 uses
  %i.abh = extractelement <8 x i16> %i.abg, i64 4
  store i16 %i.abh, ptr %i.zd, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.abi = extractelement <8 x i16> %i.abg, i64 5
  store i16 %i.abi, ptr %i.ze, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.abj = extractelement <8 x i16> %i.abg, i64 6
  store i16 %i.abj, ptr %i.zf, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.abk = extractelement <8 x i16> %i.abg, i64 7
  store i16 %i.abk, ptr %i.zg, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.abl = add <8 x i16> %i.aba, %i.zw            ; 2 uses
  %i.abm = add <8 x i16> %i.abl, splat (i16 -3329) ; 2 uses
  %i.abn = icmp slt <8 x i16> %i.abm, zeroinitializer
  %i.abo = select <8 x i1> %i.abn, <8 x i16> %i.abl, <8 x i16> zeroinitializer
  %i.abp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abm, <8 x i16> zeroinitializer)
  %i.abq = or <8 x i16> %i.abo, %i.abp            ; 8 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.ki, i64 10
  %i.abs = getelementptr inbounds nuw i8, ptr %i.kj, i64 42
  %i.abt = getelementptr inbounds nuw i8, ptr %i.kl, i64 74
  %i.abu = getelementptr inbounds nuw i8, ptr %i.kn, i64 106
  %i.abv = getelementptr inbounds nuw i8, ptr %i.kp, i64 138 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.kr, i64 170 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.kt, i64 202 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.kv, i64 234 ; 2 uses
  %i.abz = extractelement <8 x i16> %i.abq, i64 4
  store i16 %i.abz, ptr %i.xz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aca = extractelement <8 x i16> %i.abq, i64 5
  store i16 %i.aca, ptr %i.ya, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.acb = extractelement <8 x i16> %i.abq, i64 6
  store i16 %i.acb, ptr %i.yb, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.acc = extractelement <8 x i16> %i.abq, i64 7
  store i16 %i.acc, ptr %i.yc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.acd = getelementptr inbounds nuw i8, ptr %i.ki, i64 26
  %i.ace = getelementptr inbounds nuw i8, ptr %i.kj, i64 58
  %i.acf = getelementptr inbounds nuw i8, ptr %i.kl, i64 90
  %i.acg = getelementptr inbounds nuw i8, ptr %i.kn, i64 122
  %i.ach = getelementptr inbounds nuw i8, ptr %i.kp, i64 154 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.kr, i64 186 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.kt, i64 218 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.kv, i64 250 ; 2 uses
  %i.acl = load i16, ptr %i.abr, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.acm = load i16, ptr %i.abs, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.acn = load i16, ptr %i.abt, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aco = load i16, ptr %i.abu, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.acp = load i16, ptr %i.abv, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.acq = load i16, ptr %i.abw, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.acr = load i16, ptr %i.abx, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.acs = load i16, ptr %i.aby, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.act = insertelement <8 x i16> poison, i16 %i.acl, i64 0
  %i.acu = insertelement <8 x i16> %i.act, i16 %i.acm, i64 1
  %i.acv = insertelement <8 x i16> %i.acu, i16 %i.acn, i64 2
  %i.acw = insertelement <8 x i16> %i.acv, i16 %i.aco, i64 3
  %i.acx = insertelement <8 x i16> %i.acw, i16 %i.acp, i64 4
  %i.acy = insertelement <8 x i16> %i.acx, i16 %i.acq, i64 5
  %i.acz = insertelement <8 x i16> %i.acy, i16 %i.acr, i64 6
  %i.ada = insertelement <8 x i16> %i.acz, i16 %i.acs, i64 7 ; 2 uses
  %i.adb = load i16, ptr %i.acd, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.adc = load i16, ptr %i.ace, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.add = load i16, ptr %i.acf, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ade = load i16, ptr %i.acg, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.adf = load i16, ptr %i.ach, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.adg = load i16, ptr %i.aci, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.adh = load i16, ptr %i.acj, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.adi = load i16, ptr %i.ack, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.adj = insertelement <8 x i16> poison, i16 %i.adb, i64 0
  %i.adk = insertelement <8 x i16> %i.adj, i16 %i.adc, i64 1
  %i.adl = insertelement <8 x i16> %i.adk, i16 %i.add, i64 2
  %i.adm = insertelement <8 x i16> %i.adl, i16 %i.ade, i64 3
  %i.adn = insertelement <8 x i16> %i.adm, i16 %i.adf, i64 4
  %i.ado = insertelement <8 x i16> %i.adn, i16 %i.adg, i64 5
  %i.adp = insertelement <8 x i16> %i.ado, i16 %i.adh, i64 6
  %i.adq = insertelement <8 x i16> %i.adp, i16 %i.adi, i64 7
  %i.adr = zext <8 x i16> %i.adq to <8 x i32>
  %i.ads = mul nuw <8 x i32> %i.adr, %i.lg        ; 2 uses
  %i.adt = zext <8 x i32> %i.ads to <8 x i64>
  %i.adu = mul nuw nsw <8 x i64> %i.adt, splat (i64 5039)
  %i.adv = lshr <8 x i64> %i.adu, splat (i64 24)
  %i.adw = trunc nuw nsw <8 x i64> %i.adv to <8 x i32>
  %i.adx = mul <8 x i32> %i.adw, splat (i32 62207)
  %i.ady = add <8 x i32> %i.adx, %i.ads
  %i.adz = trunc <8 x i32> %i.ady to <8 x i16>    ; 2 uses
  %i.aea = add <8 x i16> %i.adz, splat (i16 -3329) ; 2 uses
  %i.aeb = icmp slt <8 x i16> %i.aea, zeroinitializer
  %i.aec = select <8 x i1> %i.aeb, <8 x i16> %i.adz, <8 x i16> zeroinitializer
  %i.aed = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aea, <8 x i16> zeroinitializer)
  %i.aee = or <8 x i16> %i.aec, %i.aed            ; 2 uses
  %i.aef = sub <8 x i16> %i.ada, %i.aee           ; 3 uses
  %i.aeg = add <8 x i16> %i.aef, splat (i16 3329)
  %i.aeh = icmp slt <8 x i16> %i.aef, zeroinitializer
  %i.aei = select <8 x i1> %i.aeh, <8 x i16> %i.aeg, <8 x i16> zeroinitializer
  %i.aej = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aef, <8 x i16> zeroinitializer)
  %i.aek = or <8 x i16> %i.aei, %i.aej            ; 8 uses
  %i.ael = extractelement <8 x i16> %i.aek, i64 4
  store i16 %i.ael, ptr %i.ach, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aem = extractelement <8 x i16> %i.aek, i64 5
  store i16 %i.aem, ptr %i.aci, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aen = extractelement <8 x i16> %i.aek, i64 6
  store i16 %i.aen, ptr %i.acj, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aeo = extractelement <8 x i16> %i.aek, i64 7
  store i16 %i.aeo, ptr %i.ack, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aep = add <8 x i16> %i.aee, %i.ada           ; 2 uses
  %i.aeq = add <8 x i16> %i.aep, splat (i16 -3329) ; 2 uses
  %i.aer = icmp slt <8 x i16> %i.aeq, zeroinitializer
  %i.aes = select <8 x i1> %i.aer, <8 x i16> %i.aep, <8 x i16> zeroinitializer
  %i.aet = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aeq, <8 x i16> zeroinitializer)
  %i.aeu = or <8 x i16> %i.aes, %i.aet            ; 8 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.ki, i64 12
  %i.aew = getelementptr inbounds nuw i8, ptr %i.kj, i64 44
  %i.aex = getelementptr inbounds nuw i8, ptr %i.kl, i64 76
  %i.aey = getelementptr inbounds nuw i8, ptr %i.kn, i64 108
  %i.aez = getelementptr inbounds nuw i8, ptr %i.kp, i64 140 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.kr, i64 172 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.kt, i64 204 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.kv, i64 236 ; 2 uses
  %i.afd = extractelement <8 x i16> %i.aeu, i64 4
  store i16 %i.afd, ptr %i.abv, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.afe = extractelement <8 x i16> %i.aeu, i64 5
  store i16 %i.afe, ptr %i.abw, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aff = extractelement <8 x i16> %i.aeu, i64 6
  store i16 %i.aff, ptr %i.abx, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.afg = extractelement <8 x i16> %i.aeu, i64 7
  store i16 %i.afg, ptr %i.aby, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.afh = getelementptr inbounds nuw i8, ptr %i.ki, i64 28
  %i.afi = getelementptr inbounds nuw i8, ptr %i.kj, i64 60
  %i.afj = getelementptr inbounds nuw i8, ptr %i.kl, i64 92
  %i.afk = getelementptr inbounds nuw i8, ptr %i.kn, i64 124
  %i.afl = getelementptr inbounds nuw i8, ptr %i.kp, i64 156 ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.kr, i64 188 ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.kt, i64 220 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.kv, i64 252 ; 2 uses
  %i.afp = load i16, ptr %i.aev, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.afq = load i16, ptr %i.aew, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.afr = load i16, ptr %i.aex, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.afs = load i16, ptr %i.aey, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aft = load i16, ptr %i.aez, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.afu = load i16, ptr %i.afa, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.afv = load i16, ptr %i.afb, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.afw = load i16, ptr %i.afc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.afx = insertelement <8 x i16> poison, i16 %i.afp, i64 0
  %i.afy = insertelement <8 x i16> %i.afx, i16 %i.afq, i64 1
  %i.afz = insertelement <8 x i16> %i.afy, i16 %i.afr, i64 2
  %i.aga = insertelement <8 x i16> %i.afz, i16 %i.afs, i64 3
  %i.agb = insertelement <8 x i16> %i.aga, i16 %i.aft, i64 4
  %i.agc = insertelement <8 x i16> %i.agb, i16 %i.afu, i64 5
  %i.agd = insertelement <8 x i16> %i.agc, i16 %i.afv, i64 6
  %i.age = insertelement <8 x i16> %i.agd, i16 %i.afw, i64 7 ; 2 uses
  %i.agf = load i16, ptr %i.afh, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.agg = load i16, ptr %i.afi, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.agh = load i16, ptr %i.afj, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.agi = load i16, ptr %i.afk, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.agj = load i16, ptr %i.afl, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.agk = load i16, ptr %i.afm, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.agl = load i16, ptr %i.afn, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.agm = load i16, ptr %i.afo, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.agn = insertelement <8 x i16> poison, i16 %i.agf, i64 0
  %i.ago = insertelement <8 x i16> %i.agn, i16 %i.agg, i64 1
  %i.agp = insertelement <8 x i16> %i.ago, i16 %i.agh, i64 2
  %i.agq = insertelement <8 x i16> %i.agp, i16 %i.agi, i64 3
  %i.agr = insertelement <8 x i16> %i.agq, i16 %i.agj, i64 4
  %i.ags = insertelement <8 x i16> %i.agr, i16 %i.agk, i64 5
  %i.agt = insertelement <8 x i16> %i.ags, i16 %i.agl, i64 6
  %i.agu = insertelement <8 x i16> %i.agt, i16 %i.agm, i64 7
  %i.agv = zext <8 x i16> %i.agu to <8 x i32>
  %i.agw = mul nuw <8 x i32> %i.agv, %i.lg        ; 2 uses
  %i.agx = zext <8 x i32> %i.agw to <8 x i64>
  %i.agy = mul nuw nsw <8 x i64> %i.agx, splat (i64 5039)
  %i.agz = lshr <8 x i64> %i.agy, splat (i64 24)
  %i.aha = trunc nuw nsw <8 x i64> %i.agz to <8 x i32>
  %i.ahb = mul <8 x i32> %i.aha, splat (i32 62207)
  %i.ahc = add <8 x i32> %i.ahb, %i.agw
  %i.ahd = trunc <8 x i32> %i.ahc to <8 x i16>    ; 2 uses
  %i.ahe = add <8 x i16> %i.ahd, splat (i16 -3329) ; 2 uses
  %i.ahf = icmp slt <8 x i16> %i.ahe, zeroinitializer
  %i.ahg = select <8 x i1> %i.ahf, <8 x i16> %i.ahd, <8 x i16> zeroinitializer
  %i.ahh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ahe, <8 x i16> zeroinitializer)
  %i.ahi = or <8 x i16> %i.ahg, %i.ahh            ; 2 uses
  %i.ahj = sub <8 x i16> %i.age, %i.ahi           ; 3 uses
  %i.ahk = add <8 x i16> %i.ahj, splat (i16 3329)
  %i.ahl = icmp slt <8 x i16> %i.ahj, zeroinitializer
  %i.ahm = select <8 x i1> %i.ahl, <8 x i16> %i.ahk, <8 x i16> zeroinitializer
  %i.ahn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ahj, <8 x i16> zeroinitializer)
  %i.aho = or <8 x i16> %i.ahm, %i.ahn            ; 8 uses
  %5 = extractelement <8 x i16> %i.aho, i64 2
  %i.ahp = extractelement <8 x i16> %i.aho, i64 4
  store i16 %i.ahp, ptr %i.afl, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ahq = extractelement <8 x i16> %i.aho, i64 5
  store i16 %i.ahq, ptr %i.afm, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ahr = extractelement <8 x i16> %i.aho, i64 6
  store i16 %i.ahr, ptr %i.afn, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ahs = extractelement <8 x i16> %i.aho, i64 7
  store i16 %i.ahs, ptr %i.afo, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aht = add <8 x i16> %i.ahi, %i.age           ; 2 uses
  %i.ahu = add <8 x i16> %i.aht, splat (i16 -3329) ; 2 uses
  %i.ahv = icmp slt <8 x i16> %i.ahu, zeroinitializer
  %i.ahw = select <8 x i1> %i.ahv, <8 x i16> %i.aht, <8 x i16> zeroinitializer
  %i.ahx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ahu, <8 x i16> zeroinitializer)
  %i.ahy = or <8 x i16> %i.ahw, %i.ahx            ; 8 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ki, i64 14
  %i.aia = getelementptr inbounds nuw i8, ptr %i.kj, i64 46
  %i.aib = getelementptr inbounds nuw i8, ptr %i.kl, i64 78
  %i.aic = getelementptr inbounds nuw i8, ptr %i.kn, i64 110
  %i.aid = getelementptr inbounds nuw i8, ptr %i.kp, i64 142 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.kr, i64 174 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.kt, i64 206 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.kv, i64 238 ; 2 uses
  %6 = extractelement <8 x i16> %i.ahy, i64 2
  %i.aih = extractelement <8 x i16> %i.ahy, i64 4
  store i16 %i.aih, ptr %i.aez, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aii = extractelement <8 x i16> %i.ahy, i64 5
  store i16 %i.aii, ptr %i.afa, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aij = extractelement <8 x i16> %i.ahy, i64 6
  store i16 %i.aij, ptr %i.afb, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aik = extractelement <8 x i16> %i.ahy, i64 7
  store i16 %i.aik, ptr %i.afc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ki, i64 30
  %i.aim = getelementptr inbounds nuw i8, ptr %i.kj, i64 62
  %i.ain = getelementptr inbounds nuw i8, ptr %i.kl, i64 94
  %i.aio = getelementptr inbounds nuw i8, ptr %i.kn, i64 126
  %i.aip = getelementptr inbounds nuw i8, ptr %i.kp, i64 158 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.kr, i64 190 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.kt, i64 222 ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.kv, i64 254 ; 2 uses
  %i.ait = load i16, ptr %i.ahz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aiu = load i16, ptr %i.aia, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aiv = load i16, ptr %i.aib, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aiw = load i16, ptr %i.aic, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aix = load i16, ptr %i.aid, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aiy = load i16, ptr %i.aie, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aiz = load i16, ptr %i.aif, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aja = load i16, ptr %i.aig, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajb = insertelement <8 x i16> poison, i16 %i.ait, i64 0
  %i.ajc = insertelement <8 x i16> %i.ajb, i16 %i.aiu, i64 1
  %i.ajd = insertelement <8 x i16> %i.ajc, i16 %i.aiv, i64 2
  %i.aje = insertelement <8 x i16> %i.ajd, i16 %i.aiw, i64 3
  %i.ajf = insertelement <8 x i16> %i.aje, i16 %i.aix, i64 4
  %i.ajg = insertelement <8 x i16> %i.ajf, i16 %i.aiy, i64 5
  %i.ajh = insertelement <8 x i16> %i.ajg, i16 %i.aiz, i64 6
  %i.aji = insertelement <8 x i16> %i.ajh, i16 %i.aja, i64 7 ; 2 uses
  %i.ajj = load i16, ptr %i.ail, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajk = load i16, ptr %i.aim, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajl = load i16, ptr %i.ain, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajm = load i16, ptr %i.aio, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajn = load i16, ptr %i.aip, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajo = load i16, ptr %i.aiq, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajp = load i16, ptr %i.air, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajq = load i16, ptr %i.ais, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ajr = insertelement <8 x i16> poison, i16 %i.ajj, i64 0
  %i.ajs = insertelement <8 x i16> %i.ajr, i16 %i.ajk, i64 1
  %i.ajt = insertelement <8 x i16> %i.ajs, i16 %i.ajl, i64 2
  %i.aju = insertelement <8 x i16> %i.ajt, i16 %i.ajm, i64 3
  %i.ajv = insertelement <8 x i16> %i.aju, i16 %i.ajn, i64 4
  %i.ajw = insertelement <8 x i16> %i.ajv, i16 %i.ajo, i64 5
  %i.ajx = insertelement <8 x i16> %i.ajw, i16 %i.ajp, i64 6
  %i.ajy = insertelement <8 x i16> %i.ajx, i16 %i.ajq, i64 7
  %i.ajz = zext <8 x i16> %i.ajy to <8 x i32>
  %i.aka = mul nuw <8 x i32> %i.ajz, %i.lg        ; 2 uses
  %i.akb = zext <8 x i32> %i.aka to <8 x i64>
  %i.akc = mul nuw nsw <8 x i64> %i.akb, splat (i64 5039)
  %i.akd = lshr <8 x i64> %i.akc, splat (i64 24)
  %i.ake = trunc nuw nsw <8 x i64> %i.akd to <8 x i32>
  %i.akf = mul <8 x i32> %i.ake, splat (i32 62207)
  %i.akg = add <8 x i32> %i.akf, %i.aka
  %i.akh = trunc <8 x i32> %i.akg to <8 x i16>    ; 2 uses
  %i.aki = add <8 x i16> %i.akh, splat (i16 -3329) ; 2 uses
  %i.akj = icmp slt <8 x i16> %i.aki, zeroinitializer
  %i.akk = select <8 x i1> %i.akj, <8 x i16> %i.akh, <8 x i16> zeroinitializer
  %i.akl = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aki, <8 x i16> zeroinitializer)
  %i.akm = or <8 x i16> %i.akk, %i.akl            ; 2 uses
  %i.akn = sub <8 x i16> %i.aji, %i.akm           ; 3 uses
  %i.ako = add <8 x i16> %i.akn, splat (i16 3329)
  %i.akp = icmp slt <8 x i16> %i.akn, zeroinitializer
  %i.akq = select <8 x i1> %i.akp, <8 x i16> %i.ako, <8 x i16> zeroinitializer
  %i.akr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.akn, <8 x i16> zeroinitializer)
  %i.aks = or <8 x i16> %i.akq, %i.akr            ; 8 uses
  %i.akt = shufflevector <8 x i16> %i.abg, <8 x i16> %i.aek, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.aku = shufflevector <8 x i16> %i.aho, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.akv = shufflevector <4 x i16> %i.akt, <4 x i16> %i.aku, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.akw = shufflevector <8 x i16> %i.aks, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.akx = shufflevector <4 x i16> %i.akv, <4 x i16> %i.akw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.akx, ptr %i.yz, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aky = shufflevector <8 x i16> %i.abg, <8 x i16> %i.aek, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.akz = shufflevector <8 x i16> %i.aho, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ala = shufflevector <4 x i16> %i.aky, <4 x i16> %i.akz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.alb = shufflevector <8 x i16> %i.aks, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.alc = shufflevector <4 x i16> %i.ala, <4 x i16> %i.alb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.alc, ptr %i.za, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ald = shufflevector <8 x i16> %i.abg, <8 x i16> %i.aek, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %7 = insertelement <4 x i16> %i.ald, i16 %5, i64 2
  %i.ale = shufflevector <8 x i16> %i.aks, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.alf = shufflevector <4 x i16> %7, <4 x i16> %i.ale, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.alf, ptr %i.zb, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.alg = shufflevector <8 x i16> %i.abg, <8 x i16> %i.aek, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.alh = shufflevector <8 x i16> %i.aho, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.ali = shufflevector <4 x i16> %i.alg, <4 x i16> %i.alh, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.alj = shufflevector <8 x i16> %i.aks, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.alk = shufflevector <4 x i16> %i.ali, <4 x i16> %i.alj, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.alk, ptr %i.zc, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.all = extractelement <8 x i16> %i.aks, i64 4
  store i16 %i.all, ptr %i.aip, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.alm = extractelement <8 x i16> %i.aks, i64 5
  store i16 %i.alm, ptr %i.aiq, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.aln = extractelement <8 x i16> %i.aks, i64 6
  store i16 %i.aln, ptr %i.air, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.alo = extractelement <8 x i16> %i.aks, i64 7
  store i16 %i.alo, ptr %i.ais, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.alp = add <8 x i16> %i.akm, %i.aji           ; 2 uses
  %i.alq = add <8 x i16> %i.alp, splat (i16 -3329) ; 2 uses
  %i.alr = icmp slt <8 x i16> %i.alq, zeroinitializer
  %i.als = select <8 x i1> %i.alr, <8 x i16> %i.alp, <8 x i16> zeroinitializer
  %i.alt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.alq, <8 x i16> zeroinitializer)
  %i.alu = or <8 x i16> %i.als, %i.alt            ; 8 uses
  %i.alv = shufflevector <8 x i16> %i.abq, <8 x i16> %i.aeu, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.alw = shufflevector <8 x i16> %i.ahy, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.alx = shufflevector <4 x i16> %i.alv, <4 x i16> %i.alw, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aly = shufflevector <8 x i16> %i.alu, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.alz = shufflevector <4 x i16> %i.alx, <4 x i16> %i.aly, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.alz, ptr %i.xv, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ama = shufflevector <8 x i16> %i.abq, <8 x i16> %i.aeu, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.amb = shufflevector <8 x i16> %i.ahy, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.amc = shufflevector <4 x i16> %i.ama, <4 x i16> %i.amb, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.amd = shufflevector <8 x i16> %i.alu, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ame = shufflevector <4 x i16> %i.amc, <4 x i16> %i.amd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.ame, ptr %i.xw, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.amf = shufflevector <8 x i16> %i.abq, <8 x i16> %i.aeu, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %8 = insertelement <4 x i16> %i.amf, i16 %6, i64 2
  %i.amg = shufflevector <8 x i16> %i.alu, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.amh = shufflevector <4 x i16> %8, <4 x i16> %i.amg, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.amh, ptr %i.xx, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.ami = shufflevector <8 x i16> %i.abq, <8 x i16> %i.aeu, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.amj = shufflevector <8 x i16> %i.ahy, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.amk = shufflevector <4 x i16> %i.ami, <4 x i16> %i.amj, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.aml = shufflevector <8 x i16> %i.alu, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.amm = shufflevector <4 x i16> %i.amk, <4 x i16> %i.aml, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.amm, ptr %i.xy, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.amn = extractelement <8 x i16> %i.alu, i64 4
  store i16 %i.amn, ptr %i.aid, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.amo = extractelement <8 x i16> %i.alu, i64 5
  store i16 %i.amo, ptr %i.aie, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.amp = extractelement <8 x i16> %i.alu, i64 6
  store i16 %i.amp, ptr %i.aif, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %i.amq = extractelement <8 x i16> %i.alu, i64 7
  store i16 %i.amq, ptr %i.aig, align 2, !tbaa !38, !alias.scope !111, !noalias !108
  %index.next109 = add nuw i64 %index106, 8       ; 2 uses
  %i.amr = icmp eq i64 %index.next109, 16
  br i1 %i.amr, label %vector.memcheck111, label %vector.body105, !llvm.loop !113

scalar.ph103:                                     ; preds = %vector.memcheck, %scalar.ph103
  %.020.idx.4 = phi i64 [ %.022.add.4.7, %scalar.ph103 ], [ 0, %vector.memcheck ] ; 4 uses
  %.1.4 = phi ptr [ %i.amt, %scalar.ph103 ], [ %i.hm, %vector.memcheck ]
  %.020.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.4 ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.4
  %.ptr25.4 = getelementptr inbounds nuw i8, ptr %i.ams, i64 16 ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %.1.4, i64 2 ; 3 uses
  %i.amu = load i16, ptr %i.amt, align 2, !tbaa !38
  %i.amv = zext i16 %i.amu to i32
  %.022.add.4.7 = add nuw nsw i64 %.020.idx.4, 32
  %i.amw = load <8 x i16>, ptr %.ptr25.4, align 2, !tbaa !38
  %i.amx = zext <8 x i16> %i.amw to <8 x i32>
  %i.amy = insertelement <8 x i32> poison, i32 %i.amv, i64 0
  %i.amz = shufflevector <8 x i32> %i.amy, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ana = mul nuw <8 x i32> %i.amz, %i.amx       ; 2 uses
  %i.anb = load <8 x i16>, ptr %.020.ptr.4, align 2, !tbaa !38 ; 2 uses
  %i.anc = zext <8 x i32> %i.ana to <8 x i64>
  %i.and = mul nuw nsw <8 x i64> %i.anc, splat (i64 5039)
  %i.ane = lshr <8 x i64> %i.and, splat (i64 24)
  %i.anf = trunc nuw nsw <8 x i64> %i.ane to <8 x i32>
  %i.ang = mul <8 x i32> %i.anf, splat (i32 62207)
  %i.anh = add <8 x i32> %i.ang, %i.ana
  %i.ani = trunc <8 x i32> %i.anh to <8 x i16>    ; 2 uses
  %i.anj = add <8 x i16> %i.ani, splat (i16 -3329) ; 2 uses
  %i.ank = icmp slt <8 x i16> %i.anj, zeroinitializer
  %i.anl = select <8 x i1> %i.ank, <8 x i16> %i.ani, <8 x i16> zeroinitializer
  %i.anm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.anj, <8 x i16> zeroinitializer)
  %i.ann = or <8 x i16> %i.anl, %i.anm            ; 2 uses
  %i.ano = sub <8 x i16> %i.anb, %i.ann           ; 3 uses
  %i.anp = add <8 x i16> %i.ano, splat (i16 3329)
  %i.anq = icmp slt <8 x i16> %i.ano, zeroinitializer
  %i.anr = select <8 x i1> %i.anq, <8 x i16> %i.anp, <8 x i16> zeroinitializer
  %i.ans = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ano, <8 x i16> zeroinitializer)
  %i.ant = or <8 x i16> %i.anr, %i.ans
  store <8 x i16> %i.ant, ptr %.ptr25.4, align 2, !tbaa !38
  %i.anu = add <8 x i16> %i.ann, %i.anb           ; 2 uses
  %i.anv = add <8 x i16> %i.anu, splat (i16 -3329) ; 2 uses
  %i.anw = icmp slt <8 x i16> %i.anv, zeroinitializer
  %i.anx = select <8 x i1> %i.anw, <8 x i16> %i.anu, <8 x i16> zeroinitializer
  %i.any = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.anv, <8 x i16> zeroinitializer)
  %i.anz = or <8 x i16> %i.anx, %i.any
  store <8 x i16> %i.anz, ptr %.020.ptr.4, align 2, !tbaa !38
  %i.aoa = icmp samesign ult i64 %.020.idx.4, 480
  br i1 %i.aoa, label %scalar.ph103, label %vector.memcheck111, !llvm.loop !114

vector.memcheck111:                               ; preds = %vector.body105, %scalar.ph103
  %.lcssa39 = phi ptr [ %i.amt, %scalar.ph103 ], [ %i.kf, %vector.body105 ] ; 5 uses
  %scevgep112 = getelementptr i8, ptr %0, i64 512
  %scevgep113 = getelementptr nuw i8, ptr %.lcssa39, i64 2
  %scevgep114 = getelementptr i8, ptr %.lcssa39, i64 66
  %bound0115 = icmp ult ptr %0, %scevgep114
  %bound1116 = icmp ult ptr %scevgep113, %scevgep112
  %found.conflict117 = and i1 %bound0115, %bound1116
  br i1 %found.conflict117, label %scalar.ph118, label %vector.ph119

vector.ph119:                                     ; preds = %vector.memcheck111
  %i.aob = getelementptr i8, ptr %.lcssa39, i64 64
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph119
  %index121 = phi i64 [ 0, %vector.ph119 ], [ %index.next124, %vector.body120 ] ; 3 uses
  %i.aoc = shl i64 %index121, 4                   ; 8 uses
  %i.aod = shl i64 %index121, 1
  %next.gep122 = getelementptr i8, ptr %.lcssa39, i64 %i.aod
  %i.aoe = getelementptr inbounds nuw i8, ptr %0, i64 %i.aoc ; 9 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %0, i64 %i.aoc ; 8 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 16
  %i.aoh = getelementptr inbounds nuw i8, ptr %0, i64 %i.aoc ; 8 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 32
  %i.aoj = getelementptr inbounds nuw i8, ptr %0, i64 %i.aoc ; 8 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 48
  %i.aol = getelementptr inbounds nuw i8, ptr %0, i64 %i.aoc ; 8 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 64
  %i.aon = getelementptr inbounds nuw i8, ptr %0, i64 %i.aoc ; 8 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 80
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 %i.aoc ; 8 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 96
  %i.aor = getelementptr inbounds nuw i8, ptr %0, i64 %i.aoc ; 8 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 112
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoe, i64 8
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aof, i64 24
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoh, i64 40
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aoj, i64 56
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aol, i64 72
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aon, i64 88
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aop, i64 104
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aor, i64 120
  %i.apb = getelementptr inbounds nuw i8, ptr %next.gep122, i64 2
  %wide.load123 = load <8 x i16>, ptr %i.apb, align 2, !tbaa !38, !alias.scope !115
  %i.apc = zext <8 x i16> %wide.load123 to <8 x i32> ; 4 uses
  %i.apd = load i16, ptr %i.aoe, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.ape = load i16, ptr %i.aog, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apf = load i16, ptr %i.aoi, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apg = load i16, ptr %i.aok, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aph = load i16, ptr %i.aom, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.api = load i16, ptr %i.aoo, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apj = load i16, ptr %i.aoq, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apk = load i16, ptr %i.aos, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apl = insertelement <8 x i16> poison, i16 %i.apd, i64 0
  %i.apm = insertelement <8 x i16> %i.apl, i16 %i.ape, i64 1
  %i.apn = insertelement <8 x i16> %i.apm, i16 %i.apf, i64 2
  %i.apo = insertelement <8 x i16> %i.apn, i16 %i.apg, i64 3
  %i.app = insertelement <8 x i16> %i.apo, i16 %i.aph, i64 4
  %i.apq = insertelement <8 x i16> %i.app, i16 %i.api, i64 5
  %i.apr = insertelement <8 x i16> %i.apq, i16 %i.apj, i64 6
  %i.aps = insertelement <8 x i16> %i.apr, i16 %i.apk, i64 7 ; 2 uses
  %i.apt = load i16, ptr %i.aot, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apu = load i16, ptr %i.aou, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apv = load i16, ptr %i.aov, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apw = load i16, ptr %i.aow, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apx = load i16, ptr %i.aox, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apy = load i16, ptr %i.aoy, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.apz = load i16, ptr %i.aoz, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aqa = load i16, ptr %i.apa, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aqb = insertelement <8 x i16> poison, i16 %i.apt, i64 0
  %i.aqc = insertelement <8 x i16> %i.aqb, i16 %i.apu, i64 1
  %i.aqd = insertelement <8 x i16> %i.aqc, i16 %i.apv, i64 2
  %i.aqe = insertelement <8 x i16> %i.aqd, i16 %i.apw, i64 3
  %i.aqf = insertelement <8 x i16> %i.aqe, i16 %i.apx, i64 4
  %i.aqg = insertelement <8 x i16> %i.aqf, i16 %i.apy, i64 5
  %i.aqh = insertelement <8 x i16> %i.aqg, i16 %i.apz, i64 6
  %i.aqi = insertelement <8 x i16> %i.aqh, i16 %i.aqa, i64 7
  %i.aqj = zext <8 x i16> %i.aqi to <8 x i32>
  %i.aqk = mul nuw <8 x i32> %i.aqj, %i.apc       ; 2 uses
  %i.aql = zext <8 x i32> %i.aqk to <8 x i64>
  %i.aqm = mul nuw nsw <8 x i64> %i.aql, splat (i64 5039)
  %i.aqn = lshr <8 x i64> %i.aqm, splat (i64 24)
  %i.aqo = trunc nuw nsw <8 x i64> %i.aqn to <8 x i32>
  %i.aqp = mul <8 x i32> %i.aqo, splat (i32 62207)
  %i.aqq = add <8 x i32> %i.aqp, %i.aqk
  %i.aqr = trunc <8 x i32> %i.aqq to <8 x i16>    ; 2 uses
  %i.aqs = add <8 x i16> %i.aqr, splat (i16 -3329) ; 2 uses
  %i.aqt = icmp slt <8 x i16> %i.aqs, zeroinitializer
  %i.aqu = select <8 x i1> %i.aqt, <8 x i16> %i.aqr, <8 x i16> zeroinitializer
  %i.aqv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aqs, <8 x i16> zeroinitializer)
  %i.aqw = or <8 x i16> %i.aqu, %i.aqv            ; 2 uses
  %i.aqx = sub <8 x i16> %i.aps, %i.aqw           ; 3 uses
  %i.aqy = add <8 x i16> %i.aqw, %i.aps           ; 2 uses
  %i.aqz = add <8 x i16> %i.aqy, splat (i16 -3329) ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aoe, i64 2
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aof, i64 18
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aoh, i64 34
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aoj, i64 50
  %i.are = getelementptr inbounds nuw i8, ptr %i.aol, i64 66
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aon, i64 82
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aop, i64 98
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aor, i64 114
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aoe, i64 10
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aof, i64 26
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aoh, i64 42
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aoj, i64 58
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aol, i64 74
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aon, i64 90
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aop, i64 106
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aor, i64 122
  %i.arq = load i16, ptr %i.ara, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.arr = load i16, ptr %i.arb, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.ars = load i16, ptr %i.arc, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.art = load i16, ptr %i.ard, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.aru = load i16, ptr %i.are, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.arv = load i16, ptr %i.arf, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.arw = load i16, ptr %i.arg, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.arx = load i16, ptr %i.arh, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.ary = insertelement <8 x i16> poison, i16 %i.arq, i64 0
  %i.arz = insertelement <8 x i16> %i.ary, i16 %i.arr, i64 1
  %i.asa = insertelement <8 x i16> %i.arz, i16 %i.ars, i64 2
  %i.asb = insertelement <8 x i16> %i.asa, i16 %i.art, i64 3
  %i.asc = insertelement <8 x i16> %i.asb, i16 %i.aru, i64 4
  %i.asd = insertelement <8 x i16> %i.asc, i16 %i.arv, i64 5
  %i.ase = insertelement <8 x i16> %i.asd, i16 %i.arw, i64 6
  %i.asf = insertelement <8 x i16> %i.ase, i16 %i.arx, i64 7 ; 2 uses
  %i.asg = load i16, ptr %i.ari, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.ash = load i16, ptr %i.arj, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asi = load i16, ptr %i.ark, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asj = load i16, ptr %i.arl, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.ask = load i16, ptr %i.arm, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asl = load i16, ptr %i.arn, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asm = load i16, ptr %i.aro, align 2, !tbaa !38, !alias.scope !118, !noalias !115
  %i.asn = load i16, ptr %i.arp, align 2, !tbaa !38, !alias.scope !118, !noalias !115
end_hunk_0
begin_hunk_1_@scalar_inverse_ntt:vector.memcheck
  %i.ut = load i16, ptr %i.tt, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.uu = insertelement <8 x i16> poison, i16 %i.um, i64 0
  %i.uv = insertelement <8 x i16> %i.uu, i16 %i.un, i64 1
  %i.uw = insertelement <8 x i16> %i.uv, i16 %i.uo, i64 2
  %i.ux = insertelement <8 x i16> %i.uw, i16 %i.up, i64 3
  %i.uy = insertelement <8 x i16> %i.ux, i16 %i.uq, i64 4
  %i.uz = insertelement <8 x i16> %i.uy, i16 %i.ur, i64 5
  %i.va = insertelement <8 x i16> %i.uz, i16 %i.us, i64 6
  %i.vb = insertelement <8 x i16> %i.va, i16 %i.ut, i64 7 ; 2 uses
  %i.vc = zext <8 x i16> %i.ul to <8 x i32>
  %i.vd = zext <8 x i16> %i.vb to <8 x i32>
  %i.ve = add nuw nsw <8 x i32> %i.vc, splat (i32 3329)
  %i.vf = sub nsw <8 x i32> %i.ve, %i.vd
  %i.vg = mul <8 x i32> %i.vf, %i.tv              ; 2 uses
  %i.vh = zext <8 x i32> %i.vg to <8 x i64>
  %i.vi = mul nuw nsw <8 x i64> %i.vh, splat (i64 5039)
  %i.vj = lshr <8 x i64> %i.vi, splat (i64 24)
  %i.vk = trunc nuw nsw <8 x i64> %i.vj to <8 x i32>
  %i.vl = mul <8 x i32> %i.vk, splat (i32 62207)
  %i.vm = add <8 x i32> %i.vl, %i.vg
  %i.vn = trunc <8 x i32> %i.vm to <8 x i16>      ; 2 uses
  %i.vo = add <8 x i16> %i.vn, splat (i16 -3329)  ; 2 uses
  %i.vp = icmp slt <8 x i16> %i.vo, zeroinitializer
  %i.vq = select <8 x i1> %i.vp, <8 x i16> %i.vn, <8 x i16> zeroinitializer
  %i.vr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vo, <8 x i16> zeroinitializer)
  %i.vs = or <8 x i16> %i.vq, %i.vr               ; 8 uses
  %i.vt = extractelement <8 x i16> %i.vs, i64 4
  store i16 %i.vt, ptr %i.tq, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.vu = extractelement <8 x i16> %i.vs, i64 5
  store i16 %i.vu, ptr %i.tr, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.vv = extractelement <8 x i16> %i.vs, i64 6
  store i16 %i.vv, ptr %i.ts, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.vw = extractelement <8 x i16> %i.vs, i64 7
  store i16 %i.vw, ptr %i.tt, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.vx = add <8 x i16> %i.vb, %i.ul              ; 2 uses
  %i.vy = add <8 x i16> %i.vx, splat (i16 -3329)  ; 2 uses
  %i.vz = icmp slt <8 x i16> %i.vy, zeroinitializer
  %i.wa = select <8 x i1> %i.vz, <8 x i16> %i.vx, <8 x i16> zeroinitializer
  %i.wb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vy, <8 x i16> zeroinitializer)
  %i.wc = or <8 x i16> %i.wa, %i.wb               ; 8 uses
  %i.wd = extractelement <8 x i16> %i.wc, i64 4
  store i16 %i.wd, ptr %i.tf, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.we = extractelement <8 x i16> %i.wc, i64 5
  store i16 %i.we, ptr %i.th, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.wf = extractelement <8 x i16> %i.wc, i64 6
  store i16 %i.wf, ptr %i.tj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.wg = extractelement <8 x i16> %i.wc, i64 7
  store i16 %i.wg, ptr %i.tl, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.wh = getelementptr inbounds nuw i8, ptr %i.sx, i64 2
  %i.wi = getelementptr i8, ptr %i.sy, i64 34
  %i.wj = getelementptr i8, ptr %i.ta, i64 66
  %i.wk = getelementptr i8, ptr %i.tc, i64 98
  %i.wl = getelementptr i8, ptr %i.te, i64 130    ; 2 uses
  %i.wm = getelementptr i8, ptr %i.tg, i64 162    ; 2 uses
  %i.wn = getelementptr i8, ptr %i.ti, i64 194    ; 2 uses
  %i.wo = getelementptr i8, ptr %i.tk, i64 226    ; 2 uses
  %i.wp = getelementptr i8, ptr %i.sx, i64 18
  %i.wq = getelementptr i8, ptr %i.sy, i64 50
  %i.wr = getelementptr i8, ptr %i.ta, i64 82
  %i.ws = getelementptr i8, ptr %i.tc, i64 114
  %i.wt = getelementptr i8, ptr %i.te, i64 146    ; 2 uses
  %i.wu = getelementptr i8, ptr %i.tg, i64 178    ; 2 uses
  %i.wv = getelementptr i8, ptr %i.ti, i64 210    ; 2 uses
  %i.ww = getelementptr i8, ptr %i.tk, i64 242    ; 2 uses
  %i.wx = load i16, ptr %i.wh, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.wy = load i16, ptr %i.wi, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.wz = load i16, ptr %i.wj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xa = load i16, ptr %i.wk, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xb = load i16, ptr %i.wl, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xc = load i16, ptr %i.wm, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xd = load i16, ptr %i.wn, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xe = load i16, ptr %i.wo, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xf = insertelement <8 x i16> poison, i16 %i.wx, i64 0
  %i.xg = insertelement <8 x i16> %i.xf, i16 %i.wy, i64 1
  %i.xh = insertelement <8 x i16> %i.xg, i16 %i.wz, i64 2
  %i.xi = insertelement <8 x i16> %i.xh, i16 %i.xa, i64 3
  %i.xj = insertelement <8 x i16> %i.xi, i16 %i.xb, i64 4
  %i.xk = insertelement <8 x i16> %i.xj, i16 %i.xc, i64 5
  %i.xl = insertelement <8 x i16> %i.xk, i16 %i.xd, i64 6
  %i.xm = insertelement <8 x i16> %i.xl, i16 %i.xe, i64 7 ; 2 uses
  %i.xn = load i16, ptr %i.wp, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xo = load i16, ptr %i.wq, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xp = load i16, ptr %i.wr, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xq = load i16, ptr %i.ws, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xr = load i16, ptr %i.wt, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xs = load i16, ptr %i.wu, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xt = load i16, ptr %i.wv, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xu = load i16, ptr %i.ww, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.xv = insertelement <8 x i16> poison, i16 %i.xn, i64 0
  %i.xw = insertelement <8 x i16> %i.xv, i16 %i.xo, i64 1
  %i.xx = insertelement <8 x i16> %i.xw, i16 %i.xp, i64 2
  %i.xy = insertelement <8 x i16> %i.xx, i16 %i.xq, i64 3
  %i.xz = insertelement <8 x i16> %i.xy, i16 %i.xr, i64 4
  %i.ya = insertelement <8 x i16> %i.xz, i16 %i.xs, i64 5
  %i.yb = insertelement <8 x i16> %i.ya, i16 %i.xt, i64 6
  %i.yc = insertelement <8 x i16> %i.yb, i16 %i.xu, i64 7 ; 2 uses
  %i.yd = zext <8 x i16> %i.xm to <8 x i32>
  %i.ye = zext <8 x i16> %i.yc to <8 x i32>
  %i.yf = add nuw nsw <8 x i32> %i.yd, splat (i32 3329)
  %i.yg = sub nsw <8 x i32> %i.yf, %i.ye
  %i.yh = mul <8 x i32> %i.yg, %i.tv              ; 2 uses
  %i.yi = zext <8 x i32> %i.yh to <8 x i64>
  %i.yj = mul nuw nsw <8 x i64> %i.yi, splat (i64 5039)
  %i.yk = lshr <8 x i64> %i.yj, splat (i64 24)
  %i.yl = trunc nuw nsw <8 x i64> %i.yk to <8 x i32>
  %i.ym = mul <8 x i32> %i.yl, splat (i32 62207)
  %i.yn = add <8 x i32> %i.ym, %i.yh
  %i.yo = trunc <8 x i32> %i.yn to <8 x i16>      ; 2 uses
  %i.yp = add <8 x i16> %i.yo, splat (i16 -3329)  ; 2 uses
  %i.yq = icmp slt <8 x i16> %i.yp, zeroinitializer
  %i.yr = select <8 x i1> %i.yq, <8 x i16> %i.yo, <8 x i16> zeroinitializer
  %i.ys = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yp, <8 x i16> zeroinitializer)
  %i.yt = or <8 x i16> %i.yr, %i.ys               ; 8 uses
  %i.yu = extractelement <8 x i16> %i.yt, i64 4
  store i16 %i.yu, ptr %i.wt, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.yv = extractelement <8 x i16> %i.yt, i64 5
  store i16 %i.yv, ptr %i.wu, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.yw = extractelement <8 x i16> %i.yt, i64 6
  store i16 %i.yw, ptr %i.wv, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.yx = extractelement <8 x i16> %i.yt, i64 7
  store i16 %i.yx, ptr %i.ww, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.yy = add <8 x i16> %i.yc, %i.xm              ; 2 uses
  %i.yz = add <8 x i16> %i.yy, splat (i16 -3329)  ; 2 uses
  %i.za = icmp slt <8 x i16> %i.yz, zeroinitializer
  %i.zb = select <8 x i1> %i.za, <8 x i16> %i.yy, <8 x i16> zeroinitializer
  %i.zc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yz, <8 x i16> zeroinitializer)
  %i.zd = or <8 x i16> %i.zb, %i.zc               ; 8 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.sx, i64 4
  %i.zf = getelementptr i8, ptr %i.sy, i64 36
  %i.zg = getelementptr i8, ptr %i.ta, i64 68
  %i.zh = getelementptr i8, ptr %i.tc, i64 100
  %i.zi = getelementptr i8, ptr %i.te, i64 132    ; 2 uses
  %i.zj = getelementptr i8, ptr %i.tg, i64 164    ; 2 uses
  %i.zk = getelementptr i8, ptr %i.ti, i64 196    ; 2 uses
  %i.zl = getelementptr i8, ptr %i.tk, i64 228    ; 2 uses
  %i.zm = extractelement <8 x i16> %i.zd, i64 4
  store i16 %i.zm, ptr %i.wl, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.zn = extractelement <8 x i16> %i.zd, i64 5
  store i16 %i.zn, ptr %i.wm, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.zo = extractelement <8 x i16> %i.zd, i64 6
  store i16 %i.zo, ptr %i.wn, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.zp = extractelement <8 x i16> %i.zd, i64 7
  store i16 %i.zp, ptr %i.wo, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.zq = getelementptr i8, ptr %i.sx, i64 20
  %i.zr = getelementptr i8, ptr %i.sy, i64 52
  %i.zs = getelementptr i8, ptr %i.ta, i64 84
  %i.zt = getelementptr i8, ptr %i.tc, i64 116
  %i.zu = getelementptr i8, ptr %i.te, i64 148    ; 2 uses
  %i.zv = getelementptr i8, ptr %i.tg, i64 180    ; 2 uses
  %i.zw = getelementptr i8, ptr %i.ti, i64 212    ; 2 uses
  %i.zx = getelementptr i8, ptr %i.tk, i64 244    ; 2 uses
  %i.zy = load i16, ptr %i.ze, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.zz = load i16, ptr %i.zf, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aaa = load i16, ptr %i.zg, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aab = load i16, ptr %i.zh, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aac = load i16, ptr %i.zi, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aad = load i16, ptr %i.zj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aae = load i16, ptr %i.zk, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aaf = load i16, ptr %i.zl, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aag = insertelement <8 x i16> poison, i16 %i.zy, i64 0
  %i.aah = insertelement <8 x i16> %i.aag, i16 %i.zz, i64 1
  %i.aai = insertelement <8 x i16> %i.aah, i16 %i.aaa, i64 2
  %i.aaj = insertelement <8 x i16> %i.aai, i16 %i.aab, i64 3
  %i.aak = insertelement <8 x i16> %i.aaj, i16 %i.aac, i64 4
  %i.aal = insertelement <8 x i16> %i.aak, i16 %i.aad, i64 5
  %i.aam = insertelement <8 x i16> %i.aal, i16 %i.aae, i64 6
  %i.aan = insertelement <8 x i16> %i.aam, i16 %i.aaf, i64 7 ; 2 uses
  %i.aao = load i16, ptr %i.zq, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aap = load i16, ptr %i.zr, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aaq = load i16, ptr %i.zs, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aar = load i16, ptr %i.zt, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aas = load i16, ptr %i.zu, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aat = load i16, ptr %i.zv, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aau = load i16, ptr %i.zw, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aav = load i16, ptr %i.zx, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aaw = insertelement <8 x i16> poison, i16 %i.aao, i64 0
  %i.aax = insertelement <8 x i16> %i.aaw, i16 %i.aap, i64 1
  %i.aay = insertelement <8 x i16> %i.aax, i16 %i.aaq, i64 2
  %i.aaz = insertelement <8 x i16> %i.aay, i16 %i.aar, i64 3
  %i.aba = insertelement <8 x i16> %i.aaz, i16 %i.aas, i64 4
  %i.abb = insertelement <8 x i16> %i.aba, i16 %i.aat, i64 5
  %i.abc = insertelement <8 x i16> %i.abb, i16 %i.aau, i64 6
  %i.abd = insertelement <8 x i16> %i.abc, i16 %i.aav, i64 7 ; 2 uses
  %i.abe = zext <8 x i16> %i.aan to <8 x i32>
  %i.abf = zext <8 x i16> %i.abd to <8 x i32>
  %i.abg = add nuw nsw <8 x i32> %i.abe, splat (i32 3329)
  %i.abh = sub nsw <8 x i32> %i.abg, %i.abf
  %i.abi = mul <8 x i32> %i.abh, %i.tv            ; 2 uses
  %i.abj = zext <8 x i32> %i.abi to <8 x i64>
  %i.abk = mul nuw nsw <8 x i64> %i.abj, splat (i64 5039)
  %i.abl = lshr <8 x i64> %i.abk, splat (i64 24)
  %i.abm = trunc nuw nsw <8 x i64> %i.abl to <8 x i32>
  %i.abn = mul <8 x i32> %i.abm, splat (i32 62207)
  %i.abo = add <8 x i32> %i.abn, %i.abi
  %i.abp = trunc <8 x i32> %i.abo to <8 x i16>    ; 2 uses
  %i.abq = add <8 x i16> %i.abp, splat (i16 -3329) ; 2 uses
  %i.abr = icmp slt <8 x i16> %i.abq, zeroinitializer
  %i.abs = select <8 x i1> %i.abr, <8 x i16> %i.abp, <8 x i16> zeroinitializer
  %i.abt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abq, <8 x i16> zeroinitializer)
  %i.abu = or <8 x i16> %i.abs, %i.abt            ; 8 uses
  %1 = extractelement <8 x i16> %i.abu, i64 2
  %i.abv = extractelement <8 x i16> %i.abu, i64 4
  store i16 %i.abv, ptr %i.zu, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.abw = extractelement <8 x i16> %i.abu, i64 5
  store i16 %i.abw, ptr %i.zv, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.abx = extractelement <8 x i16> %i.abu, i64 6
  store i16 %i.abx, ptr %i.zw, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aby = extractelement <8 x i16> %i.abu, i64 7
  store i16 %i.aby, ptr %i.zx, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.abz = add <8 x i16> %i.abd, %i.aan           ; 2 uses
  %i.aca = add <8 x i16> %i.abz, splat (i16 -3329) ; 2 uses
  %i.acb = icmp slt <8 x i16> %i.aca, zeroinitializer
  %i.acc = select <8 x i1> %i.acb, <8 x i16> %i.abz, <8 x i16> zeroinitializer
  %i.acd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aca, <8 x i16> zeroinitializer)
  %i.ace = or <8 x i16> %i.acc, %i.acd            ; 8 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.sx, i64 6
  %i.acg = getelementptr i8, ptr %i.sy, i64 38
  %i.ach = getelementptr i8, ptr %i.ta, i64 70
  %i.aci = getelementptr i8, ptr %i.tc, i64 102
  %i.acj = getelementptr i8, ptr %i.te, i64 134   ; 2 uses
  %i.ack = getelementptr i8, ptr %i.tg, i64 166   ; 2 uses
  %i.acl = getelementptr i8, ptr %i.ti, i64 198   ; 2 uses
  %i.acm = getelementptr i8, ptr %i.tk, i64 230   ; 2 uses
  %2 = extractelement <8 x i16> %i.ace, i64 2
  %i.acn = extractelement <8 x i16> %i.ace, i64 4
  store i16 %i.acn, ptr %i.zi, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aco = extractelement <8 x i16> %i.ace, i64 5
  store i16 %i.aco, ptr %i.zj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.acp = extractelement <8 x i16> %i.ace, i64 6
  store i16 %i.acp, ptr %i.zk, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.acq = extractelement <8 x i16> %i.ace, i64 7
  store i16 %i.acq, ptr %i.zl, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.acr = getelementptr i8, ptr %i.sx, i64 22
  %i.acs = getelementptr i8, ptr %i.sy, i64 54
  %i.act = getelementptr i8, ptr %i.ta, i64 86
  %i.acu = getelementptr i8, ptr %i.tc, i64 118
  %i.acv = getelementptr i8, ptr %i.te, i64 150   ; 2 uses
  %i.acw = getelementptr i8, ptr %i.tg, i64 182   ; 2 uses
  %i.acx = getelementptr i8, ptr %i.ti, i64 214   ; 2 uses
  %i.acy = getelementptr i8, ptr %i.tk, i64 246   ; 2 uses
  %i.acz = load i16, ptr %i.acf, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ada = load i16, ptr %i.acg, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.adb = load i16, ptr %i.ach, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.adc = load i16, ptr %i.aci, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.add = load i16, ptr %i.acj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ade = load i16, ptr %i.ack, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.adf = load i16, ptr %i.acl, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.adg = load i16, ptr %i.acm, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.adh = insertelement <8 x i16> poison, i16 %i.acz, i64 0
  %i.adi = insertelement <8 x i16> %i.adh, i16 %i.ada, i64 1
  %i.adj = insertelement <8 x i16> %i.adi, i16 %i.adb, i64 2
  %i.adk = insertelement <8 x i16> %i.adj, i16 %i.adc, i64 3
  %i.adl = insertelement <8 x i16> %i.adk, i16 %i.add, i64 4
  %i.adm = insertelement <8 x i16> %i.adl, i16 %i.ade, i64 5
  %i.adn = insertelement <8 x i16> %i.adm, i16 %i.adf, i64 6
  %i.ado = insertelement <8 x i16> %i.adn, i16 %i.adg, i64 7 ; 2 uses
  %i.adp = load i16, ptr %i.acr, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.adq = load i16, ptr %i.acs, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.adr = load i16, ptr %i.act, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ads = load i16, ptr %i.acu, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.adt = load i16, ptr %i.acv, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.adu = load i16, ptr %i.acw, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.adv = load i16, ptr %i.acx, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.adw = load i16, ptr %i.acy, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.adx = insertelement <8 x i16> poison, i16 %i.adp, i64 0
  %i.ady = insertelement <8 x i16> %i.adx, i16 %i.adq, i64 1
  %i.adz = insertelement <8 x i16> %i.ady, i16 %i.adr, i64 2
  %i.aea = insertelement <8 x i16> %i.adz, i16 %i.ads, i64 3
  %i.aeb = insertelement <8 x i16> %i.aea, i16 %i.adt, i64 4
  %i.aec = insertelement <8 x i16> %i.aeb, i16 %i.adu, i64 5
  %i.aed = insertelement <8 x i16> %i.aec, i16 %i.adv, i64 6
  %i.aee = insertelement <8 x i16> %i.aed, i16 %i.adw, i64 7 ; 2 uses
  %i.aef = zext <8 x i16> %i.ado to <8 x i32>
  %i.aeg = zext <8 x i16> %i.aee to <8 x i32>
  %i.aeh = add nuw nsw <8 x i32> %i.aef, splat (i32 3329)
  %i.aei = sub nsw <8 x i32> %i.aeh, %i.aeg
  %i.aej = mul <8 x i32> %i.aei, %i.tv            ; 2 uses
  %i.aek = zext <8 x i32> %i.aej to <8 x i64>
  %i.ael = mul nuw nsw <8 x i64> %i.aek, splat (i64 5039)
  %i.aem = lshr <8 x i64> %i.ael, splat (i64 24)
  %i.aen = trunc nuw nsw <8 x i64> %i.aem to <8 x i32>
  %i.aeo = mul <8 x i32> %i.aen, splat (i32 62207)
  %i.aep = add <8 x i32> %i.aeo, %i.aej
  %i.aeq = trunc <8 x i32> %i.aep to <8 x i16>    ; 2 uses
  %i.aer = add <8 x i16> %i.aeq, splat (i16 -3329) ; 2 uses
  %i.aes = icmp slt <8 x i16> %i.aer, zeroinitializer
  %i.aet = select <8 x i1> %i.aes, <8 x i16> %i.aeq, <8 x i16> zeroinitializer
  %i.aeu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aer, <8 x i16> zeroinitializer)
  %i.aev = or <8 x i16> %i.aet, %i.aeu            ; 8 uses
  %i.aew = shufflevector <8 x i16> %i.vs, <8 x i16> %i.yt, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.aex = shufflevector <8 x i16> %i.abu, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aey = shufflevector <4 x i16> %i.aew, <4 x i16> %i.aex, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aez = shufflevector <8 x i16> %i.aev, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.afa = shufflevector <4 x i16> %i.aey, <4 x i16> %i.aez, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.afa, ptr %i.tm, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.afb = shufflevector <8 x i16> %i.vs, <8 x i16> %i.yt, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.afc = shufflevector <8 x i16> %i.abu, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.afd = shufflevector <4 x i16> %i.afb, <4 x i16> %i.afc, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.afe = shufflevector <8 x i16> %i.aev, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aff = shufflevector <4 x i16> %i.afd, <4 x i16> %i.afe, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.aff, ptr %i.tn, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.afg = shufflevector <8 x i16> %i.vs, <8 x i16> %i.yt, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %3 = insertelement <4 x i16> %i.afg, i16 %1, i64 2
  %i.afh = shufflevector <8 x i16> %i.aev, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.afi = shufflevector <4 x i16> %3, <4 x i16> %i.afh, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.afi, ptr %i.to, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.afj = shufflevector <8 x i16> %i.vs, <8 x i16> %i.yt, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.afk = shufflevector <8 x i16> %i.abu, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.afl = shufflevector <4 x i16> %i.afj, <4 x i16> %i.afk, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.afm = shufflevector <8 x i16> %i.aev, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.afn = shufflevector <4 x i16> %i.afl, <4 x i16> %i.afm, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.afn, ptr %i.tp, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.afo = extractelement <8 x i16> %i.aev, i64 4
  store i16 %i.afo, ptr %i.acv, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.afp = extractelement <8 x i16> %i.aev, i64 5
  store i16 %i.afp, ptr %i.acw, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.afq = extractelement <8 x i16> %i.aev, i64 6
  store i16 %i.afq, ptr %i.acx, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.afr = extractelement <8 x i16> %i.aev, i64 7
  store i16 %i.afr, ptr %i.acy, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.afs = add <8 x i16> %i.aee, %i.ado           ; 2 uses
  %i.aft = add <8 x i16> %i.afs, splat (i16 -3329) ; 2 uses
  %i.afu = icmp slt <8 x i16> %i.aft, zeroinitializer
  %i.afv = select <8 x i1> %i.afu, <8 x i16> %i.afs, <8 x i16> zeroinitializer
  %i.afw = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aft, <8 x i16> zeroinitializer)
  %i.afx = or <8 x i16> %i.afv, %i.afw            ; 8 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8 ; 2 uses
  %i.afz = getelementptr i8, ptr %i.sy, i64 40    ; 2 uses
  %i.aga = getelementptr i8, ptr %i.ta, i64 72    ; 2 uses
  %i.agb = getelementptr i8, ptr %i.tc, i64 104   ; 2 uses
  %i.agc = getelementptr i8, ptr %i.te, i64 136   ; 2 uses
  %i.agd = getelementptr i8, ptr %i.tg, i64 168   ; 2 uses
  %i.age = getelementptr i8, ptr %i.ti, i64 200   ; 2 uses
  %i.agf = getelementptr i8, ptr %i.tk, i64 232   ; 2 uses
  %i.agg = shufflevector <8 x i16> %i.wc, <8 x i16> %i.zd, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.agh = shufflevector <8 x i16> %i.ace, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.agi = shufflevector <4 x i16> %i.agg, <4 x i16> %i.agh, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.agj = shufflevector <8 x i16> %i.afx, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.agk = shufflevector <4 x i16> %i.agi, <4 x i16> %i.agj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.agk, ptr %i.sx, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.agl = shufflevector <8 x i16> %i.wc, <8 x i16> %i.zd, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.agm = shufflevector <8 x i16> %i.ace, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.agn = shufflevector <4 x i16> %i.agl, <4 x i16> %i.agm, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ago = shufflevector <8 x i16> %i.afx, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.agp = shufflevector <4 x i16> %i.agn, <4 x i16> %i.ago, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.agp, ptr %i.sz, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.agq = shufflevector <8 x i16> %i.wc, <8 x i16> %i.zd, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %4 = insertelement <4 x i16> %i.agq, i16 %2, i64 2
  %i.agr = shufflevector <8 x i16> %i.afx, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.ags = shufflevector <4 x i16> %4, <4 x i16> %i.agr, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.ags, ptr %i.tb, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.agt = shufflevector <8 x i16> %i.wc, <8 x i16> %i.zd, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.agu = shufflevector <8 x i16> %i.ace, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.agv = shufflevector <4 x i16> %i.agt, <4 x i16> %i.agu, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.agw = shufflevector <8 x i16> %i.afx, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.agx = shufflevector <4 x i16> %i.agv, <4 x i16> %i.agw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.agx, ptr %i.td, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.agy = extractelement <8 x i16> %i.afx, i64 4
  store i16 %i.agy, ptr %i.acj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.agz = extractelement <8 x i16> %i.afx, i64 5
  store i16 %i.agz, ptr %i.ack, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aha = extractelement <8 x i16> %i.afx, i64 6
  store i16 %i.aha, ptr %i.acl, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ahb = extractelement <8 x i16> %i.afx, i64 7
  store i16 %i.ahb, ptr %i.acm, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ahc = getelementptr i8, ptr %i.sx, i64 24    ; 2 uses
  %i.ahd = getelementptr i8, ptr %i.sy, i64 56    ; 2 uses
  %i.ahe = getelementptr i8, ptr %i.ta, i64 88    ; 2 uses
  %i.ahf = getelementptr i8, ptr %i.tc, i64 120   ; 2 uses
  %i.ahg = getelementptr i8, ptr %i.te, i64 152   ; 2 uses
  %i.ahh = getelementptr i8, ptr %i.tg, i64 184   ; 2 uses
  %i.ahi = getelementptr i8, ptr %i.ti, i64 216   ; 2 uses
  %i.ahj = getelementptr i8, ptr %i.tk, i64 248   ; 2 uses
  %i.ahk = load i16, ptr %i.afy, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ahl = load i16, ptr %i.afz, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ahm = load i16, ptr %i.aga, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ahn = load i16, ptr %i.agb, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aho = load i16, ptr %i.agc, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ahp = load i16, ptr %i.agd, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ahq = load i16, ptr %i.age, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ahr = load i16, ptr %i.agf, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ahs = insertelement <8 x i16> poison, i16 %i.ahk, i64 0
  %i.aht = insertelement <8 x i16> %i.ahs, i16 %i.ahl, i64 1
  %i.ahu = insertelement <8 x i16> %i.aht, i16 %i.ahm, i64 2
  %i.ahv = insertelement <8 x i16> %i.ahu, i16 %i.ahn, i64 3
  %i.ahw = insertelement <8 x i16> %i.ahv, i16 %i.aho, i64 4
  %i.ahx = insertelement <8 x i16> %i.ahw, i16 %i.ahp, i64 5
  %i.ahy = insertelement <8 x i16> %i.ahx, i16 %i.ahq, i64 6
  %i.ahz = insertelement <8 x i16> %i.ahy, i16 %i.ahr, i64 7 ; 2 uses
  %i.aia = load i16, ptr %i.ahc, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aib = load i16, ptr %i.ahd, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aic = load i16, ptr %i.ahe, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aid = load i16, ptr %i.ahf, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aie = load i16, ptr %i.ahg, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aif = load i16, ptr %i.ahh, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aig = load i16, ptr %i.ahi, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aih = load i16, ptr %i.ahj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aii = insertelement <8 x i16> poison, i16 %i.aia, i64 0
  %i.aij = insertelement <8 x i16> %i.aii, i16 %i.aib, i64 1
  %i.aik = insertelement <8 x i16> %i.aij, i16 %i.aic, i64 2
  %i.ail = insertelement <8 x i16> %i.aik, i16 %i.aid, i64 3
  %i.aim = insertelement <8 x i16> %i.ail, i16 %i.aie, i64 4
  %i.ain = insertelement <8 x i16> %i.aim, i16 %i.aif, i64 5
  %i.aio = insertelement <8 x i16> %i.ain, i16 %i.aig, i64 6
  %i.aip = insertelement <8 x i16> %i.aio, i16 %i.aih, i64 7 ; 2 uses
  %i.aiq = zext <8 x i16> %i.ahz to <8 x i32>
  %i.air = zext <8 x i16> %i.aip to <8 x i32>
  %i.ais = add nuw nsw <8 x i32> %i.aiq, splat (i32 3329)
  %i.ait = sub nsw <8 x i32> %i.ais, %i.air
  %i.aiu = mul <8 x i32> %i.ait, %i.tv            ; 2 uses
  %i.aiv = zext <8 x i32> %i.aiu to <8 x i64>
  %i.aiw = mul nuw nsw <8 x i64> %i.aiv, splat (i64 5039)
  %i.aix = lshr <8 x i64> %i.aiw, splat (i64 24)
  %i.aiy = trunc nuw nsw <8 x i64> %i.aix to <8 x i32>
  %i.aiz = mul <8 x i32> %i.aiy, splat (i32 62207)
  %i.aja = add <8 x i32> %i.aiz, %i.aiu
  %i.ajb = trunc <8 x i32> %i.aja to <8 x i16>    ; 2 uses
  %i.ajc = add <8 x i16> %i.ajb, splat (i16 -3329) ; 2 uses
  %i.ajd = icmp slt <8 x i16> %i.ajc, zeroinitializer
  %i.aje = select <8 x i1> %i.ajd, <8 x i16> %i.ajb, <8 x i16> zeroinitializer
  %i.ajf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ajc, <8 x i16> zeroinitializer)
  %i.ajg = or <8 x i16> %i.aje, %i.ajf            ; 8 uses
  %i.ajh = extractelement <8 x i16> %i.ajg, i64 4
  store i16 %i.ajh, ptr %i.ahg, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aji = extractelement <8 x i16> %i.ajg, i64 5
  store i16 %i.aji, ptr %i.ahh, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ajj = extractelement <8 x i16> %i.ajg, i64 6
  store i16 %i.ajj, ptr %i.ahi, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ajk = extractelement <8 x i16> %i.ajg, i64 7
  store i16 %i.ajk, ptr %i.ahj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ajl = add <8 x i16> %i.aip, %i.ahz           ; 2 uses
  %i.ajm = add <8 x i16> %i.ajl, splat (i16 -3329) ; 2 uses
  %i.ajn = icmp slt <8 x i16> %i.ajm, zeroinitializer
  %i.ajo = select <8 x i1> %i.ajn, <8 x i16> %i.ajl, <8 x i16> zeroinitializer
  %i.ajp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ajm, <8 x i16> zeroinitializer)
  %i.ajq = or <8 x i16> %i.ajo, %i.ajp            ; 8 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.sx, i64 10
  %i.ajs = getelementptr i8, ptr %i.sy, i64 42
  %i.ajt = getelementptr i8, ptr %i.ta, i64 74
  %i.aju = getelementptr i8, ptr %i.tc, i64 106
  %i.ajv = getelementptr i8, ptr %i.te, i64 138   ; 2 uses
  %i.ajw = getelementptr i8, ptr %i.tg, i64 170   ; 2 uses
  %i.ajx = getelementptr i8, ptr %i.ti, i64 202   ; 2 uses
  %i.ajy = getelementptr i8, ptr %i.tk, i64 234   ; 2 uses
  %i.ajz = extractelement <8 x i16> %i.ajq, i64 4
  store i16 %i.ajz, ptr %i.agc, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aka = extractelement <8 x i16> %i.ajq, i64 5
  store i16 %i.aka, ptr %i.agd, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.akb = extractelement <8 x i16> %i.ajq, i64 6
  store i16 %i.akb, ptr %i.age, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.akc = extractelement <8 x i16> %i.ajq, i64 7
  store i16 %i.akc, ptr %i.agf, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.akd = getelementptr i8, ptr %i.sx, i64 26
  %i.ake = getelementptr i8, ptr %i.sy, i64 58
  %i.akf = getelementptr i8, ptr %i.ta, i64 90
  %i.akg = getelementptr i8, ptr %i.tc, i64 122
  %i.akh = getelementptr i8, ptr %i.te, i64 154   ; 2 uses
  %i.aki = getelementptr i8, ptr %i.tg, i64 186   ; 2 uses
  %i.akj = getelementptr i8, ptr %i.ti, i64 218   ; 2 uses
  %i.akk = getelementptr i8, ptr %i.tk, i64 250   ; 2 uses
  %i.akl = load i16, ptr %i.ajr, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.akm = load i16, ptr %i.ajs, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.akn = load i16, ptr %i.ajt, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ako = load i16, ptr %i.aju, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.akp = load i16, ptr %i.ajv, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.akq = load i16, ptr %i.ajw, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.akr = load i16, ptr %i.ajx, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aks = load i16, ptr %i.ajy, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.akt = insertelement <8 x i16> poison, i16 %i.akl, i64 0
  %i.aku = insertelement <8 x i16> %i.akt, i16 %i.akm, i64 1
  %i.akv = insertelement <8 x i16> %i.aku, i16 %i.akn, i64 2
  %i.akw = insertelement <8 x i16> %i.akv, i16 %i.ako, i64 3
  %i.akx = insertelement <8 x i16> %i.akw, i16 %i.akp, i64 4
  %i.aky = insertelement <8 x i16> %i.akx, i16 %i.akq, i64 5
  %i.akz = insertelement <8 x i16> %i.aky, i16 %i.akr, i64 6
  %i.ala = insertelement <8 x i16> %i.akz, i16 %i.aks, i64 7 ; 2 uses
  %i.alb = load i16, ptr %i.akd, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.alc = load i16, ptr %i.ake, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ald = load i16, ptr %i.akf, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ale = load i16, ptr %i.akg, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.alf = load i16, ptr %i.akh, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.alg = load i16, ptr %i.aki, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.alh = load i16, ptr %i.akj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ali = load i16, ptr %i.akk, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.alj = insertelement <8 x i16> poison, i16 %i.alb, i64 0
  %i.alk = insertelement <8 x i16> %i.alj, i16 %i.alc, i64 1
  %i.all = insertelement <8 x i16> %i.alk, i16 %i.ald, i64 2
  %i.alm = insertelement <8 x i16> %i.all, i16 %i.ale, i64 3
  %i.aln = insertelement <8 x i16> %i.alm, i16 %i.alf, i64 4
  %i.alo = insertelement <8 x i16> %i.aln, i16 %i.alg, i64 5
  %i.alp = insertelement <8 x i16> %i.alo, i16 %i.alh, i64 6
  %i.alq = insertelement <8 x i16> %i.alp, i16 %i.ali, i64 7 ; 2 uses
  %i.alr = zext <8 x i16> %i.ala to <8 x i32>
  %i.als = zext <8 x i16> %i.alq to <8 x i32>
  %i.alt = add nuw nsw <8 x i32> %i.alr, splat (i32 3329)
  %i.alu = sub nsw <8 x i32> %i.alt, %i.als
  %i.alv = mul <8 x i32> %i.alu, %i.tv            ; 2 uses
  %i.alw = zext <8 x i32> %i.alv to <8 x i64>
  %i.alx = mul nuw nsw <8 x i64> %i.alw, splat (i64 5039)
  %i.aly = lshr <8 x i64> %i.alx, splat (i64 24)
  %i.alz = trunc nuw nsw <8 x i64> %i.aly to <8 x i32>
  %i.ama = mul <8 x i32> %i.alz, splat (i32 62207)
  %i.amb = add <8 x i32> %i.ama, %i.alv
  %i.amc = trunc <8 x i32> %i.amb to <8 x i16>    ; 2 uses
  %i.amd = add <8 x i16> %i.amc, splat (i16 -3329) ; 2 uses
  %i.ame = icmp slt <8 x i16> %i.amd, zeroinitializer
  %i.amf = select <8 x i1> %i.ame, <8 x i16> %i.amc, <8 x i16> zeroinitializer
  %i.amg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.amd, <8 x i16> zeroinitializer)
  %i.amh = or <8 x i16> %i.amf, %i.amg            ; 8 uses
  %i.ami = extractelement <8 x i16> %i.amh, i64 4
  store i16 %i.ami, ptr %i.akh, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.amj = extractelement <8 x i16> %i.amh, i64 5
  store i16 %i.amj, ptr %i.aki, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.amk = extractelement <8 x i16> %i.amh, i64 6
  store i16 %i.amk, ptr %i.akj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aml = extractelement <8 x i16> %i.amh, i64 7
  store i16 %i.aml, ptr %i.akk, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.amm = add <8 x i16> %i.alq, %i.ala           ; 2 uses
  %i.amn = add <8 x i16> %i.amm, splat (i16 -3329) ; 2 uses
  %i.amo = icmp slt <8 x i16> %i.amn, zeroinitializer
  %i.amp = select <8 x i1> %i.amo, <8 x i16> %i.amm, <8 x i16> zeroinitializer
  %i.amq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.amn, <8 x i16> zeroinitializer)
  %i.amr = or <8 x i16> %i.amp, %i.amq            ; 8 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.sx, i64 12
  %i.amt = getelementptr i8, ptr %i.sy, i64 44
  %i.amu = getelementptr i8, ptr %i.ta, i64 76
  %i.amv = getelementptr i8, ptr %i.tc, i64 108
  %i.amw = getelementptr i8, ptr %i.te, i64 140   ; 2 uses
  %i.amx = getelementptr i8, ptr %i.tg, i64 172   ; 2 uses
  %i.amy = getelementptr i8, ptr %i.ti, i64 204   ; 2 uses
  %i.amz = getelementptr i8, ptr %i.tk, i64 236   ; 2 uses
  %i.ana = extractelement <8 x i16> %i.amr, i64 4
  store i16 %i.ana, ptr %i.ajv, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.anb = extractelement <8 x i16> %i.amr, i64 5
  store i16 %i.anb, ptr %i.ajw, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.anc = extractelement <8 x i16> %i.amr, i64 6
  store i16 %i.anc, ptr %i.ajx, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.and = extractelement <8 x i16> %i.amr, i64 7
  store i16 %i.and, ptr %i.ajy, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ane = getelementptr i8, ptr %i.sx, i64 28
  %i.anf = getelementptr i8, ptr %i.sy, i64 60
  %i.ang = getelementptr i8, ptr %i.ta, i64 92
  %i.anh = getelementptr i8, ptr %i.tc, i64 124
  %i.ani = getelementptr i8, ptr %i.te, i64 156   ; 2 uses
  %i.anj = getelementptr i8, ptr %i.tg, i64 188   ; 2 uses
  %i.ank = getelementptr i8, ptr %i.ti, i64 220   ; 2 uses
  %i.anl = getelementptr i8, ptr %i.tk, i64 252   ; 2 uses
  %i.anm = load i16, ptr %i.ams, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ann = load i16, ptr %i.amt, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ano = load i16, ptr %i.amu, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.anp = load i16, ptr %i.amv, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.anq = load i16, ptr %i.amw, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.anr = load i16, ptr %i.amx, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ans = load i16, ptr %i.amy, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ant = load i16, ptr %i.amz, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.anu = insertelement <8 x i16> poison, i16 %i.anm, i64 0
  %i.anv = insertelement <8 x i16> %i.anu, i16 %i.ann, i64 1
  %i.anw = insertelement <8 x i16> %i.anv, i16 %i.ano, i64 2
  %i.anx = insertelement <8 x i16> %i.anw, i16 %i.anp, i64 3
  %i.any = insertelement <8 x i16> %i.anx, i16 %i.anq, i64 4
  %i.anz = insertelement <8 x i16> %i.any, i16 %i.anr, i64 5
  %i.aoa = insertelement <8 x i16> %i.anz, i16 %i.ans, i64 6
  %i.aob = insertelement <8 x i16> %i.aoa, i16 %i.ant, i64 7 ; 2 uses
  %i.aoc = load i16, ptr %i.ane, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aod = load i16, ptr %i.anf, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aoe = load i16, ptr %i.ang, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aof = load i16, ptr %i.anh, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aog = load i16, ptr %i.ani, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aoh = load i16, ptr %i.anj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aoi = load i16, ptr %i.ank, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aoj = load i16, ptr %i.anl, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aok = insertelement <8 x i16> poison, i16 %i.aoc, i64 0
  %i.aol = insertelement <8 x i16> %i.aok, i16 %i.aod, i64 1
  %i.aom = insertelement <8 x i16> %i.aol, i16 %i.aoe, i64 2
  %i.aon = insertelement <8 x i16> %i.aom, i16 %i.aof, i64 3
  %i.aoo = insertelement <8 x i16> %i.aon, i16 %i.aog, i64 4
  %i.aop = insertelement <8 x i16> %i.aoo, i16 %i.aoh, i64 5
  %i.aoq = insertelement <8 x i16> %i.aop, i16 %i.aoi, i64 6
  %i.aor = insertelement <8 x i16> %i.aoq, i16 %i.aoj, i64 7 ; 2 uses
  %i.aos = zext <8 x i16> %i.aob to <8 x i32>
  %i.aot = zext <8 x i16> %i.aor to <8 x i32>
  %i.aou = add nuw nsw <8 x i32> %i.aos, splat (i32 3329)
  %i.aov = sub nsw <8 x i32> %i.aou, %i.aot
  %i.aow = mul <8 x i32> %i.aov, %i.tv            ; 2 uses
  %i.aox = zext <8 x i32> %i.aow to <8 x i64>
  %i.aoy = mul nuw nsw <8 x i64> %i.aox, splat (i64 5039)
  %i.aoz = lshr <8 x i64> %i.aoy, splat (i64 24)
  %i.apa = trunc nuw nsw <8 x i64> %i.aoz to <8 x i32>
  %i.apb = mul <8 x i32> %i.apa, splat (i32 62207)
  %i.apc = add <8 x i32> %i.apb, %i.aow
  %i.apd = trunc <8 x i32> %i.apc to <8 x i16>    ; 2 uses
  %i.ape = add <8 x i16> %i.apd, splat (i16 -3329) ; 2 uses
  %i.apf = icmp slt <8 x i16> %i.ape, zeroinitializer
  %i.apg = select <8 x i1> %i.apf, <8 x i16> %i.apd, <8 x i16> zeroinitializer
  %i.aph = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ape, <8 x i16> zeroinitializer)
  %i.api = or <8 x i16> %i.apg, %i.aph            ; 8 uses
  %5 = extractelement <8 x i16> %i.api, i64 2
  %i.apj = extractelement <8 x i16> %i.api, i64 4
  store i16 %i.apj, ptr %i.ani, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.apk = extractelement <8 x i16> %i.api, i64 5
  store i16 %i.apk, ptr %i.anj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.apl = extractelement <8 x i16> %i.api, i64 6
  store i16 %i.apl, ptr %i.ank, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.apm = extractelement <8 x i16> %i.api, i64 7
  store i16 %i.apm, ptr %i.anl, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.apn = add <8 x i16> %i.aor, %i.aob           ; 2 uses
  %i.apo = add <8 x i16> %i.apn, splat (i16 -3329) ; 2 uses
  %i.app = icmp slt <8 x i16> %i.apo, zeroinitializer
  %i.apq = select <8 x i1> %i.app, <8 x i16> %i.apn, <8 x i16> zeroinitializer
  %i.apr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.apo, <8 x i16> zeroinitializer)
  %i.aps = or <8 x i16> %i.apq, %i.apr            ; 8 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.sx, i64 14
  %i.apu = getelementptr i8, ptr %i.sy, i64 46
  %i.apv = getelementptr i8, ptr %i.ta, i64 78
  %i.apw = getelementptr i8, ptr %i.tc, i64 110
  %i.apx = getelementptr i8, ptr %i.te, i64 142   ; 2 uses
  %i.apy = getelementptr i8, ptr %i.tg, i64 174   ; 2 uses
  %i.apz = getelementptr i8, ptr %i.ti, i64 206   ; 2 uses
  %i.aqa = getelementptr i8, ptr %i.tk, i64 238   ; 2 uses
  %6 = extractelement <8 x i16> %i.aps, i64 2
  %i.aqb = extractelement <8 x i16> %i.aps, i64 4
  store i16 %i.aqb, ptr %i.amw, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqc = extractelement <8 x i16> %i.aps, i64 5
  store i16 %i.aqc, ptr %i.amx, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqd = extractelement <8 x i16> %i.aps, i64 6
  store i16 %i.aqd, ptr %i.amy, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqe = extractelement <8 x i16> %i.aps, i64 7
  store i16 %i.aqe, ptr %i.amz, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqf = getelementptr i8, ptr %i.sx, i64 30
  %i.aqg = getelementptr i8, ptr %i.sy, i64 62
  %i.aqh = getelementptr i8, ptr %i.ta, i64 94
  %i.aqi = getelementptr i8, ptr %i.tc, i64 126
  %i.aqj = getelementptr i8, ptr %i.te, i64 158   ; 2 uses
  %i.aqk = getelementptr i8, ptr %i.tg, i64 190   ; 2 uses
  %i.aql = getelementptr i8, ptr %i.ti, i64 222   ; 2 uses
  %i.aqm = getelementptr i8, ptr %i.tk, i64 254   ; 2 uses
  %i.aqn = load i16, ptr %i.apt, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqo = load i16, ptr %i.apu, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqp = load i16, ptr %i.apv, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqq = load i16, ptr %i.apw, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqr = load i16, ptr %i.apx, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqs = load i16, ptr %i.apy, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqt = load i16, ptr %i.apz, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqu = load i16, ptr %i.aqa, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aqv = insertelement <8 x i16> poison, i16 %i.aqn, i64 0
  %i.aqw = insertelement <8 x i16> %i.aqv, i16 %i.aqo, i64 1
  %i.aqx = insertelement <8 x i16> %i.aqw, i16 %i.aqp, i64 2
  %i.aqy = insertelement <8 x i16> %i.aqx, i16 %i.aqq, i64 3
  %i.aqz = insertelement <8 x i16> %i.aqy, i16 %i.aqr, i64 4
  %i.ara = insertelement <8 x i16> %i.aqz, i16 %i.aqs, i64 5
  %i.arb = insertelement <8 x i16> %i.ara, i16 %i.aqt, i64 6
  %i.arc = insertelement <8 x i16> %i.arb, i16 %i.aqu, i64 7 ; 2 uses
  %i.ard = load i16, ptr %i.aqf, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.are = load i16, ptr %i.aqg, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.arf = load i16, ptr %i.aqh, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.arg = load i16, ptr %i.aqi, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.arh = load i16, ptr %i.aqj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ari = load i16, ptr %i.aqk, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.arj = load i16, ptr %i.aql, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ark = load i16, ptr %i.aqm, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.arl = insertelement <8 x i16> poison, i16 %i.ard, i64 0
  %i.arm = insertelement <8 x i16> %i.arl, i16 %i.are, i64 1
  %i.arn = insertelement <8 x i16> %i.arm, i16 %i.arf, i64 2
  %i.aro = insertelement <8 x i16> %i.arn, i16 %i.arg, i64 3
  %i.arp = insertelement <8 x i16> %i.aro, i16 %i.arh, i64 4
  %i.arq = insertelement <8 x i16> %i.arp, i16 %i.ari, i64 5
  %i.arr = insertelement <8 x i16> %i.arq, i16 %i.arj, i64 6
  %i.ars = insertelement <8 x i16> %i.arr, i16 %i.ark, i64 7 ; 2 uses
  %i.art = zext <8 x i16> %i.arc to <8 x i32>
  %i.aru = zext <8 x i16> %i.ars to <8 x i32>
  %i.arv = add nuw nsw <8 x i32> %i.art, splat (i32 3329)
  %i.arw = sub nsw <8 x i32> %i.arv, %i.aru
  %i.arx = mul <8 x i32> %i.arw, %i.tv            ; 2 uses
  %i.ary = zext <8 x i32> %i.arx to <8 x i64>
  %i.arz = mul nuw nsw <8 x i64> %i.ary, splat (i64 5039)
  %i.asa = lshr <8 x i64> %i.arz, splat (i64 24)
  %i.asb = trunc nuw nsw <8 x i64> %i.asa to <8 x i32>
  %i.asc = mul <8 x i32> %i.asb, splat (i32 62207)
  %i.asd = add <8 x i32> %i.asc, %i.arx
  %i.ase = trunc <8 x i32> %i.asd to <8 x i16>    ; 2 uses
  %i.asf = add <8 x i16> %i.ase, splat (i16 -3329) ; 2 uses
  %i.asg = icmp slt <8 x i16> %i.asf, zeroinitializer
  %i.ash = select <8 x i1> %i.asg, <8 x i16> %i.ase, <8 x i16> zeroinitializer
  %i.asi = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.asf, <8 x i16> zeroinitializer)
  %i.asj = or <8 x i16> %i.ash, %i.asi            ; 8 uses
  %i.ask = shufflevector <8 x i16> %i.ajg, <8 x i16> %i.amh, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.asl = shufflevector <8 x i16> %i.api, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.asm = shufflevector <4 x i16> %i.ask, <4 x i16> %i.asl, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.asn = shufflevector <8 x i16> %i.asj, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aso = shufflevector <4 x i16> %i.asm, <4 x i16> %i.asn, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.aso, ptr %i.ahc, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.asp = shufflevector <8 x i16> %i.ajg, <8 x i16> %i.amh, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.asq = shufflevector <8 x i16> %i.api, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.asr = shufflevector <4 x i16> %i.asp, <4 x i16> %i.asq, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ass = shufflevector <8 x i16> %i.asj, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ast = shufflevector <4 x i16> %i.asr, <4 x i16> %i.ass, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.ast, ptr %i.ahd, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.asu = shufflevector <8 x i16> %i.ajg, <8 x i16> %i.amh, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %7 = insertelement <4 x i16> %i.asu, i16 %5, i64 2
  %i.asv = shufflevector <8 x i16> %i.asj, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.asw = shufflevector <4 x i16> %7, <4 x i16> %i.asv, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.asw, ptr %i.ahe, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.asx = shufflevector <8 x i16> %i.ajg, <8 x i16> %i.amh, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.asy = shufflevector <8 x i16> %i.api, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.asz = shufflevector <4 x i16> %i.asx, <4 x i16> %i.asy, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.ata = shufflevector <8 x i16> %i.asj, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.atb = shufflevector <4 x i16> %i.asz, <4 x i16> %i.ata, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.atb, ptr %i.ahf, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.atc = extractelement <8 x i16> %i.asj, i64 4
  store i16 %i.atc, ptr %i.aqj, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.atd = extractelement <8 x i16> %i.asj, i64 5
  store i16 %i.atd, ptr %i.aqk, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.ate = extractelement <8 x i16> %i.asj, i64 6
  store i16 %i.ate, ptr %i.aql, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.atf = extractelement <8 x i16> %i.asj, i64 7
  store i16 %i.atf, ptr %i.aqm, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.atg = add <8 x i16> %i.ars, %i.arc           ; 2 uses
  %i.ath = add <8 x i16> %i.atg, splat (i16 -3329) ; 2 uses
  %i.ati = icmp slt <8 x i16> %i.ath, zeroinitializer
  %i.atj = select <8 x i1> %i.ati, <8 x i16> %i.atg, <8 x i16> zeroinitializer
  %i.atk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ath, <8 x i16> zeroinitializer)
  %i.atl = or <8 x i16> %i.atj, %i.atk            ; 8 uses
  %i.atm = shufflevector <8 x i16> %i.ajq, <8 x i16> %i.amr, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.atn = shufflevector <8 x i16> %i.aps, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ato = shufflevector <4 x i16> %i.atm, <4 x i16> %i.atn, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.atp = shufflevector <8 x i16> %i.atl, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.atq = shufflevector <4 x i16> %i.ato, <4 x i16> %i.atp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.atq, ptr %i.afy, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.atr = shufflevector <8 x i16> %i.ajq, <8 x i16> %i.amr, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.ats = shufflevector <8 x i16> %i.aps, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.att = shufflevector <4 x i16> %i.atr, <4 x i16> %i.ats, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.atu = shufflevector <8 x i16> %i.atl, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.atv = shufflevector <4 x i16> %i.att, <4 x i16> %i.atu, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.atv, ptr %i.afz, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.atw = shufflevector <8 x i16> %i.ajq, <8 x i16> %i.amr, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %8 = insertelement <4 x i16> %i.atw, i16 %6, i64 2
  %i.atx = shufflevector <8 x i16> %i.atl, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.aty = shufflevector <4 x i16> %8, <4 x i16> %i.atx, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.aty, ptr %i.aga, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.atz = shufflevector <8 x i16> %i.ajq, <8 x i16> %i.amr, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.aua = shufflevector <8 x i16> %i.aps, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.aub = shufflevector <4 x i16> %i.atz, <4 x i16> %i.aua, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.auc = shufflevector <8 x i16> %i.atl, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.aud = shufflevector <4 x i16> %i.aub, <4 x i16> %i.auc, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.aud, ptr %i.agb, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aue = extractelement <8 x i16> %i.atl, i64 4
  store i16 %i.aue, ptr %i.apx, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.auf = extractelement <8 x i16> %i.atl, i64 5
  store i16 %i.auf, ptr %i.apy, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.aug = extractelement <8 x i16> %i.atl, i64 6
  store i16 %i.aug, ptr %i.apz, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %i.auh = extractelement <8 x i16> %i.atl, i64 7
  store i16 %i.auh, ptr %i.aqa, align 2, !tbaa !38, !alias.scope !203, !noalias !200
  %index.next78 = add nuw i64 %index75, 8         ; 2 uses
  %i.aui = icmp eq i64 %index.next78, 16
  br i1 %i.aui, label %.preheader42, label %vector.body74, !llvm.loop !205

scalar.ph72:                                      ; preds = %vector.memcheck66, %scalar.ph72
  %.021.idx.2 = phi i64 [ %.023.add.2.7, %scalar.ph72 ], [ 0, %vector.memcheck66 ] ; 4 uses
  %.1.2 = phi ptr [ %i.auk, %scalar.ph72 ], [ %.lcssa48, %vector.memcheck66 ]
  %.021.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 %.021.idx.2 ; 2 uses
  %i.auj = getelementptr i8, ptr %0, i64 %.021.idx.2
  %.ptr26.2 = getelementptr i8, ptr %i.auj, i64 16 ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %.1.2, i64 2 ; 3 uses
  %i.aul = load i16, ptr %i.auk, align 2, !tbaa !38
  %i.aum = zext i16 %i.aul to i32
  %.023.add.2.7 = add nuw nsw i64 %.021.idx.2, 32
  %i.aun = load <8 x i16>, ptr %.021.ptr.2, align 2, !tbaa !38 ; 2 uses
  %i.auo = load <8 x i16>, ptr %.ptr26.2, align 2, !tbaa !38 ; 2 uses
  %i.aup = zext <8 x i16> %i.aun to <8 x i32>
  %i.auq = zext <8 x i16> %i.auo to <8 x i32>
  %i.aur = add nuw nsw <8 x i32> %i.aup, splat (i32 3329)
  %i.aus = sub nsw <8 x i32> %i.aur, %i.auq
  %i.aut = insertelement <8 x i32> poison, i32 %i.aum, i64 0
  %i.auu = shufflevector <8 x i32> %i.aut, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.auv = mul <8 x i32> %i.aus, %i.auu           ; 2 uses
  %i.auw = zext <8 x i32> %i.auv to <8 x i64>
  %i.aux = mul nuw nsw <8 x i64> %i.auw, splat (i64 5039)
  %i.auy = lshr <8 x i64> %i.aux, splat (i64 24)
  %i.auz = trunc nuw nsw <8 x i64> %i.auy to <8 x i32>
  %i.ava = mul <8 x i32> %i.auz, splat (i32 62207)
  %i.avb = add <8 x i32> %i.ava, %i.auv
  %i.avc = trunc <8 x i32> %i.avb to <8 x i16>    ; 2 uses
  %i.avd = add <8 x i16> %i.avc, splat (i16 -3329) ; 2 uses
  %i.ave = icmp slt <8 x i16> %i.avd, zeroinitializer
  %i.avf = select <8 x i1> %i.ave, <8 x i16> %i.avc, <8 x i16> zeroinitializer
  %i.avg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.avd, <8 x i16> zeroinitializer)
  %i.avh = or <8 x i16> %i.avf, %i.avg
  store <8 x i16> %i.avh, ptr %.ptr26.2, align 2, !tbaa !38
  %i.avi = add <8 x i16> %i.auo, %i.aun           ; 2 uses
  %i.avj = add <8 x i16> %i.avi, splat (i16 -3329) ; 2 uses
  %i.avk = icmp slt <8 x i16> %i.avj, zeroinitializer
  %i.avl = select <8 x i1> %i.avk, <8 x i16> %i.avi, <8 x i16> zeroinitializer
  %i.avm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.avj, <8 x i16> zeroinitializer)
  %i.avn = or <8 x i16> %i.avl, %i.avm
  store <8 x i16> %i.avn, ptr %.021.ptr.2, align 2, !tbaa !38
  %i.avo = icmp samesign ult i64 %.021.idx.2, 480
  br i1 %i.avo, label %scalar.ph72, label %.preheader42, !llvm.loop !206

.preheader42:                                     ; preds = %vector.body74, %scalar.ph72
  %.lcssa47 = phi ptr [ %i.auk, %scalar.ph72 ], [ %i.su, %vector.body74 ]
  %i.avp = xor i64 %i.a, -1
  %i.avq = add i64 %i.a, 32
  %i.avr = add i64 %i.a, 2
  br label %bb.a

bb.a:                                             ; preds = %.preheader42, %.loopexit156
  %.021.idx.3 = phi i64 [ %.023.add.3.lcssa, %.loopexit156 ], [ 0, %.preheader42 ] ; 5 uses
  %.1.3 = phi ptr [ %i.avs, %.loopexit156 ], [ %.lcssa47, %.preheader42 ]
  %.021.ptr.3 = getelementptr inbounds i8, ptr %0, i64 %.021.idx.3 ; 3 uses
  %.021.add.3 = add nsw i64 %.021.idx.3, 32       ; 4 uses
  %.ptr26.3 = getelementptr inbounds i8, ptr %0, i64 %.021.add.3
  %i.avs = getelementptr inbounds nuw i8, ptr %.1.3, i64 2 ; 3 uses
  %i.avt = load i16, ptr %i.avs, align 2, !tbaa !38
  %i.avu = zext i16 %i.avt to i32                 ; 2 uses
  %i.avv = add i64 %i.avq, %.021.idx.3
  %i.avw = add i64 %i.avr, %.021.idx.3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.avv, i64 %i.avw)
  %i.avx = add i64 %umax, %i.avp
  %i.avy = sub i64 %i.avx, %.021.idx.3            ; 2 uses
  %i.avz = lshr i64 %i.avy, 1
  %i.awa = add nuw i64 %i.avz, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.avy, 14
  br i1 %min.iters.check, label %scalar.ph80.preheader, label %vector.ph81

vector.ph81:                                      ; preds = %bb.a
  %n.vec = and i64 %i.awa, -8                     ; 3 uses
  %i.awb = shl i64 %n.vec, 1                      ; 2 uses
  %i.awc = add i64 %.021.add.3, %i.awb            ; 3 uses
  %i.awd = getelementptr i8, ptr %.021.ptr.3, i64 %i.awb
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.avu, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.awe = getelementptr i8, ptr %0, i64 %.021.add.3
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph81
  %index83 = phi i64 [ 0, %vector.ph81 ], [ %index.next87, %vector.body82 ] ; 2 uses
  %i.awf = shl i64 %index83, 1                    ; 2 uses
  %next.gep84 = getelementptr i8, ptr %.021.ptr.3, i64 %i.awf ; 2 uses
  %i.awg = getelementptr i8, ptr %i.awe, i64 %i.awf ; 2 uses
  %wide.load85 = load <8 x i16>, ptr %next.gep84, align 2, !tbaa !38 ; 2 uses
  %wide.load86 = load <8 x i16>, ptr %i.awg, align 2, !tbaa !38 ; 2 uses
  %i.awh = zext <8 x i16> %wide.load85 to <8 x i32>
  %i.awi = zext <8 x i16> %wide.load86 to <8 x i32>
  %i.awj = add nuw nsw <8 x i32> %i.awh, splat (i32 3329)
  %i.awk = sub nsw <8 x i32> %i.awj, %i.awi
  %i.awl = mul <8 x i32> %i.awk, %broadcast.splat ; 2 uses
  %i.awm = zext <8 x i32> %i.awl to <8 x i64>
  %i.awn = mul nuw nsw <8 x i64> %i.awm, splat (i64 5039)
  %i.awo = lshr <8 x i64> %i.awn, splat (i64 24)
  %i.awp = trunc nuw nsw <8 x i64> %i.awo to <8 x i32>
  %i.awq = mul <8 x i32> %i.awp, splat (i32 62207)
  %i.awr = add <8 x i32> %i.awq, %i.awl
  %i.aws = trunc <8 x i32> %i.awr to <8 x i16>    ; 2 uses
  %i.awt = add <8 x i16> %i.aws, splat (i16 -3329) ; 2 uses
  %i.awu = icmp slt <8 x i16> %i.awt, zeroinitializer
  %i.awv = select <8 x i1> %i.awu, <8 x i16> %i.aws, <8 x i16> zeroinitializer
  %i.aww = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.awt, <8 x i16> zeroinitializer)
  %i.awx = or <8 x i16> %i.awv, %i.aww
  store <8 x i16> %i.awx, ptr %i.awg, align 2, !tbaa !38
  %i.awy = add <8 x i16> %wide.load86, %wide.load85 ; 2 uses
  %i.awz = add <8 x i16> %i.awy, splat (i16 -3329) ; 2 uses
  %i.axa = icmp slt <8 x i16> %i.awz, zeroinitializer
  %i.axb = select <8 x i1> %i.axa, <8 x i16> %i.awy, <8 x i16> zeroinitializer
  %i.axc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.awz, <8 x i16> zeroinitializer)
  %i.axd = or <8 x i16> %i.axb, %i.axc
  store <8 x i16> %i.axd, ptr %next.gep84, align 2, !tbaa !38
  %index.next87 = add nuw i64 %index83, 8         ; 2 uses
  %i.axe = icmp eq i64 %index.next87, %n.vec
  br i1 %i.axe, label %middle.block88, label %vector.body82, !llvm.loop !207

middle.block88:                                   ; preds = %vector.body82
  %ind.escape = add i64 %i.awc, -2
  %cmp.n = icmp eq i64 %i.awa, %n.vec
  br i1 %cmp.n, label %.loopexit156, label %scalar.ph80.preheader

scalar.ph80.preheader:                            ; preds = %bb.a, %middle.block88
  %.023.idx.3.ph = phi i64 [ %.021.add.3, %bb.a ], [ %i.awc, %middle.block88 ]
  %.122.3.ph = phi ptr [ %.021.ptr.3, %bb.a ], [ %i.awd, %middle.block88 ]
  br label %scalar.ph80

scalar.ph80:                                      ; preds = %scalar.ph80.preheader, %scalar.ph80
  %.023.idx.3 = phi i64 [ %.023.add.3, %scalar.ph80 ], [ %.023.idx.3.ph, %scalar.ph80.preheader ] ; 3 uses
  %.122.3 = phi ptr [ %i.ayb, %scalar.ph80 ], [ %.122.3.ph, %scalar.ph80.preheader ] ; 3 uses
  %.023.ptr.3 = getelementptr inbounds i8, ptr %0, i64 %.023.idx.3 ; 2 uses
  %i.axf = load i16, ptr %.122.3, align 2, !tbaa !38 ; 2 uses
  %i.axg = load i16, ptr %.023.ptr.3, align 2, !tbaa !38 ; 2 uses
  %i.axh = zext i16 %i.axf to i32
  %i.axi = zext i16 %i.axg to i32
  %i.axj = add nuw nsw i32 %i.axh, 3329
  %i.axk = sub nsw i32 %i.axj, %i.axi
  %i.axl = mul i32 %i.axk, %i.avu                 ; 2 uses
  %i.axm = zext i32 %i.axl to i64
  %i.axn = mul nuw nsw i64 %i.axm, 5039
  %i.axo = lshr i64 %i.axn, 24
  %i.axp = trunc nuw nsw i64 %i.axo to i32
  %.neg.i.3 = mul i32 %i.axp, 62207
  %i.axq = add i32 %.neg.i.3, %i.axl
  %i.axr = trunc i32 %i.axq to i16                ; 2 uses
  %i.axs = add i16 %i.axr, -3329                  ; 2 uses
  %isneg.i.i.3 = icmp slt i16 %i.axs, 0
  %i.axt = select i1 %isneg.i.i.3, i16 %i.axr, i16 0
  %i.axu = tail call i16 @llvm.smax.i16(i16 %i.axs, i16 0)
  %i.axv = or i16 %i.axt, %i.axu
  %.023.add.3 = add nsw i64 %.023.idx.3, 2        ; 2 uses
  store i16 %i.axv, ptr %.023.ptr.3, align 2, !tbaa !38
  %i.axw = add i16 %i.axg, %i.axf                 ; 2 uses
  %i.axx = add i16 %i.axw, -3329                  ; 2 uses
  %isneg.i.3 = icmp slt i16 %i.axx, 0
  %i.axy = select i1 %isneg.i.3, i16 %i.axw, i16 0
  %i.axz = tail call i16 @llvm.smax.i16(i16 %i.axx, i16 0)
  %i.aya = or i16 %i.axy, %i.axz
  %i.ayb = getelementptr inbounds nuw i8, ptr %.122.3, i64 2 ; 2 uses
  store i16 %i.aya, ptr %.122.3, align 2, !tbaa !38
  %i.ayc = icmp ult ptr %i.ayb, %.ptr26.3
  br i1 %i.ayc, label %scalar.ph80, label %.loopexit156, !llvm.loop !208

.loopexit156:                                     ; preds = %scalar.ph80, %middle.block88
  %.023.idx.3.lcssa = phi i64 [ %ind.escape, %middle.block88 ], [ %.023.idx.3, %scalar.ph80 ]
  %.023.add.3.lcssa = phi i64 [ %i.awc, %middle.block88 ], [ %.023.add.3, %scalar.ph80 ]
  %i.ayd = icmp slt i64 %.023.idx.3.lcssa, 510
  br i1 %i.ayd, label %bb.a, label %.preheader41, !llvm.loop !209

.preheader41:                                     ; preds = %.loopexit156
  %i.aye = xor i64 %i.a, -1
  %i.ayf = add i64 %i.a, 64
  %i.ayg = add i64 %i.a, 2
  br label %bb.b

bb.b:                                             ; preds = %.preheader41, %.loopexit155
  %.021.idx.4 = phi i64 [ %.023.add.4.lcssa, %.loopexit155 ], [ 0, %.preheader41 ] ; 5 uses
  %.1.4 = phi ptr [ %i.ayh, %.loopexit155 ], [ %i.avs, %.preheader41 ]
  %.021.ptr.4 = getelementptr inbounds i8, ptr %0, i64 %.021.idx.4 ; 3 uses
  %.021.add.4 = add nsw i64 %.021.idx.4, 64       ; 4 uses
  %.ptr26.4 = getelementptr inbounds i8, ptr %0, i64 %.021.add.4
  %i.ayh = getelementptr inbounds nuw i8, ptr %.1.4, i64 2 ; 3 uses
end_hunk_1
