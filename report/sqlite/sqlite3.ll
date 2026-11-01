Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10220
inline.NumDeleted: 1303
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 375
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@unistrFunc:bb.a
  %i.he = shl i8 %i.hd, 4
  %i.hf = and i8 %i.fz, 64
  %.not.i.i102.3 = icmp eq i8 %i.hf, 0
  %i.hg = select i1 %.not.i.i102.3, i8 0, i8 9
  %i.hh = add i8 %i.hg, %i.fz
  %i.hi = and i8 %i.hh, 15
  %i.hj = or disjoint i8 %i.he, %i.hi
  %i.hk = zext i8 %i.hj to i32
  %i.hl = or disjoint i32 %i.ha, %i.hk            ; 3 uses
  %i.hm = and i8 %i.gf, 64
  %.not.i.i102.4 = icmp eq i8 %i.hm, 0
  %i.hn = select i1 %.not.i.i102.4, i8 0, i8 9
  %i.ho = add i8 %i.hn, %i.gf
  %i.hp = shl nuw nsw i32 %i.hl, 8
  %i.hq = shl i8 %i.ho, 4
  %i.hr = zext i8 %i.hq to i32
  %i.hs = or disjoint i32 %i.hp, %i.hr            ; 5 uses
  %i.ht = and i8 %i.gl, 64
  %.not.i.i102.5 = icmp eq i8 %i.ht, 0
  %i.hu = select i1 %.not.i.i102.5, i8 0, i8 9
  %i.hv = add i8 %i.hu, %i.gl
  %i.hw = and i8 %i.hv, 15
  %i.hx = zext nneg i8 %i.hw to i32
  %i.hy = or disjoint i32 %i.hs, %i.hx            ; 4 uses
  %i.hz = add nuw nsw i32 %.179, 8                ; 4 uses
  %i.ia = zext nneg i32 %.1 to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ia ; 7 uses
  %i.ic = icmp samesign ult i32 %i.hs, 128
  br i1 %i.ic, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %isNHex.exit106
  %i.id = trunc nuw nsw i32 %i.hy to i8
  store i8 %i.id, ptr %i.ib, align 1, !tbaa !731
  br label %sqlite3AppendOneUtf8Character.exit

bb.al:                                            ; preds = %isNHex.exit106
  %i.ie = icmp samesign ult i32 %i.hl, 8
  br i1 %i.ie, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.if = lshr i32 %i.hs, 6
  %i.ig = trunc nuw nsw i32 %i.if to i8
  %i.ih = or disjoint i8 %i.ig, -64
  store i8 %i.ih, ptr %i.ib, align 1, !tbaa !731
  %i.ii = trunc i32 %i.hy to i8
  %i.ij = and i8 %i.ii, 63
  %i.ik = or disjoint i8 %i.ij, -128
  %i.il = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !731
  br label %sqlite3AppendOneUtf8Character.exit

bb.an:                                            ; preds = %bb.al
  %i.im = icmp eq i8 %i.gy, 0
  br i1 %i.im, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.in = and i8 %i.hd, 15
  %i.io = or disjoint i8 %i.in, -32
  store i8 %i.io, ptr %i.ib, align 1, !tbaa !731
  %i.ip = lshr i32 %i.hs, 6
  %i.iq = trunc i32 %i.ip to i8
  %i.ir = and i8 %i.iq, 63
  %i.is = or disjoint i8 %i.ir, -128
  %i.it = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  store i8 %i.is, ptr %i.it, align 1, !tbaa !731
  %i.iu = trunc i32 %i.hy to i8
  %i.iv = and i8 %i.iu, 63
  %i.iw = or disjoint i8 %i.iv, -128
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !731
  br label %sqlite3AppendOneUtf8Character.exit

