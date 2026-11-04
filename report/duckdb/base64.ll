Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/base64?download=true
inline.NumInlined: 21
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@mbedtls_ct_zero = external global i64, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden range(i32 -42, 1) i32 @mbedtls_base64_encode(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = udiv i64 %4, 3                           ; 2 uses
  %i.c = urem i64 %4, 3
  %i.d = icmp ne i64 %i.c, 0
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %i.b, %i.e               ; 2 uses
  %i.g = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %2, align 8, !tbaa !8
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.f, 2                      ; 2 uses
  %i.i = icmp ule i64 %1, %i.h
  %i.j = icmp eq ptr %0, null
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = or disjoint i64 %i.h, 1
  store i64 %i.k, ptr %2, align 8, !tbaa !8
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.l = mul nuw i64 %i.b, 3
  %.not = icmp ult i64 %4, 3
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.060 = phi ptr [ %i.kx, %.lr.ph ], [ %0, %bb.g ] ; 5 uses
  %.05259 = phi i64 [ %i.ky, %.lr.ph ], [ 0, %bb.g ]
  %.05458 = phi ptr [ %i.q, %.lr.ph ], [ %3, %bb.g ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05458, i64 1
  %i.n = load i8, ptr %.05458, align 1, !tbaa !9  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05458, i64 2
  %i.p = load i8, ptr %i.m, align 1, !tbaa !9     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05458, i64 3 ; 2 uses
  %i.r = load i8, ptr %i.o, align 1, !tbaa !9     ; 2 uses
  %i.s = lshr i8 %i.n, 2                          ; 4 uses
  %i.t = add nuw i8 %i.s, 65
  %i.u = zext nneg i8 %i.s to i64                 ; 5 uses
  %i.v = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.w = xor i64 %i.v, %i.u
  %i.x = trunc i64 %i.w to i16
  %i.y = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.z = trunc i64 %i.y to i8
  %i.aa = xor i8 %i.t, %i.z
  %i.ab = and i16 %i.x, 254
  %i.ac = add nsw i16 %i.ab, -26
  %i.ad = lshr i16 %i.ac, 8
  %i.ae = trunc nuw i16 %i.ad to i8
  %i.af = and i8 %i.aa, %i.ae
  %i.ag = add nuw i8 %i.s, 71
  %i.ah = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ai = xor i64 %i.ah, %i.u
  %i.aj = trunc i64 %i.ai to i16
  %i.ak = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.al = trunc i64 %i.ak to i8
  %i.am = xor i8 %i.ag, %i.al
  %i.an = and i16 %i.aj, 255                      ; 2 uses
  %i.ao = sub nsw i16 25, %i.an
  %i.ap = add nsw i16 %i.an, -52
  %i.aq = and i16 %i.ao, %i.ap
  %i.ar = lshr i16 %i.aq, 8
  %i.as = trunc nuw i16 %i.ar to i8
  %i.at = and i8 %i.am, %i.as
  %i.au = or i8 %i.at, %i.af
  %i.av = add nsw i8 %i.s, -4
  %i.aw = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ax = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ay = trunc i64 %i.ax to i8
  %i.az = xor i8 %i.av, %i.ay
  %i.ba = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.bb = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = xor i8 %i.bc, 43
  %i.be = xor i64 %i.aw, %i.u
  %i.bf = trunc i64 %i.be to i16
  %i.bg = xor i64 %i.ba, %i.u
  %i.bh = trunc i64 %i.bg to i16
  %i.bi = insertelement <2 x i16> poison, i16 %i.bf, i64 0
  %i.bj = insertelement <2 x i16> %i.bi, i16 %i.bh, i64 1
  %i.bk = and <2 x i16> %i.bj, splat (i16 255)    ; 2 uses
  %i.bl = sub nsw <2 x i16> <i16 51, i16 61>, %i.bk
  %i.bm = add nsw <2 x i16> %i.bk, <i16 -62, i16 -63>
  %i.bn = and <2 x i16> %i.bl, %i.bm
  %i.bo = lshr <2 x i16> %i.bn, splat (i16 8)     ; 2 uses
  %i.bp = bitcast <2 x i16> %i.bo to <4 x i8>
  %i.bq = extractelement <4 x i8> %i.bp, i64 0
  %i.br = and i8 %i.az, %i.bq
  %i.bs = or i8 %i.au, %i.br
  %i.bt = bitcast <2 x i16> %i.bo to <4 x i8>
  %i.bu = extractelement <4 x i8> %i.bt, i64 2
  %i.bv = and i8 %i.bd, %i.bu
  %i.bw = or i8 %i.bs, %i.bv
  %i.bx = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.by = xor i64 %i.bx, %i.u
  %i.bz = trunc i64 %i.by to i16
  %i.ca = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.cb = trunc i64 %i.ca to i8
  %i.cc = xor i8 %i.cb, 47
  %i.cd = and i16 %i.bz, 255                      ; 2 uses
  %i.ce = sub nsw i16 62, %i.cd
  %i.cf = add nsw i16 %i.cd, -64
  %i.cg = and i16 %i.ce, %i.cf
  %i.ch = lshr i16 %i.cg, 8
  %i.ci = trunc nuw i16 %i.ch to i8
  %i.cj = and i8 %i.cc, %i.ci
  %i.ck = or i8 %i.bw, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.060, i64 1
  store i8 %i.ck, ptr %.060, align 1, !tbaa !9
  %i.cm = shl i8 %i.n, 4
  %i.cn = and i8 %i.cm, 48
  %i.co = lshr i8 %i.p, 4
  %i.cp = or disjoint i8 %i.co, %i.cn             ; 4 uses
  %i.cq = add nuw i8 %i.cp, 65
  %i.cr = zext nneg i8 %i.cp to i64               ; 5 uses
  %i.cs = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ct = xor i64 %i.cs, %i.cr
  %i.cu = trunc i64 %i.ct to i16
  %i.cv = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.cw = trunc i64 %i.cv to i8
  %i.cx = xor i8 %i.cq, %i.cw
  %i.cy = and i16 %i.cu, 254
  %i.cz = add nsw i16 %i.cy, -26
  %i.da = lshr i16 %i.cz, 8
  %i.db = trunc nuw i16 %i.da to i8
  %i.dc = and i8 %i.cx, %i.db
  %i.dd = add nuw i8 %i.cp, 71
  %i.de = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.df = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.dg = trunc i64 %i.df to i8
  %i.dh = xor i8 %i.dd, %i.dg
  %i.di = add nsw i8 %i.cp, -4
  %i.dj = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.dk = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.dl = trunc i64 %i.dk to i8
  %i.dm = xor i8 %i.di, %i.dl
  %i.dn = xor i64 %i.de, %i.cr
  %i.do = trunc i64 %i.dn to i16
  %i.dp = xor i64 %i.dj, %i.cr
  %i.dq = trunc i64 %i.dp to i16
  %i.dr = insertelement <2 x i16> poison, i16 %i.do, i64 0
  %i.ds = insertelement <2 x i16> %i.dr, i16 %i.dq, i64 1
  %i.dt = and <2 x i16> %i.ds, splat (i16 255)    ; 2 uses
  %i.du = sub nsw <2 x i16> <i16 25, i16 51>, %i.dt
  %i.dv = add nsw <2 x i16> %i.dt, <i16 -52, i16 -62>
  %i.dw = and <2 x i16> %i.du, %i.dv
  %i.dx = lshr <2 x i16> %i.dw, splat (i16 8)     ; 2 uses
  %i.dy = bitcast <2 x i16> %i.dx to <4 x i8>
  %i.dz = extractelement <4 x i8> %i.dy, i64 0
  %i.ea = and i8 %i.dh, %i.dz
  %i.eb = or i8 %i.ea, %i.dc
  %i.ec = bitcast <2 x i16> %i.dx to <4 x i8>
  %i.ed = extractelement <4 x i8> %i.ec, i64 2
  %i.ee = and i8 %i.dm, %i.ed
  %i.ef = or i8 %i.eb, %i.ee
  %i.eg = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.eh = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ei = trunc i64 %i.eh to i8
  %i.ej = xor i8 %i.ei, 43
  %i.ek = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.el = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.em = trunc i64 %i.el to i8
  %i.en = xor i8 %i.em, 47
  %i.eo = xor i64 %i.eg, %i.cr
  %i.ep = trunc i64 %i.eo to i16
  %i.eq = xor i64 %i.ek, %i.cr
  %i.er = trunc i64 %i.eq to i16
  %i.es = insertelement <2 x i16> poison, i16 %i.ep, i64 0
  %i.et = insertelement <2 x i16> %i.es, i16 %i.er, i64 1
  %i.eu = and <2 x i16> %i.et, splat (i16 255)    ; 2 uses
  %i.ev = sub nsw <2 x i16> <i16 61, i16 62>, %i.eu
  %i.ew = add nsw <2 x i16> %i.eu, <i16 -63, i16 -64>
  %i.ex = and <2 x i16> %i.ev, %i.ew
  %i.ey = lshr <2 x i16> %i.ex, splat (i16 8)     ; 2 uses
  %i.ez = bitcast <2 x i16> %i.ey to <4 x i8>
  %i.fa = extractelement <4 x i8> %i.ez, i64 0
  %i.fb = and i8 %i.ej, %i.fa
  %i.fc = or i8 %i.ef, %i.fb
  %i.fd = bitcast <2 x i16> %i.ey to <4 x i8>
  %i.fe = extractelement <4 x i8> %i.fd, i64 2
  %i.ff = and i8 %i.en, %i.fe
  %i.fg = or i8 %i.fc, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %.060, i64 2
  store i8 %i.fg, ptr %i.cl, align 1, !tbaa !9
  %i.fi = shl i8 %i.p, 2
  %i.fj = and i8 %i.fi, 60
  %i.fk = lshr i8 %i.r, 6
  %i.fl = or disjoint i8 %i.fk, %i.fj             ; 4 uses
end_hunk_0
begin_hunk_1_@mbedtls_base64_encode:bb.a
  %i.nh = and i8 %i.mp, %i.ng
  %i.ni = or i8 %i.mk, %i.nh
  %i.nj = bitcast <2 x i16> %i.ne to <4 x i8>
  %i.nk = extractelement <4 x i8> %i.nj, i64 2
  %i.nl = and i8 %i.mt, %i.nk
  %i.nm = or i8 %i.ni, %i.nl
  %i.nn = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.no = xor i64 %i.nn, %i.lk
  %i.np = trunc i64 %i.no to i16
  %i.nq = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.nr = trunc i64 %i.nq to i8
  %i.ns = xor i8 %i.nr, 47
  %i.nt = and i16 %i.np, 255                      ; 2 uses
  %i.nu = sub nsw i16 62, %i.nt
  %i.nv = add nsw i16 %i.nt, -64
  %i.nw = and i16 %i.nu, %i.nv
  %i.nx = lshr i16 %i.nw, 8
  %i.ny = trunc nuw i16 %i.nx to i8
  %i.nz = and i8 %i.ns, %i.ny
  %i.oa = or i8 %i.nm, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  store i8 %i.oa, ptr %.0.lcssa, align 1, !tbaa !9
  %i.oc = shl i8 %i.lb, 4
  %i.od = and i8 %i.oc, 48
  %i.oe = lshr i32 %i.lh, 4
  %i.of = trunc nuw nsw i32 %i.oe to i8
  %i.og = or disjoint i8 %i.od, %i.of             ; 4 uses
  %i.oh = add nuw i8 %i.og, 65
  %i.oi = zext nneg i8 %i.og to i64               ; 5 uses
  %i.oj = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ok = xor i64 %i.oj, %i.oi
  %i.ol = trunc i64 %i.ok to i16
  %i.om = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.on = trunc i64 %i.om to i8
  %i.oo = xor i8 %i.oh, %i.on
  %i.op = and i16 %i.ol, 254
  %i.oq = add nsw i16 %i.op, -26
  %i.or = lshr i16 %i.oq, 8
  %i.os = trunc nuw i16 %i.or to i8
  %i.ot = and i8 %i.oo, %i.os
  %i.ou = add nuw i8 %i.og, 71
  %i.ov = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ow = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ox = trunc i64 %i.ow to i8
  %i.oy = xor i8 %i.ou, %i.ox
  %i.oz = add nsw i8 %i.og, -4
  %i.pa = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.pb = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.pc = trunc i64 %i.pb to i8
  %i.pd = xor i8 %i.oz, %i.pc
  %i.pe = xor i64 %i.ov, %i.oi
  %i.pf = trunc i64 %i.pe to i16
  %i.pg = xor i64 %i.pa, %i.oi
  %i.ph = trunc i64 %i.pg to i16
  %i.pi = insertelement <2 x i16> poison, i16 %i.pf, i64 0
  %i.pj = insertelement <2 x i16> %i.pi, i16 %i.ph, i64 1
  %i.pk = and <2 x i16> %i.pj, splat (i16 255)    ; 2 uses
  %i.pl = sub nsw <2 x i16> <i16 25, i16 51>, %i.pk
  %i.pm = add nsw <2 x i16> %i.pk, <i16 -52, i16 -62>
  %i.pn = and <2 x i16> %i.pl, %i.pm
  %i.po = lshr <2 x i16> %i.pn, splat (i16 8)     ; 2 uses
  %i.pp = bitcast <2 x i16> %i.po to <4 x i8>
  %i.pq = extractelement <4 x i8> %i.pp, i64 0
  %i.pr = and i8 %i.oy, %i.pq
  %i.ps = or i8 %i.pr, %i.ot
  %i.pt = bitcast <2 x i16> %i.po to <4 x i8>
  %i.pu = extractelement <4 x i8> %i.pt, i64 2
  %i.pv = and i8 %i.pd, %i.pu
  %i.pw = or i8 %i.ps, %i.pv
  %i.px = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.py = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.pz = trunc i64 %i.py to i8
  %i.qa = xor i8 %i.pz, 43
  %i.qb = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.qc = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.qd = trunc i64 %i.qc to i8
  %i.qe = xor i8 %i.qd, 47
  %i.qf = xor i64 %i.px, %i.oi
  %i.qg = trunc i64 %i.qf to i16
  %i.qh = xor i64 %i.qb, %i.oi
  %i.qi = trunc i64 %i.qh to i16
  %i.qj = insertelement <2 x i16> poison, i16 %i.qg, i64 0
  %i.qk = insertelement <2 x i16> %i.qj, i16 %i.qi, i64 1
  %i.ql = and <2 x i16> %i.qk, splat (i16 255)    ; 2 uses
  %i.qm = sub nsw <2 x i16> <i16 61, i16 62>, %i.ql
  %i.qn = add nsw <2 x i16> %i.ql, <i16 -63, i16 -64>
  %i.qo = and <2 x i16> %i.qm, %i.qn
  %i.qp = lshr <2 x i16> %i.qo, splat (i16 8)     ; 2 uses
  %i.qq = bitcast <2 x i16> %i.qp to <4 x i8>
  %i.qr = extractelement <4 x i8> %i.qq, i64 0
  %i.qs = and i8 %i.qa, %i.qr
  %i.qt = or i8 %i.pw, %i.qs
  %i.qu = bitcast <2 x i16> %i.qp to <4 x i8>
  %i.qv = extractelement <4 x i8> %i.qu, i64 2
  %i.qw = and i8 %i.qe, %i.qv
  %i.qx = or i8 %i.qt, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  store i8 %i.qx, ptr %i.ob, align 1, !tbaa !9
  br i1 %i.ld, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.tr = trunc nuw i32 %i.lh to i8
  %i.qz = shl i8 %.tr, 2
  %i.ra = and i8 %i.qz, 60                        ; 4 uses
  %i.rb = or disjoint i8 %i.ra, 65
  %i.rc = zext nneg i8 %i.ra to i64               ; 5 uses
  %i.rd = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.re = xor i64 %i.rd, %i.rc
  %i.rf = trunc i64 %i.re to i16
  %i.rg = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.rh = trunc i64 %i.rg to i8
  %i.ri = xor i8 %i.rb, %i.rh
  %i.rj = and i16 %i.rf, 254
  %i.rk = add nsw i16 %i.rj, -26
  %i.rl = lshr i16 %i.rk, 8
  %i.rm = trunc nuw i16 %i.rl to i8
  %i.rn = and i8 %i.ri, %i.rm
  %i.ro = add nuw i8 %i.ra, 71
  %i.rp = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.rq = xor i64 %i.rp, %i.rc
  %i.rr = trunc i64 %i.rq to i16
  %i.rs = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.rt = trunc i64 %i.rs to i8
  %i.ru = xor i8 %i.ro, %i.rt
  %i.rv = and i16 %i.rr, 255                      ; 2 uses
  %i.rw = sub nsw i16 25, %i.rv
  %i.rx = add nsw i16 %i.rv, -52
  %i.ry = and i16 %i.rw, %i.rx
  %i.rz = lshr i16 %i.ry, 8
  %i.sa = trunc nuw i16 %i.rz to i8
  %i.sb = and i8 %i.ru, %i.sa
  %i.sc = or i8 %i.sb, %i.rn
  %i.sd = add nsw i8 %i.ra, -4
  %i.se = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.sf = xor i64 %i.se, %i.rc
  %i.sg = trunc i64 %i.sf to i16
  %i.sh = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.si = trunc i64 %i.sh to i8
  %i.sj = xor i8 %i.sd, %i.si
  %i.sk = and i16 %i.sg, 255                      ; 2 uses
  %i.sl = sub nsw i16 51, %i.sk
  %i.sm = add nsw i16 %i.sk, -62
  %i.sn = and i16 %i.sl, %i.sm
  %i.so = lshr i16 %i.sn, 8
  %i.sp = trunc nuw i16 %i.so to i8
  %i.sq = and i8 %i.sj, %i.sp
  %i.sr = or i8 %i.sc, %i.sq
  %i.ss = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.st = xor i64 %i.ss, %i.rc
  %i.su = trunc i64 %i.st to i16
  %i.sv = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.sw = trunc i64 %i.sv to i8
  %i.sx = xor i8 %i.sw, 43
  %i.sy = and i16 %i.su, 255                      ; 2 uses
  %i.sz = sub nsw i16 61, %i.sy
  %i.ta = add nsw i16 %i.sy, -63
  %i.tb = and i16 %i.sz, %i.ta
  %i.tc = lshr i16 %i.tb, 8
  %i.td = trunc nuw i16 %i.tc to i8
  %i.te = and i8 %i.sx, %i.td
  %i.tf = or i8 %i.sr, %i.te
  %i.tg = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.th = xor i64 %i.tg, %i.rc
  %i.ti = trunc i64 %i.th to i16
  %i.tj = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.tk = trunc i64 %i.tj to i8
  %i.tl = xor i8 %i.tk, 47
  %i.tm = and i16 %i.ti, 255                      ; 2 uses
  %i.tn = sub nsw i16 62, %i.tm
  %i.to = add nsw i16 %i.tm, -64
  %i.tp = and i16 %i.tn, %i.to
  %i.tq = lshr i16 %i.tp, 8
  %i.tr = trunc nuw i16 %i.tq to i8
  %i.ts = and i8 %i.tl, %i.tr
  %i.tt = or i8 %i.tf, %i.ts
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %storemerge = phi i8 [ %i.tt, %bb.k ], [ 61, %bb.j ]
  %.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  store i8 %storemerge, ptr %i.qy, align 1, !tbaa !9
  %i.tu = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4
  store i8 61, ptr %.1, align 1, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.2 = phi ptr [ %i.tu, %bb.l ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.tv = ptrtoint ptr %.2 to i64
  %i.tw = ptrtoint ptr %0 to i64
  %i.tx = sub i64 %i.tv, %i.tw
  store i64 %i.tx, ptr %2, align 8, !tbaa !8
  store i8 0, ptr %.2, align 1, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f, %bb.d, %bb.b
  %.053 = phi i32 [ 0, %bb.b ], [ -42, %bb.d ], [ -42, %bb.f ], [ 0, %bb.m ]
  ret i32 %.053
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden range(i32 -110, 1) i32 @mbedtls_base64_decode(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.critedge._crit_edge, label %.preheader95

.preheader95:                                     ; preds = %bb.a, %bb.k
  %.069102 = phi i32 [ %.271, %bb.k ], [ 0, %bb.a ] ; 6 uses
  %.076101 = phi i64 [ %.177, %bb.k ], [ 0, %bb.a ] ; 4 uses
  %.078100 = phi i64 [ %i.cd, %bb.k ], [ 0, %bb.a ] ; 3 uses
  %i.a = add nuw i64 %.078100, 1                  ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 %i.a) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %.078100
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9
  %i.d = icmp eq i8 %i.c, 32                      ; 3 uses
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.preheader95
  %exitcond.peel.not.not = icmp ult i64 %i.a, %4
  br i1 %exitcond.peel.not.not, label %.peel.next, label %.critedge

.peel.next:                                       ; preds = %bb.b, %bb.c
  %.17998 = phi i64 [ %i.h, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.17998
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = icmp eq i8 %i.f, 32
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.peel.next
  %i.h = add i64 %.17998, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %umax
  br i1 %exitcond.not, label %.critedge, label %.peel.next, !llvm.loop !12

.critedge:                                        ; preds = %bb.c, %.peel.next, %bb.b, %.preheader95
  %.179.lcssa = phi i64 [ %.078100, %.preheader95 ], [ %i.a, %bb.b ], [ %umax, %bb.c ], [ %.17998, %.peel.next ] ; 4 uses
  %i.i = icmp eq i64 %.179.lcssa, %4
  br i1 %i.i, label %.critedge._crit_edge.loopexit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.j = sub nuw i64 %4, %.179.lcssa
  %i.k = icmp ugt i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %.179.lcssa ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9     ; 5 uses
  %i.n = icmp eq i8 %i.m, 13
  %or.cond138 = select i1 %i.k, i1 %i.n, i1 false
  br i1 %or.cond138, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.l, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.k, label %.thread132

._crit_edge:                                      ; preds = %bb.d
  %i.r = icmp eq i8 %i.m, 10
  br i1 %i.r, label %bb.k, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.s = icmp slt i8 %i.m, 0
  %or.cond93 = or i1 %i.d, %i.s
  br i1 %or.cond93, label %.loopexit, label %bb.g

.thread132:                                       ; preds = %bb.e
  br i1 %i.d, label %.loopexit, label %.thread134

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq i8 %i.m, 61
  br i1 %i.t, label %bb.h, label %.thread134

bb.h:                                             ; preds = %bb.g
  %i.u = add nuw nsw i32 %.069102, 1
  %i.v = icmp ugt i32 %.069102, 1
  br i1 %i.v, label %.loopexit, label %bb.j

.thread134:                                       ; preds = %.thread132, %bb.g
  %i.w = phi i8 [ %i.m, %bb.g ], [ 13, %.thread132 ] ; 3 uses
  %.not88 = icmp eq i32 %.069102, 0
  br i1 %.not88, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.thread134
  %i.x = insertelement <4 x i8> poison, i8 %i.w, i64 0
  %i.y = shufflevector <4 x i8> %i.x, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.z = add <4 x i8> %i.y, <i8 -70, i8 -64, i8 5, i8 20>
  %i.aa = zext nneg i8 %i.w to i64                ; 5 uses
  %i.ab = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ac = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ad = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ae = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.af = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ag = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ah = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ai = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.aj = xor i64 %i.ab, %i.aa
  %i.ak = trunc i64 %i.aj to i16
  %i.al = trunc i64 %i.ac to i8
  %i.am = xor i64 %i.ad, %i.aa
  %i.an = trunc i64 %i.am to i16
  %i.ao = trunc i64 %i.ae to i8
  %i.ap = xor i64 %i.af, %i.aa
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = trunc i64 %i.ag to i8
  %i.as = xor i64 %i.ah, %i.aa
  %i.at = trunc i64 %i.as to i16
  %i.au = trunc i64 %i.ai to i8
  %i.av = insertelement <4 x i8> poison, i8 %i.ao, i64 0
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.al, i64 1
  %i.ax = insertelement <4 x i8> %i.aw, i8 %i.ar, i64 2
  %i.ay = insertelement <4 x i8> %i.ax, i8 %i.au, i64 3
  %i.az = xor <4 x i8> %i.z, %i.ay
  %i.ba = insertelement <4 x i16> poison, i16 %i.an, i64 0
  %i.bb = insertelement <4 x i16> %i.ba, i16 %i.ak, i64 1
  %i.bc = insertelement <4 x i16> %i.bb, i16 %i.aq, i64 2
  %i.bd = insertelement <4 x i16> %i.bc, i16 %i.at, i64 3
  %i.be = and <4 x i16> %i.bd, splat (i16 255)    ; 2 uses
  %i.bf = sub nsw <4 x i16> <i16 96, i16 64, i16 47, i16 42>, %i.be
  %i.bg = add nsw <4 x i16> %i.be, <i16 -123, i16 -91, i16 -58, i16 -44>
  %i.bh = and <4 x i16> %i.bf, %i.bg
  %i.bi = lshr <4 x i16> %i.bh, splat (i16 8)
  %i.bj = trunc nuw <4 x i16> %i.bi to <4 x i8>
  %i.bk = and <4 x i8> %i.az, %i.bj
  %i.bl = add nuw i8 %i.w, 17
  %i.bm = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.bn = xor i64 %i.bm, %i.aa
  %i.bo = trunc i64 %i.bn to i16
  %i.bp = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.bq = trunc i64 %i.bp to i8
  %i.br = xor i8 %i.bl, %i.bq
  %i.bs = and i16 %i.bo, 255                      ; 2 uses
  %i.bt = sub nsw i16 46, %i.bs
  %i.bu = add nsw i16 %i.bs, -48
  %i.bv = and i16 %i.bt, %i.bu
  %i.bw = lshr i16 %i.bv, 8
  %i.bx = trunc nuw i16 %i.bw to i8
  %i.by = and i8 %i.br, %i.bx
  %i.bz = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.bk)
  %op.rdx139 = or i8 %i.bz, %i.by
  %i.ca = add i8 %op.rdx139, -1
  %i.cb = icmp slt i8 %i.ca, 0
  br i1 %i.cb, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.170 = phi i32 [ %i.u, %bb.h ], [ 0, %bb.i ]
  %i.cc = add i64 %.076101, 1
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.e, %bb.j
  %.177 = phi i64 [ %.076101, %bb.e ], [ %.076101, %._crit_edge ], [ %i.cc, %bb.j ] ; 2 uses
  %.271 = phi i32 [ %.069102, %bb.e ], [ %.069102, %._crit_edge ], [ %.170, %bb.j ] ; 2 uses
  %i.cd = add nuw i64 %.179.lcssa, 1              ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %4
  br i1 %i.ce, label %.preheader95, label %.critedge._crit_edge.loopexit, !llvm.loop !13

.critedge._crit_edge.loopexit:                    ; preds = %.critedge, %bb.k
  %.076.lcssa.ph = phi i64 [ %.177, %bb.k ], [ %.076101, %.critedge ]
  %.069.lcssa.ph = phi i32 [ %.271, %bb.k ], [ %.069102, %.critedge ]
  %.280.ph = phi i64 [ %i.cd, %bb.k ], [ %4, %.critedge ]
  %i.cf = zext nneg i32 %.069.lcssa.ph to i64
  br label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge._crit_edge.loopexit, %bb.a
  %.076.lcssa = phi i64 [ 0, %bb.a ], [ %.076.lcssa.ph, %.critedge._crit_edge.loopexit ] ; 3 uses
  %.069.lcssa = phi i64 [ 0, %bb.a ], [ %i.cf, %.critedge._crit_edge.loopexit ] ; 3 uses
  %.280 = phi i64 [ 0, %bb.a ], [ %.280.ph, %.critedge._crit_edge.loopexit ] ; 2 uses
  %i.cg = sub i64 %.076.lcssa, %.069.lcssa
  %i.ch = and i64 %i.cg, 3
  %i.ci = icmp ne i64 %i.ch, 1
  %i.cj = and i64 %.076.lcssa, 3
  %.not89 = icmp eq i64 %i.cj, 0
  %or.cond94 = and i1 %i.ci, %.not89
  br i1 %or.cond94, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.critedge._crit_edge
  %i.ck = lshr exact i64 %.076.lcssa, 2
  %i.cl = mul nuw i64 %i.ck, 3                    ; 2 uses
  %i.cm = sub i64 %i.cl, %.069.lcssa              ; 2 uses
  store i64 %i.cm, ptr %2, align 8, !tbaa !8
  %i.cn = icmp ne i64 %i.cl, %.069.lcssa
  %i.co = icmp eq ptr %0, null
  %or.cond = and i1 %i.co, %i.cn
  %i.cp = icmp ult i64 %1, %i.cm
  %or.cond92 = or i1 %or.cond, %i.cp
  br i1 %or.cond92, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.l
  %.not90108 = icmp eq i64 %.280, 0
  br i1 %.not90108, label %._crit_edge114.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.o
  %.0113 = phi ptr [ %.1, %bb.o ], [ %0, %.preheader ] ; 9 uses
  %.072112 = phi i32 [ %.173, %bb.o ], [ 0, %.preheader ] ; 5 uses
  %.074111 = phi i32 [ %.175, %bb.o ], [ 0, %.preheader ] ; 5 uses
  %.3110 = phi i64 [ %i.fi, %bb.o ], [ %.280, %.preheader ]
  %.082109 = phi ptr [ %i.fj, %bb.o ], [ %3, %.preheader ] ; 2 uses
  %i.cq = load i8, ptr %.082109, align 1, !tbaa !9 ; 4 uses
  switch i8 %i.cq, label %bb.m [
    i8 13, label %bb.o
    i8 10, label %bb.o
    i8 32, label %bb.o
    i8 61, label %._crit_edge114
  ]

bb.m:                                             ; preds = %.lr.ph
  %i.cr = shl i32 %.074111, 6
  %i.cs = insertelement <4 x i8> poison, i8 %i.cq, i64 0
  %i.ct = shufflevector <4 x i8> %i.cs, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.cu = add <4 x i8> %i.ct, <i8 -70, i8 -64, i8 5, i8 20>
  %i.cv = zext i8 %i.cq to i64                    ; 5 uses
  %i.cw = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.cx = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.cy = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.cz = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.da = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.db = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.dc = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.dd = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.de = xor i64 %i.cw, %i.cv
  %i.df = trunc i64 %i.de to i16
  %i.dg = trunc i64 %i.cx to i8
  %i.dh = xor i64 %i.cy, %i.cv
  %i.di = trunc i64 %i.dh to i16
  %i.dj = trunc i64 %i.cz to i8
  %i.dk = xor i64 %i.da, %i.cv
  %i.dl = trunc i64 %i.dk to i16
  %i.dm = trunc i64 %i.db to i8
  %i.dn = xor i64 %i.dc, %i.cv
  %i.do = trunc i64 %i.dn to i16
  %i.dp = trunc i64 %i.dd to i8
  %i.dq = insertelement <4 x i8> poison, i8 %i.dj, i64 0
  %i.dr = insertelement <4 x i8> %i.dq, i8 %i.dg, i64 1
  %i.ds = insertelement <4 x i8> %i.dr, i8 %i.dm, i64 2
  %i.dt = insertelement <4 x i8> %i.ds, i8 %i.dp, i64 3
  %i.du = xor <4 x i8> %i.cu, %i.dt
  %i.dv = insertelement <4 x i16> poison, i16 %i.di, i64 0
  %i.dw = insertelement <4 x i16> %i.dv, i16 %i.df, i64 1
  %i.dx = insertelement <4 x i16> %i.dw, i16 %i.dl, i64 2
  %i.dy = insertelement <4 x i16> %i.dx, i16 %i.do, i64 3
  %i.dz = and <4 x i16> %i.dy, splat (i16 255)    ; 2 uses
  %i.ea = sub nsw <4 x i16> <i16 96, i16 64, i16 47, i16 42>, %i.dz
  %i.eb = add nsw <4 x i16> %i.dz, <i16 -123, i16 -91, i16 -58, i16 -44>
  %i.ec = and <4 x i16> %i.ea, %i.eb
  %i.ed = lshr <4 x i16> %i.ec, splat (i16 8)
  %i.ee = trunc nuw <4 x i16> %i.ed to <4 x i8>
  %i.ef = and <4 x i8> %i.du, %i.ee
  %i.eg = add i8 %i.cq, 17
  %i.eh = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.ei = xor i64 %i.eh, %i.cv
  %i.ej = trunc i64 %i.ei to i16
  %i.ek = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !8
  %i.el = trunc i64 %i.ek to i8
  %i.em = xor i8 %i.eg, %i.el
  %i.en = and i16 %i.ej, 255                      ; 2 uses
  %i.eo = sub nsw i16 46, %i.en
  %i.ep = add nsw i16 %i.en, -48
  %i.eq = and i16 %i.eo, %i.ep
  %i.er = lshr i16 %i.eq, 8
  %i.es = trunc nuw i16 %i.er to i8
  %i.et = and i8 %i.em, %i.es
  %i.eu = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.ef)
  %op.rdx = or i8 %i.eu, %i.et
  %i.ev = add i8 %op.rdx, -1
  %i.ew = sext i8 %i.ev to i32
  %i.ex = or i32 %i.cr, %i.ew                     ; 5 uses
  %i.ey = add i32 %.072112, 1                     ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 4
  br i1 %i.ez, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fa = lshr i32 %i.ex, 16
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %.0113, i64 1
  store i8 %i.fb, ptr %.0113, align 1, !tbaa !9
  %i.fd = lshr i32 %i.ex, 8
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %.0113, i64 2
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !9
  %i.fg = trunc i32 %i.ex to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.0113, i64 3
  store i8 %i.fg, ptr %i.ff, align 1, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.m, %bb.n
  %.175 = phi i32 [ %.074111, %.lr.ph ], [ %.074111, %.lr.ph ], [ %.074111, %.lr.ph ], [ %i.ex, %bb.n ], [ %i.ex, %bb.m ] ; 2 uses
  %.173 = phi i32 [ %.072112, %.lr.ph ], [ %.072112, %.lr.ph ], [ %.072112, %.lr.ph ], [ 0, %bb.n ], [ %i.ey, %bb.m ] ; 2 uses
  %.1 = phi ptr [ %.0113, %.lr.ph ], [ %.0113, %.lr.ph ], [ %.0113, %.lr.ph ], [ %i.fh, %bb.n ], [ %.0113, %bb.m ] ; 2 uses
  %i.fi = add i64 %.3110, -1                      ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.082109, i64 1
  %.not90 = icmp eq i64 %i.fi, 0
  br i1 %.not90, label %._crit_edge114, label %.lr.ph, !llvm.loop !14

._crit_edge114:                                   ; preds = %bb.o, %.lr.ph
  %.074.lcssa = phi i32 [ %.074111, %.lr.ph ], [ %.175, %bb.o ] ; 2 uses
  %.072.lcssa = phi i32 [ %.072112, %.lr.ph ], [ %.173, %bb.o ]
  %.0.lcssa = phi ptr [ %.0113, %.lr.ph ], [ %.1, %bb.o ] ; 6 uses
  switch i32 %.072.lcssa, label %._crit_edge114.thread [
    i32 3, label %bb.p
    i32 2, label %bb.q
  ]

bb.p:                                             ; preds = %._crit_edge114
  %i.fk = shl i32 %.074.lcssa, 6                  ; 2 uses
  %i.fl = lshr i32 %i.fk, 16
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  store i8 %i.fm, ptr %.0.lcssa, align 1, !tbaa !9
  %i.fo = lshr i32 %i.fk, 8
  %i.fp = trunc i32 %i.fo to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  store i8 %i.fp, ptr %i.fn, align 1, !tbaa !9
  br label %._crit_edge114.thread

bb.q:                                             ; preds = %._crit_edge114
  %i.fr = lshr i32 %.074.lcssa, 4
  %i.fs = trunc i32 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  store i8 %i.fs, ptr %.0.lcssa, align 1, !tbaa !9
  br label %._crit_edge114.thread

._crit_edge114.thread:                            ; preds = %.preheader, %._crit_edge114, %bb.q, %bb.p
  %.2 = phi ptr [ %i.fq, %bb.p ], [ %i.ft, %bb.q ], [ %.0.lcssa, %._crit_edge114 ], [ %0, %.preheader ]
  %i.fu = load i64, ptr %2, align 8, !tbaa !8
  %i.fv = ptrtoint ptr %.2 to i64
  %i.fw = ptrtoint ptr %0 to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %.not91 = icmp eq i64 %i.fu, %i.fx
  %. = select i1 %.not91, i32 0, i32 -110
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.thread134, %bb.h, %bb.f, %.thread132, %._crit_edge114.thread, %bb.l, %.critedge._crit_edge
  %.081 = phi i32 [ %., %._crit_edge114.thread ], [ -44, %.critedge._crit_edge ], [ -42, %bb.l ], [ -44, %.thread132 ], [ -44, %bb.f ], [ -44, %bb.h ], [ -44, %.thread134 ], [ -44, %bb.i ]
  ret i32 %.081
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"long", !4, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10, !15}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