bb.ap:                                            ; preds = %bb.an
  %i.iy = lshr i8 %i.gy, 2
  %i.iz = lshr i32 %i.hl, 4
  %i.ja = trunc i32 %i.iz to i8
  %i.jb = lshr i32 %i.hs, 6
  %i.jc = trunc i32 %i.jb to i8
  %i.jd = trunc i32 %i.hy to i8
  %i.je = insertelement <4 x i8> poison, i8 %i.iy, i64 0
  %i.jf = insertelement <4 x i8> %i.je, i8 %i.ja, i64 1
  %i.jg = insertelement <4 x i8> %i.jf, i8 %i.jc, i64 2
  %i.jh = insertelement <4 x i8> %i.jg, i8 %i.jd, i64 3
  %i.ji = and <4 x i8> %i.jh, <i8 7, i8 63, i8 63, i8 63>
  %i.jj = or disjoint <4 x i8> %i.ji, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.jj, ptr %i.ib, align 1, !tbaa !731
  br label %sqlite3AppendOneUtf8Character.exit

bb.aq:                                            ; preds = %bb.ad
  %i.jk = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !731 ; 3 uses
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !731
  %i.jp = and i8 %i.jo, 8
  %.not.i111 = icmp eq i8 %i.jp, 0
  br i1 %.not.i111, label %isNHex.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jq = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !731 ; 3 uses
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !731
  %i.jv = and i8 %i.ju, 8
  %.not.i111.1 = icmp eq i8 %i.jv, 0
  br i1 %.not.i111.1, label %isNHex.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jw = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !731 ; 3 uses
  %i.jy = zext i8 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !731
  %i.kb = and i8 %i.ka, 8
  %.not.i111.2 = icmp eq i8 %i.kb, 0
  br i1 %.not.i111.2, label %isNHex.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kc = getelementptr inbounds nuw i8, ptr %i.cj, i64 5
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !731 ; 3 uses
  %i.ke = zext i8 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !731
  %i.kh = and i8 %i.kg, 8
  %.not.i111.3 = icmp eq i8 %i.kh, 0
  br i1 %.not.i111.3, label %isNHex.exit.thread, label %isNHex.exit116

isNHex.exit116:                                   ; preds = %bb.at
  %i.ki = and i8 %i.jl, 64
  %.not.i.i112 = icmp eq i8 %i.ki, 0
  %i.kj = select i1 %.not.i.i112, i8 0, i8 9
  %i.kk = add i8 %i.kj, %i.jl                     ; 2 uses
  %i.kl = shl i8 %i.kk, 4
  %i.km = and i8 %i.jr, 64
  %.not.i.i112.1 = icmp eq i8 %i.km, 0
  %i.kn = select i1 %.not.i.i112.1, i8 0, i8 9
  %i.ko = add i8 %i.kn, %i.jr
  %i.kp = and i8 %i.ko, 15
  %i.kq = or disjoint i8 %i.kl, %i.kp             ; 2 uses
  %i.kr = zext i8 %i.kq to i32
  %i.ks = and i8 %i.jx, 64
  %.not.i.i112.2 = icmp eq i8 %i.ks, 0
  %i.kt = select i1 %.not.i.i112.2, i8 0, i8 9
  %i.ku = add i8 %i.kt, %i.jx
  %i.kv = shl nuw nsw i32 %i.kr, 8
  %i.kw = shl i8 %i.ku, 4
  %i.kx = zext i8 %i.kw to i32
  %i.ky = or disjoint i32 %i.kv, %i.kx            ; 4 uses
  %i.kz = and i8 %i.kd, 64
  %.not.i.i112.3 = icmp eq i8 %i.kz, 0
  %i.la = select i1 %.not.i.i112.3, i8 0, i8 9
  %i.lb = add i8 %i.la, %i.kd
  %i.lc = and i8 %i.lb, 15
  %i.ld = zext nneg i8 %i.lc to i32
  %i.le = or disjoint i32 %i.ky, %i.ld            ; 3 uses
  %i.lf = add nuw nsw i32 %.179, 6                ; 3 uses
  %i.lg = zext nneg i32 %.1 to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.lg ; 5 uses
  %i.li = icmp samesign ult i32 %i.ky, 128
  br i1 %i.li, label %bb.au, label %bb.av

bb.au:                                            ; preds = %isNHex.exit116
  %i.lj = trunc nuw nsw i32 %i.le to i8
  store i8 %i.lj, ptr %i.lh, align 1, !tbaa !731
  br label %sqlite3AppendOneUtf8Character.exit

bb.av:                                            ; preds = %isNHex.exit116
  %i.lk = icmp ult i8 %i.kq, 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 1 ; 2 uses
  br i1 %i.lk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lm = lshr i32 %i.ky, 6
  %i.ln = trunc nuw nsw i32 %i.lm to i8
  %i.lo = or disjoint i8 %i.ln, -64
  store i8 %i.lo, ptr %i.lh, align 1, !tbaa !731
  %i.lp = trunc i32 %i.le to i8
  %i.lq = and i8 %i.lp, 63
  %i.lr = or disjoint i8 %i.lq, -128
  store i8 %i.lr, ptr %i.ll, align 1, !tbaa !731
  br label %sqlite3AppendOneUtf8Character.exit

bb.ax:                                            ; preds = %bb.av
  %i.ls = and i8 %i.kk, 15
  %i.lt = or disjoint i8 %i.ls, -32
  store i8 %i.lt, ptr %i.lh, align 1, !tbaa !731
  %i.lu = lshr i32 %i.ky, 6
  %i.lv = trunc i32 %i.lu to i8
  %i.lw = and i8 %i.lv, 63
  %i.lx = or disjoint i8 %i.lw, -128
  store i8 %i.lx, ptr %i.ll, align 1, !tbaa !731
  %i.ly = trunc i32 %i.le to i8
  %i.lz = and i8 %i.ly, 63
  %i.ma = or disjoint i8 %i.lz, -128
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lh, i64 2
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !731
  br label %sqlite3AppendOneUtf8Character.exit

bb.ay:                                            ; preds = %bb.ad
  %i.mc = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !731 ; 2 uses
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !731
  %i.mh = and i8 %i.mg, 8
  %.not.i121 = icmp eq i8 %i.mh, 0
  br i1 %.not.i121, label %isNHex.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mi = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !731 ; 2 uses
  %i.mk = zext i8 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !731
  %i.mn = and i8 %i.mm, 8
  %.not.i121.1 = icmp eq i8 %i.mn, 0
  br i1 %.not.i121.1, label %isNHex.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mo = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !731 ; 2 uses
  %i.mq = zext i8 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !731
  %i.mt = and i8 %i.ms, 8
  %.not.i121.2 = icmp eq i8 %i.mt, 0
  br i1 %.not.i121.2, label %isNHex.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mu = getelementptr inbounds nuw i8, ptr %i.cj, i64 5
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !731 ; 2 uses
  %i.mw = zext i8 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !731
  %i.mz = and i8 %i.my, 8
  %.not.i121.3 = icmp eq i8 %i.mz, 0
  br i1 %.not.i121.3, label %isNHex.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.na = getelementptr inbounds nuw i8, ptr %i.cj, i64 6
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !731 ; 3 uses
  %i.nc = zext i8 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !731
  %i.nf = and i8 %i.ne, 8
  %.not.i121.4 = icmp eq i8 %i.nf, 0
  br i1 %.not.i121.4, label %isNHex.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ng = getelementptr inbounds nuw i8, ptr %i.cj, i64 7
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !731 ; 3 uses
  %i.ni = zext i8 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !731
  %i.nl = and i8 %i.nk, 8
  %.not.i121.5 = icmp eq i8 %i.nl, 0
  br i1 %.not.i121.5, label %isNHex.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !731 ; 3 uses
  %i.no = zext i8 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.no
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !731
  %i.nr = and i8 %i.nq, 8
  %.not.i121.6 = icmp eq i8 %i.nr, 0
  br i1 %.not.i121.6, label %isNHex.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ns = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !731 ; 3 uses
  %i.nu = zext i8 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !731
  %i.nx = and i8 %i.nw, 8
  %.not.i121.7 = icmp eq i8 %i.nx, 0
  br i1 %.not.i121.7, label %isNHex.exit.thread, label %isNHex.exit126

isNHex.exit126:                                   ; preds = %bb.bf
  %3 = insertelement <4 x i8> poison, i8 %i.mj, i64 0
  %4 = insertelement <4 x i8> %3, i8 %i.md, i64 1
  %5 = insertelement <4 x i8> %4, i8 %i.mp, i64 2
  %6 = insertelement <4 x i8> %5, i8 %i.mv, i64 3 ; 2 uses
  %i.ny = and <4 x i8> %6, splat (i8 64)
  %i.nz = icmp eq <4 x i8> %i.ny, zeroinitializer
  %i.oa = select <4 x i1> %i.nz, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.ob = add <4 x i8> %i.oa, %6
  %i.oc = and <4 x i8> %i.ob, splat (i8 15)
  %i.od = zext nneg <4 x i8> %i.oc to <4 x i32>
  %i.oe = shl nuw nsw <4 x i32> %i.od, <i32 8, i32 12, i32 4, i32 0>
  %i.of = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.oe) ; 3 uses
  %i.og = shl nuw nsw i32 %i.of, 8
  %i.oh = and i8 %i.nb, 64
  %.not.i.i122.4 = icmp eq i8 %i.oh, 0
  %i.oi = select i1 %.not.i.i122.4, i8 0, i8 9
  %i.oj = add i8 %i.oi, %i.nb                     ; 2 uses
  %i.ok = shl i8 %i.oj, 4
  %i.ol = and i8 %i.nh, 64
  %.not.i.i122.5 = icmp eq i8 %i.ol, 0
  %i.om = select i1 %.not.i.i122.5, i8 0, i8 9
  %i.on = add i8 %i.om, %i.nh
  %i.oo = and i8 %i.on, 15
  %i.op = or disjoint i8 %i.ok, %i.oo
  %i.oq = zext i8 %i.op to i32
  %i.or = or disjoint i32 %i.og, %i.oq            ; 3 uses
  %i.os = and i8 %i.nn, 64
  %.not.i.i122.6 = icmp eq i8 %i.os, 0
  %i.ot = select i1 %.not.i.i122.6, i8 0, i8 9
  %i.ou = add i8 %i.ot, %i.nn
  %i.ov = shl nuw i32 %i.or, 8
  %i.ow = shl i8 %i.ou, 4
  %i.ox = zext i8 %i.ow to i32
  %i.oy = or disjoint i32 %i.ov, %i.ox            ; 5 uses
  %i.oz = and i8 %i.nt, 64
  %.not.i.i122.7 = icmp eq i8 %i.oz, 0
  %i.pa = select i1 %.not.i.i122.7, i8 0, i8 9
  %i.pb = add i8 %i.pa, %i.nt
  %i.pc = and i8 %i.pb, 15
  %i.pd = zext nneg i8 %i.pc to i32
  %i.pe = or disjoint i32 %i.oy, %i.pd            ; 4 uses
  %i.pf = add nuw nsw i32 %.179, 10               ; 4 uses
  %i.pg = zext nneg i32 %.1 to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.pg ; 7 uses
  %i.pi = icmp ult i32 %i.oy, 128
  br i1 %i.pi, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %isNHex.exit126
  %i.pj = trunc nuw nsw i32 %i.pe to i8
  store i8 %i.pj, ptr %i.ph, align 1, !tbaa !731
  br label %sqlite3AppendOneUtf8Character.exit

bb.bh:                                            ; preds = %isNHex.exit126
  %i.pk = icmp samesign ult i32 %i.or, 8
  br i1 %i.pk, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.pl = lshr i32 %i.oy, 6
  %i.pm = trunc nuw nsw i32 %i.pl to i8
  %i.pn = or disjoint i8 %i.pm, -64
  store i8 %i.pn, ptr %i.ph, align 1, !tbaa !731
  %i.po = trunc i32 %i.pe to i8
  %i.pp = and i8 %i.po, 63
  %i.pq = or disjoint i8 %i.pp, -128
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ph, i64 1
  store i8 %i.pq, ptr %i.pr, align 1, !tbaa !731
  br label %sqlite3AppendOneUtf8Character.exit

bb.bj:                                            ; preds = %bb.bh
  %i.ps = icmp eq i32 %i.of, 0
  br i1 %i.ps, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.pt = and i8 %i.oj, 15
  %i.pu = or disjoint i8 %i.pt, -32
  store i8 %i.pu, ptr %i.ph, align 1, !tbaa !731
  %i.pv = lshr i32 %i.oy, 6
  %i.pw = trunc i32 %i.pv to i8
  %i.px = and i8 %i.pw, 63
  %i.py = or disjoint i8 %i.px, -128
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ph, i64 1
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !731
  %i.qa = trunc i32 %i.pe to i8
  %i.qb = and i8 %i.qa, 63
  %i.qc = or disjoint i8 %i.qb, -128
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ph, i64 2
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !731
  br label %sqlite3AppendOneUtf8Character.exit

bb.bl:                                            ; preds = %bb.bj
  %i.qe = trunc i32 %i.of to i8
  %i.qf = lshr i8 %i.qe, 2
  %i.qg = lshr i32 %i.or, 4
  %i.qh = trunc i32 %i.qg to i8
  %i.qi = lshr i32 %i.oy, 6
  %i.qj = trunc i32 %i.qi to i8
  %i.qk = trunc i32 %i.pe to i8
  %i.ql = insertelement <4 x i8> poison, i8 %i.qf, i64 0
  %i.qm = insertelement <4 x i8> %i.ql, i8 %i.qh, i64 1
  %i.qn = insertelement <4 x i8> %i.qm, i8 %i.qj, i64 2
  %i.qo = insertelement <4 x i8> %i.qn, i8 %i.qk, i64 3
  %i.qp = and <4 x i8> %i.qo, <i8 7, i8 63, i8 63, i8 63>
  %i.qq = or disjoint <4 x i8> %i.qp, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.qq, ptr %i.ph, align 1, !tbaa !731
  br label %sqlite3AppendOneUtf8Character.exit

sqlite3AppendOneUtf8Character.exit:               ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bg, %bb.ax, %bb.aw, %bb.au, %bb.ap, %bb.ao, %bb.am, %bb.ak, %bb.ac, %bb.ab, %bb.z, %bb.x
  %.381 = phi i32 [ %i.pf, %bb.bk ], [ %i.cn, %bb.x ], [ %i.hz, %bb.ap ], [ %i.pf, %bb.bl ], [ %i.ej, %bb.z ], [ %i.ej, %bb.ab ], [ %i.ej, %bb.ac ], [ %i.hz, %bb.ak ], [ %i.hz, %bb.am ], [ %i.hz, %bb.ao ], [ %i.lf, %bb.au ], [ %i.lf, %bb.aw ], [ %i.lf, %bb.ax ], [ %i.pf, %bb.bg ], [ %i.pf, %bb.bi ] ; 2 uses
  %.0.i127.pn = phi i32 [ 3, %bb.bk ], [ 1, %bb.x ], [ 4, %bb.ap ], [ 4, %bb.bl ], [ 1, %bb.z ], [ 2, %bb.ab ], [ 3, %bb.ac ], [ 1, %bb.ak ], [ 2, %bb.am ], [ 3, %bb.ao ], [ 1, %bb.au ], [ 2, %bb.aw ], [ 3, %bb.ax ], [ 1, %bb.bg ], [ 2, %bb.bi ]
  %.3 = add nuw nsw i32 %.0.i127.pn, %.1          ; 2 uses
  %i.qr = icmp slt i32 %.381, %.0.i.i93
  br i1 %i.qr, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %sqlite3AppendOneUtf8Character.exit, %.preheader164, %.thread156
  %.4 = phi i32 [ %i.bx, %.thread156 ], [ 0, %.preheader164 ], [ %.3, %sqlite3AppendOneUtf8Character.exit ]
  %i.qs = sext i32 %.4 to i64                     ; 2 uses
  %i.qt = getelementptr inbounds i8, ptr %i.ai, i64 %i.qs
  store i8 0, ptr %i.qt, align 1, !tbaa !731
  tail call void @sqlite3_result_text64(ptr noundef %0, ptr noundef nonnull %i.ai, i64 noundef %i.qs, ptr noundef nonnull @sqlite3_free, i8 noundef zeroext 16)
  br label %sqlite3_result_error_nomem.exit

isNHex.exit.thread:                               ; preds = %bb.ad, %.preheader.1, %.preheader.2, %.preheader.3, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %i.qu = load i32, ptr @sqlite3Config, align 8, !tbaa !695
  %.not.i129 = icmp eq i32 %i.qu, 0
  br i1 %.not.i129, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %isNHex.exit.thread
  %i.qv = load ptr, ptr @mem0, align 8, !tbaa !697 ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.qv, null
  br i1 %.not.i.i130, label %sqlite3_mutex_enter.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !561
  tail call void %i.qw(ptr noundef nonnull %i.qv) #57, !inline_history !746
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.bn, %bb.bm
  %i.qx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !635
  %i.qy = tail call i32 %i.qx(ptr noundef nonnull %i.ai) #57, !inline_history !13
  %i.qz = sext i32 %i.qy to i64
  %i.ra = load i64, ptr @sqlite3Stat, align 8, !tbaa !563
  %i.rb = sub nsw i64 %i.ra, %i.qz
  store i64 %i.rb, ptr @sqlite3Stat, align 8, !tbaa !563
  %i.rc = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !563
  %i.rd = add nsw i64 %i.rc, -1
  store i64 %i.rd, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !563
  %i.re = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !698
  tail call void %i.re(ptr noundef nonnull %i.ai) #57, !inline_history !747
  %i.rf = load ptr, ptr @mem0, align 8, !tbaa !697 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.rf, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.bo

bb.bo:                                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.rg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !564
  tail call void %i.rg(ptr noundef nonnull %i.rf) #57, !inline_history !748
  br label %sqlite3_free.exit

bb.bp:                                            ; preds = %isNHex.exit.thread
  %i.rh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !698
  tail call void %i.rh(ptr noundef nonnull %i.ai) #57, !inline_history !747
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.bo, %bb.bp
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.ri, align 4, !tbaa !568
  %i.rj = load ptr, ptr %0, align 8, !tbaa !759
  %i.rk = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.rj, ptr noundef nonnull @.str.1338, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1103 ; 0 uses
  br label %sqlite3_result_error_nomem.exit

sqlite3_result_error_nomem.exit:                  ; preds = %.lr.ph.i.i, %bb.e, %bb.a, %bb.t, %bb.s, %bb.p, %sqlite3VdbeMemSetNull.exit.i, %sqlite3_value_text.exit, %sqlite3_free.exit, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quoteFunc(ptr nofree noundef captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.sqlite3_str, align 8        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  %i.a = load ptr, ptr %0, align 8, !tbaa !759
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !681  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load i32, ptr %i.d, align 8, !tbaa !568
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr null, ptr %i.f, align 8, !tbaa !754
  store ptr %i.c, ptr %3, align 8, !tbaa !765
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !752
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  store i32 %i.e, ptr %i.h, align 4, !tbaa !764
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store i32 0, ptr %i.i, align 8, !tbaa !751
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  store i8 0, ptr %i.j, align 4, !tbaa !763
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 29 ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !750
  %i.l = load ptr, ptr %2, align 8, !tbaa !759    ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !733
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1110
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !684  ; 5 uses
  %i.t = and i16 %i.s, 63
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @sqlite3_value_type.aType, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !731
end_hunk_0
